"""Summarize recorded matches without rerunning either engine."""
import json
import statistics
from pathlib import Path

for path in sorted((Path(__file__).parent / "results").glob("*.json")):
    data = json.loads(path.read_text(encoding="utf-8"))
    if "games" not in data:
        continue
    print(path.name, "qdepth", data["quiescenceDepth"])
    print("  games:", [(g["winner"], g["plies"]) for g in data["games"]])
    for engine in ("txc", "traditional"):
        moves = [m for g in data["games"] for m in g["moves"] if m["engine"] == engine]
        depths = [m["depth"] for m in moves]
        times = [m["ms"] for m in moves]
        print(f"  {engine}: {len(moves)} moves, mean {statistics.mean(times):.3f} ms, "
              f"median {statistics.median(times):.3f} ms, max {max(times):.3f} ms; "
              f"depth median {statistics.median(depths)}, range {min(depths)}..{max(depths)}")
