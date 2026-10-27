:- module(secure_registration_requirements, [
    high_risk_ai_system_in_specified_area/1,
    must_register_in_secure_non_public_section/2,
    required_registration_information/2,
    permitted_access_to_restricted_section/2
]).

% Input predicates for external facts
:- dynamic annex_iii_point_1_applies/1.
:- dynamic annex_iii_point_6_applies/1.
:- dynamic annex_iii_point_7_applies/1.
:- dynamic law_enforcement_area_applies/1.
:- dynamic migration_area_applies/1.
:- dynamic asylum_area_applies/1.
:- dynamic border_control_management_area_applies/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic annex_viii_point/2.
:- dynamic annex_viii_section_b_point/2.
:- dynamic annex_ix_point/2.

% High-risk AI systems referred to in Annex III points (1), (6) and (7) in specified areas
high_risk_ai_system_in_specified_area(S) :-
    annex_iii_point_1_applies(S),
    specified_area_applies(S).
high_risk_ai_system_in_specified_area(S) :-
    annex_iii_point_6_applies(S),
    specified_area_applies(S).
high_risk_ai_system_in_specified_area(S) :-
    annex_iii_point_7_applies(S),
    specified_area_applies(S).

specified_area_applies(S) :-
    law_enforcement_area_applies(S).
specified_area_applies(S) :-
    migration_area_applies(S).
specified_area_applies(S) :-
    asylum_area_applies(S).
specified_area_applies(S) :-
    border_control_management_area_applies(S).

% Registration shall be in a secure non-public section of the EU database
must_register_in_secure_non_public_section(S, Database) :-
    high_risk_ai_system_in_specified_area(S),
    eu_database(Database).

% Required registration information as applicable
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_viii_point(N, Info),
    member(N, [1, 2, 3, 4, 5, 7, 10]).
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_viii_section_b_point(N, Info),
    member(N, [1, 2, 3, 4, 5, 8, 9]).
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_viii_point(N, Info),
    member(N, [1, 2, 3]).
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_ix_point(N, Info),
    member(N, [1, 2, 3, 5]).

member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).

% Access restricted to Commission and national authorities referred to in Article 74(8)
permitted_access_to_restricted_section(Entity, Section) :-
    commission(Entity),
    restricted_section_of_eu_database(Section).
permitted_access_to_restricted_section(Entity, Section) :-
    national_authority_article_74_8(Entity),
    restricted_section_of_eu_database(Section).

restricted_section_of_eu_database(Section) :-
    eu_database(_Database),
    secure_non_public_section(_Database, Section).

secure_non_public_section(Database, Section) :-
    eu_database(Database),
    non_public_section(Database, Section).

non_public_section(_Database, _Section).
