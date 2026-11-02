:- module(restricted_database_registration, [
    covered_annex_reference_applies/1,
    covered_area_applies/1,
    covered_registration_reference_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    permitted_information/1,
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
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic relevant_information_applies/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic respective_section_applies/1.
:- dynamic seeks_access/2.

covered_annex_reference_applies(annex_iii(point(1))).
covered_annex_reference_applies(annex_iii(point(6))).
covered_annex_reference_applies(annex_iii(point(7))).

covered_area_applies(law_enforcement).
covered_area_applies(migration).
covered_area_applies(asylum).
covered_area_applies(border_control_management).

covered_registration_reference_applies(article(49, point(1))).
covered_registration_reference_applies(article(49, point(2))).
covered_registration_reference_applies(article(49, point(3))).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    refers_to(System, AnnexReference),
    covered_annex_reference_applies(AnnexReference),
    operates_in_area(System, Area),
    covered_area_applies(Area),
    refers_to(Registration, RegistrationReference),
    covered_registration_reference_applies(RegistrationReference).

required_registration_location(
    location(Registration, secure_non_public_section(european_union_database(article(71))))
) :-
    restricted_registration_applies(Registration).

secure(secure_non_public_section(european_union_database(article(71)))).
non_public(secure_non_public_section(european_union_database(article(71)))).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
permitted_information(annex_viii(point(1))).
permitted_information(annex_viii(point(2))).
permitted_information(annex_viii(point(3))).
permitted_information(annex_viii(point(4))).
permitted_information(annex_viii(point(5))).
permitted_information(annex_viii(point(7))).
permitted_information(annex_viii(point(10))).

% Annex VIII, Section B.
permitted_information(annex_viii(section_b, point(1))).
permitted_information(annex_viii(section_b, point(2))).
permitted_information(annex_viii(section_b, point(3))).
permitted_information(annex_viii(section_b, point(4))).
permitted_information(annex_viii(section_b, point(5))).
permitted_information(annex_viii(section_b, point(8))).
permitted_information(annex_viii(section_b, point(9))).

% The separately specified Annex VIII points 1 to 3 are included above.

permitted_information(annex_ix(point(1))).
permitted_information(annex_ix(point(2))).
permitted_information(annex_ix(point(3))).
permitted_information(annex_ix(point(5))).

permitted_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    permitted_information(Information),
    relevant_information_applies(inclusion(Registration, Information)).

required_registration_information(inclusion(Registration, Information)) :-
    permitted_registration_information(inclusion(Registration, Information)).

prohibited_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    \+ permitted_registration_information(inclusion(Registration, Information)).

restricted_section_applies(Section) :-
    refers_to(Section, restricted_section(european_union_database, article(49, point(4)))).

permitted_access(access(Actor, Section)) :-
    restricted_section_applies(Section),
    commission(Actor),
    respective_section_applies(access(Actor, Section)).

permitted_access(access(Actor, Section)) :-
    restricted_section_applies(Section),
    national_authority(Actor),
    refers_to(Actor, article(74, point(8))),
    respective_section_applies(access(Actor, Section)).

prohibited_access(access(Actor, Section)) :-
    restricted_section_applies(Section),
    seeks_access(Actor, Section),
    \+ permitted_access(access(Actor, Section)).
