:- module(ai_transparency_practices, [
    mandatory/1,
    fully_applicable/1,
    commission/1,
    may_encourage/2,
    may_facilitate/2,
    purpose/2,
    supports/2,
    cooperation_applies/2,
    disseminates_content/1,
    checks_authenticity/1,
    public_distinguishes/1
]).

% Obligations are mandatory and fully applicable
mandatory(transparency_obligations).
fully_applicable(transparency_obligations).

% The Commission exists
commission(union_level).

% Commission may encourage drawing up of codes of practice
may_encourage(commission(union_level), draw_up(codes_of_practice(union_level))) :-
    mandatory(transparency_obligations),
    fully_applicable(transparency_obligations).

% Commission may facilitate drawing up of codes of practice
may_facilitate(commission(union_level), draw_up(codes_of_practice(union_level))) :-
    mandatory(transparency_obligations),
    fully_applicable(transparency_obligations).

% Purpose of codes of practice: facilitate effective implementation of
% obligations regarding detection and labelling of artificially generated
% or manipulated content
purpose(codes_of_practice(union_level),
    facilitate(implementation(detection_and_labelling(artificially_generated_or_manipulated_content)))) :-
    codes_of_practice_applies(union_level).

% Codes of practice support practical arrangements
supports(codes_of_practice(union_level), practical_arrangements) :-
    purpose(codes_of_practice(union_level),
        facilitate(implementation(detection_and_labelling(artificially_generated_or_manipulated_content)))).

% Practical arrangements include making detection mechanisms accessible
supports(practical_arrangements, accessible(detection_mechanisms)) :-
    supports(codes_of_practice(union_level), practical_arrangements).

% Practical arrangements facilitate cooperation with other actors along the value chain
supports(practical_arrangements, cooperation(actors(value_chain))) :-
    supports(codes_of_practice(union_level), practical_arrangements).

% Actors disseminating content
disseminates_content(actors(value_chain)).

% Actors checking authenticity and provenance of content
checks_authenticity(actors(value_chain)).

% Practical arrangements facilitate disseminating content
supports(practical_arrangements, disseminates_content(actors(value_chain))) :-
    supports(practical_arrangements, cooperation(actors(value_chain))),
    disseminates_content(actors(value_chain)).

% Practical arrangements facilitate checking authenticity and provenance
supports(practical_arrangements, checks_authenticity(actors(value_chain))) :-
    supports(practical_arrangements, cooperation(actors(value_chain))),
    checks_authenticity(actors(value_chain)).

% Purpose of practical arrangements: enable the public to effectively
% distinguish AI-generated content
purpose(practical_arrangements, enable(public_distinguishes(ai_generated_content))) :-
    supports(codes_of_practice(union_level), practical_arrangements).

% The public distinguishes AI-generated content
public_distinguishes(ai_generated_content) :-
    purpose(practical_arrangements, enable(public_distinguishes(ai_generated_content))).

% Auxiliary predicate
codes_of_practice_applies(union_level) :-
    may_encourage(commission(union_level), draw_up(codes_of_practice(union_level))).
