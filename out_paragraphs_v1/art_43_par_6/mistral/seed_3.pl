:- module(commission_delegated_acts, [
    empowered_adopt_delegated_act/1,
    must_adopt_delegated_act/1,
    purpose_amend_articles/2,
    must_take_into_account_effectiveness/1,
    must_take_into_account_availability/1,
    high_risk_ai_system_annex_iii/1,
    conformity_assessment_procedure_annex_vii/1,
    conformity_assessment_procedure_annex_vi/1,
    notified_body/1
]).

% Input predicates about the world the text does not settle
:- dynamic high_risk_ai_system_annex_iii/1.
:- dynamic conformity_assessment_procedure_annex_vii/1.
:- dynamic conformity_assessment_procedure_annex_vi/1.
:- dynamic notified_body/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
empowered_adopt_delegated_act(commission) :-
    article(97).

article(97).

% Purpose: to amend Article 43(1) and Article 43(2)
purpose_amend_articles(commission, amend(article('43'(1)))) :-
    empowered_adopt_delegated_act(commission).
purpose_amend_articles(commission, amend(article('43'(2)))) :-
    empowered_adopt_delegated_act(commission).

% The amendment subjects high-risk AI systems referred to in Annex III, points (2) to (8)
% to the conformity assessment procedure referred to in Annex VII or parts thereof
subject_to_conformity_assessment(commission, S) :-
    empowered_adopt_delegated_act(commission),
    high_risk_ai_system_annex_iii(S),
    annex_iii_point(S, P),
    between(2, 8, P),
    conformity_assessment_procedure_annex_vii(C),
    purpose_amend_articles(commission, amend(article('43'(1)))),
    purpose_amend_articles(commission, amend(article('43'(2)))).

% Helper: a system is referred to in Annex III at a specific point
annex_iii_point(S, P) :-
    high_risk_ai_system_annex_iii(S),
    referred_in_annex_iii(S, P).

referred_in_annex_iii(S, P) :-
    high_risk_ai_system_annex_iii(S),
    annex_iii_points(P).

annex_iii_points(2).
annex_iii_points(3).
annex_iii_points(4).
annex_iii_points(5).
annex_iii_points(6).
annex_iii_points(7).
annex_iii_points(8).

% The Commission shall adopt such delegated acts
must_adopt_delegated_act(commission) :-
    empowered_adopt_delegated_act(commission).

% Taking into account: effectiveness of conformity assessment procedure based on internal control
% referred to in Annex VI in preventing or minimising risks to health and safety and protection
% of fundamental rights posed by such systems
must_take_into_account_effectiveness(commission) :-
    must_adopt_delegated_act(commission),
    conformity_assessment_procedure_annex_vi(C),
    based_on_internal_control(C),
    effective_in_preventing_or_minimising_risks(C).

based_on_internal_control(C) :-
    conformity_assessment_procedure_annex_vi(C).

effective_in_preventing_or_minimising_risks(C) :-
    conformity_assessment_procedure_annex_vi(C),
    prevents_or_minimises_risks(C, health_and_safety),
    prevents_or_minimises_risks(C, fundamental_rights).

prevents_or_minimises_risks(C, health_and_safety) :-
    conformity_assessment_procedure_annex_vi(C).
prevents_or_minimises_risks(C, fundamental_rights) :-
    conformity_assessment_procedure_annex_vi(C).

% Taking into account: availability of adequate capacities and resources among notified bodies
must_take_into_account_availability(commission) :-
    must_adopt_delegated_act(commission),
    notified_body(N),
    has_adequate_capacities(N),
    has_adequate_resources(N).

has_adequate_capacities(N) :-
    notified_body(N).
has_adequate_resources(N) :-
    notified_body(N).

% Combined obligation: the Commission shall adopt delegated acts taking into account both factors
must_adopt_delegated_act_taking_into_account(commission) :-
    must_adopt_delegated_act(commission),
    must_take_into_account_effectiveness(commission),
    must_take_into_account_availability(commission).
