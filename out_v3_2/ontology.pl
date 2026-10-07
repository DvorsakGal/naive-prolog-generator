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
:- discontiguous high_risk_ai_system/1.
:- discontiguous insignificant_risk/1.
:- discontiguous must_ensure/2.
:- discontiguous operator/1.
:- discontiguous permitted_combination_with_other_risk_management/2.
:- discontiguous permitted_integration_of_testing_and_reporting/2.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous provenance/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous required_accessibility_compliance/2.
:- discontiguous required_affix_ce_marking/2.
:- discontiguous required_compliance/1.
:- discontiguous required_compliance_with_requirements/2.
:- discontiguous required_conformity_assessment_before_market/2.
:- discontiguous required_consideration_of_vulnerable_groups/2.
:- discontiguous required_corrective_actions_and_information/2.
:- discontiguous required_declaration_of_conformity/2.
:- discontiguous required_demonstration_of_conformity_on_request/2.
:- discontiguous required_indication_of_contact_details/2.
:- discontiguous required_keeping_of_documentation/1.
:- discontiguous required_keeping_of_logs/2.
:- discontiguous required_quality_management_system/1.
:- discontiguous required_registration_obligations/1.
:- discontiguous required_risk_management_step/2.
:- discontiguous required_risk_management_system/2.
:- discontiguous required_testing_before_market_or_service/2.
:- discontiguous required_testing_for_risk_management/2.

% --- ABox interface: assert facts against these at runtime ---
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic annex3_ai_system/1.
:- dynamic applicable_union_harmonisation_requirements/1.
:- dynamic authorised_representative/1.
:- dynamic based_on_objective_verifiable_facts/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic causes_significant_harm/1.
:- dynamic ce_marking/1.
:- dynamic common_specification/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic contains_ai_system/2.
:- dynamic covered_by_annex1/1.
:- dynamic creates_or_expands_facial_recognition_database/1.
:- dynamic critical_infrastructure/1.
:- dynamic deduces_protected_attributes/1.
:- dynamic deep_fake/1.
:- dynamic deployer/1.
:- dynamic deploys_subliminal_techniques/1.
:- dynamic distributor/1.
:- dynamic downstream_provider/1.
:- dynamic emotion_recognition_system/1.
:- dynamic exploits_vulnerabilities/1.
:- dynamic floating_point_operation/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic high_impact_capabilities/1.
:- dynamic importer/1.
:- dynamic infers_emotions_in_workplace_or_education/1.
:- dynamic informed_consent/1.
:- dynamic input_data/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_detect_decision_patterns_without_replacement/1.
:- dynamic intended_for_medical_or_safety/1.
:- dynamic intended_improve_human_activity/1.
:- dynamic intended_narrow_procedural_task/1.
:- dynamic intended_preparatory_task_for_assessment/1.
:- dynamic intended_purpose/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic lawful_labeling_or_filtering_of_biometric_dataset/1.
:- dynamic leads_to_detrimental_treatment/1.
:- dynamic makes_available_on_market/2.
:- dynamic market_surveillance_authority/1.
:- dynamic materially_distorts_behaviour/1.
:- dynamic national_competent_authority/1.
:- dynamic non_personal_data/1.
:- dynamic notified_body/1.
:- dynamic notifying_authority/1.
:- dynamic objective_localise_suspect/1.
:- dynamic objective_prevent_imminent_threat/1.
:- dynamic objective_targeted_search_victims/1.
:- dynamic performance/1.
:- dynamic performed_by_law_enforcement/1.
:- dynamic performs_social_scoring/1.
:- dynamic personal_data/1.
:- dynamic places_on_market/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic product/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic provider/1.
:- dynamic publicly_accessible_space/1.
:- dynamic puts_into_service/2.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic recall/1.
:- dynamic remote/1.
:- dynamic risk/1.
:- dynamic risk_management_system/1.
:- dynamic safety_component/1.
:- dynamic sandbox_plan/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic subject/1.
:- dynamic substantial_modification/1.
:- dynamic systemic_risk/1.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic training_data/1.
:- dynamic used_for_risk_assessment_of_natural_person/1.
:- dynamic used_to_support_human_assessment/1.
:- dynamic uses_for_law_enforcement/3.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal/1.

% ==== SIGNATURE (Phase A) ====
declared(ai_system/1, 'machine‑based system with autonomy and adaptiveness', '3.1').
declared(risk/1, 'combination of probability of harm and its severity', '3.2').
declared(provider/1, 'entity that develops or places an AI system on the market', '3.3').
declared(deployer/1, 'entity using an AI system under its authority', '3.4').
declared(authorised_representative/1, 'person in the Union authorised by a provider to act on its behalf', '3.5').
declared(importer/1, 'entity placing on the market an AI system bearing a third‑country name', '3.6').
declared(distributor/1, 'natural or legal person in the supply chain other than provider or importer', '3.7').
declared(operator/1, 'provider, product manufacturer, deployer, authorised representative, importer or distributor', '3.8').
declared(places_on_market/2, 'first making available of an AI system on the Union market', '3.9').
declared(makes_available_on_market/2, 'supply of an AI system for distribution or use on the Union market', '3.10').
declared(puts_into_service/2, 'supply of an AI system for first use by the deployer or for own use', '3.11').
declared(intended_purpose/2, 'use for which an AI system is intended by the provider', '3.12').
declared(reasonably_foreseeable_misuse/1, 'use of an AI system contrary to its intended purpose but reasonably foreseeable', '3.13').
declared(safety_component/1, 'component fulfilling a safety function for a product or AI system', '3.14').
declared(instructions_for_use/1, 'information provided by the provider to inform the deployer', '3.15').
declared(recall/1, 'measure aiming to return or disable an AI system made available to deployers', '3.16').
declared(withdrawal/1, 'measure aiming to prevent an AI system from being made available on the market', '3.17').
declared(performance/1, 'ability of an AI system to achieve its intended purpose', '3.18').
declared(notifying_authority/1, 'national authority responsible for conformity assessment procedures', '3.19').
declared(conformity_assessment/1, 'process demonstrating fulfilment of high‑risk AI system requirements', '3.20').
declared(conformity_assessment_body/1, 'body performing third‑party conformity assessment activities', '3.21').
declared(notified_body/1, 'conformity assessment body notified in accordance with Union legislation', '3.22').
declared(substantial_modification/1, 'change to an AI system after market placement affecting compliance', '3.23').
declared(ce_marking/1, 'mark indicating conformity of an AI system with Union requirements', '3.24').
declared(post_market_monitoring_system/1, 'activities by providers to collect and review experience from AI systems in use', '3.25').
declared(market_surveillance_authority/1, 'national authority carrying out market surveillance activities', '3.26').
declared(harmonised_standard/1, 'standard defined in Union legislation', '3.27').
declared(common_specification/1, 'set of technical specifications to comply with certain requirements', '3.28').
declared(training_data/1, 'data used for training an AI system', '3.29').
declared(validation_data/1, 'data used to evaluate and tune a trained AI system', '3.30').
declared(validation_data_set/1, 'separate data set or part of the training data set', '3.31').
declared(testing_data/1, 'data used for independent evaluation before market placement', '3.32').
declared(input_data/1, 'data provided to or acquired by an AI system to produce an output', '3.33').
declared(biometric_data/1, 'personal data resulting from processing of physical/physiological/behavioural characteristics', '3.34').
declared(biometric_identification/1, 'automated recognition of human features to establish identity', '3.35').
declared(biometric_verification/1, 'automated one‑to‑one verification of identity using biometric data', '3.36').
declared(special_categories_of_personal_data/1, 'categories of personal data listed in Union law', '3.37').
declared(sensitive_operational_data/1, 'operational data related to criminal investigations whose disclosure could jeopardise proceedings', '3.38').
declared(emotion_recognition_system/1, 'AI system identifying or inferring emotions from biometric data', '3.39').
declared(biometric_categorisation_system/1, 'AI system assigning persons to categories based on biometric data', '3.40').
declared(remote_biometric_identification_system/1, 'AI system identifying persons at a distance without active involvement', '3.41').
declared(real_time_remote_biometric_identification_system/1, 'remote biometric identification where capture, comparison and identification occur without significant delay', '3.42').
declared(post_remote_biometric_identification_system/1, 'remote biometric identification system that is not real‑time', '3.43').
declared(publicly_accessible_space/1, 'any place accessible to an undetermined number of persons', '3.44').
declared(law_enforcement_authority/1, 'public authority competent for criminal investigations or other body entrusted with such powers', '3.45').
declared(law_enforcement/1, 'activities carried out by law enforcement authorities or on their behalf', '3.46').
declared(ai_office/1, 'Commission function contributing to AI system implementation, monitoring and supervision', '3.47').
declared(national_competent_authority/1, 'notifying authority or market surveillance authority', '3.48').
declared(serious_incident/1, 'incident or malfunction of an AI system leading to death, critical infrastructure disruption, rights infringement or serious harm', '3.49').
declared(personal_data/1, 'personal data as defined in Union law', '3.50').
declared(non_personal_data/1, 'data other than personal data', '3.51').
declared(profiling/1, 'profiling as defined in Union law', '3.52').
declared(real_world_testing_plan/1, 'document describing objectives and methodology for real‑world testing', '3.53').
declared(sandbox_plan/1, 'document describing objectives and conditions for a sandbox', '3.54').
declared(ai_regulatory_sandbox/1, 'controlled framework allowing providers to develop and test AI systems under supervision', '3.55').
declared(ai_literacy/1, 'skills and knowledge enabling informed deployment of AI systems', '3.56').
declared(testing_in_real_world_conditions/1, 'temporary testing of an AI system in real‑world conditions outside a lab', '3.57').
declared(subject/1, 'natural person participating in real‑world testing', '3.58').
declared(informed_consent/1, 'freely given, specific and unambiguous expression of willingness to participate', '3.59').
declared(deep_fake/1, 'AI‑generated or manipulated content that falsely appears authentic', '3.60').
declared(widespread_infringement/1, 'act or omission contrary to Union law harming collective interests in multiple Member States', '3.61').
declared(critical_infrastructure/1, 'critical infrastructure as defined in Union legislation', '3.62').
declared(general_purpose_ai_model/1, 'AI model capable of a wide range of tasks and integrable into downstream systems', '3.63').
declared(high_impact_capabilities/1, 'capabilities matching or exceeding those of the most advanced general‑purpose AI models', '3.64').
declared(systemic_risk/1, 'risk specific to high‑impact capabilities of general‑purpose AI models with large‑scale effects', '3.65').
declared(general_purpose_ai_system/1, 'AI system based on a general‑purpose AI model serving various purposes', '3.66').
declared(floating_point_operation/1, 'mathematical operation involving floating‑point numbers', '3.67').
declared(downstream_provider/1, 'provider of an AI system that integrates an AI model', '3.68').
declared(remote/1, 'operating without active involvement of the person', 'derived').
declared(real_time/1, 'occurring without significant delay', 'derived').
declared(product_manufacturer/1, 'entity that manufactures a product', 'derived').
operator(X) :- provider(X).
operator(X) :- product_manufacturer(X).
operator(X) :- deployer(X).
operator(X) :- authorised_representative(X).
operator(X) :- importer(X).
operator(X) :- distributor(X).
remote_biometric_identification_system(S) :- ai_system(S), remote(S), biometric_identification(S).
real_time_remote_biometric_identification_system(S) :- remote_biometric_identification_system(S), real_time(S).
post_remote_biometric_identification_system(S) :- remote_biometric_identification_system(S), \+ real_time_remote_biometric_identification_system(S).
provenance(operator/1, '3.8').
provenance(remote_biometric_identification_system/1, '3.41').
provenance(real_time_remote_biometric_identification_system/1, '3.42').
provenance(post_remote_biometric_identification_system/1, '3.43').

% ==== celex:32024R1689/oj#art_5 ====
provenance(prohibited_subliminal_manipulation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerabilities_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_support_human_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_labeling/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_rt_rbi_use_for_objective/2, 'celex:32024R1689/oj#art_5').
declared(deploys_subliminal_techniques/1, 'AI system uses subliminal or manipulative techniques beyond consciousness', 'art_5/a').
declared(materially_distorts_behaviour/1, 'AI system materially distorts the behaviour of a person or group', 'art_5/a').
declared(causes_significant_harm/1, 'The effect is likely to cause significant harm to a person or group', 'art_5/a').
declared(exploits_vulnerabilities/1, 'AI system exploits age, disability or social/economic vulnerability', 'art_5/b').
declared(performs_social_scoring/1, 'AI system evaluates or classifies persons based on social behaviour or inferred characteristics', 'art_5/c').
declared(leads_to_detrimental_treatment/1, 'Resulting in unfavourable treatment unrelated to original context or disproportionate', 'art_5/c').
declared(used_for_risk_assessment_of_natural_person/1, 'AI system assesses or predicts criminal risk based solely on profiling', 'art_5/d').
declared(used_to_support_human_assessment/1, 'AI system assists a human assessment based on objective, verifiable facts', 'art_5/d').
declared(based_on_objective_verifiable_facts/1, 'Assessment is grounded in objective evidence', 'art_5/d').
declared(creates_or_expands_facial_recognition_database/1, 'AI system creates or expands facial‑recognition databases via untargeted scraping', 'art_5/e').
declared(infers_emotions_in_workplace_or_education/1, 'AI system infers emotions of natural persons in workplace or education settings', 'art_5/f').
declared(intended_for_medical_or_safety/1, 'System is placed on the market for medical or safety reasons', 'art_5/f').
declared(biometric_categorisation_system/1, 'AI system categorises individuals based on biometric data', 'art_5/g').
declared(deduces_protected_attributes/1, 'System infers race, political opinion, trade‑union membership, religious belief, sex life or sexual orientation', 'art_5/g').
declared(lawful_labeling_or_filtering_of_biometric_dataset/1, 'Labelling or filtering of lawfully acquired biometric data', 'art_5/g').
declared(performed_by_law_enforcement/1, 'Action performed by law‑enforcement authorities', 'art_5/g').
declared(uses_for_law_enforcement/3, 'System is used by a law‑enforcement authority in a publicly accessible space', 'art_5/h').
declared(objective_targeted_search_victims/1, 'Objective: targeted search for victims of abduction, trafficking or sexual exploitation', 'art_5/h').
declared(objective_prevent_imminent_threat/1, 'Objective: prevent a substantial and imminent threat to life or safety, or a terrorist attack', 'art_5/h').
declared(objective_localise_suspect/1, 'Objective: localise or identify a suspect for criminal investigation or prosecution', 'art_5/h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(covered_by_annex1/1, 'AI system covered by Union harmonisation legislation listed in Annex 1', 'celex:32024R1689/oj#art_6').
declared(product/1, 'AI system is itself a product', 'celex:32024R1689/oj#art_6').
declared(annex3_ai_system/1, 'AI system referred to in Annex 3', 'celex:32024R1689/oj#art_6').
declared(insignificant_risk/1, 'AI system does not pose a significant risk of harm', 'celex:32024R1689/oj#art_6').
declared(intended_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(intended_improve_human_activity/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(intended_detect_decision_patterns_without_replacement/1, 'AI system intended to detect decision‑making patterns and not replace or influence prior human assessment', 'celex:32024R1689/oj#art_6').
declared(intended_preparatory_task_for_assessment/1, 'AI system intended to perform a preparatory task for an assessment relevant to the use cases listed in Annex 3', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    safety_component(S),
    covered_by_annex1(S),
    conformity_assessment(S).
high_risk_ai_system(S) :-
    product(S),
    covered_by_annex1(S),
    conformity_assessment(S).
high_risk_ai_system(S) :-
    annex3_ai_system(S),
    \+ insignificant_risk(S).
high_risk_ai_system(S) :-
    profiling(S).
insignificant_risk(S) :-
    intended_narrow_procedural_task(S).
insignificant_risk(S) :-
    intended_improve_human_activity(S).
insignificant_risk(S) :-
    intended_detect_decision_patterns_without_replacement(S).
insignificant_risk(S) :-
    intended_preparatory_task_for_assessment(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(insignificant_risk/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_patterns_without_replacement/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#anx_1', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6/par_1', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6/par_2', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6/par_3/unp_1', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6/par_3/unp_2', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_49/par_2', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7/par_1', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6/par_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6/par_7', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_8').
declared(risk_management_system/1, 'risk management system referred to in art 9', 'celex:32024R1689/oj#art_8').
declared(contains_ai_system/2, 'product contains an AI system', 'celex:32024R1689/oj#art_8').
declared(applicable_union_harmonisation_requirements/1, 'applicable Union harmonisation legislation requirements', 'celex:32024R1689/oj#art_8').
declared(permitted_integration_of_testing_and_reporting/2, 'provider may integrate testing and reporting processes into existing documentation', 'celex:32024R1689/oj#art_8').
required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose(S, _),
    risk_management_system(_).
must_ensure(Provider, Product) :-
    provider(Provider),
    contains_ai_system(Product, S),
    high_risk_ai_system(S),
    applicable_union_harmonisation_requirements(Product).
permitted_integration_of_testing_and_reporting(Provider, Product) :-
    provider(Provider),
    contains_ai_system(Product, S),
    high_risk_ai_system(S).
provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(risk_management_system/1, 'risk management system for a high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/2, 'provider must establish a risk management system for a high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_step/2, 'specific step required in the risk management system for a high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_testing_for_risk_management/2, 'provider must test the high‑risk AI system to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(permitted_testing_in_real_world_conditions/2, 'testing may include real‑world conditions', 'celex:32024R1689/oj#art_9').
declared(required_testing_before_market_or_service/2, 'testing must be performed before market placement or putting into service', 'celex:32024R1689/oj#art_9').
declared(required_consideration_of_vulnerable_groups/2, 'provider shall consider impact on minors and other vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(permitted_combination_with_other_risk_management/2, 'aspects may be combined with other risk‑management procedures', 'celex:32024R1689/oj#art_9').
required_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_risk_management_step(identification_and_analysis, S) :-
    high_risk_ai_system(S).
required_risk_management_step(estimation_and_evaluation, S) :-
    high_risk_ai_system(S).
required_risk_management_step(evaluation_of_other_risks, S) :-
    high_risk_ai_system(S).
required_risk_management_step(adoption_of_measures, S) :-
    high_risk_ai_system(S).
required_testing_for_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S).
permitted_testing_in_real_world_conditions(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_testing_before_market_or_service(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_consideration_of_vulnerable_groups(P, S) :-
    provider(P),
    high_risk_ai_system(S).
permitted_combination_with_other_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_before_market_or_service/2, 'celex:32024R1689/oj#art_9').
provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_risk_management/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
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
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'derived').
high_risk_ai_system(S) :-
    ai_system(S).
required_compliance_with_requirements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_compliance_with_requirements/2, 'celex:32024R1689/oj#art_16').
required_indication_of_contact_details(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_indication_of_contact_details/2, 'celex:32024R1689/oj#art_16').
required_quality_management_system(Provider) :-
    provider(Provider).
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_16').
required_keeping_of_documentation(Provider) :-
    provider(Provider).
provenance(required_keeping_of_documentation/1, 'celex:32024R1689/oj#art_16').
required_keeping_of_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_keeping_of_logs/2, 'celex:32024R1689/oj#art_16').
required_conformity_assessment_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_conformity_assessment_before_market/2, 'celex:32024R1689/oj#art_16').
required_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
required_affix_ce_marking(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
required_registration_obligations(Provider) :-
    provider(Provider).
provenance(required_registration_obligations/1, 'celex:32024R1689/oj#art_16').
required_corrective_actions_and_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_corrective_actions_and_information/2, 'celex:32024R1689/oj#art_16').
required_demonstration_of_conformity_on_request(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_demonstration_of_conformity_on_request/2, 'celex:32024R1689/oj#art_16').
required_accessibility_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').

