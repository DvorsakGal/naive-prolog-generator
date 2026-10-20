:- module(commission_delegated_acts, [
    empowered_adopt_delegated_acts/2,
    must_adopt_delegated_acts/1,
    purpose_amend_articles/2,
    purpose_subject_to_conformity_assessment/2,
    condition_effectiveness_considered/2,
    condition_availability_considered/2,
    high_risk_ai_system_annex_iii/1,
    conformity_assessment_procedure_annex_vii/1,
    conformity_assessment_based_on_internal_control_annex_vi/1,
    notified_body/1
]).

% The Commission is empowered to adopt delegated acts in accordance with Article 97
empowered_adopt_delegated_acts(commission, delegated_act(article_97)).

% Purpose: to amend Article 43(1) and Article 43(2)
purpose_amend_articles(delegated_act(article_97), article_43(1)).
purpose_amend_articles(delegated_act(article_97), article_43(2)).

% Purpose: to subject high-risk AI systems referred to in Annex III, points (2) to (8)
% to the conformity assessment procedure referred to in Annex VII or parts thereof
purpose_subject_to_conformity_assessment(delegated_act(article_97), high_risk_ai_system(S)) :-
    high_risk_ai_system_annex_iii(S),
    annex_iii_point(S, P),
    between(2, 8, P).

purpose_subject_to_conformity_assessment(delegated_act(article_97), conformity_assessment_procedure(P)) :-
    conformity_assessment_procedure_annex_vii(P).

% The Commission shall adopt such delegated acts
must_adopt_delegated_acts(commission, delegated_act(article_97)) :-
    condition_effectiveness_considered(commission, delegated_act(article_97)),
    condition_availability_considered(commission, delegated_act(article_97)).

% Taking into account the effectiveness of the conformity assessment procedure
% based on internal control referred to in Annex VI in preventing or minimising
% the risks to health and safety and protection of fundamental rights posed by such systems
condition_effectiveness_considered(commission, delegated_act(article_97)) :-
    conformity_assessment_based_on_internal_control_annex_vi(Procedure),
    considers_effectiveness(commission, Procedure, risk(health_and_safety)),
    considers_effectiveness(commission, Procedure, risk(protection_of_fundamental_rights)).

% Taking into account the availability of adequate capacities and resources among notified bodies
condition_availability_considered(commission, delegated_act(article_97)) :-
    notified_body(Body),
    has_adequate_capacities(Body),
    has_adequate_resources(Body).

% Input predicates: facts about the world the text does not settle
:- dynamic high_risk_ai_system_annex_iii/1.
:- dynamic annex_iii_point/2.
:- dynamic conformity_assessment_procedure_annex_vii/1.
:- dynamic conformity_assessment_based_on_internal_control_annex_vi/1.
:- dynamic notified_body/1.
:- dynamic considers_effectiveness/3.
:- dynamic has_adequate_capacities/1.
:- dynamic has_adequate_resources/1.
