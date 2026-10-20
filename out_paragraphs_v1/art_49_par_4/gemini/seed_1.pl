:- module(high_risk_ai_system_registration, [
    high_risk(1),
    high_risk_area(1),
    sensitive_high_risk_ai_system/1,
    registration_applies/1,
    required_secure_non_public_registration/1,
    permitted_registration_information/2,
    prohibited_registration_information/2,
    permitted_database_access/2
]).

:- dynamic annex_iii_point/2.
:- dynamic system_area/2.
:- dynamic registration_subject/1.
:- dynamic registration_type/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.

high_risk(System) :-
    annex_iii_point(System, point(1)).
high_risk(System) :-
    annex_iii_point(System, point(6)).
high_risk(System) :-
    annex_iii_point(System, point(7)).

high_risk_area(System) :-
    system_area(System, law_enforcement).
high_risk_area(System) :-
    system_area(System, migration).
high_risk_area(System) :-
    system_area(System, asylum).
high_risk_area(System) :-
    system_area(System, border_control_management).

sensitive_high_risk_ai_system(System) :-
    high_risk(System),
    high_risk_area(System).

registration_applies(Registration) :-
    registration_type(Registration, article_49_1).
registration_applies(Registration) :-
    registration_type(Registration, article_49_2).
registration_applies(Registration) :-
    registration_type(Registration, article_49_3).

required_secure_non_public_registration(registration(System, Registration)) :-
    sensitive_high_risk_ai_system(System),
    registration_subject(registration(System, Registration)),
    registration_applies(Registration).

% Information permitted under point (a): Annex VIII points 1 to 10 except 6, 8, 9
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(1))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(2))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(3))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(4))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(5))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(7))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(10))) :-
    sensitive_high_risk_ai_system(System).

% Information permitted under point (b): Annex VIII Section B points 1 to 5, 8, 9
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(1))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(2))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(3))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(4))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(5))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(8))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(9))) :-
    sensitive_high_risk_ai_system(System).

% Information permitted under point (c): Annex VIII points 1 to 3
% (already covered under (a), included for fidelity to point (c))

% Information permitted under point (d): Annex IX points 1, 2, 3 and 5
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(1))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(2))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(3))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(5))) :-
    sensitive_high_risk_ai_system(System).

prohibited_registration_information(registration(System, Registration), Info) :-
    required_secure_non_public_registration(registration(System, Registration)),
    \+ permitted_registration_information(registration(System, Registration), Info).

permitted_database_access(Actor, restricted_section(database_article_71)) :-
    commission(Actor).
permitted_database_access(Actor, restricted_section(database_article_71)) :-
    national_authority(Actor),
    article_74_8_authority(Actor).
