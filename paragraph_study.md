# Paragraph-level stability study: plan

Task from the lead: one prompt that turns one paragraph of text into one small Prolog
module, run over 5 models x 5 paragraphs x 3 runs with identical settings, then measure
how stable and how similar the outputs are. Prompt is written: `src/paragraph_prompt.py`.
This file is the plan for the rest.

## Question

When several models each translate the same short text into a Prolog module, three
times each, with no shared vocabulary and no hints about the text:

1. How stable is one model with itself (same text, same settings, three runs)?
2. How much do different models agree on the same text?
3. What does "cover the whole text in one module" produce in practice?

Consensus scoring on whole articles (`consensus_results.md`) gave near-zero agreement
because of naming drift and decomposition choices. A paragraph has fewer things to name
and fewer conditions to pick, so the same metrics have a chance to say something here.

## Texts (5)

Two recitals and two article paragraphs drawn with `random.Random(42)` (recitals of
600-1800 rendered chars, top-level paragraphs of 500-1800), plus one paragraph pinned by
hand: Article 50(2), a provision with conditional obligations and an exception, so at
least one text has rules to extract. The first run had three recitals; recitals state
purposes rather than rules, and the models answered them by turning nouns into facts, so
one was swapped for the pinned paragraph.

| id | kind | chars | sentences | starts |
|---|---|---|---|---|
| rct_135 | recital | 661 | 1 | Without prejudice to the mandatory nature and full applicability of the transparency obligations... |
| rct_34 | recital | 1389 | 4 | In order to ensure that those systems are used in a responsible and proportionate manner... |
| art_11/par_1 | paragraph | 1100 | 6 | The technical documentation of a high-risk AI system shall be drawn up before... |
| art_49/par_4 | paragraph | 793 | 6 | For high-risk AI systems referred to in Annex III, points (1), (6) and (7)... |
| art_50/par_2 | pinned | 915 | 3 | Providers of AI systems, including general-purpose AI systems, generating synthetic audio... |

Lengths are of the rendered text. The draw is `python src/paragraph_study.py --list`,
fixed by `DRAW_SEED` and `PINNED_PARAGRAPHS` in that file and recorded in
`out_paragraphs/texts/selection.json`. rct_135 is a single sentence, so the judge's
per-sentence scores for it are one number.

Recitals come from the act XML (180 numbered lines between "Whereas:" and "HAVE
ADOPTED"); paragraphs from the existing `par_N.xml` unit files. The `<ref>` markup is
rendered to readable citations before the text is sent ("Article 6(2)", "Annex VIII,
points (1) to (10)", "Regulation (EU) 2022/2065"), since the prompt promises plain text.
The exact text sent is stored beside the outputs.

## First run and the prompt fix

The first 75 calls (archived in `out_paragraphs_v1/`) had 31 outputs that did not load.
88 of 96 load errors were an export of a predicate with no clauses: the prompt said
"export every predicate you define" and "declare inputs dynamic", and the models exported
the inputs too. Six more were export entries written as full terms. One output in 75 had
a genuine syntax error. With the module header removed, 74 of 75 loaded. The module
section of the prompt now states the export rule from both sides and names the
consequence. Everything else in the prompt is unchanged.

The first run's numbers, for the record: within-model Jaccard over predicates 0.15-0.27,
over clauses 0.01-0.10; cross-model under 0.05 on everything. Same model, same settings,
different seed gives mostly different names. That is why the judge exists.

## Models (5) and settings

The five OpenRouter peers, same as consensus scoring, so provider and reasoning handling
are already solved: deepseek-v4-pro, kimi-k2.6, qwen3.7-max, gemini-3.8-flash (reasoning
minimal, cannot be disabled), mistral-large-4-0. gpt-oss:120b via Ollama as an optional
sixth, since it is the pipeline's model; its reasoning is on by default and that is noted.

Temperature 0. "Three runs with identical settings" is implemented as seeds 1, 2, 3: at
temperature 0 the cache would otherwise return one answer three times, and the seed is
part of the cache key. Completion cap 16384 as in the pipeline; a truncated run is
recorded, not retried.

Calls: 5 x 5 x 3 = 75 (90 with gpt-oss). About 1.5k prompt + 1k completion tokens each.
Under one dollar in total.

## Outputs on disk

```
out_paragraphs/
  texts/<id>.txt                 exact text sent
  <id>/<model>/seed_<n>.pl       raw module as returned (fences stripped)
  <id>/<model>/seed_<n>.meta.json tokens, wall time, truncated, cache key
  run.jsonl                      one line per call, as in the pipeline
  metrics.json                   everything below, machine-readable
  review/<id>.md                 side-by-side of all outputs for one text, for reading
```

## Metrics

Per output, before any comparison:

- Loads in SWI-Prolog as a module (`swipl -g halt`), errors and warnings counted.
- Has a module directive; exports match the predicates actually defined.
- Counts: clauses, rules vs facts, predicates defined, predicates only called (inputs),
  `:- dynamic` declarations.
- Coding-standard checks reused from `src/lint.py`: lowercase atoms, arity of the
  naming forms, article/paragraph numbers in names, singleton variables.
- Coverage proxy for "whole text captured": share of the paragraph's content words
  (stopwords removed) that appear as tokens in some predicate or atom name. Crude, but
  it separates a module that formalised two sentences from one that formalised all of
  them.

Within-model stability (same text, same model, 3 seeds), mean over the 3 pairs:

- Jaccard over the set of predicate indicators (name/arity).
- Jaccard over the set of normalised clauses (variables renamed canonically, module name
  stripped, whitespace collapsed).
- Consensus equivalence from `src/fol.py` and `src/align.py`: for each head in run A,
  is there an aligned head in run B with an equivalent definition. Alignment here is
  name-token overlap only, since the paragraph prompt asks for no glosses.

Across models (same text), the same three measures over the 10 model pairs, using
seed 1 outputs, plus the all-runs version (15 x 15) for a fuller picture.

## LLM judge

`src/paragraph_judge.py`. The symbolic measures stop at naming; the judge reads meaning.

One judge call receives the text with numbered sentences, module A and module B. It
returns JSON with one row per sentence -- how much of the sentence A captures
(full / partial / none), the same for B, and for sentences both capture whether the two
modules state the same thing about it (same parties, conditions, modality) once names
are read for their meaning -- plus an overall label `same | mostly_same | different` and
a one-sentence note.

Scores per pair: coverage of each side (full = 1, partial = 0.5, none = 0, averaged over
sentences), agreement (share of jointly captured sentences judged the same), and the
label.

Design:
- The judge is not one of the five. Default anthropic/claude-sonnet-5.5 via OpenRouter;
  `--judge gpt` or `--judge grok` for a second opinion. When two judge folders exist the
  summary reports how often they gave the same overall label.
- A/B order is randomised per pair with a fixed seed and recorded, so position bias
  shows as noise, not as a tilt.
- The judge reasons at low effort. It is the only call in the study with reasoning on.
- Pairs: within-model, the 3 seed pairs per text and model (75); across models, seed 1
  of each model, all 10 pairs per text (50). 125 calls per judge, a few dollars.
- Every call is cached and logged like the rest of the pipeline.

Outputs: `out_paragraphs/judge/<judge>/<text>__<a>__<b>.json`, `summary.json`, and
`judge_agreement.json` when two judges have run.

Manual review: the `review/<id>.md` files, read by a person. This is where the lead's
"look at what they output and tell me what you find" is answered; the metrics are
support for that, not a replacement.

## What would count as a finding

- A model whose three runs differ a lot at temperature 0 is unstable in a way that
  matters for a deterministic pipeline, independent of quality.
- If within-model Jaccard is high and cross-model Jaccard is low, naming drift is the
  dominant source of disagreement, as the article-level study suggested.
- If cross-model consensus equivalence is still near zero on 600-char texts, strict
  logical equivalence is the wrong metric at any granularity for this task.
- Whatever the models do with "cover the whole text": facts about the world, rules,
  commentary, or a module that encodes one sentence and stops.

## Files to add

- `src/paragraph_study.py`: text selection and rendering, the 75 calls through the
  existing client with per-seed configs, writes outputs and meta.
- `src/paragraph_metrics.py`: loads outputs, computes everything above, writes
  `metrics.json` and the review files, prints a summary table.
- `src/paragraph_judge.py`: the LLM judge over within-model and across-model pairs.

No change to the pipeline scripts. The prompt file stays as it is.

## Steps

1. Done: scripts built, first run made, prompt's export rule fixed, one recital swapped.
2. Re-run the 75 calls on the fixed prompt. `OPENROUTER_API_KEY` must be in the shell.

       venv/bin/python src/paragraph_study.py
       venv/bin/python src/paragraph_metrics.py

   Load rate should now be near 100%; if it is not, look at `review/<text>.md` before
   touching anything.
3. Judge, one judge first:

       venv/bin/python src/paragraph_judge.py

   Then a second judge on the same pairs for judge agreement:

       venv/bin/python src/paragraph_judge.py --judge gpt

4. Read the review files for two texts by hand (rct_34 and art_50/par_2) and check the
   judge's per-sentence rows against your own reading on a few pairs.
5. Write findings into `paragraph_results.md`, short, same shape as `consensus_results.md`.
