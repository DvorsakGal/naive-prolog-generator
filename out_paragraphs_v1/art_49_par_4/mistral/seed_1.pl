:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    annex_iii_point/1,
    area/1,
    registration_section/1,
    registration_information/1,
    eu_database/1,
    restricted_section/1,
    access_to_restricted_section/2,
    commission/1,
    national_authority/1
]).

% Input predicates about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/1.
:- dynamic area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Article 74(8) national authorities
national_authority_referred_to_in_article_74_8(A) :-
    national_authority(A).

% EU database referred to in Article 71
eu_database(EU) :-
    eu_database_article_71(EU).

:- dynamic eu_database_article_71/1.

% Registration under Article 49(1), 49(2), 49(3) for specific high-risk AI systems
registration_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    member(P, [point_1, point_6, point_7]),
    area(S, A),
    member(A, [law_enforcement, migration, asylum, border_control_management]).

% The registration shall be in a secure non-public section of the EU database
registration_section(S, secure_non_public_section(EU)) :-
    registration_applies(S),
    eu_database(EU).

% Information included in the registration, as applicable
registration_information(S, annex_viii_points_1_to_10_except_6_8_9) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_1).

registration_information(S, section_b_points_1_to_5_and_8_9_of_annex_viii) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_2).

registration_information(S, annex_viii_points_1_to_3) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_3).

registration_information(S, annex_ix_points_1_2_3_5) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_4).

:- dynamic registration_referred_to_in/2.

% Restricted sections of the EU database listed in Article 49(4)
restricted_section(S, restricted_section(EU)) :-
    registration_applies(S),
    eu_database(EU),
    registration_referred_to_in(S, article_49_4).

% Only the Commission and national authorities referred to in Article 74(8) shall have access
access_to_restricted_section(A, restricted_section(EU)) :-
    restricted_section(_, restricted_section(EU)),
    commission(A).

access_to_restricted_section(A, restricted_section(EU)) :-
    restricted_section(_, restricted_section(EU)),
    national_authority_referred_to_in_article_74_8(A).

% Helper: membership
member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).
