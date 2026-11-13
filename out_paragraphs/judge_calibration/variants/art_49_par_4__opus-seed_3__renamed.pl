:- module(restricted_registration_law_enforcement_migration, [
    restricted_registration_applies/1,
    required_secure_non_public_section/1,
    must_include_only/2,
    permitted_registration_data/1,
    permitted_access_restricted_section/1,
    prohibited_access_restricted_section/1
]).
:- dynamic elevated_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/2.
:- dynamic european_commission/1.
:- dynamic national_public_authority_article_74_8/1.
:- dynamic seeks_access/2.

restricted_area(law_enforcement).

member_point(XX, [_|XT]) :-
    member_point(XX, XT).

must_include_only(registration(XS, XArt), data(XI)) :-
    required_secure_non_public_section(registration(XS, XArt)),
    permitted_registration_data(XI).

permitted_registration_data(annex_viii(XN)) :-
    member_point(XN, [1, 2, 3, 4, 5, 7, 10]).

restricted_registration_applies(XS) :-
    elevated_risk_ai_system(XS),
    annex_iii_point(XS, XN),
    restricted_annex_point(XN),
    area(XS, XA),
    restricted_area(XA).

registration_article(article(49, 2)).

restricted_area(migration).

registration_article(article(49, 1)).

restricted_area(border_control_management).

prohibited_access_restricted_section(XP) :-
    seeks_access(XP, restricted_section(eu_database)),
    \+ permitted_access_restricted_section(XP).

permitted_registration_data(annex_ix(XN)) :-
    member_point(XN, [1, 2, 3, 5]).

restricted_annex_point(1).

required_secure_non_public_section(registration(XS, XArt)) :-
    restricted_registration_applies(XS),
    registration(XS, XArt),
    registration_article(XArt).

registration_article(article(49, 3)).

permitted_registration_data(annex_viii_section_b(XN)) :-
    member_point(XN, [1, 2, 3, 4, 5, 8, 9]).

restricted_area(asylum).

permitted_access_restricted_section(XP) :-
    national_public_authority_article_74_8(XP).

permitted_registration_data(annex_viii(XN)) :-
    member_point(XN, [1, 2, 3]).

member_point(XX, [XX|_]).

restricted_annex_point(6).

permitted_access_restricted_section(XP) :-
    european_commission(XP).

restricted_annex_point(7).
