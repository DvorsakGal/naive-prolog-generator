% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 9002d4c9441bf2abf1e6454239d2a1bae346ffd372f864c40cab79311ae5d57c
% cached     : False
% title      : Risk management system
:- pred risk_management_system/1, gloss('risk management system established, implemented, documented and maintained'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measure_identified/1, gloss('appropriate and targeted risk management measures adopted'), source('celex:32024R1689/oj#art_9').
:- pred residual_risk_acceptable/1, gloss('relevant residual risk and overall residual risk judged acceptable'), source('celex:32024R1689/oj#art_9').
:- pred tested_for_risk_management/1, gloss('tested to identify most appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred adverse_impact_on_vulnerable_groups_considered/1, gloss('consideration given to adverse impact on persons under 18 and other vulnerable groups'), source('celex:32024R1689/oj#art_9').

required_risk_management_system(S) :-
    high_risk_ai_system(S).

risk_management_system(S) :-
    high_risk_ai_system(S),
    risk_management_system_established(S),
    risk_management_system_implemented(S),
    risk_management_system_documented(S),
    risk_management_system_maintained(S).

risk_management_system_established(S) :-
    high_risk_ai_system(S).

risk_management_system_implemented(S) :-
    high_risk_ai_system(S).

risk_management_system_documented(S) :-
    high_risk_ai_system(S).

risk_management_system_maintained(S) :-
    high_risk_ai_system(S).

risk_management_process_continuous_iterative(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_process_planned_throughout_lifecycle(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_process_requires_regular_review(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_step_identification_analysis(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_step_estimation_evaluation(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_step_evaluation_post_market(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    post_market_monitoring_system(M),
    data_gathered_from(M, S).

risk_management_step_adoption_measures(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    risk_management_measure_identified(S).

risk_management_measure_identified(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    risks_identified_pursuant_to_art_9_par_2_pnt_a(S),
    appropriate_targeted_measures_adopted(S).

risks_identified_pursuant_to_art_9_par_2_pnt_a(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

appropriate_targeted_measures_adopted(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risks_concerned_only_reasonably_mitigable(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_measures_due_consideration_combined_requirements(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).

residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    relevant_residual_risk_acceptable(S),
    overall_residual_risk_acceptable(S).

relevant_residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).

overall_residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).

risk_management_measures_ensure_elimination_or_reduction(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    elimination_or_reduction_technically_feasible(S).

elimination_or_reduction_technically_feasible(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).

risk_management_measures_ensure_mitigation_control(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    risks_cannot_be_eliminated(S).

risks_cannot_be_eliminated(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).

risk_management_measures_ensure_provision_of_information(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    information_required_pursuant_to_art_13(S).

risk_management_measures_ensure_training_to_deployers(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    training_appropriate(S).

due_consideration_to_deployer_context(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).

tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    testing_identifies_appropriate_measures(S).

testing_identifies_appropriate_measures(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).

testing_ensures_consistent_performance(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).

testing_ensures_compliance_with_section_2(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).

testing_may_include_real_world_conditions(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).

testing_performed_throughout_development(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).

testing_performed_before_placing_on_market_or_putting_into_service(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).

testing_carried_out_against_defined_metrics(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).

adverse_impact_on_vulnerable_groups_considered(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    provider(P),
    must_consider_adverse_impact(P, S).

must_consider_adverse_impact(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_management_system(S).

risk_management_may_be_part_of_existing_procedures(S) :-
    high_risk_ai_system(S),
    provider(P),
    subject_to_internal_risk_management_requirements(P).

subject_to_internal_risk_management_requirements(P) :-
    provider(P).

provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_established/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_implemented/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_documented/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_maintained/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_process_continuous_iterative/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_process_planned_throughout_lifecycle/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_process_requires_regular_review/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_identification_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_estimation_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_evaluation_post_market/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_adoption_measures/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_identified/1, 'celex:32024R1689/oj#art_9').
provenance(risks_identified_pursuant_to_art_9_par_2_pnt_a/1, 'celex:32024R1689/oj#art_9').
provenance(appropriate_targeted_measures_adopted/1, 'celex:32024R1689/oj#art_9').
provenance(risks_concerned_only_reasonably_mitigable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_due_consideration_combined_requirements/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(relevant_residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(overall_residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_elimination_or_reduction/1, 'celex:32024R1689/oj#art_9').
provenance(elimination_or_reduction_technically_feasible/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_mitigation_control/1, 'celex:32024R1689/oj#art_9').
provenance(risks_cannot_be_eliminated/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_provision_of_information/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_training_to_deployers/1, 'celex:32024R1689/oj#art_9').
provenance(due_consideration_to_deployer_context/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_identifies_appropriate_measures/1, 'celex:32024R1689/oj#art_9').
provenance(testing_ensures_consistent_performance/1, 'celex:32024R1689/oj#art_9').
provenance(testing_ensures_compliance_with_section_2/1, 'celex:32024R1689/oj#art_9').
provenance(testing_may_include_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(testing_performed_throughout_development/1, 'celex:32024R1689/oj#art_9').
provenance(testing_performed_before_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_9').
provenance(testing_carried_out_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(adverse_impact_on_vulnerable_groups_considered/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider_adverse_impact/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_may_be_part_of_existing_procedures/1, 'celex:32024R1689/oj#art_9').
provenance(subject_to_internal_risk_management_requirements/1, 'celex:32024R1689/oj#art_9').

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
