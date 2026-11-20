:- module(restricted_registration, [
    covered_annex_reference_applies/1,
    covered_area_applies/1,
    covered_registration_provision_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    permitted_information_reference_applies/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    restricted_database_section_applies/1,
    permitted_access/1,
    required_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system_applies/1.
:- dynamic refers_to_reference/2.
:- dynamic operates_in_area/2.
:- dynamic covers_system/2.
:- dynamic refers_to_provision/2.
:- dynamic information_applies/1.
:- dynamic information_candidate_applies/1.
:- dynamic belongs_to_database/2.
:- dynamic commission_applies/1.
:- dynamic national_authority_applies/1.
:- dynamic respective_section_applies/1.
:- dynamic actor_applies/1.

covered_annex_reference_applies(annex(iii, point(1))).
covered_annex_reference_applies(annex(iii, point(6))).
covered_annex_reference_applies(annex(iii, point(7))).

covered_area_applies(law_enforcement).
covered_area_applies(migration).
covered_area_applies(asylum).
covered_area_applies(border_control_management).

covered_registration_provision_applies(article(49, point(1))).
covered_registration_provision_applies(article(49, point(2))).
covered_registration_provision_applies(article(49, point(3))).

restricted_registration_applies(Registration) :-
    covers_system(Registration, System),
    artificial_intelligence_system_applies(System),
    high_risk(System),
    refers_to_reference(System, Reference),
    covered_annex_reference_applies(Reference),
    operates_in_area(System, Area),
    covered_area_applies(Area),
    refers_to_provision(Registration, Provision),
    covered_registration_provision_applies(Provision).

required_registration_location(
    registration_location(
        Registration,
        restricted_section(european_union_database(article(71)))
    )
) :-
    restricted_registration_applies(Registration).

secure(restricted_section(european_union_database(article(71)))).
non_public(restricted_section(european_union_database(article(71)))).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
% The separately specified Annex VIII points 1 to 3 are included here.
permitted_information_reference_applies(annex(viii, point(1))).
permitted_information_reference_applies(annex(viii, point(2))).
permitted_information_reference_applies(annex(viii, point(3))).
permitted_information_reference_applies(annex(viii, point(4))).
permitted_information_reference_applies(annex(viii, point(5))).
permitted_information_reference_applies(annex(viii, point(7))).
permitted_information_reference_applies(annex(viii, point(10))).

% Annex VIII, Section B.
permitted_information_reference_applies(annex(viii, section(b), point(1))).
permitted_information_reference_applies(annex(viii, section(b), point(2))).
permitted_information_reference_applies(annex(viii, section(b), point(3))).
permitted_information_reference_applies(annex(viii, section(b), point(4))).
permitted_information_reference_applies(annex(viii, section(b), point(5))).
permitted_information_reference_applies(annex(viii, section(b), point(8))).
permitted_information_reference_applies(annex(viii, section(b), point(9))).

% Annex IX.
permitted_information_reference_applies(annex(ix, point(1))).
permitted_information_reference_applies(annex(ix, point(2))).
permitted_information_reference_applies(annex(ix, point(3))).
permitted_information_reference_applies(annex(ix, point(5))).

permitted_registration_information(registration_information(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference_applies(Reference),
    information_applies(registration_information(Registration, Reference)).

required_registration_information(registration_information(Registration, Reference)) :-
    permitted_registration_information(registration_information(Registration, Reference)).

prohibited_registration_information(registration_information(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    information_candidate_applies(registration_information(Registration, Reference)),
    \+ permitted_registration_information(registration_information(Registration, Reference)).

restricted_database_section_applies(Section) :-
    belongs_to_database(Section, european_union_database(article(71))),
    refers_to_provision(Section, article(49, point(4))).

permitted_access(access(Commission, Section)) :-
    commission_applies(Commission),
    restricted_database_section_applies(Section),
    respective_section_applies(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    national_authority_applies(Authority),
    refers_to_provision(Authority, article(74, point(8))),
    restricted_database_section_applies(Section),
    respective_section_applies(access(Authority, Section)).

required_access(access(Actor, Section)) :-
    permitted_access(access(Actor, Section)).

prohibited_access(access(Actor, Section)) :-
    actor_applies(Actor),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
