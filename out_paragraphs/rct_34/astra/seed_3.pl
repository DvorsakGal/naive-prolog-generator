:- module(real_time_remote_biometric_identification, [
    regulated_use/1,
    listed_situation_use/1,
    objective_responsible_and_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_only/1,
    required_strict_necessity_limit/1,
    required_completed_fundamental_rights_impact_assessment/1,
    required_prior_system_registration/1,
    permitted_registration_exception/1,
    required_appropriate_reference_database/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic objective_law_enforcement/1.
:- dynamic situation_applies/1.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic targets_individual/2.
:- dynamic relevant_law_enforcement_authority_applies/1.
:- dynamic authorisation_applies/1.
:- dynamic registration_exception_provided_by_regulation_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic use_case_applies/1.

regulated_use(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_applies(Use),
    objective_law_enforcement(Use).

listed_situation_use(Use) :-
    regulated_use(Use),
    situation_applies(use(Use, Situation)),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_and_proportionate_use(consideration_requirement(Use)) :-
    listed_situation_use(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use, Situation)) :-
    listed_situation_use(Use),
    situation_applies(use(Use, Situation)).

required_consideration(consequence_for_right_and_freedom_of_every_person_concerned(Use)) :-
    listed_situation_use(Use).

required_consideration(safeguard_provided_for_with_use(Use)) :-
    listed_situation_use(Use).

required_consideration(condition_provided_for_with_use(Use)) :-
    listed_situation_use(Use).

required_identity_confirmation_only(deployment(Use, confirm_identity(Individual))) :-
    regulated_use(Use),
    targets_individual(Use, Individual).

required_strict_necessity_limit(period_of_time(Use)) :-
    regulated_use(Use).

required_strict_necessity_limit(geographic_scope(Use)) :-
    regulated_use(Use).

required_strict_necessity_limit(personal_scope(Use)) :-
    regulated_use(Use).

required_consideration(evidence_or_indication_regarding_threat(Use)) :-
    regulated_use(Use).

required_consideration(evidence_or_indication_regarding_victim(Use)) :-
    regulated_use(Use).

required_consideration(evidence_or_indication_regarding_perpetrator(Use)) :-
    regulated_use(Use).

required_completed_fundamental_rights_impact_assessment(
    prerequisite(authorisation(Use), completed_by(Authority))
) :-
    regulated_use(Use),
    authorisation_applies(Use),
    relevant_law_enforcement_authority_applies(use(Use, Authority)).

permitted_registration_exception(Use) :-
    regulated_use(Use),
    registration_exception_provided_by_regulation_applies(Use).

required_prior_system_registration(
    prerequisite(
        authorisation(Use),
        registered_by(Authority, System, database_set_out_in_regulation)
    )
) :-
    regulated_use(Use),
    authorisation_applies(Use),
    uses_system(Use, System),
    relevant_law_enforcement_authority_applies(use(Use, Authority)),
    \+ permitted_registration_exception(Use).

required_appropriate_reference_database(
    reference_database_of_person(Database, use_case(UseCase), situation(Situation))
) :-
    listed_situation_use(Use),
    uses_reference_database(Use, Database),
    use_case_applies(use(Use, UseCase)),
    situation_applies(use(Use, Situation)).
