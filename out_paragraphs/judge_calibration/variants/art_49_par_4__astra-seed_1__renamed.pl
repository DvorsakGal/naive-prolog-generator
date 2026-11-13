:- module(restricted_database_registration, [
    restricted_registration_applies/1,
    covered_annex_point_applies/1,
    covered_area_applies/1,
    covered_registration_reference_applies/1,
    listed_data_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    required_registration_data/1,
    permitted_registration_data/1,
    prohibited_registration_data/1,
    permitted_database_access/1,
    prohibited_database_access/1
]).
:- dynamic elevated_risk/1.
:- dynamic refers_to_annex_point/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic refers_to_article/2.
:- dynamic applicable_data_applies/1.
:- dynamic registration_data_applies/1.
:- dynamic european_commission/1.
:- dynamic national_public_authority/1.
:- dynamic respective_restricted_section_applies/1.
:- dynamic database_access_applies/1.

covered_registration_reference_applies(article(49, 3)).

listed_data_applies(annex_viii(section_b, point(1))).

non_public(secure_non_public_section(eu_database(article(71)))).

permitted_database_access(access(XActor, XSection)) :-
    european_commission(XActor),
    respective_restricted_section_applies(access(XActor, XSection)),
    refers_to_article(XSection, article(49, 4)).

listed_data_applies(annex_ix(point(1))).

listed_data_applies(annex_viii(point(10))).

covered_annex_point_applies(annex_iii(point(1))).

listed_data_applies(annex_viii(point(5))).

listed_data_applies(annex_viii(section_b, point(3))).

covered_registration_reference_applies(article(49, 1)).

listed_data_applies(annex_viii(point(3))).

prohibited_database_access(access(XActor, XSection)) :-
    database_access_applies(access(XActor, XSection)),
    refers_to_article(XSection, article(49, 4)),
    \+ permitted_database_access(access(XActor, XSection)).

listed_data_applies(annex_viii(section_b, point(5))).

required_registration_location(registration_location(XRegistration, XSection)) :-
    restricted_registration_applies(XRegistration),
    XSection = secure_non_public_section(eu_database(article(71))).

permitted_registration_data(inclusion(XRegistration, XInformation)) :-
    restricted_registration_applies(XRegistration),
    listed_data_applies(XInformation),
    applicable_data_applies(inclusion(XRegistration, XInformation)).

listed_data_applies(annex_viii(section_b, point(8))).

listed_data_applies(annex_viii(section_b, point(2))).

covered_registration_reference_applies(article(49, 2)).

listed_data_applies(annex_viii(point(4))).

listed_data_applies(annex_viii(point(3))).

required_registration_data(inclusion(XRegistration, XInformation)) :-
    restricted_registration_applies(XRegistration),
    listed_data_applies(XInformation),
    applicable_data_applies(inclusion(XRegistration, XInformation)).

permitted_database_access(access(XActor, XSection)) :-
    national_public_authority(XActor),
    refers_to_article(XActor, article(74, 8)),
    respective_restricted_section_applies(access(XActor, XSection)),
    refers_to_article(XSection, article(49, 4)).

listed_data_applies(annex_ix(point(3))).

covered_area_applies(law_enforcement).

listed_data_applies(annex_viii(point(1))).

listed_data_applies(annex_ix(point(2))).

listed_data_applies(annex_viii(section_b, point(4))).

listed_data_applies(annex_ix(point(5))).

listed_data_applies(annex_viii(point(2))).

prohibited_registration_data(inclusion(XRegistration, XInformation)) :-
    restricted_registration_applies(XRegistration),
    registration_data_applies(inclusion(XRegistration, XInformation)),
    \+ permitted_registration_data(inclusion(XRegistration, XInformation)).

listed_data_applies(annex_viii(point(1))).

listed_data_applies(annex_viii(point(7))).

restricted_registration_applies(XRegistration) :-
    registers_system(XRegistration, XSystem),
    elevated_risk(XSystem),
    refers_to_annex_point(XSystem, XPoint),
    covered_annex_point_applies(XPoint),
    operates_in_area(XSystem, XArea),
    covered_area_applies(XArea),
    refers_to_article(XRegistration, XReference),
    covered_registration_reference_applies(XReference).

covered_area_applies(migration).

covered_area_applies(border_control_management).

listed_data_applies(annex_viii(section_b, point(9))).

covered_area_applies(asylum).

listed_data_applies(annex_viii(point(2))).

covered_annex_point_applies(annex_iii(point(7))).

secure(secure_non_public_section(eu_database(article(71)))).

covered_annex_point_applies(annex_iii(point(6))).
