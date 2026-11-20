:- module(real_time_remote_biometric_identification, [
    exhaustive/1,
    narrowly_defined/1,
    law_enforcement_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_purpose_restriction/1,
    required_scope_limitation/1,
    required_authorisation_condition/1,
    permitted_non_registration/1,
    required_reference_database_suitability/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic has_purpose/2.
:- dynamic belongs_to_list/2.
:- dynamic concerns_situation/2.
:- dynamic concerns_request/2.
:- dynamic targets_individual/2.
:- dynamic relevant_law_enforcement_authority_applies/1.
:- dynamic regulation_provides_otherwise/1.
:- dynamic uses_reference_database/2.
:- dynamic concerns_use_case/2.

exhaustive(referenced_situation_list).

narrowly_defined(Situation) :-
    belongs_to_list(Situation, referenced_situation_list).

law_enforcement_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_applies(Use),
    has_purpose(Use, law_enforcement).

listed_situation_use_applies(Use) :-
    law_enforcement_use_applies(Use),
    concerns_situation(Use, Situation),
    belongs_to_list(Situation, referenced_situation_list).

objective_responsible_use(consideration_requirement(Use)) :-
    listed_situation_use_applies(Use).

objective_proportionate_use(consideration_requirement(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(consideration(Use, nature(Situation, giving_rise_to(Request)))) :-
    listed_situation_use_applies(Use),
    concerns_situation(Use, Situation),
    concerns_request(Situation, Request).

required_consideration(consideration(Use, consequence_for(rights_and_freedoms(all_person_concerned)))) :-
    listed_situation_use_applies(Use).

required_consideration(consideration(Use, safeguard_provided_for(Use))) :-
    listed_situation_use_applies(Use).

required_consideration(consideration(Use, condition_provided_for(Use))) :-
    listed_situation_use_applies(Use).

required_purpose_restriction(deployment(Use, only(confirm_identity(Individual)))) :-
    law_enforcement_use_applies(Use),
    targets_individual(Use, Individual).

required_scope_limitation(limitation(Use, period_of_time, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_scope_limitation(limitation(Use, geographic_scope, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_scope_limitation(limitation(Use, personal_scope, strictly_necessary)) :-
    law_enforcement_use_applies(Use).

required_consideration(scope_limitation(Use, evidence_or_indication_regarding(threat))) :-
    law_enforcement_use_applies(Use).

required_consideration(scope_limitation(Use, evidence_or_indication_regarding(victim))) :-
    law_enforcement_use_applies(Use).

required_consideration(scope_limitation(Use, evidence_or_indication_regarding(perpetrator))) :-
    law_enforcement_use_applies(Use).

required_authorisation_condition(
    authorisation(Use, prior_completion(Authority, fundamental_rights_impact_assessment(Use)))
) :-
    law_enforcement_use_applies(Use),
    relevant_law_enforcement_authority_applies(authority_for(Authority, Use)).

permitted_non_registration(Use) :-
    law_enforcement_use_applies(Use),
    regulation_provides_otherwise(registration_condition(Use)).

required_authorisation_condition(
    authorisation(Use, prior_registration(Authority, System, database_as_set_out_in(this_regulation)))
) :-
    law_enforcement_use_applies(Use),
    uses_system(Use, System),
    relevant_law_enforcement_authority_applies(authority_for(Authority, Use)),
    \+ permitted_non_registration(Use).

required_reference_database_suitability(
    suitability(Database, reference_person, UseCase, Situation)
) :-
    listed_situation_use_applies(Use),
    concerns_situation(Use, Situation),
    belongs_to_list(Situation, referenced_situation_list),
    concerns_use_case(Use, UseCase),
    uses_reference_database(Use, Database).
