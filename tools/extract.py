"""Extract only identified engine tables; refuse a different ROM revision."""
from analyze import ROOT, ROM, b, m, d
import hashlib, json
assert hashlib.sha256(b).hexdigest()=='f2a8aadfba05ed8566d3ec54285aca9ee2bb9408658e2a67f0cdea3aa1969f9b'
out=ROOT/'src'; out.mkdir(exist_ok=True)
tables={
 'square_mask':(0x8160,108), 'piece_mask':(0x81ca,32),
 'destination_mask':(0x81ea,108), 'capture_delta_mask':(0x8254,256),
 'delta_mask':(0x8354,256), 'step_table':(0x8454,256),
 'direction_index':(0x87df,32), 'directions':(0x87ff,32),
}
s=['/* Extracted from the user supplied TXC ROM. Do not hand edit. */', '#include <stdint.h>']
for name,(start,n) in tables.items():
 s.append(f'/* CPU ${start:04X}, {n} bytes. */\nstatic const uint8_t {name}[{n}] = {{')
 for i in range(0,n,12): s.append('    '+', '.join(f'0x{x:02x}' for x in m.memory[start+i:start+min(i+12,n)])+',')
 s.append('};')
s.append('/* Indexed by piece ID minus 0x10, then file*12 + rank (red home = 0). */\nstatic const uint8_t piece_square[32][108] = {')
for p in range(16,48):
 addr=m.memory[0x88bf+p]+256*m.memory[0x88df+p]
 s.append(f'    {{ /* piece ${p:02X}: CPU ${addr:04X} */')
 for i in range(0,108,12):s.append('        '+', '.join(str(x) for x in m.memory[addr+i:addr+i+12])+',')
 s.append('    },')
s.append('};')
(out/'txc_tables.h').write_text('\n'.join(s)+'\n')
(ROOT/'analysis/manifest.json').write_text(json.dumps({'rom':ROM.name,'sha256':hashlib.sha256(b).hexdigest(),'prg_bytes':32768,'chr_bytes':8192,'engine_entry':'0x8597','tables':tables},indent=2))
# Recursive code discovery avoids decoding the junk bytes between routines.
todo=[0x8597,0x8049,0x8555,0x8886,0xb89c,0xb97e]
todo += [m.memory[0x80f0+p]+256*m.memory[0x8110+p]+1 for p in range(16,48)]
code={}
while todo:
 pc=todo.pop()
 if pc in code:continue
 if not 0x8000<=pc<0xb9d3: raise RuntimeError(f'external code {pc:04x}')
 n,asm=d.instruction_at(pc)
 if asm.startswith('???') or asm=='BRK': raise RuntimeError(f'bad instruction {pc:04x}')
 code[pc]=(n,asm)
 op=m.memory[pc]; target=m.memory[pc+1]+256*m.memory[pc+2]
 if op in (0x20,0x4c):todo.append(target)
 if asm[:3] in ('BPL','BMI','BVC','BVS','BCC','BCS','BNE','BEQ'):
  off=m.memory[pc+1];todo.append(pc+2+(off if off<128 else off-256))
 if op not in (0x4c,0x6c,0x60,0x40):todo.append(pc+n)
(ROOT/'analysis/engine.asm').write_text('\n'.join(f'{pc:04X}  {bytes(m.memory[pc:pc+n]).hex(" "):8}  {asm}' for pc,(n,asm) in sorted(code.items())))
(ROOT/'analysis/code.json').write_text(json.dumps(code))
print(f'Extracted tables and {len(code)} reachable instructions ({sum(n for n,_ in code.values())} code bytes).')
