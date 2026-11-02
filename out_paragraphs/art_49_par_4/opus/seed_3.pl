:- module(restricted_registration_law_enforcement_migration, [
    restricted_registration_applies/1,
    required_secure_non_public_section/1,
    must_include_only/2,
    permitted_registration_information/1,
    permitted_access_restricted_section/1,
    prohibited_access_restricted_section/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/2.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic seeks_access/2.

% Scope: Annex III points 1, 6, 7 systems in law enforcement, migration, asylum, border control
restricted_area(law_enforcement).
restricted_area(migration).
restricted_area(asylum).
restricted_area(border_control_management).

restricted_annex_point(1).
restricted_annex_point(6).
restricted_annex_point(7).

restricted_registration_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, N),
    restricted_annex_point(N),
    area(S, A),
    restricted_area(A).

% Registration under Article 49(1), (2), (3) goes to secure non-public section of EU database (Article 71)
registration_article(article(49, 1)).
registration_article(article(49, 2)).
registration_article(article(49, 3)).

required_secure_non_public_section(registration(S, Art)) :-
    restricted_registration_applies(S),
    registration(S, Art),
    registration_article(Art).

must_include_only(registration(S, Art), information(I)) :-
    required_secure_non_public_section(registration(S, Art)),
    permitted_registration_information(I).

% (a) Annex VIII points 1 to 10 except 6, 8, 9
permitted_registration_information(annex_viii(N)) :-
    member_point(N, [1, 2, 3, 4, 5, 7, 10]).
% (b) Annex VIII Section B points 1 to 5, 8 and 9
permitted_registration_information(annex_viii_section_b(N)) :-
    member_point(N, [1, 2, 3, 4, 5, 8, 9]).
% (c) Annex VIII points 1 to 3
permitted_registration_information(annex_viii(N)) :-
    member_point(N, [1, 2, 3]).
% (d) Annex IX points 1, 2, 3 and 5
permitted_registration_information(annex_ix(N)) :-
    member_point(N, [1, 2, 3, 5]).

member_point(X, [X|_]).
member_point(X, [_|T]) :-
    member_point(X, T).

% Access to restricted sections (Article 49(4)): only Commission and Article 74(8) authorities
permitted_access_restricted_section(P) :-
    commission(P).
permitted_access_restricted_section(P) :-
    national_authority_article_74_8(P).

prohibited_access_restricted_section(P) :-
    seeks_access(P, restricted_section(eu_database)),
    \+ permitted_access_restricted_section(P).
