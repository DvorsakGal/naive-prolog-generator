% unit       : celex:32024R1689/oj#art_12
% title      : Record-keeping
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : gpt-oss:120b-cloud
% prompt sha : 3a383d0286abec566dc807f04b2ceb302ecba4d7f77dbf3b664b40685b4d2b25
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_12').
:- pred high_risk_ai_system_annex3_a/1, gloss('high‑risk AI system referred to in annex III point 1 a'), source('celex:32024R1689/oj#art_12').

:- pred required_automatic_logging/1, gloss('must allow automatic recording of events over the system lifetime'), source('celex:32024R1689/oj#art_12').
:- pred automatic_recording_of_events/1, gloss('system automatically records events'), source('celex:32024R1689/oj#art_12').
:- pred over_lifetime/1, gloss('recording persists over the lifetime of the system'), source('celex:32024R1689/oj#art_12').

:- pred required_logging_for_situation_identification/1, gloss('logging must enable recording of events relevant for identifying risk situations or substantial modifications'), source('celex:32024R1689/oj#art_12').
:- pred identifies_risk_situations/1, gloss('logging identifies situations that may result in a risk'), source('celex:32024R1689/oj#art_12').
:- pred substantial_modification_applies/1, gloss('logging covers substantial modifications'), source('celex:32024R1689/oj#art_12').

:- pred required_logging_for_post_market_monitoring/1, gloss('logging must facilitate post‑market monitoring'), source('celex:32024R1689/oj#art_12').
:- pred facilitates_post_market_monitoring/1, gloss('logging facilitates post‑market monitoring'), source('celex:32024R1689/oj#art_12').

:- pred required_logging_for_operation_monitoring/1, gloss('logging must monitor the operation of high‑risk AI systems'), source('celex:32024R1689/oj#art_12').
:- pred monitors_operation/1, gloss('logging monitors system operation'), source('celex:32024R1689/oj#art_12').

:- pred required_minimum_logging_details/1, gloss('logging must provide minimum set of details'), source('celex:32024R1689/oj#art_12').
:- pred records_use_period/1, gloss('logging records start and end date‑time of each use'), source('celex:32024R1689/oj#art_12').
:- pred records_reference_database/1, gloss('logging records the reference database used for input checking'), source('celex:32024R1689/oj#art_12').
:- pred records_input_data_match/1, gloss('logging records the input data that led to a match'), source('celex:32024R1689/oj#art_12').
:- pred records_verification_persons/1, gloss('logging records the natural persons involved in verification of results'), source('celex:32024R1689/oj#art_12').

:- pred logging_capability/1, gloss('system possesses logging capability'), source('celex:32024R1689/oj#art_12').

required_automatic_logging(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S),
    over_lifetime(S).

required_logging_for_situation_identification(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    (   identifies_risk_situations(S)
    ;   substantial_modification_applies(S)
    ).

required_logging_for_post_market_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    facilitates_post_market_monitoring(S).

required_logging_for_operation_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    monitors_operation(S).

required_minimum_logging_details(S) :-
    high_risk_ai_system_annex3_a(S),
    logging_capability(S),
    records_use_period(S),
    records_reference_database(S),
    records_input_data_match(S),
    records_verification_persons(S).

provenance(required_automatic_logging/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_situation_identification/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_minimum_logging_details/1, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
