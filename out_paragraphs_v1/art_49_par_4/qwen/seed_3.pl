:- module(secure_registration_requirements, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii_point/2,
    area_applies/2,
    must_register_in_secure_section/2,
    eu_database/1,
    secure_non_public_section/2,
    registration_information_includes/2,
    annex_viii_point/1,
    annex_ix_point/1,
    section_b_point/1,
    commission/1,
    national_authority_referred_to_in_article_74_8/1,
    has_access_to_restricted_section/2,
    restricted_section_listed_in_article_49_4/1
]).

% Input predicates for entities and references not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.
:- dynamic annex_viii_point/1.
:- dynamic annex_ix_point/1.
:- dynamic section_b_point/1.

% Conditions for applicability
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
    secure_section(Section, Database).

% Registration obligation for specific high-risk AI systems
must_register_in_secure_section(S, Section) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]),
    secure_non_public_section(Section, _Database).

% Information inclusion requirements for registration
registration_information_includes(S, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

registration_information_includes(S, section_b_points_1_to_5_and_8_9) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

registration_information_includes(S, annex_viii_points_1_to_3) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

registration_information_includes(S, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

% Access restrictions to restricted sections
restricted_section_listed_in_article_49_4(Section) :-
    secure_non_public_section(Section, _Database).

has_access_to_restricted_section(commission, Section) :-
    restricted_section_listed_in_article_49_4(Section).

has_access_to_restricted_section(Authority, Section) :-
    national_authority_referred_to_in_article_74_8(Authority),
    restricted_section_listed_in_article_49_4(Section).
