# Consensus scoring results

Scoring rule: [`consensus_scoring.md`](consensus_scoring.md). Implementation: `src/fol.py`,
`src/align.py`, `src/consensus.py`. Reports: `out_*/consensus.json` (pass 1) and
`out_*/consensus_2.json` (pass 2). Run date: 2026-10-16.

## Setup

- Candidate: gpt-oss:120b (Ollama cloud), `out_2/ai_act.pl` and `ai_act_2.pl`.
- Peers via OpenRouter, one per family: deepseek-v4-pro, kimi-k2.6, qwen3.7-max,
  gemini-3.8-flash, mistral-large-4-0. Same Phase B prompt, same frozen `signature.pl`
  (gpt-oss's), temperature 0, seed 0.
- Pass 2: each peer reconciled its own pass-1 names, so pass-2 prompts share the system
  prompt and `signature.pl` but differ in the reconciled block. Same procedure, not same
  prompt.
- Unit of comparison: one rule head (a predicate's clauses) within one article or annex.
  Equivalence = Clark completion of both definitions, body predicates uninterpreted,
  names aligned first (identity, then gloss/name token overlap >= 0.5 within the same
  unit and arity), checked by Z3.
- `c_score` is the paper's formula: 1 minus the fraction of peers whose definition is
  equivalent. Lower = more consensus. Heads with no aligned peer definition count as
  non-equivalent, as the formula requires, but are tallied separately.
- Every program is also scored as candidate against the other five, so gpt-oss has a
  baseline computed the same way.

## How the alignment works, on one example

Everything happens inside one article at a time, in three steps. Article 5, gpt-oss
against DeepSeek, pass 1, with the real output.

**Step 1: collect the names each side uses in that article.** Not just rule heads. Every
predicate that appears anywhere in the article's clauses, as a head or as a body goal.
For gpt-oss in Article 5 that is 36 predicates. Some are from the frozen signature, like
`ai_system/1` and `placing_on_market/1`. The rest gpt-oss invented for this article, like
`prohibited_social_scoring_ai_system/1` or `infers_emotion/1`.

**Step 2: align gpt-oss's names onto DeepSeek's.** Two rules, in order.

- Identity. If DeepSeek's program knows a predicate with the same name and arity anywhere,
  that is the match. In Article 5 this catches 10 of the 36, nearly all signature
  predicates. Both models received the same signature, so this is the payoff of freezing
  it.
- Overlap. For the remaining 26, look at DeepSeek's predicates in the same article with the
  same arity and compatible modality, and score each pair by the best of three things:
  identical gloss, word overlap of the two glosses, token overlap of the two names. Pairs
  scoring at least 0.5 are assigned greedily, best first, one to one. This catches 17
  more. Real examples from the run:

```
0.80  creates_facial_recognition_database/1       -> creates_or_expands_facial_recognition_database/1
0.75  data_protection_authority/1                 -> national_data_protection_authority/1
0.62  prohibited_subliminal_technique_ai_system/1 -> prohibited_subliminal_technique/1
0.50  urgency/1                                   -> urgency_applies/1
```

The other 9 find nothing and stay unaligned. `must_authorise/2` and `permitted_urgency/1`
are examples: DeepSeek has no predicate in Article 5 that looks like them.

The result is a map from gpt-oss names to DeepSeek names for this article. The same map is
built again for Kimi, Qwen, Gemini and Mistral, since each peer named things its own way.

**Step 3: compare definitions head by head.** For each predicate gpt-oss defines in
Article 5, follow the map. Three outcomes before any logic is checked:

- No map entry: verdict `unaligned`.
- Map entry, but DeepSeek wrote no clauses for that predicate in Article 5: verdict
  `peer_no_definition`. `must_notify/2` is an example. Both models know the name, DeepSeek
  just did not define it here.
- Map entry and DeepSeek defined it: go to Z3.

For the Z3 step, take gpt-oss's clauses for the head and DeepSeek's clauses for the
aligned head. Rename every body goal in DeepSeek's clauses through the inverse of the map,
so that where DeepSeek wrote `creates_or_expands_facial_recognition_database(S)` it now
reads `creates_facial_recognition_database(S)`, matching gpt-oss's symbol. Then build each
side's Clark completion, which turns a set of clauses into one formula: the head holds if
and only if one of its clause bodies holds. Ask Z3 whether the two formulas are
equivalent for all inputs, with every body predicate treated as an opaque relation.

One pair that reached Z3 and came back `different` (gpt-oss vs Kimi):

```
gpt-oss:
prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    infers_emotion(S),
    \+ permitted_emotion_inference_medical_safety(S).

kimi (after renaming):
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    infer_emotions(S),
    (workplace_area(S) ; education_institution_area(S)),
    \+ permitted_emotion_inference_medical_safety(S).
```

The heads aligned at 0.60 and the exception predicate aligned too, so the negated goal
matches. But gpt-oss conditions on the system being placed on market and inferring
emotion, while Kimi conditions on workplace or education and on being an emotion
recognition system. Different conditions, so Z3 finds an input that satisfies one and not
the other. Both are defensible readings of Article 5(1)(f). The metric cannot see that,
and that is why the scores are near zero.

**Where the article boundary comes from.** The assembled program marks each article's
block, and every clause within it is attributed to that article. Alignment and comparison
never cross blocks, so a predicate gpt-oss defined in Article 5 is only ever compared with
what the peer wrote for Article 5. If a peer wrote nothing for an article at all, as
Mistral did for Article 26 in pass 2, that peer is dropped from the denominator for that
article rather than counted as disagreement.

For the paragraph run the three steps stay the same, with the unit being one paragraph
instead of one article. The difference is that a paragraph has fewer things to name and
fewer conditions to choose from, so both the alignment and the equivalence have a real
chance of succeeding.

## Results

Pass 1 (`ai_act.pl`):

| candidate | heads | c_score | heads with any aligned peer | agreement among aligned |
|---|---|---|---|---|
| qwen | 894 | 0.984 | 73% | 0.044 |
| gpt-oss | 866 | 0.987 | 63% | 0.045 |
| kimi | 1317 | 0.988 | 58% | 0.048 |
| deepseek | 983 | 0.988 | 73% | 0.035 |
| mistral | 1672 | 0.990 | 46% | 0.052 |
| gemini | 630 | 0.991 | 76% | 0.035 |

Pass 2 (`ai_act_2.pl`):

| candidate | heads | c_score | heads with any aligned peer | agreement among aligned |
|---|---|---|---|---|
| qwen | 942 | 0.970 | 76% | 0.092 |
| deepseek | 1162 | 0.975 | 70% | 0.074 |
| gpt-oss | 818 | 0.982 | 66% | 0.077 |
| kimi | 1287 | 0.983 | 62% | 0.057 |
| mistral | 1582 | 0.988 | 52% | 0.058 |
| gemini | 581 | 0.989 | 68% | 0.028 |

Where gpt-oss's 4,330 (head, peer) pairs went, pass 1 / pass 2:

| verdict | pass 1 | pass 2 |
|---|---|---|
| equiv | 55 (1.3%) | 70 (1.7%) |
| implies (gpt-oss stricter) | 36 | 21 |
| implied_by (peer stricter) | 73 | 108 |
| different | 1158 (26.7%) | 1029 (25.2%) |
| unsupported construct | 4 | 1 |
| unaligned (no peer name matched) | 2281 (52.7%) | 2372 (58.0%) |
| peer_no_definition (name matched, peer wrote no clauses for it here) | 723 (16.7%) | 462 (11.3%) |
| no_peer_unit (Mistral art_26) | 0 | 27 |

Pairwise agreement among aligned heads, pass 2 (row = candidate, column = peer):

|  | gpt-oss | deepseek | kimi | qwen | gemini | mistral |
|---|---|---|---|---|---|---|
| gpt-oss | - | 0.067 | 0.052 | 0.070 | 0.048 | 0.044 |
| deepseek | 0.064 | - | 0.059 | 0.144 | 0.028 | 0.057 |
| kimi | 0.054 | 0.065 | - | 0.091 | 0.030 | 0.053 |
| qwen | 0.068 | 0.137 | 0.081 | - | 0.026 | 0.066 |
| gemini | 0.036 | 0.030 | 0.029 | 0.028 | - | 0.044 |
| mistral | 0.034 | 0.057 | 0.056 | 0.073 | 0.037 | - |

## What can be derived

1. **gpt-oss is not an outlier.** Its c_score is within 0.004 of the field in pass 1 and
   inside the spread in pass 2. The data gives no reason to think it is worse than the
   peers, and no reason to think it is better.
2. **Pass 2 scores better than pass 1 for all six models.** Agreement among aligned heads
   rises for every model except Gemini. This is the only metric in the project so far
   that favours reconciliation consistently, and it does so across models, not for one.
3. **Disagreement is mostly vocabulary.** For gpt-oss, 69% of pairs (pass 1) never reach
   the logic check because the peer named the thing differently or did not define it.
   Of the pairs that do reach Z3, about 4-8% are equivalent. The rest are genuinely
   different decompositions, verified by hand on a sample: typically one model adds
   conditions the other left out. "Peer is stricter" outnumbers "gpt-oss is stricter"
   about 2:1 in pass 1 and 5:1 in pass 2.
4. **Strict logical equivalence is too strict for whole-article translation.** Two
   faithful formalisations of the same prohibition are judged different when they pick
   different sub-conditions to name. The near-zero scores say more about the metric's
   granularity than about any model.

## What cannot be derived

- **Which model is best.** The spread in c_score is 0.007 (pass 1) and 0.019 (pass 2) on
  a metric whose values are 97-99% determined by naming drift. Qwen ranks first both
  times, but Qwen and DeepSeek also align unusually well with each other (0.14 both ways
  in pass 2), which lifts both and is as likely a shared naming style as shared
  correctness. No ranking here would survive a different alignment threshold.
- **Whether any program is correct.** Consensus measures agreement, not truth. Six models
  can agree on a wrong decomposition, and this run shows they mostly do not agree at all.
- **Whether gpt-oss's reasoning mattered.** gpt-oss ran with Ollama's default reasoning
  (medium); peers ran with reasoning off, Gemini at minimal. Confound declared, not
  controlled.

## Caveats

- Peers share gpt-oss's `signature.pl`. The metric scores clause-writing given that
  vocabulary, not the vocabulary itself.
- Alignment threshold 0.5 is a knob (`--align-threshold`). Not yet swept.
- Mistral pass 2 is missing art_26 (degenerate loop, see run log); k is reduced there.
- Head counts include fact-only predicates, so they exceed `report.json` rule-head counts.
- Z3 timeouts: none occurred (2 s per check). Unsupported constructs: 5 pairs total.

## Next

The paragraph-level study (`src/paragraph_prompt.py`) is where this metric should work:
short texts, fewer decomposition choices, so equivalence has a chance to fire. The same
three modules apply unchanged.
