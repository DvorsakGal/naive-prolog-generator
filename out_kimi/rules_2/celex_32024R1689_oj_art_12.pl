% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 0ea1f11faab1a69a26d57c4998cec080ff24b596ec965fc967de0ec11a985b0b
% cached     : False
% title      : Record-keeping
:- pred required_logging_capabilities/1, gloss('high-risk AI system must technically allow automatic recording of events over its lifetime'), source('celex:32024R1689/oj#art_12').
:- pred logging_enables_recording_of/2, gloss('logging capabilities enable recording of specific events'), source('celex:32024R1689/oj#art_12').
:- pred logging_event_risk_or_modification/1, gloss('event relevant for identifying risk situations or substantial modification'), source('celex:32024R1689/oj#art_12').
:- pred logging_event_post_market_monitoring/1, gloss('event relevant for facilitating post-market monitoring'), source('celex:32024R1689/oj#art_12').
:- pred logging_event_operation_monitoring/1, gloss('event relevant for monitoring operation of high-risk AI systems'), source('celex:32024R1689/oj#art_12').
:- pred minimum_logging_for_annex_3_point_1_a/1, gloss('minimum logging requirements for high-risk AI systems referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_12').
:- pred records_period_of_each_use/1, gloss('logging records period of each use with start and end date/time'), source('celex:32024R1689/oj#art_12').
:- pred records_reference_database/1, gloss('logging records reference database against which input data was checked'), source('celex:32024R1689/oj#art_12').
:- pred records_input_data_match/1, gloss('logging records input data for which search led to a match'), source('celex:32024R1689/oj#art_12').
:- pred records_verification_persons/1, gloss('logging records identification of natural persons verifying results'), source('celex:32024R1689/oj#art_12').

required_logging_capabilities(S) :-
    high_risk_ai_system(S).

logging_enables_recording_of(S, risk_or_modification) :-
    high_risk_ai_system(S),
    logging_event_risk_or_modification(S).

logging_enables_recording_of(S, post_market_monitoring) :-
    high_risk_ai_system(S),
    logging_event_post_market_monitoring(S).

logging_enables_recording_of(S, operation_monitoring) :-
    high_risk_ai_system(S),
    logging_event_operation_monitoring(S).

logging_event_risk_or_modification(S) :-
    high_risk_ai_system(S),
    risk_within_art_79_1(S).

logging_event_risk_or_modification(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).

logging_event_post_market_monitoring(S) :-
    high_risk_ai_system(S),
    post_market_monitoring(S, _).

logging_event_operation_monitoring(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    deployer_public_authority(_D).

minimum_logging_for_annex_3_point_1_a(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    records_period_of_each_use(S),
    records_reference_database(S),
    records_input_data_match(S),
    records_verification_persons(S).

provenance(required_logging_capabilities/1, 'celex:32024R1689/oj#art_12').
provenance(logging_enables_recording_of/2, 'celex:32024R1689/oj#art_12').
provenance(logging_event_risk_or_modification/1, 'celex:32024R1689/oj#art_12').
provenance(logging_event_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(logging_event_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(minimum_logging_for_annex_3_point_1_a/1, 'celex:32024R1689/oj#art_12').
provenance(records_period_of_each_use/1, 'celex:32024R1689/oj#art_12').
provenance(records_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(records_input_data_match/1, 'celex:32024R1689/oj#art_12').
provenance(records_verification_persons/1, 'celex:32024R1689/oj#art_12').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
