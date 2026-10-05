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
:- discontiguous operator/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous prohibited_ai_practice/1.
:- discontiguous provenance/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.

% --- ABox interface: assert facts against these at runtime ---
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic authorised_representative/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic causes_significant_harm/1.
:- dynamic ce_marking/1.
:- dynamic common_specification/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic creates_facial_recognition_database_untargeted/1.
:- dynamic critical_infrastructure/1.
:- dynamic deep_fake/1.
:- dynamic deployer/1.
:- dynamic deploys_subliminal_or_deceptive_technique/1.
:- dynamic distributor/1.
:- dynamic downstream_provider/1.
:- dynamic emotion_recognition_system/1.
:- dynamic exception_lawful_dataset_labelling/1.
:- dynamic exploits_vulnerability/1.
:- dynamic floating_point_operation/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic high_impact_capabilities/1.
:- dynamic importer/1.
:- dynamic infers_emotions_in_workplace_or_education/1.
:- dynamic infers_protected_attributes/1.
:- dynamic informed_consent/1.
:- dynamic input_data/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_for_medical_or_safety/1.
:- dynamic intended_purpose/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic makes_risk_assessment_using_profiling/1.
:- dynamic making_available_on_market/2.
:- dynamic market_surveillance_authority/1.
:- dynamic materially_distorts_behavior/1.
:- dynamic national_competent_authority/1.
:- dynamic non_personal_data/1.
:- dynamic notified_body/1.
:- dynamic notifying_authority/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_social_scoring/1.
:- dynamic permitted_objective_h/1.
:- dynamic permitted_support_human_assessment/1.
:- dynamic personal_data/1.
:- dynamic places_on_market/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic provider/1.
:- dynamic publicly_accessible_space/1.
:- dynamic putting_into_service/2.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic recall_of_ai_system/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic risk/1.
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
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.

% ==== SIGNATURE (Phase A) ====
declared(ai_system/1, 'machine-based system with autonomy and adaptiveness', '1').
declared(risk/1, 'combination of probability and severity of harm', '2').
declared(provider/1, 'natural or legal person that develops or places an AI system on the market', '3').
declared(deployer/1, 'natural or legal person using an AI system under its authority', '4').
declared(authorised_representative/1, 'person in the Union mandated by a provider to act on its behalf', '5').
declared(importer/1, 'person in the Union placing on the market an AI system bearing a third‑country name', '6').
declared(distributor/1, 'person in the supply chain other than provider or importer making an AI system available', '7').
declared(product_manufacturer/1, 'entity that manufactures a product incorporating an AI system', '8').
declared(operator/1, 'entity that is a provider, product manufacturer, deployer, authorised representative, importer or distributor', '8').
declared(places_on_market/2, 'first making available of an AI system or model on the Union market', '9').
declared(making_available_on_market/2, 'supply of an AI system or model for distribution or use on the Union market', '10').
declared(putting_into_service/2, 'supply of an AI system for first use directly to the deployer or for own use', '11').
declared(intended_purpose/2, 'use for which an AI system is intended by the provider', '12').
declared(reasonably_foreseeable_misuse/1, 'use of an AI system contrary to its intended purpose but foreseeable', '13').
declared(safety_component/1, 'component of a product or AI system that fulfills a safety function', '14').
declared(instructions_for_use/1, 'information provided by the provider to inform the deployer of intended purpose and proper use', '15').
declared(recall_of_ai_system/1, 'measure aiming to return to the provider or disable an AI system', '16').
declared(withdrawal_of_ai_system/1, 'measure aiming to prevent an AI system from being made available on the market', '17').
declared(performance_of_ai_system/1, 'ability of an AI system to achieve its intended purpose', '18').
declared(notifying_authority/1, 'national authority responsible for conformity assessment procedures', '19').
declared(conformity_assessment/1, 'process demonstrating fulfillment of high‑risk AI system requirements', '20').
declared(conformity_assessment_body/1, 'body that performs third‑party conformity assessment activities', '21').
declared(notified_body/1, 'conformity assessment body notified in accordance with Union legislation', '22').
declared(substantial_modification/1, 'change to an AI system after market placement affecting compliance', '23').
declared(ce_marking/1, 'mark indicating conformity of an AI system with Union requirements', '24').
declared(post_market_monitoring_system/1, 'activities by providers to collect and review experience from AI system use', '25').
declared(market_surveillance_authority/1, 'national authority carrying out market surveillance activities', '26').
declared(harmonised_standard/1, 'standard defined in Union legislation', '27').
declared(common_specification/1, 'set of technical specifications providing means to comply with requirements', '28').
declared(training_data/1, 'data used for training an AI system', '29').
declared(validation_data/1, 'data used to evaluate and tune a trained AI system', '30').
declared(validation_data_set/1, 'separate data set or part of the training data set', '31').
declared(testing_data/1, 'data used for independent evaluation of an AI system before market placement', '32').
declared(input_data/1, 'data provided to or acquired by an AI system to produce an output', '33').
declared(biometric_data/1, 'personal data resulting from processing of physical, physiological or behavioural characteristics', '34').
declared(biometric_identification/1, 'automated recognition of a natural person by comparing biometric data to a database', '35').
declared(biometric_verification/1, 'automated one‑to‑one verification of a natural person’s identity', '36').
declared(special_categories_of_personal_data/1, 'categories of personal data listed in Union law', '37').
declared(sensitive_operational_data/1, 'operational data related to criminal investigations whose disclosure could jeopardise proceedings', '38').
declared(emotion_recognition_system/1, 'AI system identifying or inferring emotions or intentions from biometric data', '39').
declared(biometric_categorisation_system/1, 'AI system assigning persons to categories based on biometric data', '40').
declared(remote_biometric_identification_system/1, 'AI system identifying persons without active involvement, typically at a distance', '41').
declared(real_time_remote_biometric_identification_system/1, 'remote biometric identification where capture, comparison and identification occur without significant delay', '42').
declared(post_remote_biometric_identification_system/1, 'remote biometric identification system that is not real‑time', '43').
declared(publicly_accessible_space/1, 'any physical place accessible to an undetermined number of persons', '44').
declared(law_enforcement_authority/1, 'public authority competent for criminal investigation or other body entrusted with such powers', '45').
declared(law_enforcement/1, 'activities carried out by law enforcement authorities or on their behalf', '46').
declared(ai_office/1, 'Commission function contributing to AI system implementation, monitoring and supervision', '47').
declared(national_competent_authority/1, 'notifying authority or market surveillance authority', '48').
declared(serious_incident/1, 'incident or malfunctioning of an AI system leading to death, serious harm, critical infrastructure disruption, or rights infringement', '49').
declared(personal_data/1, 'personal data as defined in Union law', '50').
declared(non_personal_data/1, 'data other than personal data', '51').
declared(profiling/1, 'profiling as defined in Union law', '52').
declared(real_world_testing_plan/1, 'document describing objectives and methodology for testing in real‑world conditions', '53').
declared(sandbox_plan/1, 'document agreed between provider and competent authority describing sandbox activities', '54').
declared(ai_regulatory_sandbox/1, 'controlled framework allowing providers to develop and test innovative AI systems under supervision', '55').
declared(ai_literacy/1, 'skills and knowledge enabling informed deployment of AI systems', '56').
declared(testing_in_real_world_conditions/1, 'temporary testing of an AI system in real‑world conditions outside a laboratory', '57').
declared(subject/1, 'natural person participating in real‑world testing', '58').
declared(informed_consent/1, 'freely given, specific and unambiguous expression of willingness to participate in testing', '59').
declared(deep_fake/1, 'AI‑generated or manipulated content that falsely appears authentic', '60').
declared(widespread_infringement/1, 'act or omission contrary to Union law affecting individuals in multiple Member States', '61').
declared(critical_infrastructure/1, 'critical infrastructure as defined in Union law', '62').
declared(general_purpose_ai_model/1, 'AI model displaying significant generality and capable of many tasks', '63').
declared(high_impact_capabilities/1, 'capabilities matching or exceeding those of the most advanced general‑purpose AI models', '64').
declared(systemic_risk/1, 'risk specific to high‑impact capabilities of general‑purpose AI models affecting the Union market', '65').
declared(general_purpose_ai_system/1, 'AI system based on a general‑purpose AI model serving a variety of purposes', '66').
declared(floating_point_operation/1, 'mathematical operation involving floating‑point numbers', '67').
declared(downstream_provider/1, 'provider of an AI system that integrates an AI model', '68').
declared(real_time/1, 'property indicating operation without significant delay', '42').
operator(O) :-
    provider(O).
operator(O) :-
    product_manufacturer(O).
operator(O) :-
    deployer(O).
operator(O) :-
    authorised_representative(O).
operator(O) :-
    importer(O).
operator(O) :-
    distributor(O).
real_time_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    real_time(S).
post_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    \+ real_time(S).
provenance(operator/1, '8').
provenance(real_time_remote_biometric_identification_system/1, '42').
provenance(post_remote_biometric_identification_system/1, '43').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_ai_practice/1, 'AI practice prohibited under Art 5', 'celex:32024R1689/oj#art_5').
declared(deploys_subliminal_or_deceptive_technique/1, 'AI system deploys subliminal or purposefully manipulative/deceptive techniques', 'celex:32024R1689/oj#art_5').
declared(materially_distorts_behavior/1, 'AI system materially distorts the behaviour of a person or group', 'celex:32024R1689/oj#art_5').
declared(causes_significant_harm/1, 'Resulting in significant harm to a person or group', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerability/1, 'AI system exploits vulnerabilities of a natural person or specific group', 'celex:32024R1689/oj#art_5').
declared(performs_social_scoring/1, 'AI system evaluates or classifies persons over time based on social behaviour leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(makes_risk_assessment_using_profiling/1, 'AI system assesses risk of a natural person committing a criminal offence based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(permitted_support_human_assessment/1, 'AI system used to support human assessment based on objective, verifiable facts', 'celex:32024R1689/oj#art_5').
declared(creates_facial_recognition_database_untargeted/1, 'AI system creates or expands facial‑recognition databases by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(infers_emotions_in_workplace_or_education/1, 'AI system infers emotions of a natural person in workplace or education contexts', 'celex:32024R1689/oj#art_5').
declared(intended_for_medical_or_safety/1, 'AI system intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(infers_protected_attributes/1, 'Biometric categorisation system infers race, political opinion, trade‑union membership, religious/philosophical belief, sex life or sexual orientation', 'celex:32024R1689/oj#art_5').
declared(exception_lawful_dataset_labelling/1, 'Exception for lawful dataset labelling or filtering in law‑enforcement context', 'celex:32024R1689/oj#art_5').
declared(publicly_accessible_space/1, 'Space accessible to an undetermined number of persons', 'celex:32024R1689/oj#art_5').
declared(law_enforcement_purpose/1, 'Use for law‑enforcement purposes', 'celex:32024R1689/oj#art_5').
declared(permitted_objective_h/1, 'Use strictly necessary for one of the listed law‑enforcement objectives', 'celex:32024R1689/oj#art_5').
prohibited_ai_practice(S) :-
    ai_system(S),
    deploys_subliminal_or_deceptive_technique(S),
    materially_distorts_behavior(S),
    causes_significant_harm(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    exploits_vulnerability(S),
    causes_significant_harm(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    performs_social_scoring(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    makes_risk_assessment_using_profiling(S),
    \+ permitted_support_human_assessment(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    creates_facial_recognition_database_untargeted(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    infers_emotions_in_workplace_or_education(S),
    \+ intended_for_medical_or_safety(S).
prohibited_ai_practice(S) :-
    biometric_categorisation_system(S),
    infers_protected_attributes(S),
    \+ exception_lawful_dataset_labelling(S).
prohibited_ai_practice(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement_purpose(S),
    \+ permitted_objective_h(S).
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5').

