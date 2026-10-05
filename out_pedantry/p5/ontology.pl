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
:- discontiguous aggregated_report_excludes_sensitive_operational_data/1.
:- discontiguous allowed_objective/2.
:- discontiguous authorisation_requested_within/2.
:- discontiguous commission_provides_template/1.
:- discontiguous commission_publish_annual_report/1.
:- discontiguous delete_data/1.
:- discontiguous deploys_subliminal_or_manipulative_or_deceptive/1.
:- discontiguous exploits_vulnerability/2.
:- discontiguous must_comply_fundamental_rights_impact_assessment/1.
:- discontiguous must_confirm_identity/2.
:- discontiguous must_notify/3.
:- discontiguous must_register_in_eu_database/1.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_take_into_account/2.
:- discontiguous notification_contains_minimum_information/1.
:- discontiguous notification_excludes_sensitive_operational_data/1.
:- discontiguous operator/1.
:- discontiguous permitted_action/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous prior_authorisation_required/1.
:- discontiguous prohibited_action/1.
:- discontiguous provenance/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.
:- discontiguous stop_use/1.

% --- ABox interface: assert facts against these at runtime ---
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic appreciably_impairs_informed_decision/2.
:- dynamic authorisation_rejected/1.
:- dynamic authorised_representative/1.
:- dynamic based_on_characteristics/1.
:- dynamic based_solely_on_profiling/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic causes_decision_not_otherwise_taken/2.
:- dynamic ce_marking/1.
:- dynamic common_specification/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic context_education/1.
:- dynamic context_workplace/1.
:- dynamic creates_facial_database/1.
:- dynamic crime_in_annex_2/1.
:- dynamic critical_infrastructure/1.
:- dynamic deceptive_technique/1.
:- dynamic deduces_sensitive_attribute/1.
:- dynamic deep_fake/1.
:- dynamic deployer/1.
:- dynamic deploys/2.
:- dynamic distributor/1.
:- dynamic downstream_provider/1.
:- dynamic element_consequences_for_rights/1.
:- dynamic element_nature_of_situation/1.
:- dynamic emotion_recognition_system/1.
:- dynamic evaluation_or_classification_system/1.
:- dynamic floating_point_operation/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic high_impact_capabilities/1.
:- dynamic importer/1.
:- dynamic infers_emotions/2.
:- dynamic informed_consent/1.
:- dynamic input_data/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_for_medical_or_safety/1.
:- dynamic intended_purpose/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_use/1.
:- dynamic lawful_dataset_labelling/1.
:- dynamic leads_to_detrimental_treatment/2.
:- dynamic localisation_of_suspect/1.
:- dynamic making_available_on_market/2.
:- dynamic market_surveillance_authority/1.
:- dynamic materially_distorts_behavior/2.
:- dynamic national_competent_authority/1.
:- dynamic non_personal_data/1.
:- dynamic notified_body/1.
:- dynamic notifying_authority/1.
:- dynamic over_period/1.
:- dynamic performance_of_ai_system/1.
:- dynamic personal_data/1.
:- dynamic places_on_market/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic prevention_of_imminent_threat/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic provider/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purposefully_manipulative_technique/1.
:- dynamic putting_into_service/2.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasonably_likely_to_cause_significant_harm/1.
:- dynamic recall_of_ai_system/1.
:- dynamic remote_biometric_identification_system/1.
:- dynamic risk/1.
:- dynamic risk_assessment_system/1.
:- dynamic safety_component/1.
:- dynamic sandbox_plan/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic significant_harm/1.
:- dynamic social_score/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic subject/1.
:- dynamic subliminal_technique/1.
:- dynamic substantial_modification/1.
:- dynamic supports_human_assessment/1.
:- dynamic systemic_risk/1.
:- dynamic targeted_search_victims/1.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic training_data/1.
:- dynamic unjustified_or_disproportionate/1.
:- dynamic unrelated_context/1.
:- dynamic untargeted_scraping/1.
:- dynamic urgency_exception/1.
:- dynamic use/2.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic vulnerability_due_to_age/1.
:- dynamic vulnerability_due_to_disability/1.
:- dynamic vulnerability_due_to_social_economic/1.
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
declared(prohibited_action/1, 'prohibited AI practice', 'celex:32024R1689/oj#art_5').
declared(deploys/2, 'AI system deploys a technique', 'celex:32024R1689/oj#art_5').
declared(subliminal_technique/1, 'subliminal technique beyond a person’s consciousness', 'celex:32024R1689/oj#art_5').
declared(purposefully_manipulative_technique/1, 'purposefully manipulative technique', 'celex:32024R1689/oj#art_5').
declared(deceptive_technique/1, 'deceptive technique', 'celex:32024R1689/oj#art_5').
declared(materially_distorts_behavior/2, 'materially distorts the behaviour of a target', 'celex:32024R1689/oj#art_5').
declared(appreciably_impairs_informed_decision/2, 'appreciably impairs ability to make an informed decision', 'celex:32024R1689/oj#art_5').
declared(causes_decision_not_otherwise_taken/2, 'causes a decision that the target would not have otherwise taken', 'celex:32024R1689/oj#art_5').
declared(significant_harm/1, 'significant harm', 'celex:32024R1689/oj#art_5').
declared(reasonably_likely_to_cause_significant_harm/1, 'reasonably likely to cause significant harm', 'celex:32024R1689/oj#art_5').
declared(use/2, 'use of an AI system by a deployer', 'celex:32024R1689/oj#art_5').
declared(vulnerability_due_to_age/1, 'vulnerability due to age', 'celex:32024R1689/oj#art_5').
declared(vulnerability_due_to_disability/1, 'vulnerability due to disability', 'celex:32024R1689/oj#art_5').
declared(vulnerability_due_to_social_economic/1, 'vulnerability due to specific social or economic situation', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerability/2, 'AI system exploits a vulnerability of a target', 'celex:32024R1689/oj#art_5').
declared(evaluation_or_classification_system/1, 'AI system used for evaluation or classification of persons or groups', 'celex:32024R1689/oj#art_5').
declared(over_period/1, 'operates over a certain period of time', 'celex:32024R1689/oj#art_5').
declared(based_on_characteristics/1, 'based on social behaviour or inferred personal characteristics', 'celex:32024R1689/oj#art_5').
declared(social_score/1, 'social score produced by the system', 'celex:32024R1689/oj#art_5').
declared(leads_to_detrimental_treatment/2, 'leads to detrimental or unfavourable treatment', 'celex:32024R1689/oj#art_5').
declared(unrelated_context/1, 'treatment in contexts unrelated to data generation', 'celex:32024R1689/oj#art_5').
declared(unjustified_or_disproportionate/1, 'treatment unjustified or disproportionate to behaviour', 'celex:32024R1689/oj#art_5').
declared(risk_assessment_system/1, 'AI system making risk assessments of natural persons', 'celex:32024R1689/oj#art_5').
declared(based_solely_on_profiling/1, 'assessment based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(supports_human_assessment/1, 'system used to support human assessment based on objective verifiable facts', 'celex:32024R1689/oj#art_5').
declared(creates_facial_database/1, 'creates or expands facial recognition database through untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(untargeted_scraping/1, 'untargeted scraping of facial images from internet or CCTV', 'celex:32024R1689/oj#art_5').
declared(infers_emotions/2, 'infers emotions of a natural person in a given context', 'celex:32024R1689/oj#art_5').
declared(context_workplace/1, 'workplace context', 'celex:32024R1689/oj#art_5').
declared(context_education/1, 'education institution context', 'celex:32024R1689/oj#art_5').
declared(intended_for_medical_or_safety/1, 'intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(deduces_sensitive_attribute/1, 'deduces race, political opinion, trade union membership, religious belief, sex life or sexual orientation', 'celex:32024R1689/oj#art_5').
declared(lawful_dataset_labelling/1, 'labelling or filtering of lawfully acquired biometric datasets', 'celex:32024R1689/oj#art_5').
declared(law_enforcement_use/1, 'use of a system for law enforcement purposes', 'celex:32024R1689/oj#art_5').
declared(allowed_objective/2, 'objective for which use of real‑time remote biometric identification is permitted', 'celex:32024R1689/oj#art_5').
declared(targeted_search_victims/1, 'targeted search for specific victims of abduction, trafficking or sexual exploitation', 'celex:32024R1689/oj#art_5').
declared(prevention_of_imminent_threat/1, 'prevention of a substantial and imminent threat to life or safety or a terrorist attack', 'celex:32024R1689/oj#art_5').
declared(localisation_of_suspect/1, 'localisation or identification of a person suspected of a criminal offence', 'celex:32024R1689/oj#art_5').
declared(crime_in_annex_2/1, 'criminal offence listed in annex II', 'celex:32024R1689/oj#art_5').
declared(must_confirm_identity/2, 'system shall be deployed only to confirm the identity of the specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(must_take_into_account/2, 'system shall take into account specified elements', 'celex:32024R1689/oj#art_5').
declared(element_nature_of_situation/1, 'nature of the situation, seriousness, probability and scale of harm', 'celex:32024R1689/oj#art_5').
declared(element_consequences_for_rights/1, 'consequences for rights and freedoms of all persons concerned', 'celex:32024R1689/oj#art_5').
declared(must_comply_fundamental_rights_impact_assessment/1, 'authorities must have completed a fundamental rights impact assessment', 'celex:32024R1689/oj#art_5').
declared(must_register_in_eu_database/1, 'system must be registered in the EU database', 'celex:32024R1689/oj#art_5').
declared(urgency_exception/1, 'use may commence without registration in cases of duly justified urgency', 'celex:32024R1689/oj#art_5').
declared(prior_authorisation_required/1, 'use requires prior authorisation by a judicial or independent administrative authority', 'celex:32024R1689/oj#art_5').
declared(authorisation_requested_within/2, 'authorisation request must be made without undue delay, at latest within 24 hours', 'celex:32024R1689/oj#art_5').
declared(authorisation_rejected/1, 'authorisation is rejected', 'celex:32024R1689/oj#art_5').
declared(stop_use/1, 'use shall be stopped with immediate effect', 'celex:32024R1689/oj#art_5').
declared(delete_data/1, 'all data, results and outputs shall be immediately discarded and deleted', 'celex:32024R1689/oj#art_5').
declared(must_notify/3, 'use shall be notified to the relevant market surveillance authority and national data protection authority', 'celex:32024R1689/oj#art_5').
declared(notification_contains_minimum_information/1, 'notification shall contain the minimum information specified', 'celex:32024R1689/oj#art_5').
declared(notification_excludes_sensitive_operational_data/1, 'notification shall not include sensitive operational data', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'authorities shall submit annual reports to the Commission', 'celex:32024R1689/oj#art_5').
declared(commission_provides_template/1, 'Commission shall provide a template for the reports', 'celex:32024R1689/oj#art_5').
declared(commission_publish_annual_report/1, 'Commission shall publish annual reports based on aggregated data', 'celex:32024R1689/oj#art_5').
declared(aggregated_report_excludes_sensitive_operational_data/1, 'annual reports shall not include sensitive operational data', 'celex:32024R1689/oj#art_5').
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    deploys_subliminal_or_manipulative_or_deceptive(S),
    materially_distorts_behavior(S,Target),
    appreciably_impairs_informed_decision(S,Target),
    causes_decision_not_otherwise_taken(S,Target),
    (significant_harm(Target) ; reasonably_likely_to_cause_significant_harm(Target)).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    deploys_subliminal_or_manipulative_or_deceptive(S),
    materially_distorts_behavior(S,Target),
    appreciably_impairs_informed_decision(S,Target),
    causes_decision_not_otherwise_taken(S,Target),
    (significant_harm(Target) ; reasonably_likely_to_cause_significant_harm(Target)).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    deploys_subliminal_or_manipulative_or_deceptive(S),
    materially_distorts_behavior(S,Target),
    appreciably_impairs_informed_decision(S,Target),
    causes_decision_not_otherwise_taken(S,Target),
    (significant_harm(Target) ; reasonably_likely_to_cause_significant_harm(Target)).
deploys_subliminal_or_manipulative_or_deceptive(S) :-
    deploys(S,T),
    (subliminal_technique(T) ; purposefully_manipulative_technique(T) ; deceptive_technique(T)).
provenance(prohibited_action/1, 'celex:32024R1689/oj#art_5').
provenance(deploys_subliminal_or_manipulative_or_deceptive/1, 'celex:32024R1689/oj#art_5').
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    exploits_vulnerability(S,Target),
    materially_distorts_behavior(S,Target),
    (significant_harm(Target) ; reasonably_likely_to_cause_significant_harm(Target)).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    exploits_vulnerability(S,Target),
    materially_distorts_behavior(S,Target),
    (significant_harm(Target) ; reasonably_likely_to_cause_significant_harm(Target)).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    exploits_vulnerability(S,Target),
    materially_distorts_behavior(S,Target),
    (significant_harm(Target) ; reasonably_likely_to_cause_significant_harm(Target)).
exploits_vulnerability(S,Target) :-
    deploys(S,T),
    (vulnerability_due_to_age(T) ; vulnerability_due_to_disability(T) ; vulnerability_due_to_social_economic(T)),
    target_of(T,Target).
provenance(exploits_vulnerability/2, 'celex:32024R1689/oj#art_5').
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    evaluation_or_classification_system(S),
    over_period(S),
    based_on_characteristics(S),
    social_score(S),
    leads_to_detrimental_treatment(S,Target,unrelated_context).
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    evaluation_or_classification_system(S),
    over_period(S),
    based_on_characteristics(S),
    social_score(S),
    leads_to_detrimental_treatment(S,Target,unjustified_or_disproportionate).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    evaluation_or_classification_system(S),
    over_period(S),
    based_on_characteristics(S),
    social_score(S),
    leads_to_detrimental_treatment(S,Target,unrelated_context).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    evaluation_or_classification_system(S),
    over_period(S),
    based_on_characteristics(S),
    social_score(S),
    leads_to_detrimental_treatment(S,Target,unjustified_or_disproportionate).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    evaluation_or_classification_system(S),
    over_period(S),
    based_on_characteristics(S),
    social_score(S),
    leads_to_detrimental_treatment(S,Target,unrelated_context).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    evaluation_or_classification_system(S),
    over_period(S),
    based_on_characteristics(S),
    social_score(S),
    leads_to_detrimental_treatment(S,Target,unjustified_or_disproportionate).
provenance(leads_to_detrimental_treatment/2, 'celex:32024R1689/oj#art_5').
permitted_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    risk_assessment_system(S),
    supports_human_assessment(S).
permitted_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    risk_assessment_system(S),
    supports_human_assessment(S).
permitted_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    risk_assessment_system(S),
    supports_human_assessment(S).
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    risk_assessment_system(S),
    based_solely_on_profiling(S),
    \+ permitted_action(places_on_market(Provider,S)).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    risk_assessment_system(S),
    based_solely_on_profiling(S),
    \+ permitted_action(putting_into_service(Provider,S)).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    risk_assessment_system(S),
    based_solely_on_profiling(S),
    \+ permitted_action(use(Deployer,S)).
provenance(permitted_action/1, 'celex:32024R1689/oj#art_5').
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    creates_facial_database(S),
    untargeted_scraping(S).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    creates_facial_database(S),
    untargeted_scraping(S).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    creates_facial_database(S),
    untargeted_scraping(S).
provenance(creates_facial_database/1, 'celex:32024R1689/oj#art_5').
permitted_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    infers_emotions(S,Context),
    (context_workplace(Context) ; context_education(Context)),
    intended_for_medical_or_safety(S).
permitted_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    infers_emotions(S,Context),
    (context_workplace(Context) ; context_education(Context)),
    intended_for_medical_or_safety(S).
permitted_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    infers_emotions(S,Context),
    (context_workplace(Context) ; context_education(Context)),
    intended_for_medical_or_safety(S).
prohibited_action(places_on_market(Provider,S)) :-
    ai_system(S),
    places_on_market(Provider,S),
    infers_emotions(S,Context),
    (context_workplace(Context) ; context_education(Context)),
    \+ permitted_action(places_on_market(Provider,S)).
prohibited_action(putting_into_service(Provider,S)) :-
    ai_system(S),
    putting_into_service(Provider,S),
    infers_emotions(S,Context),
    (context_workplace(Context) ; context_education(Context)),
    \+ permitted_action(putting_into_service(Provider,S)).
prohibited_action(use(Deployer,S)) :-
    ai_system(S),
    use(Deployer,S),
    infers_emotions(S,Context),
    (context_workplace(Context) ; context_education(Context)),
    \+ permitted_action(use(Deployer,S)).
provenance(infers_emotions/2, 'celex:32024R1689/oj#art_5').
permitted_action(places_on_market(Provider,S)) :-
    biometric_categorisation_system(S),
    lawful_dataset_labelling(S).
permitted_action(putting_into_service(Provider,S)) :-
    biometric_categorisation_system(S),
    lawful_dataset_labelling(S).
permitted_action(use(Deployer,S)) :-
    biometric_categorisation_system(S),
    lawful_dataset_labelling(S).
prohibited_action(places_on_market(Provider,S)) :-
    biometric_categorisation_system(S),
    deduces_sensitive_attribute(S),
    \+ permitted_action(places_on_market(Provider,S)).
prohibited_action(putting_into_service(Provider,S)) :-
    biometric_categorisation_system(S),
    deduces_sensitive_attribute(S),
    \+ permitted_action(putting_into_service(Provider,S)).
prohibited_action(use(Deployer,S)) :-
    biometric_categorisation_system(S),
    deduces_sensitive_attribute(S),
    \+ permitted_action(use(Deployer,S)).
provenance(deduces_sensitive_attribute/1, 'celex:32024R1689/oj#art_5').
allowed_objective(S, targeted_search_victims) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    targeted_search_victims(S).
allowed_objective(S, prevention_of_imminent_threat) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    prevention_of_imminent_threat(S).
allowed_objective(S, localisation_of_suspect) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    localisation_of_suspect(S),
    crime_in_annex_2(Crime),
    relates_to_crime(S,Crime).
prohibited_action(use_rt_rbi(S)) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    publicly_accessible_space(Place),
    \+ allowed_objective(S,_).
provenance(allowed_objective/2, 'celex:32024R1689/oj#art_5').
must_confirm_identity(S,TargetIndividual) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    specifically_targeted(TargetIndividual).
must_take_into_account(S,element_nature_of_situation) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    element_nature_of_situation(_).
must_take_into_account(S,element_consequences_for_rights) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    element_consequences_for_rights(_).
must_comply_fundamental_rights_impact_assessment(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    fundamental_rights_impact_assessment_completed(S).
must_register_in_eu_database(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    \+ urgency_exception(S).
provenance(must_confirm_identity/2, 'celex:32024R1689/oj#art_5').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_5').
provenance(must_comply_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(must_register_in_eu_database/1, 'celex:32024R1689/oj#art_5').
prior_authorisation_required(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S).
authorisation_requested_within(S,24_hours) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    urgency_exception(S).
stop_use(S) :-
    authorisation_rejected(S).
delete_data(S) :-
    authorisation_rejected(S).
provenance(prior_authorisation_required/1, 'celex:32024R1689/oj#art_5').
provenance(authorisation_requested_within/2, 'celex:32024R1689/oj#art_5').
provenance(stop_use/1, 'celex:32024R1689/oj#art_5').
provenance(delete_data/1, 'celex:32024R1689/oj#art_5').
must_notify(S, market_surveillance_authority, national_data_protection_authority) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S).
notification_contains_minimum_information(S) :-
    must_notify(S,_,_).
notification_excludes_sensitive_operational_data(S) :-
    must_notify(S,_,_).
provenance(must_notify/3, 'celex:32024R1689/oj#art_5').
provenance(notification_contains_minimum_information/1, 'celex:32024R1689/oj#art_5').
provenance(notification_excludes_sensitive_operational_data/1, 'celex:32024R1689/oj#art_5').
must_submit_annual_report(Authority,S) :-
    (Authority = market_surveillance_authority ; Authority = national_data_protection_authority),
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S).
commission_provides_template(Template) :-
    Template = annual_report_template.
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(commission_provides_template/1, 'celex:32024R1689/oj#art_5').
commission_publish_annual_report(Report) :-
    aggregated_report(Report).
aggregated_report_excludes_sensitive_operational_data(Report) :-
    commission_publish_annual_report(Report).
provenance(commission_publish_annual_report/1, 'celex:32024R1689/oj#art_5').
provenance(aggregated_report_excludes_sensitive_operational_data/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5','celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_6').

