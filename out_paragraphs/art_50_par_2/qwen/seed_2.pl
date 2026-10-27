:- module(synthetic_content_marking, [
    provider_of_ai_system/1,
    generates_synthetic_content/2,
    must_mark_output/2,
    machine_readable_format/1,
    detectable_as_artificially_generated/1,
    must_ensure_technical_solution_properties/2,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    takes_into_account_content_specificities/1,
    takes_into_account_implementation_costs/1,
    takes_into_account_state_of_the_art/1,
    reflected_in_relevant_technical_standards/1,
    exempt_marking_obligation/1,
    performs_assistive_function_for_standard_editing/1,
    does_not_substantially_alter_input_data/1,
    does_not_substantially_alter_semantics/1,
    authorised_by_law_for_criminal_offences/1
]).

% Input predicates for facts not defined in this text
:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic technically_feasible/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

% Providers generating synthetic content must mark outputs
must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    \+ exempt_marking_obligation(Provider),
    output_of(Provider, Output).

% Marking requirements
machine_readable_format(Output) :-
    must_mark_output(_Provider, Output).

detectable_as_artificially_generated(Output) :-
    must_mark_output(_Provider, Output).

% Technical solution properties obligation
must_ensure_technical_solution_properties(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    \+ exempt_marking_obligation(Provider),
    technical_solution_for_marking(Provider, Solution),
    technically_feasible(Solution),
    takes_into_account_content_specificities(Solution),
    takes_into_account_implementation_costs(Solution),
    takes_into_account_state_of_the_art(Solution).

% Required properties of technical solutions
effective(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

interoperable(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

robust(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

reliable(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

% Considerations for technical feasibility
takes_into_account_content_specificities(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

takes_into_account_implementation_costs(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

takes_into_account_state_of_the_art(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

% Exemptions from marking obligation
exempt_marking_obligation(Provider) :-
    performs_assistive_function_for_standard_editing(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_input_data(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_semantics(Provider).

exempt_marking_obligation(Provider) :-
    authorised_by_law_for_criminal_offences(Provider).
