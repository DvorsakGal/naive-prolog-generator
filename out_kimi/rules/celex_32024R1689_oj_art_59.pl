% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7b6ca6265656c4287a52d4163e9ba48bb51f28c716a7cf5ab7a7fa4145953878
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_further_processing_of_personal_data_in_sandbox/1, gloss('further processing of personal data for developing certain AI systems in the AI regulatory sandbox is permitted'), source('celex:32024R1689/oj#art_59').
:- pred developed_for_substantial_public_interest/1, gloss('AI system developed for safeguarding substantial public interest by public authority or other person'), source('celex:32024R1689/oj#art_59/par_1/pnt_a').
:- pred public_safety_and_public_health/1, gloss('area of public safety and public health'), source('celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_i').
:- pred environmental_protection/1, gloss('area of environmental protection and quality improvement'), source('celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_ii').
:- pred energy_sustainability/1, gloss('area of energy sustainability'), source('celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iii').
:- pred transport_and_critical_infrastructure/1, gloss('area of transport safety and critical infrastructure resilience'), source('celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iv').
:- pred public_administration_efficiency/1, gloss('area of public administration and public services efficiency and quality'), source('celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_v').
:- pred necessary_for_compliance_with_chapter_3_section_2/1, gloss('data necessary for complying with requirements in chapter 3 section 2 that cannot be fulfilled with non-personal data'), source('celex:32024R1689/oj#art_59/par_1/pnt_b').
:- pred effective_monitoring_and_response_mechanisms/1, gloss('effective monitoring and response mechanisms for high risks to data subjects'), source('celex:32024R1689/oj#art_59/par_1/pnt_c').
:- pred separate_isolated_protected_environment/1, gloss('personal data in functionally separate, isolated and protected environment under provider control with authorised access only'), source('celex:32024R1689/oj#art_59/par_1/pnt_d').
:- pred data_sharing_restrictions/1, gloss('restrictions on sharing originally collected data and prohibition on sharing sandbox-created personal data outside sandbox'), source('celex:32024R1689/oj#art_59/par_1/pnt_e').
:- pred no_adverse_measures_or_decisions/1, gloss('processing does not lead to measures or decisions affecting data subjects nor affect their rights'), source('celex:32024R1689/oj#art_59/par_1/pnt_f').
:- pred technical_organisational_measures_and_deletion/1, gloss('appropriate technical and organisational measures and deletion upon termination or end of retention'), source('celex:32024R1689/oj#art_59/par_1/pnt_g').
:- pred logs_kept_for_duration/1, gloss('logs kept for duration of sandbox participation unless otherwise provided by law'), source('celex:32024R1689/oj#art_59/par_1/pnt_h').
:- pred technical_documentation_of_training_testing_validation/1, gloss('complete description of training, testing and validation process and results kept in technical documentation'), source('celex:32024R1689/oj#art_59/par_1/pnt_i').
:- pred summary_published_excluding_sensitive_data/1, gloss('short summary published on competent authority website excluding sensitive operational data for certain authorities'), source('celex:32024R1689/oj#art_59/par_1/pnt_j').
:- pred law_enforcement_sandbox_processing/1, gloss('processing of personal data in sandbox for law enforcement purposes'), source('celex:32024R1689/oj#art_59/par_2').
:- pred specific_union_or_national_law_basis/1, gloss('processing based on specific Union or national law'), source('celex:32024R1689/oj#art_59/par_2').

permitted_further_processing_of_personal_data_in_sandbox(P) :-
    ai_regulatory_sandbox(P),
    personal_data(P),
    lawfully_collected_for_other_purposes(P),
    processed_for_developing_training_testing_ai_systems(P),
    developed_for_substantial_public_interest(P),
    public_interest_area(P),
    necessary_for_compliance_with_chapter_3_section_2(P),
    effective_monitoring_and_response_mechanisms(P),
    separate_isolated_protected_environment(P),
    data_sharing_restrictions(P),
    no_adverse_measures_or_decisions(P),
    technical_organisational_measures_and_deletion(P),
    logs_kept_for_duration(P),
    technical_documentation_of_training_testing_validation(P),
    summary_published_excluding_sensitive_data(P).

developed_for_substantial_public_interest(P) :-
    ai_regulatory_sandbox(P),
    developed_by_public_authority_or_person(P),
    safeguarding_substantial_public_interest(P).

public_interest_area(P) :-
    public_safety_and_public_health(P).
public_interest_area(P) :-
    environmental_protection(P).
public_interest_area(P) :-
    energy_sustainability(P).
public_interest_area(P) :-
    transport_and_critical_infrastructure(P).
public_interest_area(P) :-
    public_administration_efficiency(P).

public_safety_and_public_health(P) :-
    ai_regulatory_sandbox(P),
    purpose(safeguarding_public_safety_and_public_health, P),
    (   disease_detection(P)
    ;   disease_diagnosis(P)
    ;   disease_prevention(P)
    ;   disease_control(P)
    ;   disease_treatment(P)
    ;   improvement_of_health_care_systems(P)
    ).

environmental_protection(P) :-
    ai_regulatory_sandbox(P),
    purpose(high_level_of_environmental_protection, P),
    (   improvement_of_environmental_quality(P)
    ;   protection_of_biodiversity(P)
    ;   protection_against_pollution(P)
    ;   green_transition_measures(P)
    ;   climate_change_mitigation(P)
    ;   climate_change_adaptation(P)
    ).

energy_sustainability(P) :-
    ai_regulatory_sandbox(P),
    purpose(energy_sustainability, P).

transport_and_critical_infrastructure(P) :-
    ai_regulatory_sandbox(P),
    purpose(safety_and_resilience_of_transport_and_critical_infrastructure, P),
    (   safety_and_resilience_of_transport_systems(P)
    ;   safety_and_resilience_of_mobility(P)
    ;   safety_and_resilience_of_critical_infrastructure(P)
    ;   safety_and_resilience_of_networks(P)
    ).

public_administration_efficiency(P) :-
    ai_regulatory_sandbox(P),
    purpose(efficiency_and_quality_of_public_administration_and_services, P).

necessary_for_compliance_with_chapter_3_section_2(P) :-
    ai_regulatory_sandbox(P),
    data_processed_necessary_for_compliance(P),
    \+ can_be_fulfilled_with_anonymised_synthetic_or_non_personal_data(P).

effective_monitoring_and_response_mechanisms(P) :-
    ai_regulatory_sandbox(P),
    monitoring_mechanisms_identify_high_risks(P),
    response_mechanisms_mitigate_risks(P),
    stop_processing_available(P).

separate_isolated_protected_environment(P) :-
    ai_regulatory_sandbox(P),
    functionally_separate_data_processing_environment(P),
    isolated_data_processing_environment(P),
    protected_data_processing_environment(P),
    under_control_of_prospective_provider(P),
    only_authorised_persons_have_access(P).

data_sharing_restrictions(P) :-
    ai_regulatory_sandbox(P),
    originally_collected_data_shared_only_under_data_protection_law(P),
    sandbox_created_personal_data_not_shared_outside_sandbox(P).

no_adverse_measures_or_decisions(P) :-
    ai_regulatory_sandbox(P),
    \+ leads_to_measures_or_decisions_affecting_data_subjects(P),
    \+ affects_application_of_data_subject_rights(P).

technical_organisational_measures_and_deletion(P) :-
    ai_regulatory_sandbox(P),
    protected_by_appropriate_technical_and_organisational_measures(P),
    (   deleted_once_participation_terminated(P)
    ;   deleted_once_retention_period_ended(P)
    ).

logs_kept_for_duration(P) :-
    ai_regulatory_sandbox(P),
    logs_of_processing_kept(P),
    for_duration_of_participation(P),
    \+ otherwise_provided_by_union_or_national_law(P).

technical_documentation_of_training_testing_validation(P) :-
    ai_regulatory_sandbox(P),
    complete_and_detailed_description_kept(P),
    description_covers_process_and_rationale(P),
    description_covers_training(P),
    description_covers_testing(P),
    description_covers_validation(P),
    testing_results_kept(P),
    part_of_technical_documentation(P).

summary_published_excluding_sensitive_data(P) :-
    ai_regulatory_sandbox(P),
    short_summary_published(P),
    on_website_of_competent_authorities(P),
    summary_covers_ai_project(P),
    summary_covers_objectives(P),
    summary_covers_expected_results(P),
    \+ covers_sensitive_operational_data(P).

covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_law_enforcement(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_border_control(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_immigration(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_asylum(P).

law_enforcement_sandbox_processing(P) :-
    ai_regulatory_sandbox(P),
    under_control_and_responsibility_of_law_enforcement_authority(P),
    purpose(prevention_investigation_detection_prosecution_of_criminal_offences, P),
    specific_union_or_national_law_basis(P),
    permitted_further_processing_of_personal_data_in_sandbox(P).

must_publish_summary(CompetentAuthority, P) :-
    ai_regulatory_sandbox(P),
    competent_authority(CompetentAuthority),
    short_summary_published(P),
    on_website_of(CompetentAuthority, P),
    \+ covers_sensitive_operational_data(P).

provenance(permitted_further_processing_of_personal_data_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(developed_for_substantial_public_interest/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a').
provenance(public_safety_and_public_health/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_i').
provenance(environmental_protection/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_ii').
provenance(energy_sustainability/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iii').
provenance(transport_and_critical_infrastructure/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iv').
provenance(public_administration_efficiency/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_v').
provenance(necessary_for_compliance_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_59/par_1/pnt_b').
provenance(effective_monitoring_and_response_mechanisms/1, 'celex:32024R1689/oj#art_59/par_1/pnt_c').
provenance(separate_isolated_protected_environment/1, 'celex:32024R1689/oj#art_59/par_1/pnt_d').
provenance(data_sharing_restrictions/1, 'celex:32024R1689/oj#art_59/par_1/pnt_e').
provenance(no_adverse_measures_or_decisions/1, 'celex:32024R1689/oj#art_59/par_1/pnt_f').
provenance(technical_organisational_measures_and_deletion/1, 'celex:32024R1689/oj#art_59/par_1/pnt_g').
provenance(logs_kept_for_duration/1, 'celex:32024R1689/oj#art_59/par_1/pnt_h').
provenance(technical_documentation_of_training_testing_validation/1, 'celex:32024R1689/oj#art_59/par_1/pnt_i').
provenance(summary_published_excluding_sensitive_data/1, 'celex:32024R1689/oj#art_59/par_1/pnt_j').
provenance(law_enforcement_sandbox_processing/1, 'celex:32024R1689/oj#art_59/par_2').
provenance(specific_union_or_national_law_basis/1, 'celex:32024R1689/oj#art_59/par_2').
provenance(must_publish_summary/2, 'celex:32024R1689/oj#art_59/par_1/pnt_j').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
references('celex:32024R1689/oj#art_59/par_2', 'celex:32024R1689/oj#art_59/par_1').
