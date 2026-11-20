:- module(content_transparency_code, [
    required_transparency_obligation/1,
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    concerns_obligation/2,
    objective_practical_arrangement_support/1,
    concerns_arrangement/2,
    objective_detection_mechanism_accessibility/1,
    objective_cooperation/1,
    eligible/1,
    objective_public_distinction/1
]).

:- dynamic appropriateness_applies/1.
:- dynamic participates_in_value_chain/2.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

required_transparency_obligation(transparency_obligation).
mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(
        european_commission,
        drawing_up(code_of_practice(union_level, content_detection_and_labelling))
    )
).

permitted_facilitation(
    facilitation(
        european_commission,
        drawing_up(code_of_practice(union_level, content_detection_and_labelling))
    )
).

objective_effective_implementation(
    code_of_practice(union_level, content_detection_and_labelling)
).

concerns_obligation(
    code_of_practice(union_level, content_detection_and_labelling),
    detection(artificially_generated_content)
).
concerns_obligation(
    code_of_practice(union_level, content_detection_and_labelling),
    detection(artificially_manipulated_content)
).
concerns_obligation(
    code_of_practice(union_level, content_detection_and_labelling),
    labelling(artificially_generated_content)
).
concerns_obligation(
    code_of_practice(union_level, content_detection_and_labelling),
    labelling(artificially_manipulated_content)
).

objective_practical_arrangement_support(
    code_of_practice(union_level, content_detection_and_labelling)
).

concerns_arrangement(
    code_of_practice(union_level, content_detection_and_labelling),
    practical_arrangement(detection_mechanism_accessibility)
).
concerns_arrangement(
    code_of_practice(union_level, content_detection_and_labelling),
    practical_arrangement(cooperation_with_other_actor)
).

objective_detection_mechanism_accessibility(
    practical_arrangement(detection_mechanism_accessibility)
) :-
    appropriateness_applies(detection_mechanism_accessibility).

objective_cooperation(
    practical_arrangement(cooperation_with_other_actor(Actor))
) :-
    eligible(cooperation_partner(Actor)).

eligible(cooperation_partner(Actor)) :-
    participates_in_value_chain(Actor, content).
eligible(cooperation_partner(Actor)) :-
    disseminates_content(Actor, _Content).
eligible(cooperation_partner(Actor)) :-
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_public_distinction(
    code_of_practice(
        union_level,
        content_detection_and_labelling
    )
).

concerns_arrangement(
    practical_arrangement(cooperation_with_other_actor),
    enabling(public, effectively_distinguish(artificial_intelligence_generated_content))
).
