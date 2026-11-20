:- module(restricted_registration, [
    annex_point_applies/1,
    relevant_area_applies/1,
    registration_provision_applies/1,
    restricted_registration_applies/1,
    required_location/1,
    secure/1,
    non_public/1,
    permitted_information_reference/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    permitted_database_access/1,
    prohibited_database_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic referred_to_annex_point/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic referred_to_registration_provision/2.
:- dynamic information_reference_applies/2.
:- dynamic restricted_database_section/1.
:- dynamic referred_to_article/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_section_applies/2.

annex_point_applies(annex_iii(point(1))).
annex_point_applies(annex_iii(point(6))).
annex_point_applies(annex_iii(point(7))).

relevant_area_applies(law_enforcement).
relevant_area_applies(migration).
relevant_area_applies(asylum).
relevant_area_applies(border_control_management).

registration_provision_applies(article(49, 1)).
registration_provision_applies(article(49, 2)).
registration_provision_applies(article(49, 3)).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    referred_to_annex_point(System, Point),
    annex_point_applies(Point),
    operates_in_area(System, Area),
    relevant_area_applies(Area),
    referred_to_registration_provision(Registration, Provision),
    registration_provision_applies(Provision).

required_location(registration(Registration, Section)) :-
    restricted_registration_applies(Registration),
    Section = secure_non_public_section(european_union_database(article(71))).

secure(secure_non_public_section(european_union_database(article(71)))).
non_public(secure_non_public_section(european_union_database(article(71)))).

permitted_information_reference(annex_viii(point(1))).
permitted_information_reference(annex_viii(point(2))).
permitted_information_reference(annex_viii(point(3))).
permitted_information_reference(annex_viii(point(4))).
permitted_information_reference(annex_viii(point(5))).
permitted_information_reference(annex_viii(point(7))).
permitted_information_reference(annex_viii(point(10))).

permitted_information_reference(annex_viii(section_b, point(1))).
permitted_information_reference(annex_viii(section_b, point(2))).
permitted_information_reference(annex_viii(section_b, point(3))).
permitted_information_reference(annex_viii(section_b, point(4))).
permitted_information_reference(annex_viii(section_b, point(5))).
permitted_information_reference(annex_viii(section_b, point(8))).
permitted_information_reference(annex_viii(section_b, point(9))).

% Annex VIII points (1) to (3) are already included above.

permitted_information_reference(annex_ix(point(1))).
permitted_information_reference(annex_ix(point(2))).
permitted_information_reference(annex_ix(point(3))).
permitted_information_reference(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference(Reference),
    information_reference_applies(Registration, Reference).

required_registration_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference(Reference),
    information_reference_applies(Registration, Reference).

prohibited_registration_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    \+ permitted_registration_information(inclusion(Registration, Reference)).

permitted_database_access(access(Actor, Section)) :-
    commission(Actor),
    restricted_database_section(Section),
    referred_to_article(Section, article(49, 4)).

permitted_database_access(access(Authority, Section)) :-
    national_authority(Authority),
    referred_to_article(Authority, article(74, 8)),
    restricted_database_section(Section),
    referred_to_article(Section, article(49, 4)),
    respective_section_applies(Authority, Section).

prohibited_database_access(access(Actor, Section)) :-
    restricted_database_section(Section),
    referred_to_article(Section, article(49, 4)),
    \+ permitted_database_access(access(Actor, Section)).
