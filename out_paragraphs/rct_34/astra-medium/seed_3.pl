:- module(real_time_biometric_use, [
    law_enforcement_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_purpose/1,
    required_limitation/1,
    required_authorisation_condition/1,
    permitted_registration_omission/1,
    must_complete/2,
    must_register/2,
    required_appropriate_reference_database/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic concerns_person/2.
:- dynamic specifically_targets/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic concerns_use_case/2.

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_use_applies(Use) :-
    law_enforcement_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(real_time_remote_biometric_identification_use_condition).
objective_proportionate_use(real_time_remote_biometric_identification_use_condition).

required_consideration(nature(Situation, request_for(Use))) :-
    listed_situation_use_applies(Use),
    occurs_in_situation(Use, Situation).

required_consideration(consequence(Use, right(Person))) :-
    listed_situation_use_applies(Use),
    concerns_person(Use, Person).

required_consideration(consequence(Use, freedom(Person))) :-
    listed_situation_use_applies(Use),
    concerns_person(Use, Person).

required_consideration(safeguard_provided_for(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(condition_provided_for(Use)) :-
    listed_situation_use_applies(Use).

required_identity_confirmation_purpose(
    deployment(Use, exclusively(confirm_identity(Person)))
) :-
    law_enforcement_use_applies(Use),
    specifically_targets(Use, Person).

required_limitation(time_period(Use, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_limitation(geographic_scope(Use, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_limitation(personal_scope(Use, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_consideration(
    limitation(Use, evidence_or_indication_regarding(threat))
) :-
    law_enforcement_use_applies(Use).

required_consideration(
    limitation(Use, evidence_or_indication_regarding(victim))
) :-
    law_enforcement_use_applies(Use).

required_consideration(
    limitation(Use, evidence_or_indication_regarding(perpetrator))
) :-
    law_enforcement_use_applies(Use).

required_authorisation_condition(
    authorisation(Use, prior_completion(Authority, fundamental_rights_impact_assessment(Use)))
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

must_complete(
    Authority,
    fundamental_rights_impact_assessment(Use, before(authorisation(Use)))
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_omission(Use) :-
    law_enforcement_use_applies(Use),
    regulation_provides_registration_exception(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_registration(Authority, System, database_as_set_out_in_regulation)
    )
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_registration_omission(Use).

must_register(
    Authority,
    system(System, database_as_set_out_in_regulation, before(authorisation(Use)))
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_registration_omission(Use).

required_appropriate_reference_database(
    reference_database_of_person(Database, use_case(UseCase), situation(Situation))
) :-
    listed_situation_use_applies(Use),
    uses_reference_database(Use, Database),
    concerns_use_case(Use, UseCase),
    occurs_in_situation(Use, Situation).
