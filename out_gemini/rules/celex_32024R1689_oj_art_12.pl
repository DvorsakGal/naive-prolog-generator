% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 716b7f847edd7e2d2909f041cb6a158732b72c4be2fbf729a415d6eb8efd8cf4
% cached     : False
% title      : Record-keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_12').
:- pred annex_3_point_1_a_system/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_capabilities/2, gloss('logging capabilities required of an AI system'), source('celex:32024R1689/oj#art_12').
:- pred automatic_recording_of_events/1, gloss('system technically allows automatic recording of events over its lifetime'), source('celex:32024R1689/oj#art_12').
:- pred enables_recording_for_risk_identification/1, gloss('logging enables recording relevant to identify situations resulting in risk or substantial modification'), source('celex:32024R1689/oj#art_12').
:- pred enables_recording_for_post_market_monitoring/1, gloss('logging enables recording relevant to facilitate post-market monitoring'), source('celex:32024R1689/oj#art_12').
:- pred enables_recording_for_operation_monitoring/1, gloss('logging enables recording relevant to monitor operation under Article 26(5)'), source('celex:32024R1689/oj#art_12').
:- pred records_period_of_use/1, gloss('logging records start date/time and end date/time of each use'), source('celex:32024R1689/oj#art_12').
:- pred records_reference_database/1, gloss('logging records reference database against which input data has been checked'), source('celex:32024R1689/oj#art_12').
:- pred records_matched_input_data/1, gloss('logging records input data for which search led to a match'), source('celex:32024R1689/oj#art_12').
:- pred records_verification_persons/1, gloss('logging records identification of natural persons involved in result verification'), source('celex:32024R1689/oj#art_12').

% Paragraph 1: automatic recording of events (logs) over the lifetime of the system
required_logging_capabilities(S, automatic_recording_of_events) :-
    high_risk_ai_system(S),
    \+ automatic_recording_of_events(S).

% Paragraph 2: traceability appropriate to intended purpose
required_logging_capabilities(S, traceability_for_risk_identification) :-
    high_risk_ai_system(S),
    \+ enables_recording_for_risk_identification(S).

required_logging_capabilities(S, traceability_for_post_market_monitoring) :-
    high_risk_ai_system(S),
    \+ enables_recording_for_post_market_monitoring(S).

required_logging_capabilities(S, traceability_for_operation_monitoring) :-
    high_risk_ai_system(S),
    \+ enables_recording_for_operation_monitoring(S).

% Paragraph 3: specific requirements for systems in Annex III point 1(a)
required_logging_capabilities(S, record_period_of_use) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_period_of_use(S).

required_logging_capabilities(S, record_reference_database) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_reference_database(S).

required_logging_capabilities(S, record_matched_input_data) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_matched_input_data(S).

required_logging_capabilities(S, record_verification_persons) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_verification_persons(S).

provenance(required_logging_capabilities/2, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
