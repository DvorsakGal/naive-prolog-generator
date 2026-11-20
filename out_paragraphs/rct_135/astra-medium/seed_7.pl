:- module(content_transparency_code, [
    mandatory/1,
    fully_applicable/1,
    generated_or_manipulated/1,
    code_of_practice_applies/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_accessible_detection_mechanism/1,
    objective_cooperation/1,
    objective_effective_public_distinction/1,
    cooperation_partner_applies/1,
    preserves_obligation/2
]).

:- dynamic code_of_practice/1.
:- dynamic union_level/1.
:- dynamic addresses_obligation/2.
:- dynamic artificially_generated/1.
:- dynamic artificially_manipulated/1.
:- dynamic appropriateness_applies/1.
:- dynamic value_chain_actor/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(transparency_obligation).
fully_applicable(transparency_obligation).

generated_or_manipulated(Content) :-
    artificially_generated(Content).

generated_or_manipulated(Content) :-
    artificially_manipulated(Content).

code_of_practice_applies(Code) :-
    code_of_practice(Code),
    union_level(Code),
    addresses_obligation(Code, detection_and_labelling(Content)),
    generated_or_manipulated(Content).

permitted_encouragement(encouragement(commission, drawing_up(Code))) :-
    code_of_practice_applies(Code).

permitted_facilitation(facilitation(commission, drawing_up(Code))) :-
    code_of_practice_applies(Code).

objective_effective_implementation(
    code_of_practice(Code, obligation(detection_and_labelling(Content)))
) :-
    code_of_practice_applies(Code),
    addresses_obligation(Code, detection_and_labelling(Content)),
    generated_or_manipulated(Content).

objective_support_practical_arrangement(Code) :-
    code_of_practice_applies(Code).

objective_accessible_detection_mechanism(
    practical_arrangement(Code, accessibility(detection_mechanism))
) :-
    code_of_practice_applies(Code),
    appropriateness_applies(accessibility(detection_mechanism, Code)).

cooperation_partner_applies(Actor) :-
    value_chain_actor(Actor).

cooperation_partner_applies(Actor) :-
    disseminates_content(Actor, _Content).

cooperation_partner_applies(Actor) :-
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_cooperation(
    practical_arrangement(Code, cooperation_with(other_actor(Actor)))
) :-
    code_of_practice_applies(Code),
    cooperation_partner_applies(Actor).

objective_effective_public_distinction(
    code_of_practice(Code, distinguish(public, artificial_intelligence_generated_content))
) :-
    code_of_practice_applies(Code).

preserves_obligation(
    encouragement(commission, drawing_up(Code)),
    mandatory_and_fully_applicable(transparency_obligation)
) :-
    code_of_practice_applies(Code).

preserves_obligation(
    facilitation(commission, drawing_up(Code)),
    mandatory_and_fully_applicable(transparency_obligation)
) :-
    code_of_practice_applies(Code).
