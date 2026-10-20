:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    must_take_into_account/2,
    high_risk_ai_system/1,
    conformity_assessment_procedure/1,
    internal_control_procedure/1,
    notified_body/1,
    adequate_capacity_and_resources/1,
    risk_to_health_and_safety/1,
    risk_to_fundamental_rights/1,
    prevents_or_minimises/2
]).

% The Commission is empowered to adopt delegated acts
empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_systems))) :-
    high_risk_ai_system(S),
    listed_in_annex_iii(S, points(2, 8)),
    conformity_assessment_procedure(annex_vii).

empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_parts))) :-
    high_risk_ai_system(S),
    listed_in_annex_iii(S, points(2, 8)),
    conformity_assessment_procedure(annex_vii).

% The Commission shall adopt such delegated acts
must_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_systems))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_systems))),
    must_take_into_account(commission, effectiveness_of_internal_control),
    must_take_into_account(commission, availability_of_capacity_and_resources).

must_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_parts))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_parts))),
    must_take_into_account(commission, effectiveness_of_internal_control),
    must_take_into_account(commission, availability_of_capacity_and_resources).

% taking into account the effectiveness of the conformity assessment procedure based on internal control
must_take_into_account(commission, effectiveness_of_internal_control) :-
    internal_control_procedure(annex_vi),
    conformity_assessment_procedure(annex_vi),
    high_risk_ai_system(S),
    risk_to_health_and_safety(R),
    risk_to_fundamental_rights(R2),
    prevents_or_minimises(annex_vi, R),
    prevents_or_minimises(annex_vi, R2).

% taking into account the availability of adequate capacities and resources among notified bodies
must_take_into_account(commission, availability_of_capacity_and_resources) :-
    notified_body(B),
    adequate_capacity_and_resources(B).

% Predicates the text references but does not define
:- dynamic high_risk_ai_system/1.
:- dynamic listed_in_annex_iii/2.
:- dynamic conformity_assessment_procedure/1.
:- dynamic internal_control_procedure/1.
:- dynamic risk_to_health_and_safety/1.
:- dynamic risk_to_fundamental_rights/1.
:- dynamic prevents_or_minimises/2.
:- dynamic notified_body/1.
:- dynamic adequate_capacity_and_resources/1.
