:- module(real_time_biometric_identification, [
    responsible_and_proportionate_use/1,
    must_take_into_account/2,
    deployed_to_confirm_identity/1,
    limited_to_strictly_necessary/1,
    authorised_use/1,
    completed_fundamental_rights_impact_assessment/1,
    registered_system_in_database/1,
    appropriate_reference_database/2
]).

:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic situation/1.

% Clause 1: Responsible and proportionate use
responsible_and_proportionate_use(System) :-
    real_time_remote_biometric_identification_system(System),
    must_take_into_account(System, nature_of_situation),
    must_take_into_account(System, consequences_for_rights_and_freedoms),
    must_take_into_account(System, safeguards_and_conditions).

% Clause 2: Deployment constraints
deployed_to_confirm_identity(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    specifically_targeted_individual(Individual),
    must_confirm_identity(System, Individual).

limited_to_strictly_necessary(System) :-
    real_time_remote_biometric_identification_system(System),
    must_limit_period_of_time(System),
    must_limit_geographic_scope(System),
    must_limit_personal_scope(System),
    must_have_regard_to(System, evidence_or_indications(threats)),
    must_have_regard_to(System, evidence_or_indications(victims)),
    must_have_regard_to(System, evidence_or_indications(perpetrator)).

% Clause 3: Authorisation conditions
authorised_use(System) :-
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_system_in_database(System).

registered_system_in_database(System) :-
    real_time_remote_biometric_identification_system(System),
    \+ exempt_from_registration(System).

% Clause 4: Reference database appropriateness
appropriate_reference_database(Database, UseCase) :-
    reference_database(Database),
    use_case(UseCase),
    situation(Situation),
    must_be_appropriate_for(Database, UseCase, Situation).

% Helper predicates
must_confirm_identity(System, Individual) :-
    real_time_remote_biometric_identification_system(System),
    specifically_targeted_individual(Individual).

must_limit_period_of_time(System) :-
    real_time_remote_biometric_identification_system(System).

must_limit_geographic_scope(System) :-
    real_time_remote_biometric_identification_system(System).

must_limit_personal_scope(System) :-
    real_time_remote_biometric_identification_system(System).

must_have_regard_to(System, Evidence) :-
    real_time_remote_biometric_identification_system(System).

must_be_appropriate_for(Database, UseCase, Situation) :-
    reference_database(Database),
    use_case(UseCase),
    situation(Situation).
