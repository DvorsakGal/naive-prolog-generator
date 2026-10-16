% unit       : celex:32024R1689/oj#art_12
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 70e79e244db88cdd6ff0ebee550f0f288aea96719cae9fe04fa245b94857b9e1
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6b5d20a02f51e183c13172a009b77c4b3e9a045f1c39596e626ee6b635747e39
% cached     : False
% title      : Record-keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_12').
:- pred required_logging_capabilities/1, gloss('AI system is required to have logging capabilities satisfying Article 12'), source('celex:32024R1689/oj#art_12').
:- pred automatic_recording_of_events/1, gloss('AI system technically allows automatic recording of events over its lifetime'), source('celex:32024R1689/oj#art_12').
:- pred enables_traceability_logging/1, gloss('Logging capabilities enable recording of events relevant for Article 12(2) objectives'), source('celex:32024R1689/oj#art_12').
:- pred logs_period_of_use/1, gloss('Logging capabilities provide recording of the start and end date and time of each use'), source('celex:32024R1689/oj#art_12').
:- pred logs_reference_database/1, gloss('Logging capabilities record the reference database checked against input data'), source('celex:32024R1689/oj#art_12').
:- pred logs_input_data_matches/1, gloss('Logging capabilities record input data for which search led to a match'), source('celex:32024R1689/oj#art_12').
:- pred logs_identifying_verifying_persons/1, gloss('Logging capabilities record natural persons involved in verification of results'), source('celex:32024R1689/oj#art_12').
:- pred complies_with_biometric_logging_minimum/1, gloss('High-risk AI system satisfies minimum logging requirements of Article 12(3)'), source('celex:32024R1689/oj#art_12').

% Article 12(1) & (2): High-risk AI systems must have logging capabilities allowing automatic recording of events
% and ensuring traceability appropriate to intended purpose.
required_logging_capabilities(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S),
    enables_traceability_logging(S).

% Article 12(3): Specific minimum logging requirements for systems referred to in Annex III, point 1(a).
complies_with_biometric_logging_minimum(S) :-
    biometrics_annex_3_1_a(S),
    logs_period_of_use(S),
    logs_reference_database(S),
    logs_input_data_matches(S),
    logs_identifying_verifying_persons(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_capabilities/1, 'celex:32024R1689/oj#art_12').
provenance(automatic_recording_of_events/1, 'celex:32024R1689/oj#art_12').
provenance(enables_traceability_logging/1, 'celex:32024R1689/oj#art_12').
provenance(logs_period_of_use/1, 'celex:32024R1689/oj#art_12').
provenance(logs_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(logs_input_data_matches/1, 'celex:32024R1689/oj#art_12').
provenance(logs_identifying_verifying_persons/1, 'celex:32024R1689/oj#art_12').
provenance(complies_with_biometric_logging_minimum/1, 'celex:32024R1689/oj#art_12').

% Cross-references
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').
