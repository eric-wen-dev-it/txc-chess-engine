from test_differential import *
import sys
p=Position();lib.txc_start(C.byref(p));rng=random.Random(851)
for turn in range(int(sys.argv[1]) if len(sys.argv)>1 else 93):
 moves=(Move*256)();n=lib.txc_generate(C.byref(p),moves)
 if n<2:lib.txc_start(C.byref(p));continue
 u=Undo();lib.txc_make(C.byref(p),moves[rng.randrange(n)],C.byref(u))
q=Position.from_buffer_copy(p)
(ROOT/'analysis/state_failure_2.bin').write_bytes(bytes(q))
r=lib.txc_search(C.byref(p),2)
o=Oracle(q.board,q.side,q.recent)
print('C',r.move.from_,r.move.to,r.score,r.nodes);print('ROM',o.search(2))
print('Cdiff',[(i,a,b) for i,(a,b) in enumerate(zip(bytes(q),bytes(p))) if a!=b])
print('ROMdiff',[(i,q.board[i],o.mem[i]) for i in range(108) if q.board[i]!=o.mem[i]])
