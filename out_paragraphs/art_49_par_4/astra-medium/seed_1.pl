:- module(restricted_registration, [
    registration_reference_applies/1,
    annex_reference_applies/1,
    covered_area_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    permitted_registration_information/1,
    permitted_information/1,
    required_information/1,
    prohibited_information/1,
    restricted_database_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system_applies/1.
:- dynamic registration_of/2.
:- dynamic refers_to/2.
:- dynamic operates_in_area/2.
:- dynamic applicable_information_applies/1.
:- dynamic information_applies/1.
:- dynamic section_of/2.
:- dynamic restricted/1.
:- dynamic commission_applies/1.
:- dynamic national_authority_applies/1.
:- dynamic respective_section_applies/1.
:- dynamic actor_applies/1.

registration_reference_applies(article(49, 1)).
registration_reference_applies(article(49, 2)).
registration_reference_applies(article(49, 3)).

annex_reference_applies(annex(iii, point(1))).
annex_reference_applies(annex(iii, point(6))).
annex_reference_applies(annex(iii, point(7))).

covered_area_applies(law_enforcement).
covered_area_applies(migration).
covered_area_applies(asylum).
covered_area_applies(border_control_management).

restricted_registration_applies(Registration) :-
    registration_of(Registration, System),
    artificial_intelligence_system_applies(System),
    high_risk(System),
    refers_to(System, AnnexReference),
    annex_reference_applies(AnnexReference),
    operates_in_area(System, Area),
    covered_area_applies(Area),
    refers_to(Registration, RegistrationReference),
    registration_reference_applies(RegistrationReference).

required_registration_location(
    location(Registration, secure_non_public_section(eu_database(article(71))))
) :-
    restricted_registration_applies(Registration).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
% The included points 1 to 3 also cover the separate reference to those points.
permitted_registration_information(annex(viii, point(1))).
permitted_registration_information(annex(viii, point(2))).
permitted_registration_information(annex(viii, point(3))).
permitted_registration_information(annex(viii, point(4))).
permitted_registration_information(annex(viii, point(5))).
permitted_registration_information(annex(viii, point(7))).
permitted_registration_information(annex(viii, point(10))).

% Annex VIII, Section B.
permitted_registration_information(annex(viii, section(b), point(1))).
permitted_registration_information(annex(viii, section(b), point(2))).
permitted_registration_information(annex(viii, section(b), point(3))).
permitted_registration_information(annex(viii, section(b), point(4))).
permitted_registration_information(annex(viii, section(b), point(5))).
permitted_registration_information(annex(viii, section(b), point(8))).
permitted_registration_information(annex(viii, section(b), point(9))).

% Annex IX.
permitted_registration_information(annex(ix, point(1))).
permitted_registration_information(annex(ix, point(2))).
permitted_registration_information(annex(ix, point(3))).
permitted_registration_information(annex(ix, point(5))).

permitted_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    permitted_registration_information(Information),
    applicable_information_applies(inclusion(Registration, Information)).

required_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    permitted_registration_information(Information),
    applicable_information_applies(inclusion(Registration, Information)).

prohibited_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    information_applies(Information),
    \+ permitted_information(inclusion(Registration, Information)).

restricted_database_section_applies(Section) :-
    section_of(Section, eu_database(article(71))),
    restricted(Section),
    refers_to(Section, article(49, 4)).

permitted_access(access(Commission, Section)) :-
    restricted_database_section_applies(Section),
    commission_applies(Commission),
    respective_section_applies(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    restricted_database_section_applies(Section),
    national_authority_applies(Authority),
    refers_to(Authority, article(74, 8)),
    respective_section_applies(access(Authority, Section)).

prohibited_access(access(Actor, Section)) :-
    actor_applies(Actor),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
