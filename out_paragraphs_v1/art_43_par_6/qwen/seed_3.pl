:- module(commission_delegated_acts, [
    empowered_to_adopt_delegated_act/1,
    must_adopt_delegated_act/1,
    amends_article/2,
    subjects_system_to_procedure/2,
    high_risk_ai_system/1,
    referred_to_in_annex_iii_points_2_to_8/1,
    conformity_assessment_procedure/1,
    referred_to_in_annex_vii/1,
    takes_into_account/2,
    effectiveness_of_internal_control/1,
    referred_to_in_annex_vi/1,
    prevents_or_minimises_risks/2,
    risks_to_health_safety_and_fundamental_rights/1,
    availability_of_capacities_and_resources/1,
    among_notified_bodies/1
]).

% Input predicates for entities not defined in this text
:- dynamic commission/1.
:- dynamic article_97/1.
:- dynamic article_43_1/1.
:- dynamic article_43_2/1.
:- dynamic annex_vi/1.
:- dynamic annex_vii/1.
:- dynamic notified_body/1.

empowered_to_adopt_delegated_act(Act) :-
    commission(_C),
    in_accordance_with_article_97(Act),
    amends_article(Act, article_43_1),
    amends_article(Act, article_43_2),
    subjects_high_risk_system_to_conformity_assessment(Act).

must_adopt_delegated_act(Act) :-
    empowered_to_adopt_delegated_act(Act),
    takes_into_account_effectiveness(Act),
    takes_into_account_availability(Act).

subjects_high_risk_system_to_conformity_assessment(Act) :-
    subjects_system_to_procedure(Act, Procedure),
    high_risk_ai_system(System),
    referred_to_in_annex_iii_points_2_to_8(System),
    conformity_assessment_procedure(Procedure),
    referred_to_in_annex_vii(Procedure).

takes_into_account_effectiveness(Act) :-
    takes_into_account(Act, Effectiveness),
    effectiveness_of_internal_control(Effectiveness),
    referred_to_in_annex_vi(Effectiveness),
    prevents_or_minimises_risks(Effectiveness, Risks),
    risks_to_health_safety_and_fundamental_rights(Risks).

takes_into_account_availability(Act) :-
    takes_into_account(Act, Availability),
    availability_of_capacities_and_resources(Availability),
    among_notified_bodies(Availability).

in_accordance_with_article_97(Act) :-
    article_97(_A97),
    compliance_with_article(Act, _A97).

% Auxiliary predicate to link act and article compliance
compliance_with_article(_Act, _Article).
