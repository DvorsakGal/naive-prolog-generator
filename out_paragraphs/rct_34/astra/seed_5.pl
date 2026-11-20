:- module(real_time_remote_biometric_identification, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    law_enforcement_use_applies/1,
    required_identity_confirmation/1,
    required_strict_necessity/1,
    required_fundamental_rights_impact_assessment/1,
    required_system_registration/1,
    permitted_registration_omission/1,
    required_appropriate_reference_database/1
]).

:- dynamic exhaustively_listed_narrowly_defined_situation/1.
:- dynamic occurs_in_situation/2.
:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space_use/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic concerns_request/2.
:- dynamic specifically_targets_individual/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic has_use_case/2.

objective_responsible_use(consideration(Use)) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation).

objective_proportionate_use(consideration(Use)) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation).

required_consideration(nature_of_situation(Use, Situation, Request)) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation),
    concerns_request(Situation, Request).

required_consideration(consequence_for_rights_and_freedoms(Use, all_person_concerned)) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation).

required_consideration(safeguard_provided_for(Use)) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation).

required_consideration(condition_provided_for(Use)) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation).

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_use(Use),
    law_enforcement_purpose(Use).

required_identity_confirmation(exclusive_purpose(Use, confirm_identity(Individual))) :-
    law_enforcement_use_applies(Use),
    specifically_targets_individual(Use, Individual).

required_strict_necessity(limit(Use, period_of_time)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(limit(Use, geographic_scope)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(limit(Use, personal_scope)) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication(threat))) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication(victim))) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication(perpetrator))) :-
    law_enforcement_use_applies(Use).

required_fundamental_rights_impact_assessment(
    prerequisite(authorisation(Use), completed_by(Authority))
) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_use(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_omission(Use) :-
    regulation_provides_registration_exception(Use).

required_system_registration(
    prerequisite(authorisation(Use),
        registered_by(Authority, System, database_set_out_in_regulation))
) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_use(Use),
    relevant_law_enforcement_authority(Use, Authority),
    \+ permitted_registration_omission(Use).

required_appropriate_reference_database(
    reference_database_of_person(Database, UseCase, Situation)
) :-
    occurs_in_situation(Use, Situation),
    exhaustively_listed_narrowly_defined_situation(Situation),
    has_use_case(Use, UseCase),
    uses_reference_database(Use, Database).
