:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    referred_in_annex_iii_point/2,
    registration_required/1,
    must_register_in_section/2,
    secure_non_public_section/1,
    eu_database/1,
    referred_in_article_49/2,
    includes_information/2,
    annex_viii_point/1,
    section_b_point/1,
    annex_ix_point/1,
    exception_point/1,
    must_have_access/2,
    commission/1,
    national_authority/1,
    referred_in_article_74/2,
    restricted_section/1,
    listed_in_article_49/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic referred_in_annex_iii_point/2.
:- dynamic referred_in_article_49/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic referred_in_article_74/2.
:- dynamic listed_in_article_49/2.

% Areas covered by this provision
covered_area(A) :-
    law_enforcement_area(A).
covered_area(A) :-
    migration_area(A).
covered_area(A) :-
    asylum_area(A).
covered_area(A) :-
    border_control_management_area(A).

% Relevant Annex III points for this provision
relevant_annex_iii_point(1).
relevant_annex_iii_point(6).
relevant_annex_iii_point(7).

% The EU database referred to in Article 71
eu_database(eu_database_article_71).

% Secure non-public section of the EU database
secure_non_public_section(secure_non_public_section(eu_database_article_71)).

% Registration requirements for specified high-risk AI systems
registration_required(S) :-
    high_risk_ai_system(S),
    referred_in_annex_iii_point(S, P),
    relevant_annex_iii_point(P),
    covered_area(_A).

% Duty to register in secure non-public section
must_register_in_section(S, secure_non_public_section(eu_database_article_71)) :-
    registration_required(S),
    referred_in_article_49(S, 1).
must_register_in_section(S, secure_non_public_section(eu_database_article_71)) :-
    registration_required(S),
    referred_in_article_49(S, 2).
must_register_in_section(S, secure_non_public_section(eu_database_article_71)) :-
    registration_required(S),
    referred_in_article_49(S, 3).

% Information to be included - point (a): Annex VIII points (1) to (10), except 6, 8, 9
includes_information(S, annex_viii_point(P)) :-
    must_register_in_section(S, _),
    annex_viii_point(P),
    between(1, 10, P),
    \+ exception_point(P).

% Information to be included - point (b): Section B points 1 to 5, and points 8 and 9
includes_information(S, section_b_point(P)) :-
    must_register_in_section(S, _),
    section_b_point(P),
    between(1, 5, P).
includes_information(S, section_b_point(P)) :-
    must_register_in_section(S, _),
    section_b_point(P),
    member(P, [8, 9]).

% Information to be included - point (c): Annex VIII points (1) to (3)
includes_information(S, annex_viii_point(P)) :-
    must_register_in_section(S, _),
    annex_viii_point(P),
    between(1, 3, P).

% Information to be included - point (d): Annex IX points (1), (2), (3) and (5)
includes_information(S, annex_ix_point(P)) :-
    must_register_in_section(S, _),
    annex_ix_point(P),
    member(P, [1, 2, 3, 5]).

% Exception points for Annex VIII under point (a)
exception_point(6).
exception_point(8).
exception_point(9).

% Annex VIII points
annex_viii_point(1).
annex_viii_point(2).
annex_viii_point(3).
annex_viii_point(4).
annex_viii_point(5).
annex_viii_point(6).
annex_viii_point(7).
annex_viii_point(8).
annex_viii_point(9).
annex_viii_point(10).

% Section B points
section_b_point(1).
section_b_point(2).
section_b_point(3).
section_b_point(4).
section_b_point(5).
section_b_point(6).
section_b_point(7).
section_b_point(8).
section_b_point(9).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(4).
annex_ix_point(5).

% Restricted sections of the EU database
restricted_section(Section) :-
    listed_in_article_49(Section, 4).

% Access rights - Commission
must_have_access(Commission, Section) :-
    commission(Commission),
    restricted_section(Section).

% Access rights - national authorities referred to in Article 74(8)
must_have_access(Authority, Section) :-
    national_authority(Authority),
    referred_in_article_74(Authority, 8),
    restricted_section(Section).

% Helper predicate
between(Low, High, Value) :-
    Low =< Value,
    Value =< High.

member(Element, [Element|_]).
member(Element, [_|Rest]) :-
    member(Element, Rest).
