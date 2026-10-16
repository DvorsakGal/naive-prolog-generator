% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : b916782b26128bd685e60f1b2df1d34f7c829ee16bc97b8483fcd74f04b884b9
% cached     : False
% title      : Record-keeping
:- pred must_technically_allow_logging/1, gloss('high-risk AI system must technically allow automatic recording of events over its lifetime'), source('celex:32024R1689/oj#art_12').
:- pred logging_capabilities_must_enable/2, gloss('logging capabilities must enable recording of events relevant for a purpose'), source('celex:32024R1689/oj#art_12').
:- pred logging_must_record/2, gloss('logging capabilities must record a specific item'), source('celex:32024R1689/oj#art_12').

must_technically_allow_logging(S) :-
    high_risk_ai_system(S).

logging_capabilities_must_enable(S, identifying_risk_or_modification) :-
    high_risk_ai_system(S).

logging_capabilities_must_enable(S, facilitating_post_market_monitoring) :-
    high_risk_ai_system(S).

logging_capabilities_must_enable(S, monitoring_operation) :-
    high_risk_ai_system(S),
    % systems referred to in Article 26(5) are high-risk AI systems
    high_risk_ai_system(S).

logging_must_record(S, period_of_each_use) :-
    annex_3_point_1_a_system(S).

logging_must_record(S, reference_database) :-
    annex_3_point_1_a_system(S).

logging_must_record(S, input_data_leading_to_match) :-
    annex_3_point_1_a_system(S).

logging_must_record(S, identification_of_persons_verifying_results) :-
    annex_3_point_1_a_system(S).

provenance(must_technically_allow_logging/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capabilities_must_enable/2, 'celex:32024R1689/oj#art_12').
provenance(logging_must_record/2, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
