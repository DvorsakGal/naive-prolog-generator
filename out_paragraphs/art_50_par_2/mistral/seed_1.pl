:- module(synthetic_content_marking, [
    must_mark_output/2,
    must_ensure_technical_solution/2,
    exempt_assistive_editing/2,
    exempt_non_substantial_alteration/2,
    exempt_criminal_offence_detection/2
]).

% Providers of AI systems generating synthetic audio, image, video or text content
% shall ensure outputs are marked in a machine-readable format and detectable as
% artificially generated or manipulated.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, ContentType),
    synthetic_content_type(ContentType),
    output_of_ai_system(Output, Provider),
    marked_machine_readable(Output),
    detectable_artificially_generated(Output).

generates_synthetic_content(Provider, audio) :-
    provider_of_ai_system(Provider),
    generates_synthetic_audio(Provider).
generates_synthetic_content(Provider, image) :-
    provider_of_ai_system(Provider),
    generates_synthetic_image(Provider).
generates_synthetic_content(Provider, video) :-
    provider_of_ai_system(Provider),
    generates_synthetic_video(Provider).
generates_synthetic_content(Provider, text) :-
    provider_of_ai_system(Provider),
    generates_synthetic_text(Provider).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art, as may be
% reflected in relevant technical standards.

must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    technical_solution(Provider, Solution),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution, Provider),
    takes_into_account_specificities(Solution),
    takes_into_account_limitations(Solution),
    takes_into_account_costs(Solution),
    takes_into_account_state_of_the_art(Solution).

technically_feasible(Solution, Provider) :-
    technical_solution(Provider, Solution),
    feasible_given_constraints(Solution, Provider).

takes_into_account_specificities(Solution) :-
    considers_content_specificities(Solution).

takes_into_account_limitations(Solution) :-
    considers_content_limitations(Solution).

takes_into_account_costs(Solution) :-
    considers_implementation_costs(Solution).

takes_into_account_state_of_the_art(Solution) :-
    reflects_state_of_the_art(Solution),
    may_reflect_technical_standards(Solution).

% This obligation shall not apply to the extent the AI systems perform an
% assistive function for standard editing...

exempt_assistive_editing(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    performs_assistive_function(System, standard_editing).

% ...or do not substantially alter the input data provided by the deployer
% or the semantics thereof...

exempt_non_substantial_alteration(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    deployer(Deployer, System),
    input_data(Data, Deployer, System),
    \+ substantially_alters(System, Data),
    \+ substantially_alters_semantics(System, Data).

% ...or where authorised by law to detect, prevent, investigate or prosecute
% criminal offences.

exempt_criminal_offence_detection(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System, Purpose),
    criminal_offence_purpose(Purpose).

criminal_offence_purpose(detect_criminal_offences).
criminal_offence_purpose(prevent_criminal_offences).
criminal_offence_purpose(investigate_criminal_offences).
criminal_offence_purpose(prosecute_criminal_offences).

% The marking obligation does not apply where an exemption holds.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    output_of_ai_system(Output, Provider),
    \+ exempt_marking(Provider, Output).

exempt_marking(Provider, Output) :-
    ai_system(Provider, System),
    output_of_ai_system(Output, System),
    exempt_assistive_editing(Provider, System).
exempt_marking(Provider, Output) :-
    ai_system(Provider, System),
    output_of_ai_system(Output, System),
    exempt_non_substantial_alteration(Provider, System).
exempt_marking(Provider, Output) :-
    ai_system(Provider, System),
    output_of_ai_system(Output, System),
    exempt_criminal_offence_detection(Provider, System).

% Inputs: facts about the world the text does not settle.

:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_audio/1.
:- dynamic generates_synthetic_image/1.
:- dynamic generates_synthetic_video/1.
:- dynamic generates_synthetic_text/1.
:- dynamic output_of_ai_system/2.
:- dynamic marked_machine_readable/1.
:- dynamic detectable_artificially_generated/1.
:- dynamic technical_solution/2.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic feasible_given_constraints/2.
:- dynamic considers_content_specificities/1.
:- dynamic considers_content_limitations/1.
:- dynamic considers_implementation_costs/1.
:- dynamic reflects_state_of_the_art/1.
:- dynamic may_reflect_technical_standards/1.
:- dynamic ai_system/2.
:- dynamic performs_assistive_function/2.
:- dynamic standard_editing/1.
:- dynamic deployer/2.
:- dynamic input_data/3.
:- dynamic substantially_alters/2.
:- dynamic substantially_alters_semantics/2.
:- dynamic authorised_by_law/2.
