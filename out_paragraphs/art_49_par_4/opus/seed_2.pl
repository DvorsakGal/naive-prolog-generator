:- module(secure_registration_law_enforcement, [
    sensitive_area_high_risk_system/1,
    required_secure_non_public_registration/1,
    registered_in/2,
    permitted_registration_information/1,
    includes_information/2,
    permitted_restricted_section_access/1,
    has_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/2.
:- dynamic applicable_information/2.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic restricted_section/1.

% High-risk AI systems in Annex III points 1, 6, 7 in sensitive areas
sensitive_area_high_risk_system(S) :-
    high_risk_ai_system(S),
    annex_iii_listed(S),
    sensitive_area(S).

annex_iii_listed(S) :- annex_iii_point(S, 1).
annex_iii_listed(S) :- annex_iii_point(S, 6).
annex_iii_listed(S) :- annex_iii_point(S, 7).

sensitive_area(S) :- area(S, law_enforcement).
sensitive_area(S) :- area(S, migration).
sensitive_area(S) :- area(S, asylum).
sensitive_area(S) :- area(S, border_control_management).

% Registration under Article 49(1), (2), (3) in secure non-public section
required_secure_non_public_registration(R) :-
    registration(R, S),
    sensitive_area_high_risk_system(S).

registered_in(R, secure_non_public_section(eu_database)) :-
    required_secure_non_public_registration(R).

% Permitted information items
% (a) Annex VIII points 1 to 10 except 6, 8, 9
permitted_registration_information(annex_viii(1)).
permitted_registration_information(annex_viii(2)).
permitted_registration_information(annex_viii(3)).
permitted_registration_information(annex_viii(4)).
permitted_registration_information(annex_viii(5)).
permitted_registration_information(annex_viii(7)).
permitted_registration_information(annex_viii(10)).
% (b) Annex VIII Section B points 1 to 5, 8, 9
permitted_registration_information(annex_viii_section_b(1)).
permitted_registration_information(annex_viii_section_b(2)).
permitted_registration_information(annex_viii_section_b(3)).
permitted_registration_information(annex_viii_section_b(4)).
permitted_registration_information(annex_viii_section_b(5)).
permitted_registration_information(annex_viii_section_b(8)).
permitted_registration_information(annex_viii_section_b(9)).
% (c) Annex VIII points 1 to 3 (covered above)
% (d) Annex IX points 1, 2, 3, 5
permitted_registration_information(annex_ix(1)).
permitted_registration_information(annex_ix(2)).
permitted_registration_information(annex_ix(3)).
permitted_registration_information(annex_ix(5)).

% Registration includes only permitted information, as applicable
includes_information(R, I) :-
    required_secure_non_public_registration(R),
    applicable_information(R, I),
    permitted_registration_information(I).

% Only Commission and Article 74(8) national authorities have access
permitted_restricted_section_access(A) :- commission(A).
permitted_restricted_section_access(A) :- national_authority_article_74_8(A).

has_access(A, Section) :-
    restricted_section(Section),
    permitted_restricted_section_access(A).
