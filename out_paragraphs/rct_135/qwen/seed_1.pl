:- module(transparency_codes_of_practice, [
    transparency_obligation/1,
    mandatory_transparency_obligation/1,
    fully_applicable_transparency_obligation/1,
    may_encourage_code_of_practice/2,
    may_facilitate_code_of_practice/2,
    union_level_code_of_practice/1,
    facilitates_effective_implementation/2,
    obligation_regarding_detection_and_labelling/1,
    artificially_generated_or_manipulated_content/1,
    supports_practical_arrangements/2,
    makes_detection_mechanisms_accessible/2,
    facilitates_cooperation_with_value_chain_actor/2,
    disseminates_content/1,
    checks_authenticity_and_provenance/1,
    enables_public_to_distinguish_ai_generated_content/1
]).

% Input predicates for entities not defined in this text
:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic value_chain_actor/1.
:- dynamic detection_mechanism/1.

% Transparency obligations are mandatory and fully applicable
mandatory_transparency_obligation(O) :-
    transparency_obligation(O).

fully_applicable_transparency_obligation(O) :-
    transparency_obligation(O).

% Commission may encourage and facilitate codes of practice at Union level
may_encourage_code_of_practice(Commission, Code) :-
    commission(Commission),
    code_of_practice(Code),
    union_level_code_of_practice(Code).

may_facilitate_code_of_practice(Commission, Code) :-
    commission(Commission),
    code_of_practice(Code),
    union_level_code_of_practice(Code).

% Codes of practice facilitate effective implementation of detection and labelling obligations
facilitates_effective_implementation(Code, Obligation) :-
    code_of_practice(Code),
    obligation_regarding_detection_and_labelling(Obligation).

obligation_regarding_detection_and_labelling(O) :-
    transparency_obligation(O),
    artificially_generated_or_manipulated_content(_C).

% Codes of practice support practical arrangements for accessibility and cooperation
supports_practical_arrangements(Code, Arrangement) :-
    code_of_practice(Code),
    makes_detection_mechanisms_accessible(Arrangement, _Mechanism).

supports_practical_arrangements(Code, Arrangement) :-
    code_of_practice(Code),
    facilitates_cooperation_with_value_chain_actor(Arrangement, _Actor).

makes_detection_mechanisms_accessible(Arrangement, Mechanism) :-
    detection_mechanism(Mechanism).

facilitates_cooperation_with_value_chain_actor(Arrangement, Actor) :-
    value_chain_actor(Actor).

% Value chain actors disseminate content or check authenticity and provenance
disseminates_content(Actor) :-
    value_chain_actor(Actor).

checks_authenticity_and_provenance(Actor) :-
    value_chain_actor(Actor).

% Purpose is to enable the public to distinguish AI-generated content
enables_public_to_distinguish_ai_generated_content(Code) :-
    code_of_practice(Code),
    facilitates_effective_implementation(Code, _Obligation).
