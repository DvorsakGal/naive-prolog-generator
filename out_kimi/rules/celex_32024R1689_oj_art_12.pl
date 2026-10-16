% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e47ce411d088e4c3e95b1163d3c1bc1e89fa2aef079f6c1da2fa3fe62f340789
% cached     : False
% title      : Record-keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_12').
:- pred automatic_logging_required/1, gloss('high-risk AI system must technically allow automatic recording of logs'), source('celex:32024R1689/oj#art_12/par_1').
:- pred logging_capabilities/1, gloss('logging capabilities of a high-risk AI system'), source('celex:32024R1689/oj#art_12/par_2').
:- pred logging_event_relevant_for/2, gloss('logging event is relevant for a purpose'), source('celex:32024R1689/oj#art_12/par_2').
:- pred biometric_identification_high_risk_system/1, gloss('high-risk AI system referred to in Annex 3 point 1(a)'), source('celex:32024R1689/oj#art_12/par_3').
:- pred minimum_logging_requirement/2, gloss('minimum logging requirement for biometric identification systems'), source('celex:32024R1689/oj#art_12/par_3').

automatic_logging_required(S) :-
    high_risk_ai_system(S).

logging_capabilities(S) :-
    high_risk_ai_system(S).

logging_event_relevant_for(E, identify_risk_or_modification) :-
    logging_capabilities(S),
    event_of(E, S),
    (risk_presented_by_system(E, S, art_79_par_1) ; substantial_modification_trigger(E, S)).

logging_event_relevant_for(E, facilitate_post_market_monitoring) :-
    logging_capabilities(S),
    event_of(E, S),
    post_market_monitoring_relevant(E, S).

logging_event_relevant_for(E, monitor_operation_deployer) :-
    logging_capabilities(S),
    event_of(E, S),
    deployer_monitoring_relevant(E, S, art_26_par_5).

biometric_identification_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_in_annex_3_point_1_a(S).

minimum_logging_requirement(S, recording_period_of_use) :-
    biometric_identification_high_risk_system(S).

minimum_logging_requirement(S, reference_database_checked) :-
    biometric_identification_high_risk_system(S).

minimum_logging_requirement(S, input_data_match) :-
    biometric_identification_high_risk_system(S).

minimum_logging_requirement(S, identification_of_verification_persons) :-
    biometric_identification_high_risk_system(S).

provenance(automatic_logging_required/1, 'celex:32024R1689/oj#art_12/par_1').
provenance(logging_capabilities/1, 'celex:32024R1689/oj#art_12/par_2').
provenance(logging_event_relevant_for/2, 'celex:32024R1689/oj#art_12/par_2').
provenance(biometric_identification_high_risk_system/1, 'celex:32024R1689/oj#art_12/par_3').
provenance(minimum_logging_requirement/2, 'celex:32024R1689/oj#art_12/par_3').

references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
