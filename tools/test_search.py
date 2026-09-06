from test_differential import *
import sys
def run():
 rng=random.Random(851); p=Position();lib.txc_start(C.byref(p));start=time.time();results=[]
 for turn in range(int(sys.argv[1]) if len(sys.argv)>1 else 30):
  for depth in (1,2,3) if turn%10==0 else (1,2):
   before=bytes(p);r=lib.txc_search(C.byref(p),depth);assert before==bytes(p),('state restoration',turn,depth)
   o=Oracle(p.board,p.side,p.recent);expected=o.search(depth)
   got={'move':(r.move.from_,r.move.to),'score':r.score,'nodes':r.nodes&65535}
   wanted={k:expected[k] for k in got}
   print(turn,depth,got,'OK' if got==wanted else f'EXPECTED {wanted}',flush=True)
   if got!=wanted:
    (ROOT/'analysis/search_failure.json').write_text(json.dumps({'turn':turn,'depth':depth,'board':list(p.board),'side':p.side,'got':got,'expected':wanted},indent=2))
    raise AssertionError('search mismatch')
   results.append({'turn':turn,'depth':depth,**got})
  moves=(Move*256)();n=lib.txc_generate(C.byref(p),moves)
  if n<2:lib.txc_start(C.byref(p));continue
  u=Undo();lib.txc_make(C.byref(p),moves[rng.randrange(n)],C.byref(u))
 print('search cases',len(results),'seconds',round(time.time()-start,2))
 (ROOT/'analysis/search_differential.json').write_text(json.dumps(results,indent=2))
if __name__=='__main__':run()
