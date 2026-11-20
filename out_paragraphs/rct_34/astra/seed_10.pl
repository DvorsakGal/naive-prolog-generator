:- module(remote_biometric_identification_use, [
    law_enforcement_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_purpose/1,
    required_strict_necessity_limit/1,
    required_authorisation_condition/1,
    permitted_registration_exception/1,
    required_reference_database_suitability/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic publicly_accessible_space_use_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic specifically_targets/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic person_reference_database/1.
:- dynamic has_use_case/2.

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system(System),
    publicly_accessible_space_use_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_use_applies(Use) :-
    law_enforcement_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration_of_relevant_element(Use)) :-
    listed_situation_use_applies(Use).

objective_proportionate_use(consideration_of_relevant_element(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use, Situation)) :-
    listed_situation_use_applies(Use),
    occurs_in_situation(Use, Situation).

required_consideration(consequence_for_right_and_freedom_of_every_person_concerned(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(safeguard_provided_for_use(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(condition_provided_for_use(Use)) :-
    listed_situation_use_applies(Use).

required_identity_confirmation_purpose(exclusive_purpose(Use, confirm_identity(Individual))) :-
    law_enforcement_use_applies(Use),
    specifically_targets(Use, Individual).

required_strict_necessity_limit(time_period(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity_limit(geographic_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_strict_necessity_limit(personal_scope(Use)) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication_regarding(threat))) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication_regarding(victim))) :-
    law_enforcement_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication_regarding(perpetrator))) :-
    law_enforcement_use_applies(Use).

required_authorisation_condition(
    authorisation(Use, prior_completion(Authority, fundamental_rights_impact_assessment(Use)))
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_registration_exception(Use) :-
    law_enforcement_use_applies(Use),
    regulation_provides_registration_exception(Use).

required_authorisation_condition(
    authorisation(Use, prior_registration(Authority, System, database_as_set_out_in_regulation))
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_registration_exception(Use).

required_reference_database_suitability(
    suitability(Database, use_case(UseCase), situation(Situation), use(Use))
) :-
    listed_situation_use_applies(Use),
    occurs_in_situation(Use, Situation),
    has_use_case(Use, UseCase),
    uses_reference_database(Use, Database),
    person_reference_database(Database).
