:- module(content_transparency, [
    mandatory/1,
    fully_applicable/1,
    permitted_encouragement/1,
    permitted_facilitation/1,
    union_level/1,
    objective_effective_implementation/1,
    objective_support_practical_arrangement/1,
    objective_facilitate_cooperation/1,
    objective_enable_effective_distinction/1,
    relevant_content_transparency_obligation_applies/1,
    relevant_cooperation_actor_applies/1,
    unaffected/1
]).

:- dynamic transparency_obligation/1.
:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic concerns_detection/2.
:- dynamic concerns_labelling/2.
:- dynamic artificially_generated/1.
:- dynamic artificially_manipulated/1.
:- dynamic concerns_content_transparency/1.
:- dynamic appropriate_accessibility_applies/1.
:- dynamic detection_mechanism/1.
:- dynamic along_value_chain/1.
:- dynamic disseminates_content/2.
:- dynamic checks_authenticity/2.
:- dynamic checks_provenance/2.

mandatory(Obligation) :-
    transparency_obligation(Obligation).

fully_applicable(Obligation) :-
    transparency_obligation(Obligation).

permitted_encouragement(encouragement(Commission, drawing_up(Code))) :-
    commission(Commission),
    code_of_practice(Code),
    concerns_content_transparency(Code).

permitted_facilitation(facilitation(Commission, drawing_up(Code))) :-
    commission(Commission),
    code_of_practice(Code),
    concerns_content_transparency(Code).

union_level(Code) :-
    code_of_practice(Code),
    concerns_content_transparency(Code).

relevant_content_transparency_obligation_applies(Obligation) :-
    concerns_detection(Obligation, Content),
    artificially_generated(Content).

relevant_content_transparency_obligation_applies(Obligation) :-
    concerns_detection(Obligation, Content),
    artificially_manipulated(Content).

relevant_content_transparency_obligation_applies(Obligation) :-
    concerns_labelling(Obligation, Content),
    artificially_generated(Content).

relevant_content_transparency_obligation_applies(Obligation) :-
    concerns_labelling(Obligation, Content),
    artificially_manipulated(Content).

objective_effective_implementation(code_purpose(Code, Obligation)) :-
    code_of_practice(Code),
    concerns_content_transparency(Code),
    relevant_content_transparency_obligation_applies(Obligation).

objective_support_practical_arrangement(
    code_purpose(Code, making_accessible(Mechanism))) :-
    code_of_practice(Code),
    concerns_content_transparency(Code),
    detection_mechanism(Mechanism),
    appropriate_accessibility_applies(Mechanism).

relevant_cooperation_actor_applies(Actor) :-
    along_value_chain(Actor).

relevant_cooperation_actor_applies(Actor) :-
    disseminates_content(Actor, _Content).

relevant_cooperation_actor_applies(Actor) :-
    checks_authenticity(Actor, Content),
    checks_provenance(Actor, Content).

objective_facilitate_cooperation(code_purpose(Code, other_actor(Actor))) :-
    code_of_practice(Code),
    concerns_content_transparency(Code),
    relevant_cooperation_actor_applies(Actor).

objective_enable_effective_distinction(
    code_purpose(Code, public_distinction(artificial_intelligence_generated_content))) :-
    code_of_practice(Code),
    concerns_content_transparency(Code).

unaffected(mandatory_nature_and_full_applicability(Obligation)) :-
    transparency_obligation(Obligation).
