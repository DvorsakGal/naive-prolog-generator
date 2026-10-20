:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_required/1,
    secure_non_public_section/1,
    eu_database/1,
    commission/1,
    national_authority/1,
    has_access/2,
    restricted_section/1,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    included_information/2,
    exception_point/1,
    article_49_1_applies/1,
    article_49_2_applies/1,
    article_49_3_applies/1,
    article_49_4_applies/1,
    article_71_database/1,
    article_74_8_authority/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_49_1_applies/1.
:- dynamic article_49_2_applies/1.
:- dynamic article_49_3_applies/1.
:- dynamic article_49_4_applies/1.

% Areas covered by this provision
covered_area(law_enforcement).
covered_area(migration).
covered_area(asylum).
covered_area(border_control_management).

% Annex III points covered
annex_iii_point(1).
annex_iii_point(6).
annex_iii_point(7).

% Annex VIII points (1) to (10)
annex_viii_point(1).
annex_viii_point(2).
annex_viii_point(3).
annex_viii_point(4).
annex_viii_point(5).
annex_viii_point(6).
annex_viii_point(7).
annex_viii_point(8).
annex_viii_point(9).
annex_viii_point(10).

% Exception points for (a)
exception_point(6).
exception_point(8).
exception_point(9).

% Annex VIII Section B points
annex_viii_section_b_point(1).
annex_viii_section_b_point(2).
annex_viii_section_b_point(3).
annex_viii_section_b_point(4).
annex_viii_section_b_point(5).
annex_viii_section_b_point(8).
annex_viii_section_b_point(9).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(5).

% Database and section definitions
eu_database(eu_database_article_71).
article_71_database(eu_database_article_71).
secure_non_public_section(secure_non_public_section_article_71).

% Registration applies to high-risk AI systems in specified areas and articles
registration_required(S) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    point_referred_in_annex_iii(S, P),
    covered_area_for_system(S, Area),
    (article_49_1_applies(S); article_49_2_applies(S); article_49_3_applies(S)).

covered_area_for_system(S, Area) :-
    law_enforcement_area(S), Area = law_enforcement.
covered_area_for_system(S, Area) :-
    migration_area(S), Area = migration.
covered_area_for_system(S, Area) :-
    asylum_area(S), Area = asylum.
covered_area_for_system(S, Area) :-
    border_control_management_area(S), Area = border_control_management.

% Location of registration
must_be_in_section(S, secure_non_public_section_article_71) :-
    registration_required(S),
    eu_database(eu_database_article_71).

% Included information for Article 49(1) - (a)
included_information(S, annex_viii_point(P)) :-
    registration_required(S),
    article_49_1_applies(S),
    annex_viii_point(P),
    \+ exception_point(P).

% Included information for Article 49(2) - (b)
included_information(S, annex_viii_section_b_point(P)) :-
    registration_required(S),
    article_49_2_applies(S),
    annex_viii_section_b_point(P).

% Included information for Article 49(3) - (c)
included_information(S, annex_viii_point(P)) :-
    registration_required(S),
    article_49_3_applies(S),
    member(P, [1, 2, 3]).

% Included information for Article 49(3) - (d)
included_information(S, annex_ix_point(P)) :-
    registration_required(S),
    article_49_3_applies(S),
    annex_ix_point(P).

% Access restrictions
article_74_8_authority(Authority) :-
    national_authority(Authority).

restricted_section(secure_non_public_section_article_71).

has_access(commission, Section) :-
    commission(commission),
    restricted_section(Section).

has_access(Authority, Section) :-
    article_74_8_authority(Authority),
    restricted_section(Section).

% Helper predicate
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
