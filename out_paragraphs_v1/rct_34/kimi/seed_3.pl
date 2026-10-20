:- module(real_time_biometric_identification, [
    objective_responsible_proportionate_use/1,
    required_element/2,
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_freedoms/1,
    safeguards_conditions/1,
    must_deploy/3,
    purpose_confirm_identity/2,
    limited_strictly_necessary/1,
    period_of_time/1,
    geographic_scope/1,
    personal_scope/1,
    evidence_indications/2,
    threat/1,
    victim/1,
    perpetrator/1,
    must_authorise/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_system_database/1,
    required_reference_database/1,
    appropriate_for_use_case/2,
    situation_exhaustively_listed/1,
    situation_narrowly_defined/1,
    publicly_accessible_space/1,
    law_enforcement_purpose/1,
    real_time_remote_biometric_identification_system/1,
    relevant_law_enforcement_authority/1,
    specifically_targeted_individual/1,
    use_case/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic situation_exhaustively_listed/1.
:- dynamic situation_narrowly_defined/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic threat/1.
:- dynamic victim/1.
:- dynamic perpetrator/1.

% Objectives and general requirements
objective_responsible_proportionate_use(S) :-
    real_time_remote_biometric_identification_system(S).

required_element(S, nature_of_situation(S)) :-
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S).

required_element(S, consequences_for_rights_freedoms(S)) :-
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S).

required_element(S, safeguards_conditions(S)) :-
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S).

must_take_into_account(S, Element) :-
    real_time_remote_biometric_identification_system(S),
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S),
    required_element(S, Element).

% Deployment restrictions for law enforcement in publicly accessible spaces
must_deploy(Authority, S, confirm_identity(Individual)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    relevant_law_enforcement_authority(Authority),
    specifically_targeted_individual(Individual).

limited_strictly_necessary(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    period_of_time(S),
    geographic_scope(S),
    personal_scope(S),
    evidence_indications(S, threat),
    evidence_indications(S, victim),
    evidence_indications(S, perpetrator).

% Authorisation requirements
must_authorise(Authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_system_database(S).

% Reference database requirements
required_reference_database(Database) :-
    real_time_remote_biometric_identification_system(S),
    situation_exhaustively_listed(S),
    situation_narrowly_defined(S),
    use_case(S).

appropriate_for_use_case(Database, S) :-
    required_reference_database(Database),
    use_case(S).
