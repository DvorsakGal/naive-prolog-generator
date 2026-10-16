% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 97d3b496f76bb2470b3bc757c69c35494b6a98e616768faaa3a4388f64448786
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_sandbox_personal_data_processing/2, gloss('personal data processed in AI regulatory sandbox for developing certain AI systems in public interest'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_ai_system_public_interest/1, gloss('AI system developed in sandbox for safeguarding substantial public interest'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('area of substantial public interest for sandbox AI development'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_data_necessary_for_requirements/1, gloss('personal data necessary for complying with Chapter 3 Section 2 requirements'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_monitoring_mechanisms/1, gloss('effective monitoring mechanisms for high risks to data subjects rights and freedoms'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_data_environment/1, gloss('functionally separate isolated and protected data processing environment under provider control'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_data_sharing_compliant/1, gloss('data sharing in accordance with Union data protection law'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_no_measures_or_decisions/1, gloss('processing neither leads to measures or decisions affecting data subjects nor affects their rights'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_data_protected_and_deleted/1, gloss('personal data protected by technical and organisational measures and deleted after sandbox termination or retention period end'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_logs_kept/1, gloss('logs of personal data processing kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_technical_documentation_complete/1, gloss('complete and detailed description of training testing and validation process kept with testing results as part of technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred sandbox_project_summary_published/1, gloss('short summary of AI project objectives and expected results published on competent authorities website'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_sandbox_processing_basis/1, gloss('processing of personal data in sandbox for law enforcement based on specific Union or national law'), source('celex:32024R1689/oj#art_59').

public_interest_area(public_safety_and_public_health).
public_interest_area(environmental_protection_and_quality).
public_interest_area(energy_sustainability).
public_interest_area(transport_systems_and_critical_infrastructure_safety).
public_interest_area(public_administration_and_services_efficiency).

sandbox_ai_system_public_interest(S) :-
    ai_system(S),
    ai_regulatory_sandbox(S),
    public_authority_or_person(P),
    develops_for_public_interest(P, S),
    public_interest_area(A),
    develops_in_area(S, A).

public_authority_or_person(P) :-
    public_authority(P).
public_authority_or_person(P) :-
    natural_or_legal_person(P).

sandbox_data_necessary_for_requirements(D) :-
    personal_data(D),
    requirement(R),
    cannot_fulfil_by_non_personal_data(R),
    necessary_for_compliance(D, R).

sandbox_monitoring_mechanisms(D) :-
    personal_data(D),
    high_risk_to_data_subjects(Risk),
    monitoring_mechanism_identifies(Risk),
    response_mechanism_mitigates(Risk),
    can_stop_processing.

sandbox_data_environment(D) :-
    personal_data(D),
    functionally_separate_environment(D),
    isolated_environment(D),
    protected_environment(D),
    under_control_of_prospective_provider(D),
    only_authorised_persons_access(D).

sandbox_data_sharing_compliant(D) :-
    personal_data(D),
    originally_collected_data(D),
    shares_in_accordance_with_union_data_protection_law(D).
sandbox_data_sharing_compliant(D) :-
    personal_data_created_in_sandbox(D),
    \+ shares_outside_sandbox(D).

sandbox_no_measures_or_decisions(D) :-
    personal_data(D),
    \+ leads_to_measures_or_decisions(D),
    \+ affects_data_subject_rights(D).

sandbox_data_protected_and_deleted(D) :-
    personal_data(D),
    protected_by_technical_and_organisational_measures(D),
    deleted_after_sandbox_termination(D).
sandbox_data_protected_and_deleted(D) :-
    personal_data(D),
    protected_by_technical_and_organisational_measures(D),
    deleted_at_retention_period_end(D).

sandbox_logs_kept(D) :-
    personal_data(D),
    logs_of_processing_kept(D),
    duration_of_sandbox_participation(D).

sandbox_technical_documentation_complete(S) :-
    ai_system(S),
    complete_and_detailed_description_kept(S),
    training_testing_validation_process_described(S),
    rationale_behind_process_described(S),
    testing_results_kept(S),
    part_of_technical_documentation(S).

sandbox_project_summary_published(S) :-
    ai_system(S),
    short_summary_published(S),
    project_objectives_described(S),
    expected_results_described(S),
    published_on_competent_authorities_website(S),
    \+ sensitive_operational_data(S).

permitted_sandbox_personal_data_processing(D, S) :-
    personal_data(D),
    ai_system(S),
    ai_regulatory_sandbox(S),
    lawfully_collected_for_other_purposes(D),
    processed_solely_for_developing_training_testing(S, D),
    sandbox_ai_system_public_interest(S),
    sandbox_data_necessary_for_requirements(D),
    sandbox_monitoring_mechanisms(D),
    sandbox_data_environment(D),
    sandbox_data_sharing_compliant(D),
    sandbox_no_measures_or_decisions(D),
    sandbox_data_protected_and_deleted(D),
    sandbox_logs_kept(D),
    sandbox_technical_documentation_complete(S),
    sandbox_project_summary_published(S).

law_enforcement_sandbox_processing_basis(D) :-
    personal_data(D),
    ai_regulatory_sandbox(D),
    law_enforcement_authority(A),
    under_control_and_responsibility(A, D),
    purpose_prevention_investigation_detection_prosecution(D),
    based_on_specific_union_or_national_law(D),
    permitted_sandbox_personal_data_processing(D, S).

provenance(permitted_sandbox_personal_data_processing/2, 'celex:32024R1689/oj#art_59').
provenance(sandbox_ai_system_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_data_necessary_for_requirements/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_data_environment/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_data_sharing_compliant/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_no_measures_or_decisions/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_data_protected_and_deleted/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_logs_kept/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_technical_documentation_complete/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_project_summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_processing_basis/1, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
