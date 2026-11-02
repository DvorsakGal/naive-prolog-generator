:- module(synthetic_content_marking, [
    generates_synthetic_content/1,
    must_ensure/2,
    exempt_output_marking/1,
    technical_solution_standard_met/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provider_of/2.
:- dynamic generates_content/2.
:- dynamic synthetic_content_type/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic substantially_alters_input_data/1.
:- dynamic substantially_alters_input_semantics/1.
:- dynamic authorised_by_law_for_criminal_offence/1.
:- dynamic technically_feasible/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technical_solution_of/2.

% Synthetic content types
synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

generates_synthetic_content(S) :-
    ai_system(S),
    generates_content(S, Type),
    synthetic_content_type(Type).
generates_synthetic_content(S) :-
    general_purpose_ai_system(S),
    generates_content(S, Type),
    synthetic_content_type(Type).

% Exemptions
exempt_output_marking(S) :-
    performs_assistive_function_for_standard_editing(S).
exempt_output_marking(S) :-
    generates_synthetic_content(S),
    \+ alters_input(S).
exempt_output_marking(S) :-
    authorised_by_law_for_criminal_offence(S).

alters_input(S) :- substantially_alters_input_data(S).
alters_input(S) :- substantially_alters_input_semantics(S).

% Marking obligation
must_ensure(Provider, output_marked(S, machine_readable_format)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    \+ exempt_output_marking(S).
must_ensure(Provider, output_detectable(S, artificially_generated_or_manipulated)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    \+ exempt_output_marking(S).

% Quality of technical solutions, as far as technically feasible, taking into
% account content specificities, implementation costs and state of the art
must_ensure(Provider, technical_solution_quality(T, considering(content_specificity, implementation_cost, state_of_the_art))) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    technical_solution_of(T, S),
    technically_feasible(T).

technical_solution_standard_met(T) :-
    effective(T),
    interoperable(T),
    robust(T),
    reliable(T).

alters_input(_) :- fail.
