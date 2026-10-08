% unit       : celex:32024R1689/oj#art_6
% title      : Classification rules for high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : gpt-oss:120b-cloud
% prompt sha : 260d83e94f92c86663dbe49f0909c37274075c1d634e94c48ecd5a466e98ccfb
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred condition_a/1, gloss('AI system intended as safety component of a product'), source('celex:32024R1689/oj#art_6').
:- pred condition_b/1, gloss('AI system subject to third‑party conformity assessment for market placement or service'), source('celex:32024R1689/oj#art_6').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_6').
:- pred annex_3_ai_system/1, gloss('AI system listed in annex 3'), source('celex:32024R1689/oj#art_6').
:- pred significant_risk_of_harm/1, gloss('AI system poses a significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred derogation_applies/1, gloss('Derogation conditions for annex 3 AI systems are met'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred required_document_assessment/2, gloss('Provider must document assessment that an annex 3 AI system is not high‑risk'), source('celex:32024R1689/oj#art_6').
:- pred required_registration_obligation/1, gloss('Provider is subject to registration obligation'), source('celex:32024R1689/oj#art_6').
:- pred intended_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred intended_improve_result_human_activity/1, gloss('AI system intended to improve result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred intended_detect_decision_patterns_without_replacing_human_review/1, gloss('AI system intended to detect decision‑making patterns without replacing human assessment'), source('celex:32024R1689/oj#art_6').
:- pred intended_preparatory_task_for_assessment/1, gloss('AI system intended to perform a preparatory task for an assessment relevant to annex 3 use cases'), source('celex:32024R1689/oj#art_6').

condition_a(S) :-
    safety_component(S).

condition_b(S) :-
    conformity_assessment(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).

high_risk_ai_system(S) :-
    condition_a(S),
    condition_b(S).

high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    \+ derogation_applies(S).

high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    performs_profiling(S).

high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    significant_risk_of_harm(S).

derogation_applies(S) :-
    annex_3_ai_system(S),
    (   intended_narrow_procedural_task(S)
    ;   intended_improve_result_human_activity(S)
    ;   intended_detect_decision_patterns_without_replacing_human_review(S)
    ;   intended_preparatory_task_for_assessment(S)
    ).

required_document_assessment(P, S) :-
    provider(P),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S).

required_registration_obligation(P) :-
    provider(P).

provenance(condition_a/1, 'celex:32024R1689/oj#art_6').
provenance(condition_b/1, 'celex:32024R1689/oj#art_6').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(annex_3_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(derogation_applies/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(required_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(required_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_result_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_patterns_without_replacing_human_review/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').

references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
