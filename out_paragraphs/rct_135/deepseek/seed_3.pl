:- module(ai_transparency_codes, [
    mandatory_nature_applies/1,
    full_applicability_applies/1,
    may_encourage/2,
    may_facilitate/2,
    objective_facilitate_implementation/1,
    objective_support_arrangements/1,
    objective_facilitate_cooperation/1,
    objective_enable_distinction/1,
    must_detect/2,
    must_label/2,
    artificially_generated/1,
    manipulated/1,
    detection_mechanism/1,
    accessible/1,
    disseminates_content/1,
    checks_authenticity/1,
    checks_provenance/1
]).

:- dynamic transparency_obligation/1.
:- dynamic code_of_practice/1.
:- dynamic actor/1.
:- dynamic ai_generated_content/1.

mandatory_nature_applies(transparency_obligations).
full_applicability_applies(transparency_obligations).

may_encourage(commission, drawing_up(code_of_practice)) :-
    transparency_obligation(_),
    code_of_practice(Code),
    objective_facilitate_implementation(Code).

may_facilitate(commission, drawing_up(code_of_practice)) :-
    transparency_obligation(_),
    code_of_practice(Code),
    objective_facilitate_implementation(Code).

objective_facilitate_implementation(Code) :-
    code_of_practice(Code),
    must_detect(_, Content),
    must_label(_, Content),
    artificially_generated(Content).
objective_facilitate_implementation(Code) :-
    code_of_practice(Code),
    must_detect(_, Content),
    must_label(_, Content),
    manipulated(Content).

objective_support_arrangements(Code) :-
    code_of_practice(Code),
    detection_mechanism(M),
    accessible(M).

objective_facilitate_cooperation(Code) :-
    code_of_practice(Code),
    actor(A),
    actor(B),
    A \= B,
    disseminates_content(A, Content),
    checks_authenticity(B, Content).
objective_facilitate_cooperation(Code) :-
    code_of_practice(Code),
    actor(A),
    actor(B),
    A \= B,
    disseminates_content(A, Content),
    checks_provenance(B, Content).

objective_enable_distinction(Code) :-
    code_of_practice(Code),
    ai_generated_content(Content),
    disseminates_content(_, Content).
