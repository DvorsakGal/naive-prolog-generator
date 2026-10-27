:- module(codes_of_practice, [
    may_encourage_and_facilitate/2,
    must_detect_and_label/1,
    artificially_generated_or_manipulated/1,
    objective_effective_implementation/1,
    objective_accessible_detection_mechanisms/1,
    objective_cooperation/1,
    objective_distinguish/1,
    ai_generated/1
]).

:- dynamic transparency_obligations/1.
:- dynamic obligation/2.
:- dynamic actor/1.
:- dynamic value_chain/1.
:- dynamic public/1.

may_encourage_and_facilitate(Commission, codes_of_practice(Union_level)) :-
    transparency_obligations(Obligations),
    obligation(Obligations, detection_and_labelling(Content)),
    artificially_generated_or_manipulated(Content),
    objective_effective_implementation(codes_of_practice(Union_level)).

objective_effective_implementation(codes_of_practice(Union_level)) :-
    must_detect_and_label(Content),
    artificially_generated_or_manipulated(Content),
    objective_accessible_detection_mechanisms(codes_of_practice(Union_level)),
    objective_cooperation(codes_of_practice(Union_level)),
    objective_distinguish(codes_of_practice(Union_level)).

objective_accessible_detection_mechanisms(codes_of_practice(Union_level)) :-
    detection_mechanisms(Mechanisms),
    accessible(Mechanisms).

objective_cooperation(codes_of_practice(Union_level)) :-
    actor(Actor),
    value_chain(Actor),
    cooperation(Actor, other_actors).

objective_distinguish(codes_of_practice(Union_level)) :-
    public(Public),
    ai_generated(Content),
    must_distinguish(Public, Content).

must_distinguish(Public, Content) :-
    public(Public),
    ai_generated(Content),
    authenticity(Content),
    provenance(Content).

must_detect_and_label(Content) :-
    artificially_generated_or_manipulated(Content).

artificially_generated_or_manipulated(Content) :-
    ai_generated(Content).

artificially_generated_or_manipulated(Content) :-
    manipulated(Content).

ai_generated(Content) :-
    generated_by_ai(Content).

manipulated(Content) :-
    manipulated_by_ai(Content).

accessible(Mechanisms) :-
    detection_mechanisms(Mechanisms).

cooperation(Actor, other_actors) :-
    actor(Actor),
    disseminating_content(Actor).

cooperation(Actor, other_actors) :-
    actor(Actor),
    checking_authenticity(Actor).

cooperation(Actor, other_actors) :-
    actor(Actor),
    checking_provenance(Actor).

authenticity(Content) :-
    ai_generated(Content).

provenance(Content) :-
    ai_generated(Content).
