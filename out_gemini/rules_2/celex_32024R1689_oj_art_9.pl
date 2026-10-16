% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b6870871ca3aff11de40dae903042449219b946db78328b4d640ece4133dfeb8
% cached     : False
% title      : Risk management system
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system/1, gloss('risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_system/1, gloss('risk management system required for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred continuous_iterative_process/1, gloss('continuous iterative process throughout lifecycle'), source('celex:32024R1689/oj#art_9').
:- pred regular_systematic_review_and_updating/1, gloss('regular systematic review and updating of risk management system'), source('celex:32024R1689/oj#art_9').
:- pred comprises_risk_management_steps/1, gloss('comprises risk management steps pursuant to Article 9(2)'), source('celex:32024R1689/oj#art_9').
:- pred compliant_risk_management_system/1, gloss('risk management system compliant with Article 9 requirements'), source('celex:32024R1689/oj#art_9').
:- pred residual_risk_judged_acceptable/1, gloss('residual risks of high-risk AI system are judged acceptable'), source('celex:32024R1689/oj#art_9').
:- pred tested_for_risk_management/1, gloss('high-risk AI system tested to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred tested_prior_to_market_or_service/1, gloss('tested prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred tested_against_defined_metrics/1, gloss('testing carried out against prior defined metrics and thresholds'), source('celex:32024R1689/oj#art_9').
:- pred permitted_testing_in_real_world_conditions/1, gloss('testing procedures may include real-world testing'), source('celex:32024R1689/oj#art_9').
:- pred considers_impact_on_vulnerable_groups/2, gloss('provider considers adverse impact on persons under 18 and vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred permitted_combined_risk_management/2, gloss('provider permitted to combine risk management with other Union law procedures'), source('celex:32024R1689/oj#art_9').
:- pred subject_to_other_union_risk_management/1, gloss('high-risk AI system subject to internal risk management under other Union law'), source('celex:32024R1689/oj#art_9').

% Article 9(1): A risk management system is required for high-risk AI systems
required_risk_management_system(S) :-
    high_risk_ai_system(S).

% Article 9(1)-(2), (5): Conditions for compliant risk management system
compliant_risk_management_system(RMS) :-
    risk_management_system(RMS),
    continuous_iterative_process(RMS),
    regular_systematic_review_and_updating(RMS),
    comprises_risk_management_steps(RMS).

% Article 9(6)-(8): Testing requirements for high-risk AI systems
tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    tested_prior_to_market_or_service(S),
    tested_against_defined_metrics(S).

% Article 9(7): Real-world testing permission in testing procedures
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).

% Article 9(10): Combination with other Union risk management processes
permitted_combined_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_other_union_risk_management(S).

% Article 9(1) / 9(9): Provider obligation to maintain risk management and consider vulnerable groups
must_comply(P, risk_management_system(S)) :-
    provider(P),
    high_risk_ai_system(S),
    considers_impact_on_vulnerable_groups(P, S),
    residual_risk_judged_acceptable(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(regular_systematic_review_and_updating/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_management_steps/1, 'celex:32024R1689/oj#art_9').
provenance(compliant_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_judged_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(tested_prior_to_market_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(tested_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(considers_impact_on_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combined_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(subject_to_other_union_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(must_comply/2, 'celex:32024R1689/oj#art_9').

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
