% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8ae1098185a82787f69ca3c54e7caf04b3c19c29d99987ce2ea8a692bf68cc28
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_further_processing_in_sandbox/1, gloss('processing of personal data in AI regulatory sandbox meeting Article 59 conditions'), source('celex:32024R1689/oj#art_59').
:- pred developed_for_substantial_public_interest/1, gloss('AI system developed for safeguarding substantial public interest'), source('celex:32024R1689/oj#art_59').
:- pred public_interest_area/2, gloss('area of substantial public interest applicable to an AI system'), source('celex:32024R1689/oj#art_59').
:- pred necessary_for_compliance_with_requirements/1, gloss('data necessary for complying with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_59').
:- pred anonymised_or_synthetic_data_insufficient/1, gloss('requirements cannot be fulfilled by anonymised synthetic or non-personal data'), source('celex:32024R1689/oj#art_59').
:- pred effective_monitoring_mechanisms_in_place/1, gloss('mechanisms to identify and mitigate high risks to data subjects'), source('celex:32024R1689/oj#art_59').
:- pred isolated_data_environment/1, gloss('functionally separate isolated and protected data processing environment'), source('celex:32024R1689/oj#art_59').
:- pred restricted_access_to_authorised_persons/1, gloss('only authorised persons have access to personal data in sandbox'), source('celex:32024R1689/oj#art_59').
:- pred no_decisions_affecting_data_subjects/1, gloss('processing does not lead to measures or decisions affecting data subjects'), source('celex:32024R1689/oj#art_59').
:- pred appropriate_protection_and_deletion/1, gloss('personal data protected by technical organisational measures and deleted after participation'), source('celex:32024R1689/oj#art_59').
:- pred processing_logs_kept/1, gloss('logs of processing kept for duration of sandbox participation'), source('celex:32024R1689/oj#art_59').
:- pred technical_documentation_complete/1, gloss('complete description of training testing validation process and results kept'), source('celex:32024R1689/oj#art_59').
:- pred project_summary_published/1, gloss('short summary of AI project published on competent authority website'), source('celex:32024R1689/oj#art_59').
:- pred law_enforcement_sandbox_basis/1, gloss('processing based on specific Union or national law for criminal offences'), source('celex:32024R1689/oj#art_59').

permitted_further_processing_in_sandbox(S) :-
    ai_system(S),
    developed_for_substantial_public_interest(S),
    necessary_for_compliance_with_requirements(S),
    anonymised_or_synthetic_data_insufficient(S),
    effective_monitoring_mechanisms_in_place(S),
    isolated_data_environment(S),
    restricted_access_to_authorised_persons(S),
    no_decisions_affecting_data_subjects(S),
    appropriate_protection_and_deletion(S),
    processing_logs_kept(S),
    technical_documentation_complete(S),
    project_summary_published(S).

developed_for_substantial_public_interest(S) :-
    ai_system(S),
    public_interest_area(S, _Area).

public_interest_area(S, public_safety_and_health) :-
    ai_system(S),
    objective_public_safety_and_health(S).

public_interest_area(S, environmental_protection) :-
    ai_system(S),
    objective_environmental_protection(S).

public_interest_area(S, energy_sustainability) :-
    ai_system(S),
    objective_energy_sustainability(S).

public_interest_area(S, transport_safety_and_resilience) :-
    ai_system(S),
    objective_transport_safety_and_resilience(S).

public_interest_area(S, public_administration_efficiency) :-
    ai_system(S),
    objective_public_administration_efficiency(S).

necessary_for_compliance_with_requirements(S) :-
    ai_system(S),
    required_compliance_with_chapter_iii_section_2(S).

anonymised_or_synthetic_data_insufficient(S) :-
    ai_system(S),
    \+ requirements_fulfillable_by_non_personal_data(S).

effective_monitoring_mechanisms_in_place(S) :-
    ai_system(S),
    has_risk_identification_mechanism(S),
    has_risk_mitigation_mechanism(S).

isolated_data_environment(S) :-
    ai_system(S),
    functionally_separate_environment(S),
    protected_environment(S).

restricted_access_to_authorised_persons(S) :-
    ai_system(S),
    access_controlled(S).

no_decisions_affecting_data_subjects(S) :-
    ai_system(S),
    \+ leads_to_measures_affecting_subjects(S),
    \+ affects_data_subject_rights(S).

appropriate_protection_and_deletion(S) :-
    ai_system(S),
    technical_organisational_measures_applied(S),
    deletion_upon_termination(S).

processing_logs_kept(S) :-
    ai_system(S),
    logs_retained_during_participation(S).

technical_documentation_complete(S) :-
    ai_system(S),
    training_testing_validation_described(S),
    testing_results_included(S).

project_summary_published(S) :-
    ai_system(S),
    summary_on_authority_website(S),
    \+ contains_sensitive_operational_data(S).

law_enforcement_sandbox_basis(S) :-
    ai_system(S),
    law_enforcement_authority(_Authority),
    specific_legal_basis_exists(S).

provenance(permitted_further_processing_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(developed_for_substantial_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/2, 'celex:32024R1689/oj#art_59').
provenance(necessary_for_compliance_with_requirements/1, 'celex:32024R1689/oj#art_59').
provenance(anonymised_or_synthetic_data_insufficient/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms_in_place/1, 'celex:32024R1689/oj#art_59').
provenance(isolated_data_environment/1, 'celex:32024R1689/oj#art_59').
provenance(restricted_access_to_authorised_persons/1, 'celex:32024R1689/oj#art_59').
provenance(no_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(appropriate_protection_and_deletion/1, 'celex:32024R1689/oj#art_59').
provenance(processing_logs_kept/1, 'celex:32024R1689/oj#art_59').
provenance(technical_documentation_complete/1, 'celex:32024R1689/oj#art_59').
provenance(project_summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_basis/1, 'celex:32024R1689/oj#art_59').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
