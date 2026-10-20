:- module(delegated_acts_conformity_assessment, [
    permitted_adopt_delegated_act/2,
    must_take_into_account/2
]).

:- dynamic commission/1.
:- dynamic delegated_act/1.
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point_2_to_8/1.
:- dynamic accords_with_article_97/1.
:- dynamic amends_article_43_1_and_2/1.
:- dynamic subjects_to_annex_vii/1.
:- dynamic effectiveness_of_internal_control/1.
:- dynamic availability_of_notified_body_capacities/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
% in order to amend Article 43(1), Article 43(2) in order to subject high-risk AI systems
% referred to in Annex III, points (2) to (8) to the conformity assessment procedure
% referred to in Annex VII or parts thereof.
permitted_adopt_delegated_act(Commission, Act) :-
    commission(Commission),
    delegated_act(Act),
    accords_with_article_97(Act),
    amends_article_43_1_and_2(Act),
    subjects_to_annex_vii(Act).

% High-risk AI systems referred to in Annex III, points (2) to (8) subject to the amendment
subjects_to_annex_vii(Act) :-
    high_risk_ai_system(System),
    annex_iii_point_2_to_8(System).

% The Commission shall adopt such delegated acts taking into account the effectiveness
% of the conformity assessment procedure based on internal control referred to in Annex VI
% in preventing or minimising the risks to health and safety and protection of fundamental
% rights posed by such systems, as well as the availability of adequate capacities and
% resources among notified bodies.
must_take_into_account(Commission, adoption_criteria(Act)) :-
    commission(Commission),
    delegated_act(Act),
    subjects_to_annex_vii(Act),
    effectiveness_of_internal_control(risks(health_and_safety, fundamental_rights)),
    availability_of_notified_body_capacities(adequate_capacities_and_resources).
