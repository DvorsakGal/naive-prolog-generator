:- module(ai_transparency_codes, [
    mandatory_nature_applies/1,
    full_applicability_applies/1,
    may_encourage/2,
    may_facilitate/2,
    objective_effective_implementation/1,
    objective_accessible_detection_mechanisms/1,
    objective_cooperation/1,
    objective_distinguishing_content/1
]).

:- dynamic transparency_obligation/1.
:- dynamic detection_and_labelling_obligation/1.
:- dynamic artificially_generated_or_manipulated_content/1.
:- dynamic actor_along_value_chain/1.

mandatory_nature_applies(transparency_obligations).
full_applicability_applies(transparency_obligations).

may_encourage(commission, drawing_up(codes_of_practice(union_level))) :-
    objective_effective_implementation(codes_of_practice(union_level)).

may_facilitate(commission, drawing_up(codes_of_practice(union_level))) :-
    objective_effective_implementation(codes_of_practice(union_level)).

objective_effective_implementation(codes_of_practice(union_level)) :-
    detection_and_labelling_obligation(Obligation),
    artificially_generated_or_manipulated_content(Content),
    must_implement(Obligation, Content).

objective_accessible_detection_mechanisms(codes_of_practice(union_level)) :-
    detection_and_labelling_obligation(_),
    artificially_generated_or_manipulated_content(_).

objective_cooperation(codes_of_practice(union_level)) :-
    actor_along_value_chain(Actor),
    detection_and_labelling_obligation(_),
    artificially_generated_or_manipulated_content(_).

objective_distinguishing_content(codes_of_practice(union_level)) :-
    artificially_generated_or_manipulated_content(Content),
    must_distinguish(public, Content).

must_implement(Obligation, Content) :-
    detection_and_labelling_obligation(Obligation),
    artificially_generated_or_manipulated_content(Content).

must_distinguish(public, Content) :-
    artificially_generated_or_manipulated_content(Content).
