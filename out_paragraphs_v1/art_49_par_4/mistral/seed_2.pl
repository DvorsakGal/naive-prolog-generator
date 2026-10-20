:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    annex_iii_point/1,
    area/1,
    registration_in_secure_non_public_section/2,
    registration_includes_information/3,
    information_source/1,
    permitted_access/2,
    commission/1,
    national_authority/1,
    eu_database/1,
    restricted_section/2,
    article_49_paragraph/1,
    article_71/1,
    article_74_paragraph_8/1
]).

% Input predicates about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/1.
:- dynamic area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic eu_database/1.
:- dynamic article_49_paragraph/1.
:- dynamic article_71/1.
:- dynamic article_74_paragraph_8/1.

% The specific high-risk AI systems: Annex III, points (1), (6) and (7)
annex_iii_point(point_1).
annex_iii_point(point_6).
annex_iii_point(point_7).

% The areas: law enforcement, migration, asylum and border control management
area(law_enforcement).
area(migration).
area(asylum).
area(border_control_management).

% Article 49 paragraphs (1), (2), (3) all refer to registration
article_49_paragraph(paragraph_1).
article_49_paragraph(paragraph_2).
article_49_paragraph(paragraph_3).

% Article 71 refers to the EU database
article_71(article_71).

% Article 74(8) refers to national authorities
article_74_paragraph_8(article_74_paragraph_8).

% Registration for these high-risk AI systems in these areas shall be in a secure non-public section of the EU database
registration_in_secure_non_public_section(S, Db) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    area(A),
    applies_to_area(S, A),
    refers_to_annex_iii_point(S, P),
    eu_database(Db),
    article_71(Art71),
    referred_to_in(Db, Art71),
    article_49_paragraph(Para),
    registration_referred_to_in(S, Para).

% Helper: the system applies to one of the specified areas
applies_to_area(S, law_enforcement) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(law_enforcement).
applies_to_area(S, migration) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(migration).
applies_to_area(S, asylum) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(asylum).
applies_to_area(S, border_control_management) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(border_control_management).

% The registration shall include only the following information, as applicable
% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
registration_includes_information(S, annex_viii_points_1_to_10_except_6_8_9) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_viii_points_1_to_10_except_6_8_9).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_includes_information(S, annex_viii_section_b_points_1_to_5_and_8_9) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_viii_section_b_points_1_to_5_and_8_9).

% (c) Annex VIII, points (1) to (3)
registration_includes_information(S, annex_viii_points_1_to_3) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_viii_points_1_to_3).

% (d) Annex IX, points (1), (2), (3) and (5)
registration_includes_information(S, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_ix_points_1_2_3_5).

% The information sources
information_source(annex_viii_points_1_to_10_except_6_8_9).
information_source(annex_viii_section_b_points_1_to_5_and_8_9).
information_source(annex_viii_points_1_to_3).
information_source(annex_ix_points_1_2_3_5).

% Only the Commission and national authorities referred to in Article 74(8) shall have access
% to the respective restricted sections of the EU database listed in Article 49(4)
permitted_access(Accessor, RestrictedSection) :-
    restricted_section(Db, RestrictedSection),
    eu_database(Db),
    article_49_paragraph_4_lists(Db),
    (
        commission(Accessor)
        ;
        national_authority(Accessor),
        article_74_paragraph_8(Art74_8),
        referred_to_in(Accessor, Art74_8)
    ).

% Helper: Article 49(4) lists restricted sections of the EU database
article_49_paragraph_4_lists(Db) :-
    eu_database(Db),
    restricted_section(Db, _).

% Helper predicates that would be defined elsewhere or as facts
% refers_to_annex_iii_point(S, P) - the system S refers to Annex III point P
% registration_referred_to_in(S, Para) - the registration of S is referred to in Article 49 paragraph Para
% referred_to_in(X, Art) - X is referred to in Article Art
% restricted_section(Db, Section) - Section is a restricted section of database Db

:- dynamic refers_to_annex_iii_point/2.
:- dynamic registration_referred_to_in/2.
:- dynamic referred_to_in/2.
:- dynamic restricted_section/2.
