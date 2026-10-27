:- module(ai_output_marking, [
    must_ensure_marking(Provider, Output),
    must_ensure_technical_solution(Provider, Solution),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution),
    marking_obligation_applies(Provider),
    assistive_function(Output),
    standard_editing(Output),
    substantially_alters_input(Output),
    authorised_for_criminal_purposes(Provider)
]).

% Providers of AI systems generating synthetic content shall ensure outputs are marked
must_ensure_marking(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    marking_obligation_applies(Provider),
    marked_machine_readable(Output),
    detectable_as_artificial(Output).

% Obligation applies unless an exception holds
marking_obligation_applies(Provider) :-
    provider_of_ai_system(Provider),
    \+ exempt_from_marking(Provider).

exempt_from_marking(Provider) :-
    provider_of_ai_system(Provider),
    assistive_function_for_standard_editing(Provider).

exempt_from_marking(Provider) :-
    provider_of_ai_system(Provider),
    does_not_substantially_alter(Provider).

exempt_from_marking(Provider) :-
    provider_of_ai_system(Provider),
    authorised_for_criminal_purposes(Provider).

assistive_function_for_standard_editing(Provider) :-
    provider_of_ai_system(Provider),
    assistive_function(Output),
    standard_editing(Output),
    generates_synthetic_content(Provider, Output).

does_not_substantially_alter(Provider) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    \+ substantially_alters_input(Output).

% Providers shall ensure technical solutions are effective, interoperable, robust, reliable
must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _),
    marking_obligation_applies(Provider),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution).

technically_feasible(Solution) :-
    takes_into_account_specificities(Solution),
    takes_into_account_costs(Solution),
    takes_into_account_state_of_art(Solution).

takes_into_account_specificities(Solution) :-
    technical_solution(Solution),
    content_type_specificities(_).

takes_into_account_costs(Solution) :-
    technical_solution(Solution),
    implementation_costs(_).

takes_into_account_state_of_art(Solution) :-
    technical_solution(Solution),
    state_of_art(technical_standards).

% Dynamic predicates for external facts
:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic marked_machine_readable/1.
:- dynamic detectable_as_artificial/1.
:- dynamic assistive_function/1.
:- dynamic standard_editing/1.
:- dynamic substantially_alters_input/1.
:- dynamic authorised_for_criminal_purposes/1.
:- dynamic technical_solution/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic content_type_specificities/1.
:- dynamic implementation_costs/1.
:- dynamic state_of_art/1.
