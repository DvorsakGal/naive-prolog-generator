:- module(ai_content_transparency, [
    may_encourage_codes_of_practice/1,
    codes_of_practice_purpose/2,
    transparency_obligations_mandatory/0,
    transparency_obligations_fully_applicable/0,
    obligations_regarding_detection_and_labelling/1,
    detection_and_labelling_of_artificially_generated_or_manipulated_content/1,
    practical_arrangements_purpose/2,
    detection_mechanisms_accessible/1,
    cooperation_with_other_actors_along_value_chain/1,
    disseminating_content/1,
    checking_authenticity_and_provenance/1,
    enable_public_to_distinguish_ai_generated_content/1
]).

% Input predicates about the world the text does not settle
:- dynamic commission/1.
:- dynamic union_level/1.
:- dynamic actor/1.
:- dynamic value_chain/1.
:- dynamic content/1.
:- dynamic public/1.

% The transparency obligations are mandatory
transparency_obligations_mandatory.

% The transparency obligations are fully applicable
transparency_obligations_fully_applicable.

% The Commission may encourage and facilitate the drawing up of codes of practice at Union level
may_encourage_codes_of_practice(Commission) :-
    commission(Commission),
    union_level(UnionLevel),
    codes_of_practice(UnionLevel).

% Codes of practice serve to facilitate effective implementation of obligations
codes_of_practice_purpose(Codes, effective_implementation(Obligations)) :-
    codes_of_practice(Codes),
    obligations_regarding_detection_and_labelling(Obligations).

% The obligations concern detection and labelling of artificially generated or manipulated content
obligations_regarding_detection_and_labelling(obligation(detection_and_labelling(C))) :-
    detection_and_labelling_of_artificially_generated_or_manipulated_content(C).

% Detection and labelling applies to artificially generated or manipulated content
detection_and_labelling_of_artificially_generated_or_manipulated_content(content(artificially_generated_or_manipulated)).

% Practical arrangements support making detection mechanisms accessible
practical_arrangements_purpose(Arrangements, accessible(detection_mechanisms)) :-
    practical_arrangements(Arrangements),
    detection_mechanisms_accessible(detection_mechanisms).

% Practical arrangements support facilitating cooperation with other actors along the value chain
practical_arrangements_purpose(Arrangements, cooperation(actors, value_chain)) :-
    practical_arrangements(Arrangements),
    cooperation_with_other_actors_along_value_chain(cooperation(actors, value_chain)).

% The codes of practice support disseminating content
codes_of_practice_support(Commission, disseminating_content) :-
    may_encourage_codes_of_practice(Commission),
    disseminating_content(content).

% The codes of practice support checking authenticity and provenance
codes_of_practice_support(Commission, checking(authenticity_and_provenance)) :-
    may_encourage_codes_of_practice(Commission),
    checking_authenticity_and_provenance(content).

% The purpose is to enable the public to effectively distinguish AI-generated content
codes_of_practice_purpose(Codes, enable(Public, distinguish(ai_generated_content))) :-
    codes_of_practice(Codes),
    public(Public),
    enable_public_to_distinguish_ai_generated_content(Public).

% The public can effectively distinguish AI-generated content
enable_public_to_distinguish_ai_generated_content(Public) :-
    public(Public),
    ai_generated_content(content).

% Helper predicates for compound terms
codes_of_practice(_).
practical_arrangements(_).
detection_mechanisms_accessible(_).
cooperation_with_other_actors_along_value_chain(_).
disseminating_content(_).
checking_authenticity_and_provenance(_).
ai_generated_content(_).
