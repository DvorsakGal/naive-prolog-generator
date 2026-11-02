:- module(real_time_remote_biometric_identification, [
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation/1,
    required_strict_necessity/1,
    required_fundamental_rights_impact_assessment/1,
    required_registration/1,
    permitted_registration_omission/1,
    required_appropriate_reference_database/1,
    relevant_situation_applies/1,
    law_enforcement_use_applies/1,
    public_real_time_remote_biometric_identification_use_applies/1
]).

:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic uses_system/2.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic targets_individual/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic concerns_use_case/2.

public_real_time_remote_biometric_identification_use_applies(Use) :-
    uses_system(Use, System),
    real_time_remote_biometric_identification_system(System),
    publicly_accessible_space_applies(Use).

law_enforcement_use_applies(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    law_enforcement_purpose_applies(Use).

relevant_situation_applies(Use) :-
    law_enforcement_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration_of_required_element(Use)) :-
    relevant_situation_applies(Use).

objective_proportionate_use(consideration_of_required_element(Use)) :-
    relevant_situation_applies(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use, Situation)) :-
    relevant_situation_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_consideration(consequence_for_right_and_freedom_of_every_person_concerned(Use)) :-
    relevant_situation_applies(Use).

required_consideration(safeguard_provided_for(Use)) :-
    relevant_situation_applies(Use).

required_consideration(condition_provided_for(Use)) :-
    relevant_situation_applies(Use).

required_identity_confirmation(exclusive_purpose(Use, identity(Individual))) :-
    law_enforcement_use_applies(Use),
    targets_individual(Use, Individual).

required_strict_necessity(time_period(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity_assessment(Use, evidence_or_indication_regarding(threat))) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity_assessment(Use, evidence_or_indication_regarding(victim))) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity_assessment(Use, evidence_or_indication_regarding(perpetrator))) :-
    law_enforcement_use_applies(Use).

required_fundamental_rights_impact_assessment(
    prerequisite(authorisation(Use), completed_by(Authority))
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_omission(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    regulation_provides_registration_exception(Use).

required_registration(
    prerequisite(authorisation(Use),
        completed_by(Authority, registration(System, database_as_set_out_in_regulation)))
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_registration_omission(Use).

required_appropriate_reference_database(
    reference_database_of_person(Database, use_case(UseCase), situation(Situation))
) :-
    relevant_situation_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    concerns_use_case(Use, UseCase),
    uses_reference_database(Use, Database).
