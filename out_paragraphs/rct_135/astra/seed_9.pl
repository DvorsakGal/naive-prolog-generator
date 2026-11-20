:- module(content_transparency, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    union_level/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_accessible_detection_mechanism/1,
    objective_facilitate_cooperation/1,
    objective_enable_effective_public_distinction/1,
    relevant_actor_applies/1
]).

:- dynamic transparency_obligation_applies/1.
:- dynamic appropriate_applies/1.
:- dynamic value_chain_actor_applies/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

% Encouragement and facilitation do not diminish transparency obligations.
mandatory(Obligation) :-
    transparency_obligation_applies(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation_applies(Obligation).

permitted_encouragement(
    encouragement(commission, drawing_up(content_detection_and_labelling_code_of_practice))
).

permitted_facilitation(
    facilitation(commission, drawing_up(content_detection_and_labelling_code_of_practice))
).

union_level(content_detection_and_labelling_code_of_practice).

objective_effective_implementation(
    implementation(
        content_detection_and_labelling_code_of_practice,
        obligation(detection(artificially_generated_content))
    )
).
objective_effective_implementation(
    implementation(
        content_detection_and_labelling_code_of_practice,
        obligation(detection(artificially_manipulated_content))
    )
).
objective_effective_implementation(
    implementation(
        content_detection_and_labelling_code_of_practice,
        obligation(labelling(artificially_generated_content))
    )
).
objective_effective_implementation(
    implementation(
        content_detection_and_labelling_code_of_practice,
        obligation(labelling(artificially_manipulated_content))
    )
).

objective_support_practical_arrangement(
    support(
        content_detection_and_labelling_code_of_practice,
        practical_arrangement(accessibility(detection_mechanism), where_appropriate)
    )
).

objective_accessible_detection_mechanism(
    arrangement(content_detection_and_labelling_code_of_practice, Mechanism)
) :-
    appropriate_applies(accessibility(detection_mechanism(Mechanism))).

relevant_actor_applies(Actor) :-
    value_chain_actor_applies(Actor).
relevant_actor_applies(Actor) :-
    disseminates_content(Actor, _Content).
relevant_actor_applies(Actor) :-
    checks_authenticity(Actor, _Content).
relevant_actor_applies(Actor) :-
    checks_provenance(Actor, _Content).

objective_facilitate_cooperation(
    cooperation(content_detection_and_labelling_code_of_practice, other_actor(Actor))
) :-
    relevant_actor_applies(Actor).

objective_enable_effective_public_distinction(
    distinction(
        content_detection_and_labelling_code_of_practice,
        public,
        artificially_generated_content
    )
).
