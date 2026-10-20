:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_applies/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    commission/1,
    national_authority/1,
    must_have_access/2,
    restricted_section/1
]).

% High-risk AI systems in specific areas
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

law_enforcement_area(S) :-
    high_risk_ai_system(S).
migration_area(S) :-
    high_risk_ai_system(S).
asylum_area(S) :-
    high_risk_ai_system(S).
border_control_management_area(S) :-
    high_risk_ai_system(S).

% Registration requirement
registration_applies(S) :-
    high_risk_ai_system(S),
    (   law_enforcement_area(S)
    ;   migration_area(S)
    ;   asylum_area(S)
    ;   border_control_management_area(S)
    ).

must_register_in(S, secure_non_public_section(Database)) :-
    registration_applies(S),
    eu_database(Database).

secure_non_public_section(Database) :-
    eu_database(Database).

eu_database(article_71_database).

% Information to be included
must_include_information(S, annex_viii_points_1_to_10_except_6_8_9) :-
    registration_applies(S).

must_include_information(S, annex_viii_section_b_points_1_to_5_8_9) :-
    registration_applies(S).

must_include_information(S, annex_viii_points_1_to_3) :-
    registration_applies(S).

must_include_information(S, annex_ix_points_1_2_3_5) :-
    registration_applies(S).

% Annex VIII points
annex_viii_point(1).
annex_viii_point(2).
annex_viii_point(3).
annex_viii_point(4).
annex_viii_point(5).
annex_viii_point(7).
annex_viii_point(10).

% Annex VIII Section B points
annex_viii_section_b_point(1).
annex_viii_section_b_point(2).
annex_viii_section_b_point(3).
annex_viii_section_b_point(4).
annex_viii_section_b_point(5).
annex_viii_section_b_point(8).
annex_viii_section_b_point(9).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(5).

% Access to restricted sections
commission(commission).
national_authority(article_74_8_authority).

must_have_access(commission, restricted_section(article_49_4_section)).
must_have_access(article_74_8_authority, restricted_section(article_49_4_section)).

restricted_section(article_49_4_section).

% Input predicates
:- dynamic annex_iii_point/2.
