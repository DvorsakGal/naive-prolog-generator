% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 0dcfe0ec4d41c33c3e43fa11ed2c6ba0d7dba9821c574178eb23f0d47a5898df
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system_annex_iii_biometrics/1, gloss('AI system listed in Annex III point 1 (Biometrics)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_critical_infrastructure/1, gloss('AI system listed in Annex III point 2 (Critical infrastructure)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_education/1, gloss('AI system listed in Annex III point 3 (Education and vocational training)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_employment/1, gloss('AI system listed in Annex III point 4 (Employment and workers management)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_essential_services/1, gloss('AI system listed in Annex III point 5 (Access to essential services)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_law_enforcement/1, gloss('AI system listed in Annex III point 6 (Law enforcement)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_migration/1, gloss('AI system listed in Annex III point 7 (Migration, asylum and border control)'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_ai_system_annex_iii_justice/1, gloss('AI system listed in Annex III point 8 (Administration of justice and democratic processes)'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_biometric_verification/1, gloss('AI system intended solely for biometric verification to confirm claimed identity'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_financial_fraud_detection/1, gloss('AI system used for detecting financial fraud'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_travel_document_verification/1, gloss('AI system used for verification of travel documents'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_political_campaign_administration/1, gloss('AI system used to organise or structure political campaigns administratively without direct exposure to voters'), source('celex:32024R1689/oj#anx_3').

high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_biometrics(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_critical_infrastructure(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_education(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_employment(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_essential_services(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_law_enforcement(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_migration(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_justice(S).

% Point 1(a): Remote biometric identification systems
high_risk_ai_system_annex_iii_biometrics(S) :-
    remote_biometric_identification_system(S),
    \+ exempt_biometric_verification(S).

% Point 1(b): Biometric categorisation based on sensitive attributes
high_risk_ai_system_annex_iii_biometrics(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    intended_purpose(S, Purpose),
    sensitive_attribute_inference(Purpose).

% Point 1(c): Emotion recognition
high_risk_ai_system_annex_iii_biometrics(S) :-
    emotion_recognition_system(S).

% Point 2: Critical infrastructure safety components
high_risk_ai_system_annex_iii_critical_infrastructure(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, Purpose),
    critical_infrastructure_management(Purpose).

% Point 3(a): Access or admission to education
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_access_determination(Purpose).

% Point 3(b): Evaluating learning outcomes
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    learning_outcome_evaluation(Purpose).

% Point 3(c): Assessing appropriate education level
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_level_assessment(Purpose).

% Point 3(d): Monitoring prohibited behaviour during tests
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    student_test_monitoring(Purpose).

% Point 4(a): Recruitment and selection
high_risk_ai_system_annex_iii_employment(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    recruitment_or_selection(Purpose).

% Point 4(b): Decisions affecting work relationships
high_risk_ai_system_annex_iii_employment(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    work_relationship_decision(Purpose).

% Point 5(a): Eligibility for public assistance benefits
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    public_benefit_eligibility_evaluation(Purpose).

% Point 5(b): Creditworthiness assessment (excluding fraud detection)
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    creditworthiness_assessment(Purpose),
    \+ exempt_financial_fraud_detection(S).

% Point 5(c): Life and health insurance risk assessment
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    insurance_risk_assessment(Purpose).

% Point 5(d): Emergency call classification and dispatch
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    emergency_service_dispatch(Purpose).

% Point 6(a): Risk of becoming victim of crime
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    crime_victim_risk_assessment(Purpose).

% Point 6(b): Polygraphs for law enforcement
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    polygraph_tool(Purpose),
    law_enforcement_context(Purpose).

% Point 6(c): Reliability of evidence
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    evidence_reliability_evaluation(Purpose).

% Point 6(d): Offending risk assessment (not solely profiling)
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    offending_risk_assessment(Purpose),
    \+ solely_profiling_based(S).

% Point 6(e): Profiling in criminal offences
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    profiling(S),
    intended_purpose(S, Purpose),
    criminal_offence_profiling(Purpose).

% Point 7(a): Polygraphs for migration/border control
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    polygraph_tool(Purpose),
    migration_border_control_context(Purpose).

% Point 7(b): Risk assessment for entry into territory
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    entry_risk_assessment(Purpose).

% Point 7(c): Examination of asylum/visa applications
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    asylum_visa_examination(Purpose).

% Point 7(d): Detecting/identifying persons (excluding travel docs)
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    person_identification_in_migration(Purpose),
    \+ exempt_travel_document_verification(S).

% Point 8(a): Judicial assistance
high_risk_ai_system_annex_iii_justice(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    judicial_interpretation_assistance(Purpose).

% Point 8(b): Influencing elections (excluding admin tools)
high_risk_ai_system_annex_iii_justice(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    election_influence(Purpose),
    \+ exempt_political_campaign_administration(S).

% Exemption definitions
exempt_biometric_verification(S) :-
    ai_system(S),
    biometric_verification(S),
    intended_purpose(S, Purpose),
    sole_purpose_confirm_identity(Purpose).

exempt_financial_fraud_detection(S) :-
    ai_system(S),
    financial_fraud_detection_purpose(S).

exempt_travel_document_verification(S) :-
    ai_system(S),
    travel_document_verification_purpose(S).

exempt_political_campaign_administration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    political_campaign_administrative_tool(Purpose),
    \+ direct_exposure_to_voters(S).

% Helper predicates for intended purposes
sensitive_attribute_inference(purpose(biometric_categorisation, sensitive_attributes)).
critical_infrastructure_management(purpose(safety_component, critical_digital_infrastructure)).
critical_infrastructure_management(purpose(safety_component, road_traffic)).
critical_infrastructure_management(purpose(safety_component, water_supply)).
critical_infrastructure_management(purpose(safety_component, gas_supply)).
critical_infrastructure_management(purpose(safety_component, heating_supply)).
critical_infrastructure_management(purpose(safety_component, electricity_supply)).
education_access_determination(purpose(access_or_admission, educational_institution)).
education_access_determination(purpose(assign_persons, educational_institution)).
learning_outcome_evaluation(purpose(evaluate_learning_outcomes, _)).
education_level_assessment(purpose(assess_education_level, _)).
student_test_monitoring(purpose(monitor_prohibited_behaviour, tests)).
recruitment_or_selection(purpose(recruitment, _)).
recruitment_or_selection(purpose(selection, _)).
recruitment_or_selection(purpose(targeted_job_advertisements, _)).
recruitment_or_selection(purpose(filter_job_applications, _)).
work_relationship_decision(purpose(decision, terms_of_work)).
work_relationship_decision(purpose(decision, promotion)).
work_relationship_decision(purpose(decision, termination)).
work_relationship_decision(purpose(allocate_tasks, individual_behaviour)).
work_relationship_decision(purpose(monitor_performance, work_relationship)).
public_benefit_eligibility_evaluation(purpose(evaluate_eligibility, essential_public_assistance)).
creditworthiness_assessment(purpose(evaluate_creditworthiness, _)).
creditworthiness_assessment(purpose(establish_credit_score, _)).
insurance_risk_assessment(purpose(risk_assessment, life_insurance)).
insurance_risk_assessment(purpose(pricing, life_insurance)).
insurance_risk_assessment(purpose(risk_assessment, health_insurance)).
insurance_risk_assessment(purpose(pricing, health_insurance)).
emergency_service_dispatch(purpose(classify_emergency_calls, _)).
emergency_service_dispatch(purpose(dispatch_emergency_services, _)).
emergency_service_dispatch(purpose(priority_dispatch, emergency_services)).
emergency_service_dispatch(purpose(patient_triage, emergency_healthcare)).
crime_victim_risk_assessment(purpose(assess_risk, victim_of_criminal_offences)).
polygraph_tool(purpose(polygraph, _)).
evidence_reliability_evaluation(purpose(evaluate_reliability, evidence)).
offending_risk_assessment(purpose(assess_risk, offending)).
offending_risk_assessment(purpose(assess_risk, re_offending)).
criminal_offence_profiling(purpose(profiling, criminal_offences)).
migration_border_control_context(purpose(_, migration)).
migration_border_control_context(purpose(_, border_control)).
entry_risk_assessment(purpose(assess_risk, entry_into_territory)).
asylum_visa_examination(purpose(examine_application, asylum)).
asylum_visa_examination(purpose(examine_application, visa)).
asylum_visa_examination(purpose(examine_application, residence_permit)).
person_identification_in_migration(purpose(detect_persons, migration_context)).
person_identification_in_migration(purpose(recognise_persons, migration_context)).
person_identification_in_migration(purpose(identify_persons, migration_context)).
judicial_interpretation_assistance(purpose(assist_judicial_authority, interpret_facts_and_law)).
judicial_interpretation_assistance(purpose(assist_judicial_authority, apply_law)).
judicial_interpretation_assistance(purpose(alternative_dispute_resolution, _)).
election_influence(purpose(influence_election_outcome, _)).
election_influence(purpose(influence_referendum_outcome, _)).
election_influence(purpose(influence_voting_behaviour, _)).
political_campaign_administrative_tool(purpose(organise_political_campaign, administrative)).
political_campaign_administrative_tool(purpose(structure_political_campaign, logistical)).
sole_purpose_confirm_identity(purpose(confirm_identity, sole)).
law_enforcement_context(purpose(_, law_enforcement)).

direct_exposure_to_voters(S) :-
    ai_system(S),
    output_directly_exposed_to_natural_persons(S).

provenance(high_risk_ai_system_annex_iii_biometrics/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_education/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_employment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_essential_services/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_migration/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_justice/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_biometric_verification/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_financial_fraud_detection/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_travel_document_verification/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_political_campaign_administration/1, 'celex:32024R1689/oj#anx_3').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
