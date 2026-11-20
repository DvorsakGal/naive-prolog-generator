:- module(restricted_registration, [
    restricted_registration_applies/1,
    relevant_annex_reference_applies/1,
    relevant_area_applies/1,
    relevant_registration_reference_applies/1,
    required_registration_location/1,
    secure/1,
    non_public/1,
    permitted_information_reference/1,
    permitted_registration_information/1,
    required_registration_information/1,
    prohibited_registration_information/1,
    eligible_access_actor_applies/1,
    permitted_access/1,
    prohibited_access/1
]).

:- dynamic high_risk/1.
:- dynamic refers_to_annex/2.
:- dynamic operates_in_area/2.
:- dynamic registers_system/2.
:- dynamic refers_to_article/2.
:- dynamic information_reference_applies/1.
:- dynamic registration_information_applies/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic restricted_section/1.
:- dynamic respective_section_applies/1.
:- dynamic access_request_applies/1.

relevant_annex_reference_applies(System) :-
    refers_to_annex(System, annex(iii, point(1))).
relevant_annex_reference_applies(System) :-
    refers_to_annex(System, annex(iii, point(6))).
relevant_annex_reference_applies(System) :-
    refers_to_annex(System, annex(iii, point(7))).

relevant_area_applies(System) :-
    operates_in_area(System, law_enforcement).
relevant_area_applies(System) :-
    operates_in_area(System, migration).
relevant_area_applies(System) :-
    operates_in_area(System, asylum).
relevant_area_applies(System) :-
    operates_in_area(System, border_control_management).

relevant_registration_reference_applies(Registration) :-
    refers_to_article(Registration, article(49, provision(1))).
relevant_registration_reference_applies(Registration) :-
    refers_to_article(Registration, article(49, provision(2))).
relevant_registration_reference_applies(Registration) :-
    refers_to_article(Registration, article(49, provision(3))).

restricted_registration_applies(Registration) :-
    registers_system(Registration, System),
    high_risk(System),
    relevant_annex_reference_applies(System),
    relevant_area_applies(System),
    relevant_registration_reference_applies(Registration).

required_registration_location(location(Registration, secure_non_public_section(eu_database(article(71))))) :-
    restricted_registration_applies(Registration).

secure(secure_non_public_section(eu_database(article(71)))).
non_public(secure_non_public_section(eu_database(article(71)))).

% Annex VIII, points 1 to 10, excluding 6, 8 and 9.
permitted_information_reference(annex(viii, point(1))).
permitted_information_reference(annex(viii, point(2))).
permitted_information_reference(annex(viii, point(3))).
permitted_information_reference(annex(viii, point(4))).
permitted_information_reference(annex(viii, point(5))).
permitted_information_reference(annex(viii, point(7))).
permitted_information_reference(annex(viii, point(10))).

% Annex VIII, Section B.
permitted_information_reference(annex(viii, section(b, point(1)))).
permitted_information_reference(annex(viii, section(b, point(2)))).
permitted_information_reference(annex(viii, section(b, point(3)))).
permitted_information_reference(annex(viii, section(b, point(4)))).
permitted_information_reference(annex(viii, section(b, point(5)))).
permitted_information_reference(annex(viii, section(b, point(8)))).
permitted_information_reference(annex(viii, section(b, point(9)))).

% Annex VIII, points 1 to 3, are also covered above.
permitted_information_reference(annex(ix, point(1))).
permitted_information_reference(annex(ix, point(2))).
permitted_information_reference(annex(ix, point(3))).
permitted_information_reference(annex(ix, point(5))).

permitted_registration_information(information(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    permitted_information_reference(Reference),
    information_reference_applies(information(Registration, Reference)).

required_registration_information(information(Registration, Reference)) :-
    permitted_registration_information(information(Registration, Reference)).

prohibited_registration_information(information(Registration, Reference)) :-
    restricted_registration_applies(Registration),
    registration_information_applies(information(Registration, Reference)),
    \+ permitted_registration_information(information(Registration, Reference)).

eligible_access_actor_applies(Actor) :-
    commission(Actor).
eligible_access_actor_applies(Actor) :-
    national_authority(Actor),
    refers_to_article(Actor, article(74, provision(8))).

permitted_access(access(Actor, Section)) :-
    restricted_section(Section),
    refers_to_article(Section, article(49, provision(4))),
    eligible_access_actor_applies(Actor),
    respective_section_applies(access(Actor, Section)).

prohibited_access(access(Actor, Section)) :-
    access_request_applies(access(Actor, Section)),
    restricted_section(Section),
    refers_to_article(Section, article(49, provision(4))),
    \+ permitted_access(access(Actor, Section)).
