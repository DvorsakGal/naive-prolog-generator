:- module(synthetic_content_marking, [
    artificial_intelligence_system/1,
    synthetic_content_type_applies/1,
    synthetic_content_generation_applies/1,
    permitted_unmarked_output/1,
    exempt_output_marking/1,
    required_output_marking/1,
    must_ensure/2,
    must_take_into_account/2,
    possible/1
]).

:- dynamic other_artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic generation_extent_applies/1.
:- dynamic performs_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic provides_input_data/2.
:- dynamic deploys_system/2.
:- dynamic authorised_by_law/1.
:- dynamic produces_output/2.
:- dynamic implements_technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.

artificial_intelligence_system(System) :-
    other_artificial_intelligence_system(System).

artificial_intelligence_system(System) :-
    general_purpose_artificial_intelligence_system(System).

synthetic_content_type_applies(audio).
synthetic_content_type_applies(image).
synthetic_content_type_applies(video).
synthetic_content_type_applies(text).

synthetic_content_generation_applies(System) :-
    artificial_intelligence_system(System),
    generates_content(System, synthetic(ContentType)),
    synthetic_content_type_applies(ContentType).

% Extent represents the part of the system's operation to which a duty
% or an exception applies.

permitted_unmarked_output(operation(System, Extent)) :-
    performs_function(System, within(Extent, assistive_function(standard_editing))).

permitted_unmarked_output(operation(System, Extent)) :-
    deploys_system(Deployer, System),
    provides_input_data(Deployer, input_data(System, InputData)),
    does_not_substantially_alter(
        System,
        within(Extent, input_data(InputData))
    ).

permitted_unmarked_output(operation(System, Extent)) :-
    deploys_system(Deployer, System),
    provides_input_data(Deployer, input_data(System, InputData)),
    does_not_substantially_alter(
        System,
        within(Extent, semantics(InputData))
    ).

permitted_unmarked_output(operation(System, Extent)) :-
    authorised_by_law(
        operation(System, Extent, detect(criminal_offence))
    ).

permitted_unmarked_output(operation(System, Extent)) :-
    authorised_by_law(
        operation(System, Extent, prevent(criminal_offence))
    ).

permitted_unmarked_output(operation(System, Extent)) :-
    authorised_by_law(
        operation(System, Extent, investigate(criminal_offence))
    ).

permitted_unmarked_output(operation(System, Extent)) :-
    authorised_by_law(
        operation(System, Extent, prosecute(criminal_offence))
    ).

exempt_output_marking(operation(System, Extent)) :-
    synthetic_content_generation_applies(System),
    generation_extent_applies(operation(System, Extent)),
    permitted_unmarked_output(operation(System, Extent)).

required_output_marking(operation(System, Extent)) :-
    synthetic_content_generation_applies(System),
    generation_extent_applies(operation(System, Extent)),
    \+ permitted_unmarked_output(operation(System, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    produces_output(System, within(Extent, Output)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    produces_output(System, within(Extent, Output)).

must_ensure(Provider, effective(Solution)) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)),
    technically_feasible(effective(Solution)).

must_ensure(Provider, interoperable(Solution)) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)),
    technically_feasible(interoperable(Solution)).

must_ensure(Provider, robust(Solution)) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)),
    technically_feasible(robust(Solution)).

must_ensure(Provider, reliable(Solution)) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)),
    technically_feasible(reliable(Solution)).

must_take_into_account(
    Provider,
    technical_solution(Solution, specificity(various_content_type))
) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)).

must_take_into_account(
    Provider,
    technical_solution(Solution, limitation(various_content_type))
) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)).

must_take_into_account(
    Provider,
    technical_solution(Solution, implementation_cost)
) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)).

must_take_into_account(
    Provider,
    technical_solution(Solution, generally_acknowledged_state_of_the_art)
) :-
    provides_system(Provider, System),
    required_output_marking(operation(System, Extent)),
    implements_technical_solution(Provider, output_marking(System, Extent, Solution)).

possible(reflection(generally_acknowledged_state_of_the_art, Standard)) :-
    relevant_technical_standard(Standard).
