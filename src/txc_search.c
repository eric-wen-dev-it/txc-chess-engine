/* Human reconstruction of $8597-$B89A. See analysis/engine.asm for evidence.
   Scores retain the ROM's unsigned $8000 bias, including its mate scores.
   No CPU interpreter or ROM is used at runtime. */
#include "txc.h"
#include "txc_tables.h"
#include <string.h>
#ifdef TXC_TRACE
#include <stdio.h>
#include <stdlib.h>
static FILE *trace_file;
static FILE *move_trace;
#endif

#define NO_MOVE ((TxcMove){255,255})
typedef struct {
    TxcPosition *position;
    uint16_t bound[14], value[14];
    TxcMove pv[8][9], already[8], killer[8][2];
    TxcUndo history[15]; /* history[ply+2] is the move made at ply */
    int stage[14], follow_pv;
    uint64_t nodes;
} Search;

static int valid(int sq) { return sq>=0 && sq<108 && sq%12<10; }
static int same(TxcMove a,TxcMove b) { return a.from==b.from && a.to==b.to; }
static int better(int side,unsigned a,unsigned b) { return side==16 ? a>b : a<b; }
static int reaches(int side,unsigned a,unsigned b) { return side==16 ? a>=b : a<=b; }
static uint16_t evaluation(Search *s) { return (uint16_t)(s->position->score+32768); }
static void node(Search *s,int side,int ply,int remaining);

/* $B1FB/$B583: a selective two-ply reversal test from the original engine.
   This is a search heuristic, not a complete tournament repetition rule. */
static int reject_reversal(Search *s,int side,int ply,TxcMove move,int *ordering_index) {
    TxcUndo previous=s->history[ply], last=s->history[ply+1];
    TxcPosition *p=s->position;
    if (move.from!=previous.move.to || move.to!=previous.move.from ||
        previous.captured || last.captured) return 0;
    int last_piece=p->board[last.move.to];
    if (last_piece<16 || last_piece>=48) return 0;
    int mask=piece_mask[last_piece-16]&0xc8;
    if (mask && !(mask&0x80)) {
        if ((uint8_t)(last.move.to-last.move.from)==(side==16?1:255)) return 0;
    } else if(mask&0x80) {
        int step=(int8_t)step_table[(uint8_t)(last.move.from-last.move.to)];
        if(p->board[(uint8_t)(last.move.to+step)]) return 0;
    }
    if(side==16 ? s->bound[ply+1]>=0x8000 : s->bound[ply+1]<0x8000) return 1;
    /* Temporarily put the opponent's last piece back; test the old square. */
    p->board[last.move.from]=(uint8_t)last_piece;p->board[last.move.to]=0;
    int attacked=txc_pseudo(p,move.from,last.move.from);
    p->board[last.move.to]=(uint8_t)last_piece;p->board[last.move.from]=0;
    /* $B1BC/$B544 jump past LDX ply. X still contains the restored square.
       Preserve this original quirk: it can affect the subsequent PV probe. */
    *ordering_index=last.move.from;
    return attacked;
}

/* $B27F/$B607 and shared continuations: make, scout/full search, undo,
   update PV and bounds. A true return replaces the ROM's stack-unwind cutoff. */
static int try_move(Search *s,int side,int ply,int remaining,TxcMove move,int mode) {
    /* mode 0: quiet; 1: ordinary; 2: capture; 3: PV/recapture */
    if ((mode==0 || mode==2) && ply<8 &&
        (same(move,s->killer[ply][0]) || same(move,s->killer[ply][1]))) return 0;
    int ordering_index=ply;
    if ((mode==0 || mode==1) && reject_reversal(s,side,ply,move,&ordering_index)) return 0;
#ifdef TXC_TRACE
    if(!move_trace)move_trace=fopen("analysis/c_moves.csv","w");
    fprintf(move_trace,"%d,%d,%d,%d,%d,%d,%u,%u,%d,%d,%d\n",ply,move.from,move.to,s->stage[ply],ply<7?s->already[ply].from:255,ply<7?s->already[ply].to:255,s->bound[ply+1],s->value[ply],s->follow_pv,ply<8?s->pv[0][ply].from:255,ply<8?s->pv[0][ply].to:255);fflush(move_trace);
#endif
    int scout=0;
    if(ordering_index<7 && valid(s->already[ordering_index].from)) {
        if(same(move,s->already[ordering_index]))return 0;
        scout=reaches(side,s->value[ordering_index],s->bound[ordering_index+1]);
    }
    TxcPosition *p=s->position;TxcUndo undo;
    txc_make(p,move,&undo);s->history[ply+2]=undo;
    if(s->stage[ply]<-16 && s->history[ply+1].move.to!=move.to && valid(p->square[side^48]) &&
        txc_pseudo(p,s->history[ply+1].move.to,p->square[side])) {
        txc_unmake(p,&undo);return 0;
    }
    if(scout) {
        s->bound[ordering_index+2]=(uint16_t)(s->bound[ordering_index+1]+(side==16?1:-1));
        node(s,side^48,ply+1,remaining);
        if(!better(side,s->value[ply+1],s->bound[ply+1])) {
            txc_unmake(p,&undo);return 0;
        }
    }
    s->bound[ply+2]=s->bound[ply];
    node(s,side^48,ply+1,remaining);
    txc_unmake(p,&undo);
    if(!better(side,s->value[ply+1],s->value[ply]))return 0;
    s->value[ply]=s->value[ply+1];
    if(ply<7) {
        s->pv[ply][0]=move;
        int i=0;
        do {s->pv[ply][i+1]=s->pv[ply+1][i];} while(valid(s->pv[ply+1][i++].from) && i<7-ply);
    }
    if(!better(side,s->value[ply],s->bound[ply+1]))return 0;
    if(!reaches(side,s->value[ply],s->bound[ply])) {
        s->bound[ply+1]=s->value[ply];return 0;
    }
    if(ply<8 && s->stage[ply]>=0) {
        if(!s->stage[ply])s->killer[ply][1]=s->killer[ply][0];
        if(!s->stage[ply] || !valid(s->killer[ply][0].from))s->killer[ply][0]=move;
        else s->killer[ply][1]=move;
    }
    return 1;
}

/* $8DC7/$903B: capture a selected enemy, trying our piece IDs in reverse. */
static int captures_to(Search *s,int side,int ply,int remaining,int to) {
    if(!valid(to))return 0;
    for(int id=side+15;id>=side;--id) {
        int from=s->position->square[id];
        if(txc_pseudo(s->position,from,to) &&
           try_move(s,side,ply,remaining,(TxcMove){(uint8_t)from,(uint8_t)to},2))return 1;
    }
    return 0;
}

/* $92AF/$A211: two color-specific assembly routines merged into one function. */
static void node_body(Search *s,int side,int ply,int remaining) {
    TxcPosition *p=s->position; ++s->nodes;
#ifdef TXC_TRACE
    if(!trace_file)trace_file=fopen("analysis/c_trace.csv","w");
    fprintf(trace_file,"%d,%d,%d,%u,%u,%u,%d,%d\n",side,ply,remaining,evaluation(s),s->bound[ply],s->bound[ply+1],s->history[ply+1].move.from,s->history[ply+1].move.to);
    fflush(trace_file);
#endif
    if(ply>=12) {s->value[ply]=evaluation(s);return;}
    if(ply<8)s->pv[ply][0]=NO_MOVE;
    if(!valid(p->square[side])) {
        /* $A23C uses SBC without SEC: CPX #12 left carry clear. */
        int high=side==16?ply+32:223-ply;
        s->value[ply]=(uint16_t)((s->value[ply]&255)|(high<<8));return;
    }
    s->value[ply]=side==16?0x1000:0xf000;
    int last_to=s->history[ply+1].move.to;
    if(txc_pseudo(p,last_to,p->square[side]))s->stage[ply]=-32;
    else {
        --remaining;
        if(remaining<0) {
            uint16_t v=evaluation(s);
            if(better(side,v,s->bound[ply+1])) {
                if(reaches(side,v,s->bound[ply])) {s->value[ply]=v;return;}
                s->bound[ply+1]=v;
            }
            s->value[ply]=v;
        }
        s->stage[ply]=-1;
    }
    if(ply<7) {
        s->already[ply]=NO_MOVE;
        if(s->follow_pv) {
            TxcMove old=s->pv[0][ply];
            if(!valid(old.from))s->follow_pv=0;
            else {
                if(try_move(s,side,ply,remaining,old,3))return;
                s->already[ply]=old;
            }
        }
    }
    for(int id=side;id<side+16;++id) {
        int from=p->square[id];
        if(txc_pseudo(p,from,last_to) &&
           try_move(s,side,ply,remaining,(TxcMove){(uint8_t)from,(uint8_t)last_to},3))return;
    }
    if(ply<8 && valid(s->killer[ply][0].from)) {
        for(int k=0;k<2;++k) {
            TxcMove m=s->killer[ply][k];
            if(valid(m.from) && valid(m.to) && (p->board[m.from]&side) && m.to!=last_to &&
               !(p->board[m.to]&side) && (p->board[m.to] || remaining>=0) && txc_pseudo(p,m.from,m.to))
                if(try_move(s,side,ply,remaining,m,1))return;
            if(k==0)++s->stage[ply];
        }
    }
    s->stage[ply]+=2;
    int enemy=side^48;
    for(int id=enemy;id<enemy+3;++id)
        if(captures_to(s,side,ply,remaining,p->square[id]))return;
    if(remaining<-2 && s->stage[ply]>=0) {
        int from=s->history[ply].move.to;
        if(from!=last_to)
            for(int id=enemy+3;id<enemy+16;++id) {
                int to=p->square[id];
                if(to!=last_to && txc_pseudo(p,from,to) &&
                   try_move(s,side,ply,remaining,(TxcMove){(uint8_t)from,(uint8_t)to},2))return;
            }
        return;
    }
    for(int id=enemy+3;id<enemy+16;++id)
        if(captures_to(s,side,ply,remaining,p->square[id]))return;
    if(remaining<0 && s->stage[ply]>=0)return;
    /* $94B9-$A20F / $A41C-$B172: quiet moves, in the ROM's original order. */
    for(int id=side;id<side+16;++id) {
        int from=p->square[id];if(!valid(from))continue;
        for(int i=direction_index[id-16];directions[i];++i) {
            int step=(int8_t)directions[i],to=from;
            do {
                to+=step;
                if(!valid(to) || p->board[to])break;
                if(txc_pseudo(p,from,to) &&
                   try_move(s,side,ply,remaining,(TxcMove){(uint8_t)from,(uint8_t)to},0))return;
            } while((id&15)>=1 && (id&15)<=4);
        }
    }
}

static void node(Search *s,int side,int ply,int remaining) {
    node_body(s,side,ply,remaining);
#ifdef TXC_TRACE
    fprintf(trace_file,"R,%d,%u,%u,%u,%u\n",ply,s->value[ply],s->value[ply-1],s->bound[ply],s->bound[ply+1]);fflush(trace_file);
#endif
}

/* $869C: root pass; try the previous principal move before the root list. */
static void root_pass(Search *s,TxcMove *moves,int count,int remaining) {
    int side=s->position->side;s->stage[0]=-1;
    s->value[0]=side==16?0x1000:0xf000;s->follow_pv=0;s->already[0]=NO_MOVE;
    TxcMove best=s->pv[0][0];
    if(valid(best.from)) {
        s->follow_pv=1;try_move(s,side,0,remaining,best,1);s->already[0]=best;
    }
    for(int i=0;i<count;++i)try_move(s,side,0,remaining,moves[i],1);
}

/* $8597: legal root list, iterative deepening and a 50-unit aspiration window. */
TxcResult txc_search_compat(TxcPosition *p,int depth,int limit_root_moves) {
    TxcResult result={NO_MOVE,p->score,0,0};
    if(depth<1 || depth>4)return result;
    Search s;memset(&s,0,sizeof(s));s.position=p;
    for(int i=0;i<2;++i) {
        s.history[i].move=p->recent[i].move;s.history[i].captured=p->recent[i].captured;
    }
    for(int i=0;i<8;++i) {
        s.pv[i][0]=NO_MOVE;s.already[i]=NO_MOVE;
        s.killer[i][0]=s.killer[i][1]=NO_MOVE;
    }
    TxcMove moves[TXC_MAX_MOVES];int count=txc_generate(p,moves);
    if(limit_root_moves && count>=2)count=(count&1)+1;
    if(count<2) {if(count)result.move=moves[0];return result;}
    s.bound[1]=p->side==16?0x0f00:0xf100;
    s.bound[0]=p->side==16?0xf100:0x0f00;
    for(int iteration=0;iteration<depth;++iteration) {
        uint16_t before=s.bound[1];
        root_pass(&s,moves,count,iteration);
        if(before==s.bound[1]) {
            s.bound[1]=p->side==16?0x0f00:0xf100;
            s.bound[0]=p->side==16?0xf100:0x0f00;
            root_pass(&s,moves,count,iteration);
        }
        result=(TxcResult){s.pv[0][0],(int)s.value[0]-32768,iteration+1,s.nodes};
        s.bound[1]=(uint16_t)(s.value[0]+(p->side==16?-50:50));
    }
    return result;
}

TxcResult txc_search(TxcPosition *p,int depth) {
    return txc_search_compat(p,depth,0);
}
