import ctypes as C, random, time, json
from pathlib import Path
from analyze import ROOT
from oracle import Oracle
class Move(C.Structure):_fields_=[('from_',C.c_uint8),('to',C.c_uint8)]
class PastMove(C.Structure):_fields_=[('move',Move),('captured',C.c_uint8)]
class Position(C.Structure):_fields_=[('board',C.c_uint8*256),('square',C.c_uint8*48),('side',C.c_uint8),('score',C.c_int),('recent',PastMove*2)]
class Undo(C.Structure):_fields_=[('move',Move),('piece',C.c_uint8),('captured',C.c_uint8),('score',C.c_int),('recent',PastMove*2)]
class Result(C.Structure):_fields_=[('move',Move),('score',C.c_int),('depth',C.c_int),('nodes',C.c_uint64)]
lib=C.CDLL(str(ROOT/'txc.dll'))
lib.txc_start.argtypes=[C.POINTER(Position)]
lib.txc_pseudo.argtypes=[C.POINTER(Position),C.c_int,C.c_int]
lib.txc_generate.argtypes=[C.POINTER(Position),C.POINTER(Move)]
lib.txc_make.argtypes=[C.POINTER(Position),Move,C.POINTER(Undo)]
lib.txc_unmake.argtypes=[C.POINTER(Position),C.POINTER(Undo)]
lib.txc_evaluate.argtypes=[C.POINTER(Position)]
lib.txc_fen.argtypes=[C.POINTER(Position),C.c_char_p]
lib.txc_search.argtypes=[C.POINTER(Position),C.c_int]
lib.txc_search.restype=Result
def load_position(path):
 data=json.loads(Path(path).read_text());p=Position()
 for i,x in enumerate(data['board']):p.board[i]=x
 for i,x in enumerate(data['square']):p.square[i]=x
 p.side=data['side'];p.score=data['score']
 for i,h in enumerate(data['recent']):p.recent[i]=PastMove(Move(h['from'],h['to']),h['captured'])
 return p
def run():
 start=time.time();rng=random.Random(20260905);p=Position();lib.txc_start(C.byref(p));checks=0
 for turn in range(100):
  o=Oracle(p.board,p.side)
  assert p.score==o.evaluate()==lib.txc_evaluate(C.byref(p)),(turn,p.score,o.evaluate())
  for f in range(108):
   if not 16<=p.board[f]<48:continue
   for t in range(108):
    if t%12>=10:continue
    a=bool(lib.txc_pseudo(C.byref(p),f,t));b=o.pseudo(f,t)
    assert a==b,('pseudo',turn,f,t,a,b,p.board[f]);checks+=1
  moves=(Move*256)();n=lib.txc_generate(C.byref(p),moves)
  actual=[(m.from_,m.to) for m in moves[:n]];expected=o.moves()
  assert actual==expected,('moves',turn,actual,expected)
  if not n:lib.txc_start(C.byref(p));continue
  move=moves[rng.randrange(n)];u=Undo();before=bytes(p)
  lib.txc_make(C.byref(p),move,C.byref(u));lib.txc_unmake(C.byref(p),C.byref(u))
  assert bytes(p)==before,('undo',turn)
  lib.txc_make(C.byref(p),move,C.byref(u))
  if p.square[16]==255 or p.square[32]==255:lib.txc_start(C.byref(p))
 result={'positions':100,'pseudo_move_comparisons':checks,'ordered_move_lists':100,'evaluation_comparisons':100,'undo_round_trips':100,'seconds':round(time.time()-start,2)}
 print(json.dumps(result));(ROOT/'analysis/differential.json').write_text(json.dumps(result,indent=2))
if __name__=='__main__':run()
