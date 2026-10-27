:- module(responsible_use_biometric_systems, [
    responsible_use(S),
    proportionate_use(S),
    element_taken_into_account(S, nature_of_situation),
    element_taken_into_account(S, consequences_for_rights_and_freedoms),
    element_taken_into_account(S, safeguards_and_conditions),
    law_enforcement_purpose(S, confirm_identity),
    strictly_necessary_period(S),
    strictly_necessary_geographic_scope(S),
    strictly_necessary_personal_scope(S),
    evidence_regarding_threats(S),
    evidence_regarding_victims(S),
    evidence_regarding_perpetrator(S),
    authorised_use(S),
    fundamental_rights_impact_assessment_completed(S),
    system_registered_in_database(S),
    reference_database_appropriate(S, use_case)
]).

% Systems must be used in a responsible and proportionate manner
responsible_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

proportionate_use(S) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% In each situation, certain elements should be taken into account
element_taken_into_account(S, nature_of_situation) :-
    responsible_use(S).

element_taken_into_account(S, consequences_for_rights_and_freedoms) :-
    responsible_use(S),
    concerns_all_persons(S).

element_taken_into_account(S, safeguards_and_conditions) :-
    responsible_use(S).

% Real-time remote biometric identification in publicly accessible spaces for law enforcement
real_time_remote_biometric_identification(S) :-
    publicly_accessible_space(S),
    law_enforcement_purpose(S, _).

% Deployment purpose: only to confirm the specifically targeted individual's identity
law_enforcement_purpose(S, confirm_identity) :-
    real_time_remote_biometric_identification(S),
    specifically_targeted_individual(S, _I).

% Limited to what is strictly necessary concerning period, geographic and personal scope
strictly_necessary_period(S) :-
    real_time_remote_biometric_identification(S).

strictly_necessary_geographic_scope(S) :-
    real_time_remote_biometric_identification(S).

strictly_necessary_personal_scope(S) :-
    real_time_remote_biometric_identification(S).

% Having regard to evidence or indications regarding threats, victims or perpetrator
evidence_regarding_threats(S) :-
    real_time_remote_biometric_identification(S).

evidence_regarding_victims(S) :-
    real_time_remote_biometric_identification(S).

evidence_regarding_perpetrator(S) :-
    real_time_remote_biometric_identification(S).

% Authorisation conditions
authorised_use(S) :-
    real_time_remote_biometric_identification(S),
    relevant_law_enforcement_authority(S, _A),
    fundamental_rights_impact_assessment_completed(S),
    system_registered_in_database(S).

fundamental_rights_impact_assessment_completed(S) :-
    real_time_remote_biometric_identification(S),
    relevant_law_enforcement_authority(S, _A).

system_registered_in_database(S) :-
    real_time_remote_biometric_identification(S),
    relevant_law_enforcement_authority(S, _A),
    \+ provided_otherwise_in_regulation(S).

% Reference database appropriate for each use case
reference_database_appropriate(S, use_case) :-
    real_time_remote_biometric_identification(S),
    exhaustively_listed_situation(S).

% Input predicates: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic publicly_accessible_space/1.
:- dynamic specifically_targeted_individual/2.
:- dynamic concerns_all_persons/1.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic provided_otherwise_in_regulation/1.
