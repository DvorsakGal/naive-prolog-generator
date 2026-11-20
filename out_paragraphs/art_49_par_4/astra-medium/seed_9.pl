:- module(restricted_registration, [
    covered_annex_reference_applies/1,
    covered_area_applies/1,
    covered_registration_reference_applies/1,
    restricted_registration_applies/1,
    required_registration_location/1,
    permitted_information_reference/1,
    permitted_information/1,
    required_information/1,
    prohibited_information/1,
    restricted_database_section_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system_applies/1.
:- dynamic refers_to_annex_point/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic refers_to_article/2.
:- dynamic applies_to_registration/2.
:- dynamic information_reference_applies/1.
:- dynamic restricted/1.
:- dynamic belongs_to_database/2.
:- dynamic commission_applies/1.
:- dynamic national_authority_applies/1.
:- dynamic respective_section_applies/1.
:- dynamic actor_applies/1.

covered_annex_reference_applies(annex(iii, point(1))).
covered_annex_reference_applies(annex(iii, point(6))).
covered_annex_reference_applies(annex(iii, point(7))).

covered_area_applies(law_enforcement).
covered_area_applies(migration).
covered_area_applies(asylum).
covered_area_applies(border_control_management).

covered_registration_reference_applies(article(49, point(1))).
covered_registration_reference_applies(article(49, point(2))).
covered_registration_reference_applies(article(49, point(3))).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    artificial_intelligence_system_applies(System),
    high_risk(System),
    refers_to_annex_point(System, AnnexReference),
    covered_annex_reference_applies(AnnexReference),
    operates_in_area(System, Area),
    covered_area_applies(Area),
    refers_to_article(Registration, ArticleReference),
    covered_registration_reference_applies(ArticleReference).

required_registration_location(
    location(
        Registration,
        section(european_union_database(article(71)), secure, non_public)
    )
) :-
    restricted_registration_applies(Registration).

% Annex VIII, points 1 to 10, excluding points 6, 8 and 9.
% The separately specified Annex VIII, points 1 to 3, are also included.
permitted_information_reference(annex(viii, point(1))).
permitted_information_reference(annex(viii, point(2))).
permitted_information_reference(annex(viii, point(3))).
permitted_information_reference(annex(viii, point(4))).
permitted_information_reference(annex(viii, point(5))).
permitted_information_reference(annex(viii, point(7))).
permitted_information_reference(annex(viii, point(10))).

% Annex VIII, Section B, points 1 to 5, 8 and 9.
permitted_information_reference(annex(viii, section(b), point(1))).
permitted_information_reference(annex(viii, section(b), point(2))).
permitted_information_reference(annex(viii, section(b), point(3))).
permitted_information_reference(annex(viii, section(b), point(4))).
permitted_information_reference(annex(viii, section(b), point(5))).
permitted_information_reference(annex(viii, section(b), point(8))).
permitted_information_reference(annex(viii, section(b), point(9))).

% Annex IX, points 1, 2, 3 and 5.
permitted_information_reference(annex(ix, point(1))).
permitted_information_reference(annex(ix, point(2))).
permitted_information_reference(annex(ix, point(3))).
permitted_information_reference(annex(ix, point(5))).

permitted_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference(Reference),
    applies_to_registration(Reference, Registration).

required_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference(Reference),
    applies_to_registration(Reference, Registration).

prohibited_information(inclusion(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    information_reference_applies(Reference),
    \+ permitted_information(inclusion(Registration, Reference)).

restricted_database_section_applies(Section) :-
    restricted(Section),
    belongs_to_database(Section, european_union_database(article(71))),
    refers_to_article(Section, article(49, point(4))).

permitted_access(access(Commission, Section)) :-
    commission_applies(Commission),
    restricted_database_section_applies(Section),
    respective_section_applies(access(Commission, Section)).

permitted_access(access(Authority, Section)) :-
    national_authority_applies(Authority),
    refers_to_article(Authority, article(74, point(8))),
    restricted_database_section_applies(Section),
    respective_section_applies(access(Authority, Section)).

prohibited_access(access(Actor, Section)) :-
    actor_applies(Actor),
    restricted_database_section_applies(Section),
    \+ permitted_access(access(Actor, Section)).
