:- module(transparency_obligations, [
    mandatory_transparency_obligations/1,
    full_applicability_transparency_obligations/1,
    may_encourage/2,
    may_facilitate/2,
    code_of_practice/1,
    union_level/1,
    effective_implementation/2,
    obligation/2,
    detection_artificially_generated_content/1,
    labelling_artificially_generated_content/1,
    detection_artificially_manipulated_content/1,
    labelling_artificially_manipulated_content/1,
    support_practical_arrangements/2,
    accessible_detection_mechanism/2,
    facilitate_cooperation/3,
    along_value_chain/2,
    disseminate_content/2,
    check_authenticity/2,
    check_provenance/2,
    enable_public_distinguish/3,
    ai_generated_content/1,
    commission/1
]).

:- dynamic commission/1, ai_generated_content/1, along_value_chain/2.

% Core facts about the commission
commission(commission).

% The mandatory nature and full applicability of transparency obligations are affirmed
mandatory_transparency_obligations(transparency_obligations).
full_applicability_transparency_obligations(transparency_obligations).

% The Commission may encourage drawing up of codes of practice at Union level
may_encourage(commission, drawing_up(CodeOfPractice)) :-
    commission(commission),
    code_of_practice(CodeOfPractice),
    union_level(union_level).

% The Commission may facilitate drawing up of codes of practice at Union level
may_facilitate(commission, drawing_up(CodeOfPractice)) :-
    commission(commission),
    code_of_practice(CodeOfPractice),
    union_level(union_level).

% Purpose of codes of practice: effective implementation of detection obligations
effective_implementation(CodeOfPractice, obligation(detection_artificially_generated_content, Content)) :-
    code_of_practice(CodeOfPractice),
    ai_generated_content(Content).

effective_implementation(CodeOfPractice, obligation(detection_artificially_manipulated_content, Content)) :-
    code_of_practice(CodeOfPractice),
    artificially_manipulated_content(Content).

% Purpose of codes of practice: effective implementation of labelling obligations
effective_implementation(CodeOfPractice, obligation(labelling_artificially_generated_content, Content)) :-
    code_of_practice(CodeOfPractice),
    ai_generated_content(Content).

effective_implementation(CodeOfPractice, obligation(labelling_artificially_manipulated_content, Content)) :-
    code_of_practice(CodeOfPractice),
    artificially_manipulated_content(Content).

% Support practical arrangements for making detection mechanisms accessible
support_practical_arrangements(CodeOfPractice, accessible_detection_mechanism(Mechanism, Actor)) :-
    code_of_practice(CodeOfPractice),
    detection_mechanism(Mechanism),
    actor(Actor),
    as_appropriate(accessible_detection_mechanism(Mechanism, Actor)).

% Facilitate cooperation with other actors along the value chain
facilitate_cooperation(CodeOfPractice, Actor, OtherActor) :-
    code_of_practice(CodeOfPractice),
    actor(Actor),
    actor(OtherActor),
    along_value_chain(Actor, OtherActor).

% Disseminating content
disseminate_content(Actor, Content) :-
    actor(Actor),
    content(Content).

% Checking authenticity and provenance
check_authenticity(Actor, Content) :-
    actor(Actor),
    content(Content).

check_provenance(Actor, Content) :-
    actor(Actor),
    content(Content).

% Enable the public to effectively distinguish AI-generated content
enable_public_distinguish(CodeOfPractice, Public, ai_generated_content(Content)) :-
    code_of_practice(CodeOfPractice),
    public(Public),
    ai_generated_content(Content).

% Supporting role of checking authenticity and provenance for enabling public distinction
enable_public_distinguish(CodeOfPractice, Public, ai_generated_content(Content)) :-
    code_of_practice(CodeOfPractice),
    public(Public),
    ai_generated_content(Content),
    check_authenticity(_Actor, Content),
    check_provenance(_Actor, Content).

% Dynamic declarations for input predicates
:- dynamic detection_mechanism/1, actor/1, content/1, public/1, artificially_manipulated_content/1, as_appropriate/1.
