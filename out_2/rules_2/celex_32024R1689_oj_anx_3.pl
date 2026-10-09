% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 8ecee5d94c9037f5fe420ee4537195b4d5dcca0dd3fbf24e8cab2cce67ceafba
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
% --- High‑risk AI system definitions from Annex III --------------------------------

% 1. Remote biometric identification systems, except those used solely for biometric verification
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 2. Biometric categorisation systems based on sensitive or protected attributes
high_risk_ai_system(S) :-
    biometric_categorisation_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 3. Emotion‑recognition systems
high_risk_ai_system(S) :-
    emotion_recognition_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 4. AI systems used as safety components in critical digital infrastructure, road traffic,
%    water, gas, heating or electricity supply
high_risk_ai_system(S) :-
    safety_component_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 5. Education and vocational training ------------------------------------------------

% (a) Systems determining access or admission to educational/vocational institutions
high_risk_ai_system(S) :-
    education_access_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (b) Systems evaluating learning outcomes (including steering learning processes)
high_risk_ai_system(S) :-
    education_learning_outcome_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (c) Systems assessing the appropriate level of education for an individual
high_risk_ai_system(S) :-
    education_level_assessment_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (d) Systems monitoring and detecting prohibited behaviour of students during tests
high_risk_ai_system(S) :-
    education_test_monitoring_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 6. Employment, workers’ management and access to self‑employment ---------------------

% (a) Recruitment or selection systems (targeted ads, application filtering, candidate evaluation)
high_risk_ai_system(S) :-
    employment_recruitment_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (b) Systems influencing work‑related relationships, promotions, terminations,
%     task allocation, performance monitoring and evaluation
high_risk_ai_system(S) :-
    employment_work_relationship_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 7. Access to and enjoyment of essential private and public services -------------------

% (a) Public‑authority eligibility assessment for essential public assistance (including healthcare)
high_risk_ai_system(S) :-
    public_authority_eligibility_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (b) Credit‑worthiness assessment (excluding fraud‑detection systems)
high_risk_ai_system(S) :-
    creditworthiness_assessment_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (c) Risk assessment and pricing for life and health insurance
high_risk_ai_system(S) :-
    life_health_insurance_pricing_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (d) Emergency‑call classification, dispatch priority and triage systems
high_risk_ai_system(S) :-
    emergency_services_dispatch_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 8. Law enforcement (subject to Union or national law) --------------------------------

% (a) Risk‑assessment of a natural person becoming a victim of criminal offences
high_risk_ai_system(S) :-
    law_enforcement_victim_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (b) Polygraph‑type tools for law enforcement
high_risk_ai_system(S) :-
    law_enforcement_polygraph_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (c) Evidence‑reliability evaluation tools for investigations or prosecutions
high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (d) Offender‑risk or re‑offence risk assessment (not solely based on profiling)
high_risk_ai_system(S) :-
    law_enforcement_offender_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (e) Profiling tools for natural persons in the course of detection, investigation or prosecution
high_risk_ai_system(S) :-
    law_enforcement_profiling_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 9. Migration, asylum and border control management (subject to Union or national law) ----

% (a) Polygraph‑type tools for competent public authorities
high_risk_ai_system(S) :-
    migration_polygraph_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (b) Risk‑assessment tools (security, irregular migration, health) for persons entering a Member State
high_risk_ai_system(S) :-
    migration_risk_assessment_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (c) Assistance tools for examination of asylum, visa or residence‑permit applications
high_risk_ai_system(S) :-
    migration_asylum_assistance_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (d) Identification tools for migration, asylum or border control (excluding travel‑document verification)
high_risk_ai_system(S) :-
    migration_identification_ai_system(S),
    \+ travel_document_verification_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% 10. Administration of justice and democratic processes ---------------------------------

% (a) Systems assisting judicial authorities in research, interpretation and application of law
high_risk_ai_system(S) :-
    justice_assistance_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% (b) Systems influencing election or referendum outcomes or voting behaviour (excluding tools not directly exposed to voters)
high_risk_ai_system(S) :-
    justice_election_influence_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').

% --- References ---------------------------------------------------------------------

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
