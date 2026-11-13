:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_in_secure_non_public_section/2,
    registration_includes_information/2,
    permitted_access_to_restricted_section/2
]).
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic eu_database/2.
:- dynamic secure_non_public_section/2.
:- dynamic registration_article_49/2.
:- dynamic information_annex_viii_points_1_to_10_except_6_8_9/1.
:- dynamic information_section_b_points_1_to_5_and_8_9/1.
:- dynamic information_annex_viii_points_1_to_3/1.
:- dynamic information_annex_ix_points_1_2_3_5/1.
:- dynamic commission/1.
:- dynamic restricted_section/1.
:- dynamic eu_database_listed_in_article_49_4/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.

high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, law_enforcement).

high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, migration).

high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, asylum).

high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, border_control_management).

high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, law_enforcement).

high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, migration).

high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, asylum).

high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, border_control_management).

high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, law_enforcement).

high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, migration).

high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, asylum).

high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, border_control_management).

registration_in_secure_non_public_section(S, Database) :-
    high_risk_ai_system(S),
    eu_database(Article71, Database),
    secure_non_public_section(Database, Section),
    registration_article_49(S, Section).

registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_annex_viii_points_1_to_10_except_6_8_9(Information).

registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_section_b_points_1_to_5_and_8_9(Information).

registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_annex_viii_points_1_to_3(Information).

registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_annex_ix_points_1_2_3_5(Information).

permitted_access_to_restricted_section(Commission, Section) :-
    commission(Commission),
    restricted_section(Section),
    eu_database_listed_in_article_49_4(Section).

permitted_access_to_restricted_section(Section, Authority) :-
    national_authority_referred_to_in_article_74_8(Authority),
    restricted_section(Section),
    eu_database_listed_in_article_49_4(Section).
