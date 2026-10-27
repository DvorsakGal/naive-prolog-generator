:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_required/1,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    has_access/2,
    restricted_section/1,
    annex_iii_point/1,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    commission/1,
    national_authority/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Areas covered by this provision
area(law_enforcement).
area(migration).
area(asylum).
area(border_control_management).

% Annex III points covered
annex_iii_point(1).
annex_iii_point(6).
annex_iii_point(7).

% Annex VIII points for general inclusion (points 1-10 except 6, 8, 9)
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

% Annex VIII points for part (c) (points 1-3)
annex_viii_point_c(1).
annex_viii_point_c(2).
annex_viii_point_c(3).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(5).

% Article 49 paragraphs
article_49_paragraph(1).
article_49_paragraph(2).
article_49_paragraph(3).
article_49_paragraph(4).

% The EU database referred to in Article 71
eu_database(eu_database_article_71).

% Secure non-public section of the EU database
secure_non_public_section(secure_section_article_49).

% Registration requirement for high-risk AI systems in specified areas
registration_required(S) :-
    high_risk_ai_system(S),
    annex_iii_point_applies(S, P),
    member(P, [1, 6, 7]),
    relevant_area(S, A),
    area(A).

% Determine if Annex III point applies to system
annex_iii_point_applies(S, P) :-
    high_risk_ai_system(S),
    annex_iii_point(P).

% Determine relevant area for system
relevant_area(S, law_enforcement) :- law_enforcement_area(S).
relevant_area(S, migration) :- migration_area(S).
relevant_area(S, asylum) :- asylum_area(S).
relevant_area(S, border_control_management) :- border_control_management_area(S).

% The registration shall be in secure non-public section
must_be_in_secure_section(S) :-
    registration_required(S),
    secure_non_public_section(Section),
    eu_database(Database),
    section_of(Section, Database).

% Information that must be included - part (a): Annex VIII points 1-10 except 6, 8, 9
must_include_information(S, annex_viii_point(P)) :-
    registration_required(S),
    annex_viii_point(P),
    \+ excluded_annex_viii_point_a(P).

excluded_annex_viii_point_a(6).
excluded_annex_viii_point_a(8).
excluded_annex_viii_point_a(9).

% Information that must be included - part (b): Section B points 1-5, 8, 9
must_include_information(S, annex_viii_section_b_point(P)) :-
    registration_required(S),
    annex_viii_section_b_point(P).

% Information that must be included - part (c): Annex VIII points 1-3
must_include_information(S, annex_viii_point_c(P)) :-
    registration_required(S),
    annex_viii_point_c(P).

% Information that must be included - part (d): Annex IX points 1, 2, 3, 5
must_include_information(S, annex_ix_point(P)) :-
    registration_required(S),
    annex_ix_point(P).

% Access restriction: only Commission and national authorities under Article 74(8)
has_access(Commission, Section) :-
    commission(Commission),
    restricted_section(Section),
    article_49_paragraph(4).

has_access(Authority, Section) :-
    national_authority(Authority),
    article_74_8_applies(Authority),
    restricted_section(Section),
    article_49_paragraph(4).

% Article 74(8) national authority
article_74_8_applies(Authority) :-
    national_authority(Authority).

% Restricted sections are those listed in Article 49(4)
restricted_section(Section) :-
    secure_non_public_section(Section),
    registration_required(_S).

% Section relationship
section_of(secure_section_article_49, eu_database_article_71).

% Helper for membership
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
