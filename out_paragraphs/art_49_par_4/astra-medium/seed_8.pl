:- module(restricted_registration, [
    annex_scope_applies/1,
    area_scope_applies/1,
    registration_provision_applies/1,
    system_scope_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    required_secure_section/1,
    required_non_public_section/1,
    permitted_information_point/1,
    permitted_information/1,
    required_information/1,
    prohibited_information/1,
    restricted_database_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic refers_to/2.
:- dynamic has_area/2.
:- dynamic concerns_system/2.
:- dynamic registration/1.
:- dynamic applicable_information_applies/1.
:- dynamic information_point/1.
:- dynamic restricted/1.
:- dynamic located_in/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_section_applies/1.
:- dynamic actor/1.

annex_scope_applies(annex(iii, point(1))).
annex_scope_applies(annex(iii, point(6))).
annex_scope_applies(annex(iii, point(7))).

area_scope_applies(law_enforcement).
area_scope_applies(migration).
area_scope_applies(asylum).
area_scope_applies(border_control_management).

registration_provision_applies(article(49, paragraph(1))).
registration_provision_applies(article(49, paragraph(2))).
registration_provision_applies(article(49, paragraph(3))).

system_scope_applies(System) :-
    artificial_intelligence_system(System),
    high_risk(System),
    refers_to(System, AnnexPoint),
    annex_scope_applies(AnnexPoint),
    has_area(System, Area),
    area_scope_applies(Area).

restricted_registration_applies(Registration) :-
    registration(Registration),
    concerns_system(Registration, System),
    system_scope_applies(System),
    refers_to(Registration, Provision),
    registration_provision_applies(Provision).

required_registration_location(
    location(Registration,
             section_for(Registration),
             european_union_database(article(71)))
) :-
    restricted_registration_applies(Registration).

required_secure_section(section_for(Registration)) :-
    restricted_registration_applies(Registration).

required_non_public_section(section_for(Registration)) :-
    restricted_registration_applies(Registration).

% Annex VIII, points 1 to 10, excluding 6, 8 and 9.
% The separately specified Annex VIII points 1 to 3 are included here.
permitted_information_point(annex(viii, point(1))).
permitted_information_point(annex(viii, point(2))).
permitted_information_point(annex(viii, point(3))).
permitted_information_point(annex(viii, point(4))).
permitted_information_point(annex(viii, point(5))).
permitted_information_point(annex(viii, point(7))).
permitted_information_point(annex(viii, point(10))).

% Annex VIII, Section B.
permitted_information_point(annex(viii, section(b), point(1))).
permitted_information_point(annex(viii, section(b), point(2))).
permitted_information_point(annex(viii, section(b), point(3))).
permitted_information_point(annex(viii, section(b), point(4))).
permitted_information_point(annex(viii, section(b), point(5))).
permitted_information_point(annex(viii, section(b), point(8))).
permitted_information_point(annex(viii, section(b), point(9))).

% Annex IX.
permitted_information_point(annex(ix, point(1))).
permitted_information_point(annex(ix, point(2))).
permitted_information_point(annex(ix, point(3))).
permitted_information_point(annex(ix, point(5))).

permitted_information(inclusion(Registration, Point)) :-
    restricted_registration_applies(Registration),
    permitted_information_point(Point),
    applicable_information_applies(inclusion(Registration, Point)).

required_information(inclusion(Registration, Point)) :-
    permitted_information(inclusion(Registration, Point)).

prohibited_information(inclusion(Registration, Point)) :-
    restricted_registration_applies(Registration),
    information_point(Point),
    \+ permitted_information(inclusion(Registration, Point)).

restricted_database_section_applies(Section) :-
    restricted(Section),
    located_in(Section, european_union_database(article(71))),
    refers_to(Section, article(49, paragraph(4))).

permitted_access(access(Actor, Section)) :-
    commission(Actor),
    restricted_database_section_applies(Section),
    respective_section_applies(access(Actor, Section)).

permitted_access(access(Actor, Section)) :-
    national_authority(Actor),
    refers_to(Actor, article(74, paragraph(8))),
    restricted_database_section_applies(Section),
    respective_section_applies(access(Actor, Section)).

prohibited_access(access(Actor, Section)) :-
    actor(Actor),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
