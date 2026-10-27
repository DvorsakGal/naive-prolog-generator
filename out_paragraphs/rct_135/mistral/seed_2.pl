:- module(ai_content_transparency, [
    may_encourage_codes_of_practice/1,
    codes_of_practice_purpose/2,
    practical_arrangement/2,
    detection_mechanism_accessible/2,
    cooperation_along_value_chain/2,
    disseminate_content/2,
    check_authenticity_and_provenance/2,
    enable_public_distinguish_ai_content/1
]).

% The Commission may encourage and facilitate the drawing up of codes of practice at Union level.
% This is a permission, not an obligation.
may_encourage_codes_of_practice(commission) :-
    true.

% Purpose of codes of practice: to facilitate effective implementation of obligations
% regarding detection and labelling of artificially generated or manipulated content.
codes_of_practice_purpose(Code, facilitate_effective_implementation(obligations(detection_and_labelling(artificially_generated_or_manipulated_content)))) :-
    code_of_practice_at_union_level(Code).

% Practical arrangements for making detection mechanisms accessible.
practical_arrangement(Code, make_accessible(detection_mechanisms)) :-
    code_of_practice_at_union_level(Code).

% Facilitating cooperation with other actors along the value chain.
cooperation_along_value_chain(Code, actors(along_value_chain)) :-
    code_of_practice_at_union_level(Code).

% Disseminating content.
disseminate_content(Code, content) :-
    code_of_practice_at_union_level(Code).

% Checking authenticity and provenance of content.
check_authenticity_and_provenance(Code, content) :-
    code_of_practice_at_union_level(Code).

% Enabling the public to effectively distinguish AI-generated content.
enable_public_distinguish_ai_content(Code) :-
    code_of_practice_at_union_level(Code).

% Input: what constitutes a code of practice at Union level.
:- dynamic code_of_practice_at_union_level/1.
