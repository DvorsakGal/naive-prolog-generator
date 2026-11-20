:- module(synthetic_content_marking, [
    synthetic_content_system_applies/1,
    synthetic_content_type_applies/1,
    permitted_marking_omission/1,
    exempt_marking_obligation/1,
    marking_obligation_applies/1,
    technical_quality_applies/1,
    criminal_offence_purpose_applies/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic produces_output/2.
:- dynamic performs_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic provides_input_data/2.
:- dynamic deploys_system/2.
:- dynamic authorised_by_law/1.
:- dynamic uses_technical_solution/2.
:- dynamic technically_feasible/1.

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

synthetic_content_system_applies(System) :-
    ai_system(System),
    generates_content(System, synthetic(Type)),
    synthetic_content_type_applies(Type).

synthetic_content_system_applies(System) :-
    general_purpose_ai_system(System),
    generates_content(System, synthetic(Type)),
    synthetic_content_type_applies(Type).

% Exclusions apply only to the extent of the specified function or use.
permitted_marking_omission(System) :-
    performs_function(System, assistive(standard_editing)).

permitted_marking_omission(System) :-
    deploys_system(Deployer, System),
    provides_input_data(Deployer, input_data(System, Data)),
    does_not_substantially_alter(System, Data).

permitted_marking_omission(System) :-
    deploys_system(Deployer, System),
    provides_input_data(Deployer, input_data(System, Data)),
    does_not_substantially_alter(System, semantics(Data)).

permitted_marking_omission(System) :-
    authorised_by_law(use(System, Purpose)),
    criminal_offence_purpose_applies(Purpose).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

exempt_marking_obligation(System) :-
    synthetic_content_system_applies(System),
    permitted_marking_omission(System).

marking_obligation_applies(System) :-
    synthetic_content_system_applies(System),
    \+ permitted_marking_omission(System).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    marking_obligation_applies(System),
    produces_output(System, Output).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    marking_obligation_applies(System),
    produces_output(System, Output).

technical_quality_applies(effective).
technical_quality_applies(interoperable).
technical_quality_applies(robust).
technical_quality_applies(reliable).

must_ensure(Provider, quality(Solution, Quality)) :-
    provides_system(Provider, System),
    marking_obligation_applies(System),
    uses_technical_solution(System, Solution),
    technical_quality_applies(Quality),
    technically_feasible(quality(Solution, Quality)).

must_take_into_account(Provider, solution_design(Solution, specificity_and_limitation(various_content_type))) :-
    provides_system(Provider, System),
    marking_obligation_applies(System),
    uses_technical_solution(System, Solution).

must_take_into_account(Provider, solution_design(Solution, implementation_cost)) :-
    provides_system(Provider, System),
    marking_obligation_applies(System),
    uses_technical_solution(System, Solution).

must_take_into_account(Provider, solution_design(Solution, generally_acknowledged_state_of_the_art(possible_reflection(relevant_technical_standard)))) :-
    provides_system(Provider, System),
    marking_obligation_applies(System),
    uses_technical_solution(System, Solution).
