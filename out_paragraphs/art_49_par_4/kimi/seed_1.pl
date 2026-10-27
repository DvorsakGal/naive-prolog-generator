:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_required/1,
    secure_non_public_section/1,
    eu_database/1,
    must_register_in_section/2,
    registration_includes/2,
    access_restricted_to/2,
    commission/1,
    national_authority/1
]).

% Areas covered by this provision
law_enforcement_area(law_enforcement).
migration_area(migration).
asylum_area(asylum).
border_control_management_area(border_control_management).

% Database and section
eu_database(eu_database_article_71).
secure_non_public_section(secure_non_public_section).

% High-risk AI systems from Annex III, points (1), (6) and (7)
high_risk_ai_system(S) :-
    referred_to_in_annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    referred_to_in_annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    referred_to_in_annex_iii_point(S, 7).

% Covered area predicate
covered_area(A) :-
    law_enforcement_area(A).
covered_area(A) :-
    migration_area(A).
covered_area(A) :-
    asylum_area(A).
covered_area(A) :-
    border_control_management_area(A).

% Registration requirements from Article 49
registration_required(article_49_1).
registration_required(article_49_2).
registration_required(article_49_3).

% The secure non-public section requirement
must_register_in_section(S, secure_non_public_section) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    registration_required(R),
    applies_to(R, S).

% Information to be included from Annex VIII points (1) to (10), except 6, 8, 9
registration_includes(S, annex_viii_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    between(1, 10, P),
    P \= 6,
    P \= 8,
    P \= 9,
    applicable_for(S, annex_viii_points_1_to_10_except_6_8_9).

% Information from Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_includes(S, section_b_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    member(P, [1, 2, 3, 4, 5, 8, 9]),
    applicable_for(S, section_b_points_1_to_5_and_8_9).

% Information from Annex VIII, points (1) to (3)
registration_includes(S, annex_viii_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    between(1, 3, P),
    applicable_for(S, annex_viii_points_1_to_3).

% Information from Annex IX, points (1), (2), (3) and (5)
registration_includes(S, annex_ix_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    member(P, [1, 2, 3, 5]),
    applicable_for(S, annex_ix_points_1_2_3_5).

% Access restrictions - only Commission and national authorities under Article 74(8)
access_restricted_to(secure_non_public_section, Entity) :-
    commission(Entity).
access_restricted_to(secure_non_public_section, Entity) :-
    national_authority(Entity),
    referred_to_in_article_74_8(Entity).

% Input predicates - facts about the world not settled by this text
:- dynamic referred_to_in_annex_iii_point/2.
:- dynamic used_in_area/2.
:- dynamic applies_to/2.
:- dynamic applicable_for/2.
:- dynamic referred_to_in_article_74_8/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Helper for range
between(Low, High, Low) :- Low =< High.
between(Low, High, X) :-
    Low < High,
    Next is Low + 1,
    between(Next, High, X).

% Helper for membership
member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).
