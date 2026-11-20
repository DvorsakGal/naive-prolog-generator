:- module(remote_biometric_identification_use, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation/1,
    required_strict_necessity/1,
    required_fundamental_rights_impact_assessment/1,
    required_system_registration/1,
    permitted_registration_omission/1,
    required_appropriate_reference_database/1,
    relevant_use_applies/1,
    listed_situation_applies/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic gives_rise_to_request/2.
:- dynamic concerns_use/2.
:- dynamic concerns_person/2.
:- dynamic provides_safeguard/2.
:- dynamic provides_condition/2.
:- dynamic specifically_targets_individual/2.
:- dynamic relevant_evidence_or_indication/2.
:- dynamic concerns_threat/2.
:- dynamic concerns_victim/2.
:- dynamic concerns_perpetrator/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic has_use_case/2.

relevant_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_applies(Use) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration_of_required_element(Use)) :-
    relevant_use_applies(Use),
    listed_situation_applies(Use).

objective_proportionate_use(consideration_of_required_element(Use)) :-
    relevant_use_applies(Use),
    listed_situation_applies(Use).

required_consideration(nature_of_situation(Use, Situation, Request)) :-
    relevant_use_applies(Use),
    listed_situation_applies(Use),
    occurs_in_situation(Use, Situation),
    gives_rise_to_request(Situation, Request),
    concerns_use(Request, Use).

required_consideration(consequence_for_right_and_freedom(Use, Person)) :-
    relevant_use_applies(Use),
    listed_situation_applies(Use),
    concerns_person(Use, Person).

required_consideration(safeguard(Use, Safeguard)) :-
    relevant_use_applies(Use),
    listed_situation_applies(Use),
    provides_safeguard(Use, Safeguard).

required_consideration(condition(Use, Condition)) :-
    relevant_use_applies(Use),
    listed_situation_applies(Use),
    provides_condition(Use, Condition).

required_identity_confirmation(exclusive_purpose(Use, Individual)) :-
    relevant_use_applies(Use),
    specifically_targets_individual(Use, Individual).

required_strict_necessity(period_of_time(Use)) :-
    relevant_use_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    relevant_use_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    relevant_use_applies(Use).

required_consideration(strict_necessity_evidence(Use, Evidence, threat(Threat))) :-
    relevant_use_applies(Use),
    relevant_evidence_or_indication(Use, Evidence),
    concerns_threat(Evidence, Threat).

required_consideration(strict_necessity_evidence(Use, Evidence, victim(Victim))) :-
    relevant_use_applies(Use),
    relevant_evidence_or_indication(Use, Evidence),
    concerns_victim(Evidence, Victim).

required_consideration(strict_necessity_evidence(Use, Evidence, perpetrator(Perpetrator))) :-
    relevant_use_applies(Use),
    relevant_evidence_or_indication(Use, Evidence),
    concerns_perpetrator(Evidence, Perpetrator).

required_fundamental_rights_impact_assessment(
    completed_before_authorisation(Authority, Use)) :-
    relevant_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_omission(Use) :-
    regulation_provides_registration_exception(Use).

required_system_registration(
    completed_before_authorisation(Authority, System, Use, database_set_out_in_regulation)) :-
    relevant_use_applies(Use),
    uses_system(Use, System),
    relevant_law_enforcement_authority(Use, Authority),
    \+ permitted_registration_omission(Use).

required_appropriate_reference_database(
    reference_database_of_person(Use, Database, UseCase, Situation)) :-
    relevant_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    uses_reference_database(Use, Database),
    has_use_case(Use, UseCase).
