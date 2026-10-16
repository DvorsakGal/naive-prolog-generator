% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 7f15a3359b3cd6f1687d2a3710c596318ea939f16ae75d6bcc4c20b661d09f68
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_further_processing_in_sandbox/2, gloss('personal data may be further processed in AI regulatory sandbox for developing certain AI systems'), source('celex:32024R1689/oj#art_59').
:- pred ai_system_developed_for_public_interest/1, gloss('AI system developed for safeguarding substantial public interest by public authority or other person'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('area of substantial public interest for AI system development'), source('celex:32024R1689/oj#art_59').
:- pred data_necessary_for_requirements/1, gloss('data processed are necessary for complying with requirements where anonymised or synthetic data insufficient'), source('celex:32024R1689/oj#art_59').
:- pred effective_monitoring_mechanisms/1, gloss('effective monitoring mechanisms to identify high risks to rights and freedoms of data subjects'), source('celex:32024R1689/oj#art_59').
:- pred response_mechanisms_to_mitigate_risks/1, gloss('response mechanisms to promptly mitigate risks and stop processing where necessary'), source('celex:32024R1689/oj#art_59').
:- pred functionally_separate_isolated_protected_environment/1, gloss('personal data in functionally separate, isolated and protected data processing environment'), source('celex:32024R1689/oj#art_59').
:- pred data_under_control_of_prospective_provider/1, gloss('data processing environment under control of prospective provider'), source('celex:32024R1689/oj#art_59').
:- pred only_authorised_persons_access_data/1, gloss('only authorised persons have access to personal data in sandbox'), source('celex:32024R1689/oj#art_59').
:- pred further_sharing_in_accordance_with_union_data_protection_law/1, gloss('providers can further share originally collected data only in accordance with Union data protection law'), source('celex:32024R1689/oj#art_59').
:- pred personal_data_created_in_sandbox_not_shared_outside/1, gloss('personal data created in sandbox cannot be shared outside sandbox'), source('celex:32024R1689/oj#art_59').
:- pred no_measures_or_decisions_affecting_data_subjects/1, gloss('processing neither leads to measures or decisions affecting data subjects'), source('celex:32024R1689/oj#art_59').
:- pred no_effect_on_data_subject_rights/1, gloss('processing does not affect application of data subjects rights under Union law'), source('celex:32024R1689/oj#art_59').
:- pred appropriate_technical_organisational_measures/1, gloss('personal data protected by appropriate technical and organisational measures'), source('celex:32024R1689/oj#art_59').
:- pred personal_data_deleted_after_sandbox_termination/1, gloss('personal data deleted once sandbox participation terminated or retention period ended'), source('celex:32024R1689/oj#art_59').
:- pred logs_kept_for_sandbox_duration/1, gloss('logs of personal data processing kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred complete_detailed_description_kept/1, gloss('complete and detailed description of process and rationale kept with testing results as technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred short_summary_published_on_website/1, gloss('short summary of AI project published on website of competent authorities'), source('celex:32024R1689/oj#art_59').
:- pred sensitive_operational_data_excluded_from_publication/1, gloss('obligation to publish summary does not cover sensitive operational data of law enforcement, border control, immigration or asylum authorities'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_processing_based_on_specific_law/1, gloss('processing of personal data for law enforcement purposes based on specific Union or national law'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_processing_subject_to_cumulative_conditions/1, gloss('law enforcement processing subject to same cumulative conditions as paragraph 1'), source('celex:32024R1689/oj#art_59').

permitted_further_processing_in_sandbox(Data, S) :-
    ai_regulatory_sandbox(Sandbox),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    ai_system(S),
    ai_system_developed_for_public_interest(S),
    public_interest_area(S),
    data_necessary_for_requirements(Data),
    effective_monitoring_mechanisms(Data),
    response_mechanisms_to_mitigate_risks(Data),
    functionally_separate_isolated_protected_environment(Data),
    data_under_control_of_prospective_provider(Data),
    only_authorised_persons_access_data(Data),
    further_sharing_in_accordance_with_union_data_protection_law(Data),
    personal_data_created_in_sandbox_not_shared_outside(Data),
    no_measures_or_decisions_affecting_data_subjects(Data),
    no_effect_on_data_subject_rights(Data),
    appropriate_technical_organisational_measures(Data),
    personal_data_deleted_after_sandbox_termination(Data),
    logs_kept_for_sandbox_duration(Data),
    complete_detailed_description_kept(S),
    short_summary_published_on_website(S).

ai_system_developed_for_public_interest(S) :-
    ai_system(S),
    developed_by_public_authority_or_person(S),
    safeguarding_substantial_public_interest(S).

developed_by_public_authority_or_person(S) :-
    provider(S),
    public_authority(S).
developed_by_public_authority_or_person(S) :-
    provider(S),
    natural_or_legal_person(S).

public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_public_safety_and_public_health(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_environment_quality_and_green_transition(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_energy_sustainability(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_transport_safety_and_critical_infrastructure(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_public_administration_efficiency(S).

data_necessary_for_requirements(Data) :-
    personal_data(Data),
    necessary_for_compliance_with_requirements(Data),
    \+ effectively_fulfilled_by_non_personal_data(Data).

effectively_fulfilled_by_non_personal_data(Data) :-
    anonymised_data(Data).
effectively_fulfilled_by_non_personal_data(Data) :-
    synthetic_data(Data).
effectively_fulfilled_by_non_personal_data(Data) :-
    other_non_personal_data(Data).

effective_monitoring_mechanisms(Data) :-
    personal_data(Data),
    monitoring_mechanisms_identify_high_risks(Data),
    high_risks_to_rights_and_freedoms_of_data_subjects(Data).

response_mechanisms_to_mitigate_risks(Data) :-
    personal_data(Data),
    mechanisms_to_promptly_mitigate_risks(Data),
    mechanisms_to_stop_processing_where_necessary(Data).

functionally_separate_isolated_protected_environment(Data) :-
    personal_data(Data),
    functionally_separate(Data),
    isolated(Data),
    protected(Data).

data_under_control_of_prospective_provider(Data) :-
    personal_data(Data),
    prospective_provider(Provider),
    under_control_of(Provider, Data).

only_authorised_persons_access_data(Data) :-
    personal_data(Data),
    authorised_persons_only_access(Data).

further_sharing_in_accordance_with_union_data_protection_law(Data) :-
    personal_data(Data),
    originally_collected_data(Data),
    sharing_in_accordance_with_union_data_protection_law(Data).

personal_data_created_in_sandbox_not_shared_outside(Data) :-
    personal_data(Data),
    created_in_sandbox(Data),
    \+ shared_outside_sandbox(Data).

no_measures_or_decisions_affecting_data_subjects(Data) :-
    personal_data(Data),
    \+ leads_to_measures_or_decisions_affecting_data_subjects(Data).

no_effect_on_data_subject_rights(Data) :-
    personal_data(Data),
    \+ affects_application_of_data_subject_rights(Data).

appropriate_technical_organisational_measures(Data) :-
    personal_data(Data),
    technical_measures_appropriate(Data),
    organisational_measures_appropriate(Data).

personal_data_deleted_after_sandbox_termination(Data) :-
    personal_data(Data),
    deleted_once_participation_terminated(Data).
personal_data_deleted_after_sandbox_termination(Data) :-
    personal_data(Data),
    deleted_at_end_of_retention_period(Data).

logs_kept_for_sandbox_duration(Data) :-
    personal_data(Data),
    logs_of_processing(Data),
    kept_for_duration_of_participation(Data),
    \+ provided_otherwise_by_union_or_national_law(Data).

complete_detailed_description_kept(S) :-
    ai_system(S),
    description_of_process_and_rationale_kept(S),
    testing_results_kept(S),
    part_of_technical_documentation(S).

short_summary_published_on_website(S) :-
    ai_system(S),
    summary_of_ai_project_published(S),
    objectives_and_expected_results_included(S),
    website_of_competent_authorities(S),
    \+ sensitive_operational_data_excluded_from_publication(S).

sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    law_enforcement_activity(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    border_control_activity(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    immigration_activity(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    asylum_activity(S).

law_enforcement_processing_based_on_specific_law(Data) :-
    personal_data(Data),
    processed_in_ai_regulatory_sandbox(Data),
    purpose_prevention_investigation_detection_prosecution(Data),
    based_on_specific_union_or_national_law(Data).

law_enforcement_processing_subject_to_cumulative_conditions(Data) :-
    personal_data(Data),
    processed_in_ai_regulatory_sandbox(Data),
    purpose_law_enforcement(Data),
    permitted_further_processing_in_sandbox(Data, _S).

provenance(permitted_further_processing_in_sandbox/2, 'celex:32024R1689/oj#art_59').
provenance(ai_system_developed_for_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/1, 'celex:32024R1689/oj#art_59').
provenance(data_necessary_for_requirements/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(response_mechanisms_to_mitigate_risks/1, 'celex:32024R1689/oj#art_59').
provenance(functionally_separate_isolated_protected_environment/1, 'celex:32024R1689/oj#art_59').
provenance(data_under_control_of_prospective_provider/1, 'celex:32024R1689/oj#art_59').
provenance(only_authorised_persons_access_data/1, 'celex:32024R1689/oj#art_59').
provenance(further_sharing_in_accordance_with_union_data_protection_law/1, 'celex:32024R1689/oj#art_59').
provenance(personal_data_created_in_sandbox_not_shared_outside/1, 'celex:32024R1689/oj#art_59').
provenance(no_measures_or_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(no_effect_on_data_subject_rights/1, 'celex:32024R1689/oj#art_59').
provenance(appropriate_technical_organisational_measures/1, 'celex:32024R1689/oj#art_59').
provenance(personal_data_deleted_after_sandbox_termination/1, 'celex:32024R1689/oj#art_59').
provenance(logs_kept_for_sandbox_duration/1, 'celex:32024R1689/oj#art_59').
provenance(complete_detailed_description_kept/1, 'celex:32024R1689/oj#art_59').
provenance(short_summary_published_on_website/1, 'celex:32024R1689/oj#art_59').
provenance(sensitive_operational_data_excluded_from_publication/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_processing_based_on_specific_law/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_processing_subject_to_cumulative_conditions/1, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
