"""Paragraph-level stability study: the metrics. Plan in paragraph_study.md.

Reads out_paragraphs/<text>/<model>/seed_<n>.pl and answers three questions:

  PER OUTPUT     does it load, is it one module, what is in it, does it follow the
                 coding standards, how much of the text does it touch
  WITHIN MODEL   same text, same model, three seeds: how alike are the three modules
  ACROSS MODELS  same text, different models: how alike are their modules

Three similarity measures, from loose to strict:

  jaccard_preds    Jaccard over the set of predicate indicators (name/arity).
                   "Did they name the same things?"
  jaccard_clauses  Jaccard over normalised clauses (variables renamed in order of first
                   occurrence, whitespace collapsed, module and dynamic directives
                   dropped). "Did they write the same rules, character for character,
                   up to variable names?"
  consensus        For each head in A, is there a head in B, aligned by name-token
                   overlap, whose Clark completion Z3 proves equivalent (fol.py)?
                   Averaged both directions. "Did they say the same thing, allowing
                   renaming?" This is the consensus-scoring metric applied here.

No LLM. Same inputs, same numbers. Writes metrics.json and review/<text>.md.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from collections import defaultdict
from itertools import combinations
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from align import body_goals, similarity  # noqa: E402
from fol import (Atom, Compound, Definition, Num, ParseError, Var, equivalent,  # noqa: E402
                 indicator, parse_clause, parse_term)
from prolog import split_clauses  # noqa: E402
from signature import STOPWORDS, _modality, _tokens  # noqa: E402

OUT = Path("out_paragraphs")
ALIGN_THRESHOLD = 0.5
MODALITY_ARITY = {"prohibited_": 1, "permitted_": 1, "required_": 1, "exempt_": 1,
                  "objective_": 1, "must_": 2}
NUMBER_IN_NAME_RE = re.compile(r"(^|_)(art|article|annex|anx|par|paragraph|point|pnt|rct|recital)_?\d|_\d+$")
EXTRA_STOP = {"shall", "should", "may", "such", "those", "this", "these", "also", "where",
              "well", "other", "any", "all", "be", "been", "has", "have", "not", "than",
              "into", "from", "under", "within", "only", "including", "particular",
              "regards", "order", "ensure", "thereof", "pursuant", "referred", "set", "out"}


# ------------------------------------------------------------------- one output

def render(t) -> str:
    """Canonical text of a term; variables already renamed by the caller."""
    if isinstance(t, Var):
        return t.name
    if isinstance(t, Atom):
        return t.name if re.fullmatch(r"[a-z][A-Za-z0-9_]*|\[\]", t.name) else f"'{t.name}'"
    if isinstance(t, Num):
        return t.value
    if isinstance(t, Compound):
        if t.functor in (",", ";", "->", ":-", "=", "\\=", "==", "\\==", "<", ">", "=<", ">=", "is") \
                and len(t.args) == 2:
            return f"({render(t.args[0])} {t.functor} {render(t.args[1])})"
        if t.functor == "\\+" and len(t.args) == 1:
            return f"\\+ {render(t.args[0])}"
        return f"{t.functor}({', '.join(render(a) for a in t.args)})"
    return str(t)


def canonical_vars(t, env: dict | None = None):
    if env is None:
        env = {}
    if isinstance(t, Var):
        if t.name == "_":
            return Var("_")
        if t.name not in env:
            env[t.name] = f"V{len(env)}"
        return Var(env[t.name])
    if isinstance(t, Compound):
        return Compound(t.functor, tuple(canonical_vars(a, env) for a in t.args))
    return t


class Module:
    """One model output, parsed."""

    def __init__(self, path: Path, text_words: frozenset[str]):
        self.path = path
        self.raw = path.read_text(encoding="utf-8")
        self.module_name: str | None = None
        self.exports: set[tuple[str, int]] = set()
        self.dynamic: set[tuple[str, int]] = set()
        self.defs: dict[tuple[str, int], list[str]] = defaultdict(list)
        self.called: set[tuple[str, int]] = set()
        self.facts = self.rules = 0
        self.unparsed = 0
        self.norm_clauses: set[str] = set()
        self.prose_lines = 0
        self.fenced = "```" in self.raw
        self._parse()
        self.load = self._swipl()
        self.standards = self._standards()
        self.coverage = self._coverage(text_words)

    def _parse(self) -> None:
        for clause in split_clauses(self.raw):
            if clause.startswith(":-"):
                try:
                    d = parse_term(clause)
                except ParseError:
                    self.unparsed += 1
                    continue
                inner = d.args[0] if isinstance(d, Compound) and d.args else None
                if isinstance(inner, Compound) and inner.functor == "module" and len(inner.args) == 2:
                    self.module_name = render(inner.args[0])
                    for e in _list_items(inner.args[1]):
                        if isinstance(e, Compound) and e.functor == "/" and len(e.args) == 2:
                            self.exports.add((render(e.args[0]), int(e.args[1].value)))
                elif isinstance(inner, Compound) and inner.functor == "dynamic":
                    for e in _comma_items(inner.args[0]):
                        if isinstance(e, Compound) and e.functor == "/" and len(e.args) == 2:
                            self.dynamic.add((render(e.args[0]), int(e.args[1].value)))
                continue
            try:
                head, body = parse_clause(clause)
                ind = indicator(head)
            except (ParseError, Exception):
                self.unparsed += 1
                continue
            self.defs[ind].append(clause)
            if body is None:
                self.facts += 1
            else:
                self.rules += 1
                self.called |= body_goals(body)
            env: dict = {}
            canon = canonical_vars(parse_term(clause), env)
            self.norm_clauses.add(render(canon))

    @property
    def preds(self) -> set[tuple[str, int]]:
        return set(self.defs)

    @property
    def inputs(self) -> set[tuple[str, int]]:
        return self.called - self.preds

    def _swipl(self) -> dict:
        proc = subprocess.run(
            ["swipl", "-q", "-g", f"catch(consult('{self.path}'),E,(print_message(error,E),halt(2))),halt(0)",
             "-t", "halt(1)"], capture_output=True, text=True, timeout=60)
        err = proc.stderr
        return {"ok": proc.returncode == 0 and "ERROR" not in err,
                "errors": err.count("ERROR"), "warnings": err.count("Warning:") // 2,
                "singletons": err.count("Singleton")}

    def _standards(self) -> dict:
        names = [p for p in self.preds | self.called]
        viol = {"number_in_name": [], "modality_arity": [], "uppercase_or_digit_start": [],
                "american_spelling": [], "export_mismatch": []}
        for n, a in names:
            if NUMBER_IN_NAME_RE.search(n):
                viol["number_in_name"].append(f"{n}/{a}")
            m = _modality(n)
            if m and MODALITY_ARITY[m] != a:
                viol["modality_arity"].append(f"{n}/{a}")
            if re.search(r"(^|_)(authoriz|organiz|recogniz|categoriz|minimiz|analyz|behavior(?!al)|licens)", n):
                viol["american_spelling"].append(f"{n}/{a}")
        if self.module_name is not None:
            missing = self.preds - self.exports
            extra = self.exports - self.preds
            viol["export_mismatch"] = sorted(f"{n}/{a}" for n, a in missing) + \
                sorted(f"+{n}/{a}" for n, a in extra)
        return {"counts": {k: len(v) for k, v in viol.items()}, "detail": viol}

    def _coverage(self, text_words: frozenset[str]) -> float:
        """Share of the text's content words that occur as a token in some predicate,
        functor or atom name. Crude, deliberately."""
        toks: set[str] = set()
        for n, _ in self.preds | self.called:
            toks |= set(n.split("_"))
        for cl in self.norm_clauses:
            toks |= set(re.findall(r"[a-z][a-z0-9]*", cl))
        toks = {t for t in toks if t not in STOPWORDS}
        if not text_words:
            return 0.0
        hit = sum(1 for w in text_words if w in toks or any(t.startswith(w[:6]) for t in toks if len(w) > 6))
        return round(hit / len(text_words), 3)

    def summary(self) -> dict:
        return {"module": self.module_name, "exports": len(self.exports), "dynamic": len(self.dynamic),
                "predicates": len(self.preds), "inputs": len(self.inputs), "clauses": self.facts + self.rules,
                "facts": self.facts, "rules": self.rules, "unparsed": self.unparsed, "fenced": self.fenced,
                "load": self.load, "standards": self.standards["counts"], "coverage": self.coverage,
                "chars": len(self.raw)}


def _list_items(t) -> list:
    items = []
    while isinstance(t, Compound) and t.functor == "[|]":
        items.append(t.args[0])
        t = t.args[1]
    return items


def _comma_items(t) -> list:
    if isinstance(t, Compound) and t.functor == "," and len(t.args) == 2:
        return _comma_items(t.args[0]) + _comma_items(t.args[1])
    return [t]


def content_words(text: str) -> frozenset[str]:
    words = re.findall(r"[a-z][a-z-]+", text.lower())
    return frozenset(w.replace("-", "") for w in words if len(w) > 3 and w not in STOPWORDS and w not in EXTRA_STOP)


# ------------------------------------------------------------- pairwise measures

def jaccard(a: set, b: set) -> float:
    return len(a & b) / len(a | b) if (a | b) else 1.0


def align_modules(a: Module, b: Module, threshold: float) -> dict[tuple[str, int], tuple[str, int]]:
    """Identity, then name-token overlap, same arity, compatible modality, one-to-one."""
    mapping = {}
    a_all = a.preds | a.called
    b_all = b.preds | b.called
    rest = []
    for ind in sorted(a_all):
        if ind in b_all:
            mapping[ind] = ind
        else:
            rest.append(ind)
    pool = b_all - set(mapping.values())
    scored = []
    for x in rest:
        mx = _modality(x[0])
        for y in pool:
            if y[1] != x[1]:
                continue
            my = _modality(y[0])
            if mx and my and mx != my:
                continue
            s = similarity(x, y, None, None)
            if s >= threshold:
                scored.append((s, x, y))
    scored.sort(key=lambda z: (-z[0], z[1], z[2]))
    taken = set()
    for s, x, y in scored:
        if x in mapping or y in taken:
            continue
        mapping[x] = y
        taken.add(y)
    return mapping


def consensus_one_way(a: Module, b: Module, threshold: float, timeout_ms: int) -> tuple[float, dict]:
    """Share of a's heads with an aligned, Z3-equivalent definition in b."""
    if not a.preds:
        return 0.0, {}
    mapping = align_modules(a, b, threshold)
    inv = {v: k for k, v in mapping.items()}

    def rename(n, k):
        return inv.get((n, k), (n, k))

    counts = defaultdict(int)
    for h in a.preds:
        t = mapping.get(h)
        if t is None or t not in b.defs:
            counts["unaligned" if t is None else "peer_no_definition"] += 1
            continue
        try:
            da = Definition.from_text(h[0], h[1], a.defs[h])
            db = Definition.from_text(t[0], t[1], b.defs[t])
        except ParseError:
            counts["unsupported"] += 1
            continue
        counts[equivalent(da, db, rename, timeout_ms).kind] += 1
    return counts["equiv"] / len(a.preds), dict(counts)


def compare(a: Module, b: Module, threshold: float, timeout_ms: int) -> dict:
    c_ab, v_ab = consensus_one_way(a, b, threshold, timeout_ms)
    c_ba, v_ba = consensus_one_way(b, a, threshold, timeout_ms)
    return {"jaccard_preds": round(jaccard(a.preds, b.preds), 3),
            "jaccard_clauses": round(jaccard(a.norm_clauses, b.norm_clauses), 3),
            "consensus": round((c_ab + c_ba) / 2, 3),
            "verdicts_ab": v_ab, "verdicts_ba": v_ba}


def mean(xs: list[float]) -> float | None:
    return round(sum(xs) / len(xs), 3) if xs else None


# --------------------------------------------------------------------- driver

def main() -> int:
    ap = argparse.ArgumentParser(description="Metrics for the paragraph study.")
    ap.add_argument("--dir", default=str(OUT))
    ap.add_argument("--align-threshold", type=float, default=ALIGN_THRESHOLD)
    ap.add_argument("--timeout-ms", type=int, default=2000)
    a = ap.parse_args()
    root = Path(a.dir)

    texts = {p.stem: p.read_text(encoding="utf-8") for p in (root / "texts").glob("*.txt")}
    modules: dict[str, dict[str, dict[int, Module]]] = defaultdict(lambda: defaultdict(dict))
    for tid, text in sorted(texts.items()):
        words = content_words(text)
        for mdir in sorted((root / tid).glob("*/")) if (root / tid).exists() else []:
            for f in sorted(mdir.glob("seed_*.pl")):
                seed = int(f.stem.split("_")[1])
                modules[tid][mdir.name][seed] = Module(f, words)

    report = {"texts": {}, "models": {}, "pairs": [], "align_threshold": a.align_threshold}
    per_model_rows = defaultdict(list)       # model -> per-output summaries
    within = defaultdict(list)               # model -> within-model comparisons
    across = defaultdict(list)               # text -> cross-model comparisons
    across_by_model = defaultdict(list)      # model -> cross-model comparisons it took part in

    for tid, by_model in modules.items():
        t_out = {"chars": len(texts[tid]), "content_words": len(content_words(texts[tid])),
                 "outputs": {}, "within": {}, "across": {}}
        for model, by_seed in by_model.items():
            for seed, m in by_seed.items():
                t_out["outputs"][f"{model}/seed_{seed}"] = m.summary()
                per_model_rows[model].append(m.summary())
            cmp_ = [compare(by_seed[s1], by_seed[s2], a.align_threshold, a.timeout_ms)
                    for s1, s2 in combinations(sorted(by_seed), 2)]
            if cmp_:
                agg = {k: mean([c[k] for c in cmp_]) for k in ("jaccard_preds", "jaccard_clauses", "consensus")}
                t_out["within"][model] = agg
                within[model].append(agg)
        models_here = sorted(by_model)
        for m1, m2 in combinations(models_here, 2):
            s1 = sorted(by_model[m1])
            s2 = sorted(by_model[m2])
            if not s1 or not s2:
                continue
            # all seed pairs across the two models, averaged
            cmp_ = [compare(by_model[m1][x], by_model[m2][y], a.align_threshold, a.timeout_ms)
                    for x in s1 for y in s2]
            agg = {k: mean([c[k] for c in cmp_]) for k in ("jaccard_preds", "jaccard_clauses", "consensus")}
            t_out["across"][f"{m1}~{m2}"] = agg
            across[tid].append(agg)
            across_by_model[m1].append(agg)
            across_by_model[m2].append(agg)
            report["pairs"].append({"text": tid, "a": m1, "b": m2, **agg})
        report["texts"][tid] = t_out
        write_review(root, tid, texts[tid], by_model, t_out)

    for model, rows in per_model_rows.items():
        report["models"][model] = {
            "outputs": len(rows),
            "load_ok": round(sum(r["load"]["ok"] for r in rows) / len(rows), 3),
            "module_directive": round(sum(r["module"] is not None for r in rows) / len(rows), 3),
            "fenced": sum(r["fenced"] for r in rows),
            "mean_clauses": mean([r["clauses"] for r in rows]),
            "mean_predicates": mean([r["predicates"] for r in rows]),
            "mean_inputs": mean([r["inputs"] for r in rows]),
            "mean_coverage": mean([r["coverage"] for r in rows]),
            "standard_violations": {k: sum(r["standards"][k] for r in rows) for k in rows[0]["standards"]},
            "singletons": sum(r["load"]["singletons"] for r in rows),
            "within": {k: mean([w[k] for w in within[model] if w[k] is not None])
                       for k in ("jaccard_preds", "jaccard_clauses", "consensus")},
            "across": {k: mean([w[k] for w in across_by_model[model] if w[k] is not None])
                       for k in ("jaccard_preds", "jaccard_clauses", "consensus")},
        }
    (root / "metrics.json").write_text(json.dumps(report, indent=1), encoding="utf-8")
    print_summary(report)
    print(f"\nwrote {root / 'metrics.json'} and {root / 'review'}/<text>.md")
    return 0


def print_summary(report: dict) -> None:
    ms = report["models"]
    if not ms:
        print("no outputs found")
        return
    print("== per model, over all outputs ==")
    print(f"  {'model':<10}{'n':>4}{'loads':>7}{'module':>8}{'clauses':>9}{'preds':>7}{'inputs':>8}"
          f"{'cover':>7}{'viol':>6}{'single':>8}")
    for m, r in sorted(ms.items()):
        print(f"  {m:<10}{r['outputs']:>4}{r['load_ok']:>7.0%}{r['module_directive']:>8.0%}"
              f"{r['mean_clauses']:>9.1f}{r['mean_predicates']:>7.1f}{r['mean_inputs']:>8.1f}"
              f"{r['mean_coverage']:>7.2f}{sum(r['standard_violations'].values()):>6}{r['singletons']:>8}")
    print("\n== WITHIN model (same text, 3 seeds) vs ACROSS models (same text), mean ==")
    print(f"  {'model':<10}{'J preds':>9}{'J clauses':>11}{'consensus':>11}   |"
          f"{'J preds':>9}{'J clauses':>11}{'consensus':>11}")
    for m, r in sorted(ms.items()):
        w, x = r["within"], r["across"]
        f = lambda v: "    -" if v is None else f"{v:9.3f}"
        print(f"  {m:<10}{f(w['jaccard_preds'])}{f(w['jaccard_clauses']):>11}{f(w['consensus']):>11}   |"
              f"{f(x['jaccard_preds'])}{f(x['jaccard_clauses']):>11}{f(x['consensus']):>11}")
    print("\n== per text, across models (mean over model pairs) ==")
    for tid, t in report["texts"].items():
        vals = list(t["across"].values())
        if vals:
            print(f"  {tid:<14} J preds {mean([v['jaccard_preds'] for v in vals]):.3f}  "
                  f"J clauses {mean([v['jaccard_clauses'] for v in vals]):.3f}  "
                  f"consensus {mean([v['consensus'] for v in vals]):.3f}   "
                  f"({t['chars']} chars, {t['content_words']} content words)")


def write_review(root: Path, tid: str, text: str, by_model: dict, t_out: dict) -> None:
    (root / "review").mkdir(exist_ok=True)
    lines = [f"# {tid}", "", "## Text", "", text, ""]
    lines += ["## Numbers", "", "| output | loads | module | clauses | preds | inputs | coverage | violations |",
              "|---|---|---|---|---|---|---|---|"]
    for k, s in t_out["outputs"].items():
        lines.append(f"| {k} | {'yes' if s['load']['ok'] else 'NO'} | {s['module'] or '-'} | {s['clauses']} | "
                     f"{s['predicates']} | {s['inputs']} | {s['coverage']} | {sum(s['standards'].values())} |")
    lines += ["", "Within-model (3 seeds): " + "; ".join(
        f"{m}: J_preds {w['jaccard_preds']}, J_clauses {w['jaccard_clauses']}, consensus {w['consensus']}"
        for m, w in t_out["within"].items()), ""]
    for model, by_seed in by_model.items():
        for seed, m in sorted(by_seed.items()):
            lines += [f"## {model} seed {seed}", "", "```prolog", m.raw.rstrip(), "```", ""]
    (root / "review" / f"{tid}.md").write_text("\n".join(lines), encoding="utf-8")


if __name__ == "__main__":
    sys.exit(main())
