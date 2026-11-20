:- module(synthetic_content_marking, [
    ai_system_applies/1,
    synthetic_content_generation_applies/1,
    marking_obligation_applies/1,
    permitted_unmarked_output/1,
    exempt_output_marking/1,
    must_ensure/2,
    must_take_into_account/2
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic output_of_system/2.
:- dynamic technical_solution_for_system/2.
:- dynamic performs_assistive_standard_editing/1.
:- dynamic does_not_substantially_alter_deployer_input_data/1.
:- dynamic does_not_substantially_alter_deployer_input_semantics/1.
:- dynamic authorised_by_law/2.
:- dynamic technically_feasible/1.

ai_system_applies(System) :-
    ai_system(System).

ai_system_applies(System) :-
    general_purpose_ai_system(System).

synthetic_content_generation_applies(System) :-
    ai_system_applies(System),
    generates_content(System, synthetic_audio(_Content)).

synthetic_content_generation_applies(System) :-
    ai_system_applies(System),
    generates_content(System, synthetic_image(_Content)).

synthetic_content_generation_applies(System) :-
    ai_system_applies(System),
    generates_content(System, synthetic_video(_Content)).

synthetic_content_generation_applies(System) :-
    ai_system_applies(System),
    generates_content(System, synthetic_text(_Content)).

% Scope identifies the extent of an operation to which an exception applies.

permitted_unmarked_output(operation(System, Scope)) :-
    performs_assistive_standard_editing(operation(System, Scope)).

permitted_unmarked_output(operation(System, Scope)) :-
    does_not_substantially_alter_deployer_input_data(operation(System, Scope)).

permitted_unmarked_output(operation(System, Scope)) :-
    does_not_substantially_alter_deployer_input_semantics(operation(System, Scope)).

permitted_unmarked_output(operation(System, Scope)) :-
    authorised_by_law(operation(System, Scope), detect(criminal_offence)).

permitted_unmarked_output(operation(System, Scope)) :-
    authorised_by_law(operation(System, Scope), prevent(criminal_offence)).

permitted_unmarked_output(operation(System, Scope)) :-
    authorised_by_law(operation(System, Scope), investigate(criminal_offence)).

permitted_unmarked_output(operation(System, Scope)) :-
    authorised_by_law(operation(System, Scope), prosecute(criminal_offence)).

exempt_output_marking(operation(System, Scope)) :-
    permitted_unmarked_output(operation(System, Scope)).

marking_obligation_applies(operation(System, Scope)) :-
    synthetic_content_generation_applies(System),
    output_of_system(_Output, operation(System, Scope)),
    \+ permitted_unmarked_output(operation(System, Scope)).

must_ensure(Provider, machine_readable_marking(Output)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    output_of_system(Output, operation(System, Scope)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    output_of_system(Output, operation(System, Scope)).

must_ensure(Provider, effective(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)),
    technically_feasible(effective(Solution)).

must_ensure(Provider, interoperable(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)),
    technically_feasible(interoperable(Solution)).

must_ensure(Provider, robust(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)),
    technically_feasible(robust(Solution)).

must_ensure(Provider, reliable(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)),
    technically_feasible(reliable(Solution)).

must_take_into_account(Provider, specificity_of_content_type(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)).

must_take_into_account(Provider, limitation_of_content_type(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)).

must_take_into_account(Provider, implementation_cost(Solution)) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)).

must_take_into_account(Provider, generally_acknowledged_state_of_art(
    Solution, possible_reflection_in(relevant_technical_standard))) :-
    provides_system(Provider, System),
    marking_obligation_applies(operation(System, Scope)),
    technical_solution_for_system(Solution, operation(System, Scope)).
