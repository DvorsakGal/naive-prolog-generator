:- module(real_time_remote_biometric_identification, [
    must_take_into_account/2,
    nature_of_situation_applies/1,
    consequences_for_rights_and_freedoms_applies/1,
    safeguards_and_conditions_apply/1,
    must_confirm_identity/2,
    limited_to_strictly_necessary/1,
    evidence_or_indications_apply/1,
    must_complete_fundamental_rights_impact_assessment/1,
    must_register_system/2,
    reference_database_appropriate/2
]).

% Elements to be taken into account in exhaustively listed situations
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    nature_of_situation_applies(Element).
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    consequences_for_rights_and_freedoms_applies(Element).
must_take_into_account(Situation, Element) :-
    exhaustively_listed_situation(Situation),
    safeguards_and_conditions_apply(Element).

% Conditions for deployment of real-time remote biometric identification
must_confirm_identity(Authority, Individual) :-
    law_enforcement_authority(Authority),
    uses_real_time_remote_biometric_identification_in_public_space(Authority),
    specifically_targeted_individual(Individual).

limited_to_strictly_necessary(Deployment) :-
    uses_real_time_remote_biometric_identification_in_public_space(_Authority),
    period_of_time_limited(Deployment),
    geographic_scope_limited(Deployment),
    personal_scope_limited(Deployment),
    evidence_or_indications_apply(Deployment).

% Authorisation requirements
must_complete_fundamental_rights_impact_assessment(Authority) :-
    law_enforcement_authority(Authority),
    uses_real_time_remote_biometric_identification_in_public_space(Authority).

must_register_system(Authority, System) :-
    law_enforcement_authority(Authority),
    uses_real_time_remote_biometric_identification_in_public_space(Authority),
    real_time_remote_biometric_identification_system(System),
    \+ exempt_from_registration(System).

% Reference database appropriateness
reference_database_appropriate(Database, UseCase) :-
    reference_database_of_persons(Database),
    use_case_in_exhaustively_listed_situation(UseCase).

% Input predicates not defined in this text
:- dynamic exhaustively_listed_situation/1.
:- dynamic law_enforcement_authority/1.
:- dynamic uses_real_time_remote_biometric_identification_in_public_space/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic exempt_from_registration/1.
:- dynamic reference_database_of_persons/1.
:- dynamic use_case_in_exhaustively_listed_situation/1.
:- dynamic period_of_time_limited/1.
:- dynamic geographic_scope_limited/1.
:- dynamic personal_scope_limited/1.
