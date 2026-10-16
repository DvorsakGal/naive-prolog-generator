% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ef1baa02e8f5b3ec8081dfdb33ae10fc043ea9eeb3f6804a721523bbff98190c
% cached     : False
% title      : Record-keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_12').
:- pred logging_capability/1, gloss('automatic recording of events over the lifetime of the system'), source('celex:32024R1689/oj#art_12').
:- pred traceability_appropriate_to_intended_purpose/1, gloss('level of traceability appropriate to the intended purpose'), source('celex:32024R1689/oj#art_12').
:- pred records_event/2, gloss('logging capability records a specific event'), source('celex:32024R1689/oj#art_12').
:- pred risk_situation/1, gloss('situation that may result in the system presenting a risk or in a substantial modification'), source('celex:32024R1689/oj#art_12').
:- pred remote_biometric_identification_high_risk/1, gloss('high-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_12').
:- pred use_period/1, gloss('period of each use with start and end date and time'), source('celex:32024R1689/oj#art_12').
:- pred reference_database/1, gloss('reference database against which input data has been checked'), source('celex:32024R1689/oj#art_12').
:- pred matched_input_data/1, gloss('input data for which the search has led to a match'), source('celex:32024R1689/oj#art_12').
:- pred verifying_natural_person/1, gloss('natural person involved in the verification of results'), source('celex:32024R1689/oj#art_12').

% Article 12(1): High-risk AI systems shall technically allow for automatic recording of events (logs) over the lifetime of the system
must_enable_automatic_logging(S) :-
    high_risk_ai_system(S).

logging_capability(S) :-
    high_risk_ai_system(S),
    must_enable_automatic_logging(S).

% Article 12(2): Logging capabilities shall enable recording of events relevant for specific purposes
traceability_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    logging_capability(S).

records_event(S, risk_situation_identification) :-
    high_risk_ai_system(S),
    traceability_appropriate_to_intended_purpose(S).

records_event(S, post_market_monitoring_facilitation) :-
    high_risk_ai_system(S),
    traceability_appropriate_to_intended_purpose(S),
    post_market_monitoring_system(S).

records_event(S, operation_monitoring) :-
    high_risk_ai_system(S),
    traceability_appropriate_to_intended_purpose(S),
    deployer(S).

% Article 12(3): Specific logging requirements for remote biometric identification high-risk AI systems
remote_biometric_identification_high_risk(S) :-
    high_risk_ai_system(S),
    remote_biometric_identification_system(S).

records_event(S, use_period_recording) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).

records_event(S, reference_database_recording) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).

records_event(S, matched_input_data_recording) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).

records_event(S, verifying_person_identification) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(traceability_appropriate_to_intended_purpose/1, 'celex:32024R1689/oj#art_12').
provenance(records_event/2, 'celex:32024R1689/oj#art_12').
provenance(risk_situation/1, 'celex:32024R1689/oj#art_12').
provenance(remote_biometric_identification_high_risk/1, 'celex:32024R1689/oj#art_12').
provenance(use_period/1, 'celex:32024R1689/oj#art_12').
provenance(reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(matched_input_data/1, 'celex:32024R1689/oj#art_12').
provenance(verifying_natural_person/1, 'celex:32024R1689/oj#art_12').
provenance(must_enable_automatic_logging/1, 'celex:32024R1689/oj#art_12').

% References
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
