from test_differential import *
from analyze import m
cases=[
 ('initial','rnbakabnr/9/1c5c1/p1p1p1p1p/9/9/P1P1P1P1P/1C5C1/9/RNBAKABNR w',4),
 ('black_initial','rnbakabnr/9/1c5c1/p1p1p1p1p/9/9/P1P1P1P1P/1C5C1/9/RNBAKABNR b',3),
 ('rook_check','4k4/9/9/9/4p4/9/9/9/4r4/3AKA3 w',3),
 ('cannon_screen','3ak4/4a4/9/4r4/4c4/9/4P4/9/4C4/3AKA3 w',3),
 ('horse_endgame','3ak4/4a4/9/9/3nP4/9/4N4/9/4A4/3K5 w',3),
 ('king_capture','4k4/9/9/9/9/9/9/9/9/4K4 w',2),
 ('missing_red','4k4/9/9/9/9/9/9/9/9/9 w',2),
 ('missing_black','9/9/9/9/9/9/9/9/9/4K4 b',2),
]
def run():
 results=[]
 for name,fen,depth in cases:
  p=Position();assert lib.txc_fen(C.byref(p),fen.encode())
  if name=='initial':assert list(p.square)[16:48]==m.memory[0xe1fd:0xe21d]
  before=bytes(p);r=lib.txc_search(C.byref(p),depth);assert bytes(p)==before
  o=Oracle(p.board,p.side,p.recent);expected=o.search(depth)
  if r.nodes:
   assert (r.move.from_,r.move.to,r.score,r.nodes&65535)==(*expected['move'],expected['score'],expected['nodes']),(name,r.score,r.nodes,expected)
  else:assert r.move.from_==expected['move'][0] and (r.move.from_==255 or r.move.to==expected['move'][1])
  results.append({'case':name,'depth':depth,'move':[r.move.from_,r.move.to],'score':r.score,'nodes':r.nodes})
  print(results[-1],flush=True)
 # Saved legal-play position that reaches the ROM's wrong-color recapture path.
 p=load_position(ROOT/'tests/fixtures/selective_recapture.json')
 before=bytes(p);r=lib.txc_search(C.byref(p),2);assert bytes(p)==before
 o=Oracle(p.board,p.side,p.recent);e=o.search(2)
 assert (r.move.from_,r.move.to,r.score,r.nodes)==(*e['move'],e['score'],e['nodes'])
 results.append({'case':'selective_recapture_quirk','move':list(e['move']),'score':r.score,'nodes':r.nodes})
 print(results[-1],flush=True)
 p=load_position(ROOT/'tests/fixtures/empty_pv.json')
 before=bytes(p);r=lib.txc_search(C.byref(p),2);assert bytes(p)==before
 o=Oracle(p.board,p.side,p.recent);e=o.search(2)
 assert (r.move.from_,r.move.to,r.score,r.nodes)==(*e['move'],e['score'],e['nodes'])
 results.append({'case':'empty_source_pv_quirk','move':list(e['move']),'score':r.score,'nodes':r.nodes})
 # The external game's $85A8 gate is preserved through an explicit option.
 lib.txc_search_compat.argtypes=[C.POINTER(Position),C.c_int,C.c_int];lib.txc_search_compat.restype=Result
 lib.txc_start(C.byref(p));r=lib.txc_search_compat(C.byref(p),2,1)
 o=Oracle(p.board,p.side);o.mem[0x436]=m.memory[0xd015]^m.memory[0xd017];e=o.search(2)
 assert (r.move.from_,r.move.to)==e['move'];assert r.nodes==e['nodes']==0
 results.append({'case':'external_root_gate','move':list(e['move']),'nodes':0})
 (ROOT/'analysis/edge_differential.json').write_text(json.dumps(results,indent=2))
 print('edge cases',len(results),'passed')
if __name__=='__main__':run()
