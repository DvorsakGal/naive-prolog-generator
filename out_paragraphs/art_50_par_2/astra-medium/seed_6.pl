:- module(synthetic_content_marking, [
    synthetic_content_generation_applies/1,
    covered_artificial_intelligence_system/1,
    criminal_offence_purpose_applies/1,
    permitted_unmarked_output/1,
    required_output_marking/1,
    technical_solution_obligation_applies/1,
    must_ensure/2,
    must_consider/2,
    permitted_state_of_the_art_evidence/1
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic produces_output/2.
:- dynamic performs_function/2.
:- dynamic preserves_data/2.
:- dynamic preserves_semantics/2.
:- dynamic authorised_by_law_applies/1.
:- dynamic uses_technical_solution/2.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.

covered_artificial_intelligence_system(System) :-
    artificial_intelligence_system(System).

covered_artificial_intelligence_system(System) :-
    general_purpose_artificial_intelligence_system(System).

synthetic_content_generation_applies(System) :-
    covered_artificial_intelligence_system(System),
    generates_content(System, synthetic(audio)).

synthetic_content_generation_applies(System) :-
    covered_artificial_intelligence_system(System),
    generates_content(System, synthetic(image)).

synthetic_content_generation_applies(System) :-
    covered_artificial_intelligence_system(System),
    generates_content(System, synthetic(video)).

synthetic_content_generation_applies(System) :-
    covered_artificial_intelligence_system(System),
    generates_content(System, synthetic(text)).

criminal_offence_purpose_applies(detect).
criminal_offence_purpose_applies(prevent).
criminal_offence_purpose_applies(investigate).
criminal_offence_purpose_applies(prosecute).

% Output-scoped exceptions preserve the limitation "to the extent".
permitted_unmarked_output(output(System, Output)) :-
    produces_output(System, Output),
    performs_function(System, assistive_standard_editing(Output)).

permitted_unmarked_output(output(System, Output)) :-
    produces_output(System, Output),
    preserves_data(System, substance(deployer_input_for(Output))),
    preserves_semantics(System, deployer_input_for(Output)).

permitted_unmarked_output(output(System, Output)) :-
    produces_output(System, Output),
    criminal_offence_purpose_applies(Purpose),
    authorised_by_law_applies(
        operation(System, Output, purpose(Purpose, criminal_offence))
    ).

required_output_marking(output(System, Output)) :-
    synthetic_content_generation_applies(System),
    produces_output(System, Output),
    \+ permitted_unmarked_output(output(System, Output)).

must_ensure(Provider, machine_readable_marking(Output)) :-
    provides_system(Provider, System),
    required_output_marking(output(System, Output)).

must_ensure(
    Provider,
    detectability(Output, as(artificially_generated_or_manipulated))
) :-
    provides_system(Provider, System),
    required_output_marking(output(System, Output)).

technical_solution_obligation_applies(
    provision(Provider, System, Solution)
) :-
    provides_system(Provider, System),
    required_output_marking(output(System, Output)),
    uses_technical_solution(
        System,
        solution(Solution, marking_and_detectability(Output))
    ).

must_ensure(
    Provider,
    effectiveness(Solution, to_extent(technical_feasibility))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_ensure(
    Provider,
    interoperability(Solution, to_extent(technical_feasibility))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_ensure(
    Provider,
    robustness(Solution, to_extent(technical_feasibility))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_ensure(
    Provider,
    reliability(Solution, to_extent(technical_feasibility))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_consider(
    Provider,
    specificity(various_content_type, when_devising(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_consider(
    Provider,
    limitation(various_content_type, when_devising(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_consider(
    Provider,
    implementation_cost(Solution)
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

must_consider(
    Provider,
    generally_acknowledged_state_of_the_art(when_devising(Solution))
) :-
    technical_solution_obligation_applies(
        provision(Provider, _System, Solution)
    ).

permitted_state_of_the_art_evidence(Standard) :-
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(
        Standard,
        generally_acknowledged_state_of_the_art
    ).
