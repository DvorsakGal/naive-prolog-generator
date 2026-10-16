% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 8d5a1208a56df99370883dcff70baf3d5f7df6d81c9907dd897cbc8ee0ec0d67
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred further_processing_personal_data_permitted/1, gloss('further processing of personal data in AI regulatory sandbox permitted'), source('celex:32024R1689/oj#art_59').
:- pred developed_for_substantial_public_interest/1, gloss('AI system developed for safeguarding substantial public interest'), source('celex:32024R1689/oj#art_59').
:- pred developed_in_specified_area/1, gloss('AI system developed in one of the specified public interest areas'), source('celex:32024R1689/oj#art_59').
:- pred data_necessary_for_compliance/1, gloss('personal data necessary for compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_59').
:- pred cannot_fulfill_with_non_personal_data/1, gloss('requirements cannot effectively be fulfilled by processing anonymised, synthetic or other non-personal data'), source('celex:32024R1689/oj#art_59').
:- pred effective_monitoring_mechanisms/1, gloss('effective monitoring mechanisms to identify high risks to data subjects'), source('celex:32024R1689/oj#art_59').
:- pred response_mechanisms_to_mitigate_risks/1, gloss('response mechanisms to promptly mitigate risks and stop processing'), source('celex:32024R1689/oj#art_59').
:- pred functionally_separate_processing_environment/1, gloss('personal data processed in functionally separate, isolated and protected environment'), source('celex:32024R1689/oj#art_59').
:- pred only_authorised_persons_access_personal_data/1, gloss('only authorised persons have access to personal data in sandbox'), source('celex:32024R1689/oj#art_59').
:- pred originally_collected_data_shared_permitted/1, gloss('originally collected data shared only in accordance with Union data protection law'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_created_data_not_shared/1, gloss('personal data created in sandbox not shared outside sandbox'), source('celex:32024R1689/oj#art_59').
:- pred processing_no_measures_or_decisions_affecting_data_subjects/1, gloss('processing does not lead to measures or decisions affecting data subjects'), source('celex:32024R1689/oj#art_59').
:- pred processing_no_affect_on_data_subject_rights/1, gloss('processing does not affect application of data subject rights under Union law'), source('celex:32024R1689/oj#art_59').
:- pred personal_data_protected_and_deleted/1, gloss('personal data protected by appropriate measures and deleted after sandbox participation or retention period'), source('celex:32024R1689/oj#art_59').
:- pred processing_logs_kept/1, gloss('logs of processing of personal data kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred description_of_training_and_testing_kept/1, gloss('complete description of training, testing and validation process kept with results'), source('celex:32024R1689/oj#art_59').
:- pred summary_published_on_website/1, gloss('short summary of AI project published on competent authorities website'), source('celex:32024R1689/oj#art_59').
:- pred sensitive_operational_data_excluded_from_publication/1, gloss('sensitive operational data excluded from publication obligation'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_sandbox_processing_permitted/1, gloss('processing of personal data in sandbox for law enforcement purposes permitted'), source('celex:32024R1689/oj#art_59').
:- pred based_on_specific_union_or_national_law/1, gloss('processing based on specific Union or national law'), source('celex:32024R1689/oj#art_59').

% Article 59(1) - conditions for further processing of personal data in AI regulatory sandbox
further_processing_personal_data_permitted(Processing) :-
    ai_regulatory_sandbox(Sandbox),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    processed_for_developing_training_testing(Processing, Data, Sandbox),
    developed_for_substantial_public_interest(Processing),
    developed_in_specified_area(Processing),
    data_necessary_for_compliance(Processing),
    cannot_fulfill_with_non_personal_data(Processing),
    effective_monitoring_mechanisms(Processing),
    response_mechanisms_to_mitigate_risks(Processing),
    functionally_separate_processing_environment(Processing),
    only_authorised_persons_access_personal_data(Processing),
    originally_collected_data_shared_permitted(Processing),
    sandbox_created_data_not_shared(Processing),
    processing_no_measures_or_decisions_affecting_data_subjects(Processing),
    processing_no_affect_on_data_subject_rights(Processing),
    personal_data_protected_and_deleted(Processing),
    processing_logs_kept(Processing),
    description_of_training_and_testing_kept(Processing),
    summary_published_on_website(Processing),
    \+ sensitive_operational_data_excluded_from_publication(Processing).

developed_for_substantial_public_interest(Processing) :-
    developed_by_public_authority_or_legal_person(Processing),
    for_substantial_public_interest(Processing).

developed_in_specified_area(Processing) :-
    developed_in_area(Processing, public_safety_and_public_health).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, environment_and_biodiversity).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, energy_sustainability).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, transport_and_critical_infrastructure).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, public_administration_and_services).

data_necessary_for_compliance(Processing) :-
    data_necessary_for_chapter_3_section_2_requirements(Processing).

cannot_fulfill_with_non_personal_data(Processing) :-
    \+ requirements_fulfilled_by_anonymised_synthetic_or_non_personal_data(Processing).

% Article 59(2) - law enforcement sandbox processing
law_enforcement_sandbox_processing_permitted(Processing) :-
    law_enforcement_authority(Authority),
    under_control_and_responsibility_of(Processing, Authority),
    based_on_specific_union_or_national_law(Processing),
    further_processing_personal_data_permitted(Processing).

% Provenance
provenance(further_processing_personal_data_permitted/1, 'celex:32024R1689/oj#art_59').
provenance(developed_for_substantial_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(developed_in_specified_area/1, 'celex:32024R1689/oj#art_59').
provenance(data_necessary_for_compliance/1, 'celex:32024R1689/oj#art_59').
provenance(cannot_fulfill_with_non_personal_data/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(response_mechanisms_to_mitigate_risks/1, 'celex:32024R1689/oj#art_59').
provenance(functionally_separate_processing_environment/1, 'celex:32024R1689/oj#art_59').
provenance(only_authorised_persons_access_personal_data/1, 'celex:32024R1689/oj#art_59').
provenance(originally_collected_data_shared_permitted/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_created_data_not_shared/1, 'celex:32024R1689/oj#art_59').
provenance(processing_no_measures_or_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(processing_no_affect_on_data_subject_rights/1, 'celex:32024R1689/oj#art_59').
provenance(personal_data_protected_and_deleted/1, 'celex:32024R1689/oj#art_59').
provenance(processing_logs_kept/1, 'celex:32024R1689/oj#art_59').
provenance(description_of_training_and_testing_kept/1, 'celex:32024R1689/oj#art_59').
provenance(summary_published_on_website/1, 'celex:32024R1689/oj#art_59').
provenance(sensitive_operational_data_excluded_from_publication/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_processing_permitted/1, 'celex:32024R1689/oj#art_59').
provenance(based_on_specific_union_or_national_law/1, 'celex:32024R1689/oj#art_59').

% References
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
