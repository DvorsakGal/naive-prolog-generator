% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 1202618b167fb72d39aaa73065301f9c8c24bc45d8e3fa37a5efe42c3f0f9b6e
% cached     : False
% title      : Record-keeping
% --- Requirements from Article 12 Record-keeping ---

required_automatic_logging(S) :-
    high_risk_ai_system(S).

required_logging_for_identifying_risk(S) :-
    high_risk_ai_system(S).

required_logging_for_post_market_monitoring(S) :-
    high_risk_ai_system(S).

required_logging_for_operation_monitoring(S) :-
    high_risk_ai_system(S).

required_logging_period_of_use(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).

required_logging_reference_database(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).

required_logging_input_data_match(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).

required_logging_verifier_identification(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).

% Provenance for each clause
provenance(required_automatic_logging/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_identifying_risk/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_period_of_use/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_input_data_match/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_verifier_identification/1, 'celex:32024R1689/oj#art_12').

% References cited in the provision
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
