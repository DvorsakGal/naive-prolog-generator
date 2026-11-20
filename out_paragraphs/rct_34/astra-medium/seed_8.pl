:- module(remote_biometric_identification_use, [
    law_enforcement_remote_biometric_identification_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_only/1,
    required_strict_necessity_limit/1,
    must_complete/2,
    must_register/2,
    permitted_unregistered_use/1,
    required_appropriate_reference_database/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic arises_in_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic targets_individual/2.
:- dynamic relevant_law_enforcement_authority_applies/1.
:- dynamic regulation_registration_exception_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic person_reference_database/1.
:- dynamic use_case_applies/1.

law_enforcement_remote_biometric_identification_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_use_applies(use(Use, Situation)) :-
    law_enforcement_remote_biometric_identification_applies(Use),
    arises_in_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(consideration_requirement(Use, Situation)) :-
    listed_situation_use_applies(use(Use, Situation)).

objective_proportionate_use(consideration_requirement(Use, Situation)) :-
    listed_situation_use_applies(use(Use, Situation)).

required_consideration(consideration(Use, nature(Situation, giving_rise_to_request))) :-
    listed_situation_use_applies(use(Use, Situation)).

required_consideration(consideration(Use, consequence_for(right_and_freedom(all_person_concerned)))) :-
    listed_situation_use_applies(use(Use, _Situation)).

required_consideration(consideration(Use, safeguard_provided_for_use)) :-
    listed_situation_use_applies(use(Use, _Situation)).

required_consideration(consideration(Use, condition_provided_for_use)) :-
    listed_situation_use_applies(use(Use, _Situation)).

required_identity_confirmation_only(deployment(Use, confirm_identity(Individual))) :-
    law_enforcement_remote_biometric_identification_applies(Use),
    targets_individual(Use, Individual).

required_strict_necessity_limit(limitation(Use, period_of_time)) :-
    law_enforcement_remote_biometric_identification_applies(Use).

required_strict_necessity_limit(limitation(Use, geographic_scope)) :-
    law_enforcement_remote_biometric_identification_applies(Use).

required_strict_necessity_limit(limitation(Use, personal_scope)) :-
    law_enforcement_remote_biometric_identification_applies(Use).

required_consideration(consideration(
    strict_necessity_limit(Use),
    evidence_or_indication(regarding_alternative(threat, victim, perpetrator))
)) :-
    law_enforcement_remote_biometric_identification_applies(Use).

must_complete(Authority, fundamental_rights_impact_assessment(Use, before(authorisation(Use)))) :-
    law_enforcement_remote_biometric_identification_applies(Use),
    relevant_law_enforcement_authority_applies(authority(Authority, Use)).

permitted_unregistered_use(Use) :-
    law_enforcement_remote_biometric_identification_applies(Use),
    regulation_registration_exception_applies(Use).

must_register(Authority, registration(
    System,
    database_as_set_out_in_regulation,
    before(authorisation(Use))
)) :-
    law_enforcement_remote_biometric_identification_applies(Use),
    relevant_law_enforcement_authority_applies(authority(Authority, Use)),
    uses_system(Use, System),
    \+ permitted_unregistered_use(Use).

required_appropriate_reference_database(appropriateness(
    Database,
    use_case(UseCase, Use),
    Situation
)) :-
    listed_situation_use_applies(use(Use, Situation)),
    use_case_applies(use_case(Use, UseCase)),
    uses_reference_database(Use, Database),
    person_reference_database(Database).
