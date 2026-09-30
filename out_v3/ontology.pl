% ============================================================
% v2 ontology -- low-level FOL for Regulation (EU) 2024/1689.
%
% Phase A froze the predicate vocabulary; Phase B wrote rules against
% it, one LLM call per provision. Assembly here is deterministic.
%
% declared/3 records the vocabulary: declared(Name/Arity, Gloss, Source).
% A declared predicate with no clauses is an ABox primitive -- facts about
% a concrete system are asserted against it. That is expected, not broken.
% ============================================================

:- discontiguous declared/3.
:- discontiguous exempt_high_risk_ai_system/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous must_conduct_fundamental_rights_impact_assessment/1.
:- discontiguous must_document_assessment/2.
:- discontiguous must_notify/2.
:- discontiguous must_provide_guidelines/1.
:- discontiguous must_publish_annual_report/2.
:- discontiguous must_register/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous permitted_adopt_delegated_act/2.
:- discontiguous permitted_integration_of_testing_and_reporting/2.
:- discontiguous permitted_real_time_remote_biometric_identification_in_public_spaces/1.
:- discontiguous permitted_risk_assessment_ai_system/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous prohibited_biometric_categorisation_ai_system/1.
:- discontiguous prohibited_emotion_inference_ai_system/1.
:- discontiguous prohibited_exploit_vulnerabilities_ai_system/1.
:- discontiguous prohibited_facial_recognition_database_creation_ai_system/1.
:- discontiguous prohibited_real_time_remote_biometric_identification_in_public_spaces/1.
:- discontiguous prohibited_risk_assessment_ai_system/1.
:- discontiguous prohibited_social_scoring_ai_system/1.
:- discontiguous prohibited_subliminal_manipulative_ai_system/1.
:- discontiguous provenance/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.
:- discontiguous required_accessibility_compliance/1.
:- discontiguous required_adopt_delegated_act/2.
:- discontiguous required_ce_marking/2.
:- discontiguous required_compliance/1.
:- discontiguous required_compliance_with_requirements/2.
:- discontiguous required_conformity_assessment_before_market/2.
:- discontiguous required_consideration_of_vulnerable_groups/2.
:- discontiguous required_corrective_actions/1.
:- discontiguous required_declaration_of_conformity/1.
:- discontiguous required_demonstration_of_conformity/1.
:- discontiguous required_documentation_retention/1.
:- discontiguous required_ensuring_compliance/2.
:- discontiguous required_labeling/2.
:- discontiguous required_log_retention/1.
:- discontiguous required_quality_management_system/1.
:- discontiguous required_registration_obligations/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous required_testing_for_risk_management/1.
:- discontiguous required_testing_timing/1.

% --- ABox interface: assert facts against these at runtime ---
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic all_requirements_met/2.
:- dynamic annex_3_ai_system/1.
:- dynamic applicable_requirements/2.
:- dynamic authorised_representative/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic categorises_biometric_data_for_sensitive_attributes/1.
:- dynamic causes_significant_harm/1.
:- dynamic ce_marking/1.
:- dynamic commission/1.
:- dynamic common_specification/1.
:- dynamic concrete_reliable_evidence/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic considered_in_compliance/2.
:- dynamic covered_by_annex1/1.
:- dynamic creates_facial_recognition_database/1.
:- dynamic critical_infrastructure/1.
:- dynamic deep_fake/1.
:- dynamic deployer/1.
:- dynamic distributor/1.
:- dynamic downstream_provider/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employs_manipulative_techniques/1.
:- dynamic employs_subliminal_techniques/1.
:- dynamic evaluates_social_score/1.
:- dynamic exploits_vulnerabilities/1.
:- dynamic floating_point_operation/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic high_impact_capabilities/1.
:- dynamic importer/1.
:- dynamic infers_emotions_in_workplace_education/1.
:- dynamic informed_consent/1.
:- dynamic instructions_for_use/2.
:- dynamic integration_possible/2.
:- dynamic intended_for_medical_or_safety/1.
:- dynamic intended_purpose/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_labeling_exception/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic leads_to_detrimental_treatment/1.
:- dynamic making_available_on_market/2.
:- dynamic market_surveillance_authority/1.
:- dynamic national_competent_authority/1.
:- dynamic necessary_to_maintain_protection/1.
:- dynamic non_personal_data/1.
:- dynamic not_significant_risk/1.
:- dynamic notified_body/1.
:- dynamic notifying_authority/1.
:- dynamic objective_localisation_identification/1.
:- dynamic objective_materially_distort_behavior/1.
:- dynamic objective_prevent_threat/1.
:- dynamic objective_targeted_search/1.
:- dynamic operator/1.
:- dynamic performance_of_ai_system/1.
:- dynamic personal_data/1.
:- dynamic placing_on_market/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic product/1.
:- dynamic product_contains_ai_system/2.
:- dynamic profiling/1.
:- dynamic provider/1.
:- dynamic provider_considers_not_high_risk/2.
:- dynamic provider_of_product/2.
:- dynamic publicly_accessible_space/1.
:- dynamic putting_into_service/2.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic recall_of_ai_system/1.
:- dynamic remote/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic risk/1.
:- dynamic risk_assessment_of_criminal_offence/1.
:- dynamic risk_management_system/1.
:- dynamic safety_component/1.
:- dynamic sandbox_plan/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic state_of_the_art_considered/1.
:- dynamic subject_for_real_world_testing/1.
:- dynamic substantial_modification/1.
:- dynamic supports_human_assessment/1.
:- dynamic systemic_risk/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic urgent_use/1.
:- dynamic use_ai_system/2.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.

% ==== SIGNATURE (Phase A) ====
declared(ai_system/1, 'machine‑based system with autonomy', '3.1').
declared(provider/1, 'person or body that develops or places an AI system', '3.3').
declared(deployer/1, 'person or body using an AI system under its authority', '3.4').
declared(authorised_representative/1, 'person in the Union acting on behalf of a provider', '3.5').
declared(importer/1, 'person in the Union placing an AI system on the market', '3.6').
declared(distributor/1, 'person in the supply chain other than provider or importer', '3.7').
declared(operator/1, 'provider, product manufacturer, deployer, authorised representative, importer or distributor', '3.8').
declared(safety_component/1, 'component fulfilling a safety function', '3.14').
declared(notifying_authority/1, 'national authority responsible for conformity procedures', '3.19').
declared(conformity_assessment_body/1, 'body performing third‑party conformity assessment', '3.21').
declared(notified_body/1, 'conformity assessment body notified under Union law', '3.22').
declared(post_market_monitoring_system/1, 'system for monitoring AI systems after market placement', '3.25').
declared(market_surveillance_authority/1, 'national authority carrying out market surveillance', '3.26').
declared(harmonised_standard/1, 'standard defined in Union legislation', '3.27').
declared(common_specification/1, 'set of technical specifications to meet requirements', '3.28').
declared(emotion_recognition_system/1, 'AI system identifying emotions from biometric data', '3.39').
declared(biometric_categorisation_system/1, 'AI system assigning persons to categories based on biometric data', '3.40').
declared(remote_biometric_identification_system/1, 'AI system identifying persons at a distance without active involvement', '3.41').
declared(real_time_remote_biometric_identification_system/1, 'remote biometric ID system operating with no significant delay', '3.42').
declared(post_remote_biometric_identification_system/1, 'remote biometric ID system that is not real‑time', '3.43').
declared(publicly_accessible_space/1, 'any place accessible to an undetermined number of persons', '3.44').
declared(law_enforcement_authority/1, 'public authority competent for criminal matters', '3.45').
declared(law_enforcement/1, 'activities carried out by law enforcement authorities', '3.46').
declared(ai_office/1, 'Commission function for AI governance', '3.47').
declared(national_competent_authority/1, 'notifying or market surveillance authority', '3.48').
declared(serious_incident/1, 'incident leading to death, serious harm, or critical disruption', '3.49').
declared(personal_data/1, 'information relating to an identified or identifiable natural person', '3.50').
declared(non_personal_data/1, 'data that is not personal data', '3.51').
declared(profiling/1, 'automated processing to evaluate personal aspects', '3.52').
declared(real_world_testing_plan/1, 'document describing real‑world testing objectives and methods', '3.53').
declared(sandbox_plan/1, 'document agreeing on sandbox objectives and conditions', '3.54').
declared(ai_regulatory_sandbox/1, 'controlled framework for testing innovative AI systems', '3.55').
declared(ai_literacy/1, 'knowledge enabling informed deployment of AI systems', '3.56').
declared(testing_in_real_world_conditions/1, 'temporary testing of an AI system outside a lab', '3.57').
declared(subject_for_real_world_testing/1, 'natural person participating in real‑world testing', '3.58').
declared(informed_consent/1, 'voluntary expression to participate in testing', '3.59').
declared(deep_fake/1, 'AI‑generated content that falsely appears authentic', '3.60').
declared(widespread_infringement/1, 'act contrary to Union law affecting multiple Member States', '3.61').
declared(critical_infrastructure/1, 'infrastructure defined in Union law', '3.62').
declared(general_purpose_ai_model/1, 'AI model capable of a wide range of tasks', '3.63').
declared(high_impact_capabilities/1, 'capabilities matching advanced general‑purpose AI models', '3.64').
declared(systemic_risk/1, 'risk specific to high‑impact AI models affecting the Union market', '3.65').
declared(general_purpose_ai_system/1, 'AI system based on a general‑purpose AI model', '3.66').
declared(floating_point_operation/1, 'operation involving floating‑point numbers', '3.67').
declared(downstream_provider/1, 'provider integrating an AI model into a system', '3.68').
declared(risk/1, 'combination of probability and severity of harm', '3.2').
declared(operator/1, 'entity performing operator functions', '3.8').
declared(remote/1, 'system operates without active involvement of the person', '3.41').
declared(real_time/1, 'operation occurs without significant delay', '3.42').
declared(reasonably_foreseeable_misuse/1, 'use not in accordance with intended purpose but foreseeable', '3.13').
declared(substantial_modification/1, 'change after market placement affecting compliance', '3.23').
declared(ce_marking/1, 'mark indicating conformity with requirements', '3.24').
declared(biometric_identification/1, 'automated recognition to establish identity', '3.35').
declared(biometric_verification/1, 'one‑to‑one verification of identity', '3.36').
declared(special_categories_of_personal_data/1, 'sensitive categories defined in Union law', '3.37').
declared(sensitive_operational_data/1, 'operational data related to criminal investigations', '3.38').
declared(placing_on_market/2, 'first making available of an AI system on the Union market', '3.9').
declared(making_available_on_market/2, 'supply of an AI system for distribution or use', '3.10').
declared(putting_into_service/2, 'supply of an AI system for first use by the deployer', '3.11').
declared(intended_purpose/2, 'use for which an AI system is intended by the provider', '3.12').
declared(instructions_for_use/2, 'information provided by the provider to the deployer', '3.15').
declared(recall_of_ai_system/1, 'measure to return or disable an AI system', '3.16').
declared(withdrawal_of_ai_system/1, 'measure to prevent AI system being made available', '3.17').
declared(performance_of_ai_system/1, 'ability of an AI system to achieve its intended purpose', '3.18').
declared(conformity_assessment/1, 'process demonstrating fulfillment of high‑risk requirements', '3.20').
real_time_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    real_time(S).
post_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    \+ real_time_remote_biometric_identification_system(S).
provenance(real_time_remote_biometric_identification_system/1, '3.42').
provenance(post_remote_biometric_identification_system/1, '3.43').

% ==== celex:32024R1689/oj#art_5 ====
declared(employs_subliminal_techniques/1, 'AI system uses subliminal techniques beyond consciousness', 'celex:32024R1689/oj#art_5').
declared(employs_manipulative_techniques/1, 'AI system uses manipulative or deceptive techniques', 'celex:32024R1689/oj#art_5').
declared(objective_materially_distort_behavior/1, 'Objective or effect is to materially distort behaviour of a person or group', 'celex:32024R1689/oj#art_5').
declared(causes_significant_harm/1, 'The distortion is reasonably likely to cause significant harm', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerabilities/1, 'AI system exploits vulnerabilities due to age, disability or specific social/economic situation', 'celex:32024R1689/oj#art_5').
declared(evaluates_social_score/1, 'AI system evaluates or classifies persons based on social behaviour or inferred characteristics', 'celex:32024R1689/oj#art_5').
declared(leads_to_detrimental_treatment/1, 'Resulting social score leads to detrimental or unfavourable treatment', 'celex:32024R1689/oj#art_5').
declared(risk_assessment_of_criminal_offence/1, 'AI system makes risk assessments of persons for committing a criminal offence based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(supports_human_assessment/1, 'AI system is used to support human assessment based on objective, verifiable facts', 'celex:32024R1689/oj#art_5').
declared(creates_facial_recognition_database/1, 'AI system creates or expands facial recognition databases by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(infers_emotions_in_workplace_education/1, 'AI system infers emotions of a natural person in workplace or education contexts', 'celex:32024R1689/oj#art_5').
declared(intended_for_medical_or_safety/1, 'AI system is intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(categorises_biometric_data_for_sensitive_attributes/1, 'AI system categorises persons based on biometric data for race, political opinions, trade union membership, religious beliefs, sex life or sexual orientation', 'celex:32024R1689/oj#art_5').
declared(law_enforcement_labeling_exception/1, 'Exception for law‑enforcement labelling or filtering of lawfully acquired biometric datasets', 'celex:32024R1689/oj#art_5').
declared(use_ai_system/2, 'Actor uses the AI system', 'celex:32024R1689/oj#art_5').
declared(law_enforcement_purpose/1, 'Use of the system is for law‑enforcement purposes', 'celex:32024R1689/oj#art_5').
declared(objective_targeted_search/1, 'Objective: targeted search for victims of abduction, trafficking or sexual exploitation', 'celex:32024R1689/oj#art_5').
declared(objective_prevent_threat/1, 'Objective: prevent a substantial and imminent threat to life or safety, or a terrorist attack', 'celex:32024R1689/oj#art_5').
declared(objective_localisation_identification/1, 'Objective: localisation or identification of a person suspected of a criminal offence', 'celex:32024R1689/oj#art_5').
declared(urgent_use/1, 'Use is justified by urgency', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulative_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    employs_subliminal_techniques(S),
    employs_manipulative_techniques(S),
    objective_materially_distort_behavior(S),
    causes_significant_harm(S).
prohibited_exploit_vulnerabilities_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    exploits_vulnerabilities(S),
    objective_materially_distort_behavior(S),
    causes_significant_harm(S).
prohibited_social_scoring_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    evaluates_social_score(S),
    leads_to_detrimental_treatment(S).
prohibited_risk_assessment_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    risk_assessment_of_criminal_offence(S),
    \+ permitted_risk_assessment_ai_system(S).
permitted_risk_assessment_ai_system(S) :-
    use_ai_system(U,S),
    supports_human_assessment(S).
prohibited_facial_recognition_database_creation_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    creates_facial_recognition_database(S).
prohibited_emotion_inference_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    infers_emotions_in_workplace_education(S),
    \+ intended_for_medical_or_safety(S).
prohibited_biometric_categorisation_ai_system(S) :-
    (   placing_on_market(P,S)
    ;   putting_into_service(D,S)
    ;   use_ai_system(U,S)
    ),
    categorises_biometric_data_for_sensitive_attributes(S),
    \+ law_enforcement_labeling_exception(S).
prohibited_real_time_remote_biometric_identification_in_public_spaces(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S),
    \+ permitted_real_time_remote_biometric_identification_in_public_spaces(S).
permitted_real_time_remote_biometric_identification_in_public_spaces(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    (   objective_targeted_search(S)
    ;   objective_prevent_threat(S)
    ;   objective_localisation_identification(S)
    ).
must_notify(market_surveillance_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).
must_notify(data_protection_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).
must_conduct_fundamental_rights_impact_assessment(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).
must_register(eu_database, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S),
    \+ urgent_use(S).
must_submit_annual_report(national_market_surveillance_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).
must_submit_annual_report(national_data_protection_authority, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).
must_publish_annual_report(commission, S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Place),
    law_enforcement_purpose(S).
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploit_vulnerabilities_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_in_public_spaces/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification_in_public_spaces/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(must_conduct_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(must_register/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5/par_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_3', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_5', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5/par_6', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high risk', 'celex:32024R1689/oj#art_6').
declared(annex_3_ai_system/1, 'AI system referred to in annex 3', 'celex:32024R1689/oj#art_6').
declared(covered_by_annex1/1, 'AI system covered by Union harmonisation legislation listed in annex 1', 'celex:32024R1689/oj#art_6').
declared(product/1, 'AI system is itself a product', 'celex:32024R1689/oj#art_6').
declared(not_significant_risk/1, 'AI system does not pose a significant risk of harm', 'celex:32024R1689/oj#art_6').
declared(exempt_high_risk_ai_system/1, 'AI system exempt from high‑risk classification', 'celex:32024R1689/oj#art_6').
declared(provider_considers_not_high_risk/2, 'Provider considers AI system not high risk', 'celex:32024R1689/oj#art_6').
declared(must_document_assessment/2, 'Provider must document assessment', 'celex:32024R1689/oj#art_6').
declared(must_register/2, 'Provider subject to registration obligation', 'celex:32024R1689/oj#art_6').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_6').
declared(must_provide_guidelines/1, 'Commission must provide guidelines', 'celex:32024R1689/oj#art_6').
declared(permitted_adopt_delegated_act/2, 'Commission may adopt delegated act', 'celex:32024R1689/oj#art_6').
declared(required_adopt_delegated_act/2, 'Commission must adopt delegated act', 'celex:32024R1689/oj#art_6').
declared(concrete_reliable_evidence/1, 'Concrete and reliable evidence of existence of AI system', 'celex:32024R1689/oj#art_6').
declared(necessary_to_maintain_protection/1, 'Necessary to maintain level of protection', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    covered_by_annex1(S),
    (safety_component(S) ; product(S)),
    conformity_assessment(S),
    (placing_on_market(_, S) ; putting_into_service(_, S)).
high_risk_ai_system(S) :- annex_3_ai_system(S), \+ exempt_high_risk_ai_system(S).
exempt_high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    not_significant_risk(S),
    \+ profiling(S).
high_risk_ai_system(S) :- annex_3_ai_system(S), profiling(S).
must_document_assessment(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    provider_considers_not_high_risk(Provider, S).
must_register(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    provider_considers_not_high_risk(Provider, S).
must_provide_guidelines(Commission) :-
    commission(Commission).
permitted_adopt_delegated_act(Commission, amend_conditions) :-
    commission(Commission),
    annex_3_ai_system(S),
    not_significant_risk(S),
    concrete_reliable_evidence(S).
required_adopt_delegated_act(Commission, delete_conditions) :-
    commission(Commission),
    concrete_reliable_evidence(S),
    necessary_to_maintain_protection(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_guidelines/1, 'celex:32024R1689/oj#art_6').
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6').
provenance(required_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_8').
declared(state_of_the_art_considered/1, 'consideration of the generally acknowledged state of the art on AI and AI‑related technologies', 'celex:32024R1689/oj#art_8').
declared(risk_management_system/1, 'risk management system referred to in Article 9', 'celex:32024R1689/oj#art_8').
declared(considered_in_compliance/2, 'risk management system taken into account when ensuring compliance', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/2, 'product contains an AI system', 'celex:32024R1689/oj#art_8').
declared(provider_of_product/2, 'provider is responsible for the product', 'celex:32024R1689/oj#art_8').
declared(applicable_requirements/2, 'requirements applicable to the product under Union harmonisation legislation', 'celex:32024R1689/oj#art_8').
declared(all_requirements_met/2, 'product meets all applicable requirements', 'celex:32024R1689/oj#art_8').
declared(integration_possible/2, 'provider may integrate testing and reporting processes into existing documentation', 'celex:32024R1689/oj#art_8').
required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose(S, _),
    state_of_the_art_considered(S),
    risk_management_system(R),
    considered_in_compliance(R, S).
required_ensuring_compliance(Provider, Product) :-
    provider(Provider),
    product_contains_ai_system(Product, _),
    provider_of_product(Provider, Product),
    applicable_requirements(Product, ReqSet),
    all_requirements_met(Product, ReqSet).
permitted_integration_of_testing_and_reporting(Provider, Product) :-
    provider(Provider),
    product_contains_ai_system(Product, _),
    provider_of_product(Provider, Product),
    integration_possible(Provider, Product).
provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(required_ensuring_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/1, 'obligation to establish, implement, document and maintain a risk management system for the AI system', 'celex:32024R1689/oj#art_9').
declared(required_testing_for_risk_management/1, 'obligation to test the high‑risk AI system in order to identify appropriate risk‑management measures', 'celex:32024R1689/oj#art_9').
declared(required_testing_timing/1, 'obligation that testing be carried out throughout development and before market placement or putting into service', 'celex:32024R1689/oj#art_9').
declared(required_consideration_of_vulnerable_groups/2, 'obligation for the provider to consider adverse impact on persons under 18 and other vulnerable groups', 'celex:32024R1689/oj#art_9').
required_risk_management_system(S) :-
    high_risk_ai_system(S).
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
required_testing_for_risk_management(S) :-
    high_risk_ai_system(S).
provenance(required_testing_for_risk_management/1, 'celex:32024R1689/oj#art_9').
required_testing_timing(S) :-
    high_risk_ai_system(S).
provenance(required_testing_timing/1, 'celex:32024R1689/oj#art_9').
required_consideration_of_vulnerable_groups(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_purpose(S, _).
provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_16').
declared(required_compliance_with_requirements/2, 'provider must ensure high‑risk AI system complies with the requirements set out in the specified chapter and section', 'celex:32024R1689/oj#art_16').
required_compliance_with_requirements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
declared(required_labeling/2, 'provider must indicate name, trade name or trade mark and contact address on the high‑risk AI system, its packaging or documentation', 'celex:32024R1689/oj#art_16').
required_labeling(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
declared(required_quality_management_system/1, 'provider must have a quality management system complying with the referenced article', 'celex:32024R1689/oj#art_16').
required_quality_management_system(Provider) :-
    provider(Provider).
declared(required_documentation_retention/1, 'provider must keep the documentation referred to in the referenced article', 'celex:32024R1689/oj#art_16').
required_documentation_retention(Provider) :-
    provider(Provider).
declared(required_log_retention/1, 'provider must keep automatically generated logs of the high‑risk AI system when under its control', 'celex:32024R1689/oj#art_16').
required_log_retention(Provider) :-
    provider(Provider).
declared(required_conformity_assessment_before_market/2, 'provider must ensure the high‑risk AI system undergoes the relevant conformity assessment prior to placement on the market or putting into service', 'celex:32024R1689/oj#art_16').
required_conformity_assessment_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
declared(required_declaration_of_conformity/1, 'provider must draw up an EU declaration of conformity', 'celex:32024R1689/oj#art_16').
required_declaration_of_conformity(Provider) :-
    provider(Provider).
declared(required_ce_marking/2, 'provider must affix the CE marking to the high‑risk AI system, its packaging or documentation', 'celex:32024R1689/oj#art_16').
required_ce_marking(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
declared(required_registration_obligations/1, 'provider must comply with the registration obligations referred to in the referenced article', 'celex:32024R1689/oj#art_16').
required_registration_obligations(Provider) :-
    provider(Provider).
declared(required_corrective_actions/1, 'provider must take necessary corrective actions and provide information as required in the referenced article', 'celex:32024R1689/oj#art_16').
required_corrective_actions(Provider) :-
    provider(Provider).
declared(required_demonstration_of_conformity/1, 'provider must, upon a reasoned request of a national competent authority, demonstrate conformity of the high‑risk AI system with the requirements', 'celex:32024R1689/oj#art_16').
required_demonstration_of_conformity(Provider) :-
    provider(Provider).
declared(required_accessibility_compliance/1, 'provider must ensure the high‑risk AI system complies with accessibility requirements in accordance with the referenced directives', 'celex:32024R1689/oj#art_16').
required_accessibility_compliance(Provider) :-
    provider(Provider).
provenance(required_compliance_with_requirements/2, 'celex:32024R1689/oj#art_16').
provenance(required_labeling/2, 'celex:32024R1689/oj#art_16').
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_16').
provenance(required_documentation_retention/1, 'celex:32024R1689/oj#art_16').
provenance(required_log_retention/1, 'celex:32024R1689/oj#art_16').
provenance(required_conformity_assessment_before_market/2, 'celex:32024R1689/oj#art_16').
provenance(required_declaration_of_conformity/1, 'celex:32024R1689/oj#art_16').
provenance(required_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(required_registration_obligations/1, 'celex:32024R1689/oj#art_16').
provenance(required_corrective_actions/1, 'celex:32024R1689/oj#art_16').
provenance(required_demonstration_of_conformity/1, 'celex:32024R1689/oj#art_16').
provenance(required_accessibility_compliance/1, 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').

