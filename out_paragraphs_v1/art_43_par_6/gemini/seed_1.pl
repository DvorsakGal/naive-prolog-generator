:- module(delegated_acts_conformity_assessment, [
    permitted_adopt(Actor, delegated_act(Amending)),
    must_take_into_account(Actor, factors(DelegatedAct))
]).

:- dynamic commission/1.
:- dynamic accordance_article_97/1.
:- dynamic amends/2.
:- dynamic subjects_to_conformity_assessment/2.
:- dynamic high_risk_ai_system_annex_iii_points_2_to_8/1.
:- dynamic conformity_assessment_procedure_annex_vii/1.
:- dynamic delegated_act/1.
:- dynamic assessed_effectiveness_internal_control/2.
:- dynamic assessed_availability_capacities_resources/2.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
% in order to amend Article 43(1), Article 43(2) in order to subject high-risk AI systems
% referred to in Annex III, points (2) to (8) to the conformity assessment procedure
% referred to in Annex VII or parts thereof.
permitted_adopt(Commission, delegated_act(Act)) :-
    commission(Commission),
    accordance_article_97(Act),
    amends(Act, article_43_paragraphs_1_and_2),
    subjects_to_conformity_assessment(Act, HighRiskSystem),
    high_risk_ai_system_annex_iii_points_2_to_8(HighRiskSystem),
    conformity_assessment_procedure_annex_vii(Act).

% The Commission shall adopt such delegated acts taking into account the effectiveness
% of the conformity assessment procedure based on internal control referred to in Annex VI
% in preventing or minimising the risks to health and safety and protection of fundamental rights
% posed by such systems, as well as the availability of adequate capacities and resources
% among notified bodies.
must_take_into_account(Commission, factors(Act)) :-
    commission(Commission),
    delegated_act(Act),
    assessed_effectiveness_internal_control(Commission, Act),
    assessed_availability_capacities_resources(Commission, Act).
