:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    annex_viii_point/1,
    annex_ix_point/1,
    section_b_point/1,
    commission/1,
    national_authority/1,
    must_have_access_to/2,
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
    area(S, law_enforcement).
migration_area(S) :-
    high_risk_ai_system(S),
    area(S, migration).
asylum_area(S) :-
    high_risk_ai_system(S),
    area(S, asylum).
border_control_management_area(S) :-
    high_risk_ai_system(S),
    area(S, border_control_management).

% Registration obligation
must_register_in(S, secure_non_public_section(Database)) :-
    high_risk_ai_system(S),
    (   law_enforcement_area(S)
    ;   migration_area(S)
    ;   asylum_area(S)
    ;   border_control_management_area(S)
    ),
    eu_database(Database),
    article_71(Database).

% Information to be included
must_include_information(S, Info) :-
    must_register_in(S, _),
    applicable_information(S, Info).

applicable_information(S, annex_viii_point(P)) :-
    annex_viii_point(P),
    between(1, 10, P),
    \+ excluded_annex_viii_point(P).

excluded_annex_viii_point(6).
excluded_annex_viii_point(8).
excluded_annex_viii_point(9).

applicable_information(S, section_b_point(P)) :-
    section_b_point(P),
    member(P, [1, 2, 3, 4, 5, 8, 9]).

applicable_information(S, annex_viii_point(P)) :-
    annex_viii_point(P),
    member(P, [1, 2, 3]).

applicable_information(S, annex_ix_point(P)) :-
    annex_ix_point(P),
    member(P, [1, 2, 3, 5]).

% Access control
must_have_access_to(Actor, restricted_section(Database)) :-
    (   commission(Actor)
    ;   national_authority(Actor)
    ),
    article_74_8(Actor),
    eu_database(Database),
    article_49_4(Database).

% Dynamic predicates for external facts
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic article_71/1.
:- dynamic article_74_8/1.
:- dynamic article_49_4/1.
:- dynamic annex_viii_point/1.
:- dynamic annex_ix_point/1.
:- dynamic section_b_point/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic eu_database/1.
:- dynamic restricted_section/1.
:- dynamic secure_non_public_section/1.
