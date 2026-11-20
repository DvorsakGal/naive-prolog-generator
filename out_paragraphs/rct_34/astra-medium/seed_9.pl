:- module(remote_biometric_identification_use, [
    real_time_remote_biometric_identification_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_exclusive_purpose/1,
    required_strict_necessity_limit/1,
    required_authorisation_condition/1,
    must_complete/2,
    must_register/2,
    exempt_registration/1,
    required_appropriate_reference_database/1
]).

:- dynamic deploys_system/2.
:- dynamic remote_biometric_identification_system_applies/1.
:- dynamic real_time/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic concerns_situation/2.
:- dynamic exhaustively_listed/1.
:- dynamic narrowly_defined/1.
:- dynamic concerns_person/2.
:- dynamic authorises_use/2.
:- dynamic law_enforcement_authority_applies/1.
:- dynamic provides_registration_exception/2.
:- dynamic uses_reference_database/2.

real_time_remote_biometric_identification_use_applies(Use) :-
    deploys_system(Use, System),
    remote_biometric_identification_system_applies(System),
    real_time(System),
    publicly_accessible_space_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_use_applies(Use) :-
    real_time_remote_biometric_identification_use_applies(Use),
    concerns_situation(Use, Situation),
    exhaustively_listed(Situation),
    narrowly_defined(Situation).

objective_responsible_use(situation_element_consideration_requirement).
objective_proportionate_use(situation_element_consideration_requirement).

required_consideration(consideration(Use, nature(Situation))) :-
    listed_situation_use_applies(Use),
    concerns_situation(Use, Situation).

required_consideration(
    consideration(Use, consequence_for(right_and_freedom(Person)))
) :-
    listed_situation_use_applies(Use),
    concerns_person(Use, Person).

required_consideration(consideration(Use, safeguard_provided_for(Use))) :-
    listed_situation_use_applies(Use).

required_consideration(consideration(Use, condition_provided_for(Use))) :-
    listed_situation_use_applies(Use).

required_exclusive_purpose(
    deployment(Use, confirm_identity(specifically_targeted_individual(Use)))
) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_strict_necessity_limit(limit(Use, period_of_time)) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_strict_necessity_limit(limit(Use, geographic_scope)) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_strict_necessity_limit(limit(Use, personal_scope)) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_consideration(
    necessity_limit_assessment(Use, evidence_or_indication_regarding(threat))
) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_consideration(
    necessity_limit_assessment(Use, evidence_or_indication_regarding(victim))
) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_consideration(
    necessity_limit_assessment(Use, evidence_or_indication_regarding(perpetrator))
) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_completion(
            relevant_law_enforcement_authority(Use),
            fundamental_rights_impact_assessment(Use)
        )
    )
) :-
    real_time_remote_biometric_identification_use_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_registration(
            relevant_law_enforcement_authority(Use),
            System,
            database_as_set_out_in(this_regulation)
        )
    )
) :-
    real_time_remote_biometric_identification_use_applies(Use),
    deploys_system(Use, System),
    \+ exempt_registration(registration(Use, System)).

must_complete(
    Authority,
    fundamental_rights_impact_assessment(Use, before(authorisation(Use)))
) :-
    real_time_remote_biometric_identification_use_applies(Use),
    law_enforcement_authority_applies(Authority),
    authorises_use(Authority, Use).

must_register(
    Authority,
    registration(
        System,
        database_as_set_out_in(this_regulation),
        before(authorisation(Use))
    )
) :-
    real_time_remote_biometric_identification_use_applies(Use),
    law_enforcement_authority_applies(Authority),
    authorises_use(Authority, Use),
    deploys_system(Use, System),
    \+ exempt_registration(registration(Use, System)).

exempt_registration(registration(Use, System)) :-
    provides_registration_exception(
        this_regulation,
        registration(Use, System)
    ).

required_appropriate_reference_database(
    reference_database_of_person(Database, use_case(Use), situation(Situation))
) :-
    listed_situation_use_applies(Use),
    concerns_situation(Use, Situation),
    uses_reference_database(Use, Database).
