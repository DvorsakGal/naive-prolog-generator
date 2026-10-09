% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : ee3bd5e602a31350314dbcb0b807976b982e86af744205b5526d5e61ed21ca09
% cached     : False
% title      : Risk management system
% Obligations for providers regarding risk management system
must_establish(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_implement(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_document(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_maintain(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% The risk management system must comprise the following steps
required_step_a(risk_management_system(System)) :-
    high_risk_ai_system(System).

required_step_b(risk_management_system(System)) :-
    high_risk_ai_system(System).

required_step_c(risk_management_system(System)) :-
    high_risk_ai_system(System).

required_step_d(risk_management_system(System)) :-
    high_risk_ai_system(System).

% The system itself is required for high‑risk AI systems
required_risk_management_system(System) :-
    high_risk_ai_system(System).

% Testing to identify appropriate risk management measures
must_test(Provider, high_risk_ai_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% Permission to include real‑world testing
permitted_testing_in_real_world_conditions(System) :-
    high_risk_ai_system(System).

% Testing must be performed before market placement or putting into service
must_test_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ placing_on_market(System).

% Providers shall consider impact on minors and vulnerable groups
must_consider_adverse_impact(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

% Compatibility with other internal risk‑management procedures
permitted_combination_with_other_law(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

% Provenance
provenance(must_establish/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement/2, 'celex:32024R1689/oj#art_9').
provenance(must_document/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_9').
provenance(required_step_a/1, 'celex:32024R1689/oj#art_9').
provenance(required_step_b/1, 'celex:32024R1689/oj#art_9').
provenance(required_step_c/1, 'celex:32024R1689/oj#art_9').
provenance(required_step_d/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(must_test/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_before_market/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_adverse_impact/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_law/2, 'celex:32024R1689/oj#art_9').

% References
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
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
