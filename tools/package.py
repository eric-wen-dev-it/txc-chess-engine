"""Build a self-contained delivery archive, excluding ROM and Python packages."""
from pathlib import Path
import json, hashlib, zipfile
root=Path(__file__).resolve().parents[1]
files=[root/x for x in ['README.md','build.ps1','CMakeLists.txt','txc.dll','build/txc.exe']]
files+=list((root/'src').glob('*'))+list((root/'tests/fixtures').glob('*.json'))
files += [root/'tools'/x for x in ['analyze.py','extract.py','oracle.py','test_differential.py','test_search.py','test_edge_cases.py','trace_search.py','package.py','requirements.txt']]
files += [root/'analysis'/x for x in ['manifest.json','engine.asm','engine_map.md','differential.json','search_differential.json','edge_differential.json','trace_differential.json']]
report={
 'rom_sha256':json.loads((root/'analysis/manifest.json').read_text())['sha256'],
 'foundation':json.loads((root/'analysis/differential.json').read_text()),
 'search_cases':len(json.loads((root/'analysis/search_differential.json').read_text())),
 'edge_cases':len(json.loads((root/'analysis/edge_differential.json').read_text())),
 'trace':json.loads((root/'analysis/trace_differential.json').read_text()),
 'sha256':{str(f.relative_to(root)).replace('\\','/'):hashlib.sha256(f.read_bytes()).hexdigest() for f in files}
}
summary=root/'analysis/validation_summary.json';summary.write_text(json.dumps(report,indent=2));files.append(summary)
dest=root.parent/'txc-chess-engine-c.zip'
with zipfile.ZipFile(dest,'w',zipfile.ZIP_DEFLATED) as archive:
 for f in files:archive.write(f,Path(root.name)/f.relative_to(root))
with zipfile.ZipFile(dest) as archive:assert archive.testzip() is None
print(f'{dest}: {dest.stat().st_size} bytes, {len(files)} files; archive CRC verified')
