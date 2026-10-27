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
    generates_synthetic_content(Provider, ContentType),
    synthetic_content_type(ContentType),
    output_of_ai_system(Output, Provider),
    \+ exempt_from_marking(Provider, Output).

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
    technical_solution(Solution, Provider),
    \+ exempt_from_marking(Provider, _Output).

% Exemption: AI systems perform an assistive function for standard editing

exempt_assistive_editing(Provider, Output) :-
    provider_of_ai_system(Provider),
    output_of_ai_system(Output, Provider),
    performs_assistive_function(Provider, standard_editing).

% Exemption: do not substantially alter the input data provided by the deployer
% or the semantics thereof

exempt_non_substantial_alteration(Provider, Output) :-
    provider_of_ai_system(Provider),
    output_of_ai_system(Output, Provider),
    input_data_provided_by_deployer(InputData, Provider),
    output_derived_from_input(Output, InputData),
    \+ substantially_alters(Provider, InputData).

% Exemption: authorised by law to detect, prevent, investigate or prosecute
% criminal offences

exempt_criminal_justice(Provider, Output) :-
    provider_of_ai_system(Provider),
    output_of_ai_system(Output, Provider),
    authorised_by_law(Provider, criminal_justice_purpose(Purpose)),
    criminal_justice_purpose(Purpose).

criminal_justice_purpose(detect).
criminal_justice_purpose(prevent).
criminal_justice_purpose(investigate).
criminal_justice_purpose(prosecute).

% Combined exemption check

exempt_from_marking(Provider, Output) :-
    exempt_assistive_editing(Provider, Output).
exempt_from_marking(Provider, Output) :-
    exempt_non_substantial_alteration(Provider, Output).
exempt_from_marking(Provider, Output) :-
    exempt_criminal_justice(Provider, Output).

% Input predicates: facts about the world the text does not settle

:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic output_of_ai_system/2.
:- dynamic technical_solution/2.
:- dynamic performs_assistive_function/2.
:- dynamic input_data_provided_by_deployer/2.
:- dynamic output_derived_from_input/2.
:- dynamic substantially_alters/2.
:- dynamic authorised_by_law/2.
