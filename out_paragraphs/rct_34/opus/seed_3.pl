:- module(real_time_biometric_identification_use, [
    must_take_into_account/2,
    permitted_deployment/1,
    must_limit/2,
    permitted_real_time_remote_biometric_identification/1,
    required_appropriate_reference_database/1,
    exempt_registration/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic used_in_publicly_accessible_space/1.
:- dynamic used_for_law_enforcement/1.
:- dynamic listed_situation/2.
:- dynamic deployment/2.
:- dynamic specifically_targeted/1.
:- dynamic law_enforcement_authority/1.
:- dynamic uses_system/2.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic registration_otherwise_provided/1.
:- dynamic reference_database/2.

% Law enforcement use in publicly accessible spaces
law_enforcement_use(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    used_for_law_enforcement(S).

% Elements to take into account in each listed situation
must_take_into_account(Authority, nature_of_situation(Situation)) :-
    uses_system(Authority, S),
    listed_situation(S, Situation).
must_take_into_account(Authority, consequences_for_rights_and_freedoms(S)) :-
    uses_system(Authority, S),
    listed_situation(S, _Situation).
must_take_into_account(Authority, safeguards_and_conditions(S)) :-
    uses_system(Authority, S),
    listed_situation(S, _Situation).

% Deployment only to confirm identity of specifically targeted individual
permitted_deployment(deployment(S, confirm_identity(P))) :-
    law_enforcement_use(S),
    deployment(S, confirm_identity(P)),
    specifically_targeted(P).

% Limitation to what is strictly necessary
must_limit(Authority, strictly_necessary(S, period_of_time)) :-
    uses_system(Authority, S),
    law_enforcement_use(S).
must_limit(Authority, strictly_necessary(S, geographic_scope)) :-
    uses_system(Authority, S),
    law_enforcement_use(S).
must_limit(Authority, strictly_necessary(S, personal_scope)) :-
    uses_system(Authority, S),
    law_enforcement_use(S).

% Registration exemption where the Regulation provides otherwise
exempt_registration(S) :-
    registration_otherwise_provided(S).

registration_satisfied(Authority, S) :-
    registered_in_database(Authority, S).
registration_satisfied(_Authority, S) :-
    exempt_registration(S).

% Authorisation conditions
permitted_real_time_remote_biometric_identification(S) :-
    law_enforcement_use(S),
    law_enforcement_authority(Authority),
    uses_system(Authority, S),
    completed_fundamental_rights_impact_assessment(Authority, S),
    registration_satisfied(Authority, S).

% Reference database appropriate for each use case
required_appropriate_reference_database(reference_database(S, Situation)) :-
    law_enforcement_use(S),
    listed_situation(S, Situation),
    reference_database(S, Situation).
