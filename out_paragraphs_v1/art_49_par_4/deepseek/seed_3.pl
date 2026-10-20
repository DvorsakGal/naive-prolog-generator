:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_applies/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    annex_viii_information/1,
    section_b_annex_viii_information/1,
    annex_ix_information/1,
    must_have_access_to/2,
    commission/1,
    national_authority/1,
    restricted_section/1
]).

% High-risk AI systems covered by this registration requirement
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Areas where the system is deployed
area(S, law_enforcement).
area(S, migration).
area(S, asylum).
area(S, border_control_management).

% Registration applies to systems in these areas
registration_applies(S) :-
    high_risk_ai_system(S),
    area(S, _).

% Registration must be in a secure non-public section of the EU database
must_register_in(S, Section) :-
    registration_applies(S),
    secure_non_public_section(Section),
    eu_database(Database),
    section_of(Section, Database).

% The registration must include only the applicable information
must_include_information(S, Info) :-
    registration_applies(S),
    annex_viii_information(Info).
must_include_information(S, Info) :-
    registration_applies(S),
    section_b_annex_viii_information(Info).
must_include_information(S, Info) :-
    registration_applies(S),
    annex_ix_information(Info).

% Annex VIII points 1 to 10, with exceptions
annex_viii_information(point(1)).
annex_viii_information(point(2)).
annex_viii_information(point(3)).
annex_viii_information(point(4)).
annex_viii_information(point(5)).
annex_viii_information(point(7)).
annex_viii_information(point(10)).

% Section B of Annex VIII, points 1 to 5, and points 8 and 9
section_b_annex_viii_information(section_b_point(1)).
section_b_annex_viii_information(section_b_point(2)).
section_b_annex_viii_information(section_b_point(3)).
section_b_annex_viii_information(section_b_point(4)).
section_b_annex_viii_information(section_b_point(5)).
section_b_annex_viii_information(section_b_point(8)).
section_b_annex_viii_information(section_b_point(9)).

% Annex IX points 1, 2, 3 and 5
annex_ix_information(point(1)).
annex_ix_information(point(2)).
annex_ix_information(point(3)).
annex_ix_information(point(5)).

% Access to restricted sections
must_have_access_to(Actor, Section) :-
    restricted_section(Section),
    (   commission(Actor)
    ;   national_authority(Actor)
    ).

% Declare input predicates
:- dynamic annex_iii_point/2.
:- dynamic section_of/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic restricted_section/1.
