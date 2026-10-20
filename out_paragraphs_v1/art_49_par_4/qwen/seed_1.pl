:- module(secure_registration_requirements, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii_point_1/1,
    referred_to_in_annex_iii_point_6/1,
    referred_to_in_annex_iii_point_7/1,
    law_enforcement_applies/1,
    migration_applies/1,
    asylum_applies/1,
    border_control_management_applies/1,
    registration_referred_to_in_article_49_1/1,
    registration_referred_to_in_article_49_2/1,
    registration_referred_to_in_article_49_3/1,
    eu_database_referred_to_in_article_71/1,
    must_be_in_secure_non_public_section/2,
    must_include_only_applicable_information/2,
    annex_viii_points_1_to_10_except_6_8_9/1,
    section_b_points_1_to_5_and_8_9_of_annex_viii/1,
    annex_viii_points_1_to_3/1,
    annex_ix_points_1_2_3_and_5/1,
    commission/1,
    national_authority_referred_to_in_article_74_8/1,
    restricted_section_listed_in_article_49_4/1,
    has_access_to_restricted_section/2
]).

% Input predicates for entities and references not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic referred_to_in_annex_iii_point_1/1.
:- dynamic referred_to_in_annex_iii_point_6/1.
:- dynamic referred_to_in_annex_iii_point_7/1.
:- dynamic law_enforcement_applies/1.
:- dynamic migration_applies/1.
:- dynamic asylum_applies/1.
:- dynamic border_control_management_applies/1.
:- dynamic registration_referred_to_in_article_49_1/1.
:- dynamic registration_referred_to_in_article_49_2/1.
:- dynamic registration_referred_to_in_article_49_3/1.
:- dynamic eu_database_referred_to_in_article_71/1.
:- dynamic annex_viii_points_1_to_10_except_6_8_9/1.
:- dynamic section_b_points_1_to_5_and_8_9_of_annex_viii/1.
:- dynamic annex_viii_points_1_to_3/1.
:- dynamic annex_ix_points_1_2_3_and_5/1.
:- dynamic commission/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.
:- dynamic restricted_section_listed_in_article_49_4/1.

% Conditions for applicability of secure registration requirements
applicable_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point_1(S).

applicable_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point_6(S).

applicable_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point_7(S).

applicable_domain(S) :-
    law_enforcement_applies(S).

applicable_domain(S) :-
    migration_applies(S).

applicable_domain(S) :-
    asylum_applies(S).

applicable_domain(S) :-
    border_control_management_applies(S).

% Registration location requirement
must_be_in_secure_non_public_section(R, D) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    eu_database_referred_to_in_article_71(D).

registration_for_system(R, S) :-
    registration_referred_to_in_article_49_1(R),
    high_risk_ai_system(S).

registration_for_system(R, S) :-
    registration_referred_to_in_article_49_2(R),
    high_risk_ai_system(S).

registration_for_system(R, S) :-
    registration_referred_to_in_article_49_3(R),
    high_risk_ai_system(S).

% Information inclusion requirements
must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    annex_viii_points_1_to_10_except_6_8_9(I).

must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    section_b_points_1_to_5_and_8_9_of_annex_viii(I).

must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    annex_viii_points_1_to_3(I).

must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    annex_ix_points_1_2_3_and_5(I).

% Access restrictions
has_access_to_restricted_section(C, Sec) :-
    commission(C),
    restricted_section_listed_in_article_49_4(Sec).

has_access_to_restricted_section(A, Sec) :-
    national_authority_referred_to_in_article_74_8(A),
    restricted_section_listed_in_article_49_4(Sec).
