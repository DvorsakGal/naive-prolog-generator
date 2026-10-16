% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d1dbc8abbf2e490696d9953cfcabce376dc29294b0ab2ba47b42df0c819df362
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_verification_system/1, gloss('AI system for biometric verification'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_categorisation_system_sensitive/1, gloss('AI system for biometric categorisation by sensitive attributes'), source('celex:32024R1689/oj#anx_3').
:- pred emotion_recognition_system_high_risk/1, gloss('AI system for emotion recognition under Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred safety_component_critical_infrastructure/1, gloss('AI system as safety component in critical infrastructure'), source('celex:32024R1689/oj#anx_3').
:- pred education_access_system/1, gloss('AI system for determining access to education'), source('celex:32024R1689/oj#anx_3').
:- pred learning_outcome_evaluation_system/1, gloss('AI system for evaluating learning outcomes'), source('celex:32024R1689/oj#anx_3').
:- pred education_level_assessment_system/1, gloss('AI system for assessing appropriate education level'), source('celex:32024R1689/oj#anx_3').
:- pred student_monitoring_system/1, gloss('AI system for monitoring prohibited student behaviour'), source('celex:32024R1689/oj#anx_3').
:- pred employment_recruitment_system/1, gloss('AI system for recruitment or selection'), source('celex:32024R1689/oj#anx_3').
:- pred employment_decision_system/1, gloss('AI system for decisions affecting work relationships'), source('celex:32024R1689/oj#anx_3').
:- pred public_benefit_evaluation_system/1, gloss('AI system for evaluating eligibility for public benefits'), source('celex:32024R1689/oj#anx_3').
:- pred creditworthiness_evaluation_system/1, gloss('AI system for evaluating creditworthiness'), source('celex:32024R1689/oj#anx_3').
:- pred insurance_risk_assessment_system/1, gloss('AI system for risk assessment in life and health insurance'), source('celex:32024R1689/oj#anx_3').
:- pred emergency_response_system/1, gloss('AI system for emergency call classification and dispatch'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_victim_risk_system/1, gloss('AI system for assessing risk of becoming victim'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_polygraph_system/1, gloss('AI system used as polygraph by law enforcement'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_evidence_reliability_system/1, gloss('AI system for evaluating reliability of evidence'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_offending_risk_system/1, gloss('AI system for assessing risk of offending'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_profiling_system/1, gloss('AI system for profiling in criminal investigations'), source('celex:32024R1689/oj#anx_3').
:- pred migration_polygraph_system/1, gloss('AI system used as polygraph in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred migration_risk_assessment_system/1, gloss('AI system for assessing risk in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred migration_application_examination_system/1, gloss('AI system for examining asylum or visa applications'), source('celex:32024R1689/oj#anx_3').
:- pred migration_identification_system/1, gloss('AI system for detecting or identifying persons in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred judicial_assistance_system/1, gloss('AI system for assisting judicial authorities'), source('celex:32024R1689/oj#anx_3').
:- pred election_influence_system/1, gloss('AI system for influencing elections or referenda'), source('celex:32024R1689/oj#anx_3').

% 1(a) Remote biometric identification systems, excluding biometric verification
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_system(S).

biometric_verification_system(S) :-
    ai_system(S),
    biometric_verification(S).

% 1(b) Biometric categorisation by sensitive attributes
high_risk_ai_system(S) :-
    biometric_categorisation_system_sensitive(S).

biometric_categorisation_system_sensitive(S) :-
    biometric_categorisation_system(S).

% 1(c) Emotion recognition
high_risk_ai_system(S) :-
    emotion_recognition_system_high_risk(S).

emotion_recognition_system_high_risk(S) :-
    emotion_recognition_system(S).

% 2 Critical infrastructure safety components
high_risk_ai_system(S) :-
    safety_component_critical_infrastructure(S).

safety_component_critical_infrastructure(S) :-
    ai_system(S),
    safety_component(S).

% 3(a) Education access
high_risk_ai_system(S) :-
    education_access_system(S).

% 3(b) Learning outcome evaluation
high_risk_ai_system(S) :-
    learning_outcome_evaluation_system(S).

% 3(c) Education level assessment
high_risk_ai_system(S) :-
    education_level_assessment_system(S).

% 3(d) Student monitoring
high_risk_ai_system(S) :-
    student_monitoring_system(S).

% 4(a) Employment recruitment
high_risk_ai_system(S) :-
    employment_recruitment_system(S).

% 4(b) Employment decisions
high_risk_ai_system(S) :-
    employment_decision_system(S).

% 5(a) Public benefit evaluation
high_risk_ai_system(S) :-
    public_benefit_evaluation_system(S).

% 5(b) Creditworthiness evaluation, excluding financial fraud detection
high_risk_ai_system(S) :-
    creditworthiness_evaluation_system(S).

% 5(c) Insurance risk assessment
high_risk_ai_system(S) :-
    insurance_risk_assessment_system(S).

% 5(d) Emergency response
high_risk_ai_system(S) :-
    emergency_response_system(S).

% 6(a) Law enforcement victim risk
high_risk_ai_system(S) :-
    law_enforcement_victim_risk_system(S).

% 6(b) Law enforcement polygraph
high_risk_ai_system(S) :-
    law_enforcement_polygraph_system(S).

% 6(c) Law enforcement evidence reliability
high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_system(S).

% 6(d) Law enforcement offending risk
high_risk_ai_system(S) :-
    law_enforcement_offending_risk_system(S).

% 6(e) Law enforcement profiling
high_risk_ai_system(S) :-
    law_enforcement_profiling_system(S).

% 7(a) Migration polygraph
high_risk_ai_system(S) :-
    migration_polygraph_system(S).

% 7(b) Migration risk assessment
high_risk_ai_system(S) :-
    migration_risk_assessment_system(S).

% 7(c) Migration application examination
high_risk_ai_system(S) :-
    migration_application_examination_system(S).

% 7(d) Migration identification, excluding travel document verification
high_risk_ai_system(S) :-
    migration_identification_system(S).

% 8(a) Judicial assistance
high_risk_ai_system(S) :-
    judicial_assistance_system(S).

% 8(b) Election influence, excluding administrative tools
high_risk_ai_system(S) :-
    election_influence_system(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_categorisation_system_sensitive/1, 'celex:32024R1689/oj#anx_3').
provenance(emotion_recognition_system_high_risk/1, 'celex:32024R1689/oj#anx_3').
provenance(safety_component_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_system/1, 'celex:32024R1689/oj#anx_3').
provenance(learning_outcome_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_level_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(student_monitoring_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_recruitment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_decision_system/1, 'celex:32024R1689/oj#anx_3').
provenance(public_benefit_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(creditworthiness_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(insurance_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(emergency_response_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_victim_risk_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_evidence_reliability_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_offending_risk_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_application_examination_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(judicial_assistance_system/1, 'celex:32024R1689/oj#anx_3').
provenance(election_influence_system/1, 'celex:32024R1689/oj#anx_3').

% References
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
