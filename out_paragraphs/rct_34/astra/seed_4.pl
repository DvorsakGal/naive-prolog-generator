:- module(remote_biometric_identification_use, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_only/1,
    required_strict_necessity/1,
    required_completed_fundamental_rights_impact_assessment/1,
    required_system_registration/1,
    permitted_registration_omission/1,
    required_appropriate_reference_database/1,
    must_consider/2,
    must_limit/2,
    must_complete/2,
    must_register/2,
    law_enforcement_use_applies/1,
    listed_situation_applies/1
]).

:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic uses_system/2.
:- dynamic publicly_accessible_space_use/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic occurs_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic responsible_authority/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic specifically_targeted_individual/2.
:- dynamic requests_use/2.
:- dynamic concerns_person/2.
:- dynamic provided_safeguard/2.
:- dynamic provided_condition/2.
:- dynamic relevant_evidence_or_indication/2.
:- dynamic concerns_threat/1.
:- dynamic concerns_victim/1.
:- dynamic concerns_perpetrator/1.
:- dynamic authorisation_requested/1.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic reference_database/2.
:- dynamic has_use_case/2.

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    remote_biometric_identification_system(System),
    real_time(System),
    publicly_accessible_space_use(Use),
    law_enforcement_purpose(Use).

listed_situation_applies(Use) :-
    law_enforcement_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration(Use)) :-
    listed_situation_applies(Use).

objective_proportionate_use(consideration(Use)) :-
    listed_situation_applies(Use).

required_consideration(nature(Situation, giving_rise_to(Request))) :-
    listed_situation_applies(Use),
    occurs_in_situation(Use, Situation),
    requests_use(Request, Use).

required_consideration(consequence(Use, rights_and_freedoms(Person))) :-
    listed_situation_applies(Use),
    concerns_person(Use, Person).

required_consideration(safeguard(Use, Safeguard)) :-
    listed_situation_applies(Use),
    provided_safeguard(Use, Safeguard).

required_consideration(condition(Use, Condition)) :-
    listed_situation_applies(Use),
    provided_condition(Use, Condition).

must_consider(Authority, nature(Situation, giving_rise_to(Request))) :-
    listed_situation_applies(Use),
    responsible_authority(Authority, Use),
    occurs_in_situation(Use, Situation),
    requests_use(Request, Use).

must_consider(Authority, consequence(Use, rights_and_freedoms(Person))) :-
    listed_situation_applies(Use),
    responsible_authority(Authority, Use),
    concerns_person(Use, Person).

must_consider(Authority, safeguard(Use, Safeguard)) :-
    listed_situation_applies(Use),
    responsible_authority(Authority, Use),
    provided_safeguard(Use, Safeguard).

must_consider(Authority, condition(Use, Condition)) :-
    listed_situation_applies(Use),
    responsible_authority(Authority, Use),
    provided_condition(Use, Condition).

required_identity_confirmation_only(deployment(Use, confirm_identity(Person))) :-
    law_enforcement_use_applies(Use),
    specifically_targeted_individual(Use, Person).

required_strict_necessity(period_of_time(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    law_enforcement_use_applies(Use).

must_limit(Authority, period_of_time(Use, strictly_necessary)) :-
    law_enforcement_use_applies(Use),
    responsible_authority(Authority, Use).

must_limit(Authority, geographic_scope(Use, strictly_necessary)) :-
    law_enforcement_use_applies(Use),
    responsible_authority(Authority, Use).

must_limit(Authority, personal_scope(Use, strictly_necessary)) :-
    law_enforcement_use_applies(Use),
    responsible_authority(Authority, Use).

must_consider(Authority, evidence_or_indication(Use, Evidence)) :-
    law_enforcement_use_applies(Use),
    responsible_authority(Authority, Use),
    relevant_evidence_or_indication(Use, Evidence),
    concerns_threat(Evidence).

must_consider(Authority, evidence_or_indication(Use, Evidence)) :-
    law_enforcement_use_applies(Use),
    responsible_authority(Authority, Use),
    relevant_evidence_or_indication(Use, Evidence),
    concerns_victim(Evidence).

must_consider(Authority, evidence_or_indication(Use, Evidence)) :-
    law_enforcement_use_applies(Use),
    responsible_authority(Authority, Use),
    relevant_evidence_or_indication(Use, Evidence),
    concerns_perpetrator(Evidence).

required_completed_fundamental_rights_impact_assessment(authorisation(Use)) :-
    law_enforcement_use_applies(Use).

must_complete(Authority, fundamental_rights_impact_assessment(Use, before_authorisation)) :-
    law_enforcement_use_applies(Use),
    authorisation_requested(Use),
    relevant_law_enforcement_authority(Authority, Use).

permitted_registration_omission(Use) :-
    regulation_provides_registration_exception(Use).

required_system_registration(authorisation(Use, System, database_under_regulation)) :-
    law_enforcement_use_applies(Use),
    uses_system(Use, System),
    \+ permitted_registration_omission(Use).

must_register(Authority, system(System, database_under_regulation, before_authorisation(Use))) :-
    law_enforcement_use_applies(Use),
    authorisation_requested(Use),
    relevant_law_enforcement_authority(Authority, Use),
    uses_system(Use, System),
    \+ permitted_registration_omission(Use).

required_appropriate_reference_database(database_of_person( Database, UseCase, Situation)) :-
    listed_situation_applies(Use),
    reference_database(Use, Database),
    has_use_case(Use, UseCase),
    occurs_in_situation(Use, Situation).
