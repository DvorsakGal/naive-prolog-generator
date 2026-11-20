:- module(content_transparency_code, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support/1,
    objective_accessibility/1,
    objective_cooperation/1,
    objective_effective_distinction/1,
    eligible/1
]).

:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic appropriateness_applies/1.
:- dynamic actor_along_value_chain/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

permitted_encouragement(
    encouragement(Commission,
        drawing_up(code_of_practice(union_level, content_transparency)))
) :-
    commission(Commission).

permitted_facilitation(
    facilitation(Commission,
        drawing_up(code_of_practice(union_level, content_transparency)))
) :-
    commission(Commission).

objective_effective_implementation(
    purpose(code_of_practice(union_level, content_transparency),
        obligation(detection(artificially_generated_content)))
).

objective_effective_implementation(
    purpose(code_of_practice(union_level, content_transparency),
        obligation(detection(artificially_manipulated_content)))
).

objective_effective_implementation(
    purpose(code_of_practice(union_level, content_transparency),
        obligation(labelling(artificially_generated_content)))
).

objective_effective_implementation(
    purpose(code_of_practice(union_level, content_transparency),
        obligation(labelling(artificially_manipulated_content)))
).

objective_support(
    purpose(code_of_practice(union_level, content_transparency),
        practical_arrangement(accessibility(detection_mechanism))))
.

objective_accessibility(
    purpose(practical_arrangement(accessibility(detection_mechanism)),
        detection_mechanism)
) :-
    appropriateness_applies(accessibility(detection_mechanism)).

objective_support(
    purpose(code_of_practice(union_level, content_transparency),
        practical_arrangement(facilitating(cooperation_with_other_actor))))
.

eligible(cooperation_partner(Actor)) :-
    actor_along_value_chain(Actor).

eligible(cooperation_partner(Actor)) :-
    disseminates_content(Actor, _Content).

eligible(cooperation_partner(Actor)) :-
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_cooperation(
    purpose(
        practical_arrangement(facilitating(cooperation_with_other_actor)),
        cooperation_with(Actor))
) :-
    eligible(cooperation_partner(Actor)).

objective_effective_distinction(
    purpose(code_of_practice(union_level, content_transparency),
        enabling(public, distinguish(artificial_intelligence_generated_content)))
).
