:- module(restricted_registration, [
    restricted_registration_applies/1,
    restricted_system_applies/1,
    covers_annex_point/2,
    covers_area/2,
    covers_article/2,
    required_registration_location/1,
    includes_information_reference/2,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    restricted_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic references_annex_point/2.
:- dynamic concerns_area/2.
:- dynamic registers_system/2.
:- dynamic references_article/2.
:- dynamic information_applies/1.
:- dynamic registration_information/1.
:- dynamic belongs_to_database/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_section_applies/1.
:- dynamic access/1.

covers_annex_point(restricted_registration, annex_iii(point(1))).
covers_annex_point(restricted_registration, annex_iii(point(6))).
covers_annex_point(restricted_registration, annex_iii(point(7))).

covers_area(restricted_registration, law_enforcement).
covers_area(restricted_registration, migration).
covers_area(restricted_registration, asylum).
covers_area(restricted_registration, border_control_management).

covers_article(restricted_registration, article(49, 1)).
covers_article(restricted_registration, article(49, 2)).
covers_article(restricted_registration, article(49, 3)).

restricted_system_applies(System) :-
    high_risk(System),
    references_annex_point(System, Point),
    covers_annex_point(restricted_registration, Point),
    concerns_area(System, Area),
    covers_area(restricted_registration, Area).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    restricted_system_applies(System),
    references_article(Registration, Article),
    covers_article(restricted_registration, Article).

required_registration_location(
    location(Registration, secure_non_public_section(eu_database(article(71))))
) :-
    restricted_registration_applies(Registration).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
includes_information_reference(restricted_registration, annex_viii(point(1))).
includes_information_reference(restricted_registration, annex_viii(point(2))).
includes_information_reference(restricted_registration, annex_viii(point(3))).
includes_information_reference(restricted_registration, annex_viii(point(4))).
includes_information_reference(restricted_registration, annex_viii(point(5))).
includes_information_reference(restricted_registration, annex_viii(point(7))).
includes_information_reference(restricted_registration, annex_viii(point(10))).

% Annex VIII, Section B, points 1 to 5, 8 and 9.
includes_information_reference(restricted_registration, annex_viii(section_b, point(1))).
includes_information_reference(restricted_registration, annex_viii(section_b, point(2))).
includes_information_reference(restricted_registration, annex_viii(section_b, point(3))).
includes_information_reference(restricted_registration, annex_viii(section_b, point(4))).
includes_information_reference(restricted_registration, annex_viii(section_b, point(5))).
includes_information_reference(restricted_registration, annex_viii(section_b, point(8))).
includes_information_reference(restricted_registration, annex_viii(section_b, point(9))).

% Annex VIII, points 1 to 3, are also included by the facts above.

% Annex IX, points 1, 2, 3 and 5.
includes_information_reference(restricted_registration, annex_ix(point(1))).
includes_information_reference(restricted_registration, annex_ix(point(2))).
includes_information_reference(restricted_registration, annex_ix(point(3))).
includes_information_reference(restricted_registration, annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    includes_information_reference(restricted_registration, Reference),
    information_applies(inclusion(Registration, Reference)).

required_registration_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    includes_information_reference(restricted_registration, Reference),
    information_applies(inclusion(Registration, Reference)).

prohibited_registration_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    registration_information(inclusion(Registration, Reference)),
    \+ permitted_registration_information(inclusion(Registration, Reference)).

restricted_section_applies(Section) :-
    belongs_to_database(Section, eu_database(article(71))),
    references_article(Section, article(49, 4)).

permitted_access(access(Commission, Section)) :-
    commission(Commission),
    restricted_section_applies(Section),
    respective_section_applies(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    national_authority(Authority),
    references_article(Authority, article(74, 8)),
    restricted_section_applies(Section),
    respective_section_applies(access(Authority, Section)).

prohibited_access(access(Actor, Section)) :-
    access(access(Actor, Section)),
    restricted_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
