% ============================================================
% Regulation (EU) 2024/1689 (AI Act) as a Prolog program.
%
% Phase A froze the predicate vocabulary from the definitions article;
% Phase B wrote clauses against it, one LLM call per article and annex.
% This file is pass 1. Assembly is deterministic.
%
% declared(Name/Arity, Gloss, Source) records the vocabulary.
% provenance(Name/Arity, UnitId) ties each clause head to its provision.
% references(From, To) is the cross-reference graph, from the corpus's
%   human-annotated <ref> markup.
%
% A declared predicate with no clause is an INPUT SLOT, not a defect:
% whether a particular system is real_time(S) is a question about the
% world, which no legal text answers. Assert those facts yourself.
% There are 837 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous able_to_interrupt_system_via_stop_button_or_similar/2.
:- discontiguous able_to_intervene_in_operation/2.
:- discontiguous about/2.
:- discontiguous academic_entity/1.
:- discontiguous accepted/1.
:- discontiguous accepts_simplified_form/1.
:- discontiguous access_means/1.
:- discontiguous access_request_states/4.
:- discontiguous accompanied_by_instructions_for_use/2.
:- discontiguous achieves_compliance_with_obligations/1.
:- discontiguous act_concerns/2.
:- discontiguous acting_contrary_to_obligations/1.
:- discontiguous actor/1.
:- discontiguous actor_involved/2.
:- discontiguous adco_for_regulation/1.
:- discontiguous addressable_by_authorities/1.
:- discontiguous adds_annex_entry/3.
:- discontiguous adequate/1.
:- discontiguous adequate_cybersecurity/1.
:- discontiguous adequate_resources/1.
:- discontiguous adherence_limited_to_obligations/2.
:- discontiguous adheres_to/2.
:- discontiguous adheres_to_approved_code_of_practice/2.
:- discontiguous administrative_fine/2.
:- discontiguous adopted_by/2.
:- discontiguous adopted_by_examination_procedure/1.
:- discontiguous adopting_delegated_act/2.
:- discontiguous adopting_detailed_measures/2.
:- discontiguous adopting_implementing_act/2.
:- discontiguous adopting_implementing_acts/2.
:- discontiguous adversarial_testing_element/1.
:- discontiguous advice_on_implementation/1.
:- discontiguous advice_or_support/2.
:- discontiguous advises_ai_office/1.
:- discontiguous advises_on_classification/1.
:- discontiguous advisory_forum/1.
:- discontiguous advisory_forum_co_chair/1.
:- discontiguous advisory_forum_member/1.
:- discontiguous advisory_forum_sub_group/1.
:- discontiguous agrees_safeguards/3.
:- discontiguous agrees_terms/3.
:- discontiguous ai_literacy_measure/1.
:- discontiguous ai_office_deems_inadequate/1.
:- discontiguous ai_office_monitoring_powers/1.
:- discontiguous ai_office_must_make_list_publicly_available/1.
:- discontiguous ai_office_provides_coordination_support/1.
:- discontiguous ai_office_shall_inform_board/2.
:- discontiguous ai_office_template/1.
:- discontiguous ai_regulatory_sandbox_operational_by/2.
:- discontiguous ai_safety_component/1.
:- discontiguous ai_safety_component_within_meaning_of_ai_act/1.
:- discontiguous ai_system_presenting_risk/1.
:- discontiguous ai_system_presenting_risk_to_vulnerable_groups/1.
:- discontiguous ai_system_safety_component/1.
:- discontiguous ai_system_safety_component_of_regulation/2.
:- discontiguous aims_to_prevent_or_minimise_risks/1.
:- discontiguous alerts_systemic_risk/1.
:- discontiguous all_other_means_exhausted/1.
:- discontiguous alleged_infringement_by_provider/2.
:- discontiguous alternative_compliance_means/2.
:- discontiguous amended_implementing_act/2.
:- discontiguous amends/2.
:- discontiguous amount_of_computation_used_for_training/2.
:- discontiguous annex_11_information/1.
:- discontiguous annex_12_elements/1.
:- discontiguous annex_3_high_risk_ai_system/1.
:- discontiguous annex_3_point_1_6_7_high_risk_ai_system/1.
:- discontiguous annex_3_point_1_a_system/1.
:- discontiguous annex_3_point_2_high_risk_ai_system/1.
:- discontiguous annual_assessment/1.
:- discontiguous annual_competence_assessment/1.
:- discontiguous annual_reports_made_available_to_public/1.
:- discontiguous appeal_procedure_available/1.
:- discontiguous applicable_notified_body_identification/1.
:- discontiguous applicant/1.
:- discontiguous application_for_notification_accompanied_by/2.
:- discontiguous applies_for_participation/2.
:- discontiguous applies_from/2.
:- discontiguous applies_from/3.
:- discontiguous applies_in_partnership/3.
:- discontiguous applies_only_to_testing_data/1.
:- discontiguous appropriate_for_deployer_implementation/1.
:- discontiguous appropriate_retention_period/2.
:- discontiguous appropriate_safeguards/1.
:- discontiguous appropriate_technical_means/1.
:- discontiguous appropriate_transparency/1.
:- discontiguous approved/1.
:- discontiguous approved_by_implementing_act/1.
:- discontiguous approved_code_of_practice/1.
:- discontiguous area_listed_in_annex_3/1.
:- discontiguous arguments_rejected/1.
:- discontiguous arguments_substantiated/1.
:- discontiguous art_79_par_5_to_9_applies/2.
:- discontiguous article_31_requirements/1.
:- discontiguous article_5_of_regulation_182_2011_applies/0.
:- discontiguous assessed_harmonised_standard/2.
:- discontiguous assessed_member_state_information/2.
:- discontiguous assesses_code_of_practice_adequacy/2.
:- discontiguous assesses_competence_annually/1.
:- discontiguous assessment_and_monitoring_by_national_accreditation_body/1.
:- discontiguous assessment_includes_categories_of_affected_persons/2.
:- discontiguous assessment_includes_description_of_period_and_frequency/2.
:- discontiguous assessment_includes_description_of_processes/2.
:- discontiguous assessment_includes_human_oversight_measures/2.
:- discontiguous assessment_includes_measures_for_materialised_risks/2.
:- discontiguous assessment_includes_specific_risks_of_harm/2.
:- discontiguous assigned_human_oversight/2.
:- discontiguous assists_standard_assessment/2.
:- discontiguous at_union_level/1.
:- discontiguous authorisation_deemed_justified/1.
:- discontiguous authorisation_issued_only_if_compliant/2.
:- discontiguous authorisation_obtained/2.
:- discontiguous authorisation_refused/1.
:- discontiguous authorisation_requested_without_undue_delay/2.
:- discontiguous authorisation_withdrawn/1.
:- discontiguous authorised_representative_may_supply_information/2.
:- discontiguous authorised_to_carry_out_notified_body_activities/1.
:- discontiguous authorises_placing_or_putting/3.
:- discontiguous authorises_testing_in_real_world_conditions/2.
:- discontiguous authority_involved_in_application/1.
:- discontiguous automatically_generated_logs/2.
:- discontiguous aware_of_incident/2.
:- discontiguous balanced/2.
:- discontiguous balanced_stakeholder_representation/1.
:- discontiguous before/1.
:- discontiguous before_date/2.
:- discontiguous before_deploying/2.
:- discontiguous before_placing_on_market/1.
:- discontiguous before_placing_on_market/2.
:- discontiguous before_placing_on_market_or_putting_into_service/1.
:- discontiguous before_placing_on_market_or_putting_into_service/2.
:- discontiguous before_putting_into_service/2.
:- discontiguous before_putting_into_service_or_using/2.
:- discontiguous before_using/2.
:- discontiguous benchmarks_and_evaluations_of_capabilities/2.
:- discontiguous best_possible_added_value/1.
:- discontiguous biennial_resource_report/1.
:- discontiguous binding_in_entirety/1.
:- discontiguous biometric_identification_for_law_enforcement_migration_border_asylum/1.
:- discontiguous board/1.
:- discontiguous board_chair/1.
:- discontiguous board_observer/1.
:- discontiguous board_representative/1.
:- discontiguous board_rules_of_procedure/1.
:- discontiguous board_secretariat/1.
:- discontiguous broad_and_equal_access/1.
:- discontiguous brought_into_compliance_by/2.
:- discontiguous built_in_oversight_measure/1.
:- discontiguous capabilities_limitations_understanding/1.
:- discontiguous carried_out_by/2.
:- discontiguous categorises_sensitive_attributes/1.
:- discontiguous ce_marking_affixed/1.
:- discontiguous ce_marking_followed_by_notified_body_id/1.
:- discontiguous ce_marking_indicates_other_union_law_compliance/1.
:- discontiguous ce_marking_on_packaging_or_documentation/1.
:- discontiguous ce_marking_visible_legible_indelible/1.
:- discontiguous centre_of_excellence/1.
:- discontiguous certificate_extension/2.
:- discontiguous certificate_issued_for/2.
:- discontiguous certificate_language_understandable/2.
:- discontiguous certificate_remains_valid/1.
:- discontiguous certificate_supplement_valid/1.
:- discontiguous certificate_validity_period/2.
:- discontiguous certified_under_cybersecurity_scheme/2.
:- discontiguous circumstance_for_fine_decision/1.
:- discontiguous civil_society_organisation/1.
:- discontiguous clearly_communicated/2.
:- discontiguous client_remains_responsible/2.
:- discontiguous code_of_practice_approved_by_commission/1.
:- discontiguous code_of_practice_commitment/2.
:- discontiguous code_of_practice_covers_obligation/2.
:- discontiguous code_of_practice_finalised_by/1.
:- discontiguous code_of_practice_kpi/2.
:- discontiguous code_of_practice_objective/2.
:- discontiguous code_of_practice_ready_by/2.
:- discontiguous codes_of_conduct_cover_systems/2.
:- discontiguous codes_of_conduct_drawn_up_by/2.
:- discontiguous codes_of_conduct_element/2.
:- discontiguous collaboration_with_member_states/0.
:- discontiguous combined_requirements_consideration/2.
:- discontiguous combined_with_other_union_law_risk_management/1.
:- discontiguous commensurate_with_autonomy_level/2.
:- discontiguous commensurate_with_context_of_use/2.
:- discontiguous commensurate_with_risks/2.
:- discontiguous commercial_interest/1.
:- discontiguous commission/1.
:- discontiguous commission_and_board_authorised_to_access_exit_reports/2.
:- discontiguous commission_considers_compliance_conclusion_unfounded/1.
:- discontiguous commission_considers_contrary_to_union_law/1.
:- discontiguous commission_considers_unjustified/1.
:- discontiguous commission_consultation/2.
:- discontiguous commission_consultation_triggered/1.
:- discontiguous commission_criterion/2.
:- discontiguous commission_decides_justification/1.
:- discontiguous commission_decision/1.
:- discontiguous commission_decision_systemic_risk/1.
:- discontiguous commission_empowered_delegated_acts/0.
:- discontiguous commission_empowered_to_amend_annex_v/0.
:- discontiguous commission_evaluation/1.
:- discontiguous commission_facilitates_experience_exchange/0.
:- discontiguous commission_finding/2.
:- discontiguous commission_may_exercise_powers/2.
:- discontiguous commission_may_take_reports_into_account/1.
:- discontiguous commission_provides_common_rules/0.
:- discontiguous commitment_or_measure/1.
:- discontiguous committee_assists_commission/1.
:- discontiguous committee_within_meaning_of_regulation/1.
:- discontiguous common_principle/2.
:- discontiguous competent_authority/1.
:- discontiguous competent_natural_person/1.
:- discontiguous competent_personnel_has_expertise/2.
:- discontiguous competent_representative/1.
:- discontiguous complaint_duly_reasoned/1.
:- discontiguous complaint_grounds/2.
:- discontiguous complaint_handled_with_dedicated_procedures/2.
:- discontiguous complaint_includes_other_relevant_information/1.
:- discontiguous complaint_sent_by_downstream_provider/2.
:- discontiguous complaint_taken_into_account/2.
:- discontiguous complies_with/2.
:- discontiguous complies_with_european_harmonised_standard/2.
:- discontiguous complies_with_requirements_and_obligations/1.
:- discontiguous comply_with_registration/1.
:- discontiguous concerns/2.
:- discontiguous concerns_ai_safety_components/1.
:- discontiguous concerns_ai_system_safety_component/2.
:- discontiguous concludes_compliance_with_chapter_3_section_2/2.
:- discontiguous condition_for_adding_use_case/2.
:- discontiguous condition_for_removing_use_case/2.
:- discontiguous conferred_on/2.
:- discontiguous confidential_business_information/1.
:- discontiguous confidential_exchange/2.
:- discontiguous confidential_treatment_of_information/1.
:- discontiguous conflict_of_interest_management/0.
:- discontiguous conformity_assessment_activity/2.
:- discontiguous conformity_assessment_based_on_internal_control/1.
:- discontiguous conformity_assessment_module/1.
:- discontiguous conformity_assessment_procedure/1.
:- discontiguous conformity_assessment_undertaken_without_undue_delay/1.
:- discontiguous conforms_with_common_specifications/2.
:- discontiguous considered_provider/1.
:- discontiguous considered_systemic_risk/1.
:- discontiguous considers_affected_persons/1.
:- discontiguous considers_context_of_use/1.
:- discontiguous considers_education/1.
:- discontiguous considers_experience/1.
:- discontiguous considers_infringement/1.
:- discontiguous considers_technical_knowledge/1.
:- discontiguous considers_training/1.
:- discontiguous consistent_performance_for_intended_purpose/1.
:- discontiguous consulted/2.
:- discontiguous consulted_advisory_forum/1.
:- discontiguous contains/2.
:- discontiguous contains_data_protection_compliance_statement/1.
:- discontiguous contains_minimum_elements/1.
:- discontiguous contains_notified_body_details/1.
:- discontiguous continuous_iterative_process/1.
:- discontiguous contributes_to_evaluation_tools/1.
:- discontiguous contributes_to_tools_and_templates/1.
:- discontiguous controller_of_eu_database/1.
:- discontiguous cooperate_with_competent_authorities/2.
:- discontiguous cooperates_with_other_authorities/1.
:- discontiguous cooperation_conditions_met/2.
:- discontiguous copy_given_to_subject/2.
:- discontiguous copyright_policy/2.
:- discontiguous corrective_action_period/2.
:- discontiguous council/1.
:- discontiguous covered_by_other_union_law/1.
:- discontiguous covered_by_quality_management_system/2.
:- discontiguous covers_ai_system_type/2.
:- discontiguous covers_issue/2.
:- discontiguous covers_obligations/1.
:- discontiguous covers_obligations/2.
:- discontiguous covers_requirements/2.
:- discontiguous covers_same_types_of_ai_systems/2.
:- discontiguous criminal_offence/1.
:- discontiguous criterion_for_assessment/1.
:- discontiguous cybersecurity_certified/1.
:- discontiguous cybersecurity_technical_solution_appropriate/1.
:- discontiguous data_set_quality_criteria_met/1.
:- discontiguous date_passed/1.
:- discontiguous deadline/2.
:- discontiguous decision/1.
:- discontiguous decision_based_on_output/2.
:- discontiguous decision_within_period/2.
:- discontiguous declaration_contains_information/2.
:- discontiguous declaration_identifies/2.
:- discontiguous declaration_identifies_legislation/2.
:- discontiguous declaration_of_interests/1.
:- discontiguous declaration_states_compliance/2.
:- discontiguous declaration_translated/2.
:- discontiguous delegated_act/1.
:- discontiguous delegated_act_concerning_ai_safety_components/1.
:- discontiguous delegated_act_concerning_safety_component_ai_system/1.
:- discontiguous delegated_act_concerning_safety_component_ai_system/2.
:- discontiguous delegated_or_implementing_act/1.
:- discontiguous delegation_period/1.
:- discontiguous deletion_does_not_decrease_overall_protection_level/1.
:- discontiguous demonstrates_compliance/1.
:- discontiguous demonstrates_compliance/2.
:- discontiguous demonstrates_conformity/2.
:- discontiguous demonstrates_conformity_with_harmonised_standards/2.
:- discontiguous deployed/2.
:- discontiguous deployer_implemented_oversight_measure/1.
:- discontiguous deployer_information_and_training/2.
:- discontiguous derogation_authorisation/2.
:- discontiguous designated_as_single_point_of_contact/1.
:- discontiguous designated_market_surveillance_authority/2.
:- discontiguous designated_representative/2.
:- discontiguous designated_systemic_risk/1.
:- discontiguous designated_under/2.
:- discontiguous designation/3.
:- discontiguous designation_suspended_restricted_or_withdrawn/1.
:- discontiguous designed_with_human_machine_interface_tools/1.
:- discontiguous detailed_measures/1.
:- discontiguous develop_union_expertise_and_capabilities/2.
:- discontiguous development_description_element/1.
:- discontiguous develops/2.
:- discontiguous develops_tools/2.
:- discontiguous digital_ce_marking/1.
:- discontiguous diligent_accurate_objective/1.
:- discontiguous directly_applicable/1.
:- discontiguous directs_to/3.
:- discontiguous disproportionate_requirement_exempt/1.
:- discontiguous documentation_contains_adversarial_testing_description/1.
:- discontiguous documentation_contains_development_description/1.
:- discontiguous documentation_contains_evaluation_strategies/1.
:- discontiguous documentation_contains_general_description/1.
:- discontiguous documentation_contains_system_architecture_description/1.
:- discontiguous documentation_kept/2.
:- discontiguous documents_kept_at_disposal/3.
:- discontiguous does_not_meet_training_data_requirement/1.
:- discontiguous does_not_pose_significant_risk_of_harm/1.
:- discontiguous drawn_up_before_placement/1.
:- discontiguous duly_justified_request/1.
:- discontiguous during_use/1.
:- discontiguous easily_accessible_via_interface/1.
:- discontiguous easily_intelligible/2.
:- discontiguous economic_operator_reference_includes_all_operators/0.
:- discontiguous edps_competent_authority/1.
:- discontiguous edps_may_establish_sandbox/1.
:- discontiguous educational_institution/1.
:- discontiguous effective_oversight_by_natural_persons/1.
:- discontiguous emerging_standards_relevant/1.
:- discontiguous empowered_to_amend_annex_3/2.
:- discontiguous empowered_to_facilitate_coordination/1.
:- discontiguous enabled_to_correctly_interpret_output/2.
:- discontiguous enabled_to_decide_not_to_use_or_override_output/2.
:- discontiguous enabled_to_intervene_or_interrupt_system/2.
:- discontiguous enabled_to_monitor_operation/2.
:- discontiguous enabled_to_remain_aware_of_automation_bias/2.
:- discontiguous enabled_to_understand_capacities_and_limitations/2.
:- discontiguous enables_appropriate_use/1.
:- discontiguous enables_deployer_interpretation/1.
:- discontiguous encourages_review_and_adaptation/2.
:- discontiguous ensured_through_oversight_measures/1.
:- discontiguous ensures_adequate_cybersecurity/1.
:- discontiguous ensures_confidentiality/1.
:- discontiguous enterprise/1.
:- discontiguous enterprise_relation/2.
:- discontiguous enters_into_force/1.
:- discontiguous entitled_to_access_file/1.
:- discontiguous entrusted_implementation/2.
:- discontiguous entry_exit_system/1.
:- discontiguous established_in/2.
:- discontiguous established_under_law_of_third_country/2.
:- discontiguous eu_database_complies_with_accessibility_requirements/1.
:- discontiguous eu_database_contains_information/2.
:- discontiguous eu_database_contains_personal_data_only_as_necessary/1.
:- discontiguous eu_database_personal_data_includes/1.
:- discontiguous eu_declaration_of_conformity/1.
:- discontiguous eu_member_state/1.
:- discontiguous eurodac/1.
:- discontiguous european_artificial_intelligence_board/1.
:- discontiguous european_criminal_records_information_system_tcn/1.
:- discontiguous european_data_protection_supervisor/1.
:- discontiguous european_digital_innovation_hub/1.
:- discontiguous european_economic_and_social_committee/1.
:- discontiguous european_parliament/1.
:- discontiguous european_travel_information_and_authorisation_system/1.
:- discontiguous evaluation_of_ai_office/0.
:- discontiguous evaluation_of_compliance/2.
:- discontiguous evaluation_of_voluntary_codes/0.
:- discontiguous evaluation_purpose_assess_compliance/1.
:- discontiguous evaluation_purpose_investigate_systemic_risk/1.
:- discontiguous evaluation_pursuant_to/2.
:- discontiguous evaluation_results_documented/1.
:- discontiguous evaluation_strategy_element/1.
:- discontiguous exceptional_costs_recoverable/1.
:- discontiguous exceptional_reason/1.
:- discontiguous exclusive_power/2.
:- discontiguous exempt_appointment_of_authorised_representative/1.
:- discontiguous exempt_biometric_verification_confirmation/1.
:- discontiguous exempt_financial_fraud_detection/1.
:- discontiguous exempt_from_authorisation_requirement/2.
:- discontiguous exempt_from_disclosure/2.
:- discontiguous exempt_from_informing/2.
:- discontiguous exempt_from_informing_sensitive_operational_data/2.
:- discontiguous exempt_from_instructions_for_use/1.
:- discontiguous exempt_from_marking/2.
:- discontiguous exempt_from_notification_obligation/1.
:- discontiguous exempt_from_reporting_sensitive_operational_data/2.
:- discontiguous exempt_from_requirement/2.
:- discontiguous exempt_high_risk_classification/1.
:- discontiguous exempt_integration_information_obligation/2.
:- discontiguous exempt_liability_insurance_member_state_assumes_liability/1.
:- discontiguous exempt_liability_insurance_member_state_directly_responsible/1.
:- discontiguous exempt_political_campaign_administrative_tool/1.
:- discontiguous exempt_right_to_explanation/1.
:- discontiguous exempt_separate_verification_by_two_persons/1.
:- discontiguous exempt_technical_documentation_obligation/2.
:- discontiguous exempt_travel_document_verification/1.
:- discontiguous exempt_written_agreement_requirement/1.
:- discontiguous exists_system_not_high_risk/1.
:- discontiguous exit_report_may_be_made_publicly_available/1.
:- discontiguous exit_reports_taken_positively_into_account/2.
:- discontiguous experience_exchange_facilitated/0.
:- discontiguous extends_period/3.
:- discontiguous extension_of_scope/1.
:- discontiguous facilitate_conformity_assessment/1.
:- discontiguous facilitate_development_of_tools/1.
:- discontiguous facilitate_ecosystem_involvement/1.
:- discontiguous facilitate_voluntary_codes_of_conduct/1.
:- discontiguous fair/1.
:- discontiguous fair_gender_representation/0.
:- discontiguous fair_geographical_representation/0.
:- discontiguous fee_applies_to/2.
:- discontiguous files_available_on_request/1.
:- discontiguous files_kept/1.
:- discontiguous financial_institution_high_risk_ai_system/1.
:- discontiguous financial_institution_provider/1.
:- discontiguous financial_institution_quality_management_deemed_fulfilled/1.
:- discontiguous finding_of_risk/2.
:- discontiguous fine_amount/2.
:- discontiguous fine_applies/2.
:- discontiguous fine_effective_proportionate_dissuasive/1.
:- discontiguous fine_imposed_on_provider/2.
:- discontiguous fine_information_communicated_to_board/1.
:- discontiguous fines_contribute_to_union_budget/1.
:- discontiguous fines_not_affect_effective_operation/1.
:- discontiguous fixing_fine_amount/2.
:- discontiguous flexibility_for_national_authorities/1.
:- discontiguous formal_non_compliance/1.
:- discontiguous free_access_for_sme/1.
:- discontiguous free_open_source_licence/1.
:- discontiguous fria_complements_dpia/2.
:- discontiguous from_competent_authority/2.
:- discontiguous full_responsibility/2.
:- discontiguous fundamental_rights_impact_assessment/1.
:- discontiguous general_description_element/1.
:- discontiguous general_purpose_ai_model_placed_on_market_before/2.
:- discontiguous general_purpose_ai_model_provider/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous general_purpose_ai_system_high_risk_purpose/1.
:- discontiguous general_validity_within_union/1.
:- discontiguous gpaim_provider/1.
:- discontiguous guidance_and_advice_provided/1.
:- discontiguous guidance_issued_by/2.
:- discontiguous guidelines_account_for/2.
:- discontiguous guidelines_attention_to/2.
:- discontiguous guidelines_cover/2.
:- discontiguous harmonised_standard_applied/1.
:- discontiguous harmonised_standard_published/1.
:- discontiguous has_adequate_competent_personnel/1.
:- discontiguous has_ai_expertise/1.
:- discontiguous has_linked_enterprise/1.
:- discontiguous has_partner_enterprise/1.
:- discontiguous has_sufficient_personnel/1.
:- discontiguous high_impact_capabilities_evaluated/1.
:- discontiguous high_impact_on_internal_market_due_to_reach/1.
:- discontiguous high_risk/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_context/1.
:- discontiguous high_risk_ai_system_intended_for_public_authorities/1.
:- discontiguous high_risk_ai_system_listed_in_annex_3/1.
:- discontiguous high_risk_ai_system_used_for_information_or_recommendations/1.
:- discontiguous high_risk_biometric_categorisation/1.
:- discontiguous high_risk_biometric_remote_identification/1.
:- discontiguous high_risk_creditworthiness/1.
:- discontiguous high_risk_critical_infrastructure_safety_component/1.
:- discontiguous high_risk_education_access_admission/1.
:- discontiguous high_risk_education_assess_level/1.
:- discontiguous high_risk_education_learning_outcomes/1.
:- discontiguous high_risk_education_monitor_prohibited_behaviour/1.
:- discontiguous high_risk_election_influence/1.
:- discontiguous high_risk_emergency_calls_evaluation/1.
:- discontiguous high_risk_emotion_recognition/1.
:- discontiguous high_risk_employment_recruitment/1.
:- discontiguous high_risk_employment_work_relationship_decisions/1.
:- discontiguous high_risk_justice_research_interpretation/1.
:- discontiguous high_risk_law_enforcement_evidence_reliability/1.
:- discontiguous high_risk_law_enforcement_offending_risk/1.
:- discontiguous high_risk_law_enforcement_polygraph/1.
:- discontiguous high_risk_law_enforcement_profiling/1.
:- discontiguous high_risk_law_enforcement_victim_risk/1.
:- discontiguous high_risk_life_health_insurance_risk_assessment/1.
:- discontiguous high_risk_migration_asylum_examination/1.
:- discontiguous high_risk_migration_identification/1.
:- discontiguous high_risk_migration_polygraph/1.
:- discontiguous high_risk_migration_risk_assessment/1.
:- discontiguous high_risk_public_services_eligibility/1.
:- discontiguous human_oversight/1.
:- discontiguous human_oversight_assigned/2.
:- discontiguous identification_separately_verified_and_confirmed/1.
:- discontiguous identified_and_built_by_provider/1.
:- discontiguous identified_by_member_state/1.
:- discontiguous identified_by_provider/1.
:- discontiguous implementing_act_template_required/1.
:- discontiguous implementing_acts_adopted/1.
:- discontiguous implementing_acts_specify/1.
:- discontiguous in_conformity_with_requirements/2.
:- discontiguous in_course_detection_investigation_prosecution/1.
:- discontiguous in_sandbox/2.
:- discontiguous inadequate_corrective_action/2.
:- discontiguous includes_identification_numbers/1.
:- discontiguous includes_notified_activities/1.
:- discontiguous includes_other_relevant_information/2.
:- discontiguous inclusion_of_new_systems/1.
:- discontiguous independent_expert/1.
:- discontiguous independent_expert_from_scientific_panel/1.
:- discontiguous independent_expert_meets_criteria/1.
:- discontiguous independent_from_ai_provider/1.
:- discontiguous indicates/2.
:- discontiguous individual_researcher/1.
:- discontiguous industry_entity/1.
:- discontiguous information_content/2.
:- discontiguous information_or_documentation_obtained/2.
:- discontiguous information_provided_to_subject/2.
:- discontiguous informed_commission_detailed_explanation/3.
:- discontiguous informed_committee/2.
:- discontiguous informed_consent_condition_met/1.
:- discontiguous informed_consent_dated_and_documented/1.
:- discontiguous informs/3.
:- discontiguous informs_applicant_of_decision/3.
:- discontiguous infringement_category/1.
:- discontiguous innovator/1.
:- discontiguous input_and_output_modalities/2.
:- discontiguous input_data_relevant_and_representative/2.
:- discontiguous institution/1.
:- discontiguous instructions_contain_information/2.
:- discontiguous insufficient_information_gathered/1.
:- discontiguous integrates_model_into_ai_system/2.
:- discontiguous integration_choice_available/2.
:- discontiguous integration_information/2.
:- discontiguous intends_to_place_on_market_or_put_into_service/2.
:- discontiguous interoperability_framework/1.
:- discontiguous interpretation_tools_and_methods_available/2.
:- discontiguous invites_participants/2.
:- discontiguous involves_in_sandbox/2.
:- discontiguous issued_by/2.
:- discontiguous issued_for/2.
:- discontiguous joint_investigation/1.
:- discontiguous judicial_authority_independence_unaffected/1.
:- discontiguous keep_documents_at_disposal/2.
:- discontiguous keep_logs/3.
:- discontiguous kept_up_to_date/1.
:- discontiguous key_performance_indicator/1.
:- discontiguous kpi_reflects_differences/2.
:- discontiguous large_scale_it_system/1.
:- discontiguous law_enforcement_or_migration_area/1.
:- discontiguous law_enforcement_sandbox_processing_basis/1.
:- discontiguous lawyer_may_supply_information/2.
:- discontiguous lays_down/1.
:- discontiguous learning_outcome/1.
:- discontiguous learns_from_sandbox/3.
:- discontiguous licence_allows_access_usage_modification_distribution/1.
:- discontiguous lifecycle_coverage/1.
:- discontiguous limited_period_authorisation/2.
:- discontiguous list/1.
:- discontiguous list_of_notified_bodies/1.
:- discontiguous listed_in_annex_3/1.
:- discontiguous logging_capability/1.
:- discontiguous logs_maintained_as_part_of_documentation/2.
:- discontiguous logs_under_control/2.
:- discontiguous made_available_to_business_users/2.
:- discontiguous made_public/1.
:- discontiguous mandate_empowers/2.
:- discontiguous mandate_empowers_representative_to_be_addressed/2.
:- discontiguous market_surveillance_authority_acts_as_notified_body/1.
:- discontiguous market_surveillance_authority_approved/2.
:- discontiguous market_surveillance_authority_for_ai_system/2.
:- discontiguous market_surveillance_authority_powers_conferred/1.
:- discontiguous market_surveillance_regulation_applies/1.
:- discontiguous market_surveillance_subgroup/1.
:- discontiguous maximum_administrative_fine/2.
:- discontiguous may_adopt_common_specifications/2.
:- discontiguous may_advise_commission/2.
:- discontiguous may_allow_derogation/3.
:- discontiguous may_appoint_independent_expert/2.
:- discontiguous may_assist_ai_office/2.
:- discontiguous may_assist_development_of_expertise/2.
:- discontiguous may_be_required_to_pay_fee/2.
:- discontiguous may_call_upon_expert/2.
:- discontiguous may_cancel_reduce_or_increase/2.
:- discontiguous may_carry_out_additional_tests/2.
:- discontiguous may_carry_out_adequate_tests/2.
:- discontiguous may_collect_and_share_expertise/2.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_contribute_to_assessment_of_training_needs/2.
:- discontiguous may_contribute_to_benchmarks/1.
:- discontiguous may_contribute_to_cooperation/2.
:- discontiguous may_contribute_to_coordination/2.
:- discontiguous may_contribute_to_guidance_documents/1.
:- discontiguous may_contribute_to_harmonisation/2.
:- discontiguous may_contribute_to_harmonisation/3.
:- discontiguous may_cooperate_in_field/2.
:- discontiguous may_cooperate_with_union_expert_groups/1.
:- discontiguous may_cooperate_with_union_institutions/1.
:- discontiguous may_designate_systemic_risk/2.
:- discontiguous may_develop_voluntary_model_terms/1.
:- discontiguous may_establish/2.
:- discontiguous may_establish_additional_sandbox/1.
:- discontiguous may_establish_joint_sandbox/2.
:- discontiguous may_exercise_powers_remotely/2.
:- discontiguous may_facilitate_common_criteria/2.
:- discontiguous may_facilitate_cooperation_among_sandboxes/1.
:- discontiguous may_facilitate_information_sharing_among_sandboxes/1.
:- discontiguous may_facilitate_shared_understanding/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_initiate_structured_dialogue/3.
:- discontiguous may_integrate_testing_and_reporting_processes/2.
:- discontiguous may_invite/2.
:- discontiguous may_issue_recommendations/1.
:- discontiguous may_issue_recommendations/2.
:- discontiguous may_issue_request_for_information/2.
:- discontiguous may_issue_written_opinions/1.
:- discontiguous may_lodge_complaint/2.
:- discontiguous may_make_commitments_binding/4.
:- discontiguous may_make_reasoned_request_for_testing/2.
:- discontiguous may_notify/2.
:- discontiguous may_perform_notified_body_activities/2.
:- discontiguous may_prepare/2.
:- discontiguous may_present_arguments/2.
:- discontiguous may_propose_joint_activities/2.
:- discontiguous may_provide_advice_on_enforcement/2.
:- discontiguous may_provide_advice_on_guidance_documents/1.
:- discontiguous may_provide_advice_on_implementation/1.
:- discontiguous may_provide_guidance/1.
:- discontiguous may_provide_opinions/3.
:- discontiguous may_provide_qualified_alert/2.
:- discontiguous may_provide_technical_support/1.
:- discontiguous may_receive_opinions/3.
:- discontiguous may_rely_on_code_of_practice/1.
:- discontiguous may_rely_on_code_of_practice/2.
:- discontiguous may_rely_on_existing_provider_assessment/2.
:- discontiguous may_rely_on_previous_assessment/2.
:- discontiguous may_request_access/3.
:- discontiguous may_request_commission/2.
:- discontiguous may_request_documentation/2.
:- discontiguous may_request_information/2.
:- discontiguous may_request_information_access/2.
:- discontiguous may_request_reassessment/2.
:- discontiguous may_require_further_evidence_or_tests/3.
:- discontiguous may_require_modification/3.
:- discontiguous may_share_best_practices/2.
:- discontiguous may_support_ai_literacy/2.
:- discontiguous may_support_joint_activities/2.
:- discontiguous may_support_public_awareness/2.
:- discontiguous may_support_understanding/3.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous may_suspend_restrict_or_withdraw/2.
:- discontiguous may_suspend_testing/2.
:- discontiguous may_use_documentation_for_compliance/2.
:- discontiguous may_use_existing_designations/1.
:- discontiguous measured_against_kpi/2.
:- discontiguous meets_requirements_art_31/1.
:- discontiguous member/2.
:- discontiguous member_of_authority/2.
:- discontiguous member_state/1.
:- discontiguous member_state_authorises_use/1.
:- discontiguous member_state_lays_down_detailed_rules/1.
:- discontiguous member_state_notifies_commission/1.
:- discontiguous member_state_of/1.
:- discontiguous member_state_of/2.
:- discontiguous methodology_for_risk_evaluation/0.
:- discontiguous minimum_retention_period/1.
:- discontiguous mitigation_control_measure/2.
:- discontiguous model_architecture_information_publicly_available/1.
:- discontiguous model_usage_information_publicly_available/1.
:- discontiguous monitor_operation/2.
:- discontiguous monitoring_deemed_fulfilled/2.
:- discontiguous monitors_code_of_practice/2.
:- discontiguous must_achieve_appropriate_level/2.
:- discontiguous must_act_as_adco/1.
:- discontiguous must_address_feedback_loop/2.
:- discontiguous must_adopt_implementing_acts/1.
:- discontiguous must_adopt_mitigation_or_suspend_or_terminate/2.
:- discontiguous must_adopt_rules_of_procedure/1.
:- discontiguous must_advise_and_assist/2.
:- discontiguous must_affix_ce_marking/1.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_agree_real_world_testing_terms/2.
:- discontiguous must_allocate_sufficient_resources/2.
:- discontiguous must_allow_access_to_premises/3.
:- discontiguous must_apply_data_governance/2.
:- discontiguous must_apply_impartiality_principles/1.
:- discontiguous must_apply_paragraph_4_to_financial_institution_system/2.
:- discontiguous must_apply_procedure/1.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_assess/2.
:- discontiguous must_assess_and_mitigate_systemic_risks/1.
:- discontiguous must_assess_change/2.
:- discontiguous must_assess_competence_annually/1.
:- discontiguous must_assess_quality_management_system/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assign_identification_number/2.
:- discontiguous must_associate_complainants/1.
:- discontiguous must_associate_data_protection_authorities/2.
:- discontiguous must_assume_responsibility_for_compliance/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_decision_on_commentable_elements/1.
:- discontiguous must_be_aware_of_relevant_standards/1.
:- discontiguous must_be_independent_of_competitor/2.
:- discontiguous must_be_independent_of_economic_interest_operator/2.
:- discontiguous must_be_independent_of_provider/2.
:- discontiguous must_be_resilient_against_unauthorised_alteration/1.
:- discontiguous must_be_resilient_to_errors/1.
:- discontiguous must_bring_into_compliance_by/2.
:- discontiguous must_carry_out/2.
:- discontiguous must_carry_out_evaluation/2.
:- discontiguous must_carry_out_periodic_audits/3.
:- discontiguous must_carry_out_tasks_with_integrity_and_competence/1.
:- discontiguous must_communicate_authorities_to_commission/1.
:- discontiguous must_communicate_decision/3.
:- discontiguous must_communicate_grounds_to_other_authorities/3.
:- discontiguous must_comply/2.
:- discontiguous must_comply_with_registration/2.
:- discontiguous must_comply_with_registration_obligations/2.
:- discontiguous must_comply_with_requirements/1.
:- discontiguous must_comply_with_rights_reservation/2.
:- discontiguous must_confirm/2.
:- discontiguous must_consider_vulnerable_group_impact/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult_board/2.
:- discontiguous must_consult_experts/2.
:- discontiguous must_consult_other_authorities/2.
:- discontiguous must_contain_technical_documentation/2.
:- discontiguous must_convene_meetings/2.
:- discontiguous must_cooperate_compliance_evaluation/2.
:- discontiguous must_cooperate_during_investigation/2.
:- discontiguous must_cooperate_for_consistent_practices/1.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_authorities/3.
:- discontiguous must_cooperate_with_authorities_on_reasoned_request/1.
:- discontiguous must_cooperate_with_authority/2.
:- discontiguous must_cooperate_with_commission/2.
:- discontiguous must_cooperate_with_competent_authorities/3.
:- discontiguous must_cooperate_with_national_competent_authorities/2.
:- discontiguous must_cooperate_with_new_providers/2.
:- discontiguous must_cooperate_with_notified_body/2.
:- discontiguous must_coordinate_with_national_authorities/1.
:- discontiguous must_coordinate_within_board/1.
:- discontiguous must_decide_authorisation_justified/1.
:- discontiguous must_decide_justification/2.
:- discontiguous must_decide_on_change/3.
:- discontiguous must_declare_in_instructions/2.
:- discontiguous must_delete_data_when_no_longer_needed/1.
:- discontiguous must_delete_personal_data/2.
:- discontiguous must_demonstrate_alternative_compliance/1.
:- discontiguous must_demonstrate_alternative_compliance_means/2.
:- discontiguous must_demonstrate_conformity/2.
:- discontiguous must_design_for_transparency/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_national_competent_authorities/1.
:- discontiguous must_designate_notifying_authority/1.
:- discontiguous must_designate_representative/2.
:- discontiguous must_designate_single_point_of_contact/1.
:- discontiguous must_determine_expert_number/2.
:- discontiguous must_develop_guidance/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_information_platform/2.
:- discontiguous must_develop_on_quality_data_sets/1.
:- discontiguous must_develop_questionnaire_template/1.
:- discontiguous must_develop_single_interface/1.
:- discontiguous must_direct_prospective_providers/2.
:- discontiguous must_disclose/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_document_impartiality_structure/1.
:- discontiguous must_document_post_market_monitoring_system/2.
:- discontiguous must_document_risk_management_system/2.
:- discontiguous must_document_use_in_police_file/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_draw_up_certificate_in_language/2.
:- discontiguous must_draw_up_eu_declaration/2.
:- discontiguous must_draw_up_eu_declaration_of_conformity/2.
:- discontiguous must_draw_up_integration_information/2.
:- discontiguous must_draw_up_report/3.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_draw_up_training_content_summary/2.
:- discontiguous must_elect/2.
:- discontiguous must_eliminate_or_reduce_feedback_loop_risk/1.
:- discontiguous must_eliminate_risk/2.
:- discontiguous must_enable_automatic_logging/1.
:- discontiguous must_enable_performance_of_mandate_tasks/2.
:- discontiguous must_enable_performance_of_tasks/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_encourage_codes_of_conduct/2.
:- discontiguous must_encourage_development/2.
:- discontiguous must_ensure_accessibility_compliance/2.
:- discontiguous must_ensure_adequate_cybersecurity/1.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_competent_representatives/1.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_compliance_with_requirements/2.
:- discontiguous must_ensure_confidence_in_performance/1.
:- discontiguous must_ensure_conformity_assessment/2.
:- discontiguous must_ensure_conformity_before_placing/2.
:- discontiguous must_ensure_consistent_performance/2.
:- discontiguous must_ensure_coordination/2.
:- discontiguous must_ensure_corrective_action_all_systems/2.
:- discontiguous must_ensure_corrective_action_union_market/2.
:- discontiguous must_ensure_corrective_actions_by_others/2.
:- discontiguous must_ensure_cybersecurity_protection/1.
:- discontiguous must_ensure_efficient_organisation/2.
:- discontiguous must_ensure_empowered_representatives/1.
:- discontiguous must_ensure_fair_representation/2.
:- discontiguous must_ensure_immediate_access_to_documentation/2.
:- discontiguous must_ensure_independent_impartial_unbiased/1.
:- discontiguous must_ensure_input_data_relevant/2.
:- discontiguous must_ensure_no_risk_when_placed/2.
:- discontiguous must_ensure_participation/2.
:- discontiguous must_ensure_product_compliance/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_ensure_single_contact_point/1.
:- discontiguous must_ensure_storage_transport_conditions/2.
:- discontiguous must_ensure_sufficient_personnel/2.
:- discontiguous must_ensure_sufficient_transparency/2.
:- discontiguous must_ensure_testing_compliance/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_ai_regulatory_sandbox/1.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_quality_management_system/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_scientific_panel/1.
:- discontiguous must_establish_two_standing_subgroups/1.
:- discontiguous must_establish_under_national_law/1.
:- discontiguous must_evaluate/2.
:- discontiguous must_evaluate_national_measures/2.
:- discontiguous must_evaluate_promote_best_practices/2.
:- discontiguous must_examine_change/2.
:- discontiguous must_examine_quality_management_system/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_extend/2.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_assessment/2.
:- discontiguous must_facilitate_codes_of_conduct/2.
:- discontiguous must_facilitate_coordination/2.
:- discontiguous must_facilitate_experience_exchange/0.
:- discontiguous must_facilitate_standardisation_participation/2.
:- discontiguous must_facilitate_tasks/2.
:- discontiguous must_facilitate_timely_access/3.
:- discontiguous must_follow_conformity_assessment_procedure/3.
:- discontiguous must_give_access/3.
:- discontiguous must_give_access_to_logs/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons_for_decision/2.
:- discontiguous must_grant_access_to_data_sets/3.
:- discontiguous must_grant_access_to_source_code/2.
:- discontiguous must_grant_access_to_training_and_models/3.
:- discontiguous must_grant_full_access_to_documentation/2.
:- discontiguous must_have_confidentiality_procedures/1.
:- discontiguous must_have_legal_personality/1.
:- discontiguous must_have_permanent_availability_of_personnel/1.
:- discontiguous must_have_personnel_with_experience_knowledge_ai_systems/1.
:- discontiguous must_have_personnel_with_experience_knowledge_data/1.
:- discontiguous must_have_personnel_with_experience_knowledge_requirements/1.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_have_sufficient_internal_competences/1.
:- discontiguous must_hold_meeting/2.
:- discontiguous must_identify_fundamental_rights_authorities/1.
:- discontiguous must_identify_rights_reservation/2.
:- discontiguous must_immediately_inform_of_non_compliance_and_corrective_actions/2.
:- discontiguous must_implement_and_maintain/2.
:- discontiguous must_implement_cybersecurity_measures/1.
:- discontiguous must_implement_mitigation_measures/2.
:- discontiguous must_implement_risk_management_system/2.
:- discontiguous must_include_in_application/2.
:- discontiguous must_include_measure_against/2.
:- discontiguous must_include_specific_considerations_on_training_data/3.
:- discontiguous must_indicate_contact_details/2.
:- discontiguous must_indicate_grounds_and_challenge/3.
:- discontiguous must_inform/2.
:- discontiguous must_inform_ai_office_and_board_of_establishment/1.
:- discontiguous must_inform_ai_office_of_suspension/2.
:- discontiguous must_inform_ai_office_of_termination/1.
:- discontiguous must_inform_and_cooperate_with_national_authorities/2.
:- discontiguous must_inform_authorised_representative/2.
:- discontiguous must_inform_authorities_of_risk/2.
:- discontiguous must_inform_board_and_authorities/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_commission_and_member_states/3.
:- discontiguous must_inform_commission_restrictive/2.
:- discontiguous must_inform_commission_withdrawal/2.
:- discontiguous must_inform_deployers/2.
:- discontiguous must_inform_distributors/2.
:- discontiguous must_inform_importer_or_distributor/2.
:- discontiguous must_inform_importers/2.
:- discontiguous must_inform_market_surveillance_authorities/2.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_market_surveillance_of_incident/2.
:- discontiguous must_inform_member_state/2.
:- discontiguous must_inform_national_public_authorities/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_of_change/3.
:- discontiguous must_inform_of_measures_and_additional_info/2.
:- discontiguous must_inform_of_refusal_with_reasons/3.
:- discontiguous must_inform_of_serious_incident/2.
:- discontiguous must_inform_other_authorities/2.
:- discontiguous must_inform_other_member_states/2.
:- discontiguous must_inform_other_member_states_decision/2.
:- discontiguous must_inform_provider_first/2.
:- discontiguous must_inform_provider_of_risk/2.
:- discontiguous must_inform_provider_or_distributor_of_unregistered/2.
:- discontiguous must_inform_provider_or_importer_of_risk/2.
:- discontiguous must_inform_risk/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_inform_termination_reasons/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_causes/2.
:- discontiguous must_issue_certificate/2.
:- discontiguous must_issue_standardisation_request/2.
:- discontiguous must_issue_supplement/3.
:- discontiguous must_justify_equivalent_technical_solutions/2.
:- discontiguous must_keep_declaration_at_disposal/2.
:- discontiguous must_keep_declaration_up_to_date/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_documentation_available/2.
:- discontiguous must_keep_documents_at_disposal/2.
:- discontiguous must_keep_list_up_to_date/1.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_records/2.
:- discontiguous must_keep_registration_info_updated/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_keep_track_and_report_serious_incidents/1.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_keep_up_to_date_integration_information/2.
:- discontiguous must_keep_up_to_date_technical_documentation/2.
:- discontiguous must_lay_down_penalty_rules/2.
:- discontiguous must_limit_use_to_strictly_necessary/2.
:- discontiguous must_lodge_application_for_technical_documentation/3.
:- discontiguous must_maintain_confidentiality/2.
:- discontiguous must_maintain_logs_as_documentation/2.
:- discontiguous must_maintain_logs_as_financial_documentation/2.
:- discontiguous must_maintain_risk_management_system/2.
:- discontiguous must_make_available/2.
:- discontiguous must_make_available_information/2.
:- discontiguous must_make_available_integration_information/2.
:- discontiguous must_make_contact_information_public/1.
:- discontiguous must_make_list_publicly_available/1.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_make_publicly_available_training_content_summary/2.
:- discontiguous must_mark_output/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_be_directly_involved_in_design/2.
:- discontiguous must_not_be_directly_involved_in_development/2.
:- discontiguous must_not_be_directly_involved_in_marketing/2.
:- discontiguous must_not_be_directly_involved_in_use/2.
:- discontiguous must_not_engage_in_conflicting_activity/2.
:- discontiguous must_not_make_available_until_conformity/2.
:- discontiguous must_not_perform_conformity_assessment_activities/1.
:- discontiguous must_not_place_until_conformity/2.
:- discontiguous must_not_provide_commercial_consultancy/1.
:- discontiguous must_not_provide_consultancy_services/1.
:- discontiguous must_not_represent_parties/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_assessment_decision/3.
:- discontiguous must_notify_change_decision/3.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_commission_and_member_states_of_measures/2.
:- discontiguous must_notify_commission_annually/2.
:- discontiguous must_notify_commission_of_single_point_of_contact/1.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_list_to_commission_and_member_states/1.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_suspension_or_termination/2.
:- discontiguous must_obey_confidentiality/1.
:- discontiguous must_observe_confidential_business_information/2.
:- discontiguous must_observe_ip_rights/2.
:- discontiguous must_observe_professional_secrecy/1.
:- discontiguous must_observe_trade_secrets/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise_awareness_activities/2.
:- discontiguous must_organise_communication_campaigns/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_participate_in_coordination_activities/1.
:- discontiguous must_participate_in_standardisation/1.
:- discontiguous must_perform_consistently/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_investigation/2.
:- discontiguous must_perform_mandate_tasks/1.
:- discontiguous must_perform_mandate_tasks/2.
:- discontiguous must_perform_model_evaluation/1.
:- discontiguous must_perform_testing_before_market_or_service/2.
:- discontiguous must_prepare/2.
:- discontiguous must_prepare_agenda/1.
:- discontiguous must_propose_other_measures/2.
:- discontiguous must_provide/2.
:- discontiguous must_provide_access_on_behalf/2.
:- discontiguous must_provide_adequate_resources/2.
:- discontiguous must_provide_audit_report/3.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_documentation/2.
:- discontiguous must_provide_documentation_upon_request/3.
:- discontiguous must_provide_exchange/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance_on_regulatory_expectations/2.
:- discontiguous must_provide_guidance_supervision_support/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information/3.
:- discontiguous must_provide_information_and_documentation/3.
:- discontiguous must_provide_information_on_reasoned_request/2.
:- discontiguous must_provide_information_on_request/2.
:- discontiguous must_provide_information_upon_request/2.
:- discontiguous must_provide_information_upon_request/3.
:- discontiguous must_provide_instructions/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_mandate_copy_on_request/1.
:- discontiguous must_provide_priority_access_sandbox/2.
:- discontiguous must_provide_secretariat/1.
:- discontiguous must_provide_standardised_templates/2.
:- discontiguous must_provide_system_enabling_oversight/2.
:- discontiguous must_provide_technical_access/2.
:- discontiguous must_provide_technical_documentation/2.
:- discontiguous must_provide_template/2.
:- discontiguous must_provide_transparency_information/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_annual_report/2.
:- discontiguous must_publish_list/1.
:- discontiguous must_publish_voluntary_model_terms/1.
:- discontiguous must_put_end_to_non_compliance/2.
:- discontiguous must_put_in_place_copyright_policy/2.
:- discontiguous must_recall_model/2.
:- discontiguous must_refrain_from_incompatible_action/1.
:- discontiguous must_refuse_to_issue_certificate/2.
:- discontiguous must_register/2.
:- discontiguous must_report/2.
:- discontiguous must_report_annually/2.
:- discontiguous must_report_regularly/2.
:- discontiguous must_report_resources_biennially/1.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_to_market_surveillance_authority/2.
:- discontiguous must_report_without_delay/2.
:- discontiguous must_request_and_access_documentation/2.
:- discontiguous must_request_authorisation/2.
:- discontiguous must_request_evidence_of_best_efforts/2.
:- discontiguous must_request_only_necessary_data/1.
:- discontiguous must_require/2.
:- discontiguous must_require_compliance_actions/4.
:- discontiguous must_require_retraining/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rigour_and_protection/2.
:- discontiguous must_restrict_making_available/2.
:- discontiguous must_restrict_suspend_or_withdraw/2.
:- discontiguous must_safeguard_confidential_information/1.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_safeguard_independence_objectivity_impartiality/1.
:- discontiguous must_safeguard_objectivity_and_impartiality/1.
:- discontiguous must_satisfy_cybersecurity_requirements/1.
:- discontiguous must_satisfy_organisational_requirements/1.
:- discontiguous must_satisfy_process_requirements/1.
:- discontiguous must_satisfy_quality_management_requirements/1.
:- discontiguous must_satisfy_resource_requirements/1.
:- discontiguous must_set_up_and_maintain/2.
:- discontiguous must_share_information/3.
:- discontiguous must_specify_by_written_agreement/3.
:- discontiguous must_specify_standard_quality/2.
:- discontiguous must_stop_use_immediately/2.
:- discontiguous must_subject_to_surveillance/2.
:- discontiguous must_submit/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_reports/1.
:- discontiguous must_submit_application_for_notification/2.
:- discontiguous must_submit_copy_upon_request/2.
:- discontiguous must_submit_final_report/1.
:- discontiguous must_submit_registration_info/2.
:- discontiguous must_submit_registration_information/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_submit_upon_request/3.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information_within/3.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_suspend_or_withdraw_or_restrict_certificate/3.
:- discontiguous must_suspend_use/2.
:- discontiguous must_take_appropriate_measures/2.
:- discontiguous must_take_appropriate_measures/3.
:- discontiguous must_take_appropriate_steps/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_corrective_measures/2.
:- discontiguous must_take_due_account_of_ai_system_complexity/2.
:- discontiguous must_take_due_account_of_provider_size/2.
:- discontiguous must_take_due_account_of_provider_structure/2.
:- discontiguous must_take_due_account_of_sector/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_into_account_requirements/3.
:- discontiguous must_take_into_account_risk_management_system/1.
:- discontiguous must_take_into_account_sectoral_requirements/1.
:- discontiguous must_take_into_account_setting/2.
:- discontiguous must_take_into_account_sme_needs/2.
:- discontiguous must_take_measures_to_comply/2.
:- discontiguous must_take_monitoring_actions/2.
:- discontiguous must_take_necessary_steps/2.
:- discontiguous must_take_necessary_steps_to_comply/2.
:- discontiguous must_take_out_liability_insurance/1.
:- discontiguous must_take_provisional_measures/2.
:- discontiguous must_take_restriction_measures/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_terminate_mandate/1.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_test_against_defined_metrics/2.
:- discontiguous must_test_for_risk_management/2.
:- discontiguous must_treat/3.
:- discontiguous must_treat_as_confidential/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_treat_information_confidentially/2.
:- discontiguous must_treat_information_confidentially/3.
:- discontiguous must_treat_trade_secrets_confidentially/3.
:- discontiguous must_undertake/2.
:- discontiguous must_update_documentation/1.
:- discontiguous must_update_fria_information/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_use_ai_office_template/2.
:- discontiguous must_use_in_accordance_with_instructions/2.
:- discontiguous must_use_information_for_dpia/2.
:- discontiguous must_use_state_of_the_art_technologies/2.
:- discontiguous must_utilise_communication_channels/2.
:- discontiguous must_verify_authorised_representative_appointed/2.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_ce_marking_and_declaration/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_conformity_assessment_carried_out/2.
:- discontiguous must_verify_conformity_documentation/2.
:- discontiguous must_verify_design_development_and_post_market_monitoring/2.
:- discontiguous must_verify_quality_management_system_compliance/2.
:- discontiguous must_verify_sandbox_compliance/2.
:- discontiguous must_verify_technical_documentation_drawn_up/2.
:- discontiguous must_withdraw/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous must_withdraw_model/2.
:- discontiguous mutual_recognition_across_union/1.
:- discontiguous national_measure_justified/1.
:- discontiguous national_measure_unjustified/1.
:- discontiguous natural_or_legal_person/1.
:- discontiguous natural_person/1.
:- discontiguous natural_persons_have_competence_training_authority/1.
:- discontiguous needed_for_enforcement/2.
:- discontiguous new_conformity_assessment_required/1.
:- discontiguous new_legislative_framework_legislation/1.
:- discontiguous no_action_or_decision_taken_by_deployer_on_basis_of_identification/1.
:- discontiguous no_administrative_fines_if_conditions_met/1.
:- discontiguous no_adverse_decision_solely_on_output/1.
:- discontiguous no_conflict_of_interest_with_conformity_assessment_body/1.
:- discontiguous no_instructions_from_anyone/1.
:- discontiguous no_longer_considered_provider/1.
:- discontiguous no_objection_within/2.
:- discontiguous no_objection_within_period/2.
:- discontiguous non_compliance_cause/2.
:- discontiguous non_compliance_found/2.
:- discontiguous non_compliance_not_restricted_to_national_territory/1.
:- discontiguous non_compliance_persists/1.
:- discontiguous nonconformity_condition/1.
:- discontiguous not_directly_exposed_to_natural_persons/1.
:- discontiguous not_solely_based_on_profiling/1.
:- discontiguous notification_based_on_accreditation_certificate/1.
:- discontiguous notification_based_on_documentary_evidence/1.
:- discontiguous notification_contains_required_information/1.
:- discontiguous notification_decision_by_different_person/1.
:- discontiguous notification_includes/2.
:- discontiguous notification_includes_demonstration/1.
:- discontiguous notification_includes_details/2.
:- discontiguous notified_body/1.
:- discontiguous notified_body_entitled_to_control_conformity/2.
:- discontiguous notified_body_id_affixed_by_notified_body/1.
:- discontiguous notified_body_id_affixed_under_instructions/1.
:- discontiguous notified_body_id_in_promotional_material/1.
:- discontiguous notified_body_participates_in/2.
:- discontiguous notified_by/2.
:- discontiguous notified_to_market_surveillance_and_dpa/1.
:- discontiguous notify/3.
:- discontiguous notifying_authorities_subgroup/1.
:- discontiguous notifying_authority_of/2.
:- discontiguous notifying_authority_responsible_for/2.
:- discontiguous number_of_undertakings_entering_market/0.
:- discontiguous objection_by_member_state/1.
:- discontiguous objection_expressed/3.
:- discontiguous objection_raised/2.
:- discontiguous objective_and_impartial/1.
:- discontiguous objective_contributing_to_evidence_based_learning/1.
:- discontiguous objective_facilitate/2.
:- discontiguous objective_facilitating_market_access/1.
:- discontiguous objective_fostering_innovation/1.
:- discontiguous objective_human_oversight/1.
:- discontiguous objective_improving_legal_certainty/1.
:- discontiguous objective_of_surveillance/2.
:- discontiguous objective_purpose/1.
:- discontiguous objective_supporting_best_practices/1.
:- discontiguous objectivity_and_impartiality_safeguarded/1.
:- discontiguous obligation_applies_to_first_use/2.
:- discontiguous obligation_fulfilled_by_participation/2.
:- discontiguous obligations_already_met_through_dpia/2.
:- discontiguous obtained_pursuant_to/3.
:- discontiguous offers_commitments/3.
:- discontiguous operates_sandbox/2.
:- discontiguous operator/1.
:- discontiguous operators_consulted/1.
:- discontiguous opportunity_to_be_heard/1.
:- discontiguous opposed_extension/2.
:- discontiguous other_change/1.
:- discontiguous other_union_harmonisation_legislation/1.
:- discontiguous oversight_assigned_natural_person/2.
:- discontiguous oversight_during_use_period/1.
:- discontiguous oversight_measure_applies_to_system/2.
:- discontiguous oversight_measure_commensurate/2.
:- discontiguous parameters_publicly_available/1.
:- discontiguous part_of/2.
:- discontiguous participant/1.
:- discontiguous participant_in_code_of_practice/2.
:- discontiguous participates_in/2.
:- discontiguous participates_in_sandbox/3.
:- discontiguous participation_period_appropriate/1.
:- discontiguous participation_period_extendable/1.
:- discontiguous particular_attention_to_vulnerable_groups/2.
:- discontiguous partnership_application/1.
:- discontiguous pays_specific_attention_to/2.
:- discontiguous performed_by_deployer/2.
:- discontiguous performs_ai_testing_support_tasks/1.
:- discontiguous performs_tasks_impartially/1.
:- discontiguous period/1.
:- discontiguous period/2.
:- discontiguous period/3.
:- discontiguous period_extended/1.
:- discontiguous period_while_conformity_assessment/1.
:- discontiguous permanent_advisory_forum_member/1.
:- discontiguous permitted_access_to_restricted_section/2.
:- discontiguous permitted_biometric_categorisation_labelling_filtering/1.
:- discontiguous permitted_biometric_categorisation_law_enforcement/1.
:- discontiguous permitted_checks/2.
:- discontiguous permitted_criminal_risk_assessment_support/1.
:- discontiguous permitted_emotion_inference_medical_safety/1.
:- discontiguous permitted_exchange_with_third_country/2.
:- discontiguous permitted_incomplete_initial_report/2.
:- discontiguous permitted_opt_out_from_third_party_assessment/2.
:- discontiguous permitted_processing_special_categories/2.
:- discontiguous permitted_real_time_remote_biometric_identification_law_enforcement/1.
:- discontiguous permitted_sandbox_access/1.
:- discontiguous permitted_sandbox_personal_data_processing/2.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_use_for_operations/2.
:- discontiguous permitted_use_for_personal_purposes/2.
:- discontiguous permitted_use_of_assessed_ai_system/2.
:- discontiguous placed_on_market_by/2.
:- discontiguous placed_on_market_or_put_into_service/1.
:- discontiguous placed_on_market_or_put_into_service_before/2.
:- discontiguous places_on_market/2.
:- discontiguous placing_on_market_in/2.
:- discontiguous placing_on_market_or_putting_into_service/1.
:- discontiguous placing_on_market_prohibited/1.
:- discontiguous plan_part_of_technical_documentation/2.
:- discontiguous poses_adverse_impact_on_fundamental_rights/1.
:- discontiguous poses_risk_of_harm_to_health_and_safety/1.
:- discontiguous poses_significant_risk_to_fundamental_rights/1.
:- discontiguous poses_significant_risk_to_health/1.
:- discontiguous poses_significant_risk_to_safety/1.
:- discontiguous post_market_monitoring_plan_required/2.
:- discontiguous post_market_monitoring_risk_evaluation/1.
:- discontiguous post_market_monitoring_system_actively_collects/2.
:- discontiguous post_market_monitoring_system_includes_interaction_analysis/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous power_conferred_on_commission/1.
:- discontiguous pre_deployment_service/1.
:- discontiguous preliminary_findings_communicated/2.
:- discontiguous presents_risk/1.
:- discontiguous presents_systemic_risk/1.
:- discontiguous presumed_compliant_with_cybersecurity_requirements/1.
:- discontiguous presumed_compliant_with_data_requirements/1.
:- discontiguous presumed_compliant_with_notified_body_requirements/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_common_specifications/2.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous presumption_of_conformity/1.
:- discontiguous presumption_of_conformity_via_harmonised_standard/1.
:- discontiguous prior_authorisation_obtained/1.
:- discontiguous priority_access_to_sandbox/1.
:- discontiguous procedural_rights_apply/1.
:- discontiguous procedural_safeguard_applies/1.
:- discontiguous procedures_developed_in_cooperation/1.
:- discontiguous produces_legal_effects_or_similarly_significantly_affects/1.
:- discontiguous product_manufacturer_considered_provider/1.
:- discontiguous product_reference_includes_all_ai_systems/0.
:- discontiguous prohibit_market_availability/2.
:- discontiguous prohibited_adverse_legal_effect_decision/2.
:- discontiguous prohibited_altering_ai_system_without_informing/2.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_criminal_risk_assessment/1.
:- discontiguous prohibited_disclosure_without_consultation/2.
:- discontiguous prohibited_emotion_inference_workplace_education/1.
:- discontiguous prohibited_facial_recognition_database_creation/1.
:- discontiguous prohibited_practice/1.
:- discontiguous prohibited_real_time_remote_biometric_identification_law_enforcement/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_subliminal_manipulation/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/1.
:- discontiguous prohibited_use_unregistered_system/2.
:- discontiguous prohibited_vulnerability_exploitation/1.
:- discontiguous prospective_provider/1.
:- discontiguous protected_information/1.
:- discontiguous provenance/2.
:- discontiguous provide_information/2.
:- discontiguous provided_by/2.
:- discontiguous provided_to_deployer_in_enabling_way/2.
:- discontiguous provided_with_adequate_resources/1.
:- discontiguous provider/1.
:- discontiguous provider_agreement/2.
:- discontiguous provider_liable_for_damage/1.
:- discontiguous provider_of/2.
:- discontiguous provider_of_ai_systems_or_gpai_models/1.
:- discontiguous provider_of_general_purpose_ai_model/2.
:- discontiguous provider_or_representative_established_in_union/1.
:- discontiguous provider_places_model/2.
:- discontiguous provider_places_on_market/2.
:- discontiguous providers_remain_liable/1.
:- discontiguous provides/2.
:- discontiguous provides_added_value/1.
:- discontiguous provides_gpaim/2.
:- discontiguous provides_guidance_and_advice/1.
:- discontiguous provides_independent_advice/3.
:- discontiguous provides_information_to_authorities/1.
:- discontiguous provisional_measure_deemed_justified/1.
:- discontiguous public_authority_or_person/1.
:- discontiguous public_authority_use/1.
:- discontiguous public_interest_area/1.
:- discontiguous publicly_accessible_information/1.
:- discontiguous publicly_available/1.
:- discontiguous publicly_available_list/2.
:- discontiguous publishes_assessment/2.
:- discontiguous purpose/1.
:- discontiguous put_into_service_without_authorisation/2.
:- discontiguous putting_into_service_prohibited/1.
:- discontiguous quadrennial/1.
:- discontiguous qualified_alert/2.
:- discontiguous qualified_alert_from_scientific_panel/1.
:- discontiguous quality_management_system_documented/1.
:- discontiguous quality_management_system_includes/2.
:- discontiguous quality_management_system_includes_exception/1.
:- discontiguous quality_management_system_proportionate/2.
:- discontiguous quality_management_system_sectoral_equivalent/1.
:- discontiguous questionnaire_template/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous real_world_testing_plan_submitted/2.
:- discontiguous reasonably_foreseeable_misuse_conditions/1.
:- discontiguous reasoned_request/2.
:- discontiguous recognised_in/3.
:- discontiguous records/1.
:- discontiguous records_event/2.
:- discontiguous recovers_exceptional_costs/3.
:- discontiguous reduced_fee/1.
:- discontiguous reduced_fine_for_sme/1.
:- discontiguous reduced_justification_period_for_art_5_non_compliance/1.
:- discontiguous references/2.
:- discontiguous references_published_in_official_journal/1.
:- discontiguous reflects_size_capacity_differences/1.
:- discontiguous registration_info_item/2.
:- discontiguous registration_info_section/2.
:- discontiguous registration_information_item/1.
:- discontiguous regular_systematic_review/1.
:- discontiguous regulation_applies_to/1.
:- discontiguous regulation_applies_to_limited/1.
:- discontiguous regulation_applies_to_operator/2.
:- discontiguous regulation_does_not_apply_to/1.
:- discontiguous rejected/1.
:- discontiguous related_to_product_covered_by_union_harmonisation_legislation/1.
:- discontiguous relates_to/2.
:- discontiguous relevant_ai_ecosystem_actor/1.
:- discontiguous relevant_circumstance/1.
:- discontiguous remains_aware_of_possible_automation_bias/2.
:- discontiguous remote_biometric_identification_high_risk/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous renewable_once/1.
:- discontiguous repealed_implementing_act/2.
:- discontiguous report/1.
:- discontiguous report_on_delegation/1.
:- discontiguous report_on_evaluation_and_review/1.
:- discontiguous reporting_deadline_death/3.
:- discontiguous reporting_deadline_serious_incident_art_3_49_b/3.
:- discontiguous reporting_deadline_standard/3.
:- discontiguous reporting_deadline_widespread_infringement/3.
:- discontiguous reporting_limited_for_equivalent_obligations/2.
:- discontiguous reporting_limited_for_safety_components/3.
:- discontiguous reporting_period_considers_severity/1.
:- discontiguous reports_on_commitments/2.
:- discontiguous reports_on_implementation/3.
:- discontiguous reports_on_outcomes/2.
:- discontiguous reports_resources_biennially/1.
:- discontiguous representative_term/2.
:- discontiguous represents/2.
:- discontiguous request_authorisation_during_or_after_use/2.
:- discontiguous request_for_documentation/3.
:- discontiguous request_indicates_fines/1.
:- discontiguous request_sets_period/1.
:- discontiguous request_specifies_information_required/1.
:- discontiguous request_states_legal_basis/1.
:- discontiguous request_states_purpose/1.
:- discontiguous requested_by/2.
:- discontiguous required_human_oversight_design/1.
:- discontiguous required_registration_level/2.
:- discontiguous required_registration_section/2.
:- discontiguous required_separate_verification_by_two_persons/1.
:- discontiguous required_third_party_conformity_assessment/1.
:- discontiguous requirements_set_out_in_article_31/1.
:- discontiguous requirements_taken_into_account_in_evaluation/2.
:- discontiguous requires_end_to_non_compliance/3.
:- discontiguous requires_expert/2.
:- discontiguous requires_new_conformity_assessment/1.
:- discontiguous research_and_experimentation_lab/1.
:- discontiguous residual_risk_acceptable/1.
:- discontiguous responsible_party/1.
:- discontiguous restrict_market_availability/2.
:- discontiguous restrict_or_prohibit_or_recall_or_withdraw/2.
:- discontiguous restricted_access_information/1.
:- discontiguous restrictive_measure_required/1.
:- discontiguous results_and_outputs_discarded/1.
:- discontiguous retention_period/2.
:- discontiguous revocable_by/2.
:- discontiguous revocation_ends_delegation/2.
:- discontiguous revocation_preserves_validity/2.
:- discontiguous revocation_takes_effect/2.
:- discontiguous right_to_explanation/1.
:- discontiguous right_to_explanation_applies/1.
:- discontiguous rights_of_defence_respected/1.
:- discontiguous rights_reservation_identified/1.
:- discontiguous risk_elimination_or_reduction/2.
:- discontiguous risk_equivalent_to_or_greater_than_existing_high_risk/1.
:- discontiguous risk_estimation_evaluation/1.
:- discontiguous risk_identification_analysis/1.
:- discontiguous risk_management_measure/2.
:- discontiguous risk_management_step/2.
:- discontiguous risk_management_system/1.
:- discontiguous risk_mitigable_through_design/1.
:- discontiguous risk_to_fundamental_rights/1.
:- discontiguous risk_to_fundamental_rights_identified/1.
:- discontiguous risk_to_health_or_safety/1.
:- discontiguous risk_to_health_or_safety_or_fundamental_rights/1.
:- discontiguous risk_to_health_safety_fundamental_rights/1.
:- discontiguous risk_to_public_interest/1.
:- discontiguous risks_persist_despite_other_requirements/1.
:- discontiguous robustness_achieved_through/2.
:- discontiguous safety_component_of_product/2.
:- discontiguous same_member_state/2.
:- discontiguous same_provider_model_and_system/2.
:- discontiguous sandbox_ai_system_public_interest/1.
:- discontiguous sandbox_data_environment/1.
:- discontiguous sandbox_data_necessary_for_requirements/1.
:- discontiguous sandbox_data_protected_and_deleted/1.
:- discontiguous sandbox_data_sharing_compliant/1.
:- discontiguous sandbox_does_not_affect_supervisory_powers/1.
:- discontiguous sandbox_facilitates_cross_border_cooperation/1.
:- discontiguous sandbox_logs_kept/1.
:- discontiguous sandbox_may_include_real_world_testing/1.
:- discontiguous sandbox_monitoring_mechanisms/1.
:- discontiguous sandbox_no_measures_or_decisions/1.
:- discontiguous sandbox_open_to_applicant/1.
:- discontiguous sandbox_plan_agreed/2.
:- discontiguous sandbox_project_summary_published/1.
:- discontiguous sandbox_provides_controlled_environment/1.
:- discontiguous sandbox_technical_documentation_complete/1.
:- discontiguous satisfied_requirements_art_31/1.
:- discontiguous satisfied_with_provider_tests/2.
:- discontiguous schengen_information_system/1.
:- discontiguous scientific_panel/1.
:- discontiguous scientific_panel_expert/1.
:- discontiguous sectoral_procedures_apply/1.
:- discontiguous security_equipment_concerning_ai_systems/1.
:- discontiguous selected_by_commission/1.
:- discontiguous sensitive_operational_data_excluded/2.
:- discontiguous sensitive_operational_data_exemption/1.
:- discontiguous separate_verification_by_two_persons/1.
:- discontiguous serious_incident_reported/2.
:- discontiguous serious_risk_across_member_states/1.
:- discontiguous shall_adopt_implementing_act/2.
:- discontiguous shortcomings_in_standards/1.
:- discontiguous significant_risks_require_mitigation/1.
:- discontiguous similar_conformity_assessment_activities/2.
:- discontiguous simple_procedure/2.
:- discontiguous simple_procedures_for_sme/1.
:- discontiguous simplified_documentation/1.
:- discontiguous simplified_quality_management_compliance/1.
:- discontiguous single_contact_point/1.
:- discontiguous single_declaration_for_multiple_legislation/1.
:- discontiguous single_identification_number/1.
:- discontiguous single_point_of_contact/1.
:- discontiguous single_set_documentation/1.
:- discontiguous sme/1.
:- discontiguous sme_including_start_up_with_union_presence/1.
:- discontiguous sme_with_union_presence/1.
:- discontiguous sole_purpose_confirm_identity/1.
:- discontiguous solely_based_on_profiling/1.
:- discontiguous specific_objective/1.
:- discontiguous specific_substantial_imminent_threat_to_life_or_physical_safety/1.
:- discontiguous stakeholder_category/1.
:- discontiguous standardisation_organisation/1.
:- discontiguous standardisation_participant_objective/1.
:- discontiguous standing_subgroup/1.
:- discontiguous start_up/1.
:- discontiguous start_up_with_union_presence/1.
:- discontiguous streamlined_across_union/1.
:- discontiguous streamlined_procedure/1.
:- discontiguous subcontracted_task/2.
:- discontiguous subcontractor/1.
:- discontiguous subject_matter/2.
:- discontiguous subject_may_withdraw/1.
:- discontiguous subject_to_fines/2.
:- discontiguous subject_to_ip_and_trade_secret_protection/1.
:- discontiguous subject_to_other_union_harmonisation_legislation/1.
:- discontiguous subject_to_registration_obligation/1.
:- discontiguous submit_filled_out_template/2.
:- discontiguous subsidiary_of_notified_body/1.
:- discontiguous subsidiary_task/2.
:- discontiguous sufficient_personnel/1.
:- discontiguous sufficient_reason_to_consider_risk/2.
:- discontiguous sufficiently_transparent/1.
:- discontiguous supervised_within_framework/2.
:- discontiguous support_combination/1.
:- discontiguous supports_code_of_practice/2.
:- discontiguous supports_cross_border_market_surveillance/1.
:- discontiguous supports_enforcement/2.
:- discontiguous supports_market_surveillance/1.
:- discontiguous supports_union_safeguard_procedure/1.
:- discontiguous suspects_causal_relationship/2.
:- discontiguous system_architecture_element/1.
:- discontiguous system_comes_to_halt_in_safe_state/1.
:- discontiguous systemic_risk_designation_criterion/1.
:- discontiguous tacit_extension/1.
:- discontiguous takes_due_account_needs/2.
:- discontiguous technical_documentation/1.
:- discontiguous technical_documentation/2.
:- discontiguous technical_documentation_contains/2.
:- discontiguous technical_documentation_remains_on_premises/1.
:- discontiguous technical_feasibility_consideration/2.
:- discontiguous technically_feasible/1.
:- discontiguous term_of_office/2.
:- discontiguous tested_for_risk_management/1.
:- discontiguous tested_on_data_reflecting_setting/2.
:- discontiguous tested_on_representative_data/1.
:- discontiguous testing_against_defined_metrics/1.
:- discontiguous testing_and_experimentation_facility/1.
:- discontiguous testing_duration_condition_met/1.
:- discontiguous testing_in_real_world_conditions_outside_sandbox/2.
:- discontiguous testing_in_real_world_conditions_registration/1.
:- discontiguous testing_prior_to_market_or_service/1.
:- discontiguous testing_process_documented/1.
:- discontiguous testing_registration_condition_met/2.
:- discontiguous third_country/1.
:- discontiguous traceability_appropriate_to_intended_purpose/1.
:- discontiguous trade_secret/1.
:- discontiguous trained_on_data_reflecting_setting/2.
:- discontiguous trained_on_representative_data/1.
:- discontiguous training_computation_exceeds_threshold/1.
:- discontiguous training_content_summary/2.
:- discontiguous training_process_documented/1.
:- discontiguous transparency_information_contains/2.
:- discontiguous transparent/1.
:- discontiguous transparent_and_fair_criteria/1.
:- discontiguous triennial/1.
:- discontiguous unable_to_conclude_investigation/2.
:- discontiguous under_responsibility_of/2.
:- discontiguous union_ai_testing_support_structure/1.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous union_harmonisation_legislation_derogation_only/1.
:- discontiguous union_institution_body_office_or_agency/1.
:- discontiguous union_or_national_law_considers_disproportionate/1.
:- discontiguous unlimited_jurisdiction_to_review/2.
:- discontiguous urgency_situation/1.
:- discontiguous use_in_accordance_with_instructions/2.
:- discontiguous use_prohibited/1.
:- discontiguous use_stopped_and_data_deleted/1.
:- discontiguous use_stopped_immediately/1.
:- discontiguous used_by_competent_public_authority_or_on_behalf/1.
:- discontiguous used_by_judicial_authority_or_on_behalf/1.
:- discontiguous used_by_law_enforcement_or_on_behalf/1.
:- discontiguous used_by_public_authority_or_on_behalf/1.
:- discontiguous used_in_accordance_with_intended_purpose/1.
:- discontiguous uses_form/2.
:- discontiguous uses_simplified_form/1.
:- discontiguous verified_by_at_least_two_natural_persons/1.
:- discontiguous verify_conformity_documentation/1.
:- discontiguous visa_information_system/1.
:- discontiguous voluntary_model_terms/1.
:- discontiguous vulnerable_group_impact_consideration/1.
:- discontiguous weights_publicly_available/1.
:- discontiguous whistleblower_protection_applies/1.
:- discontiguous withdrawal_of_measure_required/1.
:- discontiguous within_scope_of_regulation/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic acceptable_use_policies/1.
:- dynamic accessibility_requirements_met/1.
:- dynamic accessible_language_and_format/1.
:- dynamic accompanied_by_eu_declaration_of_conformity/1.
:- dynamic accompanied_by_instructions_for_use/1.
:- dynamic accompanied_by_proposal/1.
:- dynamic accreditation_certificate_exists/1.
:- dynamic accuracy/1.
:- dynamic accuracy_metric/1.
:- dynamic across_member_states/2.
:- dynamic action_by_competent_authorities/1.
:- dynamic actively_collects_data/1.
:- dynamic additional_period/1.
:- dynamic adequate_and_effective_cybersecurity_measures/2.
:- dynamic adequate_corrective_action_taken/2.
:- dynamic adequate_level_of_confidentiality/1.
:- dynamic adequate_safeguards_fundamental_rights/1.
:- dynamic administrative_fine/1.
:- dynamic adopted_harmonised_standards_and_common_specifications/1.
:- dynamic adversarial_example_attack/1.
:- dynamic adverse_impact_on_health_safety_fundamental_rights/1.
:- dynamic adverse_legal_effect_decision/2.
:- dynamic advisory_forum_meeting/1.
:- dynamic advisory_forum_opinion/1.
:- dynamic advisory_forum_recommendation/1.
:- dynamic advisory_forum_written_contribution/1.
:- dynamic affected_person/1.
:- dynamic agreement_with_union/1.
:- dynamic ai_board/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic ai_system_covered_by_annex_1/1.
:- dynamic ai_system_covered_by_annex_3/1.
:- dynamic ai_system_listed_in_annex_3/1.
:- dynamic aims_at_compliance_or_identifying_non_compliance/1.
:- dynamic all_ai_systems_made_available_on_union_market/2.
:- dynamic alternative_compliance_means/1.
:- dynamic alters_ai_system/3.
:- dynamic annex_3_point_1/1.
:- dynamic annex_3_point_2/1.
:- dynamic annex_3_point_2_exception/1.
:- dynamic annex_3_point_6/1.
:- dynamic annex_3_point_7/1.
:- dynamic annual_budget/1.
:- dynamic annual_report/1.
:- dynamic annual_report_excludes_sensitive_operational_data/1.
:- dynamic annual_report_submitted/2.
:- dynamic annual_total_worldwide_turnover/2.
:- dynamic another_notified_body_assumes_responsibility/2.
:- dynamic application_for_quality_management_system_assessment/1.
:- dynamic application_for_technical_documentation_assessment/1.
:- dynamic applied_common_specifications/2.
:- dynamic applied_harmonised_standards/2.
:- dynamic applies_impartiality_principles/1.
:- dynamic apply_procedure/2.
:- dynamic appointed_authorised_representative/2.
:- dynamic appropriate_circumstances/0.
:- dynamic appropriate_conformity_assessment_carried_out/1.
:- dynamic appropriate_level/2.
:- dynamic approved_quality_management_system/1.
:- dynamic assessment_of_enforcement/1.
:- dynamic assessment_of_need_for_amendment/1.
:- dynamic assessment_of_risk_posed_by_ai_systems/1.
:- dynamic assistive_function_standard_editing/1.
:- dynamic asylum_authority/1.
:- dynamic attributed_to_shortcomings_in_common_specifications/1.
:- dynamic attributed_to_shortcomings_in_harmonised_standards/1.
:- dynamic authorisation_based_on_objective_evidence/1.
:- dynamic authorisation_considers_elements/1.
:- dynamic authorisation_rejected/2.
:- dynamic authorisation_requested_without_undue_delay/1.
:- dynamic authorisation_required/1.
:- dynamic authorised_by_law_for_law_enforcement/1.
:- dynamic authorised_persons_only/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_appointed/1.
:- dynamic automatically_generated_logs/1.
:- dynamic automation_bias_awareness/1.
:- dynamic available_for_public_to_report_crime/1.
:- dynamic aware_of_relevant_standards/1.
:- dynamic awareness_raising_activity/1.
:- dynamic backup_plan/1.
:- dynamic bears_ce_marking/1.
:- dynamic becomes_high_risk/1.
:- dynamic benchmark/1.
:- dynamic best_practice_in_public_procurement/1.
:- dynamic bias_cannot_be_corrected_by_other_data/1.
:- dynamic bias_detection_correction_purpose/1.
:- dynamic biased_output/1.
:- dynamic bilateral_confidentiality_arrangement/2.
:- dynamic binding_measures_or_actions/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic board_member_state/1.
:- dynamic board_subgroup/1.
:- dynamic body_governed_by_public_law/1.
:- dynamic branch_in_union/1.
:- dynamic brought_into_conformity/1.
:- dynamic capable_of_carrying_out_tasks/1.
:- dynamic case_art_46_par_1/1.
:- dynamic causal_link_established/2.
:- dynamic ce_marking/1.
:- dynamic ce_marking_affixed_in_violation/1.
:- dynamic ce_marking_borne/1.
:- dynamic ce_marking_not_affixed/1.
:- dynamic certificate/1.
:- dynamic certificate_issued_by_notified_body/1.
:- dynamic certificate_supplement/2.
:- dynamic certificate_unduly_issued/1.
:- dynamic certificates_suspended_or_withdrawn/1.
:- dynamic cessation_of_activities/1.
:- dynamic change_in_technical_documentation/2.
:- dynamic change_to_ai_system_affecting_compliance/1.
:- dynamic change_to_approved_quality_management_system/1.
:- dynamic civil_protection_authority/1.
:- dynamic classified_non_high_risk_by_provider/2.
:- dynamic code_of_practice/1.
:- dynamic codes_of_conduct_accessibility/1.
:- dynamic codes_of_conduct_ai_literacy/1.
:- dynamic codes_of_conduct_element/1.
:- dynamic codes_of_conduct_energy_efficient/1.
:- dynamic codes_of_conduct_environmental_sustainability/1.
:- dynamic codes_of_conduct_ethical_guidelines/1.
:- dynamic codes_of_conduct_gender_equality/1.
:- dynamic codes_of_conduct_governance_mechanism/1.
:- dynamic codes_of_conduct_inclusive_design/1.
:- dynamic codes_of_conduct_inclusive_teams/1.
:- dynamic codes_of_conduct_involvement/1.
:- dynamic codes_of_conduct_kpi/1.
:- dynamic codes_of_conduct_objective/1.
:- dynamic codes_of_conduct_stakeholder_participation/1.
:- dynamic codes_of_conduct_voluntary_application/1.
:- dynamic codes_of_conduct_vulnerable_persons/1.
:- dynamic codes_of_practice/1.
:- dynamic collects_data/3.
:- dynamic commission_communicates_decision/3.
:- dynamic commission_consults/2.
:- dynamic commission_decides_justification/2.
:- dynamic commission_decides_justified/1.
:- dynamic commission_decides_unjustified/1.
:- dynamic commission_empowered_delegated_acts/1.
:- dynamic commission_enters_consultation_with/2.
:- dynamic commission_evaluates/1.
:- dynamic commission_evaluates_national_measures/2.
:- dynamic commission_informs/3.
:- dynamic commission_informs_other_member_states/2.
:- dynamic commission_notifies_decision/3.
:- dynamic commission_proposes_other_measures/2.
:- dynamic commitments_made/2.
:- dynamic committee_art_22/1.
:- dynamic common_specification/1.
:- dynamic common_specifications_available/1.
:- dynamic communication_campaign/1.
:- dynamic communication_channel/1.
:- dynamic complete_report_follows/1.
:- dynamic compliant_ai_system/1.
:- dynamic complies_with_safeguards/1.
:- dynamic component_of_large_scale_it_system/2.
:- dynamic concluded_not_high_risk/1.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic confidentiality_attack/1.
:- dynamic confidentiality_obligation_applies/1.
:- dynamic confidentiality_obligations/1.
:- dynamic confidentiality_procedures/1.
:- dynamic conflict_of_interest_management/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_completed/1.
:- dynamic conformity_assessment_fee/1.
:- dynamic conformity_assessment_internal_control/1.
:- dynamic conformity_assessment_relevant_procedure/1.
:- dynamic conformity_assessment_with_notified_body/1.
:- dynamic conformity_demonstrated_to_authority/1.
:- dynamic conformity_requirements/1.
:- dynamic consent_given_for_public_access/2.
:- dynamic considers_consequences_for_rights/1.
:- dynamic considers_nature_of_situation/1.
:- dynamic consulted_national_public_authority/2.
:- dynamic contact_details_of_provider/1.
:- dynamic contains_ai_system_identification/1.
:- dynamic contains_conformity_statement/1.
:- dynamic contains_harmonised_standards_references/1.
:- dynamic contains_provider_or_representative_details/1.
:- dynamic contains_signature_details/1.
:- dynamic contains_sole_responsibility_statement/1.
:- dynamic content_artistic_creative_satirical_fictional/1.
:- dynamic continues_to_learn/1.
:- dynamic continuous_compliance_evaluation/2.
:- dynamic cooperate_with_authorities/2.
:- dynamic cooperate_with_competent_authorities/1.
:- dynamic coordination_and_cooperation/1.
:- dynamic coordination_ensured/2.
:- dynamic copyright_policy/1.
:- dynamic corrective_action/1.
:- dynamic corrective_action_taken/1.
:- dynamic corrective_action_taken/2.
:- dynamic corrective_actions_taken/2.
:- dynamic court_of_justice_acting_in_judicial_capacity/1.
:- dynamic covered_by_union_harmonisation_legislation/1.
:- dynamic critical_infrastructure/1.
:- dynamic cybersecurity/1.
:- dynamic cybersecurity_technical_solution/1.
:- dynamic data_deleted_after_bias_correction/1.
:- dynamic data_from_deployers/1.
:- dynamic data_from_other_sources/1.
:- dynamic data_governance_concerns/2.
:- dynamic data_governance_practices/1.
:- dynamic data_listed_in/1.
:- dynamic data_not_transmitted_to_other_parties/1.
:- dynamic data_poisoning_attack/1.
:- dynamic data_protection_impact_assessment/1.
:- dynamic data_protection_impact_assessment_required/1.
:- dynamic data_protection_supervisory_authority/1.
:- dynamic data_requested/3.
:- dynamic data_secured_and_protected/1.
:- dynamic data_set_appropriate_statistical_properties/1.
:- dynamic data_set_complete/1.
:- dynamic data_set_free_of_errors/1.
:- dynamic data_set_relevant/1.
:- dynamic data_set_sufficiently_representative/1.
:- dynamic data_set_takes_into_account/2.
:- dynamic data_transfer_to_third_country_safeguarded/1.
:- dynamic death_of_person/1.
:- dynamic decision_related_to_natural_person/2.
:- dynamic decision_taken/2.
:- dynamic decision_taken_by_deployer/2.
:- dynamic declared_in_instructions/2.
:- dynamic deep_fake/1.
:- dynamic degree_of_cooperation/1.
:- dynamic degree_of_responsibility/1.
:- dynamic delegation_of_power/1.
:- dynamic deletes_data/2.
:- dynamic deployer/1.
:- dynamic deployer/2.
:- dynamic deployer_aware_of_incident/2.
:- dynamic deployer_exercises_control_over_input_data/2.
:- dynamic deployer_informed_of_testing/2.
:- dynamic deployer_public_authority/1.
:- dynamic deployer_suspects_causal_relationship/2.
:- dynamic deployment_confirms_identity/1.
:- dynamic describes_relevant_facts_and_reasons/2.
:- dynamic designated_by_commission/2.
:- dynamic designates/2.
:- dynamic designation_change/1.
:- dynamic designation_conditions_met/1.
:- dynamic designation_restricted/1.
:- dynamic designation_suspended/1.
:- dynamic designation_withdrawn/1.
:- dynamic designed_and_developed/2.
:- dynamic detailed_arrangements_and_procedural_safeguards/1.
:- dynamic detects_decision_making_patterns/1.
:- dynamic developed_on_basis_of/2.
:- dynamic development_process_description/1.
:- dynamic device_covered_by_regulation/1.
:- dynamic disclosure_would_jeopardise_public_or_national_security/1.
:- dynamic distributor/1.
:- dynamic distributor_considers_non_conformity/2.
:- dynamic documentation_created_or_maintained/1.
:- dynamic documented_assessment/2.
:- dynamic documented_impartiality_structure/1.
:- dynamic does_not_represent_parties/2.
:- dynamic downstream_provider/1.
:- dynamic duly_reasoned/1.
:- dynamic earliest_reassessment_request/2.
:- dynamic easily_understood_language/1.
:- dynamic effective_proportionate_dissuasive/1.
:- dynamic eligibility_and_selection_criteria/1.
:- dynamic eligible_for_sandbox/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer_deployer/1.
:- dynamic encourage_development/2.
:- dynamic enforcement_activity/1.
:- dynamic enforcement_measure/1.
:- dynamic ensure_restrictive_measures/2.
:- dynamic ensures_equivalent_level_of_compliance/1.
:- dynamic entered_into_eu_database_by/2.
:- dynamic environmental_sustainability/1.
:- dynamic equivalent_level_of_protection/1.
:- dynamic equivalent_reporting_obligation_instrument/1.
:- dynamic established_in_third_country/1.
:- dynamic established_in_union/1.
:- dynamic established_under_national_law/1.
:- dynamic ethical_review_required/1.
:- dynamic eu_database/1.
:- dynamic eu_declaration_of_conformity_accompanies/1.
:- dynamic eu_declaration_of_conformity_not_drawn_up/1.
:- dynamic eu_declaration_of_conformity_not_drawn_up_correctly/1.
:- dynamic european_standardisation_organisation/1.
:- dynamic evaluation_of_ai_office/1.
:- dynamic evaluation_of_annex_3_headings/1.
:- dynamic evaluation_of_classification/2.
:- dynamic evaluation_of_supervision_governance/1.
:- dynamic evaluation_of_transparency_list/1.
:- dynamic evaluation_of_voluntary_codes/1.
:- dynamic evaluation_under_art_79/1.
:- dynamic ex_officio/1.
:- dynamic examination_procedure/1.
:- dynamic exception_from_union_or_national_law/1.
:- dynamic exchange_of_knowledge_and_best_practices/1.
:- dynamic exchanged_on_confidential_basis/1.
:- dynamic exclusively_military_defence_national_security/1.
:- dynamic exercise_of_powers/1.
:- dynamic existing_impact_assessment_by_provider/1.
:- dynamic existing_post_market_monitoring_under_legislation/1.
:- dynamic experience_exchange_facilitated/1.
:- dynamic expert/1.
:- dynamic expert_advice/1.
:- dynamic expert_support/1.
:- dynamic exposed_to_system/2.
:- dynamic fail_safe_plan/1.
:- dynamic failed_to_comply_with_measure/2.
:- dynamic failed_to_comply_with_request/2.
:- dynamic failed_to_make_available_access/2.
:- dynamic fair_gender_representation/1.
:- dynamic fair_geographical_representation/1.
:- dynamic falsified_ai_system/1.
:- dynamic falsified_documentation/1.
:- dynamic fee/1.
:- dynamic feedback_loop/1.
:- dynamic filled_out_template/1.
:- dynamic financial_institution_deployer/1.
:- dynamic financial_institution_regulated/1.
:- dynamic fine_exceeds/2.
:- dynamic first_use/1.
:- dynamic floating_point_operation/1.
:- dynamic found_high_risk_in_evaluation/2.
:- dynamic fria_element_changed/1.
:- dynamic from/1.
:- dynamic full_assessment_completed/2.
:- dynamic fundamental_rights_authority/1.
:- dynamic fundamental_rights_impact_assessment_completed/1.
:- dynamic general_description_of_model/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generally_acknowledged_state_of_the_art/1.
:- dynamic generates_or_manipulates_deep_fake/1.
:- dynamic generates_or_manipulates_text_public_interest/1.
:- dynamic generates_synthetic_content/1.
:- dynamic grounds_for_considering_conditions_not_met/2.
:- dynamic hardware_software_interaction/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_published_with_restriction/1.
:- dynamic harmonised_standard_reference_published/1.
:- dynamic harmonised_standards_exist/1.
:- dynamic has_legal_personality/1.
:- dynamic has_plan/2.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk_ai_system_annex_3_points_6_7_8/1.
:- dynamic high_risk_ai_system_anx_3_pnt_5_b/1.
:- dynamic high_risk_ai_system_anx_3_pnt_5_c/1.
:- dynamic high_risk_ai_system_area_anx_3_pnt_2/1.
:- dynamic high_risk_ai_system_art_6_par_2/1.
:- dynamic high_risk_ai_system_for_law_enforcement_border_justice/1.
:- dynamic high_risk_ai_system_referred_to_in_annex_3/1.
:- dynamic high_risk_ai_system_related_to_harmonisation_legislation/1.
:- dynamic high_risk_ai_system_used_by_law_enforcement/1.
:- dynamic human_review_or_editorial_control/1.
:- dynamic identified_during_market_surveillance/2.
:- dynamic immediate_mitigation_measures_adopted/1.
:- dynamic immediate_permanent_deletion_requestable/1.
:- dynamic immigration_authority/1.
:- dynamic impact_assessment_on_certificates/1.
:- dynamic implementing_act_template/1.
:- dynamic importer/1.
:- dynamic importer_complied_with_obligations/2.
:- dynamic importer_indicates_contact_details/1.
:- dynamic improves_previously_completed_human_activity/1.
:- dynamic in_accordance_with_art_78/0.
:- dynamic in_direct_connection_with_financial_services/2.
:- dynamic incorrect_information/1.
:- dynamic independent_of_competitor/2.
:- dynamic independent_of_economic_interest_operator/2.
:- dynamic independent_of_provider/2.
:- dynamic indicates_point_of_contact/2.
:- dynamic inform_commission/2.
:- dynamic information_and_documentation/1.
:- dynamic information_conforms_accessibility_requirements/1.
:- dynamic information_gathered_on_own_initiative/1.
:- dynamic information_obtained_by_authority/1.
:- dynamic information_provided_at_first_interaction/1.
:- dynamic information_provided_clear_distinguishable/1.
:- dynamic informed_board/1.
:- dynamic informed_consent/1.
:- dynamic informed_consent_given/1.
:- dynamic informed_no_objection/2.
:- dynamic informed_of_serious_incident/2.
:- dynamic informs_competent_authorities/2.
:- dynamic infringed_regulation/1.
:- dynamic infringement/1.
:- dynamic initial_identification_of_suspect/2.
:- dynamic initial_provider/1.
:- dynamic initial_report_incomplete/1.
:- dynamic input_data/1.
:- dynamic input_output_maximum_size/1.
:- dynamic input_output_modality_and_format/1.
:- dynamic instructions_for_use/1.
:- dynamic instructions_for_use_accompany/1.
:- dynamic instructions_for_use_given/2.
:- dynamic insufficient_documentation/1.
:- dynamic integration_choice_available/1.
:- dynamic integration_information/1.
:- dynamic intended_for_immigration_or_asylum/1.
:- dynamic intended_for_law_enforcement/1.
:- dynamic intended_for_union_institutions/1.
:- dynamic intended_purpose/1.
:- dynamic intentional_or_negligent/1.
:- dynamic interaction_analysis_with_other_ai_systems/1.
:- dynamic interacts_directly_with_natural_persons/1.
:- dynamic international_organisation/1.
:- dynamic investigate_causes/2.
:- dynamic investigation_performed/2.
:- dynamic involved_in_application_of_regulation/1.
:- dynamic involves_deployer/2.
:- dynamic involves_multiple_member_states/1.
:- dynamic involves_provider/2.
:- dynamic involves_system/2.
:- dynamic keep_at_disposal/2.
:- dynamic keep_declaration_up_to_date/2.
:- dynamic keep_documentation_available/2.
:- dynamic language_easily_understood/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_area/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_consent_exception_applies/1.
:- dynamic law_enforcement_deployer/1.
:- dynamic legal_effects/1.
:- dynamic legal_representative_established_in_union/1.
:- dynamic liability_assumed_by_member_state/1.
:- dynamic liability_insurance/1.
:- dynamic lifecycle/1.
:- dynamic lifetime_performance_data/1.
:- dynamic limited_disclosure_artistic_work/1.
:- dynamic linked_enterprise/1.
:- dynamic list_kept_up_to_date/1.
:- dynamic list_notified_to_commission/1.
:- dynamic list_of_systemic_risk_models/1.
:- dynamic list_publicly_available/1.
:- dynamic listed_in_annex_3_point_1/1.
:- dynamic listed_in_annex_3_points_2_to_8/1.
:- dynamic local_public_authorities/1.
:- dynamic logs_automatically_generated/1.
:- dynamic logs_under_control_of_provider/1.
:- dynamic logs_under_deployer_control/2.
:- dynamic made_available_on_union_market/2.
:- dynamic made_by/2.
:- dynamic makes_accessible_to_public/2.
:- dynamic makes_substantial_modification/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate_task/1.
:- dynamic mandate_terminated/1.
:- dynamic manner_infringement_became_known/1.
:- dynamic manufacturer_applied_all_harmonised_standards/2.
:- dynamic manufacturer_applied_standards_covering_chapter_3_section_2/2.
:- dynamic market_surveillance_activity/1.
:- dynamic market_surveillance_authority/1.
:- dynamic matched_input_data/1.
:- dynamic materially_influences_decision_making/1.
:- dynamic may_process_special_categories/2.
:- dynamic measure/2.
:- dynamic measure_taken_by/2.
:- dynamic measurement_methodology/1.
:- dynamic meets_condition_art_51_1_a/1.
:- dynamic meets_conditions_article_51/1.
:- dynamic meets_requirements/2.
:- dynamic member_state_designates/1.
:- dynamic member_state_directly_responsible/1.
:- dynamic member_state_fails_to_take_corrective_measures/1.
:- dynamic member_state_identifies/1.
:- dynamic member_state_informs_commission/2.
:- dynamic member_state_informs_other_member_states/2.
:- dynamic member_states/1.
:- dynamic methodology_for_risk_evaluation/1.
:- dynamic micro_or_small_enterprise/1.
:- dynamic microenterprise/1.
:- dynamic migration_asylum_border_control_area/1.
:- dynamic misclassified_to_circumvent_requirements/2.
:- dynamic mitigation_action_taken/1.
:- dynamic mitigation_measure/1.
:- dynamic model_architecture_and_parameters/1.
:- dynamic model_evasion_attack/1.
:- dynamic model_flaw/1.
:- dynamic model_licence/1.
:- dynamic model_poisoning_attack/1.
:- dynamic model_tasks_and_integration/1.
:- dynamic modifies_intended_purpose/2.
:- dynamic multilateral_confidentiality_arrangement/2.
:- dynamic must_design_for_transparency/1.
:- dynamic must_determine/2.
:- dynamic must_outline/2.
:- dynamic must_provide_instructions/1.
:- dynamic must_state/2.
:- dynamic narrow_procedural_task/1.
:- dynamic national_authority_art_74_8/1.
:- dynamic national_competent_authority/1.
:- dynamic national_competent_authority_chosen/2.
:- dynamic national_financial_supervision_authority/1.
:- dynamic national_level_registration/1.
:- dynamic national_public_authority_or_body/1.
:- dynamic nature_gravity_duration/1.
:- dynamic nature_gravity_duration_of_infringement/1.
:- dynamic necessary_for_mandate/1.
:- dynamic necessary_for_purpose/2.
:- dynamic necessary_information_and_documentation/1.
:- dynamic new_provider/1.
:- dynamic no_authorised_representative_appointed/1.
:- dynamic no_certificates_issued_amended_or_reissued/1.
:- dynamic no_conflicting_activity/2.
:- dynamic no_consultancy_services/2.
:- dynamic no_harmonised_standard_reference_published/2.
:- dynamic no_negative_effect_on_subjects/1.
:- dynamic no_objection/2.
:- dynamic no_risk_to_health_safety_or_fundamental_rights/1.
:- dynamic non_commercial_interest/1.
:- dynamic non_compliance_of/1.
:- dynamic non_compliance_with_prohibition/1.
:- dynamic non_personal_data/1.
:- dynamic nonconformity/1.
:- dynamic not_directly_involved_in_design/2.
:- dynamic not_directly_involved_in_development/2.
:- dynamic not_directly_involved_in_marketing/2.
:- dynamic not_directly_involved_in_use/2.
:- dynamic not_high_risk_pursuant_to/1.
:- dynamic notification_received/1.
:- dynamic notified/1.
:- dynamic notified_body_capable_of_supporting_existing_certificates/1.
:- dynamic notified_body_compliance_assessed/2.
:- dynamic notified_body_does_not_meet_requirements/1.
:- dynamic notified_body_failing_to_fulfil_obligations/1.
:- dynamic notified_body_no_longer_meets_requirements/1.
:- dynamic notifying_authority/1.
:- dynamic number_of_undertakings_entering_market/1.
:- dynamic objection_issued/2.
:- dynamic objection_period/1.
:- dynamic objective_identify_suspect/1.
:- dynamic objective_prevention_threat/1.
:- dynamic objective_targeted_search_victims/1.
:- dynamic obligation_set_out_in_chapter_5_section_2/1.
:- dynamic obligation_set_out_in_chapter_5_section_3/1.
:- dynamic obtained/2.
:- dynamic obtains_information_or_data/2.
:- dynamic obvious_interaction/1.
:- dynamic organisational_structure_ensures_confidence/1.
:- dynamic organised_to_safeguard_independence/1.
:- dynamic other_relevant_authority/1.
:- dynamic other_requirement_infringement/1.
:- dynamic other_undertaking/1.
:- dynamic output_marked_machine_readable/1.
:- dynamic output_used_in_union/1.
:- dynamic oversight_assigned_natural_person/1.
:- dynamic oversight_measure/1.
:- dynamic participates_in_coordination_activities/1.
:- dynamic participates_in_standardisation/1.
:- dynamic participating_in_single_supervisory_mechanism/1.
:- dynamic partner_enterprise/1.
:- dynamic penalty_rule/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_consistently/2.
:- dynamic performs_profiling/1.
:- dynamic periodic_audit/1.
:- dynamic periodic_evaluation/1.
:- dynamic periodic_report/1.
:- dynamic periodic_review/1.
:- dynamic permanent_availability_of_personnel/1.
:- dynamic person_acting_on_behalf_of_public_authority/1.
:- dynamic personal_data/1.
:- dynamic personal_data_deleted_after_test/1.
:- dynamic personnel_experience_knowledge_ai_systems/1.
:- dynamic personnel_experience_knowledge_data/1.
:- dynamic personnel_experience_knowledge_requirements/1.
:- dynamic personnel_maintain_confidentiality/2.
:- dynamic placed_on_market/1.
:- dynamic placed_on_market_in_union/1.
:- dynamic placed_on_market_together_with_product/2.
:- dynamic placed_on_market_with_product/1.
:- dynamic placed_on_union_market/1.
:- dynamic placing_on_market/1.
:- dynamic planned_cessation/1.
:- dynamic poses_significant_risk_of_harm/1.
:- dynamic post_market_monitoring_plan/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic post_remote_biometric_identification_use/2.
:- dynamic preceding_financial_year/1.
:- dynamic predetermined_change/2.
:- dynamic predictions_reversible/1.
:- dynamic preparatory_task_to_assessment/1.
:- dynamic prescribed_period/2.
:- dynamic presents_serious_risk/1.
:- dynamic previous_infringements/1.
:- dynamic previously_conducted_fria/1.
:- dynamic private_entity_providing_public_services/1.
:- dynamic procedure_provided_for/1.
:- dynamic procedures_account_for_ai_system_complexity/1.
:- dynamic procedures_account_for_provider_size/1.
:- dynamic procedures_account_for_provider_structure/1.
:- dynamic procedures_account_for_sector/1.
:- dynamic processes_personal_data/1.
:- dynamic processes_personal_data_in_accordance_with_gdpr/1.
:- dynamic processing_records_include_reasons/1.
:- dynamic product_contains_ai_system/1.
:- dynamic product_covered_by_harmonisation_legislation/1.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic product_manufacturer_opt_out_available/1.
:- dynamic professional_secrecy_obligation/1.
:- dynamic profiling/1.
:- dynamic prohibited_ai_practice_infringement/1.
:- dynamic proper_human_review/1.
:- dynamic proportionality_and_appropriateness/1.
:- dynamic proportionate_to_nature_and_risk/2.
:- dynamic proposed_by/2.
:- dynamic prospective_deployer/1.
:- dynamic provide_information_on_request/2.
:- dynamic provided_digitally/1.
:- dynamic provider_acting_contrary_to_obligations/1.
:- dynamic provider_assumes_responsibility/2.
:- dynamic provider_aware_of_incident/2.
:- dynamic provider_complied_with_obligations/2.
:- dynamic provider_confirms_another_qualified_notified_body/2.
:- dynamic provider_contact_details_indicated/1.
:- dynamic provider_established_in_third_country/1.
:- dynamic provider_established_in_union/1.
:- dynamic provider_suspects_causal_relationship/2.
:- dynamic providers_documentation/1.
:- dynamic provisional_validity_extended/2.
:- dynamic public_authority/1.
:- dynamic public_authority_deployer/1.
:- dynamic public_authority_third_country/1.
:- dynamic public_body/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purely_personal_non_professional_activity/1.
:- dynamic put_into_service/1.
:- dynamic put_into_service_in_union/1.
:- dynamic put_into_service_under_name_or_trademark/2.
:- dynamic puts_name_or_trademark_on/2.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert_scientific_panel/1.
:- dynamic quality_management_system/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_suspect/2.
:- dynamic reasonable_likelihood_of_link/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/1.
:- dynamic reasoned_request_for_source_code/1.
:- dynamic reasoned_request_for_testing/2.
:- dynamic reasoned_request_from_competent_authority/2.
:- dynamic reasons_to_doubt_competence/1.
:- dynamic reasons_to_doubt_continued_fulfilment/1.
:- dynamic reassessment_request_contains_new_reasons/1.
:- dynamic recall_of_ai_system/1.
:- dynamic recall_procedure_established/1.
:- dynamic recognised_ai_expertise/1.
:- dynamic reduce_and_mitigate_risks/1.
:- dynamic reference_database/1.
:- dynamic referred_to_in_art_74_par_8_or_par_9/1.
:- dynamic registered_in_accordance_with/2.
:- dynamic registered_in_eu_database/1.
:- dynamic registered_office_in_union/1.
:- dynamic registration_completed_without_undue_delay/1.
:- dynamic registration_in_eu_database_not_carried_out/1.
:- dynamic registration_information/1.
:- dynamic registration_obligation/1.
:- dynamic registration_obligation_fulfilled/1.
:- dynamic regulated_credit_institution/1.
:- dynamic release_date_and_distribution/1.
:- dynamic relevant_and_limited_to_necessary/2.
:- dynamic relevant_competent_authority/1.
:- dynamic relevant_documentation/1.
:- dynamic relevant_for_high_risk_ai_systems/1.
:- dynamic relevant_information/2.
:- dynamic relevant_provisions_of_international_agreements/1.
:- dynamic relevant_provisions_of_trade_agreements/1.
:- dynamic relevant_software_versions/1.
:- dynamic remains_high_risk/1.
:- dynamic remains_on_premises/2.
:- dynamic remote/1.
:- dynamic replaces_or_influences_human_assessment/1.
:- dynamic report_on_findings/1.
:- dynamic request_not_accepted/2.
:- dynamic requested_harmonised_standard/3.
:- dynamic requirement_set_out_in_chapter_3_section_2/1.
:- dynamic research_testing_development_prior_to_market/1.
:- dynamic resilient_against_unauthorised_alteration/1.
:- dynamic resilient_to_errors/1.
:- dynamic resources_of_national_competent_authorities/1.
:- dynamic restricted_part_of_standard/2.
:- dynamic restrictive_measures_taken/1.
:- dynamic review_of_standardisation_energy_efficiency/1.
:- dynamic right_otherwise_provided_under_union_law/1.
:- dynamic risk/1.
:- dynamic risk_assessment_performed/2.
:- dynamic risk_situation/1.
:- dynamic robustness/1.
:- dynamic rules_of_procedure/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of_device/1.
:- dynamic same_objective/1.
:- dynamic sandbox_plan/1.
:- dynamic sandbox_procedures/1.
:- dynamic sandbox_terms_and_conditions/1.
:- dynamic sandbox_testing/1.
:- dynamic satisfies_cybersecurity_requirements/1.
:- dynamic satisfies_organisational_requirements/1.
:- dynamic satisfies_process_requirements/1.
:- dynamic satisfies_quality_management_requirements/1.
:- dynamic satisfies_resource_requirements/1.
:- dynamic scientific_research_development_sole_purpose/1.
:- dynamic sectoral_group_of_notified_bodies/1.
:- dynamic sectoral_legal_act_provides_procedures/1.
:- dynamic sectoral_market_surveillance_authority/2.
:- dynamic sectoral_regulatory_specificities/1.
:- dynamic secure_non_public_section/1.
:- dynamic security_and_privacy_measures/1.
:- dynamic sensitive_information/1.
:- dynamic sensitive_operational_data/1.
:- dynamic sensitive_operational_data_excluded/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_identified/2.
:- dynamic serious_incident_occurred/1.
:- dynamic seriousness_of_failure/1.
:- dynamic significant_change_in_design/1.
:- dynamic similar_case/1.
:- dynamic similarly_significantly_affects/1.
:- dynamic simplified_form/1.
:- dynamic single_information_platform/1.
:- dynamic smes/1.
:- dynamic source_code_access_necessary_for_conformity_assessment/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specific_setting/1.
:- dynamic specified_not_to_be_changed_into_high_risk/1.
:- dynamic standard_covers_requirement/2.
:- dynamic standardisation_development_process/1.
:- dynamic standardisation_request_covers/2.
:- dynamic standardised_template/1.
:- dynamic standards_do_not_comply_with_request/2.
:- dynamic standards_insufficient_fundamental_rights/2.
:- dynamic standards_not_delivered_within_deadline/2.
:- dynamic start_ups/1.
:- dynamic state_of_penalties/1.
:- dynamic still_needed/2.
:- dynamic storage_or_transport_conditions_jeopardise_compliance/1.
:- dynamic storage_or_transport_conditions_jeopardise_compliance/2.
:- dynamic strict_access_controls/1.
:- dynamic strictly_necessary/2.
:- dynamic subject/1.
:- dynamic subject_to_other_union_law_ce_marking/1.
:- dynamic submit_copy_upon_request/2.
:- dynamic substantial_modification/1.
:- dynamic substantially_alters_input/1.
:- dynamic sufficient_ai_literacy_level/1.
:- dynamic sufficient_internal_competences/1.
:- dynamic sufficient_reason_non_compliance/2.
:- dynamic sufficient_reason_to_consider/2.
:- dynamic sufficient_reason_to_consider_high_risk/2.
:- dynamic sufficient_reason_to_consider_nonconformity/1.
:- dynamic supervises/2.
:- dynamic supervises_application_of_union_law/1.
:- dynamic supplement_to_certificate/1.
:- dynamic supplied_incorrect_information/1.
:- dynamic surveillance_of_quality_management_system/1.
:- dynamic suspension_or_termination_notified/2.
:- dynamic system_presents_risk/1.
:- dynamic system_registered_in_eu_database/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_gpaim/1.
:- dynamic tacit_approval_applies/1.
:- dynamic tailored_to_needs/2.
:- dynamic takes_into_account_sme_interests/1.
:- dynamic technical_documentation_available/1.
:- dynamic technical_documentation_drawn_up/1.
:- dynamic technical_documentation_not_available/1.
:- dynamic technical_limitations_on_reuse/1.
:- dynamic technical_means_for_integration/1.
:- dynamic technical_redundancy_solution/1.
:- dynamic technical_solution_effective/1.
:- dynamic terminate_mandate/1.
:- dynamic tested_in_member_state/2.
:- dynamic testing_agreement_concluded/2.
:- dynamic testing_and_auditing_exhausted_or_insufficient/1.
:- dynamic testing_data/1.
:- dynamic testing_duration_extended/1.
:- dynamic testing_duration_within_limit/1.
:- dynamic testing_effectively_overseen/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_in_real_world_conditions_compliant/1.
:- dynamic testing_organised_by_market_surveillance/1.
:- dynamic testing_registered/2.
:- dynamic testing_registered_secure_non_public_section/2.
:- dynamic testing_suspended_until_mitigation/1.
:- dynamic testing_terminated/1.
:- dynamic third_country_conformity_assessment_body/1.
:- dynamic third_country_provider/1.
:- dynamic third_party_supplies/2.
:- dynamic timeline_for_remedy/1.
:- dynamic total_extension_not_exceeding/1.
:- dynamic total_worldwide_annual_turnover/1.
:- dynamic training_content_summary/1.
:- dynamic training_data/1.
:- dynamic training_testing_validation_data_info/1.
:- dynamic undertaking/1.
:- dynamic union_agency/1.
:- dynamic union_ai_testing_support/1.
:- dynamic union_harmonisation_legislation_annex_1_section_1/1.
:- dynamic union_harmonisation_legislation_applies/1.
:- dynamic union_institution_deployer/1.
:- dynamic union_technical_documentation_assessment_certificate/1.
:- dynamic untargeted_law_enforcement_use/1.
:- dynamic upgrade_ai_office/1.
:- dynamic urgency_justified/1.
:- dynamic use_documented_in_police_file/2.
:- dynamic use_limited_to_strictly_necessary/2.
:- dynamic use_may_present_risk/2.
:- dynamic use_not_restricted_to_national_territory/1.
:- dynamic use_period/1.
:- dynamic used_by_deployer/1.
:- dynamic uses/2.
:- dynamic uses_for_development/2.
:- dynamic uses_training_techniques/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic verify_technical_documentation/1.
:- dynamic verifying_natural_person/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic widespread_infringement_occurred/1.
:- dynamic withdrawal_does_not_affect_prior_activities/1.
:- dynamic withdrawal_of/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic withdrawal_without_detriment/1.
:- dynamic within_period/2.
:- dynamic without_undue_delay/1.
:- dynamic workplace_use/2.
:- dynamic written_mandate/1.

% ==== SIGNATURE (Phase A) ====
declared(ai_system/1, 'machine‑based system with autonomy', '1').
declared(risk/1, 'probability and severity of harm', '2').
declared(provider/1, 'entity that develops or places an AI system', '3').
declared(deployer/1, 'entity using an AI system under its authority', '4').
declared(authorised_representative/1, 'person in the Union mandated by a provider', '5').
declared(importer/1, 'entity placing an AI system on the market in the Union', '6').
declared(distributor/1, 'entity in the supply chain other than provider or importer', '7').
declared(operator/1, 'provider, product manufacturer, deployer, authorised representative, importer or distributor', '8').
declared(placing_on_market/1, 'first making available of an AI system on the Union market', '9').
declared(making_available_on_market/1, 'supply of an AI system for distribution or use on the Union market', '10').
declared(putting_into_service/1, 'supply of an AI system for first use by the deployer', '11').
declared(intended_purpose/1, 'use for which an AI system is intended by the provider', '12').
declared(reasonably_foreseeable_misuse/1, 'use not in accordance with intended purpose but foreseeable', '13').
declared(safety_component/1, 'component fulfilling a safety function', '14').
declared(instructions_for_use/1, 'information provided by the provider to the deployer', '15').
declared(recall_of_ai_system/1, 'measure to return or disable an AI system', '16').
declared(withdrawal_of_ai_system/1, 'measure to prevent AI system being made available', '17').
declared(performance_of_ai_system/1, 'ability of an AI system to achieve its intended purpose', '18').
declared(notifying_authority/1, 'national authority for conformity assessment procedures', '19').
declared(conformity_assessment/1, 'process to demonstrate requirements are fulfilled', '20').
declared(conformity_assessment_body/1, 'body performing third‑party conformity assessment', '21').
declared(notified_body/1, 'conformity assessment body notified in accordance with the regulation', '22').
declared(substantial_modification/1, 'change to an AI system after market placement affecting compliance', '23').
declared(ce_marking/1, 'mark indicating conformity with requirements', '24').
declared(post_market_monitoring_system/1, 'activities by providers to collect and review experience', '25').
declared(market_surveillance_authority/1, 'national authority carrying out market surveillance', '26').
declared(harmonised_standard/1, 'standard defined in EU legislation', '27').
declared(common_specification/1, 'set of technical specifications to comply with requirements', '28').
declared(training_data/1, 'data used for training an AI system', '29').
declared(validation_data/1, 'data used for evaluating and tuning a trained AI system', '30').
declared(validation_data_set/1, 'separate data set for validation', '31').
declared(testing_data/1, 'data used for independent evaluation before market placement', '32').
declared(input_data/1, 'data provided to an AI system to produce output', '33').
declared(biometric_data/1, 'personal data from physical or behavioural characteristics', '34').
declared(biometric_identification/1, 'automated recognition to establish identity by comparing biometric data', '35').
declared(biometric_verification/1, 'one‑to‑one verification of identity using biometric data', '36').
declared(special_categories_of_personal_data/1, 'categories of personal data defined in GDPR', '37').
declared(sensitive_operational_data/1, 'operational data related to criminal investigations', '38').
declared(emotion_recognition_system/1, 'AI system identifying emotions from biometric data', '39').
declared(biometric_categorisation_system/1, 'AI system assigning persons to categories based on biometric data', '40').
declared(remote_biometric_identification_system/1, 'AI system identifying persons without active involvement at a distance', '41').
declared(real_time_remote_biometric_identification_system/1, 'remote biometric ID system with no significant delay', '42').
declared(post_remote_biometric_identification_system/1, 'remote biometric ID system that is not real‑time', '43').
declared(publicly_accessible_space/1, 'any place accessible to an undetermined number of persons', '44').
declared(law_enforcement_authority/1, 'public authority for criminal investigation and prosecution', '45').
declared(law_enforcement/1, 'activities carried out by law enforcement authorities', '46').
declared(ai_office/1, 'Commission function for AI governance', '47').
declared(national_competent_authority/1, 'notifying authority or market surveillance authority', '48').
declared(serious_incident/1, 'incident leading to death, serious harm, or critical disruption', '49').
declared(personal_data/1, 'personal data as defined in GDPR', '50').
declared(non_personal_data/1, 'data other than personal data', '51').
declared(profiling/1, 'profiling as defined in GDPR', '52').
declared(real_world_testing_plan/1, 'document describing real‑world testing objectives and methodology', '53').
declared(sandbox_plan/1, 'document describing sandbox objectives and conditions', '54').
declared(ai_regulatory_sandbox/1, 'controlled framework for testing AI systems under supervision', '55').
declared(ai_literacy/1, 'knowledge allowing informed deployment of AI systems', '56').
declared(testing_in_real_world_conditions/1, 'temporary testing of an AI system in real‑world conditions', '57').
declared(subject/1, 'natural person participating in real‑world testing', '58').
declared(informed_consent/1, 'freely given specific consent for participation', '59').
declared(deep_fake/1, 'AI‑generated content that falsely appears authentic', '60').
declared(widespread_infringement/1, 'act contrary to Union law affecting multiple Member States', '61').
declared(critical_infrastructure/1, 'critical infrastructure as defined in EU law', '62').
declared(general_purpose_ai_model/1, 'AI model capable of a wide range of tasks', '63').
declared(high_impact_capabilities/1, 'capabilities matching advanced general‑purpose AI models', '64').
declared(systemic_risk/1, 'risk specific to high‑impact capabilities of general‑purpose AI models', '65').
declared(general_purpose_ai_system/1, 'AI system based on a general‑purpose AI model', '66').
declared(floating_point_operation/1, 'operation involving floating‑point numbers', '67').
declared(downstream_provider/1, 'provider integrating an AI model into a system', '68').
declared(remote/1, 'without active involvement', '41').
declared(real_time/1, 'without significant delay', '42').
declared(product_manufacturer/1, 'entity manufacturing a product', '8').
declared(notified/1, 'entity that has been notified', '22').
remote_biometric_identification_system(S) :-
    ai_system(S),
    remote(S),
    biometric_identification(S).
real_time_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    real_time(S).
post_remote_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    \+ real_time_remote_biometric_identification_system(S).
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
notified_body(B) :-
    conformity_assessment_body(B),
    notified(B).
provenance(remote_biometric_identification_system/1, '41').
provenance(real_time_remote_biometric_identification_system/1, '42').
provenance(post_remote_biometric_identification_system/1, '43').
provenance(operator/1, '8').
provenance(notified_body/1, '22').

% ==== celex:32024R1689/oj#art_1 ====
declared(objective_purpose/1, 'the purpose the regulation pursues', 'celex:32024R1689/oj#art_1').
declared(lays_down/1, 'what the regulation lays down', 'celex:32024R1689/oj#art_1').
objective_purpose(improve_functioning_internal_market).
objective_purpose(promote_uptake_human_centric_trustworthy_ai).
objective_purpose(ensure_high_level_protection_health_safety_fundamental_rights).
objective_purpose(ensure_high_level_protection_democracy).
objective_purpose(ensure_high_level_protection_rule_of_law).
objective_purpose(ensure_high_level_protection_environmental_protection).
objective_purpose(protect_against_harmful_effects_ai_systems_in_union).
objective_purpose(support_innovation).
lays_down(harmonised_rules_placing_on_market_putting_into_service_use_ai_systems).
lays_down(prohibitions_certain_ai_practices).
lays_down(specific_requirements_high_risk_ai_systems).
lays_down(obligations_operators_high_risk_ai_systems).
lays_down(harmonised_transparency_rules_certain_ai_systems).
lays_down(harmonised_rules_placing_on_market_general_purpose_ai_models).
lays_down(rules_market_monitoring_market_surveillance_governance_enforcement).
lays_down(measures_support_innovation_focus_smes_startups).
provenance(objective_purpose/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies_to/1, 'entity or person to which the regulation applies', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to/1, 'entity, system, or activity to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(established_in_union/1, 'entity established or located in the Union', 'celex:32024R1689/oj#art_2').
declared(established_in_third_country/1, 'entity established or located in a third country', 'celex:32024R1689/oj#art_2').
declared(output_used_in_union/1, 'output of AI system used in the Union', 'celex:32024R1689/oj#art_2').
declared(placed_on_market_in_union/1, 'AI system or model placed on the market in the Union', 'celex:32024R1689/oj#art_2').
declared(put_into_service_in_union/1, 'AI system put into service in the Union', 'celex:32024R1689/oj#art_2').
declared(placed_on_market_with_product/1, 'AI system placed on market together with product under own name or trademark', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'person affected by AI system output located in the Union', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system_related_to_harmonisation_legislation/1, 'high-risk AI system related to products covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_2').
declared(exclusively_military_defence_national_security/1, 'AI system used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(public_authority_third_country/1, 'public authority in a third country', 'celex:32024R1689/oj#art_2').
declared(international_organisation/1, 'international organisation', 'celex:32024R1689/oj#art_2').
declared(adequate_safeguards_fundamental_rights/1, 'adequate safeguards for protection of fundamental rights and freedoms', 'celex:32024R1689/oj#art_2').
declared(scientific_research_development_sole_purpose/1, 'AI system or model specifically developed and put into service for sole purpose of scientific research and development', 'celex:32024R1689/oj#art_2').
declared(research_testing_development_prior_to_market/1, 'research, testing or development activity regarding AI systems or models prior to being placed on market or put into service', 'celex:32024R1689/oj#art_2').
declared(purely_personal_non_professional_activity/1, 'deployer who is natural person using AI system in course of purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(free_open_source_licence/1, 'AI system released under free and open-source licence', 'celex:32024R1689/oj#art_2').
regulation_applies_to(X) :-
    provider(X),
    placing_on_market(S),
    placed_on_market_in_union(S).
regulation_applies_to(X) :-
    provider(X),
    putting_into_service(S),
    put_into_service_in_union(S).
regulation_applies_to(X) :-
    provider(X),
    general_purpose_ai_model(M),
    placing_on_market(M),
    placed_on_market_in_union(M).
regulation_applies_to(X) :-
    deployer(X),
    established_in_union(X).
regulation_applies_to(X) :-
    provider(X),
    established_in_third_country(X),
    ai_system(S),
    output_used_in_union(output(S)).
regulation_applies_to(X) :-
    deployer(X),
    established_in_third_country(X),
    ai_system(S),
    output_used_in_union(output(S)).
regulation_applies_to(X) :-
    importer(X),
    ai_system(_S).
regulation_applies_to(X) :-
    distributor(X),
    ai_system(_S).
regulation_applies_to(X) :-
    product_manufacturer(X),
    placed_on_market_with_product(placement(X, S)),
    ai_system(S).
regulation_applies_to(X) :-
    product_manufacturer(X),
    putting_into_service(S),
    put_into_service_in_union(S),
    ai_system(S).
regulation_applies_to(X) :-
    authorised_representative(X),
    established_in_third_country(X).
regulation_applies_to(X) :-
    affected_person(X),
    established_in_union(X).
regulation_applies_to_limited(S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S).
regulation_does_not_apply_to(area_outside_union_law).
regulation_does_not_apply_to(national_security_competence).
regulation_does_not_apply_to(S) :-
    ai_system(S),
    placed_on_market_in_union(S),
    exclusively_military_defence_national_security(S).
regulation_does_not_apply_to(S) :-
    ai_system(S),
    put_into_service_in_union(S),
    exclusively_military_defence_national_security(S).
regulation_does_not_apply_to(S) :-
    ai_system(S),
    established_in_third_country(_E),
    output_used_in_union(output(S)),
    exclusively_military_defence_national_security(S).
regulation_does_not_apply_to(X) :-
    public_authority_third_country(X),
    international_cooperation_law_enforcement_judicial(X),
    adequate_safeguards_fundamental_rights(X).
regulation_does_not_apply_to(X) :-
    international_organisation(X),
    international_cooperation_law_enforcement_judicial(X),
    adequate_safeguards_fundamental_rights(X).
regulation_does_not_apply_to(S) :-
    ai_system(S),
    scientific_research_development_sole_purpose(S).
regulation_does_not_apply_to(M) :-
    general_purpose_ai_model(M),
    scientific_research_development_sole_purpose(M).
regulation_does_not_apply_to(activity(A)) :-
    research_testing_development_prior_to_market(A).
regulation_does_not_apply_to(X) :-
    deployer(X),
    purely_personal_non_professional_activity(X).
regulation_does_not_apply_to(S) :-
    ai_system(S),
    free_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_practice(S).
high_risk_ai_system(S) :-
    ai_system(S),
    classified_as_high_risk(S).
prohibited_practice(S) :-
    ai_system(S),
    falls_under_article_5(S).
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(placed_on_market_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(put_into_service_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(placed_on_market_with_product/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_related_to_harmonisation_legislation/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(public_authority_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(international_organisation/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_development_sole_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_prior_to_market/1, 'celex:32024R1689/oj#art_2').
provenance(purely_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_limited/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(prohibited_practice/1, 'celex:32024R1689/oj#art_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_105').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_109').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_2', 'celex:32022R2065/oj#chp_2').
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').

% ==== celex:32024R1689/oj#art_4 ====
declared(must_ensure_ai_literacy/2, 'provider or deployer must ensure sufficient AI literacy of staff and others dealing with AI systems', 'celex:32024R1689/oj#art_4').
declared(ai_literacy_measure/1, 'measure taken to ensure sufficient level of AI literacy', 'celex:32024R1689/oj#art_4').
declared(sufficient_ai_literacy_level/1, 'sufficient level of AI literacy achieved', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Provider, S) :-
    provider(Provider),
    ai_system(S),
    ai_literacy_measure(M),
    sufficient_ai_literacy_level(M).
must_ensure_ai_literacy(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    ai_literacy_measure(M),
    sufficient_ai_literacy_level(M).
ai_literacy_measure(M) :-
    must_ensure_ai_literacy(_, _),
    considers_technical_knowledge(M),
    considers_experience(M),
    considers_education(M),
    considers_training(M),
    considers_context_of_use(M),
    considers_affected_persons(M).
considers_technical_knowledge(M) :-
    ai_literacy_measure(M).
considers_experience(M) :-
    ai_literacy_measure(M).
considers_education(M) :-
    ai_literacy_measure(M).
considers_training(M) :-
    ai_literacy_measure(M).
considers_context_of_use(M) :-
    ai_literacy_measure(M).
considers_affected_persons(M) :-
    ai_literacy_measure(M).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(ai_literacy_measure/1, 'celex:32024R1689/oj#art_4').
provenance(sufficient_ai_literacy_level/1, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulation/1, 'AI system using subliminal or manipulative techniques to distort behaviour causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_vulnerability_exploitation/1, 'AI system exploiting vulnerabilities of persons due to age, disability or social/economic situation to distort behaviour causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system evaluating or classifying persons based on social behaviour leading to detrimental or unfavourable treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment/1, 'AI system making risk assessments to predict criminal offence risk based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(prohibited_facial_recognition_database_creation/1, 'AI system creating or expanding facial recognition databases through untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference_workplace_education/1, 'AI system inferring emotions in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'biometric categorisation system categorising persons based on biometric data to deduce sensitive attributes', 'celex:32024R1689/oj#art_5').
declared(prohibited_real_time_remote_biometric_identification_law_enforcement/1, 'use of real-time remote biometric identification in publicly accessible spaces for law enforcement without meeting strict necessity conditions', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_identification_law_enforcement/1, 'use of real-time remote biometric identification in publicly accessible spaces for law enforcement meeting all conditions', 'celex:32024R1689/oj#art_5').
declared(permitted_criminal_risk_assessment_support/1, 'AI system supporting human assessment of criminal activity involvement based on objective facts', 'celex:32024R1689/oj#art_5').
declared(permitted_emotion_inference_medical_safety/1, 'AI system inferring emotions for medical or safety reasons in workplace or education', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_categorisation_labelling_filtering/1, 'labelling or filtering of lawfully acquired biometric datasets', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_categorisation_law_enforcement/1, 'categorising of biometric data in the area of law enforcement', 'celex:32024R1689/oj#art_5').
declared(objective_targeted_search_victims/1, 'targeted search for specific victims of abduction, trafficking or sexual exploitation, or search for missing persons', 'celex:32024R1689/oj#art_5').
declared(objective_prevention_threat/1, 'prevention of specific, substantial and imminent threat to life or physical safety, or genuine and present/foreseeable terrorist threat', 'celex:32024R1689/oj#art_5').
declared(objective_identify_suspect/1, 'localisation or identification of person suspected of criminal offence for investigation, prosecution or penalty execution', 'celex:32024R1689/oj#art_5').
declared(deployment_confirms_identity/1, 'deployment only to confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(considers_nature_of_situation/1, 'deployment takes into account nature of situation including seriousness, probability and scale of harm', 'celex:32024R1689/oj#art_5').
declared(considers_consequences_for_rights/1, 'deployment takes into account consequences for rights and freedoms of all persons concerned', 'celex:32024R1689/oj#art_5').
declared(complies_with_safeguards/1, 'deployment complies with necessary and proportionate safeguards regarding temporal, geographic and personal limitations', 'celex:32024R1689/oj#art_5').
declared(fundamental_rights_impact_assessment_completed/1, 'fundamental rights impact assessment completed as provided for in Article 27', 'celex:32024R1689/oj#art_5').
declared(registered_in_eu_database/1, 'system registered in EU database according to Article 49', 'celex:32024R1689/oj#art_5').
declared(prior_authorisation_obtained/1, 'prior authorisation granted by judicial authority or independent administrative authority with binding decision', 'celex:32024R1689/oj#art_5').
declared(authorisation_based_on_objective_evidence/1, 'authorisation granted on basis of objective evidence or clear indications that use is necessary and proportionate', 'celex:32024R1689/oj#art_5').
declared(authorisation_considers_elements/1, 'authority takes into account elements referred to in paragraph 2 when deciding', 'celex:32024R1689/oj#art_5').
declared(no_adverse_decision_solely_on_output/1, 'no decision producing adverse legal effect taken based solely on output of real-time remote biometric identification system', 'celex:32024R1689/oj#art_5').
declared(notified_to_market_surveillance_and_dpa/1, 'use notified to relevant market surveillance authority and national data protection authority', 'celex:32024R1689/oj#art_5').
declared(notification_contains_required_information/1, 'notification contains information specified under paragraph 6 and excludes sensitive operational data', 'celex:32024R1689/oj#art_5').
declared(member_state_authorises_use/1, 'Member State provides for possibility to authorise use of real-time remote biometric identification for law enforcement', 'celex:32024R1689/oj#art_5').
declared(member_state_lays_down_detailed_rules/1, 'Member State lays down detailed rules for request, issuance, exercise, supervision and reporting of authorisations', 'celex:32024R1689/oj#art_5').
declared(member_state_notifies_commission/1, 'Member State notifies rules to Commission within 30 days of adoption', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'who must submit annual report to whom about real-time remote biometric identification use', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/2, 'who must publish annual report to whom about real-time remote biometric identification use', 'celex:32024R1689/oj#art_5').
declared(must_provide_template/2, 'who must provide template to whom for annual reporting', 'celex:32024R1689/oj#art_5').
declared(urgency_justified/1, 'duly justified case of urgency allowing commencement without prior registration or authorisation', 'celex:32024R1689/oj#art_5').
declared(registration_completed_without_undue_delay/1, 'registration completed without undue delay after urgent commencement', 'celex:32024R1689/oj#art_5').
declared(authorisation_requested_without_undue_delay/1, 'authorisation requested without undue delay, at latest within 24 hours, after urgent commencement', 'celex:32024R1689/oj#art_5').
declared(use_stopped_and_data_deleted/1, 'use stopped with immediate effect and all data, results and outputs immediately discarded and deleted when authorisation rejected', 'celex:32024R1689/oj#art_5').
declared(annual_report_excludes_sensitive_operational_data/1, 'annual report does not include sensitive operational data', 'celex:32024R1689/oj#art_5').
declared(placing_on_market_prohibited/1, 'placing on market of prohibited AI practice', 'celex:32024R1689/oj#art_5').
declared(putting_into_service_prohibited/1, 'putting into service of prohibited AI practice', 'celex:32024R1689/oj#art_5').
declared(use_prohibited/1, 'use of prohibited AI practice', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deploys_subliminal_techniques_beyond_consciousness(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deploys_purposefully_manipulative_or_deceptive_techniques(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    has_objective_or_effect_of_materially_distorting_behaviour(S),
    appreciably_impairs_informed_decision_ability(S),
    causes_decision_not_otherwise_taken(S),
    causes_or_likely_to_cause_significant_harm(S).
placing_on_market_prohibited(S) :-
    prohibited_subliminal_manipulation(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_subliminal_manipulation(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_subliminal_manipulation(S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    exploits_vulnerabilities_due_to_age_disability_or_situation(S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    has_objective_or_effect_of_materially_distorting_behaviour(S),
    causes_or_likely_to_cause_significant_harm(S).
placing_on_market_prohibited(S) :-
    prohibited_vulnerability_exploitation(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_vulnerability_exploitation(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_vulnerability_exploitation(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_based_on_social_behaviour(S),
    over_certain_period_of_time(S),
    social_score_leads_to_detrimental_or_unfavourable_treatment(S).
placing_on_market_prohibited(S) :-
    prohibited_social_scoring(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_social_scoring(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_social_scoring(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    makes_risk_assessments_to_predict_criminal_offence_risk(S),
    based_solely_on_profiling_or_personality_traits(S),
    \+ permitted_criminal_risk_assessment_support(S).
permitted_criminal_risk_assessment_support(S) :-
    ai_system(S),
    used_to_support_human_assessment_of_involvement_in_criminal_activity(S),
    based_on_objective_and_verifiable_facts_directly_linked_to_criminal_activity(S).
placing_on_market_prohibited(S) :-
    prohibited_criminal_risk_assessment(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_criminal_risk_assessment(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_criminal_risk_assessment(S).
prohibited_facial_recognition_database_creation(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_databases(S),
    through_untargeted_scraping_of_facial_images_from_internet_or_cctv(S).
placing_on_market_prohibited(S) :-
    prohibited_facial_recognition_database_creation(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_facial_recognition_database_creation(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_facial_recognition_database_creation(S).
prohibited_emotion_inference_workplace_education(S) :-
    ai_system(S),
    infers_emotions_of_natural_person(S),
    in_area_of_workplace_or_education_institution(S),
    \+ permitted_emotion_inference_medical_safety(S).
permitted_emotion_inference_medical_safety(S) :-
    ai_system(S),
    infers_emotions_of_natural_person(S),
    in_area_of_workplace_or_education_institution(S),
    intended_for_medical_or_safety_reasons(S).
placing_on_market_prohibited(S) :-
    prohibited_emotion_inference_workplace_education(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_emotion_inference_workplace_education(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_emotion_inference_workplace_education(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    categorises_individually_natural_persons(S),
    based_on_biometric_data(S),
    to_deduce_or_infer_race_political_opinions_trade_union_membership_religious_or_philosophical_beliefs_sex_life_or_sexual_orientation(S),
    \+ permitted_biometric_categorisation_labelling_filtering(S),
    \+ permitted_biometric_categorisation_law_enforcement(S).
permitted_biometric_categorisation_labelling_filtering(S) :-
    biometric_categorisation_system(S),
    labels_or_filters_lawfully_acquired_biometric_datasets(S),
    based_on_biometric_data(S).
permitted_biometric_categorisation_law_enforcement(S) :-
    biometric_categorisation_system(S),
    categorises_biometric_data(S),
    in_area_of_law_enforcement(S).
placing_on_market_prohibited(S) :-
    prohibited_biometric_categorisation(S),
    placing_on_market(S).
putting_into_service_prohibited(S) :-
    prohibited_biometric_categorisation(S),
    putting_into_service(S).
use_prohibited(S) :-
    prohibited_biometric_categorisation(S).
prohibited_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    \+ permitted_real_time_remote_biometric_identification_law_enforcement(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    objective_targeted_search_victims(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    objective_prevention_threat(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    objective_identify_suspect(S),
    offence_referred_to_in_annex_2(S),
    punishable_by_custodial_sentence_or_detention_order_maximum_period_at_least_four_years(S).
use_prohibited(S) :-
    prohibited_real_time_remote_biometric_identification_law_enforcement(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    deployment_confirms_identity(S),
    specifically_targeted_individual(S),
    considers_nature_of_situation(S),
    considers_consequences_for_rights(S),
    complies_with_safeguards(S),
    fundamental_rights_impact_assessment_completed(S),
    registered_in_eu_database(S),
    prior_authorisation_obtained(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    deployment_confirms_identity(S),
    specifically_targeted_individual(S),
    considers_nature_of_situation(S),
    considers_consequences_for_rights(S),
    complies_with_safeguards(S),
    fundamental_rights_impact_assessment_completed(S),
    urgency_justified(S),
    registration_completed_without_undue_delay(S),
    prior_authorisation_obtained(S).
prior_authorisation_obtained(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_granted_by_judicial_authority_or_independent_administrative_authority(S),
    decision_is_binding(S),
    issued_upon_reasoned_request(S),
    in_accordance_with_detailed_rules_of_national_law(S),
    authorisation_based_on_objective_evidence(S),
    use_is_necessary_for_and_proportionate_to_achieving_objective(S),
    limited_to_strictly_necessary_period_geographic_and_personal_scope(S),
    authorisation_considers_elements(S).
prior_authorisation_obtained(S) :-
    real_time_remote_biometric_identification_system(S),
    urgency_justified(S),
    authorisation_requested_without_undue_delay(S),
    within(days(24)).
use_stopped_and_data_deleted(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_rejected(S),
    use_stopped_with_immediate_effect(S),
    all_data_results_and_outputs_immediately_discarded_and_deleted(S).
no_adverse_decision_solely_on_output(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ decision_producing_adverse_legal_effect_taken_based_solely_on_output(S).
notified_to_market_surveillance_and_dpa(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    notified_to_relevant_market_surveillance_authority(S),
    notified_to_national_data_protection_authority(S),
    in_accordance_with_national_rules(S).
notification_contains_required_information(S) :-
    real_time_remote_biometric_identification_system(S),
    notification_contains_information_specified_under_paragraph_6(S),
    \+ notification_includes_sensitive_operational_data(S).
member_state_authorises_use(S) :-
    member_state(S),
    provides_for_possibility_to_fully_or_partially_authorise_use(S),
    within_limits_and_conditions_listed_in_paragraph_1_point_h_and_paragraph_2(S).
member_state_lays_down_detailed_rules(S) :-
    member_state(S),
    lays_down_necessary_detailed_rules_for_request_issuance_exercise_supervision_and_reporting(S),
    specifies_objectives_and_offences_for_which_authorities_may_be_authorised(S).
member_state_notifies_commission(S) :-
    member_state(S),
    notifies_rules_to_commission(S),
    within(days(30)),
    following_adoption(S).
must_submit_annual_report(Authority, commission) :-
    market_surveillance_authority(Authority),
    notified_of_use_of_real_time_remote_biometric_identification(Authority).
must_submit_annual_report(Authority, commission) :-
    national_data_protection_authority(Authority),
    notified_of_use_of_real_time_remote_biometric_identification(Authority).
must_provide_template(commission, Authority) :-
    market_surveillance_authority(Authority).
must_provide_template(commission, Authority) :-
    national_data_protection_authority(Authority).
must_publish_annual_report(commission, public) :-
    aggregates_data_from_member_states(S),
    based_on_annual_reports_referred_to_in_paragraph_6(S),
    annual_report_excludes_sensitive_operational_data(S).
provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploitation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_workplace_education/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_criminal_risk_assessment_support/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference_medical_safety/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation_labelling_filtering/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(objective_targeted_search_victims/1, 'celex:32024R1689/oj#art_5').
provenance(objective_prevention_threat/1, 'celex:32024R1689/oj#art_5').
provenance(objective_identify_suspect/1, 'celex:32024R1689/oj#art_5').
provenance(deployment_confirms_identity/1, 'celex:32024R1689/oj#art_5').
provenance(considers_nature_of_situation/1, 'celex:32024R1689/oj#art_5').
provenance(considers_consequences_for_rights/1, 'celex:32024R1689/oj#art_5').
provenance(complies_with_safeguards/1, 'celex:32024R1689/oj#art_5').
provenance(fundamental_rights_impact_assessment_completed/1, 'celex:32024R1689/oj#art_5').
provenance(registered_in_eu_database/1, 'celex:32024R1689/oj#art_5').
provenance(prior_authorisation_obtained/1, 'celex:32024R1689/oj#art_5').
provenance(authorisation_based_on_objective_evidence/1, 'celex:32024R1689/oj#art_5').
provenance(authorisation_considers_elements/1, 'celex:32024R1689/oj#art_5').
provenance(no_adverse_decision_solely_on_output/1, 'celex:32024R1689/oj#art_5').
provenance(notified_to_market_surveillance_and_dpa/1, 'celex:32024R1689/oj#art_5').
provenance(notification_contains_required_information/1, 'celex:32024R1689/oj#art_5').
provenance(member_state_authorises_use/1, 'celex:32024R1689/oj#art_5').
provenance(member_state_lays_down_detailed_rules/1, 'celex:32024R1689/oj#art_5').
provenance(member_state_notifies_commission/1, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide_template/2, 'celex:32024R1689/oj#art_5').
provenance(urgency_justified/1, 'celex:32024R1689/oj#art_5').
provenance(registration_completed_without_undue_delay/1, 'celex:32024R1689/oj#art_5').
provenance(authorisation_requested_without_undue_delay/1, 'celex:32024R1689/oj#art_5').
provenance(use_stopped_and_data_deleted/1, 'celex:32024R1689/oj#art_5').
provenance(annual_report_excludes_sensitive_operational_data/1, 'celex:32024R1689/oj#art_5').
provenance(placing_on_market_prohibited/1, 'celex:32024R1689/oj#art_5').
provenance(putting_into_service_prohibited/1, 'celex:32024R1689/oj#art_5').
provenance(use_prohibited/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(safety_component_of_product/2, 'AI system is safety component of a product', 'celex:32024R1689/oj#art_6').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_6').
declared(required_third_party_conformity_assessment/1, 'product or AI system required to undergo third-party conformity assessment', 'celex:32024R1689/oj#art_6').
declared(ai_system_listed_in_annex_3/1, 'AI system referred to in Annex 3', 'celex:32024R1689/oj#art_6').
declared(poses_significant_risk_of_harm/1, 'AI system poses significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6').
declared(does_not_pose_significant_risk_of_harm/1, 'AI system does not pose significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6').
declared(materially_influences_decision_making/1, 'AI system materially influences outcome of decision making', 'celex:32024R1689/oj#art_6').
declared(narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(improves_previously_completed_human_activity/1, 'AI system intended to improve result of previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(detects_decision_making_patterns/1, 'AI system intended to detect decision-making patterns or deviations', 'celex:32024R1689/oj#art_6').
declared(replaces_or_influences_human_assessment/1, 'AI system meant to replace or influence previously completed human assessment', 'celex:32024R1689/oj#art_6').
declared(proper_human_review/1, 'proper human review is present', 'celex:32024R1689/oj#art_6').
declared(preparatory_task_to_assessment/1, 'AI system intended to perform preparatory task to an assessment relevant for Annex 3 use cases', 'celex:32024R1689/oj#art_6').
declared(performs_profiling/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(documented_assessment/2, 'provider has documented assessment that AI system is not high-risk', 'celex:32024R1689/oj#art_6').
declared(subject_to_registration_obligation/1, 'provider subject to registration obligation under Article 49(2)', 'celex:32024R1689/oj#art_6').
declared(must_document_assessment/2, 'provider must document assessment before placing on market or putting into service', 'celex:32024R1689/oj#art_6').
declared(must_provide_documentation/2, 'provider must provide documentation of assessment upon request of national competent authorities', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_product(S, _Product),
    product_covered_by_union_harmonisation_legislation(_Product),
    required_third_party_conformity_assessment(_Product).
high_risk_ai_system(S) :-
    ai_system(S),
    product_covered_by_union_harmonisation_legislation(S),
    required_third_party_conformity_assessment(S).
safety_component_of_product(S, Product) :-
    ai_system(S),
    safety_component(S),
    product_covered_by_union_harmonisation_legislation(Product).
required_third_party_conformity_assessment(Product) :-
    product_covered_by_union_harmonisation_legislation(Product),
    conformity_assessment_body(_Body),
    notified_body(_Body).
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S).
exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    narrow_procedural_task(S).
exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    improves_previously_completed_human_activity(S).
exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    detects_decision_making_patterns(S),
    \+ replaces_or_influences_human_assessment(S),
    proper_human_review(S).
exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    preparatory_task_to_assessment(S).
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    performs_profiling(S).
must_document_assessment(Provider, S) :-
    provider(Provider),
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    \+ high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).
before_placing_on_market_or_putting_into_service(S) :-
    placing_on_market(S).
before_placing_on_market_or_putting_into_service(S) :-
    putting_into_service(S).
subject_to_registration_obligation(Provider) :-
    provider(Provider),
    exists_system_not_high_risk(Provider).
exists_system_not_high_risk(Provider) :-
    provider(Provider),
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    \+ high_risk_ai_system(S),
    must_document_assessment(Provider, S).
must_provide_documentation(Provider, S) :-
    provider(Provider),
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    \+ high_risk_ai_system(S),
    must_document_assessment(Provider, S),
    national_competent_authority(_Authority),
    request_for_documentation(_Authority, Provider, S).
request_for_documentation(Authority, Provider, S) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_system(S).
does_not_pose_significant_risk_of_harm(S) :-
    ai_system(S),
    \+ poses_significant_risk_of_harm(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_product/2, 'celex:32024R1689/oj#art_6').
provenance(product_covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(required_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#art_6').
provenance(poses_significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(does_not_pose_significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(materially_influences_decision_making/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improves_previously_completed_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(detects_decision_making_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(replaces_or_influences_human_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(proper_human_review/1, 'celex:32024R1689/oj#art_6').
provenance(preparatory_task_to_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(documented_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(subject_to_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_classification/1, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

% ==== celex:32024R1689/oj#art_7 ====
declared(must_take_into_account/2, 'Commission must consider criterion when assessing amendment conditions', 'celex:32024R1689/oj#art_7').
declared(empowered_to_amend_annex_3/2, 'Commission empowered to amend Annex III by adding or removing use-cases', 'celex:32024R1689/oj#art_7').
declared(condition_for_adding_use_case/2, 'condition that must be fulfilled to add a use-case to Annex III', 'celex:32024R1689/oj#art_7').
declared(condition_for_removing_use_case/2, 'condition that must be fulfilled to remove a use-case from Annex III', 'celex:32024R1689/oj#art_7').
declared(criterion_for_assessment/1, 'criterion the Commission must take into account when assessing amendment conditions', 'celex:32024R1689/oj#art_7').
empowered_to_amend_annex_3(commission, add_or_modify_use_case(S)) :-
    ai_system(S),
    condition_for_adding_use_case(S, area_listed_in_annex_3),
    condition_for_adding_use_case(S, risk_equivalent_or_greater).
empowered_to_amend_annex_3(commission, remove_use_case(S)) :-
    ai_system(S),
    condition_for_removing_use_case(S, no_significant_risk),
    condition_for_removing_use_case(S, no_decrease_in_protection_level).
condition_for_adding_use_case(S, area_listed_in_annex_3) :-
    ai_system(S),
    intended_purpose(S),
    area_listed_in_annex_3(S).
condition_for_adding_use_case(S, risk_equivalent_or_greater) :-
    ai_system(S),
    poses_risk_of_harm_to_health_and_safety(S).
condition_for_adding_use_case(S, risk_equivalent_or_greater) :-
    ai_system(S),
    poses_adverse_impact_on_fundamental_rights(S).
condition_for_adding_use_case(S, risk_equivalent_or_greater) :-
    ai_system(S),
    risk_equivalent_to_or_greater_than_existing_high_risk(S).
condition_for_removing_use_case(S, no_significant_risk) :-
    ai_system(S),
    \+ poses_significant_risk_to_fundamental_rights(S),
    \+ poses_significant_risk_to_health(S),
    \+ poses_significant_risk_to_safety(S).
condition_for_removing_use_case(S, no_decrease_in_protection_level) :-
    ai_system(S),
    deletion_does_not_decrease_overall_protection_level(S).
must_take_into_account(commission, criterion(intended_purpose_of_ai_system)).
must_take_into_account(commission, criterion(extent_of_use_or_likely_use)).
must_take_into_account(commission, criterion(nature_and_amount_of_data_processed)).
must_take_into_account(commission, criterion(whether_special_categories_of_personal_data_processed)).
must_take_into_account(commission, criterion(extent_of_autonomous_action)).
must_take_into_account(commission, criterion(possibility_for_human_override)).
must_take_into_account(commission, criterion(extent_harm_already_caused_to_health_and_safety)).
must_take_into_account(commission, criterion(extent_adverse_impact_on_fundamental_rights_already_caused)).
must_take_into_account(commission, criterion(significant_concerns_raised)).
must_take_into_account(commission, criterion(potential_extent_of_harm_or_adverse_impact)).
must_take_into_account(commission, criterion(intensity_of_harm)).
must_take_into_account(commission, criterion(ability_to_affect_multiple_persons)).
must_take_into_account(commission, criterion(disproportionate_impact_on_particular_group)).
must_take_into_account(commission, criterion(extent_dependent_on_outcome)).
must_take_into_account(commission, criterion(impossibility_to_opt_out)).
must_take_into_account(commission, criterion(imbalance_of_power)).
must_take_into_account(commission, criterion(vulnerable_position_of_harmed_persons)).
must_take_into_account(commission, criterion(status_authority_knowledge_economic_social_circumstances_age)).
must_take_into_account(commission, criterion(extent_outcome_easily_corrigible_or_reversible)).
must_take_into_account(commission, criterion(technical_solutions_available_to_correct_or_reverse)).
must_take_into_account(commission, criterion(outcomes_adverse_impact_not_easily_corrigible)).
must_take_into_account(commission, criterion(magnitude_and_likelihood_of_benefit)).
must_take_into_account(commission, criterion(benefit_for_individuals_groups_society)).
must_take_into_account(commission, criterion(possible_improvements_in_product_safety)).
must_take_into_account(commission, criterion(existing_union_law_provides_effective_redress)).
must_take_into_account(commission, criterion(existing_union_law_provides_measures_to_prevent_or_minimise_risks)).
criterion_for_assessment(intended_purpose_of_ai_system).
criterion_for_assessment(extent_of_use_or_likely_use).
criterion_for_assessment(nature_and_amount_of_data_processed).
criterion_for_assessment(whether_special_categories_of_personal_data_processed).
criterion_for_assessment(extent_of_autonomous_action).
criterion_for_assessment(possibility_for_human_override).
criterion_for_assessment(extent_harm_already_caused_to_health_and_safety).
criterion_for_assessment(extent_adverse_impact_on_fundamental_rights_already_caused).
criterion_for_assessment(significant_concerns_raised).
criterion_for_assessment(potential_extent_of_harm_or_adverse_impact).
criterion_for_assessment(intensity_of_harm).
criterion_for_assessment(ability_to_affect_multiple_persons).
criterion_for_assessment(disproportionate_impact_on_particular_group).
criterion_for_assessment(extent_dependent_on_outcome).
criterion_for_assessment(impossibility_to_opt_out).
criterion_for_assessment(imbalance_of_power).
criterion_for_assessment(vulnerable_position_of_harmed_persons).
criterion_for_assessment(status_authority_knowledge_economic_social_circumstances_age).
criterion_for_assessment(extent_outcome_easily_corrigible_or_reversible).
criterion_for_assessment(technical_solutions_available_to_correct_or_reverse).
criterion_for_assessment(outcomes_adverse_impact_not_easily_corrigible).
criterion_for_assessment(magnitude_and_likelihood_of_benefit).
criterion_for_assessment(benefit_for_individuals_groups_society).
criterion_for_assessment(possible_improvements_in_product_safety).
criterion_for_assessment(existing_union_law_provides_effective_redress).
criterion_for_assessment(existing_union_law_provides_measures_to_prevent_or_minimise_risks).
area_listed_in_annex_3(S) :-
    ai_system(S),
    intended_purpose(S),
    listed_in_annex_3_area(S).
poses_risk_of_harm_to_health_and_safety(S) :-
    ai_system(S),
    risk(S),
    harm_to_health_and_safety(S).
poses_adverse_impact_on_fundamental_rights(S) :-
    ai_system(S),
    adverse_impact_on_fundamental_rights(S).
risk_equivalent_to_or_greater_than_existing_high_risk(S) :-
    ai_system(S),
    risk(S),
    existing_high_risk_ai_system(S),
    risk_equivalent_or_greater(S).
poses_significant_risk_to_fundamental_rights(S) :-
    ai_system(S),
    significant_risk(S),
    fundamental_rights(S).
poses_significant_risk_to_health(S) :-
    ai_system(S),
    significant_risk(S),
    health(S).
poses_significant_risk_to_safety(S) :-
    ai_system(S),
    significant_risk(S),
    safety(S).
deletion_does_not_decrease_overall_protection_level(S) :-
    ai_system(S),
    overall_protection_level_under_union_law(before_deletion(S)),
    overall_protection_level_under_union_law(after_deletion(S)),
    \+ protection_level_decreased(before_deletion(S), after_deletion(S)).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
provenance(empowered_to_amend_annex_3/2, 'celex:32024R1689/oj#art_7').
provenance(condition_for_adding_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(criterion_for_assessment/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/1, 'product that contains an AI system', 'celex:32024R1689/oj#art_8').
declared(union_harmonisation_legislation_applies/1, 'Union harmonisation legislation listed in Annex I Section 1 applies', 'celex:32024R1689/oj#art_8').
declared(generally_acknowledged_state_of_the_art/1, 'generally acknowledged state of the art on AI and AI-related technologies', 'celex:32024R1689/oj#art_8').
declared(risk_management_system/1, 'risk management system referred to in Article 9', 'celex:32024R1689/oj#art_8').
must_comply_with_requirements(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    generally_acknowledged_state_of_the_art(S),
    risk_management_system(S).
must_take_into_account_risk_management_system(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
must_ensure_product_compliance(P, Product) :-
    provider(P),
    product_contains_ai_system(Product),
    high_risk_ai_system(Product),
    union_harmonisation_legislation_applies(Product).
may_integrate_testing_and_reporting_processes(P, Product) :-
    provider(P),
    product_contains_ai_system(Product),
    high_risk_ai_system(Product),
    union_harmonisation_legislation_applies(Product).
provenance(must_comply_with_requirements/1, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_risk_management_system/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_product_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_testing_and_reporting_processes/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_9').
declared(risk_management_system/1, 'continuous iterative process for managing risks of a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(risk_management_step/2, 'step in the risk management process for a system', 'celex:32024R1689/oj#art_9').
declared(risk_management_measure/2, 'measure adopted to address risks of a system', 'celex:32024R1689/oj#art_9').
declared(residual_risk_acceptable/1, 'residual risk of a system is judged acceptable', 'celex:32024R1689/oj#art_9').
declared(tested_for_risk_management/1, 'system tested to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(continuous_iterative_process/1, 'process that is continuous and iterative throughout lifecycle', 'celex:32024R1689/oj#art_9').
declared(regular_systematic_review/1, 'process subject to regular systematic review and updating', 'celex:32024R1689/oj#art_9').
declared(lifecycle_coverage/1, 'process planned and run throughout entire lifecycle', 'celex:32024R1689/oj#art_9').
declared(risk_identification_analysis/1, 'step identifying and analysing known and foreseeable risks', 'celex:32024R1689/oj#art_9').
declared(risk_estimation_evaluation/1, 'step estimating and evaluating risks under intended purpose and foreseeable misuse', 'celex:32024R1689/oj#art_9').
declared(post_market_monitoring_risk_evaluation/1, 'step evaluating risks based on post-market monitoring data', 'celex:32024R1689/oj#art_9').
declared(risk_mitigable_through_design/1, 'risk that may be reasonably mitigated or eliminated through development or design', 'celex:32024R1689/oj#art_9').
declared(combined_requirements_consideration/2, 'measures give due consideration to combined application of requirements', 'celex:32024R1689/oj#art_9').
declared(risk_elimination_or_reduction/2, 'measures eliminate or reduce risks as far as technically feasible', 'celex:32024R1689/oj#art_9').
declared(mitigation_control_measure/2, 'measures implement mitigation and control for risks that cannot be eliminated', 'celex:32024R1689/oj#art_9').
declared(deployer_information_and_training/2, 'measures provide information and training to deployers', 'celex:32024R1689/oj#art_9').
declared(technical_feasibility_consideration/2, 'measures consider technical knowledge, experience, education, training and context', 'celex:32024R1689/oj#art_9').
declared(consistent_performance_for_intended_purpose/1, 'system performs consistently for its intended purpose', 'celex:32024R1689/oj#art_9').
declared(testing_prior_to_market_or_service/1, 'testing performed prior to placing on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(testing_against_defined_metrics/1, 'testing carried out against prior defined metrics and probabilistic thresholds', 'celex:32024R1689/oj#art_9').
declared(vulnerable_group_impact_consideration/1, 'provider gives consideration to adverse impact on persons under 18 and vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(combined_with_other_union_law_risk_management/1, 'risk management aspects combined with procedures under other Union law', 'celex:32024R1689/oj#art_9').
must_establish_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S).
must_implement_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_system(S).
must_document_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_system(S).
must_maintain_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_system(S) :-
    high_risk_ai_system(S),
    continuous_iterative_process(S),
    lifecycle_coverage(S),
    regular_systematic_review(S).
continuous_iterative_process(S) :-
    risk_management_system(S).
lifecycle_coverage(S) :-
    risk_management_system(S).
regular_systematic_review(S) :-
    risk_management_system(S).
risk_management_step(S, identify_analyse_risks) :-
    risk_management_system(S),
    risk_identification_analysis(S).
risk_management_step(S, estimate_evaluate_risks) :-
    risk_management_system(S),
    risk_estimation_evaluation(S).
risk_management_step(S, evaluate_post_market_risks) :-
    risk_management_system(S),
    post_market_monitoring_risk_evaluation(S).
risk_management_step(S, adopt_risk_management_measures) :-
    risk_management_system(S),
    risk_management_measure(S, _Measure).
risk_identification_analysis(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    risk(Risk1),
    risk(Risk2),
    poses_risk_to_health_safety_fundamental_rights(S, Risk1),
    reasonably_foreseeable_risk(S, Risk2).
risk_estimation_evaluation(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    reasonably_foreseeable_misuse(S),
    risk(Risk),
    emerges_under_conditions(S, Risk, intended_purpose),
    emerges_under_conditions(S, Risk, reasonably_foreseeable_misuse).
post_market_monitoring_risk_evaluation(S) :-
    high_risk_ai_system(S),
    post_market_monitoring_system(S),
    risk(Risk),
    arises_from_data(S, Risk, post_market_monitoring_system).
risk_management_measure(S, Measure) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    risk(Risk),
    addresses_risk(Measure, Risk).
risk_mitigable_through_design(Risk) :-
    risk(Risk),
    reasonably_mitigated_or_eliminated_through_development(Risk).
risk_mitigable_through_design(Risk) :-
    risk(Risk),
    reasonably_mitigated_or_eliminated_through_design(Risk).
risk_mitigable_through_design(Risk) :-
    risk(Risk),
    mitigated_through_technical_information(Risk).
combined_requirements_consideration(S, Measure) :-
    risk_management_measure(S, Measure),
    gives_due_consideration_to_combined_application(Measure).
residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    overall_residual_risk_acceptable(S).
risk_elimination_or_reduction(S, Measure) :-
    risk_management_measure(S, Measure),
    eliminates_or_reduces_risk(Measure),
    technically_feasible(Measure).
mitigation_control_measure(S, Measure) :-
    risk_management_measure(S, Measure),
    addresses_risk_not_eliminable(Measure),
    implements_mitigation_and_control(Measure).
deployer_information_and_training(S, Measure) :-
    risk_management_measure(S, Measure),
    provides_information(Measure),
    provides_training_to_deployers(Measure).
technical_feasibility_consideration(S, Measure) :-
    risk_management_measure(S, Measure),
    considers_technical_knowledge(Measure),
    considers_experience(Measure),
    considers_education(Measure),
    considers_expected_deployer_training(Measure),
    considers_presumable_context(Measure).
tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    testing_performed(S),
    testing_identifies_appropriate_measures(S).
consistent_performance_for_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    performs_consistently(S).
testing_prior_to_market_or_service(S) :-
    high_risk_ai_system(S),
    testing_performed(S),
    \+ placed_on_market_before_testing(S),
    \+ put_into_service_before_testing(S).
testing_against_defined_metrics(S) :-
    high_risk_ai_system(S),
    testing_performed(S),
    defined_metrics(Metrics),
    probabilistic_thresholds(Thresholds),
    testing_against(S, Metrics, Thresholds),
    appropriate_to_intended_purpose(Metrics, Thresholds, S).
vulnerable_group_impact_consideration(S) :-
    provider(P),
    high_risk_ai_system(S),
    places_on_market(P, S),
    intended_purpose(S),
    likely_adverse_impact_on_under_18(S),
    gives_consideration_to_vulnerable_groups(S).
combined_with_other_union_law_risk_management(S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_internal_risk_management_under_union_law(P, S),
    risk_management_system(S),
    aspects_combined_with_other_procedures(S).
must_test_for_risk_management(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S),
    tested_for_risk_management(S).
must_ensure_consistent_performance(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    consistent_performance_for_intended_purpose(S).
must_ensure_compliance_with_requirements(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    tested_for_risk_management(S).
must_perform_testing_before_market_or_service(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_prior_to_market_or_service(S).
must_test_against_defined_metrics(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_against_defined_metrics(S).
must_consider_vulnerable_group_impact(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S),
    vulnerable_group_impact_consideration(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure/2, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(regular_systematic_review/1, 'celex:32024R1689/oj#art_9').
provenance(lifecycle_coverage/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(post_market_monitoring_risk_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(risk_mitigable_through_design/1, 'celex:32024R1689/oj#art_9').
provenance(combined_requirements_consideration/2, 'celex:32024R1689/oj#art_9').
provenance(risk_elimination_or_reduction/2, 'celex:32024R1689/oj#art_9').
provenance(mitigation_control_measure/2, 'celex:32024R1689/oj#art_9').
provenance(deployer_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(technical_feasibility_consideration/2, 'celex:32024R1689/oj#art_9').
provenance(consistent_performance_for_intended_purpose/1, 'celex:32024R1689/oj#art_9').
provenance(testing_prior_to_market_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(testing_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(vulnerable_group_impact_consideration/1, 'celex:32024R1689/oj#art_9').
provenance(combined_with_other_union_law_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_document_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_test_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_consistent_performance/2, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_compliance_with_requirements/2, 'celex:32024R1689/oj#art_9').
provenance(must_perform_testing_before_market_or_service/2, 'celex:32024R1689/oj#art_9').
provenance(must_test_against_defined_metrics/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_vulnerable_group_impact/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').

% ==== celex:32024R1689/oj#art_10 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_10').
declared(uses_training_techniques/1, 'AI system makes use of techniques involving the training of AI models with data', 'celex:32024R1689/oj#art_10').
declared(developed_on_basis_of/2, 'system is developed on the basis of data sets', 'celex:32024R1689/oj#art_10').
declared(data_governance_practices/1, 'data governance and management practices appropriate for the intended purpose', 'celex:32024R1689/oj#art_10').
declared(data_governance_concerns/2, 'data governance practices concern a particular aspect', 'celex:32024R1689/oj#art_10').
declared(data_set_quality_criteria_met/1, 'data set meets the quality criteria of paragraphs 2 to 5', 'celex:32024R1689/oj#art_10').
declared(data_set_relevant/1, 'data set is relevant', 'celex:32024R1689/oj#art_10').
declared(data_set_sufficiently_representative/1, 'data set is sufficiently representative', 'celex:32024R1689/oj#art_10').
declared(data_set_free_of_errors/1, 'data set is free of errors to the best extent possible', 'celex:32024R1689/oj#art_10').
declared(data_set_complete/1, 'data set is complete in view of the intended purpose', 'celex:32024R1689/oj#art_10').
declared(data_set_appropriate_statistical_properties/1, 'data set has appropriate statistical properties', 'celex:32024R1689/oj#art_10').
declared(data_set_takes_into_account/2, 'data set takes into account characteristics or elements', 'celex:32024R1689/oj#art_10').
declared(specific_setting/1, 'specific geographical, contextual, behavioural or functional setting', 'celex:32024R1689/oj#art_10').
declared(may_process_special_categories/2, 'provider may exceptionally process special categories of personal data for bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(bias_detection_correction_purpose/1, 'purpose of ensuring bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(bias_cannot_be_corrected_by_other_data/1, 'bias detection and correction cannot be effectively fulfilled by processing other data', 'celex:32024R1689/oj#art_10').
declared(technical_limitations_on_reuse/1, 'special categories of personal data subject to technical limitations on re-use', 'celex:32024R1689/oj#art_10').
declared(security_and_privacy_measures/1, 'state-of-the-art security and privacy-preserving measures including pseudonymisation', 'celex:32024R1689/oj#art_10').
declared(data_secured_and_protected/1, 'special categories of personal data secured, protected, with suitable safeguards', 'celex:32024R1689/oj#art_10').
declared(strict_access_controls/1, 'strict controls and documentation of access to personal data', 'celex:32024R1689/oj#art_10').
declared(authorised_persons_only/1, 'only authorised persons have access with appropriate confidentiality obligations', 'celex:32024R1689/oj#art_10').
declared(data_not_transmitted_to_other_parties/1, 'special categories of personal data not transmitted, transferred or otherwise accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(data_deleted_after_bias_correction/1, 'special categories of personal data deleted once bias corrected or retention period ends', 'celex:32024R1689/oj#art_10').
declared(processing_records_include_reasons/1, 'records of processing activities include reasons why processing was strictly necessary', 'celex:32024R1689/oj#art_10').
declared(applies_only_to_testing_data/1, 'paragraphs 2 to 5 apply only to testing data sets', 'celex:32024R1689/oj#art_10').
must_develop_on_quality_data_sets(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    developed_on_basis_of(S, data_sets(training, validation, testing)),
    data_set_quality_criteria_met(training_data(S)),
    data_set_quality_criteria_met(validation_data_set(S)),
    data_set_quality_criteria_met(testing_data(S)).
must_apply_data_governance(S, D) :-
    high_risk_ai_system(S),
    data_governance_practices(D),
    intended_purpose(S),
    data_governance_concerns(D, design_choices),
    data_governance_concerns(D, data_collection_processes_and_origin),
    data_governance_concerns(D, data_preparation_processing_operations),
    data_governance_concerns(D, formulation_of_assumptions),
    data_governance_concerns(D, assessment_of_availability_quantity_suitability),
    data_governance_concerns(D, examination_for_possible_biases),
    data_governance_concerns(D, measures_to_detect_prevent_mitigate_biases),
    data_governance_concerns(D, identification_of_data_gaps_or_shortcomings).
data_set_quality_criteria_met(D) :-
    data_set_relevant(D),
    data_set_sufficiently_representative(D),
    data_set_free_of_errors(D),
    data_set_complete(D),
    data_set_appropriate_statistical_properties(D).
must_take_into_account_setting(S, D) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    specific_setting(S),
    data_set_takes_into_account(D, characteristics(S)).
permitted_processing_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    bias_detection_correction_purpose(S),
    bias_cannot_be_corrected_by_other_data(S),
    technical_limitations_on_reuse(S),
    security_and_privacy_measures(S),
    data_secured_and_protected(S),
    strict_access_controls(S),
    authorised_persons_only(S),
    data_not_transmitted_to_other_parties(S),
    data_deleted_after_bias_correction(S),
    processing_records_include_reasons(S).
applies_only_to_testing_data(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(developed_on_basis_of/2, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_concerns/2, 'celex:32024R1689/oj#art_10').
provenance(data_set_quality_criteria_met/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_relevant/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_sufficiently_representative/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_free_of_errors/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_complete/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_takes_into_account/2, 'celex:32024R1689/oj#art_10').
provenance(specific_setting/1, 'celex:32024R1689/oj#art_10').
provenance(may_process_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_correction_purpose/1, 'celex:32024R1689/oj#art_10').
provenance(bias_cannot_be_corrected_by_other_data/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(security_and_privacy_measures/1, 'celex:32024R1689/oj#art_10').
provenance(data_secured_and_protected/1, 'celex:32024R1689/oj#art_10').
provenance(strict_access_controls/1, 'celex:32024R1689/oj#art_10').
provenance(authorised_persons_only/1, 'celex:32024R1689/oj#art_10').
provenance(data_not_transmitted_to_other_parties/1, 'celex:32024R1689/oj#art_10').
provenance(data_deleted_after_bias_correction/1, 'celex:32024R1689/oj#art_10').
provenance(processing_records_include_reasons/1, 'celex:32024R1689/oj#art_10').
provenance(applies_only_to_testing_data/1, 'celex:32024R1689/oj#art_10').
provenance(must_develop_on_quality_data_sets/1, 'celex:32024R1689/oj#art_10').
provenance(must_apply_data_governance/2, 'celex:32024R1689/oj#art_10').
provenance(must_take_into_account_setting/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#art_11 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_11').
declared(technical_documentation/1, 'technical documentation of a high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(drawn_up_before_placement/1, 'technical documentation drawn up before placing on market or putting into service', 'celex:32024R1689/oj#art_11').
declared(kept_up_to_date/1, 'technical documentation kept up to date', 'celex:32024R1689/oj#art_11').
declared(demonstrates_compliance/1, 'technical documentation demonstrates compliance with requirements', 'celex:32024R1689/oj#art_11').
declared(provides_information_to_authorities/1, 'technical documentation provides information to national competent authorities and notified bodies', 'celex:32024R1689/oj#art_11').
declared(contains_minimum_elements/1, 'technical documentation contains at minimum the elements set out in Annex IV', 'celex:32024R1689/oj#art_11').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_11').
declared(start_up/1, 'start-up enterprise', 'celex:32024R1689/oj#art_11').
declared(simplified_documentation/1, 'simplified manner of providing technical documentation elements', 'celex:32024R1689/oj#art_11').
declared(simplified_form/1, 'simplified technical documentation form established by the Commission', 'celex:32024R1689/oj#art_11').
declared(uses_simplified_form/1, 'SME or start-up uses the simplified form', 'celex:32024R1689/oj#art_11').
declared(accepts_simplified_form/1, 'notified body accepts the simplified form for conformity assessment', 'celex:32024R1689/oj#art_11').
declared(single_set_documentation/1, 'single set of technical documentation for products under Union harmonisation legislation', 'celex:32024R1689/oj#art_11').
declared(product_covered_by_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_11').
declared(commission_empowered_delegated_acts/1, 'Commission empowered to adopt delegated acts to amend Annex IV', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    placing_on_market(S).
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    putting_into_service(S).
must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).
drawn_up_before_placement(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    before(placing_on_market(D)).
drawn_up_before_placement(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    before(putting_into_service(D)).
kept_up_to_date(D) :-
    technical_documentation(D),
    high_risk_ai_system(D).
demonstrates_compliance(D) :-
    technical_documentation(D),
    high_risk_ai_system(D).
provides_information_to_authorities(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    national_competent_authority(_A),
    notified_body(_B).
contains_minimum_elements(D) :-
    technical_documentation(D),
    high_risk_ai_system(D).
sme(E) :-
    provider(E),
    sme(E).
start_up(E) :-
    provider(E),
    start_up(E).
simplified_documentation(D) :-
    technical_documentation(D),
    high_risk_ai_system(D),
    provider(P),
    (sme(P) ; start_up(P)).
uses_simplified_form(P) :-
    provider(P),
    (sme(P) ; start_up(P)),
    simplified_form(F),
    uses_form(P, F).
accepts_simplified_form(B) :-
    notified_body(B),
    simplified_form(_F).
single_set_documentation(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    placing_on_market(S).
single_set_documentation(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    putting_into_service(S).
commission_empowered_delegated_acts :-
    ai_office(C),
    commission(C).
before(X) :-
    placing_on_market(X).
before(X) :-
    putting_into_service(X).
uses_form(_P, _F).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_placement/1, 'celex:32024R1689/oj#art_11').
provenance(kept_up_to_date/1, 'celex:32024R1689/oj#art_11').
provenance(demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(provides_information_to_authorities/1, 'celex:32024R1689/oj#art_11').
provenance(contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(start_up/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(uses_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(accepts_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(single_set_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(product_covered_by_harmonisation_legislation/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_delegated_acts/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_12').
declared(logging_capability/1, 'automatic recording of events over the lifetime of the system', 'celex:32024R1689/oj#art_12').
declared(traceability_appropriate_to_intended_purpose/1, 'level of traceability appropriate to the intended purpose', 'celex:32024R1689/oj#art_12').
declared(records_event/2, 'logging capability records a specific event', 'celex:32024R1689/oj#art_12').
declared(risk_situation/1, 'situation that may result in the system presenting a risk or in a substantial modification', 'celex:32024R1689/oj#art_12').
declared(remote_biometric_identification_high_risk/1, 'high-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_12').
declared(use_period/1, 'period of each use with start and end date and time', 'celex:32024R1689/oj#art_12').
declared(reference_database/1, 'reference database against which input data has been checked', 'celex:32024R1689/oj#art_12').
declared(matched_input_data/1, 'input data for which the search has led to a match', 'celex:32024R1689/oj#art_12').
declared(verifying_natural_person/1, 'natural person involved in the verification of results', 'celex:32024R1689/oj#art_12').
must_enable_automatic_logging(S) :-
    high_risk_ai_system(S).
logging_capability(S) :-
    high_risk_ai_system(S),
    must_enable_automatic_logging(S).
traceability_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    logging_capability(S).
records_event(S, risk_situation_identification) :-
    high_risk_ai_system(S),
    traceability_appropriate_to_intended_purpose(S).
records_event(S, post_market_monitoring_facilitation) :-
    high_risk_ai_system(S),
    traceability_appropriate_to_intended_purpose(S),
    post_market_monitoring_system(S).
records_event(S, operation_monitoring) :-
    high_risk_ai_system(S),
    traceability_appropriate_to_intended_purpose(S),
    deployer(S).
remote_biometric_identification_high_risk(S) :-
    high_risk_ai_system(S),
    remote_biometric_identification_system(S).
records_event(S, use_period_recording) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).
records_event(S, reference_database_recording) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).
records_event(S, matched_input_data_recording) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).
records_event(S, verifying_person_identification) :-
    remote_biometric_identification_high_risk(S),
    logging_capability(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(traceability_appropriate_to_intended_purpose/1, 'celex:32024R1689/oj#art_12').
provenance(records_event/2, 'celex:32024R1689/oj#art_12').
provenance(risk_situation/1, 'celex:32024R1689/oj#art_12').
provenance(remote_biometric_identification_high_risk/1, 'celex:32024R1689/oj#art_12').
provenance(use_period/1, 'celex:32024R1689/oj#art_12').
provenance(reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(matched_input_data/1, 'celex:32024R1689/oj#art_12').
provenance(verifying_natural_person/1, 'celex:32024R1689/oj#art_12').
provenance(must_enable_automatic_logging/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_13').
declared(sufficiently_transparent/1, 'operation transparent enough for deployers to interpret output and use appropriately', 'celex:32024R1689/oj#art_13').
declared(appropriate_transparency/1, 'appropriate type and degree of transparency ensured', 'celex:32024R1689/oj#art_13').
declared(accompanied_by_instructions_for_use/2, 'high-risk AI system accompanied by instructions for use in appropriate format', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_information/2, 'instructions for use contain specified information element', 'celex:32024R1689/oj#art_13').
declared(must_design_for_transparency/1, 'provider must design high-risk AI system for sufficient transparency', 'celex:32024R1689/oj#art_13').
declared(must_provide_instructions/1, 'provider must provide instructions for use with high-risk AI system', 'celex:32024R1689/oj#art_13').
sufficiently_transparent(S) :-
    high_risk_ai_system(S),
    enables_deployer_interpretation(S),
    enables_appropriate_use(S).
appropriate_transparency(S) :-
    sufficiently_transparent(S),
    achieves_compliance_with_obligations(S).
enables_deployer_interpretation(S) :-
    high_risk_ai_system(S),
    deployer_can_interpret_output(S).
enables_appropriate_use(S) :-
    high_risk_ai_system(S),
    deployer_can_use_appropriately(S).
achieves_compliance_with_obligations(S) :-
    high_risk_ai_system(S),
    complies_with_provider_obligations(S),
    complies_with_deployer_obligations(S).
must_design_for_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    must_ensure_sufficient_transparency(P, S).
must_ensure_sufficient_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    sufficiently_transparent(S).
must_provide_instructions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    accompanied_by_instructions_for_use(S, instructions(digital_or_other)).
accompanied_by_instructions_for_use(S, Format) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I),
    format_appropriate(Format),
    information_concise(I),
    information_complete(I),
    information_correct(I),
    information_clear(I),
    information_relevant(I),
    information_accessible(I),
    information_comprehensible(I).
instructions_contain_information(I, identity_and_contact_details(provider)) :-
    instructions_for_use(I),
    contains(I, identity(provider)),
    contains(I, contact_details(provider)).
instructions_contain_information(I, identity_and_contact_details(authorised_representative)) :-
    instructions_for_use(I),
    contains(I, identity(authorised_representative)),
    contains(I, contact_details(authorised_representative)).
instructions_contain_information(I, characteristics_capabilities_limitations) :-
    instructions_for_use(I),
    contains(I, characteristics(S)),
    contains(I, capabilities(S)),
    contains(I, limitations_of_performance(S)).
instructions_contain_information(I, intended_purpose_info) :-
    instructions_for_use(I),
    contains(I, intended_purpose(S)).
instructions_contain_information(I, accuracy_robustness_cybersecurity_metrics) :-
    instructions_for_use(I),
    contains(I, level_of_accuracy(metrics)),
    contains(I, robustness(metrics)),
    contains(I, cybersecurity(metrics)),
    tested_and_validated_against(S, metrics),
    expected_performance(S, metrics),
    known_circumstances_impacting(S, metrics).
instructions_contain_information(I, risks_to_health_safety_fundamental_rights) :-
    instructions_for_use(I),
    contains(I, known_or_foreseeable_circumstances),
    circumstances_related_to_use(S),
    circumstances_may_lead_to_risks(S, health_and_safety),
    circumstances_may_lead_to_risks(S, fundamental_rights).
instructions_contain_information(I, technical_capabilities_for_explainability) :-
    instructions_for_use(I),
    contains(I, technical_capabilities(S)),
    contains(I, characteristics(S)),
    capabilities_provide_information_relevant_to_explain_output(S).
instructions_contain_information(I, performance_regarding_specific_persons_or_groups) :-
    instructions_for_use(I),
    contains(I, performance(S, specific_persons_or_groups)).
instructions_contain_information(I, specifications_for_input_data) :-
    instructions_for_use(I),
    contains(I, specifications(input_data)),
    contains(I, information(training_data_sets)),
    contains(I, information(validation_data_sets)),
    contains(I, information(testing_data_sets)),
    takes_into_account(S, intended_purpose(S)).
instructions_contain_information(I, information_to_interpret_output) :-
    instructions_for_use(I),
    contains(I, information_enabling_deployers),
    enables_interpretation_of_output(S),
    enables_appropriate_use(S).
instructions_contain_information(I, predetermined_changes) :-
    instructions_for_use(I),
    contains(I, changes(S)),
    contains(I, performance_changes(S)),
    predetermined_by_provider(S),
    at_moment_of_initial_conformity_assessment(S).
instructions_contain_information(I, human_oversight_measures) :-
    instructions_for_use(I),
    contains(I, human_oversight_measures(S)),
    contains(I, technical_measures(S)),
    measures_facilitate_interpretation(S, deployers).
instructions_contain_information(I, computational_hardware_resources) :-
    instructions_for_use(I),
    contains(I, computational_resources(S)),
    contains(I, hardware_resources(S)).
instructions_contain_information(I, expected_lifetime) :-
    instructions_for_use(I),
    contains(I, expected_lifetime(S)).
instructions_contain_information(I, maintenance_and_care_measures) :-
    instructions_for_use(I),
    contains(I, maintenance_measures(S)),
    contains(I, care_measures(S)),
    contains(I, frequency(S)),
    ensures_proper_functioning(S),
    includes_software_updates(S).
instructions_contain_information(I, log_mechanisms_description) :-
    instructions_for_use(I),
    contains(I, description(mechanisms)),
    mechanisms_included_within(S),
    mechanisms_allow_deployers(S),
    allows_collection_of_logs(S),
    allows_storage_of_logs(S),
    allows_interpretation_of_logs(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent/1, 'celex:32024R1689/oj#art_13').
provenance(appropriate_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_information/2, 'celex:32024R1689/oj#art_13').
provenance(must_design_for_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_14').
declared(human_oversight/1, 'oversight by natural persons of a high-risk AI system', 'celex:32024R1689/oj#art_14').
declared(oversight_measure/1, 'measure ensuring human oversight of a high-risk AI system', 'celex:32024R1689/oj#art_14').
declared(built_in_oversight_measure/1, 'oversight measure built into the AI system by the provider', 'celex:32024R1689/oj#art_14').
declared(deployer_implemented_oversight_measure/1, 'oversight measure identified by provider and implemented by deployer', 'celex:32024R1689/oj#art_14').
declared(oversight_assigned_natural_person/1, 'natural person to whom human oversight is assigned', 'celex:32024R1689/oj#art_14').
declared(automation_bias_awareness/1, 'awareness of possible tendency to over-rely on AI output', 'celex:32024R1689/oj#art_14').
declared(separate_verification_by_two_persons/1, 'identification verified and confirmed by at least two natural persons', 'celex:32024R1689/oj#art_14').
declared(biometric_identification_for_law_enforcement_migration_border_asylum/1, 'high-risk AI system used for law enforcement, migration, border control or asylum', 'celex:32024R1689/oj#art_14').
declared(disproportionate_requirement_exempt/1, 'application of two-person verification requirement considered disproportionate under Union or national law', 'celex:32024R1689/oj#art_14').
required_human_oversight_design(S) :-
    high_risk_ai_system(S),
    human_oversight(S).
human_oversight(S) :-
    high_risk_ai_system(S),
    effective_oversight_by_natural_persons(S).
effective_oversight_by_natural_persons(S) :-
    high_risk_ai_system(S),
    designed_with_human_machine_interface_tools(S),
    oversight_during_use_period(S).
objective_human_oversight(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    aims_to_prevent_or_minimise_risks(S).
aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_fundamental_rights(S),
    used_in_accordance_with_intended_purpose(S).
aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_fundamental_rights(S),
    reasonably_foreseeable_misuse_conditions(S),
    risks_persist_despite_other_requirements(S).
oversight_measure_commensurate(S, M) :-
    high_risk_ai_system(S),
    oversight_measure(M),
    commensurate_with_risks(S, M),
    commensurate_with_autonomy_level(S, M),
    commensurate_with_context_of_use(S, M).
built_in_oversight_measure(M) :-
    oversight_measure(M),
    identified_and_built_by_provider(M),
    technically_feasible(M),
    before_placing_on_market_or_putting_into_service(M).
deployer_implemented_oversight_measure(M) :-
    oversight_measure(M),
    identified_by_provider(M),
    appropriate_for_deployer_implementation(M),
    before_placing_on_market_or_putting_into_service(M).
ensured_through_oversight_measures(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    built_in_oversight_measure(M),
    oversight_measure_applies_to_system(M, S).
ensured_through_oversight_measures(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    deployer_implemented_oversight_measure(M),
    oversight_measure_applies_to_system(M, S).
ensured_through_oversight_measures(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    built_in_oversight_measure(M1),
    deployer_implemented_oversight_measure(M2),
    oversight_measure_applies_to_system(M1, S),
    oversight_measure_applies_to_system(M2, S).
must_provide_system_enabling_oversight(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    human_oversight(S),
    provided_to_deployer_in_enabling_way(Provider, S).
provided_to_deployer_in_enabling_way(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    oversight_assigned_natural_person(Person, S),
    enabled_to_understand_capacities_and_limitations(Person, S),
    enabled_to_monitor_operation(Person, S),
    enabled_to_detect_anomalies_dysfunctions_unexpected_performance(Person, S),
    enabled_to_remain_aware_of_automation_bias(Person, S),
    enabled_to_correctly_interpret_output(Person, S),
    enabled_to_decide_not_to_use_or_override_output(Person, S),
    enabled_to_intervene_or_interrupt_system(Person, S).
oversight_assigned_natural_person(Person, S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    natural_person(Person),
    assigned_human_oversight(Person, S).
enabled_to_understand_capacities_and_limitations(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    properly_understands_relevant_capacities_and_limitations(Person, S),
    able_to_duly_monitor_operation(Person, S).
enabled_to_monitor_operation(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_detect_anomalies_dysfunctions_unexpected_performance(Person, S).
enabled_to_remain_aware_of_automation_bias(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    remains_aware_of_possible_automation_bias(Person, S).
remains_aware_of_possible_automation_bias(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    automation_bias_awareness(Person),
    high_risk_ai_system_used_for_information_or_recommendations(S).
enabled_to_correctly_interpret_output(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    correctly_interprets_output(Person, S),
    interpretation_tools_and_methods_available(Person, S).
enabled_to_decide_not_to_use_or_override_output(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_decide_not_to_use_system(Person, S).
enabled_to_decide_not_to_use_or_override_output(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_disregard_override_or_reverse_output(Person, S).
enabled_to_intervene_or_interrupt_system(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_intervene_in_operation(Person, S).
enabled_to_intervene_or_interrupt_system(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_interrupt_system_via_stop_button_or_similar(Person, S),
    system_comes_to_halt_in_safe_state(S).
required_separate_verification_by_two_persons(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    biometric_identification_system(S),
    separate_verification_by_two_persons(S).
separate_verification_by_two_persons(S) :-
    high_risk_ai_system(S),
    no_action_or_decision_taken_by_deployer_on_basis_of_identification(S),
    identification_separately_verified_and_confirmed(S),
    verified_by_at_least_two_natural_persons(S),
    natural_persons_have_competence_training_authority(S).
exempt_separate_verification_by_two_persons(S) :-
    high_risk_ai_system(S),
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    disproportionate_requirement_exempt(S).
disproportionate_requirement_exempt(S) :-
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    union_or_national_law_considers_disproportionate(S).
annex_3_point_1_a_system(S) :-
    remote_biometric_identification_system(S).
annex_3_point_1_a_system(S) :-
    biometric_identification(S),
    ai_system(S),
    high_risk_ai_system(S).
natural_person(Person) :-
    oversight_assigned_natural_person(Person, _).
assigned_human_oversight(Person, S) :-
    oversight_assigned_natural_person(Person, S).
designed_with_human_machine_interface_tools(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    appropriate_human_machine_interface_tools(S).
oversight_during_use_period(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    period_in_which_system_is_in_use(S).
risk_to_health_safety_fundamental_rights(S) :-
    high_risk_ai_system(S),
    risk(S),
    risk_to_health(S),
    risk_to_safety(S),
    risk_to_fundamental_rights(S).
used_in_accordance_with_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    use_in_accordance_with_intended_purpose(S).
reasonably_foreseeable_misuse_conditions(S) :-
    high_risk_ai_system(S),
    reasonably_foreseeable_misuse(S),
    conditions_of_reasonably_foreseeable_misuse(S).
risks_persist_despite_other_requirements(S) :-
    high_risk_ai_system(S),
    other_requirements_set_out_in_chapter_3_section_2_applied(S).
commensurate_with_risks(S, M) :-
    oversight_measure(M),
    commensurate_with(S, risks, M).
commensurate_with_autonomy_level(S, M) :-
    oversight_measure(M),
    commensurate_with(S, level_of_autonomy, M).
commensurate_with_context_of_use(S, M) :-
    oversight_measure(M),
    commensurate_with(S, context_of_use, M).
oversight_measure_applies_to_system(M, S) :-
    oversight_measure(M),
    high_risk_ai_system(S),
    measure_applies_to(M, S).
identified_and_built_by_provider(M) :-
    built_in_oversight_measure(M),
    provider_identified_and_built(M).
technically_feasible(M) :-
    built_in_oversight_measure(M),
    technically_feasible_to_build_in(M).
before_placing_on_market_or_putting_into_service(M) :-
    oversight_measure(M),
    timing_before_placing_on_market_or_putting_into_service(M).
identified_by_provider(M) :-
    deployer_implemented_oversight_measure(M),
    provider_identified(M).
appropriate_for_deployer_implementation(M) :-
    deployer_implemented_oversight_measure(M),
    appropriate_to_be_implemented_by_deployer(M).
high_risk_ai_system_used_for_information_or_recommendations(S) :-
    high_risk_ai_system(S),
    used_to_provide_information_or_recommendations(S),
    for_decisions_to_be_taken_by_natural_persons(S).
interpretation_tools_and_methods_available(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    interpretation_tools_available(Person, S),
    interpretation_methods_available(Person, S).
able_to_intervene_in_operation(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    intervention_capability(Person, S).
able_to_interrupt_system_via_stop_button_or_similar(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    stop_button_or_similar_procedure_available(Person, S).
system_comes_to_halt_in_safe_state(S) :-
    high_risk_ai_system(S),
    halt_in_safe_state_achievable(S).
no_action_or_decision_taken_by_deployer_on_basis_of_identification(S) :-
    high_risk_ai_system(S),
    deployer(D),
    \+ action_or_decision_taken_by_deployer_on_basis_of_identification(D, S).
identification_separately_verified_and_confirmed(S) :-
    high_risk_ai_system(S),
    identification_resulting_from_system(S),
    separately_verified_and_confirmed(identification_resulting_from_system(S)).
verified_by_at_least_two_natural_persons(S) :-
    high_risk_ai_system(S),
    at_least_two_natural_persons(Persons),
    verified_by(Persons, identification_resulting_from_system(S)).
natural_persons_have_competence_training_authority(S) :-
    high_risk_ai_system(S),
    natural_persons(Persons),
    have_necessary_competence(Persons),
    have_necessary_training(Persons),
    have_necessary_authority(Persons).
biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_law_enforcement(S).
biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_migration(S).
biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_border_control(S).
biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_asylum(S).
union_or_national_law_considers_disproportionate(S) :-
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    union_law_considers_application_disproportionate(S).
union_or_national_law_considers_disproportionate(S) :-
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    national_law_considers_application_disproportionate(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_assigned_natural_person/1, 'celex:32024R1689/oj#art_14').
provenance(automation_bias_awareness/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_by_two_persons/1, 'celex:32024R1689/oj#art_14').
provenance(biometric_identification_for_law_enforcement_migration_border_asylum/1, 'celex:32024R1689/oj#art_14').
provenance(disproportionate_requirement_exempt/1, 'celex:32024R1689/oj#art_14').
provenance(required_human_oversight_design/1, 'celex:32024R1689/oj#art_14').
provenance(objective_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measure_commensurate/2, 'celex:32024R1689/oj#art_14').
provenance(ensured_through_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(must_provide_system_enabling_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(provided_to_deployer_in_enabling_way/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_understand_capacities_and_limitations/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_monitor_operation/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_remain_aware_of_automation_bias/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_correctly_interpret_output/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_decide_not_to_use_or_override_output/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_intervene_or_interrupt_system/2, 'celex:32024R1689/oj#art_14').
provenance(required_separate_verification_by_two_persons/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_separate_verification_by_two_persons/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_15').
declared(designed_and_developed/2, 'entity designed and developed an AI system', 'celex:32024R1689/oj#art_15').
declared(appropriate_level/2, 'appropriate level of a quality attribute for an AI system', 'celex:32024R1689/oj#art_15').
declared(accuracy/1, 'quality attribute of correct outputs', 'celex:32024R1689/oj#art_15').
declared(robustness/1, 'quality attribute of resilience to errors and faults', 'celex:32024R1689/oj#art_15').
declared(cybersecurity/1, 'quality attribute of protection against unauthorised access', 'celex:32024R1689/oj#art_15').
declared(performs_consistently/2, 'AI system performs consistently in a quality attribute throughout its lifecycle', 'celex:32024R1689/oj#art_15').
declared(lifecycle/1, 'entire lifespan of an AI system from design to decommissioning', 'celex:32024R1689/oj#art_15').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_15').
declared(encourage_development/2, 'actor encourages development of benchmarks and measurement methodologies', 'celex:32024R1689/oj#art_15').
declared(benchmark/1, 'standardised reference for measuring performance', 'celex:32024R1689/oj#art_15').
declared(measurement_methodology/1, 'methodology for measuring performance metrics', 'celex:32024R1689/oj#art_15').
declared(declared_in_instructions/2, 'metric or level declared in accompanying instructions for use', 'celex:32024R1689/oj#art_15').
declared(accuracy_metric/1, 'specific metric measuring accuracy of an AI system', 'celex:32024R1689/oj#art_15').
declared(resilient_to_errors/1, 'AI system is resilient regarding errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(technical_redundancy_solution/1, 'technical solution providing backup or fail-safe capability', 'celex:32024R1689/oj#art_15').
declared(backup_plan/1, 'plan for backup operation', 'celex:32024R1689/oj#art_15').
declared(fail_safe_plan/1, 'plan for safe failure mode', 'celex:32024R1689/oj#art_15').
declared(continues_to_learn/1, 'AI system continues to learn after being placed on market or put into service', 'celex:32024R1689/oj#art_15').
declared(feedback_loop/1, 'biased outputs influencing input for future operations', 'celex:32024R1689/oj#art_15').
declared(biased_output/1, 'output of an AI system that is biased', 'celex:32024R1689/oj#art_15').
declared(mitigation_measure/1, 'measure to mitigate a risk', 'celex:32024R1689/oj#art_15').
declared(resilient_against_unauthorised_alteration/1, 'AI system is resilient against attempts by unauthorised third parties to alter use, outputs or performance', 'celex:32024R1689/oj#art_15').
declared(cybersecurity_technical_solution/1, 'technical solution ensuring cybersecurity of an AI system', 'celex:32024R1689/oj#art_15').
declared(data_poisoning_attack/1, 'attack trying to manipulate the training data set', 'celex:32024R1689/oj#art_15').
declared(model_poisoning_attack/1, 'attack trying to manipulate pre-trained components used in training', 'celex:32024R1689/oj#art_15').
declared(adversarial_example_attack/1, 'attack using inputs designed to cause the AI model to make a mistake', 'celex:32024R1689/oj#art_15').
declared(model_evasion_attack/1, 'attack causing model evasion', 'celex:32024R1689/oj#art_15').
declared(confidentiality_attack/1, 'attack targeting confidentiality of the AI system', 'celex:32024R1689/oj#art_15').
declared(model_flaw/1, 'flaw in the AI model', 'celex:32024R1689/oj#art_15').
must_achieve_appropriate_level(S, accuracy) :-
    high_risk_ai_system(S),
    designed_and_developed(_, S).
must_achieve_appropriate_level(S, robustness) :-
    high_risk_ai_system(S),
    designed_and_developed(_, S).
must_achieve_appropriate_level(S, cybersecurity) :-
    high_risk_ai_system(S),
    designed_and_developed(_, S).
must_perform_consistently(S, accuracy) :-
    high_risk_ai_system(S),
    lifecycle(S).
must_perform_consistently(S, robustness) :-
    high_risk_ai_system(S),
    lifecycle(S).
must_perform_consistently(S, cybersecurity) :-
    high_risk_ai_system(S),
    lifecycle(S).
must_encourage_development(commission, benchmark).
must_encourage_development(commission, measurement_methodology).
must_declare_in_instructions(S, accuracy_level) :-
    high_risk_ai_system(S).
must_declare_in_instructions(S, accuracy_metric) :-
    high_risk_ai_system(S),
    accuracy_metric(M),
    declared_in_instructions(M, instructions_for_use(S)).
must_be_resilient_to_errors(S) :-
    high_risk_ai_system(S).
robustness_achieved_through(S, technical_redundancy_solution) :-
    high_risk_ai_system(S).
robustness_achieved_through(S, backup_plan) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(backup_plan).
robustness_achieved_through(S, fail_safe_plan) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(fail_safe_plan).
must_eliminate_or_reduce_feedback_loop_risk(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    placing_on_market(S).
must_eliminate_or_reduce_feedback_loop_risk(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    putting_into_service(S).
must_address_feedback_loop(S, mitigation_measure) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(S).
must_be_resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).
cybersecurity_technical_solution_appropriate(S) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
must_include_measure_against(S, data_poisoning_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
must_include_measure_against(S, model_poisoning_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
must_include_measure_against(S, adversarial_example_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
must_include_measure_against(S, model_evasion_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
must_include_measure_against(S, confidentiality_attack) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
must_include_measure_against(S, model_flaw) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S).
provenance(must_achieve_appropriate_level/2, 'celex:32024R1689/oj#art_15').
provenance(must_perform_consistently/2, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_development/2, 'celex:32024R1689/oj#art_15').
provenance(must_declare_in_instructions/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_to_errors/1, 'celex:32024R1689/oj#art_15').
provenance(robustness_achieved_through/2, 'celex:32024R1689/oj#art_15').
provenance(must_eliminate_or_reduce_feedback_loop_risk/1, 'celex:32024R1689/oj#art_15').
provenance(must_address_feedback_loop/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(cybersecurity_technical_solution_appropriate/1, 'celex:32024R1689/oj#art_15').
provenance(must_include_measure_against/2, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_16').
declared(quality_management_system/1, 'quality management system complying with Article 17', 'celex:32024R1689/oj#art_16').
declared(technical_documentation/1, 'documentation referred to in Article 18', 'celex:32024R1689/oj#art_16').
declared(automatically_generated_logs/1, 'logs automatically generated by the high-risk AI system as referred to in Article 19', 'celex:32024R1689/oj#art_16').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity drawn up in accordance with Article 47', 'celex:32024R1689/oj#art_16').
declared(ce_marking_affixed/1, 'CE marking affixed to the high-risk AI system or its packaging or accompanying documentation', 'celex:32024R1689/oj#art_16').
declared(registration_obligation_fulfilled/1, 'registration obligations referred to in Article 49(1) complied with', 'celex:32024R1689/oj#art_16').
declared(corrective_action_taken/1, 'necessary corrective actions taken and information provided as required in Article 20', 'celex:32024R1689/oj#art_16').
declared(conformity_demonstrated_to_authority/1, 'conformity of the high-risk AI system demonstrated upon reasoned request of a national competent authority', 'celex:32024R1689/oj#art_16').
declared(accessibility_requirements_met/1, 'high-risk AI system complies with accessibility requirements', 'celex:32024R1689/oj#art_16').
declared(provider_contact_details_indicated/1, 'provider name, registered trade name or mark, and contact address indicated on system, packaging, or documentation', 'celex:32024R1689/oj#art_16').
declared(conformity_assessment_completed/1, 'relevant conformity assessment procedure completed prior to placing on market or putting into service', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
must_indicate_contact_details(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    provider_contact_details_indicated(S).
must_have_quality_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    quality_management_system(S).
must_keep_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).
must_keep_logs(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    automatically_generated_logs(S).
must_ensure_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_completed(S).
must_draw_up_eu_declaration(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(S).
must_affix_ce_marking(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    ce_marking_affixed(S).
must_comply_with_registration(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    registration_obligation_fulfilled(S).
must_take_corrective_actions(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    corrective_action_taken(S).
must_demonstrate_conformity(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    conformity_demonstrated_to_authority(S).
must_ensure_accessibility_compliance(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    accessibility_requirements_met(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_16').
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_16').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_16').
provenance(automatically_generated_logs/1, 'celex:32024R1689/oj#art_16').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_16').
provenance(ce_marking_affixed/1, 'celex:32024R1689/oj#art_16').
provenance(registration_obligation_fulfilled/1, 'celex:32024R1689/oj#art_16').
provenance(corrective_action_taken/1, 'celex:32024R1689/oj#art_16').
provenance(conformity_demonstrated_to_authority/1, 'celex:32024R1689/oj#art_16').
provenance(accessibility_requirements_met/1, 'celex:32024R1689/oj#art_16').
provenance(provider_contact_details_indicated/1, 'celex:32024R1689/oj#art_16').
provenance(conformity_assessment_completed/1, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').

% ==== celex:32024R1689/oj#art_17 ====
declared(must_establish_quality_management_system/2, 'provider must put in place a quality management system for a high-risk AI system', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_documented/1, 'quality management system is documented in written policies, procedures and instructions', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_includes/2, 'quality management system includes a specific aspect', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_proportionate/2, 'implementation of quality management system aspects is proportionate to provider organisation size', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_sectoral_equivalent/1, 'provider may use sectoral quality management system covering required aspects', 'celex:32024R1689/oj#art_17').
declared(financial_institution_quality_management_deemed_fulfilled/1, 'financial institution complying with sectoral governance rules is deemed to fulfil quality management obligation with exceptions', 'celex:32024R1689/oj#art_17').
must_establish_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S).
quality_management_system_documented(Q) :-
    must_establish_quality_management_system(_P, S),
    quality_management_system(S, Q).
quality_management_system_includes(Q, regulatory_compliance_strategy) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, design_control_and_verification) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, development_quality_control_and_assurance) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, examination_test_and_validation_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, technical_specifications_and_standards) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, data_management_systems_and_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, risk_management_system) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, post_market_monitoring_system) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, serious_incident_reporting_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, communication_handling_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, record_keeping_systems_and_procedures) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, resource_management) :-
    quality_management_system_documented(Q).
quality_management_system_includes(Q, accountability_framework) :-
    quality_management_system_documented(Q).
quality_management_system_proportionate(P, S) :-
    must_establish_quality_management_system(P, S).
quality_management_system_sectoral_equivalent(P) :-
    provider(P),
    subject_to_sectoral_quality_management_obligations(P).
financial_institution_quality_management_deemed_fulfilled(P) :-
    provider(P),
    financial_institution(P),
    subject_to_internal_governance_requirements(P),
    complies_with_financial_services_governance_rules(P).
must_establish_quality_management_system(P, S) :-
    financial_institution_quality_management_deemed_fulfilled(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    \+ quality_management_system_includes_exception(S).
quality_management_system_includes_exception(S) :-
    quality_management_system_includes(S, risk_management_system).
quality_management_system_includes_exception(S) :-
    quality_management_system_includes(S, post_market_monitoring_system).
quality_management_system_includes_exception(S) :-
    quality_management_system_includes(S, serious_incident_reporting_procedures).
provenance(must_establish_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_proportionate/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_sectoral_equivalent/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_quality_management_deemed_fulfilled/1, 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').

% ==== celex:32024R1689/oj#art_18 ====
declared(must_keep_documentation/2, 'provider must keep documentation at disposal of national competent authorities', 'celex:32024R1689/oj#art_18').
declared(documentation_kept/2, 'specific documentation kept by provider', 'celex:32024R1689/oj#art_18').
declared(retention_period/2, 'period for which documentation must be kept', 'celex:32024R1689/oj#art_18').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_18').
must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S).
must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S).
retention_period(S, years(10)) :-
    high_risk_ai_system(S).
documentation_kept(P, technical_documentation(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)).
documentation_kept(P, quality_management_system_documentation(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)).
documentation_kept(P, notified_body_changes_documentation(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)),
    notified_body(_NB).
documentation_kept(P, notified_body_decisions(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)),
    notified_body(_NB).
documentation_kept(P, eu_declaration_of_conformity(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)).
must_keep_documentation(P, technical_documentation(S)) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    part_of(S, financial_services_documentation).
financial_institution_provider(P) :-
    provider(P),
    financial_institution(P).
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_kept/2, 'celex:32024R1689/oj#art_18').
provenance(retention_period/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(must_keep_logs/2, 'provider obliged to keep automatically generated logs of high-risk AI system', 'celex:32024R1689/oj#art_19').
declared(logs_under_control/2, 'logs of high-risk AI system under control of provider', 'celex:32024R1689/oj#art_19').
declared(appropriate_retention_period/2, 'retention period appropriate to intended purpose of high-risk AI system', 'celex:32024R1689/oj#art_19').
declared(minimum_retention_period/1, 'minimum retention period of six months', 'celex:32024R1689/oj#art_19').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to Union financial services law requirements', 'celex:32024R1689/oj#art_19').
declared(logs_maintained_as_part_of_documentation/2, 'logs maintained as part of documentation under financial services law', 'celex:32024R1689/oj#art_19').
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    appropriate_retention_period(S, months(6)).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    minimum_retention_period(months(6)),
    appropriate_retention_period(S, months(6)).
logs_under_control(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    automatically_generated_logs(S, L),
    under_control(P, L).
appropriate_retention_period(S, Period) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    period_appropriate_to_intended_purpose(S, Period).
minimum_retention_period(months(6)).
must_maintain_logs_as_documentation(P, S) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    logs_maintained_as_part_of_documentation(P, S).
financial_institution_provider(P) :-
    provider(P),
    financial_institution(P),
    subject_to_union_financial_services_law(P).
logs_maintained_as_part_of_documentation(P, S) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    automatically_generated_logs(S, L),
    documentation_under_financial_services_law(P, D),
    logs_included_in_documentation(L, D).
automatically_generated_logs(S, L) :-
    high_risk_ai_system(S),
    logs_automatically_generated_by(S, L).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(appropriate_retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(minimum_retention_period/1, 'celex:32024R1689/oj#art_19').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_19').
provenance(logs_maintained_as_part_of_documentation/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_as_documentation/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_20').
declared(nonconformity/1, 'failure to comply with applicable requirements', 'celex:32024R1689/oj#art_20').
declared(corrective_action/1, 'action to bring a system into conformity, withdraw, disable, or recall', 'celex:32024R1689/oj#art_20').
declared(presents_risk/1, 'system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_20').
declared(investigate_causes/2, 'investigation of causes of risk in collaboration with deployer', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    placing_on_market(S),
    nonconformity(S).
must_take_corrective_action(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    putting_into_service(S),
    nonconformity(S).
must_inform(Provider, nonconformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placing_on_market(S),
    nonconformity(S).
must_inform(Provider, nonconformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    putting_into_service(S),
    nonconformity(S).
must_inform_distributors(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).
must_inform_deployers(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).
must_inform_authorised_representative(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).
must_inform_importers(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).
must_investigate_causes(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    presents_risk(S).
must_inform_market_surveillance_authorities(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    presents_risk(S).
must_inform_notified_body(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    presents_risk(S),
    notified_body(B),
    certificate_issued_for(B, S).
certificate_issued_for(B, S) :-
    notified_body(B),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_20').
provenance(nonconformity/1, 'celex:32024R1689/oj#art_20').
provenance(corrective_action/1, 'celex:32024R1689/oj#art_20').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_20').
provenance(investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributors/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployers/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importers/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').
provenance(certificate_issued_for/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(must_provide_information_on_request/2, 'provider must provide information and documentation to competent authority upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(must_give_access_to_logs/2, 'provider must give competent authority access to automatically generated logs upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(reasoned_request/2, 'competent authority makes a reasoned request to a provider', 'celex:32024R1689/oj#art_21').
declared(information_and_documentation/1, 'information and documentation necessary to demonstrate conformity with requirements', 'celex:32024R1689/oj#art_21').
declared(conformity_requirements/1, 'requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_21').
declared(easily_understood_language/1, 'language easily understood by the authority in an official language of Union institutions as indicated by Member State', 'celex:32024R1689/oj#art_21').
declared(automatically_generated_logs/1, 'automatically generated logs of the high-risk AI system', 'celex:32024R1689/oj#art_21').
declared(logs_under_control/2, 'logs are under the control of the provider', 'celex:32024R1689/oj#art_21').
declared(confidentiality_obligations/1, 'confidentiality obligations set out in Article 78', 'celex:32024R1689/oj#art_21').
declared(information_obtained_by_authority/1, 'information obtained by competent authority pursuant to Article 21', 'celex:32024R1689/oj#art_21').
must_provide_information_on_request(P, A) :-
    provider(P),
    high_risk_ai_system(S),
    provider_places_on_market(P, S),
    national_competent_authority(A),
    reasoned_request(A, P),
    information_and_documentation(D),
    demonstrates_conformity(D, S),
    conformity_requirements(R),
    easily_understood_language(L),
    must_provide(P, information(D, L, A)).
must_give_access_to_logs(P, A) :-
    provider(P),
    high_risk_ai_system(S),
    provider_places_on_market(P, S),
    national_competent_authority(A),
    reasoned_request(A, P),
    automatically_generated_logs(Logs, S),
    logs_under_control(P, Logs),
    must_give_access(P, Logs, A).
must_treat_information_confidentially(A, Info) :-
    national_competent_authority(A),
    information_obtained_by_authority(Info),
    confidentiality_obligations(O),
    must_treat(A, Info, O).
high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).
provider_places_on_market(P, S) :-
    provider(P),
    placing_on_market(S),
    provider_of(P, S).
provider_of(P, S) :-
    provider(P),
    develops(P, S).
develops(P, S) :-
    provider(P),
    ai_system(S).
demonstrates_conformity(D, S) :-
    information_and_documentation(D),
    ai_system(S).
must_provide(P, information(D, L, A)) :-
    provider(P),
    information_and_documentation(D),
    easily_understood_language(L),
    national_competent_authority(A).
must_give_access(P, Logs, A) :-
    provider(P),
    automatically_generated_logs(Logs, _S),
    national_competent_authority(A).
must_treat(A, Info, O) :-
    national_competent_authority(A),
    information_obtained_by_authority(Info),
    confidentiality_obligations(O).
automatically_generated_logs(Logs, S) :-
    ai_system(S),
    logs(Logs),
    automatically_generated(Logs).
logs_under_control(P, Logs) :-
    provider(P),
    controls(P, Logs).
high_risk(S) :-
    ai_system(S),
    risk(S).
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_21').
provenance(information_and_documentation/1, 'celex:32024R1689/oj#art_21').
provenance(conformity_requirements/1, 'celex:32024R1689/oj#art_21').
provenance(easily_understood_language/1, 'celex:32024R1689/oj#art_21').
provenance(automatically_generated_logs/1, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').
provenance(confidentiality_obligations/1, 'celex:32024R1689/oj#art_21').
provenance(information_obtained_by_authority/1, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_22').
declared(provider_established_in_third_country/1, 'provider established outside the Union', 'celex:32024R1689/oj#art_22').
declared(written_mandate/1, 'written mandate appointing an authorised representative', 'celex:32024R1689/oj#art_22').
declared(appointed_authorised_representative/2, 'provider appointed authorised representative', 'celex:32024R1689/oj#art_22').
declared(mandate_task/1, 'task specified in the mandate', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers/2, 'mandate empowers authorised representative to perform task', 'celex:32024R1689/oj#art_22').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity drawn up', 'celex:32024R1689/oj#art_22').
declared(technical_documentation/1, 'technical documentation drawn up', 'celex:32024R1689/oj#art_22').
declared(appropriate_conformity_assessment_carried_out/1, 'appropriate conformity assessment procedure carried out by provider', 'celex:32024R1689/oj#art_22').
declared(certificate_issued_by_notified_body/1, 'certificate issued by notified body', 'celex:32024R1689/oj#art_22').
declared(contact_details_of_provider/1, 'contact details of the provider that appointed the authorised representative', 'celex:32024R1689/oj#art_22').
declared(logs_automatically_generated/1, 'logs automatically generated by the high-risk AI system', 'celex:32024R1689/oj#art_22').
declared(logs_under_control_of_provider/1, 'logs under the control of the provider', 'celex:32024R1689/oj#art_22').
declared(reasoned_request/1, 'reasoned request from competent authority', 'celex:32024R1689/oj#art_22').
declared(registration_obligation/1, 'registration obligation under Article 49(1)', 'celex:32024R1689/oj#art_22').
declared(registration_information/1, 'information referred to in Annex VIII Section 1 point 3', 'celex:32024R1689/oj#art_22').
declared(mandate_terminated/1, 'authorised representative terminated the mandate', 'celex:32024R1689/oj#art_22').
declared(provider_acting_contrary_to_obligations/1, 'provider acting contrary to its obligations under the regulation', 'celex:32024R1689/oj#art_22').
must_appoint_authorised_representative(Provider, Representative) :-
    provider_established_in_third_country(Provider),
    high_risk_ai_system(S),
    making_available_on_market(S),
    written_mandate(M),
    authorised_representative(Representative),
    appointed_authorised_representative(Provider, Representative).
must_enable_performance_of_mandate_tasks(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    appointed_authorised_representative(Provider, Representative),
    mandate_task(T),
    mandate_empowers(M, T).
must_perform_mandate_tasks(Representative, Task) :-
    authorised_representative(Representative),
    mandate_task(Task),
    mandate_empowers(_M, Task).
must_provide_mandate_copy(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    request_for_mandate_copy(Authority, Representative).
must_verify_conformity_documentation(Representative, S) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    mandate_empowers(_M, verify_conformity_documentation(S)).
verify_conformity_documentation(S) :-
    eu_declaration_of_conformity(S),
    technical_documentation(S),
    appropriate_conformity_assessment_carried_out(S).
must_keep_documents_at_disposal(Representative, S) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    mandate_empowers(_M, keep_documents_at_disposal(S, years(10))).
keep_documents_at_disposal(S, Period) :-
    contact_details_of_provider(S),
    eu_declaration_of_conformity(S),
    technical_documentation(S),
    (   certificate_issued_by_notified_body(S)
    ->  true
    ;   true
    ),
    period(Period, after(placing_on_market(S))).
must_provide_information_upon_request(Representative, S, Authority) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    competent_authority(Authority),
    reasoned_request(Request),
    request_relates_to(Request, S),
    mandate_empowers(_M, provide_information(S, Authority)).
provide_information(S, Authority) :-
    information_necessary_to_demonstrate_conformity(S),
    logs_automatically_generated(S),
    logs_under_control_of_provider(S),
    access_to_logs_granted(Authority, S).
must_cooperate_with_authorities(Representative, S, Authority) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    competent_authority(Authority),
    reasoned_request(Request),
    request_relates_to(Request, S),
    mandate_empowers(_M, cooperate_with_authorities(S, Authority)).
must_comply_with_registration_obligations(Representative, S) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    registration_obligation(S),
    mandate_empowers(_M, comply_with_registration(S)).
comply_with_registration(S) :-
    registration_carried_out_by_provider(S),
    registration_information_correct(S).
comply_with_registration(S) :-
    registration_carried_out_by_representative(S),
    registration_information(S).
mandate_empowers_representative_to_be_addressed(M, Representative) :-
    written_mandate(M),
    authorised_representative(Representative),
    mandate_empowers(M, be_addressed_by_competent_authorities(Representative)).
must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    appointed_authorised_representative(Provider, Representative),
    provider_acting_contrary_to_obligations(Provider).
must_inform_termination(Representative, Authority) :-
    authorised_representative(Representative),
    mandate_terminated(Representative),
    market_surveillance_authority(Authority).
must_inform_termination(Representative, Body) :-
    authorised_representative(Representative),
    mandate_terminated(Representative),
    notified_body(Body).
must_inform_termination_reasons(Representative, Authority) :-
    authorised_representative(Representative),
    mandate_terminated(Representative),
    market_surveillance_authority(Authority),
    termination_reasons(Representative, Authority).
competent_authority(A) :-
    national_competent_authority(A).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_22').
provenance(provider_established_in_third_country/1, 'celex:32024R1689/oj#art_22').
provenance(written_mandate/1, 'celex:32024R1689/oj#art_22').
provenance(appointed_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_task/1, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers/2, 'celex:32024R1689/oj#art_22').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_22').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_22').
provenance(appropriate_conformity_assessment_carried_out/1, 'celex:32024R1689/oj#art_22').
provenance(certificate_issued_by_notified_body/1, 'celex:32024R1689/oj#art_22').
provenance(contact_details_of_provider/1, 'celex:32024R1689/oj#art_22').
provenance(logs_automatically_generated/1, 'celex:32024R1689/oj#art_22').
provenance(logs_under_control_of_provider/1, 'celex:32024R1689/oj#art_22').
provenance(reasoned_request/1, 'celex:32024R1689/oj#art_22').
provenance(registration_obligation/1, 'celex:32024R1689/oj#art_22').
provenance(registration_information/1, 'celex:32024R1689/oj#art_22').
provenance(mandate_terminated/1, 'celex:32024R1689/oj#art_22').
provenance(provider_acting_contrary_to_obligations/1, 'celex:32024R1689/oj#art_22').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_performance_of_mandate_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandate_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(verify_conformity_documentation/1, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documents_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(keep_documents_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_upon_request/3, 'celex:32024R1689/oj#art_22').
provenance(provide_information/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_authorities/3, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_22').
provenance(comply_with_registration/1, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_representative_to_be_addressed/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_termination_reasons/2, 'celex:32024R1689/oj#art_22').
provenance(competent_authority/1, 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').

% ==== celex:32024R1689/oj#art_23 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_23').
declared(conformity_assessment_procedure/1, 'conformity assessment procedure carried out by provider', 'celex:32024R1689/oj#art_23').
declared(technical_documentation_drawn_up/1, 'provider has drawn up technical documentation', 'celex:32024R1689/oj#art_23').
declared(ce_marking_borne/1, 'system bears required CE marking', 'celex:32024R1689/oj#art_23').
declared(eu_declaration_of_conformity_accompanies/1, 'system accompanied by EU declaration of conformity', 'celex:32024R1689/oj#art_23').
declared(instructions_for_use_accompany/1, 'system accompanied by instructions for use', 'celex:32024R1689/oj#art_23').
declared(authorised_representative_appointed/1, 'provider has appointed authorised representative', 'celex:32024R1689/oj#art_23').
declared(sufficient_reason_to_consider_nonconformity/1, 'importer has sufficient reason to consider system nonconformant', 'celex:32024R1689/oj#art_23').
declared(falsified_ai_system/1, 'high-risk AI system is falsified', 'celex:32024R1689/oj#art_23').
declared(falsified_documentation/1, 'documentation accompanying system is falsified', 'celex:32024R1689/oj#art_23').
declared(presents_risk/1, 'high-risk AI system presents a risk', 'celex:32024R1689/oj#art_23').
declared(brought_into_conformity/1, 'system has been brought into conformity', 'celex:32024R1689/oj#art_23').
declared(importer_indicates_contact_details/1, 'importer indicates name, trade name or mark, and address', 'celex:32024R1689/oj#art_23').
declared(storage_or_transport_conditions_jeopardise_compliance/1, 'storage or transport conditions jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(certificate_issued_by_notified_body/1, 'certificate issued by notified body', 'celex:32024R1689/oj#art_23').
declared(reasoned_request/1, 'reasoned request from competent authority', 'celex:32024R1689/oj#art_23').
declared(necessary_information_and_documentation/1, 'information and documentation necessary to demonstrate conformity', 'celex:32024R1689/oj#art_23').
declared(language_easily_understood/1, 'language easily understood by authorities', 'celex:32024R1689/oj#art_23').
declared(technical_documentation_available/1, 'technical documentation can be made available to authorities', 'celex:32024R1689/oj#art_23').
declared(cooperate_with_competent_authorities/1, 'importer cooperates with competent authorities', 'celex:32024R1689/oj#art_23').
declared(action_by_competent_authorities/1, 'action taken by competent authorities', 'celex:32024R1689/oj#art_23').
declared(reduce_and_mitigate_risks/1, 'action to reduce and mitigate risks', 'celex:32024R1689/oj#art_23').
must_ensure_conformity_before_placing(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    before_placing_on_market(S),
    must_verify_conformity_assessment_carried_out(Importer, S),
    must_verify_technical_documentation_drawn_up(Importer, S),
    must_verify_ce_marking_and_declaration(Importer, S),
    must_verify_authorised_representative_appointed(Importer, S).
must_verify_conformity_assessment_carried_out(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S),
    conformity_assessment_procedure(C),
    carried_out_by(C, P).
must_verify_technical_documentation_drawn_up(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S),
    technical_documentation_drawn_up(S).
must_verify_ce_marking_and_declaration(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    ce_marking_borne(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use_accompany(S).
must_verify_authorised_representative_appointed(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S),
    authorised_representative_appointed(S).
must_not_place_until_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    nonconformity_condition(S),
    \+ brought_into_conformity(S).
nonconformity_condition(S) :-
    high_risk_ai_system(S),
    sufficient_reason_to_consider_nonconformity(S).
nonconformity_condition(S) :-
    high_risk_ai_system(S),
    falsified_ai_system(S).
nonconformity_condition(S) :-
    high_risk_ai_system(S),
    falsified_documentation(S).
must_inform_risk(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S),
    must_inform(Importer, risk(S)).
must_inform(Importer, risk(S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S),
    provider(P),
    provides(P, S),
    informs(Importer, P, risk(S)),
    authorised_representative_appointed(S),
    informs(Importer, authorised_representative, risk(S)),
    market_surveillance_authority(A),
    informs(Importer, A, risk(S)).
must_indicate_contact_details(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    importer_indicates_contact_details(S).
must_ensure_storage_transport_conditions(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    under_responsibility_of(Importer, S),
    \+ storage_or_transport_conditions_jeopardise_compliance(S).
must_keep_records(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_for(Importer, years(10), records(S)).
records(S) :-
    certificate_issued_by_notified_body(S).
records(S) :-
    instructions_for_use(S).
records(S) :-
    eu_declaration_of_conformity(S).
must_provide_information_upon_request(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    reasoned_request(R),
    from_competent_authority(R, A),
    must_provide(Importer, A, necessary_information_and_documentation(S)),
    language_easily_understood(S),
    technical_documentation_available(S).
must_cooperate_with_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_by(Importer, S),
    action_by_competent_authorities(A, S),
    cooperate_with_competent_authorities(Importer, A),
    reduce_and_mitigate_risks(S).
before_placing_on_market(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    high_risk_ai_system(S),
    putting_into_service(S).
placed_on_market_by(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    places_on_market(Importer, S).
under_responsibility_of(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S).
provides(P, S) :-
    provider(P),
    high_risk_ai_system(S).
carried_out_by(C, P) :-
    conformity_assessment_procedure(C),
    provider(P).
from_competent_authority(R, A) :-
    reasoned_request(R),
    national_competent_authority(A).
informs(Importer, Party, Information) :-
    importer(Importer),
    informs_about(Importer, Party, Information).
cooperate_with_competent_authorities(Importer, A) :-
    importer(Importer),
    national_competent_authority(A).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_drawn_up/1, 'celex:32024R1689/oj#art_23').
provenance(ce_marking_borne/1, 'celex:32024R1689/oj#art_23').
provenance(eu_declaration_of_conformity_accompanies/1, 'celex:32024R1689/oj#art_23').
provenance(instructions_for_use_accompany/1, 'celex:32024R1689/oj#art_23').
provenance(authorised_representative_appointed/1, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason_to_consider_nonconformity/1, 'celex:32024R1689/oj#art_23').
provenance(falsified_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(falsified_documentation/1, 'celex:32024R1689/oj#art_23').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_23').
provenance(brought_into_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(importer_indicates_contact_details/1, 'celex:32024R1689/oj#art_23').
provenance(storage_or_transport_conditions_jeopardise_compliance/1, 'celex:32024R1689/oj#art_23').
provenance(certificate_issued_by_notified_body/1, 'celex:32024R1689/oj#art_23').
provenance(reasoned_request/1, 'celex:32024R1689/oj#art_23').
provenance(necessary_information_and_documentation/1, 'celex:32024R1689/oj#art_23').
provenance(language_easily_understood/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_available/1, 'celex:32024R1689/oj#art_23').
provenance(cooperate_with_competent_authorities/1, 'celex:32024R1689/oj#art_23').
provenance(action_by_competent_authorities/1, 'celex:32024R1689/oj#art_23').
provenance(reduce_and_mitigate_risks/1, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_conformity_assessment_carried_out/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_technical_documentation_drawn_up/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_authorised_representative_appointed/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_until_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(nonconformity_condition/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform_risk/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_records/2, 'celex:32024R1689/oj#art_23').
provenance(records/1, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_upon_request/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_24 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_24').
declared(bears_ce_marking/1, 'AI system bears the required CE marking', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_eu_declaration_of_conformity/1, 'AI system is accompanied by a copy of the EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_instructions_for_use/1, 'AI system is accompanied by instructions for use', 'celex:32024R1689/oj#art_24').
declared(provider_complied_with_obligations/2, 'provider has complied with obligations under Article 16(b) and 16(c)', 'celex:32024R1689/oj#art_24').
declared(importer_complied_with_obligations/2, 'importer has complied with obligations under Article 23(3)', 'celex:32024R1689/oj#art_24').
declared(distributor_considers_non_conformity/2, 'distributor considers or has reason to consider system not in conformity', 'celex:32024R1689/oj#art_24').
declared(system_presents_risk/1, 'AI system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(storage_or_transport_conditions_jeopardise_compliance/2, 'storage or transport conditions jeopardise compliance of the system', 'celex:32024R1689/oj#art_24').
declared(corrective_actions_taken/2, 'corrective actions taken to bring system into conformity, withdraw or recall it', 'celex:32024R1689/oj#art_24').
declared(reasoned_request_from_competent_authority/2, 'reasoned request from a relevant competent authority', 'celex:32024R1689/oj#art_24').
declared(relevant_competent_authority/1, 'relevant competent authority for a high-risk AI system', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S),
    before_placing_on_market(S),
    bears_ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    provider_complied_with_obligations(P, S),
    provider(P),
    importer_complied_with_obligations(I, S),
    importer(I).
must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S),
    before_placing_on_market(S),
    bears_ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    provider_complied_with_obligations(P, S),
    provider(P),
    \+ importer(_I).
must_not_make_available_until_conformity(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_conformity(D, S),
    \+ in_conformity_with_requirements(S).
must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    provider(P),
    provider(P, S).
must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    importer(I),
    importer(I, S).
must_ensure_storage_transport_conditions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility_of(D, S),
    \+ storage_or_transport_conditions_jeopardise_compliance(D, S).
must_take_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    corrective_actions_taken(D, S).
must_ensure_corrective_actions_by_others(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    \+ corrective_actions_taken(D, S),
    provider(P),
    provider(P, S).
must_ensure_corrective_actions_by_others(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    \+ corrective_actions_taken(D, S),
    importer(I),
    importer(I, S).
must_ensure_corrective_actions_by_others(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    \+ corrective_actions_taken(D, S),
    operator(O),
    relevant_operator(O, S).
must_immediately_inform_of_non_compliance_and_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    provider(P),
    provider(P, S).
must_immediately_inform_of_non_compliance_and_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    importer(I),
    importer(I, S).
must_immediately_inform_of_non_compliance_and_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    relevant_competent_authority(A),
    authorities_competent_for(A, S).
must_provide_information_and_documentation(D, S, A) :-
    distributor(D),
    high_risk_ai_system(S),
    relevant_competent_authority(A),
    reasoned_request_from_competent_authority(A, D),
    actions_pursuant_to_paragraphs_1_to_4(D, S).
must_cooperate_with_competent_authorities(D, S, A) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    relevant_competent_authority(A),
    action_taken_by_authority(A, S).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_corrective_actions_by_others/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_of_non_compliance_and_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/3, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_competent_authorities/3, 'celex:32024R1689/oj#art_24').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').

% ==== celex:32024R1689/oj#art_25 ====
declared(considered_provider/1, 'distributor, importer, deployer or third party considered to be a provider of a high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(initial_provider/1, 'provider that initially placed the AI system on the market or put it into service', 'celex:32024R1689/oj#art_25').
declared(new_provider/1, 'provider that becomes the provider under Article 25(1)', 'celex:32024R1689/oj#art_25').
declared(puts_name_or_trademark_on/2, 'party puts their name or trademark on a high-risk AI system already placed on the market or put into service', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification/2, 'party makes a substantial modification to a high-risk AI system already placed on the market or put into service', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose/2, 'party modifies the intended purpose of an AI system already placed on the market or put into service', 'celex:32024R1689/oj#art_25').
declared(remains_high_risk/1, 'AI system remains a high-risk AI system after modification', 'celex:32024R1689/oj#art_25').
declared(becomes_high_risk/1, 'AI system becomes a high-risk AI system after modification of intended purpose', 'celex:32024R1689/oj#art_25').
declared(no_longer_considered_provider/1, 'initial provider no longer considered to be a provider of that specific AI system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_providers/2, 'initial provider must closely cooperate with new providers', 'celex:32024R1689/oj#art_25').
declared(must_make_available_information/2, 'initial provider must make available necessary information', 'celex:32024R1689/oj#art_25').
declared(must_provide_technical_access/2, 'initial provider must provide reasonably expected technical access and other assistance', 'celex:32024R1689/oj#art_25').
declared(specified_not_to_be_changed_into_high_risk/1, 'initial provider clearly specified that its AI system is not to be changed into a high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_considered_provider/1, 'product manufacturer considered to be the provider of the high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(placed_on_market_together_with_product/2, 'high-risk AI system placed on the market together with the product under the name or trademark of the product manufacturer', 'celex:32024R1689/oj#art_25').
declared(put_into_service_under_name_or_trademark/2, 'high-risk AI system put into service under the name or trademark of the product manufacturer after the product has been placed on the market', 'celex:32024R1689/oj#art_25').
declared(third_party_supplies/2, 'third party supplies an AI system, tools, services, components, or processes used or integrated in a high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(must_specify_by_written_agreement/3, 'provider and third party must by written agreement specify necessary information, capabilities, technical access and other assistance', 'celex:32024R1689/oj#art_25').
declared(makes_accessible_to_public/2, 'third party makes accessible to the public tools, services, processes, or components under a free and open-source licence', 'celex:32024R1689/oj#art_25').
declared(exempt_written_agreement_requirement/1, 'third party exempt from the written agreement requirement', 'celex:32024R1689/oj#art_25').
declared(may_develop_voluntary_model_terms/1, 'AI Office may develop and recommend voluntary model terms for contracts', 'celex:32024R1689/oj#art_25').
declared(must_take_into_account_sectoral_requirements/1, 'AI Office must take into account possible contractual requirements applicable in specific sectors or business cases when developing voluntary model terms', 'celex:32024R1689/oj#art_25').
declared(must_publish_voluntary_model_terms/1, 'voluntary model terms must be published and be available free of charge in an easily usable electronic format', 'celex:32024R1689/oj#art_25').
considered_provider(P) :-
    distributor(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    placing_on_market(S).
considered_provider(P) :-
    distributor(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    putting_into_service(S).
considered_provider(P) :-
    importer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    placing_on_market(S).
considered_provider(P) :-
    importer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    putting_into_service(S).
considered_provider(P) :-
    deployer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    placing_on_market(S).
considered_provider(P) :-
    deployer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    putting_into_service(S).
considered_provider(P) :-
    distributor(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    placing_on_market(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    distributor(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    putting_into_service(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    importer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    placing_on_market(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    importer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    putting_into_service(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    deployer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    placing_on_market(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    deployer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    putting_into_service(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
provider(considered_provider(P)) :-
    considered_provider(P).
no_longer_considered_provider(P) :-
    initial_provider(P),
    considered_provider(_NewP),
    new_provider(_NewP).
must_cooperate_with_new_providers(P, NewP) :-
    no_longer_considered_provider(P),
    new_provider(NewP).
must_make_available_information(P, NewP) :-
    no_longer_considered_provider(P),
    new_provider(NewP).
must_provide_technical_access(P, NewP) :-
    no_longer_considered_provider(P),
    new_provider(NewP).
product_manufacturer_considered_provider(PM) :-
    product_manufacturer(PM),
    safety_component(S),
    high_risk_ai_system(S),
    placed_on_market_together_with_product(S, PM).
product_manufacturer_considered_provider(PM) :-
    product_manufacturer(PM),
    safety_component(S),
    high_risk_ai_system(S),
    put_into_service_under_name_or_trademark(S, PM).
provider(product_manufacturer_considered_provider(PM)) :-
    product_manufacturer_considered_provider(PM).
must_specify_by_written_agreement(Provider, ThirdParty, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    third_party_supplies(ThirdParty, S),
    \+ exempt_written_agreement_requirement(ThirdParty).
exempt_written_agreement_requirement(ThirdParty) :-
    third_party_supplies(ThirdParty, _S),
    makes_accessible_to_public(ThirdParty, Thing),
    \+ general_purpose_ai_model(Thing).
may_develop_voluntary_model_terms(ai_office) :-
    ai_office(ai_office).
must_take_into_account_sectoral_requirements(ai_office) :-
    ai_office(ai_office).
must_publish_voluntary_model_terms(Terms) :-
    voluntary_model_terms(Terms).
voluntary_model_terms(Terms) :-
    may_develop_voluntary_model_terms(ai_office),
    Terms = model_terms.
provenance(considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(initial_provider/1, 'celex:32024R1689/oj#art_25').
provenance(new_provider/1, 'celex:32024R1689/oj#art_25').
provenance(puts_name_or_trademark_on/2, 'celex:32024R1689/oj#art_25').
provenance(makes_substantial_modification/2, 'celex:32024R1689/oj#art_25').
provenance(modifies_intended_purpose/2, 'celex:32024R1689/oj#art_25').
provenance(remains_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(becomes_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(no_longer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_technical_access/2, 'celex:32024R1689/oj#art_25').
provenance(specified_not_to_be_changed_into_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(placed_on_market_together_with_product/2, 'celex:32024R1689/oj#art_25').
provenance(put_into_service_under_name_or_trademark/2, 'celex:32024R1689/oj#art_25').
provenance(third_party_supplies/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_written_agreement/3, 'celex:32024R1689/oj#art_25').
provenance(makes_accessible_to_public/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_written_agreement_requirement/1, 'celex:32024R1689/oj#art_25').
provenance(may_develop_voluntary_model_terms/1, 'celex:32024R1689/oj#art_25').
provenance(must_take_into_account_sectoral_requirements/1, 'celex:32024R1689/oj#art_25').
provenance(must_publish_voluntary_model_terms/1, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_26').
declared(use_in_accordance_with_instructions/2, 'deployer uses system per instructions for use', 'celex:32024R1689/oj#art_26').
declared(human_oversight_assigned/2, 'deployer assigns human oversight to qualified natural persons', 'celex:32024R1689/oj#art_26').
declared(competent_natural_person/1, 'natural person with necessary competence, training and authority', 'celex:32024R1689/oj#art_26').
declared(deployer_exercises_control_over_input_data/2, 'deployer controls the input data of the system', 'celex:32024R1689/oj#art_26').
declared(input_data_relevant_and_representative/2, 'input data is relevant and sufficiently representative for intended purpose', 'celex:32024R1689/oj#art_26').
declared(monitor_operation/2, 'deployer monitors operation of high-risk AI system', 'celex:32024R1689/oj#art_26').
declared(use_may_present_risk/2, 'use in accordance with instructions may result in risk', 'celex:32024R1689/oj#art_26').
declared(serious_incident_identified/2, 'deployer has identified a serious incident', 'celex:32024R1689/oj#art_26').
declared(keep_logs/3, 'deployer keeps automatically generated logs for specified period', 'celex:32024R1689/oj#art_26').
declared(logs_under_deployer_control/2, 'logs are under the control of the deployer', 'celex:32024R1689/oj#art_26').
declared(employer_deployer/1, 'deployer who is an employer', 'celex:32024R1689/oj#art_26').
declared(workplace_use/2, 'high-risk AI system used at the workplace', 'celex:32024R1689/oj#art_26').
declared(public_authority_deployer/1, 'deployer that is a public authority', 'celex:32024R1689/oj#art_26').
declared(union_institution_deployer/1, 'deployer that is a Union institution, body, office or agency', 'celex:32024R1689/oj#art_26').
declared(system_registered_in_eu_database/1, 'high-risk AI system is registered in the EU database', 'celex:32024R1689/oj#art_26').
declared(data_protection_impact_assessment_required/1, 'obligation to carry out data protection impact assessment applies', 'celex:32024R1689/oj#art_26').
declared(post_remote_biometric_identification_use/2, 'deployer uses post-remote biometric identification system for targeted search', 'celex:32024R1689/oj#art_26').
declared(authorisation_obtained/2, 'authorisation for post-remote biometric identification use obtained', 'celex:32024R1689/oj#art_26').
declared(authorisation_rejected/2, 'authorisation for post-remote biometric identification use rejected', 'celex:32024R1689/oj#art_26').
declared(initial_identification_of_suspect/2, 'use for initial identification of potential suspect based on objective facts', 'celex:32024R1689/oj#art_26').
declared(use_limited_to_strictly_necessary/2, 'use limited to what is strictly necessary for specific criminal offence investigation', 'celex:32024R1689/oj#art_26').
declared(untargeted_law_enforcement_use/1, 'untargeted use for law enforcement without link to criminal offence', 'celex:32024R1689/oj#art_26').
declared(adverse_legal_effect_decision/2, 'decision producing adverse legal effect on person based solely on output', 'celex:32024R1689/oj#art_26').
declared(use_documented_in_police_file/2, 'each use documented in relevant police file', 'celex:32024R1689/oj#art_26').
declared(annual_report_submitted/2, 'deployer submits annual report on post-remote biometric identification use', 'celex:32024R1689/oj#art_26').
declared(decision_related_to_natural_person/2, 'high-risk AI system makes or assists decision related to natural person', 'celex:32024R1689/oj#art_26').
declared(financial_institution_deployer/1, 'deployer that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_26').
declared(law_enforcement_deployer/1, 'deployer that is a law enforcement authority', 'celex:32024R1689/oj#art_26').
must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
human_oversight_assigned(D, P) :-
    deployer(D),
    competent_natural_person(P).
competent_natural_person(P) :-
    natural_person(P),
    has_competence(P),
    has_training(P),
    has_authority(P),
    has_support(P).
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(human_oversight_assigned/2, 'celex:32024R1689/oj#art_26').
provenance(competent_natural_person/1, 'celex:32024R1689/oj#art_26').
must_ensure_input_data_relevant(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    deployer_exercises_control_over_input_data(D, S).
input_data_relevant_and_representative(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    intended_purpose(S),
    input_data(S, D).
provenance(must_ensure_input_data_relevant/2, 'celex:32024R1689/oj#art_26').
provenance(input_data_relevant_and_representative/2, 'celex:32024R1689/oj#art_26').
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_inform_provider_of_risk(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    use_may_present_risk(D, S).
must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    use_may_present_risk(D, S).
must_inform_authorities_of_risk(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    use_may_present_risk(D, S),
    market_surveillance_authority(A).
must_inform_of_serious_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S).
must_inform_provider_first(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S).
must_inform_importer_or_distributor(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S).
must_inform_market_surveillance_of_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S),
    market_surveillance_authority(A).
exempt_from_informing_sensitive_operational_data(D, S) :-
    law_enforcement_deployer(D),
    high_risk_ai_system(S),
    sensitive_operational_data(D).
monitoring_deemed_fulfilled(D, S) :-
    financial_institution_deployer(D),
    high_risk_ai_system(S).
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_of_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_authorities_of_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_first/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_importer_or_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_market_surveillance_of_incident/2, 'celex:32024R1689/oj#art_26').
provenance(exempt_from_informing_sensitive_operational_data/2, 'celex:32024R1689/oj#art_26').
provenance(monitoring_deemed_fulfilled/2, 'celex:32024R1689/oj#art_26').
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_deployer_control(S, D).
keep_logs(D, S, period(months(6))) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_deployer_control(S, D),
    intended_purpose(S).
keep_logs(D, S, Period) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_deployer_control(S, D),
    applicable_law_provides_other_period(Period).
must_maintain_logs_as_financial_documentation(D, S) :-
    financial_institution_deployer(D),
    high_risk_ai_system(S).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(keep_logs/3, 'celex:32024R1689/oj#art_26').
provenance(must_maintain_logs_as_financial_documentation/2, 'celex:32024R1689/oj#art_26').
must_inform_workers(D, S) :-
    employer_deployer(D),
    high_risk_ai_system(S),
    workplace_use(S, D).
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
must_comply_with_registration(D, S) :-
    public_authority_deployer(D),
    high_risk_ai_system(S).
must_comply_with_registration(D, S) :-
    union_institution_deployer(D),
    high_risk_ai_system(S).
prohibited_use_unregistered_system(D, S) :-
    public_authority_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).
prohibited_use_unregistered_system(D, S) :-
    union_institution_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).
must_inform_provider_or_distributor_of_unregistered(D, S) :-
    public_authority_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).
must_inform_provider_or_distributor_of_unregistered(D, S) :-
    union_institution_deployer(D),
    high_risk_ai_system(S),
    \+ system_registered_in_eu_database(S).
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_or_distributor_of_unregistered/2, 'celex:32024R1689/oj#art_26').
must_use_information_for_dpia(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    data_protection_impact_assessment_required(S).
provenance(must_use_information_for_dpia/2, 'celex:32024R1689/oj#art_26').
must_request_authorisation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    law_enforcement_deployer(D),
    targeted_search_for_person(D, S).
authorisation_obtained(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    judicial_authority(A),
    authorisation_granted_ex_ante(A, D, S).
authorisation_obtained(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    administrative_authority(A),
    authorisation_granted_without_undue_delay(A, D, S),
    within(hours(48)).
exempt_from_authorisation_requirement(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    initial_identification_of_suspect(D, S),
    objective_and_verifiable_facts(D, S),
    directly_linked_to_offence(D, S).
must_limit_use_to_strictly_necessary(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    specific_criminal_offence_investigation(D, S).
must_stop_use_immediately(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D, S).
must_delete_personal_data(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D, S),
    personal_data_linked_to_use(D, S).
prohibited_untargeted_law_enforcement_use(S) :-
    post_remote_biometric_identification_system(S),
    untargeted_law_enforcement_use(S).
prohibited_adverse_legal_effect_decision(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    law_enforcement_authority(A),
    adverse_legal_effect_decision(D, S, A),
    based_solely_on_output(S).
must_document_use_in_police_file(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
must_submit_annual_report(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    market_surveillance_authority(A),
    national_data_protection_authority(N).
exempt_from_reporting_sensitive_operational_data(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    law_enforcement_deployer(D),
    sensitive_operational_data(D).
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26').
provenance(authorisation_obtained/2, 'celex:32024R1689/oj#art_26').
provenance(exempt_from_authorisation_requirement/2, 'celex:32024R1689/oj#art_26').
provenance(must_limit_use_to_strictly_necessary/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_immediately/2, 'celex:32024R1689/oj#art_26').
provenance(must_delete_personal_data/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_adverse_legal_effect_decision/2, 'celex:32024R1689/oj#art_26').
provenance(must_document_use_in_police_file/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(exempt_from_reporting_sensitive_operational_data/2, 'celex:32024R1689/oj#art_26').
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    decision_related_to_natural_person(S, D).
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    national_competent_authority(A).
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_2').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_5/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_27').
declared(fundamental_rights_impact_assessment/1, 'assessment of impact on fundamental rights from use of high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(body_governed_by_public_law/1, 'deployer that is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_providing_public_services/1, 'private entity deployer providing public services', 'celex:32024R1689/oj#art_27').
declared(high_risk_ai_system_area_anx_3_pnt_2/1, 'high-risk AI system intended for use in area listed in Annex III point 2', 'celex:32024R1689/oj#art_27').
declared(high_risk_ai_system_anx_3_pnt_5_b/1, 'high-risk AI system referred to in Annex III point 5(b)', 'celex:32024R1689/oj#art_27').
declared(high_risk_ai_system_anx_3_pnt_5_c/1, 'high-risk AI system referred to in Annex III point 5(c)', 'celex:32024R1689/oj#art_27').
declared(high_risk_ai_system_art_6_par_2/1, 'high-risk AI system referred to in Article 6(2)', 'celex:32024R1689/oj#art_27').
declared(first_use/1, 'first use of a high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(similar_case/1, 'case similar to a previous deployment', 'celex:32024R1689/oj#art_27').
declared(previously_conducted_fria/1, 'fundamental rights impact assessment previously conducted', 'celex:32024R1689/oj#art_27').
declared(existing_impact_assessment_by_provider/1, 'existing impact assessment carried out by provider', 'celex:32024R1689/oj#art_27').
declared(fria_element_changed/1, 'element of fundamental rights impact assessment has changed or is no longer up to date', 'celex:32024R1689/oj#art_27').
declared(filled_out_template/1, 'filled-out template for fundamental rights impact assessment notification', 'celex:32024R1689/oj#art_27').
declared(data_protection_impact_assessment/1, 'data protection impact assessment conducted under GDPR Article 35 or LED Article 27', 'celex:32024R1689/oj#art_27').
declared(case_art_46_par_1/1, 'case referred to in Article 46(1)', 'celex:32024R1689/oj#art_27').
declared(questionnaire_template/1, 'template for questionnaire developed by AI Office', 'celex:32024R1689/oj#art_27').
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    \+ high_risk_ai_system_area_anx_3_pnt_2(S),
    body_governed_by_public_law(D),
    before_deploying(D, S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    \+ high_risk_ai_system_area_anx_3_pnt_2(S),
    private_entity_providing_public_services(D),
    before_deploying(D, S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_anx_3_pnt_5_b(S),
    before_deploying(D, S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_anx_3_pnt_5_c(S),
    before_deploying(D, S).
fundamental_rights_impact_assessment(A) :-
    must_perform_fundamental_rights_impact_assessment(_D, S),
    assessment_includes_description_of_processes(A, S),
    assessment_includes_description_of_period_and_frequency(A, S),
    assessment_includes_categories_of_affected_persons(A, S),
    assessment_includes_specific_risks_of_harm(A, S),
    assessment_includes_human_oversight_measures(A, S),
    assessment_includes_measures_for_materialised_risks(A, S).
assessment_includes_description_of_processes(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_processes_in_intended_purpose(A, S).
assessment_includes_description_of_period_and_frequency(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_period_and_frequency(A, S).
assessment_includes_categories_of_affected_persons(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_categories_of_natural_persons_and_groups(A, S).
assessment_includes_specific_risks_of_harm(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_specific_risks_of_harm(A, S),
    takes_into_account_provider_information(A, S).
assessment_includes_human_oversight_measures(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_human_oversight_implementation(A, S),
    according_to_instructions_for_use(A, S).
assessment_includes_measures_for_materialised_risks(A, S) :-
    fundamental_rights_impact_assessment(A),
    describes_measures_for_materialised_risks(A, S),
    includes_internal_governance_and_complaint_mechanisms(A, S).
obligation_applies_to_first_use(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    first_use(S).
may_rely_on_previous_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    similar_case(S),
    previously_conducted_fria(A),
    fundamental_rights_impact_assessment(A).
may_rely_on_existing_provider_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    similar_case(S),
    existing_impact_assessment_by_provider(A),
    fundamental_rights_impact_assessment(A).
must_update_fria_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(A),
    performed_by_deployer(A, D),
    during_use(S),
    fria_element_changed(A).
must_notify_market_surveillance_authority(D, A) :-
    deployer(D),
    fundamental_rights_impact_assessment(A),
    performed_by_deployer(A, D),
    market_surveillance_authority(M),
    notify(D, M, results(A)),
    submit_filled_out_template(D, A).
exempt_from_notification_obligation(D) :-
    deployer(D),
    case_art_46_par_1(D).
fria_complements_dpia(A, DPIA) :-
    fundamental_rights_impact_assessment(A),
    data_protection_impact_assessment(DPIA),
    obligations_already_met_through_dpia(A, DPIA).
must_develop_questionnaire_template(ai_office) :-
    ai_office(ai_office).
questionnaire_template(T) :-
    must_develop_questionnaire_template(ai_office),
    developed_by_ai_office(T),
    includes_automated_tool(T),
    facilitates_simplified_compliance(T).
before_deploying(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ deployed(D, S).
deployed(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    deployment_has_occurred(D, S).
performed_by_deployer(A, D) :-
    fundamental_rights_impact_assessment(A),
    deployer(D),
    performed_by(A, D).
during_use(S) :-
    high_risk_ai_system(S),
    in_use(S).
notify(D, M, results(A)) :-
    deployer(D),
    market_surveillance_authority(M),
    fundamental_rights_impact_assessment(A).
submit_filled_out_template(D, A) :-
    deployer(D),
    fundamental_rights_impact_assessment(A),
    filled_out_template(T),
    submitted_by(D, T).
obligations_already_met_through_dpia(A, DPIA) :-
    fundamental_rights_impact_assessment(A),
    data_protection_impact_assessment(DPIA),
    covers_same_obligations(A, DPIA).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_area_anx_3_pnt_2/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_anx_3_pnt_5_b/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_anx_3_pnt_5_c/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_art_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(first_use/1, 'celex:32024R1689/oj#art_27').
provenance(similar_case/1, 'celex:32024R1689/oj#art_27').
provenance(previously_conducted_fria/1, 'celex:32024R1689/oj#art_27').
provenance(existing_impact_assessment_by_provider/1, 'celex:32024R1689/oj#art_27').
provenance(fria_element_changed/1, 'celex:32024R1689/oj#art_27').
provenance(filled_out_template/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(case_art_46_par_1/1, 'celex:32024R1689/oj#art_27').
provenance(questionnaire_template/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(obligation_applies_to_first_use/2, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_existing_provider_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fria_information/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification_obligation/1, 'celex:32024R1689/oj#art_27').
provenance(fria_complements_dpia/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop_questionnaire_template/1, 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(must_designate_notifying_authority/1, 'Member State obliged to designate or establish at least one notifying authority', 'celex:32024R1689/oj#art_28').
declared(notifying_authority_responsible_for/2, 'notifying authority responsible for procedures concerning conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(procedures_developed_in_cooperation/1, 'procedures developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(assessment_and_monitoring_by_national_accreditation_body/1, 'assessment and monitoring carried out by a national accreditation body', 'celex:32024R1689/oj#art_28').
declared(no_conflict_of_interest_with_conformity_assessment_body/1, 'notifying authority organised so that no conflict of interest arises with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(objectivity_and_impartiality_safeguarded/1, 'notifying authority operated so that objectivity and impartiality of activities are safeguarded', 'celex:32024R1689/oj#art_28').
declared(notification_decision_by_different_person/1, 'notifying authority organised so that notification decisions are taken by persons different from those who carried out the assessment', 'celex:32024R1689/oj#art_28').
declared(must_not_perform_conformity_assessment_activities/1, 'notifying authority shall not offer or provide activities that conformity assessment bodies perform', 'celex:32024R1689/oj#art_28').
declared(must_not_provide_commercial_consultancy/1, 'notifying authority shall not offer or provide consultancy services on a commercial or competitive basis', 'celex:32024R1689/oj#art_28').
declared(must_safeguard_confidential_information/1, 'notifying authority shall safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(has_adequate_competent_personnel/1, 'notifying authority has adequate number of competent personnel for proper performance of tasks', 'celex:32024R1689/oj#art_28').
declared(competent_personnel_has_expertise/2, 'competent personnel has necessary expertise in specified fields', 'celex:32024R1689/oj#art_28').
must_designate_notifying_authority(member_state).
notifying_authority_responsible_for(NA, assessment_designation_notification) :-
    notifying_authority(NA).
notifying_authority_responsible_for(NA, monitoring) :-
    notifying_authority(NA).
procedures_developed_in_cooperation(NA) :-
    notifying_authority(NA).
assessment_and_monitoring_by_national_accreditation_body(NA) :-
    notifying_authority(NA).
no_conflict_of_interest_with_conformity_assessment_body(NA) :-
    notifying_authority(NA).
objectivity_and_impartiality_safeguarded(NA) :-
    notifying_authority(NA).
notification_decision_by_different_person(NA) :-
    notifying_authority(NA).
must_not_perform_conformity_assessment_activities(NA) :-
    notifying_authority(NA).
must_not_provide_commercial_consultancy(NA) :-
    notifying_authority(NA).
must_safeguard_confidential_information(NA) :-
    notifying_authority(NA).
has_adequate_competent_personnel(NA) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, information_technologies) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, ai) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, law) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, supervision_of_fundamental_rights) :-
    notifying_authority(NA).
provenance(must_designate_notifying_authority/1, 'celex:32024R1689/oj#art_28').
provenance(notifying_authority_responsible_for/2, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_and_monitoring_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_body/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decision_by_different_person/1, 'celex:32024R1689/oj#art_28').
provenance(must_not_perform_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(must_not_provide_commercial_consultancy/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidential_information/1, 'celex:32024R1689/oj#art_28').
provenance(has_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(competent_personnel_has_expertise/2, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application_for_notification/2, 'conformity assessment body must submit application for notification to notifying authority', 'celex:32024R1689/oj#art_29').
declared(application_for_notification_accompanied_by/2, 'application for notification is accompanied by required documents', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate_exists/1, 'accreditation certificate exists for conformity assessment body', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'conformity assessment body must provide documentary evidence when no accreditation certificate', 'celex:32024R1689/oj#art_29').
declared(may_use_existing_designations/1, 'notified body may use documents from other Union harmonisation legislation designations', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/1, 'notified body must update documentation when relevant changes occur', 'celex:32024R1689/oj#art_29').
must_submit_application_for_notification(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState).
application_for_notification_accompanied_by(Body, description(conformity_assessment_activities, Modules, Types)) :-
    conformity_assessment_body(Body),
    conformity_assessment_module(Modules),
    ai_system(Types).
application_for_notification_accompanied_by(Body, accreditation_certificate(Certificate)) :-
    conformity_assessment_body(Body),
    accreditation_certificate_exists(Body),
    issued_by(Certificate, national_accreditation_body),
    attests(Certificate, fulfils_requirements(Body, 'celex:32024R1689/oj#art_31')).
application_for_notification_accompanied_by(Body, valid_document(Designation)) :-
    conformity_assessment_body(Body),
    notified_body(Body),
    designation(Designation, Body, other_union_harmonisation_legislation).
must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ accreditation_certificate_exists(Body),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState).
may_use_existing_designations(Body) :-
    notified_body(Body),
    designation(Designation, Body, other_union_harmonisation_legislation).
must_update_documentation(Body) :-
    notified_body(Body),
    designated_under(Body, other_union_harmonisation_legislation).
established_in(Body, MemberState) :-
    conformity_assessment_body(Body),
    member_state(MemberState).
notifying_authority_of(Authority, MemberState) :-
    notifying_authority(Authority),
    member_state(MemberState).
conformity_assessment_module(Modules) :-
    list(Modules).
designation(Designation, Body, Legislation) :-
    notified_body(Body),
    union_harmonisation_legislation(Legislation).
designated_under(Body, Legislation) :-
    notified_body(Body),
    designation(_, Body, Legislation).
member_state(_).
list([]).
list([_|T]) :- list(T).
provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_for_notification_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(accreditation_certificate_exists/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_designations/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(may_notify/2, 'notifying authority may notify a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify/2, 'notifying authority must notify the Commission and other Member States about a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(notification_includes/2, 'notification includes specified details', 'celex:32024R1689/oj#art_30').
declared(notification_based_on_accreditation_certificate/1, 'notification is based on an accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(notification_based_on_documentary_evidence/1, 'notification is based on documentary evidence', 'celex:32024R1689/oj#art_30').
declared(may_perform_notified_body_activities/2, 'conformity assessment body may perform activities of a notified body', 'celex:32024R1689/oj#art_30').
declared(objection_raised/2, 'objection raised by Commission or Member State', 'celex:32024R1689/oj#art_30').
declared(must_consult/2, 'Commission must enter into consultations', 'celex:32024R1689/oj#art_30').
declared(must_decide_authorisation_justified/1, 'Commission must decide whether authorisation is justified', 'celex:32024R1689/oj#art_30').
declared(satisfied_requirements_art_31/1, 'conformity assessment body has satisfied requirements of Article 31', 'celex:32024R1689/oj#art_30').
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfied_requirements_art_31(Body).
must_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body).
notification_includes(notification(Body), Details) :-
    conformity_assessment_body(Body),
    Details = details(conformity_assessment_activities(Body), modules(Body), ai_systems_concerned(Body), attestation_of_competence(Body)).
notification_based_on_accreditation_certificate(notification(Body)) :-
    conformity_assessment_body(Body).
notification_based_on_documentary_evidence(notification(Body)) :-
    conformity_assessment_body(Body),
    \+ notification_based_on_accreditation_certificate(notification(Body)).
may_perform_notified_body_activities(Body, Time) :-
    conformity_assessment_body(Body),
    must_notify(_, Body),
    \+ objection_raised(_, Body),
    notification_based_on_accreditation_certificate(notification(Body)),
    Time = weeks(2).
may_perform_notified_body_activities(Body, Time) :-
    conformity_assessment_body(Body),
    must_notify(_, Body),
    \+ objection_raised(_, Body),
    notification_based_on_documentary_evidence(notification(Body)),
    Time = months(2).
must_consult(commission, parties(MemberStates, Body)) :-
    objection_raised(_, Body),
    conformity_assessment_body(Body),
    MemberStates = member_states.
must_decide_authorisation_justified(commission) :-
    must_consult(commission, _).
satisfied_requirements_art_31(Body) :-
    conformity_assessment_body(Body).
provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(notification_based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(notification_based_on_documentary_evidence/1, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/2, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation_justified/1, 'celex:32024R1689/oj#art_30').
provenance(satisfied_requirements_art_31/1, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(established_under_national_law/1, 'notified body established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(has_legal_personality/1, 'notified body has legal personality', 'celex:32024R1689/oj#art_31').
declared(satisfies_organisational_requirements/1, 'notified body satisfies organisational requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_quality_management_requirements/1, 'notified body satisfies quality management requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_resource_requirements/1, 'notified body satisfies resource requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_process_requirements/1, 'notified body satisfies process requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_cybersecurity_requirements/1, 'notified body satisfies suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(organisational_structure_ensures_confidence/1, 'organisational structure, allocation of responsibilities, reporting lines and operation ensure confidence in performance and results', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider/2, 'notified body is independent of provider of high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(independent_of_economic_interest_operator/2, 'notified body is independent of any other operator having economic interest in assessed high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(independent_of_competitor/2, 'notified body is independent of any competitor of the provider', 'celex:32024R1689/oj#art_31').
declared(permitted_use_of_assessed_ai_system/2, 'use of assessed high-risk AI system permitted for operations of conformity assessment body or personal purposes', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_design/2, 'conformity assessment body, top-level management or personnel not directly involved in design of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_development/2, 'conformity assessment body, top-level management or personnel not directly involved in development of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_marketing/2, 'conformity assessment body, top-level management or personnel not directly involved in marketing of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_use/2, 'conformity assessment body, top-level management or personnel not directly involved in use of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(does_not_represent_parties/2, 'conformity assessment body, top-level management or personnel does not represent parties engaged in design, development, marketing or use', 'celex:32024R1689/oj#art_31').
declared(no_conflicting_activity/2, 'conformity assessment body, top-level management or personnel does not engage in activity conflicting with independence of judgement or integrity', 'celex:32024R1689/oj#art_31').
declared(no_consultancy_services/2, 'conformity assessment body, top-level management or personnel does not provide consultancy services', 'celex:32024R1689/oj#art_31').
declared(organised_to_safeguard_independence/1, 'notified body organised and operated to safeguard independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(documented_impartiality_structure/1, 'notified body has documented structure and procedures to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(applies_impartiality_principles/1, 'notified body promotes and applies principles of impartiality throughout organisation, personnel and assessment activities', 'celex:32024R1689/oj#art_31').
declared(confidentiality_procedures/1, 'notified body has documented procedures ensuring confidentiality of information', 'celex:32024R1689/oj#art_31').
declared(personnel_maintain_confidentiality/2, 'personnel, committees, subsidiaries, subcontractors and associated bodies maintain confidentiality', 'celex:32024R1689/oj#art_31').
declared(professional_secrecy_obligation/1, 'staff of notified body bound to observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(procedures_account_for_provider_size/1, 'notified body procedures take due account of size of provider', 'celex:32024R1689/oj#art_31').
declared(procedures_account_for_sector/1, 'notified body procedures take due account of sector in which provider operates', 'celex:32024R1689/oj#art_31').
declared(procedures_account_for_provider_structure/1, 'notified body procedures take due account of structure of provider', 'celex:32024R1689/oj#art_31').
declared(procedures_account_for_ai_system_complexity/1, 'notified body procedures take due account of degree of complexity of AI system', 'celex:32024R1689/oj#art_31').
declared(liability_insurance/1, 'notified body has taken out appropriate liability insurance for conformity assessment activities', 'celex:32024R1689/oj#art_31').
declared(liability_assumed_by_member_state/1, 'liability assumed by Member State in accordance with national law', 'celex:32024R1689/oj#art_31').
declared(member_state_directly_responsible/1, 'Member State is itself directly responsible for conformity assessment', 'celex:32024R1689/oj#art_31').
declared(capable_of_carrying_out_tasks/1, 'notified body capable of carrying out all tasks with highest degree of professional integrity and requisite competence', 'celex:32024R1689/oj#art_31').
declared(sufficient_internal_competences/1, 'notified body has sufficient internal competences to evaluate tasks conducted by external parties', 'celex:32024R1689/oj#art_31').
declared(permanent_availability_of_personnel/1, 'notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(personnel_experience_knowledge_ai_systems/1, 'personnel possess experience and knowledge relating to relevant types of AI systems', 'celex:32024R1689/oj#art_31').
declared(personnel_experience_knowledge_data/1, 'personnel possess experience and knowledge relating to data and data computing', 'celex:32024R1689/oj#art_31').
declared(personnel_experience_knowledge_requirements/1, 'personnel possess experience and knowledge relating to requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination_activities/1, 'notified body participates in coordination activities referred to in Article 38', 'celex:32024R1689/oj#art_31').
declared(participates_in_standardisation/1, 'notified body takes part directly or is represented in European standardisation organisations', 'celex:32024R1689/oj#art_31').
declared(aware_of_relevant_standards/1, 'notified body is aware and up to date in respect of relevant standards', 'celex:32024R1689/oj#art_31').
must_establish_under_national_law(B) :-
    notified_body(B),
    established_under_national_law(B).
must_have_legal_personality(B) :-
    notified_body(B),
    has_legal_personality(B).
must_satisfy_organisational_requirements(B) :-
    notified_body(B),
    satisfies_organisational_requirements(B).
must_satisfy_quality_management_requirements(B) :-
    notified_body(B),
    satisfies_quality_management_requirements(B).
must_satisfy_resource_requirements(B) :-
    notified_body(B),
    satisfies_resource_requirements(B).
must_satisfy_process_requirements(B) :-
    notified_body(B),
    satisfies_process_requirements(B).
must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B),
    satisfies_cybersecurity_requirements(B).
must_ensure_confidence_in_performance(B) :-
    notified_body(B),
    organisational_structure_ensures_confidence(B).
must_be_independent_of_provider(B, P) :-
    notified_body(B),
    provider(P),
    independent_of_provider(B, P).
must_be_independent_of_economic_interest_operator(B, O) :-
    notified_body(B),
    operator(O),
    independent_of_economic_interest_operator(B, O).
must_be_independent_of_competitor(B, C) :-
    notified_body(B),
    independent_of_competitor(B, C).
permitted_use_of_assessed_ai_system(B, S) :-
    notified_body(B),
    conformity_assessment_body(B),
    ai_system(S),
    permitted_use_of_assessed_ai_system(B, S).
permitted_use_for_operations(B, S) :-
    permitted_use_of_assessed_ai_system(B, S).
permitted_use_for_personal_purposes(B, S) :-
    permitted_use_of_assessed_ai_system(B, S).
must_not_be_directly_involved_in_design(B, S) :-
    conformity_assessment_body(B),
    ai_system(S),
    not_directly_involved_in_design(B, S).
must_not_be_directly_involved_in_development(B, S) :-
    conformity_assessment_body(B),
    ai_system(S),
    not_directly_involved_in_development(B, S).
must_not_be_directly_involved_in_marketing(B, S) :-
    conformity_assessment_body(B),
    ai_system(S),
    not_directly_involved_in_marketing(B, S).
must_not_be_directly_involved_in_use(B, S) :-
    conformity_assessment_body(B),
    ai_system(S),
    not_directly_involved_in_use(B, S).
must_not_represent_parties(B, Activity) :-
    conformity_assessment_body(B),
    does_not_represent_parties(B, Activity).
must_not_engage_in_conflicting_activity(B, Activity) :-
    conformity_assessment_body(B),
    no_conflicting_activity(B, Activity).
must_not_provide_consultancy_services(B) :-
    conformity_assessment_body(B),
    no_consultancy_services(B).
must_safeguard_independence_objectivity_impartiality(B) :-
    notified_body(B),
    organised_to_safeguard_independence(B).
must_document_impartiality_structure(B) :-
    notified_body(B),
    documented_impartiality_structure(B).
must_apply_impartiality_principles(B) :-
    notified_body(B),
    applies_impartiality_principles(B).
must_have_confidentiality_procedures(B) :-
    notified_body(B),
    confidentiality_procedures(B).
must_maintain_confidentiality(B, Party) :-
    notified_body(B),
    personnel_maintain_confidentiality(B, Party).
must_observe_professional_secrecy(B) :-
    notified_body(B),
    professional_secrecy_obligation(B).
must_take_due_account_of_provider_size(B, P) :-
    notified_body(B),
    provider(P),
    procedures_account_for_provider_size(B).
must_take_due_account_of_sector(B, P) :-
    notified_body(B),
    provider(P),
    procedures_account_for_sector(B).
must_take_due_account_of_provider_structure(B, P) :-
    notified_body(B),
    provider(P),
    procedures_account_for_provider_structure(B).
must_take_due_account_of_ai_system_complexity(B, S) :-
    notified_body(B),
    ai_system(S),
    procedures_account_for_ai_system_complexity(B).
must_take_out_liability_insurance(B) :-
    notified_body(B),
    liability_insurance(B).
exempt_liability_insurance_member_state_assumes_liability(B) :-
    notified_body(B),
    liability_assumed_by_member_state(B).
exempt_liability_insurance_member_state_directly_responsible(B) :-
    notified_body(B),
    member_state_directly_responsible(B).
must_carry_out_tasks_with_integrity_and_competence(B) :-
    notified_body(B),
    capable_of_carrying_out_tasks(B).
must_have_sufficient_internal_competences(B) :-
    notified_body(B),
    sufficient_internal_competences(B).
must_have_permanent_availability_of_personnel(B) :-
    notified_body(B),
    permanent_availability_of_personnel(B).
must_have_personnel_with_experience_knowledge_ai_systems(B) :-
    notified_body(B),
    personnel_experience_knowledge_ai_systems(B).
must_have_personnel_with_experience_knowledge_data(B) :-
    notified_body(B),
    personnel_experience_knowledge_data(B).
must_have_personnel_with_experience_knowledge_requirements(B) :-
    notified_body(B),
    personnel_experience_knowledge_requirements(B).
must_participate_in_coordination_activities(B) :-
    notified_body(B),
    participates_in_coordination_activities(B).
must_participate_in_standardisation(B) :-
    notified_body(B),
    participates_in_standardisation(B).
must_be_aware_of_relevant_standards(B) :-
    notified_body(B),
    aware_of_relevant_standards(B).
provenance(established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(has_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_resource_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(organisational_structure_ensures_confidence/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_economic_interest_operator/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_ai_system/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_design/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_development/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_marketing/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_use/2, 'celex:32024R1689/oj#art_31').
provenance(does_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(no_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(no_consultancy_services/2, 'celex:32024R1689/oj#art_31').
provenance(organised_to_safeguard_independence/1, 'celex:32024R1689/oj#art_31').
provenance(documented_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(applies_impartiality_principles/1, 'celex:32024R1689/oj#art_31').
provenance(confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_maintain_confidentiality/2, 'celex:32024R1689/oj#art_31').
provenance(professional_secrecy_obligation/1, 'celex:32024R1689/oj#art_31').
provenance(procedures_account_for_provider_size/1, 'celex:32024R1689/oj#art_31').
provenance(procedures_account_for_sector/1, 'celex:32024R1689/oj#art_31').
provenance(procedures_account_for_provider_structure/1, 'celex:32024R1689/oj#art_31').
provenance(procedures_account_for_ai_system_complexity/1, 'celex:32024R1689/oj#art_31').
provenance(liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(liability_assumed_by_member_state/1, 'celex:32024R1689/oj#art_31').
provenance(member_state_directly_responsible/1, 'celex:32024R1689/oj#art_31').
provenance(capable_of_carrying_out_tasks/1, 'celex:32024R1689/oj#art_31').
provenance(sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_ai_systems/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_data/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').
provenance(aware_of_relevant_standards/1, 'celex:32024R1689/oj#art_31').
provenance(must_establish_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_resource_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_economic_interest_operator/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_for_operations/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_for_personal_purposes/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_design/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_development/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_marketing/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_use/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_provide_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_apply_impartiality_principles/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/2, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_due_account_of_provider_size/2, 'celex:32024R1689/oj#art_31').
provenance(must_take_due_account_of_sector/2, 'celex:32024R1689/oj#art_31').
provenance(must_take_due_account_of_provider_structure/2, 'celex:32024R1689/oj#art_31').
provenance(must_take_due_account_of_ai_system_complexity/2, 'celex:32024R1689/oj#art_31').
provenance(must_take_out_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance_member_state_assumes_liability/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance_member_state_directly_responsible/1, 'celex:32024R1689/oj#art_31').
provenance(must_carry_out_tasks_with_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_ai_systems/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_data/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_aware_of_relevant_standards/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_compliant_with_notified_body_requirements/1, 'conformity assessment body presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
presumed_compliant_with_notified_body_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B, Standards),
    references_published_in_official_journal(Standards),
    covers_requirements(Standards, Requirements),
    requirements_set_out_in_article_31(Requirements).
demonstrates_conformity_with_harmonised_standards(B, Standards) :-
    conformity_assessment_body(B),
    harmonised_standard(Standards).
references_published_in_official_journal(Standards) :-
    harmonised_standard(Standards).
covers_requirements(Standards, Requirements) :-
    harmonised_standard(Standards),
    article_31_requirements(Requirements).
requirements_set_out_in_article_31(Requirements) :-
    article_31_requirements(Requirements).
article_31_requirements(requirements_for_notified_bodies).
provenance(presumed_compliant_with_notified_body_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/2, 'celex:32024R1689/oj#art_32').
provenance(references_published_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_32').
provenance(requirements_set_out_in_article_31/1, 'celex:32024R1689/oj#art_32').
provenance(article_31_requirements/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontractor/1, 'entity to which a notified body subcontracts specific tasks', 'celex:32024R1689/oj#art_33').
declared(subsidiary_of_notified_body/1, 'subsidiary of a notified body used for conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(subcontracted_task/2, 'notified body subcontracts a specific task connected with conformity assessment', 'celex:32024R1689/oj#art_33').
declared(subsidiary_task/2, 'notified body has recourse to a subsidiary for a specific task', 'celex:32024R1689/oj#art_33').
declared(meets_requirements_art_31/1, 'entity meets the requirements laid down in Article 31', 'celex:32024R1689/oj#art_33').
declared(must_inform_notifying_authority/2, 'notified body must inform the notifying authority about a subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(full_responsibility/2, 'notified body takes full responsibility for tasks performed by a subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(provider_agreement/2, 'provider has agreed to subcontracting or use of a subsidiary', 'celex:32024R1689/oj#art_33').
declared(publicly_available_list/2, 'notified body makes a list of its subsidiaries publicly available', 'celex:32024R1689/oj#art_33').
declared(documents_kept_at_disposal/3, 'relevant documents kept at disposal of notifying authority for a period from termination of subcontracting', 'celex:32024R1689/oj#art_33').
subcontractor(S) :-
    subcontracted_task(_NB, S).
subsidiary_of_notified_body(S) :-
    subsidiary_task(_NB, S).
meets_requirements_art_31(S) :-
    subcontractor(S).
meets_requirements_art_31(S) :-
    subsidiary_of_notified_body(S).
must_inform_notifying_authority(NB, S) :-
    notified_body(NB),
    subcontractor(S),
    subcontracted_task(NB, S),
    meets_requirements_art_31(S).
must_inform_notifying_authority(NB, S) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    subsidiary_task(NB, S),
    meets_requirements_art_31(S).
full_responsibility(NB, S) :-
    notified_body(NB),
    subcontractor(S),
    subcontracted_task(NB, S).
full_responsibility(NB, S) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    subsidiary_task(NB, S).
subcontracted_task(NB, S) :-
    notified_body(NB),
    subcontractor(S),
    provider_agreement(_P, task(NB, S)).
subsidiary_task(NB, S) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    provider_agreement(_P, task(NB, S)).
provider_agreement(P, task(NB, S)) :-
    provider(P),
    notified_body(NB),
    subcontractor(S).
provider_agreement(P, task(NB, S)) :-
    provider(P),
    notified_body(NB),
    subsidiary_of_notified_body(S).
publicly_available_list(NB, subsidiaries) :-
    notified_body(NB),
    subsidiary_of_notified_body(_S),
    subsidiary_task(NB, _S).
documents_kept_at_disposal(NB, documents(assessment(qualifications(S)), work(S)), years(5)) :-
    notified_body(NB),
    subcontractor(S),
    subcontracted_task(NB, S).
documents_kept_at_disposal(NB, documents(assessment(qualifications(S)), work(S)), years(5)) :-
    notified_body(NB),
    subsidiary_of_notified_body(S),
    subsidiary_task(NB, S).
provenance(subcontractor/1, 'celex:32024R1689/oj#art_33').
provenance(subsidiary_of_notified_body/1, 'celex:32024R1689/oj#art_33').
provenance(subcontracted_task/2, 'celex:32024R1689/oj#art_33').
provenance(subsidiary_task/2, 'celex:32024R1689/oj#art_33').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_33').
provenance(full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agreement/2, 'celex:32024R1689/oj#art_33').
provenance(publicly_available_list/2, 'celex:32024R1689/oj#art_33').
provenance(documents_kept_at_disposal/3, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_34').
declared(micro_or_small_enterprise/1, 'micro- or small enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_34').
declared(relevant_documentation/1, 'documentation relevant to conformity assessment', 'celex:32024R1689/oj#art_34').
declared(providers_documentation/1, 'documentation provided by the provider of the AI system', 'celex:32024R1689/oj#art_34').
must_verify_conformity(notified_body(B), high_risk_ai_system(S)) :-
    conformity_assessment_procedure(S, art_43).
must_avoid_unnecessary_burdens(notified_body(B), provider(P)) :-
    high_risk_ai_system(S),
    provider_of(P, S),
    take_due_account(B, size(P)),
    take_due_account(B, sector(P)),
    take_due_account(B, structure(P)),
    take_due_account(B, complexity(S)),
    minimise_administrative_burdens(B, P),
    minimise_compliance_costs(B, P),
    micro_or_small_enterprise(P).
must_respect_rigour_and_protection(notified_body(B), high_risk_ai_system(S)) :-
    degree_of_rigour_required(S, R),
    level_of_protection_required(S, L),
    respect(notified_body(B), rigour(R)),
    respect(notified_body(B), protection(L)).
must_make_available(notified_body(B), relevant_documentation(D)) :-
    providers_documentation(D).
must_submit_upon_request(notified_body(B), relevant_documentation(D), notifying_authority(A)) :-
    providers_documentation(D),
    request(A, D).
must_facilitate_assessment(notifying_authority(A), chapter_3_section_4) :-
    conduct_assessment(A),
    conduct_designation(A),
    conduct_notification(A),
    conduct_monitoring(A).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit_upon_request/3, 'celex:32024R1689/oj#art_34').
provenance(must_facilitate_assessment/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign_identification_number/2, 'Commission assigns a single identification number to a notified body', 'celex:32024R1689/oj#art_35').
declared(must_make_publicly_available/2, 'Commission makes publicly available a list of notified bodies with their identification numbers and notified activities', 'celex:32024R1689/oj#art_35').
declared(must_keep_up_to_date/2, 'Commission ensures a list is kept up to date', 'celex:32024R1689/oj#art_35').
declared(single_identification_number/1, 'a notified body has a single identification number even when notified under multiple Union acts', 'celex:32024R1689/oj#art_35').
declared(list_of_notified_bodies/1, 'publicly available list of notified bodies including identification numbers and notified activities', 'celex:32024R1689/oj#art_35').
must_assign_identification_number(ai_office, B) :-
    notified_body(B),
    single_identification_number(B).
single_identification_number(B) :-
    notified_body(B).
must_make_publicly_available(ai_office, list_of_notified_bodies(L)) :-
    list_of_notified_bodies(L),
    includes_identification_numbers(L),
    includes_notified_activities(L).
list_of_notified_bodies(L) :-
    findall(B, notified_body(B), L).
includes_identification_numbers(L) :-
    member(B, L),
    notified_body(B),
    single_identification_number(B).
includes_notified_activities(L) :-
    member(B, L),
    notified_body(B),
    notified_activities(B, _Activities).
must_keep_up_to_date(ai_office, list_of_notified_bodies(L)) :-
    list_of_notified_bodies(L).
provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_35').
provenance(single_identification_number/1, 'celex:32024R1689/oj#art_35').
provenance(list_of_notified_bodies/1, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify/2, 'who is obliged to notify, what about', 'celex:32024R1689/oj#art_36').
declared(must_inform/2, 'who is obliged to inform, what about', 'celex:32024R1689/oj#art_36').
declared(must_withdraw/2, 'who is obliged to withdraw, what', 'celex:32024R1689/oj#art_36').
declared(must_investigate/2, 'who is obliged to investigate, what matter', 'celex:32024R1689/oj#art_36').
declared(must_restrict_suspend_or_withdraw/2, 'who is obliged to restrict, suspend or withdraw, what designation', 'celex:32024R1689/oj#art_36').
declared(must_take_appropriate_steps/2, 'who is obliged to take steps, what steps', 'celex:32024R1689/oj#art_36').
declared(must_assess/2, 'who is obliged to assess, what to assess', 'celex:32024R1689/oj#art_36').
declared(must_submit_report/2, 'who is obliged to submit report, what report', 'celex:32024R1689/oj#art_36').
declared(must_require/2, 'who is obliged to require, what requirement', 'celex:32024R1689/oj#art_36').
declared(must_provide/2, 'who is obliged to provide, what to provide', 'celex:32024R1689/oj#art_36').
declared(must_confirm/2, 'who is obliged to confirm, what to confirm', 'celex:32024R1689/oj#art_36').
declared(must_outline/2, 'who is obliged to outline, what to outline', 'celex:32024R1689/oj#art_36').
declared(must_state/2, 'who is obliged to state, what to state', 'celex:32024R1689/oj#art_36').
declared(must_determine/2, 'who is obliged to determine, what to determine', 'celex:32024R1689/oj#art_36').
declared(must_extend/2, 'who is obliged to extend, what to extend', 'celex:32024R1689/oj#art_36').
declared(designation_change/1, 'change to a notified body designation', 'celex:32024R1689/oj#art_36').
declared(extension_of_scope/1, 'extension of the scope of a notification', 'celex:32024R1689/oj#art_36').
declared(other_change/1, 'change to notification other than extension of scope', 'celex:32024R1689/oj#art_36').
declared(cessation_of_activities/1, 'notified body ceasing its conformity assessment activities', 'celex:32024R1689/oj#art_36').
declared(planned_cessation/1, 'planned cessation of activities', 'celex:32024R1689/oj#art_36').
declared(designation_suspended/1, 'designation has been suspended', 'celex:32024R1689/oj#art_36').
declared(designation_restricted/1, 'designation has been restricted', 'celex:32024R1689/oj#art_36').
declared(designation_withdrawn/1, 'designation has been withdrawn', 'celex:32024R1689/oj#art_36').
declared(designation_suspended_restricted_or_withdrawn/1, 'designation suspended, restricted or withdrawn', 'celex:32024R1689/oj#art_36').
declared(certificate/1, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_36').
declared(certificate_unduly_issued/1, 'certificate that was unduly issued', 'celex:32024R1689/oj#art_36').
declared(certificate_remains_valid/1, 'certificate remains valid', 'celex:32024R1689/oj#art_36').
declared(another_notified_body_assumes_responsibility/2, 'another notified body assumes responsibility for systems', 'celex:32024R1689/oj#art_36').
declared(full_assessment_completed/2, 'notified body completes full assessment of systems', 'celex:32024R1689/oj#art_36').
declared(sufficient_reason_to_consider/2, 'authority has sufficient reason to consider a matter', 'celex:32024R1689/oj#art_36').
declared(notified_body_no_longer_meets_requirements/1, 'notified body no longer meets requirements', 'celex:32024R1689/oj#art_36').
declared(notified_body_failing_to_fulfil_obligations/1, 'notified body failing to fulfil obligations', 'celex:32024R1689/oj#art_36').
declared(seriousness_of_failure/1, 'seriousness of failure to meet requirements or fulfil obligations', 'celex:32024R1689/oj#art_36').
declared(files_kept/1, 'files of notified body are kept', 'celex:32024R1689/oj#art_36').
declared(files_available_on_request/1, 'files available to authorities on request', 'celex:32024R1689/oj#art_36').
declared(impact_assessment_on_certificates/1, 'assessment of impact on certificates issued', 'celex:32024R1689/oj#art_36').
declared(report_on_findings/1, 'report on findings of impact assessment', 'celex:32024R1689/oj#art_36').
declared(certificates_suspended_or_withdrawn/1, 'certificates suspended or withdrawn by requirement', 'celex:32024R1689/oj#art_36').
declared(no_risk_to_health_safety_or_fundamental_rights/1, 'no risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_36').
declared(timeline_for_remedy/1, 'timeline for actions to remedy suspension or restriction', 'celex:32024R1689/oj#art_36').
declared(no_certificates_issued_amended_or_reissued/1, 'no certificates issued, amended or re-issued during suspension or restriction', 'celex:32024R1689/oj#art_36').
declared(notified_body_capable_of_supporting_existing_certificates/1, 'notified body has capability to support existing certificates', 'celex:32024R1689/oj#art_36').
declared(provider_confirms_another_qualified_notified_body/2, 'provider confirms another qualified notified body assuming functions', 'celex:32024R1689/oj#art_36').
declared(provisional_validity_extended/2, 'provisional validity of certificates extended', 'celex:32024R1689/oj#art_36').
declared(additional_period/1, 'additional period of three months', 'celex:32024R1689/oj#art_36').
declared(total_extension_not_exceeding/1, 'total extension not exceeding 12 months', 'celex:32024R1689/oj#art_36').
must_notify(Authority, change(designation(B), via(electronic_notification_tool))) :-
    notifying_authority(Authority),
    notified_body(B),
    designation_change(Change),
    Change = change(designation(B), _).
extension_of_scope(Change) :-
    designation_change(Change),
    Change = extension(scope, _).
other_change(Change) :-
    designation_change(Change),
    \+ extension_of_scope(Change).
must_inform(B, cessation(activities, planned)) :-
    notified_body(B),
    cessation_of_activities(B),
    planned_cessation(B).
must_inform(B, cessation(activities, as_soon_as_possible)) :-
    notified_body(B),
    cessation_of_activities(B),
    \+ planned_cessation(B).
must_inform(B, providers_concerned) :-
    notified_body(B),
    cessation_of_activities(B).
must_withdraw(Authority, designation(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    cessation_of_activities(B).
certificate_remains_valid(C) :-
    certificate(C),
    cessation_of_activities(B),
    notified_body(B),
    period(months(9), after(cessation(B))),
    another_notified_body_assumes_responsibility(B2, C),
    notified_body(B2),
    B2 \= B,
    full_assessment_completed(B2, C),
    within(period(months(9)), after(cessation(B))).
must_investigate(Authority, matter(notified_body(B), objections)) :-
    notifying_authority(Authority),
    notified_body(B),
    sufficient_reason_to_consider(Authority, notified_body_no_longer_meets_requirements(B)).
must_investigate(Authority, matter(notified_body(B), objections)) :-
    notifying_authority(Authority),
    notified_body(B),
    sufficient_reason_to_consider(Authority, notified_body_failing_to_fulfil_obligations(B)).
must_inform(Authority, notified_body(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    sufficient_reason_to_consider(Authority, _).
must_restrict_suspend_or_withdraw(Authority, designation(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    sufficient_reason_to_consider(Authority, notified_body_no_longer_meets_requirements(B)),
    conclusion(Authority, notified_body_no_longer_meets_requirements(B)).
must_restrict_suspend_or_withdraw(Authority, designation(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    sufficient_reason_to_consider(Authority, notified_body_failing_to_fulfil_obligations(B)),
    conclusion(Authority, notified_body_failing_to_fulfil_obligations(B)).
must_notify(Authority, restriction_suspension_or_withdrawal(designation(B))) :-
    notifying_authority(Authority),
    notified_body(B),
    must_restrict_suspend_or_withdraw(Authority, designation(B)).
must_inform(B, providers_concerned_within(days(10))) :-
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)).
must_take_appropriate_steps(Authority, keep_files(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)).
must_take_appropriate_steps(Authority, make_files_available(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)).
files_kept(B) :-
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)).
files_available_on_request(B) :-
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)).
must_assess(Authority, impact_on_certificates(B)) :-
    notifying_authority(Authority),
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)).
must_submit_report(Authority, report(findings, impact_assessment_on_certificates(B))) :-
    notifying_authority(Authority),
    notified_body(B),
    designation_suspended_restricted_or_withdrawn(designation(B)),
    within(period(months(3)), after(notification_of_changes)).
must_require(Authority, suspend_or_withdraw_certificates(C)) :-
    notifying_authority(Authority),
    notified_body(B),
    certificate(C),
    certificate_unduly_issued(C),
    designation_suspended_restricted_or_withdrawn(designation(B)),
    within(reasonable_period, determined_by(Authority)).
must_notify(Authority, certificates_suspended_or_withdrawn(C)) :-
    notifying_authority(Authority),
    notified_body(B),
    certificate(C),
    designation_suspended_restricted_or_withdrawn(designation(B)),
    must_require(Authority, suspend_or_withdraw_certificates(C)).
must_provide(Authority, information(certificates, suspension_or_withdrawal(C))) :-
    notifying_authority(Authority),
    notified_body(B),
    certificate(C),
    designation_suspended_restricted_or_withdrawn(designation(B)),
    must_require(Authority, suspend_or_withdraw_certificates(C)),
    national_competent_authority(Authority2),
    provider_has_registered_place_of_business(P, Authority2).
certificate_remains_valid(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended(designation(B)),
    notified_body(B),
    must_confirm(Authority, no_risk_to_health_safety_or_fundamental_rights(C)),
    notifying_authority(Authority),
    within(period(months(1)), of(suspension_or_restriction)),
    must_outline(Authority, timeline_for_remedy(suspension_or_restriction)).
certificate_remains_valid(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended(designation(B)),
    notified_body(B),
    must_confirm(Authority, no_certificates_issued_amended_or_reissued(C)),
    notifying_authority(Authority),
    must_state(Authority, notified_body_capable_of_supporting_existing_certificates(B)).
certificate_remains_valid(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_restricted(designation(B)),
    notified_body(B),
    must_confirm(Authority, no_risk_to_health_safety_or_fundamental_rights(C)),
    notifying_authority(Authority),
    within(period(months(1)), of(suspension_or_restriction)),
    must_outline(Authority, timeline_for_remedy(suspension_or_restriction)).
certificate_remains_valid(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_restricted(designation(B)),
    notified_body(B),
    must_confirm(Authority, no_certificates_issued_amended_or_reissued(C)),
    notifying_authority(Authority),
    must_state(Authority, notified_body_capable_of_supporting_existing_certificates(B)).
must_confirm(P, another_qualified_notified_body_assuming_functions(B2, C)) :-
    provider(P),
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended(designation(B)),
    notified_body(B),
    must_confirm(Authority, no_certificates_issued_amended_or_reissued(C)),
    notifying_authority(Authority),
    must_state(Authority, notified_body_capable_of_supporting_existing_certificates(B)),
    must_determine(Authority, \+ notified_body_capable_of_supporting_existing_certificates(B)),
    within(period(months(3)), of(suspension_or_restriction)),
    national_competent_authority(Authority2),
    provider_has_registered_place_of_business(P, Authority2).
must_confirm(P, another_qualified_notified_body_assuming_functions(B2, C)) :-
    provider(P),
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_restricted(designation(B)),
    notified_body(B),
    must_confirm(Authority, no_certificates_issued_amended_or_reissued(C)),
    notifying_authority(Authority),
    must_state(Authority, notified_body_capable_of_supporting_existing_certificates(B)),
    must_determine(Authority, \+ notified_body_capable_of_supporting_existing_certificates(B)),
    within(period(months(3)), of(suspension_or_restriction)),
    national_competent_authority(Authority2),
    provider_has_registered_place_of_business(P, Authority2).
certificate_remains_valid(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_withdrawn(designation(B)),
    notified_body(B),
    period(months(9), validity_period),
    must_confirm(Authority, no_risk_to_health_safety_or_fundamental_rights(C)),
    national_competent_authority(Authority),
    provider_has_registered_place_of_business(P, Authority),
    another_notified_body_assumes_responsibility(B2, C),
    notified_body(B2),
    B2 \= B,
    full_assessment_completed(B2, C),
    within(period(months(12)), of(withdrawal)).
must_extend(Authority, provisional_validity(C, additional_period(months(3)))) :-
    national_competent_authority(Authority),
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_withdrawn(designation(B)),
    notified_body(B),
    certificate_remains_valid(C),
    total_extension_not_exceeding(months(12)).
must_notify(Authority, change_of_designation(B)) :-
    national_competent_authority(Authority),
    notified_body(B),
    designation_withdrawn(designation(B)),
    certificate_remains_valid(C),
    certificate(C).
must_notify(B2, change_of_designation(B)) :-
    notified_body(B2),
    notified_body(B),
    B2 \= B,
    designation_withdrawn(designation(B)),
    another_notified_body_assumes_responsibility(B2, _).
designation_suspended_restricted_or_withdrawn(D) :-
    designation_suspended(D).
designation_suspended_restricted_or_withdrawn(D) :-
    designation_restricted(D).
designation_suspended_restricted_or_withdrawn(D) :-
    designation_withdrawn(D).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_take_appropriate_steps/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide/2, 'celex:32024R1689/oj#art_36').
provenance(must_confirm/2, 'celex:32024R1689/oj#art_36').
provenance(must_outline/2, 'celex:32024R1689/oj#art_36').
provenance(must_state/2, 'celex:32024R1689/oj#art_36').
provenance(must_determine/2, 'celex:32024R1689/oj#art_36').
provenance(must_extend/2, 'celex:32024R1689/oj#art_36').
provenance(designation_change/1, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope/1, 'celex:32024R1689/oj#art_36').
provenance(other_change/1, 'celex:32024R1689/oj#art_36').
provenance(cessation_of_activities/1, 'celex:32024R1689/oj#art_36').
provenance(planned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(designation_suspended/1, 'celex:32024R1689/oj#art_36').
provenance(designation_restricted/1, 'celex:32024R1689/oj#art_36').
provenance(designation_withdrawn/1, 'celex:32024R1689/oj#art_36').
provenance(designation_suspended_restricted_or_withdrawn/1, 'celex:32024R1689/oj#art_36').
provenance(certificate/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_unduly_issued/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid/1, 'celex:32024R1689/oj#art_36').
provenance(another_notified_body_assumes_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(full_assessment_completed/2, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason_to_consider/2, 'celex:32024R1689/oj#art_36').
provenance(notified_body_no_longer_meets_requirements/1, 'celex:32024R1689/oj#art_36').
provenance(notified_body_failing_to_fulfil_obligations/1, 'celex:32024R1689/oj#art_36').
provenance(seriousness_of_failure/1, 'celex:32024R1689/oj#art_36').
provenance(files_kept/1, 'celex:32024R1689/oj#art_36').
provenance(files_available_on_request/1, 'celex:32024R1689/oj#art_36').
provenance(impact_assessment_on_certificates/1, 'celex:32024R1689/oj#art_36').
provenance(report_on_findings/1, 'celex:32024R1689/oj#art_36').
provenance(certificates_suspended_or_withdrawn/1, 'celex:32024R1689/oj#art_36').
provenance(no_risk_to_health_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_36').
provenance(timeline_for_remedy/1, 'celex:32024R1689/oj#art_36').
provenance(no_certificates_issued_amended_or_reissued/1, 'celex:32024R1689/oj#art_36').
provenance(notified_body_capable_of_supporting_existing_certificates/1, 'celex:32024R1689/oj#art_36').
provenance(provider_confirms_another_qualified_notified_body/2, 'celex:32024R1689/oj#art_36').
provenance(provisional_validity_extended/2, 'celex:32024R1689/oj#art_36').
provenance(additional_period/1, 'celex:32024R1689/oj#art_36').
provenance(total_extension_not_exceeding/1, 'celex:32024R1689/oj#art_36').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_3').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_4').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_5').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_6').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_7').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_8').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9/unp_1').

% ==== celex:32024R1689/oj#art_37 ====
declared(must_investigate/2, 'who must investigate what', 'celex:32024R1689/oj#art_37').
declared(must_provide_information/3, 'who must provide what information to whom', 'celex:32024R1689/oj#art_37').
declared(must_treat_confidentially/2, 'who must treat what confidentially', 'celex:32024R1689/oj#art_37').
declared(must_inform_member_state/2, 'who must inform which member state of what', 'celex:32024R1689/oj#art_37').
declared(must_take_corrective_measures/2, 'who must take corrective measures regarding what', 'celex:32024R1689/oj#art_37').
declared(may_suspend_restrict_or_withdraw/2, 'who may suspend, restrict or withdraw what', 'celex:32024R1689/oj#art_37').
declared(reasons_to_doubt_competence/1, 'there are reasons to doubt the competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(reasons_to_doubt_continued_fulfilment/1, 'there are reasons to doubt continued fulfilment of requirements by a notified body', 'celex:32024R1689/oj#art_37').
declared(notified_body_does_not_meet_requirements/1, 'a notified body does not meet or no longer meets requirements for its notification', 'celex:32024R1689/oj#art_37').
declared(member_state_fails_to_take_corrective_measures/1, 'a member state fails to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
declared(sensitive_information/1, 'sensitive information obtained in the course of investigations', 'celex:32024R1689/oj#art_37').
declared(relevant_information/2, 'relevant information relating to a notification or maintenance of competence', 'celex:32024R1689/oj#art_37').
must_investigate(commission, notified_body(B)) :-
    notified_body(B),
    reasons_to_doubt_competence(B).
must_investigate(commission, notified_body(B)) :-
    notified_body(B),
    reasons_to_doubt_continued_fulfilment(B).
must_provide_information(notifying_authority(A), commission, relevant_information(notification(B))) :-
    notifying_authority(A),
    notified_body(B),
    request(commission, A, relevant_information(notification(B))).
must_provide_information(notifying_authority(A), commission, relevant_information(maintenance_of_competence(B))) :-
    notifying_authority(A),
    notified_body(B),
    request(commission, A, relevant_information(maintenance_of_competence(B))).
must_treat_confidentially(commission, sensitive_information(I)) :-
    sensitive_information(I),
    obtained_in_course_of_investigation(I, art_37).
must_inform_member_state(commission, member_state(M, notified_body(B))) :-
    notified_body(B),
    notifying_authority(notifying_authority_for(B, M)),
    notified_body_does_not_meet_requirements(B).
must_take_corrective_measures(member_state(M), notified_body(B)) :-
    notified_body(B),
    notifying_authority(notifying_authority_for(B, M)),
    must_inform_member_state(commission, member_state(M, notified_body(B))),
    includes_suspension_or_withdrawal_if_necessary(corrective_measures).
may_suspend_restrict_or_withdraw(commission, designation(notified_body(B))) :-
    notified_body(B),
    notifying_authority(notifying_authority_for(B, M)),
    member_state_fails_to_take_corrective_measures(M),
    must_inform_member_state(commission, member_state(M, notified_body(B))),
    notified_body_does_not_meet_requirements(B).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(must_take_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_or_withdraw/2, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_continued_fulfilment/1, 'celex:32024R1689/oj#art_37').
provenance(notified_body_does_not_meet_requirements/1, 'celex:32024R1689/oj#art_37').
provenance(member_state_fails_to_take_corrective_measures/1, 'celex:32024R1689/oj#art_37').
provenance(sensitive_information/1, 'celex:32024R1689/oj#art_37').
provenance(relevant_information/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(sectoral_group_of_notified_bodies/1, 'sectoral group of notified bodies for high-risk AI systems', 'celex:32024R1689/oj#art_38').
declared(coordination_and_cooperation/1, 'appropriate coordination and cooperation between notified bodies', 'celex:32024R1689/oj#art_38').
declared(exchange_of_knowledge_and_best_practices/1, 'exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
must_ensure_coordination(ai_office, sectoral_group_of_notified_bodies(G)) :-
    coordination_and_cooperation(G),
    high_risk_ai_system_context(G).
must_ensure_participation(Authority, sectoral_group_of_notified_bodies(G)) :-
    notifying_authority(Authority),
    notified_body_participates_in(Authority, G).
must_provide_exchange(ai_office, exchange_of_knowledge_and_best_practices) :-
    notifying_authority(_).
notified_body_participates_in(Authority, G) :-
    notifying_authority(Authority),
    notified_body(B),
    notified_by(B, Authority),
    participates_in(B, G).
notified_by(B, Authority) :-
    notifying_authority(Authority),
    notified_body(B).
participates_in(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G).
high_risk_ai_system_context(G) :-
    sectoral_group_of_notified_bodies(G).
provenance(must_ensure_coordination/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
provenance(coordination_and_cooperation/1, 'celex:32024R1689/oj#art_38').
provenance(exchange_of_knowledge_and_best_practices/1, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country', 'celex:32024R1689/oj#art_39').
declared(agreement_with_union/1, 'agreement concluded between the Union and a third country', 'celex:32024R1689/oj#art_39').
declared(authorised_to_carry_out_notified_body_activities/1, 'authorised to carry out the activities of notified bodies', 'celex:32024R1689/oj#art_39').
declared(meets_requirements/2, 'meets the requirements laid down in a provision', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_level_of_compliance/1, 'ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
authorised_to_carry_out_notified_body_activities(B) :-
    third_country_conformity_assessment_body(B),
    agreement_with_union(C),
    established_under_law_of_third_country(B, C),
    ( meets_requirements(B, art_31)
    ; ensures_equivalent_level_of_compliance(B)
    ).
established_under_law_of_third_country(B, C) :-
    third_country_conformity_assessment_body(B),
    third_country(C).
third_country(C) :-
    \+ member_state(C).
member_state(_C).
provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(agreement_with_union/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_to_carry_out_notified_body_activities/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements/2, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_level_of_compliance/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(presumed_conformity/1, 'high-risk AI system or general-purpose AI model presumed in conformity via harmonised standards', 'celex:32024R1689/oj#art_40').
declared(harmonised_standard_reference_published/1, 'reference of harmonised standard published in Official Journal of the European Union', 'celex:32024R1689/oj#art_40').
declared(standard_covers_requirement/2, 'harmonised standard or part thereof covers a requirement or obligation', 'celex:32024R1689/oj#art_40').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_40').
declared(requirement_set_out_in_chapter_3_section_2/1, 'requirement set out in Chapter III Section 2', 'celex:32024R1689/oj#art_40').
declared(obligation_set_out_in_chapter_5_section_2/1, 'obligation set out in Chapter V Section 2', 'celex:32024R1689/oj#art_40').
declared(obligation_set_out_in_chapter_5_section_3/1, 'obligation set out in Chapter V Section 3', 'celex:32024R1689/oj#art_40').
declared(must_issue_standardisation_request/2, 'Commission must issue standardisation request covering requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_covers/2, 'standardisation request covers a requirement or obligation', 'celex:32024R1689/oj#art_40').
declared(must_consult/2, 'Commission must consult a body when preparing standardisation request', 'celex:32024R1689/oj#art_40').
declared(must_specify_standard_quality/2, 'Commission must specify quality criteria for standards', 'celex:32024R1689/oj#art_40').
declared(must_request_evidence_of_best_efforts/2, 'Commission must request evidence of best efforts from European standardisation organisations', 'celex:32024R1689/oj#art_40').
declared(standardisation_participant_objective/1, 'objective that participants in standardisation process shall seek to promote', 'celex:32024R1689/oj#art_40').
presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, R),
    requirement_set_out_in_chapter_3_section_2(R).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_2(O).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_3(O).
presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_2(O).
presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_3(O).
must_issue_standardisation_request(commission, R) :-
    requirement_set_out_in_chapter_3_section_2(R).
must_issue_standardisation_request(commission, O) :-
    obligation_set_out_in_chapter_5_section_2(O).
must_issue_standardisation_request(commission, O) :-
    obligation_set_out_in_chapter_5_section_3(O).
must_consult(commission, board).
must_consult(commission, advisory_forum).
must_consult(commission, relevant_stakeholder).
must_specify_standard_quality(commission, clear).
must_specify_standard_quality(commission, consistent).
must_specify_standard_quality(commission, consistent_with_sectoral_product_standards).
must_specify_standard_quality(commission, ensures_high_risk_ai_systems_meet_requirements).
must_specify_standard_quality(commission, ensures_general_purpose_ai_models_meet_obligations).
must_request_evidence_of_best_efforts(commission, european_standardisation_organisation).
standardisation_participant_objective(promote_investment_and_innovation_in_ai).
standardisation_participant_objective(increase_legal_certainty).
standardisation_participant_objective(competitiveness_of_union_market).
standardisation_participant_objective(growth_of_union_market).
standardisation_participant_objective(strengthen_global_cooperation_on_standardisation).
standardisation_participant_objective(take_into_account_international_standards_consistent_with_union_values).
standardisation_participant_objective(take_into_account_international_standards_consistent_with_fundamental_rights).
standardisation_participant_objective(take_into_account_international_standards_consistent_with_union_interests).
standardisation_participant_objective(enhance_multi_stakeholder_governance).
standardisation_participant_objective(balanced_representation_of_interests).
standardisation_participant_objective(effective_participation_of_all_relevant_stakeholders).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_40').
provenance(standard_covers_requirement/2, 'celex:32024R1689/oj#art_40').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_40').
provenance(requirement_set_out_in_chapter_3_section_2/1, 'celex:32024R1689/oj#art_40').
provenance(obligation_set_out_in_chapter_5_section_2/1, 'celex:32024R1689/oj#art_40').
provenance(obligation_set_out_in_chapter_5_section_3/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_covers/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify_standard_quality/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_of_best_efforts/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_participant_objective/1, 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_10').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_2').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_24').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_6').

% ==== celex:32024R1689/oj#art_41 ====
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_41').
declared(european_standardisation_organisation/1, 'European standardisation organisation referred to in Regulation 1025/2012', 'celex:32024R1689/oj#art_41').
declared(advisory_forum/1, 'advisory forum referred to in Article 67', 'celex:32024R1689/oj#art_41').
declared(committee_art_22/1, 'committee referred to in Article 22 of Regulation 1025/2012', 'celex:32024R1689/oj#art_41').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_41').
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Chapter III Section 2', 'celex:32024R1689/oj#art_41').
declared(may_adopt_common_specifications/2, 'Commission may adopt implementing acts establishing common specifications for requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(requested_harmonised_standard/3, 'Commission requested ESO to draft harmonised standard for requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(request_not_accepted/2, 'request for harmonised standard not accepted by any ESO', 'celex:32024R1689/oj#art_41').
declared(standards_not_delivered_within_deadline/2, 'harmonised standards not delivered within deadline', 'celex:32024R1689/oj#art_41').
declared(standards_insufficient_fundamental_rights/2, 'harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(standards_do_not_comply_with_request/2, 'harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_harmonised_standard_reference_published/2, 'no reference to harmonised standards published in Official Journal and none expected within reasonable period', 'celex:32024R1689/oj#art_41').
declared(consulted_advisory_forum/1, 'Commission consulted advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(informed_committee/2, 'Commission informed committee that conditions for common specifications are fulfilled', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity_common_specifications/2, 'high-risk AI system or GPAI model in conformity with common specifications presumed conforming', 'celex:32024R1689/oj#art_41').
declared(assessed_harmonised_standard/2, 'Commission assessed harmonised standard proposed for publication', 'celex:32024R1689/oj#art_41').
declared(repealed_implementing_act/2, 'Commission repealed implementing act when harmonised standard reference published', 'celex:32024R1689/oj#art_41').
declared(must_justify_equivalent_technical_solutions/2, 'provider must justify technical solutions at least equivalent when not complying with common specifications', 'celex:32024R1689/oj#art_41').
declared(informed_commission_detailed_explanation/3, 'Member State informed Commission with detailed explanation that common specification insufficient', 'celex:32024R1689/oj#art_41').
declared(assessed_member_state_information/2, 'Commission assessed information from Member State about common specification', 'celex:32024R1689/oj#art_41').
declared(amended_implementing_act/2, 'Commission amended implementing act establishing common specification', 'celex:32024R1689/oj#art_41').
may_adopt_common_specifications(commission, common_specification(R)) :-
    requested_harmonised_standard(commission, R, eso),
    (   request_not_accepted(commission, R)
    ;   standards_not_delivered_within_deadline(commission, R)
    ;   standards_insufficient_fundamental_rights(commission, R)
    ;   standards_do_not_comply_with_request(commission, R)
    ),
    no_harmonised_standard_reference_published(commission, R).
consulted_advisory_forum(commission) :-
    may_adopt_common_specifications(commission, common_specification(_R)).
informed_committee(commission, committee_art_22) :-
    may_adopt_common_specifications(commission, common_specification(_R)).
presumed_conformity_common_specifications(S, R) :-
    high_risk_ai_system(S),
    conforms_with_common_specifications(S, R).
presumed_conformity_common_specifications(M, R) :-
    general_purpose_ai_model(M),
    conforms_with_common_specifications(M, R).
conforms_with_common_specifications(S, common_specification(R)).
assessed_harmonised_standard(commission, H) :-
    harmonised_standard(H),
    proposed_for_publication(H, commission).
repealed_implementing_act(commission, common_specification(R)) :-
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_same_requirements(H, R).
must_justify_equivalent_technical_solutions(P, common_specification(R)) :-
    provider(P),
    high_risk_ai_system(S),
    \+ conforms_with_common_specifications(S, common_specification(R)),
    technical_solutions_at_least_equivalent(S, R).
informed_commission_detailed_explanation(MS, commission, common_specification(R)) :-
    member_state(MS),
    considers_insufficient(MS, common_specification(R)).
assessed_member_state_information(commission, common_specification(R)) :-
    informed_commission_detailed_explanation(_MS, commission, common_specification(R)).
amended_implementing_act(commission, common_specification(R)) :-
    assessed_member_state_information(commission, common_specification(R)),
    deems_amendment_appropriate(commission, common_specification(R)).
provenance(may_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(requested_harmonised_standard/3, 'celex:32024R1689/oj#art_41').
provenance(request_not_accepted/2, 'celex:32024R1689/oj#art_41').
provenance(standards_not_delivered_within_deadline/2, 'celex:32024R1689/oj#art_41').
provenance(standards_insufficient_fundamental_rights/2, 'celex:32024R1689/oj#art_41').
provenance(standards_do_not_comply_with_request/2, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/2, 'celex:32024R1689/oj#art_41').
provenance(consulted_advisory_forum/1, 'celex:32024R1689/oj#art_41').
provenance(informed_committee/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(assessed_harmonised_standard/2, 'celex:32024R1689/oj#art_41').
provenance(repealed_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_equivalent_technical_solutions/2, 'celex:32024R1689/oj#art_41').
provenance(informed_commission_detailed_explanation/3, 'celex:32024R1689/oj#art_41').
provenance(assessed_member_state_information/2, 'celex:32024R1689/oj#art_41').
provenance(amended_implementing_act/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').

% ==== celex:32024R1689/oj#art_42 ====
declared(presumed_compliant_with_data_requirements/1, 'high-risk AI system trained and tested on data reflecting its specific setting is presumed to comply with Article 10(4) requirements', 'celex:32024R1689/oj#art_42').
declared(presumed_compliant_with_cybersecurity_requirements/1, 'high-risk AI system with cybersecurity certification is presumed to comply with Article 15 cybersecurity requirements to the extent covered', 'celex:32024R1689/oj#art_42').
presumed_compliant_with_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_on_representative_data(S),
    tested_on_representative_data(S).
presumed_compliant_with_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    cybersecurity_certified(S).
trained_on_representative_data(S) :-
    trained_on_data_reflecting_setting(S, geographical),
    trained_on_data_reflecting_setting(S, behavioural),
    trained_on_data_reflecting_setting(S, contextual),
    trained_on_data_reflecting_setting(S, functional).
tested_on_representative_data(S) :-
    tested_on_data_reflecting_setting(S, geographical),
    tested_on_data_reflecting_setting(S, behavioural),
    tested_on_data_reflecting_setting(S, contextual),
    tested_on_data_reflecting_setting(S, functional).
trained_on_data_reflecting_setting(S, Setting) :-
    training_data(D),
    used_for_training(S, D),
    reflects_setting(D, Setting),
    intended_use_setting(S, Setting).
tested_on_data_reflecting_setting(S, Setting) :-
    testing_data(D),
    used_for_testing(S, D),
    reflects_setting(D, Setting),
    intended_use_setting(S, Setting).
cybersecurity_certified(S) :-
    certified_under_cybersecurity_scheme(S, Scheme),
    scheme_references_published_in_official_journal(Scheme).
certified_under_cybersecurity_scheme(S, Scheme) :-
    cybersecurity_certificate_issued(S, Scheme).
certified_under_cybersecurity_scheme(S, Scheme) :-
    statement_of_conformity_issued(S, Scheme).
provenance(presumed_compliant_with_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliant_with_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(tested_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(trained_on_data_reflecting_setting/2, 'celex:32024R1689/oj#art_42').
provenance(tested_on_data_reflecting_setting/2, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certified/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/2, 'celex:32024R1689/oj#art_42').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex_3_point_1/1, 'high-risk AI system listed in Annex III point 1', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex_3_points_2_to_8/1, 'high-risk AI system listed in Annex III points 2 through 8', 'celex:32024R1689/oj#art_43').
declared(covered_by_union_harmonisation_legislation/1, 'high-risk AI system covered by Union harmonisation legislation listed in Annex I section 1', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standards/2, 'provider has applied harmonised standards to the AI system', 'celex:32024R1689/oj#art_43').
declared(applied_common_specifications/2, 'provider has applied common specifications to the AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_exist/1, 'harmonised standards exist for the AI system', 'celex:32024R1689/oj#art_43').
declared(common_specifications_available/1, 'common specifications are available for the AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_published_with_restriction/1, 'harmonised standard published with a restriction', 'celex:32024R1689/oj#art_43').
declared(restricted_part_of_standard/2, 'provider applied only the restricted part of a harmonised standard', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement/1, 'high-risk AI system intended to be put into service by law enforcement authorities', 'celex:32024R1689/oj#art_43').
declared(intended_for_immigration_or_asylum/1, 'high-risk AI system intended to be put into service by immigration or asylum authorities', 'celex:32024R1689/oj#art_43').
declared(intended_for_union_institutions/1, 'high-risk AI system intended to be put into service by Union institutions, bodies, offices or agencies', 'celex:32024R1689/oj#art_43').
declared(market_surveillance_authority_acts_as_notified_body/1, 'market surveillance authority acts as notified body for the AI system', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_internal_control/1, 'conformity assessment procedure based on internal control under Annex VI', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_with_notified_body/1, 'conformity assessment procedure involving notified body under Annex VII', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_relevant_procedure/1, 'conformity assessment procedure required under relevant Union harmonisation legislation', 'celex:32024R1689/oj#art_43').
declared(notified_body_entitled_to_control_conformity/2, 'notified body entitled to control conformity of AI system with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_43').
declared(notified_body_compliance_assessed/2, 'compliance of notified body with Article 31 requirements assessed in notification procedure', 'celex:32024R1689/oj#art_43').
declared(product_manufacturer_opt_out_available/1, 'legal act enables product manufacturer to opt out from third-party conformity assessment', 'celex:32024R1689/oj#art_43').
declared(manufacturer_applied_all_harmonised_standards/2, 'product manufacturer has applied all harmonised standards covering all relevant requirements', 'celex:32024R1689/oj#art_43').
declared(manufacturer_applied_standards_covering_chapter_3_section_2/2, 'product manufacturer has applied harmonised standards or common specifications covering all Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_43').
declared(new_conformity_assessment_required/1, 'new conformity assessment procedure required for the AI system', 'celex:32024R1689/oj#art_43').
declared(predetermined_change/2, 'change to AI system and its performance predetermined by provider at initial conformity assessment', 'celex:32024R1689/oj#art_43').
declared(change_in_technical_documentation/2, 'change is part of information contained in technical documentation', 'celex:32024R1689/oj#art_43').
must_follow_conformity_assessment_procedure(P, S, internal_control) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_harmonised_standards(P, S).
must_follow_conformity_assessment_procedure(P, S, internal_control) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_common_specifications(P, S).
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_harmonised_standards(P, S).
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    applied_common_specifications(P, S).
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    \+ harmonised_standards_exist(S),
    \+ common_specifications_available(S).
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    harmonised_standards_exist(S),
    \+ applied_harmonised_standards(P, S).
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    harmonised_standards_exist(S),
    applied_harmonised_standards(P, S),
    harmonised_standard_published_with_restriction(S),
    restricted_part_of_standard(P, S).
must_follow_conformity_assessment_procedure(P, S, with_notified_body) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    common_specifications_available(S),
    \+ applied_common_specifications(P, S).
market_surveillance_authority_acts_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_law_enforcement(S).
market_surveillance_authority_acts_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_immigration_or_asylum(S).
market_surveillance_authority_acts_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_union_institutions(S).
must_follow_conformity_assessment_procedure(P, S, internal_control) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_points_2_to_8(S).
must_follow_conformity_assessment_procedure(P, S, relevant_procedure) :-
    provider(P),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
notified_body_entitled_to_control_conformity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    notified_body_compliance_assessed(B, S).
permitted_opt_out_from_third_party_assessment(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    product_manufacturer_opt_out_available(S),
    manufacturer_applied_all_harmonised_standards(M, S),
    manufacturer_applied_standards_covering_chapter_3_section_2(M, S).
new_conformity_assessment_required(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex_3_point_1/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex_3_points_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standards/2, 'celex:32024R1689/oj#art_43').
provenance(applied_common_specifications/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_available/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(restricted_part_of_standard/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_immigration_or_asylum/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_union_institutions/1, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_acts_as_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_internal_control/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_with_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_relevant_procedure/1, 'celex:32024R1689/oj#art_43').
provenance(notified_body_entitled_to_control_conformity/2, 'celex:32024R1689/oj#art_43').
provenance(notified_body_compliance_assessed/2, 'celex:32024R1689/oj#art_43').
provenance(product_manufacturer_opt_out_available/1, 'celex:32024R1689/oj#art_43').
provenance(manufacturer_applied_all_harmonised_standards/2, 'celex:32024R1689/oj#art_43').
provenance(manufacturer_applied_standards_covering_chapter_3_section_2/2, 'celex:32024R1689/oj#art_43').
provenance(new_conformity_assessment_required/1, 'celex:32024R1689/oj#art_43').
provenance(predetermined_change/2, 'celex:32024R1689/oj#art_43').
provenance(change_in_technical_documentation/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(permitted_opt_out_from_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_3').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_10').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_11').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').

% ==== celex:32024R1689/oj#art_44 ====
declared(certificate/1, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_validity_period/2, 'certificate and its validity period in years', 'celex:32024R1689/oj#art_44').
declared(certificate_supplement/2, 'supplement to a certificate', 'celex:32024R1689/oj#art_44').
declared(certificate_extension/2, 'certificate and its extension period in years', 'celex:32024R1689/oj#art_44').
declared(ai_system_covered_by_annex_1/1, 'AI system covered by Annex I', 'celex:32024R1689/oj#art_44').
declared(ai_system_covered_by_annex_3/1, 'AI system covered by Annex III', 'celex:32024R1689/oj#art_44').
declared(certificate_language_understandable/2, 'certificate and language easily understood by relevant authorities', 'celex:32024R1689/oj#art_44').
declared(must_draw_up_certificate_in_language/2, 'notified body must draw up certificate in understandable language', 'celex:32024R1689/oj#art_44').
declared(must_suspend_or_withdraw_or_restrict_certificate/3, 'notified body must suspend, withdraw or restrict certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons_for_decision/2, 'notified body must give reasons for decision', 'celex:32024R1689/oj#art_44').
declared(appeal_procedure_available/1, 'appeal procedure available against notified body decisions', 'celex:32024R1689/oj#art_44').
must_draw_up_certificate_in_language(Body, certificate(C, Language)) :-
    notified_body(Body),
    certificate_language_understandable(certificate(C, Language), Body).
certificate_language_understandable(certificate(C, Language), Body) :-
    notified_body(Body),
    member_state_established(Body, MemberState),
    relevant_authorities(MemberState, Authorities),
    language_easily_understood(Language, Authorities).
certificate_validity_period(certificate(C, years(5)), S) :-
    ai_system_covered_by_annex_1(S),
    certificate(C),
    covers_certificate(C, S).
certificate_validity_period(certificate(C, years(4)), S) :-
    ai_system_covered_by_annex_3(S),
    certificate(C),
    covers_certificate(C, S).
certificate_extension(certificate(C, years(5)), S) :-
    ai_system_covered_by_annex_1(S),
    certificate(C),
    covers_certificate(C, S),
    provider(S, P),
    request_extension(P, C).
certificate_extension(certificate(C, years(4)), S) :-
    ai_system_covered_by_annex_3(S),
    certificate(C),
    covers_certificate(C, S),
    provider(S, P),
    request_extension(P, C).
certificate_supplement_valid(certificate_supplement(Sup, C)) :-
    certificate_supplement(Sup, C),
    certificate(C),
    certificate_valid(C).
must_suspend_or_withdraw_or_restrict_certificate(Body, certificate(C), S) :-
    notified_body(Body),
    certificate(C),
    covers_certificate(C, S),
    \+ meets_requirements(S, chp_3_sec_2),
    \+ corrective_action_taken(S, Body).
must_suspend_or_withdraw_or_restrict_certificate(Body, certificate(C), S) :-
    notified_body(Body),
    certificate(C),
    covers_certificate(C, S),
    \+ meets_requirements(S, chp_3_sec_2),
    corrective_action_taken(S, Body),
    \+ compliance_ensured_within_deadline(S, Body).
must_give_reasons_for_decision(Body, decision(suspend_or_withdraw_or_restrict, certificate(C))) :-
    notified_body(Body),
    certificate(C),
    must_suspend_or_withdraw_or_restrict_certificate(Body, certificate(C), _S).
appeal_procedure_available(notified_body_decision) :-
    true.
appeal_procedure_available(conformity_certificate_issued).
provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_supplement/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension/2, 'celex:32024R1689/oj#art_44').
provenance(ai_system_covered_by_annex_1/1, 'celex:32024R1689/oj#art_44').
provenance(ai_system_covered_by_annex_3/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_language_understandable/2, 'celex:32024R1689/oj#art_44').
provenance(must_draw_up_certificate_in_language/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_or_restrict_certificate/3, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons_for_decision/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'who is obliged to inform whom about what', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'who must protect confidentiality of what information', 'celex:32024R1689/oj#art_45').
must_inform(B, notifying_authority(issued_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(issued_certificate(supplement(union_technical_documentation_assessment)))) :-
    notified_body(B).
must_inform(B, notifying_authority(issued_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(refused_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(restricted_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(suspended_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(withdrawn_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(refused_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(restricted_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(suspended_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(withdrawn_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(circumstances_affecting(scope_of_notification))) :-
    notified_body(B).
must_inform(B, notifying_authority(circumstances_affecting(conditions_for_notification))) :-
    notified_body(B).
must_inform(B, notifying_authority(request_for_information(market_surveillance_authority, conformity_assessment_activities))) :-
    notified_body(B).
must_inform(B, notifying_authority(conformity_assessment_activities(within_scope_of_notification))) :-
    notified_body(B).
must_inform(B, notifying_authority(other_activity_performed(including(cross_border_activities)))) :-
    notified_body(B).
must_inform(B, notifying_authority(other_activity_performed(including(subcontracting)))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(refused_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(suspended_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(withdrawn_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(issued_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(refused_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(withdrawn_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(suspended_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(restricted_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(issued_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(issued_certificate(supplement(union_technical_documentation_assessment)))) :-
    notified_body(B).
must_inform(B, other_notified_bodies_carrying_out_similar_activities(negative_conformity_assessment_results)) :-
    notified_body(B),
    notified_body(B2),
    B \= B2,
    similar_conformity_assessment_activities(B, B2),
    covers_same_types_of_ai_systems(B, B2).
must_inform(B, other_notified_bodies_carrying_out_similar_activities(positive_conformity_assessment_results)) :-
    notified_body(B),
    notified_body(B2),
    B \= B2,
    similar_conformity_assessment_activities(B, B2),
    covers_same_types_of_ai_systems(B, B2).
must_safeguard_confidentiality(B, information_obtained) :-
    notified_body(B).
similar_conformity_assessment_activities(B1, B2) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    conformity_assessment_activity(A, B1),
    conformity_assessment_activity(A, B2).
covers_same_types_of_ai_systems(B1, B2) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    covers_ai_system_type(T, B1),
    covers_ai_system_type(T, B2).
conformity_assessment_activity(_A, _B).
covers_ai_system_type(_T, _B).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
provenance(similar_conformity_assessment_activities/2, 'celex:32024R1689/oj#art_45').
provenance(covers_same_types_of_ai_systems/2, 'celex:32024R1689/oj#art_45').
provenance(conformity_assessment_activity/2, 'celex:32024R1689/oj#art_45').
provenance(covers_ai_system_type/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_46').
declared(derogation_authorisation/2, 'authorisation for derogation from conformity assessment for a specific high-risk AI system', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional reason justifying derogation: public security, protection of life and health, environmental protection, or protection of key industrial and infrastructural assets', 'celex:32024R1689/oj#art_46').
declared(limited_period_authorisation/2, 'authorisation limited to the period while conformity assessment procedures are being carried out', 'celex:32024R1689/oj#art_46').
declared(urgency_situation/1, 'duly justified situation of urgency for exceptional reasons of public security or specific substantial and imminent threat to life or physical safety', 'celex:32024R1689/oj#art_46').
declared(put_into_service_without_authorisation/2, 'putting a specific high-risk AI system into service without prior authorisation in urgency situation', 'celex:32024R1689/oj#art_46').
declared(authorisation_requested_without_undue_delay/2, 'authorisation requested during or after use without undue delay', 'celex:32024R1689/oj#art_46').
declared(authorisation_refused/1, 'authorisation under Article 46(1) has been refused', 'celex:32024R1689/oj#art_46').
declared(use_stopped_immediately/1, 'use of the high-risk AI system stopped with immediate effect', 'celex:32024R1689/oj#art_46').
declared(results_and_outputs_discarded/1, 'all results and outputs of such use immediately discarded', 'celex:32024R1689/oj#art_46').
declared(authorisation_issued_only_if_compliant/2, 'authorisation issued only if market surveillance authority concludes system complies with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_46').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and other Member States of authorisation issued', 'celex:32024R1689/oj#art_46').
declared(sensitive_operational_data_exemption/1, 'obligation to inform does not cover sensitive operational data of law-enforcement activities', 'celex:32024R1689/oj#art_46').
declared(authorisation_deemed_justified/1, 'authorisation deemed justified if no objection within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(no_objection_within_period/2, 'no objection raised by Member State or Commission within 15 calendar days of receipt of information', 'celex:32024R1689/oj#art_46').
declared(objection_raised/2, 'objection raised by Member State or Commission considers authorisation contrary to Union law or compliance conclusion unfounded', 'celex:32024R1689/oj#art_46').
declared(commission_consultation/2, 'Commission enters into consultations with relevant Member State', 'celex:32024R1689/oj#art_46').
declared(operators_consulted/1, 'operators concerned are consulted and have possibility to present their views', 'celex:32024R1689/oj#art_46').
declared(commission_decides_justification/1, 'Commission decides whether authorisation is justified', 'celex:32024R1689/oj#art_46').
declared(authorisation_withdrawn/1, 'authorisation withdrawn by market surveillance authority when Commission considers it unjustified', 'celex:32024R1689/oj#art_46').
declared(union_harmonisation_legislation_derogation_only/1, 'for high-risk AI systems related to products covered by Union harmonisation legislation, only derogations from that legislation apply', 'celex:32024R1689/oj#art_46').
derogation_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    duly_justified_request(S),
    exceptional_reason(Reason),
    authorises_placing_or_putting(Authority, S, Reason).
duly_justified_request(S) :-
    high_risk_ai_system(S).
exceptional_reason(public_security).
exceptional_reason(protection_of_life_and_health).
exceptional_reason(environmental_protection).
exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).
authorises_placing_or_putting(Authority, S, Reason) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    exceptional_reason(Reason),
    limited_period_authorisation(Authority, S),
    conformity_assessment_undertaken_without_undue_delay(S).
limited_period_authorisation(Authority, S) :-
    derogation_authorisation(Authority, S),
    period_while_conformity_assessment(S).
period_while_conformity_assessment(S) :-
    high_risk_ai_system(S),
    conformity_assessment(S).
conformity_assessment_undertaken_without_undue_delay(S) :-
    high_risk_ai_system(S).
put_into_service_without_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(S),
    urgency_situation(S).
put_into_service_without_authorisation(Authority, S) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(S),
    urgency_situation(S).
declared(civil_protection_authority/1, 'public authority for civil protection', 'celex:32024R1689/oj#art_46').
urgency_situation(S) :-
    high_risk_ai_system(S),
    exceptional_reason(public_security),
    duly_justified_urgency(S).
urgency_situation(S) :-
    high_risk_ai_system(S),
    specific_substantial_imminent_threat_to_life_or_physical_safety(S).
specific_substantial_imminent_threat_to_life_or_physical_safety(S) :-
    high_risk_ai_system(S).
authorisation_requested_without_undue_delay(Authority, S) :-
    put_into_service_without_authorisation(Authority, S),
    request_authorisation_during_or_after_use(Authority, S).
request_authorisation_during_or_after_use(Authority, S) :-
    put_into_service_without_authorisation(Authority, S).
use_stopped_immediately(S) :-
    put_into_service_without_authorisation(_Authority, S),
    authorisation_refused(S).
results_and_outputs_discarded(S) :-
    put_into_service_without_authorisation(_Authority, S),
    authorisation_refused(S).
authorisation_refused(S) :-
    high_risk_ai_system(S),
    \+ derogation_authorisation(_, S).
authorisation_issued_only_if_compliant(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    concludes_compliance_with_chapter_3_section_2(Authority, S),
    derogation_authorisation(Authority, S).
concludes_compliance_with_chapter_3_section_2(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S).
must_inform_commission_and_member_states(Authority, authorisation(S)) :-
    market_surveillance_authority(Authority),
    derogation_authorisation(Authority, S),
    \+ sensitive_operational_data_exemption(authorisation(S)).
sensitive_operational_data_exemption(authorisation(S)) :-
    high_risk_ai_system(S),
    sensitive_operational_data(S),
    law_enforcement_authority(_).
authorisation_deemed_justified(authorisation(S)) :-
    derogation_authorisation(Authority, S),
    must_inform_commission_and_member_states(Authority, authorisation(S)),
    no_objection_within_period(authorisation(S), days(15)).
no_objection_within_period(authorisation(S), Period) :-
    derogation_authorisation(_, S),
    period(Period).
period(days(15)).
objection_raised(authorisation(S), member_state) :-
    derogation_authorisation(Authority, S),
    market_surveillance_authority(Authority),
    objection_by_member_state(authorisation(S)).
objection_raised(authorisation(S), commission) :-
    derogation_authorisation(_, S),
    commission_considers_contrary_to_union_law(authorisation(S)).
objection_raised(authorisation(S), commission) :-
    derogation_authorisation(_, S),
    commission_considers_compliance_conclusion_unfounded(authorisation(S)).
objection_by_member_state(authorisation(S)) :-
    derogation_authorisation(_, S).
commission_considers_contrary_to_union_law(authorisation(S)) :-
    derogation_authorisation(_, S).
commission_considers_compliance_conclusion_unfounded(authorisation(S)) :-
    derogation_authorisation(_, S).
commission_consultation(authorisation(S), MemberState) :-
    objection_raised(authorisation(S), _),
    derogation_authorisation(Authority, S),
    market_surveillance_authority(Authority),
    member_state_of(Authority, MemberState).
member_state_of(Authority, MemberState) :-
    market_surveillance_authority(Authority),
    member_state(MemberState).
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_46').
operators_consulted(authorisation(S)) :-
    objection_raised(authorisation(S), _),
    derogation_authorisation(_, S),
    operator(Operator),
    consulted(Operator, authorisation(S)).
consulted(Operator, authorisation(S)) :-
    operator(Operator),
    high_risk_ai_system(S).
commission_decides_justification(authorisation(S)) :-
    objection_raised(authorisation(S), _),
    derogation_authorisation(_, S).
authorisation_withdrawn(authorisation(S)) :-
    commission_decides_justification(authorisation(S)),
    commission_considers_unjustified(authorisation(S)),
    derogation_authorisation(Authority, S),
    market_surveillance_authority(Authority).
commission_considers_unjustified(authorisation(S)) :-
    commission_decides_justification(authorisation(S)),
    \+ authorisation_deemed_justified(authorisation(S)).
union_harmonisation_legislation_derogation_only(S) :-
    high_risk_ai_system(S),
    related_to_product_covered_by_union_harmonisation_legislation(S).
related_to_product_covered_by_union_harmonisation_legislation(S) :-
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_46').
provenance(derogation_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(limited_period_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(civil_protection_authority/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_requested_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(use_stopped_immediately/1, 'celex:32024R1689/oj#art_46').
provenance(results_and_outputs_discarded/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_issued_only_if_compliant/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(sensitive_operational_data_exemption/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(no_objection_within_period/2, 'celex:32024R1689/oj#art_46').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_46').
provenance(commission_consultation/2, 'celex:32024R1689/oj#art_46').
provenance(operators_consulted/1, 'celex:32024R1689/oj#art_46').
provenance(commission_decides_justification/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_withdrawn/1, 'celex:32024R1689/oj#art_46').
provenance(union_harmonisation_legislation_derogation_only/1, 'celex:32024R1689/oj#art_46').
provenance(member_state/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(eu_declaration_of_conformity/1, 'written machine readable physical or electronically signed declaration drawn up by provider for a high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_47').
declared(keep_at_disposal/2, 'entity keeps document at disposal of authority for a period', 'celex:32024R1689/oj#art_47').
declared(submit_copy_upon_request/2, 'entity submits copy of document to authority upon request', 'celex:32024R1689/oj#art_47').
declared(declaration_identifies/2, 'declaration identifies the AI system it was drawn up for', 'celex:32024R1689/oj#art_47').
declared(declaration_states_compliance/2, 'declaration states that AI system meets requirements of Section 2', 'celex:32024R1689/oj#art_47').
declared(declaration_contains_information/2, 'declaration contains information set out in Annex V', 'celex:32024R1689/oj#art_47').
declared(declaration_translated/2, 'declaration translated into language easily understood by national competent authorities', 'celex:32024R1689/oj#art_47').
declared(single_declaration_for_multiple_legislation/1, 'single EU declaration of conformity drawn up for all applicable Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(declaration_identifies_legislation/2, 'declaration contains information to identify Union harmonisation legislation it relates to', 'celex:32024R1689/oj#art_47').
declared(provider_assumes_responsibility/2, 'provider assumes responsibility for compliance by drawing up declaration', 'celex:32024R1689/oj#art_47').
declared(keep_declaration_up_to_date/2, 'provider keeps EU declaration of conformity up-to-date', 'celex:32024R1689/oj#art_47').
declared(commission_empowered_to_amend_annex_v/0, 'Commission empowered to adopt delegated acts to amend Annex V', 'celex:32024R1689/oj#art_47').
must_draw_up_eu_declaration_of_conformity(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
must_keep_declaration_at_disposal(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S),
    keep_at_disposal(Provider, D),
    national_competent_authority(A),
    period(years(10), after(placing_on_market_or_putting_into_service(S))).
must_submit_copy_upon_request(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S),
    national_competent_authority(A),
    submit_copy_upon_request(Provider, copy(D, A)).
declaration_identifies(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).
declaration_states_compliance(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).
declaration_contains_information(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).
declaration_translated(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S),
    national_competent_authority(A),
    member_state_of(A),
    placing_on_market_in(S, member_state_of(A)).
single_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_harmonisation_legislation(S).
declaration_identifies_legislation(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S),
    single_declaration_for_multiple_legislation(S).
must_assume_responsibility_for_compliance(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S),
    declaration_states_compliance(D, S).
must_keep_declaration_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    declaration_identifies(D, S).
commission_empowered_to_amend_annex_v.
placing_on_market_or_putting_into_service(S) :-
    placing_on_market(S).
placing_on_market_or_putting_into_service(S) :-
    putting_into_service(S).
subject_to_other_union_harmonisation_legislation(S) :-
    high_risk_ai_system(S).
member_state_of(A) :-
    national_competent_authority(A).
placing_on_market_in(S, M) :-
    high_risk_ai_system(S),
    member_state_of(M).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_47').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_47').
provenance(keep_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(submit_copy_upon_request/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_identifies/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_information/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_translated/2, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_identifies_legislation/2, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_upon_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_v/0, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(ce_marking_affixed/1, 'CE marking affixed to a high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking/1, 'digital CE marking used for a digitally provided high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(ce_marking_visible_legible_indelible/1, 'CE marking affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(ce_marking_on_packaging_or_documentation/1, 'CE marking affixed to packaging or accompanying documentation when not possible on the system', 'celex:32024R1689/oj#art_48').
declared(ce_marking_followed_by_notified_body_id/1, 'CE marking followed by identification number of notified body', 'celex:32024R1689/oj#art_48').
declared(notified_body_id_affixed_by_notified_body/1, 'identification number affixed by the notified body itself', 'celex:32024R1689/oj#art_48').
declared(notified_body_id_affixed_under_instructions/1, 'identification number affixed under notified body instructions by provider or authorised representative', 'celex:32024R1689/oj#art_48').
declared(notified_body_id_in_promotional_material/1, 'identification number indicated in promotional material mentioning CE marking requirements', 'celex:32024R1689/oj#art_48').
declared(ce_marking_indicates_other_union_law_compliance/1, 'CE marking indicates compliance with other Union law also requiring CE marking', 'celex:32024R1689/oj#art_48').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'high-risk AI system provided digitally', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_union_law_ce_marking/1, 'high-risk AI system subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
must_affix_ce_marking(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S).
ce_marking_affixed(S) :-
    high_risk_ai_system(S),
    ce_marking_visible_legible_indelible(S).
ce_marking_affixed(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_visible_legible_indelible(S),
    ce_marking_on_packaging_or_documentation(S).
digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    ce_marking(S),
    easily_accessible_via_interface(S).
easily_accessible_via_interface(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    accessible_via_interface(S).
easily_accessible_via_interface(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    accessible_via_machine_readable_code(S).
easily_accessible_via_interface(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    accessible_via_other_electronic_means(S).
ce_marking_visible_legible_indelible(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    affixed_visibly(S),
    affixed_legibly(S),
    affixed_indelibly(S).
ce_marking_on_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    affixed_to_packaging(S).
ce_marking_on_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    affixed_to_accompanying_documentation(S).
ce_marking_followed_by_notified_body_id(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    applicable_notified_body_identification(S).
applicable_notified_body_identification(S) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure_applies(S).
notified_body_id_affixed_by_notified_body(S) :-
    high_risk_ai_system(S),
    ce_marking_followed_by_notified_body_id(S),
    notified_body(B),
    affixes_identification_number(B, S).
notified_body_id_affixed_under_instructions(S) :-
    high_risk_ai_system(S),
    ce_marking_followed_by_notified_body_id(S),
    notified_body(B),
    under_instructions_of(B, A),
    affixes_identification_number(A, S),
    responsible_party(A).
responsible_party(A) :-
    provider(A).
responsible_party(A) :-
    authorised_representative(A),
    mandated_by_provider(A).
notified_body_id_in_promotional_material(S) :-
    high_risk_ai_system(S),
    ce_marking_followed_by_notified_body_id(S),
    promotional_material_mentions_ce_requirements(S),
    identification_number_indicated_in_material(S).
ce_marking_indicates_other_union_law_compliance(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_ce_marking(S),
    ce_marking(S),
    indicates_compliance_with_other_law(S).
provenance(ce_marking_affixed/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_visible_legible_indelible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_on_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_followed_by_notified_body_id/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_id_affixed_by_notified_body/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_id_affixed_under_instructions/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_id_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_union_law_compliance/1, 'celex:32024R1689/oj#art_48').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_48').
provenance(provided_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(subject_to_other_union_law_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3/1, 'high-risk AI system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(annex_3_point_2/1, 'high-risk AI system referred to in Annex III point 2', 'celex:32024R1689/oj#art_49').
declared(annex_3_point_1/1, 'high-risk AI system referred to in Annex III point 1', 'celex:32024R1689/oj#art_49').
declared(annex_3_point_6/1, 'high-risk AI system referred to in Annex III point 6', 'celex:32024R1689/oj#art_49').
declared(annex_3_point_7/1, 'high-risk AI system referred to in Annex III point 7', 'celex:32024R1689/oj#art_49').
declared(law_enforcement_area/1, 'area of law enforcement', 'celex:32024R1689/oj#art_49').
declared(migration_asylum_border_control_area/1, 'area of migration, asylum and border control management', 'celex:32024R1689/oj#art_49').
declared(public_authority_deployer/1, 'deployer that is a public authority, Union institution, body, office or agency', 'celex:32024R1689/oj#art_49').
declared(person_acting_on_behalf_of_public_authority/1, 'person acting on behalf of a public authority deployer', 'celex:32024R1689/oj#art_49').
declared(eu_database/1, 'EU database referred to in Article 71', 'celex:32024R1689/oj#art_49').
declared(secure_non_public_section/1, 'secure non-public section of the EU database', 'celex:32024R1689/oj#art_49').
declared(national_level_registration/1, 'registration at national level', 'celex:32024R1689/oj#art_49').
declared(concluded_not_high_risk/1, 'provider has concluded the AI system is not high-risk according to Article 6(3)', 'celex:32024R1689/oj#art_49').
declared(commission/1, 'the Commission', 'celex:32024R1689/oj#art_49').
declared(national_authority_art_74_8/1, 'national authority referred to in Article 74(8)', 'celex:32024R1689/oj#art_49').
must_register(Provider, registration(provider, System, eu_database)) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(Provider, System).
must_register(AuthorisedRep, registration(authorised_representative, System, eu_database)) :-
    authorised_representative(AuthorisedRep),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(AuthorisedRep, System).
before_placing_on_market_or_putting_into_service(Actor, System) :-
    before_placing_on_market(Actor, System).
before_placing_on_market_or_putting_into_service(Actor, System) :-
    before_putting_into_service(Actor, System).
before_placing_on_market(Actor, System) :-
    placing_on_market(System),
    actor_involved(Actor, System).
before_putting_into_service(Actor, System) :-
    putting_into_service(System),
    actor_involved(Actor, System).
actor_involved(_Actor, _System).
must_register(Provider, registration(provider, System, eu_database)) :-
    provider(Provider),
    ai_system(System),
    concluded_not_high_risk(System),
    before_placing_on_market_or_putting_into_service(Provider, System).
must_register(AuthorisedRep, registration(authorised_representative, System, eu_database)) :-
    authorised_representative(AuthorisedRep),
    ai_system(System),
    concluded_not_high_risk(System),
    before_placing_on_market_or_putting_into_service(AuthorisedRep, System).
must_register(Deployer, registration(deployer, System, eu_database, use)) :-
    deployer(Deployer),
    public_authority_deployer(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_putting_into_service_or_using(Deployer, System).
must_register(Deployer, registration(deployer, System, eu_database, use)) :-
    deployer(Deployer),
    person_acting_on_behalf_of_public_authority(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_putting_into_service_or_using(Deployer, System).
before_putting_into_service_or_using(Deployer, System) :-
    before_putting_into_service(Deployer, System).
before_putting_into_service_or_using(Deployer, System) :-
    before_using(Deployer, System).
before_using(_Deployer, _System).
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_1(System),
    law_enforcement_area(System).
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_1(System),
    migration_asylum_border_control_area(System).
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_6(System),
    law_enforcement_area(System).
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_6(System),
    migration_asylum_border_control_area(System).
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_7(System),
    law_enforcement_area(System).
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_7(System),
    migration_asylum_border_control_area(System).
permitted_access_to_restricted_section(Accessor, System) :-
    commission(Accessor),
    required_registration_section(System, secure_non_public_section).
permitted_access_to_restricted_section(Accessor, System) :-
    national_authority_art_74_8(Accessor),
    required_registration_section(System, secure_non_public_section).
required_registration_level(System, national_level) :-
    high_risk_ai_system(System),
    annex_3_point_2(System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_2/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_1/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_6/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_7/1, 'celex:32024R1689/oj#art_49').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#art_49').
provenance(migration_asylum_border_control_area/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_49').
provenance(person_acting_on_behalf_of_public_authority/1, 'celex:32024R1689/oj#art_49').
provenance(eu_database/1, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(national_level_registration/1, 'celex:32024R1689/oj#art_49').
provenance(concluded_not_high_risk/1, 'celex:32024R1689/oj#art_49').
provenance(commission/1, 'celex:32024R1689/oj#art_49').
provenance(national_authority_art_74_8/1, 'celex:32024R1689/oj#art_49').
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(before_placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_49').
provenance(before_placing_on_market/2, 'celex:32024R1689/oj#art_49').
provenance(before_putting_into_service/2, 'celex:32024R1689/oj#art_49').
provenance(actor_involved/2, 'celex:32024R1689/oj#art_49').
provenance(before_putting_into_service_or_using/2, 'celex:32024R1689/oj#art_49').
provenance(before_using/2, 'celex:32024R1689/oj#art_49').
provenance(required_registration_section/2, 'celex:32024R1689/oj#art_49').
provenance(permitted_access_to_restricted_section/2, 'celex:32024R1689/oj#art_49').
provenance(required_registration_level/2, 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_4').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_5').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_6').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_7').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_9').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_10').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_5').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_4/unp_1').

% ==== celex:32024R1689/oj#art_50 ====
declared(must_inform/2, 'who is obliged, what about', 'celex:32024R1689/oj#art_50').
declared(must_disclose/2, 'who is obliged, what about', 'celex:32024R1689/oj#art_50').
declared(must_mark_output/2, 'who is obliged, what about', 'celex:32024R1689/oj#art_50').
declared(exempt_from_informing/2, 'who is exempt, from what obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_from_marking/2, 'who is exempt, from what obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_from_disclosure/2, 'who is exempt, from what obligation', 'celex:32024R1689/oj#art_50').
declared(interacts_directly_with_natural_persons/1, 'AI system intended to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(obvious_interaction/1, 'interaction with AI is obvious to a reasonably well-informed, observant and circumspect natural person', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generating synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(output_marked_machine_readable/1, 'output marked in machine-readable format as artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(technical_solution_effective/1, 'technical solution for marking is effective, interoperable, robust and reliable', 'celex:32024R1689/oj#art_50').
declared(assistive_function_standard_editing/1, 'AI system performs assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(substantially_alters_input/1, 'AI system substantially alters input data or semantics', 'celex:32024R1689/oj#art_50').
declared(authorised_by_law_for_law_enforcement/1, 'use authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(available_for_public_to_report_crime/1, 'AI system available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
declared(exposed_to_system/2, 'natural person exposed to an AI system', 'celex:32024R1689/oj#art_50').
declared(processes_personal_data_in_accordance_with_gdpr/1, 'personal data processed in accordance with GDPR, Regulation 2018/1725 and Directive 2016/680', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_deep_fake/1, 'AI system generates or manipulates image, audio or video content constituting a deep fake', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_text_public_interest/1, 'AI system generates or manipulates text published to inform public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(content_artistic_creative_satirical_fictional/1, 'content forms part of evidently artistic, creative, satirical, fictional or analogous work or programme', 'celex:32024R1689/oj#art_50').
declared(human_review_or_editorial_control/1, 'AI-generated content has undergone human review or editorial control with editorial responsibility', 'celex:32024R1689/oj#art_50').
declared(information_provided_clear_distinguishable/1, 'information provided in clear and distinguishable manner', 'celex:32024R1689/oj#art_50').
declared(information_provided_at_first_interaction/1, 'information provided at latest at time of first interaction or exposure', 'celex:32024R1689/oj#art_50').
declared(information_conforms_accessibility_requirements/1, 'information conforms to applicable accessibility requirements', 'celex:32024R1689/oj#art_50').
declared(limited_disclosure_artistic_work/1, 'disclosure limited to existence of generated content without hampering display or enjoyment', 'celex:32024R1689/oj#art_50').
must_inform(Provider, interacting_with_ai_system(S)) :-
    provider(Provider),
    interacts_directly_with_natural_persons(S),
    \+ obvious_interaction(S),
    \+ exempt_from_informing(Provider, interacting_with_ai_system(S)).
exempt_from_informing(_Provider, interacting_with_ai_system(S)) :-
    obvious_interaction(S).
exempt_from_informing(_Provider, interacting_with_ai_system(S)) :-
    authorised_by_law_for_law_enforcement(S),
    \+ available_for_public_to_report_crime(S).
must_mark_output(Provider, synthetic_content_output(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    \+ exempt_from_marking(Provider, synthetic_content_output(S)).
must_mark_output(Provider, synthetic_content_output(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    output_marked_machine_readable(S),
    technical_solution_effective(S).
exempt_from_marking(_Provider, synthetic_content_output(S)) :-
    assistive_function_standard_editing(S).
exempt_from_marking(_Provider, synthetic_content_output(S)) :-
    \+ substantially_alters_input(S).
exempt_from_marking(_Provider, synthetic_content_output(S)) :-
    authorised_by_law_for_law_enforcement(S).
must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    exposed_to_system(_, S),
    \+ exempt_from_informing(Deployer, operation_of_system(S)).
must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    exposed_to_system(_, S),
    \+ exempt_from_informing(Deployer, operation_of_system(S)).
must_inform(Deployer, personal_data_processing(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    processes_personal_data_in_accordance_with_gdpr(S).
must_inform(Deployer, personal_data_processing(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    processes_personal_data_in_accordance_with_gdpr(S).
exempt_from_informing(_Deployer, operation_of_system(S)) :-
    biometric_categorisation_system(S),
    authorised_by_law_for_law_enforcement(S).
exempt_from_informing(_Deployer, operation_of_system(S)) :-
    emotion_recognition_system(S),
    authorised_by_law_for_law_enforcement(S).
must_disclose(Deployer, deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    \+ exempt_from_disclosure(Deployer, deep_fake_content(S)).
exempt_from_disclosure(_Deployer, deep_fake_content(S)) :-
    authorised_by_law_for_law_enforcement(S).
must_disclose(Deployer, deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    content_artistic_creative_satirical_fictional(S),
    limited_disclosure_artistic_work(S).
must_disclose(Deployer, public_interest_text(S)) :-
    deployer(Deployer),
    generates_or_manipulates_text_public_interest(S),
    \+ exempt_from_disclosure(Deployer, public_interest_text(S)).
exempt_from_disclosure(_Deployer, public_interest_text(S)) :-
    authorised_by_law_for_law_enforcement(S).
exempt_from_disclosure(_Deployer, public_interest_text(S)) :-
    human_review_or_editorial_control(S).
must_inform(Provider, information_timing(S)) :-
    provider(Provider),
    interacts_directly_with_natural_persons(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).
must_mark_output(Provider, information_timing(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).
must_inform(Deployer, information_timing(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).
must_inform(Deployer, information_timing(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).
must_disclose(Deployer, information_timing(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).
must_disclose(Deployer, information_timing(S)) :-
    deployer(Deployer),
    generates_or_manipulates_text_public_interest(S),
    information_provided_clear_distinguishable(S),
    information_provided_at_first_interaction(S),
    information_conforms_accessibility_requirements(S).
must_inform(ai_office, codes_of_practice_union_level).
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_output/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_from_informing/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_from_marking/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_from_disclosure/2, 'celex:32024R1689/oj#art_50').
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(obvious_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(output_marked_machine_readable/1, 'celex:32024R1689/oj#art_50').
provenance(technical_solution_effective/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function_standard_editing/1, 'celex:32024R1689/oj#art_50').
provenance(substantially_alters_input/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_by_law_for_law_enforcement/1, 'celex:32024R1689/oj#art_50').
provenance(available_for_public_to_report_crime/1, 'celex:32024R1689/oj#art_50').
provenance(exposed_to_system/2, 'celex:32024R1689/oj#art_50').
provenance(processes_personal_data_in_accordance_with_gdpr/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_text_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(content_artistic_creative_satirical_fictional/1, 'celex:32024R1689/oj#art_50').
provenance(human_review_or_editorial_control/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_clear_distinguishable/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_at_first_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(information_conforms_accessibility_requirements/1, 'celex:32024R1689/oj#art_50').
provenance(limited_disclosure_artistic_work/1, 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_51 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_51').
declared(high_impact_capabilities_evaluated/1, 'high impact capabilities evaluated on the basis of appropriate technical tools and methodologies', 'celex:32024R1689/oj#art_51').
declared(commission_decision_systemic_risk/1, 'Commission decision that model has capabilities or impact equivalent to high impact capabilities', 'celex:32024R1689/oj#art_51').
declared(qualified_alert_scientific_panel/1, 'qualified alert from the scientific panel', 'celex:32024R1689/oj#art_51').
declared(presumed_high_impact_capabilities/1, 'presumed to have high impact capabilities based on training computation threshold', 'celex:32024R1689/oj#art_51').
declared(training_computation_exceeds_threshold/1, 'cumulative amount of computation used for training exceeds 10^25 floating point operations', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_systemic_risk(M).
commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    decision_by_commission(M, ex_officio).
commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    qualified_alert_scientific_panel(M),
    decision_by_commission(M, following_alert).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_exceeds_threshold(M).
high_impact_capabilities_evaluated(M) :-
    presumed_high_impact_capabilities(M).
high_impact_capabilities_evaluated(M) :-
    general_purpose_ai_model(M),
    evaluated_by_appropriate_tools(M).
training_computation_exceeds_threshold(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation(M, C),
    C > 1e25.
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(qualified_alert_scientific_panel/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(training_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(must_notify/2, 'who is obliged to notify, what about', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments/2, 'who may present arguments, what about', 'celex:32024R1689/oj#art_52').
declared(may_designate_systemic_risk/2, 'who may designate, what model', 'celex:32024R1689/oj#art_52').
declared(considered_systemic_risk/1, 'model considered to present systemic risk', 'celex:32024R1689/oj#art_52').
declared(may_request_reassessment/2, 'who may request reassessment, of what model', 'celex:32024R1689/oj#art_52').
declared(must_publish_list/1, 'who must publish and maintain list', 'celex:32024R1689/oj#art_52').
declared(meets_condition_art_51_1_a/1, 'model meets the condition in Article 51(1)(a)', 'celex:32024R1689/oj#art_52').
declared(notification_includes_demonstration/1, 'notification includes information to demonstrate requirement met', 'celex:32024R1689/oj#art_52').
declared(arguments_substantiated/1, 'arguments sufficiently substantiated to demonstrate no systemic risk', 'celex:32024R1689/oj#art_52').
declared(arguments_rejected/1, 'Commission rejects arguments as not sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(designated_systemic_risk/1, 'model designated as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(qualified_alert_from_scientific_panel/1, 'qualified alert from scientific panel received', 'celex:32024R1689/oj#art_52').
declared(ex_officio/1, 'acting on Commission own initiative', 'celex:32024R1689/oj#art_52').
declared(reassessment_request_contains_new_reasons/1, 'reassessment request contains objective detailed new reasons', 'celex:32024R1689/oj#art_52').
declared(earliest_reassessment_request/2, 'earliest time for reassessment request after event', 'celex:32024R1689/oj#art_52').
declared(list_of_systemic_risk_models/1, 'published list of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_52').
must_notify(Provider, general_purpose_ai_model(M)) :-
    provider(Provider),
    general_purpose_ai_model(M),
    meets_condition_art_51_1_a(M),
    within(days(14), after(condition_met_or_known(M))).
notification_includes_demonstration(Notification) :-
    must_notify(_Provider, general_purpose_ai_model(M)),
    Notification = notification(M),
    demonstrates_requirement_met(M).
may_present_arguments(Provider, general_purpose_ai_model(M)) :-
    provider(Provider),
    general_purpose_ai_model(M),
    meets_condition_art_51_1_a(M).
arguments_substantiated(Arguments) :-
    may_present_arguments(_Provider, general_purpose_ai_model(M)),
    Arguments = arguments(M),
    demonstrates_no_systemic_risk_due_to_specific_characteristics(M).
arguments_rejected(Arguments) :-
    Arguments = arguments(M),
    \+ arguments_substantiated(Arguments).
considered_systemic_risk(M) :-
    general_purpose_ai_model(M),
    arguments_rejected(arguments(M)).
may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    presents_systemic_risk(M),
    \+ notified_commission(M).
may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    ex_officio.
may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    qualified_alert_from_scientific_panel.
may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    designated_systemic_risk(M).
designated_systemic_risk(M) :-
    general_purpose_ai_model(M),
    may_designate_systemic_risk(commission, M).
may_request_reassessment(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    designated_systemic_risk(M),
    reassessment_request_contains_new_reasons(request(M)),
    earliest_reassessment_request(months(6), after(designation_decision(M))).
may_request_reassessment(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    designated_systemic_risk(M),
    reassessment_request_contains_new_reasons(request(M)),
    earliest_reassessment_request(months(6), after(reassessment_decision(M))),
    maintains_designated_systemic_risk(M).
must_publish_list(commission) :-
    list_of_systemic_risk_models(List),
    published(List),
    up_to_date(List).
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(considered_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/1, 'celex:32024R1689/oj#art_52').
provenance(meets_condition_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(notification_includes_demonstration/1, 'celex:32024R1689/oj#art_52').
provenance(arguments_substantiated/1, 'celex:32024R1689/oj#art_52').
provenance(arguments_rejected/1, 'celex:32024R1689/oj#art_52').
provenance(designated_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_52').
provenance(ex_officio/1, 'celex:32024R1689/oj#art_52').
provenance(reassessment_request_contains_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(earliest_reassessment_request/2, 'celex:32024R1689/oj#art_52').
provenance(list_of_systemic_risk_models/1, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(gpaim_provider/1, 'provider of a general-purpose AI model', 'celex:32024R1689/oj#art_53').
declared(free_open_source_licence/1, 'licence allowing access, usage, modification and distribution with publicly available parameters', 'celex:32024R1689/oj#art_53').
declared(systemic_risk_gpaim/1, 'general-purpose AI model with systemic risks', 'celex:32024R1689/oj#art_53').
declared(technical_documentation/1, 'technical documentation of a general-purpose AI model', 'celex:32024R1689/oj#art_53').
declared(training_process_documented/1, 'training process documented in technical documentation', 'celex:32024R1689/oj#art_53').
declared(testing_process_documented/1, 'testing process documented in technical documentation', 'celex:32024R1689/oj#art_53').
declared(evaluation_results_documented/1, 'evaluation results documented in technical documentation', 'celex:32024R1689/oj#art_53').
declared(annex_11_information/1, 'information set out in Annex XI', 'celex:32024R1689/oj#art_53').
declared(annex_12_elements/1, 'elements set out in Annex XII', 'celex:32024R1689/oj#art_53').
declared(integration_information/1, 'information and documentation for AI system providers integrating the model', 'celex:32024R1689/oj#art_53').
declared(capabilities_limitations_understanding/1, 'good understanding of capabilities and limitations', 'celex:32024R1689/oj#art_53').
declared(copyright_policy/1, 'policy to comply with Union law on copyright and related rights', 'celex:32024R1689/oj#art_53').
declared(rights_reservation_identified/1, 'reservation of rights identified and complied with', 'celex:32024R1689/oj#art_53').
declared(training_content_summary/1, 'sufficiently detailed summary about training content', 'celex:32024R1689/oj#art_53').
declared(ai_office_template/1, 'template provided by the AI Office', 'celex:32024R1689/oj#art_53').
declared(code_of_practice/1, 'code of practice within the meaning of Article 56', 'celex:32024R1689/oj#art_53').
declared(harmonised_standard_published/1, 'harmonised standard published covering the obligations', 'celex:32024R1689/oj#art_53').
declared(presumption_of_conformity/1, 'presumption of conformity granted by compliance with harmonised standards', 'celex:32024R1689/oj#art_53').
declared(alternative_compliance_means/1, 'alternative adequate means of compliance demonstrated', 'celex:32024R1689/oj#art_53').
gpaim_provider(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
provides_gpaim(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
must_draw_up_technical_documentation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_keep_up_to_date_technical_documentation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
technical_documentation(M, D) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_draw_up_technical_documentation(P, M),
    D = technical_documentation(M).
training_process_documented(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).
testing_process_documented(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).
evaluation_results_documented(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).
annex_11_information(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).
must_provide_documentation_upon_request(P, M, R) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    (R = ai_office ; national_competent_authority(R)).
must_draw_up_integration_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_keep_up_to_date_integration_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_make_available_integration_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
integration_information(M, I) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_make_available_integration_information(P, M),
    I = integration_information(M).
capabilities_limitations_understanding(I) :-
    integration_information(M, I).
annex_12_elements(I) :-
    integration_information(M, I).
must_observe_ip_rights(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_observe_confidential_business_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_observe_trade_secrets(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_put_in_place_copyright_policy(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
copyright_policy(M, Pol) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_put_in_place_copyright_policy(P, M),
    Pol = copyright_policy(M).
must_identify_rights_reservation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_put_in_place_copyright_policy(P, M).
must_comply_with_rights_reservation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_put_in_place_copyright_policy(P, M).
rights_reservation_identified(M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_identify_rights_reservation(P, M).
must_use_state_of_the_art_technologies(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_identify_rights_reservation(P, M).
must_draw_up_training_content_summary(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_make_publicly_available_training_content_summary(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_draw_up_training_content_summary(P, M).
training_content_summary(M, S) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_make_publicly_available_training_content_summary(P, M),
    S = training_content_summary(M).
must_use_ai_office_template(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_draw_up_training_content_summary(P, M).
ai_office_template(S) :-
    training_content_summary(M, S),
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_use_ai_office_template(P, M).
exempt_technical_documentation_obligation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    free_open_source_licence(M),
    \+ systemic_risk_gpaim(M).
exempt_integration_information_obligation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    free_open_source_licence(M),
    \+ systemic_risk_gpaim(M).
free_open_source_licence(M) :-
    general_purpose_ai_model(M),
    licence_allows_access_usage_modification_distribution(M),
    parameters_publicly_available(M).
licence_allows_access_usage_modification_distribution(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).
parameters_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M),
    weights_publicly_available(M),
    model_architecture_information_publicly_available(M),
    model_usage_information_publicly_available(M).
weights_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).
model_architecture_information_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).
model_usage_information_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).
must_cooperate_with_commission(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
must_cooperate_with_national_competent_authorities(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).
may_rely_on_code_of_practice(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    code_of_practice(C),
    demonstrates_compliance(C, M).
demonstrates_compliance(C, M) :-
    code_of_practice(C),
    general_purpose_ai_model(M).
presumption_of_conformity(M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    harmonised_standard_published(H),
    covers_obligations(H, M).
harmonised_standard_published(H) :-
    harmonised_standard(H).
covers_obligations(H, M) :-
    harmonised_standard(H),
    general_purpose_ai_model(M).
must_demonstrate_alternative_compliance_means(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_european_harmonised_standard(P, M).
adheres_to_approved_code_of_practice(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    code_of_practice(C),
    approved_code_of_practice(C),
    adheres_to(P, C).
approved_code_of_practice(C) :-
    code_of_practice(C).
adheres_to(P, C) :-
    gpaim_provider(P),
    code_of_practice(C).
complies_with_european_harmonised_standard(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    harmonised_standard(H),
    complies_with(P, H).
complies_with(P, H) :-
    gpaim_provider(P),
    harmonised_standard(H).
alternative_compliance_means(M, A) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_demonstrate_alternative_compliance_means(P, M),
    A = alternative_compliance_means(M).
must_treat_information_confidentially(P, M, I) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    information_or_documentation_obtained(I, M).
information_or_documentation_obtained(I, M) :-
    general_purpose_ai_model(M),
    (technical_documentation(M, I) ; integration_information(M, I)).
must_treat_trade_secrets_confidentially(P, M, T) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    trade_secret(T),
    information_or_documentation_obtained(T, M).
trade_secret(T) :-
    information_or_documentation_obtained(T, _M),
    confidential_business_information(T).
confidential_business_information(T) :-
    trade_secret(T).
provenance(gpaim_provider/1, 'celex:32024R1689/oj#art_53').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_gpaim/1, 'celex:32024R1689/oj#art_53').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(training_process_documented/1, 'celex:32024R1689/oj#art_53').
provenance(testing_process_documented/1, 'celex:32024R1689/oj#art_53').
provenance(evaluation_results_documented/1, 'celex:32024R1689/oj#art_53').
provenance(annex_11_information/1, 'celex:32024R1689/oj#art_53').
provenance(annex_12_elements/1, 'celex:32024R1689/oj#art_53').
provenance(integration_information/1, 'celex:32024R1689/oj#art_53').
provenance(capabilities_limitations_understanding/1, 'celex:32024R1689/oj#art_53').
provenance(copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(rights_reservation_identified/1, 'celex:32024R1689/oj#art_53').
provenance(training_content_summary/1, 'celex:32024R1689/oj#art_53').
provenance(ai_office_template/1, 'celex:32024R1689/oj#art_53').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published/1, 'celex:32024R1689/oj#art_53').
provenance(presumption_of_conformity/1, 'celex:32024R1689/oj#art_53').
provenance(alternative_compliance_means/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_documentation_upon_request/3, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_ip_rights/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_confidential_business_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_trade_secrets/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_identify_rights_reservation/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply_with_rights_reservation/2, 'celex:32024R1689/oj#art_53').
provenance(must_use_state_of_the_art_technologies/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_use_ai_office_template/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_technical_documentation_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_integration_information_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_commission/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_national_competent_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance_means/2, 'celex:32024R1689/oj#art_53').
provenance(must_treat_information_confidentially/3, 'celex:32024R1689/oj#art_53').
provenance(must_treat_trade_secrets_confidentially/3, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
declared(third_country_provider/1, 'provider established in a third country', 'celex:32024R1689/oj#art_54').
declared(written_mandate/1, 'written mandate appointing an authorised representative', 'celex:32024R1689/oj#art_54').
declared(appointed_authorised_representative/2, 'provider appointed authorised representative by written mandate', 'celex:32024R1689/oj#art_54').
declared(mandate_task/1, 'task specified in the mandate received from the provider', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers/2, 'mandate empowers authorised representative to perform task', 'celex:32024R1689/oj#art_54').
declared(verify_technical_documentation/1, 'verify technical documentation drawn up and obligations fulfilled', 'celex:32024R1689/oj#art_54').
declared(keep_documentation_available/2, 'keep documentation and contact details available for period', 'celex:32024R1689/oj#art_54').
declared(provide_information_on_request/2, 'provide information and documentation upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(cooperate_with_authorities/2, 'cooperate with AI Office and competent authorities upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(addressable_by_authorities/1, 'authorised representative addressable by AI Office or competent authorities', 'celex:32024R1689/oj#art_54').
declared(terminate_mandate/1, 'authorised representative terminates the mandate', 'celex:32024R1689/oj#art_54').
declared(free_open_source_licence/1, 'licence allowing access, usage, modification and distribution', 'celex:32024R1689/oj#art_54').
declared(parameters_publicly_available/1, 'parameters, weights, architecture and usage information made publicly available', 'celex:32024R1689/oj#art_54').
must_appoint_authorised_representative(Provider, Representative) :-
    third_country_provider(Provider),
    general_purpose_ai_model(Model),
    placing_on_market(Model),
    authorised_representative(Representative),
    written_mandate(Mandate),
    appointed_authorised_representative(Provider, Representative).
must_enable_performance_of_tasks(Provider, Representative) :-
    third_country_provider(Provider),
    appointed_authorised_representative(Provider, Representative),
    mandate_task(Task),
    mandate_empowers(Mandate, Task).
must_perform_mandate_tasks(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative),
    mandate_task(Task),
    mandate_empowers(_Mandate, Task).
must_provide_mandate_copy_on_request(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative).
mandate_empowers(Mandate, verify_technical_documentation) :-
    written_mandate(Mandate).
mandate_empowers(Mandate, keep_documentation_available(years(10), after(placing_on_market))) :-
    written_mandate(Mandate).
mandate_empowers(Mandate, provide_information_on_request) :-
    written_mandate(Mandate).
mandate_empowers(Mandate, cooperate_with_authorities) :-
    written_mandate(Mandate).
must_keep_documentation_available(Representative, years(10)) :-
    authorised_representative(Representative),
    appointed_authorised_representative(Provider, Representative),
    general_purpose_ai_model(Model),
    placing_on_market(Model).
must_provide_information_on_reasoned_request(Representative, ai_office) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative).
must_cooperate_with_authorities_on_reasoned_request(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative),
    ai_office(Authority).
addressable_by_authorities(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(_Provider, Representative).
must_terminate_mandate(Representative) :-
    authorised_representative(Representative),
    appointed_authorised_representative(Provider, Representative),
    acting_contrary_to_obligations(Provider).
must_inform_ai_office_of_termination(Representative) :-
    authorised_representative(Representative),
    terminate_mandate(Representative).
exempt_appointment_of_authorised_representative(Provider) :-
    third_country_provider(Provider),
    general_purpose_ai_model(Model),
    free_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ systemic_risk(Model).
acting_contrary_to_obligations(Provider) :-
    third_country_provider(Provider),
    general_purpose_ai_model(Model),
    provider(Provider),
    placing_on_market(Model).
provenance(third_country_provider/1, 'celex:32024R1689/oj#art_54').
provenance(written_mandate/1, 'celex:32024R1689/oj#art_54').
provenance(appointed_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_task/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers/2, 'celex:32024R1689/oj#art_54').
provenance(verify_technical_documentation/1, 'celex:32024R1689/oj#art_54').
provenance(keep_documentation_available/2, 'celex:32024R1689/oj#art_54').
provenance(provide_information_on_request/2, 'celex:32024R1689/oj#art_54').
provenance(cooperate_with_authorities/2, 'celex:32024R1689/oj#art_54').
provenance(addressable_by_authorities/1, 'celex:32024R1689/oj#art_54').
provenance(terminate_mandate/1, 'celex:32024R1689/oj#art_54').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_54').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_performance_of_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandate_tasks/1, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy_on_request/1, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation_available/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information_on_reasoned_request/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_with_authorities_on_reasoned_request/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/1, 'celex:32024R1689/oj#art_54').
provenance(must_inform_ai_office_of_termination/1, 'celex:32024R1689/oj#art_54').
provenance(exempt_appointment_of_authorised_representative/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_perform_model_evaluation/1, 'provider of GPAI model with systemic risk must perform model evaluation with adversarial testing', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risks/1, 'provider of GPAI model with systemic risk must assess and mitigate possible systemic risks at Union level', 'celex:32024R1689/oj#art_55').
declared(must_keep_track_and_report_serious_incidents/1, 'provider of GPAI model with systemic risk must keep track, document and report serious incidents and corrective measures', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_protection/1, 'provider of GPAI model with systemic risk must ensure adequate cybersecurity protection for model and physical infrastructure', 'celex:32024R1689/oj#art_55').
declared(may_rely_on_code_of_practice/1, 'provider of GPAI model with systemic risk may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(presumption_of_conformity_via_harmonised_standard/1, 'compliance with European harmonised standard grants presumption of conformity', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/1, 'provider not adhering to code of practice or harmonised standard must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
declared(confidential_treatment_of_information/1, 'information and documentation obtained pursuant to Article 55 including trade secrets must be treated confidentially', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).
must_assess_and_mitigate_systemic_risks(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).
must_keep_track_and_report_serious_incidents(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).
must_ensure_cybersecurity_protection(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).
may_rely_on_code_of_practice(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).
presumption_of_conformity_via_harmonised_standard(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M),
    harmonised_standard(S),
    covers(S, obligations(art_55_par_1)).
must_demonstrate_alternative_compliance(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M),
    \+ adheres_to_approved_code_of_practice(P),
    \+ complies_with_european_harmonised_standard(P).
confidential_treatment_of_information(Info) :-
    obtained_pursuant_to(Info, art_55).
provenance(must_perform_model_evaluation/1, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/1, 'celex:32024R1689/oj#art_55').
provenance(must_keep_track_and_report_serious_incidents/1, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/1, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity_via_harmonised_standard/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(confidential_treatment_of_information/1, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(code_of_practice/1, 'code of practice at Union level for general-purpose AI models', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_covers_obligation/2, 'code of practice covers a specific obligation', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_objective/2, 'code of practice sets out a specific objective', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_commitment/2, 'code of practice contains a commitment or measure', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_kpi/2, 'code of practice contains a key performance indicator', 'celex:32024R1689/oj#art_56').
declared(participant_in_code_of_practice/2, 'entity participating in drawing up or adhering to a code of practice', 'celex:32024R1689/oj#art_56').
declared(supports_code_of_practice/2, 'entity supporting the drawing-up process of a code of practice', 'celex:32024R1689/oj#art_56').
declared(reports_on_implementation/3, 'participant reports to AI Office on implementation of commitments', 'celex:32024R1689/oj#art_56').
declared(monitors_code_of_practice/2, 'entity regularly monitors and evaluates a code of practice', 'celex:32024R1689/oj#art_56').
declared(assesses_code_of_practice_adequacy/2, 'entity assesses adequacy of a code of practice', 'celex:32024R1689/oj#art_56').
declared(publishes_assessment/2, 'entity publishes assessment of code of practice adequacy', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_ready_by/2, 'code of practice is ready by a specific date', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_approved_by_commission/1, 'code of practice approved by Commission implementing act with general validity', 'celex:32024R1689/oj#art_56').
declared(invites_participants/2, 'AI Office invites entities to participate in code of practice', 'celex:32024R1689/oj#art_56').
declared(encourages_review_and_adaptation/2, 'AI Office encourages review and adaptation of code of practice', 'celex:32024R1689/oj#art_56').
declared(assists_standard_assessment/2, 'AI Office assists in assessment of available standards', 'celex:32024R1689/oj#art_56').
declared(commission_provides_common_rules/0, 'Commission provides common rules by implementing acts when code cannot be finalised or is inadequate', 'celex:32024R1689/oj#art_56').
declared(adherence_limited_to_obligations/2, 'adherence of non-systemic-risk provider limited to specific obligations', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate(ai_office, drawing_up(code_of_practice(C))) :-
    code_of_practice(C),
    at_union_level(C).
must_facilitate(ai_office, drawing_up(code_of_practice(C))) :-
    code_of_practice(C),
    at_union_level(C).
at_union_level(C) :-
    code_of_practice(C).
code_of_practice_covers_obligation(C, art_53) :-
    code_of_practice(C).
code_of_practice_covers_obligation(C, art_55) :-
    code_of_practice(C).
code_of_practice_commitment(C, keep_information_up_to_date) :-
    code_of_practice(C),
    covers_issue(C, information_art_53_1_a_b_up_to_date).
covers_issue(C, information_art_53_1_a_b_up_to_date) :-
    code_of_practice(C).
code_of_practice_commitment(C, adequate_detail_training_summary) :-
    code_of_practice(C),
    covers_issue(C, training_content_summary_detail).
covers_issue(C, training_content_summary_detail) :-
    code_of_practice(C).
code_of_practice_commitment(C, identify_systemic_risks_union_level) :-
    code_of_practice(C),
    covers_issue(C, systemic_risks_identification).
covers_issue(C, systemic_risks_identification) :-
    code_of_practice(C).
code_of_practice_commitment(C, systemic_risk_assessment_management_measures) :-
    code_of_practice(C),
    covers_issue(C, systemic_risk_measures_proportionate).
covers_issue(C, systemic_risk_measures_proportionate) :-
    code_of_practice(C).
invites_participants(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M).
invites_participants(ai_office, A) :-
    national_competent_authority(A).
participant_in_code_of_practice(P, C) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M),
    code_of_practice(C).
participant_in_code_of_practice(A, C) :-
    national_competent_authority(A),
    code_of_practice(C).
supports_code_of_practice(S, C) :-
    civil_society_organisation(S),
    code_of_practice(C).
supports_code_of_practice(S, C) :-
    industry_entity(S),
    code_of_practice(C).
supports_code_of_practice(S, C) :-
    academic_entity(S),
    code_of_practice(C).
supports_code_of_practice(S, C) :-
    downstream_provider(S),
    code_of_practice(C).
supports_code_of_practice(S, C) :-
    independent_expert(S),
    code_of_practice(C).
code_of_practice_objective(C, O) :-
    code_of_practice(C),
    specific_objective(O).
code_of_practice_commitment(C, commitment_or_measure(M)) :-
    code_of_practice(C),
    commitment_or_measure(M).
code_of_practice_kpi(C, K) :-
    code_of_practice(C),
    key_performance_indicator(K).
takes_due_account_needs(C, affected_persons) :-
    code_of_practice(C),
    at_union_level(C).
must_report_regularly(P, ai_office) :-
    participant_in_code_of_practice(P, C),
    reports_on_implementation(P, ai_office, C).
reports_on_implementation(P, ai_office, C) :-
    participant_in_code_of_practice(P, C),
    reports_on_commitments(P, C),
    reports_on_outcomes(P, C),
    measured_against_kpi(P, C).
reports_on_commitments(P, C) :-
    participant_in_code_of_practice(P, C).
reports_on_outcomes(P, C) :-
    participant_in_code_of_practice(P, C).
measured_against_kpi(P, C) :-
    participant_in_code_of_practice(P, C),
    code_of_practice_kpi(C, _K).
kpi_reflects_differences(P, C) :-
    participant_in_code_of_practice(P, C),
    reflects_size_capacity_differences(P).
reflects_size_capacity_differences(P) :-
    participant_in_code_of_practice(P, _C).
monitors_code_of_practice(ai_office, C) :-
    code_of_practice(C).
monitors_code_of_practice(board, C) :-
    code_of_practice(C).
assesses_code_of_practice_adequacy(ai_office, C) :-
    code_of_practice(C),
    monitors_code_of_practice(ai_office, C).
assesses_code_of_practice_adequacy(board, C) :-
    code_of_practice(C),
    monitors_code_of_practice(board, C).
publishes_assessment(ai_office, C) :-
    assesses_code_of_practice_adequacy(ai_office, C).
publishes_assessment(board, C) :-
    assesses_code_of_practice_adequacy(board, C).
code_of_practice_approved_by_commission(C) :-
    code_of_practice(C),
    approved_by_implementing_act(C),
    general_validity_within_union(C).
invites_participants(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M),
    \+ presents_systemic_risk(M).
adherence_limited_to_obligations(P, art_53) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M),
    \+ presents_systemic_risk(M),
    participant_in_code_of_practice(P, C),
    code_of_practice(C).
encourages_review_and_adaptation(ai_office, C) :-
    code_of_practice(C).
must_facilitate(ai_office, review_and_adaptation(C)) :-
    code_of_practice(C).
assists_standard_assessment(ai_office, C) :-
    code_of_practice(C),
    emerging_standards_relevant(C).
emerging_standards_relevant(C) :-
    code_of_practice(C).
code_of_practice_ready_by(C, date(2025, may, 2)) :-
    code_of_practice(C).
must_take_necessary_steps(ai_office, invite_providers) :-
    code_of_practice(C),
    \+ code_of_practice_ready_by(C, date(2025, may, 2)).
commission_provides_common_rules :-
    \+ code_of_practice_finalised_by(date(2025, august, 2)).
commission_provides_common_rules :-
    code_of_practice(C),
    ai_office_deems_inadequate(C),
    date_passed(date(2025, august, 2)).
code_of_practice_finalised_by(D) :-
    code_of_practice(C),
    code_of_practice_ready_by(C, D).
ai_office_deems_inadequate(C) :-
    assesses_code_of_practice_adequacy(ai_office, C),
    \+ adequate(C).
adequate(C) :-
    code_of_practice(C),
    covers_obligations(C).
covers_obligations(C) :-
    code_of_practice_covers_obligation(C, art_53),
    code_of_practice_covers_obligation(C, art_55).
provider_places_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
presents_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
date_passed(D) :-
    date(_Y, _M, _Day),
    D = date(_Y2, _M2, _D2).
specific_objective(_O).
commitment_or_measure(_M).
key_performance_indicator(_K).
civil_society_organisation(_S).
industry_entity(_S).
academic_entity(_S).
independent_expert(_S).
approved_by_implementing_act(_C).
general_validity_within_union(_C).
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_covers_obligation/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_objective/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_commitment/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_kpi/2, 'celex:32024R1689/oj#art_56').
provenance(participant_in_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(supports_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(reports_on_implementation/3, 'celex:32024R1689/oj#art_56').
provenance(monitors_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(assesses_code_of_practice_adequacy/2, 'celex:32024R1689/oj#art_56').
provenance(publishes_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_approved_by_commission/1, 'celex:32024R1689/oj#art_56').
provenance(invites_participants/2, 'celex:32024R1689/oj#art_56').
provenance(encourages_review_and_adaptation/2, 'celex:32024R1689/oj#art_56').
provenance(assists_standard_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(commission_provides_common_rules/0, 'celex:32024R1689/oj#art_56').
provenance(adherence_limited_to_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

% ==== celex:32024R1689/oj#art_57 ====
declared(must_establish_ai_regulatory_sandbox/1, 'Member State must establish at least one AI regulatory sandbox at national level', 'celex:32024R1689/oj#art_57').
declared(ai_regulatory_sandbox_operational_by/2, 'sandbox operational by deadline', 'celex:32024R1689/oj#art_57').
declared(may_establish_joint_sandbox/2, 'Member States may establish sandbox jointly with other Member States', 'celex:32024R1689/oj#art_57').
declared(may_provide_technical_support/1, 'Commission may provide technical support, advice and tools for sandboxes', 'celex:32024R1689/oj#art_57').
declared(obligation_fulfilled_by_participation/2, 'obligation fulfilled by participating in existing sandbox with equivalent national coverage', 'celex:32024R1689/oj#art_57').
declared(may_establish_additional_sandbox/1, 'additional sandboxes at regional, local or joint level may be established', 'celex:32024R1689/oj#art_57').
declared(edps_may_establish_sandbox/1, 'European Data Protection Supervisor may establish sandbox for Union institutions', 'celex:32024R1689/oj#art_57').
declared(must_allocate_sufficient_resources/2, 'competent authorities must allocate sufficient resources to comply effectively and timely', 'celex:32024R1689/oj#art_57').
declared(sandbox_provides_controlled_environment/1, 'sandbox provides controlled environment fostering innovation for limited time before market placement', 'celex:32024R1689/oj#art_57').
declared(sandbox_plan_agreed/2, 'specific sandbox plan agreed between provider and competent authority', 'celex:32024R1689/oj#art_57').
declared(sandbox_may_include_real_world_testing/1, 'sandbox may include testing in real world conditions supervised therein', 'celex:32024R1689/oj#art_57').
declared(must_provide_guidance_supervision_support/2, 'competent authorities must provide guidance, supervision and support in sandbox', 'celex:32024R1689/oj#art_57').
declared(must_provide_guidance_on_regulatory_expectations/2, 'competent authorities must provide guidance on regulatory expectations and requirements', 'celex:32024R1689/oj#art_57').
declared(must_provide_written_proof/2, 'competent authority must provide written proof of successful activities upon request', 'celex:32024R1689/oj#art_57').
declared(must_provide_exit_report/2, 'competent authority must provide exit report detailing activities and results', 'celex:32024R1689/oj#art_57').
declared(may_use_documentation_for_compliance/2, 'providers may use documentation to demonstrate compliance', 'celex:32024R1689/oj#art_57').
declared(exit_reports_taken_positively_into_account/2, 'exit reports and written proof taken positively into account by market surveillance authorities and notified bodies', 'celex:32024R1689/oj#art_57').
declared(commission_and_board_authorised_to_access_exit_reports/2, 'Commission and Board authorised to access exit reports subject to confidentiality and agreement', 'celex:32024R1689/oj#art_57').
declared(exit_report_may_be_made_publicly_available/1, 'exit report may be made publicly available with explicit agreement', 'celex:32024R1689/oj#art_57').
declared(objective_improving_legal_certainty/1, 'sandbox aims to improve legal certainty for regulatory compliance', 'celex:32024R1689/oj#art_57').
declared(objective_supporting_best_practices/1, 'sandbox aims to support sharing of best practices through cooperation', 'celex:32024R1689/oj#art_57').
declared(objective_fostering_innovation/1, 'sandbox aims to foster innovation and competitiveness and facilitate AI ecosystem development', 'celex:32024R1689/oj#art_57').
declared(objective_contributing_to_evidence_based_learning/1, 'sandbox aims to contribute to evidence-based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_facilitating_market_access/1, 'sandbox aims to facilitate and accelerate access to Union market, in particular for SMEs and start-ups', 'celex:32024R1689/oj#art_57').
declared(must_associate_data_protection_authorities/2, 'national competent authorities must associate data protection authorities and other relevant authorities with sandbox operation', 'celex:32024R1689/oj#art_57').
declared(sandbox_does_not_affect_supervisory_powers/1, 'sandbox does not affect supervisory or corrective powers of competent authorities', 'celex:32024R1689/oj#art_57').
declared(significant_risks_require_mitigation/1, 'significant risks to health, safety and fundamental rights must result in adequate mitigation', 'celex:32024R1689/oj#art_57').
declared(may_suspend_testing/2, 'national competent authorities have power to temporarily or permanently suspend testing or participation', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_of_suspension/2, 'national competent authorities must inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57').
declared(providers_remain_liable/1, 'providers and prospective providers remain liable for damage to third parties', 'celex:32024R1689/oj#art_57').
declared(no_administrative_fines_if_conditions_met/1, 'no administrative fines imposed if prospective providers observe plan, terms and follow guidance in good faith', 'celex:32024R1689/oj#art_57').
declared(sandbox_facilitates_cross_border_cooperation/1, 'sandbox designed to facilitate cross-border cooperation between national competent authorities', 'celex:32024R1689/oj#art_57').
declared(must_coordinate_within_board/1, 'national competent authorities must coordinate activities and cooperate within the Board framework', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_and_board_of_establishment/1, 'national competent authorities must inform AI Office and Board of sandbox establishment', 'celex:32024R1689/oj#art_57').
declared(ai_office_must_make_list_publicly_available/1, 'AI Office must make publicly available list of planned and existing sandboxes and keep it up to date', 'celex:32024R1689/oj#art_57').
declared(must_submit_annual_reports/1, 'national competent authorities must submit annual reports to AI Office and Board from one year after establishment', 'celex:32024R1689/oj#art_57').
declared(must_submit_final_report/1, 'national competent authorities must submit final report upon termination', 'celex:32024R1689/oj#art_57').
declared(annual_reports_made_available_to_public/1, 'national competent authorities must make annual reports or abstracts available to public online', 'celex:32024R1689/oj#art_57').
declared(commission_may_take_reports_into_account/1, 'Commission may take annual reports into account when exercising tasks', 'celex:32024R1689/oj#art_57').
declared(must_develop_single_interface/1, 'Commission must develop single dedicated interface for AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(must_coordinate_with_national_authorities/1, 'Commission must proactively coordinate with national competent authorities where relevant', 'celex:32024R1689/oj#art_57').
must_establish_ai_regulatory_sandbox(MemberState) :-
    member_state(MemberState).
ai_regulatory_sandbox_operational_by(Sandbox, date(2026, august, 2)) :-
    ai_regulatory_sandbox(Sandbox),
    national_level(Sandbox).
may_establish_joint_sandbox(MemberState, OtherMemberState) :-
    member_state(MemberState),
    member_state(OtherMemberState).
may_provide_technical_support(commission).
obligation_fulfilled_by_participation(MemberState, ExistingSandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(ExistingSandbox),
    equivalent_national_coverage(MemberState, ExistingSandbox).
may_establish_additional_sandbox(Authority) :-
    national_competent_authority(Authority).
may_establish_additional_sandbox(Authority) :-
    regional_authority(Authority).
may_establish_additional_sandbox(Authority) :-
    local_authority(Authority).
edps_may_establish_sandbox(edps).
must_allocate_sufficient_resources(Authority, art_57) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, _Sandbox).
sandbox_provides_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, art_57_par_1).
sandbox_plan_agreed(Provider, Authority) :-
    provider(Provider),
    national_competent_authority(Authority),
    participates_in_sandbox(Provider, Sandbox),
    supervises_sandbox(Authority, Sandbox),
    sandbox_plan(Sandbox, Plan),
    agreed(Plan, Provider, Authority).
sandbox_may_include_real_world_testing(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_provide_guidance_supervision_support(Authority, Sandbox) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_provide_guidance_on_regulatory_expectations(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    participates_in_sandbox(Provider, Sandbox),
    supervises_sandbox(Authority, Sandbox).
must_provide_written_proof(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    participates_in_sandbox(Provider, Sandbox),
    supervises_sandbox(Authority, Sandbox),
    requests_written_proof(Provider).
must_provide_exit_report(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    participates_in_sandbox(Provider, Sandbox),
    supervises_sandbox(Authority, Sandbox).
may_use_documentation_for_compliance(Provider, conformity_assessment) :-
    provider(Provider),
    participates_in_sandbox(Provider, _Sandbox).
may_use_documentation_for_compliance(Provider, market_surveillance) :-
    provider(Provider),
    participates_in_sandbox(Provider, _Sandbox).
exit_reports_taken_positively_into_account(market_surveillance_authority, exit_report).
exit_reports_taken_positively_into_account(notified_body, exit_report).
exit_reports_taken_positively_into_account(market_surveillance_authority, written_proof).
exit_reports_taken_positively_into_account(notified_body, written_proof).
commission_and_board_authorised_to_access_exit_reports(commission, ExitReport) :-
    exit_report(ExitReport),
    confidentiality_provisions_respected(art_78, ExitReport),
    provider_agrees_to_access(ExitReport).
commission_and_board_authorised_to_access_exit_reports(board, ExitReport) :-
    exit_report(ExitReport),
    confidentiality_provisions_respected(art_78, ExitReport),
    provider_agrees_to_access(ExitReport).
exit_report_may_be_made_publicly_available(ExitReport) :-
    exit_report(ExitReport),
    provider_explicitly_agrees(ExitReport),
    national_competent_authority_explicitly_agrees(ExitReport).
objective_improving_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_supporting_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_fostering_innovation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_contributing_to_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_facilitating_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_associate_data_protection_authorities(Authority, Sandbox) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    involves_personal_data_processing(Sandbox).
must_associate_data_protection_authorities(Authority, Sandbox) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    falls_under_other_authority_remit(Sandbox).
sandbox_does_not_affect_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
significant_risks_require_mitigation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    significant_risk_identified(Sandbox, health_safety_or_fundamental_rights).
may_suspend_testing(Authority, testing_process) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    no_effective_mitigation_possible(Sandbox).
may_suspend_testing(Authority, participation) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    no_effective_mitigation_possible(Sandbox).
must_inform_ai_office_of_suspension(Authority, Decision) :-
    national_competent_authority(Authority),
    suspends_testing_or_participation(Authority, Decision).
providers_remain_liable(Provider) :-
    provider(Provider),
    participates_in_sandbox(Provider, _Sandbox).
providers_remain_liable(Provider) :-
    prospective_provider(Provider),
    participates_in_sandbox(Provider, _Sandbox).
no_administrative_fines_if_conditions_met(Provider) :-
    prospective_provider(Provider),
    participates_in_sandbox(Provider, Sandbox),
    observes_specific_plan(Provider, Sandbox),
    observes_terms_and_conditions(Provider, Sandbox),
    follows_guidance_in_good_faith(Provider, Sandbox).
sandbox_facilitates_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_coordinate_within_board(Authority) :-
    national_competent_authority(Authority).
must_inform_ai_office_and_board_of_establishment(Authority) :-
    national_competent_authority(Authority),
    establishes_sandbox(Authority, _Sandbox).
ai_office_must_make_list_publicly_available(ai_office).
must_submit_annual_reports(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    established(Sandbox),
    years_since_establishment(Sandbox, N),
    N >= 1.
must_submit_final_report(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    terminated(Sandbox).
annual_reports_made_available_to_public(Authority) :-
    national_competent_authority(Authority),
    submits_annual_reports(Authority, _Reports).
commission_may_take_reports_into_account(commission).
must_develop_single_interface(commission).
must_coordinate_with_national_authorities(commission).
provenance(must_establish_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(ai_regulatory_sandbox_operational_by/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_joint_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(may_provide_technical_support/1, 'celex:32024R1689/oj#art_57').
provenance(obligation_fulfilled_by_participation/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_additional_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(edps_may_establish_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_provides_controlled_environment/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_plan_agreed/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_may_include_real_world_testing/1, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_supervision_support/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_on_regulatory_expectations/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(may_use_documentation_for_compliance/2, 'celex:32024R1689/oj#art_57').
provenance(exit_reports_taken_positively_into_account/2, 'celex:32024R1689/oj#art_57').
provenance(commission_and_board_authorised_to_access_exit_reports/2, 'celex:32024R1689/oj#art_57').
provenance(exit_report_may_be_made_publicly_available/1, 'celex:32024R1689/oj#art_57').
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_supporting_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').
provenance(objective_contributing_to_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').
provenance(must_associate_data_protection_authorities/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_does_not_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
provenance(significant_risks_require_mitigation/1, 'celex:32024R1689/oj#art_57').
provenance(may_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57').
provenance(providers_remain_liable/1, 'celex:32024R1689/oj#art_57').
provenance(no_administrative_fines_if_conditions_met/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_facilitates_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
provenance(must_coordinate_within_board/1, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_and_board_of_establishment/1, 'celex:32024R1689/oj#art_57').
provenance(ai_office_must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_reports/1, 'celex:32024R1689/oj#art_57').
provenance(must_submit_final_report/1, 'celex:32024R1689/oj#art_57').
provenance(annual_reports_made_available_to_public/1, 'celex:32024R1689/oj#art_57').
provenance(commission_may_take_reports_into_account/1, 'celex:32024R1689/oj#art_57').
provenance(must_develop_single_interface/1, 'celex:32024R1689/oj#art_57').
provenance(must_coordinate_with_national_authorities/1, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/1, 'Commission must adopt implementing acts for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(implementing_acts_specify/1, 'implementing acts specify detailed arrangements for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(common_principle/2, 'common principle on a specified issue', 'celex:32024R1689/oj#art_58').
declared(eligibility_and_selection_criteria/1, 'eligibility and selection criteria for participation', 'celex:32024R1689/oj#art_58').
declared(sandbox_procedures/1, 'procedures for application, participation, monitoring, exiting and termination', 'celex:32024R1689/oj#art_58').
declared(sandbox_terms_and_conditions/1, 'terms and conditions applicable to participants', 'celex:32024R1689/oj#art_58').
declared(adopted_by_examination_procedure/1, 'act adopted in accordance with examination procedure', 'celex:32024R1689/oj#art_58').
declared(sandbox_open_to_applicant/1, 'sandbox open to applying provider or prospective provider fulfilling criteria', 'celex:32024R1689/oj#art_58').
declared(transparent_and_fair_criteria/1, 'eligibility and selection criteria are transparent and fair', 'celex:32024R1689/oj#art_58').
declared(decision_within_period/2, 'national competent authority informs applicant of decision within period', 'celex:32024R1689/oj#art_58').
declared(broad_and_equal_access/1, 'sandbox allows broad and equal access and keeps up with demand', 'celex:32024R1689/oj#art_58').
declared(partnership_application/1, 'application may be submitted in partnership with deployers and third parties', 'celex:32024R1689/oj#art_58').
declared(flexibility_for_national_authorities/1, 'arrangements support flexibility for national competent authorities', 'celex:32024R1689/oj#art_58').
declared(free_access_for_sme/1, 'access to sandbox is free of charge for SMEs including start-ups', 'celex:32024R1689/oj#art_58').
declared(exceptional_costs_recoverable/1, 'national competent authorities may recover exceptional costs in fair and proportionate manner', 'celex:32024R1689/oj#art_58').
declared(facilitate_conformity_assessment/1, 'sandbox facilitates compliance with conformity assessment obligations', 'celex:32024R1689/oj#art_58').
declared(facilitate_voluntary_codes_of_conduct/1, 'sandbox facilitates voluntary application of codes of conduct', 'celex:32024R1689/oj#art_58').
declared(facilitate_ecosystem_involvement/1, 'sandbox facilitates involvement of other relevant actors in AI ecosystem', 'celex:32024R1689/oj#art_58').
declared(simple_procedures_for_sme/1, 'procedures and requirements are simple, intelligible and clearly communicated for SMEs', 'celex:32024R1689/oj#art_58').
declared(streamlined_across_union/1, 'procedures streamlined across Union to avoid fragmentation', 'celex:32024R1689/oj#art_58').
declared(mutual_recognition_across_union/1, 'participation in sandbox is mutually and uniformly recognised across Union', 'celex:32024R1689/oj#art_58').
declared(participation_period_appropriate/1, 'participation limited to period appropriate to complexity and scale of project', 'celex:32024R1689/oj#art_58').
declared(participation_period_extendable/1, 'participation period may be extended by national competent authority', 'celex:32024R1689/oj#art_58').
declared(facilitate_development_of_tools/1, 'sandbox facilitates development of tools and infrastructure for testing, benchmarking, assessing and explaining', 'celex:32024R1689/oj#art_58').
declared(must_direct_prospective_providers/2, 'prospective providers directed to pre-deployment services', 'celex:32024R1689/oj#art_58').
declared(pre_deployment_service/1, 'pre-deployment service such as guidance, standardisation help, certification, testing facilities, EDIHs, centres of excellence', 'celex:32024R1689/oj#art_58').
declared(must_agree_real_world_testing_terms/2, 'national competent authority must agree terms and conditions of real-world testing with participants', 'celex:32024R1689/oj#art_58').
declared(appropriate_safeguards/1, 'appropriate safeguards to protect fundamental rights, health and safety', 'celex:32024R1689/oj#art_58').
declared(must_cooperate_for_consistent_practices/1, 'national competent authorities cooperate to ensure consistent practices across Union', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts(ai_office) :-
    ai_office(ai_office).
implementing_acts_specify(acts(ai_regulatory_sandbox)) :-
    must_adopt_implementing_acts(ai_office).
common_principle(acts(ai_regulatory_sandbox), eligibility_and_selection_criteria(participation)) :-
    implementing_acts_specify(acts(ai_regulatory_sandbox)).
common_principle(acts(ai_regulatory_sandbox), sandbox_procedures(application_participation_monitoring_exiting_termination)) :-
    implementing_acts_specify(acts(ai_regulatory_sandbox)).
common_principle(acts(ai_regulatory_sandbox), sandbox_terms_and_conditions(participants)) :-
    implementing_acts_specify(acts(ai_regulatory_sandbox)).
adopted_by_examination_procedure(acts(ai_regulatory_sandbox)).
sandbox_open_to_applicant(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    applies_for_participation(P, S).
sandbox_open_to_applicant(S) :-
    ai_regulatory_sandbox(S),
    prospective_provider(P),
    applies_for_participation(P, S).
transparent_and_fair_criteria(S) :-
    ai_regulatory_sandbox(S),
    eligibility_and_selection_criteria(C),
    transparent(C),
    fair(C).
decision_within_period(A, months(3)) :-
    national_competent_authority(A),
    informs_applicant_of_decision(A, _Applicant, _Decision).
broad_and_equal_access(S) :-
    ai_regulatory_sandbox(S).
partnership_application(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    deployer(D),
    applies_in_partnership(P, D, S).
flexibility_for_national_authorities(S) :-
    ai_regulatory_sandbox(S),
    national_competent_authority(A),
    operates_sandbox(A, S).
free_access_for_sme(S) :-
    ai_regulatory_sandbox(S),
    sme(P),
    participates(P, S).
exceptional_costs_recoverable(S) :-
    ai_regulatory_sandbox(S),
    national_competent_authority(A),
    recovers_exceptional_costs(A, S, fair_and_proportionate).
facilitate_conformity_assessment(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    participates(P, S),
    conformity_assessment(O),
    learns_from_sandbox(P, S, O).
facilitate_voluntary_codes_of_conduct(S) :-
    ai_regulatory_sandbox(S),
    provider(P),
    participates(P, S),
    learns_from_sandbox(P, S, voluntary_application(codes_of_conduct)).
facilitate_ecosystem_involvement(S) :-
    ai_regulatory_sandbox(S),
    actor(A),
    relevant_ai_ecosystem_actor(A),
    involves_in_sandbox(A, S).
simple_procedures_for_sme(S) :-
    ai_regulatory_sandbox(S),
    sme(P),
    participates(P, S),
    simple_procedure(P, S),
    easily_intelligible(P, S),
    clearly_communicated(P, S).
streamlined_across_union(S) :-
    ai_regulatory_sandbox(S),
    streamlined_procedure(S).
mutual_recognition_across_union(S) :-
    ai_regulatory_sandbox(S),
    member_state(M1),
    member_state(M2),
    participates_in_sandbox(P, S, M1),
    recognised_in(P, S, M2).
participation_period_appropriate(S) :-
    ai_regulatory_sandbox(S),
    participant(P),
    participates(P, S),
    period(P, S, appropriate_to(complexity_and_scale(project(P)))).
participation_period_extendable(S) :-
    ai_regulatory_sandbox(S),
    national_competent_authority(A),
    extends_period(A, S, _Participant).
facilitate_development_of_tools(S) :-
    ai_regulatory_sandbox(S),
    develops_tools(S, testing_benchmarking_assessing_explaining).
must_direct_prospective_providers(A, pre_deployment_service(S)) :-
    national_competent_authority(A),
    prospective_provider(P),
    in_sandbox(P, S),
    sme(P),
    directs_to(A, P, pre_deployment_service(S)).
must_direct_prospective_providers(A, pre_deployment_service(S)) :-
    national_competent_authority(A),
    prospective_provider(P),
    in_sandbox(P, S),
    start_up(P),
    directs_to(A, P, pre_deployment_service(S)).
must_agree_real_world_testing_terms(A, terms_and_conditions(testing_in_real_world_conditions, safeguards)) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S),
    authorises_testing_in_real_world_conditions(A, S),
    participant(P),
    participates(P, S),
    agrees_terms(A, P, testing_in_real_world_conditions),
    agrees_safeguards(A, P, appropriate_safeguards).
appropriate_safeguards(protect(fundamental_rights, health, safety)).
must_cooperate_for_consistent_practices(A) :-
    national_competent_authority(A),
    authorises_testing_in_real_world_conditions(A, _S),
    cooperates_with_other_authorities(A).
prospective_provider(P) :-
    provider(P).
sme(P) :-
    provider(P).
start_up(P) :-
    provider(P).
applies_for_participation(P, S) :-
    provider(P),
    ai_regulatory_sandbox(S).
applies_in_partnership(P, D, S) :-
    provider(P),
    deployer(D),
    ai_regulatory_sandbox(S).
transparent(C) :-
    eligibility_and_selection_criteria(C).
fair(C) :-
    eligibility_and_selection_criteria(C).
informs_applicant_of_decision(A, Applicant, Decision) :-
    national_competent_authority(A),
    applicant(Applicant),
    decision(Decision).
operates_sandbox(A, S) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S).
recovers_exceptional_costs(A, S, fair_and_proportionate) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S).
learns_from_sandbox(P, S, O) :-
    provider(P),
    ai_regulatory_sandbox(S),
    learning_outcome(O).
actor(A) :-
    notified_body(A).
actor(A) :-
    standardisation_organisation(A).
actor(A) :-
    sme(A).
actor(A) :-
    start_up(A).
actor(A) :-
    enterprise(A).
actor(A) :-
    innovator(A).
actor(A) :-
    testing_and_experimentation_facility(A).
actor(A) :-
    research_and_experimentation_lab(A).
actor(A) :-
    european_digital_innovation_hub(A).
actor(A) :-
    centre_of_excellence(A).
actor(A) :-
    individual_researcher(A).
relevant_ai_ecosystem_actor(A) :-
    actor(A).
involves_in_sandbox(A, S) :-
    actor(A),
    ai_regulatory_sandbox(S).
simple_procedure(P, S) :-
    sme(P),
    ai_regulatory_sandbox(S).
easily_intelligible(P, S) :-
    sme(P),
    ai_regulatory_sandbox(S).
clearly_communicated(P, S) :-
    sme(P),
    ai_regulatory_sandbox(S).
streamlined_procedure(S) :-
    ai_regulatory_sandbox(S).
member_state(M) :-
    eu_member_state(M).
participates_in_sandbox(P, S, M) :-
    participant(P),
    ai_regulatory_sandbox(S),
    established_in(S, M).
recognised_in(P, S, M) :-
    participant(P),
    ai_regulatory_sandbox(S),
    member_state(M).
participant(P) :-
    provider(P).
participant(P) :-
    prospective_provider(P).
period(P, S, appropriate_to(complexity_and_scale(project(P)))) :-
    participant(P),
    ai_regulatory_sandbox(S).
extends_period(A, S, P) :-
    national_competent_authority(A),
    participant(P),
    ai_regulatory_sandbox(S).
develops_tools(S, testing_benchmarking_assessing_explaining) :-
    ai_regulatory_sandbox(S).
in_sandbox(P, S) :-
    prospective_provider(P),
    ai_regulatory_sandbox(S),
    participates(P, S).
directs_to(A, P, pre_deployment_service(S)) :-
    national_competent_authority(A),
    prospective_provider(P),
    ai_regulatory_sandbox(S).
authorises_testing_in_real_world_conditions(A, S) :-
    national_competent_authority(A),
    ai_regulatory_sandbox(S),
    testing_in_real_world_conditions(T),
    supervised_within_framework(T, S).
agrees_terms(A, P, testing_in_real_world_conditions) :-
    national_competent_authority(A),
    participant(P).
agrees_safeguards(A, P, appropriate_safeguards) :-
    national_competent_authority(A),
    participant(P).
cooperates_with_other_authorities(A) :-
    national_competent_authority(A).
applicant(P) :-
    provider(P).
applicant(P) :-
    prospective_provider(P).
decision(D) :-
    accepted(D).
decision(D) :-
    rejected(D).
accepted(D) :- decision(D).
rejected(D) :- decision(D).
pre_deployment_service(guidance_on_implementation).
pre_deployment_service(help_with_standardisation_documents).
pre_deployment_service(certification).
pre_deployment_service(testing_and_experimentation_facilities).
pre_deployment_service(european_digital_innovation_hubs).
pre_deployment_service(centres_of_excellence).
standardisation_organisation(O).
enterprise(E).
innovator(I).
testing_and_experimentation_facility(F).
research_and_experimentation_lab(L).
european_digital_innovation_hub(H).
centre_of_excellence(C).
individual_researcher(R).
eu_member_state(M).
established_in(S, M) :-
    ai_regulatory_sandbox(S),
    eu_member_state(M).
learning_outcome(conformity_assessment(O)) :-
    conformity_assessment(O).
learning_outcome(voluntary_application(codes_of_conduct)).
supervised_within_framework(T, S) :-
    testing_in_real_world_conditions(T),
    ai_regulatory_sandbox(S).
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_58').
provenance(implementing_acts_specify/1, 'celex:32024R1689/oj#art_58').
provenance(common_principle/2, 'celex:32024R1689/oj#art_58').
provenance(eligibility_and_selection_criteria/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_terms_and_conditions/1, 'celex:32024R1689/oj#art_58').
provenance(adopted_by_examination_procedure/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_open_to_applicant/1, 'celex:32024R1689/oj#art_58').
provenance(transparent_and_fair_criteria/1, 'celex:32024R1689/oj#art_58').
provenance(decision_within_period/2, 'celex:32024R1689/oj#art_58').
provenance(broad_and_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(partnership_application/1, 'celex:32024R1689/oj#art_58').
provenance(flexibility_for_national_authorities/1, 'celex:32024R1689/oj#art_58').
provenance(free_access_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(exceptional_costs_recoverable/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_conformity_assessment/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(simple_procedures_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(streamlined_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(mutual_recognition_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(participation_period_appropriate/1, 'celex:32024R1689/oj#art_58').
provenance(participation_period_extendable/1, 'celex:32024R1689/oj#art_58').
provenance(facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_prospective_providers/2, 'celex:32024R1689/oj#art_58').
provenance(pre_deployment_service/1, 'celex:32024R1689/oj#art_58').
provenance(must_agree_real_world_testing_terms/2, 'celex:32024R1689/oj#art_58').
provenance(appropriate_safeguards/1, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_for_consistent_practices/1, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_sandbox_personal_data_processing/2, 'personal data processed in AI regulatory sandbox for developing certain AI systems in public interest', 'celex:32024R1689/oj#art_59').
declared(sandbox_ai_system_public_interest/1, 'AI system developed in sandbox for safeguarding substantial public interest', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'area of substantial public interest for sandbox AI development', 'celex:32024R1689/oj#art_59').
declared(sandbox_data_necessary_for_requirements/1, 'personal data necessary for complying with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_59').
declared(sandbox_monitoring_mechanisms/1, 'effective monitoring mechanisms for high risks to data subjects rights and freedoms', 'celex:32024R1689/oj#art_59').
declared(sandbox_data_environment/1, 'functionally separate isolated and protected data processing environment under provider control', 'celex:32024R1689/oj#art_59').
declared(sandbox_data_sharing_compliant/1, 'data sharing in accordance with Union data protection law', 'celex:32024R1689/oj#art_59').
declared(sandbox_no_measures_or_decisions/1, 'processing neither leads to measures or decisions affecting data subjects nor affects their rights', 'celex:32024R1689/oj#art_59').
declared(sandbox_data_protected_and_deleted/1, 'personal data protected by technical and organisational measures and deleted after sandbox termination or retention period end', 'celex:32024R1689/oj#art_59').
declared(sandbox_logs_kept/1, 'logs of personal data processing kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(sandbox_technical_documentation_complete/1, 'complete and detailed description of training testing and validation process kept with testing results as part of technical documentation', 'celex:32024R1689/oj#art_59').
declared(sandbox_project_summary_published/1, 'short summary of AI project objectives and expected results published on competent authorities website', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_sandbox_processing_basis/1, 'processing of personal data in sandbox for law enforcement based on specific Union or national law', 'celex:32024R1689/oj#art_59').
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

% ==== celex:32024R1689/oj#art_60 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_60').
declared(prospective_provider/1, 'entity intending to become a provider of a high-risk AI system', 'celex:32024R1689/oj#art_60').
declared(prospective_deployer/1, 'entity intending to become a deployer of a high-risk AI system', 'celex:32024R1689/oj#art_60').
declared(annex_3_high_risk_ai_system/1, 'high-risk AI system listed in Annex III', 'celex:32024R1689/oj#art_60').
declared(annex_3_point_1_6_7_high_risk_ai_system/1, 'high-risk AI system under Annex III points 1, 6, 7 in law enforcement, migration, asylum and border control', 'celex:32024R1689/oj#art_60').
declared(annex_3_point_2_high_risk_ai_system/1, 'high-risk AI system under Annex III point 2', 'celex:32024R1689/oj#art_60').
declared(testing_in_real_world_conditions_outside_sandbox/2, 'testing of high-risk AI system in real world conditions outside AI regulatory sandboxes', 'celex:32024R1689/oj#art_60').
declared(permitted_testing_in_real_world_conditions/2, 'testing in real world conditions is permitted for provider and system', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_plan_submitted/2, 'provider submitted real-world testing plan to market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(market_surveillance_authority_approved/2, 'market surveillance authority approved testing and plan', 'celex:32024R1689/oj#art_60').
declared(tacit_approval_applies/1, 'tacit approval applies because no answer within 30 days', 'celex:32024R1689/oj#art_60').
declared(authorisation_required/1, 'national law does not provide for tacit approval so authorisation required', 'celex:32024R1689/oj#art_60').
declared(testing_registered/2, 'testing registered with Union-wide unique single identification number', 'celex:32024R1689/oj#art_60').
declared(testing_registered_secure_non_public_section/2, 'testing registered in secure non-public section of EU database', 'celex:32024R1689/oj#art_60').
declared(provider_established_in_union/1, 'provider or prospective provider established in the Union', 'celex:32024R1689/oj#art_60').
declared(legal_representative_established_in_union/1, 'legal representative established in the Union', 'celex:32024R1689/oj#art_60').
declared(data_transfer_to_third_country_safeguarded/1, 'appropriate and applicable safeguards under Union law implemented for data transfer to third countries', 'celex:32024R1689/oj#art_60').
declared(testing_duration_within_limit/1, 'testing does not last longer than necessary and not longer than six months', 'celex:32024R1689/oj#art_60').
declared(testing_duration_extended/1, 'testing extended for additional six months with prior notification', 'celex:32024R1689/oj#art_60').
declared(vulnerable_subjects_protected/1, 'subjects belonging to vulnerable groups due to age or disability are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_informed_of_testing/2, 'deployer or prospective deployer informed of all aspects relevant to decision to participate', 'celex:32024R1689/oj#art_60').
declared(instructions_for_use_given/2, 'relevant instructions for use given to deployer', 'celex:32024R1689/oj#art_60').
declared(testing_agreement_concluded/2, 'agreement specifying roles and responsibilities concluded between provider and deployer', 'celex:32024R1689/oj#art_60').
declared(informed_consent_given/1, 'subjects of testing have given informed consent', 'celex:32024R1689/oj#art_60').
declared(law_enforcement_consent_exception_applies/1, 'seeking informed consent would prevent AI system from being tested in law enforcement context', 'celex:32024R1689/oj#art_60').
declared(no_negative_effect_on_subjects/1, 'testing and outcome have no negative effect on subjects', 'celex:32024R1689/oj#art_60').
declared(personal_data_deleted_after_test/1, 'personal data deleted after test is performed', 'celex:32024R1689/oj#art_60').
declared(testing_effectively_overseen/1, 'testing effectively overseen by qualified persons', 'celex:32024R1689/oj#art_60').
declared(predictions_reversible/1, 'predictions, recommendations or decisions of AI system can be effectively reversed and disregarded', 'celex:32024R1689/oj#art_60').
declared(subject_may_withdraw/1, 'subject or legally designated representative may withdraw from testing at any time', 'celex:32024R1689/oj#art_60').
declared(withdrawal_without_detriment/1, 'withdrawal without resulting detriment and without justification', 'celex:32024R1689/oj#art_60').
declared(immediate_permanent_deletion_requestable/1, 'immediate and permanent deletion of personal data may be requested', 'celex:32024R1689/oj#art_60').
declared(withdrawal_does_not_affect_prior_activities/1, 'withdrawal of informed consent does not affect activities already carried out', 'celex:32024R1689/oj#art_60').
declared(market_surveillance_authority_powers_conferred/1, 'market surveillance authorities conferred powers to require information, carry out inspections, perform checks', 'celex:32024R1689/oj#art_60').
declared(serious_incident_reported/2, 'serious incident reported to national market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(immediate_mitigation_measures_adopted/1, 'immediate mitigation measures adopted', 'celex:32024R1689/oj#art_60').
declared(testing_suspended_until_mitigation/1, 'testing suspended until mitigation takes place', 'celex:32024R1689/oj#art_60').
declared(testing_terminated/1, 'testing terminated', 'celex:32024R1689/oj#art_60').
declared(recall_procedure_established/1, 'procedure for prompt recall of AI system established upon termination', 'celex:32024R1689/oj#art_60').
declared(suspension_or_termination_notified/2, 'suspension or termination and final outcomes notified to national market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(provider_liable_for_damage/1, 'provider or prospective provider liable for damage caused in course of testing', 'celex:32024R1689/oj#art_60').
declared(ethical_review_required/1, 'ethical review required by Union or national law', 'celex:32024R1689/oj#art_60').
declared(union_harmonisation_legislation_applies/1, 'Union harmonisation legislation listed in Annex I applies to product', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S),
    annex_3_high_risk_ai_system(S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_high_risk_ai_system(S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    annex_3_high_risk_ai_system(S).
permitted_testing_in_real_world_conditions(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S),
    before_placing_on_market_or_putting_into_service(S).
before_placing_on_market_or_putting_into_service(S) :-
    \+ placing_on_market(S),
    \+ putting_into_service(S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S),
    \+ ethical_review_required(testing(P, S)).
permitted_testing_in_real_world_conditions(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S),
    real_world_testing_plan_submitted(P, S),
    market_surveillance_authority_approved(P, S),
    testing_registration_condition_met(P, S),
    provider_or_representative_established_in_union(P),
    data_transfer_to_third_country_safeguarded(testing(P, S)),
    testing_duration_condition_met(testing(P, S)),
    vulnerable_subjects_protected(testing(P, S)),
    cooperation_conditions_met(P, S),
    informed_consent_condition_met(testing(P, S)),
    testing_effectively_overseen(testing(P, S)),
    predictions_reversible(S).
real_world_testing_plan_submitted(P, S) :-
    real_world_testing_plan(plan(P, S)),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(S, M),
    submitted_to(P, plan(P, S), A, M).
market_surveillance_authority_approved(P, S) :-
    market_surveillance_authority(A),
    member_state_where_testing_conducted(S, M),
    approved_by(A, testing(P, S), M),
    approved_by(A, plan(P, S), M).
market_surveillance_authority_approved(P, S) :-
    market_surveillance_authority(A),
    member_state_where_testing_conducted(S, M),
    \+ provided_answer_within(A, days(30), testing(P, S)),
    tacit_approval_applies(testing(P, S)),
    \+ authorisation_required(testing(P, S)).
testing_registration_condition_met(P, S) :-
    \+ annex_3_point_1_6_7_high_risk_ai_system(S),
    \+ annex_3_point_2_high_risk_ai_system(S),
    testing_registered(P, S).
testing_registration_condition_met(P, S) :-
    annex_3_point_1_6_7_high_risk_ai_system(S),
    testing_registered_secure_non_public_section(P, S).
testing_registration_condition_met(P, S) :-
    annex_3_point_2_high_risk_ai_system(S),
    testing_registered(P, S).
provider_or_representative_established_in_union(P) :-
    provider_established_in_union(P).
provider_or_representative_established_in_union(P) :-
    legal_representative_established_in_union(P).
testing_duration_condition_met(testing(P, S)) :-
    testing_duration_within_limit(testing(P, S)).
testing_duration_condition_met(testing(P, S)) :-
    testing_duration_extended(testing(P, S)),
    prior_notification_to_market_surveillance_authority(P, S),
    explanation_of_need_for_extension_provided(P, S).
cooperation_conditions_met(P, S) :-
    \+ cooperation_with_deployers(P, S).
cooperation_conditions_met(P, S) :-
    cooperation_with_deployers(P, S),
    all_deployers_informed(P, S),
    instructions_for_use_given_to_all_deployers(P, S),
    testing_agreement_concluded(P, S).
informed_consent_condition_met(testing(P, S)) :-
    informed_consent_given(testing(P, S)).
informed_consent_condition_met(testing(P, S)) :-
    law_enforcement_consent_exception_applies(testing(P, S)),
    no_negative_effect_on_subjects(testing(P, S)),
    personal_data_deleted_after_test(testing(P, S)).
subject_may_withdraw(testing(P, S)) :-
    subject(Sub),
    testing_in_real_world_conditions_outside_sandbox(P, S),
    withdrawal_without_detriment(testing(P, S)),
    immediate_permanent_deletion_requestable(testing(P, S)),
    withdrawal_does_not_affect_prior_activities(testing(P, S)).
market_surveillance_authority_powers_conferred(A) :-
    market_surveillance_authority(A),
    member_state(M),
    conferred_on_by_member_state(M, A, powers(testing(P, S))).
serious_incident_reported(P, S) :-
    serious_incident(I),
    testing_in_real_world_conditions_outside_sandbox(P, S),
    identified_in_course_of(I, testing(P, S)),
    reported_to_national_market_surveillance_authority(I, P, S).
must_adopt_mitigation_or_suspend_or_terminate(P, S) :-
    serious_incident_reported(P, S),
    immediate_mitigation_measures_adopted(testing(P, S)).
must_adopt_mitigation_or_suspend_or_terminate(P, S) :-
    serious_incident_reported(P, S),
    \+ immediate_mitigation_measures_adopted(testing(P, S)),
    testing_suspended_until_mitigation(testing(P, S)).
must_adopt_mitigation_or_suspend_or_terminate(P, S) :-
    serious_incident_reported(P, S),
    \+ immediate_mitigation_measures_adopted(testing(P, S)),
    testing_terminated(testing(P, S)).
must_establish_recall_procedure(P, S) :-
    testing_terminated(testing(P, S)),
    recall_procedure_established(testing(P, S)).
must_notify_suspension_or_termination(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S),
    suspension_or_termination_occurred(testing(P, S)),
    national_market_surveillance_authority_notified(P, S, final_outcomes(testing(P, S))).
provider_liable_for_damage(P) :-
    provider(P),
    damage_caused_in_course_of_testing(P).
provider_liable_for_damage(P) :-
    prospective_provider(P),
    damage_caused_in_course_of_testing(P).
annex_3_high_risk_ai_system(S) :-
    high_risk_ai_system(S).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_1),
    area(S, law_enforcement).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_1),
    area(S, migration).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_1),
    area(S, asylum).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_1),
    area(S, border_control_management).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_6),
    area(S, law_enforcement).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_6),
    area(S, migration).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_6),
    area(S, asylum).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_6),
    area(S, border_control_management).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_7),
    area(S, law_enforcement).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_7),
    area(S, migration).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_7),
    area(S, asylum).
annex_3_point_1_6_7_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_7),
    area(S, border_control_management).
annex_3_point_2_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point(S, pnt_2).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_deployer/1, 'celex:32024R1689/oj#art_60').
provenance(annex_3_high_risk_ai_system/1, 'celex:32024R1689/oj#art_60').
provenance(annex_3_point_1_6_7_high_risk_ai_system/1, 'celex:32024R1689/oj#art_60').
provenance(annex_3_point_2_high_risk_ai_system/1, 'celex:32024R1689/oj#art_60').
provenance(testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(market_surveillance_authority_approved/2, 'celex:32024R1689/oj#art_60').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60').
provenance(authorisation_required/1, 'celex:32024R1689/oj#art_60').
provenance(testing_registered/2, 'celex:32024R1689/oj#art_60').
provenance(testing_registered_secure_non_public_section/2, 'celex:32024R1689/oj#art_60').
provenance(provider_established_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(legal_representative_established_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_to_third_country_safeguarded/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_within_limit/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_extended/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_of_testing/2, 'celex:32024R1689/oj#art_60').
provenance(instructions_for_use_given/2, 'celex:32024R1689/oj#art_60').
provenance(testing_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_given/1, 'celex:32024R1689/oj#art_60').
provenance(law_enforcement_consent_exception_applies/1, 'celex:32024R1689/oj#art_60').
provenance(no_negative_effect_on_subjects/1, 'celex:32024R1689/oj#art_60').
provenance(personal_data_deleted_after_test/1, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(predictions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_withdraw/1, 'celex:32024R1689/oj#art_60').
provenance(withdrawal_without_detriment/1, 'celex:32024R1689/oj#art_60').
provenance(immediate_permanent_deletion_requestable/1, 'celex:32024R1689/oj#art_60').
provenance(withdrawal_does_not_affect_prior_activities/1, 'celex:32024R1689/oj#art_60').
provenance(market_surveillance_authority_powers_conferred/1, 'celex:32024R1689/oj#art_60').
provenance(serious_incident_reported/2, 'celex:32024R1689/oj#art_60').
provenance(immediate_mitigation_measures_adopted/1, 'celex:32024R1689/oj#art_60').
provenance(testing_suspended_until_mitigation/1, 'celex:32024R1689/oj#art_60').
provenance(testing_terminated/1, 'celex:32024R1689/oj#art_60').
provenance(recall_procedure_established/1, 'celex:32024R1689/oj#art_60').
provenance(suspension_or_termination_notified/2, 'celex:32024R1689/oj#art_60').
provenance(provider_liable_for_damage/1, 'celex:32024R1689/oj#art_60').
provenance(ethical_review_required/1, 'celex:32024R1689/oj#art_60').
provenance(union_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').

% ==== celex:32024R1689/oj#art_61 ====
declared(must_obtain_informed_consent/2, 'provider must obtain informed consent from subject before real-world testing participation', 'celex:32024R1689/oj#art_61').
declared(informed_consent_dated_and_documented/1, 'informed consent is dated and documented', 'celex:32024R1689/oj#art_61').
declared(copy_given_to_subject/2, 'copy of informed consent given to subject or legal representative', 'celex:32024R1689/oj#art_61').
declared(information_provided_to_subject/2, 'subject duly informed with concise clear relevant understandable information', 'celex:32024R1689/oj#art_61').
declared(information_content/2, 'information covers specified content item', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(Provider, Subject) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(T),
    participation_in_testing(Subject, T),
    \+ informed_consent_already_obtained(Subject, T),
    before_participation(Subject, T),
    information_provided_to_subject(Subject, T),
    informed_consent(Consent),
    consent_relates_to_subject(Consent, Subject),
    consent_relates_to_testing(Consent, T),
    freely_given(Consent).
information_provided_to_subject(Subject, T) :-
    testing_in_real_world_conditions(T),
    subject(Subject),
    information_content(Subject, nature_and_objectives(T)),
    information_content(Subject, possible_inconvenience(T)),
    information_content(Subject, conditions_of_testing(T)),
    information_content(Subject, expected_duration(Subject, T)),
    information_content(Subject, rights_and_guarantees(Subject)),
    information_content(Subject, right_to_refuse_participation(Subject)),
    information_content(Subject, right_to_withdraw(Subject)),
    information_content(Subject, arrangements_for_reversal_or_disregarding(Subject, T)),
    information_content(Subject, union_wide_unique_identification_number(T)),
    information_content(Subject, contact_details_provider_or_representative(Subject)).
information_content(Subject, nature_and_objectives(T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, nature(T)),
    informed_about(Subject, objectives(T)).
information_content(Subject, possible_inconvenience(T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, inconvenience_linked_to_participation(T)).
information_content(Subject, conditions_of_testing(T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, conditions(T)).
information_content(Subject, expected_duration(Subject, T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, duration_of_participation(Subject, T)).
information_content(Subject, rights_and_guarantees(Subject)) :-
    subject(Subject),
    informed_about(Subject, rights(Subject)),
    informed_about(Subject, guarantees_regarding_participation(Subject)).
information_content(Subject, right_to_refuse_participation(Subject)) :-
    subject(Subject),
    informed_about(Subject, right_to_refuse_participation_without_detriment_or_justification(Subject)).
information_content(Subject, right_to_withdraw(Subject)) :-
    subject(Subject),
    informed_about(Subject, right_to_withdraw_at_any_time_without_detriment_or_justification(Subject)).
information_content(Subject, arrangements_for_reversal_or_disregarding(Subject, T)) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_about(Subject, arrangements_for_requesting_reversal_or_disregarding(Subject, T)).
information_content(Subject, union_wide_unique_identification_number(T)) :-
    testing_in_real_world_conditions(T),
    informed_about(Subject, unique_identification_number(T)).
information_content(Subject, contact_details_provider_or_representative(Subject)) :-
    subject(Subject),
    informed_about(Subject, contact_details_for_further_information(Subject)).
informed_consent_dated_and_documented(Consent) :-
    informed_consent(Consent),
    dated(Consent),
    documented(Consent).
copy_given_to_subject(Consent, Subject) :-
    informed_consent(Consent),
    subject(Subject),
    copy_given(Consent, Subject).
copy_given_to_subject(Consent, LegalRepresentative) :-
    informed_consent(Consent),
    legal_representative_of_subject(LegalRepresentative, _Subject),
    copy_given(Consent, LegalRepresentative).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_dated_and_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_given_to_subject/2, 'celex:32024R1689/oj#art_61').
provenance(information_provided_to_subject/2, 'celex:32024R1689/oj#art_61').
provenance(information_content/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_62').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_62').
declared(start_up/1, 'start-up enterprise', 'celex:32024R1689/oj#art_62').
declared(registered_office_in_union/1, 'has registered office in the Union', 'celex:32024R1689/oj#art_62').
declared(branch_in_union/1, 'has a branch in the Union', 'celex:32024R1689/oj#art_62').
declared(priority_access_to_sandbox/1, 'has priority access to AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(eligible_for_sandbox/1, 'fulfils eligibility conditions and selection criteria for sandbox', 'celex:32024R1689/oj#art_62').
declared(awareness_raising_activity/1, 'specific awareness raising and training activity on application of the Regulation', 'celex:32024R1689/oj#art_62').
declared(tailored_to_needs/2, 'activity tailored to needs of a party', 'celex:32024R1689/oj#art_62').
declared(communication_channel/1, 'dedicated channel for communication with SMEs and stakeholders', 'celex:32024R1689/oj#art_62').
declared(advice_on_implementation/1, 'advice on implementation of the Regulation', 'celex:32024R1689/oj#art_62').
declared(standardisation_development_process/1, 'standardisation development process', 'celex:32024R1689/oj#art_62').
declared(conformity_assessment_fee/1, 'fee for conformity assessment', 'celex:32024R1689/oj#art_62').
declared(reduced_fee/1, 'fee reduced proportionately to size, market size and other relevant indicators', 'celex:32024R1689/oj#art_62').
declared(standardised_template/1, 'standardised template for areas covered by the Regulation', 'celex:32024R1689/oj#art_62').
declared(single_information_platform/1, 'single information platform providing easy to use information', 'celex:32024R1689/oj#art_62').
declared(communication_campaign/1, 'communication campaign to raise awareness about obligations', 'celex:32024R1689/oj#art_62').
declared(best_practice_in_public_procurement/1, 'best practice in public procurement procedures in relation to AI systems', 'celex:32024R1689/oj#art_62').
sme_with_union_presence(S) :-
    sme(S),
    registered_office_in_union(S).
sme_with_union_presence(S) :-
    sme(S),
    branch_in_union(S).
start_up_with_union_presence(S) :-
    start_up(S),
    registered_office_in_union(S).
start_up_with_union_presence(S) :-
    start_up(S),
    branch_in_union(S).
sme_including_start_up_with_union_presence(S) :-
    sme_with_union_presence(S).
sme_including_start_up_with_union_presence(S) :-
    start_up_with_union_presence(S).
priority_access_to_sandbox(S) :-
    sme_including_start_up_with_union_presence(S),
    eligible_for_sandbox(S).
must_provide_priority_access_sandbox(MemberState, S) :-
    member_state(MemberState),
    priority_access_to_sandbox(S).
permitted_sandbox_access(S) :-
    sme(S),
    eligible_for_sandbox(S).
permitted_sandbox_access(S) :-
    start_up(S),
    eligible_for_sandbox(S).
must_organise_awareness_activities(MemberState, Activity) :-
    member_state(MemberState),
    awareness_raising_activity(Activity),
    tailored_to_needs(Activity, sme),
    tailored_to_needs(Activity, start_up),
    tailored_to_needs(Activity, deployer).
must_utilise_communication_channels(MemberState, Channel) :-
    member_state(MemberState),
    communication_channel(Channel).
advice_on_implementation(Channel) :-
    communication_channel(Channel).
must_facilitate_standardisation_participation(MemberState, S) :-
    member_state(MemberState),
    sme(S),
    standardisation_development_process(P),
    participates_in(S, P).
reduced_fee(Fee) :-
    conformity_assessment_fee(Fee),
    sme(Provider),
    fee_applies_to(Fee, Provider).
must_provide_standardised_templates(ai_office, Template) :-
    standardised_template(Template).
must_develop_information_platform(ai_office, Platform) :-
    single_information_platform(Platform).
must_organise_communication_campaigns(ai_office, Campaign) :-
    communication_campaign(Campaign).
must_evaluate_promote_best_practices(ai_office, Practice) :-
    best_practice_in_public_procurement(Practice).
participates_in(S, P) :-
    sme(S),
    standardisation_development_process(P).
fee_applies_to(Fee, Provider) :-
    conformity_assessment_fee(Fee),
    provider(Provider).
provenance(member_state/1, 'celex:32024R1689/oj#art_62').
provenance(sme/1, 'celex:32024R1689/oj#art_62').
provenance(start_up/1, 'celex:32024R1689/oj#art_62').
provenance(registered_office_in_union/1, 'celex:32024R1689/oj#art_62').
provenance(branch_in_union/1, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(eligible_for_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(awareness_raising_activity/1, 'celex:32024R1689/oj#art_62').
provenance(tailored_to_needs/2, 'celex:32024R1689/oj#art_62').
provenance(communication_channel/1, 'celex:32024R1689/oj#art_62').
provenance(advice_on_implementation/1, 'celex:32024R1689/oj#art_62').
provenance(standardisation_development_process/1, 'celex:32024R1689/oj#art_62').
provenance(conformity_assessment_fee/1, 'celex:32024R1689/oj#art_62').
provenance(reduced_fee/1, 'celex:32024R1689/oj#art_62').
provenance(standardised_template/1, 'celex:32024R1689/oj#art_62').
provenance(single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(communication_campaign/1, 'celex:32024R1689/oj#art_62').
provenance(best_practice_in_public_procurement/1, 'celex:32024R1689/oj#art_62').
provenance(sme_with_union_presence/1, 'celex:32024R1689/oj#art_62').
provenance(start_up_with_union_presence/1, 'celex:32024R1689/oj#art_62').
provenance(sme_including_start_up_with_union_presence/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(permitted_sandbox_access/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_activities/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_promote_best_practices/2, 'celex:32024R1689/oj#art_62').
provenance(participates_in/2, 'celex:32024R1689/oj#art_62').
provenance(fee_applies_to/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(partner_enterprise/1, 'partner enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(linked_enterprise/1, 'linked enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(simplified_quality_management_compliance/1, 'compliance with certain elements of quality management system in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(exempt_from_requirement/2, 'operator exempt from fulfilling a specific requirement', 'celex:32024R1689/oj#art_63').
simplified_quality_management_compliance(O) :-
    microenterprise(O),
    provider(O),
    \+ has_partner_enterprise(O),
    \+ has_linked_enterprise(O).
has_partner_enterprise(O) :-
    microenterprise(O),
    partner_enterprise(P),
    enterprise_relation(O, P).
has_linked_enterprise(O) :-
    microenterprise(O),
    linked_enterprise(L),
    enterprise_relation(O, L).
enterprise_relation(_O, _E).
exempt_from_requirement(O, quality_management_system_elements) :-
    simplified_quality_management_compliance(O).
must_comply(O, other_requirements) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_9)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_10)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_11)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_12)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_13)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_14)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_15)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_72)) :-
    simplified_quality_management_compliance(O).
must_comply(O, requirements(art_73)) :-
    simplified_quality_management_compliance(O).
must_develop_guidelines(ai_office, simplified_quality_management_elements(microenterprise)).
provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(exempt_from_requirement/2, 'celex:32024R1689/oj#art_63').
provenance(has_partner_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(has_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(enterprise_relation/2, 'celex:32024R1689/oj#art_63').
provenance(must_comply/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').
references('celex:32024R1689/oj#art_63', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_63/par_1').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_73').

% ==== celex:32024R1689/oj#art_64 ====
declared(must_facilitate_tasks/2, 'Member State obliged to facilitate AI Office tasks', 'celex:32024R1689/oj#art_64').
declared(develop_union_expertise_and_capabilities/2, 'Commission obliged to develop Union expertise and capabilities in AI through the AI Office', 'celex:32024R1689/oj#art_64').
must_facilitate_tasks(MemberState, ai_office) :-
    member_state(MemberState).
develop_union_expertise_and_capabilities(commission, ai) :-
    ai_office(Office),
    develop_through(commission, Office, ai).
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
provenance(develop_union_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_artificial_intelligence_board/1, 'the European Artificial Intelligence Board established under Article 65', 'celex:32024R1689/oj#art_65').
declared(board_representative/1, 'representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(board_observer/1, 'observer participating in the Board without voting rights', 'celex:32024R1689/oj#art_65').
declared(board_member_state/1, 'Member State that designates a representative to the Board', 'celex:32024R1689/oj#art_65').
declared(designated_representative/2, 'Member State designates a representative to the Board', 'celex:32024R1689/oj#art_65').
declared(representative_term/2, 'term of office of a Board representative with duration and renewability', 'celex:32024R1689/oj#art_65').
declared(competent_representative/1, 'Board representative with relevant competences and powers in their Member State', 'celex:32024R1689/oj#art_65').
declared(single_contact_point/1, 'Board representative designated as single contact point vis-à-vis the Board', 'celex:32024R1689/oj#art_65').
declared(empowered_to_facilitate_coordination/1, 'Board representative empowered to facilitate consistency and coordination between national competent authorities', 'celex:32024R1689/oj#art_65').
declared(board_rules_of_procedure/1, 'rules of procedure adopted by the Board', 'celex:32024R1689/oj#art_65').
declared(board_chair/1, 'Chair of the Board, being a representative of a Member State', 'celex:32024R1689/oj#art_65').
declared(board_secretariat/1, 'entity providing the secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(board_subgroup/1, 'standing or temporary sub-group established by the Board', 'celex:32024R1689/oj#art_65').
declared(standing_subgroup/1, 'standing sub-group established by the Board', 'celex:32024R1689/oj#art_65').
declared(market_surveillance_subgroup/1, 'standing sub-group for cooperation among market surveillance authorities', 'celex:32024R1689/oj#art_65').
declared(notifying_authorities_subgroup/1, 'standing sub-group for cooperation among notifying authorities', 'celex:32024R1689/oj#art_65').
declared(adco_for_regulation/1, 'sub-group acting as administrative cooperation group for this regulation', 'celex:32024R1689/oj#art_65').
declared(objective_and_impartial/1, 'organised and operated to safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_65').
european_artificial_intelligence_board(board).
board_representative(R) :-
    designated_representative(_MemberState, R).
board_observer(EDPS) :-
    european_data_protection_supervisor(EDPS).
board_observer(AIOffice) :-
    ai_office(AIOffice).
designated_representative(MemberState, R) :-
    board_member_state(MemberState),
    board_representative(R),
    represents(R, MemberState).
represents(R, MemberState) :-
    designated_representative(MemberState, R).
representative_term(R, term(years(3), renewable(once))) :-
    board_representative(R).
competent_representative(R) :-
    board_representative(R),
    has_relevant_competences_and_powers(R).
single_contact_point(R) :-
    board_representative(R),
    designated_as_single_contact_point(R).
empowered_to_facilitate_coordination(R) :-
    board_representative(R),
    empowered_to_facilitate_consistency_and_coordination(R).
board_rules_of_procedure(Rules) :-
    adopted_by_two_thirds_majority(board, Rules).
board_chair(Chair) :-
    board_representative(Chair).
board_secretariat(AIOffice) :-
    ai_office(AIOffice).
standing_subgroup(SG) :-
    board_subgroup(SG),
    established_as_standing(SG).
market_surveillance_subgroup(SG) :-
    standing_subgroup(SG),
    provides_platform_for_cooperation(SG, market_surveillance_authorities).
notifying_authorities_subgroup(SG) :-
    standing_subgroup(SG),
    provides_platform_for_cooperation(SG, notifying_authorities).
adco_for_regulation(SG) :-
    market_surveillance_subgroup(SG).
objective_and_impartial(board).
must_designate_representative(MemberState, R) :-
    board_member_state(MemberState),
    board_representative(R),
    designated_representative(MemberState, R).
must_ensure_competent_representatives(MemberState) :-
    board_member_state(MemberState),
    forall(designated_representative(MemberState, R),
           competent_representative(R)).
must_ensure_single_contact_point(MemberState) :-
    board_member_state(MemberState),
    forall(designated_representative(MemberState, R),
           single_contact_point(R)).
must_ensure_empowered_representatives(MemberState) :-
    board_member_state(MemberState),
    forall(designated_representative(MemberState, R),
           empowered_to_facilitate_coordination(R)).
must_adopt_rules_of_procedure(Representatives) :-
    board_representative(Representatives),
    board_rules_of_procedure(_Rules).
must_establish_two_standing_subgroups(board).
must_act_as_adco(SG) :-
    market_surveillance_subgroup(SG).
must_safeguard_objectivity_and_impartiality(board).
must_provide_secretariat(AIOffice) :-
    ai_office(AIOffice),
    board_secretariat(AIOffice).
must_convene_meetings(AIOffice, Chair) :-
    ai_office(AIOffice),
    board_chair(Chair),
    board_secretariat(AIOffice).
must_prepare_agenda(AIOffice) :-
    ai_office(AIOffice),
    board_secretariat(AIOffice).
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(board_member_state/1, 'celex:32024R1689/oj#art_65').
provenance(designated_representative/2, 'celex:32024R1689/oj#art_65').
provenance(representative_term/2, 'celex:32024R1689/oj#art_65').
provenance(competent_representative/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_to_facilitate_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(board_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(board_chair/1, 'celex:32024R1689/oj#art_65').
provenance(board_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(board_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(market_surveillance_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(notifying_authorities_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(adco_for_regulation/1, 'celex:32024R1689/oj#art_65').
provenance(objective_and_impartial/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_competent_representatives/1, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_empowered_representatives/1, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(must_establish_two_standing_subgroups/1, 'celex:32024R1689/oj#art_65').
provenance(must_act_as_adco/1, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/1, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_66').
declared(member_state/1, 'a Member State of the Union', 'celex:32024R1689/oj#art_66').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_66').
declared(ai_board/1, 'the Board established under this Regulation', 'celex:32024R1689/oj#art_66').
must_advise_and_assist(ai_board, commission_and_member_states) :-
    board(ai_board).
must_advise_and_assist(ai_board, consistent_and_effective_application).
objective_facilitate(ai_board, consistent_and_effective_application).
may_contribute_to_coordination(ai_board, national_competent_authorities) :-
    board(ai_board).
may_support_joint_activities(ai_board, market_surveillance_authorities) :-
    board(ai_board).
may_collect_and_share_expertise(ai_board, member_states) :-
    board(ai_board).
may_share_best_practices(ai_board, member_states) :-
    board(ai_board).
may_provide_advice_on_implementation(ai_board) :-
    board(ai_board).
may_provide_advice_on_enforcement(ai_board, general_purpose_ai_models) :-
    board(ai_board).
may_contribute_to_harmonisation(ai_board, administrative_practices, member_states) :-
    board(ai_board).
may_contribute_to_harmonisation(ai_board, derogation_from_conformity_assessment) :-
    board(ai_board).
may_contribute_to_harmonisation(ai_board, functioning_of_ai_regulatory_sandboxes) :-
    board(ai_board).
may_contribute_to_harmonisation(ai_board, testing_in_real_world_conditions) :-
    board(ai_board).
may_issue_recommendations(ai_board) :-
    board(ai_board).
may_issue_written_opinions(ai_board) :-
    board(ai_board).
may_issue_recommendations(ai_board, codes_of_conduct) :-
    board(ai_board).
may_issue_recommendations(ai_board, codes_of_practice) :-
    board(ai_board).
may_issue_recommendations(ai_board, commission_guidelines) :-
    board(ai_board).
may_issue_recommendations(ai_board, evaluation_and_review) :-
    board(ai_board).
may_issue_recommendations(ai_board, serious_incident_reports) :-
    board(ai_board).
may_issue_recommendations(ai_board, eu_database) :-
    board(ai_board).
may_issue_recommendations(ai_board, delegated_or_implementing_acts) :-
    board(ai_board).
may_issue_recommendations(ai_board, alignment_with_union_harmonisation_legislation) :-
    board(ai_board).
may_issue_recommendations(ai_board, technical_specifications) :-
    board(ai_board).
may_issue_recommendations(ai_board, existing_standards) :-
    board(ai_board).
may_issue_recommendations(ai_board, harmonised_standards) :-
    board(ai_board).
may_issue_recommendations(ai_board, common_specifications) :-
    board(ai_board).
may_issue_recommendations(ai_board, trends_european_global_competitiveness_in_ai) :-
    board(ai_board).
may_issue_recommendations(ai_board, trends_uptake_of_ai_in_union) :-
    board(ai_board).
may_issue_recommendations(ai_board, trends_development_of_digital_skills) :-
    board(ai_board).
may_issue_recommendations(ai_board, trends_evolving_typology_of_ai_value_chains) :-
    board(ai_board).
may_issue_recommendations(ai_board, implications_for_accountability) :-
    board(ai_board).
may_issue_recommendations(ai_board, potential_need_for_amendment_to_annex_3) :-
    board(ai_board).
may_issue_recommendations(ai_board, potential_need_for_revision_of_article_5) :-
    board(ai_board).
may_support_ai_literacy(ai_board, commission) :-
    board(ai_board).
may_support_public_awareness(ai_board, commission) :-
    board(ai_board).
may_support_understanding(ai_board, commission, benefits_risks_safeguards_rights_obligations) :-
    board(ai_board).
may_facilitate_common_criteria(ai_board, market_operators_and_competent_authorities) :-
    board(ai_board).
may_facilitate_shared_understanding(ai_board, relevant_concepts) :-
    board(ai_board).
may_contribute_to_benchmarks(ai_board) :-
    board(ai_board).
may_cooperate_with_union_institutions(ai_board) :-
    board(ai_board).
may_cooperate_with_union_expert_groups(ai_board) :-
    board(ai_board).
may_cooperate_in_field(ai_board, product_safety) :-
    board(ai_board).
may_cooperate_in_field(ai_board, cybersecurity) :-
    board(ai_board).
may_cooperate_in_field(ai_board, competition) :-
    board(ai_board).
may_cooperate_in_field(ai_board, digital_and_media_services) :-
    board(ai_board).
may_cooperate_in_field(ai_board, financial_services) :-
    board(ai_board).
may_cooperate_in_field(ai_board, consumer_protection) :-
    board(ai_board).
may_cooperate_in_field(ai_board, data_and_fundamental_rights_protection) :-
    board(ai_board).
may_contribute_to_cooperation(ai_board, competent_authorities_of_third_countries) :-
    board(ai_board).
may_contribute_to_cooperation(ai_board, international_organisations) :-
    board(ai_board).
may_assist_development_of_expertise(ai_board, national_competent_authorities) :-
    board(ai_board).
may_assist_development_of_expertise(ai_board, commission) :-
    board(ai_board).
may_contribute_to_assessment_of_training_needs(ai_board, staff_of_member_states) :-
    board(ai_board).
may_assist_ai_office(ai_board, establishment_of_ai_regulatory_sandboxes) :-
    board(ai_board).
may_assist_ai_office(ai_board, development_of_ai_regulatory_sandboxes) :-
    board(ai_board).
may_facilitate_cooperation_among_sandboxes(ai_board) :-
    board(ai_board).
may_facilitate_information_sharing_among_sandboxes(ai_board) :-
    board(ai_board).
may_contribute_to_guidance_documents(ai_board) :-
    board(ai_board).
may_provide_advice_on_guidance_documents(ai_board) :-
    board(ai_board).
may_advise_commission(ai_board, international_matters_on_ai) :-
    board(ai_board).
may_provide_opinions(ai_board, commission, qualified_alerts_general_purpose_ai_models) :-
    board(ai_board).
may_receive_opinions(ai_board, member_states, qualified_alerts_general_purpose_ai_models) :-
    board(ai_board).
may_receive_opinions(ai_board, member_states, national_experiences_and_practices) :-
    board(ai_board).
may_receive_opinions(ai_board, member_states, monitoring_and_enforcement_of_ai_systems) :-
    board(ai_board).
may_receive_opinions(ai_board, member_states, systems_integrating_general_purpose_ai_models) :-
    board(ai_board).
provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(objective_facilitate/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_share_best_practices/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_enforcement/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/3, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/2, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_issue_written_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_public_awareness/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_understanding/3, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/2, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_shared_understanding/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_benchmarks/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_institutions/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_expert_groups/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_in_field/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_cooperation/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_development_of_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_assessment_of_training_needs/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office/2, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_cooperation_among_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_information_sharing_among_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_commission/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions/3, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions/3, 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_67 ====
declared(advisory_forum/1, 'forum providing technical expertise and advice to the Board and the Commission', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_member/1, 'member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(permanent_advisory_forum_member/1, 'permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_co_chair/1, 'co-chair of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(balanced_stakeholder_representation/1, 'balanced selection of stakeholders in the advisory forum', 'celex:32024R1689/oj#art_67').
declared(recognised_ai_expertise/1, 'recognised expertise in the field of AI', 'celex:32024R1689/oj#art_67').
declared(term_of_office/2, 'term of office for a member or co-chair', 'celex:32024R1689/oj#art_67').
declared(rules_of_procedure/1, 'rules of procedure drawn up by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(annual_report/1, 'annual report on advisory forum activities', 'celex:32024R1689/oj#art_67').
declared(publicly_available/1, 'document made publicly available', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_meeting/1, 'meeting of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_opinion/1, 'opinion prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_recommendation/1, 'recommendation prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_written_contribution/1, 'written contribution prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_sub_group/1, 'standing or temporary sub-group of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(stakeholder_category/1, 'category of stakeholder represented in the advisory forum', 'celex:32024R1689/oj#art_67').
declared(commercial_interest/1, 'commercial interest category', 'celex:32024R1689/oj#art_67').
declared(non_commercial_interest/1, 'non-commercial interest category', 'celex:32024R1689/oj#art_67').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_67').
declared(other_undertaking/1, 'undertaking other than an SME', 'celex:32024R1689/oj#art_67').
advisory_forum(forum).
must_establish(advisory_forum, forum).
balanced_stakeholder_representation(forum) :-
    advisory_forum(forum),
    stakeholder_category(industry),
    stakeholder_category(start_up),
    stakeholder_category(sme),
    stakeholder_category(civil_society),
    stakeholder_category(academia).
stakeholder_category(industry).
stakeholder_category(start_up).
stakeholder_category(sme).
stakeholder_category(civil_society).
stakeholder_category(academia).
balanced_stakeholder_representation(forum) :-
    advisory_forum(forum),
    commercial_interest(C),
    non_commercial_interest(N),
    balanced(C, N).
commercial_interest(C) :-
    sme(C).
commercial_interest(C) :-
    other_undertaking(C).
balanced(commercial, non_commercial).
must_appoint(commission, member(advisory_forum, M)) :-
    advisory_forum_member(M),
    recognised_ai_expertise(M).
advisory_forum_member(M) :-
    recognised_ai_expertise(M).
term_of_office(member(advisory_forum, M), years(2)) :-
    advisory_forum_member(M).
term_of_office(member(advisory_forum, M), years(N)) :-
    advisory_forum_member(M),
    N =< 4.
permanent_advisory_forum_member(fundamental_rights_agency).
permanent_advisory_forum_member(enisa).
permanent_advisory_forum_member(cen).
permanent_advisory_forum_member(cenelec).
permanent_advisory_forum_member(etsi).
permanent_advisory_forum_member(M) :-
    advisory_forum_member(M),
    member_type(permanent, M).
must_draw_up(advisory_forum, rules_of_procedure(forum)).
must_elect(advisory_forum, co_chair(forum, C)) :-
    advisory_forum_co_chair(C).
advisory_forum_co_chair(C) :-
    advisory_forum_member(C).
term_of_office(co_chair(forum, C), years(2)) :-
    advisory_forum_co_chair(C).
renewable_once(co_chair(forum, C)) :-
    advisory_forum_co_chair(C).
must_hold_meeting(advisory_forum, meeting(forum, N)) :-
    N >= 2,
    period(years(1)).
may_invite(advisory_forum, expert(E)) :-
    advisory_forum_meeting(M).
may_prepare(advisory_forum, opinion(forum, O)) :-
    requested_by(board, O).
may_prepare(advisory_forum, opinion(forum, O)) :-
    requested_by(commission, O).
may_prepare(advisory_forum, recommendation(forum, R)) :-
    requested_by(board, R).
may_prepare(advisory_forum, recommendation(forum, R)) :-
    requested_by(commission, R).
may_prepare(advisory_forum, written_contribution(forum, W)) :-
    requested_by(board, W).
may_prepare(advisory_forum, written_contribution(forum, W)) :-
    requested_by(commission, W).
may_establish(advisory_forum, sub_group(forum, standing, SG)).
may_establish(advisory_forum, sub_group(forum, temporary, SG)).
advisory_forum_sub_group(SG) :-
    sub_group(forum, standing, SG).
advisory_forum_sub_group(SG) :-
    sub_group(forum, temporary, SG).
must_prepare(advisory_forum, annual_report(forum, activities)).
publicly_available(annual_report(forum, activities)) :-
    annual_report(forum, activities).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_co_chair/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_stakeholder_representation/1, 'celex:32024R1689/oj#art_67').
provenance(recognised_ai_expertise/1, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_meeting/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_opinion/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_recommendation/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_written_contribution/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_sub_group/1, 'celex:32024R1689/oj#art_67').
provenance(stakeholder_category/1, 'celex:32024R1689/oj#art_67').
provenance(commercial_interest/1, 'celex:32024R1689/oj#art_67').
provenance(non_commercial_interest/1, 'celex:32024R1689/oj#art_67').
provenance(sme/1, 'celex:32024R1689/oj#art_67').
provenance(other_undertaking/1, 'celex:32024R1689/oj#art_67').
provenance(must_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meeting/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite/2, 'celex:32024R1689/oj#art_67').
provenance(may_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(may_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'panel of independent experts supporting enforcement activities', 'celex:32024R1689/oj#art_68').
declared(scientific_panel_expert/1, 'expert selected to serve on the scientific panel', 'celex:32024R1689/oj#art_68').
declared(selected_by_commission/1, 'expert selected by the Commission for the scientific panel', 'celex:32024R1689/oj#art_68').
declared(has_ai_expertise/1, 'expert with up-to-date scientific or technical expertise in AI', 'celex:32024R1689/oj#art_68').
declared(independent_from_ai_provider/1, 'expert independent from any provider of AI systems or general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(diligent_accurate_objective/1, 'expert able to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(advises_ai_office/1, 'scientific panel advises and supports the AI Office', 'celex:32024R1689/oj#art_68').
declared(supports_market_surveillance/1, 'scientific panel supports market surveillance authorities at their request', 'celex:32024R1689/oj#art_68').
declared(supports_cross_border_market_surveillance/1, 'scientific panel supports cross-border market surveillance activities', 'celex:32024R1689/oj#art_68').
declared(supports_union_safeguard_procedure/1, 'scientific panel supports AI Office in Union safeguard procedure', 'celex:32024R1689/oj#art_68').
declared(performs_tasks_impartially/1, 'expert performs tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(ensures_confidentiality/1, 'expert ensures confidentiality of information and data obtained', 'celex:32024R1689/oj#art_68').
declared(no_instructions_from_anyone/1, 'expert neither seeks nor takes instructions from anyone', 'celex:32024R1689/oj#art_68').
declared(declaration_of_interests/1, 'expert draws up a declaration of interests made publicly available', 'celex:32024R1689/oj#art_68').
declared(conflict_of_interest_management/1, 'AI Office establishes systems to manage and prevent conflicts of interest', 'celex:32024R1689/oj#art_68').
declared(alerts_systemic_risk/1, 'scientific panel alerts AI Office of possible systemic risks at Union level', 'celex:32024R1689/oj#art_68').
declared(contributes_to_evaluation_tools/1, 'scientific panel contributes to tools and methodologies for evaluating capabilities', 'celex:32024R1689/oj#art_68').
declared(advises_on_classification/1, 'scientific panel provides advice on classification of general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(contributes_to_tools_and_templates/1, 'scientific panel contributes to development of tools and templates', 'celex:32024R1689/oj#art_68').
declared(fair_gender_representation/1, 'Commission ensures fair gender representation on the panel', 'celex:32024R1689/oj#art_68').
declared(fair_geographical_representation/1, 'Commission ensures fair geographical representation on the panel', 'celex:32024R1689/oj#art_68').
must_establish_scientific_panel(commission).
scientific_panel(P) :-
    scientific_panel_expert(E),
    member(E, P).
scientific_panel_expert(E) :-
    selected_by_commission(E),
    has_ai_expertise(E),
    independent_from_ai_provider(E),
    diligent_accurate_objective(E).
selected_by_commission(E) :-
    scientific_panel_expert(E).
has_ai_expertise(E) :-
    scientific_panel_expert(E).
independent_from_ai_provider(E) :-
    scientific_panel_expert(E),
    \+ provider_of_ai_systems_or_gpai_models(E).
provider_of_ai_systems_or_gpai_models(E) :-
    provider(E).
provider_of_ai_systems_or_gpai_models(E) :-
    general_purpose_ai_model_provider(E).
general_purpose_ai_model_provider(E) :-
    provider(E),
    general_purpose_ai_model(M),
    develops(E, M).
diligent_accurate_objective(E) :-
    scientific_panel_expert(E).
advises_ai_office(P) :-
    scientific_panel(P).
supports_market_surveillance(P) :-
    scientific_panel(P),
    market_surveillance_authority(A),
    requested_by(A).
supports_cross_border_market_surveillance(P) :-
    scientific_panel(P).
supports_union_safeguard_procedure(P) :-
    scientific_panel(P),
    ai_office(O),
    supports(O).
alerts_systemic_risk(P) :-
    scientific_panel(P),
    ai_office(O),
    alerts(O).
contributes_to_evaluation_tools(P) :-
    scientific_panel(P).
advises_on_classification(P) :-
    scientific_panel(P).
contributes_to_tools_and_templates(P) :-
    scientific_panel(P).
performs_tasks_impartially(E) :-
    scientific_panel_expert(E).
ensures_confidentiality(E) :-
    scientific_panel_expert(E).
no_instructions_from_anyone(E) :-
    scientific_panel_expert(E).
declaration_of_interests(E) :-
    scientific_panel_expert(E),
    publicly_available(declaration_of_interests(E)).
conflict_of_interest_management :-
    ai_office(O),
    establishes_systems(O, manage_prevent_conflicts_of_interest).
fair_gender_representation :-
    scientific_panel(P),
    commission_ensures(P, fair_gender_representation).
fair_geographical_representation :-
    scientific_panel(P),
    commission_ensures(P, fair_geographical_representation).
must_determine_expert_number(commission, scientific_panel).
must_consult_board(commission, scientific_panel).
must_ensure_fair_representation(commission, scientific_panel).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel_expert/1, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(has_ai_expertise/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_ai_provider/1, 'celex:32024R1689/oj#art_68').
provenance(diligent_accurate_objective/1, 'celex:32024R1689/oj#art_68').
provenance(advises_ai_office/1, 'celex:32024R1689/oj#art_68').
provenance(supports_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(supports_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(supports_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(performs_tasks_impartially/1, 'celex:32024R1689/oj#art_68').
provenance(ensures_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(no_instructions_from_anyone/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(conflict_of_interest_management/1, 'celex:32024R1689/oj#art_68').
provenance(alerts_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_evaluation_tools/1, 'celex:32024R1689/oj#art_68').
provenance(advises_on_classification/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_tools_and_templates/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_representation/1, 'celex:32024R1689/oj#art_68').
provenance(fair_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_expert_number/2, 'celex:32024R1689/oj#art_68').
provenance(must_consult_board/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_representation/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_69').
declared(scientific_panel_expert/1, 'expert of the scientific panel', 'celex:32024R1689/oj#art_69').
declared(enforcement_activity/1, 'enforcement activity under this Regulation', 'celex:32024R1689/oj#art_69').
declared(expert_advice/1, 'advice provided by an expert', 'celex:32024R1689/oj#art_69').
declared(expert_support/1, 'support provided by an expert', 'celex:32024R1689/oj#art_69').
declared(fee/1, 'fee for advice and support', 'celex:32024R1689/oj#art_69').
declared(union_ai_testing_support/1, 'Union AI testing support activities', 'celex:32024R1689/oj#art_69').
may_call_upon_expert(MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    supports_enforcement(Expert, MemberState).
supports_enforcement(Expert, MemberState) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    enforcement_activity(Activity),
    supports(Activity, Expert).
may_be_required_to_pay_fee(MemberState, Fee) :-
    member_state(MemberState),
    fee(Fee),
    advice_or_support(Fee, Advice),
    provided_by(Advice, Expert),
    scientific_panel_expert(Expert),
    requested_by(Advice, MemberState).
must_facilitate_timely_access(Commission, MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    needed_for_enforcement(MemberState, Expert).
must_ensure_efficient_organisation(Commission, Support) :-
    support_combination(Support),
    union_ai_testing_support(Support),
    expert_support(Support),
    provides_added_value(Support).
support_combination(combination(U, E)) :-
    union_ai_testing_support(U),
    expert_support(E).
provides_added_value(combination(U, E)) :-
    union_ai_testing_support(U),
    expert_support(E),
    best_possible_added_value(combination(U, E)).
advice_or_support(fee(Advice), Advice) :-
    expert_advice(Advice).
advice_or_support(fee(Support), Support) :-
    expert_support(Support).
provided_by(Advice, Expert) :-
    scientific_panel_expert(Expert).
requested_by(Advice, MemberState) :-
    member_state(MemberState).
needed_for_enforcement(MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    enforcement_activity(Activity),
    requires_expert(Activity, Expert).
requires_expert(Activity, Expert) :-
    enforcement_activity(Activity),
    scientific_panel_expert(Expert).
best_possible_added_value(combination(U, E)) :-
    union_ai_testing_support(U),
    expert_support(E).
provenance(may_call_upon_expert/2, 'celex:32024R1689/oj#art_69').
provenance(may_be_required_to_pay_fee/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_timely_access/3, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_70').
declared(single_point_of_contact/1, 'market surveillance authority designated as single point of contact for the Regulation', 'celex:32024R1689/oj#art_70').
declared(adequate_cybersecurity/1, 'adequate level of cybersecurity ensured by national competent authority', 'celex:32024R1689/oj#art_70').
declared(adequate_resources/1, 'adequate technical, financial and human resources and infrastructure provided to national competent authority', 'celex:32024R1689/oj#art_70').
declared(sufficient_personnel/1, 'sufficient number of personnel permanently available with required competences and expertise', 'celex:32024R1689/oj#art_70').
declared(annual_competence_assessment/1, 'annual assessment and update of competence and resource requirements', 'celex:32024R1689/oj#art_70').
declared(biennial_resource_report/1, 'report to Commission on status of financial and human resources every two years', 'celex:32024R1689/oj#art_70').
declared(experience_exchange_facilitated/1, 'Commission facilitates exchange of experience between national competent authorities', 'celex:32024R1689/oj#art_70').
declared(guidance_and_advice_provided/1, 'national competent authority provides guidance and advice on implementation of the Regulation', 'celex:32024R1689/oj#art_70').
declared(edps_competent_authority/1, 'European Data Protection Supervisor acts as competent authority for Union institutions, bodies, offices or agencies', 'celex:32024R1689/oj#art_70').
must_designate_national_competent_authorities(MemberState) :-
    member_state(MemberState).
must_ensure_independent_impartial_unbiased(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
must_refrain_from_incompatible_action(Member) :-
    national_competent_authority(Authority),
    member_of_authority(Member, Authority).
must_communicate_authorities_to_commission(MemberState) :-
    member_state(MemberState).
must_make_contact_information_public(MemberState) :-
    member_state(MemberState).
must_designate_single_point_of_contact(MemberState) :-
    member_state(MemberState).
must_notify_commission_of_single_point_of_contact(MemberState) :-
    member_state(MemberState).
must_provide_adequate_resources(MemberState, NationalCompetentAuthority) :-
    member_state(MemberState),
    national_competent_authority(NationalCompetentAuthority).
must_ensure_sufficient_personnel(MemberState, NationalCompetentAuthority) :-
    member_state(MemberState),
    national_competent_authority(NationalCompetentAuthority).
must_assess_competence_annually(MemberState) :-
    member_state(MemberState).
must_ensure_adequate_cybersecurity(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
must_obey_confidentiality(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
must_report_resources_biennially(MemberState) :-
    member_state(MemberState).
must_facilitate_experience_exchange :-
    true.
may_provide_guidance(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
must_consult_other_authorities(NationalCompetentAuthority, AISystem) :-
    national_competent_authority(NationalCompetentAuthority),
    ai_system(AISystem),
    covered_by_other_union_law(AISystem).
edps_competent_authority(UnionEntity) :-
    union_institution_body_office_or_agency(UnionEntity),
    within_scope_of_regulation(UnionEntity).
member_of_authority(Member, Authority) :-
    national_competent_authority(Authority),
    member(Member, Authority).
member(Member, Authority) :-
    national_competent_authority(Authority).
covered_by_other_union_law(AISystem) :-
    ai_system(AISystem).
union_institution_body_office_or_agency(Entity) :-
    european_data_protection_supervisor(Entity).
within_scope_of_regulation(Entity) :-
    union_institution_body_office_or_agency(Entity).
european_data_protection_supervisor(_).
single_point_of_contact(Authority) :-
    market_surveillance_authority(Authority),
    designated_as_single_point_of_contact(Authority).
designated_as_single_point_of_contact(Authority) :-
    market_surveillance_authority(Authority).
adequate_resources(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    provided_with_adequate_resources(NationalCompetentAuthority).
provided_with_adequate_resources(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
sufficient_personnel(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    has_sufficient_personnel(NationalCompetentAuthority).
has_sufficient_personnel(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
adequate_cybersecurity(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    ensures_adequate_cybersecurity(NationalCompetentAuthority).
ensures_adequate_cybersecurity(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
annual_competence_assessment(MemberState) :-
    member_state(MemberState),
    assesses_competence_annually(MemberState).
assesses_competence_annually(MemberState) :-
    member_state(MemberState).
biennial_resource_report(MemberState) :-
    member_state(MemberState),
    reports_resources_biennially(MemberState).
reports_resources_biennially(MemberState) :-
    member_state(MemberState).
experience_exchange_facilitated :-
    commission_facilitates_experience_exchange.
commission_facilitates_experience_exchange.
guidance_and_advice_provided(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    provides_guidance_and_advice(NationalCompetentAuthority).
provides_guidance_and_advice(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).
provenance(member_state/1, 'celex:32024R1689/oj#art_70').
provenance(single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(adequate_resources/1, 'celex:32024R1689/oj#art_70').
provenance(sufficient_personnel/1, 'celex:32024R1689/oj#art_70').
provenance(annual_competence_assessment/1, 'celex:32024R1689/oj#art_70').
provenance(biennial_resource_report/1, 'celex:32024R1689/oj#art_70').
provenance(experience_exchange_facilitated/1, 'celex:32024R1689/oj#art_70').
provenance(guidance_and_advice_provided/1, 'celex:32024R1689/oj#art_70').
provenance(edps_competent_authority/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_national_competent_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_independent_impartial_unbiased/1, 'celex:32024R1689/oj#art_70').
provenance(must_refrain_from_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authorities_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_public/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_notify_commission_of_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_provide_adequate_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_sufficient_personnel/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_competence_annually/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_obey_confidentiality/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resources_biennially/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_experience_exchange/0, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/1, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(eu_database/1, 'EU database for high-risk AI systems', 'celex:32024R1689/oj#art_71').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_6/par_2').
declared(registered_in_accordance_with/2, 'system registered under specified article', 'celex:32024R1689/oj#art_71').
declared(not_high_risk_pursuant_to/1, 'AI system not considered high-risk under specified provision', 'celex:32024R1689/oj#art_71').
declared(data_listed_in/1, 'data category listed in specified annex section', 'celex:32024R1689/oj#art_71').
declared(entered_into_eu_database_by/2, 'data entered by specified actor', 'celex:32024R1689/oj#art_71').
declared(publicly_accessible_information/1, 'information accessible and publicly available', 'celex:32024R1689/oj#art_71').
declared(restricted_access_information/1, 'information accessible only to specified authorities', 'celex:32024R1689/oj#art_71').
declared(controller_of_eu_database/1, 'entity acting as controller of EU database', 'celex:32024R1689/oj#art_71').
declared(must_set_up_and_maintain/2, 'obligation to set up and maintain', 'celex:32024R1689/oj#art_71').
declared(must_enter_data/2, 'obligation to enter data into EU database', 'celex:32024R1689/oj#art_71').
declared(must_consult/2, 'obligation to consult specified party', 'celex:32024R1689/oj#art_71').
declared(must_make_available/2, 'obligation to make available support', 'celex:32024R1689/oj#art_71').
declared(deployer_public_authority/1, 'deployer who is or acts on behalf of public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(prospective_provider/1, 'prospective provider of AI system', 'celex:32024R1689/oj#art_71').
declared(consent_given_for_public_access/2, 'consent given by provider for public access to information', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain(commission, eu_database).
must_set_up_and_maintain(commission, eu_database) :-
    collaboration_with_member_states.
collaboration_with_member_states.
eu_database_contains_information(eu_database, Information) :-
    high_risk_ai_system(S),
    registered_in_accordance_with(S, art_49),
    information_concerning(S, Information).
eu_database_contains_information(eu_database, Information) :-
    high_risk_ai_system(S),
    registered_in_accordance_with(S, art_60),
    information_concerning(S, Information).
eu_database_contains_information(eu_database, Information) :-
    ai_system(S),
    not_high_risk_pursuant_to(S),
    registered_in_accordance_with(S, art_6_par_4),
    registered_in_accordance_with(S, art_49),
    information_concerning(S, Information).
must_consult(commission, relevant_experts) :-
    setting_functional_specifications(eu_database).
must_consult(commission, board) :-
    updating_functional_specifications(eu_database).
must_enter_data(Provider, Data) :-
    provider(Provider),
    data_listed_in(anx_8_sec_1, Data).
must_enter_data(Provider, Data) :-
    provider(Provider),
    data_listed_in(anx_8_sec_2, Data).
must_enter_data(Authorised_representative, Data) :-
    authorised_representative(Authorised_representative),
    applicable_authorised_representative(Authorised_representative),
    data_listed_in(anx_8_sec_1, Data).
must_enter_data(Authorised_representative, Data) :-
    authorised_representative(Authorised_representative),
    applicable_authorised_representative(Authorised_representative),
    data_listed_in(anx_8_sec_2, Data).
must_enter_data(Deployer, Data) :-
    deployer(Deployer),
    deployer_public_authority(Deployer),
    data_listed_in(anx_8_sec_3, Data),
    registered_in_accordance_with(art_49_par_3),
    registered_in_accordance_with(art_49_par_4).
publicly_accessible_information(Information) :-
    registered_in_accordance_with(art_49),
    \+ exception_section(art_49_par_4, Information),
    \+ exception_section(art_60_par_4_unp_1_pnt_c, Information),
    user_friendly_manner(Information),
    easily_navigable(Information),
    machine_readable(Information).
restricted_access_information(Information) :-
    registered_in_accordance_with(art_60),
    accessible_to(Information, market_surveillance_authorities),
    accessible_to(Information, commission).
restricted_access_information(Information) :-
    registered_in_accordance_with(art_60),
    consent_given_for_public_access(Provider, Information),
    publicly_accessible_information(Information).
eu_database_contains_personal_data_only_as_necessary(eu_database).
eu_database_personal_data_includes(Names_and_contact_details) :-
    natural_persons_responsible_for_registering(Names_and_contact_details),
    legal_authority_to_represent_provider_or_deployer(Names_and_contact_details).
controller_of_eu_database(commission).
must_make_available(commission, adequate_technical_and_administrative_support) :-
    recipient(providers),
    recipient(prospective_providers),
    recipient(deployers).
eu_database_complies_with_accessibility_requirements(eu_database).
provenance(eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_71').
provenance(registered_in_accordance_with/2, 'celex:32024R1689/oj#art_71').
provenance(not_high_risk_pursuant_to/1, 'celex:32024R1689/oj#art_71').
provenance(data_listed_in/2, 'celex:32024R1689/oj#art_71').
provenance(entered_into_eu_database_by/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_information/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_access_information/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_71').
provenance(deployer_public_authority/1, 'celex:32024R1689/oj#art_71').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_71').
provenance(consent_given_for_public_access/2, 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_71/par_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_71/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_1').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_72 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan/1, 'document describing post-market monitoring objectives and methodology', 'celex:32024R1689/oj#art_72').
declared(technical_documentation/1, 'technical documentation referred to in Annex IV', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_nature_and_risk/2, 'system is proportionate to the nature of the AI technologies and the risks', 'celex:32024R1689/oj#art_72').
declared(actively_collects_data/1, 'system actively and systematically collects, documents and analyses relevant data', 'celex:32024R1689/oj#art_72').
declared(data_from_deployers/1, 'data provided by deployers', 'celex:32024R1689/oj#art_72').
declared(data_from_other_sources/1, 'data collected through other sources', 'celex:32024R1689/oj#art_72').
declared(lifetime_performance_data/1, 'data on performance of high-risk AI systems throughout their lifetime', 'celex:32024R1689/oj#art_72').
declared(continuous_compliance_evaluation/2, 'provider can evaluate continuous compliance of AI system with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_72').
declared(interaction_analysis_with_other_ai_systems/1, 'analysis of interaction with other AI systems included where relevant', 'celex:32024R1689/oj#art_72').
declared(sensitive_operational_data_excluded/1, 'sensitive operational data of law-enforcement deployers is excluded from monitoring obligation', 'celex:32024R1689/oj#art_72').
declared(plan_part_of_technical_documentation/2, 'post-market monitoring plan is part of technical documentation', 'celex:32024R1689/oj#art_72').
declared(implementing_act_template/1, 'Commission implementing act laying down template for post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(union_harmonisation_legislation_annex_1_section_1/1, 'Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_72').
declared(existing_post_market_monitoring_under_legislation/1, 'post-market monitoring system and plan already established under Union harmonisation legislation', 'celex:32024R1689/oj#art_72').
declared(integration_choice_available/1, 'provider has choice of integrating necessary elements into existing systems and plans', 'celex:32024R1689/oj#art_72').
declared(equivalent_level_of_protection/1, 'integration achieves an equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(financial_institution_high_risk_ai_system/1, 'high-risk AI system referred to in Annex III point 5 placed on market or put into service by financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_72').
must_establish_post_market_monitoring_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    post_market_monitoring_system(System),
    proportionate_to_nature_and_risk(System, S).
must_document_post_market_monitoring_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    post_market_monitoring_system(System),
    proportionate_to_nature_and_risk(System, S).
post_market_monitoring_system_actively_collects(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    actively_collects_data(System),
    (data_from_deployers(System) ; data_from_other_sources(System)),
    lifetime_performance_data(System),
    continuous_compliance_evaluation(System, S).
post_market_monitoring_system_includes_interaction_analysis(System) :-
    post_market_monitoring_system(System),
    interaction_analysis_with_other_ai_systems(System).
sensitive_operational_data_excluded(System, Deployer) :-
    post_market_monitoring_system(System),
    deployer(Deployer),
    law_enforcement_authority(Deployer),
    sensitive_operational_data(Data),
    \+ actively_collects_data(System, Data).
post_market_monitoring_plan_required(System, Plan) :-
    post_market_monitoring_system(System),
    post_market_monitoring_plan(Plan),
    plan_part_of_technical_documentation(Plan, System).
plan_part_of_technical_documentation(Plan, System) :-
    post_market_monitoring_plan(Plan),
    post_market_monitoring_system(System),
    technical_documentation(Doc),
    member(Plan, Doc).
implementing_act_template_required(Act) :-
    implementing_act_template(Act).
integration_choice_available(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_annex_1_section_1(Legislation),
    existing_post_market_monitoring_under_legislation(Legislation, S),
    equivalent_level_of_protection(S).
financial_institution_high_risk_ai_system(S) :-
    high_risk_ai_system(S),
    annex_3_point_5(S),
    financial_institution(Deployer),
    deployer(Deployer),
    (placing_on_market(S) ; putting_into_service(S)),
    union_financial_services_law_requirements(Deployer).
must_apply_paragraph_4_to_financial_institution_system(Provider, S) :-
    provider(Provider),
    financial_institution_high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan/1, 'celex:32024R1689/oj#art_72').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(proportionate_to_nature_and_risk/2, 'celex:32024R1689/oj#art_72').
provenance(actively_collects_data/1, 'celex:32024R1689/oj#art_72').
provenance(data_from_deployers/1, 'celex:32024R1689/oj#art_72').
provenance(data_from_other_sources/1, 'celex:32024R1689/oj#art_72').
provenance(lifetime_performance_data/1, 'celex:32024R1689/oj#art_72').
provenance(continuous_compliance_evaluation/2, 'celex:32024R1689/oj#art_72').
provenance(interaction_analysis_with_other_ai_systems/1, 'celex:32024R1689/oj#art_72').
provenance(sensitive_operational_data_excluded/1, 'celex:32024R1689/oj#art_72').
provenance(plan_part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(implementing_act_template/1, 'celex:32024R1689/oj#art_72').
provenance(union_harmonisation_legislation_annex_1_section_1/1, 'celex:32024R1689/oj#art_72').
provenance(existing_post_market_monitoring_under_legislation/1, 'celex:32024R1689/oj#art_72').
provenance(integration_choice_available/1, 'celex:32024R1689/oj#art_72').
provenance(equivalent_level_of_protection/1, 'celex:32024R1689/oj#art_72').
provenance(financial_institution_high_risk_ai_system/1, 'celex:32024R1689/oj#art_72').
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(must_document_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_actively_collects/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_includes_interaction_analysis/1, 'celex:32024R1689/oj#art_72').
provenance(sensitive_operational_data_excluded/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_required/2, 'celex:32024R1689/oj#art_72').
provenance(implementing_act_template_required/1, 'celex:32024R1689/oj#art_72').
provenance(integration_choice_available/2, 'celex:32024R1689/oj#art_72').
provenance(must_apply_paragraph_4_to_financial_institution_system/2, 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_4/unp_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').

% ==== celex:32024R1689/oj#art_73 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_73').
declared(placed_on_union_market/1, 'AI system placed on the Union market', 'celex:32024R1689/oj#art_73').
declared(serious_incident_occurred/1, 'a serious incident has occurred', 'celex:32024R1689/oj#art_73').
declared(causal_link_established/2, 'provider has established causal link between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(reasonable_likelihood_of_link/2, 'reasonable likelihood of causal link between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(provider_aware_of_incident/2, 'provider became aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(deployer_aware_of_incident/2, 'deployer became aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(aware_of_incident/2, 'provider or deployer became aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(widespread_infringement_occurred/1, 'a widespread infringement has occurred', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'death of a person has occurred', 'celex:32024R1689/oj#art_73').
declared(provider_suspects_causal_relationship/2, 'provider suspects causal relationship between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(deployer_suspects_causal_relationship/2, 'deployer suspects causal relationship between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(suspects_causal_relationship/2, 'provider or deployer suspects causal relationship', 'celex:32024R1689/oj#art_73').
declared(initial_report_incomplete/1, 'initial report submitted is incomplete', 'celex:32024R1689/oj#art_73').
declared(complete_report_follows/1, 'complete report follows initial report', 'celex:32024R1689/oj#art_73').
declared(risk_assessment_performed/2, 'risk assessment of incident performed', 'celex:32024R1689/oj#art_73').
declared(corrective_action_taken/2, 'corrective action taken regarding AI system', 'celex:32024R1689/oj#art_73').
declared(investigation_performed/2, 'necessary investigations performed regarding AI system and incident', 'celex:32024R1689/oj#art_73').
declared(alters_ai_system/3, 'investigation involves altering AI system in way affecting subsequent evaluation', 'celex:32024R1689/oj#art_73').
declared(informs_competent_authorities/2, 'provider informs competent authorities of action', 'celex:32024R1689/oj#art_73').
declared(national_public_authority_or_body/1, 'national public authority or body referred to in Article 77(1)', 'celex:32024R1689/oj#art_73').
declared(equivalent_reporting_obligation_instrument/1, 'Union legislative instrument laying down equivalent reporting obligations', 'celex:32024R1689/oj#art_73').
declared(safety_component_of_device/1, 'high-risk AI system is safety component of device or is itself a device', 'celex:32024R1689/oj#art_73').
declared(device_covered_by_regulation/1, 'device covered by Regulation 2017/745 or 2017/746', 'celex:32024R1689/oj#art_73').
declared(national_competent_authority_chosen/2, 'national competent authority chosen by Member State for purpose', 'celex:32024R1689/oj#art_73').
must_report_serious_incident(Provider, Incident) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_union_market(S),
    placing_on_market(S),
    serious_incident_occurred(Incident),
    incident_relates_to(Incident, S).
must_report_to_market_surveillance_authority(Provider, report(Incident, Authority)) :-
    must_report_serious_incident(Provider, Incident),
    market_surveillance_authority(Authority),
    incident_occurred_in_member_state(Incident, Authority).
reporting_deadline_standard(Provider, Incident, days(15)) :-
    must_report_serious_incident(Provider, Incident),
    (causal_link_established(Provider, Incident) ; reasonable_likelihood_of_link(Provider, Incident)),
    aware_of_incident(Provider, Incident).
reporting_period_considers_severity(Incident) :-
    serious_incident_occurred(Incident).
reporting_deadline_widespread_infringement(Provider, Incident, days(2)) :-
    must_report_serious_incident(Provider, Incident),
    widespread_infringement_occurred(Incident),
    aware_of_incident(Provider, Incident).
reporting_deadline_serious_incident_art_3_49_b(Provider, Incident, days(2)) :-
    must_report_serious_incident(Provider, Incident),
    serious_incident_occurred(Incident),
    incident_type_art_3_49_b(Incident),
    aware_of_incident(Provider, Incident).
reporting_deadline_death(Provider, Incident, days(10)) :-
    must_report_serious_incident(Provider, Incident),
    death_of_person(Incident),
    (causal_link_established(Provider, Incident) ; suspects_causal_relationship(Provider, Incident)),
    aware_of_incident(Provider, Incident).
permitted_incomplete_initial_report(Provider, Incident) :-
    must_report_serious_incident(Provider, Incident),
    initial_report_incomplete(report(Incident)),
    complete_report_follows(report(Incident)).
must_perform_investigation(Provider, investigation(Incident, S)) :-
    must_report_serious_incident(Provider, Incident),
    incident_relates_to(Incident, S),
    investigation_performed(Provider, investigation(Incident, S)),
    risk_assessment_performed(Provider, Incident),
    corrective_action_taken(Provider, S).
must_cooperate_during_investigation(Provider, Authority) :-
    must_perform_investigation(Provider, _),
    national_competent_authority(Authority).
must_cooperate_with_notified_body(Provider, Body) :-
    must_perform_investigation(Provider, _),
    notified_body(Body).
prohibited_altering_ai_system_without_informing(Provider, S) :-
    must_perform_investigation(Provider, investigation(_, S)),
    alters_ai_system(Provider, S, Alteration),
    \+ informs_competent_authorities(Provider, Alteration).
must_inform_national_public_authorities(Authority, Body) :-
    market_surveillance_authority(Authority),
    national_public_authority_or_body(Body),
    received_notification_of_serious_incident(Authority, _).
must_develop_guidance(ai_office, guidance(serious_incident_reporting)) :-
    ai_office(ai_office).
guidance_issued_by(ai_office, date(2025, august, 2)).
must_take_appropriate_measures(Authority, Incident, days(7)) :-
    market_surveillance_authority(Authority),
    received_notification_of_serious_incident(Authority, Incident).
reporting_limited_for_equivalent_obligations(Provider, Incident) :-
    must_report_serious_incident(Provider, Incident),
    high_risk_ai_system(S),
    placed_on_union_market(S),
    incident_relates_to(Incident, S),
    provider_subject_to_equivalent_obligations(Provider, S),
    incident_type_art_3_49_c(Incident).
reporting_limited_for_safety_components(Provider, Incident, Authority) :-
    must_report_serious_incident(Provider, Incident),
    high_risk_ai_system(S),
    placed_on_union_market(S),
    incident_relates_to(Incident, S),
    safety_component_of_device(S),
    device_covered_by_regulation(S),
    incident_type_art_3_49_c(Incident),
    national_competent_authority(Authority),
    national_competent_authority_chosen(Authority, purpose(serious_incident_notification)).
must_notify_commission(Authority, Incident) :-
    national_competent_authority(Authority),
    serious_incident_occurred(Incident),
    received_notification_of_serious_incident(Authority, Incident).
aware_of_incident(Provider, Incident) :-
    provider_aware_of_incident(Provider, Incident).
aware_of_incident(Provider, Incident) :-
    provider(Provider),
    deployer_aware_of_incident(Deployer, Incident),
    deployer_related_to_provider(Deployer, Provider).
suspects_causal_relationship(Provider, Incident) :-
    provider_suspects_causal_relationship(Provider, Incident).
suspects_causal_relationship(Provider, Incident) :-
    provider(Provider),
    deployer_suspects_causal_relationship(Deployer, Incident),
    deployer_related_to_provider(Deployer, Provider).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(placed_on_union_market/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_occurred/1, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established/2, 'celex:32024R1689/oj#art_73').
provenance(reasonable_likelihood_of_link/2, 'celex:32024R1689/oj#art_73').
provenance(provider_aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(deployer_aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(widespread_infringement_occurred/1, 'celex:32024R1689/oj#art_73').
provenance(death_of_person/1, 'celex:32024R1689/oj#art_73').
provenance(provider_suspects_causal_relationship/2, 'celex:32024R1689/oj#art_73').
provenance(deployer_suspects_causal_relationship/2, 'celex:32024R1689/oj#art_73').
provenance(suspects_causal_relationship/2, 'celex:32024R1689/oj#art_73').
provenance(initial_report_incomplete/1, 'celex:32024R1689/oj#art_73').
provenance(complete_report_follows/1, 'celex:32024R1689/oj#art_73').
provenance(risk_assessment_performed/2, 'celex:32024R1689/oj#art_73').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_73').
provenance(investigation_performed/2, 'celex:32024R1689/oj#art_73').
provenance(alters_ai_system/3, 'celex:32024R1689/oj#art_73').
provenance(informs_competent_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(national_public_authority_or_body/1, 'celex:32024R1689/oj#art_73').
provenance(equivalent_reporting_obligation_instrument/1, 'celex:32024R1689/oj#art_73').
provenance(safety_component_of_device/1, 'celex:32024R1689/oj#art_73').
provenance(device_covered_by_regulation/1, 'celex:32024R1689/oj#art_73').
provenance(national_competent_authority_chosen/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_to_market_surveillance_authority/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_standard/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_period_considers_severity/1, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_widespread_infringement/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_serious_incident_art_3_49_b/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_death/3, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_notified_body/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_altering_ai_system_without_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_national_public_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(guidance_issued_by/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_appropriate_measures/3, 'celex:32024R1689/oj#art_73').
provenance(reporting_limited_for_equivalent_obligations/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_limited_for_safety_components/3, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(market_surveillance_authority_for_ai_system/2, 'authority designated as market surveillance authority for a specific AI system', 'celex:32024R1689/oj#art_74').
declared(must_report_annually/2, 'obligation to report annually to specified recipients about specified matters', 'celex:32024R1689/oj#art_74').
declared(designated_market_surveillance_authority/2, 'Member State designates an authority as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(coordination_ensured/2, 'coordination is ensured between authorities', 'celex:32024R1689/oj#art_74').
declared(sectoral_procedures_apply/1, 'sectoral procedures apply instead of general procedures', 'celex:32024R1689/oj#art_74').
declared(equivalent_level_of_protection/1, 'procedures ensure equivalent level of protection', 'celex:32024R1689/oj#art_74').
declared(same_objective/1, 'procedures have the same objective', 'celex:32024R1689/oj#art_74').
declared(may_exercise_powers_remotely/2, 'authority may exercise powers remotely', 'celex:32024R1689/oj#art_74').
declared(financial_institution_regulated/1, 'financial institution regulated by Union financial services law', 'celex:32024R1689/oj#art_74').
declared(national_financial_supervision_authority/1, 'national authority responsible for financial supervision', 'celex:32024R1689/oj#art_74').
declared(in_direct_connection_with_financial_services/2, 'AI system use is in direct connection with provision of financial services', 'celex:32024R1689/oj#art_74').
declared(regulated_credit_institution/1, 'credit institution regulated under CRD', 'celex:32024R1689/oj#art_74').
declared(participating_in_single_supervisory_mechanism/1, 'institution participating in the Single Supervisory Mechanism', 'celex:32024R1689/oj#art_74').
declared(must_report_without_delay/2, 'obligation to report without delay to specified recipient', 'celex:32024R1689/oj#art_74').
declared(data_protection_supervisory_authority/1, 'competent data protection supervisory authority under GDPR or LED', 'celex:32024R1689/oj#art_74').
declared(judicial_authority_independence_unaffected/1, 'market surveillance activities do not affect judicial authority independence', 'celex:32024R1689/oj#art_74').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_74').
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_74').
declared(court_of_justice_acting_in_judicial_capacity/1, 'Court of Justice acting in its judicial capacity', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/2, 'obligation to facilitate coordination between authorities', 'celex:32024R1689/oj#art_74').
declared(may_propose_joint_activities/2, 'authorities may propose joint activities', 'celex:32024R1689/oj#art_74').
declared(joint_investigation/1, 'joint investigation activity', 'celex:32024R1689/oj#art_74').
declared(ai_office_provides_coordination_support/1, 'AI Office provides coordination support for joint investigations', 'celex:32024R1689/oj#art_74').
declared(serious_risk_across_member_states/1, 'serious risk across two or more Member States', 'celex:32024R1689/oj#art_74').
declared(must_grant_full_access_to_documentation/2, 'obligation to grant full access to documentation and data sets', 'celex:32024R1689/oj#art_74').
declared(must_grant_access_to_source_code/2, 'obligation to grant access to source code under conditions', 'celex:32024R1689/oj#art_74').
declared(reasoned_request_for_source_code/1, 'reasoned request for source code access', 'celex:32024R1689/oj#art_74').
declared(source_code_access_necessary_for_conformity_assessment/1, 'access to source code is necessary to assess conformity', 'celex:32024R1689/oj#art_74').
declared(testing_and_auditing_exhausted_or_insufficient/1, 'testing or auditing procedures exhausted or proved insufficient', 'celex:32024R1689/oj#art_74').
declared(must_treat_information_confidentially/2, 'obligation to treat information and documentation in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_74').
declared(high_risk_ai_system_related_to_harmonisation_legislation/1, 'high-risk AI system related to products covered by Union harmonisation legislation in Annex I Section 1', 'celex:32024R1689/oj#art_74').
declared(high_risk_ai_system_for_law_enforcement_border_justice/1, 'high-risk AI system listed in Annex III point 1 used for law enforcement, border management, justice and democracy', 'celex:32024R1689/oj#art_74').
declared(high_risk_ai_system_annex_3_points_6_7_8/1, 'high-risk AI system listed in Annex III points 6, 7, or 8', 'celex:32024R1689/oj#art_74').
declared(placed_on_market/1, 'AI system placed on the market', 'celex:32024R1689/oj#art_74').
declared(put_into_service/1, 'AI system put into service', 'celex:32024R1689/oj#art_74').
declared(used_by_deployer/1, 'AI system used by a deployer', 'celex:32024R1689/oj#art_74').
market_surveillance_regulation_applies(ai_system).
economic_operator_reference_includes_all_operators.
product_reference_includes_all_ai_systems.
must_report_annually(Authority, competition_information) :-
    market_surveillance_authority(Authority),
    identified_during_market_surveillance(Authority, competition_information).
must_report_annually(Authority, prohibited_practices_report) :-
    market_surveillance_authority(Authority).
must_report_annually(commission, competition_information) :-
    market_surveillance_authority(Authority),
    must_report_annually(Authority, competition_information).
must_report_annually(commission, prohibited_practices_report) :-
    market_surveillance_authority(Authority),
    must_report_annually(Authority, prohibited_practices_report).
must_report_annually(national_competition_authority, competition_information) :-
    market_surveillance_authority(Authority),
    must_report_annually(Authority, competition_information).
market_surveillance_authority_for_ai_system(Authority, S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S),
    sectoral_market_surveillance_authority(Authority, S).
designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S),
    member_state_designates(Authority),
    coordination_ensured(Authority, sectoral_authority).
sectoral_procedures_apply(S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S),
    sectoral_legal_act_provides_procedures(S),
    equivalent_level_of_protection(S),
    same_objective(S).
may_exercise_powers_remotely(Authority, power(d_and_j)) :-
    market_surveillance_authority(Authority),
    appropriate_circumstances.
market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    placed_on_market(S),
    put_into_service(S),
    used_by_deployer(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).
market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    placed_on_market(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).
market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    put_into_service(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).
market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    used_by_deployer(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).
designated_market_surveillance_authority(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    deployer(S, F),
    member_state_identifies(Authority),
    coordination_ensured(Authority, national_financial_supervision_authority).
must_report_without_delay(Authority, european_central_bank) :-
    market_surveillance_authority(Authority),
    regulated_credit_institution(I),
    participating_in_single_supervisory_mechanism(I),
    supervises(Authority, I),
    identified_during_market_surveillance(Authority, prudential_information).
designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_for_law_enforcement_border_justice(S),
    data_protection_supervisory_authority(Authority).
designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_annex_3_points_6_7_8(S),
    data_protection_supervisory_authority(Authority).
designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_for_law_enforcement_border_justice(S),
    member_state_designates(Authority),
    designation_conditions_met(Authority).
designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_annex_3_points_6_7_8(S),
    member_state_designates(Authority),
    designation_conditions_met(Authority).
judicial_authority_independence_unaffected(S) :-
    high_risk_ai_system_for_law_enforcement_border_justice(S),
    market_surveillance_activity(S).
market_surveillance_authority_for_ai_system(european_data_protection_supervisor, S) :-
    union_institution_body_office_or_agency(I),
    ai_system(S),
    within_scope_of_regulation(I),
    \+ court_of_justice_acting_in_judicial_capacity(I).
must_facilitate_coordination(member_state, authorities) :-
    member_state(MemberState),
    market_surveillance_authority(Authority1),
    designates(MemberState, Authority1),
    other_relevant_authority(Authority2),
    supervises_application_of_union_law(Authority2),
    relevant_for_high_risk_ai_systems(Authority2).
may_propose_joint_activities(Authority, joint_investigation) :-
    market_surveillance_authority(Authority).
may_propose_joint_activities(commission, joint_investigation) :-
    market_surveillance_authority(Authority).
joint_investigation(J) :-
    proposed_by(Authority, J),
    may_propose_joint_activities(Authority, J),
    aims_at_compliance_or_identifying_non_compliance(J).
ai_office_provides_coordination_support(J) :-
    joint_investigation(J),
    involves_multiple_member_states(J).
serious_risk_across_member_states(S) :-
    high_risk_ai_system(S),
    presents_serious_risk(S),
    across_member_states(S, two_or_more).
must_grant_full_access_to_documentation(Authority, access(documentation_and_data_sets(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    relevant_and_limited_to_necessary(Authority, access).
must_grant_full_access_to_documentation(Authority, access(training_data(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    uses_for_development(S, training_data).
must_grant_full_access_to_documentation(Authority, access(validation_data(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    uses_for_development(S, validation_data).
must_grant_full_access_to_documentation(Authority, access(testing_data(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    uses_for_development(S, testing_data).
must_grant_access_to_source_code(Authority, source_code(S)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    reasoned_request_for_source_code(Request),
    made_by(Authority, Request),
    source_code_access_necessary_for_conformity_assessment(S),
    testing_and_auditing_exhausted_or_insufficient(S).
must_treat_information_confidentially(Authority, information_or_documentation) :-
    market_surveillance_authority(Authority),
    obtained(Authority, information_or_documentation),
    in_accordance_with_art_78.
declared(identified_during_market_surveillance/2, 'information identified during market surveillance activities', 'celex:32024R1689/oj#art_74').
declared(sectoral_market_surveillance_authority/2, 'sectoral market surveillance authority responsible for enforcement', 'celex:32024R1689/oj#art_74').
declared(member_state_designates/1, 'Member State designates an authority', 'celex:32024R1689/oj#art_74').
declared(sectoral_legal_act_provides_procedures/1, 'sectoral legal act provides procedures', 'celex:32024R1689/oj#art_74').
declared(appropriate_circumstances/0, 'appropriate circumstances exist', 'celex:32024R1689/oj#art_74').
declared(deployer/2, 'entity deploys AI system', 'celex:32024R1689/oj#art_74').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_74').
declared(member_state_identifies/1, 'Member State identifies an authority', 'celex:32024R1689/oj#art_74').
declared(supervises/2, 'authority supervises entity', 'celex:32024R1689/oj#art_74').
declared(within_scope_of_regulation/1, 'entity falls within scope of regulation', 'celex:32024R1689/oj#art_74').
declared(other_relevant_authority/1, 'other relevant national authority or body', 'celex:32024R1689/oj#art_74').
declared(designates/2, 'Member State designates authority', 'celex:32024R1689/oj#art_74').
declared(supervises_application_of_union_law/1, 'authority supervises application of Union law', 'celex:32024R1689/oj#art_74').
declared(relevant_for_high_risk_ai_systems/1, 'authority relevant for high-risk AI systems', 'celex:32024R1689/oj#art_74').
declared(proposed_by/2, 'activity proposed by authority', 'celex:32024R1689/oj#art_74').
declared(aims_at_compliance_or_identifying_non_compliance/1, 'activity aims at compliance or identifying non-compliance', 'celex:32024R1689/oj#art_74').
declared(involves_multiple_member_states/1, 'activity involves multiple Member States', 'celex:32024R1689/oj#art_74').
declared(presents_serious_risk/1, 'AI system presents serious risk', 'celex:32024R1689/oj#art_74').
declared(across_member_states/2, 'risk across specified number of Member States', 'celex:32024R1689/oj#art_74').
declared(provides/2, 'provider provides AI system', 'celex:32024R1689/oj#art_74').
declared(relevant_and_limited_to_necessary/2, 'access is relevant and limited to what is necessary', 'celex:32024R1689/oj#art_74').
declared(uses_for_development/2, 'data used for development of AI system', 'celex:32024R1689/oj#art_74').
declared(made_by/2, 'request made by authority', 'celex:32024R1689/oj#art_74').
declared(designation_conditions_met/1, 'designation conditions laid down in LED are met', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_activity/1, 'market surveillance activity conducted', 'celex:32024R1689/oj#art_74').
declared(obtained/2, 'authority obtained information or documentation', 'celex:32024R1689/oj#art_74').
declared(in_accordance_with_art_78/0, 'in accordance with Article 78 confidentiality obligations', 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_ai_system/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(designated_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(coordination_ensured/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(equivalent_level_of_protection/1, 'celex:32024R1689/oj#art_74').
provenance(same_objective/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(financial_institution_regulated/1, 'celex:32024R1689/oj#art_74').
provenance(national_financial_supervision_authority/1, 'celex:32024R1689/oj#art_74').
provenance(in_direct_connection_with_financial_services/2, 'celex:32024R1689/oj#art_74').
provenance(regulated_credit_institution/1, 'celex:32024R1689/oj#art_74').
provenance(participating_in_single_supervisory_mechanism/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_without_delay/2, 'celex:32024R1689/oj#art_74').
provenance(data_protection_supervisory_authority/1, 'celex:32024R1689/oj#art_74').
provenance(judicial_authority_independence_unaffected/1, 'celex:32024R1689/oj#art_74').
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_74').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_74').
provenance(court_of_justice_acting_in_judicial_capacity/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(joint_investigation/1, 'celex:32024R1689/oj#art_74').
provenance(ai_office_provides_coordination_support/1, 'celex:32024R1689/oj#art_74').
provenance(serious_risk_across_member_states/1, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_source_code/2, 'celex:32024R1689/oj#art_74').
provenance(reasoned_request_for_source_code/1, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_necessary_for_conformity_assessment/1, 'celex:32024R1689/oj#art_74').
provenance(testing_and_auditing_exhausted_or_insufficient/1, 'celex:32024R1689/oj#art_74').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_74').
provenance(high_risk_ai_system_related_to_harmonisation_legislation/1, 'celex:32024R1689/oj#art_74').
provenance(high_risk_ai_system_for_law_enforcement_border_justice/1, 'celex:32024R1689/oj#art_74').
provenance(high_risk_ai_system_annex_3_points_6_7_8/1, 'celex:32024R1689/oj#art_74').
provenance(placed_on_market/1, 'celex:32024R1689/oj#art_74').
provenance(put_into_service/1, 'celex:32024R1689/oj#art_74').
provenance(used_by_deployer/1, 'celex:32024R1689/oj#art_74').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_3/unp_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_14').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_6').
references('celex:32024R1689/oj#art_74', 'celex:32013L0036/oj').
references('celex:32024R1689/oj#art_74', 'celex:32013R1024/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_74', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_41').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_42').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_43').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_44').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_75 ====
declared(ai_office_monitoring_powers/1, 'AI Office has market surveillance authority powers over general-purpose AI systems developed by same provider as model', 'celex:32024R1689/oj#art_75').
declared(same_provider_model_and_system/2, 'provider developed both the general-purpose AI model and the AI system based on it', 'celex:32024R1689/oj#art_75').
declared(general_purpose_ai_system_high_risk_purpose/1, 'general-purpose AI system usable directly by deployers for at least one high-risk purpose', 'celex:32024R1689/oj#art_75').
declared(sufficient_reason_non_compliance/2, 'market surveillance authorities have sufficient reason to consider system non-compliant', 'celex:32024R1689/oj#art_75').
declared(must_cooperate_compliance_evaluation/2, 'market surveillance authorities must cooperate with AI Office for compliance evaluations', 'celex:32024R1689/oj#art_75').
declared(must_inform_board_and_authorities/2, 'market surveillance authorities must inform the Board and other market surveillance authorities', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/2, 'market surveillance authority unable to conclude investigation due to inability to access model information', 'celex:32024R1689/oj#art_75').
declared(may_request_information_access/2, 'market surveillance authority may submit reasoned request to AI Office for information access', 'celex:32024R1689/oj#art_75').
declared(must_supply_information_within/3, 'AI Office must supply relevant information within specified period', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'market surveillance authorities must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
ai_office_monitoring_powers(S) :-
    ai_system(S),
    general_purpose_ai_system(S),
    same_provider_model_and_system(P, S),
    provider(P).
same_provider_model_and_system(P, S) :-
    provider(P),
    ai_system(S),
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M),
    developed_by(M, P),
    developed_by(S, P).
general_purpose_ai_system_high_risk_purpose(S) :-
    general_purpose_ai_system(S),
    deployer(D),
    can_be_used_directly_by(S, D),
    high_risk_purpose(P),
    purpose_classified_as_high_risk(P).
must_cooperate_compliance_evaluation(A, O) :-
    market_surveillance_authority(A),
    ai_office(O),
    general_purpose_ai_system_high_risk_purpose(S),
    sufficient_reason_non_compliance(A, S).
must_inform_board_and_authorities(A, Info) :-
    market_surveillance_authority(A),
    must_cooperate_compliance_evaluation(A, _O),
    Info = compliance_evaluation_result(S),
    general_purpose_ai_system_high_risk_purpose(S).
unable_to_conclude_investigation(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    \+ can_access_model_information(A, S),
    made_all_appropriate_efforts(A, S).
may_request_information_access(A, O) :-
    market_surveillance_authority(A),
    ai_office(O),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(A, S).
must_supply_information_within(O, A, days(30)) :-
    ai_office(O),
    market_surveillance_authority(A),
    may_request_information_access(A, O),
    relevant_information_for_compliance(I),
    without_delay(I).
must_safeguard_confidentiality(A, I) :-
    market_surveillance_authority(A),
    information_obtained(A, I),
    confidential(I).
provenance(ai_office_monitoring_powers/1, 'celex:32024R1689/oj#art_75').
provenance(same_provider_model_and_system/2, 'celex:32024R1689/oj#art_75').
provenance(general_purpose_ai_system_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(sufficient_reason_non_compliance/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_compliance_evaluation/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(unable_to_conclude_investigation/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_access/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_ensure_testing_compliance/2, 'market surveillance authority ensures testing in real world conditions complies with the regulation', 'celex:32024R1689/oj#art_76').
declared(must_verify_sandbox_compliance/2, 'market surveillance authority verifies compliance with art_60 for sandbox testing', 'celex:32024R1689/oj#art_76').
declared(may_allow_derogation/3, 'market surveillance authority may allow testing by provider in derogation from specified conditions', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/2, 'market surveillance authority may suspend or terminate testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(may_require_modification/3, 'market surveillance authority may require modification of testing aspect', 'celex:32024R1689/oj#art_76').
declared(must_indicate_grounds_and_challenge/3, 'decision or objection indicates grounds and how to challenge', 'celex:32024R1689/oj#art_76').
declared(must_communicate_grounds_to_other_authorities/3, 'market surveillance authority communicates grounds to authorities of other Member States', 'celex:32024R1689/oj#art_76').
declared(testing_in_real_world_conditions_compliant/1, 'testing in real world conditions is in accordance with the regulation', 'celex:32024R1689/oj#art_76').
declared(sandbox_testing/1, 'testing in real world conditions conducted within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(informed_of_serious_incident/2, 'market surveillance authority informed of serious incident by specified party', 'celex:32024R1689/oj#art_76').
declared(grounds_for_considering_conditions_not_met/2, 'market surveillance authority has grounds for considering conditions not met', 'celex:32024R1689/oj#art_76').
declared(decision_taken/2, 'market surveillance authority has taken a decision under paragraph 3', 'celex:32024R1689/oj#art_76').
declared(objection_issued/2, 'market surveillance authority has issued an objection under art_60(4)(b)', 'celex:32024R1689/oj#art_76').
declared(tested_in_member_state/2, 'AI system has been tested in a Member State', 'celex:32024R1689/oj#art_76').
must_ensure_testing_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    testing_in_real_world_conditions_compliant(Testing).
must_verify_sandbox_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    sandbox_testing(Testing),
    ai_regulatory_sandbox(Sandbox),
    testing_within_sandbox(Testing, Sandbox).
may_allow_derogation(Authority, Testing, Provider) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    sandbox_testing(Testing),
    provider(Provider).
may_suspend_or_terminate_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident(Authority, _Party),
    serious_incident(Incident),
    related_to_testing(Incident, Testing).
may_suspend_or_terminate_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_for_considering_conditions_not_met(Authority, Testing).
may_require_modification(Authority, Testing, Aspect) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident(Authority, _Party),
    serious_incident(Incident),
    related_to_testing(Incident, Testing),
    aspect_of_testing(Aspect, Testing).
may_require_modification(Authority, Testing, Aspect) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_for_considering_conditions_not_met(Authority, Testing),
    aspect_of_testing(Aspect, Testing).
must_indicate_grounds_and_challenge(Authority, Decision, Challenge) :-
    market_surveillance_authority(Authority),
    decision_taken(Authority, Decision),
    indicates_grounds(Decision, Grounds),
    indicates_challenge_method(Decision, Challenge).
must_indicate_grounds_and_challenge(Authority, Objection, Challenge) :-
    market_surveillance_authority(Authority),
    objection_issued(Authority, Objection),
    indicates_grounds(Objection, Grounds),
    indicates_challenge_method(Objection, Challenge).
must_communicate_grounds_to_other_authorities(Authority, Grounds, OtherAuthority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    decision_taken(Authority, Decision),
    grounds_of_decision(Decision, Grounds),
    tested_in_member_state(System, MemberState),
    authority_of_member_state(OtherAuthority, MemberState),
    testing_in_member_state(Testing, MemberState),
    related_to_decision(Decision, Testing),
    related_to_system(Testing, System).
provenance(must_ensure_testing_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_sandbox_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_derogation/3, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification/3, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge/3, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_authorities/3, 'celex:32024R1689/oj#art_76').
provenance(testing_in_real_world_conditions_compliant/1, 'celex:32024R1689/oj#art_76').
provenance(sandbox_testing/1, 'celex:32024R1689/oj#art_76').
provenance(informed_of_serious_incident/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_considering_conditions_not_met/2, 'celex:32024R1689/oj#art_76').
provenance(decision_taken/2, 'celex:32024R1689/oj#art_76').
provenance(objection_issued/2, 'celex:32024R1689/oj#art_76').
provenance(tested_in_member_state/2, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(fundamental_rights_authority/1, 'national public authority or body supervising or enforcing fundamental rights obligations', 'celex:32024R1689/oj#art_77').
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Annex III', 'celex:32024R1689/oj#anx_3').
declared(documentation_created_or_maintained/1, 'documentation created or maintained under the Regulation', 'celex:32024R1689/oj#art_77').
declared(accessible_language_and_format/1, 'language and format accessible to the requesting authority', 'celex:32024R1689/oj#art_77').
declared(necessary_for_mandate/1, 'access necessary for effectively fulfilling the authority mandate', 'celex:32024R1689/oj#art_77').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_77').
declared(identified_by_member_state/1, 'authority identified by a Member State under Article 77(2)', 'celex:32024R1689/oj#art_77').
declared(list_publicly_available/1, 'list of fundamental rights authorities made publicly available', 'celex:32024R1689/oj#art_77').
declared(list_notified_to_commission/1, 'list notified to the Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(list_kept_up_to_date/1, 'list maintained current by the Member State', 'celex:32024R1689/oj#art_77').
declared(insufficient_documentation/1, 'documentation insufficient to ascertain infringement of fundamental rights obligations', 'celex:32024R1689/oj#art_77').
declared(reasoned_request_for_testing/2, 'reasoned request by fundamental rights authority to market surveillance authority for testing', 'celex:32024R1689/oj#art_77').
declared(testing_organised_by_market_surveillance/1, 'testing organised by market surveillance authority with close involvement of requesting authority', 'celex:32024R1689/oj#art_77').
declared(confidentiality_obligation_applies/1, 'information or documentation treated in accordance with Article 78 confidentiality obligations', 'celex:32024R1689/oj#art_77').
must_request_and_access_documentation(A, D) :-
    fundamental_rights_authority(A),
    documentation_created_or_maintained(D),
    high_risk_ai_system(S),
    relates_to(D, S),
    accessible_language_and_format(D),
    necessary_for_mandate(access(D), A).
must_inform_market_surveillance_authority(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    member_state(MS),
    same_member_state(A, MS),
    same_member_state(MSA, MS),
    must_request_and_access_documentation(A, _D).
must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).
must_make_list_publicly_available(MS) :-
    member_state(MS),
    must_identify_fundamental_rights_authorities(MS),
    list_publicly_available(MS).
must_notify_list_to_commission_and_member_states(MS) :-
    member_state(MS),
    must_identify_fundamental_rights_authorities(MS),
    list_notified_to_commission(MS).
must_keep_list_up_to_date(MS) :-
    member_state(MS),
    list_kept_up_to_date(MS).
may_make_reasoned_request_for_testing(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    member_state(MS),
    same_member_state(A, MS),
    same_member_state(MSA, MS),
    insufficient_documentation(D),
    relates_to(D, S),
    high_risk_ai_system(S).
must_organise_testing(MSA, A) :-
    market_surveillance_authority(MSA),
    fundamental_rights_authority(A),
    reasoned_request_for_testing(A, MSA),
    testing_organised_by_market_surveillance(MSA, A).
must_treat_as_confidential(A, Info) :-
    fundamental_rights_authority(A),
    obtained_pursuant_to(A, Info, art_77),
    confidentiality_obligation_applies(Info).
relates_to(D, S) :-
    documentation_created_or_maintained(D),
    high_risk_ai_system(S).
same_member_state(A, MS) :-
    fundamental_rights_authority(A),
    member_state(MS),
    jurisdiction_of(A, MS).
same_member_state(MSA, MS) :-
    market_surveillance_authority(MSA),
    member_state(MS),
    jurisdiction_of(MSA, MS).
obtained_pursuant_to(A, Info, Article) :-
    fundamental_rights_authority(A),
    member_state(MS),
    jurisdiction_of(A, MS),
    must_request_and_access_documentation(A, D),
    part_of(Info, D),
    Article = art_77.
part_of(Info, D) :-
    documentation_created_or_maintained(D).
identified_by_member_state(A) :-
    fundamental_rights_authority(A),
    member_state(MS),
    jurisdiction_of(A, MS),
    must_identify_fundamental_rights_authorities(MS).
provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(documentation_created_or_maintained/1, 'celex:32024R1689/oj#art_77').
provenance(accessible_language_and_format/1, 'celex:32024R1689/oj#art_77').
provenance(necessary_for_mandate/1, 'celex:32024R1689/oj#art_77').
provenance(member_state/1, 'celex:32024R1689/oj#art_77').
provenance(identified_by_member_state/1, 'celex:32024R1689/oj#art_77').
provenance(list_publicly_available/1, 'celex:32024R1689/oj#art_77').
provenance(list_notified_to_commission/1, 'celex:32024R1689/oj#art_77').
provenance(list_kept_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(insufficient_documentation/1, 'celex:32024R1689/oj#art_77').
provenance(reasoned_request_for_testing/2, 'celex:32024R1689/oj#art_77').
provenance(testing_organised_by_market_surveillance/1, 'celex:32024R1689/oj#art_77').
provenance(confidentiality_obligation_applies/1, 'celex:32024R1689/oj#art_77').
provenance(must_request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_list_to_commission_and_member_states/1, 'celex:32024R1689/oj#art_77').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(may_make_reasoned_request_for_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_as_confidential/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'who is obliged, what information to protect', 'celex:32024R1689/oj#art_78').
declared(protected_information/1, 'information that must be kept confidential', 'celex:32024R1689/oj#art_78').
declared(must_request_only_necessary_data/1, 'authority that must limit data requests to what is strictly necessary', 'celex:32024R1689/oj#art_78').
declared(must_implement_cybersecurity_measures/1, 'authority that must protect security and confidentiality of obtained data', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/1, 'authority that must delete data once purpose is fulfilled', 'celex:32024R1689/oj#art_78').
declared(confidential_exchange/2, 'information exchanged on confidential basis, between whom', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure_without_consultation/2, 'information that cannot be disclosed, without consulting whom', 'celex:32024R1689/oj#art_78').
declared(technical_documentation_remains_on_premises/1, 'authority whose technical documentation must remain on its premises', 'celex:32024R1689/oj#art_78').
declared(must_ensure_immediate_access_to_documentation/2, 'authority that must ensure access, to what documentation', 'celex:32024R1689/oj#art_78').
declared(permitted_exchange_with_third_country/2, 'information that may be exchanged, with which regulatory authority', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(commission, Info) :-
    protected_information(Info).
must_respect_confidentiality(A, Info) :-
    market_surveillance_authority(A),
    protected_information(Info).
must_respect_confidentiality(B, Info) :-
    notified_body(B),
    protected_information(Info).
must_respect_confidentiality(P, Info) :-
    natural_or_legal_person(P),
    involved_in_application_of_regulation(P),
    protected_information(Info).
protected_information(intellectual_property_rights(Person)) :-
    natural_or_legal_person(Person).
protected_information(confidential_business_information(Person)) :-
    natural_or_legal_person(Person).
protected_information(trade_secrets(Person)) :-
    natural_or_legal_person(Person).
protected_information(source_code(Person)) :-
    natural_or_legal_person(Person).
protected_information(effective_implementation(inspections)).
protected_information(effective_implementation(investigations)).
protected_information(effective_implementation(audits)).
protected_information(public_security_interests).
protected_information(national_security_interests).
protected_information(conduct_of_criminal_proceedings).
protected_information(conduct_of_administrative_proceedings).
protected_information(classified_information).
must_request_only_necessary_data(A) :-
    authority_involved_in_application(A),
    assessment_of_risk_posed_by_ai_systems(Purpose),
    exercise_of_powers(Purpose),
    data_requested(A, Data, Purpose),
    strictly_necessary(Data, Purpose).
must_implement_cybersecurity_measures(A) :-
    authority_involved_in_application(A),
    obtains_information_or_data(A, Info),
    adequate_and_effective_cybersecurity_measures(A, Info).
must_delete_data_when_no_longer_needed(A) :-
    authority_involved_in_application(A),
    collects_data(A, Data, Purpose),
    \+ still_needed(Data, Purpose),
    deletes_data(A, Data).
confidential_exchange(Info, between(national_competent_authority(A), national_competent_authority(B))) :-
    national_competent_authority(A),
    national_competent_authority(B),
    A \= B,
    exchanged_on_confidential_basis(Info).
confidential_exchange(Info, between(national_competent_authority(A), commission)) :-
    national_competent_authority(A),
    exchanged_on_confidential_basis(Info).
prohibited_disclosure_without_consultation(Info, originating_national_competent_authority) :-
    confidential_exchange(Info, _),
    high_risk_ai_system_used_by_law_enforcement(S),
    disclosure_would_jeopardise_public_or_national_security(Info).
prohibited_disclosure_without_consultation(Info, deployer(D)) :-
    confidential_exchange(Info, _),
    high_risk_ai_system_used_by_law_enforcement(S),
    deployer(D),
    uses(D, S),
    disclosure_would_jeopardise_public_or_national_security(Info).
technical_documentation_remains_on_premises(A) :-
    law_enforcement_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    technical_documentation(S, Doc),
    remains_on_premises(Doc, A).
technical_documentation_remains_on_premises(A) :-
    immigration_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    technical_documentation(S, Doc),
    remains_on_premises(Doc, A).
technical_documentation_remains_on_premises(A) :-
    asylum_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    technical_documentation(S, Doc),
    remains_on_premises(Doc, A).
must_ensure_immediate_access_to_documentation(A, technical_documentation(S)) :-
    law_enforcement_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    market_surveillance_authority(M),
    referred_to_in_art_74_par_8_or_par_9(M).
must_ensure_immediate_access_to_documentation(A, technical_documentation(S)) :-
    immigration_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    market_surveillance_authority(M),
    referred_to_in_art_74_par_8_or_par_9(M).
must_ensure_immediate_access_to_documentation(A, technical_documentation(S)) :-
    asylum_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    market_surveillance_authority(M),
    referred_to_in_art_74_par_8_or_par_9(M).
permitted_exchange_with_third_country(Info, regulatory_authority(ThirdCountry)) :-
    commission,
    member_state(MemberState),
    necessary_for_purpose(Info, Purpose),
    relevant_provisions_of_international_agreements(Purpose),
    relevant_provisions_of_trade_agreements(Purpose),
    bilateral_confidentiality_arrangement(ThirdCountry, Arrangement),
    multilateral_confidentiality_arrangement(ThirdCountry, Arrangement),
    adequate_level_of_confidentiality(Arrangement).
declared(natural_or_legal_person/1, 'natural or legal person', 'celex:32024R1689/oj#art_78').
declared(involved_in_application_of_regulation/1, 'person involved in application of the regulation', 'celex:32024R1689/oj#art_78').
declared(authority_involved_in_application/1, 'authority involved in application of the regulation', 'celex:32024R1689/oj#art_78').
declared(assessment_of_risk_posed_by_ai_systems/1, 'purpose of assessing risk posed by AI systems', 'celex:32024R1689/oj#art_78').
declared(exercise_of_powers/1, 'purpose of exercising powers', 'celex:32024R1689/oj#art_78').
declared(data_requested/3, 'authority requests data for a purpose', 'celex:32024R1689/oj#art_78').
declared(strictly_necessary/2, 'data is strictly necessary for a purpose', 'celex:32024R1689/oj#art_78').
declared(obtains_information_or_data/2, 'authority obtains information or data', 'celex:32024R1689/oj#art_78').
declared(adequate_and_effective_cybersecurity_measures/2, 'authority implements cybersecurity measures for data', 'celex:32024R1689/oj#art_78').
declared(collects_data/3, 'authority collects data for a purpose', 'celex:32024R1689/oj#art_78').
declared(still_needed/2, 'data is still needed for a purpose', 'celex:32024R1689/oj#art_78').
declared(deletes_data/2, 'authority deletes data', 'celex:32024R1689/oj#art_78').
declared(exchanged_on_confidential_basis/1, 'information exchanged on confidential basis', 'celex:32024R1689/oj#art_78').
declared(high_risk_ai_system_used_by_law_enforcement/1, 'high-risk AI system used by law enforcement', 'celex:32024R1689/oj#art_78').
declared(disclosure_would_jeopardise_public_or_national_security/1, 'disclosure would jeopardise public or national security', 'celex:32024R1689/oj#art_78').
declared(uses/2, 'deployer uses an AI system', 'celex:32024R1689/oj#art_78').
declared(high_risk_ai_system_referred_to_in_annex_3/1, 'high-risk AI system referred to in Annex III', 'celex:32024R1689/oj#art_78').
declared(provides/2, 'provider provides an AI system', 'celex:32024R1689/oj#art_78').
declared(technical_documentation/2, 'technical documentation of an AI system', 'celex:32024R1689/oj#art_78').
declared(remains_on_premises/2, 'documentation remains on premises of an authority', 'celex:32024R1689/oj#art_78').
declared(immigration_authority/1, 'immigration authority', 'celex:32024R1689/oj#art_78').
declared(asylum_authority/1, 'asylum authority', 'celex:32024R1689/oj#art_78').
declared(referred_to_in_art_74_par_8_or_par_9/1, 'market surveillance authority referred to in Article 74(8) or (9)', 'celex:32024R1689/oj#art_78').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_78').
declared(necessary_for_purpose/2, 'exchange is necessary for a purpose', 'celex:32024R1689/oj#art_78').
declared(relevant_provisions_of_international_agreements/1, 'relevant provisions of international agreements', 'celex:32024R1689/oj#art_78').
declared(relevant_provisions_of_trade_agreements/1, 'relevant provisions of trade agreements', 'celex:32024R1689/oj#art_78').
declared(bilateral_confidentiality_arrangement/2, 'bilateral confidentiality arrangement with a third country', 'celex:32024R1689/oj#art_78').
declared(multilateral_confidentiality_arrangement/2, 'multilateral confidentiality arrangement with a third country', 'celex:32024R1689/oj#art_78').
declared(adequate_level_of_confidentiality/1, 'arrangement guarantees adequate level of confidentiality', 'celex:32024R1689/oj#art_78').
authority_involved_in_application(commission).
authority_involved_in_application(A) :- market_surveillance_authority(A).
authority_involved_in_application(A) :- notified_body(A).
authority_involved_in_application(A) :- national_competent_authority(A).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(protected_information/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/1, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_exchange/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/2, 'celex:32024R1689/oj#art_78').
provenance(technical_documentation_remains_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country/2, 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').

% ==== celex:32024R1689/oj#art_79 ====
declared(ai_system_presenting_risk/1, 'AI system presenting a risk to health, safety, or fundamental rights of persons', 'celex:32024R1689/oj#art_79').
declared(sufficient_reason_to_consider_risk/2, 'market surveillance authority has sufficient reason to consider an AI system presents a risk', 'celex:32024R1689/oj#art_79').
declared(evaluation_of_compliance/2, 'market surveillance authority carries out evaluation of AI system compliance with requirements and obligations', 'celex:32024R1689/oj#art_79').
declared(particular_attention_to_vulnerable_groups/2, 'particular attention given to AI systems presenting risk to vulnerable groups', 'celex:32024R1689/oj#art_79').
declared(risk_to_fundamental_rights_identified/1, 'risks to fundamental rights identified during evaluation', 'celex:32024R1689/oj#art_79').
declared(must_inform_and_cooperate_with_national_authorities/2, 'market surveillance authority informs and fully cooperates with relevant national public authorities', 'celex:32024R1689/oj#art_79').
declared(must_cooperate_with_authority/2, 'operator cooperates as necessary with market surveillance authority and national public authorities', 'celex:32024R1689/oj#art_79').
declared(non_compliance_found/2, 'market surveillance authority finds AI system does not comply with requirements and obligations', 'celex:32024R1689/oj#art_79').
declared(must_take_corrective_actions/2, 'operator required to take corrective actions, withdraw, or recall AI system', 'celex:32024R1689/oj#art_79').
declared(corrective_action_period/2, 'period prescribed for corrective action, shorter of 15 working days or harmonisation legislation', 'celex:32024R1689/oj#art_79').
declared(must_inform_notified_body/2, 'market surveillance authority informs relevant notified body', 'celex:32024R1689/oj#art_79').
declared(non_compliance_not_restricted_to_national_territory/1, 'non-compliance is not restricted to national territory', 'celex:32024R1689/oj#art_79').
declared(must_inform_commission_and_member_states/3, 'market surveillance authority informs Commission and other Member States of evaluation results and required actions', 'celex:32024R1689/oj#art_79').
declared(must_ensure_corrective_action_union_market/2, 'operator ensures all appropriate corrective action taken for all AI systems made available on Union market', 'celex:32024R1689/oj#art_79').
declared(inadequate_corrective_action/2, 'operator does not take adequate corrective action within prescribed period', 'celex:32024R1689/oj#art_79').
declared(must_take_provisional_measures/2, 'market surveillance authority takes provisional measures to prohibit, restrict, withdraw, or recall', 'celex:32024R1689/oj#art_79').
declared(must_notify_commission_and_member_states_of_measures/2, 'market surveillance authority notifies Commission and other Member States of provisional measures', 'celex:32024R1689/oj#art_79').
declared(notification_includes_details/2, 'notification includes all available details about non-compliant AI system', 'celex:32024R1689/oj#art_79').
declared(non_compliance_cause/2, 'indication of cause of non-compliance', 'celex:32024R1689/oj#art_79').
declared(must_inform_of_measures_and_additional_info/2, 'other market surveillance authorities inform Commission and Member States of measures and additional information', 'celex:32024R1689/oj#art_79').
declared(provisional_measure_deemed_justified/1, 'provisional measure deemed justified after three months without objection', 'celex:32024R1689/oj#art_79').
declared(objection_raised/2, 'objection raised by market surveillance authority or Commission', 'celex:32024R1689/oj#art_79').
declared(reduced_justification_period_for_art_5_non_compliance/1, 'three-month period reduced to 30 days for non-compliance with Article 5 prohibitions', 'celex:32024R1689/oj#art_79').
declared(must_take_restrictive_measures/2, 'market surveillance authorities ensure appropriate restrictive measures taken without undue delay', 'celex:32024R1689/oj#art_79').
ai_system_presenting_risk(S) :-
    ai_system(S),
    risk_to_health_or_safety_or_fundamental_rights(S).
risk_to_health_or_safety_or_fundamental_rights(S) :-
    risk_to_health_or_safety(S).
risk_to_health_or_safety_or_fundamental_rights(S) :-
    risk_to_fundamental_rights(S).
risk_to_health_or_safety(S) :-
    ai_system_presenting_risk(S),
    risk_to_health(S).
risk_to_health_or_safety(S) :-
    ai_system_presenting_risk(S),
    risk_to_safety(S).
risk_to_fundamental_rights(S) :-
    ai_system_presenting_risk(S).
sufficient_reason_to_consider_risk(MSA, S) :-
    market_surveillance_authority(MSA),
    ai_system(S),
    ai_system_presenting_risk(S).
evaluation_of_compliance(MSA, S) :-
    market_surveillance_authority(MSA),
    ai_system(S),
    sufficient_reason_to_consider_risk(MSA, S).
particular_attention_to_vulnerable_groups(MSA, S) :-
    evaluation_of_compliance(MSA, S),
    ai_system_presenting_risk_to_vulnerable_groups(S).
ai_system_presenting_risk_to_vulnerable_groups(S) :-
    ai_system_presenting_risk(S),
    presents_risk_to_vulnerable_groups(S).
risk_to_fundamental_rights_identified(S) :-
    evaluation_of_compliance(_MSA, S),
    risk_to_fundamental_rights(S).
must_inform_and_cooperate_with_national_authorities(MSA, S) :-
    market_surveillance_authority(MSA),
    risk_to_fundamental_rights_identified(S).
must_cooperate_with_authority(O, MSA) :-
    operator(O),
    market_surveillance_authority(MSA),
    evaluation_of_compliance(MSA, _S).
non_compliance_found(MSA, S) :-
    market_surveillance_authority(MSA),
    evaluation_of_compliance(MSA, S),
    \+ complies_with_requirements_and_obligations(S).
complies_with_requirements_and_obligations(S) :-
    ai_system(S),
    meets_all_requirements(S),
    meets_all_obligations(S).
must_take_corrective_actions(O, S) :-
    operator(O),
    non_compliance_found(_MSA, S),
    related_to_operator(O, S).
corrective_action_period(S, period(shorter_of(days(15), harmonisation_legislation_period))) :-
    non_compliance_found(_MSA, S).
must_inform_notified_body(MSA, NB) :-
    market_surveillance_authority(MSA),
    notified_body(NB),
    non_compliance_found(MSA, _S).
non_compliance_not_restricted_to_national_territory(S) :-
    non_compliance_found(_MSA, S),
    non_compliance_extends_beyond_national_territory(S).
must_inform_commission_and_member_states(MSA, Results, Actions) :-
    market_surveillance_authority(MSA),
    non_compliance_not_restricted_to_national_territory(_S),
    evaluation_results(Results),
    required_actions(Actions).
must_ensure_corrective_action_union_market(O, S) :-
    operator(O),
    non_compliance_found(_MSA, S),
    made_available_on_union_market(O, S).
inadequate_corrective_action(O, S) :-
    operator(O),
    non_compliance_found(_MSA, S),
    \+ adequate_corrective_action_taken(O, S).
must_take_provisional_measures(MSA, S) :-
    market_surveillance_authority(MSA),
    inadequate_corrective_action(_O, S).
must_notify_commission_and_member_states_of_measures(MSA, Measures) :-
    market_surveillance_authority(MSA),
    must_take_provisional_measures(MSA, _S),
    provisional_measures(Measures).
notification_includes_details(Notification, Details) :-
    notification(Notification),
    includes_identification_of_system(Details),
    includes_origin_and_supply_chain(Details),
    includes_nature_of_non_compliance(Details),
    includes_risk_involved(Details),
    includes_nature_and_duration_of_measures(Details),
    includes_operator_arguments(Details).
non_compliance_cause(S, prohibition_art_5) :-
    non_compliance_found(_MSA, S),
    non_compliance_with_art_5_prohibition(S).
non_compliance_cause(S, high_risk_requirements_chp_3_sec_2) :-
    non_compliance_found(_MSA, S),
    failure_of_high_risk_system_requirements(S).
non_compliance_cause(S, shortcomings_harmonised_standards) :-
    non_compliance_found(_MSA, S),
    shortcomings_in_harmonised_standards_or_common_specifications(S).
non_compliance_cause(S, non_compliance_art_50) :-
    non_compliance_found(_MSA, S),
    non_compliance_with_art_50(S).
must_inform_of_measures_and_additional_info(MSA, Info) :-
    market_surveillance_authority(MSA),
    \+ initiating_authority(MSA),
    measures_adopted(MSA, _Measures),
    additional_information(Info).
provisional_measure_deemed_justified(Measure) :-
    provisional_measure(Measure),
    within_period(months(3)),
    \+ objection_raised(_Authority, Measure).
objection_raised(MSA, Measure) :-
    market_surveillance_authority(MSA),
    objects_to_measure(MSA, Measure).
objection_raised(commission, Measure) :-
    objects_to_measure(commission, Measure).
reduced_justification_period_for_art_5_non_compliance(Measure) :-
    provisional_measure(Measure),
    non_compliance_cause(_S, prohibition_art_5),
    within_period(days(30)),
    \+ objection_raised(_Authority, Measure).
must_take_restrictive_measures(MSA, S) :-
    market_surveillance_authority(MSA),
    ai_system(S),
    non_compliance_found(MSA, S).
provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_of_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(particular_attention_to_vulnerable_groups/2, 'celex:32024R1689/oj#art_79').
provenance(risk_to_fundamental_rights_identified/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate_with_national_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_found/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_79').
provenance(corrective_action_period/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/3, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action_union_market/2, 'celex:32024R1689/oj#art_79').
provenance(inadequate_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_member_states_of_measures/2, 'celex:32024R1689/oj#art_79').
provenance(notification_includes_details/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_cause/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_measures_and_additional_info/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_79').
provenance(reduced_justification_period_for_art_5_non_compliance/1, 'celex:32024R1689/oj#art_79').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').

% ==== celex:32024R1689/oj#art_80 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_80').
declared(classified_non_high_risk_by_provider/2, 'provider classified AI system as non-high-risk', 'celex:32024R1689/oj#art_80').
declared(sufficient_reason_to_consider_high_risk/2, 'market surveillance authority has sufficient reason to consider system is high-risk', 'celex:32024R1689/oj#art_80').
declared(evaluation_of_classification/2, 'market surveillance authority evaluates classification of AI system', 'celex:32024R1689/oj#art_80').
declared(found_high_risk_in_evaluation/2, 'market surveillance authority finds AI system is high-risk in evaluation', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/1, 'use of AI system is not restricted to national territory', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent_requirements/2, 'provider misclassified AI system as non-high-risk to circumvent requirements', 'celex:32024R1689/oj#art_80').
declared(subject_to_fines/2, 'entity is subject to fines under Article 99', 'celex:32024R1689/oj#art_80').
declared(adequate_corrective_action_taken/2, 'provider has taken adequate corrective action for AI system', 'celex:32024R1689/oj#art_80').
declared(all_ai_systems_made_available_on_union_market/2, 'all AI systems concerned made available on Union market by provider', 'celex:32024R1689/oj#art_80').
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_non_high_risk_by_provider(P, S),
    sufficient_reason_to_consider_high_risk(Authority, S),
    evaluation_of_classification(Authority, S).
must_require_compliance_actions(Authority, P, S, Period) :-
    market_surveillance_authority(Authority),
    provider(P),
    ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    high_risk_ai_system(S).
must_inform_commission_and_member_states(Authority, Results, Actions) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    must_carry_out_evaluation(Authority, S),
    use_not_restricted_to_national_territory(S),
    evaluation_of_classification(Authority, S).
must_ensure_compliance(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    must_require_compliance_actions(Authority, P, S, _Period).
subject_to_fines(P, failure_to_comply_within_period(S, Period)) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    must_require_compliance_actions(Authority, P, S, Period),
    \+ adequate_corrective_action_taken(P, S).
must_ensure_corrective_action_all_systems(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    all_ai_systems_made_available_on_union_market(P, S).
art_79_par_5_to_9_applies(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    must_require_compliance_actions(Authority, P, S, Period),
    \+ adequate_corrective_action_taken(P, S).
subject_to_fines(P, misclassification_to_circumvent(S)) :-
    provider(P),
    ai_system(S),
    must_carry_out_evaluation(Authority, S),
    misclassified_to_circumvent_requirements(P, S).
permitted_checks(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_non_high_risk_by_provider(_P, S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_80').
provenance(classified_non_high_risk_by_provider/2, 'celex:32024R1689/oj#art_80').
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/2, 'celex:32024R1689/oj#art_80').
provenance(found_high_risk_in_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(adequate_corrective_action_taken/2, 'celex:32024R1689/oj#art_80').
provenance(all_ai_systems_made_available_on_union_market/2, 'celex:32024R1689/oj#art_80').
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance_actions/4, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/3, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_80').
provenance(art_79_par_5_to_9_applies/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_checks/2, 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_6').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_7').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_9').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

% ==== celex:32024R1689/oj#art_81 ====
declared(commission_consultation_triggered/1, 'Commission enters into consultation under Union safeguard procedure', 'celex:32024R1689/oj#art_81').
declared(commission_evaluation/1, 'Commission evaluates the national measure', 'celex:32024R1689/oj#art_81').
declared(commission_decision/1, 'Commission decides whether national measure is justified', 'celex:32024R1689/oj#art_81').
declared(national_measure_justified/1, 'Commission considers the national measure justified', 'celex:32024R1689/oj#art_81').
declared(national_measure_unjustified/1, 'Commission considers the national measure unjustified', 'celex:32024R1689/oj#art_81').
declared(objection_raised/2, 'market surveillance authority of a Member State raises objection to a measure', 'celex:32024R1689/oj#art_81').
declared(commission_considers_contrary_to_union_law/1, 'Commission considers the measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(non_compliance_with_prohibition/1, 'non-compliance with the prohibition of AI practices under Article 5', 'celex:32024R1689/oj#art_81').
declared(notification_received/1, 'notification under Article 79(5) received by Commission', 'celex:32024R1689/oj#art_81').
declared(restrictive_measure_required/1, 'Member State must take appropriate restrictive measures', 'celex:32024R1689/oj#art_81').
declared(withdrawal_of_measure_required/1, 'Member State must withdraw the national measure', 'celex:32024R1689/oj#art_81').
declared(shortcomings_in_standards/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
commission_consultation_triggered(Measure) :-
    market_surveillance_authority(MSA1),
    market_surveillance_authority(MSA2),
    MSA1 \= MSA2,
    objection_raised(MSA1, Measure),
    measure_taken_by(MSA2, Measure),
    notification_received(Measure).
commission_consultation_triggered(Measure) :-
    commission_considers_contrary_to_union_law(Measure).
commission_evaluation(Measure) :-
    commission_consultation_triggered(Measure),
    market_surveillance_authority(MSA),
    operator(O),
    commission_enters_consultation_with(MSA, O),
    commission_evaluates(Measure).
commission_decision(Measure) :-
    commission_evaluation(Measure),
    notification_received(Measure),
    \+ non_compliance_with_prohibition(Measure),
    within_period(months(6), from(notification_received(Measure))).
commission_decision(Measure) :-
    commission_evaluation(Measure),
    notification_received(Measure),
    non_compliance_with_prohibition(Measure),
    within_period(days(60), from(notification_received(Measure))).
objection_raised(MSA, Measure) :-
    market_surveillance_authority(MSA),
    notification_received(Measure),
    \+ non_compliance_with_prohibition(Measure),
    within_period(months(3), from(notification_received(Measure))).
objection_raised(MSA, Measure) :-
    market_surveillance_authority(MSA),
    notification_received(Measure),
    non_compliance_with_prohibition(Measure),
    within_period(days(30), from(notification_received(Measure))).
national_measure_justified(Measure) :-
    commission_decision(Measure),
    commission_decides_justified(Measure).
national_measure_unjustified(Measure) :-
    commission_decision(Measure),
    commission_decides_unjustified(Measure).
restrictive_measure_required(S) :-
    ai_system(S),
    national_measure_justified(measure(S)),
    member_state(MS),
    must_take_restrictive_measures(MS, S).
withdrawal_of_measure_required(Measure) :-
    national_measure_unjustified(Measure),
    member_state(MS),
    measure_taken_by(MS, Measure),
    must_withdraw_measure(MS, Measure).
shortcomings_in_standards(Measure) :-
    national_measure_justified(Measure),
    ai_system(S),
    measure(S, Measure),
    non_compliance_of(S),
    attributed_to_shortcomings_in_harmonised_standards(S).
shortcomings_in_standards(Measure) :-
    national_measure_justified(Measure),
    ai_system(S),
    measure(S, Measure),
    non_compliance_of(S),
    attributed_to_shortcomings_in_common_specifications(S).
must_apply_procedure(Measure) :-
    shortcomings_in_standards(Measure),
    procedure_provided_for('celex:32012R1025/oj#art_11').
declared(measure_taken_by/2, 'market surveillance authority took a measure', 'celex:32024R1689/oj#art_81').
declared(measure/2, 'measure concerning an AI system', 'celex:32024R1689/oj#art_81').
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_81').
declared(within_period/2, 'event occurs within a period from a reference point', 'celex:32024R1689/oj#art_81').
declared(from/1, 'reference point for time period', 'celex:32024R1689/oj#art_81').
declared(commission_enters_consultation_with/2, 'Commission enters into consultation with parties', 'celex:32024R1689/oj#art_81').
declared(commission_evaluates/1, 'Commission evaluates a measure', 'celex:32024R1689/oj#art_81').
declared(commission_decides_justified/1, 'Commission decides measure is justified', 'celex:32024R1689/oj#art_81').
declared(commission_decides_unjustified/1, 'Commission decides measure is unjustified', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member State must take restrictive measures', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_measure/2, 'Member State must withdraw measure', 'celex:32024R1689/oj#art_81').
declared(non_compliance_of/1, 'AI system is non-compliant', 'celex:32024R1689/oj#art_81').
declared(attributed_to_shortcomings_in_harmonised_standards/1, 'non-compliance due to shortcomings in harmonised standards', 'celex:32024R1689/oj#art_81').
declared(attributed_to_shortcomings_in_common_specifications/1, 'non-compliance due to shortcomings in common specifications', 'celex:32024R1689/oj#art_81').
declared(procedure_provided_for/1, 'procedure provided for in a referenced act', 'celex:32024R1689/oj#art_81').
must_notify_decision(Commission, MSA) :-
    commission_decision(Measure),
    measure_taken_by(MSA, Measure),
    commission_notifies_decision(Commission, MSA, Measure).
must_inform_other_authorities(Commission, MSA) :-
    commission_decision(Measure),
    market_surveillance_authority(MSA),
    MSA \= MSA_concerned,
    measure_taken_by(MSA_concerned, Measure),
    commission_informs(Commission, MSA, Measure).
must_ensure_restrictive_measures(MS, S) :-
    national_measure_justified(measure(S)),
    member_state(MS),
    ai_system(S),
    ensure_restrictive_measures(MS, S).
must_inform_commission_restrictive(MS, S) :-
    national_measure_justified(measure(S)),
    member_state(MS),
    ai_system(S),
    inform_commission(MS, restrictive_measures_taken(S)).
must_withdraw_measure(MS, Measure) :-
    national_measure_unjustified(Measure),
    member_state(MS),
    measure_taken_by(MS, Measure).
must_inform_commission_withdrawal(MS, Measure) :-
    national_measure_unjustified(Measure),
    member_state(MS),
    measure_taken_by(MS, Measure),
    inform_commission(MS, withdrawal_of(Measure)).
must_apply_procedure(Commission, Measure) :-
    shortcomings_in_standards(Measure),
    apply_procedure(Commission, 'celex:32012R1025/oj#art_11').
declared(commission_notifies_decision/3, 'Commission notifies decision to authority', 'celex:32024R1689/oj#art_81').
declared(commission_informs/3, 'Commission informs authority of decision', 'celex:32024R1689/oj#art_81').
declared(ensure_restrictive_measures/2, 'Member State ensures restrictive measures', 'celex:32024R1689/oj#art_81').
declared(inform_commission/2, 'Member State informs Commission', 'celex:32024R1689/oj#art_81').
declared(withdrawal_of/1, 'withdrawal of a measure', 'celex:32024R1689/oj#art_81').
declared(restrictive_measures_taken/1, 'restrictive measures taken concerning an AI system', 'celex:32024R1689/oj#art_81').
declared(apply_procedure/2, 'Commission applies a procedure', 'celex:32024R1689/oj#art_81').
provenance(commission_consultation_triggered/1, 'celex:32024R1689/oj#art_81').
provenance(commission_evaluation/1, 'celex:32024R1689/oj#art_81').
provenance(commission_decision/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_union_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_prohibition/1, 'celex:32024R1689/oj#art_81').
provenance(notification_received/1, 'celex:32024R1689/oj#art_81').
provenance(restrictive_measure_required/1, 'celex:32024R1689/oj#art_81').
provenance(withdrawal_of_measure_required/1, 'celex:32024R1689/oj#art_81').
provenance(shortcomings_in_standards/1, 'celex:32024R1689/oj#art_81').
provenance(measure_taken_by/2, 'celex:32024R1689/oj#art_81').
provenance(measure/2, 'celex:32024R1689/oj#art_81').
provenance(member_state/1, 'celex:32024R1689/oj#art_81').
provenance(within_period/2, 'celex:32024R1689/oj#art_81').
provenance(from/1, 'celex:32024R1689/oj#art_81').
provenance(commission_enters_consultation_with/2, 'celex:32024R1689/oj#art_81').
provenance(commission_evaluates/1, 'celex:32024R1689/oj#art_81').
provenance(commission_decides_justified/1, 'celex:32024R1689/oj#art_81').
provenance(commission_decides_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_of/1, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_shortcomings_in_harmonised_standards/1, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_shortcomings_in_common_specifications/1, 'celex:32024R1689/oj#art_81').
provenance(procedure_provided_for/1, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/3, 'celex:32024R1689/oj#art_81').
provenance(must_inform_other_authorities/3, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_restrictive/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_withdrawal/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(commission_notifies_decision/3, 'celex:32024R1689/oj#art_81').
provenance(commission_informs/3, 'celex:32024R1689/oj#art_81').
provenance(ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(withdrawal_of/1, 'celex:32024R1689/oj#art_81').
provenance(restrictive_measures_taken/1, 'celex:32024R1689/oj#art_81').
provenance(apply_procedure/2, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_82').
declared(presents_risk/1, 'AI system presents a risk to health, safety, fundamental rights, or public interest', 'celex:32024R1689/oj#art_82').
declared(compliant_ai_system/1, 'AI system complies with the regulation', 'celex:32024R1689/oj#art_82').
declared(evaluation_under_art_79/1, 'evaluation performed under Article 79', 'celex:32024R1689/oj#art_82').
declared(consulted_national_public_authority/2, 'market surveillance authority consulted the national public authority', 'celex:32024R1689/oj#art_82').
declared(finding_of_risk/2, 'market surveillance authority finds that a compliant high-risk AI system presents a risk', 'celex:32024R1689/oj#art_82').
declared(risk_to_health_or_safety/1, 'risk to the health or safety of persons', 'celex:32024R1689/oj#art_82').
declared(risk_to_fundamental_rights/1, 'risk to fundamental rights', 'celex:32024R1689/oj#art_82').
declared(risk_to_public_interest/1, 'risk to other aspects of public interest protection', 'celex:32024R1689/oj#art_82').
declared(corrective_action_taken/2, 'operator ensures corrective action is taken for AI system', 'celex:32024R1689/oj#art_82').
declared(made_available_on_union_market/2, 'operator has made AI system available on the Union market', 'celex:32024R1689/oj#art_82').
declared(member_state_informs_commission/2, 'Member State immediately informs the Commission of a finding', 'celex:32024R1689/oj#art_82').
declared(member_state_informs_other_member_states/2, 'Member State immediately informs other Member States of a finding', 'celex:32024R1689/oj#art_82').
declared(commission_consults/2, 'Commission enters into consultation with Member States and operators', 'celex:32024R1689/oj#art_82').
declared(commission_evaluates_national_measures/2, 'Commission evaluates the national measures taken', 'celex:32024R1689/oj#art_82').
declared(commission_decides_justification/2, 'Commission decides whether the national measure is justified', 'celex:32024R1689/oj#art_82').
declared(commission_proposes_other_measures/2, 'Commission proposes other appropriate measures where necessary', 'celex:32024R1689/oj#art_82').
declared(commission_communicates_decision/3, 'Commission immediately communicates its decision to Member States and operators', 'celex:32024R1689/oj#art_82').
declared(commission_informs_other_member_states/2, 'Commission informs the other Member States of its decision', 'celex:32024R1689/oj#art_82').
declared(prescribed_period/2, 'period prescribed by the market surveillance authority', 'celex:32024R1689/oj#art_82').
declared(without_undue_delay/1, 'action taken without undue delay', 'celex:32024R1689/oj#art_82').
risk_to_health_or_safety(S) :-
    presents_risk(S),
    risk_to_health_or_safety_of_persons(S).
risk_to_fundamental_rights(S) :-
    presents_risk(S),
    risk_to_fundamental_rights_of_persons(S).
risk_to_public_interest(S) :-
    presents_risk(S),
    risk_to_other_aspects_of_public_interest_protection(S).
presents_risk(S) :-
    risk_to_health_or_safety(S).
presents_risk(S) :-
    risk_to_fundamental_rights(S).
presents_risk(S) :-
    risk_to_public_interest(S).
finding_of_risk(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    compliant_ai_system(S),
    evaluation_under_art_79(S),
    consulted_national_public_authority(MSA, S),
    presents_risk(S).
must_take_appropriate_measures(MSA, S) :-
    finding_of_risk(MSA, S),
    must_eliminate_risk(MSA, S).
must_eliminate_risk(MSA, S) :-
    finding_of_risk(MSA, S),
    prescribed_period(MSA, Period),
    without_undue_delay(within(Period)).
must_ensure_no_risk_when_placed(MSA, S) :-
    finding_of_risk(MSA, S),
    must_eliminate_risk(MSA, S).
must_take_corrective_action(Operator, S) :-
    operator(Operator),
    finding_of_risk(_MSA, S),
    made_available_on_union_market(Operator, S),
    corrective_action_taken(Operator, S).
must_ensure_corrective_action_all_systems(Operator, S) :-
    operator(Operator),
    finding_of_risk(MSA, S),
    made_available_on_union_market(Operator, S),
    prescribed_period(MSA, Period),
    corrective_action_taken(Operator, within(Period, S)).
must_inform_commission(MemberState, Finding) :-
    member_state(MemberState),
    finding_of_risk(_MSA, S),
    Finding = finding(S),
    member_state_informs_commission(MemberState, Finding).
must_inform_other_member_states(MemberState, Finding) :-
    member_state(MemberState),
    finding_of_risk(_MSA, S),
    Finding = finding(S),
    member_state_informs_other_member_states(MemberState, Finding).
must_consult(Commission, MemberStates) :-
    finding_of_risk(_MSA, S),
    commission_consults(Commission, MemberStates).
must_evaluate_national_measures(Commission, Measures) :-
    finding_of_risk(_MSA, S),
    commission_evaluates_national_measures(Commission, Measures).
must_decide_justification(Commission, Measure) :-
    finding_of_risk(_MSA, S),
    commission_decides_justification(Commission, Measure).
must_propose_other_measures(Commission, Measures) :-
    finding_of_risk(_MSA, S),
    commission_proposes_other_measures(Commission, Measures).
must_communicate_decision(Commission, MemberStates, Operators) :-
    finding_of_risk(_MSA, S),
    commission_communicates_decision(Commission, MemberStates, Operators).
must_inform_other_member_states_decision(Commission, MemberStates) :-
    finding_of_risk(_MSA, S),
    commission_informs_other_member_states(Commission, MemberStates).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_82').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_82').
provenance(compliant_ai_system/1, 'celex:32024R1689/oj#art_82').
provenance(evaluation_under_art_79/1, 'celex:32024R1689/oj#art_82').
provenance(consulted_national_public_authority/2, 'celex:32024R1689/oj#art_82').
provenance(finding_of_risk/2, 'celex:32024R1689/oj#art_82').
provenance(risk_to_health_or_safety/1, 'celex:32024R1689/oj#art_82').
provenance(risk_to_fundamental_rights/1, 'celex:32024R1689/oj#art_82').
provenance(risk_to_public_interest/1, 'celex:32024R1689/oj#art_82').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_82').
provenance(made_available_on_union_market/2, 'celex:32024R1689/oj#art_82').
provenance(member_state_informs_commission/2, 'celex:32024R1689/oj#art_82').
provenance(member_state_informs_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(commission_consults/2, 'celex:32024R1689/oj#art_82').
provenance(commission_evaluates_national_measures/2, 'celex:32024R1689/oj#art_82').
provenance(commission_decides_justification/2, 'celex:32024R1689/oj#art_82').
provenance(commission_proposes_other_measures/2, 'celex:32024R1689/oj#art_82').
provenance(commission_communicates_decision/3, 'celex:32024R1689/oj#art_82').
provenance(commission_informs_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(prescribed_period/2, 'celex:32024R1689/oj#art_82').
provenance(without_undue_delay/1, 'celex:32024R1689/oj#art_82').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_eliminate_risk/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_no_risk_when_placed/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_82').
provenance(must_propose_other_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/3, 'celex:32024R1689/oj#art_82').
provenance(must_inform_other_member_states_decision/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(formal_non_compliance/1, 'finding of formal non-compliance by market surveillance authority', 'celex:32024R1689/oj#art_83').
declared(ce_marking_affixed_in_violation/1, 'CE marking affixed in violation of Article 48', 'celex:32024R1689/oj#art_83').
declared(ce_marking_not_affixed/1, 'CE marking has not been affixed', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_of_conformity_not_drawn_up/1, 'EU declaration of conformity has not been drawn up', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'EU declaration of conformity has not been drawn up correctly', 'celex:32024R1689/oj#art_83').
declared(registration_in_eu_database_not_carried_out/1, 'registration in the EU database has not been carried out', 'celex:32024R1689/oj#art_83').
declared(no_authorised_representative_appointed/1, 'no authorised representative has been appointed where applicable', 'celex:32024R1689/oj#art_83').
declared(technical_documentation_not_available/1, 'technical documentation is not available', 'celex:32024R1689/oj#art_83').
declared(must_put_end_to_non_compliance/2, 'market surveillance authority requires provider to put an end to non-compliance', 'celex:32024R1689/oj#art_83').
declared(must_take_restriction_measures/2, 'market surveillance authority takes measures to restrict, prohibit, recall or withdraw', 'celex:32024R1689/oj#art_83').
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_affixed_in_violation(S).
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_not_affixed(S).
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up(S).
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up_correctly(S).
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    registration_in_eu_database_not_carried_out(S).
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    no_authorised_representative_appointed(S).
formal_non_compliance(S) :-
    market_surveillance_authority(A),
    ai_system(S),
    technical_documentation_not_available(S).
must_put_end_to_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    provider(P),
    formal_non_compliance(S),
    requires_end_to_non_compliance(Authority, P, S).
must_take_restriction_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(S),
    non_compliance_persists(S),
    restrict_or_prohibit_or_recall_or_withdraw(Authority, S).
requires_end_to_non_compliance(Authority, Provider, S) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_non_compliance(S).
non_compliance_persists(S) :-
    formal_non_compliance(S).
restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    restrict_market_availability(Authority, S).
restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    prohibit_market_availability(Authority, S).
restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    recall_of_ai_system(S).
restrict_or_prohibit_or_recall_or_withdraw(Authority, S) :-
    market_surveillance_authority(Authority),
    withdrawal_of_ai_system(S).
restrict_market_availability(Authority, S) :-
    market_surveillance_authority(Authority),
    making_available_on_market(S).
prohibit_market_availability(Authority, S) :-
    market_surveillance_authority(Authority),
    making_available_on_market(S).
provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_in_eu_database_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(no_authorised_representative_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(must_put_end_to_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'structure designated by the Commission to perform AI testing support tasks', 'celex:32024R1689/oj#art_84').
declared(designated_by_commission/2, 'first argument designated by second argument', 'celex:32024R1689/oj#art_84').
declared(must_designate/2, 'first argument obliged to designate second argument', 'celex:32024R1689/oj#art_84').
declared(performs_ai_testing_support_tasks/1, 'structure performs tasks listed under Regulation 2019/1020 Article 21(6) in the area of AI', 'celex:32024R1689/oj#art_84').
declared(provides_independent_advice/3, 'first argument provides independent technical or scientific advice at request of second to third', 'celex:32024R1689/oj#art_84').
declared(board/1, 'the Board referred to in the AI Act', 'celex:32024R1689/oj#art_84').
must_designate(commission, union_ai_testing_support_structure(S)) :-
    designated_by_commission(S, commission),
    union_ai_testing_support_structure(S).
union_ai_testing_support_structure(S) :-
    designated_by_commission(S, commission),
    performs_ai_testing_support_tasks(S).
performs_ai_testing_support_tasks(S) :-
    union_ai_testing_support_structure(S).
provides_independent_advice(S, board, market_surveillance_authority(A)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).
provides_independent_advice(S, board, commission) :-
    union_ai_testing_support_structure(S).
provides_independent_advice(S, commission, market_surveillance_authority(A)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).
provides_independent_advice(S, commission, commission) :-
    union_ai_testing_support_structure(S).
provides_independent_advice(S, market_surveillance_authority(A), board) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).
provides_independent_advice(S, market_surveillance_authority(A), commission) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A).
provides_independent_advice(S, market_surveillance_authority(A), market_surveillance_authority(B)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(A),
    market_surveillance_authority(B).
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(designated_by_commission/2, 'celex:32024R1689/oj#art_84').
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(performs_ai_testing_support_tasks/1, 'celex:32024R1689/oj#art_84').
provenance(provides_independent_advice/3, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(may_lodge_complaint/2, 'person may lodge complaint with market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(complaint_grounds/2, 'person has grounds to consider infringement of regulation', 'celex:32024R1689/oj#art_85').
declared(complaint_taken_into_account/2, 'complaint taken into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(complaint_handled_with_dedicated_procedures/2, 'complaint handled in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
may_lodge_complaint(Person, Authority) :-
    market_surveillance_authority(Authority),
    complaint_grounds(Person, infringement).
complaint_grounds(Person, infringement) :-
    natural_or_legal_person(Person),
    considers_infringement(Person).
natural_or_legal_person(Person) :-
    person(Person).
considers_infringement(Person) :-
    has_grounds(Person, infringement_of_regulation).
complaint_taken_into_account(Complaint, market_surveillance_activities) :-
    may_lodge_complaint(_Person, Authority),
    market_surveillance_authority(Authority),
    complaint_submitted_to(Complaint, Authority).
complaint_handled_with_dedicated_procedures(Complaint, Authority) :-
    complaint_taken_into_account(Complaint, market_surveillance_activities),
    market_surveillance_authority(Authority),
    dedicated_procedures_established(Authority).
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_grounds/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_with_dedicated_procedures/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_86').
declared(affected_person/1, 'natural person subject to a decision', 'celex:32024R1689/oj#art_86').
declared(decision_taken_by_deployer/2, 'decision taken by deployer on basis of AI system output', 'celex:32024R1689/oj#art_86').
declared(legal_effects/1, 'produces legal effects', 'celex:32024R1689/oj#art_86').
declared(similarly_significantly_affects/1, 'similarly significantly affects the person', 'celex:32024R1689/oj#art_86').
declared(adverse_impact_on_health_safety_fundamental_rights/1, 'adverse impact on health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(right_to_explanation/1, 'right to obtain clear and meaningful explanations', 'celex:32024R1689/oj#art_86').
declared(annex_3_point_2_exception/1, 'system listed under point 2 of Annex III', 'celex:32024R1689/oj#art_86').
declared(exception_from_union_or_national_law/1, 'exception or restriction follows from Union or national law in compliance with Union law', 'celex:32024R1689/oj#art_86').
declared(right_otherwise_provided_under_union_law/1, 'right to explanation otherwise provided for under Union law', 'celex:32024R1689/oj#art_86').
high_risk_ai_system(S) :-
    ai_system(S),
    listed_in_annex_3(S).
listed_in_annex_3(S) :-
    high_risk_ai_system(S).
right_to_explanation(P) :-
    affected_person(P),
    decision_taken_by_deployer(P, D),
    deployer(D),
    high_risk_ai_system(S),
    decision_based_on_output(P, S),
    \+ annex_3_point_2_exception(S),
    produces_legal_effects_or_similarly_significantly_affects(P),
    adverse_impact_on_health_safety_fundamental_rights(P).
decision_based_on_output(P, S) :-
    decision_taken_by_deployer(P, D),
    output_from(S, O),
    decision_based_on(P, O).
produces_legal_effects_or_similarly_significantly_affects(P) :-
    legal_effects(P).
produces_legal_effects_or_similarly_significantly_affects(P) :-
    similarly_significantly_affects(P).
must_provide_explanation(D, P) :-
    deployer(D),
    right_to_explanation(P),
    decision_taken_by_deployer(P, D).
must_provide_explanation(D, explanation(role_of_ai_system, main_elements_of_decision)) :-
    deployer(D),
    right_to_explanation(P),
    decision_taken_by_deployer(P, D).
exempt_right_to_explanation(P) :-
    affected_person(P),
    exception_from_union_or_national_law(P).
exempt_right_to_explanation(P) :-
    affected_person(P),
    right_otherwise_provided_under_union_law(P).
right_to_explanation_applies(P) :-
    right_to_explanation(P),
    \+ exempt_right_to_explanation(P).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_86').
provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(decision_taken_by_deployer/2, 'celex:32024R1689/oj#art_86').
provenance(legal_effects/1, 'celex:32024R1689/oj#art_86').
provenance(similarly_significantly_affects/1, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_on_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(annex_3_point_2_exception/1, 'celex:32024R1689/oj#art_86').
provenance(exception_from_union_or_national_law/1, 'celex:32024R1689/oj#art_86').
provenance(right_otherwise_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(exempt_right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation_applies/1, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(whistleblower_protection_applies/1, 'Directive 2019/1937 applies to reporting of infringements and protection of reporting persons', 'celex:32024R1689/oj#art_87').
whistleblower_protection_applies(reporting(infringement(ai_act), person)).
provenance(whistleblower_protection_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(exclusive_power/2, 'entity has exclusive power over a subject matter', 'celex:32024R1689/oj#art_88').
declared(entrusted_implementation/2, 'entity entrusted with implementation of tasks by another entity', 'celex:32024R1689/oj#art_88').
declared(may_request_commission/2, 'entity may request Commission to exercise powers', 'celex:32024R1689/oj#art_88').
exclusive_power(commission, supervision_and_enforcement_chapter_5).
entrusted_implementation(ai_office, supervision_and_enforcement_chapter_5) :-
    exclusive_power(commission, supervision_and_enforcement_chapter_5).
may_request_commission(market_surveillance_authority, exercise_powers_chapter_9_section_5) :-
    market_surveillance_authority(_A).
provenance(exclusive_power/2, 'celex:32024R1689/oj#art_88').
provenance(entrusted_implementation/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_commission/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
must_take_monitoring_actions(ai_office, general_purpose_ai_model) :-
    ai_office(ai_office),
    general_purpose_ai_model(G),
    provider_of_general_purpose_ai_model(P, G),
    purpose(monitoring_effective_implementation_and_compliance(P, G)).
may_lodge_complaint(DP, infringement(G)) :-
    downstream_provider(DP),
    general_purpose_ai_model(G),
    provider_of_general_purpose_ai_model(P, G),
    alleged_infringement_by_provider(P, G).
complaint_duly_reasoned(C) :-
    complaint_indicates_point_of_contact(C, _P),
    complaint_describes_relevant_facts(C),
    complaint_identifies_provisions_concerned(C),
    complaint_states_reason_for_infringement(C).
complaint_includes_other_relevant_information(C) :-
    complaint_sent_by_downstream_provider(C, _DP).
provider_of_general_purpose_ai_model(P, G) :-
    provider(P),
    general_purpose_ai_model(G).
purpose(monitoring_effective_implementation_and_compliance(P, G)) :-
    provider(P),
    general_purpose_ai_model(G).
alleged_infringement_by_provider(P, G) :-
    provider(P),
    general_purpose_ai_model(G).
complaint_sent_by_downstream_provider(C, DP) :-
    downstream_provider(DP).
provenance(must_take_monitoring_actions/2, 'celex:32024R1689/oj#art_89').
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_describes_relevant_facts/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_identifies_provisions_concerned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_states_reason_for_infringement/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_includes_other_relevant_information/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'independent scientific panel established under this Regulation', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/2, 'duly reasoned alert by the scientific panel to the AI Office', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'general-purpose AI model posing concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_article_51/1, 'general-purpose AI model meeting conditions referred to in Article 51', 'celex:32024R1689/oj#art_90').
declared(reason_to_suspect/2, 'scientific panel has reason to suspect a state of affairs', 'celex:32024R1689/oj#art_90').
declared(may_provide_qualified_alert/2, 'scientific panel may provide qualified alert to AI Office', 'celex:32024R1689/oj#art_90').
declared(commission_may_exercise_powers/2, 'Commission through AI Office may exercise powers for purpose of assessing matter', 'celex:32024R1689/oj#art_90').
declared(informed_board/1, 'Board has been informed', 'celex:32024R1689/oj#art_90').
declared(ai_office_shall_inform_board/2, 'AI Office shall inform Board of any measure', 'celex:32024R1689/oj#art_90').
declared(duly_reasoned/1, 'qualified alert is duly reasoned', 'celex:32024R1689/oj#art_90').
declared(indicates_point_of_contact/2, 'qualified alert indicates point of contact of provider', 'celex:32024R1689/oj#art_90').
declared(describes_relevant_facts_and_reasons/2, 'qualified alert describes relevant facts and reasons', 'celex:32024R1689/oj#art_90').
declared(includes_other_relevant_information/2, 'qualified alert includes other relevant information', 'celex:32024R1689/oj#art_90').
declared(information_gathered_on_own_initiative/1, 'information gathered by scientific panel on its own initiative', 'celex:32024R1689/oj#art_90').
may_provide_qualified_alert(Panel, Alert) :-
    scientific_panel(Panel),
    qualified_alert(Alert, ai_office),
    reason_to_suspect(Panel, concrete_identifiable_risk_at_union_level(M)),
    general_purpose_ai_model(M).
may_provide_qualified_alert(Panel, Alert) :-
    scientific_panel(Panel),
    qualified_alert(Alert, ai_office),
    reason_to_suspect(Panel, meets_conditions_article_51(M)),
    general_purpose_ai_model(M).
commission_may_exercise_powers(Commission, Matter) :-
    qualified_alert(Alert, ai_office),
    ai_office(Office),
    informed_board(Board),
    assessing_matter(Matter).
ai_office_shall_inform_board(Office, Measure) :-
    ai_office(Office),
    measure(Measure),
    according_to_articles(Measure).
qualified_alert(Alert, ai_office) :-
    duly_reasoned(Alert),
    indicates_point_of_contact(Alert, Provider),
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(M),
    describes_relevant_facts_and_reasons(Alert, scientific_panel),
    includes_other_relevant_information(Alert, scientific_panel).
includes_other_relevant_information(Alert, Panel) :-
    information_gathered_on_own_initiative(Info),
    scientific_panel(Panel),
    alert_includes(Alert, Info).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_article_51/1, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(commission_may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(informed_board/1, 'celex:32024R1689/oj#art_90').
provenance(ai_office_shall_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(describes_relevant_facts_and_reasons/2, 'celex:32024R1689/oj#art_90').
provenance(includes_other_relevant_information/2, 'celex:32024R1689/oj#art_90').
provenance(information_gathered_on_own_initiative/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(must_supply_information/2, 'provider or representative obliged to supply requested information', 'celex:32024R1689/oj#art_91').
declared(may_request_documentation/2, 'Commission may request documentation from provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(may_request_information/2, 'Commission may request information from provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before sending request', 'celex:32024R1689/oj#art_91').
declared(may_issue_request_for_information/2, 'Commission may issue request for information to provider upon substantiated request from scientific panel', 'celex:32024R1689/oj#art_91').
declared(request_states_legal_basis/1, 'request for information states legal basis', 'celex:32024R1689/oj#art_91').
declared(request_states_purpose/1, 'request for information states purpose', 'celex:32024R1689/oj#art_91').
declared(request_specifies_information_required/1, 'request for information specifies what information is required', 'celex:32024R1689/oj#art_91').
declared(request_sets_period/1, 'request for information sets period within which information is to be provided', 'celex:32024R1689/oj#art_91').
declared(request_indicates_fines/1, 'request for information indicates fines for incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_91').
declared(authorised_representative_may_supply_information/2, 'persons authorised to represent provider may supply information on behalf of provider', 'celex:32024R1689/oj#art_91').
declared(lawyer_may_supply_information/2, 'lawyers duly authorised to act may supply information on behalf of clients', 'celex:32024R1689/oj#art_91').
declared(client_remains_responsible/2, 'client remains fully responsible if information supplied is incomplete, incorrect or misleading', 'celex:32024R1689/oj#art_91').
may_request_documentation(commission, P) :-
    provider(P),
    general_purpose_ai_model(P).
may_request_information(commission, P) :-
    provider(P),
    general_purpose_ai_model(P),
    necessary_for_assessing_compliance(P).
may_initiate_structured_dialogue(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(P).
may_issue_request_for_information(commission, P) :-
    provider(P),
    general_purpose_ai_model(P),
    duly_substantiated_request(scientific_panel),
    necessary_and_proportionate_for_scientific_panel_tasks(P).
must_supply_information(P, information(requested)) :-
    provider(P),
    general_purpose_ai_model(P).
must_supply_information(R, information(requested)) :-
    authorised_representative(R),
    represents(R, P),
    provider(P),
    general_purpose_ai_model(P).
authorised_representative_may_supply_information(R, P) :-
    authorised_representative(R),
    represents(R, P),
    provider(P),
    general_purpose_ai_model(P).
lawyer_may_supply_information(L, P) :-
    lawyer(L),
    duly_authorised_to_act(L),
    client(L, P),
    provider(P),
    general_purpose_ai_model(P).
client_remains_responsible(P, information(supplied)) :-
    provider(P),
    general_purpose_ai_model(P),
    supplied_by_lawyer(P),
    incomplete_or_incorrect_or_misleading(information(supplied)).
request_states_legal_basis(request(R)) :-
    request_for_information(R).
request_states_purpose(request(R)) :-
    request_for_information(R).
request_specifies_information_required(request(R)) :-
    request_for_information(R).
request_sets_period(request(R)) :-
    request_for_information(R).
request_indicates_fines(request(R)) :-
    request_for_information(R).
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information_required/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(authorised_representative_may_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(lawyer_may_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(client_remains_responsible/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(may_conduct_evaluation/2, 'AI Office may conduct evaluation of a general-purpose AI model for a purpose', 'celex:32024R1689/oj#art_92').
declared(evaluation_purpose_assess_compliance/1, 'evaluation purpose is to assess provider compliance with obligations', 'celex:32024R1689/oj#art_92').
declared(evaluation_purpose_investigate_systemic_risk/1, 'evaluation purpose is to investigate systemic risks at Union level', 'celex:32024R1689/oj#art_92').
declared(insufficient_information_gathered/1, 'information gathered pursuant to Article 91 is insufficient', 'celex:32024R1689/oj#art_92').
declared(qualified_alert_from_scientific_panel/1, 'qualified alert from scientific panel received', 'celex:32024R1689/oj#art_92').
declared(may_appoint_independent_expert/2, 'Commission may appoint independent expert to carry out evaluation on its behalf', 'celex:32024R1689/oj#art_92').
declared(independent_expert_from_scientific_panel/1, 'independent expert appointed from scientific panel', 'celex:32024R1689/oj#art_92').
declared(independent_expert_meets_criteria/1, 'independent expert meets criteria outlined in Article 68(2)', 'celex:32024R1689/oj#art_92').
declared(may_request_access/3, 'Commission may request access to general-purpose AI model through specified means', 'celex:32024R1689/oj#art_92').
declared(access_request_states/4, 'access request states legal basis, purpose, reasons, and period', 'celex:32024R1689/oj#art_92').
declared(must_supply_requested_information/2, 'provider or representative must supply requested information', 'celex:32024R1689/oj#art_92').
declared(must_provide_access_on_behalf/2, 'authorised representative must provide access on behalf of provider', 'celex:32024R1689/oj#art_92').
declared(shall_adopt_implementing_act/2, 'Commission shall adopt implementing act setting out arrangements', 'celex:32024R1689/oj#art_92').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    consulted_board.
may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    evaluation_purpose_assess_compliance(M),
    insufficient_information_gathered(M).
may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    evaluation_purpose_investigate_systemic_risk(M),
    general_purpose_ai_model(M),
    systemic_risk(M),
    qualified_alert_from_scientific_panel(M).
evaluation_purpose_assess_compliance(M) :-
    provider(P),
    general_purpose_ai_model(M),
    obligation_under_regulation(P).
evaluation_purpose_investigate_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
insufficient_information_gathered(M) :-
    general_purpose_ai_model(M),
    information_gathered_pursuant_to_art_91(M),
    insufficient(information_gathered_pursuant_to_art_91(M)).
qualified_alert_from_scientific_panel(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    alert(qualified, scientific_panel, M).
may_appoint_independent_expert(commission, E) :-
    independent_expert(E),
    carries_out_evaluation_on_behalf_of_commission(E).
may_appoint_independent_expert(commission, E) :-
    independent_expert_from_scientific_panel(E),
    independent_expert_meets_criteria(E).
independent_expert_from_scientific_panel(E) :-
    independent_expert(E),
    member_of_scientific_panel(E).
independent_expert_meets_criteria(E) :-
    independent_expert(E),
    meets_criteria_art_68_par_2(E).
may_request_access(commission, M, Means) :-
    general_purpose_ai_model(M),
    access_means(Means),
    appropriate_technical_means(Means).
access_means(api).
access_means(source_code).
access_means(further_appropriate_technical_means).
appropriate_technical_means(api).
appropriate_technical_means(source_code).
appropriate_technical_means(further_appropriate_technical_means).
access_request_states(Request, LegalBasis, PurposeReasons, Period) :-
    request_for_access(Request),
    states_legal_basis(Request, LegalBasis),
    states_purpose_and_reasons(Request, PurposeReasons),
    sets_period(Request, Period),
    states_fines_art_101(Request).
must_supply_requested_information(Provider, Information) :-
    provider(Provider),
    general_purpose_ai_model(M),
    information_requested(Information, M),
    requested_by_commission(Information).
must_supply_requested_information(Representative, Information) :-
    authorised_representative(Representative),
    provider(Provider),
    general_purpose_ai_model(M),
    information_requested(Information, M),
    requested_by_commission(Information),
    represents(Representative, Provider).
must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    legal_person(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_law(AuthorisedPerson, Provider).
must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    company(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_statutes(AuthorisedPerson, Provider).
must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    firm(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_law(AuthorisedPerson, Provider).
must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    no_legal_personality(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_law(AuthorisedPerson, Provider).
must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    no_legal_personality(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_statutes(AuthorisedPerson, Provider).
shall_adopt_implementing_act(commission, evaluations) :-
    sets_out_detailed_arrangements(evaluations),
    sets_out_conditions(evaluations),
    includes_arrangements_for_involving_independent_experts(evaluations),
    includes_procedure_for_selection(evaluations),
    adopted_in_accordance_with_examination_procedure_art_98_par_2.
may_initiate_structured_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    prior_to_requesting_access(M).
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_assess_compliance/1, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_investigate_systemic_risk/1, 'celex:32024R1689/oj#art_92').
provenance(insufficient_information_gathered/1, 'celex:32024R1689/oj#art_92').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_expert/2, 'celex:32024R1689/oj#art_92').
provenance(independent_expert_from_scientific_panel/1, 'celex:32024R1689/oj#art_92').
provenance(independent_expert_meets_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/3, 'celex:32024R1689/oj#art_92').
provenance(access_request_states/4, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access_on_behalf/2, 'celex:32024R1689/oj#art_92').
provenance(shall_adopt_implementing_act/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
must_take_measures_to_comply(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, comply_with_obligations(art_53, art_54)).
must_implement_mitigation_measures(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_at_union_level(Model),
    evaluation_under_article_92(Model, Evaluation),
    serious_and_substantiated_concern(Evaluation),
    commission_requests_measure(commission, Provider, implement_mitigation_measures).
must_restrict_making_available(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, restrict_making_available_on_market(Model)).
must_withdraw_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, withdraw(Model)).
must_recall_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, recall(Model)).
may_initiate_structured_dialogue(AIOffice, Provider, Model) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model(Model),
    before_measure_requested(Provider, Model).
may_make_commitments_binding(Commission, Provider, Model, Commitments) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_at_union_level(Model),
    offers_commitments(Provider, Model, Commitments),
    mitigation_measures(Commitments),
    structured_dialogue_initiated(ai_office, Provider, Model).
offers_commitments(Provider, Model, Commitments) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_at_union_level(Model),
    mitigation_measures(Commitments).
provenance(must_take_measures_to_comply/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_making_available/2, 'celex:32024R1689/oj#art_93').
provenance(must_withdraw_model/2, 'celex:32024R1689/oj#art_93').
provenance(must_recall_model/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_structured_dialogue/3, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/4, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments/3, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_93').
provenance(serious_and_substantiated_concern/1, 'celex:32024R1689/oj#art_93').
provenance(evaluation_under_article_92/2, 'celex:32024R1689/oj#art_93').
provenance(mitigation_measures/1, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply/1, 'economic operators of general-purpose AI models have procedural rights under Regulation 2019/1020 Article 18 applied mutatis mutandis', 'celex:32024R1689/oj#art_94').
procedural_rights_apply(P) :-
    provider(P),
    general_purpose_ai_model(P).
provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(must_encourage_codes_of_conduct/2, 'AI Office and Member States shall encourage and facilitate drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(must_facilitate_codes_of_conduct/2, 'AI Office and Member States shall facilitate drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_voluntary_application/1, 'codes of conduct for voluntary application of specific requirements to AI systems', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_governance_mechanism/1, 'codes of conduct including related governance mechanisms', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_objective/1, 'codes of conduct with clear objectives and key performance indicators', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_kpi/1, 'key performance indicators to measure achievement of objectives', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_element/1, 'element included in codes of conduct', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_ethical_guidelines/1, 'applicable elements from Union ethical guidelines for trustworthy AI', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_environmental_sustainability/1, 'assessing and minimising impact on environmental sustainability', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_energy_efficient/1, 'energy-efficient programming and techniques for efficient design, training and use', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_ai_literacy/1, 'promoting AI literacy of persons dealing with development, operation and use', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_inclusive_design/1, 'facilitating inclusive and diverse design of AI systems', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_inclusive_teams/1, 'establishment of inclusive and diverse development teams', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_stakeholder_participation/1, 'promotion of stakeholders participation in design process', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_vulnerable_persons/1, 'assessing and preventing negative impact on vulnerable persons or groups', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_accessibility/1, 'accessibility for persons with a disability', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_gender_equality/1, 'impact on gender equality', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_drawn_up_by/2, 'codes of conduct drawn up by actor', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_involvement/1, 'involvement of interested stakeholders and representative organisations', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_cover_systems/2, 'codes of conduct cover AI systems taking into account similarity of intended purpose', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account_sme_needs/2, 'AI Office and Member States shall take into account specific interests and needs of SMEs including start-ups', 'celex:32024R1689/oj#art_95').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_95').
declared(start_up/1, 'start-up enterprise', 'celex:32024R1689/oj#art_95').
must_encourage_codes_of_conduct(ai_office, codes_of_conduct_voluntary_application(C)) :-
    codes_of_conduct_voluntary_application(C),
    codes_of_conduct_governance_mechanism(C),
    voluntary_application_requirements(C, S),
    \+ high_risk_ai_system(S).
must_encourage_codes_of_conduct(member_state(M), codes_of_conduct_voluntary_application(C)) :-
    codes_of_conduct_voluntary_application(C),
    codes_of_conduct_governance_mechanism(C),
    voluntary_application_requirements(C, S),
    \+ high_risk_ai_system(S).
must_facilitate_codes_of_conduct(ai_office, codes_of_conduct_objective(C)) :-
    codes_of_conduct_objective(C),
    codes_of_conduct_kpi(C),
    voluntary_application_requirements(C, _S).
must_facilitate_codes_of_conduct(member_state(M), codes_of_conduct_objective(C)) :-
    codes_of_conduct_objective(C),
    codes_of_conduct_kpi(C),
    voluntary_application_requirements(C, _S).
codes_of_conduct_element(C, ethical_guidelines) :-
    codes_of_conduct_ethical_guidelines(C).
codes_of_conduct_element(C, environmental_sustainability) :-
    codes_of_conduct_environmental_sustainability(C),
    codes_of_conduct_energy_efficient(C).
codes_of_conduct_element(C, ai_literacy) :-
    codes_of_conduct_ai_literacy(C).
codes_of_conduct_element(C, inclusive_design) :-
    codes_of_conduct_inclusive_design(C),
    codes_of_conduct_inclusive_teams(C),
    codes_of_conduct_stakeholder_participation(C).
codes_of_conduct_element(C, vulnerable_persons) :-
    codes_of_conduct_vulnerable_persons(C),
    codes_of_conduct_accessibility(C).
codes_of_conduct_element(C, gender_equality) :-
    codes_of_conduct_gender_equality(C).
codes_of_conduct_drawn_up_by(C, provider(P)) :-
    provider(P).
codes_of_conduct_drawn_up_by(C, deployer(D)) :-
    deployer(D).
codes_of_conduct_drawn_up_by(C, organisation(O)) :-
    organisation_representing(O, providers_or_deployers).
codes_of_conduct_drawn_up_by(C, organisation(O)) :-
    organisation_representing(O, providers_or_deployers),
    codes_of_conduct_involvement(C).
codes_of_conduct_cover_systems(C, S) :-
    ai_system(S),
    intended_purpose(S, P),
    similar_intended_purpose(S, P).
must_take_into_account_sme_needs(ai_office, sme_needs(S)) :-
    sme(S).
must_take_into_account_sme_needs(ai_office, sme_needs(S)) :-
    start_up(S).
must_take_into_account_sme_needs(member_state(M), sme_needs(S)) :-
    sme(S).
must_take_into_account_sme_needs(member_state(M), sme_needs(S)) :-
    start_up(S).
provenance(must_encourage_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_voluntary_application/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_governance_mechanism/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_objective/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_kpi/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_element/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_ethical_guidelines/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_environmental_sustainability/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_energy_efficient/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_ai_literacy/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_inclusive_design/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_inclusive_teams/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_stakeholder_participation/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_vulnerable_persons/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_accessibility/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_gender_equality/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_involvement/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_cover_systems/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').
provenance(sme/1, 'celex:32024R1689/oj#art_95').
provenance(start_up/1, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'who is obliged, what guidelines about', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'who is obliged, what guidelines to update', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover/2, 'guidelines, topic they cover', 'celex:32024R1689/oj#art_96').
declared(guidelines_attention_to/2, 'guidelines, party whose needs are considered', 'celex:32024R1689/oj#art_96').
declared(guidelines_account_for/2, 'guidelines, thing taken into account', 'celex:32024R1689/oj#art_96').
declared(smes/1, 'small and medium-sized enterprises', 'celex:32024R1689/oj#art_96').
declared(start_ups/1, 'start-up enterprises', 'celex:32024R1689/oj#art_96').
declared(local_public_authorities/1, 'local public authorities', 'celex:32024R1689/oj#art_96').
declared(member_states/1, 'Member States of the Union', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(commission, practical_implementation(regulation)).
must_develop_guidelines(commission, application_requirements_obligations).
guidelines_cover(practical_implementation(regulation), application_requirements_obligations).
guidelines_cover(practical_implementation(regulation), prohibited_practices).
guidelines_cover(practical_implementation(regulation), substantial_modification).
guidelines_cover(practical_implementation(regulation), transparency_obligations).
guidelines_cover(practical_implementation(regulation), relationship_with_union_harmonisation_legislation).
guidelines_cover(practical_implementation(regulation), definition_of_ai_system).
guidelines_attention_to(practical_implementation(regulation), smes).
guidelines_attention_to(practical_implementation(regulation), start_ups).
guidelines_attention_to(practical_implementation(regulation), local_public_authorities).
guidelines_attention_to(practical_implementation(regulation), most_affected_sectors).
guidelines_account_for(practical_implementation(regulation), generally_acknowledged_state_of_art_on_ai).
guidelines_account_for(practical_implementation(regulation), harmonised_standards).
guidelines_account_for(practical_implementation(regulation), common_specifications).
guidelines_account_for(practical_implementation(regulation), technical_specifications_pursuant_to_union_harmonisation_law).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    member_states(MemberStates),
    request_update(MemberStates, commission).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    ai_office(AIOffice),
    request_update(AIOffice, commission).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    own_initiative(commission).
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_attention_to/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_account_for/2, 'celex:32024R1689/oj#art_96').
provenance(smes/1, 'celex:32024R1689/oj#art_96').
provenance(start_ups/1, 'celex:32024R1689/oj#art_96').
provenance(local_public_authorities/1, 'celex:32024R1689/oj#art_96').
provenance(member_states/1, 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').

% ==== celex:32024R1689/oj#art_97 ====
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_97').
declared(european_parliament/1, 'the European Parliament', 'celex:32024R1689/oj#art_97').
declared(council/1, 'the Council of the European Union', 'celex:32024R1689/oj#art_97').
declared(delegated_act/1, 'act adopted by the Commission under delegated power', 'celex:32024R1689/oj#art_97').
declared(delegation_of_power/1, 'power to adopt delegated acts conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(member_state/1, 'a Member State of the European Union', 'celex:32024R1689/oj#art_97').
declared(expert/1, 'expert designated by a Member State for consultation', 'celex:32024R1689/oj#art_97').
declared(power_conferred_on_commission/1, 'delegated power is conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(delegation_period/1, 'delegation of power is for a period of five years from 1 August 2024', 'celex:32024R1689/oj#art_97').
declared(tacit_extension/1, 'delegation of power is tacitly extended for identical periods', 'celex:32024R1689/oj#art_97').
declared(report_on_delegation/1, 'Commission draws up a report on the delegation of power', 'celex:32024R1689/oj#art_97').
declared(revocable_by/2, 'delegation of power may be revoked by the given institution', 'celex:32024R1689/oj#art_97').
declared(revocation_ends_delegation/2, 'decision of revocation puts an end to the specified delegation of power', 'celex:32024R1689/oj#art_97').
declared(revocation_takes_effect/2, 'revocation takes effect the day following publication or at a later specified date', 'celex:32024R1689/oj#art_97').
declared(revocation_preserves_validity/2, 'revocation does not affect validity of delegated acts already in force', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts/2, 'Commission must consult experts designated by each Member State before adopting a delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission must notify a delegated act simultaneously to the given institution', 'celex:32024R1689/oj#art_97').
declared(enters_into_force/1, 'delegated act enters into force under the specified conditions', 'celex:32024R1689/oj#art_97').
declared(no_objection/2, 'no objection expressed by the given institution within the period', 'celex:32024R1689/oj#art_97').
declared(informed_no_objection/2, 'institution has informed the Commission it will not object', 'celex:32024R1689/oj#art_97').
declared(objection_period/1, 'period for objection is three months from notification', 'celex:32024R1689/oj#art_97').
declared(period_extended/1, 'objection period is extended by three months at initiative of Parliament or Council', 'celex:32024R1689/oj#art_97').
power_conferred_on_commission(D) :-
    delegation_of_power(D),
    commission(C),
    conferred_on(D, C).
conferred_on(D, commission).
delegation_period(D) :-
    delegation_of_power(D),
    period(years(5), from(date(2024, 8, 1))).
period(years(5), from(date(2024, 8, 1))).
report_on_delegation(D) :-
    delegation_of_power(D),
    commission(C),
    must_draw_up_report(C, D, before(months(9), end_of(period(years(5))))).
must_draw_up_report(commission, D, Deadline) :-
    delegation_of_power(D),
    before(months(9), end_of(period(years(5)))).
tacit_extension(D) :-
    delegation_of_power(D),
    \+ opposed_extension(D, european_parliament),
    \+ opposed_extension(D, council),
    before(months(3), end_of(period(years(5)))).
opposed_extension(D, I) :-
    delegation_of_power(D),
    institution(I),
    opposes_extension(I, D).
institution(european_parliament).
institution(council).
revocable_by(D, european_parliament) :-
    delegation_of_power(D).
revocable_by(D, council) :-
    delegation_of_power(D).
revocation_ends_delegation(Decision, D) :-
    decision_of_revocation(Decision),
    specifies_delegation(Decision, D),
    delegation_of_power(D).
revocation_takes_effect(Decision, Date) :-
    decision_of_revocation(Decision),
    published_in_official_journal(Decision, PubDate),
    Date is next_day(PubDate).
revocation_takes_effect(Decision, LaterDate) :-
    decision_of_revocation(Decision),
    specifies_later_date(Decision, LaterDate).
revocation_preserves_validity(Decision, Act) :-
    decision_of_revocation(Decision),
    delegated_act(Act),
    in_force_before(Act, Decision).
must_consult_experts(commission, Act) :-
    delegated_act(Act),
    before_adopting(Act),
    member_state(MS),
    expert(E),
    designated_by(E, MS).
must_notify(commission, Act) :-
    delegated_act(Act),
    as_soon_as_adopted(Act),
    notify_simultaneously(Act, european_parliament),
    notify_simultaneously(Act, council).
enters_into_force(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, delegation_of_power(_)),
    notified_to(Act, european_parliament),
    notified_to(Act, council),
    no_objection_within(Act, months(3)).
enters_into_force(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, delegation_of_power(_)),
    notified_to(Act, european_parliament),
    notified_to(Act, council),
    informed_no_objection(european_parliament, Act),
    informed_no_objection(council, Act),
    before_expiry_of_period(Act, months(3)).
no_objection_within(Act, Period) :-
    delegated_act(Act),
    \+ objection_expressed(european_parliament, Act, Period),
    \+ objection_expressed(council, Act, Period).
objection_expressed(I, Act, Period) :-
    institution(I),
    delegated_act(Act),
    expresses_objection(I, Act),
    within(Period).
period_extended(Act) :-
    delegated_act(Act),
    initiative(european_parliament, Act);
    initiative(council, Act).
provenance(power_conferred_on_commission/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/1, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(report_on_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(revocable_by/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_ends_delegation/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_preserves_validity/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(enters_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(no_objection/2, 'celex:32024R1689/oj#art_97').
provenance(informed_no_objection/2, 'celex:32024R1689/oj#art_97').
provenance(objection_period/1, 'celex:32024R1689/oj#art_97').
provenance(period_extended/1, 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_47/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_51/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_6').

% ==== celex:32024R1689/oj#art_98 ====
declared(committee_assists_commission/1, 'committee assisting the Commission under committee procedure', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning_of_regulation/1, 'committee within the meaning of Regulation 182/2011', 'celex:32024R1689/oj#art_98').
declared(article_5_of_regulation_182_2011_applies/0, 'Article 5 of Regulation 182/2011 applies where reference is made to Article 98(2)', 'celex:32024R1689/oj#art_98').
committee_assists_commission(C) :-
    committee_within_meaning_of_regulation(C).
committee_within_meaning_of_regulation(C) :-
    committee(C).
article_5_of_regulation_182_2011_applies.
provenance(committee_assists_commission/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/1, 'celex:32024R1689/oj#art_98').
provenance(article_5_of_regulation_182_2011_applies/0, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_99').
declared(administrative_fine/1, 'monetary penalty imposed for infringement', 'celex:32024R1689/oj#art_99').
declared(infringement/1, 'violation of the regulation by an operator', 'celex:32024R1689/oj#art_99').
declared(penalty_rule/1, 'rule on penalties laid down by a Member State', 'celex:32024R1689/oj#art_99').
declared(enforcement_measure/1, 'measure to ensure implementation of penalties', 'celex:32024R1689/oj#art_99').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_99').
declared(start_up/1, 'newly established innovative enterprise', 'celex:32024R1689/oj#art_99').
declared(undertaking/1, 'entity engaged in economic activity', 'celex:32024R1689/oj#art_99').
declared(total_worldwide_annual_turnover/1, 'total worldwide annual turnover of an undertaking', 'celex:32024R1689/oj#art_99').
declared(preceding_financial_year/1, 'financial year before the infringement', 'celex:32024R1689/oj#art_99').
declared(public_authority/1, 'public authority of a Member State', 'celex:32024R1689/oj#art_99').
declared(public_body/1, 'body established under public law', 'celex:32024R1689/oj#art_99').
declared(incorrect_information/1, 'information that is incorrect, incomplete or misleading', 'celex:32024R1689/oj#art_99').
declared(must_lay_down_penalty_rules/2, 'Member State must lay down rules on penalties and enforcement measures', 'celex:32024R1689/oj#art_99').
declared(must_notify_commission/2, 'Member State must notify Commission of penalty rules', 'celex:32024R1689/oj#art_99').
declared(must_report_annually/2, 'Member State must report annually to Commission on fines', 'celex:32024R1689/oj#art_99').
declared(fine_applies/2, 'administrative fine applies to infringement type', 'celex:32024R1689/oj#art_99').
declared(fine_amount/2, 'amount or percentage cap for a fine', 'celex:32024R1689/oj#art_99').
declared(effective_proportionate_dissuasive/1, 'penalty is effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_99').
declared(takes_into_account_sme_interests/1, 'penalty takes into account interests of SMEs and start-ups', 'celex:32024R1689/oj#art_99').
declared(reduced_fine_for_sme/1, 'fine for SME is reduced to lower amount or percentage', 'celex:32024R1689/oj#art_99').
declared(circumstance_for_fine_decision/1, 'circumstance to be taken into account when deciding on fine', 'celex:32024R1689/oj#art_99').
declared(procedural_safeguard_applies/1, 'exercise of powers subject to procedural safeguards', 'celex:32024R1689/oj#art_99').
must_lay_down_penalty_rules(MemberState, PenaltyRule) :-
    member_state(MemberState),
    penalty_rule(PenaltyRule),
    applies_to_infringement(PenaltyRule, infringement(operator(O))),
    effective_proportionate_dissuasive(PenaltyRule),
    takes_into_account_sme_interests(PenaltyRule).
must_notify_commission(MemberState, penalty_rules) :-
    member_state(MemberState),
    without_delay,
    at_latest_by(entry_into_application).
must_notify_commission(MemberState, amendment(PenaltyRule)) :-
    member_state(MemberState),
    penalty_rule(PenaltyRule),
    amendment_to(PenaltyRule),
    without_delay.
must_report_annually(MemberState, administrative_fines_issued) :-
    member_state(MemberState),
    annual_basis,
    report_to(commission).
fine_applies(Fine, noncompliance_with_prohibition(art_5)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_16)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_22)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_23)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_24)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_26)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_31)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_33_par_1)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_33_par_3)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_33_par_4)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_34)) :-
    administrative_fine(Fine).
fine_applies(Fine, noncompliance_with_obligation(art_50)) :-
    administrative_fine(Fine).
fine_applies(Fine, supply_of_incorrect_information) :-
    administrative_fine(Fine).
fine_amount(Fine, eur(35000000)) :-
    fine_applies(Fine, noncompliance_with_prohibition(art_5)),
    \+ undertaking(offender(Fine)).
fine_amount(Fine, percent(7)) :-
    fine_applies(Fine, noncompliance_with_prohibition(art_5)),
    undertaking(offender(Fine)),
    total_worldwide_annual_turnover(offender(Fine), Turnover),
    preceding_financial_year(offender(Fine)),
    Fine is 0.07 * Turnover,
    Fine > 35000000.
fine_amount(Fine, eur(15000000)) :-
    fine_applies(Fine, noncompliance_with_obligation(_)),
    \+ undertaking(offender(Fine)).
fine_amount(Fine, percent(3)) :-
    fine_applies(Fine, noncompliance_with_obligation(_)),
    undertaking(offender(Fine)),
    total_worldwide_annual_turnover(offender(Fine), Turnover),
    preceding_financial_year(offender(Fine)),
    Fine is 0.03 * Turnover,
    Fine > 15000000.
fine_amount(Fine, eur(7500000)) :-
    fine_applies(Fine, supply_of_incorrect_information),
    \+ undertaking(offender(Fine)).
fine_amount(Fine, percent(1)) :-
    fine_applies(Fine, supply_of_incorrect_information),
    undertaking(offender(Fine)),
    total_worldwide_annual_turnover(offender(Fine), Turnover),
    preceding_financial_year(offender(Fine)),
    Fine is 0.01 * Turnover,
    Fine > 7500000.
reduced_fine_for_sme(Fine) :-
    administrative_fine(Fine),
    offender(Fine, O),
    sme(O).
reduced_fine_for_sme(Fine) :-
    administrative_fine(Fine),
    offender(Fine, O),
    start_up(O).
circumstance_for_fine_decision(nature_gravity_duration_of_infringement).
circumstance_for_fine_decision(consequences_of_infringement).
circumstance_for_fine_decision(purpose_of_ai_system).
circumstance_for_fine_decision(number_of_affected_persons).
circumstance_for_fine_decision(level_of_damage_suffered).
circumstance_for_fine_decision(previous_fines_by_market_surveillance_authorities).
circumstance_for_fine_decision(previous_fines_by_other_authorities).
circumstance_for_fine_decision(size_of_operator).
circumstance_for_fine_decision(annual_turnover_of_operator).
circumstance_for_fine_decision(market_share_of_operator).
circumstance_for_fine_decision(aggravating_or_mitigating_factors).
circumstance_for_fine_decision(financial_benefits_gained).
circumstance_for_fine_decision(losses_avoided).
circumstance_for_fine_decision(degree_of_cooperation).
circumstance_for_fine_decision(degree_of_responsibility).
circumstance_for_fine_decision(technical_and_organisational_measures).
circumstance_for_fine_decision(manner_infringement_became_known).
circumstance_for_fine_decision(operator_notified_infringement).
circumstance_for_fine_decision(intentional_or_negligent_character).
circumstance_for_fine_decision(action_taken_to_mitigate_harm).
procedural_safeguard_applies(exercise_of_powers(art_99)).
provenance(member_state/1, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine/1, 'celex:32024R1689/oj#art_99').
provenance(infringement/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_rule/1, 'celex:32024R1689/oj#art_99').
provenance(enforcement_measure/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
provenance(start_up/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
provenance(total_worldwide_annual_turnover/1, 'celex:32024R1689/oj#art_99').
provenance(preceding_financial_year/1, 'celex:32024R1689/oj#art_99').
provenance(public_authority/1, 'celex:32024R1689/oj#art_99').
provenance(public_body/1, 'celex:32024R1689/oj#art_99').
provenance(incorrect_information/1, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_99').
provenance(fine_applies/2, 'celex:32024R1689/oj#art_99').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_99').
provenance(effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_99').
provenance(takes_into_account_sme_interests/1, 'celex:32024R1689/oj#art_99').
provenance(reduced_fine_for_sme/1, 'celex:32024R1689/oj#art_99').
provenance(circumstance_for_fine_decision/1, 'celex:32024R1689/oj#art_99').
provenance(procedural_safeguard_applies/1, 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_24').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_26').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_5').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99').

% ==== celex:32024R1689/oj#art_100 ====
declared(european_data_protection_supervisor/1, 'EDPS, authority imposing fines on Union institutions', 'celex:32024R1689/oj#art_100').
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency subject to EDPS fines', 'celex:32024R1689/oj#art_100').
declared(administrative_fine/2, 'fine imposed by EDPS on a Union entity', 'celex:32024R1689/oj#art_100').
declared(maximum_administrative_fine/2, 'maximum fine amount for a category of infringement', 'celex:32024R1689/oj#art_100').
declared(infringement_category/1, 'category of infringement for fine purposes', 'celex:32024R1689/oj#art_100').
declared(prohibited_ai_practice_infringement/1, 'infringement of Article 5 prohibitions', 'celex:32024R1689/oj#art_100').
declared(other_requirement_infringement/1, 'infringement of requirements other than Article 5', 'celex:32024R1689/oj#art_100').
declared(relevant_circumstance/1, 'circumstance to be taken into account when deciding on a fine', 'celex:32024R1689/oj#art_100').
declared(nature_gravity_duration_of_infringement/1, 'nature, gravity and duration of infringement and consequences', 'celex:32024R1689/oj#art_100').
declared(degree_of_responsibility/1, 'degree of responsibility considering technical and organisational measures', 'celex:32024R1689/oj#art_100').
declared(mitigation_action_taken/1, 'action taken to mitigate damage to affected persons', 'celex:32024R1689/oj#art_100').
declared(degree_of_cooperation/1, 'cooperation with EDPS to remedy infringement', 'celex:32024R1689/oj#art_100').
declared(previous_infringements/1, 'similar previous infringements by the entity', 'celex:32024R1689/oj#art_100').
declared(manner_infringement_became_known/1, 'how infringement became known, including notification', 'celex:32024R1689/oj#art_100').
declared(annual_budget/1, 'annual budget of the Union entity', 'celex:32024R1689/oj#art_100').
declared(must_take_into_account/2, 'EDPS must take into account circumstance when deciding on fine', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'EDPS must give opportunity to be heard before decision', 'celex:32024R1689/oj#art_100').
declared(must_base_decision_on_commentable_elements/1, 'EDPS must base decisions only on elements parties could comment on', 'celex:32024R1689/oj#art_100').
declared(must_associate_complainants/1, 'complainants must be closely associated with proceedings', 'celex:32024R1689/oj#art_100').
declared(rights_of_defence_respected/1, 'rights of defence fully respected in proceedings', 'celex:32024R1689/oj#art_100').
declared(entitled_to_access_file/1, 'parties entitled to access EDPS file subject to legitimate interests', 'celex:32024R1689/oj#art_100').
declared(fines_contribute_to_union_budget/1, 'fines contribute to general budget of the Union', 'celex:32024R1689/oj#art_100').
declared(fines_not_affect_effective_operation/1, 'fines shall not affect effective operation of fined entity', 'celex:32024R1689/oj#art_100').
declared(must_notify_commission_annually/2, 'EDPS must notify Commission annually of fines and litigation', 'celex:32024R1689/oj#art_100').
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(maximum_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(infringement_category/1, 'celex:32024R1689/oj#art_100').
provenance(prohibited_ai_practice_infringement/1, 'celex:32024R1689/oj#art_100').
provenance(other_requirement_infringement/1, 'celex:32024R1689/oj#art_100').
provenance(relevant_circumstance/1, 'celex:32024R1689/oj#art_100').
provenance(nature_gravity_duration_of_infringement/1, 'celex:32024R1689/oj#art_100').
provenance(degree_of_responsibility/1, 'celex:32024R1689/oj#art_100').
provenance(mitigation_action_taken/1, 'celex:32024R1689/oj#art_100').
provenance(degree_of_cooperation/1, 'celex:32024R1689/oj#art_100').
provenance(previous_infringements/1, 'celex:32024R1689/oj#art_100').
provenance(manner_infringement_became_known/1, 'celex:32024R1689/oj#art_100').
provenance(annual_budget/1, 'celex:32024R1689/oj#art_100').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commentable_elements/1, 'celex:32024R1689/oj#art_100').
provenance(must_associate_complainants/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(entitled_to_access_file/1, 'celex:32024R1689/oj#art_100').
provenance(fines_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fines_not_affect_effective_operation/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').
european_data_protection_supervisor(edps).
administrative_fine(edps, E) :-
    union_institution_body_office_or_agency(E).
relevant_circumstance(nature_gravity_duration_of_infringement).
relevant_circumstance(degree_of_responsibility).
relevant_circumstance(mitigation_action_taken).
relevant_circumstance(degree_of_cooperation).
relevant_circumstance(previous_infringements).
relevant_circumstance(manner_infringement_became_known).
relevant_circumstance(annual_budget).
must_take_into_account(edps, C) :-
    relevant_circumstance(C).
infringement_category(prohibited_ai_practice_infringement).
infringement_category(other_requirement_infringement).
maximum_administrative_fine(prohibited_ai_practice_infringement, eur(1500000)).
maximum_administrative_fine(other_requirement_infringement, eur(750000)).
must_give_opportunity_to_be_heard(edps, E) :-
    union_institution_body_office_or_agency(E).
must_base_decision_on_commentable_elements(edps).
must_associate_complainants(edps).
rights_of_defence_respected(edps).
entitled_to_access_file(E) :-
    union_institution_body_office_or_agency(E).
fines_contribute_to_union_budget(edps).
fines_not_affect_effective_operation(E) :-
    union_institution_body_office_or_agency(E).
must_notify_commission_annually(edps, commission).
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(fine_imposed_on_provider/2, 'Commission imposes a fine on a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(fine_amount/2, 'amount of a fine imposed on a provider', 'celex:32024R1689/oj#art_101').
declared(fine_exceeds/2, 'fine exceeds a threshold amount', 'celex:32024R1689/oj#art_101').
declared(annual_total_worldwide_turnover/2, 'annual total worldwide turnover of an entity in a financial year', 'celex:32024R1689/oj#art_101').
declared(preceding_financial_year/1, 'financial year preceding the current one', 'celex:32024R1689/oj#art_101').
declared(commission_finding/2, 'Commission finding of intentional or negligent infringement by a provider', 'celex:32024R1689/oj#art_101').
declared(intentional_or_negligent/1, 'infringement committed intentionally or negligently', 'celex:32024R1689/oj#art_101').
declared(infringed_regulation/1, 'provider infringed relevant provisions of the regulation', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_request/2, 'provider failed to comply with a Commission request for document or information', 'celex:32024R1689/oj#art_101').
declared(supplied_incorrect_information/1, 'provider supplied incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_measure/2, 'provider failed to comply with a measure requested by the Commission', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available_access/2, 'provider failed to make available access to the general-purpose AI model for evaluation', 'celex:32024R1689/oj#art_101').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_101').
declared(evaluation_pursuant_to/2, 'evaluation conducted pursuant to a specific article', 'celex:32024R1689/oj#art_101').
declared(fixing_fine_amount/2, 'Commission fixes fine amount taking into account specified factors', 'celex:32024R1689/oj#art_101').
declared(nature_gravity_duration/1, 'nature, gravity and duration of the infringement', 'celex:32024R1689/oj#art_101').
declared(proportionality_and_appropriateness/1, 'principles of proportionality and appropriateness', 'celex:32024R1689/oj#art_101').
declared(commitments_made/2, 'commitments made by the provider in accordance with specified provisions', 'celex:32024R1689/oj#art_101').
declared(codes_of_practice/1, 'relevant codes of practice', 'celex:32024R1689/oj#art_101').
declared(preliminary_findings_communicated/2, 'Commission communicates preliminary findings to the provider', 'celex:32024R1689/oj#art_101').
declared(opportunity_to_be_heard/1, 'provider given opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(fine_effective_proportionate_dissuasive/1, 'fine is effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_101').
declared(fine_information_communicated_to_board/1, 'information on fine communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(unlimited_jurisdiction_to_review/2, 'Court of Justice has unlimited jurisdiction to review Commission decisions', 'celex:32024R1689/oj#art_101').
declared(may_cancel_reduce_or_increase/2, 'Court may cancel, reduce or increase the fine', 'celex:32024R1689/oj#art_101').
declared(implementing_acts_adopted/1, 'Commission adopts implementing acts with detailed arrangements', 'celex:32024R1689/oj#art_101').
declared(detailed_arrangements_and_procedural_safeguards/1, 'detailed arrangements and procedural safeguards for proceedings', 'celex:32024R1689/oj#art_101').
declared(examination_procedure/1, 'examination procedure referred to in Article 98(2)', 'celex:32024R1689/oj#art_101').
fine_imposed_on_provider(Fine, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_Model),
    commission_finding(Finding, Provider),
    intentional_or_negligent(Finding),
    fine_amount(Fine, Provider).
commission_finding(finding(infringed_regulation), Provider) :-
    provider(Provider),
    infringed_regulation(Provider).
commission_finding(finding(failed_to_comply_with_request(Request)), Provider) :-
    provider(Provider),
    failed_to_comply_with_request(Provider, Request).
commission_finding(finding(supplied_incorrect_information), Provider) :-
    provider(Provider),
    supplied_incorrect_information(Provider).
commission_finding(finding(failed_to_comply_with_measure(Measure)), Provider) :-
    provider(Provider),
    failed_to_comply_with_measure(Provider, Measure).
commission_finding(finding(failed_to_make_available_access(Model)), Provider) :-
    provider(Provider),
    failed_to_make_available_access(Provider, Model).
fine_amount(Fine, Provider) :-
    annual_total_worldwide_turnover(Provider, Turnover),
    preceding_financial_year(Year),
    Fine = max(percent(3, Turnover), eur(15000000)).
fixing_fine_amount(Commission, Fine) :-
    nature_gravity_duration(Infringement),
    proportionality_and_appropriateness(Principles),
    commitments_made(Provider, Commitments),
    codes_of_practice(Codes).
preliminary_findings_communicated(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_Model).
opportunity_to_be_heard(Provider) :-
    provider(Provider),
    general_purpose_ai_model(_Model).
fine_effective_proportionate_dissuasive(Fine) :-
    fine_imposed_on_provider(Fine, _Provider).
fine_information_communicated_to_board(Fine) :-
    fine_imposed_on_provider(Fine, _Provider).
unlimited_jurisdiction_to_review(court_of_justice_of_the_european_union, Fine) :-
    fine_imposed_on_provider(Fine, _Provider).
may_cancel_reduce_or_increase(court_of_justice_of_the_european_union, Fine) :-
    fine_imposed_on_provider(Fine, _Provider).
implementing_acts_adopted(Commission) :-
    detailed_arrangements_and_procedural_safeguards(Arrangements),
    examination_procedure(Procedure).
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).
evaluation_pursuant_to(Model, art_92) :-
    general_purpose_ai_model(Model).
evaluation_pursuant_to(Model, art_92) :-
    general_purpose_ai_model_with_systemic_risk(Model).
provenance(fine_imposed_on_provider/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(fine_exceeds/2, 'celex:32024R1689/oj#art_101').
provenance(annual_total_worldwide_turnover/2, 'celex:32024R1689/oj#art_101').
provenance(preceding_financial_year/1, 'celex:32024R1689/oj#art_101').
provenance(commission_finding/2, 'celex:32024R1689/oj#art_101').
provenance(intentional_or_negligent/1, 'celex:32024R1689/oj#art_101').
provenance(infringed_regulation/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_request/2, 'celex:32024R1689/oj#art_101').
provenance(supplied_incorrect_information/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_measure/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_access/2, 'celex:32024R1689/oj#art_101').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_101').
provenance(evaluation_pursuant_to/2, 'celex:32024R1689/oj#art_101').
provenance(fixing_fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(nature_gravity_duration/1, 'celex:32024R1689/oj#art_101').
provenance(proportionality_and_appropriateness/1, 'celex:32024R1689/oj#art_101').
provenance(commitments_made/2, 'celex:32024R1689/oj#art_101').
provenance(codes_of_practice/1, 'celex:32024R1689/oj#art_101').
provenance(preliminary_findings_communicated/2, 'celex:32024R1689/oj#art_101').
provenance(opportunity_to_be_heard/1, 'celex:32024R1689/oj#art_101').
provenance(fine_effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(fine_information_communicated_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(unlimited_jurisdiction_to_review/2, 'celex:32024R1689/oj#art_101').
provenance(may_cancel_reduce_or_increase/2, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_adopted/1, 'celex:32024R1689/oj#art_101').
provenance(detailed_arrangements_and_procedural_safeguards/1, 'celex:32024R1689/oj#art_101').
provenance(examination_procedure/1, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(must_take_into_account_requirements/2, 'actor adopting detailed measures must take into account AI Act Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_102').
declared(detailed_measures/1, 'detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems', 'celex:32024R1689/oj#art_102').
declared(security_equipment_concerning_ai_systems/1, 'security equipment concerning Artificial Intelligence systems within the meaning of the AI Act', 'celex:32024R1689/oj#art_102').
declared(adopting_detailed_measures/2, 'actor adopting detailed measures', 'celex:32024R1689/oj#art_102').
detailed_measures(M) :-
    security_equipment_concerning_ai_systems(M).
security_equipment_concerning_ai_systems(M) :-
    ai_system(S),
    security_equipment(M, S).
must_take_into_account_requirements(Actor, M) :-
    adopting_detailed_measures(Actor, M),
    detailed_measures(M),
    security_equipment_concerning_ai_systems(M).
adopting_detailed_measures(Actor, M) :-
    detailed_measures(M).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').
provenance(detailed_measures/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment_concerning_ai_systems/1, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures/2, 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_102', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_102', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_102', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_102', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_102', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_103 ====
must_take_into_account_requirements(Commission, DelegatedAct) :-
    delegated_act_concerning_safety_component_ai_system(DelegatedAct),
    ai_system_safety_component(S),
    delegated_act_concerns(DelegatedAct, S).
delegated_act_concerning_safety_component_ai_system(DelegatedAct) :-
    delegated_act(DelegatedAct),
    ai_system_safety_component(S),
    delegated_act_concerns(DelegatedAct, S).
ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
provenance(delegated_act_concerning_safety_component_ai_system/1, 'celex:32024R1689/oj#art_103').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_104 ====
must_take_into_account_requirements(Commission, Act) :-
    delegated_act_concerning_ai_safety_components(Act),
    adopted_by(Commission, Act),
    pursuant_to('celex:32013R0168/oj#art_22/par_5/unp_1').
delegated_act_concerning_ai_safety_components(Act) :-
    concerns(Act, S),
    ai_safety_component_within_meaning_of_ai_act(S).
ai_safety_component_within_meaning_of_ai_act(S) :-
    ai_system(S),
    safety_component(S).
adopted_by(Commission, Act) :-
    commission(Commission),
    adopts(Commission, Act).
concerns(Act, S) :-
    subject_matter(Act, S).
subject_matter(Act, S) :-
    about(Act, S).
about(Act, S) :-
    act_concerns(Act, S).
act_concerns(Act, S) :-
    delegated_act(Act),
    ai_system(S),
    safety_component(S).
commission(commission).
delegated_act(_Act).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(delegated_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_104').
provenance(ai_safety_component_within_meaning_of_ai_act/1, 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_105 ====
declared(must_take_into_account/2, 'Commission must take into account AI Act requirements when carrying out activities and adopting specifications', 'celex:32024R1689/oj#art_105').
declared(ai_system_safety_component/1, 'AI system that is a safety component within the meaning of the AI Act', 'celex:32024R1689/oj#art_105').
must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90),
    adopting_technical_specifications(commission, art_8_par_2, directive_2014_90),
    adopting_testing_standards(commission, art_8_par_3, directive_2014_90).
must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90),
    adopting_technical_specifications(commission, art_8_par_2, directive_2014_90).
must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90),
    adopting_testing_standards(commission, art_8_par_3, directive_2014_90).
must_take_into_account(commission, requirements(chp_3_sec_2)) :-
    ai_system_safety_component(S),
    carrying_out_activities(commission, art_8_par_1, directive_2014_90).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_105').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_5').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_105', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_105', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_106 ====
declared(must_take_into_account_requirements/2, 'obligation to consider Chapter 3 Section 2 requirements when adopting delegated or implementing acts concerning AI systems that are safety components', 'celex:32024R1689/oj#art_106').
declared(ai_system_safety_component/1, 'AI system that is a safety component within the meaning of the AI Act', 'celex:32024R1689/oj#art_106').
declared(delegated_or_implementing_act/1, 'delegated act or implementing act adopted under Regulation 2016/797', 'celex:32024R1689/oj#art_106').
delegated_or_implementing_act(A) :-
    delegated_act(A).
delegated_or_implementing_act(A) :-
    implementing_act(A).
must_take_into_account_requirements(A, S) :-
    delegated_or_implementing_act(A),
    ai_system_safety_component(S),
    act_concerns(A, S).
act_concerns(A, S) :-
    adopts_delegated_act_under(A, 'celex:32016L0797/oj#art_5/par_1'),
    concerns_ai_system_safety_component(A, S).
act_concerns(A, S) :-
    adopts_implementing_act_under(A, 'celex:32016L0797/oj#art_5/par_11'),
    concerns_ai_system_safety_component(A, S).
concerns_ai_system_safety_component(A, S) :-
    ai_system_safety_component(S),
    subject_matter(A, S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_106').
provenance(delegated_or_implementing_act/1, 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_107 ====
must_take_into_account_requirements(Commission, 'celex:32018R0858/oj', S) :-
    commission(Commission),
    delegated_act_concerning_safety_component_ai_system(_Act, S),
    ai_system_safety_component_of_regulation(S, 'celex:32024R1689/oj').
delegated_act_concerning_safety_component_ai_system(Act, S) :-
    adopted_delegated_act(Act, 'celex:32018R0858/oj#art_5/par_3'),
    concerns(Act, S),
    ai_system(S),
    safety_component(S).
ai_system_safety_component_of_regulation(S, 'celex:32024R1689/oj') :-
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account_requirements/3, 'celex:32024R1689/oj#art_107').
provenance(delegated_act_concerning_safety_component_ai_system/2, 'celex:32024R1689/oj#art_107').
provenance(ai_system_safety_component_of_regulation/2, 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_108 ====
declared(must_take_into_account/2, 'requirements of AI Act Chapter 3 Section 2 must be taken into account when adopting specified acts concerning AI safety components', 'celex:32024R1689/oj#art_108').
declared(ai_safety_component/1, 'AI system which is a safety component within the meaning of the AI Act', 'celex:32024R1689/oj#art_108').
declared(adopting_implementing_act/2, 'adopting an implementing act pursuant to a specified legal basis concerning AI safety components', 'celex:32024R1689/oj#art_108').
declared(adopting_delegated_act/2, 'adopting a delegated act pursuant to a specified legal basis concerning AI safety components', 'celex:32024R1689/oj#art_108').
ai_safety_component(S) :-
    ai_system(S),
    safety_component(S).
must_take_into_account(adopting_implementing_act(Act, Basis), requirements(chp_3, sec_2)) :-
    adopting_implementing_act(Act, Basis),
    concerns_ai_safety_components(Act).
must_take_into_account(adopting_delegated_act(Act, Basis), requirements(chp_3, sec_2)) :-
    adopting_delegated_act(Act, Basis),
    concerns_ai_safety_components(Act).
adopting_implementing_act(act, 'celex:32018R1139/oj#art_17/par_1') :-
    concerns_ai_safety_components(act).
adopting_implementing_act(act, 'celex:32024R1689/oj#art_43/par_1') :-
    concerns_ai_safety_components(act).
adopting_implementing_act(act, 'celex:32018R1139/oj#art_57/unp_1') :-
    concerns_ai_safety_components(act).
adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_1') :-
    concerns_ai_safety_components(act).
adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_2') :-
    concerns_ai_safety_components(act).
adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_1') :-
    concerns_ai_safety_components(act).
adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_2') :-
    concerns_ai_safety_components(act).
adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_1') :-
    concerns_ai_safety_components(act).
adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_2') :-
    concerns_ai_safety_components(act).
concerns_ai_safety_components(Act) :-
    concerns(Act, S),
    ai_safety_component(S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_108').
provenance(adopting_implementing_act/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').

% ==== celex:32024R1689/oj#art_109 ====
declared(must_take_into_account_requirements/2, 'Commission must take into account AI Act Chapter 3 Section 2 requirements when adopting implementing acts for AI safety components', 'celex:32024R1689/oj#art_109').
declared(adopting_implementing_acts/2, 'adopting implementing acts pursuant to a specific legal basis concerning a subject matter', 'celex:32024R1689/oj#art_109').
declared(ai_system_safety_component/1, 'AI system that is a safety component within the meaning of the AI Act', 'celex:32024R1689/oj#art_109').
must_take_into_account_requirements(Commission, requirements(chapter_3, section_2)) :-
    adopting_implementing_acts(Commission, ai_systems_safety_components),
    ai_system_safety_component(S),
    safety_component(S).
adopting_implementing_acts(Commission, ai_systems_safety_components) :-
    ai_system_safety_component(_S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(adopting_implementing_acts/2, 'celex:32024R1689/oj#art_109').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_109').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_110 ====
declared(amends/2, 'one act amends another act', 'celex:32024R1689/oj#art_110').
declared(adds_annex_entry/3, 'an act adds an entry to an annex of another act', 'celex:32024R1689/oj#art_110').
amends('celex:32024R1689/oj', 'celex:32020L1828/oj').
adds_annex_entry('celex:32024R1689/oj', 'celex:32020L1828/oj', anx_i).
provenance(amends/2, 'celex:32024R1689/oj#art_110').
provenance(adds_annex_entry/3, 'celex:32024R1689/oj#art_110').
references('celex:32024R1689/oj#art_110', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_110', 'celex:32020L1828/oj#anx_I').
references('celex:32024R1689/oj#art_110', 'celex:32009L0022/oj').
references('celex:32024R1689/oj#art_110', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_110', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_110', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_110', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_110', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_110', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_110', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_110', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_110', 'celex:32016L0797/oj').

% ==== celex:32024R1689/oj#art_111 ====
declared(large_scale_it_system/1, 'large-scale IT system established by legal acts listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(component_of_large_scale_it_system/2, 'AI system that is a component of a large-scale IT system', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_or_put_into_service_before/2, 'AI system placed on market or put into service before a given date', 'celex:32024R1689/oj#art_111').
declared(brought_into_compliance_by/2, 'system brought into compliance with the Regulation by a given date', 'celex:32024R1689/oj#art_111').
declared(requirements_taken_into_account_in_evaluation/2, 'requirements of the Regulation taken into account in evaluation of a large-scale IT system', 'celex:32024R1689/oj#art_111').
declared(significant_change_in_design/1, 'high-risk AI system subject to significant change in design', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system_intended_for_public_authorities/1, 'high-risk AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(general_purpose_ai_model_placed_on_market_before/2, 'general-purpose AI model placed on market before a given date', 'celex:32024R1689/oj#art_111').
declared(must_take_necessary_steps_to_comply/2, 'actor must take necessary steps to comply with obligations of the Regulation', 'celex:32024R1689/oj#art_111').
must_bring_into_compliance_by(Operator, compliance(deadline(days(31, december, 2030)))) :-
    operator(Operator),
    ai_system(S),
    component_of_large_scale_it_system(S, LS),
    large_scale_it_system(LS),
    placed_on_market_or_put_into_service_before(S, date(2027, august, 2)).
brought_into_compliance_by(S, date(2030, december, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system(S, LS),
    large_scale_it_system(LS),
    placed_on_market_or_put_into_service_before(S, date(2027, august, 2)).
requirements_taken_into_account_in_evaluation(LS, evaluation) :-
    large_scale_it_system(LS).
regulation_applies_to_operator(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, august, 2)),
    \+ component_of_large_scale_it_system(S, _LS),
    significant_change_in_design(S).
must_take_necessary_steps_to_comply(Provider, obligations(date(2030, august, 2))) :-
    provider(Provider),
    high_risk_ai_system_intended_for_public_authorities(S),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, august, 2)).
must_take_necessary_steps_to_comply(Deployer, obligations(date(2030, august, 2))) :-
    deployer(Deployer),
    high_risk_ai_system_intended_for_public_authorities(S),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, august, 2)).
must_take_necessary_steps_to_comply(Provider, obligations(date(2027, august, 2))) :-
    provider(Provider),
    general_purpose_ai_model(M),
    general_purpose_ai_model_placed_on_market_before(M, date(2025, august, 2)).
high_risk_ai_system_intended_for_public_authorities(S) :-
    ai_system(S),
    intended_purpose(S),
    public_authority_use(S).
placed_on_market_or_put_into_service_before(S, Date) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    before_date(S, Date).
general_purpose_ai_model_placed_on_market_before(M, Date) :-
    general_purpose_ai_model(M),
    placing_on_market(M),
    before_date(M, Date).
before_date(_S, _Date).
public_authority_use(_S).
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/2, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(brought_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(requirements_taken_into_account_in_evaluation/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system_intended_for_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_necessary_steps_to_comply/2, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess/2, 'who is obliged to assess, what about', 'celex:32024R1689/oj#art_112').
declared(must_evaluate/2, 'who is obliged to evaluate, what about', 'celex:32024R1689/oj#art_112').
declared(must_report/2, 'who is obliged to report, what about', 'celex:32024R1689/oj#art_112').
declared(must_submit/2, 'who is obliged to submit, what about', 'celex:32024R1689/oj#art_112').
declared(must_provide_information/2, 'who is obliged to provide information, to whom', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account/2, 'who is obliged to take into account, what', 'celex:32024R1689/oj#art_112').
declared(must_undertake/2, 'who is obliged to undertake, what', 'celex:32024R1689/oj#art_112').
declared(must_carry_out/2, 'who is obliged to carry out, what', 'celex:32024R1689/oj#art_112').
declared(annual_assessment/1, 'assessment occurring once a year', 'celex:32024R1689/oj#art_112').
declared(periodic_evaluation/1, 'evaluation occurring at regular intervals', 'celex:32024R1689/oj#art_112').
declared(periodic_report/1, 'report occurring at regular intervals', 'celex:32024R1689/oj#art_112').
declared(periodic_review/1, 'review occurring at regular intervals', 'celex:32024R1689/oj#art_112').
declared(quadrennial/1, 'occurring every four years', 'celex:32024R1689/oj#art_112').
declared(triennial/1, 'occurring every three years', 'celex:32024R1689/oj#art_112').
declared(deadline/2, 'deadline with date and obligation', 'celex:32024R1689/oj#art_112').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_112').
declared(european_parliament/1, 'the European Parliament', 'celex:32024R1689/oj#art_112').
declared(council/1, 'the Council of the European Union', 'celex:32024R1689/oj#art_112').
declared(european_economic_and_social_committee/1, 'the European Economic and Social Committee', 'celex:32024R1689/oj#art_112').
declared(board/1, 'the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_112').
declared(member_state/1, 'a Member State of the European Union', 'celex:32024R1689/oj#art_112').
declared(assessment_of_need_for_amendment/1, 'assessment of need for amendment of lists', 'celex:32024R1689/oj#art_112').
declared(evaluation_of_annex_3_headings/1, 'evaluation of need for amendments to Annex III area headings', 'celex:32024R1689/oj#art_112').
declared(evaluation_of_transparency_list/1, 'evaluation of amendments to transparency measures list', 'celex:32024R1689/oj#art_112').
declared(evaluation_of_supervision_governance/1, 'evaluation of amendments enhancing supervision and governance effectiveness', 'celex:32024R1689/oj#art_112').
declared(evaluation_of_ai_office/1, 'evaluation of AI Office functioning, powers and resources', 'celex:32024R1689/oj#art_112').
declared(review_of_standardisation_energy_efficiency/1, 'review of progress on energy-efficient development standardisation for GPAI models', 'celex:32024R1689/oj#art_112').
declared(evaluation_of_voluntary_codes/1, 'evaluation of impact and effectiveness of voluntary codes of conduct', 'celex:32024R1689/oj#art_112').
declared(assessment_of_enforcement/1, 'assessment of enforcement of the regulation', 'celex:32024R1689/oj#art_112').
declared(report_on_evaluation_and_review/1, 'report on evaluation and review of the regulation', 'celex:32024R1689/oj#art_112').
declared(methodology_for_risk_evaluation/1, 'objective and participative methodology for evaluation of risk levels', 'celex:32024R1689/oj#art_112').
declared(inclusion_of_new_systems/1, 'inclusion of new systems in lists', 'celex:32024R1689/oj#art_112').
declared(made_public/1, 'report or document made public', 'celex:32024R1689/oj#art_112').
declared(accompanied_by_proposal/1, 'report accompanied by proposal for amendment', 'celex:32024R1689/oj#art_112').
declared(pays_specific_attention_to/2, 'report pays specific attention to, subject matter', 'celex:32024R1689/oj#art_112').
declared(resources_of_national_competent_authorities/1, 'financial, technical and human resources of national competent authorities', 'celex:32024R1689/oj#art_112').
declared(state_of_penalties/1, 'state of penalties and administrative fines applied by Member States', 'celex:32024R1689/oj#art_112').
declared(adopted_harmonised_standards_and_common_specifications/1, 'adopted harmonised standards and common specifications', 'celex:32024R1689/oj#art_112').
declared(number_of_undertakings_entering_market/1, 'number of undertakings entering market after entry into application', 'celex:32024R1689/oj#art_112').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_112').
declared(upgrade_ai_office/1, 'upgrade of AI Office and its enforcement competences and resources', 'celex:32024R1689/oj#art_112').
declared(binding_measures_or_actions/1, 'binding measures or actions', 'celex:32024R1689/oj#art_112').
declared(environmental_sustainability/1, 'environmental sustainability', 'celex:32024R1689/oj#art_112').
declared(sectoral_regulatory_specificities/1, 'regulatory specificities of each sector', 'celex:32024R1689/oj#art_112').
declared(union_agency/1, 'Union agency to resolve identified shortcomings', 'celex:32024R1689/oj#art_112').
must_assess(commission, assessment_of_need_for_amendment(list(annex_3), list(art_5))) :-
    annual_assessment(assessment_of_need_for_amendment(list(annex_3), list(art_5))),
    after_entry_into_force(regulation),
    before_end_of_delegation_period(art_97).
must_submit(commission, findings(assessment_of_need_for_amendment(list(annex_3), list(art_5)))) :-
    must_assess(commission, assessment_of_need_for_amendment(list(annex_3), list(art_5))),
    to(european_parliament),
    to(council).
must_evaluate(commission, evaluation_of_annex_3_headings) :-
    deadline(date(2028, august, 2), evaluation_of_annex_3_headings),
    quadrennial(evaluation_of_annex_3_headings).
must_evaluate(commission, evaluation_of_transparency_list) :-
    deadline(date(2028, august, 2), evaluation_of_transparency_list),
    quadrennial(evaluation_of_transparency_list).
must_evaluate(commission, evaluation_of_supervision_governance) :-
    deadline(date(2028, august, 2), evaluation_of_supervision_governance),
    quadrennial(evaluation_of_supervision_governance).
must_report(commission, report(evaluation_of_annex_3_headings, evaluation_of_transparency_list, evaluation_of_supervision_governance)) :-
    must_evaluate(commission, evaluation_of_annex_3_headings),
    must_evaluate(commission, evaluation_of_transparency_list),
    must_evaluate(commission, evaluation_of_supervision_governance),
    to(european_parliament),
    to(council).
must_submit(commission, report_on_evaluation_and_review(regulation)) :-
    deadline(date(2029, august, 2), report_on_evaluation_and_review(regulation)),
    quadrennial(report_on_evaluation_and_review(regulation)),
    to(european_parliament),
    to(council).
report_on_evaluation_and_review(regulation) :-
    includes_assessment(structure_of_enforcement, need_for(union_agency)).
report_on_evaluation_and_review(regulation) :-
    accompanied_by_proposal(amendment(regulation)),
    where_appropriate.
made_public(report_on_evaluation_and_review(regulation)).
pays_specific_attention_to(report(evaluation_of_annex_3_headings, evaluation_of_transparency_list, evaluation_of_supervision_governance), resources_of_national_competent_authorities).
pays_specific_attention_to(report(evaluation_of_annex_3_headings, evaluation_of_transparency_list, evaluation_of_supervision_governance), state_of_penalties).
pays_specific_attention_to(report(evaluation_of_annex_3_headings, evaluation_of_transparency_list, evaluation_of_supervision_governance), adopted_harmonised_standards_and_common_specifications).
pays_specific_attention_to(report(evaluation_of_annex_3_headings, evaluation_of_transparency_list, evaluation_of_supervision_governance), number_of_undertakings_entering_market).
number_of_undertakings_entering_market :-
    includes_count(sme).
must_evaluate(commission, evaluation_of_ai_office) :-
    deadline(date(2028, august, 2), evaluation_of_ai_office).
evaluation_of_ai_office :-
    assesses(functioning(ai_office)),
    assesses(sufficient_powers_and_competences(ai_office)),
    assesses(relevance_of(upgrade_ai_office)).
must_submit(commission, report(evaluation_of_ai_office)) :-
    must_evaluate(commission, evaluation_of_ai_office),
    to(european_parliament),
    to(council).
must_submit(commission, report(review_of_standardisation_energy_efficiency)) :-
    deadline(date(2028, august, 2), report(review_of_standardisation_energy_efficiency)),
    quadrennial(report(review_of_standardisation_energy_efficiency)),
    to(european_parliament),
    to(council).
report(review_of_standardisation_energy_efficiency) :-
    assesses(need_for(further_measures_or_actions)),
    includes(binding_measures_or_actions).
made_public(report(review_of_standardisation_energy_efficiency)).
must_evaluate(commission, evaluation_of_voluntary_codes) :-
    deadline(date(2028, august, 2), evaluation_of_voluntary_codes),
    triennial(evaluation_of_voluntary_codes).
evaluation_of_voluntary_codes :-
    assesses(impact_and_effectiveness(voluntary_codes_of_conduct)),
    concerns(application_of(requirements(chapter_3_section_2))),
    concerns(ai_systems_other_than(high_risk_ai_systems)),
    concerns(additional_requirements),
    includes(environmental_sustainability).
must_provide_information(board, commission) :-
    upon_request(commission),
    without_undue_delay.
must_provide_information(member_state, commission) :-
    upon_request(commission),
    without_undue_delay.
must_provide_information(national_competent_authority, commission) :-
    upon_request(commission),
    without_undue_delay.
must_take_into_account(commission, positions_and_findings(board)) :-
    carrying_out(evaluations_and_reviews).
must_take_into_account(commission, positions_and_findings(european_parliament)) :-
    carrying_out(evaluations_and_reviews).
must_take_into_account(commission, positions_and_findings(council)) :-
    carrying_out(evaluations_and_reviews).
must_take_into_account(commission, positions_and_findings(other_relevant_bodies_or_sources)) :-
    carrying_out(evaluations_and_reviews).
must_submit(commission, proposals(amendment(regulation))) :-
    if_necessary,
    taking_into_account(developments_in_technology),
    taking_into_account(effect_on(health_and_safety)),
    taking_into_account(effect_on(fundamental_rights)),
    in_light_of(state_of_progress(information_society)).
must_undertake(ai_office, develop(methodology_for_risk_evaluation)) :-
    to_guide(evaluations_and_reviews).
methodology_for_risk_evaluation :-
    objective,
    participative,
    for(evaluation_of(risk_levels)),
    based_on(criteria_in(relevant_articles)).
methodology_for_risk_evaluation :-
    includes(inclusion_of_new_systems(list(annex_3))).
methodology_for_risk_evaluation :-
    includes(inclusion_of_new_systems(list(art_5))).
methodology_for_risk_evaluation :-
    includes(inclusion_of_new_systems(list(art_50))).
inclusion_of_new_systems(list(annex_3)) :-
    includes(extension_of(existing_area_headings)),
    includes(addition_of(new_area_headings)).
must_take_into_account(amendment(regulation), sectoral_regulatory_specificities) :-
    concerns(amendment(regulation), sectoral_union_harmonisation_legislation(annex_1_section_2)).
must_take_into_account(amendment(regulation), existing_governance_conformity_assessment_enforcement_mechanisms) :-
    concerns(amendment(regulation), sectoral_union_harmonisation_legislation(annex_1_section_2)).
must_carry_out(commission, assessment_of_enforcement(regulation)) :-
    deadline(date(2031, august, 2), assessment_of_enforcement(regulation)).
must_report(commission, report(assessment_of_enforcement(regulation))) :-
    must_carry_out(commission, assessment_of_enforcement(regulation)),
    to(european_parliament),
    to(council),
    to(european_economic_and_social_committee).
report(assessment_of_enforcement(regulation)) :-
    takes_into_account(first_years_of_application(regulation)).
report(assessment_of_enforcement(regulation)) :-
    accompanied_by_proposal(amendment(regulation, structure_of_enforcement, need_for(union_agency))),
    where_appropriate.
european_parliament(european_parliament).
council(council).
european_economic_and_social_committee(european_economic_and_social_committee).
board(board).
member_state(M) :- member_state(M).
annual_assessment(X) :- periodic_evaluation(X), period(years(1)).
quadrennial(X) :- periodic_evaluation(X), period(years(4)).
triennial(X) :- periodic_evaluation(X), period(years(3)).
deadline(date(Y, M, D), X) :- deadline(date(Y, M, D), X).
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_undertake/2, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out/2, 'celex:32024R1689/oj#art_112').
provenance(annual_assessment/1, 'celex:32024R1689/oj#art_112').
provenance(periodic_evaluation/1, 'celex:32024R1689/oj#art_112').
provenance(periodic_report/1, 'celex:32024R1689/oj#art_112').
provenance(periodic_review/1, 'celex:32024R1689/oj#art_112').
provenance(quadrennial/1, 'celex:32024R1689/oj#art_112').
provenance(triennial/1, 'celex:32024R1689/oj#art_112').
provenance(deadline/2, 'celex:32024R1689/oj#art_112').
provenance(commission/1, 'celex:32024R1689/oj#art_112').
provenance(european_parliament/1, 'celex:32024R1689/oj#art_112').
provenance(council/1, 'celex:32024R1689/oj#art_112').
provenance(european_economic_and_social_committee/1, 'celex:32024R1689/oj#art_112').
provenance(board/1, 'celex:32024R1689/oj#art_112').
provenance(member_state/1, 'celex:32024R1689/oj#art_112').
provenance(assessment_of_need_for_amendment/1, 'celex:32024R1689/oj#art_112').
provenance(evaluation_of_annex_3_headings/1, 'celex:32024R1689/oj#art_112').
provenance(evaluation_of_transparency_list/1, 'celex:32024R1689/oj#art_112').
provenance(evaluation_of_supervision_governance/1, 'celex:32024R1689/oj#art_112').
provenance(evaluation_of_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(review_of_standardisation_energy_efficiency/1, 'celex:32024R1689/oj#art_112').
provenance(evaluation_of_voluntary_codes/1, 'celex:32024R1689/oj#art_112').
provenance(assessment_of_enforcement/1, 'celex:32024R1689/oj#art_112').
provenance(report_on_evaluation_and_review/1, 'celex:32024R1689/oj#art_112').
provenance(methodology_for_risk_evaluation/1, 'celex:32024R1689/oj#art_112').
provenance(inclusion_of_new_systems/1, 'celex:32024R1689/oj#art_112').
provenance(made_public/1, 'celex:32024R1689/oj#art_112').
provenance(accompanied_by_proposal/1, 'celex:32024R1689/oj#art_112').
provenance(pays_specific_attention_to/2, 'celex:32024R1689/oj#art_112').
provenance(resources_of_national_competent_authorities/1, 'celex:32024R1689/oj#art_112').
provenance(state_of_penalties/1, 'celex:32024R1689/oj#art_112').
provenance(adopted_harmonised_standards_and_common_specifications/1, 'celex:32024R1689/oj#art_112').
provenance(number_of_undertakings_entering_market/1, 'celex:32024R1689/oj#art_112').
provenance(sme/1, 'celex:32024R1689/oj#art_112').
provenance(upgrade_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(binding_measures_or_actions/1, 'celex:32024R1689/oj#art_112').
provenance(environmental_sustainability/1, 'celex:32024R1689/oj#art_112').
provenance(sectoral_regulatory_specificities/1, 'celex:32024R1689/oj#art_112').
provenance(union_agency/1, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_113 ====
declared(enters_into_force/1, 'the regulation enters into force', 'celex:32024R1689/oj#art_113').
declared(applies_from/2, 'a provision applies from a given date', 'celex:32024R1689/oj#art_113').
declared(binding_in_entirety/1, 'the regulation is binding in its entirety', 'celex:32024R1689/oj#art_113').
declared(directly_applicable/1, 'the regulation is directly applicable in all Member States', 'celex:32024R1689/oj#art_113').
enters_into_force(regulation) :-
    publication_in_official_journal(regulation),
    days(20).
applies_from(regulation, date(2026, august, 2)).
applies_from(chapter(1), date(2025, february, 2)).
applies_from(chapter(2), date(2025, february, 2)).
applies_from(chapter(3), section(4), date(2025, august, 2)).
applies_from(chapter(5), date(2025, august, 2)).
applies_from(chapter(7), date(2025, august, 2)).
applies_from(chapter(12), date(2025, august, 2)).
applies_from(article(78), date(2025, august, 2)).
applies_from(article(6), paragraph(1), date(2027, august, 2)).
binding_in_entirety(regulation).
directly_applicable(regulation).
provenance(enters_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(binding_in_entirety/1, 'celex:32024R1689/oj#art_113').
provenance(directly_applicable/1, 'celex:32024R1689/oj#art_113').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_1').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_2').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_3/sec_4').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_7').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_12').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_6/par_1').

% ==== celex:32024R1689/oj#anx_1 ====
declared(union_harmonisation_legislation/1, 'legislation listed in Annex I as Union harmonisation legislation', 'celex:32024R1689/oj#anx_1').
declared(new_legislative_framework_legislation/1, 'legislation listed in Annex I Section A based on the New Legislative Framework', 'celex:32024R1689/oj#anx_1').
declared(other_union_harmonisation_legislation/1, 'legislation listed in Annex I Section B as other Union harmonisation legislation', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation('celex:32006L0042/oj').
union_harmonisation_legislation('celex:32009L0048/oj').
union_harmonisation_legislation('celex:32013L0053/oj').
union_harmonisation_legislation('celex:32014L0033/oj').
union_harmonisation_legislation('celex:32014L0034/oj').
union_harmonisation_legislation('celex:32014L0053/oj').
union_harmonisation_legislation('celex:32014L0068/oj').
union_harmonisation_legislation('celex:32016R0424/oj').
union_harmonisation_legislation('celex:32016R0425/oj').
union_harmonisation_legislation('celex:32016R0426/oj').
union_harmonisation_legislation('celex:32017R0745/oj').
union_harmonisation_legislation('celex:32017R0746/oj').
union_harmonisation_legislation('celex:32008R0300/oj').
union_harmonisation_legislation('celex:32013R0168/oj').
union_harmonisation_legislation('celex:32013R0167/oj').
union_harmonisation_legislation('celex:32014L0090/oj').
union_harmonisation_legislation('celex:32016L0797/oj').
union_harmonisation_legislation('celex:32018R0858/oj').
union_harmonisation_legislation('celex:32019R2144/oj').
union_harmonisation_legislation('celex:32018R1139/oj').
new_legislative_framework_legislation('celex:32006L0042/oj').
new_legislative_framework_legislation('celex:32009L0048/oj').
new_legislative_framework_legislation('celex:32013L0053/oj').
new_legislative_framework_legislation('celex:32014L0033/oj').
new_legislative_framework_legislation('celex:32014L0034/oj').
new_legislative_framework_legislation('celex:32014L0053/oj').
new_legislative_framework_legislation('celex:32014L0068/oj').
new_legislative_framework_legislation('celex:32016R0424/oj').
new_legislative_framework_legislation('celex:32016R0425/oj').
new_legislative_framework_legislation('celex:32016R0426/oj').
new_legislative_framework_legislation('celex:32017R0745/oj').
new_legislative_framework_legislation('celex:32017R0746/oj').
other_union_harmonisation_legislation('celex:32008R0300/oj').
other_union_harmonisation_legislation('celex:32013R0168/oj').
other_union_harmonisation_legislation('celex:32013R0167/oj').
other_union_harmonisation_legislation('celex:32014L0090/oj').
other_union_harmonisation_legislation('celex:32016L0797/oj').
other_union_harmonisation_legislation('celex:32018R0858/oj').
other_union_harmonisation_legislation('celex:32019R2144/oj').
other_union_harmonisation_legislation('celex:32018R1139/oj').
provenance(union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
provenance(new_legislative_framework_legislation/1, 'celex:32024R1689/oj#anx_1').
provenance(other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#anx_1', 'celex:32006L0042/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31995L0016/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009L0048/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013L0053/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31994L0025/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0033/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0031/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0034/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0053/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31999L0005/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0068/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016R0424/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32000L0009/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016R0425/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31989L0686/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016R0426/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009L0142/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32001L0083/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32002R0178/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R1223/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31990L0385/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31993L0042/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31998L0079/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010D0227/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32002R2320/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31996L0098/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32007R0715/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0595/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32007L0046/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0078/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0079/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0661/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0631/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R0406/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R0672/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1003/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1005/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1008/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1009/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32011R0019/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32011R0109/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32011R0458/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0065/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0130/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0347/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0351/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R1230/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32015R0166/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32005R2111/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32008R1008/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R0996/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014R0376/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0030/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32004R0552/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32008R0216/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31991R3922/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31991R3922/oj#art_2/par_1/pnt_a').
references('celex:32024R1689/oj#anx_1', 'celex:31991R3922/oj#art_2/par_1/pnt_b').

% ==== celex:32024R1689/oj#anx_2 ====
declared(criminal_offence/1, 'criminal offence listed in Annex II for the purposes of Article 5(1)(h)(iii)', 'celex:32024R1689/oj#anx_2').
criminal_offence(terrorism).
criminal_offence(trafficking_in_human_beings).
criminal_offence(sexual_exploitation_of_children).
criminal_offence(child_pornography).
criminal_offence(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence(murder).
criminal_offence(grievous_bodily_injury).
criminal_offence(illicit_trade_in_human_organs_or_tissue).
criminal_offence(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence(kidnapping).
criminal_offence(illegal_restraint).
criminal_offence(hostage_taking).
criminal_offence(crimes_within_the_jurisdiction_of_the_international_criminal_court).
criminal_offence(unlawful_seizure_of_aircraft_or_ships).
criminal_offence(rape).
criminal_offence(environmental_crime).
criminal_offence(organised_or_armed_robbery).
criminal_offence(sabotage).
criminal_offence(participation_in_a_criminal_organisation_involved_in_one_or_more_of_the_offences_listed_above).
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III as high-risk', 'celex:32024R1689/oj#anx_3').
declared(high_risk_biometric_remote_identification/1, 'remote biometric identification system listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_biometric_categorisation/1, 'biometric categorisation system based on sensitive attributes listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_emotion_recognition/1, 'emotion recognition system listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_critical_infrastructure_safety_component/1, 'AI system as safety component in critical infrastructure listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_education_access_admission/1, 'AI system for access or admission to education listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_education_learning_outcomes/1, 'AI system to evaluate learning outcomes listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_education_assess_level/1, 'AI system to assess appropriate education level listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_education_monitor_prohibited_behaviour/1, 'AI system to monitor prohibited student behaviour during tests listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_employment_recruitment/1, 'AI system for recruitment or selection listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_employment_work_relationship_decisions/1, 'AI system for decisions affecting work-related relationships listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_public_services_eligibility/1, 'AI system to evaluate eligibility for public benefits listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_creditworthiness/1, 'AI system to evaluate creditworthiness or credit score listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_life_health_insurance_risk_assessment/1, 'AI system for risk assessment and pricing in life and health insurance listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_emergency_calls_evaluation/1, 'AI system to evaluate and classify emergency calls listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_law_enforcement_victim_risk/1, 'AI system to assess risk of becoming victim of crime listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_law_enforcement_polygraph/1, 'AI system used as polygraph by law enforcement listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_law_enforcement_evidence_reliability/1, 'AI system to evaluate reliability of evidence listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_law_enforcement_offending_risk/1, 'AI system to assess risk of offending or re-offending listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_law_enforcement_profiling/1, 'AI system for profiling in law enforcement listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_migration_polygraph/1, 'AI system used as polygraph in migration context listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_migration_risk_assessment/1, 'AI system to assess migration security or health risk listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_migration_asylum_examination/1, 'AI system to assist examination of asylum or visa applications listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_migration_identification/1, 'AI system for detecting, recognising or identifying persons in migration context listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_justice_research_interpretation/1, 'AI system to assist judicial authority in researching and interpreting facts and law listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_election_influence/1, 'AI system to influence election or referendum outcome listed as high-risk in Annex III', 'celex:32024R1689/oj#anx_3').
declared(exempt_biometric_verification_confirmation/1, 'biometric verification system solely to confirm identity is exempt from high-risk classification', 'celex:32024R1689/oj#anx_3').
declared(exempt_financial_fraud_detection/1, 'AI system for detecting financial fraud is exempt from high-risk creditworthiness classification', 'celex:32024R1689/oj#anx_3').
declared(exempt_travel_document_verification/1, 'verification of travel documents is exempt from high-risk migration identification classification', 'celex:32024R1689/oj#anx_3').
declared(exempt_political_campaign_administrative_tool/1, 'AI system for administrative or logistical campaign organisation not directly exposed to persons is exempt from high-risk election influence classification', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    high_risk_biometric_remote_identification(S).
high_risk_ai_system(S) :-
    high_risk_biometric_categorisation(S).
high_risk_ai_system(S) :-
    high_risk_emotion_recognition(S).
high_risk_biometric_remote_identification(S) :-
    ai_system(S),
    remote_biometric_identification_system(S),
    intended_purpose(S),
    \+ exempt_biometric_verification_confirmation(S).
exempt_biometric_verification_confirmation(S) :-
    ai_system(S),
    biometric_verification(S),
    sole_purpose_confirm_identity(S).
sole_purpose_confirm_identity(S) :-
    intended_purpose(S),
    purpose(confirm_specific_person_identity(S)).
high_risk_biometric_categorisation(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    intended_purpose(S),
    categorises_sensitive_attributes(S).
categorises_sensitive_attributes(S) :-
    biometric_categorisation_system(S),
    based_on_inference_of_attributes(S),
    attributes_are_sensitive_or_protected(S).
high_risk_emotion_recognition(S) :-
    ai_system(S),
    emotion_recognition_system(S),
    intended_purpose(S).
high_risk_ai_system(S) :-
    high_risk_critical_infrastructure_safety_component(S).
high_risk_critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S),
    purpose(management_operation_critical_infrastructure(S)),
    critical_infrastructure(S).
high_risk_ai_system(S) :-
    high_risk_education_access_admission(S).
high_risk_ai_system(S) :-
    high_risk_education_learning_outcomes(S).
high_risk_ai_system(S) :-
    high_risk_education_assess_level(S).
high_risk_ai_system(S) :-
    high_risk_education_monitor_prohibited_behaviour(S).
high_risk_education_access_admission(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(determine_access_or_admission_education(S)),
    educational_institution(S).
high_risk_education_learning_outcomes(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_learning_outcomes(S)),
    educational_institution(S).
high_risk_education_assess_level(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_appropriate_education_level(S)),
    educational_institution(S).
high_risk_education_monitor_prohibited_behaviour(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(monitor_detect_prohibited_behaviour_tests(S)),
    educational_institution(S).
high_risk_ai_system(S) :-
    high_risk_employment_recruitment(S).
high_risk_ai_system(S) :-
    high_risk_employment_work_relationship_decisions(S).
high_risk_employment_recruitment(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(recruitment_or_selection_natural_persons(S)).
high_risk_employment_work_relationship_decisions(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(decisions_affecting_work_related_relationships(S)).
high_risk_ai_system(S) :-
    high_risk_public_services_eligibility(S).
high_risk_ai_system(S) :-
    high_risk_creditworthiness(S).
high_risk_ai_system(S) :-
    high_risk_life_health_insurance_risk_assessment(S).
high_risk_ai_system(S) :-
    high_risk_emergency_calls_evaluation(S).
high_risk_public_services_eligibility(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_eligibility_essential_public_benefits(S)),
    used_by_public_authority_or_on_behalf(S).
high_risk_creditworthiness(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_creditworthiness_or_credit_score(S)),
    \+ exempt_financial_fraud_detection(S).
exempt_financial_fraud_detection(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(detect_financial_fraud(S)).
high_risk_life_health_insurance_risk_assessment(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(risk_assessment_pricing_life_health_insurance(S)).
high_risk_emergency_calls_evaluation(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_classify_emergency_calls(S)).
high_risk_emergency_calls_evaluation(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(dispatch_or_prioritise_emergency_first_response(S)).
high_risk_ai_system(S) :-
    high_risk_law_enforcement_victim_risk(S).
high_risk_ai_system(S) :-
    high_risk_law_enforcement_polygraph(S).
high_risk_ai_system(S) :-
    high_risk_law_enforcement_evidence_reliability(S).
high_risk_ai_system(S) :-
    high_risk_law_enforcement_offending_risk(S).
high_risk_ai_system(S) :-
    high_risk_law_enforcement_profiling(S).
high_risk_law_enforcement_victim_risk(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_risk_victim_criminal_offences(S)),
    used_by_law_enforcement_or_on_behalf(S).
high_risk_law_enforcement_polygraph(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(used_as_polygraph_or_similar_tool(S)),
    used_by_law_enforcement_or_on_behalf(S).
high_risk_law_enforcement_evidence_reliability(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(evaluate_reliability_evidence(S)),
    used_by_law_enforcement_or_on_behalf(S).
high_risk_law_enforcement_offending_risk(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_risk_offending_or_reoffending(S)),
    used_by_law_enforcement_or_on_behalf(S),
    not_solely_based_on_profiling(S).
high_risk_law_enforcement_profiling(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(profiling_natural_persons(S)),
    used_by_law_enforcement_or_on_behalf(S),
    in_course_detection_investigation_prosecution(S).
high_risk_ai_system(S) :-
    high_risk_migration_polygraph(S).
high_risk_ai_system(S) :-
    high_risk_migration_risk_assessment(S).
high_risk_ai_system(S) :-
    high_risk_migration_asylum_examination(S).
high_risk_ai_system(S) :-
    high_risk_migration_identification(S).
high_risk_migration_polygraph(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(used_as_polygraph_or_similar_tool(S)),
    used_by_competent_public_authority_or_on_behalf(S).
high_risk_migration_risk_assessment(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assess_risk_migration(S)),
    used_by_competent_public_authority_or_on_behalf(S).
high_risk_migration_asylum_examination(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assist_examination_asylum_visa_residence_applications(S)),
    used_by_competent_public_authority_or_on_behalf(S).
high_risk_migration_identification(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(detect_recognise_identify_natural_persons(S)),
    used_by_competent_public_authority_or_on_behalf(S),
    \+ exempt_travel_document_verification(S).
exempt_travel_document_verification(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(verify_travel_documents(S)).
high_risk_ai_system(S) :-
    high_risk_justice_research_interpretation(S).
high_risk_ai_system(S) :-
    high_risk_election_influence(S).
high_risk_justice_research_interpretation(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(assist_judicial_authority_research_interpret_facts_law(S)),
    used_by_judicial_authority_or_on_behalf(S).
high_risk_election_influence(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(influence_election_referendum_outcome_or_voting_behaviour(S)),
    \+ exempt_political_campaign_administrative_tool(S).
exempt_political_campaign_administrative_tool(S) :-
    ai_system(S),
    intended_purpose(S),
    purpose(organise_optimise_structure_political_campaign_administrative(S)),
    not_directly_exposed_to_natural_persons(S).
used_by_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(public_authority)).
used_by_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(public_authority)).
used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(law_enforcement_authority)).
used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(law_enforcement_authority)).
used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(union_institution_body_office_agency)).
used_by_law_enforcement_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(union_institution_body_office_agency)).
used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(competent_public_authority)).
used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(competent_public_authority)).
used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(union_institution_body_office_agency)).
used_by_competent_public_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(union_institution_body_office_agency)).
used_by_judicial_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_by(judicial_authority)).
used_by_judicial_authority_or_on_behalf(S) :-
    intended_purpose(S),
    purpose(used_on_behalf_of(judicial_authority)).
educational_institution(S) :-
    intended_purpose(S),
    purpose(in_context_of(educational_vocational_training_institution)).
not_solely_based_on_profiling(S) :-
    intended_purpose(S),
    purpose(assess_risk_offending_or_reoffending(S)),
    \+ solely_based_on_profiling(S).
solely_based_on_profiling(S) :-
    intended_purpose(S),
    purpose(solely_based_on(profiling_natural_persons)).
in_course_detection_investigation_prosecution(S) :-
    intended_purpose(S),
    purpose(in_course_of(detection_investigation_prosecution_criminal_offences)).
not_directly_exposed_to_natural_persons(S) :-
    intended_purpose(S),
    purpose(output_not_directly_exposed_to_natural_persons).
provenance(high_risk_biometric_remote_identification/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_categorisation/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_emotion_recognition/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_critical_infrastructure_safety_component/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_access_admission/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_learning_outcomes/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_assess_level/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_education_monitor_prohibited_behaviour/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_employment_recruitment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_employment_work_relationship_decisions/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_public_services_eligibility/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_creditworthiness/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_life_health_insurance_risk_assessment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_emergency_calls_evaluation/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_victim_risk/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_polygraph/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_evidence_reliability/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_offending_risk/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_law_enforcement_profiling/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_polygraph/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_risk_assessment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_asylum_examination/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_migration_identification/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_justice_research_interpretation/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_election_influence/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_biometric_verification_confirmation/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_financial_fraud_detection/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_travel_document_verification/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_political_campaign_administrative_tool/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(technical_documentation/1, 'technical documentation for an AI system', 'celex:32024R1689/oj#anx_4').
declared(must_contain_technical_documentation/2, 'provider must ensure technical documentation contains specified information', 'celex:32024R1689/oj#anx_4').
declared(technical_documentation_contains/2, 'technical documentation contains specified element', 'celex:32024R1689/oj#anx_4').
must_contain_technical_documentation(Provider, S) :-
    provider(Provider),
    ai_system(S),
    technical_documentation(Doc, S),
    technical_documentation_contains(Doc, general_description(S)),
    technical_documentation_contains(Doc, development_description(S)),
    technical_documentation_contains(Doc, monitoring_functioning_control(S)),
    technical_documentation_contains(Doc, performance_metrics_appropriateness(S)),
    technical_documentation_contains(Doc, risk_management_system_description(S)),
    technical_documentation_contains(Doc, lifecycle_changes_description(S)),
    technical_documentation_contains(Doc, harmonised_standards_list(S)),
    technical_documentation_contains(Doc, eu_declaration_of_conformity_copy(S)),
    technical_documentation_contains(Doc, post_market_performance_evaluation(S)).
technical_documentation(Doc, S) :-
    ai_system(S),
    Doc = documentation(S).
technical_documentation_contains(Doc, general_description(S)) :-
    technical_documentation(Doc, S),
    contains(Doc, intended_purpose_description(S)),
    contains(Doc, provider_name_and_version(S)),
    contains(Doc, interaction_with_external_hardware_software(S)),
    contains(Doc, software_firmware_versions(S)),
    contains(Doc, forms_of_market_placement(S)),
    contains(Doc, hardware_description(S)),
    contains(Doc, product_external_features_illustration(S)),
    contains(Doc, deployer_user_interface_description(S)),
    contains(Doc, instructions_for_use_for_deployer(S)).
contains(Doc, intended_purpose_description(S)) :-
    technical_documentation(Doc, S),
    intended_purpose(S).
contains(Doc, provider_name_and_version(S)) :-
    technical_documentation(Doc, S),
    provider(P),
    places_on_market(P, S).
contains(Doc, interaction_with_external_hardware_software(_S)).
contains(Doc, software_firmware_versions(_S)).
contains(Doc, forms_of_market_placement(S)) :-
    technical_documentation(Doc, S),
    placing_on_market(S).
contains(Doc, forms_of_market_placement(S)) :-
    technical_documentation(Doc, S),
    putting_into_service(S).
contains(Doc, hardware_description(_S)).
contains(Doc, product_external_features_illustration(S)) :-
    technical_documentation(Doc, S),
    safety_component(S).
contains(Doc, deployer_user_interface_description(_S)).
contains(Doc, instructions_for_use_for_deployer(S)) :-
    technical_documentation(Doc, S),
    deployer(D),
    instructions_for_use(I),
    provides(I, D).
technical_documentation_contains(Doc, development_description(S)) :-
    technical_documentation(Doc, S),
    contains(Doc, development_methods_and_steps(S)),
    contains(Doc, design_specifications(S)),
    contains(Doc, system_architecture_description(S)),
    contains(Doc, data_requirements_description(S)),
    contains(Doc, human_oversight_assessment(S)),
    contains(Doc, predetermined_changes_description(S)),
    contains(Doc, validation_testing_procedures(S)),
    contains(Doc, cybersecurity_measures(S)).
contains(Doc, development_methods_and_steps(_S)).
contains(Doc, design_specifications(S)) :-
    technical_documentation(Doc, S),
    ai_system(S).
contains(Doc, system_architecture_description(S)) :-
    technical_documentation(Doc, S),
    ai_system(S).
contains(Doc, data_requirements_description(S)) :-
    technical_documentation(Doc, S),
    training_data(D).
contains(Doc, human_oversight_assessment(_S)).
contains(Doc, predetermined_changes_description(S)) :-
    technical_documentation(Doc, S),
    substantial_modification(S).
contains(Doc, validation_testing_procedures(S)) :-
    technical_documentation(Doc, S),
    validation_data_set(D),
    testing_data(T).
contains(Doc, cybersecurity_measures(_S)).
technical_documentation_contains(Doc, monitoring_functioning_control(S)) :-
    technical_documentation(Doc, S),
    contains(Doc, capabilities_and_limitations(S)),
    contains(Doc, foreseeable_unintended_outcomes_and_risks(S)),
    contains(Doc, human_oversight_measures_monitoring(S)),
    contains(Doc, input_data_specifications(S)).
contains(Doc, capabilities_and_limitations(S)) :-
    technical_documentation(Doc, S),
    performance_of_ai_system(S).
contains(Doc, foreseeable_unintended_outcomes_and_risks(S)) :-
    technical_documentation(Doc, S),
    risk(R),
    reasonably_foreseeable_misuse(S).
contains(Doc, human_oversight_measures_monitoring(_S)).
contains(Doc, input_data_specifications(S)) :-
    technical_documentation(Doc, S),
    input_data(D).
technical_documentation_contains(Doc, performance_metrics_appropriateness(S)) :-
    technical_documentation(Doc, S),
    performance_of_ai_system(S).
technical_documentation_contains(Doc, risk_management_system_description(S)) :-
    technical_documentation(Doc, S),
    post_market_monitoring_system(S).
technical_documentation_contains(Doc, lifecycle_changes_description(S)) :-
    technical_documentation(Doc, S),
    provider(P),
    places_on_market(P, S).
technical_documentation_contains(Doc, harmonised_standards_list(S)) :-
    technical_documentation(Doc, S),
    harmonised_standard(H).
technical_documentation_contains(Doc, harmonised_standards_list(S)) :-
    technical_documentation(Doc, S),
    common_specification(C),
    \+ harmonised_standard_applied(S).
harmonised_standard_applied(S) :-
    harmonised_standard(H),
    applies_to(H, S).
technical_documentation_contains(Doc, eu_declaration_of_conformity_copy(S)) :-
    technical_documentation(Doc, S),
    ce_marking(S).
technical_documentation_contains(Doc, post_market_performance_evaluation(S)) :-
    technical_documentation(Doc, S),
    post_market_monitoring_system(S).
places_on_market(P, S) :-
    provider(P),
    placing_on_market(S).
provides(I, D) :-
    instructions_for_use(I),
    deployer(D).
provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(must_contain_technical_documentation/2, 'celex:32024R1689/oj#anx_4').
provenance(technical_documentation_contains/2, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity issued under Article 47', 'celex:32024R1689/oj#anx_5').
declared(contains_ai_system_identification/1, 'declaration contains AI system name, type and unambiguous reference for identification and traceability', 'celex:32024R1689/oj#anx_5').
declared(contains_provider_or_representative_details/1, 'declaration contains name and address of provider or authorised representative', 'celex:32024R1689/oj#anx_5').
declared(contains_sole_responsibility_statement/1, 'declaration contains statement that it is issued under sole responsibility of provider', 'celex:32024R1689/oj#anx_5').
declared(contains_conformity_statement/1, 'declaration contains statement that AI system is in conformity with the Regulation and other relevant Union law', 'celex:32024R1689/oj#anx_5').
declared(contains_data_protection_compliance_statement/1, 'declaration contains statement of compliance with GDPR, Regulation 2018/1725 and Directive 2016/680 where personal data is processed', 'celex:32024R1689/oj#anx_5').
declared(contains_harmonised_standards_references/1, 'declaration contains references to relevant harmonised standards or common specifications', 'celex:32024R1689/oj#anx_5').
declared(contains_notified_body_details/1, 'declaration contains name, identification number, conformity assessment procedure description and certificate identification of notified body where applicable', 'celex:32024R1689/oj#anx_5').
declared(contains_signature_details/1, 'declaration contains place, date, name, function and signature of signatory', 'celex:32024R1689/oj#anx_5').
declared(processes_personal_data/1, 'AI system involves processing of personal data', 'celex:32024R1689/oj#anx_5').
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standards_references(D),
    contains_signature_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_data_protection_compliance_statement(D),
    contains_harmonised_standards_references(D),
    contains_signature_details(D),
    processes_personal_data(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standards_references(D),
    contains_notified_body_details(D),
    contains_signature_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_data_protection_compliance_statement(D),
    contains_harmonised_standards_references(D),
    contains_notified_body_details(D),
    contains_signature_details(D),
    processes_personal_data(D).
contains_data_protection_compliance_statement(D) :-
    eu_declaration_of_conformity(D),
    processes_personal_data(D).
contains_notified_body_details(D) :-
    eu_declaration_of_conformity(D),
    notified_body(_B).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_provider_or_representative_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_sole_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_data_protection_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_harmonised_standards_references/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_notified_body_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_signature_details/1, 'celex:32024R1689/oj#anx_5').
provenance(processes_personal_data/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
declared(must_verify_quality_management_system_compliance/2, 'provider must verify quality management system compliance with requirements', 'celex:32024R1689/oj#anx_6').
declared(must_examine_technical_documentation/2, 'provider must examine technical documentation for compliance with essential requirements', 'celex:32024R1689/oj#anx_6').
declared(must_verify_design_development_and_post_market_monitoring/2, 'provider must verify design, development and post-market monitoring consistency with technical documentation', 'celex:32024R1689/oj#anx_6').
conformity_assessment_based_on_internal_control(P) :-
    provider(P),
    must_verify_quality_management_system_compliance(P, art_17_requirements),
    must_examine_technical_documentation(P, chapter_3_section_2_essential_requirements),
    must_verify_design_development_and_post_market_monitoring(P, technical_documentation).
must_verify_quality_management_system_compliance(P, art_17_requirements) :-
    provider(P).
must_examine_technical_documentation(P, chapter_3_section_2_essential_requirements) :-
    provider(P).
must_verify_design_development_and_post_market_monitoring(P, technical_documentation) :-
    provider(P).
provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_and_post_market_monitoring/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(quality_management_system/1, 'system for design, development and testing of AI systems', 'celex:32024R1689/oj#anx_7').
declared(approved_quality_management_system/1, 'quality management system approved by a notified body', 'celex:32024R1689/oj#anx_7').
declared(union_technical_documentation_assessment_certificate/1, 'certificate issued by notified body for technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(conformity_assessment_procedure/1, 'procedure for demonstrating conformity of AI system', 'celex:32024R1689/oj#anx_7').
declared(application_for_quality_management_system_assessment/1, 'application lodged by provider for QMS assessment', 'celex:32024R1689/oj#anx_7').
declared(application_for_technical_documentation_assessment/1, 'application lodged by provider for technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(surveillance_of_quality_management_system/1, 'ongoing surveillance of approved QMS by notified body', 'celex:32024R1689/oj#anx_7').
declared(periodic_audit/1, 'audit carried out by notified body to verify QMS maintenance', 'celex:32024R1689/oj#anx_7').
declared(change_to_approved_quality_management_system/1, 'intended change to approved QMS or covered AI systems list', 'celex:32024R1689/oj#anx_7').
declared(change_to_ai_system_affecting_compliance/1, 'change to AI system that could affect compliance or intended purpose', 'celex:32024R1689/oj#anx_7').
declared(supplement_to_certificate/1, 'supplement to Union technical documentation assessment certificate', 'celex:32024R1689/oj#anx_7').
conformity_assessment_procedure(annex_vii_quality_management_and_technical_documentation).
must_examine_quality_management_system(notified_body(B), quality_management_system(QMS)) :-
    approved_quality_management_system(QMS),
    notified_body(B).
must_subject_to_surveillance(notified_body(B), quality_management_system(QMS)) :-
    approved_quality_management_system(QMS),
    notified_body(B).
must_examine_technical_documentation(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S).
must_include_in_application(application_for_quality_management_system_assessment(A), provider_name_and_address(P)) :-
    provider(P).
must_include_in_application(application_for_quality_management_system_assessment(A), authorised_representative_name_and_address(AR)) :-
    authorised_representative(AR).
must_include_in_application(application_for_quality_management_system_assessment(A), list_of_ai_systems_covered(QMS)) :-
    quality_management_system(QMS).
must_include_in_application(application_for_quality_management_system_assessment(A), technical_documentation_for_each_ai_system(S)) :-
    ai_system(S).
must_include_in_application(application_for_quality_management_system_assessment(A), quality_management_system_documentation) :-
    application_for_quality_management_system_assessment(A).
must_include_in_application(application_for_quality_management_system_assessment(A), description_of_adequacy_and_effectiveness_procedures) :-
    application_for_quality_management_system_assessment(A).
must_include_in_application(application_for_quality_management_system_assessment(A), written_declaration_no_other_application_lodged).
must_assess_quality_management_system(notified_body(B), quality_management_system(QMS)) :-
    notified_body(B),
    quality_management_system(QMS).
must_notify_assessment_decision(notified_body(B), provider(P), assessment_decision(QMS, conclusions, reasoned)) :-
    notified_body(B),
    provider(P),
    quality_management_system(QMS).
must_notify_assessment_decision(notified_body(B), authorised_representative(AR), assessment_decision(QMS, conclusions, reasoned)) :-
    notified_body(B),
    authorised_representative(AR),
    quality_management_system(QMS).
must_implement_and_maintain(provider(P), quality_management_system(QMS)) :-
    provider(P),
    approved_quality_management_system(QMS).
must_inform_of_change(provider(P), notified_body(B), change_to_approved_quality_management_system(Change)) :-
    provider(P),
    notified_body(B),
    approved_quality_management_system(QMS),
    change_to_approved_quality_management_system(Change),
    relates_to(Change, QMS).
must_examine_change(notified_body(B), change_to_approved_quality_management_system(Change)) :-
    notified_body(B),
    change_to_approved_quality_management_system(Change).
must_notify_change_decision(notified_body(B), provider(P), change_decision(Change, conclusions, reasoned)) :-
    notified_body(B),
    provider(P),
    change_to_approved_quality_management_system(Change).
must_lodge_application_for_technical_documentation(provider(P), notified_body(B), ai_system(S)) :-
    provider(P),
    notified_body(B),
    ai_system(S),
    intends_to_place_on_market_or_put_into_service(P, S),
    covered_by_quality_management_system(S, QMS),
    approved_quality_management_system(QMS).
must_include_in_application(application_for_technical_documentation_assessment(A), provider_name_and_address(P)) :-
    provider(P).
must_include_in_application(application_for_technical_documentation_assessment(A), written_declaration_no_other_application_lodged).
must_include_in_application(application_for_technical_documentation_assessment(A), technical_documentation(S)) :-
    ai_system(S).
must_grant_access_to_data_sets(notified_body(B), ai_system(S), training_validation_testing_data_sets) :-
    notified_body(B),
    ai_system(S).
may_require_further_evidence_or_tests(notified_body(B), provider(P), ai_system(S)) :-
    notified_body(B),
    provider(P),
    ai_system(S).
may_carry_out_adequate_tests(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S),
    \+ satisfied_with_provider_tests(B, S).
must_grant_access_to_training_and_models(notified_body(B), ai_system(S), training_and_trained_models) :-
    notified_body(B),
    ai_system(S),
    high_risk_ai_system(S),
    all_other_means_exhausted(S),
    reasoned_request(B, S),
    subject_to_ip_and_trade_secret_protection(S).
must_notify_assessment_decision(notified_body(B), provider(P), technical_documentation_decision(S, conclusions, reasoned)) :-
    notified_body(B),
    provider(P),
    ai_system(S).
must_notify_assessment_decision(notified_body(B), authorised_representative(AR), technical_documentation_decision(S, conclusions, reasoned)) :-
    notified_body(B),
    authorised_representative(AR),
    ai_system(S).
must_issue_certificate(notified_body(B), union_technical_documentation_assessment_certificate(Cert)) :-
    notified_body(B),
    ai_system(S),
    in_conformity_with_requirements(S, chapter_3_section_2),
    union_technical_documentation_assessment_certificate(Cert),
    indicates(Cert, provider_name_and_address(P)),
    indicates(Cert, conclusions_of_examination),
    indicates(Cert, conditions_for_validity),
    indicates(Cert, data_for_identification(S)).
must_refuse_to_issue_certificate(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S),
    \+ in_conformity_with_requirements(S, chapter_3_section_2).
must_inform_of_refusal_with_reasons(notified_body(B), provider(P), detailed_reasons_for_refusal) :-
    notified_body(B),
    provider(P),
    ai_system(S),
    \+ in_conformity_with_requirements(S, chapter_3_section_2).
must_include_specific_considerations_on_training_data(notified_body(B), reasoned_assessment_decision, training_data_quality_considerations) :-
    notified_body(B),
    ai_system(S),
    does_not_meet_training_data_requirement(S).
must_require_retraining(provider(P), ai_system(S)) :-
    provider(P),
    ai_system(S),
    does_not_meet_training_data_requirement(S).
must_inform_of_change(provider(P), notified_body(B), change_to_ai_system_affecting_compliance(Change)) :-
    provider(P),
    notified_body(B),
    ai_system(S),
    union_technical_documentation_assessment_certificate(Cert),
    issued_by(Cert, B),
    change_to_ai_system_affecting_compliance(Change),
    relates_to(Change, S).
must_assess_change(notified_body(B), change_to_ai_system_affecting_compliance(Change)) :-
    notified_body(B),
    change_to_ai_system_affecting_compliance(Change).
must_decide_on_change(notified_body(B), provider(P), change_decision(Change, new_conformity_assessment_required)) :-
    notified_body(B),
    provider(P),
    change_to_ai_system_affecting_compliance(Change),
    requires_new_conformity_assessment(Change).
must_decide_on_change(notified_body(B), provider(P), change_decision(Change, supplement_to_certificate)) :-
    notified_body(B),
    provider(P),
    change_to_ai_system_affecting_compliance(Change),
    \+ requires_new_conformity_assessment(Change).
must_issue_supplement(notified_body(B), provider(P), supplement_to_certificate(Supplement)) :-
    notified_body(B),
    provider(P),
    change_to_ai_system_affecting_compliance(Change),
    \+ requires_new_conformity_assessment(Change),
    approved(Change),
    supplement_to_certificate(Supplement).
objective_of_surveillance(surveillance_of_quality_management_system(QMS), ensure_compliance_with_approved_qms_terms) :-
    approved_quality_management_system(QMS).
must_allow_access_to_premises(provider(P), notified_body(B), premises_for_design_development_testing) :-
    provider(P),
    notified_body(B),
    approved_quality_management_system(QMS),
    relates_to(QMS, P).
must_share_information(provider(P), notified_body(B), necessary_information) :-
    provider(P),
    notified_body(B),
    approved_quality_management_system(QMS),
    relates_to(QMS, P).
must_carry_out_periodic_audits(notified_body(B), provider(P), periodic_audit(Audit)) :-
    notified_body(B),
    provider(P),
    approved_quality_management_system(QMS),
    relates_to(QMS, P),
    periodic_audit(Audit).
must_provide_audit_report(notified_body(B), provider(P), audit_report) :-
    notified_body(B),
    provider(P),
    periodic_audit(Audit).
may_carry_out_additional_tests(notified_body(B), ai_system(S)) :-
    notified_body(B),
    ai_system(S),
    union_technical_documentation_assessment_certificate(Cert),
    issued_for(Cert, S).
high_risk_ai_system(S) :-
    ai_system(S).
intends_to_place_on_market_or_put_into_service(P, S) :-
    provider(P),
    ai_system(S).
covered_by_quality_management_system(S, QMS) :-
    ai_system(S),
    quality_management_system(QMS).
relates_to(QMS, P) :-
    quality_management_system(QMS),
    provider(P).
relates_to(Change, QMS) :-
    change_to_approved_quality_management_system(Change),
    quality_management_system(QMS).
relates_to(Change, S) :-
    change_to_ai_system_affecting_compliance(Change),
    ai_system(S).
issued_by(Cert, B) :-
    union_technical_documentation_assessment_certificate(Cert),
    notified_body(B).
issued_for(Cert, S) :-
    union_technical_documentation_assessment_certificate(Cert),
    ai_system(S).
indicates(Cert, provider_name_and_address(P)) :-
    union_technical_documentation_assessment_certificate(Cert),
    provider(P).
indicates(Cert, conclusions_of_examination).
indicates(Cert, conditions_for_validity).
indicates(Cert, data_for_identification(S)) :-
    union_technical_documentation_assessment_certificate(Cert),
    ai_system(S).
in_conformity_with_requirements(S, chapter_3_section_2) :-
    ai_system(S).
satisfied_with_provider_tests(B, S) :-
    notified_body(B),
    ai_system(S).
all_other_means_exhausted(S) :-
    ai_system(S).
reasoned_request(B, S) :-
    notified_body(B),
    ai_system(S).
subject_to_ip_and_trade_secret_protection(S) :-
    ai_system(S).
does_not_meet_training_data_requirement(S) :-
    ai_system(S).
requires_new_conformity_assessment(Change) :-
    change_to_ai_system_affecting_compliance(Change).
approved(Change) :-
    change_to_ai_system_affecting_compliance(Change).
provenance(quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(approved_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(union_technical_documentation_assessment_certificate/1, 'celex:32024R1689/oj#anx_7').
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#anx_7').
provenance(application_for_quality_management_system_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(application_for_technical_documentation_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(surveillance_of_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(periodic_audit/1, 'celex:32024R1689/oj#anx_7').
provenance(change_to_approved_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(change_to_ai_system_affecting_compliance/1, 'celex:32024R1689/oj#anx_7').
provenance(supplement_to_certificate/1, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_subject_to_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_assessment_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(must_implement_and_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_change/3, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_change_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_application_for_technical_documentation/3, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data_sets/3, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence_or_tests/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_adequate_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_training_and_models/3, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_to_issue_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_refusal_with_reasons/3, 'celex:32024R1689/oj#anx_7').
provenance(must_include_specific_considerations_on_training_data/3, 'celex:32024R1689/oj#anx_7').
provenance(must_require_retraining/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_decide_on_change/3, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_supplement/3, 'celex:32024R1689/oj#anx_7').
provenance(objective_of_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_to_premises/3, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/3, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/3, 'celex:32024R1689/oj#anx_7').
provenance(must_provide_audit_report/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_additional_tests/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(must_submit_registration_info/2, 'provider or deployer must submit specified information for registration of high-risk AI system', 'celex:32024R1689/oj#anx_8').
declared(registration_info_item/2, 'specific information item required for registration', 'celex:32024R1689/oj#anx_8').
declared(registration_info_section/2, 'which section of Annex VIII applies to which registration procedure', 'celex:32024R1689/oj#anx_8').
declared(must_keep_registration_info_updated/2, 'submitted registration information must be kept up to date', 'celex:32024R1689/oj#anx_8').
declared(exempt_from_instructions_for_use/1, 'high-risk AI system exempt from providing electronic instructions for use', 'celex:32024R1689/oj#anx_8').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#anx_8').
declared(law_enforcement_or_migration_area/1, 'high-risk AI system in law enforcement or migration, asylum and border control management area', 'celex:32024R1689/oj#anx_8').
registration_info_section(section_a, art_49_par_1).
must_submit_registration_info(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    registration_info_section(section_a, art_49_par_1).
must_keep_registration_info_updated(Provider, S) :-
    must_submit_registration_info(Provider, S).
registration_info_item(section_a, provider_name_address_contact).
registration_info_item(section_a, submitter_name_address_contact).
registration_info_item(section_a, authorised_representative_name_address_contact).
registration_info_item(section_a, ai_system_trade_name_and_reference).
registration_info_item(section_a, intended_purpose_description).
registration_info_item(section_a, system_information_and_operating_logic).
registration_info_item(section_a, ai_system_status).
registration_info_item(section_a, notified_body_certificate_details).
registration_info_item(section_a, notified_body_certificate_copy).
registration_info_item(section_a, member_states_of_availability).
registration_info_item(section_a, eu_declaration_of_conformity_copy).
registration_info_item(section_a, electronic_instructions_for_use).
registration_info_item(section_a, url_for_additional_information).
registration_info_section(section_b, art_49_par_2).
must_submit_registration_info(Provider, S) :-
    provider(Provider),
    ai_system(S),
    registration_info_section(section_b, art_49_par_2).
registration_info_item(section_b, provider_name_address_contact).
registration_info_item(section_b, submitter_name_address_contact).
registration_info_item(section_b, authorised_representative_name_address_contact).
registration_info_item(section_b, ai_system_trade_name_and_reference).
registration_info_item(section_b, intended_purpose_description).
registration_info_item(section_b, not_high_risk_condition_art_6_par_3).
registration_info_item(section_b, not_high_risk_grounds_summary).
registration_info_item(section_b, ai_system_status).
registration_info_item(section_b, member_states_of_availability).
registration_info_section(section_c, art_49_par_3).
must_submit_registration_info(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    registration_info_section(section_c, art_49_par_3).
must_keep_registration_info_updated(Deployer, S) :-
    must_submit_registration_info(Deployer, S).
registration_info_item(section_c, deployer_name_address_contact).
registration_info_item(section_c, submitter_name_address_contact).
registration_info_item(section_c, provider_database_entry_url).
registration_info_item(section_c, fundamental_rights_impact_assessment_summary).
registration_info_item(section_c, data_protection_impact_assessment_summary).
exempt_from_instructions_for_use(S) :-
    high_risk_ai_system(S),
    law_enforcement_or_migration_area(S).
law_enforcement_or_migration_area(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).
law_enforcement_or_migration_area(S) :-
    high_risk_ai_system(S),
    migration_asylum_border_control_area(S).
declared(law_enforcement_area/1, 'high-risk AI system in law enforcement area per Annex III point 1', 'celex:32024R1689/oj#anx_8').
declared(migration_asylum_border_control_area/1, 'high-risk AI system in migration, asylum and border control management area per Annex III points 6 or 7', 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_info/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_info_item/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_info_section/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_info_updated/2, 'celex:32024R1689/oj#anx_8').
provenance(exempt_from_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_or_migration_area/1, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#anx_8').
provenance(migration_asylum_border_control_area/1, 'celex:32024R1689/oj#anx_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').

% ==== celex:32024R1689/oj#anx_9 ====
declared(must_submit_registration_information/2, 'provider or prospective provider must submit and keep up to date the specified information for real-world testing registration', 'celex:32024R1689/oj#anx_9').
declared(registration_information_item/1, 'an item of information required for registration of real-world testing', 'celex:32024R1689/oj#anx_9').
declared(high_risk_ai_system_listed_in_annex_3/1, 'high-risk AI system listed in Annex III', 'celex:32024R1689/oj#anx_9').
declared(testing_in_real_world_conditions_registration/1, 'registration of testing in real world conditions under Article 60', 'celex:32024R1689/oj#anx_9').
must_submit_registration_information(Provider, Testing) :-
    provider(Provider),
    high_risk_ai_system_listed_in_annex_3(System),
    testing_in_real_world_conditions(Testing),
    involves_system(Testing, System),
    testing_in_real_world_conditions_registration(Testing).
must_submit_registration_information(ProspectiveProvider, Testing) :-
    prospective_provider(ProspectiveProvider),
    high_risk_ai_system_listed_in_annex_3(System),
    testing_in_real_world_conditions(Testing),
    involves_system(Testing, System),
    testing_in_real_world_conditions_registration(Testing).
registration_information_item(unique_identification_number(Testing)) :-
    testing_in_real_world_conditions_registration(Testing).
registration_information_item(name_and_contact_details(Provider)) :-
    provider(Provider),
    testing_in_real_world_conditions_registration(Testing),
    involves_provider(Testing, Provider).
registration_information_item(name_and_contact_details(Deployer)) :-
    deployer(Deployer),
    testing_in_real_world_conditions_registration(Testing),
    involves_deployer(Testing, Deployer).
registration_information_item(brief_description(System)) :-
    ai_system(System),
    intended_purpose(System),
    testing_in_real_world_conditions_registration(Testing),
    involves_system(Testing, System).
registration_information_item(summary_of_main_characteristics(Plan)) :-
    real_world_testing_plan(Plan),
    testing_in_real_world_conditions_registration(Testing),
    has_plan(Testing, Plan).
registration_information_item(suspension_or_termination_info(Testing)) :-
    testing_in_real_world_conditions_registration(Testing).
high_risk_ai_system_listed_in_annex_3(S) :-
    ai_system(S).
testing_in_real_world_conditions_registration(T) :-
    testing_in_real_world_conditions(T).
declared(prospective_provider/1, 'entity that intends to become a provider', 'celex:32024R1689/oj#anx_9').
declared(involves_system/2, 'testing involves an AI system', 'celex:32024R1689/oj#anx_9').
declared(involves_provider/2, 'testing involves a provider', 'celex:32024R1689/oj#anx_9').
declared(involves_deployer/2, 'testing involves a deployer', 'celex:32024R1689/oj#anx_9').
declared(has_plan/2, 'testing has a real-world testing plan', 'celex:32024R1689/oj#anx_9').
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(registration_information_item/1, 'celex:32024R1689/oj#anx_9').
provenance(high_risk_ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#anx_9').
provenance(testing_in_real_world_conditions_registration/1, 'celex:32024R1689/oj#anx_9').
provenance(prospective_provider/1, 'celex:32024R1689/oj#anx_9').
provenance(involves_system/2, 'celex:32024R1689/oj#anx_9').
provenance(involves_provider/2, 'celex:32024R1689/oj#anx_9').
provenance(involves_deployer/2, 'celex:32024R1689/oj#anx_9').
provenance(has_plan/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system/1, 'large-scale IT system in the area of Freedom, Security and Justice listed in Annex X', 'celex:32024R1689/oj#anx_10').
declared(schengen_information_system/1, 'Schengen Information System (SIS)', 'celex:32024R1689/oj#anx_10').
declared(visa_information_system/1, 'Visa Information System (VIS)', 'celex:32024R1689/oj#anx_10').
declared(eurodac/1, 'Eurodac system for comparison of biometric data', 'celex:32024R1689/oj#anx_10').
declared(entry_exit_system/1, 'Entry/Exit System (EES)', 'celex:32024R1689/oj#anx_10').
declared(european_travel_information_and_authorisation_system/1, 'European Travel Information and Authorisation System (ETIAS)', 'celex:32024R1689/oj#anx_10').
declared(european_criminal_records_information_system_tcn/1, 'European Criminal Records Information System on third-country nationals and stateless persons (ECRIS-TCN)', 'celex:32024R1689/oj#anx_10').
declared(interoperability_framework/1, 'framework for interoperability between EU information systems', 'celex:32024R1689/oj#anx_10').
large_scale_it_system(S) :-
    schengen_information_system(S).
large_scale_it_system(S) :-
    visa_information_system(S).
large_scale_it_system(S) :-
    eurodac(S).
large_scale_it_system(S) :-
    entry_exit_system(S).
large_scale_it_system(S) :-
    european_travel_information_and_authorisation_system(S).
large_scale_it_system(S) :-
    european_criminal_records_information_system_tcn(S).
large_scale_it_system(S) :-
    interoperability_framework(S).
schengen_information_system(sis).
visa_information_system(vis).
eurodac(eurodac).
entry_exit_system(ees).
european_travel_information_and_authorisation_system(etias).
european_criminal_records_information_system_tcn(ecris_tcn).
interoperability_framework(interoperability_borders_visa).
interoperability_framework(interoperability_police_judicial_asylum_migration).
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#anx_10').
provenance(schengen_information_system/1, 'celex:32024R1689/oj#anx_10').
provenance(visa_information_system/1, 'celex:32024R1689/oj#anx_10').
provenance(eurodac/1, 'celex:32024R1689/oj#anx_10').
provenance(entry_exit_system/1, 'celex:32024R1689/oj#anx_10').
provenance(european_travel_information_and_authorisation_system/1, 'celex:32024R1689/oj#anx_10').
provenance(european_criminal_records_information_system_tcn/1, 'celex:32024R1689/oj#anx_10').
provenance(interoperability_framework/1, 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1860/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1861/oj').
references('celex:32024R1689/oj#anx_10', 'celex:42000A0922(01)/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1987/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1862/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32007D0533/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1986/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32010D0261/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32021R1133/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32013R0603/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R0794/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0816/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0818/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32021R1134/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32008R0767/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32009R0810/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R0399/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32017R2226/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1240/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0817/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0896/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32004D0512/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32008D0633/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1358/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1315/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1350/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32001L0055/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32011R1077/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(technical_documentation/1, 'technical documentation for general-purpose AI models as required by Annex XI', 'celex:32024R1689/oj#anx_11').
declared(general_purpose_ai_model_provider/1, 'provider of a general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model with systemic risk', 'celex:32024R1689/oj#anx_11').
declared(must_provide_technical_documentation/2, 'provider must provide technical documentation for a general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(documentation_contains_general_description/1, 'technical documentation contains general description of the model', 'celex:32024R1689/oj#anx_11').
declared(documentation_contains_development_description/1, 'technical documentation contains detailed description of development process', 'celex:32024R1689/oj#anx_11').
declared(documentation_contains_evaluation_strategies/1, 'technical documentation contains evaluation strategies for systemic risk models', 'celex:32024R1689/oj#anx_11').
declared(documentation_contains_adversarial_testing_description/1, 'technical documentation contains description of adversarial testing measures', 'celex:32024R1689/oj#anx_11').
declared(documentation_contains_system_architecture_description/1, 'technical documentation contains description of system architecture', 'celex:32024R1689/oj#anx_11').
declared(general_description_element/1, 'element of general description of general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(development_description_element/1, 'element of detailed description of model development', 'celex:32024R1689/oj#anx_11').
declared(evaluation_strategy_element/1, 'element of evaluation strategies description', 'celex:32024R1689/oj#anx_11').
declared(adversarial_testing_element/1, 'element of adversarial testing measures description', 'celex:32024R1689/oj#anx_11').
declared(system_architecture_element/1, 'element of system architecture description', 'celex:32024R1689/oj#anx_11').
general_purpose_ai_model_provider(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_model(P, M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_provide_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    provides_model(P, M).
technical_documentation(D) :-
    documentation_contains_general_description(D),
    documentation_contains_development_description(D).
technical_documentation(D) :-
    documentation_contains_general_description(D),
    documentation_contains_development_description(D),
    documentation_contains_evaluation_strategies(D),
    documentation_contains_adversarial_testing_description(D),
    documentation_contains_system_architecture_description(D).
documentation_contains_general_description(D) :-
    general_description_element(tasks_intended(D)),
    general_description_element(integration_types(D)),
    general_description_element(acceptable_use_policies(D)),
    general_description_element(release_date_and_distribution_methods(D)),
    general_description_element(architecture_and_parameters(D)),
    general_description_element(input_output_modality_and_format(D)),
    general_description_element(licence(D)).
documentation_contains_development_description(D) :-
    development_description_element(technical_means_for_integration(D)),
    development_description_element(design_specifications_and_training_process(D)),
    development_description_element(training_data_information(D)),
    development_description_element(computational_resources_used(D)),
    development_description_element(energy_consumption(D)).
documentation_contains_evaluation_strategies(D) :-
    evaluation_strategy_element(evaluation_strategies_and_results(D)),
    evaluation_strategy_element(evaluation_criteria_metrics_and_limitations_methodology(D)).
documentation_contains_adversarial_testing_description(D) :-
    adversarial_testing_element(internal_external_adversarial_testing_measures(D)),
    adversarial_testing_element(model_adaptations_alignment_fine_tuning(D)).
documentation_contains_system_architecture_description(D) :-
    system_architecture_element(software_components_integration(D)).
general_description_element(tasks_intended(_D)).
general_description_element(integration_types(_D)).
general_description_element(acceptable_use_policies(_D)).
general_description_element(release_date_and_distribution_methods(_D)).
general_description_element(architecture_and_parameters(_D)).
general_description_element(input_output_modality_and_format(_D)).
general_description_element(licence(_D)).
development_description_element(technical_means_for_integration(_D)).
development_description_element(design_specifications_and_training_process(_D)).
development_description_element(training_data_information(_D)).
development_description_element(computational_resources_used(_D)).
development_description_element(energy_consumption(_D)).
evaluation_strategy_element(evaluation_strategies_and_results(_D)).
evaluation_strategy_element(evaluation_criteria_metrics_and_limitations_methodology(_D)).
adversarial_testing_element(internal_external_adversarial_testing_measures(_D)).
adversarial_testing_element(model_adaptations_alignment_fine_tuning(_D)).
system_architecture_element(software_components_integration(_D)).
provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_11').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#anx_11').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').
provenance(must_provide_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_general_description/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_development_description/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_evaluation_strategies/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_adversarial_testing_description/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_system_architecture_description/1, 'celex:32024R1689/oj#anx_11').
provenance(general_description_element/1, 'celex:32024R1689/oj#anx_11').
provenance(development_description_element/1, 'celex:32024R1689/oj#anx_11').
provenance(evaluation_strategy_element/1, 'celex:32024R1689/oj#anx_11').
provenance(adversarial_testing_element/1, 'celex:32024R1689/oj#anx_11').
provenance(system_architecture_element/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(must_provide_transparency_information/2, 'downstream provider receives required transparency information from general-purpose AI model provider', 'celex:32024R1689/oj#anx_12').
declared(transparency_information_contains/2, 'transparency information document contains a required element', 'celex:32024R1689/oj#anx_12').
declared(general_description_of_model/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(development_process_description/1, 'description of model elements and development process', 'celex:32024R1689/oj#anx_12').
declared(model_tasks_and_integration/1, 'tasks the model is intended to perform and AI systems it can be integrated into', 'celex:32024R1689/oj#anx_12').
declared(acceptable_use_policies/1, 'acceptable use policies applicable to the model', 'celex:32024R1689/oj#anx_12').
declared(release_date_and_distribution/1, 'date of release and methods of distribution', 'celex:32024R1689/oj#anx_12').
declared(hardware_software_interaction/1, 'how the model interacts with external hardware or software', 'celex:32024R1689/oj#anx_12').
declared(relevant_software_versions/1, 'versions of relevant software related to model use', 'celex:32024R1689/oj#anx_12').
declared(model_architecture_and_parameters/1, 'architecture and number of parameters of the model', 'celex:32024R1689/oj#anx_12').
declared(input_output_modality_and_format/1, 'modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(model_licence/1, 'licence for the model', 'celex:32024R1689/oj#anx_12').
declared(technical_means_for_integration/1, 'technical means required for integration into AI systems', 'celex:32024R1689/oj#anx_12').
declared(input_output_maximum_size/1, 'modality, format and maximum size of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(training_testing_validation_data_info/1, 'information on data used for training, testing and validation', 'celex:32024R1689/oj#anx_12').
must_provide_transparency_information(Provider, DownstreamProvider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(DownstreamProvider),
    integrates_model_into_ai_system(DownstreamProvider, Model).
integrates_model_into_ai_system(DownstreamProvider, Model) :-
    downstream_provider(DownstreamProvider),
    general_purpose_ai_model(Model).
transparency_information_contains(Info, general_description_of_model(Description)) :-
    general_description_of_model(Description),
    transparency_information_contains(Info, model_tasks_and_integration(Description)),
    transparency_information_contains(Info, acceptable_use_policies(Description)),
    transparency_information_contains(Info, release_date_and_distribution(Description)),
    transparency_information_contains(Info, hardware_software_interaction(Description)),
    transparency_information_contains(Info, relevant_software_versions(Description)),
    transparency_information_contains(Info, model_architecture_and_parameters(Description)),
    transparency_information_contains(Info, input_output_modality_and_format(Description)),
    transparency_information_contains(Info, model_licence(Description)).
transparency_information_contains(Info, development_process_description(Description)) :-
    development_process_description(Description),
    transparency_information_contains(Info, technical_means_for_integration(Description)),
    transparency_information_contains(Info, input_output_maximum_size(Description)),
    transparency_information_contains(Info, training_testing_validation_data_info(Description)).
provenance(must_provide_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(transparency_information_contains/2, 'celex:32024R1689/oj#anx_12').
provenance(general_description_of_model/1, 'celex:32024R1689/oj#anx_12').
provenance(development_process_description/1, 'celex:32024R1689/oj#anx_12').
provenance(model_tasks_and_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(release_date_and_distribution/1, 'celex:32024R1689/oj#anx_12').
provenance(hardware_software_interaction/1, 'celex:32024R1689/oj#anx_12').
provenance(relevant_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(model_architecture_and_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_modality_and_format/1, 'celex:32024R1689/oj#anx_12').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_12').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_maximum_size/1, 'celex:32024R1689/oj#anx_12').
provenance(training_testing_validation_data_info/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(commission_criterion/2, 'criterion the Commission takes into account for designating systemic risk GPAI models', 'celex:32024R1689/oj#anx_13').
declared(systemic_risk_designation_criterion/1, 'criterion for determining systemic risk designation of general-purpose AI model', 'celex:32024R1689/oj#anx_13').
commission_criterion(M, number_of_parameters) :-
    general_purpose_ai_model(M).
commission_criterion(M, quality_or_size_of_data_set) :-
    general_purpose_ai_model(M).
commission_criterion(M, amount_of_computation_used_for_training) :-
    general_purpose_ai_model(M).
commission_criterion(M, input_and_output_modalities) :-
    general_purpose_ai_model(M).
commission_criterion(M, benchmarks_and_evaluations_of_capabilities) :-
    general_purpose_ai_model(M).
commission_criterion(M, high_impact_on_internal_market_due_to_reach) :-
    general_purpose_ai_model(M).
commission_criterion(M, number_of_registered_end_users) :-
    general_purpose_ai_model(M).
systemic_risk_designation_criterion(number_of_parameters).
systemic_risk_designation_criterion(quality_or_size_of_data_set).
systemic_risk_designation_criterion(amount_of_computation_used_for_training).
systemic_risk_designation_criterion(input_and_output_modalities).
systemic_risk_designation_criterion(benchmarks_and_evaluations_of_capabilities).
systemic_risk_designation_criterion(high_impact_on_internal_market_due_to_reach).
systemic_risk_designation_criterion(number_of_registered_end_users).
high_impact_on_internal_market_due_to_reach(M) :-
    general_purpose_ai_model(M),
    made_available_to_business_users(M, Count),
    Count >= 10000,
    business_users_established_in_union.
made_available_to_business_users(M, Count) :-
    general_purpose_ai_model(M),
    registered_business_users(M, Count).
amount_of_computation_used_for_training(M, floating_point_operations(N)) :-
    general_purpose_ai_model(M),
    floating_point_operation(N).
amount_of_computation_used_for_training(M, estimated_cost(C)) :-
    general_purpose_ai_model(M).
amount_of_computation_used_for_training(M, estimated_time(T)) :-
    general_purpose_ai_model(M).
amount_of_computation_used_for_training(M, estimated_energy_consumption(E)) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, text_to_text) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, text_to_image) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, multi_modality) :-
    general_purpose_ai_model(M).
input_and_output_modalities(M, biological_sequences) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, number_of_tasks_without_additional_training) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, adaptability_to_learn_new_distinct_tasks) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, level_of_autonomy) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, scalability) :-
    general_purpose_ai_model(M).
benchmarks_and_evaluations_of_capabilities(M, tools_access) :-
    general_purpose_ai_model(M).
provenance(commission_criterion/2, 'celex:32024R1689/oj#anx_13').
provenance(systemic_risk_designation_criterion/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market_due_to_reach/1, 'celex:32024R1689/oj#anx_13').
provenance(made_available_to_business_users/2, 'celex:32024R1689/oj#anx_13').
provenance(amount_of_computation_used_for_training/2, 'celex:32024R1689/oj#anx_13').
provenance(input_and_output_modalities/2, 'celex:32024R1689/oj#anx_13').
provenance(benchmarks_and_evaluations_of_capabilities/2, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

