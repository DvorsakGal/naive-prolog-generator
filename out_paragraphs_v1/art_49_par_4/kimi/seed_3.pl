:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_required/1,
    secure_non_public_section/1,
    eu_database/1,
    commission/1,
    national_authority/1,
    has_access/2,
    restricted_section/1,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    included_information/2,
    exception_applies/1,
    article_49_1_applies/1,
    article_49_2_applies/1,
    article_49_3_applies/1,
    article_49_4_applies/1,
    article_71_database/1,
    article_74_8_authority/1,
    annex_iii_point/1,
    point_1_applies/1,
    point_6_applies/1,
    point_7_applies/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic eu_database/1.
:- dynamic article_49_1_applies/1.
:- dynamic article_49_2_applies/1.
:- dynamic article_49_3_applies/1.
:- dynamic article_49_4_applies/1.
:- dynamic article_71_database/1.
:- dynamic article_74_8_authority/1.
:- dynamic annex_iii_point/1.

% Domain definitions for areas
area_law_enforcement(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).

area_migration(S) :-
    high_risk_ai_system(S),
    migration_area(S).

area_asylum(S) :-
    high_risk_ai_system(S),
    asylum_area(S).

area_border_control_management(S) :-
    high_risk_ai_system(S),
    border_control_management_area(S).

% Relevant Annex III points
point_1_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, 1).

point_6_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, 6).

point_7_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, 7).

relevant_annex_iii_point(S) :-
    point_1_applies(S).

relevant_annex_iii_point(S) :-
    point_6_applies(S).

relevant_annex_iii_point(S) :-
    point_7_applies(S).

% Covered systems: high-risk AI in specified areas with relevant Annex III points
covered_system(S) :-
    high_risk_ai_system(S),
    relevant_annex_iii_point(S),
    (area_law_enforcement(S); area_migration(S); area_asylum(S); area_border_control_management(S)).

% Registration requirement
registration_required(S) :-
    covered_system(S),
    (article_49_1_applies(S); article_49_2_applies(S); article_49_3_applies(S)).

% Secure non-public section requirement
secure_non_public_section(S) :-
    registration_required(S),
    article_71_database(Database),
    eu_database(Database).

% Information to be included - Annex VIII points (1) to (10) with exceptions
annex_viii_point(S, Point) :-
    covered_system(S),
    between(1, 10, Point),
    \+ exception_applies(Point).

% Exceptions for points 6, 8, 9
exception_applies(6).
exception_applies(8).
exception_applies(9).

% Information to be included - Section B points
annex_viii_section_b_point(S, Point) :-
    covered_system(S),
    (between(1, 5, Point); member(Point, [8, 9])).

% Information to be included - Annex VIII points (1) to (3)
annex_viii_limited_point(S, Point) :-
    covered_system(S),
    between(1, 3, Point).

% Information to be included - Annex IX points
annex_ix_point(S, Point) :-
    covered_system(S),
    member(Point, [1, 2, 3, 5]).

% Included information predicates for different applicable articles
included_information(S, annex_viii_points(1, 10, except([6, 8, 9]))) :-
    article_49_1_applies(S),
    covered_system(S).

included_information(S, annex_viii_section_b([1, 2, 3, 4, 5, 8, 9])) :-
    article_49_2_applies(S),
    covered_system(S).

included_information(S, annex_viii_points(1, 3)) :-
    article_49_3_applies(S),
    covered_system(S).

included_information(S, annex_ix_points([1, 2, 3, 5])) :-
    article_49_4_applies(S),
    covered_system(S).

% Restricted sections
restricted_section(S) :-
    article_49_4_applies(S),
    covered_system(S).

% Access control - only Commission and national authorities under Article 74(8)
has_access(Commission, Section) :-
    commission(Commission),
    restricted_section(Section).

has_access(Authority, Section) :-
    national_authority(Authority),
    article_74_8_authority(Authority),
    restricted_section(Section).

% No other access permitted
access_permitted(Actor, Section) :-
    has_access(Actor, Section).

prohibited_access(Actor, Section) :-
    restricted_section(Section),
    \+ has_access(Actor, Section).

% Helper predicate
between(Low, High, Value) :-
    Low =< Value,
    Value =< High.

member(Element, [Element|_]).
member(Element, [_|Tail]) :-
    member(Element, Tail).
