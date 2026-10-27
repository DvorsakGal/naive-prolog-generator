:- module(transparency_codes_of_practice, [
    mandatory_transparency_obligations_applies/1,
    full_applicability_transparency_obligations_applies/1,
    may_encourage_codes_of_practice/2,
    may_facilitate_codes_of_practice/2,
    union_level/1,
    facilitates_effective_implementation/2,
    obligation_regarding_detection_and_labelling/1,
    artificially_generated_or_manipulated_content/1,
    supports_practical_arrangements/2,
    makes_detection_mechanisms_accessible/2,
    facilitates_cooperation_with_value_chain_actor/2,
    disseminates_content/2,
    checks_authenticity_and_provenance/2,
    enables_public_distinction_of_ai_generated_content/1
]).

% Input predicates for entities not defined in this text
:- dynamic commission/1.
:- dynamic transparency_obligation/1.
:- dynamic code_of_practice/1.
:- dynamic detection_mechanism/1.
:- dynamic value_chain_actor/1.
:- dynamic content/1.
:- dynamic practical_arrangement/1.

% Mandatory nature and full applicability of transparency obligations
mandatory_transparency_obligations_applies(Obligation) :-
    transparency_obligation(Obligation).

full_applicability_transparency_obligations_applies(Obligation) :-
    transparency_obligation(Obligation).

% Commission encouragement and facilitation of codes of practice
may_encourage_codes_of_practice(Commission, Code) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code).

may_facilitate_codes_of_practice(Commission, Code) :-
    commission(Commission),
    code_of_practice(Code),
    union_level(Code).

union_level(Code) :-
    code_of_practice(Code).

% Purpose: facilitate effective implementation of obligations
facilitates_effective_implementation(Code, Obligation) :-
    code_of_practice(Code),
    obligation_regarding_detection_and_labelling(Obligation).

obligation_regarding_detection_and_labelling(Obligation) :-
    transparency_obligation(Obligation),
    artificially_generated_or_manipulated_content(_Content).

artificially_generated_or_manipulated_content(Content) :-
    content(Content).

% Support for practical arrangements
supports_practical_arrangements(Code, Arrangement) :-
    code_of_practice(Code),
    practical_arrangement(Arrangement).

% Making detection mechanisms accessible
makes_detection_mechanisms_accessible(Arrangement, Mechanism) :-
    practical_arrangement(Arrangement),
    detection_mechanism(Mechanism).

% Facilitating cooperation with value chain actors
facilitates_cooperation_with_value_chain_actor(Arrangement, Actor) :-
    practical_arrangement(Arrangement),
    value_chain_actor(Actor).

% Disseminating content or checking authenticity and provenance
disseminates_content(Actor, Content) :-
    value_chain_actor(Actor),
    content(Content).

checks_authenticity_and_provenance(Actor, Content) :-
    value_chain_actor(Actor),
    content(Content).

% Enabling public distinction of AI-generated content
enables_public_distinction_of_ai_generated_content(Code) :-
    code_of_practice(Code),
    facilitates_effective_implementation(Code, _Obligation).
