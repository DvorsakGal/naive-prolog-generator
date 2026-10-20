:- module(real_time_biometric_identification, [
    responsible_use/1,
    proportionate_use/1,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_of_use/1,
    safeguards_and_conditions/1,
    must_deploy_to_confirm/2,
    must_be_limited/2,
    strictly_necessary/2,
    must_be_authorised/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_system/1,
    appropriate_reference_database/1
]).

% Elements to take into account
must_take_into_account(System, nature_of_situation(Situation)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation).

must_take_into_account(System, consequences_of_use(Consequences)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    exhaustively_listed_situation(_Situation),
    narrowly_defined_situation(_Situation),
    consequences_for_rights_and_freedoms(Consequences).

must_take_into_account(System, safeguards_and_conditions(Safeguards)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    exhaustively_listed_situation(_Situation),
    narrowly_defined_situation(_Situation).

% Deployment purpose and limits
must_deploy_to_confirm(System, identity_of_targeted_individual(Individual)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    specifically_targeted_individual(Individual).

must_be_limited(System, period_of_time(Period)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    strictly_necessary(Period, evidence_or_indications(Threats, Victims, Perpetrator)).

must_be_limited(System, geographic_scope(Scope)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    strictly_necessary(Scope, evidence_or_indications(Threats, Victims, Perpetrator)).

must_be_limited(System, personal_scope(Scope)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    law_enforcement_purpose(System),
    strictly_necessary(Scope, evidence_or_indications(Threats, Victims, Perpetrator)).

% Authorisation conditions
must_be_authorised(System, law_enforcement_authority(Authority)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_system(System).

must_be_authorised(System, law_enforcement_authority(Authority)) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(System),
    completed_fundamental_rights_impact_assessment(Authority),
    provided_otherwise_in_regulation(System).

% Reference database
appropriate_reference_database(Database) :-
    reference_database_of_persons(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    appropriate_for(Database, UseCase, Situation).

% Input predicates
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic consequences_for_rights_and_freedoms/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic evidence_or_indications/3.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic registered_system/1.
:- dynamic provided_otherwise_in_regulation/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
:- dynamic appropriate_for/3.
