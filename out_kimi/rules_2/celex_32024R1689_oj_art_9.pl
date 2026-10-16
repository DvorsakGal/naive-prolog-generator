% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : ccf8f72abf82eac0b9bcc1d28f05d983a06f652be555a0bae4087ca6fa445b5f
% cached     : False
% title      : Risk management system
:- pred risk_management_system/1, gloss('risk management system established, implemented, documented and maintained'), source('celex:32024R1689/oj#art_9').
:- pred continuous_iterative_process/1, gloss('continuous iterative process throughout entire lifecycle'), source('celex:32024R1689/oj#art_9').
:- pred risk_identification_analysis/1, gloss('identification and analysis of known and reasonably foreseeable risks'), source('celex:32024R1689/oj#art_9').
:- pred risk_estimation_evaluation/1, gloss('estimation and evaluation of risks under intended purpose and foreseeable misuse'), source('celex:32024R1689/oj#art_9').
:- pred post_market_risk_evaluation/1, gloss('evaluation of other risks from post-market monitoring data'), source('celex:32024R1689/oj#art_9').
:- pred targeted_risk_management_measures/1, gloss('appropriate and targeted risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred residual_risk_acceptable/1, gloss('residual risk judged to be acceptable'), source('celex:32024R1689/oj#art_9').
:- pred risk_elimination_reduction/1, gloss('elimination or reduction of risks through design and development'), source('celex:32024R1689/oj#art_9').
:- pred mitigation_control_measures/1, gloss('mitigation and control measures for remaining risks'), source('celex:32024R1689/oj#art_9').
:- pred deployer_information_training/1, gloss('information and training provided to deployers'), source('celex:32024R1689/oj#art_9').
:- pred testing_for_risk_management/1, gloss('testing to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred testing_real_world_conditions/1, gloss('testing in real-world conditions permitted'), source('celex:32024R1689/oj#art_9').
:- pred testing_prior_to_market/1, gloss('testing prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred vulnerable_groups_consideration/1, gloss('consideration of impact on persons under 18 and vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred combined_risk_management_procedures/1, gloss('aspects may be combined with other Union law risk management procedures'), source('celex:32024R1689/oj#art_9').

must_maintain_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_system(S) :-
    high_risk_ai_system(S),
    continuous_iterative_process(S),
    comprises_risk_management_steps(S).

comprises_risk_management_steps(S) :-
    high_risk_ai_system(S),
    risk_identification_analysis(S),
    risk_estimation_evaluation(S),
    post_market_risk_evaluation(S),
    targeted_risk_management_measures(S).

risk_identification_analysis(S) :-
    high_risk_ai_system(S),
    risk(R),
    affects_health_safety_or_rights(R),
    intended_purpose_use(S).

risk_estimation_evaluation(S) :-
    high_risk_ai_system(S),
    risk(R),
    intended_purpose_use(S),
    reasonably_foreseeable_misuse_use(S).

post_market_risk_evaluation(S) :-
    high_risk_ai_system(S),
    post_market_monitoring_system(S).

targeted_risk_management_measures(S) :-
    high_risk_ai_system(S),
    risk_identification_analysis(S),
    risk_elimination_reduction(S),
    mitigation_control_measures(S),
    deployer_information_training(S),
    residual_risk_acceptable(S).

risk_elimination_reduction(S) :-
    high_risk_ai_system(S),
    technically_feasible(S).

mitigation_control_measures(S) :-
    high_risk_ai_system(S),
    \+ risk_eliminated(S).

deployer_information_training(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).

residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    acceptable_per_hazard(S),
    acceptable_overall(S).

testing_for_risk_management(S) :-
    high_risk_ai_system(S),
    consistent_performance(S),
    requirements_in_chapter_3_section_2(S).

testing_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).

testing_prior_to_market(S) :-
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    defined_metrics(S),
    probabilistic_thresholds(S).

vulnerable_groups_consideration(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    adverse_impact_minors(S).

combined_risk_management_procedures(S) :-
    high_risk_ai_system(S),
    internal_risk_management_other_union_law(S).

provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(post_market_risk_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(targeted_risk_management_measures/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_elimination_reduction/1, 'celex:32024R1689/oj#art_9').
provenance(mitigation_control_measures/1, 'celex:32024R1689/oj#art_9').
provenance(deployer_information_training/1, 'celex:32024R1689/oj#art_9').
provenance(testing_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(testing_prior_to_market/1, 'celex:32024R1689/oj#art_9').
provenance(vulnerable_groups_consideration/1, 'celex:32024R1689/oj#art_9').
provenance(combined_risk_management_procedures/1, 'celex:32024R1689/oj#art_9').

references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
