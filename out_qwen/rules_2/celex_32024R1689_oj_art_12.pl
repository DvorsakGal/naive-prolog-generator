% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : c20124847a3a972f62284a8247bf0ab0958a36aec0eef99d9d09bbc4f2f5cc29
% cached     : False
% title      : Record-keeping
:- pred must_allow_automatic_recording_of_events/1, gloss('high-risk AI system technically allows automatic recording of events over lifetime'), source('celex:32024R1689/oj#art_12').
:- pred logging_capability_enables_relevant_recording/1, gloss('logging capability enables recording of events relevant for traceability'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_for_annex_iii_point_1_a/1, gloss('logging capabilities provide minimum records for Annex III point 1(a) systems'), source('celex:32024R1689/oj#art_12').

must_allow_automatic_recording_of_events(S) :-
    high_risk_ai_system(S),
    logging_capability(S).

logging_capability_enables_relevant_recording(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    intended_purpose(S),
    recording_enables_risk_identification(S).

logging_capability_enables_relevant_recording(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    recording_facilitates_post_market_monitoring(S).

logging_capability_enables_relevant_recording(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    recording_enables_operation_monitoring(S).

required_logging_for_annex_iii_point_1_a(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    logging_capability(S),
    records_period_of_use(S),
    records_reference_database(S),
    records_matched_input_data(S),
    records_verification_person_identification(S).

provenance(must_allow_automatic_recording_of_events/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capability_enables_relevant_recording/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_annex_iii_point_1_a/1, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
