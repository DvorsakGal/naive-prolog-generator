:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    annex_iii_point/1,
    area/1,
    registration_section/1,
    registration_information/1,
    access_to_restricted_section/2,
    commission/1,
    national_authority/1
]).

% Input predicates: facts about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/1.
:- dynamic area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Article 74(8) national authorities
national_authority_referred_to_in_article_74_8(A) :-
    national_authority(A).

% The registration under Article 49(1), 49(2), 49(3) for high-risk AI systems
% in Annex III, points (1), (6) and (7), in the areas of law enforcement,
% migration, asylum and border control management
registration_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    member(P, [point(1), point(6), point(7)]),
    area(S, A),
    member(A, [law_enforcement, migration, asylum, border_control_management]).

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% The registration shall be in a secure non-public section of the EU database
% referred to in Article 71
registration_section(S, secure_non_public_section(eu_database(article_71))) :-
    registration_applies(S).

% The registration shall include only the following information, as applicable

% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
registration_information(S, annex_viii_points_except_6_8_9) :-
    registration_applies(S),
    registration_information_applicable(S, a).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_information(S, annex_viii_section_b_points_1_to_5_and_8_and_9) :-
    registration_applies(S),
    registration_information_applicable(S, b).

% (c) Annex VIII, points (1) to (3)
registration_information(S, annex_viii_points_1_to_3) :-
    registration_applies(S),
    registration_information_applicable(S, c).

% (d) Annex IX, points (1), (2), (3) and (5)
registration_information(S, annex_ix_points_1_2_3_and_5) :-
    registration_applies(S),
    registration_information_applicable(S, d).

% Input predicate: which information categories are applicable to a system
:- dynamic registration_information_applicable/2.

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database
% listed in Article 49(4)
access_to_restricted_section(A, restricted_section(eu_database(article_71), article_49_4)) :-
    registration_applies(S),
    registration_section(S, Section),
    restricted_section_of(Section, restricted_section(eu_database(article_71), article_49_4)),
    (
        commission(A)
    ;
        national_authority_referred_to_in_article_74_8(A)
    ).

restricted_section_of(secure_non_public_section(eu_database(article_71)), restricted_section(eu_database(article_71), article_49_4)).
