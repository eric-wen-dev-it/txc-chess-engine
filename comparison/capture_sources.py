"""Record exactly which local source/binary versions were compared."""
import datetime
import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
repo = Path("D:/Documents/source/repos/ChineseChessAI")
files = sorted([*repo.glob("Core/*.cs"), *repo.glob("Traditional/*.cs"),
                repo / "Utils/NotationConverter.cs", *here.parent.glob("src/*.[ch]"),
                here.parent / "txc.dll", here / "Compare.csproj", here / "Program.cs"])
data = {"recorded_at": datetime.datetime.now().astimezone().isoformat(),
        "sha256": {str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in files}}
(here / "results/source_versions.json").write_text(json.dumps(data, indent=2), encoding="utf-8")
