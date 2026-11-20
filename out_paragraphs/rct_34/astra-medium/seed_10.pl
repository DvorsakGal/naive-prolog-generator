:- module(responsible_biometric_identification, [
    exhaustively_listed/1,
    narrowly_defined/1,
    real_time_remote_biometric_identification_use_applies/1,
    public_real_time_remote_biometric_identification_use_applies/1,
    law_enforcement_identification_use_applies/1,
    listed_situation_use_applies/1,
    objective_responsible_use/1,
    objective_proportionate_use/1,
    required_consideration/1,
    required_exclusive_purpose/1,
    required_strict_necessity/1,
    required_authorisation_condition/1,
    must_complete/2,
    must_register/2,
    permitted_unregistered_authorisation/1,
    required_appropriateness/1
]).

:- dynamic uses_system/2.
:- dynamic real_time/1.
:- dynamic remote_biometric_identification_system_applies/1.
:- dynamic publicly_accessible_space_applies/1.
:- dynamic occurs_in_space/2.
:- dynamic law_enforcement_purpose_applies/1.
:- dynamic mentioned_situation_applies/1.
:- dynamic occurs_in_situation/2.
:- dynamic has_relevant_law_enforcement_authority/2.
:- dynamic registration_derogation_under_this_regulation_applies/1.
:- dynamic has_use_case/2.
:- dynamic uses_reference_database_of_person/2.

exhaustively_listed(Situation) :-
    mentioned_situation_applies(Situation).

narrowly_defined(Situation) :-
    mentioned_situation_applies(Situation).

real_time_remote_biometric_identification_use_applies(Use) :-
    uses_system(Use, System),
    real_time(System),
    remote_biometric_identification_system_applies(System).

public_real_time_remote_biometric_identification_use_applies(Use) :-
    real_time_remote_biometric_identification_use_applies(Use),
    occurs_in_space(Use, Space),
    publicly_accessible_space_applies(Space).

law_enforcement_identification_use_applies(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    law_enforcement_purpose_applies(Use).

listed_situation_use_applies(Use) :-
    law_enforcement_identification_use_applies(Use),
    occurs_in_situation(Use, Situation),
    mentioned_situation_applies(Situation).

objective_responsible_use(Use) :-
    listed_situation_use_applies(Use).

objective_proportionate_use(Use) :-
    listed_situation_use_applies(Use).

required_consideration(
    nature(situation_giving_rise_to(request_for(Use)))
) :-
    listed_situation_use_applies(Use).

required_consideration(
    consequence(
        Use,
        right_and_freedom_of(all_person_concerned(Use))
    )
) :-
    listed_situation_use_applies(Use).

required_consideration(safeguard_provided_for(Use)) :-
    listed_situation_use_applies(Use).

required_consideration(condition_provided_for(Use)) :-
    listed_situation_use_applies(Use).

required_exclusive_purpose(
    deployment(
        Use,
        confirm_identity(specifically_targeted_individual(Use))
    )
) :-
    law_enforcement_identification_use_applies(Use).

required_strict_necessity(period_of_time(Use)) :-
    law_enforcement_identification_use_applies(Use).

required_strict_necessity(geographic_scope(Use)) :-
    law_enforcement_identification_use_applies(Use).

required_strict_necessity(personal_scope(Use)) :-
    law_enforcement_identification_use_applies(Use).

required_consideration(
    scope_limitation(Use, evidence_or_indication_regarding(threat))
) :-
    law_enforcement_identification_use_applies(Use).

required_consideration(
    scope_limitation(Use, evidence_or_indication_regarding(victim))
) :-
    law_enforcement_identification_use_applies(Use).

required_consideration(
    scope_limitation(Use, evidence_or_indication_regarding(perpetrator))
) :-
    law_enforcement_identification_use_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_completion_by(
            Authority,
            fundamental_rights_impact_assessment(Use)
        )
    )
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    has_relevant_law_enforcement_authority(Use, Authority).

must_complete(
    Authority,
    before_authorisation(Use, fundamental_rights_impact_assessment(Use))
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    has_relevant_law_enforcement_authority(Use, Authority).

permitted_unregistered_authorisation(Use) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    registration_derogation_under_this_regulation_applies(Use).

required_authorisation_condition(
    authorisation(
        Use,
        prior_registration_by(
            Authority,
            System,
            database_as_set_out_in_this_regulation
        )
    )
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    has_relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_unregistered_authorisation(Use).

must_register(
    Authority,
    before_authorisation(
        Use,
        registration(System, database_as_set_out_in_this_regulation)
    )
) :-
    public_real_time_remote_biometric_identification_use_applies(Use),
    has_relevant_law_enforcement_authority(Use, Authority),
    uses_system(Use, System),
    \+ permitted_unregistered_authorisation(Use).

required_appropriateness(
    reference_database_of_person(Database, use_case(UseCase, Situation))
) :-
    listed_situation_use_applies(Use),
    occurs_in_situation(Use, Situation),
    mentioned_situation_applies(Situation),
    has_use_case(Use, UseCase),
    uses_reference_database_of_person(Use, Database).
