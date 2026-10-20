:- module(commission_delegated_acts, [
    empowered_to_adopt_delegated_act/1,
    must_adopt_delegated_act/1,
    amends_article/2,
    subjects_system_to_procedure/2,
    high_risk_ai_system/1,
    referred_to_in_annex_iii_points_2_to_8/1,
    conformity_assessment_procedure/1,
    referred_to_in_annex_vii/1,
    takes_into_account_effectiveness/2,
    based_on_internal_control/1,
    referred_to_in_annex_vi/1,
    prevents_or_minimises_risks/2,
    risk_to_health_and_safety/1,
    risk_to_fundamental_rights/1,
    takes_into_account_availability/2,
    adequate_capacities_and_resources/1,
    among_notified_bodies/1
]).

% Input predicates for entities not defined in this text
:- dynamic commission/1.
:- dynamic article_97/1.
:- dynamic article_43_1/1.
:- dynamic article_43_2/1.
:- dynamic annex_iii/1.
:- dynamic annex_vii/1.
:- dynamic annex_vi/1.
:- dynamic notified_body/1.

empowered_to_adopt_delegated_act(Act) :-
    commission(C),
    must_adopt_delegated_act(Act),
    in_accordance_with(Act, article_97).

must_adopt_delegated_act(Act) :-
    commission(_C),
    amends_article(Act, article_43_1),
    amends_article(Act, article_43_2),
    subjects_system_to_procedure(Act, Procedure),
    referred_to_in_annex_vii(Procedure),
    takes_into_account_effectiveness(Act, Procedure),
    takes_into_account_availability(Act, Capacities),
    adequate_capacities_and_resources(Capacities),
    among_notified_bodies(Capacities).

subjects_system_to_procedure(Act, Procedure) :-
    high_risk_ai_system(System),
    referred_to_in_annex_iii_points_2_to_8(System),
    conformity_assessment_procedure(Procedure),
    or_parts_thereof(Act, Procedure, System).

takes_into_account_effectiveness(Act, Procedure) :-
    based_on_internal_control(Procedure),
    referred_to_in_annex_vi(Procedure),
    prevents_or_minimises_risks(Procedure, Risk),
    (   risk_to_health_and_safety(Risk)
    ;   risk_to_fundamental_rights(Risk)
    ),
    posed_by_system(Risk, System),
    referred_to_in_annex_iii_points_2_to_8(System).

takes_into_account_availability(Act, Capacities) :-
    adequate_capacities_and_resources(Capacities),
    among_notified_bodies(Capacities).

% Helper predicates to capture structural relations mentioned in text
in_accordance_with(Act, Article) :-
    article_97(Article),
    delegated_act(Act).

or_parts_thereof(_Act, _Procedure, _System).

posed_by_system(Risk, System) :-
    high_risk_ai_system(System),
    (   risk_to_health_and_safety(Risk)
    ;   risk_to_fundamental_rights(Risk)
    ).

delegated_act(_Act).
