% unit       : celex:32024R1689/oj#art_9
% title      : Risk management system
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : gpt-oss:120b-cloud
% prompt sha : c69734a9eabccc108fb59091bba47de5536f2ccab95bd5d6a4c2e2419cf300ed
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_system/2, gloss('establish, implement, document and maintain a risk management system'), source('celex:32024R1689/oj#art_9').
:- pred required_identification_and_analysis_of_risks/2, gloss('identify and analyse known and reasonably foreseeable risks'), source('celex:32024R1689/oj#art_9').
:- pred required_estimation_and_evaluation_of_risks/2, gloss('estimate and evaluate risks arising from intended use and reasonably foreseeable misuse'), source('celex:32024R1689/oj#art_9').
:- pred required_evaluation_of_other_risks/2, gloss('evaluate other risks based on post‑market monitoring data'), source('celex:32024R1689/oj#art_9').
:- pred required_adoption_of_risk_management_measures/2, gloss('adopt appropriate and targeted risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred required_residual_risk_acceptable/2, gloss('ensure residual risk is judged acceptable'), source('celex:32024R1689/oj#art_9').
:- pred required_elimination_or_reduction_of_risks/2, gloss('eliminate or reduce risks where technically feasible'), source('celex:32024R1689/oj#art_9').
:- pred required_implementation_of_mitigation_measures/2, gloss('implement mitigation and control measures for risks that cannot be eliminated'), source('celex:32024R1689/oj#art_9').
:- pred required_provision_of_information_and_training/2, gloss('provide required information and training to deployers'), source('celex:32024R1689/oj#art_9').
:- pred required_testing_for_risk_management_measures/2, gloss('test AI system to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred required_testing_before_market/2, gloss('perform testing prior to market placement or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred permitted_testing_in_real_world_conditions/1, gloss('allow testing procedures to include real‑world condition testing'), source('celex:32024R1689/oj#art_9').
:- pred required_consideration_of_vulnerable_groups/2, gloss('consider impact on persons under 18 and other vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred permitted_combination_with_other_risk_management/2, gloss('allow aspects to be combined with other internal risk‑management procedures'), source('celex:32024R1689/oj#art_9').

required_risk_management_system(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_identification_and_analysis_of_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_estimation_and_evaluation_of_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_evaluation_of_other_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_adoption_of_risk_management_measures(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_residual_risk_acceptable(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_elimination_or_reduction_of_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_implementation_of_mitigation_measures(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_provision_of_information_and_training(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_testing_for_risk_management_measures(P,S) :-
    provider(P),
    high_risk_ai_system(S).

required_testing_before_market(P,S) :-
    provider(P),
    high_risk_ai_system(S).

permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S).

required_consideration_of_vulnerable_groups(P,S) :-
    provider(P),
    high_risk_ai_system(S).

permitted_combination_with_other_risk_management(P,S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(required_identification_and_analysis_of_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_estimation_and_evaluation_of_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_evaluation_of_other_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_adoption_of_risk_management_measures/2, 'celex:32024R1689/oj#art_9').
provenance(required_residual_risk_acceptable/2, 'celex:32024R1689/oj#art_9').
provenance(required_elimination_or_reduction_of_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_implementation_of_mitigation_measures/2, 'celex:32024R1689/oj#art_9').
provenance(required_provision_of_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_for_risk_management_measures/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_before_market/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_risk_management/2, 'celex:32024R1689/oj#art_9').

references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
