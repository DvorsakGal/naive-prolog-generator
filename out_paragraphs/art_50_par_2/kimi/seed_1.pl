:- module(ai_content_marking, [
    must_ensure_marking/2,
    must_ensure_technical_solutions/2,
    exempt_marking/1,
    assistive_function/1,
    standard_editing/1,
    does_not_substantially_alter/1,
    authorised_by_law/1,
    synthetic_content/1,
    machine_readable_format/1,
    detectable_as_artificial/1,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    specificities_of_content/1,
    limitations_of_content/1,
    implementation_costs/1,
    state_of_the_art/1,
    relevant_technical_standards/1,
    criminal_offence_purpose/1
]).

% Inputs (not in text, assumed from world knowledge)
:- dynamic deployer_provided_input/1.
:- dynamic input_semantics/1.

% Core obligation: marking requirements
must_ensure_marking(Provider, outputs(AiSystem)) :-
    provider(Provider),
    ai_system(AiSystem),
    generates_synthetic_content(AiSystem),
    \+ exempt_marking(AiSystem).

generates_synthetic_content(AiSystem) :-
    generates_synthetic_audio(AiSystem).
generates_synthetic_content(AiSystem) :-
    generates_synthetic_image(AiSystem).
generates_synthetic_content(AiSystem) :-
    generates_synthetic_video(AiSystem).
generates_synthetic_content(AiSystem) :-
    generates_synthetic_text(AiSystem).

% Marking specifications
machine_readable_format(outputs(AiSystem)) :-
    must_ensure_marking(_Provider, outputs(AiSystem)).

detectable_as_artificial(outputs(AiSystem)) :-
    must_ensure_marking(_Provider, outputs(AiSystem)).

% Technical solutions requirements
must_ensure_technical_solutions(Provider, technical_solutions(AiSystem)) :-
    must_ensure_marking(Provider, outputs(AiSystem)).

effective(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

interoperable(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

robust(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

reliable(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

% Qualification: as far as technically feasible
technically_feasible(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

% Factors to take into account
specificities_of_content(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

limitations_of_content(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

implementation_costs(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

state_of_the_art(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

relevant_technical_standards(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

% Exemptions from marking obligation
exempt_marking(AiSystem) :-
    assistive_function(AiSystem),
    standard_editing(AiSystem).

exempt_marking(AiSystem) :-
    does_not_substantially_alter(AiSystem),
    deployer_provided_input(AiSystem).

exempt_marking(AiSystem) :-
    does_not_substantially_alter(AiSystem),
    input_semantics(AiSystem).

exempt_marking(AiSystem) :-
    authorised_by_law(AiSystem),
    criminal_offence_purpose(AiSystem).

criminal_offence_purpose(AiSystem) :-
    detect_criminal_offence(AiSystem).
criminal_offence_purpose(AiSystem) :-
    prevent_criminal_offence(AiSystem).
criminal_offence_purpose(AiSystem) :-
    investigate_criminal_offence(AiSystem).
criminal_offence_purpose(AiSystem) :-
    prosecute_criminal_offence(AiSystem).

% Types of synthetic content generation (inputs)
:- dynamic generates_synthetic_audio/1.
:- dynamic generates_synthetic_image/1.
:- dynamic generates_synthetic_video/1.
:- dynamic generates_synthetic_text/1.
:- dynamic assistive_function/1.
:- dynamic standard_editing/1.
:- dynamic does_not_substantially_alter/1.
:- dynamic authorised_by_law/1.
:- dynamic detect_criminal_offence/1.
:- dynamic prevent_criminal_offence/1.
:- dynamic investigate_criminal_offence/1.
:- dynamic prosecute_criminal_offence/1.
:- dynamic provider/1.
:- dynamic ai_system/1.
