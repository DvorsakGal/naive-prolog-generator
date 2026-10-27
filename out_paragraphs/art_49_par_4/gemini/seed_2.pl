:- module(sensitive_high_risk_ai_registration, [
    sensitive_high_risk_system/1,
    required_secure_non_public_registration/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point_1/1.
:- dynamic annex_iii_point_6/1.
:- dynamic annex_iii_point_7/1.
:- dynamic area_law_enforcement/1.
:- dynamic area_migration_asylum_border_control/1.
:- dynamic eu_database_section/2.
:- dynamic restricted_section_article_49_4/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.

% A high-risk AI system in the sensitive areas covered by points 1, 6, and 7 of Annex III
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_1(System),
    area_law_enforcement(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_1(System),
    area_migration_asylum_border_control(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_6(System),
    area_law_enforcement(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_6(System),
    area_migration_asylum_border_control(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_7(System),
    area_law_enforcement(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_7(System),
    area_migration_asylum_border_control(System).

% Registration shall be in a secure non-public section of the EU database
required_secure_non_public_registration(registration(System)) :-
    sensitive_high_risk_system(System),
    eu_database_section(System, secure_non_public).

% Permitted information in the registration:
% (a) Annex VIII, points 1 to 10, except 6, 8, and 9 (i.e. points 1, 2, 3, 4, 5, 7, 10)
permitted_registration_information(System, information(annex_viii, point(1))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(2))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(3))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(4))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(5))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(7))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(10))) :-
    sensitive_high_risk_system(System).

% (b) Annex VIII, Section B, points 1 to 5, and points 8 and 9
permitted_registration_information(System, information(annex_viii, section_b, point(1))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(2))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(3))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(4))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(5))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(8))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(9))) :-
    sensitive_high_risk_system(System).

% (c) Annex VIII, points 1 to 3 (already covered under (a), stated explicitly for clarity/applicability)
% (d) Annex IX, points 1, 2, 3 and 5
permitted_registration_information(System, information(annex_ix, point(1))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_ix, point(2))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_ix, point(3))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_ix, point(5))) :-
    sensitive_high_risk_system(System).

% Only the Commission and national authorities referred to in Article 74(8) shall have access
% to the restricted sections of the EU database listed in Article 49(4)
permitted_access(Actor, Section) :-
    commission(Actor),
    restricted_section_article_49_4(Section).
permitted_access(Actor, Section) :-
    national_authority_article_74_8(Actor),
    restricted_section_article_49_4(Section).
