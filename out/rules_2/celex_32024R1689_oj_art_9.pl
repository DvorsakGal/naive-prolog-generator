% unit       : celex:32024R1689/oj#art_9
% title      : Risk management system
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : gpt-oss:120b-cloud
% prompt sha : 8975a3c52a86a2c21e1090550ece191c72ff3ba9aac4f9c3f0af41be41a976f2
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred risk_management_system/1, gloss('risk management system for a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_system/2, gloss('provider must establish, implement, document and maintain a risk management system for a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred step/1, gloss('step of the risk management process'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_step/2, gloss('provider must include a specific step in the risk management system for a high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred mitigatable/2, gloss('risk that can be reasonably mitigated or eliminated through design or technical information'), source('celex:32024R1689/oj#art_9').
:- pred required_consideration_of_risk/2, gloss('risk management system must consider only mitigatable risks'), source('celex:32024R1689/oj#art_9').
:- pred required_residual_risk_acceptable/1, gloss('risk management measures must result in acceptable residual risk'), source('celex:32024R1689/oj#art_9').
:- pred required_testing_for_risk_management_measures/2, gloss('provider must test high-risk AI system to identify appropriate risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred permitted_testing_in_real_world_conditions/1, gloss('testing procedures may include testing in real‑world conditions'), source('celex:32024R1689/oj#art_9').
:- pred required_testing_before_market/2, gloss('testing must be performed before placement on the market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred required_consideration_of_vulnerable_groups/2, gloss('provider must consider impact on persons under 18 and other vulnerable groups'), source('celex:32024R1689/oj#art_9').
:- pred internal_risk_management_processes/1, gloss('provider has internal risk management processes under other Union law'), source('celex:32024R1689/oj#art_9').
:- pred permitted_combination_with_other_risk_management/2, gloss('risk management aspects may be combined with other internal risk management processes'), source('celex:32024R1689/oj#art_9').

% Steps of the risk management process
step(identification_and_analysis_of_known_and_foreseeable_risks).
step(estimation_and_evaluation_of_risks).
step(evaluation_of_other_risks_from_post_market_monitoring).
step(adoption_of_appropriate_and_targeted_measures).

% 1. Establishment of the risk management system
required_risk_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_management_system(_).

provenance(required_risk_management_system/2, 'celex:32024R1689/oj#art_9').

% 2. Mandatory steps in the risk management system
required_risk_management_step(System, identification_and_analysis_of_known_and_foreseeable_risks) :-
    high_risk_ai_system(System),
    risk_management_system(_).

provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').

required_risk_management_step(System, estimation_and_evaluation_of_risks) :-
    high_risk_ai_system(System),
    risk_management_system(_).

provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').

required_risk_management_step(System, evaluation_of_other_risks_from_post_market_monitoring) :-
    high_risk_ai_system(System),
    risk_management_system(_).

provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').

required_risk_management_step(System, adoption_of_appropriate_and_targeted_measures) :-
    high_risk_ai_system(System),
    risk_management_system(_).

provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').

% 3. Only mitigatable risks may be considered
required_consideration_of_risk(Risk, System) :-
    risk(Risk),
    high_risk_ai_system(System),
    mitigatable(Risk, System).

provenance(required_consideration_of_risk/2, 'celex:32024R1689/oj#art_9').

% 5. Residual risk must be acceptable
required_residual_risk_acceptable(System) :-
    high_risk_ai_system(System),
    risk_management_system(_).

provenance(required_residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').

% 6. Testing to identify appropriate risk management measures
required_testing_for_risk_management_measures(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_testing_for_risk_management_measures/2, 'celex:32024R1689/oj#art_9').

% 7. Permission to test in real‑world conditions
permitted_testing_in_real_world_conditions(System) :-
    high_risk_ai_system(System).

provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').

% 8. Testing must be performed before market placement or putting into service
required_testing_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ (placing_on_market(System) ; putting_into_service(System)).

provenance(required_testing_before_market/2, 'celex:32024R1689/oj#art_9').

% 9. Consideration of impact on persons under 18 and other vulnerable groups
required_consideration_of_vulnerable_groups(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').

% 10. Permission to combine with other internal risk management processes
permitted_combination_with_other_risk_management(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    internal_risk_management_processes(Provider).

provenance(permitted_combination_with_other_risk_management/2, 'celex:32024R1689/oj#art_9').

% References
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
