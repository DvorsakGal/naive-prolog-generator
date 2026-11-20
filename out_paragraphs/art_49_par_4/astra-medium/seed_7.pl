:- module(restricted_registration, [
    restricted_registration_applies/1,
    registration_reference_applies/1,
    annex_reference_applies/1,
    specified_area_applies/1,
    required_registration_location/1,
    required_secure_section/1,
    required_non_public_section/1,
    listed_information/1,
    permitted_information/1,
    required_information/1,
    prohibited_information/1,
    restricted_database_section_applies/1,
    authorised_access_actor/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic high_risk/1.
:- dynamic registers_system/2.
:- dynamic refers_to/2.
:- dynamic operates_in/2.
:- dynamic information_applies/1.
:- dynamic information_reference/1.
:- dynamic restricted/1.
:- dynamic belongs_to_database/2.
:- dynamic listed_in/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic actor/1.

registration_reference_applies(Registration) :-
    refers_to(Registration, article(49, paragraph(1))).

registration_reference_applies(Registration) :-
    refers_to(Registration, article(49, paragraph(2))).

registration_reference_applies(Registration) :-
    refers_to(Registration, article(49, paragraph(3))).

annex_reference_applies(System) :-
    refers_to(System, annex(iii, point(1))).

annex_reference_applies(System) :-
    refers_to(System, annex(iii, point(6))).

annex_reference_applies(System) :-
    refers_to(System, annex(iii, point(7))).

specified_area_applies(System) :-
    operates_in(System, law_enforcement).

specified_area_applies(System) :-
    operates_in(System, migration).

specified_area_applies(System) :-
    operates_in(System, asylum).

specified_area_applies(System) :-
    operates_in(System, border_control_management).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    annex_reference_applies(System),
    specified_area_applies(System),
    registration_reference_applies(Registration).

required_registration_location(
    location(
        Registration,
        registration_section(
            Registration,
            european_union_database(article(71))
        )
    )
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

% Annex VIII, points 1 to 10, except points 6, 8 and 9.
% This also covers the separately specified Annex VIII, points 1 to 3.

listed_information(annex(viii, point(1))).
listed_information(annex(viii, point(2))).
listed_information(annex(viii, point(3))).
listed_information(annex(viii, point(4))).
listed_information(annex(viii, point(5))).
listed_information(annex(viii, point(7))).
listed_information(annex(viii, point(10))).

% Annex VIII, Section B, points 1 to 5, 8 and 9.

listed_information(annex(viii, section(b), point(1))).
listed_information(annex(viii, section(b), point(2))).
listed_information(annex(viii, section(b), point(3))).
listed_information(annex(viii, section(b), point(4))).
listed_information(annex(viii, section(b), point(5))).
listed_information(annex(viii, section(b), point(8))).
listed_information(annex(viii, section(b), point(9))).

% Annex IX, points 1, 2, 3 and 5.

listed_information(annex(ix, point(1))).
listed_information(annex(ix, point(2))).
listed_information(annex(ix, point(3))).
listed_information(annex(ix, point(5))).

permitted_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    listed_information(Reference),
    information_applies(inclusion(Registration, Reference)).

required_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    listed_information(Reference),
    information_applies(inclusion(Registration, Reference)).

prohibited_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    information_reference(Reference),
    \+ permitted_information(inclusion(Registration, Reference)).

restricted_database_section_applies(Section) :-
    restricted(Section),
    belongs_to_database(Section, european_union_database(article(71))),
    listed_in(Section, article(49, paragraph(4))).

authorised_access_actor(Actor) :-
    commission(Actor).

authorised_access_actor(Actor) :-
    national_authority(Actor),
    refers_to(Actor, article(74, paragraph(8))).

permitted_access(access(Actor, Section)) :-
    restricted_database_section_applies(Section),
    authorised_access_actor(Actor).

prohibited_access(access(Actor, Section)) :-
    actor(Actor),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
