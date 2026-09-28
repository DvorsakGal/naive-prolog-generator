# Runbook — v2

Every command you need, in order, with what it does and what to expect.
Design reasoning lives in [`PLAN_V2.md`](PLAN_V2.md); findings in [`RESULTS_V2.md`](RESULTS_V2.md).

---

## 0. Prerequisites — run these first

```bash
ollama serve &                      # REQUIRED: the pipeline talks to localhost:11434
venv/bin/pip install -r requirements.txt
swipl --version                     # needed for Phase D; brew install swi-prolog
```

`ollama serve` is the one that catches people out. Without it every LLM call fails with
`ConnectError: All connection attempts failed`. Check it's up:

```bash
curl -s http://localhost:11434/api/tags | head -c 80
```

---

## 1. The whole pipeline in one command

```bash
./run_v2.sh                          # default scope: Article 5
```

Variants:

```bash
./run_v2.sh --articles art_5,art_6   # several articles
./run_v2.sh --articles all           # every article in the act (~110 calls)
./run_v2.sh --model gpt-oss:20b-cloud
./run_v2.sh --force                  # ignore cache, regenerate everything
```

A second run with no changes finishes in seconds — every LLM response is cached by
prompt hash.

---

## 2. Running the phases individually

Use these when iterating on one stage.

### Phase 0 — slice provisions out of the whole-act unit *(deterministic)*

```bash
venv/bin/python src/slice.py
```

```
art_3_definitions       68 items   17,201 chars   25 refs  sha ff1109ad8737
```

Why it exists: `units/` is a reference closure, so only 3 of Article 3's 68 definitions
are present as units. The rest come from the whole-act unit. The slice asserts its item
count — if the corpus changes, this fails loudly rather than silently shifting.

### Phase A — build and freeze the signature *(1 LLM call)*

```bash
venv/bin/python src/signature.py            # skips if signature.pl exists
venv/bin/python src/signature.py --force    # rebuild
```

```
wrote out_v2/signature.pl
  declarations : 70
  sha256       : 9a545085be0f
```

Produces `out_v2/signature.pl` — the predicate vocabulary every later call writes into —
and `out_v2/signature.meta.json` recording its hash.

**Read `signature.pl` before running Phase B.** It is small, it is the namespace
everything else depends on, and it is far cheaper to fix here than after 110 rule files
have been generated against it.

### Phase B — generate rules *(1 LLM call per provision)*

```bash
venv/bin/python src/generate_rules.py --articles art_5
venv/bin/python src/generate_rules.py --articles all --concurrency 3
```

```
  signature : 70 predicates, sha 9a545085be0f
  art_5                        call     5333 out-tokens   8,187 chars
done=1 failed=0 skipped=0 stale-regenerated=1
```

Two safety behaviours worth knowing:

- **Hash check.** If `signature.pl` no longer matches `signature.meta.json`, the run
  aborts. Rules written against an old vocabulary cannot be mixed with a new one.
- **Staleness.** Each rule file records the signature hash it was generated against.
  Change the signature and the affected files regenerate automatically — that is the
  `stale-regenerated` count.

`--concurrency 3` is the default because Ollama's cloud endpoint returns `429` above
about 4 parallel requests.

### Phase C — assemble *(deterministic)*

```bash
venv/bin/python src/merge_v2.py --articles art_5
```

Writes `out_v2/ontology.pl`. Two mechanical rewrites happen here:

1. `:- pred foo/1, gloss(...), source(...).` becomes `declared(foo/1, ..., ...).` — the
   directive form is readable but would throw existence errors on consult.
2. Every declared predicate with no clauses gets `:- dynamic`. Without this the ontology
   raises `Unknown procedure` on the first query instead of failing cleanly.

### Phase D — lint *(deterministic, no LLM)*

```bash
venv/bin/python src/lint.py --articles art_5
venv/bin/python src/lint.py --json | less
```

Five checks. **Link integrity is the headline** — the share of rule-body goals that
resolve to either a clause or a declared primitive. It is the number that says whether
the rule base is connected at all.

---

## 3. Querying the result

```bash
swipl out_v2/ontology.pl out_v2/demo_abox.pl
```

```prolog
?- prohibited_ai_system(S).
?- permitted_use_rt_rbi(S).
?- provenance(prohibited_ai_system/1, Unit).
?- declared(P/A, Gloss, Source).
```

Or non-interactively:

```bash
swipl -q -g "consult('out_v2/ontology.pl'), consult('out_v2/demo_abox.pl'),
  forall(prohibited_ai_system(S), format('~w~n',[S]))" -t halt 2>/dev/null
```

`out_v2/demo_abox.pl` is **hand-written, not generated**. It asserts facts about two
imaginary camera systems so you can see the rules fire. Expect:

```
classified as real-time RBI:  cam_net_01, cam_net_02
permitted use:                cam_net_01        (has an allowed objective)
PROHIBITED under Article 5:   cam_net_02        (mass screening, no allowed objective)
```

⚠️ **The ABox is tied to one generation.** Phase B re-invents rule names on each run —
`permitted_rrbis_use/2` in one run, `permitted_use_rt_rbi/1` in the next. After a
regeneration, check the current names before querying:

```bash
grep -n "^[a-z_]*(.*:-" out_v2/rules/*.pl
```

This instability is the main open problem; see `RESULTS_V2.md`.

---

## 4. Experiments

The pipeline is deterministic apart from the LLM, so these are controlled comparisons.

**Compare two models:**

```bash
OUT=out_v2_120b ./run_v2.sh --model gpt-oss:120b-cloud
OUT=out_v2_20b  ./run_v2.sh --model gpt-oss:20b-cloud
venv/bin/python -c "
import json
for d in ('out_v2_120b','out_v2_20b'):
    r=json.load(open(d+'/report.json'))
    print(d, 'link', r['link_integrity']['score'], 'refs F1', r['references']['f1'])"
```

**Measure run-to-run stability** (same model, same prompt, temperature 0):

```bash
OUT=out_v2_runA FORCE=1 ./run_v2.sh
OUT=out_v2_runB FORCE=1 ./run_v2.sh
diff <(grep -o "^[a-z_]*(" out_v2_runA/ontology.pl | sort -u) \
     <(grep -o "^[a-z_]*(" out_v2_runB/ontology.pl | sort -u)
```

`FORCE=1` is essential here — without it the cache returns run A's answers.

**Scale up:**

```bash
./run_v2.sh --articles all --model gpt-oss:120b-cloud
```

---

## 5. Output layout

| path | what | committed? |
|---|---|---|
| `out_v2/slices/*.xml` | deterministic text slices | yes |
| `out_v2/signature.pl` | **frozen vocabulary** — read this first | yes |
| `out_v2/signature.meta.json` | signature hash + declarations | yes |
| `out_v2/rules/*.pl` | one file per provision | yes |
| `out_v2/ontology.pl` | the assembled ontology | yes |
| `out_v2/demo_abox.pl` | hand-written demo facts | yes |
| `out_v2/report.json` | lint report | yes |
| `out_v2/run.jsonl` | per-call log: tokens, timing, hashes | yes |
| `out_v2/cache/*.json` | raw LLM responses keyed by prompt hash | **no** (gitignored) |

---

## 6. Troubleshooting

| symptom | cause | fix |
|---|---|---|
| `ConnectError: All connection attempts failed` | ollama not running | `ollama serve &` |
| `429 Too Many Requests` in `run.jsonl` | concurrency too high | `--concurrency 3` (already default) |
| `signature.pl has changed since Phase A` | edited by hand | restore it, or `src/signature.py --force` then regenerate rules |
| `Unknown procedure: foo/1` when querying | ontology assembled before the `:- dynamic` fix | re-run Phase C |
| Phase B says `skipped` but you wanted a rerun | cache + existing files | `--force` |
| Demo query returns `Unknown procedure` | rule names changed in the last generation | `grep "^[a-z_]*(.*:-" out_v2/rules/*.pl` |

---

## 7. Determinism — what is and is not guaranteed

**Deterministic** (identical output, every time, given identical inputs): slicing,
provision selection, assembly, linting, ordering, all hashing.

**Replayable but not deterministic**: the two LLM phases. Temperature 0 reduces variation
but does not guarantee byte-identical responses. We therefore:

1. key every call by `sha256(model + params + full prompt)`;
2. write the raw response to `out_v2/cache/` **before** parsing;
3. never re-call a cached key.

So a **recorded** run replays exactly, and editing one prompt re-runs only the calls it
affects. A **fresh** run against a cleared cache may differ — and in practice does; see
`RESULTS_V2.md` §2. Anyone claiming this pipeline is end-to-end deterministic is
overstating it, which is why it is spelled out here.
