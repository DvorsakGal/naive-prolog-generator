:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    must_take_into_account/2,
    high_risk_ai_system/1,
    subject_to_conformity_assessment/2,
    conformity_assessment_procedure/1,
    internal_control_procedure/1,
    effectiveness_in_preventing_risks/2,
    adequate_capacity_available/1
]).

% The Commission is empowered to adopt delegated acts
empowered_to_adopt(commission, delegated_act(amend(article(43, 1)))).
empowered_to_adopt(commission, delegated_act(amend(article(43, 2)))).

% Purpose of the delegated acts: subject high-risk AI systems in Annex III points 2-8
% to the conformity assessment procedure in Annex VII or parts thereof
subject_to_conformity_assessment(System, annex_vii) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    between(2, 8, Point).

subject_to_conformity_assessment(System, parts_of(annex_vii)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    between(2, 8, Point).

% The Commission shall adopt such delegated acts
must_adopt(commission, delegated_act(amend(article(43, 1)))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 1)))).

must_adopt(commission, delegated_act(amend(article(43, 2)))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 2)))).

% Taking into account the effectiveness of the internal control procedure
must_take_into_account(commission, effectiveness_of(conformity_assessment_procedure(annex_vi))) :-
    must_adopt(commission, _).

% Effectiveness in preventing or minimising risks to health, safety, and fundamental rights
effectiveness_in_preventing_risks(conformity_assessment_procedure(annex_vi), risks(health_and_safety, fundamental_rights)).

% Availability of adequate capacities and resources among notified bodies
adequate_capacity_available(notified_bodies).

% Supporting predicates
conformity_assessment_procedure(annex_vi).
conformity_assessment_procedure(annex_vii).
internal_control_procedure(annex_vi).

% Dynamic predicates for facts not settled by this text
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
