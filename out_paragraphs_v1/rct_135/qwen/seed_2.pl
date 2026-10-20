:- module(transparency_codes_of_practice, [
    mandatory_transparency_obligations/1,
    transparency_obligations_fully_applicable/1,
    may_encourage_codes_of_practice/2,
    may_facilitate_codes_of_practice/2,
    union_level_code_of_practice/1,
    facilitates_effective_implementation/2,
    obligation_regarding_detection_and_labelling/1,
    artificially_generated_or_manipulated_content/1,
    supports_practical_arrangements/2,
    makes_detection_mechanisms_accessible/2,
    facilitates_cooperation_with_value_chain_actor/2,
    value_chain_actor_disseminating_content/1,
    value_chain_actor_checking_authenticity_and_provenance/1,
    enables_public_to_distinguish_ai_generated_content/1
]).

% Input predicates for entities not defined in this text
:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic code_of_practice/1.
:- dynamic detection_mechanism/1.
:- dynamic value_chain_actor/1.
:- dynamic content/1.

% Mandatory nature and full applicability of transparency obligations
mandatory_transparency_obligations(O) :-
    transparency_obligation(O).

transparency_obligations_fully_applicable(O) :-
    transparency_obligation(O).

% Commission encouragement and facilitation of codes of practice
may_encourage_codes_of_practice(Commission, Code) :-
    commission(Commission),
    union_level_code_of_practice(Code).

may_facilitate_codes_of_practice(Commission, Code) :-
    commission(Commission),
    union_level_code_of_practice(Code).

union_level_code_of_practice(Code) :-
    code_of_practice(Code).

% Purpose: effective implementation of detection and labelling obligations
facilitates_effective_implementation(Code, Obligation) :-
    union_level_code_of_practice(Code),
    obligation_regarding_detection_and_labelling(Obligation).

obligation_regarding_detection_and_labelling(O) :-
    transparency_obligation(O),
    obligation_concerns_artificial_content(O).

obligation_concerns_artificial_content(O) :-
    transparency_obligation(O),
    artificially_generated_or_manipulated_content(_C).

artificially_generated_or_manipulated_content(C) :-
    content(C).

% Practical arrangements for accessible detection mechanisms
supports_practical_arrangements(Code, Arrangement) :-
    union_level_code_of_practice(Code),
    practical_arrangement_for_accessibility(Arrangement).

practical_arrangement_for_accessibility(arrangement(Mechanism)) :-
    makes_detection_mechanisms_accessible(_Code, Mechanism).

makes_detection_mechanisms_accessible(Code, Mechanism) :-
    union_level_code_of_practice(Code),
    detection_mechanism(Mechanism).

% Facilitating cooperation with value chain actors
facilitates_cooperation_with_value_chain_actor(Code, Actor) :-
    union_level_code_of_practice(Code),
    value_chain_actor_disseminating_content(Actor).

facilitates_cooperation_with_value_chain_actor(Code, Actor) :-
    union_level_code_of_practice(Code),
    value_chain_actor_checking_authenticity_and_provenance(Actor).

value_chain_actor_disseminating_content(Actor) :-
    value_chain_actor(Actor).

value_chain_actor_checking_authenticity_and_provenance(Actor) :-
    value_chain_actor(Actor).

% Enabling the public to distinguish AI-generated content
enables_public_to_distinguish_ai_generated_content(Code) :-
    union_level_code_of_practice(Code).
