:- module(content_transparency, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_public_distinction/1,
    relevant_actor_applies/1,
    supported_accessibility_arrangement_applies/1
]).

:- dynamic actor_along_value_chain/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.
:- dynamic appropriate_accessibility_applies/1.
:- dynamic detection_mechanism/1.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(commission,
        drawing_up(code_of_practice(content_transparency), union_level))
).

permitted_facilitation(
    facilitation(commission,
        drawing_up(code_of_practice(content_transparency), union_level))
).

objective_effective_implementation(
    code_of_practice(content_transparency,
        obligation(detection, artificially_generated_content))
).
objective_effective_implementation(
    code_of_practice(content_transparency,
        obligation(labelling, artificially_generated_content))
).
objective_effective_implementation(
    code_of_practice(content_transparency,
        obligation(detection, artificially_manipulated_content))
).
objective_effective_implementation(
    code_of_practice(content_transparency,
        obligation(labelling, artificially_manipulated_content))
).

objective_support_practical_arrangement(
    code_of_practice(content_transparency,
        making_accessible(DetectionMechanism))
) :-
    supported_accessibility_arrangement_applies(DetectionMechanism).

supported_accessibility_arrangement_applies(DetectionMechanism) :-
    detection_mechanism(DetectionMechanism),
    appropriate_accessibility_applies(DetectionMechanism).

objective_facilitate_cooperation(
    code_of_practice(content_transparency, cooperation_with(Actor))
) :-
    relevant_actor_applies(Actor).

relevant_actor_applies(Actor) :-
    actor_along_value_chain(Actor).
relevant_actor_applies(Actor) :-
    disseminates_content(Actor, _Content).
relevant_actor_applies(Actor) :-
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_enable_public_distinction(
    code_of_practice(content_transparency,
        effective_distinction(public, artificially_generated_content))
).
