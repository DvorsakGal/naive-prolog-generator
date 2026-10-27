:- module(ai_output_marking, [
    must_ensure_marking(Provider, Output),
    must_ensure_effectiveness(Provider, TechnicalSolution),
    must_ensure_interoperability(Provider, TechnicalSolution),
    must_ensure_robustness(Provider, TechnicalSolution),
    must_ensure_reliability(Provider, TechnicalSolution),
    technically_feasible(TechnicalSolution),
    exemption_applies(Provider),
    permitted_non_marking(Provider)
]).

% Core obligation
must_ensure_marking(Provider, Output) :-
    provider_of_ai_system(Provider),
    general_purpose_ai_system(Provider),
    generates_synthetic(Provider, Type),
    synthetic_content_type(Type),
    output_of_system(Output, Provider),
    \+ permitted_non_marking(Provider).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Marking requirements
must_ensure_marking(Provider, Output) :-
    must_ensure_marking(Provider, Output),
    marked_in_machine_readable_format(Output).

must_ensure_marking(Provider, Output) :-
    must_ensure_marking(Provider, Output),
    detectable_as_artificial(Output).

% Technical solution quality obligations
must_ensure_effectiveness(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

must_ensure_interoperability(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

must_ensure_robustness(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

must_ensure_reliability(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

technically_feasible(TechnicalSolution) :-
    technical_solution(TechnicalSolution, _Provider),
    takes_into_account(TechnicalSolution, specificities_of(content_type)),
    takes_into_account(TechnicalSolution, costs_of(implementation)),
    takes_into_account(TechnicalSolution, state_of_art).

% Exemptions
permitted_non_marking(Provider) :-
    provider_of_ai_system(Provider),
    exemption_applies(Provider).

exemption_applies(Provider) :-
    performs_assistive_function(Provider, standard_editing).

exemption_applies(Provider) :-
    does_not_substantially_alter(Provider, input_data_provided_by(deployer)),
    does_not_substantially_alter(Provider, semantics_of(input_data_provided_by(deployer))).

exemption_applies(Provider) :-
    authorised_by_law(Provider, detect_criminal_offences).

exemption_applies(Provider) :-
    authorised_by_law(Provider, prevent_criminal_offences).

exemption_applies(Provider) :-
    authorised_by_law(Provider, investigate_criminal_offences).

exemption_applies(Provider) :-
    authorised_by_law(Provider, prosecute_criminal_offences).

:- dynamic provider_of_ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic/2.
:- dynamic output_of_system/2.
:- dynamic technical_solution/2.
:- dynamic takes_into_account/2.
:- dynamic performs_assistive_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic authorised_by_law/2.
:- dynamic marked_in_machine_readable_format/1.
:- dynamic detectable_as_artificial/1.
