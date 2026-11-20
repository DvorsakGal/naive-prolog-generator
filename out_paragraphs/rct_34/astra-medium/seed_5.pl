:- module(remote_biometric_identification_use, [
    exhaustively_listed/1,
    narrowly_defined/1,
    public_real_time_remote_biometric_identification_use_applies/1,
    law_enforcement_identification_use_applies/1,
    exceptional_identification_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_identity_confirmation_only/1,
    required_strict_necessity_limit/1,
    required_authorisation_condition/1,
    permitted_registration_exception/1,
    required_appropriate_reference_database/1
]).

:- dynamic exceptional_situation_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system_applies/1.
:- dynamic occurs_in_space/2.
:- dynamic publicly_accessible/1.
:- dynamic has_purpose/2.
:- dynamic relevant_law_enforcement_authority_applies/1.
:- dynamic responsible_for_use/2.
:- dynamic regulation_provides_registration_exception_applies/1.
:- dynamic uses_reference_database/2.
:- dynamic has_use_case/2.

exhaustively_listed(Situation) :-
    exceptional_situation_applies(Situation).

narrowly_defined(Situation) :-
    exceptional_situation_applies(Situation).

public_real_time_remote_biometric_identification_use_applies(Use) :-
    uses_system(Use, System),
    remote_biometric_identification_system_applies(System),
    real_time(System),
    occurs_in_space(Use, Space),
    publicly_accessible(Space).

law_enforcement_identification_use_applies(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    has_purpose(Use, law_enforcement).

exceptional_identification_use_applies(Use) :-
    law_enforcement_identification_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exceptional_situation_applies(Situation).

objective_responsible_use(Use) :-
    exceptional_identification_use_applies(Use).

objective_proportionate_use(Use) :-
    exceptional_identification_use_applies(Use).

required_consideration(
    consideration(Use, nature_of_situation_giving_rise_to_request(Situation))
) :-
    exceptional_identification_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exceptional_situation_applies(Situation).

required_consideration(
    consideration(Use, consequence_for_right_and_freedom(all_person_concerned(Use)))
) :-
    exceptional_identification_use_applies(Use).

required_consideration(
    consideration(Use, safeguard_provided_for_use(Use))
) :-
    exceptional_identification_use_applies(Use).

required_consideration(
    consideration(Use, condition_provided_for_use(Use))
) :-
    exceptional_identification_use_applies(Use).

required_identity_confirmation_only(
    deployment(Use, confirm_identity(specifically_targeted_individual(Use)))
) :-
    law_enforcement_identification_use_applies(Use).

required_strict_necessity_limit(
    limitation(Use, period_of_time)
) :-
    law_enforcement_identification_use_applies(Use).

required_strict_necessity_limit(
    limitation(Use, geographic_scope)
) :-
    law_enforcement_identification_use_applies(Use).

required_strict_necessity_limit(
    limitation(Use, personal_scope)
) :-
    law_enforcement_identification_use_applies(Use).

required_consideration(
    strict_necessity_determination(Use, evidence_or_indication_regarding(threat))
) :-
    law_enforcement_identification_use_applies(Use).

required_consideration(
    strict_necessity_determination(Use, evidence_or_indication_regarding(victim))
) :-
    law_enforcement_identification_use_applies(Use).

required_consideration(
    strict_necessity_determination(Use, evidence_or_indication_regarding(perpetrator))
) :-
    law_enforcement_identification_use_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_completion(Authority, fundamental_rights_impact_assessment(Use))
    )
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    relevant_law_enforcement_authority_applies(Authority),
    responsible_for_use(Authority, Use).

permitted_registration_exception(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    regulation_provides_registration_exception_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_registration(
            Authority,
            System,
            database_as_set_out_in_regulation
        )
    )
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    relevant_law_enforcement_authority_applies(Authority),
    responsible_for_use(Authority, Use),
    uses_system(Use, System),
    \+ permitted_registration_exception(Use).

required_appropriate_reference_database(
    reference_database_of_person(Database, use_case(UseCase, Situation))
) :-
    exceptional_identification_use_applies(Use),
    occurs_in_situation(Use, Situation),
    exceptional_situation_applies(Situation),
    has_use_case(Use, UseCase),
    uses_reference_database(Use, Database).
