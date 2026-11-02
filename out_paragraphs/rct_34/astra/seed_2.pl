:- module(real_time_remote_biometric_identification, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_only/1,
    required_strictly_necessary_limit/1,
    required_fundamental_rights_impact_assessment/1,
    required_prior_registration/1,
    permitted_registration_exception/1,
    required_appropriate_reference_database/1
]).

:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic uses_system/2.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic exhaustively_listed_situation_applies/1.
:- dynamic narrowly_defined_situation_applies/1.
:- dynamic requests_use/2.
:- dynamic relevant_law_enforcement_authority_applies/1.
:- dynamic authorisation_applies/1.
:- dynamic registration_exception_under_regulation_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic person_reference_database/1.

objective_responsible_use(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

objective_proportionate_use(Use) :-
    objective_responsible_use(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use)) :-
    objective_responsible_use(Use),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use).

required_consideration(consequence_for_right_and_freedom_of_every_person_concerned(Use)) :-
    objective_responsible_use(Use),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use).

required_consideration(safeguard_provided_for_use(Use)) :-
    objective_responsible_use(Use),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use).

required_consideration(condition_provided_for_use(Use)) :-
    objective_responsible_use(Use),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use).

required_identity_confirmation_only(
    deployment(Use, identity_of_specifically_targeted_individual)
) :-
    objective_responsible_use(Use).

required_strictly_necessary_limit(period_of_time(Use)) :-
    objective_responsible_use(Use).

required_strictly_necessary_limit(geographic_scope(Use)) :-
    objective_responsible_use(Use).

required_strictly_necessary_limit(personal_scope(Use)) :-
    objective_responsible_use(Use).

required_consideration(
    evidence_or_indication_regarding_threat(Use, strictly_necessary_limit)
) :-
    objective_responsible_use(Use).

required_consideration(
    evidence_or_indication_regarding_victim(Use, strictly_necessary_limit)
) :-
    objective_responsible_use(Use).

required_consideration(
    evidence_or_indication_regarding_perpetrator(Use, strictly_necessary_limit)
) :-
    objective_responsible_use(Use).

required_fundamental_rights_impact_assessment(
    completed_before_authorisation(Authority, Use)
) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    authorisation_applies(Use),
    requests_use(Authority, Use),
    relevant_law_enforcement_authority_applies(Authority).

permitted_registration_exception(Use) :-
    registration_exception_under_regulation_applies(Use).

required_prior_registration(
    registration_by_authority_in_database_under_regulation(Authority, System, Use)
) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    authorisation_applies(Use),
    requests_use(Authority, Use),
    relevant_law_enforcement_authority_applies(Authority),
    \+ permitted_registration_exception(Use).

required_appropriate_reference_database(
    reference_database_for_use_case(Database, Use)
) :-
    objective_responsible_use(Use),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use),
    uses_reference_database(Use, Database),
    person_reference_database(Database).
