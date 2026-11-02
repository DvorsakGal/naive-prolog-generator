:- module(real_time_biometric_identification_safeguards, [
    must_take_into_account/2,
    permitted_deployment/1,
    must_limit/2,
    permitted_real_time_remote_biometric_identification/1,
    registration_exempt_applies/1,
    required_appropriate_reference_database/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic used_in_publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic listed_situation/2.
:- dynamic deploys/2.
:- dynamic deployment/2.
:- dynamic specifically_targeted/1.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic regulation_provides_otherwise/1.
:- dynamic reference_database/2.

% Elements to be taken into account in each listed situation
must_take_into_account(Authority, nature_of_situation(Situation)) :-
    deploys(Authority, S),
    listed_situation(S, Situation).
must_take_into_account(Authority, consequences_for_rights_and_freedoms(S)) :-
    deploys(Authority, S),
    listed_situation(S, _Situation).
must_take_into_account(Authority, safeguards_and_conditions(S)) :-
    deploys(Authority, S),
    listed_situation(S, _Situation).

% Deployment only to confirm identity of specifically targeted individual
permitted_deployment(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    law_enforcement_purpose(S),
    deployment(S, confirm_identity(P)),
    specifically_targeted(P).

% Limitation to what is strictly necessary
must_limit(Authority, strictly_necessary(period_of_time(S))) :-
    deploys(Authority, S),
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S).
must_limit(Authority, strictly_necessary(geographic_scope(S))) :-
    deploys(Authority, S),
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S).
must_limit(Authority, strictly_necessary(personal_scope(S))) :-
    deploys(Authority, S),
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S).

% Authorisation conditions
permitted_real_time_remote_biometric_identification(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    deploys(Authority, S),
    completed_fundamental_rights_impact_assessment(Authority, S),
    registered_in_database(Authority, S).
permitted_real_time_remote_biometric_identification(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    deploys(Authority, S),
    completed_fundamental_rights_impact_assessment(Authority, S),
    registration_exempt_applies(S).

registration_exempt_applies(S) :-
    regulation_provides_otherwise(S).

% Reference database appropriateness
required_appropriate_reference_database(S) :-
    real_time_remote_biometric_identification_system(S),
    listed_situation(S, _Situation),
    reference_database(S, _Database).
