#include "txc.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

static void move_text(TxcMove m,char text[5]) {
    if(m.from>=108 || m.to>=108){strcpy(text,"none");return;}
    text[0]=(char)('a'+m.from/12);text[1]=(char)('0'+m.from%12);
    text[2]=(char)('a'+m.to/12);text[3]=(char)('0'+m.to%12);text[4]=0;
}
static int play_move(TxcPosition *p,const char *text) {
    if(strlen(text)!=4 || text[0]<'a'||text[0]>'i'||text[2]<'a'||text[2]>'i'||
       text[1]<'0'||text[1]>'9'||text[3]<'0'||text[3]>'9')return 0;
    int from=(text[0]-'a')*12+text[1]-'0',to=(text[2]-'a')*12+text[3]-'0';
    TxcMove moves[TXC_MAX_MOVES];int n=txc_generate(p,moves);
    for(int i=0;i<n;++i)if(moves[i].from==from && moves[i].to==to) {
        TxcUndo u;txc_make(p,moves[i],&u);return 1;
    }
    return 0;
}
static void show(const TxcPosition *p) {
    const char *symbols="KRRCCNNAABBPPPPP";
    puts("    a b c d e f g h i");
    for(int r=9;r>=0;--r) {
        printf(" %d  ",r);
        for(int f=0;f<9;++f) {
            int id=p->board[f*12+r];char c='.';
            if(id>=16 && id<48) {c=symbols[id&15];if(id>=32)c=(char)(c+'a'-'A');}
            printf("%c ",c);
        }
        putchar('\n');
    }
    printf("Turn: %s | static score (red): %d\n",p->side==16?"red":"black",p->score);
}
static TxcResult analyze(TxcPosition *p,int depth) {
    clock_t start=clock();TxcResult r=txc_search(p,depth);char text[5];move_text(r.move,text);
    printf("bestmove %s score_red %d depth %d nodes %llu time_ms %.1f\n",text,r.score,r.depth,
           (unsigned long long)r.nodes,1000.0*(clock()-start)/CLOCKS_PER_SEC);return r;
}
int main(int argc,char **argv) {
    TxcPosition p;txc_start(&p);int depth=2,play=0;
    for(int i=1;i<argc;++i) {
        if(!strcmp(argv[i],"--help")) {
            puts("TXC Chinese Chess - reconstructed C engine\n"
                 "txc [--depth 1..4] [--fen \"FEN\"] [--moves \"b2e2 b9c7\"] [--play]\n"
                 "Coordinates: a0 is red's lower-left; a9 is upper-left.\n"
                 "--play: human controls side to move, engine controls the other side.");return 0;
        } else if(!strcmp(argv[i],"--depth") && i+1<argc) {
            char *end;long n=strtol(argv[++i],&end,10);
            if(*end||n<1||n>4){fputs("Depth must be 1..4.\n",stderr);return 2;}depth=(int)n;
        } else if(!strcmp(argv[i],"--fen") && i+1<argc) {
            if(!txc_fen(&p,argv[++i])){fputs("Invalid FEN.\n",stderr);return 2;}
        } else if(!strcmp(argv[i],"--moves") && i+1<argc) {
            const char *q=argv[++i];
            while(*q) {
                while(*q==' ')++q;
                if(!*q)break;
                char text[5];int n=0;while(q[n]&&q[n]!=' ')++n;
                if(n!=4){fputs("Invalid move text.\n",stderr);return 2;}
                memcpy(text,q,4);text[4]=0;q+=4;
                if(!play_move(&p,text)){fprintf(stderr,"Illegal move: %s\n",text);return 2;}
            }
        } else if(!strcmp(argv[i],"--play"))play=1;
        else {fprintf(stderr,"Unknown or incomplete option: %s\n",argv[i]);return 2;}
    }
    if(!play){show(&p);analyze(&p,depth);return 0;}
    int human=p.side;char line[128];
    for(;;) {
        show(&p);TxcMove moves[TXC_MAX_MOVES];int n=txc_generate(&p,moves);
        if(!n || p.square[16]==255 || p.square[32]==255){puts("Game over.");break;}
        if(p.side!=human) {
            TxcResult r=analyze(&p,depth);
            if(r.move.from==255){puts("No engine move.");break;}
            TxcUndo u;txc_make(&p,r.move,&u);continue;
        }
        printf("Move (e.g. b2e2), hint, or quit: ");fflush(stdout);
        if(!fgets(line,sizeof(line),stdin))break;
        line[strcspn(line,"\r\n")]=0;
        if(!strcmp(line,"quit"))break;
        if(!strcmp(line,"hint")){analyze(&p,depth);continue;}
        if(!play_move(&p,line))puts("Invalid or illegal move.");
    }
    return 0;
}
