:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_in_secure_non_public_section/1,
    registration_includes_information/2,
    access_to_restricted_section/2
]).

% High-risk AI systems in specific areas
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Registration must be in a secure non-public section of the EU database
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, law_enforcement).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, migration).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, asylum).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, border_control_management).

% Information to be included in the registration
registration_includes_information(S, annex_viii_points([1,2,3,4,5,7,10])) :-
    registration_in_secure_non_public_section(S).
registration_includes_information(S, annex_viii_section_b_points([1,2,3,4,5,8,9])) :-
    registration_in_secure_non_public_section(S).
registration_includes_information(S, annex_viii_points([1,2,3])) :-
    registration_in_secure_non_public_section(S).
registration_includes_information(S, annex_ix_points([1,2,3,5])) :-
    registration_in_secure_non_public_section(S).

% Access to restricted sections
access_to_restricted_section(commission, S) :-
    registration_in_secure_non_public_section(S).
access_to_restricted_section(Authority, S) :-
    national_authority(Authority),
    article_74_8_authority(Authority),
    registration_in_secure_non_public_section(S).

% Input predicates
:- dynamic annex_iii_point/2.
:- dynamic area_applies/2.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.
