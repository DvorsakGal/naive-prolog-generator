% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a76e765c91174fef3efee61a4b052405f80b250c97e72e8096e2e7e9cb7e9256
% cached     : False
% title      : Risk management system
:- pred required_risk_management_system/1, gloss('high-risk AI system must have a risk management system'), source('celex:32024R1689/oj#art_9').
:- pred must_establish_risk_management_system/2, gloss('provider must establish risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred risk_identification_step/1, gloss('risk management system includes identification and analysis of known and foreseeable risks'), source('celex:32024R1689/oj#art_9').
:- pred risk_estimation_step/1, gloss('risk management system includes estimation and evaluation of risks under intended use and foreseeable misuse'), source('celex:32024R1689/oj#art_9').
:- pred post_market_risk_evaluation_step/1, gloss('risk management system includes evaluation of risks from post-market monitoring data'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measure_adoption_step/1, gloss('risk management system includes adoption of targeted measures to address identified risks'), source('celex:32024R1689/oj#art_9').
:- pred mitigatable_risk/1, gloss('risk that can be reasonably mitigated or eliminated through design or technical information'), source('celex:32024R1689/oj#art_9').
:- pred acceptable_residual_risk/1, gloss('residual risk judged acceptable after risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred must_test_for_risk_management/2, gloss('provider must test high-risk AI system to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred testing_before_placing_on_market/1, gloss('testing performed prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred must_consider_vulnerable_groups/2, gloss('provider must consider adverse impact on children and vulnerable groups'), source('celex:32024R1689/oj#art_9').

required_risk_management_system(S) :-
    ai_system(S),
    high_risk_ai_system(S).

must_establish_risk_management_system(P, S) :-
    provider(P),
    required_risk_management_system(S),
    risk_identification_step(S),
    risk_estimation_step(S),
    post_market_risk_evaluation_step(S),
    risk_management_measure_adoption_step(S).

risk_identification_step(S) :-
    required_risk_management_system(S),
    intended_purpose(S),
    \+ risk_analysis_missing(S).

risk_estimation_step(S) :-
    required_risk_management_system(S),
    intended_purpose(S),
    reasonably_foreseeable_misuse(S).

post_market_risk_evaluation_step(S) :-
    required_risk_management_system(S),
    post_market_monitoring_system(S).

risk_management_measure_adoption_step(S) :-
    required_risk_management_system(S),
    risk_identification_step(S),
    acceptable_residual_risk(S).

mitigatable_risk(S) :-
    required_risk_management_system(S),
    risk(S).

acceptable_residual_risk(S) :-
    required_risk_management_system(S),
    risk_management_measure_adoption_step(S).

must_test_for_risk_management(P, S) :-
    provider(P),
    required_risk_management_system(S),
    testing_before_placing_on_market(S).

testing_before_placing_on_market(S) :-
    required_risk_management_system(S),
    placing_on_market(S).

testing_before_placing_on_market(S) :-
    required_risk_management_system(S),
    putting_into_service(S).

must_consider_vulnerable_groups(P, S) :-
    provider(P),
    required_risk_management_system(S),
    intended_purpose(S).

provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_step/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_step/1, 'celex:32024R1689/oj#art_9').
provenance(post_market_risk_evaluation_step/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_adoption_step/1, 'celex:32024R1689/oj#art_9').
provenance(mitigatable_risk/1, 'celex:32024R1689/oj#art_9').
provenance(acceptable_residual_risk/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(testing_before_placing_on_market/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').

references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
