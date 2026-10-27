:- module(high_risk_ai_system_registration, [
    required_registration/1,
    secure_non_public_section/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point_1/1.
:- dynamic annex_iii_point_6/1.
:- dynamic annex_iii_point_7/1.
:- dynamic area_law_enforcement/1.
:- dynamic area_migration/1.
:- dynamic area_asylum/1.
:- dynamic area_border_control_management/1.
:- dynamic registration_article_49_1/2.
:- dynamic registration_article_49_2/2.
:- dynamic registration_article_49_3/2.
:- dynamic information_annex_viii_section_a_point/2.
:- dynamic information_annex_viii_section_b_point/2.
:- dynamic information_annex_ix_point/2.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic restricted_section_article_49_4/1.

relevant_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    relevant_annex_iii_point(System),
    relevant_area(System).

relevant_annex_iii_point(System) :- annex_iii_point_1(System).
relevant_annex_iii_point(System) :- annex_iii_point_6(System).
relevant_annex_iii_point(System) :- annex_iii_point_7(System).

relevant_area(System) :- area_law_enforcement(System).
relevant_area(System) :- area_migration(System).
relevant_area(System) :- area_asylum(System).
relevant_area(System) :- area_border_control_management(System).

registration_article_49(Registration, System) :-
    registration_article_49_1(Registration, System).
registration_article_49(Registration, System) :-
    registration_article_49_2(Registration, System).
registration_article_49(Registration, System) :-
    registration_article_49_3(Registration, System).

required_registration(Registration) :-
    registration_article_49(Registration, System),
    relevant_high_risk_ai_system(System).

secure_non_public_section(Registration) :-
    registration_article_49(Registration, System),
    relevant_high_risk_ai_system(System).

permitted_registration_information(Registration, Information) :-
    registration_article_49(Registration, System),
    relevant_high_risk_ai_system(System),
    allowed_information(Information).

allowed_information(Information) :-
    information_annex_viii_section_a_point(Information, Point),
    allowed_annex_viii_section_a_point(Point).
allowed_information(Information) :-
    information_annex_viii_section_b_point(Information, Point),
    allowed_annex_viii_section_b_point(Point).
allowed_information(Information) :-
    information_annex_ix_point(Information, Point),
    allowed_annex_ix_point(Point).

allowed_annex_viii_section_a_point(1).
allowed_annex_viii_section_a_point(2).
allowed_annex_viii_section_a_point(3).
allowed_annex_viii_section_a_point(4).
allowed_annex_viii_section_a_point(5).
allowed_annex_viii_section_a_point(7).
allowed_annex_viii_section_a_point(10).

allowed_annex_viii_section_b_point(1).
allowed_annex_viii_section_b_point(2).
allowed_annex_viii_section_b_point(3).
allowed_annex_viii_section_b_point(4).
allowed_annex_viii_section_b_point(5).
allowed_annex_viii_section_b_point(8).
allowed_annex_viii_section_b_point(9).

allowed_annex_ix_point(1).
allowed_annex_ix_point(2).
allowed_annex_ix_point(3).
allowed_annex_ix_point(5).

permitted_access(Actor, Section) :-
    restricted_section_article_49_4(Section),
    authorised_actor(Actor).

authorised_actor(Actor) :-
    commission(Actor).
authorised_actor(Actor) :-
    national_authority_article_74_8(Actor).
