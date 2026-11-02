:- module(synthetic_content_marking, [
    generates_synthetic_content/1,
    must_ensure/2,
    exempt_marking_obligation/1,
    marking_obligation_applies/1,
    synthetic_content_type/1
]).

:- dynamic provider_of/2.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_content/2.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic substantially_alters_input_data/1.
:- dynamic substantially_alters_input_semantics/1.
:- dynamic authorised_by_law_for_criminal_offence_purpose/1.
:- dynamic technically_feasible/1.

% Types of synthetic content
synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% AI systems, including general-purpose AI systems, generating synthetic content
generates_synthetic_content(S) :-
    ai_system(S),
    generates_content(S, synthetic(T)),
    synthetic_content_type(T).
generates_synthetic_content(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(T)),
    synthetic_content_type(T).

% Exceptions to the obligation
exempt_marking_obligation(S) :-
    performs_assistive_function_for_standard_editing(S).
exempt_marking_obligation(S) :-
    generates_synthetic_content(S),
    \+ substantially_alters_input_data(S),
    \+ substantially_alters_input_semantics(S).
exempt_marking_obligation(S) :-
    authorised_by_law_for_criminal_offence_purpose(S).

substantially_alters_input_data(_) :- fail.
substantially_alters_input_semantics(_) :- fail.

marking_obligation_applies(S) :-
    generates_synthetic_content(S),
    \+ exempt_marking_obligation(S).

% Outputs marked machine-readably and detectable as artificially generated or manipulated
must_ensure(P, marked(output(S), machine_readable_format)) :-
    provider_of(P, S),
    marking_obligation_applies(S).
must_ensure(P, detectable(output(S), artificially_generated_or_manipulated)) :-
    provider_of(P, S),
    marking_obligation_applies(S).

% Technical solutions effective, interoperable, robust, reliable as far as feasible,
% taking into account content specificities and limitations, implementation costs,
% and generally acknowledged state of the art (as reflected in technical standards)
must_ensure(P, technical_solution(S, Quality, considering([content_specificities_and_limitations, implementation_cost, state_of_the_art(technical_standard)]))) :-
    provider_of(P, S),
    marking_obligation_applies(S),
    technically_feasible(S),
    member_quality(Quality).

member_quality(effective).
member_quality(interoperable).
member_quality(robust).
member_quality(reliable).
