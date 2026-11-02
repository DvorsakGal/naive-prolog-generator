"""Spend tracker. Reads the cost OpenRouter reported for every cached call and writes
costs.md.

Every OpenRouter response carries `usage.cost`, the amount charged for that call, and
llm.py caches every response verbatim. So the ledger is not an estimate and needs no
bookkeeping: it is the sum of what the provider said it charged, grouped by output
folder and model, with the date range of the calls taken from the cache files' mtimes.

Ollama responses carry no cost and are counted separately as calls only.

Usage:
    venv/bin/python src/costs.py                      # everything, writes costs.md
    venv/bin/python src/costs.py --since 2026-10-30   # calls made from that date on
    venv/bin/python src/costs.py --since 2026-10-30 --budget 30
                                                      # ... and the remainder of a budget
    venv/bin/python src/costs.py --folder out_paragraphs
"""
from __future__ import annotations

import argparse
import datetime as dt
import json
from collections import defaultdict
from pathlib import Path


def collect(root: Path, since: dt.date | None, folder: str | None) -> tuple[dict, dict]:
    paid = defaultdict(lambda: {"calls": 0, "cost": 0.0, "prompt": 0, "completion": 0,
                                "reasoning": 0, "first": None, "last": None})
    free = defaultdict(int)
    for f in root.glob("out*/cache/*.json"):
        if folder and f.parts[0] != folder:
            continue
        day = dt.date.fromtimestamp(f.stat().st_mtime)
        if since and day < since:
            continue
        try:
            d = json.loads(f.read_text(encoding="utf-8"))
        except (json.JSONDecodeError, OSError):
            continue
        if "choices" not in d:                           # Ollama shape: no cost
            free[(f.parts[0], d.get("model", "?"))] += 1
            continue
        u = d.get("usage") or {}
        row = paid[(f.parts[0], d.get("model", "?"))]
        row["calls"] += 1
        row["cost"] += float(u.get("cost") or 0.0)
        row["prompt"] += int(u.get("prompt_tokens") or 0)
        row["completion"] += int(u.get("completion_tokens") or 0)
        row["reasoning"] += int((u.get("completion_tokens_details") or {}).get("reasoning_tokens") or 0)
        row["first"] = day if row["first"] is None or day < row["first"] else row["first"]
        row["last"] = day if row["last"] is None or day > row["last"] else row["last"]
    return paid, free


def render(paid: dict, free: dict, since: dt.date | None, folder: str | None,
           budget: float | None) -> str:
    total = sum(r["cost"] for r in paid.values())
    calls = sum(r["calls"] for r in paid.values())
    scope = []
    if since:
        scope.append(f"calls from {since} on")
    if folder:
        scope.append(f"folder `{folder}`")
    lines = ["# API spend", "",
             f"Generated {dt.date.today()} by `src/costs.py` from the cost OpenRouter reported for "
             f"each cached call. Not an estimate." + (f" Scope: {', '.join(scope)}." if scope else ""), ""]
    lines += [f"**Total: ${total:.2f} over {calls} OpenRouter calls.**"]
    if budget is not None:
        lines += [f"Budget ${budget:.2f}, remaining ${budget - total:.2f}."]
    lines += ["", "| folder | model | calls | prompt tok | completion tok | of which reasoning | cost $ | dates |",
              "|---|---|---|---|---|---|---|---|"]
    by_folder = defaultdict(float)
    for (fold, model), r in sorted(paid.items(), key=lambda kv: (kv[0][0], -kv[1]["cost"])):
        by_folder[fold] += r["cost"]
        dates = f"{r['first']}" if r["first"] == r["last"] else f"{r['first']} to {r['last']}"
        lines.append(f"| {fold} | {model} | {r['calls']} | {r['prompt']:,} | {r['completion']:,} | "
                     f"{r['reasoning']:,} | {r['cost']:.3f} | {dates} |")
    lines += ["", "| folder | cost $ |", "|---|---|"]
    for fold, c in sorted(by_folder.items(), key=lambda kv: -kv[1]):
        lines.append(f"| {fold} | {c:.2f} |")
    if free:
        lines += ["", "Ollama calls (no per-call cost reported):", ""]
        for (fold, model), n in sorted(free.items()):
            lines.append(f"- {fold}: {model}, {n} calls")
    lines += ["", "## Reference prices (per million tokens, OpenRouter, 2026-10-30)", "",
              "| model | in | out |", "|---|---|---|",
              "| anthropic/claude-opus-5.5 | 4.00 | 20.00 |",
              "| anthropic/claude-fable-5.1 | 10.00 | 50.00 |",
              "| openai/gpt-6-astra | 10.00 | 50.00 |",
              "| openai/gpt-5.5 | 5.00 | 30.00 |",
              "| anthropic/claude-sonnet-5.5 (judge) | 2.00 | 10.00 |",
              "| openai/gpt-5.4 (judge) | 2.50 | 15.00 |",
              "| deepseek/deepseek-v4-pro | 0.82 | 1.63 |",
              "| google/gemini-3.8-flash | 0.83 | 4.12 |",
              "| moonshotai/kimi-k2.6 | 0.65 | 3.41 |",
              "| qwen/qwen3.7-max | 1.48 | 4.42 |",
              "| mistralai/mistral-large-4-0 | 0.68 | 2.09 |", ""]
    return "\n".join(lines)


def main() -> int:
    ap = argparse.ArgumentParser(description="Sum what OpenRouter charged, from the response cache.")
    ap.add_argument("--since", type=dt.date.fromisoformat, default=None)
    ap.add_argument("--folder", default=None)
    ap.add_argument("--budget", type=float, default=None)
    ap.add_argument("--out", default="costs.md")
    ap.add_argument("--no-write", action="store_true")
    a = ap.parse_args()
    paid, free = collect(Path("."), a.since, a.folder)
    text = render(paid, free, a.since, a.folder, a.budget)
    print(text)
    if not a.no_write:
        Path(a.out).write_text(text, encoding="utf-8")
        print(f"\nwrote {a.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
