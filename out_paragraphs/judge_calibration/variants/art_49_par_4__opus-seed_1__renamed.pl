:- module(secure_registration_law_enforcement, [
    sensitive_area_system/1,
    required_secure_non_public_registration/1,
    registration_section/2,
    permitted_registration_data/1,
    registration_data_item/2,
    permitted_restricted_section_access/1
]).
:- dynamic elevated_risk/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/3.
:- dynamic european_commission/1.
:- dynamic national_public_authority_article_74_8/1.
:- dynamic applicable_data/2.

registration_data_item(letter(b), annex_viii(section_b(point(XN)))) :- between_points(1, 5, XN).

registration_data_item(letter(d), annex_ix(point(1))).

permitted_restricted_section_access(access(XActor, restricted_section(eu_database(article(49, paragraph(4)))))) :-
    european_commission(XActor).

between_points(XL, XH, XL) :- XL =< XH.

member_point(7).

registration_article(article(49, paragraph(2))).

sensitive_area(border_control_management).

registration_section(XR, secure_non_public_section(eu_database(article(71)))) :-
    required_secure_non_public_registration(XR).

registration_data_item(letter(c), annex_viii(point(XN))) :- between_points(1, 3, XN).

permitted_registration_data(info(XR, XItem)) :-
    required_secure_non_public_registration(XR),
    registration_data_item(_Letter, XItem),
    applicable_data(XR, XItem).

excluded_annex_viii_point(8).

member_point(1).

registration_data_item(letter(b), annex_viii(section_b(point(9)))).

registration_data_item(letter(d), annex_ix(point(5))).

registration_article(article(49, paragraph(3))).

member_point(6).

sensitive_area(law_enforcement).

sensitive_area_system(XS) :-
    elevated_risk(XS),
    annex_iii_point(XS, point(XN)),
    member_point(XN),
    area(XS, XA),
    sensitive_area(XA).

annex_viii_point(XN) :- between_points(1, 10, XN), \+ excluded_annex_viii_point(XN).

sensitive_area(migration).

registration_data_item(letter(b), annex_viii(section_b(point(8)))).

excluded_annex_viii_point(9).

permitted_restricted_section_access(access(XActor, restricted_section(eu_database(article(49, paragraph(4)))))) :-
    national_public_authority_article_74_8(XActor).

registration_data_item(letter(a), annex_viii(point(XN))) :- annex_viii_point(XN).

required_secure_non_public_registration(XR) :-
    registration(XR, XS, XArticle),
    registration_article(XArticle),
    sensitive_area_system(XS).

between_points(XL, XH, XN) :- XL < XH, XL1 is XL + 1, between_points(XL1, XH, XN).

registration_article(article(49, paragraph(1))).

registration_data_item(letter(d), annex_ix(point(2))).

excluded_annex_viii_point(6).

sensitive_area(asylum).

registration_data_item(letter(d), annex_ix(point(3))).
