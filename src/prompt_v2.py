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

## How much to write

{pedantry}

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

# --------------------------------------------------------- Phase B: the pedantry knob

# How exhaustively the model should transcribe a provision. Spliced into
# RULES_PROMPT at {pedantry}. One ordinal scale, 1 (terse) to 5 (exhaustive).
#
# Each level is anchored on the same worked example -- Article 5(1)(a) -- so the
# levels are comparable rather than five different vague adjectives. The level
# text is part of the prompt, so it is part of the cache key: each level caches
# independently and re-running a level costs nothing.

PEDANTRY: dict[int, str] = {
    # Level 0 is the ORIGINAL prompt with no pedantry section at all -- not a
    # "medium" setting but the absence of the knob. It is the default because it
    # beat every explicit level on Article 5 (see RESULTS_PEDANTRY.md), and it
    # keeps run_v2.sh reproducing the committed out_v2 baseline byte for byte.
    0: "",
    1: """\
Write the MINIMUM that captures the provision's operative rule.

- One clause per legal test. The core prohibited or required conduct, nothing else.
- Fold qualifiers, manner clauses, causal chains and harm conditions into the
  conduct predicate rather than giving them their own goals.
- Do not model provisos, exceptions, procedural conditions or reporting duties.

On a provision of Article 5(1)(a)'s shape you would emit roughly:

    prohibited_ai_system(S) :-
        deploys_subliminal_technique(S).
""",
    2: """\
Write the operative rule plus its primary qualifying condition.

- Keep the top-level disjunction of conduct the text states.
- Keep the one condition that the prohibition or duty principally turns on.
- Still fold the causal chain and the harm condition into that condition.
- Exceptions and procedural conditions may be omitted.

On a provision of Article 5(1)(a)'s shape:

    prohibited_ai_system(S) :-
        (   deploys_subliminal_technique(S)
        ;   manipulative_deceptive_technique(S)
        ),
        objective_materially_distort_behaviour(S).
""",
    3: """\
Write one goal per conjunct that the operative sentence actually states.

- Every condition joined by 'and', or by a 'in a manner that' / 'thereby' clause,
  becomes its own goal.
- Model exceptions as a permission predicate defined in this same output and
  negated in the prohibition.
- Procedural and reporting conditions get one predicate each; they need not be
  decomposed further.

On a provision of Article 5(1)(a)'s shape:

    prohibited_ai_system(S) :-
        (   deploys_subliminal_technique(S)
        ;   manipulative_deceptive_technique(S)
        ),
        objective_materially_distort_behaviour(S),
        causes_significant_harm(S).
""",
    4: """\
Decompose every condition the text distinguishes, including ones it states as
alternatives inside a single phrase.

- 'with the objective, or the effect of X' is TWO routes, not one predicate:
  emit separate clauses, or carry the route as an argument.
- Model the causal chain the text spells out as separate goals, in order.
- Every proviso, time limit, quantity and threshold gets its own goal.
- Where the text names who bears a harm or holds a duty, that party is an
  argument, not something folded into the predicate name.
- Model the modes of putting an AI system on the market separately when the text
  enumerates them.

On a provision of Article 5(1)(a)'s shape:

    prohibited_ai_system(S) :-
        technique(S, T),
        distorting_technique(T),
        distortion_route(S, _Route),
        impairs_informed_decision(S, P),
        induces_decision_not_otherwise_taken(S, P),
        causes_significant_harm(S, _Bearer).

    distorting_technique(T) :- subliminal_beyond_consciousness(T).
    distorting_technique(T) :- purposefully_manipulative(T).
    distorting_technique(T) :- deceptive(T).

    distortion_route(S, objective) :- objective_distort_behaviour(S).
    distortion_route(S, effect)    :- effect_distort_behaviour(S).
""",
    5: """\
Transcribe the provision EXHAUSTIVELY. Nothing in the text may be left unmodelled.

- Every noun phrase that carries a legal condition becomes a predicate.
- Every alternative the text offers becomes its own clause.
- Every relation between two things becomes a binary predicate, not a property
  folded into one entity.
- Modality is explicit: distinguish 'shall' from 'may', and emit the addressee of
  a duty as an argument.
- Deadlines, quantities, thresholds and 'without prejudice to X' are goals, not
  commentary.
- Hedged language the act uses deliberately ('reasonably likely to', 'appreciably',
  'significant') gets its own predicate rather than being silently treated as
  certainty.
- Prefer many small clauses over few large ones. A long body is a sign you have
  not finished decomposing.

On a provision of Article 5(1)(a)'s shape:

    prohibited_act(placing_on_market(S)) :- prohibited_ai_system(S).
    prohibited_act(putting_into_service(S)) :- prohibited_ai_system(S).
    prohibited_act(use(S)) :- prohibited_ai_system(S).

    prohibited_ai_system(S) :-
        ai_system(S),
        deploys(S, T),
        distorting_technique(T),
        distortion_route(S, _Route, Target),
        behaviour_distortion(S, Target, materially),
        impairs_ability(S, Target, make_informed_decision, appreciably),
        induces(S, Target, decision_not_otherwise_taken),
        harm_bearer(Target, Bearer),
        harm(S, Bearer, significant, _Likelihood).

    distorting_technique(T) :- subliminal(T), beyond_consciousness(T).
    distorting_technique(T) :- purposefully_manipulative(T).
    distorting_technique(T) :- deceptive(T).

    distortion_route(S, objective, Target) :- intended_distortion(S, Target).
    distortion_route(S, effect, Target)    :- actual_distortion(S, Target).

    harm_bearer(P, P) :- natural_person(P).
    harm_bearer(P, Other) :- natural_person(Other), Other \\= P.
    harm_bearer(_P, G) :- group_of_persons(G).

    harm(S, B, significant, certain)  :- causes_harm(S, B, significant).
    harm(S, B, significant, likely)   :- reasonably_likely_to_cause(S, B, significant).
""",
}

DEFAULT_PEDANTRY = 0


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


def build_rules_messages(signature: str, unit_xml: str,
                         pedantry: int = DEFAULT_PEDANTRY) -> list[dict]:
    if pedantry not in PEDANTRY:
        raise ValueError(f"pedantry must be one of {sorted(PEDANTRY)}, got {pedantry}")
    # .replace, not .format: the prompt body contains no other placeholders but
    # does contain braces-free Prolog, and .format would choke on any added later.
    if pedantry == 0:
        # Excise the section entirely, so the prompt is byte-identical to the
        # pre-parameter prompt and the baseline's cache entries still hit.
        system = RULES_PROMPT.replace("## How much to write\n\n{pedantry}\n\n", "")
    else:
        system = RULES_PROMPT.replace("{pedantry}", PEDANTRY[pedantry].rstrip())
    return [
        {"role": "system", "content": system},
        {"role": "user", "content": RULES_USER.format(signature=signature, unit_xml=unit_xml)},
    ]


if __name__ == "__main__":
    # Inspect what the pedantry parameter actually does to the Phase B prompt.
    #
    #   venv/bin/python src/prompt_v2.py 3        # the assembled system prompt
    #   venv/bin/python src/prompt_v2.py 3 --block-only
    #   venv/bin/python src/prompt_v2.py --diff 0 4
    import difflib
    import sys

    from llm import prompt_sha  # noqa: E402  (same dir, added to path by callers)

    def system_for(level: int) -> str:
        return build_rules_messages("<SIGNATURE>", "<PROVISION>", level)[0]["content"]

    argv = sys.argv[1:]
    if not argv or argv[0] in ("-h", "--help"):
        print(__doc__.strip().splitlines()[0])
        print(f"\nlevels: {sorted(PEDANTRY)}   default: {DEFAULT_PEDANTRY}")
        print("\nusage:\n"
              "  prompt_v2.py <level>               assembled Phase B system prompt\n"
              "  prompt_v2.py <level> --block-only  just the pedantry section\n"
              "  prompt_v2.py --diff <a> <b>        unified diff of two levels\n"
              "  prompt_v2.py --sizes               chars + sha per level")
        sys.exit(0)

    if argv[0] == "--sizes":
        print(f"{'level':>5}  {'block':>6}  {'system':>7}  sha (prompt incl. user msg)")
        for lv in sorted(PEDANTRY):
            msgs = build_rules_messages("<SIGNATURE>", "<PROVISION>", lv)
            print(f"{lv:>5}  {len(PEDANTRY[lv]):>6,}  {len(msgs[0]['content']):>7,}  "
                  f"{prompt_sha(msgs)[:16]}")
        sys.exit(0)

    if argv[0] == "--diff":
        a, b = int(argv[1]), int(argv[2])
        diff = difflib.unified_diff(
            system_for(a).splitlines(), system_for(b).splitlines(),
            fromfile=f"pedantry {a}", tofile=f"pedantry {b}", lineterm="")
        print("\n".join(diff) or f"levels {a} and {b} produce identical prompts")
        sys.exit(0)

    level = int(argv[0])
    if "--block-only" in argv:
        print(PEDANTRY[level] or "(level 0: no pedantry section at all)")
    else:
        print(system_for(level))
