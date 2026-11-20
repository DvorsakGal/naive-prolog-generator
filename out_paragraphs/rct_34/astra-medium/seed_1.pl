:- module(real_time_identification_safeguard, [
    law_enforcement_use_applies/1,
    listed_situation_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_exclusive_purpose/1,
    required_strict_necessity/1,
    must_complete/2,
    must_register/2,
    permitted_registration_omission/1,
    required_appropriateness/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic occurs_in_space/2.
:- dynamic publicly_accessible/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic arises_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic specifically_targets_individual/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic system_registration_exception_under_regulation_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic instantiates_use_case/2.

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    occurs_in_space(Use, Space),
    publicly_accessible(Space),
    law_enforcement_purpose_applies(Use).

listed_situation_applies(Use) :-
    law_enforcement_use_applies(Use),
    arises_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration_requirement(Use)) :-
    listed_situation_applies(Use).

objective_proportionate_use(consideration_requirement(Use)) :-
    listed_situation_applies(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use, Situation)) :-
    listed_situation_applies(Use),
    arises_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_consideration(consequence_for_right_and_freedom(Use, every_person_concerned)) :-
    listed_situation_applies(Use).

required_consideration(safeguard_provided_for_use(Use)) :-
    listed_situation_applies(Use).

required_consideration(condition_provided_for_use(Use)) :-
    listed_situation_applies(Use).

required_exclusive_purpose(deployment(Use, confirm_identity(Individual))) :-
    law_enforcement_use_applies(Use),
    specifically_targets_individual(Use, Individual).

required_strict_necessity(time_period(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_consideration(scope_limitation(Use, evidence_or_indication_regarding(threat))) :-
    law_enforcement_use_applies(Use).

required_consideration(scope_limitation(Use, evidence_or_indication_regarding(victim))) :-
    law_enforcement_use_applies(Use).

required_consideration(scope_limitation(Use, evidence_or_indication_regarding(perpetrator))) :-
    law_enforcement_use_applies(Use).

must_complete(Authority, fundamental_rights_impact_assessment(Use, before(authorisation(Use)))) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    occurs_in_space(Use, Space),
    publicly_accessible(Space),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_omission(Use) :-
    system_registration_exception_under_regulation_applies(Use).

must_register(Authority, registration(System, database_as_set_out_in_regulation, before(authorisation(Use)))) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    occurs_in_space(Use, Space),
    publicly_accessible(Space),
    relevant_law_enforcement_authority(Use, Authority),
    \+ permitted_registration_omission(Use).

required_appropriateness(reference_database_of_person( Database, UseCase, Situation)) :-
    listed_situation_applies(Use),
    arises_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    instantiates_use_case(Use, UseCase),
    uses_reference_database(Use, Database).
