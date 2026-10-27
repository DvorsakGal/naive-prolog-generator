:- module(transparency_codes_of_practice, [
    transparency_obligations_mandatory/1,
    transparency_obligations_fully_applicable/1,
    may_encourage_codes_of_practice/2,
    may_facilitate_codes_of_practice/2,
    union_level_code_of_practice/1,
    facilitates_effective_implementation/2,
    obligation_regarding_detection_and_labelling/1,
    supports_practical_arrangements/2,
    makes_detection_mechanisms_accessible/2,
    facilitates_cooperation_with_value_chain_actor/2,
    disseminates_content/1,
    checks_authenticity_and_provenance/1,
    enables_public_distinction_of_ai_generated_content/1
]).

% Input predicates for entities not defined in this text
:- dynamic commission/1.
:- dynamic artificially_generated_or_manipulated_content/1.
:- dynamic value_chain_actor/1.
:- dynamic detection_mechanism/1.
:- dynamic public/1.

% Mandatory nature and full applicability of transparency obligations
transparency_obligations_mandatory(obligation).
transparency_obligations_fully_applicable(obligation).

% Commission encouragement and facilitation of codes of practice
may_encourage_codes_of_practice(Commission, Code) :-
    commission(Commission),
    union_level_code_of_practice(Code).

may_facilitate_codes_of_practice(Commission, Code) :-
    commission(Commission),
    union_level_code_of_practice(Code).

% Codes of practice at Union level facilitate effective implementation
facilitates_effective_implementation(Code, Obligation) :-
    union_level_code_of_practice(Code),
    obligation_regarding_detection_and_labelling(Obligation).

obligation_regarding_detection_and_labelling(obligation(Content)) :-
    artificially_generated_or_manipulated_content(Content).

% Practical arrangements supported by codes of practice
supports_practical_arrangements(Code, Arrangement) :-
    union_level_code_of_practice(Code),
    makes_detection_mechanisms_accessible(Arrangement, _Mechanism).

supports_practical_arrangements(Code, Arrangement) :-
    union_level_code_of_practice(Code),
    facilitates_cooperation_with_value_chain_actor(Arrangement, _Actor).

makes_detection_mechanisms_accessible(arrangement, Mechanism) :-
    detection_mechanism(Mechanism).

facilitates_cooperation_with_value_chain_actor(arrangement, Actor) :-
    value_chain_actor(Actor).

% Activities along the value chain
disseminates_content(_Actor).

checks_authenticity_and_provenance(_Actor).

% Enabling the public to distinguish AI-generated content
enables_public_distinction_of_ai_generated_content(Public) :-
    public(Public).
