:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    amendment_target/2,
    subject_to_procedure/2,
    conformity_assessment_procedure/1,
    high_risk_ai_system/1,
    point_in_annex_iii/2,
    effectiveness_consideration/1,
    capacity_consideration/1,
    internal_control_procedure/1,
    risk_to_health_and_safety/1,
    risk_to_fundamental_rights/1,
    notified_body/1,
    adequate_capacity/1,
    adequate_resources/1
]).

:- dynamic high_risk_ai_system/1, point_in_annex_iii/2, notified_body/1, adequate_capacity/1, adequate_resources/1.

% Empowerment to adopt delegated acts
empowered_to_adopt(commission, delegated_act(amend_article_43(1))) :-
    in_accordance_with(article_97).

empowered_to_adopt(commission, delegated_act(amend_article_43(2))) :-
    in_accordance_with(article_97).

% Purpose of amendment to Article 43(2)
amendment_target(amend_article_43(2), subject_to_procedure(System, procedure(annex_vii))) :-
    high_risk_ai_system(System),
    point_in_annex_iii(System, Point),
    between(2, 8, Point).

amendment_target(amend_article_43(2), subject_to_procedure(System, parts(procedure(annex_vii)))) :-
    high_risk_ai_system(System),
    point_in_annex_iii(System, Point),
    between(2, 8, Point).

% Duty to adopt delegated acts with considerations
must_adopt(commission, delegated_act(Amendment)) :-
    empowered_to_adopt(commission, delegated_act(Amendment)),
    effectiveness_consideration(Amendment),
    capacity_consideration(Amendment).

% Effectiveness consideration
effectiveness_consideration(Amendment) :-
    amendment_target(Amendment, subject_to_procedure(System, _)),
    internal_control_procedure(procedure(annex_vi)),
    effectiveness_in_preventing_risk(procedure(annex_vi), risk_to_health_and_safety(System)),
    effectiveness_in_minimising_risk(procedure(annex_vi), risk_to_health_and_safety(System)),
    effectiveness_in_preventing_risk(procedure(annex_vi), risk_to_fundamental_rights(System)),
    effectiveness_in_minimising_risk(procedure(annex_vi), risk_to_fundamental_rights(System)).

% Capacity consideration
capacity_consideration(Amendment) :-
    amendment_target(Amendment, subject_to_procedure(System, _)),
    notified_body(Body),
    adequate_capacity(Body),
    adequate_resources(Body).

% Auxiliary predicates
in_accordance_with(article_97).

conformity_assessment_procedure(procedure(annex_vii)).

internal_control_procedure(procedure(annex_vi)).

effectiveness_in_preventing_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_health_and_safety(Risk).

effectiveness_in_preventing_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_fundamental_rights(Risk).

effectiveness_in_minimising_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_health_and_safety(Risk).

effectiveness_in_minimising_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_fundamental_rights(Risk).

risk_to_health_and_safety(System) :-
    high_risk_ai_system(System).

risk_to_fundamental_rights(System) :-
    high_risk_ai_system(System).

between(Low, High, Value) :-
    Low =< Value,
    Value =< High.
