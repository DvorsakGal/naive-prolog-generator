:- module(restricted_registration, [
    registration_scope_applies/1,
    covered_annex_point/1,
    covered_area/1,
    covered_registration_reference/1,
    required_registration_location/1,
    required_secure_section/1,
    required_non_public_section/1,
    permitted_information_reference/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    permitted_database_access/1,
    prohibited_database_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic refers_annex_point/2.
:- dynamic operates_area/2.
:- dynamic registers_system/2.
:- dynamic refers_article/2.
:- dynamic applicable_information/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_section/2.
:- dynamic restricted_database_section/1.

covered_annex_point(annex_iii(point(1))).
covered_annex_point(annex_iii(point(6))).
covered_annex_point(annex_iii(point(7))).

covered_area(law_enforcement).
covered_area(migration).
covered_area(asylum).
covered_area(border_control_management).

covered_registration_reference(article(49, 1)).
covered_registration_reference(article(49, 2)).
covered_registration_reference(article(49, 3)).

registration_scope_applies(Registration) :-
    registers_system(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    refers_annex_point(System, Point),
    covered_annex_point(Point),
    operates_area(System, Area),
    covered_area(Area),
    refers_article(Registration, Reference),
    covered_registration_reference(Reference).

required_registration_location(
    location(Registration, restricted_section(eu_database(article(71))))
) :-
    registration_scope_applies(Registration).

required_secure_section(
    registration_section(Registration, eu_database(article(71)))
) :-
    registration_scope_applies(Registration).

required_non_public_section(
    registration_section(Registration, eu_database(article(71)))
) :-
    registration_scope_applies(Registration).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
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

% The additional reference to Annex VIII, points 1 to 3, is
% covered by the corresponding facts above.

permitted_information_reference(annex_ix(point(1))).
permitted_information_reference(annex_ix(point(2))).
permitted_information_reference(annex_ix(point(3))).
permitted_information_reference(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    registration_scope_applies(Registration),
    permitted_information_reference(Information),
    applicable_information(Information, Registration).

required_registration_information(inclusion(Registration, Information)) :-
    registration_scope_applies(Registration),
    permitted_information_reference(Information),
    applicable_information(Information, Registration).

prohibited_registration_information(inclusion(Registration, Information)) :-
    registration_scope_applies(Registration),
    \+ permitted_registration_information(inclusion(Registration, Information)).

permitted_database_access(access(Actor, Section)) :-
    restricted_database_section(Section),
    refers_article(Section, article(49, 4)),
    commission(Actor),
    respective_section(Actor, Section).

permitted_database_access(access(Actor, Section)) :-
    restricted_database_section(Section),
    refers_article(Section, article(49, 4)),
    national_authority(Actor),
    refers_article(Actor, article(74, 8)),
    respective_section(Actor, Section).

prohibited_database_access(access(Actor, Section)) :-
    restricted_database_section(Section),
    refers_article(Section, article(49, 4)),
    \+ permitted_database_access(access(Actor, Section)).
