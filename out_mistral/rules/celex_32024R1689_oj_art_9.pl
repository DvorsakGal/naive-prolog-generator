% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 390b5402d5cf816656452929ff0ef61af9fbf73826329c040b87e2a271488d4e
% cached     : False
% title      : Risk management system
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system/1, gloss('continuous iterative process for managing risks of a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_step/2, gloss('step in the risk management process for a system'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measure/2, gloss('measure adopted to address risks of a system'), source('celex:32024R1689/oj#art_9').
:- pred residual_risk_acceptable/1, gloss('residual risk of a system is judged acceptable'), source('celex:32024R1689/oj#art_9').
:- pred tested_for_risk_management/1, gloss('system tested to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred continuous_iterative_process/1, gloss('process that is continuous and iterative throughout lifecycle'), source('celex:32024R1689/oj#art_9').
:- pred regular_systematic_review/1, gloss('process subject to regular systematic review and updating'), source('celex:32024R1689/oj#art_9').
:- pred lifecycle_coverage/1, gloss('process planned and run throughout entire lifecycle'), source('celex:32024R1689/oj#art_9').
:- pred risk_identification_analysis/1, gloss('step identifying and analysing known and foreseeable risks'), source('celex:32024R1689/oj#art_9').
:- pred risk_estimation_evaluation/1, gloss('step estimating and evaluating risks under intended purpose and foreseeable misuse'), source('celex:32024R1689/oj#art_9').
:- pred post_market_monitoring_risk_evaluation/1, gloss('step evaluating risks based on post-market monitoring data'), source('celex:32024R1689/oj#art_9').
:- pred risk_mitigable_through_design/1, gloss('risk that may be reasonably mitigated or eliminated through development or design'), source('celex:32024R1689/oj#art_9').
:- pred combined_requirements_consideration/2, gloss('measures give due consideration to combined application of requirements'), source('celex:32024R1689/oj#art_9').
:- pred risk_elimination_or_reduction/2, gloss('measures eliminate or reduce risks as far as technically feasible'), source('celex:32024R1689/oj#art_9').
:- pred mitigation_control_measure/2, gloss('measures implement mitigation and control for risks that cannot be eliminated'), source('celex:32024R1689/oj#art_9').
:- pred deployer_information_and_training/2, gloss('measures provide information and training to deployers'), source('celex:32024R1689/oj#art_9').
:- pred technical_feasibility_consideration/2, gloss('measures consider technical knowledge, experience, education, training and context'), source('celex:32024R1689/oj#art_9').
:- pred consistent_performance_for_intended_purpose/1, gloss('system performs consistently for its intended purpose'), source('celex:32024R1689/oj#art_9').
:- pred testing_prior_to_market_or_service/1, gloss('testing performed prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred testing_against_defined_metrics/1, gloss('testing carried out against prior defined metrics and probabilistic thresholds'), source('celex:32024R1689/oj#art_9').
:- pred vulnerable_group_impact_consideration/1, gloss('provider gives consideration to adverse impact on persons under 18 and vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred combined_with_other_union_law_risk_management/1, gloss('risk management aspects combined with procedures under other Union law'), source('celex:32024R1689/oj#art_9').

must_establish_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S).

must_implement_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_system(S).

must_document_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_system(S).

must_maintain_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_system(S) :-
    high_risk_ai_system(S),
    continuous_iterative_process(S),
    lifecycle_coverage(S),
    regular_systematic_review(S).

continuous_iterative_process(S) :-
    risk_management_system(S).

lifecycle_coverage(S) :-
    risk_management_system(S).

regular_systematic_review(S) :-
    risk_management_system(S).

risk_management_step(S, identify_analyse_risks) :-
    risk_management_system(S),
    risk_identification_analysis(S).

risk_management_step(S, estimate_evaluate_risks) :-
    risk_management_system(S),
    risk_estimation_evaluation(S).

risk_management_step(S, evaluate_post_market_risks) :-
    risk_management_system(S),
    post_market_monitoring_risk_evaluation(S).

risk_management_step(S, adopt_risk_management_measures) :-
    risk_management_system(S),
    risk_management_measure(S, _Measure).

risk_identification_analysis(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    risk(Risk1),
    risk(Risk2),
    poses_risk_to_health_safety_fundamental_rights(S, Risk1),
    reasonably_foreseeable_risk(S, Risk2).

risk_estimation_evaluation(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    reasonably_foreseeable_misuse(S),
    risk(Risk),
    emerges_under_conditions(S, Risk, intended_purpose),
    emerges_under_conditions(S, Risk, reasonably_foreseeable_misuse).

post_market_monitoring_risk_evaluation(S) :-
    high_risk_ai_system(S),
    post_market_monitoring_system(S),
    risk(Risk),
    arises_from_data(S, Risk, post_market_monitoring_system).

risk_management_measure(S, Measure) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    risk(Risk),
    addresses_risk(Measure, Risk).

risk_mitigable_through_design(Risk) :-
    risk(Risk),
    reasonably_mitigated_or_eliminated_through_development(Risk).

risk_mitigable_through_design(Risk) :-
    risk(Risk),
    reasonably_mitigated_or_eliminated_through_design(Risk).

risk_mitigable_through_design(Risk) :-
    risk(Risk),
    mitigated_through_technical_information(Risk).

combined_requirements_consideration(S, Measure) :-
    risk_management_measure(S, Measure),
    gives_due_consideration_to_combined_application(Measure).

residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    overall_residual_risk_acceptable(S).

risk_elimination_or_reduction(S, Measure) :-
    risk_management_measure(S, Measure),
    eliminates_or_reduces_risk(Measure),
    technically_feasible(Measure).

mitigation_control_measure(S, Measure) :-
    risk_management_measure(S, Measure),
    addresses_risk_not_eliminable(Measure),
    implements_mitigation_and_control(Measure).

deployer_information_and_training(S, Measure) :-
    risk_management_measure(S, Measure),
    provides_information(Measure),
    provides_training_to_deployers(Measure).

technical_feasibility_consideration(S, Measure) :-
    risk_management_measure(S, Measure),
    considers_technical_knowledge(Measure),
    considers_experience(Measure),
    considers_education(Measure),
    considers_expected_deployer_training(Measure),
    considers_presumable_context(Measure).

tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    testing_performed(S),
    testing_identifies_appropriate_measures(S).

consistent_performance_for_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    performs_consistently(S).

testing_prior_to_market_or_service(S) :-
    high_risk_ai_system(S),
    testing_performed(S),
    \+ placed_on_market_before_testing(S),
    \+ put_into_service_before_testing(S).

testing_against_defined_metrics(S) :-
    high_risk_ai_system(S),
    testing_performed(S),
    defined_metrics(Metrics),
    probabilistic_thresholds(Thresholds),
    testing_against(S, Metrics, Thresholds),
    appropriate_to_intended_purpose(Metrics, Thresholds, S).

vulnerable_group_impact_consideration(S) :-
    provider(P),
    high_risk_ai_system(S),
    places_on_market(P, S),
    intended_purpose(S),
    likely_adverse_impact_on_under_18(S),
    gives_consideration_to_vulnerable_groups(S).

combined_with_other_union_law_risk_management(S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_internal_risk_management_under_union_law(P, S),
    risk_management_system(S),
    aspects_combined_with_other_procedures(S).

must_test_for_risk_management(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S),
    tested_for_risk_management(S).

must_ensure_consistent_performance(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    consistent_performance_for_intended_purpose(S).

must_ensure_compliance_with_requirements(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    tested_for_risk_management(S).

must_perform_testing_before_market_or_service(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_prior_to_market_or_service(S).

must_test_against_defined_metrics(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_against_defined_metrics(S).

must_consider_vulnerable_group_impact(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S),
    vulnerable_group_impact_consideration(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure/2, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(regular_systematic_review/1, 'celex:32024R1689/oj#art_9').
provenance(lifecycle_coverage/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(post_market_monitoring_risk_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(risk_mitigable_through_design/1, 'celex:32024R1689/oj#art_9').
provenance(combined_requirements_consideration/2, 'celex:32024R1689/oj#art_9').
provenance(risk_elimination_or_reduction/2, 'celex:32024R1689/oj#art_9').
provenance(mitigation_control_measure/2, 'celex:32024R1689/oj#art_9').
provenance(deployer_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(technical_feasibility_consideration/2, 'celex:32024R1689/oj#art_9').
provenance(consistent_performance_for_intended_purpose/1, 'celex:32024R1689/oj#art_9').
provenance(testing_prior_to_market_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(testing_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(vulnerable_group_impact_consideration/1, 'celex:32024R1689/oj#art_9').
provenance(combined_with_other_union_law_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_document_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_test_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_consistent_performance/2, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_compliance_with_requirements/2, 'celex:32024R1689/oj#art_9').
provenance(must_perform_testing_before_market_or_service/2, 'celex:32024R1689/oj#art_9').
provenance(must_test_against_defined_metrics/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_vulnerable_group_impact/2, 'celex:32024R1689/oj#art_9').

references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
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
