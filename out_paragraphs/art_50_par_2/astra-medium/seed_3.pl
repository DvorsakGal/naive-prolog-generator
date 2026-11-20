:- module(synthetic_content_marking, [
    covered/1,
    eligible_content_applies/1,
    marking_obligation_applies/1,
    permitted_unmarked_output/1,
    exempt_marking_obligation/1,
    applicable_solution_applies/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic general_purpose_artificial_intelligence_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic produces_output/2.
:- dynamic implements_solution/2.
:- dynamic assistive/1.
:- dynamic provides_input/2.
:- dynamic non_substantial/1.
:- dynamic authorised_by_law/1.
:- dynamic relevant/1.
:- dynamic technical_standard/1.
:- dynamic reflects_state_of_the_art/2.
:- dynamic generally_acknowledged/1.

covered(System) :-
    artificial_intelligence_system(System).
covered(System) :-
    general_purpose_artificial_intelligence_system(System).

eligible_content_applies(synthetic(audio)).
eligible_content_applies(synthetic(image)).
eligible_content_applies(synthetic(video)).
eligible_content_applies(synthetic(text)).

% Extent identifies the portion of the system's operation concerned.
marking_obligation_applies(generation(System, Extent)) :-
    covered(System),
    generates_content(System, generation(Extent, Content)),
    eligible_content_applies(Content),
    \+ permitted_unmarked_output(generation(System, Extent)).

permitted_unmarked_output(generation(System, Extent)) :-
    assistive(function(System, Extent, standard_editing)).

permitted_unmarked_output(generation(System, Extent)) :-
    provides_input(Deployer, input(System, Input)),
    non_substantial(alteration(System, Extent, input_data(Deployer, Input))),
    non_substantial(alteration(System, Extent, semantics(input_data(Deployer, Input)))).

permitted_unmarked_output(generation(System, Extent)) :-
    authorised_by_law(operation(System, Extent, detect(criminal_offence))).
permitted_unmarked_output(generation(System, Extent)) :-
    authorised_by_law(operation(System, Extent, prevent(criminal_offence))).
permitted_unmarked_output(generation(System, Extent)) :-
    authorised_by_law(operation(System, Extent, investigate(criminal_offence))).
permitted_unmarked_output(generation(System, Extent)) :-
    authorised_by_law(operation(System, Extent, prosecute(criminal_offence))).

exempt_marking_obligation(generation(System, Extent)) :-
    covered(System),
    generates_content(System, generation(Extent, Content)),
    eligible_content_applies(Content),
    permitted_unmarked_output(generation(System, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, System),
    marking_obligation_applies(generation(System, Extent)),
    produces_output(System, output(Extent, Output)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    marking_obligation_applies(generation(System, Extent)),
    produces_output(System, output(Extent, Output)).

applicable_solution_applies(solution(Provider, Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(generation(System, Extent)),
    implements_solution(Provider, technical_solution(System, Extent, Solution)).

must_ensure(Provider, effective(Solution, as_far_as(technically_feasible))) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_ensure(Provider, interoperable(Solution, as_far_as(technically_feasible))) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_ensure(Provider, robust(Solution, as_far_as(technically_feasible))) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_ensure(Provider, reliable(Solution, as_far_as(technically_feasible))) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_take_into_account(Provider, technical_solution(Solution, specificity(various_content_type))) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_take_into_account(Provider, technical_solution(Solution, limitation(various_content_type))) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_take_into_account(Provider, technical_solution(Solution, implementation_cost)) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_take_into_account(Provider, technical_solution(Solution, generally_acknowledged_state_of_the_art)) :-
    applicable_solution_applies(solution(Provider, Solution)).

must_take_into_account(Provider, technical_solution(Solution, state_of_the_art(Art, reflected_in(Standard)))) :-
    applicable_solution_applies(solution(Provider, Solution)),
    technical_standard(Standard),
    relevant(Standard),
    reflects_state_of_the_art(Standard, Art),
    generally_acknowledged(state_of_the_art(Art)).
