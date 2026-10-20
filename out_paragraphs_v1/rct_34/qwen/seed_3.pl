:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation/1,
    consequences_for_rights_and_freedoms/1,
    safeguards_and_conditions_provided/1,
    must_deploy_only_to_confirm_identity/2,
    must_limit_use_to_strictly_necessary/2,
    evidence_or_indications_regarding_threats/1,
    evidence_or_indications_regarding_victims/1,
    evidence_or_indications_regarding_perpetrator/1,
    permitted_use_in_publicly_accessible_spaces/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system_in_database/1,
    reference_database_appropriate_for_use_case/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_authority/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic database/1.
:- dynamic use_case/1.

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation(nature_of_situation_giving_rise_to_request).

consequences_for_rights_and_freedoms(consequences_for_rights_and_freedoms_of_all_persons_concerned).

safeguards_and_conditions_provided(safeguards_and_conditions_provided_with_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_deploy_only_to_confirm_identity(System, TargetedIndividual) :-
    real_time_remote_biometric_identification_system(System),
    law_enforcement_purpose_applies(System),
    used_in_publicly_accessible_space(System).

law_enforcement_purpose_applies(System) :-
    real_time_remote_biometric_identification_system(System).

used_in_publicly_accessible_space(System) :-
    real_time_remote_biometric_identification_system(System).

% Limitation to what is strictly necessary
must_limit_use_to_strictly_necessary(System, Scope) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    strictly_necessary_scope(Scope).

strictly_necessary_scope(period_of_time).
strictly_necessary_scope(geographic_scope).
strictly_necessary_scope(personal_scope).

% Factors regarding strict necessity
evidence_or_indications_regarding_threats(evidence_or_indications(threats)).
evidence_or_indications_regarding_victims(evidence_or_indications(victims)).
evidence_or_indications_regarding_perpetrator(evidence_or_indications(perpetrator)).

% Authorisation conditions
permitted_use_in_publicly_accessible_spaces(System) :-
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    relevant_law_enforcement_authority(Authority, System),
    must_complete_fundamental_rights_impact_assessment(Authority),
    must_register_system_in_database(System).

relevant_law_enforcement_authority(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System).

must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority).

must_register_system_in_database(System) :-
    real_time_remote_biometric_identification_system(System),
    \+ registration_exemption_applies(System).

registration_exemption_applies(_System) :-
    fail.

% Reference database appropriateness
reference_database_appropriate_for_use_case(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation_applies(UseCase).

exhaustively_listed_situation_applies(UseCase) :-
    exhaustively_listed_situation(UseCase).
