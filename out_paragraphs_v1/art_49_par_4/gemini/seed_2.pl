:- module(high_risk_ai_system_registration, [
    high_risk_ai_system/1,
    sensitive_area_applies/1,
    registration_in_secure_non_public_section/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system_annex_iii_point_1/1.
:- dynamic high_risk_ai_system_annex_iii_point_6/1.
:- dynamic high_risk_ai_system_annex_iii_point_7/1.
:- dynamic law_enforcement/1.
:- dynamic migration/1.
:- dynamic asylum/1.
:- dynamic border_control_management/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic restricted_section_eu_database_article_49_4/1.

% High-risk AI systems referred to in Annex III, points (1), (6) and (7)
high_risk_ai_system(System) :-
    high_risk_ai_system_annex_iii_point_1(System).
high_risk_ai_system(System) :-
    high_risk_ai_system_annex_iii_point_6(System).
high_risk_ai_system(System) :-
    high_risk_ai_system_annex_iii_point_7(System).

% In the areas of law enforcement, migration, asylum and border control management
sensitive_area_applies(System) :-
    law_enforcement(System).
sensitive_area_applies(System) :-
    migration(System).
sensitive_area_applies(System) :-
    asylum(System).
sensitive_area_applies(System) :-
    border_control_management(System).

% Registration shall be in a secure non-public section of the EU database
registration_in_secure_non_public_section(registration(System)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% Permitted registration information includes only specified points:
% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
permitted_registration_information(System, annex_viii_point(1)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(2)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(3)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(4)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(5)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(7)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(10)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
permitted_registration_information(System, annex_viii_section_b_point(1)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(2)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(3)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(4)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(5)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(8)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(9)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% (c) Annex VIII, points (1) to (3) (redundant with (a) but explicitly referenced)
% Already covered by points 1, 2, 3 above.

% (d) Annex IX, points (1), (2), (3) and (5)
permitted_registration_information(System, annex_ix_point(1)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_ix_point(2)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_ix_point(3)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_ix_point(5)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% Access to respective restricted sections of the EU database
permitted_access(Actor, Section) :-
    commission(Actor),
    restricted_section_eu_database_article_49_4(Section).
permitted_access(Actor, Section) :-
    national_authority_article_74_8(Actor),
    restricted_section_eu_database_article_49_4(Section).
