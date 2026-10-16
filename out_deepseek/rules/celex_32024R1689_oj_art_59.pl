% unit       : celex:32024R1689/oj#art_59
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 4d1328b313019f5eb7610c00405866761789826e67f3b856bd804380f4d8a251
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c1e6112272846b804acd7f89f3ec855ea1af522073d216e02926e188fb534856
% cached     : False
% title      : Further processing of personal data for developing certain AI systems in the public interest in the AI regulatory sandbox
:- pred permitted_processing_in_sandbox/1, gloss('processing of personal data in AI regulatory sandbox under Article 59'), source('celex:32024R1689/oj#art_59').
:- pred substantial_public_interest_area/1, gloss('area of substantial public interest for sandbox AI development'), source('celex:32024R1689/oj#art_59/par_1/a').
:- pred sandbox_data_processing_environment/1, gloss('functionally separate, isolated and protected data processing environment'), source('celex:32024R1689/oj#art_59/par_1/d').
:- pred sandbox_personal_data_logs/1, gloss('logs of processing of personal data in sandbox context'), source('celex:32024R1689/oj#art_59/par_1/h').
:- pred sandbox_project_summary/1, gloss('short summary of AI project developed in sandbox'), source('celex:32024R1689/oj#art_59/par_1/j').

permitted_processing_in_sandbox(Processing) :-
    personal_data(Processing),
    lawfully_collected_for_other_purposes(Processing),
    processed_for_sandbox_ai_development(Processing),
    sandbox_conditions_met(Processing).

lawfully_collected_for_other_purposes(Processing) :-
    personal_data(Processing).

processed_for_sandbox_ai_development(Processing) :-
    ai_regulatory_sandbox(Sandbox),
    processing_in_sandbox(Processing, Sandbox),
    purpose_is_developing_training_testing_ai(Processing).

processing_in_sandbox(Processing, Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

purpose_is_developing_training_testing_ai(Processing) :-
    true.

sandbox_conditions_met(Processing) :-
    condition_substantial_public_interest(Processing),
    condition_data_necessity(Processing),
    condition_effective_monitoring(Processing),
    condition_isolated_environment(Processing),
    condition_sharing_restrictions(Processing),
    condition_no_adverse_effects(Processing),
    condition_protection_and_deletion(Processing),
    condition_logs_kept(Processing),
    condition_documentation_kept(Processing),
    condition_summary_published(Processing).

condition_substantial_public_interest(Processing) :-
    developed_by_public_or_legal_person(Processing),
    for_substantial_public_interest(Processing),
    in_specified_area(Processing).

developed_by_public_or_legal_person(Processing) :-
    true.

for_substantial_public_interest(Processing) :-
    true.

in_specified_area(Processing) :-
    substantial_public_interest_area(Processing).

substantial_public_interest_area(public_safety_and_public_health).
substantial_public_interest_area(environment_protection_and_improvement).
substantial_public_interest_area(energy_sustainability).
substantial_public_interest_area(transport_safety_and_resilience).
substantial_public_interest_area(public_administration_efficiency_and_quality).

condition_data_necessity(Processing) :-
    necessary_for_chapter_3_section_2_requirements(Processing),
    cannot_fulfill_with_non_personal_data(Processing).

necessary_for_chapter_3_section_2_requirements(Processing) :-
    true.

cannot_fulfill_with_non_personal_data(Processing) :-
    \+ can_fulfill_with_non_personal_data(Processing).

can_fulfill_with_non_personal_data(Processing) :-
    non_personal_data(Processing).

condition_effective_monitoring(Processing) :-
    effective_monitoring_mechanisms_exist(Processing),
    response_mechanisms_exist(Processing).

effective_monitoring_mechanisms_exist(Processing) :-
    true.

response_mechanisms_exist(Processing) :-
    true.

condition_isolated_environment(Processing) :-
    sandbox_data_processing_environment(Environment),
    processing_in_environment(Processing, Environment),
    under_control_of_prospective_provider(Environment),
    only_authorised_persons_have_access(Environment).

processing_in_environment(Processing, Environment) :-
    sandbox_data_processing_environment(Environment).

under_control_of_prospective_provider(Environment) :-
    sandbox_data_processing_environment(Environment).

only_authorised_persons_have_access(Environment) :-
    sandbox_data_processing_environment(Environment).

condition_sharing_restrictions(Processing) :-
    originally_collected_data_shared_per_union_law(Processing),
    sandbox_created_data_not_shared_outside(Processing).

originally_collected_data_shared_per_union_law(Processing) :-
    true.

sandbox_created_data_not_shared_outside(Processing) :-
    true.

condition_no_adverse_effects(Processing) :-
    no_measures_or_decisions_affecting_data_subjects(Processing),
    no_effect_on_data_subject_rights(Processing).

no_measures_or_decisions_affecting_data_subjects(Processing) :-
    true.

no_effect_on_data_subject_rights(Processing) :-
    true.

condition_protection_and_deletion(Processing) :-
    protected_by_appropriate_measures(Processing),
    deleted_after_participation_or_retention_end(Processing).

protected_by_appropriate_measures(Processing) :-
    true.

deleted_after_participation_or_retention_end(Processing) :-
    true.

condition_logs_kept(Processing) :-
    sandbox_personal_data_logs(Logs),
    kept_for_duration_of_participation(Logs).

kept_for_duration_of_participation(Logs) :-
    sandbox_personal_data_logs(Logs).

condition_documentation_kept(Processing) :-
    complete_description_of_training_testing_validation_kept(Processing),
    testing_results_kept(Processing).

complete_description_of_training_testing_validation_kept(Processing) :-
    true.

testing_results_kept(Processing) :-
    true.

condition_summary_published(Processing) :-
    sandbox_project_summary(Summary),
    published_on_competent_authority_website(Summary),
    \+ sensitive_operational_data(Summary).

published_on_competent_authority_website(Summary) :-
    sandbox_project_summary(Summary).

sensitive_operational_data(Summary) :-
    sandbox_project_summary(Summary),
    sensitive_operational_data.

provenance(permitted_processing_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(substantial_public_interest_area/1, 'celex:32024R1689/oj#art_59/par_1/a').
provenance(sandbox_data_processing_environment/1, 'celex:32024R1689/oj#art_59/par_1/d').
provenance(sandbox_personal_data_logs/1, 'celex:32024R1689/oj#art_59/par_1/h').
provenance(sandbox_project_summary/1, 'celex:32024R1689/oj#art_59/par_1/j').

references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
