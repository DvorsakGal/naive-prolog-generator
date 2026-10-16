% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 6b072fad88b8942096c43c8468b742f069e6b2795656197e4a38f4e2ad448664
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred annex_3_high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_categorisation_system/1, gloss('AI system intended for biometric categorisation by sensitive attributes'), source('celex:32024R1689/oj#anx_3').
:- pred emotion_recognition_system/1, gloss('AI system intended for emotion recognition'), source('celex:32024R1689/oj#anx_3').
:- pred critical_infrastructure_safety_component/1, gloss('AI system intended as safety component in critical infrastructure'), source('celex:32024R1689/oj#anx_3').
:- pred education_access_system/1, gloss('AI system intended to determine access or admission to education'), source('celex:32024R1689/oj#anx_3').
:- pred learning_outcome_evaluation_system/1, gloss('AI system intended to evaluate learning outcomes'), source('celex:32024R1689/oj#anx_3').
:- pred education_level_assessment_system/1, gloss('AI system intended to assess appropriate education level'), source('celex:32024R1689/oj#anx_3').
:- pred student_monitoring_system/1, gloss('AI system intended to monitor prohibited student behaviour during tests'), source('celex:32024R1689/oj#anx_3').
:- pred recruitment_system/1, gloss('AI system intended for recruitment or selection of natural persons'), source('celex:32024R1689/oj#anx_3').
:- pred employment_decision_system/1, gloss('AI system intended to make decisions affecting work-related relationships'), source('celex:32024R1689/oj#anx_3').
:- pred public_benefit_eligibility_system/1, gloss('AI system intended to evaluate eligibility for essential public benefits'), source('celex:32024R1689/oj#anx_3').
:- pred creditworthiness_system/1, gloss('AI system intended to evaluate creditworthiness or credit score'), source('celex:32024R1689/oj#anx_3').
:- pred insurance_risk_assessment_system/1, gloss('AI system intended for risk assessment and pricing in life and health insurance'), source('celex:32024R1689/oj#anx_3').
:- pred emergency_response_system/1, gloss('AI system intended to evaluate emergency calls or dispatch emergency services'), source('celex:32024R1689/oj#anx_3').
:- pred victimisation_risk_assessment_system/1, gloss('AI system intended to assess risk of a person becoming victim of crime'), source('celex:32024R1689/oj#anx_3').
:- pred polygraph_system/1, gloss('AI system intended as polygraph or similar tool'), source('celex:32024R1689/oj#anx_3').
:- pred evidence_reliability_system/1, gloss('AI system intended to evaluate reliability of evidence'), source('celex:32024R1689/oj#anx_3').
:- pred offending_risk_assessment_system/1, gloss('AI system intended to assess risk of offending or re-offending'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_profiling_system/1, gloss('AI system intended for profiling in criminal detection or investigation'), source('celex:32024R1689/oj#anx_3').
:- pred migration_polygraph_system/1, gloss('AI system intended as polygraph in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred migration_risk_assessment_system/1, gloss('AI system intended to assess risk in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred asylum_application_examination_system/1, gloss('AI system intended to examine asylum, visa or residence applications'), source('celex:32024R1689/oj#anx_3').
:- pred migration_identification_system/1, gloss('AI system intended to detect or identify persons in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred judicial_assistance_system/1, gloss('AI system intended to assist judicial authority in researching and applying law'), source('celex:32024R1689/oj#anx_3').
:- pred election_influence_system/1, gloss('AI system intended to influence election or referendum outcomes'), source('celex:32024R1689/oj#anx_3').

% Point 1: Biometrics
annex_3_high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_only_system(S).

biometric_verification_only_system(S) :-
    ai_system(S),
    biometric_verification(S),
    intended_purpose(S, confirm_identity).

annex_3_high_risk_ai_system(S) :-
    biometric_categorisation_system(S).

biometric_categorisation_system(S) :-
    ai_system(S),
    intended_purpose(S, biometric_categorisation),
    categorises_by_sensitive_attributes(S).

categorises_by_sensitive_attributes(S) :-
    ai_system(S),
    infers_sensitive_attributes(S).

annex_3_high_risk_ai_system(S) :-
    emotion_recognition_system(S).

emotion_recognition_system(S) :-
    ai_system(S),
    intended_purpose(S, emotion_recognition).

% Point 2: Critical infrastructure
annex_3_high_risk_ai_system(S) :-
    critical_infrastructure_safety_component(S).

critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, management_of(critical_digital_infrastructure)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, management_of(road_traffic)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(water)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(gas)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(heating)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(electricity)).

% Point 3: Education and vocational training
annex_3_high_risk_ai_system(S) :-
    education_access_system(S).

education_access_system(S) :-
    ai_system(S),
    intended_purpose(S, determine_access_to_education).

annex_3_high_risk_ai_system(S) :-
    learning_outcome_evaluation_system(S).

learning_outcome_evaluation_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_learning_outcomes).

annex_3_high_risk_ai_system(S) :-
    education_level_assessment_system(S).

education_level_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_education_level).

annex_3_high_risk_ai_system(S) :-
    student_monitoring_system(S).

student_monitoring_system(S) :-
    ai_system(S),
    intended_purpose(S, monitor_prohibited_behaviour_during_tests).

% Point 4: Employment
annex_3_high_risk_ai_system(S) :-
    recruitment_system(S).

recruitment_system(S) :-
    ai_system(S),
    intended_purpose(S, recruitment_or_selection).

annex_3_high_risk_ai_system(S) :-
    employment_decision_system(S).

employment_decision_system(S) :-
    ai_system(S),
    intended_purpose(S, employment_decisions).

% Point 5: Essential services
annex_3_high_risk_ai_system(S) :-
    public_benefit_eligibility_system(S).

public_benefit_eligibility_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_eligibility_for_public_benefits).

annex_3_high_risk_ai_system(S) :-
    creditworthiness_system(S).

creditworthiness_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_creditworthiness),
    \+ intended_purpose(S, detect_financial_fraud).

annex_3_high_risk_ai_system(S) :-
    insurance_risk_assessment_system(S).

insurance_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, risk_assessment_and_pricing(life_and_health_insurance)).

annex_3_high_risk_ai_system(S) :-
    emergency_response_system(S).

emergency_response_system(S) :-
    ai_system(S),
    intended_purpose(S, emergency_call_evaluation_or_dispatch).

% Point 6: Law enforcement
annex_3_high_risk_ai_system(S) :-
    victimisation_risk_assessment_system(S).

victimisation_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_risk_of_victimisation).

annex_3_high_risk_ai_system(S) :-
    polygraph_system(S).

polygraph_system(S) :-
    ai_system(S),
    intended_purpose(S, polygraph_or_similar).

annex_3_high_risk_ai_system(S) :-
    evidence_reliability_system(S).

evidence_reliability_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_reliability_of_evidence).

annex_3_high_risk_ai_system(S) :-
    offending_risk_assessment_system(S).

offending_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_risk_of_offending).

annex_3_high_risk_ai_system(S) :-
    law_enforcement_profiling_system(S).

law_enforcement_profiling_system(S) :-
    ai_system(S),
    intended_purpose(S, profiling_for_criminal_investigation).

% Point 7: Migration, asylum and border control
annex_3_high_risk_ai_system(S) :-
    migration_polygraph_system(S).

migration_polygraph_system(S) :-
    ai_system(S),
    intended_purpose(S, polygraph_or_similar_in_migration).

annex_3_high_risk_ai_system(S) :-
    migration_risk_assessment_system(S).

migration_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_migration_risk).

annex_3_high_risk_ai_system(S) :-
    asylum_application_examination_system(S).

asylum_application_examination_system(S) :-
    ai_system(S),
    intended_purpose(S, examine_asylum_application).

annex_3_high_risk_ai_system(S) :-
    migration_identification_system(S).

migration_identification_system(S) :-
    ai_system(S),
    intended_purpose(S, detect_or_identify_persons_in_migration),
    \+ intended_purpose(S, verify_travel_documents).

% Point 8: Administration of justice and democratic processes
annex_3_high_risk_ai_system(S) :-
    judicial_assistance_system(S).

judicial_assistance_system(S) :-
    ai_system(S),
    intended_purpose(S, assist_judicial_authority).

annex_3_high_risk_ai_system(S) :-
    election_influence_system(S).

election_influence_system(S) :-
    ai_system(S),
    intended_purpose(S, influence_election_or_referendum),
    \+ administrative_campaign_tool(S).

administrative_campaign_tool(S) :-
    ai_system(S),
    intended_purpose(S, organise_political_campaign_administratively).

% Provenance
provenance(annex_3_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_only_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_categorisation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(categorises_by_sensitive_attributes/1, 'celex:32024R1689/oj#anx_3').
provenance(emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3').
provenance(critical_infrastructure_safety_component/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_system/1, 'celex:32024R1689/oj#anx_3').
provenance(learning_outcome_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_level_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(student_monitoring_system/1, 'celex:32024R1689/oj#anx_3').
provenance(recruitment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_decision_system/1, 'celex:32024R1689/oj#anx_3').
provenance(public_benefit_eligibility_system/1, 'celex:32024R1689/oj#anx_3').
provenance(creditworthiness_system/1, 'celex:32024R1689/oj#anx_3').
provenance(insurance_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(emergency_response_system/1, 'celex:32024R1689/oj#anx_3').
provenance(victimisation_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(evidence_reliability_system/1, 'celex:32024R1689/oj#anx_3').
provenance(offending_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(asylum_application_examination_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(judicial_assistance_system/1, 'celex:32024R1689/oj#anx_3').
provenance(election_influence_system/1, 'celex:32024R1689/oj#anx_3').
provenance(administrative_campaign_tool/1, 'celex:32024R1689/oj#anx_3').

% References
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
