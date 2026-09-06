#ifndef TXC_H
#define TXC_H
#include <stdint.h>
#define TXC_RED 16
#define TXC_BLACK 32
#define TXC_MAX_MOVES 256
/* Original unique piece IDs: K RR CC NN AA BB PPPPP, with side bits 0x10/0x20. */
typedef struct { uint8_t from, to; } TxcMove;
typedef struct { TxcMove move; uint8_t captured; } TxcPastMove;
typedef struct {
    uint8_t board[256];
    uint8_t square[48];
    uint8_t side;
    int score; /* red minus black, original position tables */
    TxcPastMove recent[2]; /* two previous plies, oldest first ($04B0/$04B1) */
} TxcPosition;
typedef struct { TxcMove move; uint8_t piece, captured; int score; TxcPastMove recent[2]; } TxcUndo;
typedef struct { TxcMove move; int score, depth; uint64_t nodes; } TxcResult;
void txc_start(TxcPosition *p);
int txc_fen(TxcPosition *p, const char *fen);
int txc_evaluate(const TxcPosition *p);
int txc_pseudo(const TxcPosition *p, int from, int to);
int txc_in_check(const TxcPosition *p, int side);
int txc_generate(TxcPosition *p, TxcMove *moves);
void txc_make(TxcPosition *p, TxcMove move, TxcUndo *undo);
void txc_unmake(TxcPosition *p, const TxcUndo *undo);
TxcResult txc_search(TxcPosition *p, int depth);
/* Optional UI compatibility gate from $85A8: nonzero keeps only 1 or 2 root
   moves according to list parity. Normal game/search operation passes zero. */
TxcResult txc_search_compat(TxcPosition *p, int depth, int limit_root_moves);
#endif
