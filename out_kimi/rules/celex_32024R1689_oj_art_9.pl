% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cbea0ffba3f16209e88b476cb16e62c4469e50e886921131532c72508cd52a48
% cached     : False
% title      : Risk management system
:- pred required_risk_management_system/1, gloss('risk management system must be established for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred must_establish_risk_management_system/2, gloss('provider must establish risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred must_implement_risk_management_system/2, gloss('provider must implement risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred must_document_risk_management_system/2, gloss('provider must document risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred must_maintain_risk_management_system/2, gloss('provider must maintain risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system/2, gloss('risk management system for a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred continuous_iterative_process/1, gloss('risk management system is a continuous iterative process'), source('celex:32024R1689/oj#art_9').
:- pred throughout_lifecycle/1, gloss('throughout the entire lifecycle of a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred regular_systematic_review/1, gloss('regular systematic review of risk management system'), source('celex:32024R1689/oj#art_9').
:- pred risk_identification_and_analysis/2, gloss('identification and analysis of known and reasonably foreseeable risks'), source('celex:32024R1689/oj#art_9').
:- pred risk_estimation_and_evaluation/2, gloss('estimation and evaluation of risks under intended purpose and foreseeable misuse'), source('celex:32024R1689/oj#art_9').
:- pred risk_evaluation_from_post_market_monitoring/2, gloss('evaluation of other risks from post-market monitoring data'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_measures/2, gloss('adoption of appropriate and targeted risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred reasonably_mitigated_or_eliminated/1, gloss('risks that may be reasonably mitigated or eliminated through development or design'), source('celex:32024R1689/oj#art_9').
:- pred due_consideration_combined_requirements/1, gloss('due consideration to effects and interaction of combined requirements'), source('celex:32024R1689/oj#art_9').
:- pred acceptable_residual_risk/1, gloss('residual risk judged to be acceptable'), source('celex:32024R1689/oj#art_9').
:- pred elimination_or_reduction_through_design/2, gloss('elimination or reduction of risks through adequate design and development'), source('celex:32024R1689/oj#art_9').
:- pred mitigation_and_control_measures/2, gloss('implementation of adequate mitigation and control measures'), source('celex:32024R1689/oj#art_9').
:- pred provision_of_information_and_training/2, gloss('provision of information and training to deployers'), source('celex:32024R1689/oj#art_9').
:- pred due_consideration_deployer_knowledge/1, gloss('due consideration to deployer technical knowledge, experience, education, training'), source('celex:32024R1689/oj#art_9').
:- pred required_testing/2, gloss('high-risk AI system must be tested for risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred testing_in_real_world_conditions_permitted/1, gloss('testing may include testing in real-world conditions'), source('celex:32024R1689/oj#art_9').
:- pred testing_prior_to_placement_or_service/1, gloss('testing shall be performed prior to placement on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred testing_against_defined_metrics/1, gloss('testing against prior defined metrics and probabilistic thresholds'), source('celex:32024R1689/oj#art_9').
:- pred consideration_adverse_impact_minors/1, gloss('consideration of adverse impact on persons under 18'), source('celex:32024R1689/oj#art_9').
:- pred consideration_adverse_impact_vulnerable_groups/1, gloss('consideration of adverse impact on other vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred may_be_combined_with_other_risk_management/1, gloss('aspects may be part of or combined with other risk management procedures'), source('celex:32024R1689/oj#art_9').

% Article 9(1) - Duty to establish, implement, document and maintain risk management system
must_establish_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_implement_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_document_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

must_maintain_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

% Article 9(2) - Nature of risk management system as continuous iterative process
continuous_iterative_process(S) :-
    high_risk_ai_system(S),
    risk_management_system(R, S),
    throughout_lifecycle(S),
    regular_systematic_review(R).

throughout_lifecycle(S) :-
    high_risk_ai_system(S),
    risk_management_system(_R, S).

regular_systematic_review(R) :-
    risk_management_system(R, S),
    high_risk_ai_system(S).

% Article 9(2)(a) - Risk identification and analysis
risk_identification_and_analysis(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    known_or_reasonably_foreseeable_risks(S),
    used_in_accordance_with_intended_purpose(S).

known_or_reasonably_foreseeable_risks(S) :-
    high_risk_ai_system(S),
    risk(_R),
    (known_risk(S, _); reasonably_foreseeable_misuse(_)).

used_in_accordance_with_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).

% Article 9(2)(b) - Risk estimation and evaluation
risk_estimation_and_evaluation(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose(S),
    conditions_of_reasonably_foreseeable_misuse(S).

conditions_of_reasonably_foreseeable_misuse(S) :-
    high_risk_ai_system(S),
    reasonably_foreseeable_misuse(_M).

% Article 9(2)(c) - Risk evaluation from post-market monitoring
risk_evaluation_from_post_market_monitoring(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    post_market_monitoring_system(M),
    data_gathered_from(M, S).

data_gathered_from(M, S) :-
    post_market_monitoring_system(M),
    high_risk_ai_system(S).

% Article 9(2)(d) - Adoption of risk management measures
risk_management_measures(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    appropriate_risk_management_measures(R),
    targeted_risk_management_measures(R),
    address_identified_risks(R, S).

appropriate_risk_management_measures(R) :-
    risk_management_system(R, _S).

targeted_risk_management_measures(R) :-
    risk_management_system(R, _S).

address_identified_risks(R, S) :-
    risk_management_system(R, S),
    risk_identification_and_analysis(R, S).

% Article 9(3) - Scope of risks: only those reasonably mitigated or eliminated
reasonably_mitigated_or_eliminated(S) :-
    high_risk_ai_system(S),
    risk(R),
    (mitigated_through_development(S, R); mitigated_through_design(S, R); eliminated_through_development(S, R); eliminated_through_design(S, R); adequate_technical_information_provided(S, R)).

mitigated_through_development(S, R) :-
    high_risk_ai_system(S),
    risk(R).

mitigated_through_design(S, R) :-
    high_risk_ai_system(S),
    risk(R).

eliminated_through_development(S, R) :-
    high_risk_ai_system(S),
    risk(R).

eliminated_through_design(S, R) :-
    high_risk_ai_system(S),
    risk(R).

adequate_technical_information_provided(S, R) :-
    high_risk_ai_system(S),
    risk(R).

% Article 9(4) - Due consideration to combined requirements
due_consideration_combined_requirements(R) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    minimise_risks_effectively(R),
    appropriate_balance_in_implementing_measures(R).

requirements_in_chapter_3_section_2(S) :-
    high_risk_ai_system(S).

minimise_risks_effectively(R) :-
    risk_management_measures(R, _S).

appropriate_balance_in_implementing_measures(R) :-
    risk_management_measures(R, _S).

% Article 9(5) - Acceptable residual risk and specific measures
acceptable_residual_risk(S) :-
    high_risk_ai_system(S),
    risk_management_measures(R, S),
    residual_risk_acceptable_for_each_hazard(R, S),
    overall_residual_risk_acceptable(R, S).

residual_risk_acceptable_for_each_hazard(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    hazard(_H, S).

overall_residual_risk_acceptable(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S).

% Article 9(5)(a) - Elimination or reduction through design and development
elimination_or_reduction_through_design(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    risks_identified_and_evaluated(R, S),
    technically_feasible(S),
    adequate_design_and_development(S).

risks_identified_and_evaluated(R, S) :-
    risk_identification_and_analysis(R, S),
    risk_estimation_and_evaluation(R, S).

technically_feasible(S) :-
    high_risk_ai_system(S).

adequate_design_and_development(S) :-
    high_risk_ai_system(S).

% Article 9(5)(b) - Mitigation and control measures for remaining risks
mitigation_and_control_measures(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    risks_cannot_be_eliminated(S),
    adequate_mitigation_measures(R),
    adequate_control_measures(R).

risks_cannot_be_eliminated(S) :-
    high_risk_ai_system(S),
    \+ elimination_or_reduction_through_design(_R, S).

adequate_mitigation_measures(R) :-
    risk_management_measures(R, _S).

adequate_control_measures(R) :-
    risk_management_measures(R, _S).

% Article 9(5), second subparagraph - Provision of information and training
provision_of_information_and_training(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    information_required_pursuant_to_article_13(S),
    where_appropriate(training_to_deployers(S)).

information_required_pursuant_to_article_13(S) :-
    high_risk_ai_system(S).

training_to_deployers(S) :-
    high_risk_ai_system(S).

where_appropriate(X) :- X.

% Article 9(5), third subparagraph - Due consideration to deployer knowledge
due_consideration_deployer_knowledge(S) :-
    high_risk_ai_system(S),
    technical_knowledge_of_deployer(S),
    experience_of_deployer(S),
    education_of_deployer(S),
    training_expected_of_deployer(S),
    presumable_context_of_use(S).

technical_knowledge_of_deployer(S) :-
    high_risk_ai_system(S).

experience_of_deployer(S) :-
    high_risk_ai_system(S).

education_of_deployer(S) :-
    high_risk_ai_system(S).

training_expected_of_deployer(S) :-
    high_risk_ai_system(S).

presumable_context_of_use(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).

% Article 9(6) - Required testing for risk management measures
required_testing(T, S) :-
    testing(T, S),
    high_risk_ai_system(S),
    purpose_identifying_risk_management_measures(T),
    consistent_performance_for_intended_purpose(S),
    compliance_with_chapter_3_section_2(S).

testing(T, S) :-
    high_risk_ai_system(S),
    test(T).

purpose_identifying_risk_management_measures(T) :-
    testing(T, _S).

consistent_performance_for_intended_purpose(S) :-
    high_risk_ai_system(S),
    performance_of_ai_system(S).

compliance_with_chapter_3_section_2(S) :-
    high_risk_ai_system(S).

% Article 9(7) - Testing in real-world conditions permitted
testing_in_real_world_conditions_permitted(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(T),
    testing(T, S),
    in_accordance_with_article_60(T).

in_accordance_with_article_60(T) :-
    testing_in_real_world_conditions(T).

% Article 9(8) - Testing prior to placement or putting into service
testing_prior_to_placement_or_service(S) :-
    high_risk_ai_system(S),
    testing(T, S),
    performed_at_any_time_throughout_development(T),
    prior_to_being_placed_on_market(S, T),
    prior_to_putting_into_service(S, T),
    tested_against_prior_defined_metrics(T, S),
    tested_against_probabilistic_thresholds(T, S).

performed_at_any_time_throughout_development(T) :-
    testing(T, _S).

prior_to_being_placed_on_market(S, T) :-
    testing(T, S),
    high_risk_ai_system(S),
    \+ placing_on_market(S).

prior_to_putting_into_service(S, T) :-
    testing(T, S),
    high_risk_ai_system(S),
    \+ putting_into_service(S).

tested_against_prior_defined_metrics(T, S) :-
    testing(T, S),
    high_risk_ai_system(S),
    metrics_appropriate_to_intended_purpose(S).

tested_against_probabilistic_thresholds(T, S) :-
    testing(T, S),
    high_risk_ai_system(S),
    thresholds_appropriate_to_intended_purpose(S).

metrics_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).

thresholds_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).

% Article 9(9) - Consideration of adverse impact on minors and vulnerable groups
consideration_adverse_impact_minors(S) :-
    high_risk_ai_system(S),
    provider(P),
    implementing_risk_management_system(P, S),
    likely_adverse_impact_on_persons_under_18(S).

implementing_risk_management_system(P, S) :-
    must_establish_risk_management_system(P, S).

likely_adverse_impact_on_persons_under_18(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).

consideration_adverse_impact_vulnerable_groups(S) :-
    high_risk_ai_system(S),
    provider(P),
    implementing_risk_management_system(P, S),
    likely_adverse_impact_on_vulnerable_groups(S),
    as_appropriate(consideration_adverse_impact_vulnerable_groups(S)).

likely_adverse_impact_on_vulnerable_groups(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).

as_appropriate(X) :- X.

% Article 9(10) - Combination with other risk management procedures
may_be_combined_with_other_risk_management(S) :-
    high_risk_ai_system(S),
    provider(P),
    subject_to_internal_risk_management_requirements_under_other_union_law(P),
    aspects_of_article_9_may_be_part_of_other_procedures(S, P).

subject_to_internal_risk_management_requirements_under_other_union_law(P) :-
    provider(P).

aspects_of_article_9_may_be_part_of_other_procedures(S, P) :-
    high_risk_ai_system(S),
    provider(P),
    risk_management_procedures_established_under_other_law(P, _L).

risk_management_procedures_established_under_other_law(P, L) :-
    provider(P),
    other_union_law(L).

other_union_law(_L).

% Provenance facts
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_document_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(throughout_lifecycle/1, 'celex:32024R1689/oj#art_9').
provenance(regular_systematic_review/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_and_analysis/2, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_and_evaluation/2, 'celex:32024R1689/oj#art_9').
provenance(risk_evaluation_from_post_market_monitoring/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures/2, 'celex:32024R1689/oj#art_9').
provenance(reasonably_mitigated_or_eliminated/1, 'celex:32024R1689/oj#art_9').
provenance(due_consideration_combined_requirements/1, 'celex:32024R1689/oj#art_9').
provenance(acceptable_residual_risk/1, 'celex:32024R1689/oj#art_9').
provenance(elimination_or_reduction_through_design/2, 'celex:32024R1689/oj#art_9').
provenance(mitigation_and_control_measures/2, 'celex:32024R1689/oj#art_9').
provenance(provision_of_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(due_consideration_deployer_knowledge/1, 'celex:32024R1689/oj#art_9').
provenance(required_testing/2, 'celex:32024R1689/oj#art_9').
provenance(testing_in_real_world_conditions_permitted/1, 'celex:32024R1689/oj#art_9').
provenance(testing_prior_to_placement_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(testing_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(consideration_adverse_impact_minors/1, 'celex:32024R1689/oj#art_9').
provenance(consideration_adverse_impact_vulnerable_groups/1, 'celex:32024R1689/oj#art_9').
provenance(may_be_combined_with_other_risk_management/1, 'celex:32024R1689/oj#art_9').

% References
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
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
