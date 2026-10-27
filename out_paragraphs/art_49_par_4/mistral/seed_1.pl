:- module(high_risk_ai_registration, [
    registration_in_secure_non_public_section/1,
    registration_includes_information/2,
    access_to_restricted_section/2
]).

% High-risk AI systems referred to in Annex III, points (1), (6) and (7),
% in the areas of law enforcement, migration, asylum and border control management
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    member(P, [1, 6, 7]),
    area(S, A),
    member(A, [law_enforcement, migration, asylum, border_control_management]).

% The registration referred to in Article 49(1), Article 49(2), Article 49(3)
% shall be in a secure non-public section of the EU database referred to in Article 71
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system_annex_iii(S),
    registration_article_49(S, Article),
    member(Article, ['49(1)', '49(2)', '49(3)']),
    eu_database_article_71(DB),
    secure_non_public_section(DB, Section),
    registration_in_section(S, Section).

% The registration shall include only the following information, as applicable
registration_includes_information(S, Info) :-
    high_risk_ai_system_annex_iii(S),
    registration_article_49(S, Article),
    member(Article, ['49(1)', '49(2)', '49(3)']),
    applicable_information(Article, Info).

% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
applicable_information('49(1)', annex_viii_points_except_6_8_9).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
applicable_information('49(2)', annex_viii_section_b_points_1_to_5_and_8_9).

% (c) Annex VIII, points (1) to (3)
applicable_information('49(3)', annex_viii_points_1_to_3).

% (d) Annex IX, points (1), (2), (3) and (5)
applicable_information('49(4)', annex_ix_points_1_2_3_5).

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database listed in Article 49(4)
access_to_restricted_section(Accessor, Section) :-
    eu_database_article_71(DB),
    restricted_section(DB, Section),
    article_49_4_listed(Section),
    authorised_accessor(Accessor).

authorised_accessor(commission).

authorised_accessor(national_authority(A)) :-
    national_authority_article_74_8(A).

% Inputs: facts about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration_article_49/2.
:- dynamic eu_database_article_71/1.
:- dynamic secure_non_public_section/2.
:- dynamic registration_in_section/2.
:- dynamic restricted_section/2.
:- dynamic article_49_4_listed/1.
:- dynamic national_authority_article_74_8/1.

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
