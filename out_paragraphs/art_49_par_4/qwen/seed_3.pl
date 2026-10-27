:- module(secure_registration_requirements, [
    high_risk_ai_system_in_specified_area/1,
    must_register_in_secure_non_public_section/2,
    required_registration_information/2,
    permitted_access_to_restricted_section/2
]).

% Input predicates for external facts
:- dynamic annex_iii_point/2.
:- dynamic eu_database/1.
:- dynamic national_authority_under_article_74_8/1.
:- dynamic commission/1.

% High-risk AI systems in law enforcement, migration, asylum and border control
high_risk_ai_system_in_specified_area(System) :-
    annex_iii_point(System, point(1)),
    in_specified_area(System).
high_risk_ai_system_in_specified_area(System) :-
    annex_iii_point(System, point(6)),
    in_specified_area(System).
high_risk_ai_system_in_specified_area(System) :-
    annex_iii_point(System, point(7)),
    in_specified_area(System).

in_specified_area(System) :-
    area_of_law_enforcement(System).
in_specified_area(System) :-
    area_of_migration(System).
in_specified_area(System) :-
    area_of_asylum(System).
in_specified_area(System) :-
    area_of_border_control_management(System).

% Registration location requirement
must_register_in_secure_non_public_section(System, Database) :-
    high_risk_ai_system_in_specified_area(System),
    eu_database(Database),
    secure_non_public_section(Database).

% Information inclusion requirements based on applicable annex points
required_registration_information(System, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system_in_specified_area(System).
required_registration_information(System, section_b_points_1_to_5_and_8_9_of_annex_viii) :-
    high_risk_ai_system_in_specified_area(System).
required_registration_information(System, annex_viii_points_1_to_3) :-
    high_risk_ai_system_in_specified_area(System).
required_registration_information(System, annex_ix_points_1_2_3_and_5) :-
    high_risk_ai_system_in_specified_area(System).

% Access restrictions to the secure non-public section
permitted_access_to_restricted_section(Entity, RestrictedSection) :-
    commission(Entity),
    restricted_section_of_eu_database(RestrictedSection).
permitted_access_to_restricted_section(Entity, RestrictedSection) :-
    national_authority_under_article_74_8(Entity),
    restricted_section_of_eu_database(RestrictedSection).

restricted_section_of_eu_database(Section) :-
    eu_database(_DB),
    secure_non_public_section(_DB),
    Section = _DB.
