% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1f2c0a6cf29b9d5503e28951d80fe75422e7df8a3fd71430468c869548cde900
% cached     : False
% title      : Record-keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_12').
:- pred logging_capability/1, gloss('technical capability to record events automatically'), source('celex:32024R1689/oj#art_12').
:- pred biometric_identification_system_annex_3_1_a/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_12').

must_allow_automatic_recording(S, logs) :-
    high_risk_ai_system(S).

required_logging_capability(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    traceability_appropriate_to_intended_purpose(S).

traceability_appropriate_to_intended_purpose(S) :-
    enables_recording_for_risk_identification(S).
traceability_appropriate_to_intended_purpose(S) :-
    enables_recording_for_post_market_monitoring(S).
traceability_appropriate_to_intended_purpose(S) :-
    enables_recording_for_operation_monitoring(S).

enables_recording_for_risk_identification(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    records_events_relevant_for(risk_or_substantial_modification).

enables_recording_for_post_market_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    records_events_relevant_for(post_market_monitoring).

enables_recording_for_operation_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    records_events_relevant_for(operation_monitoring).

must_provide_minimum_logging(S, Requirements) :-
    biometric_identification_system_annex_3_1_a(S),
    minimum_logging_requirements(Requirements).

minimum_logging_requirements([
    recording_of_use_period,
    reference_database_checked,
    input_data_leading_to_match,
    identification_of_verifying_persons
]).

provenance(must_allow_automatic_recording/2, 'celex:32024R1689/oj#art_12').
provenance(required_logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(traceability_appropriate_to_intended_purpose/1, 'celex:32024R1689/oj#art_12').
provenance(enables_recording_for_risk_identification/1, 'celex:32024R1689/oj#art_12').
provenance(enables_recording_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(enables_recording_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(must_provide_minimum_logging/2, 'celex:32024R1689/oj#art_12').
provenance(minimum_logging_requirements/1, 'celex:32024R1689/oj#art_12').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(biometric_identification_system_annex_3_1_a/1, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
