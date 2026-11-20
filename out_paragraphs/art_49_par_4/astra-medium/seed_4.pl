:- module(restricted_registration, [
    restricted_registration_annex_point_applies/1,
    restricted_registration_area_applies/1,
    restricted_registration_article_applies/1,
    restricted_system_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    listed_registration_information_applies/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    restricted_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic ai_system/1.
:- dynamic high_risk/1.
:- dynamic referred_to_in_annex/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic referred_to_in_article/2.
:- dynamic applicable_information_applies/1.
:- dynamic belongs_to_database/2.
:- dynamic listed_in_article/2.
:- dynamic commission/1.
:- dynamic national_authority/1.

restricted_registration_annex_point_applies(annex_iii(point(1))).
restricted_registration_annex_point_applies(annex_iii(point(6))).
restricted_registration_annex_point_applies(annex_iii(point(7))).

restricted_registration_area_applies(law_enforcement).
restricted_registration_area_applies(migration).
restricted_registration_area_applies(asylum).
restricted_registration_area_applies(border_control_management).

restricted_registration_article_applies(article(49, point(1))).
restricted_registration_article_applies(article(49, point(2))).
restricted_registration_article_applies(article(49, point(3))).

restricted_system_applies(System) :-
    ai_system(System),
    high_risk(System),
    referred_to_in_annex(System, Reference),
    restricted_registration_annex_point_applies(Reference),
    operates_in_area(System, Area),
    restricted_registration_area_applies(Area).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    restricted_system_applies(System),
    referred_to_in_article(Registration, Reference),
    restricted_registration_article_applies(Reference).

required_registration_location(
    location(Registration, restricted_registration_section(eu_database(article(71))))
) :-
    restricted_registration_applies(Registration).

secure(restricted_registration_section(eu_database(article(71)))).
non_public(restricted_registration_section(eu_database(article(71)))).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
% Points 1 to 3 also cover the separately specified Annex VIII information.
listed_registration_information_applies(annex_viii(point(1))).
listed_registration_information_applies(annex_viii(point(2))).
listed_registration_information_applies(annex_viii(point(3))).
listed_registration_information_applies(annex_viii(point(4))).
listed_registration_information_applies(annex_viii(point(5))).
listed_registration_information_applies(annex_viii(point(7))).
listed_registration_information_applies(annex_viii(point(10))).

% Annex VIII, Section B.
listed_registration_information_applies(annex_viii(section_b, point(1))).
listed_registration_information_applies(annex_viii(section_b, point(2))).
listed_registration_information_applies(annex_viii(section_b, point(3))).
listed_registration_information_applies(annex_viii(section_b, point(4))).
listed_registration_information_applies(annex_viii(section_b, point(5))).
listed_registration_information_applies(annex_viii(section_b, point(8))).
listed_registration_information_applies(annex_viii(section_b, point(9))).

% Annex IX.
listed_registration_information_applies(annex_ix(point(1))).
listed_registration_information_applies(annex_ix(point(2))).
listed_registration_information_applies(annex_ix(point(3))).
listed_registration_information_applies(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_registration_information_applies(Information),
    applicable_information_applies(inclusion(Registration, Information)).

required_registration_information(inclusion(Registration, Information)) :-
    permitted_registration_information(inclusion(Registration, Information)).

prohibited_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    \+ permitted_registration_information(inclusion(Registration, Information)).

restricted_section_applies(Section) :-
    belongs_to_database(Section, eu_database(article(71))),
    listed_in_article(Section, article(49, point(4))).

permitted_access(access(Actor, Section)) :-
    restricted_section_applies(Section),
    commission(Actor).

permitted_access(access(Actor, Section)) :-
    restricted_section_applies(Section),
    national_authority(Actor),
    referred_to_in_article(Actor, article(74, point(8))).

prohibited_access(access(Actor, Section)) :-
    restricted_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
