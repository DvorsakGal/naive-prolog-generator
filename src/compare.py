"""Compare two runs (prompt revisions, or models) side by side.

Reads the report.json that validate.py writes for each, so the runs must already
have been merged and validated.

    venv/bin/python src/compare.py out/report.v1.json out/report.json
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path


def row(label: str, a, b, width: int = 26) -> str:
    delta = ""
    if isinstance(a, (int, float)) and isinstance(b, (int, float)):
        d = b - a
        if abs(d) > 1e-9:
            delta = f"  {d:+.3f}" if isinstance(d, float) else f"  {d:+d}"
    return f"  {label:<{width}} {str(a):>12} -> {str(b):>12}{delta}"


def main() -> int:
    p = argparse.ArgumentParser(description="Diff two validation reports.")
    p.add_argument("before")
    p.add_argument("after")
    a = p.parse_args()

    x = json.loads(Path(a.before).read_text())
    y = json.loads(Path(a.after).read_text())

    print(f"{Path(a.before).name}  ->  {Path(a.after).name}\n")

    print("reference graph (chunk-level)")
    for k in ("precision", "recall", "f1"):
        print(row(k, x["references"]["chunk"][k], y["references"]["chunk"][k]))
    print(row("units imperfect",
              x["references"]["units_with_chunk_errors"],
              y["references"]["units_with_chunk_errors"]))

    print("\nreference graph (+ source atom)")
    for k in ("precision", "recall", "f1"):
        print(row(k, x["references"]["strict"][k], y["references"]["strict"][k]))

    print("\ncoverage")
    for k in ("total_facts", "distinct_predicates", "units_without_snippet"):
        print(row(k, x["coverage"][k], y["coverage"][k]))

    print("\npredicate vocabulary")
    px, py = x["coverage"]["predicates"], y["coverage"]["predicates"]
    for k in sorted(set(px) | set(py), key=lambda k: -(py.get(k, 0) + px.get(k, 0))):
        if px.get(k, 0) != py.get(k, 0):
            print(row(k, px.get(k, 0), py.get(k, 0)))
    only_x, only_y = sorted(set(px) - set(py)), sorted(set(py) - set(px))
    if only_x:
        print(f"  dropped: {', '.join(only_x)}")
    if only_y:
        print(f"  added:   {', '.join(only_y)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
