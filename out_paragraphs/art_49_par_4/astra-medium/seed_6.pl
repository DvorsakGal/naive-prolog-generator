:- module(restricted_registration, [
    annex_reference_applies/1,
    operational_area_applies/1,
    registration_reference_applies/1,
    covered_system/1,
    covered_registration/1,
    required_registration_location/1,
    listed_registration_information/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    restricted_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic refers_to/2.
:- dynamic operates_in/2.
:- dynamic concerns_system/2.
:- dynamic information_applicability_applies/1.
:- dynamic registration_information/1.
:- dynamic listed_in/2.
:- dynamic belongs_to/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_section_applies/1.
:- dynamic actor/1.

annex_reference_applies(annex(iii, point(1))).
annex_reference_applies(annex(iii, point(6))).
annex_reference_applies(annex(iii, point(7))).

operational_area_applies(law_enforcement).
operational_area_applies(migration).
operational_area_applies(asylum).
operational_area_applies(border_control_management).

registration_reference_applies(article(49, provision(1))).
registration_reference_applies(article(49, provision(2))).
registration_reference_applies(article(49, provision(3))).

covered_system(System) :-
    artificial_intelligence_system(System),
    high_risk(System),
    refers_to(System, Reference),
    annex_reference_applies(Reference),
    operates_in(System, Area),
    operational_area_applies(Area).

covered_registration(Registration) :-
    concerns_system(Registration, System),
    covered_system(System),
    refers_to(Registration, Reference),
    registration_reference_applies(Reference).

required_registration_location(
    location(Registration,
        section(european_union_database(article(71)), secure, non_public))
) :-
    covered_registration(Registration).

% Annex VIII, points 1 to 10 except 6, 8 and 9.
% Points 1 to 3 also cover the separately stated Annex VIII reference.
listed_registration_information(annex(viii, point(1))).
listed_registration_information(annex(viii, point(2))).
listed_registration_information(annex(viii, point(3))).
listed_registration_information(annex(viii, point(4))).
listed_registration_information(annex(viii, point(5))).
listed_registration_information(annex(viii, point(7))).
listed_registration_information(annex(viii, point(10))).

listed_registration_information(annex(viii, section(b), point(1))).
listed_registration_information(annex(viii, section(b), point(2))).
listed_registration_information(annex(viii, section(b), point(3))).
listed_registration_information(annex(viii, section(b), point(4))).
listed_registration_information(annex(viii, section(b), point(5))).
listed_registration_information(annex(viii, section(b), point(8))).
listed_registration_information(annex(viii, section(b), point(9))).

listed_registration_information(annex(ix, point(1))).
listed_registration_information(annex(ix, point(2))).
listed_registration_information(annex(ix, point(3))).
listed_registration_information(annex(ix, point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    covered_registration(Registration),
    listed_registration_information(Information),
    information_applicability_applies(inclusion(Registration, Information)).

required_registration_information(inclusion(Registration, Information)) :-
    covered_registration(Registration),
    listed_registration_information(Information),
    information_applicability_applies(inclusion(Registration, Information)).

prohibited_registration_information(inclusion(Registration, Information)) :-
    covered_registration(Registration),
    registration_information(Information),
    \+ permitted_registration_information(inclusion(Registration, Information)).

restricted_section_applies(Section) :-
    belongs_to(Section, european_union_database(article(71))),
    listed_in(Section, article(49, provision(4))).

permitted_access(access(Commission, Section)) :-
    commission(Commission),
    restricted_section_applies(Section),
    respective_section_applies(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    national_authority(Authority),
    refers_to(Authority, article(74, provision(8))),
    restricted_section_applies(Section),
    respective_section_applies(access(Authority, Section)).

prohibited_access(access(Actor, Section)) :-
    actor(Actor),
    restricted_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
