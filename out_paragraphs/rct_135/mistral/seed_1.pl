:- module(ai_content_transparency, [
    may_encourage_codes_of_practice/1,
    objective_codes_of_practice/2,
    purpose_detection_labelling/1,
    purpose_practical_arrangements/1,
    purpose_cooperation_value_chain/1,
    purpose_disseminate_content/1,
    purpose_check_authenticity_provenance/1,
    purpose_enable_public_distinguish/1,
    transparency_obligations_mandatory/0,
    transparency_obligations_fully_applicable/0
]).

% The transparency obligations are mandatory and fully applicable
transparency_obligations_mandatory.
transparency_obligations_fully_applicable.

% Without prejudice to the above, the Commission may encourage and facilitate
% the drawing up of codes of practice at Union level
may_encourage_codes_of_practice(Commission) :-
    commission(Commission).

% The codes of practice serve to facilitate effective implementation of
% obligations regarding detection and labelling of artificially generated
% or manipulated content
objective_codes_of_practice(Codes, effective_implementation(obligations(detection_labelling(artificially_generated_or_manipulated_content)))) :-
    codes_of_practice(Codes).

% The codes of practice include supporting practical arrangements for making
% detection mechanisms accessible
purpose_practical_arrangements(Codes) :-
    codes_of_practice(Codes),
    supports(Codes, practical_arrangements(making_accessible(detection_mechanisms))).

% The codes of practice include facilitating cooperation with other actors
% along the value chain
purpose_cooperation_value_chain(Codes) :-
    codes_of_practice(Codes),
    facilitates(Codes, cooperation(other_actors, along_value_chain)).

% The codes of practice include disseminating content
purpose_disseminate_content(Codes) :-
    codes_of_practice(Codes),
    includes(Codes, disseminating_content).

% The codes of practice include checking authenticity and provenance
purpose_check_authenticity_provenance(Codes) :-
    codes_of_practice(Codes),
    includes(Codes, checking(authenticity_and_provenance)).

% The overall purpose is to enable the public to effectively distinguish
% AI-generated content
purpose_enable_public_distinguish(Codes) :-
    codes_of_practice(Codes),
    enables(Codes, public_effectively_distinguish(ai_generated_content)).

% The detection and labelling obligations concern artificially generated or
% manipulated content
purpose_detection_labelling(obligations(detection_labelling(artificially_generated_or_manipulated_content))).

% Inputs: facts about the world the text does not settle
:- dynamic commission/1.
:- dynamic codes_of_practice/1.
:- dynamic supports/2.
:- dynamic facilitates/2.
:- dynamic includes/2.
:- dynamic enables/2.
