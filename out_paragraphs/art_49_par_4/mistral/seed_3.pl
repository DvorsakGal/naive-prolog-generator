:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_in_secure_non_public_section/2,
    registration_includes_information/3,
    permitted_access_to_restricted_section/2
]).

% High-risk AI systems referred to in Annex III, points (1), (6) and (7),
% in the areas of law enforcement, migration, asylum and border control management
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

% The registration referred to in Article 49(1), Article 49(2), Article 49(3)
% shall be in a secure non-public section of the EU database referred to in Article 71
registration_in_secure_non_public_section(S, D) :-
    high_risk_ai_system(S),
    eu_database(D),
    article_71(D),
    secure_non_public_section(D, Section),
    registration(S, Section).

% The registration shall include only the following information, as applicable, referred to in:
% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
registration_includes_information(S, info(annex_viii, points(1, 10), except([6, 8, 9]))) :-
    high_risk_ai_system(S),
    registration_applies(S, a).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_includes_information(S, info(annex_viii, section_b, points([1, 2, 3, 4, 5, 8, 9]))) :-
    high_risk_ai_system(S),
    registration_applies(S, b).

% (c) Annex VIII, points (1) to (3)
registration_includes_information(S, info(annex_viii, points(1, 3))) :-
    high_risk_ai_system(S),
    registration_applies(S, c).

% (d) Annex IX, points (1), (2), (3) and (5)
registration_includes_information(S, info(annex_ix, points([1, 2, 3, 5]))) :-
    high_risk_ai_system(S),
    registration_applies(S, d).

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database listed in Article 49(4)
permitted_access_to_restricted_section(commission, Section) :-
    eu_database(D),
    article_49_4(D, Section),
    restricted_section(D, Section).

permitted_access_to_restricted_section(A, Section) :-
    national_authority(A),
    article_74_8(A),
    eu_database(D),
    article_49_4(D, Section),
    restricted_section(D, Section).

% Inputs: facts about the world the text does not settle
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic eu_database/1.
:- dynamic article_71/1.
:- dynamic secure_non_public_section/2.
:- dynamic registration/2.
:- dynamic registration_applies/2.
:- dynamic article_49_4/2.
:- dynamic restricted_section/2.
:- dynamic national_authority/1.
:- dynamic article_74_8/1.
