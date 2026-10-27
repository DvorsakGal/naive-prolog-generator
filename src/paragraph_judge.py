"""Paragraph-level stability study: the LLM judge. Plan in paragraph_study.md.

WHY A JUDGE
-----------
The symbolic measures (paragraph_metrics.py) bottom out on naming: three runs of one
model at temperature 0 share a fifth of their predicate names, so Jaccard and Z3
equivalence measure spelling before they ever reach meaning. The question the lead
asked -- "do they say the same thing?" -- needs a reader. This is that reader, with
its judgement forced into a fixed form so it can be counted.

WHAT ONE JUDGE CALL SEES AND RETURNS
------------------------------------
Input: the source text with its sentences numbered, and two Prolog modules A and B.
Output: JSON, one row per sentence --

    {"n": 3, "a": "full|partial|none", "b": "full|partial|none", "agree": "yes|no|na"}

-- where `a`/`b` say how much of sentence n each module captures, and `agree` says,
for a sentence both capture at least partially, whether the two modules state the
same thing about it (same conditions, same parties, same modality), allowing for
different predicate names. Plus an overall label, `same | mostly_same | different`,
and one sentence of justification.

From that, per pair:
    coverage_a, coverage_b   mean over sentences of full=1, partial=0.5, none=0
    agreement                share of jointly-captured sentences judged `agree: yes`
    overall                  the judge's label

DESIGN CHOICES
--------------
* The judge is a model NOT among the five being judged, so it has no stake. Default
  anthropic/claude-sonnet-5.5 via OpenRouter. `--judge` changes it; running twice with
  two judges gives a judge-agreement number, which the summary computes when two judge
  folders exist.
* A/B order is randomised per pair with a fixed seed and recorded, so position bias
  shows up as noise rather than as a systematic tilt toward A.
* The judge reasons, default effort medium. Judging is the one place in this study
  where that is wanted, and it is the only call where reasoning is on. Whether the
  level matters is itself measured: run one text at low and at medium and read the
  judge-agreement table.
* Every call goes through llm.Client: cached, logged, replayable.

WHICH PAIRS
-----------
    within   same text, same model, the 3 seed pairs          5 x 5 x 3  =  75
    across   same text, seed 1 of each model, all 10 pairs    5 x 10     =  50
Total 125 calls per judge.

Outputs:
    out_paragraphs/judge/<judge>-<reasoning>/<text>__<a>__<b>.json   one per pair
    out_paragraphs/judge/<judge>-<reasoning>/summary.json
    out_paragraphs/judge/judge_agreement.json                          when 2+ judge runs exist
The folder carries the reasoning level, so a low and a medium run of the same judge sit
side by side and the agreement table compares them like two judges.
"""
from __future__ import annotations

import argparse
import asyncio
import json
import random
import re
import sys
from collections import Counter, defaultdict
from itertools import combinations
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from llm import Client, LLMConfig, append_log, cache_key  # noqa: E402

OUT = Path("out_paragraphs")
JUDGES = {
    "sonnet": ("openrouter", "anthropic/claude-sonnet-5.5"),
    "gpt":    ("openrouter", "openai/gpt-5.4"),
    "grok":   ("openrouter", "x-ai/grok-4.7"),
}
DEFAULT_JUDGE = "sonnet"
ORDER_SEED = 7

JUDGE_PROMPT = """\
You are comparing two formalisations of the same text. Both are Prolog modules written
by different authors who were asked to translate the text into first-order logic, cover
every statement in it, and follow a fixed naming convention. The authors chose their
own predicate names, so the same idea may be spelled differently in A and B. Judge
meaning, not spelling.

You will receive the text with numbered sentences, then module A, then module B.

For EVERY numbered sentence, decide:
  a      how much of that sentence module A captures: "full", "partial" or "none".
         "full" means the parties, the action or property, the conditions and the
         modality (obligation, permission, prohibition, statement of fact) are all
         present. "partial" means some of them are. "none" means the sentence is not
         represented at all.
  b      the same for module B.
  agree  if BOTH a and b are "full" or "partial": do A and B state the same thing
         about this sentence -- same parties, same conditions, same modality -- once
         predicate names are read for their meaning? "yes" or "no". If either side is
         "none", write "na".

Then an overall verdict for the pair:
  "same"         the two modules say the same things about the text, up to naming
  "mostly_same"  they agree on most sentences and differ in detail on a few
  "different"    they capture different sentences, or disagree on what captured
                 sentences mean

Rules:
- Judge each sentence on its own. Do not reward a module for being longer.
- A rule whose body names conditions the text does not state is NOT "full" for that
  sentence; it adds content. Say "partial".
- A fact that merely names a noun from the sentence (e.g. commission(commission).) does
  not capture the sentence. Count it as "none" unless the sentence itself is only a
  statement of existence.
- Ignore comments in the modules. Ignore the module name and export list.

Output ONLY a JSON object of exactly this shape, no prose before or after it:

{
  "sentences": [
    {"n": 1, "a": "full", "b": "partial", "agree": "no"},
    ...
  ],
  "overall": "mostly_same",
  "note": "one sentence saying what the main difference is, or 'none'"
}
"""

JUDGE_USER = """\
=== TEXT ===
{sentences}

=== MODULE A ===
{a}

=== MODULE B ===
{b}
"""


# -------------------------------------------------------------- sentences

def split_sentences(text: str) -> list[str]:
    """Deterministic sentence split. List items '(a) ...' become their own sentences,
    so a paragraph with points is judged point by point."""
    text = re.sub(r"\s+", " ", text.strip())
    # break before list markers
    text = re.sub(r"\s(?=\([a-z]\)\s)", "\n", text)
    parts = []
    for chunk in text.split("\n"):
        # split on sentence-final period followed by a capital, keeping abbreviations like 'No.' intact
        for s in re.split(r"(?<=[a-z\)\]0-9])\.\s+(?=[A-Z])", chunk):
            s = s.strip()
            if s:
                parts.append(s if s.endswith((".", ";", ":")) else s + ".")
    return parts


def numbered(sentences: list[str]) -> str:
    return "\n".join(f"[{i}] {s}" for i, s in enumerate(sentences, 1))


# ------------------------------------------------------------------ parsing

def parse_judgement(text: str, n_sentences: int) -> dict | None:
    m = re.search(r"\{.*\}", text, re.S)
    if not m:
        return None
    try:
        d = json.loads(m.group(0))
    except json.JSONDecodeError:
        return None
    rows = d.get("sentences")
    if not isinstance(rows, list) or d.get("overall") not in ("same", "mostly_same", "different"):
        return None
    clean = []
    seen = set()
    for r in rows:
        try:
            n = int(r["n"])
        except (KeyError, TypeError, ValueError):
            continue
        if n < 1 or n > n_sentences or n in seen:
            continue
        a, b, ag = r.get("a"), r.get("b"), r.get("agree")
        if a not in ("full", "partial", "none") or b not in ("full", "partial", "none"):
            continue
        if ag not in ("yes", "no", "na"):
            ag = "na"
        seen.add(n)
        clean.append({"n": n, "a": a, "b": b, "agree": ag})
    if len(clean) < max(1, n_sentences // 2):
        return None                      # the judge did not do the job
    return {"sentences": sorted(clean, key=lambda r: r["n"]), "overall": d["overall"],
            "note": str(d.get("note", ""))[:300]}


SCORE = {"full": 1.0, "partial": 0.5, "none": 0.0}


def unswap_rows(rows: list[dict], swapped: bool) -> list[dict]:
    """Rows as the judge wrote them -> rows in the file's a/b frame."""
    if not swapped:
        return rows
    return [{"n": r["n"], "a": r["b"], "b": r["a"], "agree": r["agree"]} for r in rows]


def score_pair(j: dict, n_sentences: int, swapped: bool) -> dict:
    """Coverage per side (in the ORIGINAL a/b order, undoing the swap) and agreement."""
    rows = j["sentences"]
    cov_a = sum(SCORE[r["a"]] for r in rows) / n_sentences
    cov_b = sum(SCORE[r["b"]] for r in rows) / n_sentences
    if swapped:
        cov_a, cov_b = cov_b, cov_a
    joint = [r for r in rows if r["a"] != "none" and r["b"] != "none"]
    agree = sum(1 for r in joint if r["agree"] == "yes") / len(joint) if joint else None
    return {"coverage_a": round(cov_a, 3), "coverage_b": round(cov_b, 3),
            "jointly_captured": len(joint), "agreement": None if agree is None else round(agree, 3),
            "overall": j["overall"], "note": j["note"], "sentences_judged": len(rows)}


# ------------------------------------------------------------------- pairs

def list_pairs(root: Path, texts: list[str]) -> list[tuple[str, str, str, str, str]]:
    """(kind, text, label_a, label_b, ...) with labels like 'kimi/seed_2'."""
    pairs = []
    for tid in texts:
        models = sorted(d.name for d in (root / tid).iterdir() if d.is_dir())
        for m in models:
            seeds = sorted(int(f.stem.split("_")[1]) for f in (root / tid / m).glob("seed_*.pl"))
            for s1, s2 in combinations(seeds, 2):
                pairs.append(("within", tid, f"{m}/seed_{s1}", f"{m}/seed_{s2}"))
        for m1, m2 in combinations(models, 2):
            if (root / tid / m1 / "seed_1.pl").exists() and (root / tid / m2 / "seed_1.pl").exists():
                pairs.append(("across", tid, f"{m1}/seed_1", f"{m2}/seed_1"))
    return pairs


async def run(args: argparse.Namespace) -> int:
    root = Path(args.dir)
    provider, model = JUDGES[args.judge]
    cfg = LLMConfig(provider=provider, model=model, reasoning=args.reasoning, temperature=0.0,
                    seed=0, concurrency=args.concurrency, num_predict=8192)
    client = Client(cfg, root / "cache")
    # One folder per (judge, reasoning level), so low and medium can be compared side
    # by side instead of overwriting each other.
    jlabel = f"{args.judge}-{args.reasoning}"
    jdir = root / "judge" / jlabel
    jdir.mkdir(parents=True, exist_ok=True)
    log_path = root / "run.jsonl"

    texts = {p.stem: p.read_text(encoding="utf-8") for p in (root / "texts").glob("*.txt")}
    if args.only:
        texts = {k: v for k, v in texts.items() if k in set(args.only.split(","))}
    sentences = {tid: split_sentences(t) for tid, t in texts.items()}
    pairs = list_pairs(root, sorted(texts))
    if args.kind != "both":
        pairs = [p for p in pairs if p[0] == args.kind]
    rng = random.Random(ORDER_SEED)
    order = {(p[1], p[2], p[3]): rng.random() < 0.5 for p in pairs}      # True = swap A/B

    print(f"judge {jlabel} ({model}, reasoning {args.reasoning})  pairs {len(pairs)}  "
          f"({sum(p[0] == 'within' for p in pairs)} within, {sum(p[0] == 'across' for p in pairs)} across)")
    for tid in sorted(texts):
        print(f"  {tid:<14} {len(sentences[tid]):>2} sentences")
    print()

    sem = asyncio.Semaphore(args.concurrency)
    progress = {"done": 0, "present": 0, "failed": 0, "unparsed": 0}

    async def one(http: httpx.AsyncClient, kind: str, tid: str, la: str, lb: str) -> None:
        dest = jdir / f"{tid}__{la.replace('/', '-')}__{lb.replace('/', '-')}.json"
        swapped = order[(tid, la, lb)]
        mod_a = (root / tid / f"{la}.pl").read_text(encoding="utf-8")
        mod_b = (root / tid / f"{lb}.pl").read_text(encoding="utf-8")
        first, second = (mod_b, mod_a) if swapped else (mod_a, mod_b)
        messages = [{"role": "system", "content": JUDGE_PROMPT},
                    {"role": "user", "content": JUDGE_USER.format(
                        sentences=numbered(sentences[tid]), a=first, b=second)}]
        key = cache_key(cfg, messages)
        if dest.exists() and not args.force:
            if json.loads(dest.read_text()).get("key") == key:
                progress["present"] += 1
                return
        async with sem:
            text, rec = await client.call(http, messages, label=f"judge:{args.judge}:{tid}:{la}~{lb}")
        rec.meta = {"kind": kind, "text": tid, "a": la, "b": lb, "swapped": swapped}
        append_log(log_path, rec)
        if not rec.ok:
            progress["failed"] += 1
            print(f"  FAILED {tid} {la} ~ {lb}: {rec.error}", file=sys.stderr)
            return
        j = parse_judgement(text, len(sentences[tid]))
        out = {"key": key, "kind": kind, "text": tid, "a": la, "b": lb, "swapped": swapped,
               "judge": model, "reasoning": args.reasoning, "raw": text[:4000]}
        if j is None:
            progress["unparsed"] += 1
            out["error"] = "judgement not parseable"
            print(f"  UNPARSED {tid} {la} ~ {lb}", file=sys.stderr)
        else:
            out.update(score_pair(j, len(sentences[tid]), swapped))
            # Store the per-sentence rows in the FILE's frame (a = `la`, b = `lb`), the
            # same frame as coverage_a/coverage_b. The judge saw the modules in the
            # order given by `swapped`; its raw answer is kept verbatim under `raw`, and
            # `judge_frame` says which module it called A and which B, because the free
            # text `note` is in the judge's frame and cannot be mechanically rewritten.
            out["judgement"] = unswap_rows(j["sentences"], swapped)
            out["judge_frame"] = {"A": lb if swapped else la, "B": la if swapped else lb}
            progress["done"] += 1
            print(f"  {tid:<14} {kind:<6} {la:<16} ~ {lb:<16} {'cache' if rec.cached else 'call '}  "
                  f"{out['overall']:<11} agree {out['agreement'] if out['agreement'] is not None else '-':<5} "
                  f"cov {out['coverage_a']:.2f}/{out['coverage_b']:.2f}")
        dest.write_text(json.dumps(out, indent=1), encoding="utf-8")

    async with httpx.AsyncClient() as http:
        await asyncio.gather(*[one(http, *p) for p in pairs])

    print(f"\ndone={progress['done']} already-present={progress['present']} "
          f"failed={progress['failed']} unparsed={progress['unparsed']}")
    summarise(root, jlabel)
    return 1 if progress["failed"] or progress["unparsed"] else 0


# ----------------------------------------------------------------- summary

def mean(xs):
    xs = [x for x in xs if x is not None]
    return round(sum(xs) / len(xs), 3) if xs else None


def summarise(root: Path, judge: str) -> None:
    jdir = root / "judge" / judge
    rows = [json.loads(f.read_text()) for f in sorted(jdir.glob("*__*.json"))]
    rows = [r for r in rows if "overall" in r]
    if not rows:
        print("no judgements to summarise")
        return
    by_model_within = defaultdict(list)
    by_text_across = defaultdict(list)
    by_model_cov = defaultdict(list)
    by_pair_across = defaultdict(list)
    for r in rows:
        ma, mb = r["a"].split("/")[0], r["b"].split("/")[0]
        by_model_cov[ma].append(r["coverage_a"])
        by_model_cov[mb].append(r["coverage_b"])
        if r["kind"] == "within":
            by_model_within[ma].append(r)
        else:
            by_text_across[r["text"]].append(r)
            by_pair_across[f"{ma}~{mb}"].append(r)

    def agg(rs):
        return {"n": len(rs), "agreement": mean([r["agreement"] for r in rs]),
                "same": sum(r["overall"] == "same" for r in rs),
                "mostly_same": sum(r["overall"] == "mostly_same" for r in rs),
                "different": sum(r["overall"] == "different" for r in rs)}

    summary = {"judge": judge, "pairs": len(rows),
               "within_by_model": {m: agg(rs) for m, rs in sorted(by_model_within.items())},
               "across_by_text": {t: agg(rs) for t, rs in sorted(by_text_across.items())},
               "across_by_model_pair": {p: agg(rs) for p, rs in sorted(by_pair_across.items())},
               "coverage_by_model": {m: mean(v) for m, v in sorted(by_model_cov.items())},
               "across_all": agg([r for r in rows if r["kind"] == "across"]),
               "within_all": agg([r for r in rows if r["kind"] == "within"])}
    (jdir / "summary.json").write_text(json.dumps(summary, indent=1), encoding="utf-8")

    print(f"\n== judge {judge}: WITHIN model (same text, two seeds) ==")
    print(f"  {'model':<10}{'pairs':>6}{'agreement':>11}{'same':>6}{'mostly':>8}{'diff':>6}{'coverage':>10}")
    for m, a in summary["within_by_model"].items():
        print(f"  {m:<10}{a['n']:>6}{a['agreement'] if a['agreement'] is not None else '-':>11}"
              f"{a['same']:>6}{a['mostly_same']:>8}{a['different']:>6}{summary['coverage_by_model'][m]:>10}")
    print(f"\n== judge {judge}: ACROSS models (same text, seed 1) ==")
    print(f"  {'text':<14}{'pairs':>6}{'agreement':>11}{'same':>6}{'mostly':>8}{'diff':>6}")
    for t, a in summary["across_by_text"].items():
        print(f"  {t:<14}{a['n']:>6}{a['agreement'] if a['agreement'] is not None else '-':>11}"
              f"{a['same']:>6}{a['mostly_same']:>8}{a['different']:>6}")
    a = summary["across_all"]
    print(f"  {'ALL':<14}{a['n']:>6}{a['agreement'] if a['agreement'] is not None else '-':>11}"
          f"{a['same']:>6}{a['mostly_same']:>8}{a['different']:>6}")
    print("  agreement = share of sentences both modules capture that the judge says mean the same.")
    print("  coverage  = judged share of the text's sentences a model's module represents (full=1, partial=0.5).")

    # judge-vs-judge comparison, if another judge run exists. Compared on what varies:
    # the per-sentence cells. The overall label is reported too, with the label
    # distribution beside it, because a judge that puts every pair in one category
    # agrees with itself trivially.
    label_dist = Counter(r["overall"] for r in rows)
    print(f"\n  overall-label distribution for {judge}: {dict(label_dist)}")
    others = [d for d in (root / "judge").iterdir() if d.is_dir() and d.name != judge and (d / "summary.json").exists()]
    if others:
        agreement = {}
        for od in others:
            cells = cells_same = agree_cells = agree_same = labels = labels_same = 0
            cov_diff, agr_diff = [], []
            for f in jdir.glob("*__*.json"):
                g = od / f.name
                if not g.exists():
                    continue
                x, y = json.loads(f.read_text()), json.loads(g.read_text())
                if "judgement" not in x or "judgement" not in y:
                    continue
                labels += 1
                labels_same += x["overall"] == y["overall"]
                rx = {r["n"]: r for r in x["judgement"]}
                ry = {r["n"]: r for r in y["judgement"]}
                for n in set(rx) & set(ry):
                    cells += 1
                    cells_same += (rx[n]["a"], rx[n]["b"]) == (ry[n]["a"], ry[n]["b"])
                    if rx[n]["agree"] != "na" and ry[n]["agree"] != "na":
                        agree_cells += 1
                        agree_same += rx[n]["agree"] == ry[n]["agree"]
                cov_diff += [abs(x["coverage_a"] - y["coverage_a"]), abs(x["coverage_b"] - y["coverage_b"])]
                if x["agreement"] is not None and y["agreement"] is not None:
                    agr_diff.append(abs(x["agreement"] - y["agreement"]))
            if labels:
                agreement[f"{judge}~{od.name}"] = {
                    "pairs": labels,
                    "same_overall_label": round(labels_same / labels, 3),
                    "same_coverage_cell": round(cells_same / cells, 3) if cells else None,
                    "same_agree_cell": round(agree_same / agree_cells, 3) if agree_cells else None,
                    "mean_abs_coverage_diff": mean(cov_diff),
                    "mean_abs_agreement_diff": mean(agr_diff),
                }
        if agreement:
            (root / "judge" / "judge_agreement.json").write_text(json.dumps(agreement, indent=1), encoding="utf-8")
            print("\n== judge vs judge (same pairs, two judge runs) ==")
            print(f"  {'runs':<28}{'pairs':>6}{'label':>8}{'cov cell':>10}{'agree cell':>12}{'|d cov|':>9}{'|d agr|':>9}")
            for k, v in agreement.items():
                print(f"  {k:<28}{v['pairs']:>6}{v['same_overall_label']:>8.3f}{v['same_coverage_cell']:>10.3f}"
                      f"{v['same_agree_cell']:>12.3f}{v['mean_abs_coverage_diff']:>9.3f}{v['mean_abs_agreement_diff']:>9.3f}")
            print("  label      = share of pairs given the same overall label (uninformative if one label dominates)")
            print("  cov cell   = share of per-sentence (a, b) coverage cells that are identical")
            print("  agree cell = share of per-sentence yes/no agreement cells that are identical")
            print("  |d cov|, |d agr| = mean absolute difference in per-module coverage and per-pair agreement")


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="LLM judge over the paragraph-study outputs.")
    p.add_argument("--dir", default=str(OUT))
    p.add_argument("--judge", choices=sorted(JUDGES), default=DEFAULT_JUDGE)
    p.add_argument("--reasoning", default="medium",
                   help="judge reasoning effort; low vs medium is worth comparing on one text first")
    p.add_argument("--kind", choices=("within", "across", "both"), default="both")
    p.add_argument("--only", default="", help="comma-separated text ids")
    p.add_argument("--concurrency", type=int, default=4)
    p.add_argument("--force", action="store_true")
    p.add_argument("--summary-only", action="store_true", help="recompute the summary from stored judgements")
    return p


if __name__ == "__main__":
    a = build_parser().parse_args()
    if a.summary_only:
        summarise(Path(a.dir), f"{a.judge}-{a.reasoning}")
        sys.exit(0)
    sys.exit(asyncio.run(run(a)))
