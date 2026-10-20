# art_43_par_6

## Text

The Commission is empowered to adopt delegated acts in accordance with Article 97 in order to amend Article 43(1), Article 43(2) in order to subject high-risk AI systems referred to in Annex III, points (2) to (8) to the conformity assessment procedure referred to in Annex VII or parts thereof. The Commission shall adopt such delegated acts taking into account the effectiveness of the conformity assessment procedure based on internal control referred to in Annex VI in preventing or minimising the risks to health and safety and protection of fundamental rights posed by such systems, as well as the availability of adequate capacities and resources among notified bodies.

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| deepseek/seed_1 | yes | commission_delegated_acts | 6 | 3 | 9 | 0.744 | 8 |
| deepseek/seed_2 | yes | commission_delegated_acts | 12 | 8 | 3 | 0.718 | 1 |
| deepseek/seed_3 | yes | commission_delegated_acts | 6 | 5 | 15 | 0.692 | 4 |
| gemini/seed_1 | NO | delegated_acts_conformity_assessment | 2 | 2 | 9 | 0.487 | 5 |
| gemini/seed_2 | NO | delegated_acts_conformity_assessment | 2 | 2 | 7 | 0.692 | 5 |
| gemini/seed_3 | yes | delegated_acts_conformity_assessment | 3 | 3 | 8 | 0.564 | 5 |
| kimi/seed_1 | yes | delegated_acts_amendment | 17 | 13 | 3 | 0.692 | 9 |
| kimi/seed_2 | NO | commission_delegated_acts | 17 | 13 | 5 | 0.692 | 10 |
| kimi/seed_3 | NO | commission_delegated_acts | 12 | 9 | 7 | 0.667 | 8 |
| mistral/seed_1 | yes | commission_delegated_acts | 10 | 8 | 8 | 0.718 | 6 |
| mistral/seed_2 | NO | commission_delegated_acts | 8 | 6 | 9 | 0.692 | 6 |
| mistral/seed_3 | yes | commission_delegated_acts | 24 | 16 | 5 | 0.795 | 19 |
| qwen/seed_1 | NO | commission_delegated_acts | 9 | 9 | 14 | 0.872 | 19 |
| qwen/seed_2 | yes | commission_delegated_acts_ai | 9 | 6 | 2 | 0.667 | 3 |
| qwen/seed_3 | NO | commission_delegated_acts | 7 | 7 | 15 | 0.769 | 22 |

Within-model (3 seeds): deepseek: J_preds 0.425, J_clauses 0.0, consensus 0.0; gemini: J_preds 0.5, J_clauses 0.0, consensus 0.0; kimi: J_preds 0.199, J_clauses 0.0, consensus 0.0; mistral: J_preds 0.119, J_clauses 0.0, consensus 0.0; qwen: J_preds 0.048, J_clauses 0.0, consensus 0.0

## deepseek seed 1

```prolog
:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    must_take_into_account/2,
    high_risk_ai_system/1,
    conformity_assessment_procedure/1,
    internal_control_procedure/1,
    notified_body/1,
    adequate_capacity_and_resources/1,
    risk_to_health_and_safety/1,
    risk_to_fundamental_rights/1,
    prevents_or_minimises/2
]).

% The Commission is empowered to adopt delegated acts
empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_systems))) :-
    high_risk_ai_system(S),
    listed_in_annex_iii(S, points(2, 8)),
    conformity_assessment_procedure(annex_vii).

empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_parts))) :-
    high_risk_ai_system(S),
    listed_in_annex_iii(S, points(2, 8)),
    conformity_assessment_procedure(annex_vii).

% The Commission shall adopt such delegated acts
must_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_systems))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_systems))),
    must_take_into_account(commission, effectiveness_of_internal_control),
    must_take_into_account(commission, availability_of_capacity_and_resources).

must_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_parts))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 1), article(43, 2), subject_parts))),
    must_take_into_account(commission, effectiveness_of_internal_control),
    must_take_into_account(commission, availability_of_capacity_and_resources).

% taking into account the effectiveness of the conformity assessment procedure based on internal control
must_take_into_account(commission, effectiveness_of_internal_control) :-
    internal_control_procedure(annex_vi),
    conformity_assessment_procedure(annex_vi),
    high_risk_ai_system(S),
    risk_to_health_and_safety(R),
    risk_to_fundamental_rights(R2),
    prevents_or_minimises(annex_vi, R),
    prevents_or_minimises(annex_vi, R2).

% taking into account the availability of adequate capacities and resources among notified bodies
must_take_into_account(commission, availability_of_capacity_and_resources) :-
    notified_body(B),
    adequate_capacity_and_resources(B).

% Predicates the text references but does not define
:- dynamic high_risk_ai_system/1.
:- dynamic listed_in_annex_iii/2.
:- dynamic conformity_assessment_procedure/1.
:- dynamic internal_control_procedure/1.
:- dynamic risk_to_health_and_safety/1.
:- dynamic risk_to_fundamental_rights/1.
:- dynamic prevents_or_minimises/2.
:- dynamic notified_body/1.
:- dynamic adequate_capacity_and_resources/1.
```

## deepseek seed 2

```prolog
:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    must_take_into_account/2,
    high_risk_ai_system/1,
    subject_to_conformity_assessment/2,
    conformity_assessment_procedure/1,
    internal_control_procedure/1,
    effectiveness_in_preventing_risks/2,
    adequate_capacity_available/1
]).

% The Commission is empowered to adopt delegated acts
empowered_to_adopt(commission, delegated_act(amend(article(43, 1)))).
empowered_to_adopt(commission, delegated_act(amend(article(43, 2)))).

% Purpose of the delegated acts: subject high-risk AI systems in Annex III points 2-8
% to the conformity assessment procedure in Annex VII or parts thereof
subject_to_conformity_assessment(System, annex_vii) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    between(2, 8, Point).

subject_to_conformity_assessment(System, parts_of(annex_vii)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    between(2, 8, Point).

% The Commission shall adopt such delegated acts
must_adopt(commission, delegated_act(amend(article(43, 1)))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 1)))).

must_adopt(commission, delegated_act(amend(article(43, 2)))) :-
    empowered_to_adopt(commission, delegated_act(amend(article(43, 2)))).

% Taking into account the effectiveness of the internal control procedure
must_take_into_account(commission, effectiveness_of(conformity_assessment_procedure(annex_vi))) :-
    must_adopt(commission, _).

% Effectiveness in preventing or minimising risks to health, safety, and fundamental rights
effectiveness_in_preventing_risks(conformity_assessment_procedure(annex_vi), risks(health_and_safety, fundamental_rights)).

% Availability of adequate capacities and resources among notified bodies
adequate_capacity_available(notified_bodies).

% Supporting predicates
conformity_assessment_procedure(annex_vi).
conformity_assessment_procedure(annex_vii).
internal_control_procedure(annex_vi).

% Dynamic predicates for facts not settled by this text
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
```

## deepseek seed 3

```prolog
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
```

## gemini seed 1

```prolog
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
```

## gemini seed 2

```prolog
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
```

## gemini seed 3

```prolog
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
```

## kimi seed 1

```prolog
:- module(delegated_acts_amendment, [
    empowered_commission/3,
    must_adopt/2,
    purpose/2,
    considers_effectiveness/2,
    considers_adequate_capacities/2,
    high_risk_ai_system/1,
    subject_to_conformity_assessment/2,
    conformity_assessment_procedure/2,
    internal_control_procedure/1,
    notified_body/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic conformity_assessment_procedure/2.
:- dynamic internal_control_procedure/1.
:- dynamic notified_body/1.

% The Commission is empowered to adopt delegated acts in accordance with Article 97
empowered_commission(commission, adopt(delegated_act), in_accordance_with(article(97))).

% Purpose of the delegated acts: amend Article 43(1) and Article 43(2)
purpose(adopt(delegated_act), amend(article(43,1))).
purpose(adopt(delegated_act), amend(article(43,2))).

% The effect of the amendment: subject certain high-risk AI systems to conformity assessment
purpose(adopt(delegated_act), subject_to_conformity_assessment(System, Procedure)) :-
    high_risk_ai_system(System),
    annex_iii_point_range(2, 8, System),
    conformity_assessment_procedure(annex_vii, Procedure).

% The Commission must adopt such delegated acts taking into account effectiveness
must_adopt(commission, delegated_act) :-
    considers_effectiveness(commission, internal_control_prevention_risk).

% The Commission must adopt such delegated acts taking into account adequate capacities
must_adopt(commission, delegated_act) :-
    considers_adequate_capacities(commission, notified_bodies).

% Definition of what effectiveness considers
considers_effectiveness(commission, internal_control_prevention_risk) :-
    internal_control_procedure(annex_vi),
    risk_to_health_safety(System),
    risk_to_fundamental_rights(System),
    high_risk_ai_system(System).

% Definition of adequate capacities among notified bodies
considers_adequate_capacities(commission, notified_bodies) :-
    notified_body(Body),
    adequate_capacity(Body),
    adequate_resources(Body).

% Helper predicates for the conditions
annex_iii_point_range(2, 8, System) :-
    high_risk_ai_system(System),
    referred_in_annex_iii(System, Point),
    Point >= 2,
    Point =< 8.

referred_in_annex_iii(System, Point) :-
    high_risk_ai_system(System),
    % This is an input predicate for the specific point reference
    fail.

% Risk predicates
risk_to_health_safety(System) :-
    high_risk_ai_system(System),
    % Input predicate for health and safety risk
    fail.

risk_to_fundamental_rights(System) :-
    high_risk_ai_system(System),
    % Input predicate for fundamental rights risk
    fail.

adequate_capacity(Body) :-
    notified_body(Body).

adequate_resources(Body) :-
    notified_body(Body).

% Parts of conformity assessment may be applied
conformity_assessment_procedure(annex_vii, parts_thereof).
conformity_assessment_procedure(annex_vii, full_procedure).

% The subject_to_conformity_assessment relation
subject_to_conformity_assessment(System, Procedure) :-
    high_risk_ai_system(System),
    annex_iii_point_range(2, 8, System),
    conformity_assessment_procedure(annex_vii, Procedure).
```

## kimi seed 2

```prolog
:- module(commission_delegated_acts, [
    empowered_to_adopt/2,
    must_adopt/2,
    amendment_target/2,
    subject_to_procedure/2,
    conformity_assessment_procedure/1,
    high_risk_ai_system/1,
    point_in_annex_iii/2,
    effectiveness_consideration/1,
    capacity_consideration/1,
    internal_control_procedure/1,
    risk_to_health_and_safety/1,
    risk_to_fundamental_rights/1,
    notified_body/1,
    adequate_capacity/1,
    adequate_resources/1
]).

:- dynamic high_risk_ai_system/1, point_in_annex_iii/2, notified_body/1, adequate_capacity/1, adequate_resources/1.

% Empowerment to adopt delegated acts
empowered_to_adopt(commission, delegated_act(amend_article_43(1))) :-
    in_accordance_with(article_97).

empowered_to_adopt(commission, delegated_act(amend_article_43(2))) :-
    in_accordance_with(article_97).

% Purpose of amendment to Article 43(2)
amendment_target(amend_article_43(2), subject_to_procedure(System, procedure(annex_vii))) :-
    high_risk_ai_system(System),
    point_in_annex_iii(System, Point),
    between(2, 8, Point).

amendment_target(amend_article_43(2), subject_to_procedure(System, parts(procedure(annex_vii)))) :-
    high_risk_ai_system(System),
    point_in_annex_iii(System, Point),
    between(2, 8, Point).

% Duty to adopt delegated acts with considerations
must_adopt(commission, delegated_act(Amendment)) :-
    empowered_to_adopt(commission, delegated_act(Amendment)),
    effectiveness_consideration(Amendment),
    capacity_consideration(Amendment).

% Effectiveness consideration
effectiveness_consideration(Amendment) :-
    amendment_target(Amendment, subject_to_procedure(System, _)),
    internal_control_procedure(procedure(annex_vi)),
    effectiveness_in_preventing_risk(procedure(annex_vi), risk_to_health_and_safety(System)),
    effectiveness_in_minimising_risk(procedure(annex_vi), risk_to_health_and_safety(System)),
    effectiveness_in_preventing_risk(procedure(annex_vi), risk_to_fundamental_rights(System)),
    effectiveness_in_minimising_risk(procedure(annex_vi), risk_to_fundamental_rights(System)).

% Capacity consideration
capacity_consideration(Amendment) :-
    amendment_target(Amendment, subject_to_procedure(System, _)),
    notified_body(Body),
    adequate_capacity(Body),
    adequate_resources(Body).

% Auxiliary predicates
in_accordance_with(article_97).

conformity_assessment_procedure(procedure(annex_vii)).

internal_control_procedure(procedure(annex_vi)).

effectiveness_in_preventing_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_health_and_safety(Risk).

effectiveness_in_preventing_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_fundamental_rights(Risk).

effectiveness_in_minimising_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_health_and_safety(Risk).

effectiveness_in_minimising_risk(Procedure, Risk) :-
    internal_control_procedure(Procedure),
    risk_to_fundamental_rights(Risk).

risk_to_health_and_safety(System) :-
    high_risk_ai_system(System).

risk_to_fundamental_rights(System) :-
    high_risk_ai_system(System).

between(Low, High, Value) :-
    Low =< Value,
    Value =< High.
```

## kimi seed 3

```prolog
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
```

## mistral seed 1

```prolog
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
```

## mistral seed 2

```prolog
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
```

## mistral seed 3

```prolog
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
```

## qwen seed 1

```prolog
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
```

## qwen seed 2

```prolog
:- module(commission_delegated_acts_ai, [
    empowered_to_adopt_delegated_act/2,
    must_take_into_account/2,
    high_risk_ai_system/1,
    referred_to_in_annex_iii_points_2_to_8/1,
    conformity_assessment_procedure_annex_vii/1,
    internal_control_procedure_annex_vi/1,
    notified_body/1,
    adequate_capacities_and_resources/1
]).

% Input predicates for entities not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic notified_body/1.

% The Commission is empowered to adopt delegated acts to amend Article 43(1) and 43(2)
empowered_to_adopt_delegated_act(commission, amend_article_43(1)).
empowered_to_adopt_delegated_act(commission, amend_article_43(2)).

% Purpose of amendment: subject specific high-risk AI systems to Annex VII procedure
empowered_to_adopt_delegated_act(commission, subject_to_conformity_assessment(System, annex_vii)) :-
    high_risk_ai_system(System),
    referred_to_in_annex_iii_points_2_to_8(System).

% Reference definition for Annex III points (2) to (8)
referred_to_in_annex_iii_points_2_to_8(_System).

% Conformity assessment procedures
conformity_assessment_procedure_annex_vii(annex_vii).
internal_control_procedure_annex_vi(annex_vi).

% Obligation: Commission shall take into account effectiveness of Annex VI procedure
must_take_into_account(commission, effectiveness(internal_control_procedure_annex_vi, prevent_or_minimise_risks)) :-
    internal_control_procedure_annex_vi(annex_vi).

% Obligation: Commission shall take into account availability of capacities among notified bodies
must_take_into_account(commission, availability(adequate_capacities_and_resources, notified_bodies)) :-
    notified_body(_Body).

% Adequate capacities and resources predicate
adequate_capacities_and_resources(capacities_and_resources).
```

## qwen seed 3

```prolog
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
```
