% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 93cc5742faf30c8bb4bc20689653350d85ff71dc7d0ebf8834911c41dad45344
% cached     : False
% title      : Risk management system
:- pred risk_management_system/1, gloss('risk management system for high-risk AI systems'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measure/1, gloss('targeted measure to address identified risks'), source('celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
:- pred residual_risk_acceptable/1, gloss('residual risk judged acceptable'), source('celex:32024R1689/oj#art_9/par_5').
:- pred tested_for_risk_management/1, gloss('tested to identify risk management measures'), source('celex:32024R1689/oj#art_9/par_6').
:- pred adverse_impact_on_vulnerable_groups_considered/1, gloss('consideration given to adverse impact on persons under 18 and other vulnerable groups'), source('celex:32024R1689/oj#art_9/par_9').

must_establish_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).

risk_management_system(S) :-
    high_risk_ai_system(S),
    continuous_iterative_process(S),
    planned_throughout_lifecycle(S),
    regular_systematic_review(S),
    comprises_risk_identification(S),
    comprises_risk_estimation(S),
    comprises_post_market_risk_evaluation(S),
    comprises_risk_management_measures(S).

comprises_risk_identification(S) :-
    high_risk_ai_system(S),
    identification_and_analysis_of_known_and_foreseeable_risks(S).

comprises_risk_estimation(S) :-
    high_risk_ai_system(S),
    estimation_and_evaluation_of_risks_intended_and_misuse(S).

comprises_post_market_risk_evaluation(S) :-
    high_risk_ai_system(S),
    evaluation_of_risks_from_post_market_data(S).

comprises_risk_management_measures(S) :-
    high_risk_ai_system(S),
    adoption_of_targeted_risk_management_measures(S).

risk_management_measure(M) :-
    risk_management_system(S),
    measure_adopted(S, M).

risk_management_measure_concerns_reasonably_mitigable_risk(M) :-
    risk_management_measure(M),
    risk_reasonably_mitigable_or_eliminable(M).

risk_management_measure_due_consideration(M) :-
    risk_management_measure(M),
    due_consideration_to_combined_requirements(M).

residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    residual_risk_per_hazard_acceptable(S),
    overall_residual_risk_acceptable(S).

must_ensure_risk_elimination_or_reduction(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    elimination_or_reduction_technically_feasible(S).

must_ensure_mitigation_for_uneliminated_risks(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    risk_cannot_be_eliminated(M),
    mitigation_control_measures_implemented(M).

must_provide_information_and_training(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    provision_of_required_information(S),
    provision_of_training_to_deployers(S).

must_consider_deployer_context(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    due_consideration_to_deployer_knowledge_and_context(S).

tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    tested_to_identify_risk_management_measures(S),
    tested_for_consistent_performance(S),
    tested_for_compliance_with_section_2(S).

testing_may_include_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).

must_test_before_placing_on_market_or_putting_into_service(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    tested_throughout_development(S),
    tested_prior_to_placing_on_market_or_putting_into_service(S),
    tested_against_prior_defined_metrics(S).

adverse_impact_on_vulnerable_groups_considered(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    consideration_given_to_adverse_impact_on_under_18(S),
    consideration_given_to_adverse_impact_on_other_vulnerable_groups(S).

risk_management_may_be_part_of_existing_procedures(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    subject_to_internal_risk_management_under_other_union_law(Provider),
    risk_management_system(S).

provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_identification/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_estimation/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_post_market_risk_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_management_measures/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_concerns_reasonably_mitigable_risk/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_due_consideration/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_risk_elimination_or_reduction/2, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_mitigation_for_uneliminated_risks/2, 'celex:32024R1689/oj#art_9').
provenance(must_provide_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_deployer_context/2, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_may_include_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_before_placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_9').
provenance(adverse_impact_on_vulnerable_groups_considered/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_may_be_part_of_existing_procedures/2, 'celex:32024R1689/oj#art_9').

references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
