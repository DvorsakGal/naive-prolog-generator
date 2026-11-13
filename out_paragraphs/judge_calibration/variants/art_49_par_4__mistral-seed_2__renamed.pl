:- module(elevated_risk_ai_registration, [
    elevated_risk_ai_system/1,
    registration_in_secure_non_public_section/2,
    registration_includes_data/2,
    permitted_access_to_restricted_section/2
]).
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic eu_database/2.
:- dynamic secure_non_public_section/2.
:- dynamic registration_article_49/2.
:- dynamic data_annex_viii_points_1_to_10_except_6_8_9/1.
:- dynamic data_section_b_points_1_to_5_and_8_9/1.
:- dynamic data_annex_viii_points_1_to_3/1.
:- dynamic data_annex_ix_points_1_2_3_5/1.
:- dynamic european_commission/1.
:- dynamic restricted_section/1.
:- dynamic eu_database_listed_in_article_49_4/1.
:- dynamic national_public_authority_referred_to_in_article_74_8/1.

registration_includes_data(XS, XInformation) :-
    elevated_risk_ai_system(XS),
    data_annex_viii_points_1_to_3(XInformation).

registration_includes_data(XS, XInformation) :-
    elevated_risk_ai_system(XS),
    data_section_b_points_1_to_5_and_8_9(XInformation).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 7),
    area(XS, border_control_management).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 6),
    area(XS, migration).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 1),
    area(XS, asylum).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 6),
    area(XS, asylum).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 6),
    area(XS, border_control_management).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 1),
    area(XS, migration).

registration_includes_data(XS, XInformation) :-
    elevated_risk_ai_system(XS),
    data_annex_ix_points_1_2_3_5(XInformation).

registration_includes_data(XS, XInformation) :-
    elevated_risk_ai_system(XS),
    data_annex_viii_points_1_to_10_except_6_8_9(XInformation).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 7),
    area(XS, law_enforcement).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 6),
    area(XS, law_enforcement).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 7),
    area(XS, migration).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 1),
    area(XS, border_control_management).

permitted_access_to_restricted_section(XCommission, XSection) :-
    european_commission(XCommission),
    restricted_section(XSection),
    eu_database_listed_in_article_49_4(XSection).

registration_in_secure_non_public_section(XS, XDatabase) :-
    elevated_risk_ai_system(XS),
    eu_database(XArticle71, XDatabase),
    secure_non_public_section(XDatabase, XSection),
    registration_article_49(XS, XSection).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 1),
    area(XS, law_enforcement).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 7),
    area(XS, asylum).

permitted_access_to_restricted_section(XAuthority, XSection) :-
    national_public_authority_referred_to_in_article_74_8(XAuthority),
    restricted_section(XSection),
    eu_database_listed_in_article_49_4(XSection).
