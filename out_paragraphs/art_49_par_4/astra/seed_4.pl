:- module(restricted_registration, [
    covered_annex_point_applies/1,
    covered_area_applies/1,
    covered_registration_reference_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    required_secure_section/1,
    required_non_public_section/1,
    eligible_information_applies/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    restricted_database_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic refers_to/2.
:- dynamic operates_in/2.
:- dynamic covers_system/2.
:- dynamic registration/1.
:- dynamic applicable_information/2.
:- dynamic registration_information/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic has_respective_section/2.
:- dynamic database_section/1.
:- dynamic belongs_to/2.
:- dynamic access/1.

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
    registration(Registration),
    covers_system(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    refers_to(System, AnnexPoint),
    covered_annex_point_applies(AnnexPoint),
    operates_in(System, Area),
    covered_area_applies(Area),
    refers_to(Registration, Reference),
    covered_registration_reference_applies(Reference).

required_registration_location(
    location(Registration, restricted_section(european_union_database(article(71))))
) :-
    restricted_registration_applies(Registration).

required_secure_section(
    registration_section(Registration, european_union_database(article(71)))
) :-
    restricted_registration_applies(Registration).

required_non_public_section(
    registration_section(Registration, european_union_database(article(71)))
) :-
    restricted_registration_applies(Registration).

eligible_information_applies(annex_viii(point(1))).
eligible_information_applies(annex_viii(point(2))).
eligible_information_applies(annex_viii(point(3))).
eligible_information_applies(annex_viii(point(4))).
eligible_information_applies(annex_viii(point(5))).
eligible_information_applies(annex_viii(point(7))).
eligible_information_applies(annex_viii(point(10))).

eligible_information_applies(annex_viii(section_b, point(1))).
eligible_information_applies(annex_viii(section_b, point(2))).
eligible_information_applies(annex_viii(section_b, point(3))).
eligible_information_applies(annex_viii(section_b, point(4))).
eligible_information_applies(annex_viii(section_b, point(5))).
eligible_information_applies(annex_viii(section_b, point(8))).
eligible_information_applies(annex_viii(section_b, point(9))).

% Annex VIII, points (1) to (3), are also included above.

eligible_information_applies(annex_ix(point(1))).
eligible_information_applies(annex_ix(point(2))).
eligible_information_applies(annex_ix(point(3))).
eligible_information_applies(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    eligible_information_applies(Information),
    applicable_information(Registration, Information).

required_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    eligible_information_applies(Information),
    applicable_information(Registration, Information).

prohibited_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    registration_information(Information),
    \+ permitted_registration_information(inclusion(Registration, Information)).

restricted_database_section_applies(Section) :-
    database_section(Section),
    belongs_to(Section, european_union_database(article(71))),
    refers_to(Section, article(49, 4)).

permitted_access(access(Actor, Section)) :-
    commission(Actor),
    restricted_database_section_applies(Section),
    has_respective_section(Actor, Section).

permitted_access(access(Actor, Section)) :-
    national_authority(Actor),
    refers_to(Actor, article(74, 8)),
    restricted_database_section_applies(Section),
    has_respective_section(Actor, Section).

prohibited_access(access(Actor, Section)) :-
    access(access(Actor, Section)),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
