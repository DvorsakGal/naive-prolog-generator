"""Judge calibration: does the LLM judge see meaning, or spelling? Plan in astra_plan.md, 1d.

Two probes, each a pair handed to the same judge prompt as paragraph_judge.py uses:

  SPECIFICITY   original vs a RENAMED copy: predicate names and atoms replaced by
                synonyms, variables renamed, clauses reordered, module renamed. Nothing
                else. A judge that reads meaning says "same" with agreement 1.0.
  SENSITIVITY   original vs a MUTANT with one injected defect:
                  drop_rule        one rule clause removed
                  flip_modality    required_ <-> permitted_, must_ -> may_, prohibited_ -> permitted_
                  drop_condition   one body goal removed from a rule with >= 2 goals
                  swap_args        the two arguments of a binary head exchanged
                A judge that reads meaning does not say "same", and marks at least one
                sentence `agree: no` or scores the two sides' coverage differently.

The renaming is checked to be injective on the module's identifiers (no two names
merged); the mutant is checked to still load. A module where no operator applies is
skipped and counted.

Sample: `--sample N` outputs that load, drawn deterministically with a bias towards the
frontier arm (astra, astra-medium, opus), spread over texts. Every judge call is cached and
logged like the study's own calls.

Outputs:
  out_paragraphs/judge_calibration/<judge>-<reasoning>/<text>__<model>-seed_<n>__<probe>.json
  out_paragraphs/judge_calibration/<judge>-<reasoning>/summary.json
"""
from __future__ import annotations

import argparse
import asyncio
import json
import random
import re
import subprocess
import zlib
import sys
from collections import defaultdict
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from fol import Atom, Compound, ParseError, Var, indicator, parse_clause  # noqa: E402
from llm import Client, LLMConfig, append_log, cache_key  # noqa: E402
from paragraph_judge import JUDGE_PROMPT, JUDGE_USER, JUDGES, numbered, parse_judgement, score_pair, split_sentences  # noqa: E402
from paragraph_metrics import render  # noqa: E402
from prolog import split_clauses, strip_comments  # noqa: E402

OUT = Path("out_paragraphs")
ORDER_SEED = 11
FRONTIER = ("astra", "astra-medium", "opus", "opus-medium")

# Phrase substitutions first (longest first), then single tokens. Meaning-preserving.
PHRASES = [("draw_up", "prepare"), ("drawn_up", "prepared"), ("drawing_up", "preparation"),
           ("keep_up_to_date", "maintain"), ("up_to_date", "current"), ("placing_on_market", "market_placement"),
           ("placed_on_market", "market_placed"), ("putting_into_service", "service_entry"),
           ("put_into_service", "service_entered"), ("notified_body", "notified_organisation"),
           ("high_risk", "elevated_risk"), ("technical_documentation", "technical_file")]
TOKENS = {"documentation": "documents", "provider": "supplier", "enterprise": "undertaking",
          "commission": "european_commission", "establish": "set_up",
          "authority": "public_authority", "information": "data", "content": "material",
          "ensure": "guarantee", "deployer": "user_organisation", "output": "generated_output",
          "marked": "labelled", "detectable": "recognisable", "obligation": "duty"}
MODALITY_FLIP = [("required_", "permitted_"), ("permitted_", "required_"), ("prohibited_", "permitted_"),
                 ("must_", "may_")]


# ------------------------------------------------------------------ renaming

IDENT_RE = re.compile(r"(?<![A-Za-z0-9_'])([a-z][A-Za-z0-9_]*)")
VAR_RE = re.compile(r"(?<![A-Za-z0-9_'])([A-Z][A-Za-z0-9_]*)")


def rename_ident(name: str) -> str:
    out = name
    for a, b in sorted(PHRASES, key=lambda p: -len(p[0])):
        out = re.sub(rf"(?<![a-z]){a}(?![a-z])", b, out)
    parts = out.split("_")
    parts = [TOKENS.get(p, p) for p in parts]
    return "_".join(parts)


def renamed_copy(text: str, seed: int) -> tuple[str | None, str]:
    """(renamed text, note). None when the renaming would merge two identifiers."""
    def sub_quoted_aware(pattern, fn, s):
        # leave quoted atoms alone
        pieces = re.split(r"('(?:[^']|'')*')", s)
        return "".join(p if p.startswith("'") else pattern.sub(fn, p) for p in pieces)
    text = strip_comments(text)
    idents = set()
    for cl in split_clauses(text):
        idents |= {m.group(1) for m in IDENT_RE.finditer(cl)}
    mapping = {i: rename_ident(i) for i in idents}
    targets = defaultdict(list)
    for k, v in mapping.items():
        targets[v].append(k)
    merged = {v: ks for v, ks in targets.items() if len(ks) > 1}
    if merged:
        return None, f"renaming would merge {merged}"
    changed = sum(k != v for k, v in mapping.items())
    body = sub_quoted_aware(IDENT_RE, lambda m: mapping[m.group(1)], text)
    body = sub_quoted_aware(VAR_RE, lambda m: m.group(1) if m.group(1).startswith("_") else "X" + m.group(1), body)
    # reorder non-directive clauses, keeping the directives first in their order
    clauses = split_clauses(body)
    directives = [c for c in clauses if c.startswith(":-")]
    rest = [c for c in clauses if not c.startswith(":-")]
    random.Random(seed).shuffle(rest)
    # the module directive's export list was renamed consistently; the module name too
    return "\n".join(directives) + "\n\n" + "\n\n".join(rest) + "\n", f"{changed} of {len(idents)} identifiers renamed"


# ------------------------------------------------------------------ mutation

def loads_ok(text: str) -> bool:
    import tempfile
    with tempfile.TemporaryDirectory() as d:
        p = Path(d) / "m.pl"
        p.write_text(text, encoding="utf-8")
        proc = subprocess.run(["swipl", "-q", "-g", f"catch(consult('{p}'),E,(print_message(error,E),halt(2))),halt(0)",
                               "-t", "halt(1)"], capture_output=True, text=True, timeout=60)
        return proc.returncode == 0 and "ERROR" not in proc.stderr


def conjuncts(t):
    if isinstance(t, Compound) and t.functor == "," and len(t.args) == 2:
        return conjuncts(t.args[0]) + conjuncts(t.args[1])
    return [t]


def conj(goals):
    t = goals[-1]
    for g in reversed(goals[:-1]):
        t = Compound(",", (g, t))
    return t


def rebuild(directives: list[str], clauses: list[str]) -> str:
    return "\n".join(directives) + "\n\n" + "\n\n".join(clauses) + "\n"


def mutate(text: str, op: str, seed: int) -> tuple[str | None, str]:
    """(mutant text, note). None when the operator does not apply."""
    rng = random.Random(seed)
    clauses = split_clauses(text)
    directives = [c for c in clauses if c.startswith(":-")]
    rest = [c for c in clauses if not c.startswith(":-")]
    parsed = []
    for c in rest:
        try:
            h, b = parse_clause(c)
            parsed.append((c, h, b))
        except (ParseError, Exception):  # noqa: BLE001
            parsed.append((c, None, None))
    if op == "drop_rule":
        cands = [i for i, (_, h, b) in enumerate(parsed) if b is not None]
        if not cands:
            return None, "no rule"
        i = rng.choice(cands)
        note = f"dropped: {rest[i][:70]}"
        _, h, _ = parsed[i]
        n, ar = indicator(h)
        still = any(j != i and ph is not None and indicator(ph) == (n, ar) for j, (_, ph, _) in enumerate(parsed))
        new_dirs = directives
        if not still:
            new_dirs = [re.sub(rf",?\s*(?<![A-Za-z0-9_]){re.escape(n)}/{ar}(?![0-9])", "", d) if "module(" in d else d
                        for d in directives]
            new_dirs = [re.sub(r"\[\s*,", "[", d) for d in new_dirs]
        return rebuild(new_dirs, rest[:i] + rest[i + 1:]), note
    if op == "flip_modality":
        cands = []
        for i, (_, h, b) in enumerate(parsed):
            if h is None:
                continue
            n, _ = indicator(h)
            for a, bb in MODALITY_FLIP:
                if n.startswith(a):
                    cands.append((i, a, bb))
                    break
        if not cands:
            return None, "no modality prefix"
        i, a, bb = rng.choice(cands)
        c, h, b = parsed[i]
        n, ar = indicator(h)
        new = bb + n[len(a):]
        # rename in head only, so the predicate changes modality for this clause; also
        # patch the export list so the module still loads
        new_clause = re.sub(rf"^{re.escape(n)}(?=\()", new, c)
        if new_clause == c:
            return None, "head not at clause start"
        new_rest = rest[:i] + [new_clause] + rest[i + 1:]
        still = any(j != i and ph is not None and indicator(ph) == (n, ar) for j, (_, ph, _) in enumerate(parsed))
        new_dirs = []
        for d in directives:
            if "module(" in d:
                d = re.sub(rf"(?<![A-Za-z0-9_]){re.escape(n)}/{ar}(?![0-9])",
                           f"{n}/{ar},\n    {new}/{ar}" if still else f"{new}/{ar}", d, count=1)
            new_dirs.append(d)
        return rebuild(new_dirs, new_rest), f"{n}/{ar} -> {new}/{ar} in one clause"
    if op == "drop_condition":
        cands = [i for i, (_, h, b) in enumerate(parsed) if b is not None and len(conjuncts(b)) >= 2]
        if not cands:
            return None, "no rule with >= 2 goals"
        i = rng.choice(cands)
        c, h, b = parsed[i]
        goals = conjuncts(b)
        j = rng.randrange(len(goals))
        kept = goals[:j] + goals[j + 1:]
        sep = ",\n    "
        new_clause = f"{render(h)} :-\n    {sep.join(render(g) for g in kept)}."
        return rebuild(directives, rest[:i] + [new_clause] + rest[i + 1:]), f"removed condition {render(goals[j])[:60]}"
    if op == "swap_args":
        cands = [i for i, (_, h, b) in enumerate(parsed)
                 if isinstance(h, Compound) and len(h.args) == 2 and h.args[0] != h.args[1]]
        if not cands:
            return None, "no binary head"
        i = rng.choice(cands)
        c, h, b = parsed[i]
        nh = Compound(h.functor, (h.args[1], h.args[0]))
        sep = ",\n    "
        new_clause = f"{render(nh)}." if b is None else f"{render(nh)} :-\n    {sep.join(render(g) for g in conjuncts(b))}."
        return rebuild(directives, rest[:i] + [new_clause] + rest[i + 1:]), f"swapped arguments of {render(h)[:60]}"
    raise ValueError(op)


OPS = ("drop_rule", "flip_modality", "drop_condition", "swap_args")


def pick_mutants(original: str, h: int, all_ops: bool) -> list[tuple[str, str | None, str]]:
    """One mutant per output (the operator chosen by `h`, falling back to the next one
    that applies and loads), or every operator with `all_ops`."""
    order = [OPS[(h + k) % len(OPS)] for k in range(len(OPS))]
    out = []
    for op in (OPS if all_ops else order):
        mut, note = mutate(original, op, h)
        if mut is not None and not loads_ok(mut):
            mut, note = None, "mutant does not load"
        out.append((op, mut, note))
        if not all_ops and mut is not None:
            return [out[-1]]
    return out if all_ops else [("none", None, "no operator applies: " + "; ".join(n for _, _, n in out))]


# -------------------------------------------------------------------- driver

def sample_outputs(root: Path, texts: list[str], n: int, seed: int) -> list[tuple[str, str, int, Path]]:
    allo = []
    for tid in texts:
        for mdir in sorted((root / tid).glob("*/")):
            for f in sorted(mdir.glob("seed_*.pl")):
                allo.append((tid, mdir.name, int(f.stem.split("_")[1]), f))
    allo = [o for o in allo if loads_ok(o[3].read_text(encoding="utf-8"))]
    rng = random.Random(seed)
    front = [o for o in allo if o[1] in FRONTIER]
    other = [o for o in allo if o[1] not in FRONTIER]
    rng.shuffle(front)
    rng.shuffle(other)
    k = min(len(front), max(1, (2 * n) // 3))
    chosen = front[:k] + other[:max(0, n - k)]
    return sorted(chosen)


async def run(args: argparse.Namespace) -> int:
    root = Path(args.dir)
    provider, model = JUDGES[args.judge]
    cfg = LLMConfig(provider=provider, model=model, reasoning=args.reasoning, temperature=0.0,
                    seed=0, concurrency=args.concurrency, num_predict=8192)
    client = Client(cfg, root / "cache")
    jlabel = f"{args.judge}-{args.reasoning}"
    jdir = root / "judge_calibration" / jlabel
    jdir.mkdir(parents=True, exist_ok=True)
    log_path = root / "run.jsonl"
    texts = {p.stem: p.read_text(encoding="utf-8") for p in (root / "texts").glob("*.txt")}
    if args.only:
        texts = {k: v for k, v in texts.items() if k in set(args.only.split(","))}
    sentences = {tid: split_sentences(t) for tid, t in texts.items()}
    outputs = sample_outputs(root, sorted(texts), args.sample, args.sample_seed)

    # build the probes first, deterministically, so the call list is known before any call
    probes = []
    skipped = []
    for tid, mdl, seed, f in outputs:
        original = f.read_text(encoding="utf-8")
        h = zlib.crc32(f'{tid}/{mdl}/{seed}'.encode()) & 0xFFFF
        ren, note = renamed_copy(original, h)
        if ren is None or not loads_ok(ren):
            skipped.append((tid, mdl, seed, "renamed", note if ren is None else "renamed copy does not load"))
        else:
            probes.append((tid, mdl, seed, "renamed", original, ren, note))
        for op, mut, note in pick_mutants(original, h, args.all_ops):
            if mut is None:
                skipped.append((tid, mdl, seed, op, note))
            else:
                probes.append((tid, mdl, seed, op, original, mut, note))
    print(f"judge {jlabel}  outputs {len(outputs)}  probes {len(probes)}  skipped {len(skipped)}")
    for s in skipped:
        print(f"  skipped {s[0]}/{s[1]}/seed_{s[2]} {s[3]}: {s[4]}")

    rng = random.Random(ORDER_SEED)
    sem = asyncio.Semaphore(args.concurrency)
    progress = {"done": 0, "present": 0, "failed": 0}

    async def one(http, tid, mdl, seed, probe, original, variant, note):
        dest = jdir / f"{tid}__{mdl}-seed_{seed}__{probe}.json"
        swapped = rng.random() < 0.5
        first, second = (variant, original) if swapped else (original, variant)
        messages = [{"role": "system", "content": JUDGE_PROMPT},
                    {"role": "user", "content": JUDGE_USER.format(sentences=numbered(sentences[tid]), a=first, b=second)}]
        key = cache_key(cfg, messages)
        if dest.exists() and not args.force and json.loads(dest.read_text()).get("key") == key:
            progress["present"] += 1
            return
        async with sem:
            text, rec = await client.call(http, messages, label=f"calib:{args.judge}:{tid}:{mdl}:s{seed}:{probe}")
        rec.meta = {"kind": "calibration", "text": tid, "model": mdl, "seed": seed, "probe": probe}
        append_log(log_path, rec)
        out = {"key": key, "text": tid, "model": mdl, "seed": seed, "probe": probe, "note": note,
               "swapped": swapped, "judge": model, "reasoning": args.reasoning, "variant": variant, "raw": text[:4000]}
        if not rec.ok:
            progress["failed"] += 1
            out["error"] = rec.error
        else:
            j = parse_judgement(text, len(sentences[tid]))
            if j is None:
                progress["failed"] += 1
                out["error"] = "judgement not parseable"
            else:
                out.update(score_pair(j, len(sentences[tid]), swapped))   # coverage_a = original
                out["judgement"] = j["sentences"]
                progress["done"] += 1
                print(f"  {tid:<13} {mdl:<13} seed {seed} {probe:<15} {out['overall']:<11} "
                      f"agree {out['agreement'] if out['agreement'] is not None else '-':<5} "
                      f"cov {out['coverage_a']:.2f}/{out['coverage_b']:.2f}")
        dest.write_text(json.dumps(out, indent=1), encoding="utf-8")

    async with httpx.AsyncClient() as http:
        await asyncio.gather(*[one(http, *p) for p in probes])
    print(f"\ndone={progress['done']} already-present={progress['present']} failed={progress['failed']}")
    summarise(root, jlabel)
    return 1 if progress["failed"] else 0


def summarise(root: Path, jlabel: str) -> None:
    jdir = root / "judge_calibration" / jlabel
    rows = [json.loads(f.read_text()) for f in sorted(jdir.glob("*__*.json")) if f.name != "summary.json"]
    rows = [r for r in rows if "overall" in r]
    if not rows:
        print("no calibration judgements")
        return
    ren = [r for r in rows if r["probe"] == "renamed"]
    mut = [r for r in rows if r["probe"] != "renamed"]

    def detected(r):
        """The judge noticed a difference: label not 'same', or a sentence disagreement, or coverage differs."""
        return r["overall"] != "same" or (r["agreement"] is not None and r["agreement"] < 1.0) \
            or abs(r["coverage_a"] - r["coverage_b"]) > 1e-9

    spec = {"n": len(ren),
            "label_same": round(sum(r["overall"] == "same" for r in ren) / len(ren), 3) if ren else None,
            "strict_same": round(sum(not detected(r) for r in ren) / len(ren), 3) if ren else None,
            "mean_agreement": round(sum(r["agreement"] or 0 for r in ren) / len(ren), 3) if ren else None}
    sens = {"n": len(mut),
            "label_not_same": round(sum(r["overall"] != "same" for r in mut) / len(mut), 3) if mut else None,
            "detected": round(sum(detected(r) for r in mut) / len(mut), 3) if mut else None,
            "by_op": {}}
    for op in OPS:
        rs = [r for r in mut if r["probe"] == op]
        if rs:
            sens["by_op"][op] = {"n": len(rs), "detected": round(sum(detected(r) for r in rs) / len(rs), 3),
                                 "label_not_same": round(sum(r["overall"] != "same" for r in rs) / len(rs), 3)}
    by_model = {}
    for m in sorted({r["model"] for r in rows}):
        rr = [r for r in ren if r["model"] == m]
        mm = [r for r in mut if r["model"] == m]
        by_model[m] = {"renamed_strict_same": round(sum(not detected(r) for r in rr) / len(rr), 3) if rr else None,
                       "mutant_detected": round(sum(detected(r) for r in mm) / len(mm), 3) if mm else None}
    summary = {"judge": jlabel, "specificity": spec, "sensitivity": sens, "by_model": by_model,
               "label_distribution": {k: sum(r["overall"] == k for r in rows) for k in ("same", "mostly_same", "different")}}
    (jdir / "summary.json").write_text(json.dumps(summary, indent=1), encoding="utf-8")
    print(f"\n== judge calibration: {jlabel} ==")
    print(f"  specificity (renamed copy judged identical): label 'same' {spec['label_same']}, "
          f"strict {spec['strict_same']}, mean agreement {spec['mean_agreement']}   n={spec['n']}")
    print(f"  sensitivity (one injected defect noticed):  label not 'same' {sens['label_not_same']}, "
          f"any signal {sens['detected']}   n={sens['n']}")
    for op, v in sens["by_op"].items():
        print(f"    {op:<16} n={v['n']:<3} detected {v['detected']:.2f}  label-not-same {v['label_not_same']:.2f}")
    print(f"  labels: {summary['label_distribution']}")
    print("  strict = 'same' AND agreement 1.0 AND equal coverage. any signal = label, a sentence 'no', or a coverage gap.")
    print("  A usable judge is high on both lines. High specificity with low sensitivity means it reads shape, not meaning;")
    print("  the reverse means it is spooked by spelling.")


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Judge calibration: renamed copies and single-defect mutants.")
    p.add_argument("--dir", default=str(OUT))
    p.add_argument("--judge", choices=sorted(JUDGES), default="sonnet")
    p.add_argument("--reasoning", default="medium")
    p.add_argument("--only", default="", help="comma-separated text ids")
    p.add_argument("--sample", type=int, default=20, help="number of outputs to probe")
    p.add_argument("--sample-seed", type=int, default=3)
    p.add_argument("--all-ops", action="store_true", help="all four mutation operators per output (4x the calls)")
    p.add_argument("--concurrency", type=int, default=4)
    p.add_argument("--force", action="store_true")
    p.add_argument("--summary-only", action="store_true")
    p.add_argument("--dry-run", action="store_true", help="build the probes, write the variants to disk, make no calls")
    return p


if __name__ == "__main__":
    a = build_parser().parse_args()
    if a.summary_only:
        summarise(Path(a.dir), f"{a.judge}-{a.reasoning}")
        sys.exit(0)
    if a.dry_run:
        root = Path(a.dir)
        texts = sorted(p.stem for p in (root / "texts").glob("*.txt"))
        if a.only:
            texts = [t for t in texts if t in set(a.only.split(","))]
        dd = root / "judge_calibration" / "variants"
        dd.mkdir(parents=True, exist_ok=True)
        n_ok = n_skip = 0
        for tid, mdl, seed, f in sample_outputs(root, texts, a.sample, a.sample_seed):
            original = f.read_text(encoding="utf-8")
            h = zlib.crc32(f'{tid}/{mdl}/{seed}'.encode()) & 0xFFFF
            ren, rnote = renamed_copy(original, h)
            for probe, var, note in [("renamed", ren, rnote)] + pick_mutants(original, h, a.all_ops):
                ok = var is not None and loads_ok(var)
                n_ok += ok
                n_skip += not ok
                print(f"  {tid:<13} {mdl:<13} seed {seed} {probe:<15} {'ok  ' if ok else 'SKIP'} {note}")
                if ok:
                    (dd / f"{tid}__{mdl}-seed_{seed}__{probe}.pl").write_text(var, encoding="utf-8")
        print(f"\nprobes ready {n_ok}, skipped {n_skip}; variants written to {dd}")
        sys.exit(0)
    sys.exit(asyncio.run(run(a)))
