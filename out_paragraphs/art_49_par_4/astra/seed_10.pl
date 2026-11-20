:- module(restricted_registration, [
    restricted_registration_applies/1,
    relevant_annex_point_applies/1,
    relevant_area_applies/1,
    relevant_registration_applies/1,
    must_register/2,
    required_secure_section/1,
    required_non_public_section/1,
    permitted_registration_information/1,
    prohibited_registration_information/1,
    required_registration_information/1,
    listed_information_applies/1,
    permitted_database_access/1,
    prohibited_database_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic annex_iii_point_applies/2.
:- dynamic operates_in_area/2.
:- dynamic registration_of/2.
:- dynamic registration_under/2.
:- dynamic responsible_for_registration/2.
:- dynamic information_applicable_to/2.
:- dynamic registration_information/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic authority_referred_to_in/2.
:- dynamic restricted_section_listed_in/2.
:- dynamic respective_section_applies/2.
:- dynamic database_access/1.

relevant_annex_point_applies(System) :-
    annex_iii_point_applies(System, point(1)).
relevant_annex_point_applies(System) :-
    annex_iii_point_applies(System, point(6)).
relevant_annex_point_applies(System) :-
    annex_iii_point_applies(System, point(7)).

relevant_area_applies(System) :-
    operates_in_area(System, law_enforcement).
relevant_area_applies(System) :-
    operates_in_area(System, migration).
relevant_area_applies(System) :-
    operates_in_area(System, asylum).
relevant_area_applies(System) :-
    operates_in_area(System, border_control_management).

relevant_registration_applies(Registration) :-
    registration_under(Registration, article(49, 1)).
relevant_registration_applies(Registration) :-
    registration_under(Registration, article(49, 2)).
relevant_registration_applies(Registration) :-
    registration_under(Registration, article(49, 3)).

restricted_registration_applies(Registration) :-
    registration_of(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    relevant_annex_point_applies(System),
    relevant_area_applies(System),
    relevant_registration_applies(Registration).

must_register(Actor, registration_in(Registration, secure_non_public_section(eu_database(article(71))))) :-
    restricted_registration_applies(Registration),
    responsible_for_registration(Actor, Registration).

required_secure_section(registration_section(Registration, eu_database(article(71)))) :-
    restricted_registration_applies(Registration).

required_non_public_section(registration_section(Registration, eu_database(article(71)))) :-
    restricted_registration_applies(Registration).

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

listed_information_applies(annex_ix(point(1))).
listed_information_applies(annex_ix(point(2))).
listed_information_applies(annex_ix(point(3))).
listed_information_applies(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_information_applies(Information),
    information_applicable_to(Information, Registration).

required_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_information_applies(Information),
    information_applicable_to(Information, Registration).

prohibited_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    registration_information(Information),
    \+ permitted_registration_information(inclusion(Registration, Information)).

permitted_database_access(access(Actor, Section)) :-
    commission(Actor),
    restricted_section_listed_in(Section, article(49, 4)),
    respective_section_applies(Actor, Section).

permitted_database_access(access(Actor, Section)) :-
    national_authority(Actor),
    authority_referred_to_in(Actor, article(74, 8)),
    restricted_section_listed_in(Section, article(49, 4)),
    respective_section_applies(Actor, Section).

prohibited_database_access(access(Actor, Section)) :-
    database_access(access(Actor, Section)),
    restricted_section_listed_in(Section, article(49, 4)),
    \+ permitted_database_access(access(Actor, Section)).
