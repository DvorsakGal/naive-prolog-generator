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

permitted_registration_information(annex_viii_section_b(N)) :-
    member_point(N, [1, 2, 3, 4, 5, 8, 9]).

permitted_registration_information(annex_viii(N)) :-
    member_point(N, [1, 2, 3]).

permitted_registration_information(annex_ix(N)) :-
    member_point(N, [1, 2, 3, 5]).

member_point(X, [X|_]).

member_point(X, [_|T]) :-
    member_point(X, T).

permitted_access_restricted_section(P) :-
    commission(P).

permitted_access_restricted_section(P) :-
    national_authority_article_74_8(P).

prohibited_access_restricted_section(P) :-
    seeks_access(P, restricted_section(eu_database)),
    \+ permitted_access_restricted_section(P).
