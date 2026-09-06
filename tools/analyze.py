from pathlib import Path
import sys, json, hashlib, os
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'tools/vendor'))
from py65.devices.mpu6502 import MPU
from py65.disassembler import Disassembler
ROM=Path(os.environ.get('TXC_ROM',str(ROOT.parent/'中国象棋 [TXC].nes')))
b=ROM.read_bytes()
m=MPU(); m.memory[0x8000:]=b[16:16+32768]
d=Disassembler(m)
def dis(start,end):
    a=start
    while a<end:
        n,s=d.instruction_at(a)
        yield f'{a:04X}  {bytes(m.memory[a:a+n]).hex(" "):8}  {s}'
        a+=n
if __name__=='__main__':
    (ROOT/'analysis').mkdir(exist_ok=True)
    if len(sys.argv)>1:
        print('\n'.join(dis(int(sys.argv[1],16),int(sys.argv[2],16))))
    else:
        (ROOT/'analysis/linear.asm').write_text('\n'.join(dis(0x8000,0x10000)))
        print('\n'.join(dis(0xff02,0xfffa)))
