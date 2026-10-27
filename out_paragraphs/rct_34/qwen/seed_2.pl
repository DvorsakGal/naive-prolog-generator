:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation_applies/1,
    consequences_for_rights_and_freedoms_applies/1,
    safeguards_and_conditions_provided/1,
    must_confirm_identity/2,
    limited_to_strictly_necessary/1,
    evidence_or_indications_regarding_threats_applies/1,
    evidence_or_indications_regarding_victims_applies/1,
    evidence_or_indications_regarding_perpetrator_applies/1,
    must_complete_fundamental_rights_impact_assessment/2,
    must_register_system/2,
    appropriate_reference_database/2
]).

% Input predicates for entities and situations not defined in this text
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic law_enforcement_authority/1.
:- dynamic exhaustively_listed_situation/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic database/1.
:- dynamic use_case/1.

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation_applies(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms_applies(Element).

must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_provided(Element).

nature_of_situation_applies(nature_of_situation_giving_rise_to_request).

consequences_for_rights_and_freedoms_applies(consequences_for_rights_and_freedoms_of_persons_concerned).

safeguards_and_conditions_provided(safeguards_and_conditions_for_use).

% Deployment constraints for law enforcement in publicly accessible spaces
must_confirm_identity(Authority, Individual) :-
    law_enforcement_authority(Authority),
    specifically_targeted_individual(Individual),
    uses_in_publicly_accessible_space_for_law_enforcement(Authority).

uses_in_publicly_accessible_space_for_law_enforcement(Authority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space(Space),
    uses_system_in_space(Authority, System, Space).

% Strict necessity limitation
limited_to_strictly_necessary(use_parameters(Period, GeographicScope, PersonalScope)) :-
    evidence_or_indications_regarding_threats_applies(_Evidence),
    evidence_or_indications_regarding_victims_applies(_Evidence),
    evidence_or_indications_regarding_perpetrator_applies(_Evidence).

evidence_or_indications_regarding_threats_applies(evidence_or_indications(threats)).

evidence_or_indications_regarding_victims_applies(evidence_or_indications(victims)).

evidence_or_indications_regarding_perpetrator_applies(evidence_or_indications(perpetrator)).

% Authorisation conditions
must_complete_fundamental_rights_impact_assessment(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    uses_in_publicly_accessible_space_for_law_enforcement(Authority).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(System),
    database(Database),
    uses_in_publicly_accessible_space_for_law_enforcement(Authority),
    \+ exempt_from_registration(System).

exempt_from_registration(System) :-
    provided_otherwise_in_regulation(System).

% Reference database appropriateness
appropriate_reference_database(Database, UseCase) :-
    database(Database),
    use_case(UseCase),
    exhaustively_listed_situation(Situation),
    reference_database_for_situation(Database, Situation, UseCase).
