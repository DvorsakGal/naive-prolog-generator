:- module(restricted_registration, [
    covered_system_applies/1,
    covered_annex_point_applies/1,
    covered_area_applies/1,
    covered_registration_applies/1,
    covered_registration_article_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    permitted_information_reference/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    restricted_database_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic refers_to_annex_point/2.
:- dynamic operates_in_area/2.
:- dynamic concerns_system/2.
:- dynamic refers_to_article/2.
:- dynamic information/1.
:- dynamic refers_to_information/2.
:- dynamic applicable/1.
:- dynamic restricted_section/1.
:- dynamic belongs_to_database/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic actor/1.
:- dynamic respective/1.

covered_system_applies(System) :-
    artificial_intelligence_system(System),
    high_risk(System),
    covered_annex_point_applies(System),
    covered_area_applies(System).

covered_annex_point_applies(System) :-
    refers_to_annex_point(System, annex_iii(point(1))).
covered_annex_point_applies(System) :-
    refers_to_annex_point(System, annex_iii(point(6))).
covered_annex_point_applies(System) :-
    refers_to_annex_point(System, annex_iii(point(7))).

covered_area_applies(System) :-
    operates_in_area(System, law_enforcement).
covered_area_applies(System) :-
    operates_in_area(System, migration).
covered_area_applies(System) :-
    operates_in_area(System, asylum).
covered_area_applies(System) :-
    operates_in_area(System, border_control_management).

covered_registration_applies(Registration) :-
    concerns_system(Registration, System),
    covered_system_applies(System),
    covered_registration_article_applies(Registration).

covered_registration_article_applies(Registration) :-
    refers_to_article(Registration, article(49, 1)).
covered_registration_article_applies(Registration) :-
    refers_to_article(Registration, article(49, 2)).
covered_registration_article_applies(Registration) :-
    refers_to_article(Registration, article(49, 3)).

required_registration_location(
    location(Registration,
             secure_non_public_section(european_union_database(article(71))))
) :-
    covered_registration_applies(Registration).

secure(secure_non_public_section(european_union_database(article(71)))).
non_public(secure_non_public_section(european_union_database(article(71)))).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
% The separately specified Annex VIII points 1 to 3 are also included here.
permitted_information_reference(annex_viii(point(1))).
permitted_information_reference(annex_viii(point(2))).
permitted_information_reference(annex_viii(point(3))).
permitted_information_reference(annex_viii(point(4))).
permitted_information_reference(annex_viii(point(5))).
permitted_information_reference(annex_viii(point(7))).
permitted_information_reference(annex_viii(point(10))).

% Annex VIII, Section B, points 1 to 5, 8 and 9.
permitted_information_reference(annex_viii(section_b, point(1))).
permitted_information_reference(annex_viii(section_b, point(2))).
permitted_information_reference(annex_viii(section_b, point(3))).
permitted_information_reference(annex_viii(section_b, point(4))).
permitted_information_reference(annex_viii(section_b, point(5))).
permitted_information_reference(annex_viii(section_b, point(8))).
permitted_information_reference(annex_viii(section_b, point(9))).

% Annex IX, points 1, 2, 3 and 5.
permitted_information_reference(annex_ix(point(1))).
permitted_information_reference(annex_ix(point(2))).
permitted_information_reference(annex_ix(point(3))).
permitted_information_reference(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    covered_registration_applies(Registration),
    refers_to_information(Information, Reference),
    permitted_information_reference(Reference),
    applicable(inclusion(Registration, Information)).

required_registration_information(inclusion(Registration, Information)) :-
    covered_registration_applies(Registration),
    refers_to_information(Information, Reference),
    permitted_information_reference(Reference),
    applicable(inclusion(Registration, Information)).

prohibited_registration_information(inclusion(Registration, Information)) :-
    covered_registration_applies(Registration),
    information(Information),
    \+ permitted_registration_information(inclusion(Registration, Information)).

restricted_database_section_applies(Section) :-
    restricted_section(Section),
    belongs_to_database(Section, european_union_database(article(71))),
    refers_to_article(Section, article(49, 4)).

permitted_access(access(Commission, Section)) :-
    commission(Commission),
    restricted_database_section_applies(Section),
    respective(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    national_authority(Authority),
    refers_to_article(Authority, article(74, 8)),
    restricted_database_section_applies(Section),
    respective(access(Authority, Section)).

prohibited_access(access(Actor, Section)) :-
    actor(Actor),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
