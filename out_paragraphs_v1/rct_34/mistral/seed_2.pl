:- module(remote_biometric_identification_use, [
    must_take_into_account/2,
    must_deploy_for_identity_confirmation/2,
    must_limit_scope/2,
    must_be_authorised/2,
    must_complete_impact_assessment/2,
    must_register_system/2,
    reference_database_appropriate/2,
    real_time_remote_biometric_identification_system/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    targeted_individual/1,
    fundamental_rights_impact_assessment/1,
    registered_in_database/2
]).

% Input predicates about the world the text does not settle
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic targeted_individual/1.
:- dynamic fundamental_rights_impact_assessment/1.
:- dynamic registered_in_database/2.

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_take_into_account(S, element(nature(situation_giving_rise_to_request))) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

must_take_into_account(S, element(consequences(use, rights_and_freedoms(all_persons_concerned)))) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

must_take_into_account(S, element(safeguards_and_conditions(provided_for_with_use))) :-
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S).

% Use of real-time remote biometric identification systems in publicly accessible spaces for law enforcement
% should be deployed only to confirm the specifically targeted individual's identity
must_deploy_for_identity_confirmation(S, confirm_identity(targeted_individual(I))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    targeted_individual(I).

% Should be limited to what is strictly necessary concerning period of time, geographic scope, and personal scope
must_limit_scope(S, strictly_necessary(period_of_time)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_limit_scope(S, strictly_necessary(geographic_scope)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_limit_scope(S, strictly_necessary(personal_scope)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

% Having regard in particular to evidence or indications regarding threats, victims or perpetrator
must_take_into_account(S, element(evidence_or_indications(threats))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_take_into_account(S, element(evidence_or_indications(victims))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

must_take_into_account(S, element(evidence_or_indications(perpetrator))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S).

% Use should be authorised only if the relevant law enforcement authority has completed
% a fundamental rights impact assessment
must_be_authorised(S, A) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    law_enforcement_authority(A),
    must_complete_impact_assessment(A, S).

% Unless provided otherwise in this Regulation, has registered the system in the database
must_be_authorised(S, A) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    law_enforcement_authority(A),
    must_register_system(A, S).

% The relevant law enforcement authority has completed a fundamental rights impact assessment
must_complete_impact_assessment(A, S) :-
    law_enforcement_authority(A),
    real_time_remote_biometric_identification_system(S),
    fundamental_rights_impact_assessment(completed_by(A, for_system(S))).

% Has registered the system in the database as set out in this Regulation
must_register_system(A, S) :-
    law_enforcement_authority(A),
    real_time_remote_biometric_identification_system(S),
    registered_in_database(S, database(set_out_in_regulation)).

% The reference database of persons should be appropriate for each use case in each situation
reference_database_appropriate(D, use_case(U, S)) :-
    reference_database_of_persons(D),
    exhaustively_listed_situation(S),
    narrowly_defined_situation(S),
    use_case(U).

% Input predicates for entities mentioned
:- dynamic law_enforcement_authority/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case/1.
