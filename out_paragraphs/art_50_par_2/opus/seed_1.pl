:- module(synthetic_content_marking, [
    generates_synthetic_content/1,
    must_ensure/2,
    exempt_output_marking/1,
    synthetic_content_type/1
]).

:- dynamic provider_of/2.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_content/2.
:- dynamic performs_assistive_function/2.
:- dynamic substantially_alters/2.
:- dynamic authorised_by_law/2.
:- dynamic technically_feasible/1.
:- dynamic output_of/2.
:- dynamic technical_solution_of/2.

% Types of synthetic content
synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% AI systems, including general-purpose AI systems, generating synthetic content
generates_synthetic_content(S) :-
    ai_system(S),
    generates_content(S, synthetic(Type)),
    synthetic_content_type(Type).
generates_synthetic_content(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(Type)),
    synthetic_content_type(Type).

% Duty to mark outputs machine-readably and detectably
must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    output_of(Output, S),
    \+ exempt_output_marking(S).
must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    output_of(Output, S),
    \+ exempt_output_marking(S).

% Duty that technical solutions are effective, interoperable, robust and reliable,
% as far as technically feasible, considering content specificities and limitations,
% implementation costs and the generally acknowledged state of the art
must_ensure(Provider, quality(Solution, [effective, interoperable, robust, reliable],
        taking_into_account([content_specificities_and_limitations,
                             implementation_costs,
                             state_of_the_art(technical_standards)]))) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    technical_solution_of(Solution, S),
    technically_feasible(Solution),
    \+ exempt_output_marking(S).

% Exemptions
exempt_output_marking(S) :-
    performs_assistive_function(S, standard_editing).
exempt_output_marking(S) :-
    ai_system(S),
    \+ alters_input_substantially(S).
exempt_output_marking(S) :-
    authorised_by_law(S, detect_prevent_investigate_prosecute(criminal_offence)).

alters_input_substantially(S) :-
    substantially_alters(S, input_data(deployer)).
alters_input_substantially(S) :-
    substantially_alters(S, semantics(input_data(deployer))).
