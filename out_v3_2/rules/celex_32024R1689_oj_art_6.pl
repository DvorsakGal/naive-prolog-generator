% unit      : celex:32024R1689/oj#art_6
% source    : celex:32024R1689%2Foj#art_6.xml
% model     : gpt-oss:120b-cloud
% prompt sha: eae56cf0c501ba7ba6646f5b90e6c0d1e02ca847790833d3876619d325c599c2
% signature: 5a505f3da956f61957e66c01dbcf90e9fc05776918032a15a3fc75b49d8c5e61
% cached    : False
%--- Declarations for invented predicates ---
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred covered_by_annex1/1, gloss('AI system covered by Union harmonisation legislation listed in Annex 1'), source('celex:32024R1689/oj#art_6').
:- pred product/1, gloss('AI system is itself a product'), source('celex:32024R1689/oj#art_6').
:- pred annex3_ai_system/1, gloss('AI system referred to in Annex 3'), source('celex:32024R1689/oj#art_6').
:- pred insignificant_risk/1, gloss('AI system does not pose a significant risk of harm'), source('celex:32024R1689/oj#art_6').
:- pred intended_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred intended_improve_human_activity/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred intended_detect_decision_patterns_without_replacement/1, gloss('AI system intended to detect decision‑making patterns and not replace or influence prior human assessment'), source('celex:32024R1689/oj#art_6').
:- pred intended_preparatory_task_for_assessment/1, gloss('AI system intended to perform a preparatory task for an assessment relevant to the use cases listed in Annex 3'), source('celex:32024R1689/oj#art_6').

%--- Classification rules ---
high_risk_ai_system(S) :-
    safety_component(S),
    covered_by_annex1(S),
    conformity_assessment(S).

high_risk_ai_system(S) :-
    product(S),
    covered_by_annex1(S),
    conformity_assessment(S).

high_risk_ai_system(S) :-
    annex3_ai_system(S),
    \+ insignificant_risk(S).

high_risk_ai_system(S) :-
    profiling(S).

%--- Exceptions (insignificant risk) ---
insignificant_risk(S) :-
    intended_narrow_procedural_task(S).
insignificant_risk(S) :-
    intended_improve_human_activity(S).
insignificant_risk(S) :-
    intended_detect_decision_patterns_without_replacement(S).
insignificant_risk(S) :-
    intended_preparatory_task_for_assessment(S).

%--- Provenance for each rule head ---
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(insignificant_risk/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_patterns_without_replacement/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').

%--- References (deduplicated) ---
references('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#anx_1', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6/par_1', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6/par_2', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6/par_3/unp_1', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6/par_3/unp_2', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_49/par_2', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7/par_1', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6/par_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6/par_7', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
