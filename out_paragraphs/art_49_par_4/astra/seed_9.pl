:- module(restricted_registration, [
    covered_annex_point_applies/1,
    covered_area_applies/1,
    covered_registration_reference_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    listed_registration_information_applies/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    eligible_access_holder/1,
    permitted_database_access/1,
    prohibited_database_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic falls_under_annex_point/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic registration_reference_applies/1.
:- dynamic information_applicable/1.
:- dynamic information_candidate_applies/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic authority_reference_applies/1.
:- dynamic restricted_section_reference_applies/1.
:- dynamic respective_section_applies/1.
:- dynamic access_candidate_applies/1.

covered_annex_point_applies(annex_point(iii, 1)).
covered_annex_point_applies(annex_point(iii, 6)).
covered_annex_point_applies(annex_point(iii, 7)).

covered_area_applies(law_enforcement).
covered_area_applies(migration).
covered_area_applies(asylum).
covered_area_applies(border_control_management).

covered_registration_reference_applies(article(49, 1)).
covered_registration_reference_applies(article(49, 2)).
covered_registration_reference_applies(article(49, 3)).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    artificial_intelligence_system(System),
    high_risk(System),
    falls_under_annex_point(System, AnnexPoint),
    covered_annex_point_applies(AnnexPoint),
    operates_in_area(System, Area),
    covered_area_applies(Area),
    registration_reference_applies(reference(Registration, Article)),
    covered_registration_reference_applies(Article).

required_registration_location(
    location(Registration, restricted_section(eu_database(article(71))))
) :-
    restricted_registration_applies(Registration).

secure(restricted_section(eu_database(article(71)))).
non_public(restricted_section(eu_database(article(71)))).

listed_registration_information_applies(annex_point(viii, 1)).
listed_registration_information_applies(annex_point(viii, 2)).
listed_registration_information_applies(annex_point(viii, 3)).
listed_registration_information_applies(annex_point(viii, 4)).
listed_registration_information_applies(annex_point(viii, 5)).
listed_registration_information_applies(annex_point(viii, 7)).
listed_registration_information_applies(annex_point(viii, 10)).

listed_registration_information_applies(annex_section_point(viii, b, 1)).
listed_registration_information_applies(annex_section_point(viii, b, 2)).
listed_registration_information_applies(annex_section_point(viii, b, 3)).
listed_registration_information_applies(annex_section_point(viii, b, 4)).
listed_registration_information_applies(annex_section_point(viii, b, 5)).
listed_registration_information_applies(annex_section_point(viii, b, 8)).
listed_registration_information_applies(annex_section_point(viii, b, 9)).

% Annex VIII, points 1 to 3, are also independently included above.

listed_registration_information_applies(annex_point(ix, 1)).
listed_registration_information_applies(annex_point(ix, 2)).
listed_registration_information_applies(annex_point(ix, 3)).
listed_registration_information_applies(annex_point(ix, 5)).

permitted_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_registration_information_applies(Information),
    information_applicable(inclusion(Registration, Information)).

required_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    listed_registration_information_applies(Information),
    information_applicable(inclusion(Registration, Information)).

prohibited_registration_information(inclusion(Registration, Information)) :-
    restricted_registration_applies(Registration),
    information_candidate_applies(inclusion(Registration, Information)),
    \+ permitted_registration_information(inclusion(Registration, Information)).

eligible_access_holder(Actor) :-
    commission(Actor).

eligible_access_holder(Actor) :-
    national_authority(Actor),
    authority_reference_applies(reference(Actor, article(74, 8))).

permitted_database_access(access(Actor, Section)) :-
    restricted_section_reference_applies(
        reference(Section, eu_database(article(71)), article(49, 4))
    ),
    eligible_access_holder(Actor),
    respective_section_applies(access(Actor, Section)).

prohibited_database_access(access(Actor, Section)) :-
    restricted_section_reference_applies(
        reference(Section, eu_database(article(71)), article(49, 4))
    ),
    access_candidate_applies(access(Actor, Section)),
    \+ permitted_database_access(access(Actor, Section)).
