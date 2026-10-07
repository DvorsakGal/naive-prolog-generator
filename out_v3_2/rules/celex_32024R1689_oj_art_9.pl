% unit      : celex:32024R1689/oj#art_9
% source    : celex:32024R1689%2Foj#art_9.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 112478ee2f144471ed94b70f82293f3a30537f7226226a2a9f5ec44625d96def
% signature: 5a505f3da956f61957e66c01dbcf90e9fc05776918032a15a3fc75b49d8c5e61
% cached    : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system/1, gloss('risk management system for a high‑risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_system/2, gloss('provider must establish a risk management system for a high‑risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_step/2, gloss('specific step required in the risk management system for a high‑risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_testing_for_risk_management/2, gloss('provider must test the high‑risk AI system to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred permitted_testing_in_real_world_conditions/2, gloss('testing may include real‑world conditions'), source('celex:32024R1689/oj#art_9').
:- pred required_testing_before_market_or_service/2, gloss('testing must be performed before market placement or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred required_consideration_of_vulnerable_groups/2, gloss('provider shall consider impact on minors and other vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred permitted_combination_with_other_risk_management/2, gloss('aspects may be combined with other risk‑management procedures'), source('celex:32024R1689/oj#art_9').

%--- Obligations and requirements ---

required_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_risk_management_step(identification_and_analysis, S) :-
    high_risk_ai_system(S).

required_risk_management_step(estimation_and_evaluation, S) :-
    high_risk_ai_system(S).

required_risk_management_step(evaluation_of_other_risks, S) :-
    high_risk_ai_system(S).

required_risk_management_step(adoption_of_measures, S) :-
    high_risk_ai_system(S).

required_testing_for_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S).

permitted_testing_in_real_world_conditions(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_testing_before_market_or_service(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_consideration_of_vulnerable_groups(P, S) :-
    provider(P),
    high_risk_ai_system(S).

permitted_combination_with_other_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S).

%--- Provenance for each rule head ---

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_before_market_or_service/2, 'celex:32024R1689/oj#art_9').
provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_risk_management/2, 'celex:32024R1689/oj#art_9').

%--- References from this provision ---

references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
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
