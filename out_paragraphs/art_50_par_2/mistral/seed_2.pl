:- module(synthetic_content_marking, [
    must_mark_output/2,
    must_ensure_technical_solution/2,
    exempt_assistive_editing/2,
    exempt_non_substantial_alteration/2,
    exempt_criminal_justice/2
]).

% Providers of AI systems generating synthetic audio, image, video or text content
% shall ensure outputs are marked in a machine-readable format and detectable as
% artificially generated or manipulated.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider),
    ai_output(Output, Provider),
    synthetic_content_type(Output).

generates_synthetic_content(Provider) :-
    generates_synthetic_audio(Provider).
generates_synthetic_content(Provider) :-
    generates_synthetic_image(Provider).
generates_synthetic_content(Provider) :-
    generates_synthetic_video(Provider).
generates_synthetic_content(Provider) :-
    generates_synthetic_text(Provider).

synthetic_content_type(Output) :-
    synthetic_audio(Output).
synthetic_content_type(Output) :-
    synthetic_image(Output).
synthetic_content_type(Output) :-
    synthetic_video(Output).
synthetic_content_type(Output) :-
    synthetic_text(Output).

% The marking must be machine-readable and detectable as artificially generated or manipulated.

marked_machine_readable(Output) :-
    must_mark_output(_Provider, Output).

detectable_as_artificial(Output) :-
    must_mark_output(_Provider, Output).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art, as may be
% reflected in relevant technical standards.

must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider),
    technical_solution(Provider, Solution),
    solution_for_marking(Solution).

effective(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

interoperable(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

robust(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

reliable(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

technically_feasible(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

considers_content_specificities(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

considers_content_limitations(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

considers_implementation_costs(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

reflects_state_of_the_art(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

reflects_technical_standards(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

% Exemption: assistive function for standard editing

exempt_assistive_editing(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    performs_assistive_function(System),
    standard_editing(System).

% Exemption: does not substantially alter the input data provided by the deployer
% or the semantics thereof

exempt_non_substantial_alteration(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    deployer_provides_input(System, Deployer, InputData),
    does_not_substantially_alter(System, InputData),
    does_not_substantially_alter_semantics(System, InputData).

% Exemption: authorised by law to detect, prevent, investigate or prosecute
% criminal offences

exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_detect_criminal_offences(System).
exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_prevent_criminal_offences(System).
exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_investigate_criminal_offences(System).
exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_prosecute_criminal_offences(System).

% The obligation does not apply where any exemption holds

obligation_applies(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    generates_synthetic_content(Provider),
    \+ exempt_assistive_editing(Provider, System),
    \+ exempt_non_substantial_alteration(Provider, System),
    \+ exempt_criminal_justice(Provider, System).

% Input predicates: facts about the world the text does not settle

:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_audio/1.
:- dynamic generates_synthetic_image/1.
:- dynamic generates_synthetic_video/1.
:- dynamic generates_synthetic_text/1.
:- dynamic ai_output/2.
:- dynamic synthetic_audio/1.
:- dynamic synthetic_image/1.
:- dynamic synthetic_video/1.
:- dynamic synthetic_text/1.
:- dynamic technical_solution/2.
:- dynamic solution_for_marking/1.
:- dynamic ai_system/2.
:- dynamic performs_assistive_function/1.
:- dynamic standard_editing/1.
:- dynamic deployer_provides_input/3.
:- dynamic does_not_substantially_alter/2.
:- dynamic does_not_substantially_alter_semantics/2.
:- dynamic authorised_by_law/1.
:- dynamic purpose_detect_criminal_offences/1.
:- dynamic purpose_prevent_criminal_offences/1.
:- dynamic purpose_investigate_criminal_offences/1.
:- dynamic purpose_prosecute_criminal_offences/1.
