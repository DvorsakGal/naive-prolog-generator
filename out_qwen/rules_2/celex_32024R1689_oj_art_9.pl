% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 51d8f4ce04863748cb23c3c959ac38d274bf371222339742dae775b0517beadb
% cached     : False
% title      : Risk management system
:- pred must_establish_risk_management_system/2, gloss('provider must establish risk management system for high-risk AI system'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system_step/2, gloss('step comprising the risk management system'), source('celex:32024R1689/oj#art_9').
:- pred reasonably_mitigable_risk/2, gloss('risk that may be reasonably mitigated or eliminated through design or information'), source('celex:32024R1689/oj#art_9').
:- pred acceptable_residual_risk/1, gloss('residual risk judged to be acceptable'), source('celex:32024R1689/oj#art_9').
:- pred must_test_for_risk_management/2, gloss('provider must test high-risk AI system to identify risk management measures'), source('celex:32024R1689/oj#art_9').
:- pred testing_before_market_or_service/1, gloss('testing performed prior to placing on market or putting into service'), source('celex:32024R1689/oj#art_9').
:- pred must_consider_vulnerable_groups/2, gloss('provider must consider adverse impact on vulnerable groups when implementing risk management'), source('celex:32024R1689/oj#art_9').
:- pred subject_to_internal_risk_management_under_union_law/1, gloss('provider subject to internal risk management requirements under other Union law'), source('celex:32024R1689/oj#art_9').

must_establish_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).

risk_management_system_step(S, identification_and_analysis_of_known_risks) :-
    high_risk_ai_system(S).
risk_management_system_step(S, estimation_and_evaluation_of_intended_use_risks) :-
    high_risk_ai_system(S).
risk_management_system_step(S, evaluation_of_post_market_monitoring_risks) :-
    high_risk_ai_system(S).
risk_management_system_step(S, adoption_of_targeted_risk_management_measures) :-
    high_risk_ai_system(S).

reasonably_mitigable_risk(S, R) :-
    high_risk_ai_system(S),
    risk(R),
    mitigable_through_design_or_information(S, R).

acceptable_residual_risk(S) :-
    high_risk_ai_system(S),
    residual_risk_acceptable(S).

must_test_for_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S).

testing_before_market_or_service(S) :-
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).

must_consider_vulnerable_groups(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    intended_purpose(S).

subject_to_internal_risk_management_under_union_law(P) :-
    provider(P),
    internal_risk_management_required_by_union_law(P).

provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_step/2, 'celex:32024R1689/oj#art_9').
provenance(reasonably_mitigable_risk/2, 'celex:32024R1689/oj#art_9').
provenance(acceptable_residual_risk/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(testing_before_market_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(subject_to_internal_risk_management_under_union_law/1, 'celex:32024R1689/oj#art_9').

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
