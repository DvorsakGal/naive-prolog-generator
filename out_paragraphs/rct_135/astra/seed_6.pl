:- module(artificial_content_code_of_practice, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_accessible_detection_mechanism/1,
    objective_cooperation/1,
    objective_effective_public_distinction/1,
    relevant_actor_applies/1,
    covered_content_applies/1
]).

:- dynamic artificially_generated/1.
:- dynamic artificially_manipulated/1.
:- dynamic along_value_chain/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.
:- dynamic appropriate_accessibility/1.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

permitted_encouragement(
    encouragement(commission,
        drawing_up(code_of_practice(union, content_detection_and_labelling)))).

permitted_facilitation(
    facilitation(commission,
        drawing_up(code_of_practice(union, content_detection_and_labelling)))).

covered_content_applies(Content) :-
    artificially_generated(Content).
covered_content_applies(Content) :-
    artificially_manipulated(Content).

objective_effective_implementation(
    purpose(
        code_of_practice(union, content_detection_and_labelling),
        obligation(detection(Content)))) :-
    covered_content_applies(Content).

objective_effective_implementation(
    purpose(
        code_of_practice(union, content_detection_and_labelling),
        obligation(labelling(Content)))) :-
    covered_content_applies(Content).

objective_support_practical_arrangement(
    purpose(
        code_of_practice(union, content_detection_and_labelling),
        practical_arrangement(accessibility(detection_mechanism)))).

objective_accessible_detection_mechanism(
    purpose(
        practical_arrangement(accessibility(Mechanism)),
        accessible(Mechanism))) :-
    appropriate_accessibility(Mechanism).

relevant_actor_applies(Actor) :-
    along_value_chain(Actor).
relevant_actor_applies(Actor) :-
    disseminates_content(Actor, _Content).
relevant_actor_applies(Actor) :-
    checks_authenticity(Actor, _Content).
relevant_actor_applies(Actor) :-
    checks_provenance(Actor, _Content).

objective_cooperation(
    purpose(
        code_of_practice(union, content_detection_and_labelling),
        cooperation(other_actor(Actor)))) :-
    relevant_actor_applies(Actor).

objective_effective_public_distinction(
    purpose(
        code_of_practice(union, content_detection_and_labelling),
        distinguish(public, artificially_generated_content))).
