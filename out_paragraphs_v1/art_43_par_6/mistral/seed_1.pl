:- module(commission_delegated_acts, [
    empowered_adopt_delegated_act/2,
    must_adopt_delegated_act/1,
    purpose_amend_articles/2,
    purpose_subject_to_conformity_assessment/2,
    consideration_effectiveness/1,
    consideration_availability/1,
    high_risk_ai_system/1,
    conformity_assessment_procedure/1,
    notified_body/1
]).

% Input predicates about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic conformity_assessment_procedure/1.
:- dynamic notified_body/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
empowered_adopt_delegated_act(commission, article(97)).

% Purpose: to amend Article 43(1) and Article 43(2)
purpose_amend_articles(commission, article('43', 1)).
purpose_amend_articles(commission, article('43', 2)).

% Purpose: to subject high-risk AI systems referred to in Annex III, points (2) to (8)
% to the conformity assessment procedure referred to in Annex VII or parts thereof
purpose_subject_to_conformity_assessment(commission, annex_iii_high_risk_ai_system(S)) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    between(2, 8, P).

% The Commission shall adopt such delegated acts
must_adopt_delegated_act(commission).

% Taking into account the effectiveness of the conformity assessment procedure
% based on internal control referred to in Annex VI in preventing or minimising
% the risks to health and safety and protection of fundamental rights posed by such systems
consideration_effectiveness(commission) :-
    conformity_assessment_procedure(annex_vi_internal_control),
    prevents_or_minimises_risks(annex_vi_internal_control, risks(health_safety, fundamental_rights)).

% Taking into account the availability of adequate capacities and resources among notified bodies
consideration_availability(commission) :-
    notified_body(NB),
    has_adequate_capacities(NB),
    has_adequate_resources(NB).

% Helper: annex III point membership (input)
:- dynamic annex_iii_point/2.

% Helper: risk prevention (derived from text)
prevents_or_minimises_risks(Procedure, Risks) :-
    conformity_assessment_procedure(Procedure),
    risks(Risk1, Risk2),
    risk(health_safety, Risk1),
    risk(fundamental_rights, Risk2).

% Helper: risk types
risk(health_safety, health_and_safety).
risk(fundamental_rights, protection_of_fundamental_rights).

% Helper: notified body capacities and resources (input)
:- dynamic has_adequate_capacities/1.
:- dynamic has_adequate_resources/1.
