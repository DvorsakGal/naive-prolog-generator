:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_applies/1,
    must_be_in_secure_non_public_section/2,
    must_include_information/2,
    must_include_only_information/2,
    information_included/2,
    commission/1,
    national_authority/1,
    must_have_access/2,
    restricted_section/1
]).

% System classification
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Area classification
law_enforcement_area(S) :-
    high_risk_ai_system(S),
    in_area(S, law_enforcement).
migration_area(S) :-
    high_risk_ai_system(S),
    in_area(S, migration).
asylum_area(S) :-
    high_risk_ai_system(S),
    in_area(S, asylum).
border_control_management_area(S) :-
    high_risk_ai_system(S),
    in_area(S, border_control_management).

% Registration obligation
registration_applies(S) :-
    high_risk_ai_system(S),
    (   law_enforcement_area(S)
    ;   migration_area(S)
    ;   asylum_area(S)
    ;   border_control_management_area(S)
    ).

must_be_in_secure_non_public_section(Registration, eu_database) :-
    registration_applies(S),
    registration_of(Registration, S, article_49(1)).
must_be_in_secure_non_public_section(Registration, eu_database) :-
    registration_applies(S),
    registration_of(Registration, S, article_49(2)).
must_be_in_secure_non_public_section(Registration, eu_database) :-
    registration_applies(S),
    registration_of(Registration, S, article_49(3)).

% Information inclusion rules
must_include_information(Registration, Info) :-
    must_be_in_secure_non_public_section(Registration, _),
    applicable_information(Info, Registration).

must_include_only_information(Registration, Info) :-
    must_include_information(Registration, Info),
    \+ other_information_included(Registration, Info).

other_information_included(Registration, Info) :-
    must_include_information(Registration, Other),
    Other \= Info.

% Applicable information from Annex VIII and IX
applicable_information(Info, Registration) :-
    annex_viii_point(Info, Point),
    between(1, 10, Point),
    Point \= 6,
    Point \= 8,
    Point \= 9,
    registration_applies(S),
    registration_of(Registration, S, _).

applicable_information(Info, Registration) :-
    annex_viii_section_b_point(Info, Point),
    member(Point, [1,2,3,4,5,8,9]),
    registration_applies(S),
    registration_of(Registration, S, _).

applicable_information(Info, Registration) :-
    annex_viii_point(Info, Point),
    between(1, 3, Point),
    registration_applies(S),
    registration_of(Registration, S, _).

applicable_information(Info, Registration) :-
    annex_ix_point(Info, Point),
    member(Point, [1,2,3,5]),
    registration_applies(S),
    registration_of(Registration, S, _).

% Access control
must_have_access(Actor, restricted_section(eu_database)) :-
    commission(Actor).
must_have_access(Actor, restricted_section(eu_database)) :-
    national_authority(Actor),
    article_74_8_authority(Actor).

% Dynamic predicates for external facts
:- dynamic annex_iii_point/2.
:- dynamic in_area/2.
:- dynamic registration_of/3.
:- dynamic annex_viii_point/2.
:- dynamic annex_viii_section_b_point/2.
:- dynamic annex_ix_point/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.
