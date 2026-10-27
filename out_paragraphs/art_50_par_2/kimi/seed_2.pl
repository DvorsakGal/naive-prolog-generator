:- module(ai_content_marking, [
    must_ensure_marking/2,
    must_ensure_technical_solutions/2,
    exempt_marking/1
]).

% Inputs: predicates about the world the text does not settle
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic output/2.
:- dynamic machine_readable_format/1.
:- dynamic detectable_as_artificial/1.
:- dynamic assistive_function/2.
:- dynamic standard_editing/1.
:- dynamic substantially_alters_input/1.
:- dynamic alters_semantics/1.
:- dynamic input_data/2.
:- dynamic deployer/1.
:- dynamic authorised_by_law/2.
:- dynamic detect_criminal_offence/1.
:- dynamic prevent_criminal_offence/1.
:- dynamic investigate_criminal_offence/1.
:- dynamic prosecute_criminal_offence/1.
:- dynamic technical_feasibility_applies/1.
:- dynamic specificities_of_content/2.
:- dynamic limitations_of_content/2.
:- dynamic implementation_cost/2.
:- dynamic state_of_the_art/2.
:- dynamic relevant_technical_standard/2.

% Core obligations

must_ensure_marking(Provider, marking(output(AiSystem), Format, Detectable)) :-
    provider(Provider),
    ai_system(AiSystem),
    (general_purpose_ai_system(AiSystem); ai_system(AiSystem)),
    generates_synthetic_content(AiSystem, ContentType),
    content_type(ContentType),
    output(AiSystem, Output),
    machine_readable_format(Format),
    detectable_as_artificial(Detectable),
    \+ exempt_marking(AiSystem).

must_ensure_technical_solutions(Provider, technical_solution(Solution, effective, interoperable, robust, reliable)) :-
    provider(Provider),
    ai_system(AiSystem),
    (general_purpose_ai_system(AiSystem); ai_system(AiSystem)),
    generates_synthetic_content(AiSystem, ContentType),
    content_type(ContentType),
    technical_feasibility_applies(AiSystem),
    technical_solution_properties(AiSystem, Solution),
    \+ exempt_marking(AiSystem).

% Technical solution properties with feasibility considerations

technical_solution_properties(AiSystem, Solution) :-
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technical_feasibility(AiSystem, Solution).

technical_feasibility(AiSystem, Solution) :-
    technical_feasibility_applies(AiSystem),
    specificities_of_content(AiSystem, Specificities),
    limitations_of_content(AiSystem, Limitations),
    implementation_cost(Solution, Cost),
    state_of_the_art(Solution, StateOfArt),
    relevant_technical_standard(Solution, Standard).

% Exemption conditions

exempt_marking(AiSystem) :-
    ai_system(AiSystem),
    assistive_function(AiSystem, standard_editing(Editing)),
    standard_editing(Editing).

exempt_marking(AiSystem) :-
    ai_system(AiSystem),
    input_data(AiSystem, Data),
    deployer(Deployer),
    provides_input(Deployer, Data),
    \+ substantially_alters_input(AiSystem),
    \+ alters_semantics(AiSystem).

exempt_marking(AiSystem) :-
    ai_system(AiSystem),
    authorised_by_law(AiSystem, Purpose),
    criminal_offence_purpose(Purpose).

% Helper predicates for content types

content_type(audio).
content_type(image).
content_type(video).
content_type(text).

% Helper predicates for criminal offence purposes

criminal_offence_purpose(detect(Crime)) :- detect_criminal_offence(Crime).
criminal_offence_purpose(prevent(Crime)) :- prevent_criminal_offence(Crime).
criminal_offence_purpose(investigate(Crime)) :- investigate_criminal_offence(Crime).
criminal_offence_purpose(prosecute(Crime)) :- prosecute_criminal_offence(Crime).

% Additional input predicates
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic provides_input/2.
