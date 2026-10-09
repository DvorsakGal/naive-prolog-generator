# Legal act → Prolog

A pipeline that turns Regulation (EU) 2024/1689 (the AI Act) into one Prolog program,
`ai_act.pl`, using an LLM for exactly three things and plain deterministic code for
everything else.

Requirements and intent: [`requirements-overview.md`](requirements-overview.md).
Design rationale, including what was rejected and why: [`v4_plan.md`](v4_plan.md).
Results of the first full-act run, and the mistakes in it:
[`v4_results.md`](v4_results.md).

---

## The one-paragraph version

The definitions article is read by **one** LLM call, which produces the **predicate
vocabulary**. That vocabulary is then **frozen**. Every other article and annex is read
by **one LLM call each**, which receives the frozen vocabulary verbatim plus one slice
of the act, and writes Prolog clauses in that vocabulary. Everything else — finding the
articles, cutting the text, assembling the file, checking it — is ordinary code with no
LLM involved.

Freezing the vocabulary is the whole trick. It is why clauses written by 125 calls that
cannot see each other still connect.

---

## The pipeline

```
         INPUT: units/celex:32024R1689%2Foj.xml  -- the whole act, 628k chars,
                with human-annotated <ref id="..."/> cross-references intact
                                      │
                                      ▼
                    ┌──────────────────────────────────────┐
                    │ PHASE 0   structure.py               │
                    │ ── deterministic ──                  │
                    │ Monotone scan for article and annex  │
                    │ headings → 113 articles + 13 annexes │
                    │ Validates every slice against the    │
                    │ corpus's own unit file (99 checks)   │
                    └───────┬──────────────────────┬───────┘
                            │                      │
            art_3, 17,200 chars,            the other 125 units,
            68 definitions                  361,573 chars
                            │                      │
                            ▼                      │
            ┌──────────────────────────────┐       │
            │ PHASE A   signature.py       │       │
            │ ★ LLM CALL #1 ★              │       │
            │ "Read these 68 definitions.  │       │
            │  Declare the predicates."    │       │
            └──────────┬───────────────────┘       │
                       │                           │
                       ▼                           │
              ┌─────────────────────┐              │
              │   signature.pl      │ ◄── FROZEN. Hashed. Phase B refuses
              │   ~70 predicates    │     to run if it changes.
              └──────────┬──────────┘              │
                         │                         │
                         └───────────┬─────────────┘
                                     ▼
                    ┌──────────────────────────────────────┐
                    │ PHASE B   rules.py                   │
                    │ ★ 125 LLM CALLS, one per unit ★      │
                    │ input = frozen vocabulary            │
                    │       + one article or annex         │
                    │       + its chapter/section context  │
                    │ output = Prolog clauses              │
                    └──────────────┬───────────────────────┘
                                   │ out/rules/*.pl
                                   ▼
                    ┌──────────────────────────────────────┐
                    │ PHASE C   assemble.py                │
                    │ ── deterministic ──                  │
                    │ concatenate, dedupe, rewrite decls,  │
                    │ add :- discontiguous and :- dynamic  │
                    └──────────────┬───────────────────────┘
                                   │ out/ai_act.pl
                                   ▼
                    ┌──────────────────────────────────────┐
                    │ PHASE D   lint.py                    │
                    │ ── deterministic ──  8 checks        │
                    └──────────────┬───────────────────────┘
                                   ▼
                            out/report.json

   ── then, optionally, the second pass ──

  out/rules/*.pl ──► PHASE B2  reconcile.py  ★ ~4 LLM CALLS ★
                     mechanical pass proposes candidate pairs;
                     batched calls give one verdict per pair;
                     surviving names chosen in code by usage count
                               │
                               ▼
                     signature_2.pl  (canonical names + alias/2 facts)
                               │
                               ▼
                     Phase B again, all 125 calls, against
                     signature.pl + signature_2.pl → out/rules_2/
                               │
                               ▼
                     out/ai_act_2.pl, out/report_2.json

  ★ = the only stochastic steps. Everything else is ordinary code.
```

---

## Why the work list comes from the act, not from `units/`

`units/` is a **reference closure**: a unit file exists for a provision only if
something cited it. Earlier versions used it as the index of what the act contains,
which it is not:

- Only **87 of 113 articles** exist as article-level units. Article 113 — which governs
  *when every other obligation in the act applies* — has no unit, because a commencement
  provision is structurally terminal: nothing needs to cite it.
- Articles and their chapter containers both appear in the closure, overlapping.
  Partitioning them needed span-containment arithmetic and a coverage threshold, and
  the articles that happened to have no unit were silently dropped along the way.

So `structure.py` scans the act's own text instead. The scan is **monotone**: the body
contains 123 matches for `Article N`, but a match counts as a heading only if its number
is the one expected next, so all 113 headings are recovered in order and every in-text
cross-reference (`"pursuant to Article 16(1) of that Regulation"`) is rejected with no
special cases.

That is verified rather than assumed. Where the corpus does carry a unit for an id, the
slice is compared against it:

```
slices checked against a unit file   99
match byte-for-byte                  99
```

All 87 articles and 12 of 13 annexes (anx_8 has no top-level unit). The pipeline refuses
to run if any of them stops matching, so a corpus change is loud instead of silent.

The closure keeps two jobs, both of them *checks* on the pipeline rather than inputs to
it: this validation, and the `<ref>` ground truth the reference score is measured
against.

**Annexes are included** because they are load-bearing, not appendices. Article 6's
whole high-risk classification is defined by reference to Annex III, and a run without
it produced invented placeholder predicates (`annex_3_ai_system`) for content the model
was never shown.

---

## Why the vocabulary is frozen

Every Phase B call receives `signature.pl` verbatim at the top of its prompt. That means:

- The call for Article 6 and the call for Article 9 both see `high_risk_ai_system/1`, so
  both use that name, and their clauses can refer to each other's conclusions.
- No call depends on any *other* call's output. They run in any order, all at once, and
  the result is the same — which is what makes 125 calls affordable to run and free to
  re-run.
- If someone edits `signature.pl`, its hash no longer matches `signature.meta.json` and
  **Phase B refuses to run**, because clauses written against the old vocabulary cannot
  be mixed with a new one.

Without freezing, one call invents `real_time/1` and another `realtime_system/1`, and a
rule using the first never matches a fact written with the second. It would not error.
It would just never be true.

---

## The second pass, and why it is not a growing context

Freezing solves agreement on everything the definitions article has a word for. It does
nothing for what each provision has to introduce itself, and that is where names drift:
one thing acquiring four names (`required_compliance`,
`required_compliance_with_requirements`, `required_ensuring_compliance`,
`required_accessibility_compliance`) across five articles.

The tempting fix is to let each call see the clauses written so far. That was measured
and rejected: it makes the run strictly sequential, multiplies prompt tokens by ~7.5,
destroys the response cache, and leaves no control arm to attribute a failure to.
[`v4_plan.md`](v4_plan.md) has the numbers.

The second tempting fix is to merge similar names automatically. Also rejected:
`required_quality_management_system` and `required_risk_management_system` are ~88%
similar as strings and are *different legal obligations*, while
`must_publish_annual_report` and `must_submit_annual_report` are 0.67 token overlap and
*are* the same act. No threshold separates those, so an automatic merge either corrupts
the program silently or misses what it was built for.

It does not follow that the model should also *find* the pairs. The first version asked
it to, handing over all 1,469 invented predicates in one call, and it returned a single
comment line and no Prolog — an open-ended search over 1,469 names has a costless null
answer. See [`v4_results.md` §3](v4_results.md).

So reconciliation is split by what each side is good at:

1. **Propose** (mechanical) — every pair of invented predicates with the same arity, the
   same modality, and either an identical gloss or ≥0.6 token overlap. Cheap, exhaustive,
   high recall, no judgement. 311 pairs on the first run.
2. **Adjudicate** (the LLM, batched) — one *forced* verdict per pair, `same` or
   `different`. A pair with no verdict is reported as unanswered rather than silently
   read as "different", so a non-answer cannot pass as a result.
3. **Canonicalise** (mechanical) — union the `same` verdicts into groups with union-find,
   then pick each group's surviving name by usage count. "Prefer the name most provisions
   already use" needs no judgement, and leaving it to the model only adds a way for two
   batches to disagree about one group.

The output is frozen and hashed exactly like Phase A's, so every pass-2 call is still a
pure function of `(slice, frozen vocabulary)`. Both passes stay on disk, and `--both`
prints them side by side.

**Read that comparison against the noise floor.** Two runs with identical inputs differ
by ±14 on shared predicates and ±58 on alias candidates ([`v4_results.md`
§4](v4_results.md)), so a small improvement is not evidence of one.

---

## Where your data goes

Most declared predicates have **no clauses**, and that is deliberate. `real_time/1` and
`biometric_identification/1` cannot be derived from anything: they are questions about
the real world, and nothing in the legal text can answer them. They are the program's
**input slots**. You supply the facts:

```prolog
ai_system(cam_net_01).
remote(cam_net_01).
real_time(cam_net_01).
biometric_identification(cam_net_01).
objective_localise_suspect(cam_net_01).
```

Assembly marks every one of them `:- dynamic`, so an unasserted fact comes back **false**
rather than raising `Unknown procedure`. The list is printed at the top of `ai_act.pl`.

Then query:

```bash
swipl out/ai_act.pl
?- prohibited_ai_system(S).
?- provenance(prohibited_ai_system/1, Unit).     % which provision said so
?- declared(real_time/1, Gloss, Source).         % what the vocabulary means
```

---

## The nine checks

| # | check | question it answers |
|---|---|---|
| 1 | **coverage** | Did every one of the 125 work units produce a rule file? Does the slicer still agree with the corpus? |
| 2 | **syntax** | Does `swipl` load the file? |
| 3 | **link integrity** | Does every goal in every rule body resolve to a clause or a declared input slot? |
| 4 | **discrimination** | Does a rule body actually *test* anything, or does it only restate the provision's scope? |
| 5 | **vacuous negation** | Is any `\+` negating something nothing defines? |
| 6 | **arity collisions** | Is one name used at two arities? |
| 7 | **provenance** | Can every rule head be traced back to a provision? |
| 8 | **reference graph** | Do the emitted `references/2` facts match the corpus's `<ref>` markup? |
| 9 | **namespace** | Is the invented vocabulary shared across provisions, or did each call invent its own? |

Two of these exist because the others are blind to the thing they measure, and both
blindnesses cost a run:

**Coverage (1)** is first because every other number in the report describes only what
was produced. A program assembled from 116 of 125 provisions can report link integrity
1.0, and has.

**Discrimination (4)** catches rules like

```prolog
required_testing_for_risk_management(P, S) :- provider(P), high_risk_ai_system(S).
```

which loads cleanly, resolves every goal, carries provenance, uses the frozen vocabulary
correctly — and says nothing, because it is true of every provider and every high-risk
system. It restates Article 9's *scope* rather than the test Article 9 imposes. The check
flags a body only when it is a plain conjunction, every goal is unary, no goal introduces
a new variable, and **each head variable appears in at most one goal** — which is what
separates the rule above from a real definition like

```prolog
real_time_remote_biometric_identification(S) :-
    biometric_identification_system(S), remote(S), real_time(S).
```

where three conditions are conjoined on one variable. It reports a lower bound: what it
flags is weak by construction, and what it does not flag may still be weak.

### The negation trap

`\+ Goal` means **"Goal cannot be proven from what is written here"** — *not* "Goal is
false". If a call writes

```prolog
prohibited_ai_system(S) :- real_time_remote_biometric_identification(S), \+ permitted_use(S).
```

and never defines `permitted_use`, then `\+ permitted_use(S)` is always true, so **every**
system comes out prohibited — including ones the Regulation expressly permits. And the
query answers a confident `true`, not "unknown".

Two things guard against it: the prompt permits `\+` only over a predicate the same call
also defines (which is why whole articles are the unit of work — a prohibition and its
exceptions must be in one call), and check 5 counts the cases mechanically.

---

## Running it

```bash
./run.sh                      # pass 1: 1 + 125 LLM calls, concurrency 3
./run.sh --only art_5,anx_3   # a subset, for trying a prompt change cheaply
./run.sh --both               # pass 1, reconcile, pass 2, and compare them
./run.sh --pass 2             # reconcile + pass 2 only (pass 1 must already exist)
./run.sh --no-annexes         # 112 articles, no annexes
FORCE=1 ./run.sh              # ignore cached responses and regenerate
```

Env overrides: `OUT`, `UNITS`, `MODEL`, `CONCURRENCY`.

Each phase also runs on its own, which is how to iterate:

```bash
venv/bin/python src/structure.py --verbose        # the work list; no LLM, no cost
venv/bin/python src/signature.py --out out
venv/bin/python src/rules.py     --out out --pass 1 --only art_9
venv/bin/python src/reconcile.py --out out
venv/bin/python src/assemble.py  --out out --pass 1
venv/bin/python src/lint.py      --out out --pass 1
```

### Cost and determinism

Responses are cached by `sha256(model identity + full prompt text)`, so a cached key is
never re-called: re-running an unchanged pipeline reproduces the previous run exactly,
from disk, and changing one word of a prompt re-runs only the calls that word reaches.
That is reproducibility of a *recorded* run, not of a fresh one — temperature 0 reduces
variation but does not guarantee byte-identical responses.

A completion is capped at `num_predict` (16,384 tokens; a previous run looped to 86,890
on one article and cost 225 s unnoticed). A call that hits the cap is reported **failed**
rather than written out, because a truncated completion ends mid-clause.

---

## File map

| file | phase | LLM? | what it does |
|---|---|---|---|
| `src/structure.py` | 0 | no | the work list, cut from the act's own headings; validates itself against the corpus |
| `src/prompts.py` | A, B, B2 | — | **the three prompts — this is the method** |
| `src/signature.py` | A | **yes** | builds and freezes the vocabulary; also owns the invented-predicate inventory |
| `src/rules.py` | B | **yes** | one call per article or annex, either pass |
| `src/reconcile.py` | B2 | **yes** | proposes candidate pairs, adjudicates them in batches, canonicalises in code |
| `src/assemble.py` | C | no | builds `ai_act.pl` |
| `src/lint.py` | D | no | the nine checks |
| `src/prolog.py` | C, D | — | quote-aware Prolog source handling, shared |
| `src/llm.py` | A, B, B2 | — | HTTP, retries, response cache, generation cap |

| output | what it is |
|---|---|
| `out/signature.pl` | the frozen vocabulary — **read this first** |
| `out/signature_2.pl` | the reconciled canonical names, with `alias/2` facts |
| `out/rules/*.pl` | one file per article or annex (pass 1); `rules_2/` for pass 2 |
| `out/ai_act.pl` | the assembled program; `ai_act_2.pl` for pass 2 |
| `out/report.json` | the nine checks; `report_2.json` for pass 2 |
| `out/run.jsonl` | per-call log: tokens, timing, hashes, truncation |
| `out/cache/` | raw LLM responses, content-addressed by prompt hash |
