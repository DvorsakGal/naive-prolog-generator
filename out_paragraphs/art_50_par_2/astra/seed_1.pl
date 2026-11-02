:- module(synthetic_content_marking, [
    content_type_applies/1,
    synthetic_content_obligation_applies/1,
    permitted_exemption/1,
    exempt_synthetic_content_obligation/1,
    must_ensure/2,
    must_take_into_account/2,
    technical_quality_applies/1,
    criminal_offence_purpose_applies/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic performs_assistive_function/2.
:- dynamic does_not_substantially_alter/1.
:- dynamic authorised_by_law/1.
:- dynamic deployer_provided/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.
:- dynamic generally_acknowledged/1.

content_type_applies(audio).
content_type_applies(image).
content_type_applies(video).
content_type_applies(text).

synthetic_content_obligation_applies(scope(System, Extent)) :-
    ai_system(System),
    generates_content(System, synthetic_content(Type, _Output, Extent)),
    content_type_applies(Type),
    \+ permitted_exemption(scope(System, Extent)).

synthetic_content_obligation_applies(scope(System, Extent)) :-
    general_purpose_ai_system(System),
    generates_content(System, synthetic_content(Type, _Output, Extent)),
    content_type_applies(Type),
    \+ permitted_exemption(scope(System, Extent)).

permitted_exemption(scope(System, Extent)) :-
    performs_assistive_function(System, standard_editing(Extent)).

permitted_exemption(scope(System, Extent)) :-
    deployer_provided(input_data(System, Data, Extent)),
    does_not_substantially_alter(input_data(System, Data, Extent)).

permitted_exemption(scope(System, Extent)) :-
    deployer_provided(input_data(System, Data, Extent)),
    does_not_substantially_alter(semantics(System, Data, Extent)).

permitted_exemption(scope(System, Extent)) :-
    authorised_by_law(use(System, Extent, Purpose)),
    criminal_offence_purpose_applies(Purpose).

exempt_synthetic_content_obligation(scope(System, Extent)) :-
    permitted_exemption(scope(System, Extent)).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

must_ensure(Provider, marked(Output, machine_readable_format, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    generates_content(System, synthetic_content(Type, Output, Extent)),
    content_type_applies(Type).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    generates_content(System, synthetic_content(Type, Output, Extent)),
    content_type_applies(Type).

technical_quality_applies(effective).
technical_quality_applies(interoperable).
technical_quality_applies(robust).
technical_quality_applies(reliable).

must_ensure(Provider, technical_quality(Solution, Quality, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)),
    technical_quality_applies(Quality),
    technically_feasible(technical_quality(Solution, Quality, Extent)).

must_take_into_account(Provider, specificity_and_limitation(various_content_type, Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)).

must_take_into_account(Provider, implementation_cost(Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)).

must_take_into_account(Provider, generally_acknowledged_state_of_the_art(Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)).

must_take_into_account(Provider, state_of_the_art(Art, reflected_in(Standard), Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)),
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, Art),
    generally_acknowledged(Art).
