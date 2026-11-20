:- module(synthetic_content_marking, [
    covered_ai_system/1,
    covered_content/1,
    permitted_marking_exemption/1,
    exempt_output_marking/1,
    required_output_marking/1,
    must_ensure/2,
    must_take_into_account/2,
    relevant_technical_standard_applies/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic synthetic/1.
:- dynamic audio/1.
:- dynamic image/1.
:- dynamic video/1.
:- dynamic text/1.
:- dynamic output_within_extent/2.
:- dynamic performs_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic authorised_by_law/1.
:- dynamic implements_technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic reflects_state_of_the_art/2.
:- dynamic relevant/1.
:- dynamic technical_standard/1.

covered_content(Content) :-
    synthetic(Content),
    audio(Content).
covered_content(Content) :-
    synthetic(Content),
    image(Content).
covered_content(Content) :-
    synthetic(Content),
    video(Content).
covered_content(Content) :-
    synthetic(Content),
    text(Content).

covered_ai_system(System) :-
    ai_system(System),
    generates_content(System, Content),
    covered_content(Content).
covered_ai_system(System) :-
    general_purpose_ai_system(System),
    generates_content(System, Content),
    covered_content(Content).

permitted_marking_exemption(system_extent(System, Extent)) :-
    performs_function(System, assistive_standard_editing(Extent)).
permitted_marking_exemption(system_extent(System, Extent)) :-
    does_not_substantially_alter(
        System, deployer_provided_input_data_or_semantics(Extent)).
permitted_marking_exemption(system_extent(System, Extent)) :-
    authorised_by_law(use(System, Extent, detect(criminal_offence))).
permitted_marking_exemption(system_extent(System, Extent)) :-
    authorised_by_law(use(System, Extent, prevent(criminal_offence))).
permitted_marking_exemption(system_extent(System, Extent)) :-
    authorised_by_law(use(System, Extent, investigate(criminal_offence))).
permitted_marking_exemption(system_extent(System, Extent)) :-
    authorised_by_law(use(System, Extent, prosecute(criminal_offence))).

exempt_output_marking(system_extent(System, Extent)) :-
    covered_ai_system(System),
    permitted_marking_exemption(system_extent(System, Extent)).

required_output_marking(output_extent(System, Output, Extent)) :-
    covered_ai_system(System),
    output_within_extent(Output, system_extent(System, Extent)),
    \+ permitted_marking_exemption(system_extent(System, Extent)).

must_ensure(Provider, machine_readable_marking(Output, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, Output, Extent)).

must_ensure(Provider,
            detectable_as(Output, Extent, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, Output, Extent)).

must_ensure(Provider, effective(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)),
    technically_feasible(effective(Solution, Extent)).

must_ensure(Provider, interoperable(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)),
    technically_feasible(interoperable(Solution, Extent)).

must_ensure(Provider, robust(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)),
    technically_feasible(robust(Solution, Extent)).

must_ensure(Provider, reliable(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)),
    technically_feasible(reliable(Solution, Extent)).

must_take_into_account(Provider,
                      content_type_specificity_and_limitation(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)).

must_take_into_account(Provider, implementation_cost(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)).

must_take_into_account(Provider,
                      generally_acknowledged_state_of_the_art(Solution, Extent)) :-
    provides_system(Provider, System),
    required_output_marking(output_extent(System, _Output, Extent)),
    implements_technical_solution(Provider, marking(System, Solution)).

relevant_technical_standard_applies(state_of_the_art(Standard, State)) :-
    technical_standard(Standard),
    relevant(Standard),
    reflects_state_of_the_art(Standard, State).
