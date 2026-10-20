:- module(secure_registration_requirements, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii_point/2,
    area_applies/2,
    must_register_in_secure_non_public_section/2,
    eu_database/1,
    secure_non_public_section/2,
    registration_must_include_only/2,
    annex_viii_point/2,
    section_b_of_annex_viii_point/2,
    annex_ix_point/2,
    commission/1,
    national_authority_referred_to_in_article_74_8/1,
    has_access_to_restricted_section/2,
    restricted_section_of_eu_database/2
]).

% Input predicates for entities and references not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.

% Conditions for applicability of the secure registration requirement
referred_to_in_annex_iii_point(S, 1) :- high_risk_ai_system(S).
referred_to_in_annex_iii_point(S, 6) :- high_risk_ai_system(S).
referred_to_in_annex_iii_point(S, 7) :- high_risk_ai_system(S).

area_applies(S, law_enforcement) :- high_risk_ai_system(S).
area_applies(S, migration) :- high_risk_ai_system(S).
area_applies(S, asylum) :- high_risk_ai_system(S).
area_applies(S, border_control_management) :- high_risk_ai_system(S).

% Secure non-public section of the EU database
secure_non_public_section(Section, Database) :-
    eu_database(Database),
    restricted_section_of_eu_database(Section, Database).

% Registration obligation for qualifying systems
must_register_in_secure_non_public_section(S, Section) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, _Area),
    secure_non_public_section(Section, _Database).

% Information inclusion constraints
registration_must_include_only(S, InfoSet) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, _Area),
    permitted_information_set(S, InfoSet).

permitted_information_set(S, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system(S).

permitted_information_set(S, section_b_annex_viii_points_1_to_5_and_8_9) :-
    high_risk_ai_system(S).

permitted_information_set(S, annex_viii_points_1_to_3) :-
    high_risk_ai_system(S).

permitted_information_set(S, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system(S).

% Annex point references (structural facts)
annex_viii_point(S, N) :-
    high_risk_ai_system(S),
    member(N, [1,2,3,4,5,6,7,8,9,10]).

section_b_of_annex_viii_point(S, N) :-
    high_risk_ai_system(S),
    member(N, [1,2,3,4,5,8,9]).

annex_ix_point(S, N) :-
    high_risk_ai_system(S),
    member(N, [1,2,3,5]).

% Access control to restricted sections
restricted_section_of_eu_database(Section, Database) :-
    eu_database(Database),
    secure_non_public_section(Section, Database).

has_access_to_restricted_section(commission, Section) :-
    restricted_section_of_eu_database(Section, _Database).

has_access_to_restricted_section(Authority, Section) :-
    national_authority_referred_to_in_article_74_8(Authority),
    restricted_section_of_eu_database(Section, _Database).
