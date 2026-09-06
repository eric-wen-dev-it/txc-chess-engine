"""Execute original engine routines in py65; no NES graphics or audio needed."""
from analyze import MPU, m
class Oracle:
 def __init__(self,board=None,side=16,recent=None):
  self.cpu=MPU(memory=list(m.memory)); self.mem=self.cpu.memory
  self.mem[:0x800]=[0]*0x800
  self.mem[:256]=[255]*256
  for f in range(9):
   for r in range(10):self.mem[f*12+r]=0
  self.mem[0x94:0xb4]=[255]*32
  if board is not None:
   for i,p in enumerate(board[:108]):
    self.mem[i]=p
    if 16<=p<48:self.mem[0x84+p]=i
  self.mem[0xc7]=side
  if recent is not None:
   for i,h in enumerate(recent):
    self.mem[0x4b0+i]=h.move.from_;self.mem[0x4c0+i]=h.move.to;self.mem[0x4d0+i]=h.captured
 def call(self,pc,a=0,x=0,y=0,limit=10000000):
  c=self.cpu;c.pc=pc;c.a=a;c.x=x;c.y=y;c.sp=255;c.p=0x30
  c.stPushWord(0x7ffe)
  for i in range(limit):
   if c.pc==0x7fff:return i
   if not 0x8000<=c.pc<=0xb9d2:raise RuntimeError(f'Unexpected PC {c.pc:04x}')
   if c.disassemble[self.mem[c.pc]][0]=='???':raise RuntimeError(f'Unknown opcode at {c.pc:04x}')
   c.step()
  raise RuntimeError(f'instruction limit at {c.pc:04x}')
 def pseudo(self,f,t):
  self.mem[0xc0]=f;self.mem[0xc1]=t;self.call(0x8049)
  return bool(self.cpu.p&2)
 def evaluate(self):
  self.call(0x8886);return self.mem[0xc8]+256*self.mem[0xc9]-32768
 def moves(self):
  self.mem[0xc6]=0;self.call(0x8701)
  return [(self.mem[0x501+i],self.mem[0x581+i]) for i in range(self.mem[0x500])]
 def search(self,depth=1):
  n=self.call(0x8597,a=depth,limit=100000000)
  return {'move':(self.mem[0xc0],self.mem[0xc1]),'nodes':self.mem[0xcc]+256*self.mem[0xcd], 'score':self.mem[0x772]+256*self.mem[0x7f2]-32768,'instructions':n}
