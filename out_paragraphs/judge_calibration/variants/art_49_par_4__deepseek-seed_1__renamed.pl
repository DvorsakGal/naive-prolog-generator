:- module(elevated_risk_ai_registration, [
    elevated_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_data/2,
    annex_viii_point/1,
    annex_ix_point/1,
    section_b_point/1,
    european_commission/1,
    national_public_authority/1,
    must_have_access_to/2,
    restricted_section/1
]).
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic article_71/1.
:- dynamic article_74_8/1.
:- dynamic article_49_4/1.
:- dynamic annex_viii_point/1.
:- dynamic annex_ix_point/1.
:- dynamic section_b_point/1.
:- dynamic european_commission/1.
:- dynamic national_public_authority/1.
:- dynamic eu_database/1.
:- dynamic restricted_section/1.
:- dynamic secure_non_public_section/1.

applicable_data(XS, annex_ix_point(XP)) :-
    annex_ix_point(XP),
    member(XP, [1, 2, 3, 5]).

excluded_annex_viii_point(9).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 7).

applicable_data(XS, section_b_point(XP)) :-
    section_b_point(XP),
    member(XP, [1, 2, 3, 4, 5, 8, 9]).

must_have_access_to(XActor, restricted_section(XDatabase)) :-
    (   european_commission(XActor)
    ;   national_public_authority(XActor)
    ),
    article_74_8(XActor),
    eu_database(XDatabase),
    article_49_4(XDatabase).

law_enforcement_area(XS) :-
    elevated_risk_ai_system(XS),
    area(XS, law_enforcement).

must_include_data(XS, XInfo) :-
    must_register_in(XS, _),
    applicable_data(XS, XInfo).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 6).

asylum_area(XS) :-
    elevated_risk_ai_system(XS),
    area(XS, asylum).

border_control_management_area(XS) :-
    elevated_risk_ai_system(XS),
    area(XS, border_control_management).

elevated_risk_ai_system(XS) :-
    annex_iii_point(XS, 1).

excluded_annex_viii_point(6).

excluded_annex_viii_point(8).

migration_area(XS) :-
    elevated_risk_ai_system(XS),
    area(XS, migration).

applicable_data(XS, annex_viii_point(XP)) :-
    annex_viii_point(XP),
    member(XP, [1, 2, 3]).

must_register_in(XS, secure_non_public_section(XDatabase)) :-
    elevated_risk_ai_system(XS),
    (   law_enforcement_area(XS)
    ;   migration_area(XS)
    ;   asylum_area(XS)
    ;   border_control_management_area(XS)
    ),
    eu_database(XDatabase),
    article_71(XDatabase).

applicable_data(XS, annex_viii_point(XP)) :-
    annex_viii_point(XP),
    between(1, 10, XP),
    \+ excluded_annex_viii_point(XP).
