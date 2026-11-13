"""Scenario accuracy for paragraph-study outputs. Plan in astra_plan.md, stage 1b.

THE QUESTION
------------
Can the module answer legal questions about the paragraph? A scenario is a small fact
base plus queries with expected answers, written once per text in a fixed canonical
vocabulary (scenarios/<text>/scenarios.json). A module is scored on the share of
scenarios whose queries it answers correctly. Names never enter the score.

THE BRIDGE: ADAPTERS
--------------------
The naive prompt gives the model no vocabulary, so every module names its inputs and
its conclusions its own way. An ADAPTER is a few Prolog clauses that connect one module
to the canonical vocabulary without changing the module:

    input clause   <module input>(..) :- <canonical facts>.      facts flow in
    query clause   <canonical query>(..) :- <one module predicate>(..).   answers flow out

The adapter is linted so it cannot do the module's work for it:
  * an input clause may only use canonical input predicates and =/2 in its body (a
    ground fact is allowed for an entity the tests do not supply, e.g. the Commission);
  * a query clause must call exactly ONE predicate the module defines, plus =/2 for
    reshaping; no canonical facts, no negation, no arithmetic, no cuts, no directives;
  * a query clause may not be a fact.
Clauses that break a rule are dropped and recorded; the module is scored on the rest.
A query with no adapter clause whose head unifies with it is UNANSWERABLE, which is
scored as wrong but reported separately from a wrong answer.

Adapters come from two places: `adapters_hand/` under the scenario folder, written by
a person (the sanity check), or an LLM (`--adapters llm`), cached and logged like every
other call, with one repair round when the lint rejects something or a module predicate
with a modality prefix (must_, required_, permitted_, prohibited_) has no query clause.
Unary module inputs whose name equals a canonical input get an identity clause from the
runner itself (the LLM tends to skip them, and the module then sees no facts).
`--rescore` re-runs stored LLM adapters through the harness with no call and no key.

CONTROLS (`--controls`)
-----------------------
  reference module + identity adapter   must pass every scenario
  empty module + empty adapter          must pass none; every query unanswerable
  each mutant of the reference          must fail at least one scenario
Run them before trusting any number from a model output.

SCORES PER OUTPUT
-----------------
  scenario pass     all queries of the scenario correct (the plunit reading)
  query accuracy    correct / all queries
  false_positive    expected false, got true   (a breach or duty invented)
  missed            expected true, got false   (a breach or duty not derived)
  unanswerable      unmapped, error or timeout
  per norm          pass rate over the scenarios tagged with the norm
  interpretive      scenarios whose expected answer rests on a reading, reported apart
Answer agreement between two outputs = share of queries with the same outcome (true,
false, unanswerable); seed stability = spread of the pass rate over seeds.

Outputs:
  out_paragraphs/scenarios/<text>/<model>/seed_<n>.<hand|llm>.json       results
  out_paragraphs/scenarios/<text>/<model>/seed_<n>.llm.adapter.pl        LLM adapter
  out_paragraphs/scenarios/summary.json, out_paragraphs/scenarios/<text>.md
"""
from __future__ import annotations

import argparse
import asyncio
import json
import re
import statistics
import subprocess
import sys
import tempfile
from collections import defaultdict
from itertools import combinations
from pathlib import Path

import httpx

sys.path.insert(0, str(Path(__file__).parent))
from fol import Atom, Compound, Num, ParseError, Var, indicator, parse_clause  # noqa: E402
from llm import Client, LLMConfig, append_log, cache_key, strip_fences  # noqa: E402
from paragraph_metrics import Module, content_words, render  # noqa: E402
from prolog import split_clauses  # noqa: E402

OUT = Path("out_paragraphs")
SCEN = Path("scenarios")
QUERY_TIMEOUT = 2.0
ADAPTER_MODELS = {
    "sonnet": ("openrouter", "anthropic/claude-sonnet-5.5"),
    "opus":   ("openrouter", "anthropic/claude-opus-5.5"),
    "gpt":    ("openrouter", "openai/gpt-5.4"),
}
CONTROL = {",", ";", "|", "->", "\\+", "\\=", "==", "\\==", "<", ">", "=<", ">=", "=:=", "=\\=",
           "is", "true", "fail", "false", "!"}


# ------------------------------------------------------------------- spec

def pi(s: str) -> tuple[str, int]:
    n, _, a = s.rpartition("/")
    return n, int(a)


class Spec:
    def __init__(self, path: Path):
        self.dir = path.parent
        self.d = json.loads(path.read_text(encoding="utf-8"))
        self.text = self.d["text"]
        self.inputs = {pi(x["pred"]) for x in self.d["inputs"]}
        self.queries = {pi(x["pred"]) for x in self.d["queries"]}
        self.scenarios = self.d["scenarios"]
        self.norms = list(self.d["norms"])

    def vocabulary_text(self) -> str:
        lines = ["INPUT predicates (the tests assert these as facts):"]
        lines += [f"  {x['pred']:<28} {x['meaning']}" for x in self.d["inputs"]]
        lines += ["", "QUERY predicates (the tests call these):"]
        lines += [f"  {x['pred']:<28} {x['meaning']}" for x in self.d["queries"]]
        lines += ["", "Action terms used inside queries:"]
        lines += [f"  {a}" for a in self.d["actions"]]
        return "\n".join(lines)

    def n_queries(self) -> int:
        return sum(len(s["queries"]) for s in self.scenarios)


# ----------------------------------------------------------------- adapter

def conjuncts(t) -> list:
    if isinstance(t, Compound) and t.functor == "," and len(t.args) == 2:
        return conjuncts(t.args[0]) + conjuncts(t.args[1])
    return [t]


def goal_pi(g) -> tuple[str, int]:
    if isinstance(g, Atom):
        return g.name, 0
    if isinstance(g, Compound):
        return g.functor, len(g.args)
    return "?", -1


def is_ground(t) -> bool:
    if isinstance(t, Var):
        return False
    if isinstance(t, Compound):
        return all(is_ground(a) for a in t.args)
    return True


def qualify(goals: list, mod: str) -> str:
    out = []
    for g in goals:
        p = goal_pi(g)
        out.append(render(g) if p == ("=", 2) else f"{mod}:{render(g)}")
    return ", ".join(out)


class Adapter:
    """Parsed and linted adapter. `violations` lists what was dropped and why."""

    def __init__(self, text: str, module: Module, spec: Spec):
        self.text = text
        self.input_clauses: list[tuple] = []     # (head, body goals | None)
        self.query_clauses: list[tuple] = []
        self.background: list[str] = []
        self.violations: list[str] = []
        self.module_inputs = set(module.dynamic) | (module.called - module.preds)
        self.module_preds = set(module.preds)
        self.spec = spec
        for cl in split_clauses(text):
            self._one(cl)
        # A module input with the same name and arity 1 as a canonical input is the same
        # thing in another namespace; without an explicit clause the module never sees
        # the test's facts. LLM adapters skip these ("it is already the same"), so the
        # runner adds them. Arity >= 2 is left to the adapter: argument order may differ.
        written = {indicator(h) for h, _ in self.input_clauses}
        self.auto_identity: list[str] = []
        for n, a in sorted(self.module_inputs & spec.inputs):
            if a == 1 and (n, a) not in written:
                head = Compound(n, (Var("X"),))
                self.input_clauses.append((head, [head]))
                self.auto_identity.append(f"{n}/{a}")

    def _one(self, cl: str) -> None:
        if cl.startswith(":-"):
            self.violations.append(f"directive not allowed: {cl[:60]}")
            return
        try:
            head, body = parse_clause(cl)
            ind = indicator(head)
        except (ParseError, Exception) as e:  # noqa: BLE001
            self.violations.append(f"unparsable: {cl[:60]} ({e})")
            return
        goals = conjuncts(body) if body is not None else []
        bad_ctl = [render(g) for g in goals if goal_pi(g)[0] in CONTROL]
        if ind in self.spec.queries:
            if body is None:
                self.violations.append(f"query clause must not be a fact: {cl[:60]}")
                return
            if bad_ctl:
                self.violations.append(f"query clause uses control/negation/arithmetic {bad_ctl}: {cl[:60]}")
                return
            calls = [g for g in goals if goal_pi(g) != ("=", 2)]
            if len(calls) != 1 or goal_pi(calls[0]) not in self.module_preds:
                self.violations.append(
                    f"query clause must call exactly one module predicate "
                    f"(got {[goal_pi(g) for g in calls]}): {cl[:60]}")
                return
            self.query_clauses.append((head, goals))
        elif ind in self.module_inputs:
            if body is None:
                if not is_ground(head):
                    self.violations.append(f"input fact must be ground: {cl[:60]}")
                    return
                self.background.append(render(head))
                self.input_clauses.append((head, None))
                return
            if bad_ctl:
                self.violations.append(f"input clause uses control/negation/arithmetic {bad_ctl}: {cl[:60]}")
                return
            wrong = [goal_pi(g) for g in goals if goal_pi(g) not in self.spec.inputs and goal_pi(g) != ("=", 2)]
            if wrong:
                self.violations.append(f"input clause body must use canonical inputs only (got {wrong}): {cl[:60]}")
                return
            self.input_clauses.append((head, goals))
        else:
            self.violations.append(f"head {ind[0]}/{ind[1]} is neither a module input nor a canonical query: {cl[:60]}")

    def unmapped_duties(self) -> list[str]:
        """Module predicates with a modality prefix that no query clause calls."""
        called = {goal_pi(g) for _, goals in self.query_clauses for g in goals}
        return sorted(f"{n}/{a}" for n, a in self.module_preds
                      if n.startswith(("must_", "required_", "permitted_", "prohibited_")) and (n, a) not in called)

    def mapped_queries(self) -> set[tuple[str, int]]:
        return {indicator(h) for h, _ in self.query_clauses}

    def harness_clauses(self, mod: str) -> tuple[list[str], list[str]]:
        inputs = []
        for head, goals in self.input_clauses:
            if goals is None:
                inputs.append(f"input_clause({mod}:{render(head)}).")
            else:
                inputs.append(f"input_clause(({mod}:{render(head)} :- {qualify(goals, 'user')})).")
        queries = [f"{render(head)} :- {qualify(goals, mod)}." for head, goals in self.query_clauses]
        return inputs, queries


def identity_adapter(spec: Spec) -> str:
    lines = ["% identity adapter: the module already speaks the canonical vocabulary"]
    for n, a in sorted(spec.inputs | spec.queries):
        args = ", ".join(f"X{i}" for i in range(a))
        lines.append(f"{n}({args}) :- {n}({args}).")
    return "\n".join(lines) + "\n"


# ----------------------------------------------------------------- running

HARNESS = """\
:- use_module(library(time)).
:- use_module('{module_path}', []).
:- dynamic {dyn_inputs}.
:- dynamic {dyn_queries}.
:- dynamic input_clause/1.
:- discontiguous scenario/3.

{query_clauses}

{input_clauses}

{scenarios}

canonical({canon_list}).

reset_facts :- canonical(L), forall(member(N/A, L), (functor(H, N, A), retractall(user:H))).

mapped((A, B)) :- !, mapped(A), mapped(B).
mapped(G) :- \\+ \\+ clause(user:G, _).

run_query(Id, I, G) :-
    (   mapped(G)
    ->  catch(call_with_time_limit({timeout}, (G -> R = true ; R = false)), E, R = error(E))
    ;   R = unmapped
    ),
    format("RES\\t~w\\t~w\\t~q~n", [Id, I, R]).

run_scenario(Id, Facts, Qs) :-
    reset_facts,
    forall(member(F, Facts), assertz(user:F)),
    forall(member(q(I, G), Qs), run_query(Id, I, G)).

main :-
    forall(input_clause(C),
           catch(assertz(C), E, format("ADAPTER_ERROR\\t~q~n", [E]))),
    forall(scenario(Id, Facts, Qs), run_scenario(Id, Facts, Qs)).
"""


def harness_text(module_path: Path, mod: str, adapter: Adapter, spec: Spec) -> str:
    inputs, queries = adapter.harness_clauses(mod)
    scen = []
    for s in spec.scenarios:
        facts = ", ".join(s["facts"])
        qs = ", ".join(f"q({i}, ({q['goal']}))" for i, q in enumerate(s["queries"]))
        scen.append(f"scenario({s['id']}, [{facts}], [{qs}]).")
    fmt = lambda S: ", ".join(f"{n}/{a}" for n, a in sorted(S))  # noqa: E731
    return HARNESS.format(
        module_path=str(module_path.resolve()).replace("'", "\\'"),
        dyn_inputs=fmt(spec.inputs), dyn_queries=fmt(spec.queries),
        query_clauses="\n".join(queries) or "% no query clauses",
        input_clauses="\n".join(inputs) or "% no input clauses",
        scenarios="\n".join(scen), canon_list="[" + fmt(spec.inputs) + "]",
        timeout=QUERY_TIMEOUT)


def classify(raw: str) -> str:
    if raw in ("true", "false", "unmapped"):
        return raw
    if "time_limit_exceeded" in raw:
        return "timeout"
    return "error"


def run_module(module_path: Path, adapter: Adapter, spec: Spec, mod: str) -> dict:
    with tempfile.TemporaryDirectory() as d:
        h = Path(d) / "harness.pl"
        h.write_text(harness_text(module_path, mod, adapter, spec), encoding="utf-8")
        try:
            proc = subprocess.run(["swipl", "-q", "-g", "main", "-t", "halt", str(h)],
                                  capture_output=True, text=True, timeout=120)
            out, err = proc.stdout, proc.stderr
        except subprocess.TimeoutExpired:
            out, err = "", "harness timeout"
    results: dict[str, dict[int, str]] = defaultdict(dict)
    adapter_errors = []
    for line in out.splitlines():
        if line.startswith("RES\t"):
            _, sid, i, raw = line.split("\t", 3)
            results[sid][int(i)] = classify(raw)
        elif line.startswith("ADAPTER_ERROR\t"):
            adapter_errors.append(line.split("\t", 1)[1][:200])
    return {"results": results, "adapter_errors": adapter_errors,
            "load_errors": err.count("ERROR"), "load_warnings": err.count("Warning:") // 2,
            "stderr": err[-2000:]}


def score(run: dict, adapter: Adapter, spec: Spec) -> dict:
    res = run["results"]
    rows, per_norm = [], defaultdict(lambda: [0, 0])
    tot = {"queries": 0, "correct": 0, "false_positive": 0, "missed": 0, "unanswerable": 0}
    passed = passed_core = n_core = 0
    for s in spec.scenarios:
        got = res.get(s["id"], {})
        ok = True
        qrows = []
        for i, q in enumerate(s["queries"]):
            r = got.get(i, "missing")
            exp = q["expect"]
            tot["queries"] += 1
            if r in ("true", "false"):
                if (r == "true") == exp:
                    tot["correct"] += 1
                    verdict = "correct"
                else:
                    ok = False
                    verdict = "false_positive" if r == "true" else "missed"
                    tot[verdict] += 1
            else:
                ok = False
                verdict = "unanswerable"
                tot["unanswerable"] += 1
            qrows.append({"goal": q["goal"], "expect": exp, "got": r, "verdict": verdict})
        passed += ok
        if not s["interpretive"]:
            n_core += 1
            passed_core += ok
        for n in s["norms"]:
            per_norm[n][0] += ok
            per_norm[n][1] += 1
        rows.append({"id": s["id"], "norms": s["norms"], "interpretive": s["interpretive"],
                     "pass": ok, "queries": qrows})
    n = len(spec.scenarios)
    return {
        "scenarios": n, "passed": passed, "pass_rate": round(passed / n, 3),
        "core_scenarios": n_core, "core_passed": passed_core,
        "core_pass_rate": round(passed_core / n_core, 3) if n_core else None,
        "query_accuracy": round(tot["correct"] / tot["queries"], 3),
        **{k: v for k, v in tot.items() if k != "queries"}, "queries_total": tot["queries"],
        "per_norm": {k: {"passed": v[0], "of": v[1], "rate": round(v[0] / v[1], 3)} for k, v in sorted(per_norm.items())},
        "mapped_queries": sorted(f"{n_}/{a}" for n_, a in adapter.mapped_queries()),
        "adapter_clauses": {"input": len(adapter.input_clauses), "query": len(adapter.query_clauses),
                            "background_facts": adapter.background, "dropped": adapter.violations,
                            "auto_identity": adapter.auto_identity,
                            "unmapped_duties": adapter.unmapped_duties()},
        "adapter_errors": run["adapter_errors"], "load_errors": run["load_errors"],
        "detail": rows,
    }


def outcomes(result: dict) -> dict[tuple[str, int], str]:
    return {(s["id"], i): q["got"] if q["got"] in ("true", "false") else "unanswerable"
            for s in result["detail"] for i, q in enumerate(s["queries"])}


def answer_agreement(a: dict, b: dict) -> float:
    oa, ob = outcomes(a), outcomes(b)
    keys = set(oa) | set(ob)
    return round(sum(oa.get(k) == ob.get(k) for k in keys) / len(keys), 3) if keys else 1.0


# ------------------------------------------------------------- LLM adapters

ADAPTER_PROMPT = """\
You write an ADAPTER: a few Prolog clauses that connect a Prolog module, written by
someone else from a legal text, to a fixed TEST VOCABULARY, so that the module can be
queried with the test's facts WITHOUT changing the module. The adapter is a translation
layer. It must not add any legal knowledge of its own.

You receive the legal text, the test vocabulary (input predicates the tests assert,
query predicates the tests call, and the action terms used inside queries), and the
module.

Write two kinds of clauses and nothing else.

A. INPUT clauses. Head: one of the module's INPUT predicates (declared `:- dynamic`, or
   called but not defined). Body: only test input predicates and =/2.

       documents_system(D, S) :- technical_documentation(S, D).
       opts_for(E, provision(D, annex_iv)) :- opts_for_simplified(E, S), technical_documentation(S, D).

   A ground fact is allowed for an entity the module needs and the tests never supply,
   for example `commission_applies(commission).`

B. QUERY clauses. Head: one of the test query predicates. Body: exactly ONE call to a
   predicate the module DEFINES, plus optional =/2 to reshape arguments.

       permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, technical_documentation(S), _)).
       obligation(_P, draw_up(S), before(entry)) :- required_preparation(before(technical_documentation(S), _)).

Rules, all of them checked mechanically:

1. Map by MEANING AND MODALITY. obligation <- a duty (must_*, required_*, shall).
   permission <- a permission (permitted_*, may). violation and status <- only if the
   module itself derives a breach or a state. Predicates that merely label a purpose or
   a property (objective_*, <adjective>(X), *_applies(X)) are not duties: do not map
   them to obligation.
2. Do not fill gaps. If the module's duty has no bearer, leave the bearer unbound
   (`obligation(_P, ...)`). If the module has nothing for a query predicate or an action
   term, write no clause for it. Never put a test input predicate in a query clause, and
   never use negation, arithmetic, cuts, if-then-else, disjunction or directives.
3. Bind each test argument to the module's OWN term for that thing, as a whole. You may
   strip a wrapper (form_for(F, _) -> F) only when the inner term is what the module
   uses as that thing's name elsewhere. Never pick a sub-term, and never build a term,
   to make two clauses coincide.
4. The third argument of obligation (the deadline) is never queried with a constant.
   Bind it to any term.
5. Cover every module predicate that corresponds to a query action. One clause per
   module predicate is usually enough; write several when the module splits one action
   over several predicates (e.g. one per deadline event).
6. Write an input clause for EVERY module input, including one whose name is identical
   to a test predicate (`sme(E) :- sme(E).`): the module and the tests live in
   different namespaces, and the module sees nothing without the clause. Check the
   argument order when the arity is 2 or more.
7. Canonical action terms carry the SYSTEM (draw_up(S), include_annex_iv(S)), not the
   documentation. When the module's predicate carries the documentation, recover the
   system through the module's own term where it contains it, otherwise leave the
   system unbound.

Output ONLY Prolog clauses. Comments with % are allowed. No markdown fences, no prose.
"""

ADAPTER_USER = """\
=== LEGAL TEXT ===
{text}

=== TEST VOCABULARY ===
{vocab}

=== MODULE ===
{module}
"""

ADAPTER_REPAIR = """\
The adapter was checked mechanically. Problems found (clauses that break a rule will be
dropped):

{violations}

Return the FULL corrected adapter (all clauses, not only the fixed ones). Output only
Prolog clauses.
"""


async def llm_adapter(client: Client, http: httpx.AsyncClient, spec: Spec, text: str,
                      module: Module, label: str, log_path: Path) -> tuple[str, list[dict], bool]:
    """(adapter text, call records, cached) with one repair round if the lint objects."""
    messages = [{"role": "system", "content": ADAPTER_PROMPT},
                {"role": "user", "content": ADAPTER_USER.format(
                    text=text, vocab=spec.vocabulary_text(), module=module.raw)}]
    recs = []
    out, rec = await client.call(http, messages, label=f"adapter:{label}")
    rec.meta = {"kind": "adapter", "label": label, "round": 1}
    append_log(log_path, rec)
    recs.append(rec)
    if not rec.ok:
        return "", recs, rec.cached
    text1 = strip_fences(out)
    a = Adapter(text1, module, spec)
    complaints = [f"- {v}" for v in a.violations]
    unmapped = a.unmapped_duties()
    if unmapped:
        complaints.append("- these module predicates state a duty or a permission but no query clause calls them: "
                          + ", ".join(unmapped) + ". Add a query clause for each one that corresponds to a "
                          "canonical action, or a % comment naming the predicate and why it does not.")
    if not complaints:
        return text1, recs, rec.cached
    messages += [{"role": "assistant", "content": out},
                 {"role": "user", "content": ADAPTER_REPAIR.format(violations="\n".join(complaints))}]
    out2, rec2 = await client.call(http, messages, label=f"adapter:{label}:repair")
    rec2.meta = {"kind": "adapter", "label": label, "round": 2}
    append_log(log_path, rec2)
    recs.append(rec2)
    if not rec2.ok:
        return text1, recs, rec.cached
    text2 = strip_fences(out2)
    b = Adapter(text2, module, spec)
    # keep whichever round yields more surviving clauses; ties go to the repair
    better = text2 if (len(b.input_clauses) + len(b.query_clauses)) >= (len(a.input_clauses) + len(a.query_clauses)) else text1
    return better, recs, rec.cached and rec2.cached


# --------------------------------------------------------------- controls

def controls(spec: Spec) -> bool:
    ok_all = True
    ref = spec.dir / spec.d["reference_module"]
    words = frozenset()
    rm = Module(ref, words)
    ident = Adapter(identity_adapter(spec), rm, spec)
    r = score(run_module(ref, ident, spec, rm.module_name), ident, spec)
    ok = r["passed"] == r["scenarios"] and not ident.violations
    ok_all &= ok
    print(f"  reference + identity adapter     {r['passed']:>3}/{r['scenarios']} passed   "
          f"{'OK' if ok else 'FAIL: ' + ', '.join(s['id'] for s in r['detail'] if not s['pass'])}")
    if ident.violations:
        print("    lint:", ident.violations)

    with tempfile.TemporaryDirectory() as d:
        empty = Path(d) / "empty_control.pl"
        empty.write_text(":- module(empty_control, []).\n", encoding="utf-8")
        em = Module(empty, words)
        ea = Adapter("", em, spec)
        r = score(run_module(empty, ea, spec, "empty_control"), ea, spec)
        ok = r["passed"] == 0 and r["unanswerable"] == r["queries_total"]
        ok_all &= ok
        print(f"  empty module + empty adapter     {r['passed']:>3}/{r['scenarios']} passed, "
              f"{r['unanswerable']}/{r['queries_total']} unanswerable   {'OK' if ok else 'FAIL'}")

        muts = json.loads((spec.dir / "mutations.json").read_text(encoding="utf-8"))
        src = ref.read_text(encoding="utf-8")
        print("  mutants of the reference (each must fail at least one scenario):")
        for m in muts:
            if m["old"] not in src:
                print(f"    {m['name']:<45} PATTERN NOT FOUND")
                ok_all = False
                continue
            mp = Path(d) / "art11_reference.pl"
            mp.write_text(src.replace(m["old"], m["new"], 1), encoding="utf-8")
            mm = Module(mp, words)
            ma = Adapter(identity_adapter(spec), mm, spec)
            r = score(run_module(mp, ma, spec, mm.module_name), ma, spec)
            failed = [s["id"] for s in r["detail"] if not s["pass"]]
            ok = bool(failed)
            ok_all &= ok
            print(f"    {m['name']:<45} fails {len(failed):>2}: {', '.join(failed) if failed else 'NOT CAUGHT'}")
    return ok_all


# ----------------------------------------------------------------- driver

def cost_of(meta_path: Path, cache_dir: Path) -> float | None:
    try:
        key = json.loads(meta_path.read_text()).get("key")
        d = json.loads((cache_dir / f"{key}.json").read_text())
        return float((d.get("usage") or {}).get("cost") or 0.0)
    except (OSError, json.JSONDecodeError, TypeError):
        return None


async def run(args: argparse.Namespace) -> int:
    root = Path(args.dir)
    sdir = root / "scenarios"
    sdir.mkdir(parents=True, exist_ok=True)
    specs = {p.parent.name: Spec(p) for p in sorted(SCEN.glob("*/scenarios.json"))}
    if args.only:
        specs = {k: v for k, v in specs.items() if k in set(args.only.split(","))}
    if not specs:
        print("no scenarios/<text>/scenarios.json found")
        return 1

    if args.controls:
        bad = False
        for tid, spec in specs.items():
            print(f"== controls for {tid} ==")
            bad |= not controls(spec)
        return 1 if bad else 0

    sources = ["hand", "llm"] if args.adapters == "both" else [args.adapters]
    client = log_path = None
    if "llm" in sources and not args.rescore:
        provider, model = ADAPTER_MODELS[args.adapter_model]
        cfg = LLMConfig(provider=provider, model=model, reasoning=args.adapter_reasoning,
                        temperature=0.0, seed=0, concurrency=args.concurrency, num_predict=8192)
        client = Client(cfg, root / "cache")
        log_path = root / "run.jsonl"

    jobs = []
    for tid, spec in specs.items():
        text = (root / "texts" / f"{tid}.txt").read_text(encoding="utf-8")
        words = content_words(text)
        for mdir in sorted((root / tid).glob("*/")):
            model = mdir.name
            if args.models and model not in args.models:
                continue
            for f in sorted(mdir.glob("seed_*.pl")):
                seed = int(f.stem.split("_")[1])
                if args.seeds and seed not in args.seeds:
                    continue
                for src in sources:
                    jobs.append((tid, spec, text, words, model, seed, f, src))
    if args.rescore:
        jobs = [j for j in jobs if j[7] == "llm"]

    sem = asyncio.Semaphore(args.concurrency)
    progress = {"done": 0, "present": 0, "no_adapter": 0, "failed": 0}

    async def one(http, tid, spec, text, words, model, seed, f, src):
        dest_dir = sdir / tid / model
        dest_dir.mkdir(parents=True, exist_ok=True)
        dest = dest_dir / f"seed_{seed}.{src}.json"
        module = Module(f, words)
        if module.module_name is None:
            progress["failed"] += 1
            print(f"  {tid:<13} {model:<13} seed {seed} {src:<4}  no module directive, skipped", file=sys.stderr)
            return
        adapter_text, meta = None, {}
        if src == "hand":
            hp = SCEN / tid / "adapters_hand" / model / f"seed_{seed}.pl"
            if not hp.exists():
                progress["no_adapter"] += 1
                return
            adapter_text = hp.read_text(encoding="utf-8")
            meta = {"adapter_source": "hand", "adapter_path": str(hp)}
            if dest.exists() and not args.force and json.loads(dest.read_text()).get("adapter_text") == adapter_text:
                progress["present"] += 1
                return
        elif args.rescore:
            apath = dest_dir / f"seed_{seed}.llm.adapter.pl"
            if not apath.exists() or not dest.exists():
                progress["no_adapter"] += 1
                return
            adapter_text = apath.read_text(encoding="utf-8")
            prev = json.loads(dest.read_text())
            meta = {k: v for k, v in prev.items() if k.startswith("adapter_") and k not in ("adapter_text", "adapter_clauses", "adapter_errors")}
        else:
            apath = dest_dir / f"seed_{seed}.llm.adapter.pl"
            key = cache_key(client.cfg, [{"role": "system", "content": ADAPTER_PROMPT},
                                         {"role": "user", "content": ADAPTER_USER.format(
                                             text=text, vocab=spec.vocabulary_text(), module=module.raw)}])
            if dest.exists() and apath.exists() and not args.force and json.loads(dest.read_text()).get("adapter_key") == key:
                progress["present"] += 1
                return
            async with sem:
                adapter_text, recs, cached = await llm_adapter(client, http, spec, text, module, f"{tid}:{model}:s{seed}", log_path)
            if not adapter_text and not recs[-1].ok:
                progress["failed"] += 1
                print(f"  FAILED adapter {tid} {model} seed {seed}: {recs[-1].error}", file=sys.stderr)
                return
            apath.write_text(adapter_text + "\n", encoding="utf-8")
            meta = {"adapter_source": "llm", "adapter_model": client.cfg.model, "adapter_reasoning": client.cfg.reasoning,
                    "adapter_key": key, "adapter_calls": len(recs), "adapter_cached": cached,
                    "adapter_tokens": sum((r.completion_tokens or 0) for r in recs)}
        adapter = Adapter(adapter_text, module, spec)
        r = score(run_module(f, adapter, spec, module.module_name), adapter, spec)
        r.update(meta)
        r.update({"text": tid, "model": model, "seed": seed, "module": str(f), "adapter_text": adapter_text,
                  "cost": cost_of(f.with_suffix(".meta.json"), root / "cache")})
        dest.write_text(json.dumps(r, indent=1), encoding="utf-8")
        progress["done"] += 1
        print(f"  {tid:<13} {model:<13} seed {seed} {src:<4}  pass {r['passed']:>2}/{r['scenarios']}  "
              f"acc {r['query_accuracy']:.2f}  fp {r['false_positive']} miss {r['missed']} "
              f"unans {r['unanswerable']}  dropped {len(adapter.violations)}")

    async with httpx.AsyncClient() as http:
        await asyncio.gather(*[one(http, *j) for j in jobs])
    print(f"\ndone={progress['done']} already-present={progress['present']} "
          f"no-hand-adapter={progress['no_adapter']} failed={progress['failed']}")
    summarise(root, specs)
    return 1 if progress["failed"] else 0


# ---------------------------------------------------------------- summary

def mean(xs):
    xs = [x for x in xs if x is not None]
    return round(sum(xs) / len(xs), 3) if xs else None


def summarise(root: Path, specs: dict[str, Spec]) -> None:
    sdir = root / "scenarios"
    rows = [json.loads(f.read_text()) for f in sorted(sdir.glob("*/*/seed_*.json"))]
    if not rows:
        print("no scenario results")
        return
    summary = {}
    for src in sorted({r["adapter_source"] for r in rows}):
        by = defaultdict(list)
        for r in rows:
            if r["adapter_source"] == src:
                by[(r["text"], r["model"])].append(r)
        table = {}
        for (tid, model), rs in sorted(by.items()):
            rs.sort(key=lambda r: r["seed"])
            rates = [r["pass_rate"] for r in rs]
            pairs = [answer_agreement(a, b) for a, b in combinations(rs, 2)]
            cost = [r["cost"] for r in rs if r.get("cost") is not None]
            passed = sum(r["passed"] for r in rs)
            table[f"{tid}/{model}"] = {
                "outputs": len(rs), "seeds": [r["seed"] for r in rs],
                "pass_rate_mean": mean(rates), "pass_rate_min": min(rates), "pass_rate_max": max(rates),
                "pass_rate_std": round(statistics.pstdev(rates), 3) if len(rates) > 1 else 0.0,
                "core_pass_rate_mean": mean([r["core_pass_rate"] for r in rs]),
                "query_accuracy_mean": mean([r["query_accuracy"] for r in rs]),
                "false_positive": sum(r["false_positive"] for r in rs), "missed": sum(r["missed"] for r in rs),
                "unanswerable": sum(r["unanswerable"] for r in rs),
                "queries_total": sum(r["queries_total"] for r in rs),
                "answer_agreement_within": mean(pairs),
                "adapter_dropped": sum(len(r["adapter_clauses"]["dropped"]) for r in rs),
                "cost_total": round(sum(cost), 4) if cost else None,
                "cost_per_passed_scenario": round(sum(cost) / passed, 4) if cost and passed else None,
                "per_norm": {n: mean([r["per_norm"].get(n, {}).get("rate") for r in rs]) for n in specs[tid].norms},
            }
        # across models: answer agreement, seed 1 vs seed 1 and all pairs
        across = {}
        for tid in specs:
            ms = sorted({m for (t, m) in by if t == tid})
            for m1, m2 in combinations(ms, 2):
                vals = [answer_agreement(a, b) for a in by[(tid, m1)] for b in by[(tid, m2)]]
                across[f"{tid}/{m1}~{m2}"] = mean(vals)
        summary[src] = {"by_text_model": table, "answer_agreement_across": across}
    (sdir / "summary.json").write_text(json.dumps(summary, indent=1), encoding="utf-8")

    for src, s in summary.items():
        print(f"\n== scenario accuracy, adapters: {src} ==")
        print(f"  {'text/model':<28}{'n':>3}{'pass':>7}{'min':>6}{'max':>6}{'std':>6}{'core':>6}{'q-acc':>7}"
              f"{'fp':>4}{'miss':>5}{'unans':>6}{'agree':>7}{'drop':>5}{'$/pass':>8}")
        for k, v in s["by_text_model"].items():
            cp = f"{v['cost_per_passed_scenario']:.3f}" if v["cost_per_passed_scenario"] is not None else "-"
            ag = f"{v['answer_agreement_within']:.2f}" if v["answer_agreement_within"] is not None else "-"
            print(f"  {k:<28}{v['outputs']:>3}{v['pass_rate_mean']:>7.2f}{v['pass_rate_min']:>6.2f}{v['pass_rate_max']:>6.2f}"
                  f"{v['pass_rate_std']:>6.2f}{v['core_pass_rate_mean']:>6.2f}{v['query_accuracy_mean']:>7.2f}"
                  f"{v['false_positive']:>4}{v['missed']:>5}{v['unanswerable']:>6}{ag:>7}{v['adapter_dropped']:>5}{cp:>8}")
        print("  pass = mean scenario pass rate over seeds; core = without interpretive scenarios; fp/miss/unans summed over")
        print("  all queries of all seeds; agree = within-model answer agreement over seed pairs; drop = adapter clauses dropped by lint")
    for tid, spec in specs.items():
        write_review(sdir, tid, spec, [r for r in rows if r["text"] == tid])
    print(f"\nwrote {sdir / 'summary.json'} and {sdir}/<text>.md")


def write_review(sdir: Path, tid: str, spec: Spec, rows: list[dict]) -> None:
    norms = spec.norms
    lines = [f"# scenario results: {tid}", "",
             f"{len(spec.scenarios)} scenarios ({sum(s['interpretive'] for s in spec.scenarios)} interpretive), "
             f"{spec.n_queries()} queries. Cell = scenarios passed / scenarios tagged with the norm.", ""]
    for src in sorted({r["adapter_source"] for r in rows}):
        lines += [f"## adapters: {src}", "", "| output | pass | core | fp | miss | unans | " + " | ".join(norms) + " |",
                  "|---|---|---|---|---|---|" + "---|" * len(norms)]
        for r in sorted((r for r in rows if r["adapter_source"] == src), key=lambda r: (r["model"], r["seed"])):
            cells = [f"{r['per_norm'][n]['passed']}/{r['per_norm'][n]['of']}" if n in r["per_norm"] else "-" for n in norms]
            lines.append(f"| {r['model']}/seed_{r['seed']} | {r['passed']}/{r['scenarios']} | {r['core_passed']}/{r['core_scenarios']} | "
                         f"{r['false_positive']} | {r['missed']} | {r['unanswerable']} | " + " | ".join(cells) + " |")
        lines.append("")
    lines += ["## scenarios", "", "| id | norms | interpretive | queries |", "|---|---|---|---|"]
    for s in spec.scenarios:
        lines.append(f"| {s['id']} | {', '.join(s['norms'])} | {'yes' if s['interpretive'] else ''} | "
                     + "; ".join(f"`{q['goal']}` = {str(q['expect']).lower()}" for q in s["queries"]) + " |")
    (sdir / f"{tid}.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description="Scenario accuracy for paragraph-study outputs.")
    p.add_argument("--dir", default=str(OUT))
    p.add_argument("--only", default="", help="comma-separated text ids")
    p.add_argument("--models", nargs="*", default=None)
    p.add_argument("--seeds", nargs="*", type=int, default=None)
    p.add_argument("--adapters", choices=("hand", "llm", "both"), default="hand")
    p.add_argument("--adapter-model", choices=sorted(ADAPTER_MODELS), default="sonnet")
    p.add_argument("--adapter-reasoning", default="medium")
    p.add_argument("--concurrency", type=int, default=4)
    p.add_argument("--force", action="store_true", help="re-run even if a result with the same adapter exists")
    p.add_argument("--rescore", action="store_true",
                   help="with --adapters llm: re-run the stored adapters through the harness, no calls, no key needed")
    p.add_argument("--controls", action="store_true", help="run the reference, empty and mutant controls and exit")
    p.add_argument("--summary-only", action="store_true")
    return p


if __name__ == "__main__":
    a = build_parser().parse_args()
    if a.summary_only:
        specs = {p.parent.name: Spec(p) for p in sorted(SCEN.glob("*/scenarios.json"))}
        summarise(Path(a.dir), specs)
        sys.exit(0)
    sys.exit(asyncio.run(run(a)))
