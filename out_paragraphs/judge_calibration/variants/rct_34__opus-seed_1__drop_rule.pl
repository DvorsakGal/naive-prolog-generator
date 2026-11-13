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
:- dynamic law_enforcement_authority/1.
:- dynamic uses_system/2.
:- dynamic completed_fundamental_rights_impact_assessment/2.
:- dynamic registered_in_database/2.
:- dynamic registration_exempted_by_regulation/1.
:- dynamic reference_database/2.
:- dynamic use_case/2.

objective_responsible_proportionate_use(S) :-
    covered_use(S).

must_take_into_account(Authority, nature_of_situation(Situation)) :-
    uses_system(Authority, S),
    listed_situation(S, Situation).

must_take_into_account(Authority, consequences_for_rights_and_freedoms(S)) :-
    uses_system(Authority, S),
    listed_situation(S, _Situation).

must_take_into_account(Authority, safeguards_and_conditions(S)) :-
    uses_system(Authority, S),
    listed_situation(S, _Situation).

permitted_deployment_purpose(deployment(S, confirm_identity(P))) :-
    covered_use(S),
    deployment(S, confirm_identity(P)).

must_limit(Authority, strictly_necessary(time_period(S), evidence(threat, victim, perpetrator))) :-
    uses_system(Authority, S),
    covered_use(S).

must_limit(Authority, strictly_necessary(geographic_scope(S), evidence(threat, victim, perpetrator))) :-
    uses_system(Authority, S),
    covered_use(S).

must_limit(Authority, strictly_necessary(personal_scope(S), evidence(threat, victim, perpetrator))) :-
    uses_system(Authority, S),
    covered_use(S).

registration_satisfied(S) :-
    uses_system(Authority, S),
    registered_in_database(Authority, S).

registration_satisfied(S) :-
    registration_exempted_by_regulation(S).

permitted_real_time_remote_biometric_identification(S) :-
    covered_use(S),
    uses_system(Authority, S),
    law_enforcement_authority(Authority),
    completed_fundamental_rights_impact_assessment(Authority, S),
    registration_satisfied(S).

required_appropriate_reference_database(reference_database(D, use_case(U))) :-
    reference_database(S, D),
    use_case(S, U),
    listed_situation(S, _Situation).
