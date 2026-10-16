% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4f1f716b7eb6e8c78d6cc0abe0095463afa9940c0fd110eabf62e03189cf15b7
% cached     : False
% title      : Record-keeping
:- pred must_technically_allow_logging/2, gloss('high-risk AI system must technically allow automatic recording of events'), source('celex:32024R1689/oj#art_12').
:- pred logging_capabilities_enable_recording/2, gloss('logging capabilities must enable recording of events relevant for specified purposes'), source('celex:32024R1689/oj#art_12').
:- pred logging_capabilities_provide_minimum/2, gloss('logging capabilities must provide at least specified recordings for certain high-risk AI systems'), source('celex:32024R1689/oj#art_12').

must_technically_allow_logging(S, automatic_recording_of_events) :-
    ai_system(S),
    high_risk_ai_system(S).

logging_capabilities_enable_recording(S, events_relevant_for(identifying_risk_situations)) :-
    high_risk_ai_system(S),
    intended_purpose(P),
    appropriate_traceability(S, P).

logging_capabilities_enable_recording(S, events_relevant_for(facilitating_post_market_monitoring)) :-
    high_risk_ai_system(S),
    intended_purpose(P),
    appropriate_traceability(S, P).

logging_capabilities_enable_recording(S, events_relevant_for(monitoring_operation)) :-
    high_risk_ai_system(S),
    intended_purpose(P),
    appropriate_traceability(S, P).

logging_capabilities_provide_minimum(S, recording(period_of_each_use)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).

logging_capabilities_provide_minimum(S, recording(reference_database)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).

logging_capabilities_provide_minimum(S, recording(input_data_leading_to_match)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).

logging_capabilities_provide_minimum(S, recording(identification_of_natural_persons_verifying_results)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).

% Predicates introduced for conditions not in the frozen signature
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_12').
:- pred appropriate_traceability/2, gloss('level of traceability appropriate to the intended purpose'), source('celex:32024R1689/oj#art_12').
:- pred annex_3_point_1_a_system/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_12').

% Provenance
provenance(must_technically_allow_logging/2, 'celex:32024R1689/oj#art_12').
provenance(logging_capabilities_enable_recording/2, 'celex:32024R1689/oj#art_12').
provenance(logging_capabilities_provide_minimum/2, 'celex:32024R1689/oj#art_12').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(appropriate_traceability/2, 'celex:32024R1689/oj#art_12').
provenance(annex_3_point_1_a_system/1, 'celex:32024R1689/oj#art_12').

% References
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
