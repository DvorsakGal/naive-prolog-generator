:- module(marking_synthetic_content, [
    must_ensure(2),
    exempt_synthetic_content_obligation(1),
    generates_synthetic_content(1),
    effective_interoperable_robust_reliable(1)
]).

:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_audio(1).
:- dynamic generates_synthetic_image(1).
:- dynamic generates_synthetic_video(1).
:- dynamic generates_synthetic_text(1).
:- dynamic provides_system/2.
:- dynamic performs_assistive_function_standard_editing(1).
:- dynamic does_not_substantially_alter_input_data_or_semantics(1).
:- dynamic authorised_by_law_criminal_offence_purpose(1).
:- dynamic technically_feasible(1).
:- dynamic takes_into_account_content_specificities(1).
:- dynamic takes_into_account_implementation_costs(1).
:- dynamic takes_into_account_state_of_art(1).

% Content generation qualification
generates_synthetic_content(System) :-
    generates_synthetic_audio(System).
generates_synthetic_content(System) :-
    generates_synthetic_image(System).
generates_synthetic_content(System) :-
    generates_synthetic_video(System).
generates_synthetic_content(System) :-
    generates_synthetic_text(System).

% Exceptions to the obligation
exempt_synthetic_content_obligation(System) :-
    performs_assistive_function_standard_editing(System).
exempt_synthetic_content_obligation(System) :-
    does_not_substantially_alter_input_data_or_semantics(System).
exempt_synthetic_content_obligation(System) :-
    authorised_by_law_criminal_offence_purpose(System).

% Technical solution requirements
effective_interoperable_robust_reliable(System) :-
    technically_feasible(System),
    takes_into_account_content_specificities(System),
    takes_into_account_implementation_costs(System),
    takes_into_account_state_of_art(System).

% Obligation on providers to mark outputs and ensure technical solutions
must_ensure(Provider, marked_and_detectable_output(System)) :-
    provider(Provider),
    provides_system(Provider, System),
    ai_system(System),
    generates_synthetic_content(System),
    \+ exempt_synthetic_content_obligation(System).

must_ensure(Provider, effective_interoperable_robust_reliable_solutions(System)) :-
    provider(Provider),
    provides_system(Provider, System),
    ai_system(System),
    generates_synthetic_content(System),
    effective_interoperable_robust_reliable(System),
    \+ exempt_synthetic_content_obligation(System).
