:- module(real_time_remote_biometric_identification, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation/1,
    required_strict_necessity/1,
    required_fundamental_rights_impact_assessment/1,
    required_registration/1,
    permitted_registration_exception/1,
    must_authorise_only_if/2,
    required_appropriate_reference_database/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic uses_system/2.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic exhaustively_listed_situation_applies/1.
:- dynamic narrowly_defined_situation_applies/1.
:- dynamic requests_use/2.
:- dynamic targets_individual/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic authorises_use/2.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic use_case_applies/1.

objective_responsible_use(consideration_of_element(Use)) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use).

objective_proportionate_use(consideration_of_element(Use)) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    exhaustively_listed_situation_applies(Use),
    narrowly_defined_situation_applies(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use, Request)) :-
    objective_responsible_use(consideration_of_element(Use)),
    requests_use(Request, Use).

required_consideration(consequence_for_right_and_freedom_of_every_person_concerned(Use)) :-
    objective_responsible_use(consideration_of_element(Use)).

required_consideration(safeguard_provided_for_use(Use)) :-
    objective_responsible_use(consideration_of_element(Use)).

required_consideration(condition_provided_for_use(Use)) :-
    objective_responsible_use(consideration_of_element(Use)).

required_identity_confirmation(sole_purpose(Use, specifically_targeted_individual(Person))) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use),
    targets_individual(Use, Person).

required_strict_necessity(period_of_time(Use)) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    required_strict_necessity(period_of_time(Use)).

required_strict_necessity(personal_scope(Use)) :-
    required_strict_necessity(period_of_time(Use)).

required_consideration(evidence_or_indication_regarding_threat(Use)) :-
    required_strict_necessity(period_of_time(Use)).

required_consideration(evidence_or_indication_regarding_victim(Use)) :-
    required_strict_necessity(period_of_time(Use)).

required_consideration(evidence_or_indication_regarding_perpetrator(Use)) :-
    required_strict_necessity(period_of_time(Use)).

required_fundamental_rights_impact_assessment(prior_completion(Authority, Use)) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    relevant_law_enforcement_authority(Authority, Use).

must_authorise_only_if(AuthorisingAuthority,
    use(Use, completed_fundamental_rights_impact_assessment(Authority))) :-
    authorises_use(AuthorisingAuthority, Use),
    required_fundamental_rights_impact_assessment(prior_completion(Authority, Use)).

permitted_registration_exception(Use) :-
    regulation_provides_registration_exception(Use).

required_registration(prior_registration(Authority, System, database_set_out_in_regulation, Use)) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    relevant_law_enforcement_authority(Authority, Use),
    \+ permitted_registration_exception(Use).

must_authorise_only_if(AuthorisingAuthority,
    use(Use, registered_by(Authority, System, database_set_out_in_regulation))) :-
    authorises_use(AuthorisingAuthority, Use),
    required_registration(prior_registration(Authority, System, database_set_out_in_regulation, Use)).

required_appropriate_reference_database(reference_database_of_person(Database, UseCase)) :-
    uses_reference_database(UseCase, Database),
    use_case_applies(UseCase),
    exhaustively_listed_situation_applies(UseCase),
    narrowly_defined_situation_applies(UseCase).
