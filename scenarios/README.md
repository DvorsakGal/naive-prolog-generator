# Scenario suites

One folder per study text. Plan and rationale: `astra_plan.md`, stage 1b. Runner:
`src/scenario_run.py`.

```
scenarios/<text_id>/
  scenarios.json          the suite: canonical vocabulary, norms, scenarios
  reference.pl            a module in the canonical vocabulary that passes every scenario
  mutations.json          text substitutions on reference.pl, each a known defect; every
                          one must fail at least one scenario (the --controls check)
  adapters_hand/<model>/seed_<n>.pl
                          adapters written by a person for specific outputs (optional;
                          the sanity check for the LLM-written ones)
```

## scenarios.json

| key | meaning |
|---|---|
| `inputs` | canonical input predicates (`name/arity` + one-line meaning); scenario facts use only these |
| `queries` | canonical query predicates; scenario queries use only these |
| `actions` | the action terms that appear inside queries, with meaning |
| `norms` | the norms of the text, each tagged with its sentence |
| `scenarios[]` | `id`, `norms` tested, `interpretive` (expected answer rests on a reading, not plain text), `origin`, `facts`, `queries` (`goal` + `expect` true/false), `reason` |

A goal may be a conjunction (`obligation(commission, establish(F), _), obligation(tiny, use_form(s1, F), _)`)
when the scenario tests that two answers share a term.

## Adapters

An adapter connects one module to the canonical vocabulary without changing the module.
Two kinds of clauses, both linted mechanically (see the docstring of `src/scenario_run.py`):

```prolog
% input clause: head is a module input, body uses canonical input predicates only
documents_system(D, S) :- technical_documentation(S, D).
% query clause: head is a canonical query, body is exactly one module predicate (+ =/2)
permission(E, simplify_annex_iv(S)) :- permitted_simplified_provision(provision(E, technical_documentation(S), _)).
```

Hand adapters follow the same rules as the LLM ones. The rule that matters most when
writing one: bind a canonical argument to the module's own term for that thing, as a
whole; strip a wrapper only when the inner term is the name the module uses elsewhere;
never pick a sub-term to make two clauses agree. Where the module has no bearer, leave
`_P` unbound. Where the module has no breach notion, write no `violation/2` clause: the
query is then "unanswerable", which is the finding.

## art_11_par_1

Converted from the 19 plunit tests Claude Opus 5.5 wrote during the qualitative review
(`art_11_par_1/raw/`), plus 7 scenarios added on 2026-11-10 so that every norm has a
breach case and the form identity across sentences 5 to 7 is tested. 12 of the 26 are
marked interpretive; the raw README lists the readings they rest on. On 2026-11-13 the
recipients of the information duty became entities (`nca1`, `nb1`, with
`national_competent_authority/1` as a new input) instead of category atoms, because
modules name authorities as entities and the category atom forced a background fact
into every adapter. No expected answer
has been validated by a legal expert.
