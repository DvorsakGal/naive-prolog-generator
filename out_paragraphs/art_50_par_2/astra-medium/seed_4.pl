:- module(synthetic_content_transparency, [
    synthetic_content_type_applies/1,
    technical_property_applies/1,
    permitted_transparency_omission/1,
    synthetic_content_transparency_obligation_applies/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic provides_ai_system/2.
:- dynamic generates_content/2.
:- dynamic performs_function/2.
:- dynamic provides_input_data/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic authorised_by_law/1.
:- dynamic implements_technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_art/2.

% These rules cover AI systems generally, including general-purpose AI systems.
% Scope identifies the activity or extent to which an obligation or exception applies.

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

technical_property_applies(effective).
technical_property_applies(interoperable).
technical_property_applies(robust).
technical_property_applies(reliable).

permitted_transparency_omission(activity(System, Scope)) :-
    performs_function(System, assistive(standard_editing, Scope)).

permitted_transparency_omission(activity(System, Scope)) :-
    provides_input_data(Deployer, input(System, Scope, Data)),
    does_not_substantially_alter(
        System, input_data(Deployer, Data, Scope)),
    does_not_substantially_alter(
        System, semantics(input_data(Deployer, Data), Scope)).

permitted_transparency_omission(activity(System, Scope)) :-
    authorised_by_law(
        activity(System, Scope, detect(criminal_offence))).

permitted_transparency_omission(activity(System, Scope)) :-
    authorised_by_law(
        activity(System, Scope, prevent(criminal_offence))).

permitted_transparency_omission(activity(System, Scope)) :-
    authorised_by_law(
        activity(System, Scope, investigate(criminal_offence))).

permitted_transparency_omission(activity(System, Scope)) :-
    authorised_by_law(
        activity(System, Scope, prosecute(criminal_offence))).

synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, Output)) :-
    provides_ai_system(Provider, System),
    generates_content(System, synthetic(Scope, Type, Output)),
    synthetic_content_type_applies(Type),
    \+ permitted_transparency_omission(activity(System, Scope)).

must_ensure(Provider, marking(Output, machine_readable_format)) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, _System, _Scope, Output)).

must_ensure(
        Provider,
        detectable(Output, artificially_generated_or_manipulated)) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, _System, _Scope, Output)).

must_ensure(Provider, property(Solution, Property, Extent)) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, _Output)),
    implements_technical_solution(
        Provider, solution(System, Scope, Solution)),
    technical_property_applies(Property),
    technically_feasible(property(Solution, Property, Extent)).

must_take_into_account(
        Provider,
        solution_design(System, Scope, specificity(various_content_type))) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, _Output)).

must_take_into_account(
        Provider,
        solution_design(System, Scope, limitation(various_content_type))) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, _Output)).

must_take_into_account(
        Provider,
        solution_design(System, Scope, implementation_cost)) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, _Output)).

must_take_into_account(
        Provider,
        solution_design(System, Scope, generally_acknowledged_state_of_art)) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, _Output)).

must_take_into_account(
        Provider,
        solution_design(
            System, Scope,
            generally_acknowledged_state_of_art(reflected_in(Standard)))) :-
    synthetic_content_transparency_obligation_applies(
        generation(Provider, System, Scope, _Output)),
    relevant_technical_standard(Standard),
    reflects_state_of_art(Standard, generally_acknowledged_state_of_art).
