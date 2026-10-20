:- module(ai_content_transparency, [
    may_encourage_codes_of_practice/1,
    codes_of_practice_purpose/2,
    codes_of_practice_facilitate/2,
    detection_labelling_obligation/1,
    artificially_generated_or_manipulated_content/1,
    practical_arrangement/2,
    detection_mechanism_accessible/2,
    cooperation_along_value_chain/2,
    disseminating_content/2,
    checking_authenticity_and_provenance/2,
    public_distinguish_ai_generated_content/1,
    transparency_obligation_mandatory/1,
    transparency_obligation_fully_applicable/1
]).

% The transparency obligations are mandatory and fully applicable.
transparency_obligation_mandatory(O) :-
    transparency_obligation(O).

transparency_obligation_fully_applicable(O) :-
    transparency_obligation(O).

% The Commission may encourage and facilitate codes of practice at Union level.
may_encourage_codes_of_practice(commission) :-
    true.

% Purpose: to facilitate effective implementation of obligations regarding
% detection and labelling of artificially generated or manipulated content.
codes_of_practice_purpose(C, facilitate_effective_implementation(O)) :-
    codes_of_practice(C),
    detection_labelling_obligation(O).

codes_of_practice_facilitate(C, O) :-
    codes_of_practice(C),
    detection_labelling_obligation(O),
    artificially_generated_or_manipulated_content(O).

% Detection and labelling obligations apply to artificially generated or manipulated content.
detection_labelling_obligation(obligation(detection_and_labelling(C))) :-
    artificially_generated_or_manipulated_content(C).

artificially_generated_or_manipulated_content(content(artificially_generated)).
artificially_generated_or_manipulated_content(content(artificially_manipulated)).

% Codes of practice include supporting practical arrangements for:
% - making detection mechanisms accessible (as appropriate)
% - facilitating cooperation with other actors along the value chain
% - disseminating content
% - checking its authenticity and provenance
% to enable the public to effectively distinguish AI-generated content.

practical_arrangement(C, make_detection_mechanisms_accessible(D, as_appropriate)) :-
    codes_of_practice(C),
    detection_mechanism(D).

practical_arrangement(C, facilitate_cooperation(actors_along_value_chain)) :-
    codes_of_practice(C).

practical_arrangement(C, disseminate_content(Content)) :-
    codes_of_practice(C),
    content(Content).

practical_arrangement(C, check_authenticity_and_provenance(Content)) :-
    codes_of_practice(C),
    content(Content).

% The overall aim: enable the public to effectively distinguish AI-generated content.
public_distinguish_ai_generated_content(public) :-
    codes_of_practice(C),
    practical_arrangement(C, make_detection_mechanisms_accessible(_D, as_appropriate)),
    practical_arrangement(C, facilitate_cooperation(actors_along_value_chain)),
    practical_arrangement(C, disseminate_content(_Content)),
    practical_arrangement(C, check_authenticity_and_provenance(_Content)).

% Input predicates (facts about the world the text does not settle).
:- dynamic transparency_obligation/1.
:- dynamic codes_of_practice/1.
:- dynamic detection_mechanism/1.
:- dynamic content/1.
