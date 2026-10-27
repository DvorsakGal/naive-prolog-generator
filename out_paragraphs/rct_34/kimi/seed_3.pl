:- module(remote_biometric_identification_law_enforcement, [
    responsible_use_required/1,
    proportionate_use_required/1,
    must_take_into_account/2,
    situation_giving_rise/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions/1,
    must_deploy/2,
    purpose_confirm_identity/2,
    strictly_necessary_concerning_period/1,
    strictly_necessary_concerning_geographic_scope/1,
    strictly_necessary_concerning_personal_scope/1,
    must_have_regard_to/2,
    evidence_or_indications_threats/1,
    evidence_or_indications_victims/1,
    evidence_or_indications_perpetrator/1,
    must_be_authorised/2,
    completed_fundamental_rights_impact_assessment/1,
    registered_in_database/1,
    appropriate_reference_database/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic relevant_law_enforcement_authority/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic use_case/1.
:- dynamic situation_mentioned_above/1.

% General requirements for responsible and proportionate use
responsible_use_required(S) :-
    real_time_remote_biometric_identification_system(S).

proportionate_use_required(S) :-
    real_time_remote_biometric_identification_system(S).

% Elements to be taken into account in exhaustively listed and narrowly defined situations
must_take_into_account(S, nature_of_situation(Situation)) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation).

must_take_into_account(S, consequences_for_rights_and_freedoms(Persons)) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    person_concerned(Persons).

must_take_into_account(S, safeguards_and_conditions(S)) :-
    real_time_remote_biometric_identification_system(S),
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation).

% Deployment restrictions for law enforcement in publicly accessible spaces
must_deploy(Authority, deployment(S, confirm_identity(Individual))) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    relevant_law_enforcement_authority(Authority),
    specifically_targeted_individual(Individual).

strictly_necessary_concerning_period(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

strictly_necessary_concerning_geographic_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

strictly_necessary_concerning_personal_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

must_have_regard_to(S, evidence_or_indications_threats(Evidence)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

must_have_regard_to(S, evidence_or_indications_victims(Evidence)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

must_have_regard_to(S, evidence_or_indications_perpetrator(Evidence)) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose).

% Authorisation conditions
must_be_authorised(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_purpose(Purpose),
    relevant_law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority),
    registered_in_database(S).

% Registration requirement with exception clause
registered_in_database(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ provided_otherwise_in_regulation(S).

:- dynamic provided_otherwise_in_regulation/1.

% Reference database requirement
appropriate_reference_database(Database) :-
    use_case(UseCase),
    situation_mentioned_above(Situation),
    database_for_use_case(Database, UseCase),
    database_for_situation(Database, Situation).

:- dynamic database_for_use_case/2.
:- dynamic database_for_situation/2.
:- dynamic person_concerned/1.
