:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    must_take_into_account/2
]).

:- dynamic article_97/1.
:- dynamic article_43/2.
:- dynamic annex_iii/2.
:- dynamic annex_vi/1.
:- dynamic annex_vii/1.
:- dynamic high_risk_ai_system/1.
:- dynamic conformity_assessment_procedure/1.
:- dynamic internal_control/1.
:- dynamic notified_body/1.
:- dynamic risk_to_health_and_safety/1.
:- dynamic risk_to_fundamental_rights/1.
:- dynamic adequate_capacity/1.
:- dynamic adequate_resource/1.

empowered_to_adopt(Commission, delegated_act(amend(Article, Subject, Procedure))) :-
    commission(Commission),
    article_97(Article97),
    article_43(Article, Paragraph),
    member(Paragraph, [1, 2]),
    annex_iii(AnnexIII, Point),
    member(Point, [2, 3, 4, 5, 6, 7, 8]),
    high_risk_ai_system(System),
    annex_iii_refers(System, AnnexIII, Point),
    annex_vii(Procedure),
    conformity_assessment_procedure(Procedure),
    Subject = subject(System, Procedure).

must_adopt(Commission, delegated_act(amend(Article, Subject, Procedure))) :-
    empowered_to_adopt(Commission, delegated_act(amend(Article, Subject, Procedure))).

must_take_into_account(Commission, effectiveness(Procedure)) :-
    commission(Commission),
    annex_vi(Procedure),
    internal_control(Procedure),
    conformity_assessment_procedure(Procedure),
    effectiveness_in_preventing_or_minimising(Procedure, Risk),
    (risk_to_health_and_safety(Risk); risk_to_fundamental_rights(Risk)).

must_take_into_account(Commission, availability(Capacity, Resource)) :-
    commission(Commission),
    notified_body(Body),
    adequate_capacity(Body, Capacity),
    adequate_resource(Body, Resource).

commission(Commission) :-
    Commission = commission.

annex_iii_refers(System, AnnexIII, Point) :-
    high_risk_ai_system(System),
    annex_iii(AnnexIII, Point).
