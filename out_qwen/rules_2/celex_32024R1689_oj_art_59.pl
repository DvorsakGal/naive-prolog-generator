% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : de9dca76ad70eaacd6bd0180aef7c2ddbeb1e2afd1938b041381b586d5e12ef3
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_further_processing_in_sandbox/1, gloss('personal data may be further processed in AI regulatory sandbox for developing AI systems'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/1, gloss('area of substantial public interest listed in Article 59(1)(a)'), source('celex:32024R1689/oj#art_59').
:- pred effective_monitoring_mechanisms_exist/1, gloss('effective monitoring mechanisms to identify high risks to rights and freedoms exist'), source('celex:32024R1689/oj#art_59').
:- pred isolated_data_environment/1, gloss('data processing environment is functionally separate, isolated and protected'), source('celex:32024R1689/oj#art_59').
:- pred no_decisions_affecting_data_subjects/1, gloss('processing does not lead to measures or decisions affecting data subjects'), source('celex:32024R1689/oj#art_59').
:- pred appropriate_protection_and_deletion/1, gloss('personal data protected by technical and organisational measures and deleted upon termination or retention end'), source('celex:32024R1689/oj#art_59').
:- pred processing_logs_kept/1, gloss('logs of personal data processing kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred technical_documentation_complete/1, gloss('complete description of training, testing and validation process kept with results in technical documentation'), source('celex:32024R1689/oj#art_59').
:- pred project_summary_published/1, gloss('short summary of AI project published on competent authority website'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_legal_basis_exists/1, gloss('specific Union or national law exists for law enforcement processing in sandbox'), source('celex:32024R1689/oj#art_59').

permitted_further_processing_in_sandbox(S) :-
    ai_regulatory_sandbox(S),
    public_interest_area(S),
    requirements_of_chapter_3_section_2(S),
    \+ effectively_fulfilled_by_non_personal_data(S),
    effective_monitoring_mechanisms_exist(S),
    isolated_data_environment(S),
    sharing_complies_with_union_law(S),
    no_decisions_affecting_data_subjects(S),
    appropriate_protection_and_deletion(S),
    processing_logs_kept(S),
    technical_documentation_complete(S),
    project_summary_published(S).

public_interest_area(S) :-
    objective_public_safety_and_health(S).
public_interest_area(S) :-
    objective_environmental_protection(S).
public_interest_area(S) :-
    objective_energy_sustainability(S).
public_interest_area(S) :-
    objective_transport_safety_and_resilience(S).
public_interest_area(S) :-
    objective_public_administration_efficiency(S).

effective_monitoring_mechanisms_exist(S) :-
    ai_regulatory_sandbox(S),
    has_risk_identification_mechanism(S),
    has_risk_mitigation_response_mechanism(S).

isolated_data_environment(S) :-
    ai_regulatory_sandbox(S),
    functionally_separate_environment(S),
    controlled_by_provider(S),
    access_restricted_to_authorised_persons(S).

no_decisions_affecting_data_subjects(S) :-
    ai_regulatory_sandbox(S),
    \+ leads_to_measures_affecting_subjects(S),
    \+ affects_data_subject_rights(S).

appropriate_protection_and_deletion(S) :-
    ai_regulatory_sandbox(S),
    technical_organisational_measures_applied(S),
    deletion_upon_termination_or_retention_end(S).

processing_logs_kept(S) :-
    ai_regulatory_sandbox(S),
    logs_retained_for_participation_duration(S).

technical_documentation_complete(S) :-
    ai_regulatory_sandbox(S),
    process_description_kept(S),
    rationale_kept(S),
    testing_results_kept(S).

project_summary_published(S) :-
    ai_regulatory_sandbox(S),
    summary_on_authority_website(S),
    \+ involves_sensitive_operational_data(S).

law_enforcement_legal_basis_exists(S) :-
    ai_regulatory_sandbox(S),
    law_enforcement_purpose(S),
    specific_legal_basis(S).

provenance(permitted_further_processing_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms_exist/1, 'celex:32024R1689/oj#art_59').
provenance(isolated_data_environment/1, 'celex:32024R1689/oj#art_59').
provenance(no_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(appropriate_protection_and_deletion/1, 'celex:32024R1689/oj#art_59').
provenance(processing_logs_kept/1, 'celex:32024R1689/oj#art_59').
provenance(technical_documentation_complete/1, 'celex:32024R1689/oj#art_59').
provenance(project_summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_legal_basis_exists/1, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
