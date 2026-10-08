% unit       : celex:32024R1689/oj#anx_3
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : gpt-oss:120b-cloud
% prompt sha : aa9596915fb8d36952de959e8340b062a37265d663670a90bf1fff5bcff1124f
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred educational_ai_system/1, gloss('AI system intended for use in education or vocational training'), source('celex:32024R1689/oj#anx_3').
:- pred employment_ai_system/1, gloss('AI system intended for use in employment, workers’ management or self‑employment'), source('celex:32024R1689/oj#anx_3').
:- pred essential_service_ai_system/1, gloss('AI system intended for use in essential private or public services and benefits'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_ai_system/1, gloss('AI system intended for use by law‑enforcement authorities'), source('celex:32024R1689/oj#anx_3').
:- pred migration_ai_system/1, gloss('AI system intended for use in migration, asylum or border‑control management'), source('celex:32024R1689/oj#anx_3').
:- pred justice_ai_system/1, gloss('AI system intended for use in administration of justice or democratic processes'), source('celex:32024R1689/oj#anx_3').

high_risk_ai_system(S) :-
    remote_biometric_identification_system(S).

high_risk_ai_system(S) :-
    biometric_categorisation_system(S).

high_risk_ai_system(S) :-
    emotion_recognition_system(S).

high_risk_ai_system(S) :-
    safety_component(S),
    critical_infrastructure(S).

high_risk_ai_system(S) :-
    educational_ai_system(S).

high_risk_ai_system(S) :-
    employment_ai_system(S).

high_risk_ai_system(S) :-
    essential_service_ai_system(S).

high_risk_ai_system(S) :-
    law_enforcement_ai_system(S).

high_risk_ai_system(S) :-
    migration_ai_system(S).

high_risk_ai_system(S) :-
    justice_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
