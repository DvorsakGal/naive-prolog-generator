# Naive Prolog Generator

Turns the annotated chunks of **Regulation (EU) 2024/1689 (the AI Act)** into a single
Prolog fact base, using one LLM call per chunk and nothing else.

This is a deliberate **baseline**: the orchestration selects, calls, and concatenates —
it performs no analysis of its own.

- [`PLAN.md`](PLAN.md) — corpus analysis and approach
- [`DECISIONS.md`](DECISIONS.md) — why each constraint is there
- [`RESULTS.md`](RESULTS.md) — full-run results and what they show

**Latest run:** 285/285 units, clean `swipl` consult, 2,468 facts, reference-graph
F1 **0.960**, 26.6 min, 0 failures.

## Quick start

```bash
venv/bin/pip install -r requirements.txt   # httpx
ollama --version                           # cloud models reached via local Ollama
./run.sh                                   # generate -> merge -> validate
```

Outputs land in `out/`:

| Path | What |
|---|---|
| `out/units/*.pl` | one Prolog snippet per unit (resumable — reruns skip existing) |
| `out/ontology.pl` | the merged fact base |
| `out/run.jsonl` | per-unit log: tokens, duration, retries, errors |
| `out/report.json` | full validation report |

## Pipeline

```
units/ ──► select_units ──► generate ──► merge ──► validate
            285 leaves      1 call/unit   dedupe    swipl + ref-graph scoring
           (deterministic)  (the LLM)              (no LLM)
```

| Module | Role |
|---|---|
| `src/select_units.py` | Parse unit XML; keep AI Act units that are not containers of other units |
| `src/prompt.py` | **The entire method** — one system prompt, no few-shot, no corpus context |
| `src/generate.py` | Async orchestration: concurrency cap, retry with backoff, resume, JSONL log |
| `src/merge.py` | Quote-aware clause splitter, dedupe, `:- discontiguous` directives |
| `src/validate.py` | `swipl` consult + precision/recall of `references/2` vs the annotated `<ref>` edges |
| `src/compare.py` | Diff two runs' reports — for prompt iteration and model comparison |

Each module also runs standalone: `venv/bin/python src/select_units.py` prints corpus
statistics without calling anything.

## Useful flags

```bash
./run.sh --limit 10                  # small trial run
./run.sh --concurrency 3             # default; Ollama cloud 429s above ~4
./run.sh --model gpt-oss:20b-cloud   # compare models
./run.sh --force                     # regenerate instead of resuming
./run.sh --include-external          # also the 241 referenced non-AI-Act units (~23.8 MB)
```

## What the output looks like

```prolog
:- discontiguous applies_to/2.
:- discontiguous definition/2.

% ==== celex:32024R1689/oj#art_3/unp_1/pnt_1 ====
unit(art_3_unp_1_pnt_1, 'celex:32024R1689/oj#art_3/unp_1/pnt_1', point).
definition(ai_system, 'machine-based system that is designed to operate with varying
  levels of autonomy and that may exhibit adaptiveness after deployment ...').

% ==== celex:32024R1689/oj#art_16 ====
unit(art_16, 'celex:32024R1689/oj#art_16', article).
title(art_16, 'Obligations of providers of high-risk AI systems').
references(art_16, art_17).
obligation(art_16, provider, 'have a quality management system in place').
```

Query it:

```bash
swipl out/ontology.pl
?- obligation(U, provider, What).
?- references(art_16, T).
?- definition(C, _).
```

Compare two runs:

```bash
cp out/report.json out/report.v1.json   # snapshot, then change the prompt and re-run
venv/bin/python src/compare.py out/report.v1.json out/report.json
```

## How it is evaluated

The corpus annotation resolved every cross-reference in the prose to a stable id, which
gives a **free, objective ground truth** for one slice of the ontology. `validate.py`
scores the model's `references/2` facts against it (precision / recall / F1) — a real
number, comparable across prompt revisions and models, with no human or LLM judge in the
loop.

Everything else is reported rather than scored: fact counts, predicate vocabulary size,
and units that produced nothing. **Predicate drift across the 285 independent calls is the
headline result** — it measures how much schema coherence a non-naive method would have
to supply.

## Deliberately absent

No reference pre-resolution, no two-pass schema harmonisation, no self-critique loop, no
few-shot examples drawn from the corpus, no post-hoc predicate alignment. Each is a
sensible improvement and each is a *different experiment* — folding them in would leave
nothing to compare them against. `PLAN.md` §6 catalogues them as the next iteration.
