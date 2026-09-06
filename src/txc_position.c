#include "txc.h"
#include "txc_tables.h"
#include <ctype.h>
#include <string.h>

static int valid(int s) { return s >= 0 && s < 108 && s % 12 < 10; }
static int kind(int piece) {
    int n = piece & 15;
    return n == 0 ? 0 : n <= 2 ? 1 : n <= 4 ? 2 : n <= 6 ? 3 : n <= 8 ? 4 : n <= 10 ? 5 : 6;
}

/* $8886: full evaluation. The original represents zero as unsigned $8000. */
int txc_evaluate(const TxcPosition *p) {
    int value = 0;
    for (int id = 16; id < 48; ++id)
        if (valid(p->square[id]))
            value += (id < 32 ? 1 : -1) * piece_square[id-16][p->square[id]];
    return value;
}

/* $8049-$80FE: original table-driven pseudo-legal move predicate. */
int txc_pseudo(const TxcPosition *p, int from, int to) {
    if (!valid(from) || !valid(to)) return 0;
    int id = p->board[from], victim = p->board[to];
    if (id < 16 || id >= 48 || (id & victim & 0x30)) return 0;
    unsigned delta = (uint8_t)(to-from);
    if (piece_mask[id-16] & delta_mask[delta]) return 0;
    int step = (int8_t)step_table[delta];
    switch (kind(id)) {
    case 0:
        if (victim != (id ^ 0x30))
            return !(square_mask[to] & (id < 32 ? 1 : 16));
        /* The two kings can capture one another down an open file. */
        /* fall through */
    case 1:
        for (int at = to-step; at != from; at -= step)
            if (!valid(at) || p->board[at]) return 0;
        return 1;
    case 2: {
        int screens = 0;
        for (int at = to-step; at != from; at -= step) {
            if (!valid(at)) return 0;
            screens += p->board[at] != 0;
        }
        return screens == (victim != 0);
    }
    case 3: return !p->board[(uint8_t)(from+step)];
    case 4: return !(destination_mask[to] & 16);
    case 5: return !(destination_mask[to] & 32) && !p->board[(uint8_t)(from+step)];
    default: return !(destination_mask[to] & (id < 32 ? 64 : 128));
    }
}

/* $8555: test whether any opposing piece attacks this side's king. */
int txc_in_check(const TxcPosition *p, int side) {
    int king = p->square[side];
    if (!valid(king)) return 1;
    int enemy = side ^ 0x30;
    for (int id = enemy; id < enemy+16; ++id)
        if (valid(p->square[id]) && txc_pseudo(p, p->square[id], king)) return 1;
    return 0;
}

/* $B89C/$B97E: incremental position-table update, capture, and undo. */
void txc_make(TxcPosition *p, TxcMove m, TxcUndo *u) {
    /* The ROM selects its update routine by side-to-move, not piece color.
       Its selective recapture path can temporarily move an opponent piece. */
    int id=p->board[m.from], victim=p->board[m.to], sign=p->side==16?1:-1;
    *u=(TxcUndo){m,(uint8_t)id,(uint8_t)victim,p->score,{{{0,0},0},{{0,0},0}}};
    memcpy(u->recent,p->recent,sizeof(p->recent));
    p->recent[0]=p->recent[1];p->recent[1]=(TxcPastMove){m,(uint8_t)victim};
    /* A stale PV in the ROM can have an empty source. Piece 0's pointer is
       $FBC8, a flat $FF table, so its positional difference is exactly zero.
       Its unused position slot ($84) is not exposed as a chess piece here. */
    if(id)p->score += sign*(piece_square[id-16][m.to]-piece_square[id-16][m.from]);
    if (victim) {
        p->score += sign*piece_square[victim-16][m.to];
        p->square[victim]=255;
    }
    p->board[m.to]=(uint8_t)id; p->board[m.from]=0;if(id)p->square[id]=m.to;
    p->side ^= 0x30;
}
void txc_unmake(TxcPosition *p, const TxcUndo *u) {
    p->side ^= 0x30; p->score=u->score;
    memcpy(p->recent,u->recent,sizeof(p->recent));
    p->board[u->move.from]=u->piece; p->board[u->move.to]=u->captured;
    if(u->piece)p->square[u->piece]=u->move.from;
    if (u->captured) p->square[u->captured]=u->move.to;
}

/* $8701: preserve original piece/direction order, king-capture shortcut and
   the original 80-move limit. The public buffer must hold TXC_MAX_MOVES. */
int txc_generate(TxcPosition *p, TxcMove *moves) {
    int side=p->side, enemy=side^0x30, n=0;
    if (!valid(p->square[side])) return 0;
    for (int id=side;id<side+16;++id) {
        if (txc_pseudo(p,p->square[id],p->square[enemy])) {
            moves[0]=(TxcMove){p->square[id],p->square[enemy]}; return 1;
        }
    }
    for (int id=side;id<side+16;++id) {
        int from=p->square[id]; if (!valid(from)) continue;
        for (int i=direction_index[id-16];directions[i];++i) {
            int step=(int8_t)directions[i], to=from;
            do {
                to+=step;
                if (!valid(to)) break;
                if (txc_pseudo(p,from,to)) {
                    TxcMove m={(uint8_t)from,(uint8_t)to}; TxcUndo u;
                    txc_make(p,m,&u); int legal=!txc_in_check(p,side); txc_unmake(p,&u);
                    if (legal) { moves[n++]=m; if (n==80) return n; }
                }
            } while (kind(id)==1 || kind(id)==2);
        }
    }
    return n;
}

int txc_fen(TxcPosition *p, const char *fen) {
    TxcPosition q; memset(&q,0,sizeof(q));
    memset(q.board,255,sizeof(q.board)); memset(q.square,255,sizeof(q.square));
    for(int f=0;f<9;++f)for(int r=0;r<10;++r)q.board[f*12+r]=0;
    int counts[2][7]={{0}}, bases[]={0,1,3,5,7,9,11}, caps[]={1,2,2,2,2,2,5};
    int row=0,file=0;
    while (*fen && *fen!=' ') {
        char c=*fen++;
        if(c=='/') { if(file!=9 || ++row>=10)return 0;file=0;continue; }
        if(c>='1'&&c<='9'){file+=c-'0';if(file>9)return 0;continue;}
        int type; switch(toupper((unsigned char)c)) {
        case 'K':type=0;break;case 'R':type=1;break;case 'C':type=2;break;
        case 'N':case 'H':type=3;break;case 'A':type=4;break;
        case 'B':case 'E':type=5;break;case 'P':type=6;break;default:return 0;}
        int team=islower((unsigned char)c)?1:0;
        if(file>=9 || counts[team][type]>=caps[type])return 0;
        int id=16+team*16+bases[type]+counts[team][type]++, s=file++*12+9-row;
        q.board[s]=(uint8_t)id;q.square[id]=(uint8_t)s;
    }
    if(row!=9||file!=9)return 0;
    while(*fen==' ')++fen;
    if(*fen!='w'&&*fen!='r'&&*fen!='b')return 0;
    /* $E1FD initial identities run right-to-left. FEN has no identity field;
       use the same ordering among the surviving pieces of each type. */
    uint8_t old_squares[48];memcpy(old_squares,q.square,sizeof(old_squares));
    for(int team=0;team<2;++team)for(int type=0;type<7;++type)
        for(int n=0;n<counts[team][type];++n) {
            int id=16+team*16+bases[type]+n;
            int old=16+team*16+bases[type]+counts[team][type]-1-n;
            q.square[id]=old_squares[old];q.board[q.square[id]]=(uint8_t)id;
        }
    q.side=*fen=='b'?32:16;q.score=txc_evaluate(&q);*p=q;return 1;
}
void txc_start(TxcPosition *p) {
    txc_fen(p,"rnbakabnr/9/1c5c1/p1p1p1p1p/9/9/P1P1P1P1P/1C5C1/9/RNBAKABNR w");
}
