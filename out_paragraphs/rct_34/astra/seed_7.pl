:- module(real_time_remote_biometric_identification, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    law_enforcement_use_applies/1,
    required_identity_confirmation/1,
    required_strict_necessity/1,
    required_evidence_consideration/1,
    required_fundamental_rights_impact_assessment/1,
    required_registration/1,
    exempt_registration/1,
    permitted_registration_exception/1,
    permitted_authorisation/1,
    prohibited_authorisation/1,
    required_appropriate_reference_database/1
]).

:- dynamic listed_situation_applies/1.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic involves_use/2.
:- dynamic gives_rise_to_request/2.
:- dynamic concerns_person/2.
:- dynamic provides_safeguard/2.
:- dynamic provides_condition/2.
:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic targets_individual/2.
:- dynamic relevant_law_enforcement_authority_applies/1.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic registered_in_regulation_database/1.
:- dynamic regulation_registration_derogation_applies/1.
:- dynamic reference_database_applies/1.
:- dynamic use_case_applies/1.

objective_responsible_use(consideration(Situation)) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_proportionate_use(consideration(Situation)) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_consideration(nature(Situation, Request)) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    gives_rise_to_request(Situation, Request).

required_consideration(consequence(Use, rights_and_freedom(Person))) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    involves_use(Situation, Use),
    concerns_person(Use, Person).

required_consideration(safeguard(Use, Safeguard)) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    involves_use(Situation, Use),
    provides_safeguard(Use, Safeguard).

required_consideration(condition(Use, Condition)) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    involves_use(Situation, Use),
    provides_condition(Use, Condition).

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

required_identity_confirmation(exclusive_purpose(Use, confirm_identity(Individual))) :-
    law_enforcement_use_applies(Use),
    targets_individual(Use, Individual).

required_strict_necessity(time_period(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_evidence_consideration(Use, _Object) :-
    law_enforcement_use_applies(Use).

required_evidence_consideration(evidence_or_indication(Use, threat)) :-
    law_enforcement_use_applies(Use).

required_evidence_consideration(evidence_or_indication(Use, victim)) :-
    law_enforcement_use_applies(Use).

required_evidence_consideration(evidence_or_indication(Use, perpetrator)) :-
    law_enforcement_use_applies(Use).

required_fundamental_rights_impact_assessment(before_authorisation(Authority, Use)) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority_applies(authority(Authority, Use)).

permitted_registration_exception(Use) :-
    regulation_registration_derogation_applies(Use).

exempt_registration(Use) :-
    law_enforcement_use_applies(Use),
    permitted_registration_exception(Use).

required_registration(before_authorisation(Authority, System, regulation_database)) :-
    law_enforcement_use_applies(Use),
    uses_system(Use, System),
    relevant_law_enforcement_authority_applies(authority(Authority, Use)),
    \+ permitted_registration_exception(Use).

permitted_authorisation(prerequisite_satisfaction(Use)) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority_applies(authority(Authority, Use)),
    completed_fundamental_rights_impact_assessment(assessment(Authority, Use)),
    uses_system(Use, System),
    registered_in_regulation_database(registration(Authority, System)).

permitted_authorisation(prerequisite_satisfaction(Use)) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority_applies(authority(Authority, Use)),
    completed_fundamental_rights_impact_assessment(assessment(Authority, Use)),
    permitted_registration_exception(Use).

prohibited_authorisation(Use) :-
    law_enforcement_use_applies(Use),
    \+ permitted_authorisation(prerequisite_satisfaction(Use)).

required_appropriate_reference_database(database_of_person( Database, UseCase, Situation)) :-
    listed_situation_applies(Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    involves_use(Situation, Use),
    use_case_applies(use_case(Use, UseCase)),
    reference_database_applies(reference_database(Use, Database)).
