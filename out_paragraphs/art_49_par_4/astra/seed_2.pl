:- module(restricted_registration, [
    restricted_registration_applies/1,
    annex_point_applies/1,
    regulated_area_applies/1,
    registration_reference_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    permitted_information_reference/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic annex_reference_applies/1.
:- dynamic area_applies/1.
:- dynamic registration_applies/1.
:- dynamic information_applicable/1.
:- dynamic registration_information_applies/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_reference_applies/1.
:- dynamic restricted_section/1.
:- dynamic respective_section_applies/1.
:- dynamic access_applies/1.

annex_point_applies(1).
annex_point_applies(6).
annex_point_applies(7).

regulated_area_applies(law_enforcement).
regulated_area_applies(migration).
regulated_area_applies(asylum).
regulated_area_applies(border_control_management).

registration_reference_applies(article(49, 1)).
registration_reference_applies(article(49, 2)).
registration_reference_applies(article(49, 3)).

restricted_registration_applies(Registration) :-
    registration_applies(registration(Registration, System, Reference)),
    registration_reference_applies(Reference),
    artificial_intelligence_system(System),
    high_risk(System),
    annex_reference_applies(reference(System, annex(iii), point(Point))),
    annex_point_applies(Point),
    area_applies(area(System, Area)),
    regulated_area_applies(Area).

required_registration_location(
    location(Registration, section(secure_non_public, eu_database(article(71))))
) :-
    restricted_registration_applies(Registration).

secure(section(secure_non_public, eu_database(article(71)))).
non_public(section(secure_non_public, eu_database(article(71)))).

% Item (a): points 1 to 10, except 6, 8 and 9.
permitted_information_reference(annex(viii, point(1))).
permitted_information_reference(annex(viii, point(2))).
permitted_information_reference(annex(viii, point(3))).
permitted_information_reference(annex(viii, point(4))).
permitted_information_reference(annex(viii, point(5))).
permitted_information_reference(annex(viii, point(7))).
permitted_information_reference(annex(viii, point(10))).

% Item (b).
permitted_information_reference(annex(viii, section(b), point(1))).
permitted_information_reference(annex(viii, section(b), point(2))).
permitted_information_reference(annex(viii, section(b), point(3))).
permitted_information_reference(annex(viii, section(b), point(4))).
permitted_information_reference(annex(viii, section(b), point(5))).
permitted_information_reference(annex(viii, section(b), point(8))).
permitted_information_reference(annex(viii, section(b), point(9))).

% Item (c) repeats Annex VIII points 1 to 3, represented above.

% Item (d).
permitted_information_reference(annex(ix, point(1))).
permitted_information_reference(annex(ix, point(2))).
permitted_information_reference(annex(ix, point(3))).
permitted_information_reference(annex(ix, point(5))).

permitted_registration_information(information(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference(Reference),
    information_applicable(information(Registration, Reference)).

required_registration_information(information(Registration, Reference)) :-
    permitted_registration_information(information(Registration, Reference)).

prohibited_registration_information(information(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    registration_information_applies(information(Registration, Reference)),
    \+ permitted_registration_information(information(Registration, Reference)).

permitted_access(access(Actor, Section)) :-
    commission(Actor),
    restricted_section(Section),
    article_reference_applies(reference(Section, article(49, 4))),
    respective_section_applies(section(Actor, Section)).

permitted_access(access(Actor, Section)) :-
    national_authority(Actor),
    article_reference_applies(reference(Actor, article(74, 8))),
    restricted_section(Section),
    article_reference_applies(reference(Section, article(49, 4))),
    respective_section_applies(section(Actor, Section)).

prohibited_access(access(Actor, Section)) :-
    access_applies(access(Actor, Section)),
    restricted_section(Section),
    article_reference_applies(reference(Section, article(49, 4))),
    \+ permitted_access(access(Actor, Section)).
