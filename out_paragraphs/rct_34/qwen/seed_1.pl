:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions_provided/1,
    must_deploy_only_to_confirm_identity/2,
    must_limit_use/2,
    evidence_or_indications_regarding_threats/1,
    evidence_or_indications_regarding_victims/1,
    evidence_or_indications_regarding_perpetrator/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system/2,
    reference_database_appropriate/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic law_enforcement_authority/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic narrowly_defined_situation/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic database/1.
:- dynamic regulation/1.
:- dynamic use_case/1.

% Elements to be taken into account in listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    nature_of_situation(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    consequences_for_rights_and_freedoms(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    narrowly_defined_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation(nature_of_situation_giving_rise_to_request).

consequences_for_rights_and_freedoms(consequences_for_rights_and_freedoms_of_all_persons_concerned).

safeguards_and_conditions_provided(safeguards_and_conditions_provided_with_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_deploy_only_to_confirm_identity(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    specifically_targeted_individual(Individual),
    confirm_identity(Individual).

confirm_identity(Individual) :-
    specifically_targeted_individual(Individual).

% Limitation of use based on necessity and evidence
must_limit_use(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    strictly_necessary_period_of_time,
    strictly_necessary_geographic_scope,
    strictly_necessary_personal_scope,
    evidence_or_indications_regarding_threats(_Evidence).

must_limit_use(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    strictly_necessary_period_of_time,
    strictly_necessary_geographic_scope,
    strictly_necessary_personal_scope,
    evidence_or_indications_regarding_victims(_Evidence).

must_limit_use(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    strictly_necessary_period_of_time,
    strictly_necessary_geographic_scope,
    strictly_necessary_personal_scope,
    evidence_or_indications_regarding_perpetrator(_Evidence).

strictly_necessary_period_of_time.
strictly_necessary_geographic_scope.
strictly_necessary_personal_scope.

evidence_or_indications_regarding_threats(evidence_or_indications(threats)).
evidence_or_indications_regarding_victims(evidence_or_indications(victims)).
evidence_or_indications_regarding_perpetrator(evidence_or_indications(perpetrator)).

% Authorisation conditions
must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(_System),
    publicly_accessible_space(_Space).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(_Space),
    database(Database),
    regulation(Regulation),
    \+ provided_otherwise_in_regulation(Regulation).

provided_otherwise_in_regulation(Regulation) :-
    regulation(Regulation).

% Reference database appropriateness
reference_database_appropriate(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation(_Situation).
