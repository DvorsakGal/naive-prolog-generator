:- module(remote_biometric_identification_use, [
    public_real_time_identification_applies/1,
    law_enforcement_identification_applies/1,
    listed_situation_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_deployment_purpose/1,
    required_strict_necessity/1,
    required_authorisation_condition/1,
    exempt_registration/1,
    required_appropriate_reference_database/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system_applies/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic concerns_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic has_relevant_law_enforcement_authority/2.
:- dynamic registration_exception_under_regulation_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic concerns_use_case/2.

public_real_time_identification_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system_applies(System),
    publicly_accessible_space_applies(Use).

law_enforcement_identification_applies(Use) :-
    public_real_time_identification_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_applies(Use) :-
    public_real_time_identification_applies(Use),
    concerns_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(Use) :-
    listed_situation_applies(Use).

objective_proportionate_use(Use) :-
    listed_situation_applies(Use).

required_consideration(nature_of_situation_giving_rise_to_request(Use, Situation)) :-
    listed_situation_applies(Use),
    concerns_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

required_consideration(consequence(Use, right_of_every_person_concerned)) :-
    listed_situation_applies(Use).

required_consideration(consequence(Use, freedom_of_every_person_concerned)) :-
    listed_situation_applies(Use).

required_consideration(safeguard_provided_for(Use)) :-
    listed_situation_applies(Use).

required_consideration(condition_provided_for(Use)) :-
    listed_situation_applies(Use).

required_deployment_purpose(
    exclusive_purpose(Use, confirm_identity(specifically_targeted_individual(Use)))
) :-
    law_enforcement_identification_applies(Use).

required_strict_necessity(period_of_time(Use)) :-
    law_enforcement_identification_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    law_enforcement_identification_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    law_enforcement_identification_applies(Use).

required_consideration(
    scope_limitation(Use, evidence_or_indication_regarding(threat))
) :-
    law_enforcement_identification_applies(Use).

required_consideration(
    scope_limitation(Use, evidence_or_indication_regarding(victim))
) :-
    law_enforcement_identification_applies(Use).

required_consideration(
    scope_limitation(Use, evidence_or_indication_regarding(perpetrator))
) :-
    law_enforcement_identification_applies(Use).

required_authorisation_condition(
    authorisation(Use, completed(Authority, fundamental_rights_impact_assessment(Use)))
) :-
    public_real_time_identification_applies(Use),
    has_relevant_law_enforcement_authority(Use, Authority).

exempt_registration(Use) :-
    public_real_time_identification_applies(Use),
    registration_exception_under_regulation_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        registered(
            Authority,
            System,
            database_as_set_out_in_regulation,
            in_accordance_with_regulation
        )
    )
) :-
    public_real_time_identification_applies(Use),
    uses_system(Use, System),
    has_relevant_law_enforcement_authority(Use, Authority),
    \+ exempt_registration(Use).

required_appropriate_reference_database(
    reference_database_of_person(
        Database,
        use_case(UseCase, situation(Situation))
    )
) :-
    listed_situation_applies(Use),
    concerns_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation),
    concerns_use_case(Use, UseCase),
    uses_reference_database(Use, Database).
