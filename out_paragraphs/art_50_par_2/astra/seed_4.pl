:- module(synthetic_content_marking, [
    covered_content/1,
    covered_generation/1,
    permitted_unmarked_generation/1,
    exempt_output_marking/1,
    must_ensure/2,
    must_take_into_account/2,
    required_solution_quality/1,
    relevant_state_of_the_art/1
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic synthetic/1.
:- dynamic audio/1.
:- dynamic image/1.
:- dynamic video/1.
:- dynamic text/1.
:- dynamic performs_function/2.
:- dynamic non_substantial_input_alteration_applies/1.
:- dynamic non_substantial_semantic_alteration_applies/1.
:- dynamic authorised_by_law/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic reflects_state_of_the_art/2.
:- dynamic relevant_technical_standard/1.
:- dynamic generally_acknowledged_state_of_the_art/1.

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

covered_generation(generation(System, Output)) :-
    artificial_intelligence_system(System),
    generates_content(System, Output),
    covered_content(Output).
covered_generation(generation(System, Output)) :-
    general_purpose_artificial_intelligence_system(System),
    generates_content(System, Output),
    covered_content(Output).

permitted_unmarked_generation(generation(System, Output)) :-
    performs_function(System, assistive_standard_editing(Output)).
permitted_unmarked_generation(generation(System, Output)) :-
    non_substantial_input_alteration_applies(
        generation(System, Output, input_data_provided_by_deployer)).
permitted_unmarked_generation(generation(System, Output)) :-
    non_substantial_semantic_alteration_applies(
        generation(System, Output, input_data_provided_by_deployer)).
permitted_unmarked_generation(generation(System, Output)) :-
    authorised_by_law(
        generation(System, Output, detect(criminal_offence))).
permitted_unmarked_generation(generation(System, Output)) :-
    authorised_by_law(
        generation(System, Output, prevent(criminal_offence))).
permitted_unmarked_generation(generation(System, Output)) :-
    authorised_by_law(
        generation(System, Output, investigate(criminal_offence))).
permitted_unmarked_generation(generation(System, Output)) :-
    authorised_by_law(
        generation(System, Output, prosecute(criminal_offence))).

exempt_output_marking(Generation) :-
    covered_generation(Generation),
    permitted_unmarked_generation(Generation).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    covered_generation(generation(System, Output)),
    \+ exempt_output_marking(generation(System, Output)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    covered_generation(generation(System, Output)),
    \+ exempt_output_marking(generation(System, Output)).

required_solution_quality(effective).
required_solution_quality(interoperable).
required_solution_quality(robust).
required_solution_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, extent(Extent))) :-
    provides_system(Provider, System),
    covered_generation(generation(System, Output)),
    \+ exempt_output_marking(generation(System, Output)),
    implements_solution(Provider, output_marking(System, Output, Solution)),
    required_solution_quality(Quality),
    technically_feasible(quality(Solution, Quality, extent(Extent))).

must_take_into_account(Provider, content_type_specificity_and_limitation(Solution)) :-
    provides_system(Provider, System),
    covered_generation(generation(System, Output)),
    \+ exempt_output_marking(generation(System, Output)),
    implements_solution(Provider, output_marking(System, Output, Solution)).

must_take_into_account(Provider, implementation_cost(Solution)) :-
    provides_system(Provider, System),
    covered_generation(generation(System, Output)),
    \+ exempt_output_marking(generation(System, Output)),
    implements_solution(Provider, output_marking(System, Output, Solution)).

must_take_into_account(Provider, generally_acknowledged_state_of_the_art(Solution)) :-
    provides_system(Provider, System),
    covered_generation(generation(System, Output)),
    \+ exempt_output_marking(generation(System, Output)),
    implements_solution(Provider, output_marking(System, Output, Solution)).

relevant_state_of_the_art(State) :-
    generally_acknowledged_state_of_the_art(State).
relevant_state_of_the_art(reflection(Standard, State)) :-
    generally_acknowledged_state_of_the_art(State),
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, State).
