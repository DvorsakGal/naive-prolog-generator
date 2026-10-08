% unit       : celex:32024R1689/oj#art_12
% title      : Record-keeping
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : gpt-oss:120b-cloud
% prompt sha : 2ef1905b73a429ad522f86bf5e89427f4bf431a13cf1983da052b8ca1182e4c0
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('art_12').
:- pred automatic_recording_of_events/1, gloss('system automatically records events (logs) over its lifetime'), source('art_12').
:- pred logging_capability_enables_identify_risk_situations/1, gloss('logging enables identification of situations that may lead to a risk or a substantial modification'), source('art_12').
:- pred logging_capability_enables_facilitate_post_market_monitoring/1, gloss('logging facilitates post‑market monitoring'), source('art_12').
:- pred logging_capability_enables_monitor_operation/1, gloss('logging enables monitoring of the operation of high‑risk AI systems'), source('art_12').
:- pred annex_3_ai_system/1, gloss('high‑risk AI system referred to in annex III point 1(a)'), source('art_12').
:- pred logging_detail_period_of_use/1, gloss('records start and end date‑time of each use'), source('art_12').
:- pred logging_detail_reference_database/1, gloss('records the reference database against which input data was checked'), source('art_12').
:- pred logging_detail_input_data_match/1, gloss('records the input data that led to a match'), source('art_12').
:- pred logging_detail_identify_natural_persons_in_verification/1, gloss('records the natural persons involved in verification of results'), source('art_12').

required_logging_capability(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S),
    logging_capability_enables_identify_risk_situations(S),
    logging_capability_enables_facilitate_post_market_monitoring(S),
    logging_capability_enables_monitor_operation(S).

required_minimum_logging_details(S) :-
    annex_3_ai_system(S),
    logging_detail_period_of_use(S),
    logging_detail_reference_database(S),
    logging_detail_input_data_match(S),
    logging_detail_identify_natural_persons_in_verification(S).

provenance(required_logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(required_minimum_logging_details/1, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
