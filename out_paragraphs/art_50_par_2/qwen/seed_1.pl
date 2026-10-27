:- module(synthetic_content_marking, [
    provider_of_ai_system/1,
    general_purpose_ai_system/1,
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

% Input predicates for world knowledge
:- dynamic provider_of_ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic machine_readable_format/1.
:- dynamic detectable_as_artificially_generated/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technically_feasible/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

% Providers of AI systems generating synthetic content must mark outputs
must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    \+ exempt_marking_obligation(Provider).

% Marking must be in machine-readable format and detectable as artificial
must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    machine_readable_format(Output),
    detectable_as_artificially_generated(Output).

% Technical solutions must have required properties when feasible
must_ensure_technical_solution_properties(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _Output),
    technically_feasible(Solution),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution).

% Considerations for technical feasibility
takes_into_account_content_specificities(Solution) :-
    technically_feasible(Solution).

takes_into_account_implementation_costs(Solution) :-
    technically_feasible(Solution).

takes_into_account_state_of_the_art(Solution) :-
    technically_feasible(Solution),
    reflected_in_relevant_technical_standards(Solution).

% Exemptions from marking obligation
exempt_marking_obligation(Provider) :-
    performs_assistive_function_for_standard_editing(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_input_data(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_semantics(Provider).

exempt_marking_obligation(Provider) :-
    authorised_by_law_for_criminal_offences(Provider).
