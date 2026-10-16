% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : aa0f9fbffb432e4590e0e6c53fc46f896cd14974a0ffe2a396d889c4743f51d4
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_further_processing_of_personal_data/1, gloss('further processing of personal data for developing certain AI systems in the AI regulatory sandbox is permitted'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_development/1, gloss('AI system developed for safeguarding substantial public interest'), source('celex:32024R1689/oj#art_59').
:- pred public_safety_and_health_area/1, gloss('public safety and public health area'), source('celex:32024R1689/oj#art_59').
:- pred environment_protection_area/1, gloss('high level of protection and improvement of the quality of the environment area'), source('celex:32024R1689/oj#art_59').
:- pred energy_sustainability_area/1, gloss('energy sustainability area'), source('celex:32024R1689/oj#art_59').
:- pred transport_infrastructure_area/1, gloss('safety and resilience of transport systems and mobility, critical infrastructure and networks area'), source('celex:32024R1689/oj#art_59').
:- pred public_administration_area/1, gloss('efficiency and quality of public administration and public services area'), source('celex:32024R1689/oj#art_59').
:- pred non_personal_data_insufficient/1, gloss('requirements cannot effectively be fulfilled by processing anonymised, synthetic or other non-personal data'), source('celex:32024R1689/oj#art_59').
:- pred effective_monitoring_mechanisms/1, gloss('effective monitoring mechanisms to identify high risks to rights and freedoms of data subjects'), source('celex:32024R1689/oj#art_59').
:- pred response_mechanisms/1, gloss('response mechanisms to promptly mitigate risks and stop processing'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_data_environment/1, gloss('personal data in functionally separate, isolated and protected data processing environment under control of prospective provider'), source('celex:32024R1689/oj#art_59').
:- pred data_sharing_restrictions/1, gloss('restrictions on sharing personal data created in sandbox'), source('celex:32024R1689/oj#art_59').
:- pred no_adverse_measures_or_decisions/1, gloss('processing neither leads to measures or decisions affecting data subjects nor affects their rights'), source('celex:32024R1689/oj#art_59').
:- pred technical_organisational_measures/1, gloss('appropriate technical and organisational measures protecting personal data'), source('celex:32024R1689/oj#art_59').
:- pred data_deletion_on_termination/1, gloss('personal data deleted once sandbox participation terminated or retention period ended'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_logs_retained/1, gloss('logs of processing of personal data kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred technical_documentation_sandbox/1, gloss('complete and detailed description of training, testing and validation process kept as part of technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_summary_published/1, gloss('short summary of AI project published on website of competent authorities'), source('celex:32024R1689/oj#art_59').
:- pred sensitive_operational_data_exemption/1, gloss('sensitive operational data in relation to law enforcement, border control, immigration or asylum authorities exempt from publication'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_sandbox_processing/1, gloss('processing of personal data in AI regulatory sandboxes under control and responsibility of law enforcement authorities'), source('celex:32024R1689/oj#art_59').
:- pred specific_union_or_national_law_basis/1, gloss('processing based on specific Union or national law'), source('celex:32024R1689/oj#art_59').
:- pred without_prejudice_exclusion/1, gloss('without prejudice to law excluding processing for other purposes'), source('celex:32024R1689/oj#art_59').
:- pred without_prejudice_other_legal_basis/1, gloss('without prejudice to other legal basis for processing'), source('celex:32024R1689/oj#art_59').

permitted_further_processing_of_personal_data(S) :-
    ai_regulatory_sandbox(Sandbox),
    in_sandbox(S, Sandbox),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    purpose_developing_training_testing_ai_system(S),
    public_interest_development(S),
    non_personal_data_insufficient(S),
    effective_monitoring_mechanisms(S),
    response_mechanisms(S),
    sandbox_data_environment(S),
    data_sharing_restrictions(S),
    no_adverse_measures_or_decisions(S),
    technical_organisational_measures(S),
    data_deletion_on_termination(S),
    sandbox_logs_retained(S),
    technical_documentation_sandbox(S),
    sandbox_summary_published(S).

public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    public_safety_and_health_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    environment_protection_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    energy_sustainability_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    transport_infrastructure_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    public_administration_area(S).

developed_by_public_authority_or_person(S) :-
    public_authority_or_body(Authority),
    developed_for(Authority, S).
developed_by_public_authority_or_person(S) :-
    natural_person(Person),
    developed_for(Person, S).
developed_by_public_authority_or_person(S) :-
    legal_person(Person),
    developed_for(Person, S).

non_personal_data_insufficient(S) :-
    data_processed_necessary_for_requirements(S, Requirements),
    requirements_in_chapter_3_section_2(Requirements),
    \+ effectively_fulfilled_by_anonymised_synthetic_or_non_personal_data(S).

effective_monitoring_mechanisms(S) :-
    monitoring_mechanisms_identify_high_risks(S),
    high_risks_to_rights_and_freedoms(S).

response_mechanisms(S) :-
    response_mechanisms_mitigate_risks(S),
    stop_processing_available(S).

sandbox_data_environment(S) :-
    functionally_separate_isolated_protected_environment(S),
    under_control(prospective_provider, S),
    only_authorised_persons_access(S).

data_sharing_restrictions(S) :-
    further_share_only_under_union_data_protection_law(S),
    personal_data_created_in_sandbox_not_shared_outside(S).

no_adverse_measures_or_decisions(S) :-
    \+ leads_to_measures_or_decisions_affecting_data_subjects(S),
    \+ affects_data_subject_rights_under_union_law(S).

technical_organisational_measures(S) :-
    appropriate_technical_organisational_measures(S).

data_deletion_on_termination(S) :-
    personal_data_deleted(once_participation_terminated(S)).
data_deletion_on_termination(S) :-
    personal_data_deleted(once_retention_period_ended(S)).

sandbox_logs_retained(S) :-
    logs_kept_for(duration_of_participation(S)),
    \+ national_law_provides_otherwise(S).

technical_documentation_sandbox(S) :-
    complete_detailed_description_kept(S),
    testing_results_kept(S),
    part_of_technical_documentation(S).

sandbox_summary_published(S) :-
    short_summary_published(S),
    published_on_website(competent_authorities),
    \+ sensitive_operational_data_law_enforcement(S).

law_enforcement_sandbox_processing(S) :-
    purpose_prevention_investigation_detection_prosecution_criminal_offences(S),
    purpose_execution_criminal_penalties(S),
    purpose_safeguarding_against_preventing_threats_public_security(S),
    under_control(law_enforcement_authority, S),
    under_responsibility(law_enforcement_authority, S),
    specific_union_or_national_law_basis(S),
    permitted_further_processing_of_personal_data(S).

without_prejudice_exclusion(S) :-
    union_or_national_law_excludes_processing_for_other_purposes(S).

without_prejudice_other_legal_basis(S) :-
    union_or_national_law_legal_basis_for_developing_testing_training(S).

provenance(permitted_further_processing_of_personal_data/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_development/1, 'celex:32024R1689/oj#art_59').
provenance(public_safety_and_health_area/1, 'celex:32024R1689/oj#art_59').
provenance(environment_protection_area/1, 'celex:32024R1689/oj#art_59').
provenance(energy_sustainability_area/1, 'celex:32024R1689/oj#art_59').
provenance(transport_infrastructure_area/1, 'celex:32024R1689/oj#art_59').
provenance(public_administration_area/1, 'celex:32024R1689/oj#art_59').
provenance(non_personal_data_insufficient/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(response_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_data_environment/1, 'celex:32024R1689/oj#art_59').
provenance(data_sharing_restrictions/1, 'celex:32024R1689/oj#art_59').
provenance(no_adverse_measures_or_decisions/1, 'celex:32024R1689/oj#art_59').
provenance(technical_organisational_measures/1, 'celex:32024R1689/oj#art_59').
provenance(data_deletion_on_termination/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_logs_retained/1, 'celex:32024R1689/oj#art_59').
provenance(technical_documentation_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(sensitive_operational_data_exemption/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_processing/1, 'celex:32024R1689/oj#art_59').
provenance(specific_union_or_national_law_basis/1, 'celex:32024R1689/oj#art_59').
provenance(without_prejudice_exclusion/1, 'celex:32024R1689/oj#art_59').
provenance(without_prejudice_other_legal_basis/1, 'celex:32024R1689/oj#art_59').
provenance(developed_by_public_authority_or_person/1, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
