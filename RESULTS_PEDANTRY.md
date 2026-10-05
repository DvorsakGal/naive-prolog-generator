# Results — the pedantry parameter (Article 5)

**Finding: leave it off.** A prompt parameter telling the model how exhaustively to
transcribe a provision was added, swept across five explicit levels, and lost to the
unmodified prompt on every metric we can measure. The parameter ships at level 0 —
the original prompt, no pedantry section at all — and that is the default.

Scope: Article 5, one Phase B call per level, `gpt-oss:120b-cloud`, temperature 0,
seed 0. The **frozen signature is shared across all six configurations**, so Phase B
is the only thing that varies. Reproduce with `./sweep_pedantry.sh`.

---

## 1. The numbers

| level | rule chars | clauses | rule heads | new preds | ABox | link | dangling | syntax | refs F1 |
|---|---|---|---|---|---|---|---|---|---|
| **0 — off** | 8,499 | 140 | 9 | 27 | 88 | **1.0** | **0** | ok | **1.0** |
| 1 — terse | 4,894 | 116 | 4 | 15 | 81 | 1.0 | 0 | ok | 0.952 |
| 2 | 4,359 | 108 | 4 | 15 | 82 | 1.0 | 0 | ok | 0.952 |
| 3 | 11,691 | 158 | 13 | 38 | 99 | 0.983 | 1 | ok | 0.90 |
| 4 | 11,076 | 166 | 17 | 38 | 91 | 0.97 | 2 | ok | 0.90 |
| 5 — exhaustive | 22,803 | 227 | 23 | 58 | 107 | 0.943 | 12 | **FAIL** | 0.90 |

Level 0 is not a sixth sample of the same prompt — it is the committed `out_v2` run.
Its prompt sha is `889574cd…`, identical to the baseline's, and the sweep re-ran it as
a cache hit. So the comparison is against the exact artefact we already had.

---

## 2. The parameter has a measurable cost on an unrelated task

Reference-graph F1 falls monotonically as the pedantry block grows:

| block size | 0 chars | ~500 chars (L1–2) | ~1,000–1,600 chars (L3–5) |
|---|---|---|---|
| refs F1 | 1.0 | 0.952 | 0.90 |

The `<ref>` transcription rules are a **separate section of the same prompt** and have
nothing to do with how much Prolog to write. The `<ref>` elements are human-annotated
ground truth; getting them right is pure copying. Adding instructions about pedantry
made the model worse at copying.

That is instruction crowding, and it is the transferable result here: in this pipeline
every word added to the prompt is paid for out of compliance with the instructions
already in it. It is the general argument against the "just add another line to the
prompt" reflex, and we can now put a number on it.

---

## 3. The hypothesis was wrong, which is why the experiment was worth running

The premise was that pedantry is a recall dial — turn it up, cover more of the act,
pay for it in precision. It is not a dial in that sense:

**Level 4 decomposed deeper and covered less.** All 15 of its rule heads are spent on
Article 5(1) — one predicate per subparagraph, `deployment_action/1` factored out,
`objective` vs `effect` split into separate routes. Article 5(2)–(6) — the
authorisation regime, the 24-hour rule, notification, annual reporting — is absent
entirely. Level 3, with a weaker instruction, covers all of it. More detail per item
bought fewer items.

**Level 5 had the best coverage of any level and does not compile.** It is the only
level that models the fundamental-rights impact assessment, EU database registration,
the authorisation deadline and the Commission's reporting template. It also has 1
consult error, 10 singleton warnings (`Target` unbound in six bodies, so the harm
condition tests nothing) and 12 dangling goals, including
`leads_to_detrimental_treatment/3` called six times and never defined.

So the two things we wanted to trade off do not lie on a single axis. There is no point
on this knob to pick.

**Level 1 and 2 reproduce the v1 failure mode.** `performs_social_scoring(S)`,
`infers_emotions_in_workplace_or_education(S)` — the legal test is back inside the
predicate name, which is exactly the opaque-string problem v2 existed to fix, minus the
quote marks. Level 2 additionally collapsed all eight prohibitions into one clause with
a nested disjunction: told to write less, it wrote *fewer, larger* rules.

---

## 4. Why the unmodified prompt wins

The baseline says "decompose the legal test into its conditions", "prefer several small
rules over one rule with a long body", shows one worked example, and then stops. It
leaves the granularity decision to the model.

Every explicit level replaced that judgment with a rule the model then over-applied.
Stating *how much* to write displaces the model's own calibration, and its calibration
was better than any of our five instructions. That is a claim about this model at this
task, not a law of nature — but it is what the run shows.

---

## 5. What to do instead

The sweep found no dial. It did find four specific, recurring, **mechanical** defects,
and these are worth fixing directly:

| defect | where | why it matters |
|---|---|---|
| **Unparenthesised `;` at body top level** | 7 in L4 | `;` binds looser than `,`, so `subparagraph_b(S)` parses as `(A,B,C) ; D ; (E,F,G)` — a bare `vulnerability_due_to(P, disability)` satisfies it and `prohibited_ai_practice(S)` then succeeds for **any** system. Consults clean; linter scores 0.97. |
| **Unbound variables in bodies** | `_Loc` in the **baseline**, `Target`×6 in L5 | `publicly_accessible_space(_Loc)` succeeds if any publicly accessible space exists anywhere. The goal is decoration. |
| **Vacuous bodies** | `publish_annual_report :- true.` (baseline), `consider_nature_of_situation(S) :- rt_rbi(S), le_use(S).` (L3) | Head asserts a duty; body tests nothing about whether it was discharged. |
| **Dropped paragraphs** | L1, L2, L4 | Only L3 and L5 reach Article 5(2)–(6) at all. |

Three of these are detectable deterministically and belong in `lint.py`, which
currently scores the baseline 1.0 while it contains two of them. That is the real
finding about our measurement: **the linter's headline metric cannot see the defects
that matter most.** Fixing that is cheaper and more valuable than another prompt knob.

---

## 6. Cost, and what we cannot claim

Cost: 5 new LLM calls, ~2 minutes wall clock, ~120 lines of code. The default is
unchanged and byte-reproducible. The parameter stays in the repo at level 0 so the
question can be re-tested in one command when the model changes —
`./sweep_pedantry.sh`.

What this does **not** establish:

- **n=1 per level, one article, one model.** `RESULTS_V2.md` §2 already showed this
  model's naming layer moves between runs. The L4 precedence bug could be sampling
  luck rather than a property of the level.
- Article 5 is all prohibitions. An obligation-shaped article (10, 50) may respond
  differently, and the "L4 drops later paragraphs" effect is specifically about an
  article with many paragraphs after the enumerated list.
- The defensible claim is **"no pedantry level beat the unmodified prompt on Article 5
  at n=1"** — not "pedantry instructions never help".

Closing that gap needs a `--seed` flag, which does not currently exist: `seed` is
hardcoded to 0 in `LLMConfig`, and `FORCE=1` does not bypass the response cache
(`llm.py` checks the cache before `force` is ever consulted), so
`RUNBOOK_V2.md` §4's run-to-run stability recipe currently replays the first run's
answers. Three seeds per level would make the table above interpretable.
