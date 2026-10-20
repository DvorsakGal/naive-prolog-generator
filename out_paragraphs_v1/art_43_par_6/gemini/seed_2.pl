:- module(delegated_acts_conformity_assessment, [
    permitted_adopt(Actor, delegated_act(Amending)),
    must_take_into_account(Actor, factors(DelegatedAct, Factors))
]).

:- dynamic commission/1.
:- dynamic conforms_with_article_97/1.
:- dynamic high_risk_ai_system_annex_iii_points_2_to_8/1.
:- dynamic conformity_assessment_procedure_annex_vii/1.
:- dynamic part_of_conformity_assessment_procedure_annex_vii/1.
:- dynamic effectiveness_of_internal_control_annex_vi/1.
:- dynamic availability_of_adequate_capacities_and_resources/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
% in order to amend Article 43(1), Article 43(2) in order to subject high-risk AI systems
% referred to in Annex III, points (2) to (8) to the conformity assessment procedure
% referred to in Annex VII or parts thereof.
permitted_adopt(Commission, delegated_act(amend(article_43_1_and_2, subject_to(System, Procedure)))) :-
    commission(Commission),
    conforms_with_article_97(delegated_act(amend(article_43_1_and_2, subject_to(System, Procedure)))),
    high_risk_ai_system_annex_iii_points_2_to_8(System),
    (   conformity_assessment_procedure_annex_vii(Procedure)
    ;   part_of_conformity_assessment_procedure_annex_vii(Procedure)
    ).

% The Commission shall adopt such delegated acts taking into account the effectiveness
% of the conformity assessment procedure based on internal control referred to in Annex VI
% in preventing or minimising the risks to health and safety and protection of fundamental rights
% posed by such systems, as well as the availability of adequate capacities and resources among
% notified bodies.
must_take_into_account(Commission, factors(delegated_act(amend(article_43_1_and_2, subject_to(System, Procedure))), [
        effectiveness_internal_control(risks_to_health_safety_and_fundamental_rights(System)),
        capacities_and_resources(notified_bodies)
    ])) :-
    commission(Commission),
    permitted_adopt(Commission, delegated_act(amend(article_43_1_and_2, subject_to(System, Procedure)))),
    effectiveness_of_internal_control_annex_vi(risks_to_health_safety_and_fundamental_rights(System)),
    availability_of_adequate_capacities_and_resources(notified_bodies).
