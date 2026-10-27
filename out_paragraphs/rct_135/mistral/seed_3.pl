:- module(ai_content_transparency, [
    may_encourage_codes_of_practice/1,
    objective_code_of_practice/2,
    purpose_detection_labelling/1,
    purpose_practical_arrangements/1,
    purpose_cooperation_value_chain/1,
    purpose_disseminate_content/1,
    purpose_check_authenticity_provenance/1,
    purpose_enable_public_distinguish/1
]).

% The Commission may encourage and facilitate the drawing up of codes of practice at Union level
may_encourage_codes_of_practice(commission) :-
    true.

% Objective: to facilitate the effective implementation of the obligations regarding
% the detection and labelling of artificially generated or manipulated content
objective_code_of_practice(Code, facilitate_effective_implementation(obligation(detection_and_labelling(artificially_generated_or_manipulated_content)))) :-
    code_of_practice_at_union_level(Code).

% Purpose: including to support practical arrangements for making, as appropriate,
% the detection mechanisms accessible
purpose_practical_arrangements(Code) :-
    code_of_practice_at_union_level(Code),
    supports(Code, practical_arrangements(making_accessible(detection_mechanisms))).

% Purpose: and facilitating cooperation with other actors along the value chain
purpose_cooperation_value_chain(Code) :-
    code_of_practice_at_union_level(Code),
    facilitates(Code, cooperation_with_actors(along_value_chain)).

% Purpose: disseminating content or checking its authenticity and provenance
purpose_disseminate_content(Code) :-
    code_of_practice_at_union_level(Code),
    supports(Code, disseminating_content).

purpose_check_authenticity_provenance(Code) :-
    code_of_practice_at_union_level(Code),
    supports(Code, checking(authenticity_and_provenance(content))).

% Purpose: to enable the public to effectively distinguish AI-generated content
purpose_enable_public_distinguish(Code) :-
    code_of_practice_at_union_level(Code),
    enables(Code, public_effectively_distinguish(ai_generated_content)).

% The detection and labelling obligations are mandatory and fully applicable
% (stated as background fact about the obligations)
required_detection_labelling_obligation(obligation(detection_and_labelling(artificially_generated_or_manipulated_content))).

% Input predicates: facts about the world the text does not settle
:- dynamic code_of_practice_at_union_level/1.
:- dynamic supports/2.
:- dynamic facilitates/2.
:- dynamic enables/2.
