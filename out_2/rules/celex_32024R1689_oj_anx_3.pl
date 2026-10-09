% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 09d5ee9f8125ef1d3fd8e423dad035be7553d7784982b795e734cb4fc1d25b80
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred required_high_risk_ai_system/1, gloss('AI system classified as high‑risk under Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_biometric_identification_system/1, gloss('remote biometric identification system not used for verification'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_biometric_categorisation_system/1, gloss('AI system for biometric categorisation based on sensitive attributes'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_emotion_recognition_system/1, gloss('AI system for emotion recognition'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_critical_infrastructure_ai_system/1, gloss('AI system used as safety component in critical infrastructure'), source('celex:32024R1689/oj#anx_3').

:- pred education_access_assignment_applies/1, gloss('AI system used to determine access or assign persons to education/vocational institutions'), source('celex:32024R1689/oj#anx_3').
:- pred education_learning_outcome_applies/1, gloss('AI system used to evaluate learning outcomes or steer learning processes'), source('celex:32024R1689/oj#anx_3').
:- pred education_assessment_applies/1, gloss('AI system used to assess appropriate level of education for an individual'), source('celex:32024R1689/oj#anx_3').
:- pred education_monitoring_prohibited_behaviour_applies/1, gloss('AI system used to monitor/detect prohibited student behaviour during tests'), source('celex:32024R1689/oj#anx_3').

:- pred employment_recruitment_applies/1, gloss('AI system used for recruitment, selection, targeted job ads, application analysis or candidate evaluation'), source('celex:32024R1689/oj#anx_3').
:- pred employment_work_relationships_applies/1, gloss('AI system used to affect work‑related relationships, task allocation or performance monitoring'), source('celex:32024R1689/oj#anx_3').

:- pred essential_services_eligibility_applies/1, gloss('AI system used by public authorities to evaluate eligibility for essential public assistance'), source('celex:32024R1689/oj#anx_3').
:- pred essential_services_creditworthiness_applies/1, gloss('AI system used to evaluate creditworthiness or credit scores, excluding fraud detection'), source('celex:32024R1689/oj#anx_3').
:- pred essential_services_insurance_risk_pricing_applies/1, gloss('AI system used for risk assessment and pricing in life/health insurance'), source('celex:32024R1689/oj#anx_3').
:- pred essential_services_emergency_dispatch_applies/1, gloss('AI system used to evaluate/classify emergency calls and dispatch priority'), source('celex:32024R1689/oj#anx_3').

:- pred law_enforcement_risk_victim_assessment_applies/1, gloss('AI system used by law enforcement to assess risk of a person becoming a victim'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_polygraph_applies/1, gloss('AI system used as polygraph or similar tool by law enforcement'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_evidence_reliability_applies/1, gloss('AI system used to evaluate reliability of evidence in investigations or prosecutions'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_offence_risk_assessment_applies/1, gloss('AI system used to assess risk of offending/re‑offending not solely based on profiling'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_profiling_applies/1, gloss('AI system used for profiling of natural persons in criminal investigations'), source('celex:32024R1689/oj#anx_3').

:- pred migration_polygraph_applies/1, gloss('AI system used as polygraph or similar tool in migration management'), source('celex:32024R1689/oj#anx_3').
:- pred migration_risk_assessment_applies/1, gloss('AI system used to assess security, irregular migration or health risk of a person entering a Member State'), source('celex:32024R1689/oj#anx_3').
:- pred migration_asylum_application_assistance_applies/1, gloss('AI system used to assist authorities with asylum/visa/residence permit applications'), source('celex:32024R1689/oj#anx_3').
:- pred migration_detection_identification_applies/1, gloss('AI system used to detect/recognise/identify persons in migration context, excluding travel‑document verification'), source('celex:32024R1689/oj#anx_3').

:- pred justice_assistance_applies/1, gloss('AI system used to assist judicial authorities in researching, interpreting facts or law'), source('celex:32024R1689/oj#anx_3').
:- pred justice_influence_election_applies/1, gloss('AI system used to influence election or referendum outcomes or voting behaviour'), source('celex:32024R1689/oj#anx_3').

% Classification of high‑risk AI systems
required_high_risk_ai_system(S) :-
    high_risk_biometric_identification_system(S).

required_high_risk_ai_system(S) :-
    high_risk_biometric_categorisation_system(S).

required_high_risk_ai_system(S) :-
    high_risk_emotion_recognition_system(S).

required_high_risk_ai_system(S) :-
    high_risk_critical_infrastructure_ai_system(S).

required_high_risk_ai_system(S) :-
    education_access_assignment_applies(S).

required_high_risk_ai_system(S) :-
    education_learning_outcome_applies(S).

required_high_risk_ai_system(S) :-
    education_assessment_applies(S).

required_high_risk_ai_system(S) :-
    education_monitoring_prohibited_behaviour_applies(S).

required_high_risk_ai_system(S) :-
    employment_recruitment_applies(S).

required_high_risk_ai_system(S) :-
    employment_work_relationships_applies(S).

required_high_risk_ai_system(S) :-
    essential_services_eligibility_applies(S).

required_high_risk_ai_system(S) :-
    essential_services_creditworthiness_applies(S).

required_high_risk_ai_system(S) :-
    essential_services_insurance_risk_pricing_applies(S).

required_high_risk_ai_system(S) :-
    essential_services_emergency_dispatch_applies(S).

required_high_risk_ai_system(S) :-
    law_enforcement_risk_victim_assessment_applies(S).

required_high_risk_ai_system(S) :-
    law_enforcement_polygraph_applies(S).

required_high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_applies(S).

required_high_risk_ai_system(S) :-
    law_enforcement_offence_risk_assessment_applies(S).

required_high_risk_ai_system(S) :-
    law_enforcement_profiling_applies(S).

required_high_risk_ai_system(S) :-
    migration_polygraph_applies(S).

required_high_risk_ai_system(S) :-
    migration_risk_assessment_applies(S).

required_high_risk_ai_system(S) :-
    migration_asylum_application_assistance_applies(S).

required_high_risk_ai_system(S) :-
    migration_detection_identification_applies(S).

required_high_risk_ai_system(S) :-
    justice_assistance_applies(S).

required_high_risk_ai_system(S) :-
    justice_influence_election_applies(S).

% Auxiliary definitions
high_risk_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification(S).

high_risk_biometric_categorisation_system(S) :-
    biometric_categorisation_system(S).

high_risk_emotion_recognition_system(S) :-
    emotion_recognition_system(S).

high_risk_critical_infrastructure_ai_system(S) :-
    safety_component(S),
    critical_infrastructure(S).

% Provenance
provenance(required_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_categorisation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_critical_infrastructure_ai_system/1, 'celex:32024R1689/oj#anx_3').

provenance(education_access_assignment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(education_learning_outcome_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(education_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(education_monitoring_prohibited_behaviour_applies/1, 'celex:32024R1689/oj#anx_3').

provenance(employment_recruitment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_work_relationships_applies/1, 'celex:32024R1689/oj#anx_3').

provenance(essential_services_eligibility_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_creditworthiness_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_insurance_risk_pricing_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_emergency_dispatch_applies/1, 'celex:32024R1689/oj#anx_3').

provenance(law_enforcement_risk_victim_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_polygraph_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_evidence_reliability_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_offence_risk_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_applies/1, 'celex:32024R1689/oj#anx_3').

provenance(migration_polygraph_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_asylum_application_assistance_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_detection_identification_applies/1, 'celex:32024R1689/oj#anx_3').

provenance(justice_assistance_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(justice_influence_election_applies/1, 'celex:32024R1689/oj#anx_3').

% References
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
