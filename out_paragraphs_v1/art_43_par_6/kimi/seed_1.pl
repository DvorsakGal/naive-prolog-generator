:- module(delegated_acts_amendment, [
    empowered_commission/3,
    must_adopt/2,
    purpose/2,
    considers_effectiveness/2,
    considers_adequate_capacities/2,
    high_risk_ai_system/1,
    subject_to_conformity_assessment/2,
    conformity_assessment_procedure/2,
    internal_control_procedure/1,
    notified_body/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic conformity_assessment_procedure/2.
:- dynamic internal_control_procedure/1.
:- dynamic notified_body/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
empowered_commission(commission, adopt(delegated_act), in_accordance_with(article(97))).

% Purpose of the delegated acts: amend Article 43(1) and Article 43(2)
purpose(adopt(delegated_act), amend(article(43,1))).
purpose(adopt(delegated_act), amend(article(43,2))).

% The effect of the amendment: subject certain high-risk AI systems to conformity assessment
purpose(adopt(delegated_act), subject_to_conformity_assessment(System, Procedure)) :-
    high_risk_ai_system(System),
    annex_iii_point_range(2, 8, System),
    conformity_assessment_procedure(annex_vii, Procedure).

% The Commission must adopt such delegated acts taking into account effectiveness
must_adopt(commission, delegated_act) :-
    considers_effectiveness(commission, internal_control_prevention_risk).

% The Commission must adopt such delegated acts taking into account adequate capacities
must_adopt(commission, delegated_act) :-
    considers_adequate_capacities(commission, notified_bodies).

% Definition of what effectiveness considers
considers_effectiveness(commission, internal_control_prevention_risk) :-
    internal_control_procedure(annex_vi),
    risk_to_health_safety(System),
    risk_to_fundamental_rights(System),
    high_risk_ai_system(System).

% Definition of adequate capacities among notified bodies
considers_adequate_capacities(commission, notified_bodies) :-
    notified_body(Body),
    adequate_capacity(Body),
    adequate_resources(Body).

% Helper predicates for the conditions
annex_iii_point_range(2, 8, System) :-
    high_risk_ai_system(System),
    referred_in_annex_iii(System, Point),
    Point >= 2,
    Point =< 8.

referred_in_annex_iii(System, Point) :-
    high_risk_ai_system(System),
    % This is an input predicate for the specific point reference
    fail.

% Risk predicates
risk_to_health_safety(System) :-
    high_risk_ai_system(System),
    % Input predicate for health and safety risk
    fail.

risk_to_fundamental_rights(System) :-
    high_risk_ai_system(System),
    % Input predicate for fundamental rights risk
    fail.

adequate_capacity(Body) :-
    notified_body(Body).

adequate_resources(Body) :-
    notified_body(Body).

% Parts of conformity assessment may be applied
conformity_assessment_procedure(annex_vii, parts_thereof).
conformity_assessment_procedure(annex_vii, full_procedure).

% The subject_to_conformity_assessment relation
subject_to_conformity_assessment(System, Procedure) :-
    high_risk_ai_system(System),
    annex_iii_point_range(2, 8, System),
    conformity_assessment_procedure(annex_vii, Procedure).
