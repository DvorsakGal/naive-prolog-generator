% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 64fdff0c886cfb19c4afbd1383805dfe17689bfe5b4d8b69cce6068fe5cdcc7a
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_biometric_remote_identification/1, gloss('remote biometric identification system listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_biometric_categorisation/1, gloss('biometric categorisation system based on sensitive attributes listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_emotion_recognition/1, gloss('emotion recognition system listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_critical_infrastructure_safety_component/1, gloss('AI system as safety component in critical infrastructure listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_education_access_admission/1, gloss('AI system for access or admission to education listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_education_learning_outcomes/1, gloss('AI system to evaluate learning outcomes listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_education_assess_level/1, gloss('AI system to assess appropriate education level listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_education_monitor_prohibited_behaviour/1, gloss('AI system to monitor prohibited student behaviour during tests listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_employment_recruitment/1, gloss('AI system for recruitment or selection listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_employment_work_relationship_decisions/1, gloss('AI system for decisions affecting work-related relationships listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_public_services_eligibility/1, gloss('AI system to evaluate eligibility for public benefits listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_creditworthiness/1, gloss('AI system to evaluate creditworthiness or credit score listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_life_health_insurance_risk_assessment/1, gloss('AI system for risk assessment and pricing in life and health insurance listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_emergency_calls_evaluation/1, gloss('AI system to evaluate and classify emergency calls listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_law_enforcement_victim_risk/1, gloss('AI system to assess risk of becoming victim of crime listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_law_enforcement_polygraph/1, gloss('AI system used as polygraph by law enforcement listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_law_enforcement_evidence_reliability/1, gloss('AI system to evaluate reliability of evidence listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_law_enforcement_offending_risk/1, gloss('AI system to assess risk of offending or re-offending listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_law_enforcement_profiling/1, gloss('AI system for profiling in law enforcement listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_migration_polygraph/1, gloss('AI system used as polygraph in migration context listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_migration_risk_assessment/1, gloss('AI system to assess migration security or health risk listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_migration_asylum_examination/1, gloss('AI system to assist examination of asylum or visa applications listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_migration_identification/1, gloss('AI system for detecting, recognising or identifying persons in migration context listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_justice_research_interpretation/1, gloss('AI system to assist judicial authority in researching and interpreting facts and law listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred high_risk_election_influence/1, gloss('AI system to influence election or referendum outcome listed as high-risk in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_biometric_verification_confirmation/1, gloss('biometric verification system solely to confirm identity is exempt from high-risk classification'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_financial_fraud_detection/1, gloss('AI system for detecting financial fraud is exempt from high-risk creditworthiness classification'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_travel_document_verification/1, gloss('verification of travel documents is exempt from high-risk migration identification classification'), source('celex:32024R1689/oj#anx_3').
:- pred exempt_political_campaign_administrative_tool/1, gloss('AI system for administrative or logistical campaign organisation not directly exposed to persons is exempt from high-risk election influence classification'), source('celex:32024R1689/oj#anx_3').

% 1. Biometrics
high_risk_ai_system(S) :-
    high_risk_biometric_remote_identification(S).

high_risk_ai_system(S) :-
    high_risk_biometric_categorisation(S).

high_risk_ai_system(S) :-
    high_risk_emotion_recognition(S).

% 1(a) remote biometric identification, excluding biometric verification for identity confirmation
high_risk_biometric_remote_identification(S) :-
    ai_system(S),
    remote_biometric_identification_system(S),
    intended_purpose(S),
    \+ exempt_biometric_verification_confirmation(S).

exempt_biometric_verification_confirmation(S) :-
    ai_system(S),
    biometric_verification(S),
    sole_purpose_confirm_identity(S).

sole_purpose_confirm_identity(S) :-
    intended_purpose(S),
    purpose(confirm_specific_person_identity(S)).

% 1(b) biometric categorisation based on sensitive or protected attributes
high_risk_biometric_categorisation(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    intended_purpose(S),
    categorises_sensitive_attributes(S).

categorises_sensitive_attributes(S) :-
    biometric_categorisation_system(S),
    based_on_inference_of_attributes(S),
    attributes_are_sensitive_or_protected(S).

% 1(c) emotion recognition
high_risk_emotion_recognition(S) :-
    ai_system(S),
    emotion_recognition_system(S),
    intended_purpose(S).

% 2. Critical infrastructure
high_risk_ai_system(S) :-
    high_risk_critical_infrastructure_safety_component(S).

high_risk_critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S),
    purpose(management_operation_critical_infrastructure(S)),
    critical_infrastructure(S).

% 3. Education and vocational training
high_risk_ai_system(S) :-
    high_risk_education_access_admission(S).

high_risk_ai_system(S) :-
    high_risk_education_learning_outcomes(S).

high_risk_ai_system(S) :-
    high_risk_education_assess_level(S).

high_risk_ai_system(S) :-
    high_risk_education_monitor_prohibited_behaviour(S).

% 3(a) access or admission
high_risk_education_access_admission(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(determine_access_or_admission_education(S)),
    educational_institution(S).

% 3(b) evaluate learning outcomes
high_risk_education_learning_outcomes(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_learning_outcomes(S)),
    educational_institution(S).

% 3(c) assess appropriate level of education
high_risk_education_assess_level(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_appropriate_education_level(S)),
    educational_institution(S).

% 3(d) monitor and detect prohibited behaviour during tests
high_risk_education_monitor_prohibited_behaviour(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(monitor_detect_prohibited_behaviour_tests(S)),
    educational_institution(S).

% 4. Employment, workers' management and access to self-employment
high_risk_ai_system(S) :-
    high_risk_employment_recruitment(S).

high_risk_ai_system(S) :-
    high_risk_employment_work_relationship_decisions(S).

% 4(a) recruitment or selection
high_risk_employment_recruitment(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(recruitment_or_selection_natural_persons(S)).

% 4(b) decisions affecting work-related relationships
high_risk_employment_work_relationship_decisions(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(decisions_affecting_work_related_relationships(S)).

% 5. Access to and enjoyment of essential private services and essential public services and benefits
high_risk_ai_system(S) :-
    high_risk_public_services_eligibility(S).

high_risk_ai_system(S) :-
    high_risk_creditworthiness(S).

high_risk_ai_system(S) :-
    high_risk_life_health_insurance_risk_assessment(S).

high_risk_ai_system(S) :-
    high_risk_emergency_calls_evaluation(S).

% 5(a) evaluate eligibility for essential public assistance benefits
high_risk_public_services_eligibility(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_eligibility_essential_public_benefits(S)),
    used_by_public_authority_or_on_behalf(S).

% 5(b) evaluate creditworthiness or credit score, except financial fraud detection
high_risk_creditworthiness(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_creditworthiness_or_credit_score(S)),
    \+ exempt_financial_fraud_detection(S).

exempt_financial_fraud_detection(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(detect_financial_fraud(S)).

% 5(c) risk assessment and pricing for life and health insurance
high_risk_life_health_insurance_risk_assessment(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(risk_assessment_pricing_life_health_insurance(S)).

% 5(d) evaluate and classify emergency calls or dispatch emergency services
high_risk_emergency_calls_evaluation(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_classify_emergency_calls(S)).

high_risk_emergency_calls_evaluation(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(dispatch_or_prioritise_emergency_first_response(S)).

% 6. Law enforcement
high_risk_ai_system(S) :-
    high_risk_law_enforcement_victim_risk(S).

high_risk_ai_system(S) :-
    high_risk_law_enforcement_polygraph(S).

high_risk_ai_system(S) :-
    high_risk_law_enforcement_evidence_reliability(S).

high_risk_ai_system(S) :-
    high_risk_law_enforcement_offending_risk(S).

high_risk_ai_system(S) :-
    high_risk_law_enforcement_profiling(S).

% 6(a) assess risk of becoming victim of criminal offences
high_risk_law_enforcement_victim_risk(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_risk_victim_criminal_offences(S)),
    used_by_law_enforcement_or_on_behalf(S).

% 6(b) polygraphs or similar tools
high_risk_law_enforcement_polygraph(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(used_as_polygraph_or_similar_tool(S)),
    used_by_law_enforcement_or_on_behalf(S).

% 6(c) evaluate reliability of evidence
high_risk_law_enforcement_evidence_reliability(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_reliability_evidence(S)),
    used_by_law_enforcement_or_on_behalf(S).

% 6(d) assess risk of offending or re-offending
high_risk_law_enforcement_offending_risk(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_risk_offending_or_reoffending(S)),
    used_by_law_enforcement_or_on_behalf(S),
    not_solely_based_on_profiling(S).

% 6(e) profiling in course of detection, investigation or prosecution
high_risk_law_enforcement_profiling(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(profiling_natural_persons(S)),
    used_by_law_enforcement_or_on_behalf(S),
    in_course_detection_investigation_prosecution(S).

% 7. Migration, asylum and border control management
high_risk_ai_system(S) :-
    high_risk_migration_polygraph(S).

high_risk_ai_system(S) :-
    high_risk_migration_risk_assessment(S).

high_risk_ai_system(S) :-
    high_risk_migration_asylum_examination(S).

high_risk_ai_system(S) :-
    high_risk_migration_identification(S).

% 7(a) polygraphs or similar tools
high_risk_migration_polygraph(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(used_as_polygraph_or_similar_tool(S)),
    used_by_competent_public_authority_or_on_behalf(S).

% 7(b) assess risk including security, irregular migration, or health risk
high_risk_migration_risk_assessment(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_risk_migration(S)),
    used_by_competent_public_authority_or_on_behalf(S).

% 7(c) assist examination of asylum, visa or residence permit applications
high_risk_migration_asylum_examination(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assist_examination_asylum_visa_residence_applications(S)),
    used_by_competent_public_authority_or_on_behalf(S).

% 7(d) detect, recognise or identify natural persons, except travel document verification
high_risk_migration_identification(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(detect_recognise_identify_natural_persons(S)),
    used_by_competent_public_authority_or_on_behalf(S),
    \+ exempt_travel_document_verification(S).

exempt_travel_document_verification(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(verify_travel_documents(S)).

% 8. Administration of justice and democratic processes
high_risk_ai_system(S) :-
    high_risk_justice_research_interpretation(S).

high_risk_ai_system(S) :-
    high_risk_election_influence(S).

% 8(a) assist judicial authority in researching and interpreting facts and law
high_risk_justice_research_interpretation(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assist_judicial_authority_research_interpret_facts_law(S)),
    used_by_judicial_authority_or_on_behalf(S).

% 8(b) influence outcome of election or referendum or voting behaviour
high_risk_election_influence(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(influence_election_referendum_outcome_or_voting_behaviour(S)),
    \+ exempt_political_campaign_administrative_tool(S).

exempt_political_campaign_administrative_tool(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(organise_optimise_structure_political_campaign_administrative(S)),
    not_directly_exposed_to_natural_persons(S).

% Helper predicates for context conditions
used_by_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(public_authority)).

used_by_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(public_authority)).

used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(law_enforcement_authority)).

used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(law_enforcement_authority)).

used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(union_institution_body_office_agency)).

used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(union_institution_body_office_agency)).

used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(competent_public_authority)).

used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(competent_public_authority)).

used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(union_institution_body_office_agency)).

used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(union_institution_body_office_agency)).

used_by_judicial_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(judicial_authority)).

used_by_judicial_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(judicial_authority)).

educational_institution(S) :-
    intended_purpose(S),
    purpose(in_context_of(educational_vocational_training_institution)).

not_solely_based_on_profiling(S) :-
    intended_purpose(S),
    purpose(assess_risk_offending_or_reoffending(S)),
    \+ solely_based_on_profiling(S).

solely_based_on_profiling(S) :-
    intended_purpose(S),
    purpose(solely_based_on(profiling_natural_persons)).

in_course_detection_investigation_prosecution(S) :-
    intended_purpose(S),
    purpose(in_course_of(detection_investigation_prosecution_criminal_offences)).

not_directly_exposed_to_natural_persons(S) :-
    intended_purpose(S),
    purpose(output_not_directly_exposed_to_natural_persons).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_remote_identification/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_categorisation/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_emotion_recognition/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_critical_infrastructure_safety_component/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_access_admission/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_learning_outcomes/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_assess_level/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_monitor_prohibited_behaviour/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_employment_recruitment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_employment_work_relationship_decisions/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_public_services_eligibility/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_creditworthiness/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_life_health_insurance_risk_assessment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_emergency_calls_evaluation/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_victim_risk/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_polygraph/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_evidence_reliability/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_offending_risk/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_profiling/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_polygraph/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_risk_assessment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_asylum_examination/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_identification/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_justice_research_interpretation/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_election_influence/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_biometric_verification_confirmation/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_financial_fraud_detection/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_travel_document_verification/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_political_campaign_administrative_tool/1, 'celex:32024R1689/oj#anx_3').

% References
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
