:- module(secure_registration_requirements, [
    high_risk_ai_system_annex_iii/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register_in_secure_non_public_section/2,
    secure_non_public_section/2,
    eu_database_article_71/1,
    registration_information_applies/2,
    annex_viii_points_1_to_10_excluding_6_8_9/1,
    annex_viii_section_b_points_1_to_5_and_8_9/1,
    annex_viii_points_1_to_3/1,
    annex_ix_points_1_2_3_5/1,
    commission/1,
    national_authority_article_74_8/1,
    has_access_to_restricted_section/2,
    restricted_section_article_49_4/2
]).

% Input predicates for external facts
:- dynamic high_risk_ai_system_annex_iii/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic eu_database_article_71/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic annex_viii_points_1_to_10_excluding_6_8_9/1.
:- dynamic annex_viii_section_b_points_1_to_5_and_8_9/1.
:- dynamic annex_viii_points_1_to_3/1.
:- dynamic annex_ix_points_1_2_3_5/1.

% Secure non-public section of EU database
secure_non_public_section(Section, Database) :-
    eu_database_article_71(Database),
    secure_non_public_section_of(Section, Database).

% Registration requirement for specific high-risk AI systems
must_register_in_secure_non_public_section(System, Section) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System),
    secure_non_public_section(Section, _Database).

applicable_area(System) :-
    law_enforcement_area(System).
applicable_area(System) :-
    migration_area(System).
applicable_area(System) :-
    asylum_area(System).
applicable_area(System) :-
    border_control_management_area(System).

% Information inclusion requirements for registration
registration_information_applies(System, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

registration_information_applies(System, annex_viii_section_b_points_1_to_5_and_8_9) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

registration_information_applies(System, annex_viii_points_1_to_3) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

registration_information_applies(System, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

% Access restrictions to restricted sections
has_access_to_restricted_section(Entity, Section) :-
    commission(Entity),
    restricted_section_article_49_4(Section, _Database).

has_access_to_restricted_section(Entity, Section) :-
    national_authority_article_74_8(Entity),
    restricted_section_article_49_4(Section, _Database).
