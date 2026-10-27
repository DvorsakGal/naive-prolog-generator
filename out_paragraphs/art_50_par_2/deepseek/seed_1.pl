:- module(ai_output_marking, [
    must_ensure_marking(Provider, Output),
    must_ensure_technical_solutions(Provider, Solution),
    marking_obligation_applies(Provider),
    exempt_marking_obligation(Provider),
    assistive_editing_function(Output),
    substantially_alters_input(Output),
    authorised_for_criminal_purposes(Provider)
]).

% Core obligation: providers shall ensure outputs are marked and detectable
must_ensure_marking(Provider, Output) :-
    marking_obligation_applies(Provider),
    provider_of_ai_system(Provider, System),
    generates_synthetic_content(System, Output),
    must_be_marked(Output, machine_readable),
    must_be_detectable(Output, artificially_generated_or_manipulated).

% Providers shall ensure technical solutions meet quality criteria
must_ensure_technical_solutions(Provider, Solution) :-
    marking_obligation_applies(Provider),
    provider_of_ai_system(Provider, System),
    technical_solution_for(System, Solution),
    must_be_effective(Solution),
    must_be_interoperable(Solution),
    must_be_robust(Solution),
    must_be_reliable(Solution),
    technically_feasible(Solution, state_of_art).

% The obligation applies unless an exemption holds
marking_obligation_applies(Provider) :-
    provider_of_ai_system(Provider, _),
    \+ exempt_marking_obligation(Provider).

% Exemption: assistive function for standard editing
exempt_marking_obligation(Provider) :-
    provider_of_ai_system(Provider, System),
    performs_assistive_function(System, standard_editing).

% Exemption: does not substantially alter input data or its semantics
exempt_marking_obligation(Provider) :-
    provider_of_ai_system(Provider, System),
    processes_input_data(System, Input),
    \+ substantially_alters_input(Input).

% Exemption: authorised by law for criminal offence purposes
exempt_marking_obligation(Provider) :-
    provider_of_ai_system(Provider, System),
    authorised_by_law(System, purpose(detect_prevent_investigate_prosecute(criminal_offences))).

% Input predicates - facts about the world not settled by this text
:- dynamic provider_of_ai_system/2.
:- dynamic generates_synthetic_content/2.
:- dynamic technical_solution_for/2.
:- dynamic performs_assistive_function/2.
:- dynamic processes_input_data/2.
:- dynamic authorised_by_law/2.
:- dynamic technically_feasible/2.

% Quality criteria for solutions
must_be_effective(Solution) :-
    technical_solution_for(_, Solution),
    effective(Solution).

must_be_interoperable(Solution) :-
    technical_solution_for(_, Solution),
    interoperable(Solution).

must_be_robust(Solution) :-
    technical_solution_for(_, Solution),
    robust(Solution).

must_be_reliable(Solution) :-
    technical_solution_for(_, Solution),
    reliable(Solution).

% Output marking requirements
must_be_marked(Output, machine_readable) :-
    generates_synthetic_content(_, Output),
    marked_in_format(Output, machine_readable).

must_be_detectable(Output, artificially_generated_or_manipulated) :-
    generates_synthetic_content(_, Output),
    detectable_as(Output, artificially_generated_or_manipulated).

% Dynamic predicates for qualities and marking states
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic marked_in_format/2.
:- dynamic detectable_as/2.
:- dynamic substantially_alters_input/1.
