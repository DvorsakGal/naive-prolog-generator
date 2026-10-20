:- module(remote_biometric_identification_use, [
    responsible_use_applies/1,
    proportionate_use_applies/1,
    must_take_into_account/2,
    must_consider_nature_of_situation/1,
    must_consider_consequences_for_rights_and_freedoms/1,
    must_consider_safeguards_and_conditions/1,
    deployment_purpose/2,
    must_confirm_identity/2,
    must_limit_to_strictly_necessary/1,
    must_limit_period_of_time/1,
    must_limit_geographic_scope/1,
    must_limit_personal_scope/1,
    must_have_regard_to_evidence/1,
    must_have_regard_to_threats/1,
    must_have_regard_to_victims/1,
    must_have_regard_to_perpetrator/1,
    authorised_deployment/2,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system_in_database/1,
    reference_database_appropriate/2,
    exhaustively_listed_situation/1,
    narrowly_defined_situation/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    real_time_remote_biometric_identification_system/1
]).

% Input predicates: facts about the world the text does not settle
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic real_time_remote_biometric_identification_system/1.

% Systems must be used in a responsible and proportionate manner
responsible_use_applies(S) :-
    real_time_remote_biometric_identification_system(S).

proportionate_use_applies(S) :-
    real_time_remote_biometric_identification_system(S).

% In each exhaustively listed and narrowly defined situation, certain elements should be taken into account
must_take_into_account(S, element) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Sit),
    narrowly_defined_situation(Sit),
    situation_applies(S, Sit).

must_consider_nature_of_situation(S) :-
    must_take_into_account(S, element).

must_consider_consequences_for_rights_and_freedoms(S) :-
    must_take_into_account(S, element),
    concerns_all_persons_concerned(S).

must_consider_safeguards_and_conditions(S) :-
    must_take_into_account(S, element).

% Deployment for law enforcement: only to confirm the specifically targeted individual's identity
deployment_purpose(S, confirm_identity(P)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    specifically_targeted_individual(P),
    deployment(S, Space, Purpose).

must_confirm_identity(S, P) :-
    deployment_purpose(S, confirm_identity(P)).

% Deployment must be limited to what is strictly necessary
must_limit_to_strictly_necessary(S) :-
    deployment_purpose(S, confirm_identity(_P)).

must_limit_period_of_time(S) :-
    must_limit_to_strictly_necessary(S).

must_limit_geographic_scope(S) :-
    must_limit_to_strictly_necessary(S).

must_limit_personal_scope(S) :-
    must_limit_to_strictly_necessary(S).

% Having regard to evidence or indications regarding threats, victims or perpetrator
must_have_regard_to_evidence(S) :-
    must_limit_to_strictly_necessary(S).

must_have_regard_to_threats(S) :-
    must_have_regard_to_evidence(S).

must_have_regard_to_victims(S) :-
    must_have_regard_to_evidence(S).

must_have_regard_to_perpetrator(S) :-
    must_have_regard_to_evidence(S).

% Authorisation conditions
authorised_deployment(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_authority(Authority),
    must_complete_fundamental_rights_impact_assessment(Authority),
    must_register_system_in_database(S).

must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    authorised_deployment(_S, Authority).

must_register_system_in_database(S) :-
    real_time_remote_biometric_identification_system(S),
    authorised_deployment(S, _Authority).

% Reference database must be appropriate for each use case in each situation
reference_database_appropriate(Database, UseCase) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Sit),
    narrowly_defined_situation(Sit),
    situation_applies(S, Sit),
    use_case(UseCase, Sit),
    reference_database(Database, S).

% Helper predicates
situation_applies(S, Sit) :-
    exhaustively_listed_situation(Sit),
    narrowly_defined_situation(Sit).

concerns_all_persons_concerned(S) :-
    real_time_remote_biometric_identification_system(S).

specifically_targeted_individual(P) :-
    individual(P).

deployment(S, Space, Purpose) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

use_case(UseCase, Sit) :-
    exhaustively_listed_situation(Sit).

reference_database(Database, S) :-
    real_time_remote_biometric_identification_system(S).

law_enforcement_authority(Authority) :-
    authority(Authority).

individual(P) :-
    person(P).

person(_P).

authority(_A).
