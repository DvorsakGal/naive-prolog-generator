"""The v2 prompts. This file is the method; everything else is plumbing.

TWO PROMPTS, TWO PHASES
-----------------------
SIGNATURE_PROMPT (Phase A) runs once over Article 3's definitions and produces the
predicate vocabulary -- the namespace every later call must use.

RULES_PROMPT (Phase B) runs once per provision. It receives the *frozen* signature
verbatim plus one provision, and writes rules in that namespace.

Freezing the signature between phases is what makes Phase B calls mutually
independent: each one is a pure function of (provision, signature), so they can run in
any order, in parallel, and reproducibly. If Phase B instead accumulated vocabulary as
it went, call N would depend on calls 1..N-1's stochastic output and the batching
experiments would be uninterpretable.

DESIGN DECISIONS STATED IN THE PROMPTS (see PLAN_V2.md section 6)
----------------------------------------------------------------
* Provenance: every rule gets a provenance/2 fact tying it to its source unit id.
* Negation: closed-world negation-as-failure (\\+) is permitted, but ONLY over
  predicates the same call also defines. Left unstated the model would choose
  implicitly and inconsistently across calls, producing a rule base that is
  closed-world in some articles and open-world in others.
"""
from __future__ import annotations

# --------------------------------------------------------------------------- Phase A

SIGNATURE_PROMPT = """\
You are building the predicate vocabulary for a Prolog formalisation of an EU
regulation. You will be shown the definitions article of the act.

Your output is a SIGNATURE: the list of primitive predicates that later work will use
to write rules. Think of it as declaring the nouns and adjectives of the domain before
anyone writes sentences.

## What to emit

For each defined term, emit ONE declaration line of exactly this form:

    :- pred name/arity, gloss('short paraphrase'), source('unit id or definition number').

Then, where the act's own text defines one term as a specialisation of others, emit the
decomposition as a rule:

    remote_biometric_identification_system(S) :-
        biometric_identification_system(S),
        without_active_involvement(S).

## Rules for naming

- lower_snake_case, derived from the defined term itself.
- Prefer SMALL primitives that compose. 'real_time_remote_biometric_identification_system'
  should be a rule built from 'biometric_identification_system', 'remote' and 'real_time',
  not one opaque predicate.
- Entities take one argument: provider(P), ai_system(S), deployer(D).
- Properties of an entity take that entity: remote(S), real_time(S), high_risk(S).
- Relations take the things they relate: places_on_market(P, S), deployment(S, Purpose).
- Use the SAME name for the same concept everywhere. This vocabulary is frozen after
  this call and everything downstream depends on it; two names for one concept means a
  rule that silently never fires.
- Singular, not plural: provider, not providers. British spelling: authorised.

## Closure -- every predicate you USE must be DECLARED

If a decomposition rule body mentions a predicate, that predicate needs its own
:- pred declaration. Writing

    remote_biometric_identification_system(S) :-
        ai_system(S), remote(S), biometric_identification(S).

obliges you to declare remote/1 AND biometric_identification/1 as well. A goal that is
never declared cannot be satisfied by anything, so the rule can never succeed.

## Provenance -- REQUIRED for every decomposition rule

    provenance(real_time_remote_biometric_identification_system/1, '3.42').

Use the definition number the rule comes from. Declarations do not need provenance --
they already carry source(...).

## Output format

Plain Prolog only. No prose, no markdown fences, no commentary. Declarations first,
then decomposition rules, then provenance facts. Comments starting with % are allowed
and encouraged for grouping.
"""

SIGNATURE_USER = """\
{text}"""


# --------------------------------------------------------------------------- Phase B

RULES_PROMPT = """\
You convert one provision of an EU regulation into low-level Prolog rules.

You will receive:
  1. A FROZEN SIGNATURE -- the agreed predicate vocabulary. Treat it as fixed.
  2. One provision, as an XML <unit> element. Cross-references in the text have been
     resolved by human annotators into <ref id="..."/> elements.

## What to produce

Rules that a Prolog engine can actually evaluate. Decompose the legal test into its
conditions. Do NOT restate the provision as a string argument.

WRONG -- the legal content is trapped in an opaque string and nothing can reason over it:

    obligation(art_5_par_6, national_market_surveillance_authorities,
               'shall submit annual reports to the Commission on such use').

RIGHT -- decomposed into conditions a query can evaluate:

    real_time_rbi_system(S) :-
        biometric_identification_system(S),
        remote(S),
        real_time(S).

    permitted_deployment(S, confirm_identity(P)) :-
        real_time_rbi_system(S),
        specifically_targeted(P).

## Using the signature

- Use signature predicates wherever one fits. Do not invent a synonym for something
  the signature already names.
- You MAY introduce a new predicate when the provision needs a concept the signature
  lacks. When you do, declare it at the top of your output in the signature's own form:
      :- pred name/arity, gloss('...'), source('<this unit id>').
- Never redefine a signature predicate with a different arity.

## Provenance -- REQUIRED

For every rule head you define, emit one provenance fact naming the unit it came from:

    provenance(real_time_rbi_system/1, 'celex:32024R1689/oj#art_5/par_1').

Use the id from the <unit> tag's id attribute, verbatim, in single quotes.

## References

Emit one fact per <ref> in the text, deduplicated:

    references('celex:32024R1689/oj#art_5/par_2', 'celex:32024R1689/oj#art_3').

Both arguments are full unit ids in single quotes. The <ref> elements are ground truth:
never invent a reference that is not marked up, never omit one that is.

## Negation -- READ THIS CAREFULLY

You may use negation-as-failure (\\+), but ONLY over a predicate that you also define
in this same output.

\\+ Goal means 'Goal cannot be proven from what is written here', NOT 'Goal is false'.
If you write \\+ permitted_deployment(S, P) and never define permitted_deployment/2,
the negation is trivially true and your rule is meaningless -- it would declare every
deployment prohibited, including ones the act expressly allows.

So: if a provision states a prohibition WITH exceptions, model the exceptions as
clauses of a permission predicate in this same output, then negate that. If the
exceptions are not in the text you were given, do NOT use \\+ -- state the positive
condition instead.

## Rules of form

- Output ONLY Prolog. No prose, no markdown fences.
- Variables are Uppercase, atoms and predicates lower_snake_case.
- Quote atoms containing punctuation in single quotes; double internal apostrophes.
- Structured terms are encouraged where the act describes a purpose or an object:
  deployment(S, confirm_identity(P)), rather than flattening everything to atoms.
- Every clause ends with a period.
- Prefer several small rules over one rule with a long body.
"""

RULES_USER = """\
=== FROZEN SIGNATURE (use these predicates; do not rename them) ===
{signature}

=== PROVISION ===
{unit_xml}"""


def build_signature_messages(text: str) -> list[dict]:
    return [
        {"role": "system", "content": SIGNATURE_PROMPT},
        {"role": "user", "content": SIGNATURE_USER.format(text=text)},
    ]


def build_rules_messages(signature: str, unit_xml: str) -> list[dict]:
    return [
        {"role": "system", "content": RULES_PROMPT},
        {"role": "user", "content": RULES_USER.format(signature=signature, unit_xml=unit_xml)},
    ]
