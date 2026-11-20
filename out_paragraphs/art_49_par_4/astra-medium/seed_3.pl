:- module(restricted_registration, [
    restricted_registration_applies/1,
    registration_provision_applies/1,
    high_risk_system_scope_applies/1,
    annex_scope_applies/1,
    area_scope_applies/1,
    required_registration_location/1,
    registration_information_scope_applies/1,
    permitted_information/1,
    required_information/1,
    prohibited_information/1,
    restricted_section_applies/1,
    permitted_access/1,
    required_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic listed_in_annex/2.
:- dynamic concerns_area/2.
:- dynamic registration_applies/1.
:- dynamic applicable/1.
:- dynamic information_applies/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic referred_to_article/2.
:- dynamic database_section_applies/1.
:- dynamic respective_section_applies/1.
:- dynamic access_applies/1.

registration_provision_applies(article(49, 1)).
registration_provision_applies(article(49, 2)).
registration_provision_applies(article(49, 3)).

annex_scope_applies(annex(iii, point(1))).
annex_scope_applies(annex(iii, point(6))).
annex_scope_applies(annex(iii, point(7))).

area_scope_applies(law_enforcement).
area_scope_applies(migration).
area_scope_applies(asylum).
area_scope_applies(border_control_management).

high_risk_system_scope_applies(System) :-
    high_risk(System),
    listed_in_annex(System, AnnexReference),
    annex_scope_applies(AnnexReference),
    concerns_area(System, Area),
    area_scope_applies(Area).

restricted_registration_applies(Registration) :-
    registration_applies(registration(Registration, System, Provision)),
    registration_provision_applies(Provision),
    high_risk_system_scope_applies(System).

required_registration_location(
    location(
        Registration,
        section(
            european_union_database(article(71)),
            secure,
            non_public
        )
    )
) :-
    restricted_registration_applies(Registration).

% Annex VIII, points 1 to 10, except points 6, 8 and 9.
registration_information_scope_applies(annex(viii, point(1))).
registration_information_scope_applies(annex(viii, point(2))).
registration_information_scope_applies(annex(viii, point(3))).
registration_information_scope_applies(annex(viii, point(4))).
registration_information_scope_applies(annex(viii, point(5))).
registration_information_scope_applies(annex(viii, point(7))).
registration_information_scope_applies(annex(viii, point(10))).

% Annex VIII, Section B, points 1 to 5, 8 and 9.
registration_information_scope_applies(annex(viii, section(b), point(1))).
registration_information_scope_applies(annex(viii, section(b), point(2))).
registration_information_scope_applies(annex(viii, section(b), point(3))).
registration_information_scope_applies(annex(viii, section(b), point(4))).
registration_information_scope_applies(annex(viii, section(b), point(5))).
registration_information_scope_applies(annex(viii, section(b), point(8))).
registration_information_scope_applies(annex(viii, section(b), point(9))).

% Annex VIII, points 1 to 3, are also covered by the facts above.

% Annex IX, points 1, 2, 3 and 5.
registration_information_scope_applies(annex(ix, point(1))).
registration_information_scope_applies(annex(ix, point(2))).
registration_information_scope_applies(annex(ix, point(3))).
registration_information_scope_applies(annex(ix, point(5))).

permitted_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    registration_information_scope_applies(Information),
    applicable(inclusion(Registration, Information)).

required_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    registration_information_scope_applies(Information),
    applicable(inclusion(Registration, Information)).

prohibited_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    information_applies(inclusion(Registration, Information)),
    \+ permitted_information(inclusion(Registration, Information)).

restricted_section_applies(Section) :-
    database_section_applies(
        section(
            Section,
            european_union_database(article(71)),
            restricted,
            article(49, 4)
        )
    ).

permitted_access(access(Commission, Section)) :-
    commission(Commission),
    restricted_section_applies(Section),
    respective_section_applies(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    national_authority(Authority),
    referred_to_article(Authority, article(74, 8)),
    restricted_section_applies(Section),
    respective_section_applies(access(Authority, Section)).

required_access(access(Commission, Section)) :-
    commission(Commission),
    restricted_section_applies(Section),
    respective_section_applies(access(Commission, Section)).

required_access(access(Authority, Section)) :-
    national_authority(Authority),
    referred_to_article(Authority, article(74, 8)),
    restricted_section_applies(Section),
    respective_section_applies(access(Authority, Section)).

prohibited_access(access(Actor, Section)) :-
    access_applies(access(Actor, Section)),
    restricted_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
