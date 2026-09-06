import os
from collections import deque
os.environ['TXC_TRACE_FILE']='analysis/c_trace.csv'
from test_differential import *
import sys
p=Position();lib.txc_start(C.byref(p));depth=4
if len(sys.argv)>1:p=load_position(ROOT/'tests/fixtures'/sys.argv[1]);depth=2
before=Position.from_buffer_copy(p);r=lib.txc_search(C.byref(p),depth)
crows=(ROOT/'analysis/c_trace.csv').read_text().splitlines()
mrows=(ROOT/'analysis/c_moves.csv').read_text().splitlines();mi=0
o=Oracle(before.board,before.side,before.recent);cpu=o.cpu;mem=o.mem
class TraceMem(list):
 def __setitem__(self,key,value):
  if key==0x673:
   writes.append((hex(cpu.pc),mem[0xc6],cpu.x,value,n))
  super().__setitem__(key,value)
writes=[];recent=deque(maxlen=35);mem=TraceMem(mem);cpu.memory=mem
cpu.pc=0x8597;cpu.a=depth;cpu.sp=255;cpu.p=0x30;cpu.stPushWord(0x7ffe)
n=0
with (ROOT/'analysis/rom_trace.csv').open('w') as out:
 for ins in range(100000000):
  if cpu.pc==0x7fff:break
  if cpu.pc in (0xb350,0xb438,0xb6d8,0xb7c0):
   pl=mem[0xc6]
   word=lambda lo,hi:mem[lo]+256*mem[hi]
   row=','.join(map(str,['R',pl,word(0x772+pl,0x7f2+pl),word(0x771+pl,0x7f1+pl),word(0x671+pl,0x6f1+pl),word(0x672+pl,0x6f2+pl)]))
   if row!=crows[n]:print('return mismatch',n,'ROM',row,'C',crows[n],'writes',writes[-20:]);break
   n+=1
  if cpu.pc in (0xb281,0xb609):
   pl=mem[0xc6];stage=mem[0x5f2+pl];stage=stage if stage<128 else stage-256
   values=[pl,mem[0xc0],mem[0xc1],stage,mem[0x480+pl] if pl<7 else 255,mem[0x488+pl] if pl<7 else 255,mem[0x672+pl]+256*mem[0x6f2+pl],mem[0x772+pl]+256*mem[0x7f2+pl],mem[0xce],mem[0x400+pl] if pl<8 else 255,mem[0x408+pl] if pl<8 else 255]
   row=','.join(map(str,values));cv=list(map(int,mrows[mi].split(',')))
   # Ignore stale destinations when the corresponding source is invalid.
   if values[4]>=128:values[5]=cv[5]=255
   if values[9]>=128:values[10]=cv[10]=255
   if values!=cv:
    print('move mismatch',mi,'node',n,'ROM',values,'C',cv);break
   mi+=1
  if cpu.pc in (0x92af,0xa211):
   side=16 if cpu.pc==0x92af else 32;ply=mem[0xc6];rem=mem[0xcf];rem=rem if rem<128 else rem-256
   row=','.join(map(str,[side,ply,rem,mem[0xc8]+256*mem[0xc9],mem[0x671+ply]+256*mem[0x6f1+ply],mem[0x672+ply]+256*mem[0x6f2+ply],mem[0x4b1+ply],mem[0x4c1+ply]]))
   out.write(row+'\n')
   if n>=len(crows) or row!=crows[n]:
    print('first mismatch node',n,'instruction',ins,'ROM',row,'C',crows[n] if n<len(crows) else 'EOF')
    print('previous C',crows[max(0,n-10):n]);break
   n+=1
  recent.append((hex(cpu.pc),cpu.x,cpu.a));cpu.step()
print('compared',n)
assert cpu.pc==0x7fff and n==len(crows) and mi==len(mrows),'Trace mismatch'
(ROOT/'analysis/trace_differential.json').write_text(json.dumps({'depth':depth,'nodes':n//2,'node_events':n,'move_events':mi,'matched':True},indent=2))
