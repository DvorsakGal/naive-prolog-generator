:- module(real_time_biometric_identification_use, [
    must_take_into_account/2,
    permitted_deployment_purpose/1,
    must_limit/2,
    permitted_real_time_remote_biometric_identification/1,
    registration_satisfied/1,
    required_appropriate_reference_database/1,
    objective_responsible_proportionate_use/1
]).
:- dynamic real_time_remote_biometric_identification_system/1.
:- dynamic used_in_publicly_accessible_space/1.
:- dynamic used_for_law_enforcement/1.
:- dynamic listed_situation/2.
:- dynamic deployment/2.
:- dynamic law_enforcement_public_authority/1.
:- dynamic uses_system/2.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic registration_exempted_by_regulation/1.
:- dynamic reference_database/2.
:- dynamic use_case/2.

registration_satisfied(XS) :-
    registration_exempted_by_regulation(XS).

must_take_into_account(XAuthority, safeguards_and_conditions(XS)) :-
    uses_system(XAuthority, XS),
    listed_situation(XS, _Situation).

registration_satisfied(XS) :-
    uses_system(XAuthority, XS),
    registered_in_database(XAuthority, XS).

must_limit(XAuthority, strictly_necessary(personal_scope(XS), evidence(threat, victim, perpetrator))) :-
    uses_system(XAuthority, XS),
    covered_use(XS).

permitted_deployment_purpose(deployment(XS, confirm_identity(XP))) :-
    covered_use(XS),
    deployment(XS, confirm_identity(XP)).

must_take_into_account(XAuthority, nature_of_situation(XSituation)) :-
    uses_system(XAuthority, XS),
    listed_situation(XS, XSituation).

must_limit(XAuthority, strictly_necessary(time_period(XS), evidence(threat, victim, perpetrator))) :-
    uses_system(XAuthority, XS),
    covered_use(XS).

permitted_real_time_remote_biometric_identification(XS) :-
    covered_use(XS),
    uses_system(XAuthority, XS),
    law_enforcement_public_authority(XAuthority),
    completed_fundamental_rights_impact_assessment(XAuthority, XS),
    registration_satisfied(XS).

required_appropriate_reference_database(reference_database(XD, use_case(XU))) :-
    reference_database(XS, XD),
    use_case(XS, XU),
    listed_situation(XS, _Situation).

must_take_into_account(XAuthority, consequences_for_rights_and_freedoms(XS)) :-
    uses_system(XAuthority, XS),
    listed_situation(XS, _Situation).

objective_responsible_proportionate_use(XS) :-
    covered_use(XS).

must_limit(XAuthority, strictly_necessary(geographic_scope(XS), evidence(threat, victim, perpetrator))) :-
    uses_system(XAuthority, XS),
    covered_use(XS).

covered_use(XS) :-
    real_time_remote_biometric_identification_system(XS),
    used_in_publicly_accessible_space(XS),
    used_for_law_enforcement(XS).
