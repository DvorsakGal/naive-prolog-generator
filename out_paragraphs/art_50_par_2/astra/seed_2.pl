:- module(synthetic_content_marking, [
    covered/1,
    synthetic_content_generation_applies/1,
    exempt_output_marking/1,
    permitted_unmarked_output/1,
    criminal_offence_purpose_applies/1,
    must_ensure/2,
    must_take_into_account/2,
    required_technical_quality/1,
    relevant_state_of_the_art_applies/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic output_of_system/2.
:- dynamic performs_function/2.
:- dynamic non_substantial_input_data_alteration_applies/1.
:- dynamic non_substantial_input_semantics_alteration_applies/1.
:- dynamic authorised_by_law/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.

covered(System) :-
    ai_system(System),
    synthetic_content_generation_applies(System).
covered(System) :-
    general_purpose_ai_system(System),
    synthetic_content_generation_applies(System).

synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(audio)).
synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(image)).
synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(video)).
synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(text)).

% Exceptions are limited to the relevant function or use of the system.
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    Function = assistive(standard_editing).
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    non_substantial_input_data_alteration_applies(
        scope(System, Function, data_provided_by_deployer)).
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    non_substantial_input_semantics_alteration_applies(
        scope(System, Function, data_provided_by_deployer)).
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    criminal_offence_purpose_applies(Function),
    authorised_by_law(scope(System, Function)).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

permitted_unmarked_output(scope(System, Function)) :-
    exempt_output_marking(scope(System, Function)).

must_ensure(Provider, machine_readable_marking(Output)) :-
    provides_system(Provider, System),
    covered(System),
    output_of_system(Output, scope(System, Function)),
    \+ permitted_unmarked_output(scope(System, Function)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    covered(System),
    output_of_system(Output, scope(System, Function)),
    \+ permitted_unmarked_output(scope(System, Function)).

required_technical_quality(effective).
required_technical_quality(interoperable).
required_technical_quality(robust).
required_technical_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, FeasibleExtent)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)),
    required_technical_quality(Quality),
    technically_feasible(quality(Solution, Quality, FeasibleExtent)).

must_take_into_account(Provider, content_type_specificity_and_limitation(Solution)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)).

must_take_into_account(Provider, implementation_cost(Solution)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)).

must_take_into_account(Provider, generally_acknowledged_state_of_the_art(Solution)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)).

relevant_state_of_the_art_applies(reflection(StateOfTheArt, Standard)) :-
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, StateOfTheArt).
