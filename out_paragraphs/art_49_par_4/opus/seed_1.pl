:- module(secure_registration_law_enforcement, [
    sensitive_area_system/1,
    required_secure_non_public_registration/1,
    registration_section/2,
    permitted_registration_information/1,
    registration_information_item/2,
    permitted_restricted_section_access/1
]).

:- dynamic high_risk/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/3.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic applicable_information/2.

% High-risk systems in Annex III points 1, 6, 7 in sensitive areas
sensitive_area_system(S) :-
    high_risk(S),
    annex_iii_point(S, point(N)),
    member_point(N),
    area(S, A),
    sensitive_area(A).

member_point(1).
member_point(6).
member_point(7).

sensitive_area(law_enforcement).
sensitive_area(migration).
sensitive_area(asylum).
sensitive_area(border_control_management).

registration_article(article(49, paragraph(1))).
registration_article(article(49, paragraph(2))).
registration_article(article(49, paragraph(3))).

required_secure_non_public_registration(R) :-
    registration(R, S, Article),
    registration_article(Article),
    sensitive_area_system(S).

registration_section(R, secure_non_public_section(eu_database(article(71)))) :-
    required_secure_non_public_registration(R).

% Permitted information items
annex_viii_point(N) :- between_points(1, 10, N), \+ excluded_annex_viii_point(N).
excluded_annex_viii_point(6).
excluded_annex_viii_point(8).
excluded_annex_viii_point(9).

between_points(L, H, L) :- L =< H.
between_points(L, H, N) :- L < H, L1 is L + 1, between_points(L1, H, N).

registration_information_item(letter(a), annex_viii(point(N))) :- annex_viii_point(N).
registration_information_item(letter(b), annex_viii(section_b(point(N)))) :- between_points(1, 5, N).
registration_information_item(letter(b), annex_viii(section_b(point(8)))).
registration_information_item(letter(b), annex_viii(section_b(point(9)))).
registration_information_item(letter(c), annex_viii(point(N))) :- between_points(1, 3, N).
registration_information_item(letter(d), annex_ix(point(1))).
registration_information_item(letter(d), annex_ix(point(2))).
registration_information_item(letter(d), annex_ix(point(3))).
registration_information_item(letter(d), annex_ix(point(5))).

% Only the listed information, as applicable
permitted_registration_information(info(R, Item)) :-
    required_secure_non_public_registration(R),
    registration_information_item(_Letter, Item),
    applicable_information(R, Item).

% Access restricted to Commission and Article 74(8) authorities
permitted_restricted_section_access(access(Actor, restricted_section(eu_database(article(49, paragraph(4)))))) :-
    commission(Actor).
permitted_restricted_section_access(access(Actor, restricted_section(eu_database(article(49, paragraph(4)))))) :-
    national_authority_article_74_8(Actor).
