"""Flatten everything the study wrote into tidy CSVs for a notebook.

One row per thing, no aggregation: aggregate in pandas. Every file carries the keys
(text, model, seed) so the tables join. `model` is the output folder name, so
`astra-medium` is a model here; `reasoning` carries the level.

  outputs.csv            one row per generated module: provenance, tokens, cost, load,
                         counts, coverage, gate verdict, scenario totals (if scored)
  scenario_queries.csv   one row per output x scenario x query, with expected and got
  scenario_norms.csv     one row per output x norm: scenarios passed / of
  pairs_symbolic.csv     one row per module pair from metrics.json (Jaccard, consensus)
  judge_pairs.csv        one row per judged pair: labels, agreement, coverage
  judge_sentences.csv    one row per judged pair x sentence
  calibration.csv        one row per calibration probe
  answer_agreement.csv   one row per pair of scored outputs on the same text: share of
                         queries with the same outcome (true/false/unanswerable)

Usage: venv/bin/python src/export_csv.py [--dir out_paragraphs] [--out out_paragraphs/csv]
"""
from __future__ import annotations

import argparse
import csv
import json
import re
from itertools import combinations
from pathlib import Path

OUT = Path("out_paragraphs")


def jload(p: Path):
    try:
        return json.loads(p.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError):
        return None


def write(path: Path, rows: list[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    cols: list[str] = []
    for r in rows:
        for k in r:
            if k not in cols:
                cols.append(k)
    with path.open("w", newline="", encoding="utf-8") as fh:
        w = csv.DictWriter(fh, fieldnames=cols)
        w.writeheader()
        w.writerows(rows)
    print(f"  {path.name:<24} {len(rows):>6} rows  {len(cols)} cols")


def split_label(label: str) -> tuple[str, int]:
    m, s = label.split("/")
    return m, int(s.split("_")[1])


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dir", default=str(OUT))
    ap.add_argument("--out", default=None)
    a = ap.parse_args()
    root = Path(a.dir)
    dest = Path(a.out) if a.out else root / "csv"
    cache = root / "cache"
    metrics = jload(root / "metrics.json") or {"texts": {}, "pairs": []}
    gate = (jload(root / "gate.json") or {}).get("outputs", {})
    texts = sorted(p.stem for p in (root / "texts").glob("*.txt"))

    # ---------------------------------------------------------------- outputs
    outputs, queries, norms, agree_rows = [], [], [], []
    scored: dict[tuple, dict] = {}
    for tid in texts:
        for mdir in sorted((root / tid).glob("*/")):
            model = mdir.name
            for f in sorted(mdir.glob("seed_*.pl"), key=lambda p: int(p.stem.split("_")[1])):
                seed = int(f.stem.split("_")[1])
                meta = jload(f.with_suffix(".meta.json")) or {}
                cost = None
                if meta.get("key"):
                    c = jload(cache / f"{meta['key']}.json")
                    if c:
                        cost = (c.get("usage") or {}).get("cost")
                        rt = ((c.get("usage") or {}).get("completion_tokens_details") or {}).get("reasoning_tokens")
                    else:
                        rt = None
                else:
                    rt = None
                ms = metrics["texts"].get(tid, {}).get("outputs", {}).get(f"{model}/seed_{seed}", {})
                g = gate.get(f"{tid}/{model}/seed_{seed}", {})
                row = {
                    "text": tid, "model": model, "seed": seed,
                    "api_model": meta.get("model"), "reasoning": meta.get("reasoning"),
                    "prompt_tokens": meta.get("prompt_tokens"), "completion_tokens": meta.get("completion_tokens"),
                    "reasoning_tokens": rt, "wall_s": meta.get("wall_s"), "chars_out": meta.get("chars_out"),
                    "cost_usd": cost,
                    "load_ok": ms.get("load", {}).get("ok"), "load_errors": ms.get("load", {}).get("errors"),
                    "load_warnings": ms.get("load", {}).get("warnings"), "singletons": ms.get("load", {}).get("singletons"),
                    "clauses": ms.get("clauses"), "facts": ms.get("facts"), "rules": ms.get("rules"),
                    "predicates": ms.get("predicates"), "inputs": ms.get("inputs"), "exports": ms.get("exports"),
                    "dynamic": ms.get("dynamic"), "unparsed": ms.get("unparsed"), "word_coverage": ms.get("coverage"),
                    "std_violations": sum((ms.get("standards") or {}).values()) if ms.get("standards") else None,
                    "gate_pass": g.get("pass"), "gate_reasons": " | ".join(g.get("reasons", [])),
                    "position_references": len(g.get("position_references", [])),
                    "discontiguous_warnings": (g.get("warnings") or {}).get("discontiguous"),
                    "unexported_predicates": len(g.get("unexported", [])),
                    "disjunctions": g.get("disjunctions"),
                }
                # scenario totals, one column set per adapter source
                for src in ("llm", "hand"):
                    r = jload(root / "scenarios" / tid / model / f"seed_{seed}.{src}.json")
                    if r:
                        scored[(tid, model, seed, src)] = r
                        row.update({f"scn_{src}_passed": r["passed"], f"scn_{src}_of": r["scenarios"],
                                    f"scn_{src}_core_passed": r["core_passed"], f"scn_{src}_core_of": r["core_scenarios"],
                                    f"scn_{src}_query_accuracy": r["query_accuracy"],
                                    f"scn_{src}_false_positive": r["false_positive"], f"scn_{src}_missed": r["missed"],
                                    f"scn_{src}_unanswerable": r["unanswerable"],
                                    f"scn_{src}_adapter_dropped": len(r["adapter_clauses"]["dropped"]),
                                    f"scn_{src}_adapter_calls": r.get("adapter_calls")})
                        for s in r["detail"]:
                            for i, q in enumerate(s["queries"]):
                                queries.append({"text": tid, "model": model, "seed": seed, "adapter": src,
                                                "scenario": s["id"], "norms": ";".join(s["norms"]),
                                                "interpretive": s["interpretive"], "scenario_pass": s["pass"],
                                                "query_idx": i, "goal": q["goal"], "expect": q["expect"],
                                                "got": q["got"], "verdict": q["verdict"]})
                        for n, v in r["per_norm"].items():
                            norms.append({"text": tid, "model": model, "seed": seed, "adapter": src, "norm": n,
                                          "passed": v["passed"], "of": v["of"], "rate": v["rate"]})
                outputs.append(row)

    # answer agreement between every pair of scored outputs on the same text and adapter source
    def outcomes(r):
        return {(s["id"], i): (q["got"] if q["got"] in ("true", "false") else "unanswerable")
                for s in r["detail"] for i, q in enumerate(s["queries"])}
    for (ta, ma, sa, src), ra in scored.items():
        for (tb, mb, sb, src2), rb in scored.items():
            if ta != tb or src != src2 or (ma, sa) >= (mb, sb):
                continue
            oa, ob = outcomes(ra), outcomes(rb)
            keys = set(oa) | set(ob)
            agree_rows.append({"text": ta, "adapter": src, "model_a": ma, "seed_a": sa, "model_b": mb, "seed_b": sb,
                               "same_model": ma == mb, "answer_agreement": round(sum(oa.get(k) == ob.get(k) for k in keys) / len(keys), 3),
                               "passed_a": ra["passed"], "passed_b": rb["passed"]})

    # ---------------------------------------------------------- symbolic pairs
    pairs = []
    for tid, t in metrics["texts"].items():
        for model, w in t.get("within", {}).items():
            pairs.append({"text": tid, "kind": "within", "model_a": model, "model_b": model, **w})
        for k, w in t.get("across", {}).items():
            m1, m2 = k.split("~")
            pairs.append({"text": tid, "kind": "across", "model_a": m1, "model_b": m2, **w})

    # ------------------------------------------------------------------ judge
    jp, js = [], []
    for jd in sorted((root / "judge").glob("*/")):
        for f in sorted(jd.glob("*__*.json")):
            r = jload(f)
            if not r or "overall" not in r:
                continue
            ma, sa = split_label(r["a"])
            mb, sb = split_label(r["b"])
            base = {"judge": jd.name, "kind": r["kind"], "text": r["text"], "model_a": ma, "seed_a": sa,
                    "model_b": mb, "seed_b": sb}
            jp.append({**base, "overall": r["overall"], "agreement": r["agreement"], "coverage_a": r["coverage_a"],
                       "coverage_b": r["coverage_b"], "jointly_captured": r["jointly_captured"],
                       "sentences_judged": r["sentences_judged"], "swapped": r["swapped"], "note": r["note"]})
            for row in r.get("judgement", []):
                js.append({**base, "sentence": row["n"], "a": row["a"], "b": row["b"], "agree": row["agree"]})

    # ------------------------------------------------------------ calibration
    cal = []
    for jd in sorted((root / "judge_calibration").glob("*/")):
        if jd.name == "variants":
            continue
        for f in sorted(jd.glob("*__*.json")):
            r = jload(f)
            if not r or "overall" not in r:
                continue
            detected = r["overall"] != "same" or (r["agreement"] is not None and r["agreement"] < 1.0) \
                or abs(r["coverage_a"] - r["coverage_b"]) > 1e-9
            cal.append({"judge": jd.name, "text": r["text"], "model": r["model"], "seed": r["seed"], "probe": r["probe"],
                        "overall": r["overall"], "agreement": r["agreement"], "coverage_original": r["coverage_a"],
                        "coverage_variant": r["coverage_b"], "difference_detected": detected,
                        "correct": (not detected) if r["probe"] == "renamed" else detected, "note": r["note"]})

    print(f"writing to {dest}/")
    write(dest / "outputs.csv", outputs)
    write(dest / "scenario_queries.csv", queries)
    write(dest / "scenario_norms.csv", norms)
    write(dest / "answer_agreement.csv", agree_rows)
    write(dest / "pairs_symbolic.csv", pairs)
    write(dest / "judge_pairs.csv", jp)
    write(dest / "judge_sentences.csv", js)
    write(dest / "calibration.csv", cal)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
