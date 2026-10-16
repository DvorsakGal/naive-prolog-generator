% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 34c92f2256db6a9da99de4fa2605ee6ab0872b02a1e94b4697e3a406e1fc0f0d
% cached     : False
% title      : Risk management system
:- pred risk_management_system/1, gloss('risk management system established, implemented, documented and maintained for a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system_continuous_iterative/1, gloss('risk management system is a continuous iterative process planned and run throughout the entire lifecycle'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system_regular_review/1, gloss('risk management system requires regular systematic review and updating'), source('celex:32024R1689/oj#art_9').
:- pred risk_identification_and_analysis/1, gloss('risk management system includes identification and analysis of known and reasonably foreseeable risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_9').
:- pred risk_estimation_and_evaluation/1, gloss('risk management system includes estimation and evaluation of risks under intended purpose and reasonably foreseeable misuse'), source('celex:32024R1689/oj#art_9').
:- pred risk_evaluation_from_post_market_monitoring/1, gloss('risk management system includes evaluation of other risks based on post-market monitoring data'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measures_adopted/1, gloss('risk management system includes adoption of appropriate and targeted risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred risk_mitigable_through_design/1, gloss('risk can be reasonably mitigated or eliminated through development, design or technical information'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measures_consider_combined_requirements/1, gloss('risk management measures give due consideration to effects and interaction from combined application of Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_9').
:- pred residual_risk_acceptable/1, gloss('relevant residual risk associated with each hazard and overall residual risk is judged acceptable'), source('celex:32024R1689/oj#art_9').
:- pred risk_elimination_or_reduction/1, gloss('elimination or reduction of risks through adequate design and development as far as technically feasible'), source('celex:32024R1689/oj#art_9').
:- pred mitigation_control_measures_for_non_eliminable_risks/1, gloss('adequate mitigation and control measures implemented for risks that cannot be eliminated'), source('celex:32024R1689/oj#art_9').
:- pred information_and_training_provided/1, gloss('information required under Article 13 and training to deployers provided where appropriate'), source('celex:32024R1689/oj#art_9').
:- pred technical_knowledge_considered/1, gloss('due consideration given to technical knowledge, experience, education, training expected by deployer, and presumable context of use'), source('celex:32024R1689/oj#art_9').
:- pred tested_for_risk_management/1, gloss('high-risk AI system tested for purpose of identifying most appropriate and targeted risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred testing_ensures_consistent_performance/1, gloss('testing ensures high-risk AI systems perform consistently for intended purpose and comply with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_9').
:- pred testing_in_real_world_conditions_permitted/1, gloss('testing procedures may include testing in real-world conditions in accordance with Article 60'), source('celex:32024R1689/oj#art_9').
:- pred testing_performed_during_development/1, gloss('testing performed at any time throughout development process and prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred testing_against_defined_metrics/1, gloss('testing carried out against prior defined metrics and probabilistic thresholds appropriate to intended purpose'), source('celex:32024R1689/oj#art_9').
:- pred adverse_impact_on_minors_considered/1, gloss('provider gives consideration to whether high-risk AI system is likely to have adverse impact on persons under 18 and other vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_combined_with_other_union_law/1, gloss('risk management aspects may be part of or combined with risk management procedures under other Union law'), source('celex:32024R1689/oj#art_9').

must_establish_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).

risk_management_system(S) :-
    high_risk_ai_system(S),
    risk_management_system_established(S),
    risk_management_system_implemented(S),
    risk_management_system_documented(S),
    risk_management_system_maintained(S).

risk_management_system_continuous_iterative(S) :-
    risk_management_system(S),
    planned_throughout_lifecycle(S),
    run_throughout_lifecycle(S).

risk_management_system_regular_review(S) :-
    risk_management_system_continuous_iterative(S),
    regular_systematic_review(S),
    systematic_updating(S).

risk_identification_and_analysis(S) :-
    risk_management_system(S),
    identifies_known_risks(S),
    identifies_reasonably_foreseeable_risks(S),
    risks_to_health(S),
    risks_to_safety(S),
    risks_to_fundamental_rights(S),
    use_in_accordance_with_intended_purpose(S).

risk_estimation_and_evaluation(S) :-
    risk_management_system(S),
    estimates_risks_intended_purpose(S),
    evaluates_risks_intended_purpose(S),
    estimates_risks_reasonably_foreseeable_misuse(S),
    evaluates_risks_reasonably_foreseeable_misuse(S).

risk_evaluation_from_post_market_monitoring(S) :-
    risk_management_system(S),
    post_market_monitoring_system(S),
    analyses_data_from_post_market_monitoring(S),
    evaluates_other_risks_possibly_arising(S).

risk_management_measures_adopted(S) :-
    risk_management_system(S),
    adopts_appropriate_measures(S),
    adopts_targeted_measures(S),
    addresses_risks_identified(S).

risk_mitigable_through_design(R) :-
    risk(R),
    reasonably_mitigated_through_development(R).
risk_mitigable_through_design(R) :-
    risk(R),
    reasonably_mitigated_through_design(R).
risk_mitigable_through_design(R) :-
    risk(R),
    eliminated_through_provision_of_technical_information(R).

risk_management_measures_consider_combined_requirements(S) :-
    risk_management_measures_adopted(S),
    gives_due_consideration_to_combined_effects(S),
    considers_interaction_of_requirements(S),
    minimises_risks_more_effectively(S),
    achieves_appropriate_balance(S).

residual_risk_acceptable(S) :-
    risk_management_measures_adopted(S),
    residual_risk_per_hazard_acceptable(S),
    overall_residual_risk_acceptable(S).

risk_elimination_or_reduction(S) :-
    risk_management_measures_adopted(S),
    eliminates_or_reduces_risks(S),
    as_far_as_technically_feasible(S),
    through_adequate_design_and_development(S).

mitigation_control_measures_for_non_eliminable_risks(S) :-
    risk_management_measures_adopted(S),
    risks_cannot_be_eliminated(S),
    implements_adequate_mitigation_measures(S),
    implements_adequate_control_measures(S).

information_and_training_provided(S) :-
    risk_management_measures_adopted(S),
    provides_information_required_art_13(S),
    provides_training_to_deployers_where_appropriate(S).

technical_knowledge_considered(S) :-
    risk_management_measures_adopted(S),
    considers_technical_knowledge(S),
    considers_experience(S),
    considers_education(S),
    considers_training_expected_by_deployer(S),
    considers_presumable_context_of_use(S).

tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    tested_to_identify_appropriate_risk_management_measures(S),
    tested_to_identify_targeted_risk_management_measures(S).

testing_ensures_consistent_performance(S) :-
    tested_for_risk_management(S),
    performs_consistently_for_intended_purpose(S),
    complies_with_chapter_3_section_2_requirements(S).

testing_in_real_world_conditions_permitted(S) :-
    tested_for_risk_management(S),
    testing_includes_real_world_conditions(S),
    in_accordance_with_art_60(S).

testing_performed_during_development(S) :-
    tested_for_risk_management(S),
    performed_throughout_development_process(S),
    performed_prior_to_placing_on_market(S).

testing_against_defined_metrics(S) :-
    tested_for_risk_management(S),
    tested_against_prior_defined_metrics(S),
    tested_against_probabilistic_thresholds(S),
    metrics_appropriate_to_intended_purpose(S).

adverse_impact_on_minors_considered(S) :-
    provider(S),
    high_risk_ai_system(S),
    implements_risk_management_system(S),
    considers_adverse_impact_on_persons_under_18(S),
    considers_adverse_impact_on_vulnerable_groups_where_appropriate(S).

risk_management_combined_with_other_union_law(S) :-
    provider(S),
    high_risk_ai_system(S),
    subject_to_internal_risk_management_under_other_union_law(S),
    risk_management_aspects_part_of_other_procedures(S).

provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_continuous_iterative/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_regular_review/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_and_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_and_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(risk_evaluation_from_post_market_monitoring/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_adopted/1, 'celex:32024R1689/oj#art_9').
provenance(risk_mitigable_through_design/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_consider_combined_requirements/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_elimination_or_reduction/1, 'celex:32024R1689/oj#art_9').
provenance(mitigation_control_measures_for_non_eliminable_risks/1, 'celex:32024R1689/oj#art_9').
provenance(information_and_training_provided/1, 'celex:32024R1689/oj#art_9').
provenance(technical_knowledge_considered/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_ensures_consistent_performance/1, 'celex:32024R1689/oj#art_9').
provenance(testing_in_real_world_conditions_permitted/1, 'celex:32024R1689/oj#art_9').
provenance(testing_performed_during_development/1, 'celex:32024R1689/oj#art_9').
provenance(testing_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(adverse_impact_on_minors_considered/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_combined_with_other_union_law/1, 'celex:32024R1689/oj#art_9').

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
