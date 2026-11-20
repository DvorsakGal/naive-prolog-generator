:- module(real_time_remote_biometric_identification, [
    relevant_use_applies/1,
    listed_situation_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation/1,
    required_strict_necessity/1,
    must_complete/2,
    must_register/2,
    permitted_unregistered_authorisation/1,
    required_appropriate_reference_database/1
]).

:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic uses_system/2.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic occurs_in/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic requests_use/2.
:- dynamic specifically_targets/2.
:- dynamic relevant_law_enforcement_authority/2.
:- dynamic proposed_authorisation_applies/1.
:- dynamic regulation_provides_registration_exception/1.
:- dynamic uses_reference_database/2.
:- dynamic has_use_case/2.

relevant_use_applies(Use) :-
    uses_system(Use, System),
    remote_biometric_identification_system(System),
    real_time(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_applies(Use) :-
    relevant_use_applies(Use),
    occurs_in(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration(Use)) :-
    listed_situation_applies(Use).

objective_proportionate_use(consideration(Use)) :-
    listed_situation_applies(Use).

required_consideration(nature(Situation, giving_rise_to(Request))) :-
    listed_situation_applies(Use),
    occurs_in(Use, Situation),
    requests_use(Request, Use).

required_consideration(consequence(Use, rights_and_freedoms(all_person_concerned))) :-
    listed_situation_applies(Use).

required_consideration(safeguard_provided_for(Use)) :-
    listed_situation_applies(Use).

required_consideration(condition_provided_for(Use)) :-
    listed_situation_applies(Use).

required_identity_confirmation(sole_purpose(Use, confirm_identity(Individual))) :-
    relevant_use_applies(Use),
    specifically_targets(Use, Individual).

required_strict_necessity(limit(Use, period_of_time)) :-
    relevant_use_applies(Use).

required_strict_necessity(limit(Use, geographic_scope)) :-
    relevant_use_applies(Use).

required_strict_necessity(limit(Use, personal_scope)) :-
    relevant_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication_regarding(threat))) :-
    relevant_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication_regarding(victim))) :-
    relevant_use_applies(Use).

required_consideration(strict_necessity(Use, evidence_or_indication_regarding(perpetrator))) :-
    relevant_use_applies(Use).

must_complete(Authority, fundamental_rights_impact_assessment(Use, before(authorisation(Use)))) :-
    relevant_use_applies(Use),
    proposed_authorisation_applies(Use),
    relevant_law_enforcement_authority(Use, Authority).

permitted_unregistered_authorisation(Use) :-
    relevant_use_applies(Use),
    regulation_provides_registration_exception(Use).

must_register(Authority, system(System, database_as_set_out_in_regulation, before(authorisation(Use)))) :-
    relevant_use_applies(Use),
    proposed_authorisation_applies(Use),
    relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_unregistered_authorisation(Use).

required_appropriate_reference_database(database(Database, person, use_case(UseCase), situation(Situation))) :-
    listed_situation_applies(Use),
    occurs_in(Use, Situation),
    uses_reference_database(Use, Database),
    has_use_case(Use, UseCase).
