% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 84def4e2f6043b0c3d0c83a70d72ea1b7617abbe5d4f9a0be7735ca3d82e1ed0
% cached     : False
% title      : Record-keeping
%--- Introduced predicates ----------------------------------------------------
:- pred required_automatic_event_recording/1, gloss('system must allow automatic logging of events over its lifetime'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_for_risk_identification/1, gloss('logging must enable recording of events to identify risk situations or substantial modifications'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_for_post_market_monitoring/1, gloss('logging must enable recording of events to facilitate post‑market monitoring'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_for_operation_monitoring/1, gloss('logging must enable recording of events to monitor operation of high‑risk AI systems'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_detail_period_of_use/1, gloss('logging must record start and end date‑time of each use'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_detail_reference_database/1, gloss('logging must record the reference database against which input data was checked'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_detail_input_data_match/1, gloss('logging must record the input data that led to a match'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_detail_natural_person_identification/1, gloss('logging must record the natural persons involved in verification of results'), source('celex:32024R1689/oj#art_12').

%--- Rules --------------------------------------------------------------------
required_automatic_event_recording(S) :-
    high_risk_ai_system(S).

required_logging_for_risk_identification(S) :-
    high_risk_ai_system(S).

required_logging_for_post_market_monitoring(S) :-
    high_risk_ai_system(S).

required_logging_for_operation_monitoring(S) :-
    high_risk_ai_system(S).

required_logging_detail_period_of_use(S) :-
    annex_3_pnt_1_a_applies(S).

required_logging_detail_reference_database(S) :-
    annex_3_pnt_1_a_applies(S).

required_logging_detail_input_data_match(S) :-
    annex_3_pnt_1_a_applies(S).

required_logging_detail_natural_person_identification(S) :-
    annex_3_pnt_1_a_applies(S).

%--- Provenance ---------------------------------------------------------------
provenance(required_automatic_event_recording/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_risk_identification/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_period_of_use/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_input_data_match/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_natural_person_identification/1, 'celex:32024R1689/oj#art_12').

%--- References ---------------------------------------------------------------
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
