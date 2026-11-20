:- module(synthetic_content_transparency, [
    covered_artificial_intelligence_system/1,
    covered_synthetic_content/1,
    criminal_justice_purpose_applies/1,
    permitted_unmarked_output/1,
    exempt_output_transparency/1,
    required_output_transparency/1,
    required_technical_solution_quality/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_output/2.
:- dynamic synthetic/1.
:- dynamic audio/1.
:- dynamic image/1.
:- dynamic video/1.
:- dynamic text/1.
:- dynamic performs_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic authorised_by_law/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant/1.
:- dynamic technical_standard/1.
:- dynamic reflects_state_of_the_art/2.
:- dynamic generally_acknowledged/1.

covered_artificial_intelligence_system(System) :-
    artificial_intelligence_system(System).

covered_artificial_intelligence_system(System) :-
    general_purpose_artificial_intelligence_system(System).

covered_synthetic_content(Output) :-
    synthetic(Output),
    audio(Output).

covered_synthetic_content(Output) :-
    synthetic(Output),
    image(Output).

covered_synthetic_content(Output) :-
    synthetic(Output),
    video(Output).

covered_synthetic_content(Output) :-
    synthetic(Output),
    text(Output).

criminal_justice_purpose_applies(detect_criminal_offence).
criminal_justice_purpose_applies(prevent_criminal_offence).
criminal_justice_purpose_applies(investigate_criminal_offence).
criminal_justice_purpose_applies(prosecute_criminal_offence).

% The output argument limits each exception to its applicable extent.

permitted_unmarked_output(Output) :-
    generates_output(System, Output),
    performs_function(System, assistive_standard_editing(output(Output))).

permitted_unmarked_output(Output) :-
    generates_output(System, Output),
    does_not_substantially_alter(
        System,
        deployer_provided_input_data(output(Output))
    ).

permitted_unmarked_output(Output) :-
    generates_output(System, Output),
    does_not_substantially_alter(
        System,
        semantics(deployer_provided_input_data(output(Output)))
    ).

permitted_unmarked_output(Output) :-
    generates_output(System, Output),
    authorised_by_law(use(System, output(Output), Purpose)),
    criminal_justice_purpose_applies(Purpose).

exempt_output_transparency(Output) :-
    permitted_unmarked_output(Output).

required_output_transparency(Output) :-
    covered_artificial_intelligence_system(System),
    generates_output(System, Output),
    covered_synthetic_content(Output),
    \+ permitted_unmarked_output(Output).

must_ensure(Provider, marking(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output).

must_ensure(
    Provider,
    detectability(Output, artificially_generated_or_manipulated)
) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output).

required_technical_solution_quality(quality(Solution, effective)) :-
    implements_solution(_Provider, solution(Solution, output(Output))),
    required_output_transparency(Output),
    technically_feasible(quality(Solution, effective)).

required_technical_solution_quality(quality(Solution, interoperable)) :-
    implements_solution(_Provider, solution(Solution, output(Output))),
    required_output_transparency(Output),
    technically_feasible(quality(Solution, interoperable)).

required_technical_solution_quality(quality(Solution, robust)) :-
    implements_solution(_Provider, solution(Solution, output(Output))),
    required_output_transparency(Output),
    technically_feasible(quality(Solution, robust)).

required_technical_solution_quality(quality(Solution, reliable)) :-
    implements_solution(_Provider, solution(Solution, output(Output))),
    required_output_transparency(Output),
    technically_feasible(quality(Solution, reliable)).

must_ensure(Provider, quality(Solution, Quality)) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output),
    implements_solution(Provider, solution(Solution, output(Output))),
    required_technical_solution_quality(quality(Solution, Quality)).

must_take_into_account(
    Provider,
    specificity(various_content_type, technical_solution(Solution))
) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output),
    implements_solution(Provider, solution(Solution, output(Output))).

must_take_into_account(
    Provider,
    limitation(various_content_type, technical_solution(Solution))
) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output),
    implements_solution(Provider, solution(Solution, output(Output))).

must_take_into_account(
    Provider,
    implementation_cost(technical_solution(Solution))
) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output),
    implements_solution(Provider, solution(Solution, output(Output))).

must_take_into_account(
    Provider,
    generally_acknowledged_state_of_the_art(technical_solution(Solution))
) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output),
    implements_solution(Provider, solution(Solution, output(Output))).

must_take_into_account(
    Provider,
    state_of_the_art_reflection(State, Standard, technical_solution(Solution))
) :-
    provides_system(Provider, System),
    generates_output(System, Output),
    required_output_transparency(Output),
    implements_solution(Provider, solution(Solution, output(Output))),
    technical_standard(Standard),
    relevant(Standard),
    reflects_state_of_the_art(Standard, State),
    generally_acknowledged(State).
