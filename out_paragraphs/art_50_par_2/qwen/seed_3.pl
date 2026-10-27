:- module(ai_content_marking, [
    provider/1,
    ai_system/1,
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

% Inputs: facts about the world not settled by this text
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic machine_readable_format/1.
:- dynamic detectable_as_artificially_generated/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technically_feasible/1.
:- dynamic takes_into_account_content_specificities/1.
:- dynamic takes_into_account_implementation_costs/1.
:- dynamic takes_into_account_state_of_the_art/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

% Providers of AI systems generating synthetic content must mark outputs
must_mark_output(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_marking_obligation(System).

% General-purpose AI systems are included
must_mark_output(Provider, System) :-
    provider(Provider),
    general_purpose_ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_marking_obligation(System).

% Marking requirements
must_mark_output(_Provider, output(System, Format)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    machine_readable_format(Format),
    detectable_as_artificially_generated(output(System, Format)).

% Technical solution properties obligation
must_ensure_technical_solution_properties(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System),
    takes_into_account_content_specificities(System),
    takes_into_account_implementation_costs(System),
    takes_into_account_state_of_the_art(System).

% Technical solutions must be effective, interoperable, robust and reliable
effective(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

interoperable(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

robust(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

reliable(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

% State of the art may be reflected in relevant technical standards
reflected_in_relevant_technical_standards(state_of_the_art) :-
    takes_into_account_state_of_the_art(_System).

% Exemptions from marking obligation
exempt_marking_obligation(System) :-
    performs_assistive_function_for_standard_editing(System).

exempt_marking_obligation(System) :-
    does_not_substantially_alter_input_data(System).

exempt_marking_obligation(System) :-
    does_not_substantially_alter_semantics(System).

exempt_marking_obligation(System) :-
    authorised_by_law_for_criminal_offences(System).
