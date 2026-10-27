:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register/2,
    secure_non_public_section/1,
    eu_database/1,
    registration_includes/2,
    annex_viii_info/1,
    section_b_info/1,
    annex_ix_info/1,
    has_access_to/2,
    restricted_section/1,
    commission/1,
    national_authority/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Registration requirement for specific high-risk AI systems
must_register(System, secure_non_public_section(eu_database)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    registration_includes(System, annex_viii_info(PointsA)),
    registration_includes(System, section_b_info(PointsB)),
    registration_includes(System, annex_ix_info(PointsC)).

relevant_area(System) :-
    law_enforcement_area(System);
    migration_area(System);
    asylum_area(System);
    border_control_management_area(System).

% Information to be included in registration
registration_includes(System, annex_viii_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    findall(P, (between(1, 10, P), P \= 6, P \= 8, P \= 9), Points).

registration_includes(System, section_b_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    Points = [1, 2, 3, 4, 5, 8, 9].

registration_includes(System, annex_viii_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    Points = [1, 2, 3].

registration_includes(System, annex_ix_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    Points = [1, 2, 3, 5].

% Access control
has_access_to(Actor, restricted_section(eu_database)) :-
    commission(Actor);
    national_authority(Actor).

% Predicates for database and sections
secure_non_public_section(eu_database).
eu_database.
restricted_section(eu_database).

% Helper predicates
annex_iii_point(_System, _Point) :- fail.  % Input: to be provided by facts
annex_viii_info(_Points) :- fail.          % Input: to be provided by facts
section_b_info(_Points) :- fail.           % Input: to be provided by facts
annex_ix_info(_Points) :- fail.            % Input: to be provided by facts
