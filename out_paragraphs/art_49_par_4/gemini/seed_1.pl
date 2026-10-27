:- module(registration_in_restricted_sections, [
    restricted_high_risk_ai_system/1,
    required_secure_non_public_registration/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/1.
:- dynamic registration_for/2.
:- dynamic registration_article/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.
:- dynamic restricted_section_eu_database/1.

restricted_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [point(1), point(6), point(7)]),
    area(System, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

required_secure_non_public_registration(Registration) :-
    registration(Registration),
    registration_for(Registration, System),
    restricted_high_risk_ai_system(System),
    registration_article(Registration, Article),
    member(Article, [article(49, 1), article(49, 2), article(49, 3)]).

permitted_registration_information(Registration, Information) :-
    required_secure_non_public_registration(Registration),
    permitted_information_item(Information).

permitted_information_item(annex_viii(point(Point))) :-
    member(Point, [1, 2, 3, 4, 5, 7, 10]).
permitted_information_item(annex_viii(section_b(point(Point)))) :-
    member(Point, [1, 2, 3, 4, 5, 8, 9]).
permitted_information_item(annex_viii(point(Point))) :-
    member(Point, [1, 2, 3]).
permitted_information_item(annex_ix(point(Point))) :-
    member(Point, [1, 2, 3, 5]).

permitted_access(Actor, DatabaseSection) :-
    restricted_section_eu_database(DatabaseSection),
    commission(Actor).
permitted_access(Actor, DatabaseSection) :-
    restricted_section_eu_database(DatabaseSection),
    national_authority(Actor),
    article_74_8_authority(Actor).
