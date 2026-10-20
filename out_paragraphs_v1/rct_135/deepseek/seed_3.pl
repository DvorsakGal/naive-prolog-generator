:- module(ai_transparency_codes, [
    must_facilitate_implementation/2,
    may_encourage_draw_up/2,
    mandatory_nature_applies/1,
    full_applicability_applies/1,
    obligation_detection_labelling/1,
    content_artificially_generated/1,
    content_artificially_manipulated/1,
    support_practical_arrangements/2,
    making_accessible/2,
    facilitating_cooperation/2,
    other_actor/1,
    along_value_chain/1,
    disseminating_content/1,
    checking_authenticity/1,
    checking_provenance/1,
    enable_distinguish/2
]).

% Overarching context
mandatory_nature_applies(transparency_obligations).
full_applicability_applies(transparency_obligations).

% Obligations regarding detection and labelling
obligation_detection_labelling(artificially_generated_or_manipulated_content).

content_artificially_generated(C) :-
    obligation_detection_labelling(C).

content_artificially_manipulated(C) :-
    obligation_detection_labelling(C).

% Commission's powers
may_encourage_draw_up(commission, codes_of_practice(union_level)) :-
    mandatory_nature_applies(transparency_obligations),
    full_applicability_applies(transparency_obligations).

must_facilitate_implementation(commission, codes_of_practice(union_level)) :-
    may_encourage_draw_up(commission, codes_of_practice(union_level)),
    obligation_detection_labelling(_).

% Practical arrangements
support_practical_arrangements(codes_of_practice, making_accessible(detection_mechanisms)) :-
    may_encourage_draw_up(commission, codes_of_practice(union_level)).

making_accessible(Code, detection_mechanisms) :-
    support_practical_arrangements(Code, making_accessible(detection_mechanisms)).

facilitating_cooperation(Code, other_actors) :-
    support_practical_arrangements(Code, _).

other_actor(Actor) :-
    along_value_chain(Actor).

other_actor(Actor) :-
    disseminating_content(Actor).

other_actor(Actor) :-
    checking_authenticity(Actor).

other_actor(Actor) :-
    checking_provenance(Actor).

% Outcomes
enable_distinguish(codes_of_practice, ai_generated_content) :-
    making_accessible(codes_of_practice, detection_mechanisms),
    facilitating_cooperation(codes_of_practice, other_actors).
