:- module(eu_database_restricted_registration, [
    high_risk_ai_system/1,
    covered_annex_iii_point/1,
    covered_area/1,
    restricted_registration_applies/1,
    required_secure_non_public_section/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic annex_iii_point/2.
:- dynamic area_of_system/2.
:- dynamic registration_entry/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic restricted_section_of_eu_database/1.

covered_annex_iii_point(point(1)).
covered_annex_iii_point(point(6)).
covered_annex_iii_point(point(7)).

covered_area(law_enforcement).
covered_area(migration).
covered_area(asylum).
covered_area(border_control_management).

high_risk_ai_system(System) :-
    annex_iii_point(System, Point),
    covered_annex_iii_point(Point),
    area_of_system(System, Area),
    covered_area(Area).

restricted_registration_applies(Registration) :-
    registration_entry(Registration, System),
    high_risk_ai_system(System).

required_secure_non_public_section(Registration) :-
    restricted_registration_applies(Registration).

% Information item permitted under (a): Annex VIII, points 1 to 10 except 6, 8, 9
permitted_registration_information(Registration, annex_viii(point(Point))) :-
    restricted_registration_applies(Registration),
    annex_viii_permitted_point(Point).

annex_viii_permitted_point(1).
annex_viii_permitted_point(2).
annex_viii_permitted_point(3).
annex_viii_permitted_point(4).
annex_viii_permitted_point(5).
annex_viii_permitted_point(7).
annex_viii_permitted_point(10).

% Information item permitted under (b): Annex VIII, Section B, points 1 to 5, 8, 9
permitted_registration_information(Registration, annex_viii(section_b(point(Point)))) :-
    restricted_registration_applies(Registration),
    annex_viii_section_b_permitted_point(Point).

annex_viii_section_b_permitted_point(1).
annex_viii_section_b_permitted_point(2).
annex_viii_section_b_permitted_point(3).
annex_viii_section_b_permitted_point(4).
annex_viii_section_b_permitted_point(5).
annex_viii_section_b_permitted_point(8).
annex_viii_section_b_permitted_point(9).

% Information item permitted under (c): Annex VIII, points 1 to 3
permitted_registration_information(Registration, annex_viii(point(Point))) :-
    restricted_registration_applies(Registration),
    annex_viii_c_permitted_point(Point).

annex_viii_c_permitted_point(1).
annex_viii_c_permitted_point(2).
annex_viii_c_permitted_point(3).

% Information item permitted under (d): Annex IX, points 1, 2, 3, 5
permitted_registration_information(Registration, annex_ix(point(Point))) :-
    restricted_registration_applies(Registration),
    annex_ix_permitted_point(Point).

annex_ix_permitted_point(1).
annex_ix_permitted_point(2).
annex_ix_permitted_point(3).
annex_ix_permitted_point(5).

% Access permissions: only Commission and relevant national authorities
permitted_access(Actor, restricted_section(Section)) :-
    restricted_section_of_eu_database(Section),
    commission(Actor).

permitted_access(Actor, restricted_section(Section)) :-
    restricted_section_of_eu_database(Section),
    national_authority(Actor).
