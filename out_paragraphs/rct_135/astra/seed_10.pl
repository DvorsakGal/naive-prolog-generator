:- module(content_transparency, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    code_of_practice_applies/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_accessible_detection_mechanism/1,
    objective_cooperation/1,
    objective_effective_public_distinction/1,
    eligible_cooperation_actor/1
]).

:- dynamic appropriate_accessibility_applies/1.
:- dynamic participates_value_chain/2.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

code_of_practice_applies(
    code_of_practice(
        union_level,
        detection_and_labelling(artificially_generated_or_manipulated_content)
    )
).

permitted_encouragement(encouragement(commission, drawing_up(Code))) :-
    code_of_practice_applies(Code).

permitted_facilitation(facilitation(commission, drawing_up(Code))) :-
    code_of_practice_applies(Code).

objective_effective_implementation(
    purpose(Code, obligation(detection(artificially_generated_or_manipulated_content)))
) :-
    code_of_practice_applies(Code).

objective_effective_implementation(
    purpose(Code, obligation(labelling(artificially_generated_or_manipulated_content)))
) :-
    code_of_practice_applies(Code).

objective_support_practical_arrangement(
    purpose(Code, practical_arrangement(accessibility(detection_mechanism)))
) :-
    code_of_practice_applies(Code).

objective_accessible_detection_mechanism(
    purpose(Code, making_accessible(detection_mechanism))
) :-
    code_of_practice_applies(Code),
    appropriate_accessibility_applies(Code).

eligible_cooperation_actor(Actor) :-
    participates_value_chain(Actor, artificially_generated_or_manipulated_content).

eligible_cooperation_actor(Actor) :-
    disseminates_content(Actor, artificially_generated_or_manipulated_content).

eligible_cooperation_actor(Actor) :-
    checks_authenticity(Actor, artificially_generated_or_manipulated_content).

eligible_cooperation_actor(Actor) :-
    checks_provenance(Actor, artificially_generated_or_manipulated_content).

objective_support_practical_arrangement(
    purpose(Code, practical_arrangement(cooperation_with(Actor)))
) :-
    code_of_practice_applies(Code),
    eligible_cooperation_actor(Actor).

objective_cooperation(purpose(Code, cooperation_with(Actor))) :-
    code_of_practice_applies(Code),
    eligible_cooperation_actor(Actor).

objective_effective_public_distinction(
    purpose(Code, enabling(public, effectively_distinguish(artificial_intelligence_generated_content)))
) :-
    code_of_practice_applies(Code).
