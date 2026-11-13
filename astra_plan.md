# Astra baseline and prompt optimisation: plan

Follows `LLM_prolog_generation.pdf` (2026-11-03). Three stages, in the order the report
sets: (1) turn the proposed metrics into code, (2) widen the Astra sample on the same
five texts and read it, (3) only then change the prompt, one change at a time against
the frozen metric set. Nothing in stage 3 starts before stages 1 and 2 are done, because
without a scenario suite a prompt change can only be judged by eye, and the report shows
how far two LLM judges disagree.

## Where things stand (2026-11-06)

- 5 texts x 7 models x 3 seeds in `out_paragraphs/`, plus `astra-medium` on art_11 only.
- `paragraph_metrics.py`: load check, module/export check, counts, naming standards,
  crude word coverage, Jaccard, Z3 consensus. `paragraph_judge.py`: sentence-level
  coverage and agreement, two judges, 50% label agreement between them.
- Astra spend so far: 18 calls, $1.07, about $0.06 per call at minimal reasoning.
- The report's qualitative findings for art_11(1): no breach detection, "before" not a
  deadline, no duty-bearer (Opus excepted), start-up/SME misread, "this Section" read as
  Chapter 3, no update trigger, form identity only at medium reasoning.

Most of those findings are statements about what a query would return. That is what
makes a scenario suite the right first metric: it turns the report's list into tests.

## Stage 1: metrics

### 1a. Gate pass rate (deterministic, extend `paragraph_metrics.py`)

A module passes the gate when all of these hold:

- loads with zero errors and zero warnings (already measured);
- every exported predicate has a clause; every called predicate is defined or declared
  dynamic (use `check:list_undefined/0` after consult);
- no SWI extensions or library calls (`aggregate_all`, `format`, `assert`, string
  builtins; reuse the list in `lint.py`);
- every exported predicate called with fresh variables terminates inside a time limit
  (1 s) with an empty fact base. Harness-side only; the module stays pure.
- naming standards extended to atoms and functors, not only predicate names. Astra
  writes `article_11(1)` and `chp_3` inside terms; the current regex only sees heads.

Output: one boolean per module plus the reason list, and the gate pass rate per model,
per text, per prompt version.

### 1b. Scenario suite (the main metric)

Layout:

    scenarios/<text_id>/vocabulary.pl    canonical world predicates for this text, with
                                         one comment line each (the "input contract")
    scenarios/<text_id>/scenarios.json   15-25 scenarios: id, norm tags, facts, queries
                                         with expected answers
    src/scenario_run.py                  adapter generation, run under swipl, scoring
    out_paragraphs/scenarios/<text>/<model>/seed_<n>.json   per-output results

A scenario is a small fact base in the canonical vocabulary plus queries with expected
answers (true / false / a set of bindings). Each scenario is tagged with the norm(s) it
exercises, so accuracy is reported per norm and overall. For art_11(1) the norms are:
draw_up_before_entry, keep_up_to_date, demonstrate_compliance, provide_information,
annex_iv_minimum, sme_simplified_permission, commission_form, sme_must_use_form,
notified_body_accepts_form. Each norm gets at least one "met" scenario, one "breached"
scenario and one edge case (start-up that is not an SME; documentation drawn up after
placing on market; SME that does not opt in).

Authoring: draft with a frontier model from the text and the report's appendix D
template, then review every scenario by hand. The 19 scenarios Opus produced for the
qualitative work should be the starting point if they were saved. Order of authoring:
art_11_par_1, art_50_par_2, art_49_par_4. Recitals state purposes, not rules; give them
at most a handful of scenarios or none, and lean on the gate and the judge for them.

Bridging a module to the scenarios without renaming it. Two routes, both kept:

1. Adapter per output (needed for the naive prompt, which has no contract). A small
   Prolog file written by an LLM (Sonnet, cached) that defines the module's dynamic
   inputs in terms of the canonical facts and maps each canonical query predicate to
   the module's exports. The adapter is linted so it cannot do the module's job for it:
   - a clause whose head is a module input may use only canonical facts in its body,
     no negation, no arithmetic;
   - a clause whose head is a canonical query predicate must be a single call to one
     module export, with term reshaping only.
   If the adapter cannot be written under those rules, the output is scored
   "unadaptable", which is itself a finding about usability.
2. Input contract in the prompt (stage 3 variant). The vocabulary file is appended to
   the prompt, so no adapter is needed. This is a prompt change and is evaluated as one.

Controls, run once before trusting any number: the appendix D template through the
adapter route must score near 1.0; an empty module must score 0 with all queries
"unanswerable"; a module with one flipped modality must lose exactly the queries of
that norm.

Scores per output: accuracy overall and per norm; split wrong answers into false
breach (says violated, is not) and missed breach (says met, is violated); share
unanswerable; adapter needed yes/no.

### 1c. Answer-set agreement and seed stability (free once 1b exists)

- Answer-set agreement: Jaccard over the set of (scenario, query, answer) triples for
  two outputs. Names never enter it. Reported within model (seed pairs) and across.
- Seed stability: standard deviation and min/max of scenario accuracy over seeds, per
  text and model. With 10 seeds this is a number worth reporting; with 3 it is not.

### 1d. Judge calibration (`src/judge_calibration.py`)

Settle whether the judge numbers in the report mean anything before they appear in the
next one. Two probes over a sample of existing modules (say 20, Astra and Opus heavy):

- Specificity: a copy with every predicate renamed to a synonym (synonym map generated
  once, verified to be a pure renaming by inverting it and diffing normalised clauses).
  Judge should say "same" with agreement 1.0.
- Sensitivity: one injected change per copy, from a fixed operator set: drop a clause,
  flip must to permitted, delete one body condition, swap the actor argument. Judge
  should say "different" or at least flag `agree: no` on the affected sentence.

Report sensitivity and specificity per judge and reasoning level. Pick one judge on
that basis and keep it for the rest of the work. About 50 calls per judge.

### 1e. Cost

`costs.py` already has the ledger. Add cost per correct scenario answer and cost per
gate-passing output to the per-model table once 1b runs.

## Stage 2: the Astra sample

Same prompt, same texts, same settings as the study. Only the sample changes.

| arm | seeds | new calls | est. cost |
|---|---|---|---|
| astra, minimal | 4-10 on all 5 texts | 35 | ~$2 |
| astra-medium | 1-10 on all 5 texts (art_11 1-3 exist) | 47 | ~$6-8 |
| adapters (Sonnet) | one per new output | ~82 | ~$1 |

Both reasoning levels, because the report's one clear medium-vs-minimal effect (form
identity) was seen on three outputs of one text. Ten seeds on five texts decides whether
it is real, and which level becomes the frozen baseline for stage 3. After stage 2 the
level is fixed and not revisited during prompt work.

What to read in the result, in this order:

1. Gate pass rate and scenario accuracy per norm, both levels, with the seed spread.
2. The failure checklist from the report, now as scenario outcomes: which norms fail on
   every seed (prompt problem), which fail on some seeds (stability problem), which
   never fail (done). The split tells stage 3 what to change first.
3. Answer-set agreement within Astra versus the judge's agreement, on the same pairs.
   If they track each other the judge can be dropped from routine use.
4. A hand read of five outputs per text, looking only for failure kinds the scenarios
   do not catch. Anything found becomes a new scenario before stage 3 begins.

Write `astra_results.md`, short, same shape as `consensus_results.md`. The scenario
suite is frozen after this; stage 3 may add scenarios only for behaviour it introduces.

## Stage 3: prompt changes, one at a time

Mechanics:

- `paragraph_prompt.py` becomes a registry of versions (`v1` is the current prompt,
  verbatim). `paragraph_study.py --prompt v2 --out out_paragraphs_v2` with a shared
  cache directory; the prompt is already in the cache key, so only new text re-runs.
- Each variant changes one thing, states which norms it targets, and runs 5 texts x 5
  seeds at the frozen level (25 calls, $2-4). A change is kept when the targeted norms
  improve, no other norm regresses beyond the seed spread, gate pass rate holds, and
  seed stability does not fall. Kept changes compose into the next version.
- Hold-out: before the first variant, draw three new article paragraphs with a second
  `DRAW_SEED`, author scenarios for them, and run nothing on them until the end. The
  final prompt is scored on them once. This is the only guard against tuning the prompt
  to five texts.

Candidate changes, in the order the report's findings suggest:

1. Ask for the obligation / fulfilment / violation structure explicitly: a deontic layer
   (`obligation(Bearer, Action, Deadline)`, `violation(Bearer, Action)`) derived from
   world events, as in appendix D. The report's strongest claim is that no setting
   produced this unprompted.
2. Deadlines: "before X" is a deadline over an event, not a label. Introduce an event
   input (`happens(Event, Time)`) and the comparison that makes a breach derivable.
3. Duty-bearer: every obligation names who bears it, linked to the object it is about.
4. One term per referenced object: a thing mentioned in several sentences (the form) is
   the same term in every clause.
5. Unresolved references ("this Section", "the requirements") become declared inputs or
   placeholder atoms, never guesses.
6. The input contract (vocabulary in the prompt). Largest change, closest to the frozen
   vocabulary pipeline; tested last and on its own.

Expect some of these to trade coverage for operability, which the report already saw.
The scenario split (false breach vs missed breach) is what makes that trade visible.

## Stage 1 as built (2026-11-10)

| piece | file | status |
|---|---|---|
| gate (1a) | `src/paragraph_gate.py` | done, run on all 108 outputs |
| scenario suite art_11 (1b) | `scenarios/art_11_par_1/` | 26 scenarios, controls pass |
| scenario runner + adapters (1b) | `src/scenario_run.py` | done; hand adapters for the 9 Astra/Opus outputs run; LLM adapters need the API key |
| answer agreement, seed stability, cost (1c, 1e) | in `scenario_run.py` summary | done |
| judge calibration (1d) | `src/judge_calibration.py` | built and dry-run; the judge calls need the API key |
| sentence splitter | `src/paragraph_judge.py` | fixed: art_11 is 7 sentences, the other texts unchanged |

How to run, in order (all from the repo root, `OPENROUTER_API_KEY` exported where a call is made):

```
venv/bin/python src/paragraph_gate.py                       # gate.json, no calls
venv/bin/python src/scenario_run.py --controls               # must print OK for all three controls
venv/bin/python src/scenario_run.py --adapters hand          # the 9 hand-adapted outputs, no calls
venv/bin/python src/scenario_run.py --adapters llm           # LLM adapters for every output of a text with a suite (~$1-3)
venv/bin/python src/scenario_run.py --adapters llm --rescore --force   # re-run stored adapters, no calls
venv/bin/python src/scenario_run.py --summary-only
venv/bin/python src/judge_calibration.py --dry-run           # builds the 38 probes, no calls
venv/bin/python src/judge_calibration.py --judge sonnet      # ~40 calls, then --judge gpt for the second judge
venv/bin/python src/paragraph_judge.py --only art_11_par_1   # re-judge art_11 with 7 sentences (cache keys changed)
```

How to read the results:

- `out_paragraphs/gate.json` and the printed table: gate pass rate per model, and per
  model x text. The `posref` column counts outputs that name a position of the text
  inside a term (`article_11(1)`, `chp_3`), which is a guess the prompt forbids.
- `out_paragraphs/scenarios/art_11_par_1.md`: one row per output, one column per norm,
  cell = scenarios passed / scenarios for that norm. `unans` is the count of queries the
  module cannot express at all (no adapter clause). A norm with 0/n on every seed is a
  prompt problem; a norm that passes on some seeds is a stability problem.
- `out_paragraphs/scenarios/summary.json`: per text x model, mean / min / max / std of
  the pass rate over seeds (seed stability), within-model answer agreement, cost per
  passed scenario, and the LLM-vs-hand comparison when both adapter sources exist. If
  the LLM adapters score far from the hand ones on the same 9 outputs, fix the adapter
  prompt before scoring anything else.
- `out_paragraphs/judge_calibration/<judge>/summary.json`: specificity (renamed copy
  judged "same") and sensitivity (one injected defect noticed), overall and per
  operator. Keep the judge that is high on both; drop the judge numbers from the report
  if neither is.

Results of the first full run (2026-11-13, $2.63): see `stage1_results.md`.

## Budget

Stage 1 judge calibration ~$3, stage 2 ~$10, stage 3 ten variants ~$30 plus hold-out
~$5. Under $50 total; the frontier arm's $30 approval from 2026-10-30 has ~$28 left,
so stage 3 needs a top-up before it starts.

## Order of work

1. Gate (1a) and judge calibration (1d): one or two days, no new design decisions.
2. Scenario harness and art_11 scenarios (1b), with the three controls passing.
3. Stage 2 calls, adapters, scoring, `astra_results.md`; freeze reasoning level.
4. Scenarios for art_50 and art_49, then hold-out texts and their scenarios.
5. Stage 3 variants.

## Decisions to confirm

- Were Opus's 19 art_11 scenarios saved anywhere? They shorten 1b.
- Recitals: keep them in the sample for gate and judge, but exclude from scenario
  scoring and from stage 3 accept/reject decisions.
- Stage 3 budget top-up.
