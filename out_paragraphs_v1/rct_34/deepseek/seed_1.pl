:- module(real_time_biometric_identification, [
    responsible_proportionate_use/1,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    deployed_to_confirm_identity/1,
    limited_to_strictly_necessary/1,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_or_indications/1,
    threats/1,
    victims/1,
    perpetrator/1,
    must_be_authorised/1,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    appropriate_reference_database/1,
    use_case/1,
    situation/1
]).

% Core principles for use of real-time remote biometric identification systems
responsible_proportionate_use(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    for_law_enforcement(System),
    must_take_into_account(System, elements).

must_take_into_account(System, elements) :-
    nature_of_situation(System),
    consequences_for_rights_and_freedoms(System),
    safeguards_and_conditions(System).

% Deployment constraints
deployed_to_confirm_identity(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    for_law_enforcement(System),
    specifically_targeted_individual(_Individual).

limited_to_strictly_necessary(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    for_law_enforcement(System),
    period_of_time(System),
    geographic_scope(System),
    personal_scope(System),
    evidence_or_indications(System).

evidence_or_indications(System) :-
    threats(System);
    victims(System);
    perpetrator(System).

% Authorisation requirements
must_be_authorised(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    completed_fundamental_rights_impact_assessment(law_enforcement_authority),
    \+ provided_otherwise_in_regulation(System),
    registered_in_database(System).

provided_otherwise_in_regulation(_System) :- fail.

% Reference database requirement
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    situation(Situation),
    appropriate_for(Database, UseCase, Situation).

% Input predicates (facts about the world not settled by this text)
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic used_in_publicly_accessible_space/1.
:- dynamic for_law_enforcement/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic nature_of_situation/1.
:- dynamic consequences_for_rights_and_freedoms/1.
:- dynamic safeguards_and_conditions/1.
:- dynamic period_of_time/1.
:- dynamic geographic_scope/1.
:- dynamic personal_scope/1.
:- dynamic threats/1.
:- dynamic victims/1.
:- dynamic perpetrator/1.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic registered_in_database/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
:- dynamic situation/1.
:- dynamic appropriate_for/3.
