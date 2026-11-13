# Stage 1 results (2026-11-13)

Plan: `astra_plan.md`. Everything below was produced by the stage 1 scripts on the
existing study outputs (5 texts x 7 models x 3 seeds, plus astra-medium on art_11).
Spend for the whole stage: $3.16 (40 GPT-5.4 judge calls, the rest Sonnet for adapters
and judging).

## 1. Gate (`src/paragraph_gate.py`, 108 outputs)

| model | gate pass | main failure |
|---|---|---|
| astra | 93% | one output loops forever on an exported predicate (rct_135 seed 3) |
| astra-medium | 100% (3 outputs, art_11 only) | |
| opus | 93% | one `is/2` |
| gemini | 67% | load errors, undefined predicates |
| mistral | 40% | load errors, exports without clause |
| qwen | 13% | load errors, undefined predicates |
| deepseek | 7% | load errors, undefined, SWI extensions |
| kimi | 0% | load errors on 12 of 15 |

Not fatal but counted: 6 of 15 Astra outputs name a position of the text inside a term
(`article_11(1)`, `chp_3`), which is a guess the prompt forbids and a reference it cannot
resolve. Opus leaves helper predicates out of the export list on 8 of 15 outputs.

## 2. Scenario accuracy, art_11(1) (`src/scenario_run.py`, 26 scenarios, 33 queries)

Controls pass: the reference module passes 26/26 through the identity adapter, an empty
module passes 0 with every query unanswerable, and each of 11 injected defects fails at
least one scenario, matching the table in the raw Opus README.

Adapter validation. On the 9 outputs that have both a hand-written and an LLM-written
adapter, the final LLM run (new prompt, completeness repair, entity recipients) gives
the same outcome on 98% of queries. Pass counts agree on 6 of 9 outputs and differ by
one scenario on the other three, in both directions: Opus seeds 1 and 2 score one
higher with the LLM adapter, which derived the form's existence from the submission
fact where the hand adapter used a constant; Astra-medium seed 1 scores one lower. One
scenario is the adapter noise floor for this suite. The runner now adds identity clauses
for same-named unary inputs itself, after the first LLM run skipped them and cost Opus
three scenarios per seed.

Scenario pass rate, mean over 3 seeds (min to max), LLM adapters, final run:

| model | passed of 26 | unanswerable of 33 queries | false positives | missed |
|---|---|---|---|---|
| astra-medium | 8.3 (6 to 10) | 14.0 | 7 | 9 |
| opus | 6.7 (5 to 8) | 16.0 | 8 | 8 |
| astra | 6.0 (5 to 8) | 14.0 | 5 | 20 |
| kimi | 6.0 (5 to 7) | 14.7 | 9 | 12 |
| gemini | 5.3 (5 to 6) | 15.0 | 11 | 12 |
| qwen | 4.7 (4 to 6) | 15.3 | 14 | 9 |
| mistral | 4.0 (4 to 4) | 15.3 | 6 | 21 |
| deepseek | 3.3 (2 to 5) | 20.7 | 1 | 16 |

Hand adapters, for the three frontier arms: astra 6.0 (5 to 8), astra-medium 8.7
(6 to 10), opus 6.0 (5 to 7).

What the per-norm matrix (`out_paragraphs/scenarios/art_11_par_1.md`) says:

- Every `violation/2` and `status/3` query is unanswerable for every output of every
  model. No module derives a breach. This was the report's main qualitative finding and
  is now 14 of 33 queries, on all 24 outputs.
- `draw_up_before_entry` and `keep_up_to_date` pass 0 of 4 and 0 of 3 everywhere: the
  deadline is a label, never compared with an event.
- `duty_bearer` passes only where a module names the provider: Opus on 3 of 3 seeds,
  Astra on 1 of 3 at either reasoning level. Astra's duties hold for anyone.
- `sme_simplified_permission` is where the models differ most: Astra 2 to 4 of 4,
  Opus 2 to 3, the start-up-as-subset scenario being the usual loss.
- Form identity (one term for the form in sentences 5 to 7): Astra medium seeds 1 and 3
  pass all three scenarios, Astra minimal passes one, Opus one. This confirms the
  report's medium-vs-minimal observation on the only effect it claimed.
- Seed spread at 3 seeds is 2 to 4 scenarios for Astra; too few seeds to call it
  stability. Stage 2's 10 seeds answer that.

Unanswerable dominates missed and false positives for every model: the first prompt
change should add what the modules cannot express (the deontic layer), not fix what they
express wrongly.

## 3. Judge calibration (`src/judge_calibration.py`, 20 outputs, 40 probes per judge)

| judge | renamed copy judged "same" | injected defect noticed | "different" labels given |
|---|---|---|---|
| gpt-5.4 medium | 20/20 | 19/20 | 4 of 40 |
| sonnet-5.5 medium | 18/20 | 16/20 | 0 of 40 |

GPT misses one argument swap in a one-sentence recital. Sonnet misses half of the
dropped conditions and modality flips and never says "different", which is the "202 of
209 mostly_same" pattern from the report, now with a cause: it reads shape, not meaning.
Decision: GPT-5.4 at medium is the judge; Sonnet's judge numbers should not appear in
the next report.

## 4. Judge re-run after the sentence fix

art_11(1) is now 7 sentences (was 6: "Annex IV. SMEs" was not split). Sonnet has been
re-run on it (52 pairs, now including astra-medium). GPT has not: its art_11 files are
still the 6-sentence ones, so the judge-agreement table for that text is meaningless
until `paragraph_judge.py --judge gpt --only art_11_par_1` runs (52 calls, about $2.3).

## Open points before stage 2

1. Done 2026-11-13: recipients are entities (`nca1`, `nb1`), `national_competent_authority/1`
   is a canonical input, the reference derives `recipient/1` from them. Controls still
   pass; hand and LLM adapters now give the same pass count on 7 of 9 outputs with the
   old LLM adapters, and the information scenarios no longer need a background fact.
2. Done 2026-11-13: LLM adapters re-run under the new prompt; 98% outcome agreement
   with the hand adapters, pass counts within one scenario on every output.
3. Re-judge art_11 with GPT (point 4 above). Only needed if judge numbers go into the
   next report.
4. The 12 interpretive expected answers still have no legal review.

Stage 1 is complete apart from points 3 and 4. Total spend $3.16.
