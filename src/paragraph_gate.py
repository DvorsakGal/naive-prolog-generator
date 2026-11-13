"""Gate pass rate for paragraph-study outputs. Plan in astra_plan.md, stage 1a.

A module passes the GATE when it is a program at all, before anyone asks what it says:

  load        consults in SWI-Prolog with zero errors and no singleton or other
              warnings (a "clauses not together" warning is reported, not fatal:
              it changes nothing about what the program computes)
  exports     every exported predicate has a clause (the reverse, a defined predicate
              left out of the export list, is reported under `unexported`, not fatal)
  undefined   every predicate called in a body is defined in the module, declared
              :- dynamic, or a standard builtin
  extensions  no SWI-Prolog library or non-logical builtin (aggregate_all, findall,
              assert, format, string builtins, ...), no cut, no if-then-else, no is/2
  terminates  every exported predicate, called with fresh arguments on an empty fact
              base, completes within TIME_LIMIT seconds without a runtime error

Reported but NOT part of the gate (they are naming standards, not executability):

  position_reference   an atom or functor that names where the text sits instead of
                       what it says: article_11(1), chp_3, chapter(3), article(11, 1).
                       paragraph_metrics.py only checks predicate names; this looks
                       inside terms.
  disjunction          ';' in a body. First-order, but worth counting.

Deterministic. Writes out_paragraphs/gate.json and prints one row per model and one per
model x text. Reuses Module from paragraph_metrics.py for parsing and the load check.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
import tempfile
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from paragraph_metrics import Module, content_words  # noqa: E402

OUT = Path("out_paragraphs")
TIME_LIMIT = 1.0

# Standard, first-order-compatible builtins a body may use without declaring them.
STANDARD = {("=", 2), ("\\=", 2), ("==", 2), ("\\==", 2), ("<", 2), (">", 2), ("=<", 2), (">=", 2),
            ("=:=", 2), ("=\\=", 2), ("true", 0), ("fail", 0), ("false", 0),
            ("member", 2), ("memberchk", 2), ("atom", 1), ("number", 1), ("integer", 1),
            ("var", 1), ("nonvar", 1), ("ground", 1), ("compound", 1), ("callable", 1),
            ("is_list", 1), ("length", 2), ("append", 3), ("=..", 2), ("dif", 2)}
EXTENSIONS = {"aggregate_all", "aggregate", "findall", "bagof", "setof", "forall", "assert", "asserta",
              "assertz", "retract", "retractall", "format", "write", "writeln", "print", "nl", "read",
              "nb_setval", "nb_getval", "b_setval", "b_getval", "string_concat", "string_chars",
              "string_codes", "string_to_atom", "atom_concat", "atom_string", "sub_atom", "atom_chars",
              "atom_codes", "atom_number", "number_codes", "atom_length", "upcase_atom", "downcase_atom",
              "msort", "sort", "predsort", "nth0", "nth1", "last", "sum_list", "max_list", "min_list",
              "exclude", "include", "maplist", "foldl", "catch", "throw", "call", "once", "ignore",
              "succ", "plus", "between", "numlist", "tab", "halt", "consult", "use_module",
              "date", "get_time", "date_time_stamp", "format_time", "term_to_atom", "copy_term",
              "setarg", "arg", "functor", "tabling", "table"}
NON_FOL = {"!", "->", "*->", "is"}
POSITION_RE = re.compile(r"(^|[^a-z])(art|article|chp|chapter|cpt|par|paragraph|sec|section|pnt|point|rct|recital)"
                         r"(_[0-9ivx]+|\([0-9])")


def goal_names(clause_text: str) -> set[str]:
    return set(re.findall(r"(?<![A-Za-z0-9_'])([a-z][A-Za-z0-9_]*)\s*\(", clause_text))


def check_terminates(path: Path, mod: str, exports: set[tuple[str, int]]) -> dict:
    """Call each export with fresh arguments under a time limit; empty fact base."""
    if not exports:
        return {"ok": True, "timeout": [], "error": []}
    goals = ", ".join(f"probe({n}/{a})" for n, a in sorted(exports))
    script = f"""
:- use_module(library(time)).
:- use_module('{str(path.resolve()).replace("'", "\\\\'")}', []).
probe(N/A) :-
    functor(G, N, A),
    catch(call_with_time_limit({TIME_LIMIT}, ({mod}:G -> true ; true)), E,
          ( E == time_limit_exceeded -> format("TIMEOUT ~w/~w~n", [N, A])
          ; format("ERROR ~w/~w ~q~n", [N, A, E]) )).
main :- {goals}.
"""
    with tempfile.TemporaryDirectory() as d:
        p = Path(d) / "probe.pl"
        p.write_text(script, encoding="utf-8")
        try:
            proc = subprocess.run(["swipl", "-q", "-g", "main", "-t", "halt", str(p)],
                                  capture_output=True, text=True, timeout=60 + 2 * len(exports))
            out = proc.stdout
        except subprocess.TimeoutExpired:
            return {"ok": False, "timeout": ["<probe timed out>"], "error": []}
    timeouts = re.findall(r"^TIMEOUT (\S+)", out, re.M)
    errors = [ln[6:120] for ln in out.splitlines() if ln.startswith("ERROR ")]
    return {"ok": not timeouts and not errors, "timeout": timeouts, "error": errors}


def load_warnings(path: Path) -> dict:
    """Warning kinds from a fresh consult: discontiguous | singleton | other."""
    proc = subprocess.run(
        ["swipl", "-q", "-g", f"catch(consult('{path}'),E,(print_message(error,E),halt(2))),halt(0)",
         "-t", "halt(1)"], capture_output=True, text=True, timeout=60)
    kinds = {"discontiguous": 0, "singleton": 0, "other": 0}
    for block in re.split(r"(?m)^(?=Warning: /)", proc.stderr):
        if not block.startswith("Warning:"):
            continue
        if "not together in the source-file" in block:
            kinds["discontiguous"] += 1
        elif "Singleton" in block:
            kinds["singleton"] += 1
        else:
            kinds["other"] += 1
    return kinds


def gate(m: Module) -> dict:
    reasons = []
    warn = load_warnings(m.path) if m.load["ok"] else {"discontiguous": 0, "singleton": 0, "other": 0}
    if not m.load["ok"] or m.load["errors"]:
        reasons.append(f"load: {m.load['errors']} errors")
    elif warn["singleton"] or warn["other"]:
        reasons.append(f"load: warnings singleton {warn['singleton']} other {warn['other']}")
    if m.module_name is None:
        reasons.append("no module directive")
    # exported but never defined is a load error (and fatal); defined but not exported is
    # a prompt violation that changes nothing about what the program computes: reported.
    extra = [x[1:] for x in m.standards["detail"]["export_mismatch"] if x.startswith("+")]
    unexported = [x for x in m.standards["detail"]["export_mismatch"] if not x.startswith("+")]
    if extra:
        reasons.append(f"export without clause: {extra[:4]}")
    undefined = sorted(f"{n}/{a}" for n, a in (m.called - m.preds - m.dynamic) if (n, a) not in STANDARD
                       and n not in EXTENSIONS and n not in NON_FOL)
    if undefined:
        reasons.append(f"undefined: {undefined[:4]}")
    used_ext, used_nonfol, disj, position = set(), set(), 0, set()
    for cl in m.norm_clauses:
        names = goal_names(cl)
        used_ext |= names & EXTENSIONS
        for tok in NON_FOL:
            if re.search(r"(?<![A-Za-z0-9_])" + re.escape(tok) + r"(?![A-Za-z0-9_=<>])", cl):
                used_nonfol.add(tok)
        disj += cl.count(" ; ")
        for mm in POSITION_RE.finditer(cl):
            position.add(mm.group(0).lstrip("(, "))
    for n, _ in m.called:
        if n in EXTENSIONS:
            used_ext.add(n)
    if used_ext:
        reasons.append(f"extensions: {sorted(used_ext)}")
    if used_nonfol:
        reasons.append(f"non-FOL: {sorted(used_nonfol)}")
    term = {"ok": True, "timeout": [], "error": []}
    if m.module_name is not None and m.load["ok"]:
        term = check_terminates(m.path, m.module_name, m.exports & m.preds)
        if not term["ok"]:
            reasons.append(f"termination: timeout {term['timeout'][:3]} error {term['error'][:2]}")
    return {"pass": not reasons, "reasons": reasons, "undefined": undefined, "extensions": sorted(used_ext),
            "non_fol": sorted(used_nonfol), "disjunctions": disj, "position_references": sorted(position),
            "termination": term, "load": m.load, "warnings": warn, "unexported": unexported}


def main() -> int:
    ap = argparse.ArgumentParser(description="Gate pass rate for paragraph-study outputs.")
    ap.add_argument("--dir", default=str(OUT))
    ap.add_argument("--only", default="", help="comma-separated text ids")
    ap.add_argument("--models", nargs="*", default=None)
    a = ap.parse_args()
    root = Path(a.dir)
    texts = {p.stem: p.read_text(encoding="utf-8") for p in (root / "texts").glob("*.txt")}
    if a.only:
        texts = {k: v for k, v in texts.items() if k in set(a.only.split(","))}
    report = {"time_limit_s": TIME_LIMIT, "outputs": {}}
    by_model = defaultdict(list)
    by_model_text = defaultdict(list)
    for tid, text in sorted(texts.items()):
        words = content_words(text)
        for mdir in sorted((root / tid).glob("*/")) if (root / tid).exists() else []:
            if a.models and mdir.name not in a.models:
                continue
            for f in sorted(mdir.glob("seed_*.pl")):
                g = gate(Module(f, words))
                report["outputs"][f"{tid}/{mdir.name}/{f.stem}"] = g
                by_model[mdir.name].append(g)
                by_model_text[(mdir.name, tid)].append(g)
    reason_kinds = ["load", "export", "undefined", "extensions", "non-FOL", "termination", "no module"]
    report["by_model"] = {}
    print(f"  {'model':<13}{'n':>4}{'gate':>7}" + "".join(f"{k:>12}" for k in reason_kinds) + f"{'posref':>8}{'discon':>8}{'unexp':>7}{'disj':>6}")
    for model, gs in sorted(by_model.items()):
        counts = {k: sum(any(r.startswith(k) for r in g["reasons"]) for g in gs) for k in reason_kinds}
        row = {"outputs": len(gs), "gate_pass_rate": round(sum(g["pass"] for g in gs) / len(gs), 3),
               "fail_counts": counts,
               "outputs_with_position_reference": sum(bool(g["position_references"]) for g in gs),
               "outputs_with_discontiguous_warning": sum(bool(g["warnings"]["discontiguous"]) for g in gs),
               "outputs_with_unexported_predicate": sum(bool(g["unexported"]) for g in gs),
               "disjunctions": sum(g["disjunctions"] for g in gs)}
        report["by_model"][model] = row
        print(f"  {model:<13}{len(gs):>4}{row['gate_pass_rate']:>7.0%}" + "".join(f"{counts[k]:>12}" for k in reason_kinds)
              + f"{row['outputs_with_position_reference']:>8}{row['outputs_with_discontiguous_warning']:>8}"
              + f"{row['outputs_with_unexported_predicate']:>7}{row['disjunctions']:>6}")
    print("  gate = share of outputs passing every check; the other columns count outputs failing that check.")
    print("  posref = outputs with a position reference inside a term (article_11(1), chp_3); discon = outputs with a")
    print("  'clauses not together' warning; unexp = outputs with a defined predicate missing from the export list.")
    print("  None of the three is a gate failure.")
    report["by_model_text"] = {f"{m}/{t}": round(sum(g["pass"] for g in gs) / len(gs), 3) for (m, t), gs in sorted(by_model_text.items())}
    print("\n  gate pass rate per model x text:")
    for k, v in report["by_model_text"].items():
        print(f"    {k:<32}{v:>6.0%}")
    (root / "gate.json").write_text(json.dumps(report, indent=1), encoding="utf-8")
    print(f"\nwrote {root / 'gate.json'}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
