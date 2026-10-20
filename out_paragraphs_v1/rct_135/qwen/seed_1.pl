:- module(transparency_codes_of_practice, [
    transparency_obligation/1,
    mandatory/1,
    fully_applicable/1,
    commission/1,
    may_encourage/2,
    may_facilitate/2,
    code_of_practice/1,
    union_level/1,
    obligation_regarding/2,
    detection_of_content/1,
    labelling_of_content/1,
    artificially_generated_or_manipulated/1,
    support_practical_arrangement/2,
    making_detection_mechanism_accessible/1,
    facilitate_cooperation/2,
    actor_along_value_chain/1,
    disseminating_content/1,
    checking_authenticity_and_provenance/1,
    enable_public_distinction/1,
    ai_generated_content/1
]).

% Input predicates for entities and facts not defined in this text
:- dynamic transparency_obligation/1.
:- dynamic commission/1.
:- dynamic code_of_practice/1.
:- dynamic actor_along_value_chain/1.
:- dynamic ai_generated_content/1.

% Properties of transparency obligations
mandatory(O) :-
    transparency_obligation(O).

fully_applicable(O) :-
    transparency_obligation(O).

% Commission permissions regarding codes of practice
may_encourage(C, drawing_up_code_of_practice(Code)) :-
    commission(C),
    code_of_practice(Code),
    union_level(Code).

may_facilitate(C, drawing_up_code_of_practice(Code)) :-
    commission(C),
    code_of_practice(Code),
    union_level(Code).

union_level(_Code).

% Purpose of codes of practice: effective implementation of specific obligations
obligation_regarding(Code, detection_of_content(Content)) :-
    code_of_practice(Code),
    artificially_generated_or_manipulated(Content).

obligation_regarding(Code, labelling_of_content(Content)) :-
    code_of_practice(Code),
    artificially_generated_or_manipulated(Content).

artificially_generated_or_manipulated(_Content).

% Support for practical arrangements
support_practical_arrangement(Code, making_detection_mechanism_accessible(Mechanism)) :-
    code_of_practice(Code),
    obligation_regarding(Code, detection_of_content(_)).

making_detection_mechanism_accessible(_Mechanism).

% Facilitation of cooperation along the value chain
facilitate_cooperation(Code, Actor) :-
    code_of_practice(Code),
    actor_along_value_chain(Actor).

% Activities of actors along the value chain relevant to the code
disseminating_content(Actor) :-
    actor_along_value_chain(Actor).

checking_authenticity_and_provenance(Actor) :-
    actor_along_value_chain(Actor).

% Objective: enabling public distinction of AI-generated content
enable_public_distinction(Code) :-
    code_of_practice(Code),
    obligation_regarding(Code, labelling_of_content(Content)),
    ai_generated_content(Content).
