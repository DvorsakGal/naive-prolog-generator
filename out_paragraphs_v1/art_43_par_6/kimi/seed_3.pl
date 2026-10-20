:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    amendment_target/2,
    subject_to_procedure/2,
    conformity_assessment_procedure/1,
    high_risk_ai_system/1,
    annex_iii_point/2,
    effectiveness_consideration/1,
    capacity_consideration/1,
    notified_body/1
]).

:- dynamic high_risk_ai_system/1, annex_iii_point/2, notified_body/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
% in order to amend Article 43(1), Article 43(2)
empowered_to_adopt(commission, delegated_act(Article_97, amend(Article))) :-
    article_97(Article_97),
    amendment_target(Article, _).

% in order to subject high-risk AI systems referred to in Annex III, points (2) to (8)
% to the conformity assessment procedure referred to in Annex VII or parts thereof
amendment_target(article_43_1, subject_to_procedure(System, procedure(annex_vii, Parts))) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    between(2, 8, Point),
    parts(Parts).

amendment_target(article_43_2, subject_to_procedure(System, procedure(annex_vii, Parts))) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    between(2, 8, Point),
    parts(Parts).

% The Commission shall adopt such delegated acts
must_adopt(commission, delegated_act(Article_97, amend(Article))) :-
    empowered_to_adopt(commission, delegated_act(Article_97, amend(Article))),
    effectiveness_consideration(amend(Article)),
    capacity_consideration(amend(Article)).

% taking into account the effectiveness of the conformity assessment procedure
% based on internal control referred to in Annex VI
% in preventing or minimising the risks to health and safety
% and protection of fundamental rights posed by such systems
effectiveness_consideration(amend(Article)) :-
    amendment_target(Article, subject_to_procedure(System, _)),
    conformity_assessment_procedure(procedure(annex_vi, internal_control)),
    prevents_or_minimises_risk(procedure(annex_vi, internal_control), System, health_and_safety),
    prevents_or_minimises_risk(procedure(annex_vi, internal_control), System, fundamental_rights).

% as well as the availability of adequate capacities and resources among notified bodies
capacity_consideration(amend(Article)) :-
    amendment_target(Article, subject_to_procedure(_, procedure(annex_vii, _))),
    notified_body(Body),
    adequate_capacity(Body),
    adequate_resources(Body).

% Input predicates (facts about the world the text does not settle)
:- dynamic article_97/1, parts/1, between/3, prevents_or_minimises_risk/3, adequate_capacity/1, adequate_resources/1.

article_97(article_97).
parts(all).
parts(parts_thereof).

conformity_assessment_procedure(procedure(annex_vi, internal_control)).
conformity_assessment_procedure(procedure(annex_vii, Parts)) :- parts(Parts).

between(Low, High, Value) :-
    integer(Low),
    integer(High),
    integer(Value),
    Value >= Low,
    Value =< High.
