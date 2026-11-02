:- module(restricted_database_registration, [
    restricted_registration_applies/1,
    covered_annex_point_applies/1,
    covered_area_applies/1,
    covered_registration_reference_applies/1,
    listed_information_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    required_registration_information/1,
    permitted_registration_information/1,
    prohibited_registration_information/1,
    permitted_database_access/1,
    prohibited_database_access/1
]).

:- dynamic high_risk/1.
:- dynamic refers_to_annex_point/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic refers_to_article/2.
:- dynamic applicable_information_applies/1.
:- dynamic registration_information_applies/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_restricted_section_applies/1.
:- dynamic database_access_applies/1.

covered_annex_point_applies(annex_iii(point(1))).
covered_annex_point_applies(annex_iii(point(6))).
covered_annex_point_applies(annex_iii(point(7))).

covered_area_applies(law_enforcement).
covered_area_applies(migration).
covered_area_applies(asylum).
covered_area_applies(border_control_management).

covered_registration_reference_applies(article(49, 1)).
covered_registration_reference_applies(article(49, 2)).
covered_registration_reference_applies(article(49, 3)).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    high_risk(System),
    refers_to_annex_point(System, Point),
    covered_annex_point_applies(Point),
    operates_in_area(System, Area),
    covered_area_applies(Area),
    refers_to_article(Registration, Reference),
    covered_registration_reference_applies(Reference).

required_registration_location(registration_location(Registration, Section)) :-
    restricted_registration_applies(Registration),
    Section = secure_non_public_section(eu_database(article(71))).

secure(secure_non_public_section(eu_database(article(71)))).
non_public(secure_non_public_section(eu_database(article(71)))).

listed_information_applies(annex_viii(point(1))).
listed_information_applies(annex_viii(point(2))).
listed_information_applies(annex_viii(point(3))).
listed_information_applies(annex_viii(point(4))).
listed_information_applies(annex_viii(point(5))).
listed_information_applies(annex_viii(point(7))).
listed_information_applies(annex_viii(point(10))).

listed_information_applies(annex_viii(section_b, point(1))).
listed_information_applies(annex_viii(section_b, point(2))).
listed_information_applies(annex_viii(section_b, point(3))).
listed_information_applies(annex_viii(section_b, point(4))).
listed_information_applies(annex_viii(section_b, point(5))).
listed_information_applies(annex_viii(section_b, point(8))).
listed_information_applies(annex_viii(section_b, point(9))).

% Annex VIII points (1) to (3) are also expressly listed separately.
listed_information_applies(annex_viii(point(1))).
listed_information_applies(annex_viii(point(2))).
listed_information_applies(annex_viii(point(3))).

listed_information_applies(annex_ix(point(1))).
listed_information_applies(annex_ix(point(2))).
listed_information_applies(annex_ix(point(3))).
listed_information_applies(annex_ix(point(5))).

required_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_information_applies(Information),
    applicable_information_applies(inclusion(Registration, Information)).

permitted_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_information_applies(Information),
    applicable_information_applies(inclusion(Registration, Information)).

prohibited_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    registration_information_applies(inclusion(Registration, Information)),
    \+ permitted_registration_information(inclusion(Registration, Information)).

permitted_database_access(access(Actor, Section)) :-
    commission(Actor),
    respective_restricted_section_applies(access(Actor, Section)),
    refers_to_article(Section, article(49, 4)).

permitted_database_access(access(Actor, Section)) :-
    national_authority(Actor),
    refers_to_article(Actor, article(74, 8)),
    respective_restricted_section_applies(access(Actor, Section)),
    refers_to_article(Section, article(49, 4)).

prohibited_database_access(access(Actor, Section)) :-
    database_access_applies(access(Actor, Section)),
    refers_to_article(Section, article(49, 4)),
    \+ permitted_database_access(access(Actor, Section)).
