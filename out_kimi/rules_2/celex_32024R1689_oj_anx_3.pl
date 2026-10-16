% unit       : celex:32024R1689/oj#anx_3
% context    : ANNEXES
% slice sha  : 191684abe50324abc411e6bc548b4cec6caa42b87872d95d235e84355fb25460
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 1f36814aac15192646f49b11c1d1e892d80d8348c16ebd81c2cc48f6a3000a14
% cached     : False
% title      : High-risk AI systems referred to in <ref id="celex:32024R1689/oj#art_6/par_2"/> High-risk AI systems pursuant to <ref id="celex:32024R1689/oj#art_6/par_2"/> are the AI systems listed in any of the following areas:
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred biometric_verification_system/1, gloss('AI system for biometric verification to confirm identity'), source('celex:32024R1689/oj#anx_3').
:- pred ai_system_for_biometric_categorisation/1, gloss('AI system for biometric categorisation based on sensitive attributes'), source('celex:32024R1689/oj#anx_3').
:- pred emotion_recognition_system/1, gloss('AI system for emotion recognition'), source('celex:32024R1689/oj#anx_3').
:- pred safety_component_critical_infrastructure/1, gloss('AI system as safety component in critical infrastructure'), source('celex:32024R1689/oj#anx_3').
:- pred education_access_system/1, gloss('AI system for access to education and vocational training'), source('celex:32024R1689/oj#anx_3').
:- pred education_evaluation_system/1, gloss('AI system for evaluating learning outcomes'), source('celex:32024R1689/oj#anx_3').
:- pred education_level_assessment_system/1, gloss('AI system for assessing appropriate education level'), source('celex:32024R1689/oj#anx_3').
:- pred education_monitoring_system/1, gloss('AI system for monitoring prohibited behaviour during tests'), source('celex:32024R1689/oj#anx_3').
:- pred recruitment_system/1, gloss('AI system for recruitment or selection'), source('celex:32024R1689/oj#anx_3').
:- pred employment_management_system/1, gloss('AI system for decisions affecting work-related relationships'), source('celex:32024R1689/oj#anx_3').
:- pred public_benefits_eligibility_system/1, gloss('AI system for evaluating eligibility for public benefits'), source('celex:32024R1689/oj#anx_3').
:- pred creditworthiness_system/1, gloss('AI system for evaluating creditworthiness or credit score'), source('celex:32024R1689/oj#anx_3').
:- pred insurance_risk_pricing_system/1, gloss('AI system for risk assessment and pricing in life and health insurance'), source('celex:32024R1689/oj#anx_3').
:- pred emergency_call_system/1, gloss('AI system for evaluating or dispatching emergency calls'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_victim_assessment_system/1, gloss('AI system for assessing risk of becoming victim of criminal offences'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_polygraph_system/1, gloss('AI system used as polygraph or similar tool by law enforcement'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_evidence_reliability_system/1, gloss('AI system for evaluating reliability of evidence'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_reoffending_risk_system/1, gloss('AI system for assessing risk of offending or re-offending'), source('celex:32024R1689/oj#anx_3').
:- pred law_enforcement_profiling_system/1, gloss('AI system for profiling in criminal offence proceedings'), source('celex:32024R1689/oj#anx_3').
:- pred migration_polygraph_system/1, gloss('AI system used as polygraph or similar tool in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred migration_risk_assessment_system/1, gloss('AI system for assessing risk in migration, asylum, border control'), source('celex:32024R1689/oj#anx_3').
:- pred migration_asylum_application_system/1, gloss('AI system for examining asylum, visa, residence permit applications'), source('celex:32024R1689/oj#anx_3').
:- pred migration_identification_system/1, gloss('AI system for detecting, recognising or identifying persons in migration context'), source('celex:32024R1689/oj#anx_3').
:- pred judicial_assistance_system/1, gloss('AI system to assist judicial authority in researching and interpreting facts and law'), source('celex:32024R1689/oj#anx_3').
:- pred election_influence_system/1, gloss('AI system intended to influence outcome of election or referendum or voting behaviour'), source('celex:32024R1689/oj#anx_3').

high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    ai_system_for_biometric_categorisation(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    emotion_recognition_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    safety_component_critical_infrastructure(S).

high_risk_ai_system(S) :-
    education_access_system(S).

high_risk_ai_system(S) :-
    education_evaluation_system(S).

high_risk_ai_system(S) :-
    education_level_assessment_system(S).

high_risk_ai_system(S) :-
    education_monitoring_system(S).

high_risk_ai_system(S) :-
    recruitment_system(S).

high_risk_ai_system(S) :-
    employment_management_system(S).

high_risk_ai_system(S) :-
    public_benefits_eligibility_system(S).

high_risk_ai_system(S) :-
    creditworthiness_system(S).

high_risk_ai_system(S) :-
    insurance_risk_pricing_system(S).

high_risk_ai_system(S) :-
    emergency_call_system(S).

high_risk_ai_system(S) :-
    law_enforcement_victim_assessment_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    law_enforcement_polygraph_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    law_enforcement_reoffending_risk_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    law_enforcement_profiling_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    migration_polygraph_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    migration_risk_assessment_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    migration_asylum_application_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    migration_identification_system(S),
    permitted_under_relevant_law(S).

high_risk_ai_system(S) :-
    judicial_assistance_system(S).

high_risk_ai_system(S) :-
    election_influence_system(S).

permitted_under_relevant_law(S) :-
    ai_system(S).

biometric_verification_system(S) :-
    ai_system(S),
    biometric_verification(S),
    intended_purpose(confirm_identity(_P)).

ai_system_for_biometric_categorisation(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    based_on_inference_of_sensitive_or_protected_attributes(S).

emotion_recognition_system(S) :-
    ai_system(S),
    emotion_recognition(S).

safety_component_critical_infrastructure(S) :-
    ai_system(S),
    safety_component(S),
    critical_infrastructure_management(S).

critical_infrastructure_management(S) :-
    critical_digital_infrastructure_management(S).
critical_infrastructure_management(S) :-
    road_traffic_management(S).
critical_infrastructure_management(S) :-
    water_gas_heating_electricity_supply(S).

education_access_system(S) :-
    ai_system(S),
    intended_purpose(determine_access_or_admission_education(_P)).
education_access_system(S) :-
    ai_system(S),
    intended_purpose(assign_to_educational_institution(_P)).

education_evaluation_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_learning_outcomes(_P)).

education_level_assessment_system(S) :-
    ai_system(S),
    intended_purpose(assess_appropriate_education_level(_P)).

education_monitoring_system(S) :-
    ai_system(S),
    intended_purpose(monitor_prohibited_behaviour_during_tests(_P)).

recruitment_system(S) :-
    ai_system(S),
    intended_purpose(recruitment_or_selection(_P)).

employment_management_system(S) :-
    ai_system(S),
    intended_purpose(decisions_affecting_work_relationships(_P)).
employment_management_system(S) :-
    ai_system(S),
    intended_purpose(allocate_tasks_based_on_behaviour_or_traits(_P)).
employment_management_system(S) :-
    ai_system(S),
    intended_purpose(monitor_and_evaluate_performance_and_behaviour(_P)).

public_benefits_eligibility_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_eligibility_public_benefits(_P)),
    used_by_or_on_behalf_of_public_authority(S).

creditworthiness_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_creditworthiness_or_credit_score(_P)),
    \+ intended_purpose(detect_financial_fraud(_P)).

insurance_risk_pricing_system(S) :-
    ai_system(S),
    intended_purpose(risk_assessment_and_pricing_life_health_insurance(_P)).

emergency_call_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_classify_emergency_calls(_P)).
emergency_call_system(S) :-
    ai_system(S),
    intended_purpose(dispatch_emergency_first_response(_P)).
emergency_call_system(S) :-
    ai_system(S),
    intended_purpose(establish_priority_dispatching_emergency_services(_P)).

law_enforcement_victim_assessment_system(S) :-
    ai_system(S),
    intended_purpose(assess_risk_becoming_victim_criminal_offences(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S).

law_enforcement_polygraph_system(S) :-
    ai_system(S),
    intended_purpose(polygraph_or_similar_tool(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S).

law_enforcement_evidence_reliability_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_reliability_evidence(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S).

law_enforcement_reoffending_risk_system(S) :-
    ai_system(S),
    intended_purpose(assess_risk_offending_reoffending(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S),
    \+ based_solely_on_profiling(S).

law_enforcement_profiling_system(S) :-
    ai_system(S),
    profiling(S),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S),
    intended_purpose(detection_investigation_prosecution_criminal_offences(_P)).

migration_polygraph_system(S) :-
    ai_system(S),
    intended_purpose(polygraph_or_similar_tool(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S).

migration_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(assess_risk_including_security_irregular_migration_health(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S).

migration_asylum_application_system(S) :-
    ai_system(S),
    intended_purpose(examine_asylum_visa_residence_permit_applications(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S).

migration_identification_system(S) :-
    ai_system(S),
    intended_purpose(detect_recognise_identify_natural_persons(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S),
    \+ intended_purpose(verification_of_travel_documents(_P)).

judicial_assistance_system(S) :-
    ai_system(S),
    intended_purpose(assist_judicial_authority_researching_interpreting_applying_law(_P)).

judicial_assistance_system(S) :-
    ai_system(S),
    intended_purpose(similar_use_alternative_dispute_resolution(_P)).

election_influence_system(S) :-
    ai_system(S),
    intended_purpose(influence_election_or_referendum_outcome(_P)).
election_influence_system(S) :-
    ai_system(S),
    intended_purpose(influence_voting_behaviour(_P)).

exempt_election_administrative_tool(S) :-
    ai_system(S),
    intended_purpose(organise_optimise_structure_political_campaigns_administrative_logistical(_P)).

used_by_or_on_behalf_of_public_authority(S) :-
    deployer_public_authority(S).
used_by_or_on_behalf_of_public_authority(S) :-
    used_on_behalf_of_public_authority(S).

used_by_or_on_behalf_of_law_enforcement_or_union_institution(S) :-
    law_enforcement_authority(_A),
    used_by_or_on_behalf_of(S, _A).
used_by_or_on_behalf_of_law_enforcement_or_union_institution(S) :-
    union_institution(_U),
    used_in_support_of_law_enforcement(S, _U).

used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S) :-
    national_public_authority_or_body(_A),
    used_by_or_on_behalf_of(S, _A).
used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S) :-
    union_institution(_U),
    used_by_or_on_behalf_of(S, _U).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(ai_system_for_biometric_categorisation/1, 'celex:32024R1689/oj#anx_3').
provenance(emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3').
provenance(safety_component_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_level_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_monitoring_system/1, 'celex:32024R1689/oj#anx_3').
provenance(recruitment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_management_system/1, 'celex:32024R1689/oj#anx_3').
provenance(public_benefits_eligibility_system/1, 'celex:32024R1689/oj#anx_3').
provenance(creditworthiness_system/1, 'celex:32024R1689/oj#anx_3').
provenance(insurance_risk_pricing_system/1, 'celex:32024R1689/oj#anx_3').
provenance(emergency_call_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_victim_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_evidence_reliability_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_reoffending_risk_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_asylum_application_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(judicial_assistance_system/1, 'celex:32024R1689/oj#anx_3').
provenance(election_influence_system/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_election_administrative_tool/1, 'celex:32024R1689/oj#anx_3').
provenance(permitted_under_relevant_law/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_public_authority/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_law_enforcement_or_union_institution/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_competent_public_authority_or_union_institution/1, 'celex:32024R1689/oj#anx_3').

references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').
