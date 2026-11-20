:- module(real_time_biometric_use, [
    public_real_time_remote_biometric_identification_use_applies/1,
    law_enforcement_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_deployment_purpose/1,
    required_time_limitation/1,
    required_geographic_scope_limitation/1,
    required_personal_scope_limitation/1,
    required_regard/1,
    must_complete/2,
    must_register/2,
    permitted_registration_omission/1,
    required_appropriate_reference_database/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic occurs_in_space/2.
:- dynamic publicly_accessible/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic gives_rise_to_request/2.
:- dynamic concerns_use/2.
:- dynamic concerned_person/2.
:- dynamic provides_safeguard/2.
:- dynamic provides_condition/2.
:- dynamic specifically_targets_individual/2.
:- dynamic relevant_evidence/2.
:- dynamic relevant_indication/2.
:- dynamic concerns_threat/2.
:- dynamic concerns_victim/2.
:- dynamic concerns_perpetrator/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic provides_exception/2.
:- dynamic uses_reference_database/2.
:- dynamic reference_database_of_person/1.
:- dynamic has_use_case/2.

public_real_time_remote_biometric_identification_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    occurs_in_space(Use, Space),
    publicly_accessible(Space).

law_enforcement_use_applies(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_use_applies(Use) :-
    law_enforcement_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration_requirement(Use)) :-
    listed_situation_use_applies(Use).

objective_proportionate_use(consideration_requirement(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(consideration(Use, nature(Situation))) :-
    listed_situation_use_applies(Use),
    occurs_in_situation(Use, Situation),
    gives_rise_to_request(Situation, Request),
    concerns_use(Request, Use).

required_consideration(consideration(Use, consequence_for_right_and_freedom(Person))) :-
    listed_situation_use_applies(Use),
    concerned_person(Use, Person).

required_consideration(consideration(Use, Safeguard)) :-
    listed_situation_use_applies(Use),
    provides_safeguard(Use, Safeguard).

required_consideration(consideration(Use, Condition)) :-
    listed_situation_use_applies(Use),
    provides_condition(Use, Condition).

required_deployment_purpose(deployment(Use, only(confirm_identity(Person)))) :-
    law_enforcement_use_applies(Use),
    specifically_targets_individual(Use, Person).

required_time_limitation(limitation(Use, period_of_time, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_geographic_scope_limitation(limitation(Use, geographic_scope, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_personal_scope_limitation(limitation(Use, personal_scope, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_regard(scope_and_duration_limitation(Use, evidence(Evidence, threat(Threat)))) :-
    law_enforcement_use_applies(Use),
    relevant_evidence(Use, Evidence),
    concerns_threat(Evidence, Threat).

required_regard(scope_and_duration_limitation(Use, evidence(Evidence, victim(Victim)))) :-
    law_enforcement_use_applies(Use),
    relevant_evidence(Use, Evidence),
    concerns_victim(Evidence, Victim).

required_regard(scope_and_duration_limitation(Use, evidence(Evidence, perpetrator(Perpetrator)))) :-
    law_enforcement_use_applies(Use),
    relevant_evidence(Use, Evidence),
    concerns_perpetrator(Evidence, Perpetrator).

required_regard(scope_and_duration_limitation(Use, indication(Indication, threat(Threat)))) :-
    law_enforcement_use_applies(Use),
    relevant_indication(Use, Indication),
    concerns_threat(Indication, Threat).

required_regard(scope_and_duration_limitation(Use, indication(Indication, victim(Victim)))) :-
    law_enforcement_use_applies(Use),
    relevant_indication(Use, Indication),
    concerns_victim(Indication, Victim).

required_regard(scope_and_duration_limitation(Use, indication(Indication, perpetrator(Perpetrator)))) :-
    law_enforcement_use_applies(Use),
    relevant_indication(Use, Indication),
    concerns_perpetrator(Indication, Perpetrator).

must_complete(Authority, fundamental_rights_impact_assessment(Use, before(authorisation(Use)))) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_omission(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    provides_exception(this_regulation, registration_before_authorisation(Use)).

must_register(Authority, registration(System, database_as_set_out_in(this_regulation), before(authorisation(Use)))) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_registration_omission(Use).

required_appropriate_reference_database(reference_database(Database, use_case(UseCase), situation(Situation))) :-
    listed_situation_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    uses_reference_database(Use, Database),
    reference_database_of_person(Database),
    has_use_case(Use, UseCase).
