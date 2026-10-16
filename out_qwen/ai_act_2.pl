% ============================================================
% Regulation (EU) 2024/1689 (AI Act) as a Prolog program.
%
% Phase A froze the predicate vocabulary from the definitions article;
% Phase B wrote clauses against it, one LLM call per article and annex.
% This file is pass 2. Assembly is deterministic.
%
% declared(Name/Arity, Gloss, Source) records the vocabulary.
% provenance(Name/Arity, UnitId) ties each clause head to its provision.
% references(From, To) is the cross-reference graph, from the corpus's
%   human-annotated <ref> markup.
%
% A declared predicate with no clause is an INPUT SLOT, not a defect:
% whether a particular system is real_time(S) is a question about the
% world, which no legal text answers. Assert those facts yourself.
% There are 251 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous able_to_carry_out_activities_diligently/1.
:- discontiguous acceptable_residual_risk/1.
:- discontiguous access_controls_and_documentation_applied/1.
:- discontiguous access_via_technical_means/2.
:- discontiguous active_in_conformity_assessment_for_high_risk_ai_systems/1.
:- discontiguous adequate_corrective_action_taken/2.
:- discontiguous adherence_limited_to_art_53/2.
:- discontiguous adheres_to_approved_code_of_practice/2.
:- discontiguous adheres_to_approved_code_or_standard/2.
:- discontiguous administrative_fine_applies/2.
:- discontiguous adopting_detailed_measures_for_ai_security_equipment/2.
:- discontiguous adverse_legal_effect_decision/1.
:- discontiguous advisory_forum/1.
:- discontiguous affected_person/1.
:- discontiguous ai_office_has_powers_to_monitor/1.
:- discontiguous ai_office_may_initiate_structured_dialogue/2.
:- discontiguous alias/2.
:- discontiguous annex_ii_criminal_offence/1.
:- discontiguous annex_vii_conformity_assessment_procedure/1.
:- discontiguous annual_sandbox_report/1.
:- discontiguous appeal_procedure_available/1.
:- discontiguous applied_harmonised_standard_or_common_specification/1.
:- discontiguous appropriate_protection_and_deletion/1.
:- discontiguous artistic_or_fictional_work/1.
:- discontiguous assessment_carried_out_by_accreditation_body/2.
:- discontiguous assisted_by_committee/1.
:- discontiguous asylum_visa_examination/1.
:- discontiguous authorisation_deemed_justified/1.
:- discontiguous authorisation_rejected/1.
:- discontiguous authorised_as_notified_body/1.
:- discontiguous authorised_for_criminal_offence_purposes/1.
:- discontiguous authorised_to_access_exit_reports/2.
:- discontiguous available_to_report_criminal_offence/1.
:- discontiguous aware_of_risk/2.
:- discontiguous based_solely_on_output/1.
:- discontiguous becomes_high_risk_due_to_purpose_modification/1.
:- discontiguous binding_in_all_member_states/1.
:- discontiguous board_task/1.
:- discontiguous body_governed_by_public_law/1.
:- discontiguous built_in_oversight_measure/2.
:- discontiguous cannot_be_fulfilled_by_other_data/1.
:- discontiguous capable_of_tasks_with_integrity_and_competence/1.
:- discontiguous ce_marking_indicates_compliance_with_other_law/1.
:- discontiguous certificate/1.
:- discontiguous certificate_remains_valid_after_cessation/1.
:- discontiguous certificate_remains_valid_after_withdrawal/1.
:- discontiguous certificate_remains_valid_during_suspension_or_restriction/1.
:- discontiguous cession_recipient/1.
:- discontiguous code_of_conduct_drawn_up_by/2.
:- discontiguous code_of_practice_covers_obligations/1.
:- discontiguous code_of_practice_meets_objective_requirements/1.
:- discontiguous code_ready_deadline_applies/1.
:- discontiguous commission_empowered_to_amend_annex_iii/1.
:- discontiguous commission_may_designate_systemic_risk_model/1.
:- discontiguous commission_may_make_commitments_binding/2.
:- discontiguous commission_may_request_measures/2.
:- discontiguous committee_within_meaning_of_regulation/2.
:- discontiguous common_specification_adopted/1.
:- discontiguous compliance_restored/1.
:- discontiguous compliant_but_risky_ai_system/1.
:- discontiguous compliant_with_requirements/1.
:- discontiguous compliant_with_transparency_obligations/1.
:- discontiguous complies_with_european_harmonised_standard/2.
:- discontiguous condition_for_adding_high_risk_use_case/1.
:- discontiguous condition_for_removing_high_risk_system/1.
:- discontiguous confidential_exchange_between_authorities/1.
:- discontiguous conformity_assessment_based_on_internal_control/1.
:- discontiguous conformity_assessment_body_of_third_country/1.
:- discontiguous considered_provider_of_high_risk_ai_system/1.
:- discontiguous considers_non_conformity/2.
:- discontiguous contains_development_process_description/1.
:- discontiguous contains_general_description_of_model/1.
:- discontiguous continues_to_learn_after_placing_on_market/1.
:- discontiguous controlled_environment_for_innovation/1.
:- discontiguous controller_of_eu_database/1.
:- discontiguous controls_input_data/2.
:- discontiguous copy_of_consent_provided/2.
:- discontiguous covered_by_union_harmonisation_legislation_annex_i_section_1/1.
:- discontiguous creditworthiness_assessment/1.
:- discontiguous crime_victim_risk_assessment/1.
:- discontiguous criminal_investigation_context/1.
:- discontiguous criminal_offence_profiling/1.
:- discontiguous critical_infrastructure_management/1.
:- discontiguous data_protection_authority/1.
:- discontiguous data_protection_authority_applies/1.
:- discontiguous data_protection_impact_assessment_conducted/1.
:- discontiguous data_protection_impact_assessment_required/1.
:- discontiguous data_transfer_safeguards_implemented/1.
:- discontiguous decision_related_to_natural_persons/1.
:- discontiguous delegated_act_entry_into_force_condition/1.
:- discontiguous delegated_power_conferred_on_commission/1.
:- discontiguous delegation_period_applies/1.
:- discontiguous delegation_revocable/1.
:- discontiguous delegation_tacitly_extended/1.
:- discontiguous deletion_does_not_decrease_protection/1.
:- discontiguous deletion_upon_correction_or_expiry/1.
:- discontiguous demonstrates_conformity_with_harmonised_standard/1.
:- discontiguous deployer_implemented_oversight_measure/2.
:- discontiguous deployer_informed_and_agreed/2.
:- discontiguous derogation_authorisation_granted/2.
:- discontiguous describes_relevant_facts_and_reasons/1.
:- discontiguous designation_based_on_annex_xiii_criteria/1.
:- discontiguous designation_changed/1.
:- discontiguous designation_suspended_or_restricted/1.
:- discontiguous direct_exposure_to_voters/1.
:- discontiguous directive_2019_1937_applies_to_reporting/1.
:- discontiguous documentation_demonstrates_compliance/1.
:- discontiguous documentation_retention_period/2.
:- discontiguous does_not_represent_parties/1.
:- discontiguous drawn_up_in_understandable_language/2.
:- discontiguous duly_reasoned/1.
:- discontiguous edps_acts_as_competent_authority_for_union_bodies/1.
:- discontiguous edps_is_market_surveillance_authority/1.
:- discontiguous education_access_determination/1.
:- discontiguous education_level_assessment/1.
:- discontiguous effective_mitigation_possible/1.
:- discontiguous effective_monitoring_mechanisms_exist/1.
:- discontiguous effective_oversight_of_testing/1.
:- discontiguous election_influence/1.
:- discontiguous emergency_service_dispatch/1.
:- discontiguous employer/1.
:- discontiguous enables_awareness_of_automation_bias/2.
:- discontiguous enables_correct_interpretation_of_output/2.
:- discontiguous enables_decision_not_to_use_or_override/2.
:- discontiguous enables_monitoring_of_operation/2.
:- discontiguous enables_safe_intervention_or_stop/2.
:- discontiguous enables_understanding_of_capacities_and_limitations/2.
:- discontiguous ensures_confidence_in_performance/1.
:- discontiguous entry_risk_assessment/1.
:- discontiguous equivalent_national_coverage/2.
:- discontiguous established_in_third_country/1.
:- discontiguous established_or_represented_in_union/1.
:- discontiguous established_under_national_law/1.
:- discontiguous eu_declaration_contains_annex_v_information/1.
:- discontiguous eu_declaration_of_conformity_identifies_system/2.
:- discontiguous eu_declaration_states_compliance/2.
:- discontiguous eu_declaration_translated_for_authorities/1.
:- discontiguous european_ai_board/1.
:- discontiguous european_data_protection_supervisor/1.
:- discontiguous evaluation_purpose/2.
:- discontiguous evidence_reliability_evaluation/1.
:- discontiguous examination_procedure_applies/1.
:- discontiguous exceptional_reason_applies/1.
:- discontiguous exempt_authorised_representative_obligation/1.
:- discontiguous exempt_biometric_categorisation/1.
:- discontiguous exempt_biometric_verification/1.
:- discontiguous exempt_criminal_risk_assessment/1.
:- discontiguous exempt_emotion_inference/1.
:- discontiguous exempt_emotion_or_categorisation/1.
:- discontiguous exempt_financial_fraud_detection/1.
:- discontiguous exempt_free_and_open_source_ai_system/1.
:- discontiguous exempt_from_administrative_fines/2.
:- discontiguous exempt_from_content_marking/1.
:- discontiguous exempt_from_fria_notification/1.
:- discontiguous exempt_from_interaction_transparency/1.
:- discontiguous exempt_from_two_person_verification/1.
:- discontiguous exempt_high_risk_annex_iii/1.
:- discontiguous exempt_instructions_for_use_in_registration/1.
:- discontiguous exempt_military_defence_national_security_purpose/1.
:- discontiguous exempt_open_source_model/1.
:- discontiguous exempt_personal_non_professional_activity/1.
:- discontiguous exempt_political_campaign_administration/1.
:- discontiguous exempt_pre_market_research_testing_or_development/1.
:- discontiguous exempt_scientific_research_and_development/1.
:- discontiguous exempt_sensitive_operational_data/1.
:- discontiguous exempt_travel_document_verification/1.
:- discontiguous exit_report/1.
:- discontiguous exit_report_publicly_available/1.
:- discontiguous extension_of_scope_of_notification_applies/1.
:- discontiguous facilitates_development_and_testing/1.
:- discontiguous financial_institution_provider/1.
:- discontiguous financial_supervision_authority_applies/1.
:- discontiguous follows_guidance_in_good_faith/1.
:- discontiguous formal_non_compliance_finding/2.
:- discontiguous fria_exempt_system/1.
:- discontiguous fria_subject_deployer/1.
:- discontiguous fundamental_rights_authority/1.
:- discontiguous general_purpose_ai_model_placed_before_august_2025/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous generates_synthetic_content/1.
:- discontiguous grounds_for_testing_intervention/2.
:- discontiguous guideline_topic/2.
:- discontiguous harmonised_standard_published_for_obligations/0.
:- discontiguous has_adequate_competent_personnel/1.
:- discontiguous has_ai_expertise/1.
:- discontiguous has_exclusive_powers_to_supervise_and_enforce/2.
:- discontiguous has_grounds_to_consider_infringement/1.
:- discontiguous has_high_impact_capabilities/1.
:- discontiguous has_legal_personality/1.
:- discontiguous has_liability_insurance/1.
:- discontiguous has_permanent_availability_of_personnel/1.
:- discontiguous has_recourse_to_subsidiary/2.
:- discontiguous has_right_to_lodge_complaint/2.
:- discontiguous has_sufficient_internal_competences/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_annex_3_point_2_to_8/1.
:- discontiguous high_risk_ai_system_annex_iii/1.
:- discontiguous high_risk_ai_system_annex_iii_biometrics/1.
:- discontiguous high_risk_ai_system_annex_iii_critical_infrastructure/1.
:- discontiguous high_risk_ai_system_annex_iii_education/1.
:- discontiguous high_risk_ai_system_annex_iii_employment/1.
:- discontiguous high_risk_ai_system_annex_iii_essential_services/1.
:- discontiguous high_risk_ai_system_annex_iii_justice/1.
:- discontiguous high_risk_ai_system_annex_iii_law_enforcement/1.
:- discontiguous high_risk_ai_system_annex_iii_migration/1.
:- discontiguous high_risk_ai_system_art_6_par_1/1.
:- discontiguous high_risk_ai_system_art_6_par_2/1.
:- discontiguous high_risk_ai_system_placed_before_august_2026/1.
:- discontiguous human_oversight_measure/2.
:- discontiguous identification_number_in_promotional_material/1.
:- discontiguous importer_verification_completed/1.
:- discontiguous includes_other_relevant_information/1.
:- discontiguous includes_real_world_testing/1.
:- discontiguous independent_advice_requester/1.
:- discontiguous independent_from_providers/1.
:- discontiguous independent_of_competitor/2.
:- discontiguous independent_of_operator_with_economic_interest/2.
:- discontiguous independent_of_provider/2.
:- discontiguous indicates_provider_point_of_contact/1.
:- discontiguous informed_consent_documented/1.
:- discontiguous informed_consent_or_law_enforcement_exception/1.
:- discontiguous informs_public_on_matters_of_public_interest/1.
:- discontiguous infringement_ground_for_fine/2.
:- discontiguous initial_identification_exception/1.
:- discontiguous initial_provider_no_longer_considered_provider/1.
:- discontiguous initiating_authority/2.
:- discontiguous instructions_contain_characteristics_and_limitations/1.
:- discontiguous instructions_contain_human_oversight_measures/1.
:- discontiguous instructions_contain_log_interpretation_mechanisms/1.
:- discontiguous instructions_contain_predetermined_changes/1.
:- discontiguous instructions_contain_provider_identity/1.
:- discontiguous instructions_contain_resource_and_maintenance_info/1.
:- discontiguous insurance_risk_assessment/1.
:- discontiguous intended_for_annex_iii_area/1.
:- discontiguous intended_for_law_enforcement_or_union_body/1.
:- discontiguous interaction_with_ai_is_obvious/1.
:- discontiguous interacts_directly_with_natural_persons/1.
:- discontiguous involved_in_application_of_regulation/1.
:- discontiguous involves_personal_data_processing/1.
:- discontiguous isolated_data_environment/1.
:- discontiguous joint_sandbox_established/2.
:- discontiguous judicial_interpretation_assistance/1.
:- discontiguous large_scale_it_system_component_placed_before_august_2027/1.
:- discontiguous law_enforcement_context/1.
:- discontiguous law_enforcement_legal_basis_exists/1.
:- discontiguous law_enforcement_purpose/1.
:- discontiguous learning_outcome_evaluation/1.
:- discontiguous liability_assumed_by_member_state/1.
:- discontiguous liability_remains_applicable/2.
:- discontiguous limited_applicable_provisions_for_harmonised_product/1.
:- discontiguous limited_duration_before_market/1.
:- discontiguous limited_reporting_obligation_applies/1.
:- discontiguous linked_to_criminal_offence_or_threat/1.
:- discontiguous listed_in_annex_i_section_a/1.
:- discontiguous listed_in_annex_i_section_b/1.
:- discontiguous listed_in_annex_x/1.
:- discontiguous logging_capability_enables_relevant_recording/1.
:- discontiguous logs_under_control/2.
:- discontiguous maintains_confidentiality/1.
:- discontiguous mandate_empowers_addressing_representative/2.
:- discontiguous market_surveillance_authority_acts_as_notified_body/2.
:- discontiguous max_administrative_fine_amount/2.
:- discontiguous max_validity_period/2.
:- discontiguous may_advise_on_guidance_documents/1.
:- discontiguous may_advise_on_international_matters/1.
:- discontiguous may_appoint_independent_expert/1.
:- discontiguous may_approve_code_by_implementing_act/1.
:- discontiguous may_assist_ai_office_on_sandboxes/1.
:- discontiguous may_assist_in_developing_organisational_and_technical_expertise/1.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_contribute_to_harmonisation_of_administrative_practices/1.
:- discontiguous may_contribute_to_third_country_cooperation/1.
:- discontiguous may_cooperate_with_union_bodies/1.
:- discontiguous may_coordinate_national_competent_authorities/1.
:- discontiguous may_exercise_powers_for_assessment/2.
:- discontiguous may_extend_provisional_validity/2.
:- discontiguous may_facilitate_common_criteria_and_understanding/1.
:- discontiguous may_impose_fine_on_general_purpose_ai_model_provider/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_invite_adherence_to_code/2.
:- discontiguous may_invite_participant_to_draw_up_code/2.
:- discontiguous may_issue_recommendations_and_opinions/1.
:- discontiguous may_issue_request_on_scientific_panel_request/2.
:- discontiguous may_monitor_implementation/2.
:- discontiguous may_notify_conformity_assessment_body/2.
:- discontiguous may_present_arguments_against_systemic_risk_classification/2.
:- discontiguous may_promote_ai_literacy_and_awareness/1.
:- discontiguous may_provide_advice_on_implementation/1.
:- discontiguous may_provide_guidance_and_advice/1.
:- discontiguous may_provide_opinions_on_qualified_alerts/1.
:- discontiguous may_receive_member_state_opinions/1.
:- discontiguous may_rely_on_code_of_practice/2.
:- discontiguous may_request_access_to_model/2.
:- discontiguous may_request_commission_to_exercise_powers/2.
:- discontiguous may_request_documentation_or_information/2.
:- discontiguous may_request_information_enforcement/2.
:- discontiguous may_request_testing_via_msa/2.
:- discontiguous may_require_further_evidence_or_tests/2.
:- discontiguous may_require_testing_modification/2.
:- discontiguous may_share_technical_and_regulatory_expertise/1.
:- discontiguous may_submit_complaint/2.
:- discontiguous may_support_joint_market_surveillance_activities/1.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous meets_condition_of_art_51_1_a/1.
:- discontiguous meets_expert_criteria/1.
:- discontiguous meets_requirements_of_art_31/1.
:- discontiguous migration_border_control_context/1.
:- discontiguous minimum_period_between_reassessment_requests/2.
:- discontiguous misclassified_to_circumvent_requirements/1.
:- discontiguous modifies_intended_purpose/2.
:- discontiguous must_accompany_with_instructions_for_use/2.
:- discontiguous must_account_for_standards_and_specifications/1.
:- discontiguous must_account_for_state_of_art/1.
:- discontiguous must_achieve_accuracy_robustness_cybersecurity/1.
:- discontiguous must_act_in_accordance_with_confidentiality_obligations/1.
:- discontiguous must_address_feedback_loops_with_mitigation/1.
:- discontiguous must_adopt_implementing_acts_for_proceedings/1.
:- discontiguous must_adopt_implementing_acts_for_sandbox/1.
:- discontiguous must_adopt_rules_of_procedure/1.
:- discontiguous must_advise_ai_office/2.
:- discontiguous must_advise_and_assist_commission_and_member_states/1.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_affix_ce_marking_to_packaging_or_documentation/1.
:- discontiguous must_affix_ce_marking_visibly_legibly_indelibly/1.
:- discontiguous must_agree_testing_terms_in_sandbox/2.
:- discontiguous must_allocate_sufficient_resources/2.
:- discontiguous must_allow_access_to_documentation/3.
:- discontiguous must_allow_automatic_recording_of_events/1.
:- discontiguous must_allow_premises_access_for_surveillance/2.
:- discontiguous must_apply_for_qms_assessment/2.
:- discontiguous must_apply_for_technical_documentation_assessment/2.
:- discontiguous must_apply_standards_procedure/2.
:- discontiguous must_appoint_advisory_forum_members/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_assess_and_amend_specification/2.
:- discontiguous must_assess_and_mitigate_systemic_risks/2.
:- discontiguous must_assess_annex_iii_and_art_5_lists/1.
:- discontiguous must_assess_changes_affecting_compliance/2.
:- discontiguous must_assess_competence_and_resource_requirements_annually/1.
:- discontiguous must_assess_enforcement_structure/1.
:- discontiguous must_assess_impact_on_certificates/2.
:- discontiguous must_assess_qms_compliance/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assign_single_identification_number/2.
:- discontiguous must_associate_data_protection_authority/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_be_duly_reasoned/1.
:- discontiguous must_be_resilient_against_unauthorised_alteration/1.
:- discontiguous must_be_resilient_to_errors_faults_inconsistencies/1.
:- discontiguous must_bring_into_compliance_by_december_2030/2.
:- discontiguous must_carry_out_periodic_audits/2.
:- discontiguous must_carry_out_tests_if_unsatisfied/2.
:- discontiguous must_collaborate_with_reporting_deployer/2.
:- discontiguous must_communicate_authority_identity_to_commission/1.
:- discontiguous must_communicate_decision_on_compliant_but_risky_system/2.
:- discontiguous must_communicate_fine_information_to_board/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_communicate_testing_decision_to_other_states/2.
:- discontiguous must_complement_dpia_with_fria/2.
:- discontiguous must_comply_with_copyright_policy/2.
:- discontiguous must_comply_with_registration_obligations/2.
:- discontiguous must_comply_with_section_2_requirements/1.
:- discontiguous must_consider_circumstances_for_fine/2.
:- discontiguous must_consider_sme_interests_in_codes_of_conduct/2.
:- discontiguous must_consider_sme_needs/1.
:- discontiguous must_consider_vulnerable_groups/2.
:- discontiguous must_consult_advisory_forum/2.
:- discontiguous must_consult_and_decide_on_authorisation/2.
:- discontiguous must_consult_member_state_experts/2.
:- discontiguous must_consult_on_objection/2.
:- discontiguous must_consult_on_standardisation_request/2.
:- discontiguous must_consult_other_authorities_for_guidance/2.
:- discontiguous must_cooperate_during_investigation/2.
:- discontiguous must_cooperate_on_model_compliance/2.
:- discontiguous must_cooperate_on_risk_mitigation/2.
:- discontiguous must_cooperate_on_sandbox_testing/2.
:- discontiguous must_cooperate_with_ai_office_on_evaluation/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_competent_authorities/2.
:- discontiguous must_cooperate_with_new_provider/2.
:- discontiguous must_cooperate_with_relevant_authorities/2.
:- discontiguous must_coordinate_within_board/2.
:- discontiguous must_decide_authorisation_justification/2.
:- discontiguous must_decide_on_national_measure/2.
:- discontiguous must_declare_accuracy_metrics_in_instructions/2.
:- discontiguous must_declare_no_duplicate_qms_application/2.
:- discontiguous must_declare_no_duplicate_td_application/2.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_conformity_on_request/2.
:- discontiguous must_describe_relevant_facts/2.
:- discontiguous must_design_for_human_oversight/2.
:- discontiguous must_designate_national_competent_authorities/1.
:- discontiguous must_designate_notifying_authority/2.
:- discontiguous must_designate_representative/2.
:- discontiguous must_designate_single_contact_point_for_board/2.
:- discontiguous must_designate_single_point_of_contact/1.
:- discontiguous must_designate_union_ai_testing_support_structure/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_risk_evaluation_methodology/1.
:- discontiguous must_develop_single_interface/2.
:- discontiguous must_develop_union_expertise_through_ai_office/2.
:- discontiguous must_direct_prospective_provider_to_service/2.
:- discontiguous must_disclose_ai_generated_text/2.
:- discontiguous must_disclose_deep_fake/2.
:- discontiguous must_document_non_high_risk_assessment/2.
:- discontiguous must_document_post_rbi_use/2.
:- discontiguous must_draw_up_declaration_of_interests/1.
:- discontiguous must_draw_up_delegation_report/2.
:- discontiguous must_draw_up_eu_declaration_of_conformity/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_eliminate_or_reduce_feedback_loop_risk/1.
:- discontiguous must_empower_facilitation_of_consistency/2.
:- discontiguous must_enable_authorised_representative/2.
:- discontiguous must_enable_representative_tasks/2.
:- discontiguous must_encourage_codes_of_practice/1.
:- discontiguous must_encourage_codes_of_practice/2.
:- discontiguous must_encourage_review_of_code/1.
:- discontiguous must_encourage_voluntary_codes_of_conduct/2.
:- discontiguous must_end_formal_non_compliance/2.
:- discontiguous must_ensure_accessibility_compliance/2.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_compliance_with_chapter_3_section_2/2.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_coordination_of_notified_bodies/2.
:- discontiguous must_ensure_cybersecurity_for_model/2.
:- discontiguous must_ensure_cybersecurity_level/1.
:- discontiguous must_ensure_efficient_organisation_of_support/2.
:- discontiguous must_ensure_input_data_relevance/2.
:- discontiguous must_ensure_participation_in_sectoral_group/2.
:- discontiguous must_ensure_product_compliance_with_union_legislation/2.
:- discontiguous must_ensure_representative_competence/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_ensure_sandbox_accessibility/2.
:- discontiguous must_ensure_storage_transport_compliance/2.
:- discontiguous must_ensure_subcontractor_meets_requirements/2.
:- discontiguous must_ensure_subsidiary_meets_requirements/2.
:- discontiguous must_ensure_testing_compliance/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_enter_data_into_eu_database/2.
:- discontiguous must_enter_into_consultation/2.
:- discontiguous must_entrust_implementation_to_ai_office/2.
:- discontiguous must_establish_ai_regulatory_sandbox/2.
:- discontiguous must_establish_communication_channel/2.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_standing_subgroup/2.
:- discontiguous must_evaluate_ai_office/1.
:- discontiguous must_evaluate_ai_system_compliance/2.
:- discontiguous must_evaluate_classification/2.
:- discontiguous must_evaluate_national_measure_for_compliant_but_risky_system/2.
:- discontiguous must_evaluate_regulation_periodically/1.
:- discontiguous must_evaluate_voluntary_codes_of_conduct/1.
:- discontiguous must_examine_qms_changes/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_examine_technical_documentation_for_compliance/2.
:- discontiguous must_exercise_powers_independently_and_impartially/1.
:- discontiguous must_facilitate_access_to_experts/2.
:- discontiguous must_facilitate_ai_office_tasks/2.
:- discontiguous must_facilitate_coordination/2.
:- discontiguous must_facilitate_cross_border_cooperation/1.
:- discontiguous must_facilitate_exchange_of_experience/1.
:- discontiguous must_facilitate_standardisation_participation/2.
:- discontiguous must_facilitate_voluntary_codes_of_conduct/2.
:- discontiguous must_follow_conformity_assessment_procedure/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_grant_access_to_data_and_documentation/2.
:- discontiguous must_grant_access_to_data_sets/2.
:- discontiguous must_grant_access_to_models_on_reasoned_request/2.
:- discontiguous must_grant_access_to_source_code/2.
:- discontiguous must_handle_complaint_according_to_procedures/2.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_identify_fundamental_rights_authorities/1.
:- discontiguous must_immediately_inform_authorities_of_risk/2.
:- discontiguous must_implement_ai_specific_cybersecurity_measures/1.
:- discontiguous must_implement_cybersecurity_measures/2.
:- discontiguous must_include_adequacy_procedures_in_qms_application/2.
:- discontiguous must_include_ai_system_list_in_qms_application/2.
:- discontiguous must_include_other_relevant_information/2.
:- discontiguous must_include_provider_details_in_qms_application/2.
:- discontiguous must_include_provider_details_in_td_application/2.
:- discontiguous must_include_qms_documentation_in_application/2.
:- discontiguous must_include_technical_documentation_in_qms_application/2.
:- discontiguous must_include_technical_documentation_in_td_application/2.
:- discontiguous must_indicate_decision_grounds_and_challenge/2.
:- discontiguous must_indicate_importer_details/2.
:- discontiguous must_indicate_point_of_contact/2.
:- discontiguous must_indicate_provider_identity/2.
:- discontiguous must_inform_about_required_certificate_action/2.
:- discontiguous must_inform_ai_office_of_suspension/2.
:- discontiguous must_inform_ai_office_of_termination/2.
:- discontiguous must_inform_and_cooperate_on_fundamental_rights_risk/2.
:- discontiguous must_inform_authorised_representative_of_non_conformity/2.
:- discontiguous must_inform_board_and_authorities_of_non_compliance/2.
:- discontiguous must_inform_board_of_measure/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_commission_and_member_states_of_authorisation/2.
:- discontiguous must_inform_commission_and_member_states_of_cross_border_noncompliance/2.
:- discontiguous must_inform_commission_of_specification_deficiency/2.
:- discontiguous must_inform_committee_of_conditions/2.
:- discontiguous must_inform_deployer_of_non_conformity/2.
:- discontiguous must_inform_distributor_of_non_conformity/2.
:- discontiguous must_inform_importer_of_non_conformity/2.
:- discontiguous must_inform_market_surveillance_authority_of_risk/2.
:- discontiguous must_inform_msa_of_request/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body_of_measure/2.
:- discontiguous must_inform_notified_body_of_risk/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_notifying_authority_of_subcontracting/2.
:- discontiguous must_inform_of_assumption_of_functions/2.
:- discontiguous must_inform_of_compliant_but_risky_finding/2.
:- discontiguous must_inform_of_intended_changes/2.
:- discontiguous must_inform_of_interaction/2.
:- discontiguous must_inform_of_measures_and_objections/2.
:- discontiguous must_inform_of_planned_cessation/2.
:- discontiguous must_inform_of_risk/2.
:- discontiguous must_inform_of_risk_and_suspend/2.
:- discontiguous must_inform_of_sandbox_establishment/2.
:- discontiguous must_inform_of_serious_incident/2.
:- discontiguous must_inform_of_system_operation/2.
:- discontiguous must_inform_other_authorities/2.
:- discontiguous must_inform_other_notified_bodies/2.
:- discontiguous must_inform_provider_or_importer_of_risk/2.
:- discontiguous must_inform_providers_of_designation_change/2.
:- discontiguous must_inform_public_authorities_of_incident/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_investigate_causes_of_risk/2.
:- discontiguous must_investigate_competence_doubt/2.
:- discontiguous must_investigate_non_compliance/2.
:- discontiguous must_issue_certificate_if_conformity/2.
:- discontiguous must_issue_standardisation_request/2.
:- discontiguous must_justify_non_compliance_with_common_specification/2.
:- discontiguous must_keep_assessment_documents/2.
:- discontiguous must_keep_documentation_at_disposal/2.
:- discontiguous must_keep_documentation_on_premises/2.
:- discontiguous must_keep_documents_for_period/2.
:- discontiguous must_keep_eu_declaration_of_conformity/2.
:- discontiguous must_keep_eu_declaration_up_to_date/2.
:- discontiguous must_keep_files_on_designation_change/2.
:- discontiguous must_keep_fundamental_rights_authority_list_updated/1.
:- discontiguous must_keep_importer_documentation/2.
:- discontiguous must_keep_list_up_to_date/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_registration_information_updated/2.
:- discontiguous must_keep_technical_documentation/2.
:- discontiguous must_keep_technical_documentation_for_model/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_lay_down_penalty_rules/1.
:- discontiguous must_maintain_approved_qms/2.
:- discontiguous must_maintain_information_platform/2.
:- discontiguous must_make_annual_report_public/2.
:- discontiguous must_make_available_information_and_assistance/2.
:- discontiguous must_make_contact_information_publicly_available/1.
:- discontiguous must_make_list_publicly_available/2.
:- discontiguous must_make_report_publicly_available/2.
:- discontiguous must_make_subsidiary_list_publicly_available/1.
:- discontiguous must_manage_conflicts_of_interest/1.
:- discontiguous must_mark_outputs_as_artificial/2.
:- discontiguous must_mitigate_or_suspend_testing/2.
:- discontiguous must_mitigate_significant_risks/2.
:- discontiguous must_monitor_and_evaluate_code/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_alter_system_before_informing_authority/2.
:- discontiguous must_not_make_available_if_non_compliant/2.
:- discontiguous must_not_seek_instructions/1.
:- discontiguous must_not_use_unregistered_system/2.
:- discontiguous must_notify_changes_to_notification/2.
:- discontiguous must_notify_commission_and_member_states/2.
:- discontiguous must_notify_commission_of_fines_and_proceedings/2.
:- discontiguous must_notify_commission_of_serious_incident/2.
:- discontiguous must_notify_commission_of_systemic_risk_model/2.
:- discontiguous must_notify_decision_to_authority/2.
:- discontiguous must_notify_delegated_act/2.
:- discontiguous must_notify_fria_results/2.
:- discontiguous must_notify_fundamental_rights_authority_list/2.
:- discontiguous must_notify_intended_qms_changes/2.
:- discontiguous must_notify_penalty_rules/2.
:- discontiguous must_notify_provisional_measures/2.
:- discontiguous must_notify_qms_decision/2.
:- discontiguous must_notify_rbi_use/2.
:- discontiguous must_notify_single_point_of_contact_to_commission/1.
:- discontiguous must_notify_td_assessment_decision/2.
:- discontiguous must_notify_testing_outcome/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_obtain_prior_authorisation_for_rbi/2.
:- discontiguous must_organise_communication_campaigns/2.
:- discontiguous must_organise_sme_training/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_perform_consistently_throughout_lifecycle/1.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_investigation_without_delay/2.
:- discontiguous must_perform_mandated_tasks/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_tasks_impartially/1.
:- discontiguous must_prepare_annual_activity_report/2.
:- discontiguous must_promote_procurement_best_practices/2.
:- discontiguous must_provide_access_on_behalf/2.
:- discontiguous must_provide_access_to_logs/2.
:- discontiguous must_provide_adequate_resources_to_authorities/1.
:- discontiguous must_provide_and_update_registration_information/2.
:- discontiguous must_provide_assessment_documentation/2.
:- discontiguous must_provide_certificate_information_to_competent_authority/2.
:- discontiguous must_provide_compliance_information_for_model/2.
:- discontiguous must_provide_conformity_information/2.
:- discontiguous must_provide_conformity_information_on_request/2.
:- discontiguous must_provide_conformity_information_to_peers/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_documentary_evidence_of_competence/2.
:- discontiguous must_provide_exchange_of_knowledge/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance_and_supervision/2.
:- discontiguous must_provide_independent_advice/2.
:- discontiguous must_provide_information_for_evaluation/2.
:- discontiguous must_provide_integration_information/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_notification_information/2.
:- discontiguous must_provide_priority_sandbox_access/2.
:- discontiguous must_provide_qualified_alert/2.
:- discontiguous must_provide_regulatory_guidance/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_standardised_templates/2.
:- discontiguous must_provide_technical_and_administrative_support/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_adequacy_assessment/1.
:- discontiguous must_publish_annual_report_on_rbi/1.
:- discontiguous must_publish_list_of_single_points_of_contact/1.
:- discontiguous must_publish_sandbox_list/2.
:- discontiguous must_publish_systemic_risk_model_list/1.
:- discontiguous must_publish_training_content_summary/2.
:- discontiguous must_put_in_place_quality_management_system/2.
:- discontiguous must_reassess_systemic_risk_designation/2.
:- discontiguous must_reduce_conformity_assessment_fees/2.
:- discontiguous must_refuse_certificate_if_non_conformity/2.
:- discontiguous must_register_at_national_level/2.
:- discontiguous must_register_in_eu_database/2.
:- discontiguous must_register_real_world_testing/2.
:- discontiguous must_register_system/2.
:- discontiguous must_register_use_in_eu_database/2.
:- discontiguous must_repeal_common_specification_on_standard_publication/2.
:- discontiguous must_report_annual_fines/2.
:- discontiguous must_report_competition_information/2.
:- discontiguous must_report_on_implementation/2.
:- discontiguous must_report_on_resources_to_commission/1.
:- discontiguous must_report_prohibited_practices/2.
:- discontiguous must_report_serious_incident_during_testing/2.
:- discontiguous must_report_serious_incident_to_authority/2.
:- discontiguous must_report_serious_incidents_for_model/2.
:- discontiguous must_request_authorisation_for_post_rbi/2.
:- discontiguous must_request_authorisation_without_undue_delay/2.
:- discontiguous must_request_corrective_measures/2.
:- discontiguous must_request_evidence_of_best_efforts/2.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require_compliance_and_corrective_action/2.
:- discontiguous must_require_corrective_action_for_noncompliance/2.
:- discontiguous must_require_risk_mitigation_measures/2.
:- discontiguous must_require_suspension_or_withdrawal_of_certificate/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_restrict_or_prohibit_or_recall/2.
:- discontiguous must_restrict_suspend_or_withdraw_designation/2.
:- discontiguous must_review_energy_efficiency_standardisation/1.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_safeguard_impartiality/1.
:- discontiguous must_select_expert_for_panel/2.
:- discontiguous must_set_up_and_maintain_eu_database/2.
:- discontiguous must_share_information_for_surveillance/2.
:- discontiguous must_specify_assistance_by_written_agreement/2.
:- discontiguous must_specify_clarity_and_consistency/2.
:- discontiguous must_stop_use_and_discard_outputs/2.
:- discontiguous must_stop_use_on_authorisation_rejection/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_report_on_rbi/2.
:- discontiguous must_submit_annual_sandbox_report/2.
:- discontiguous must_submit_documentation_to_notifying_authority/2.
:- discontiguous must_submit_eu_declaration_of_conformity/2.
:- discontiguous must_submit_general_evaluation_report/1.
:- discontiguous must_submit_notification_application/2.
:- discontiguous must_submit_real_world_testing_plan/2.
:- discontiguous must_submit_registration_information/2.
:- discontiguous must_submit_report_on_findings/2.
:- discontiguous must_supply_information_within_deadline/3.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_support_market_surveillance_authority/2.
:- discontiguous must_surveil_approved_qms/2.
:- discontiguous must_suspend_or_withdraw_certificate/2.
:- discontiguous must_take_complaint_into_account/2.
:- discontiguous must_take_corrective_action_for_all_marketed_systems/2.
:- discontiguous must_take_corrective_action_for_all_systems/2.
:- discontiguous must_take_corrective_action_for_compliant_but_risky_system/2.
:- discontiguous must_take_corrective_action_for_non_compliance/2.
:- discontiguous must_take_corrective_action_for_non_conformity/2.
:- discontiguous must_take_corrective_actions_and_provide_information/2.
:- discontiguous must_take_into_account_chapter_3_section_2_requirements/1.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_measures_within_days/2.
:- discontiguous must_take_provisional_measures_on_inaction/2.
:- discontiguous must_take_reports_positively_into_account/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_take_steps_to_comply_by_august_2027/2.
:- discontiguous must_take_steps_to_comply_by_august_2030/2.
:- discontiguous must_take_technical_organisational_measures_for_robustness/1.
:- discontiguous must_terminate_mandate_if_non_compliant/2.
:- discontiguous must_terminate_mandate_on_noncompliance/2.
:- discontiguous must_test_for_risk_management/2.
:- discontiguous must_transmit_resource_report_to_board/1.
:- discontiguous must_treat_information_confidentially/2.
:- discontiguous must_undergo_conformity_assessment/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_fria/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_use_digital_ce_marking/1.
:- discontiguous must_use_in_accordance_with_instructions/2.
:- discontiguous must_use_info_for_dpi_assessment/2.
:- discontiguous must_use_quality_datasets/1.
:- discontiguous must_use_quality_testing_datasets/1.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_conformity_documentation/2.
:- discontiguous must_verify_design_and_development_consistency/2.
:- discontiguous must_verify_provider_compliance/2.
:- discontiguous must_verify_quality_management_system_compliance/2.
:- discontiguous must_verify_sandbox_testing_compliance/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation_on_cessation/2.
:- discontiguous must_withdraw_unjustified_measure/2.
:- discontiguous necessary_and_proportionate_for_fulfilment_of_tasks/1.
:- discontiguous no_conflict_of_interest_with_conformity_assessment_bodies/1.
:- discontiguous no_decisions_affecting_data_subjects/1.
:- discontiguous no_longer_poses_significant_risk/1.
:- discontiguous no_transmission_to_third_parties/1.
:- discontiguous noncompliance_not_restricted_to_national_territory/2.
:- discontiguous noncompliance_reason/2.
:- discontiguous not_involved_in_design/1.
:- discontiguous not_involved_in_development/1.
:- discontiguous not_involved_in_marketing/1.
:- discontiguous not_involved_in_use/1.
:- discontiguous notification_application_accompanied_by/2.
:- discontiguous notification_deadline_for_systemic_risk_model/2.
:- discontiguous notification_decision_by_different_persons/1.
:- discontiguous notification_includes_full_details/1.
:- discontiguous notified_body/1.
:- discontiguous objection_raised_within_period/2.
:- discontiguous objective_evidence_based_learning/1.
:- discontiguous objective_fostering_innovation/1.
:- discontiguous objective_legal_certainty/1.
:- discontiguous objective_market_access/1.
:- discontiguous objective_sharing_best_practices/1.
:- discontiguous objectivity_and_impartiality_safeguarded/1.
:- discontiguous observes_sandbox_plan/1.
:- discontiguous offending_risk_assessment/1.
:- discontiguous operator/1.
:- discontiguous participates_in_coordination_activities/1.
:- discontiguous participates_in_standardisation/1.
:- discontiguous participation_fulfils_obligation/2.
:- discontiguous penalty_for_misleading_information/2.
:- discontiguous penalty_for_operator_obligation/2.
:- discontiguous penalty_for_prohibited_practice/2.
:- discontiguous performs_assistive_editing_function/1.
:- discontiguous permanent_member_of_advisory_forum/1.
:- discontiguous permitted_call_upon_scientific_panel_expert/2.
:- discontiguous permitted_further_processing_in_sandbox/1.
:- discontiguous permitted_integration_of_documentation/1.
:- discontiguous permitted_integration_of_monitoring_elements/1.
:- discontiguous permitted_law_enforcement_rbi_use/2.
:- discontiguous permitted_processing_of_special_categories/2.
:- discontiguous permitted_sandbox_testing_derogation/2.
:- discontiguous permitted_simplified_quality_management_compliance/1.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_third_country_exchange/1.
:- discontiguous permitted_to_perform_notified_body_activities/1.
:- discontiguous person_dealing_with_operation_and_use/2.
:- discontiguous person_identification_in_migration/1.
:- discontiguous personnel_have_necessary_expertise/1.
:- discontiguous placed_on_market_with_product_under_manufacturer_name/2.
:- discontiguous places_name_or_trademark_on_system/2.
:- discontiguous political_campaign_administrative_tool/1.
:- discontiguous polygraph_tool/1.
:- discontiguous poses_equivalent_or_greater_risk/1.
:- discontiguous post_market_monitoring_plan_required/1.
:- discontiguous post_market_monitoring_system_covers_performance_data/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous power_to_suspend_testing/2.
:- discontiguous pre_determined_change_excluded_from_substantial_modification/1.
:- discontiguous predictions_reversible/1.
:- discontiguous presents_risk_to_health_or_safety_or_fundamental_rights/1.
:- discontiguous presumed_compliant_with_art_31/1.
:- discontiguous presumed_compliant_with_cybersecurity_requirements/1.
:- discontiguous presumed_compliant_with_data_requirements/1.
:- discontiguous presumed_conformity_via_common_specification/2.
:- discontiguous presumed_conformity_with_requirements/1.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous presumed_high_internal_market_impact/1.
:- discontiguous presumption_of_conformity_shortcoming/1.
:- discontiguous private_entity_providing_public_services/1.
:- discontiguous procedural_rights_apply_to_general_purpose_ai_model_provider/1.
:- discontiguous procedures_developed_in_cooperation/1.
:- discontiguous processing_logs_kept/1.
:- discontiguous processing_records_include_justification/1.
:- discontiguous product_manufacturer_considered_provider/1.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_commercial_activities/1.
:- discontiguous prohibited_criminal_risk_assessment/1.
:- discontiguous prohibited_emotion_inference/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_sole_basis_decision/1.
:- discontiguous prohibited_subliminal_manipulation/1.
:- discontiguous prohibited_untargeted_facial_scraping/1.
:- discontiguous prohibited_untargeted_post_rbi_use/1.
:- discontiguous prohibited_vulnerability_exploitation/1.
:- discontiguous project_summary_published/1.
:- discontiguous proportionate_to_organisation_size/2.
:- discontiguous provenance/2.
:- discontiguous provider_agrees_to_subcontracting/2.
:- discontiguous provider_assumes_responsibility_for_compliance/2.
:- discontiguous provider_is_sensitive_authority/2.
:- discontiguous provisional_measure/1.
:- discontiguous provisional_measure_deemed_justified/2.
:- discontiguous public_authority_or_union_body/1.
:- discontiguous public_benefit_eligibility_evaluation/1.
:- discontiguous public_interest_area/1.
:- discontiguous publicly_accessible_eu_database_information/1.
:- discontiguous purpose_of_regulation/1.
:- discontiguous put_into_service_under_manufacturer_name/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous real_world_testing_approved/2.
:- discontiguous real_world_testing_duration_compliant/1.
:- discontiguous reason_to_consider_risk/2.
:- discontiguous reasonably_mitigable_risk/2.
:- discontiguous reassessment_request_contains_new_reasons/1.
:- discontiguous recruitment_or_selection/1.
:- discontiguous reference_made_to_paragraph/1.
:- discontiguous references/2.
:- discontiguous registered_in_eu_database/1.
:- discontiguous registration_in_secure_non_public_section/1.
:- discontiguous regulation_applies_from/2.
:- discontiguous regulation_applies_to_authorised_representative/1.
:- discontiguous regulation_applies_to_deployer/1.
:- discontiguous regulation_applies_to_distributor/1.
:- discontiguous regulation_applies_to_importer/1.
:- discontiguous regulation_applies_to_product_manufacturer/1.
:- discontiguous regulation_applies_to_provider/1.
:- discontiguous regulation_enters_into_force/1.
:- discontiguous regulation_lays_down/1.
:- discontiguous relevant_authority/1.
:- discontiguous relevant_change_to_notification/1.
:- discontiguous remains_high_risk_after_modification/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous reporting_deadline_days/2.
:- discontiguous representative_term/2.
:- discontiguous request_for_information_meets_requirements/1.
:- discontiguous required_additional_documentation_for_systemic_risk_model/1.
:- discontiguous required_data_governance_practices/1.
:- discontiguous required_documentation_item/2.
:- discontiguous required_eu_declaration_of_conformity_content/1.
:- discontiguous required_logging_for_annex_iii_point_1_a/1.
:- discontiguous required_registration_information_for_real_world_testing/1.
:- discontiguous required_registration_information_section_a/1.
:- discontiguous required_registration_information_section_b/1.
:- discontiguous required_registration_information_section_c/1.
:- discontiguous required_technical_documentation_element/2.
:- discontiguous required_technical_documentation_for_general_purpose_ai_model/1.
:- discontiguous required_transparency_information_for_downstream_provider/1.
:- discontiguous requires_separate_verification_by_two_persons/2.
:- discontiguous requires_third_party_conformity_assessment/1.
:- discontiguous responsible_for_assessment_and_notification/2.
:- discontiguous restricted_eu_database_information/1.
:- discontiguous risk_management_system_step/2.
:- discontiguous sandbox_implementing_act_covers/2.
:- discontiguous sandbox_interface/1.
:- discontiguous sandbox_list/1.
:- discontiguous sandbox_operational_by_deadline/1.
:- discontiguous sandbox_plan_agreed/2.
:- discontiguous satisfies_cybersecurity_requirements/1.
:- discontiguous satisfies_organisational_requirements/1.
:- discontiguous satisfies_process_requirements/1.
:- discontiguous satisfies_quality_management_requirements/1.
:- discontiguous satisfies_resource_requirements/1.
:- discontiguous scientific_panel/1.
:- discontiguous sectoral_market_surveillance_authority_applies/1.
:- discontiguous security_and_privacy_measures_applied/1.
:- discontiguous sensitive_attribute_inference/1.
:- discontiguous sensitive_law_enforcement_migration_system/1.
:- discontiguous sensitive_operational_data_excluded/1.
:- discontiguous significant_risk/1.
:- discontiguous simplified_technical_documentation_permitted/1.
:- discontiguous single_eu_declaration_for_multiple_legislation/1.
:- discontiguous single_technical_documentation_required/1.
:- discontiguous sme_penalty_cap_applies/2.
:- discontiguous sole_purpose_confirm_identity/1.
:- discontiguous source_code_access_conditions_fulfilled/1.
:- discontiguous specific_voluntary_requirement_objective/1.
:- discontiguous staff_bound_by_professional_secrecy/1.
:- discontiguous strictly_necessary_for_bias_detection/1.
:- discontiguous student_test_monitoring/1.
:- discontiguous subcontracts_tasks/2.
:- discontiguous subject_duly_informed/2.
:- discontiguous subject_to_human_editorial_control/1.
:- discontiguous subject_to_internal_risk_management_under_union_law/1.
:- discontiguous subject_to_sectoral_quality_management_obligations/1.
:- discontiguous substantially_alters_input_data/1.
:- discontiguous supervisory_powers_unaffected/1.
:- discontiguous supplies_component_for_high_risk_ai_system/2.
:- discontiguous supports_enforcement_activity/2.
:- discontiguous suspension_decision/1.
:- discontiguous systemic_risk_criterion/1.
:- discontiguous taken_into_account/2.
:- discontiguous takes_account_of_provider_characteristics/1.
:- discontiguous takes_full_responsibility_for_subcontracted_tasks/2.
:- discontiguous technical_documentation_complete/1.
:- discontiguous technical_documentation_contains_annex_iv_elements/1.
:- discontiguous technical_documentation_demonstrates_compliance/1.
:- discontiguous technical_limitations_on_reuse_applied/1.
:- discontiguous testing_before_market_or_service/1.
:- discontiguous third_party_damage/1.
:- discontiguous union_institution_body_office_or_agency/1.
:- discontiguous union_safeguard_procedure_applies/1.
:- discontiguous urgency_situation_for_law_enforcement/1.
:- discontiguous used_by_sensitive_authority/1.
:- discontiguous uses_training_techniques/1.
:- discontiguous validity_condition_for_suspension_or_restriction_met/1.
:- discontiguous voluntary_application_of_chapter_3_section_2_requirements_applies/1.
:- discontiguous vulnerable_subjects_protected/1.
:- discontiguous work_relationship_decision/1.
:- discontiguous workplace_use/1.
:- discontiguous written_proof/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic adopting_act_concerning_ai_safety_component/2.
:- dynamic adverse_impact_considered/2.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_safety_component/1.
:- dynamic ai_system/1.
:- dynamic annex_viii_section_i_data/1.
:- dynamic annex_viii_section_ii_data/1.
:- dynamic annex_viii_section_iii_data/1.
:- dynamic ascertained_non_compliance_of_notified_body/1.
:- dynamic authorised_representative/1.
:- dynamic based_on_accreditation_certificate/1.
:- dynamic before_placing_on_market_or_service/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic board_representative/2.
:- dynamic capability_benchmark_evaluation/1.
:- dynamic ce_marking/1.
:- dynamic ce_marking_affixed_in_violation_of_art_48/1.
:- dynamic ce_marking_affixing_not_possible_or_warranted/1.
:- dynamic ce_marking_not_affixed/1.
:- dynamic certificate_covers_cybersecurity_requirements/1.
:- dynamic certified_under_published_cybersecurity_scheme/1.
:- dynamic classified_as_non_high_risk_by_provider/1.
:- dynamic code_of_practice_addresses_issue/2.
:- dynamic commission_activity_pursuant_to_art_8_par_1/1.
:- dynamic commission_considers_measure_contrary_to_law/1.
:- dynamic commission_decision_on_equivalent_capabilities/1.
:- dynamic common_specification/1.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_carried_out/1.
:- dynamic contains_ai_system_identification/1.
:- dynamic contains_conformity_statement/1.
:- dynamic contains_notified_body_details/1.
:- dynamic contains_personal_data_compliance_statement/1.
:- dynamic contains_provider_information/1.
:- dynamic contains_signature_details/1.
:- dynamic contains_sole_responsibility_statement/1.
:- dynamic contains_standards_references/1.
:- dynamic continues_to_learn_after_market_or_service/1.
:- dynamic corrective_action_taken_within_deadline/2.
:- dynamic covered_by_annex_i/1.
:- dynamic covered_by_union_harmonisation_legislation/1.
:- dynamic critical_infrastructure/1.
:- dynamic dataset_quality_or_size/1.
:- dynamic decision_based_on_ai_output/2.
:- dynamic deep_fake/1.
:- dynamic deployer/1.
:- dynamic designated_under_other_union_legislation/1.
:- dynamic detailed_development_description/1.
:- dynamic detects_decision_patterns_without_replacement/1.
:- dynamic determined_not_high_risk/1.
:- dynamic digital_ce_marking_accessible/1.
:- dynamic disclosure_would_jeopardise_security/1.
:- dynamic distributor/1.
:- dynamic distributor_considers_non_compliant/2.
:- dynamic downstream_provider/1.
:- dynamic emotion_recognition_system/1.
:- dynamic enforcement_activity/1.
:- dynamic equivalent_level_of_compliance_ensured/1.
:- dynamic eu_database/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic eu_declaration_of_conformity_copy/1.
:- dynamic eu_declaration_of_conformity_not_drawn_up/1.
:- dynamic eu_declaration_of_conformity_not_drawn_up_correctly/1.
:- dynamic exception_from_explanation_obligation_applies/1.
:- dynamic extension_of_scope_of_notification/1.
:- dynamic financial_fraud_detection_purpose/1.
:- dynamic financial_institution/1.
:- dynamic financial_institution_internal_governance_compliance/1.
:- dynamic financial_services_documentation_applies/2.
:- dynamic floating_point_operation/1.
:- dynamic free_and_open_source_licence/1.
:- dynamic general_description_of_ai_system/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_model_provider/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_covers_requirement/2.
:- dynamic harmonised_standard_insufficient_on_fundamental_rights/1.
:- dynamic harmonised_standard_non_compliant_with_request/1.
:- dynamic harmonised_standard_not_delivered_in_time/1.
:- dynamic harmonised_standards_list/1.
:- dynamic has_accreditation_certificate/1.
:- dynamic has_partner_or_linked_enterprise/1.
:- dynamic has_union_presence/1.
:- dynamic high_impact_capabilities/1.
:- dynamic high_internal_market_impact/1.
:- dynamic high_risk/1.
:- dynamic high_risk_ai_system_annex_3_point_1/1.
:- dynamic high_risk_ai_system_annex_iii_point_2/1.
:- dynamic holds_appropriate_security_clearance/2.
:- dynamic importer/1.
:- dynamic improves_result_of_human_activity/1.
:- dynamic includes_accountability_framework/1.
:- dynamic includes_communication_handling/1.
:- dynamic includes_data_management_systems/1.
:- dynamic includes_design_control_procedures/1.
:- dynamic includes_development_quality_assurance/1.
:- dynamic includes_examination_and_validation_procedures/1.
:- dynamic includes_post_market_monitoring/1.
:- dynamic includes_record_keeping_systems/1.
:- dynamic includes_regulatory_compliance_strategy/1.
:- dynamic includes_resource_management/1.
:- dynamic includes_risk_management_system/1.
:- dynamic includes_serious_incident_reporting/1.
:- dynamic includes_technical_specifications_application/1.
:- dynamic information_insufficient/1.
:- dynamic informed_consent/1.
:- dynamic input_data/1.
:- dynamic input_output_modality/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_purpose/1.
:- dynamic issued_by_notified_body/2.
:- dynamic large_scale_it_system_component/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic lifecycle_changes_description/1.
:- dynamic logging_capability/1.
:- dynamic makes_accessible_under_free_and_open_source_licence/1.
:- dynamic making_available_on_market/1.
:- dynamic market_surveillance_authority/1.
:- dynamic meets_conditions_of_art_51/1.
:- dynamic member_of_scientific_panel/2.
:- dynamic member_state/1.
:- dynamic member_state_failed_to_take_corrective_measures/1.
:- dynamic microenterprise/1.
:- dynamic minimum_log_retention_period/2.
:- dynamic model_parameter_count/1.
:- dynamic monitoring_and_control_information/1.
:- dynamic must_allow_surveillance_access/2.
:- dynamic must_comply_with_registration/2.
:- dynamic must_encourage_code_of_conduct/2.
:- dynamic must_ensure_cybersecurity_protection/2.
:- dynamic must_ensure_data_relevance/2.
:- dynamic must_ensure_product_compliance/2.
:- dynamic must_ensure_single_contact_point/2.
:- dynamic must_evaluate_national_measure/2.
:- dynamic must_inform_termination/2.
:- dynamic must_keep_documentation/2.
:- dynamic must_provide_information/2.
:- dynamic must_report_serious_incident/2.
:- dynamic must_require_compliance_action/2.
:- dynamic must_stop_use/2.
:- dynamic must_supply_information/2.
:- dynamic must_take_corrective_action/2.
:- dynamic national_competent_authority/1.
:- dynamic national_measure_justified/1.
:- dynamic necessary_and_appropriate/1.
:- dynamic no_authorised_representative_appointed/1.
:- dynamic no_harmonised_standard_reference_published/1.
:- dynamic non_compliance_attributed_to_standards_shortcoming/1.
:- dynamic non_compliance_with_art_5_prohibition/1.
:- dynamic non_personal_data/1.
:- dynamic not_directly_involved_in_activity/2.
:- dynamic notified/1.
:- dynamic notifying_authority/1.
:- dynamic objection_raised_by_authority/2.
:- dynamic objection_raised_within_period/1.
:- dynamic parameters_publicly_available/1.
:- dynamic parameters_publicly_available_for_model/1.
:- dynamic performance_metrics_appropriateness_description/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_narrow_procedural_task/1.
:- dynamic performs_preparatory_task_for_annex_iii/1.
:- dynamic personal_data/1.
:- dynamic placing_on_market/1.
:- dynamic point_of_contact/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic post_market_monitoring_system_description/1.
:- dynamic presents_risk/1.
:- dynamic produces_legal_effects/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic prohibited_practice_infringement/1.
:- dynamic provider/1.
:- dynamic provider_offers_commitments_during_dialogue/2.
:- dynamic provides_general_purpose_ai_model/2.
:- dynamic public_authority_deployer/1.
:- dynamic public_authority_use/1.
:- dynamic publicly_accessible_space/1.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic qualified_alert_from_scientific_panel/1.
:- dynamic qualified_alert_received/1.
:- dynamic quality_management_system_documented/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_doubt_competence/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/2.
:- dynamic recall_of_ai_system/1.
:- dynamic registered_business_user_count/1.
:- dynamic registered_end_user_count/1.
:- dynamic registered_high_risk_ai_system/1.
:- dynamic registered_non_high_risk_ai_system/1.
:- dynamic registration_in_eu_database_not_carried_out/1.
:- dynamic released_under_free_and_open_source_licence/1.
:- dynamic relevant_market_surveillance_authority/1.
:- dynamic remote/1.
:- dynamic required_technical_documentation_content/1.
:- dynamic requirements_of_chapter_3_section_2/1.
:- dynamic right_to_explanation_provided_under_union_law/1.
:- dynamic risk/1.
:- dynamic risk_management_system_description/1.
:- dynamic safety_component/1.
:- dynamic sandbox_plan/1.
:- dynamic scientific_panel_expert/1.
:- dynamic sectoral_group_of_notified_bodies/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic sets_period/1.
:- dynamic significantly_affects_person/1.
:- dynamic single_point_of_contact/1.
:- dynamic sme_provider/1.
:- dynamic solely_profiling_based/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specified_not_to_be_changed_into_high_risk/1.
:- dynamic standardisation_request_not_accepted/1.
:- dynamic subject/1.
:- dynamic subject_to_other_union_law_requiring_ce_marking/1.
:- dynamic subject_to_significant_design_change/1.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason_to_consider_non_compliant/2.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_concern_from_evaluation/1.
:- dynamic technical_documentation_not_available/1.
:- dynamic tested_in_multiple_member_states/1.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_intervention_decision/1.
:- dynamic trained_and_tested_on_setting_specific_data/1.
:- dynamic training_computation/2.
:- dynamic training_computation_amount/1.
:- dynamic training_data/1.
:- dynamic travel_document_verification_purpose/1.
:- dynamic union_agreement_concluded_with_third_country/1.
:- dynamic union_ai_testing_support/1.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_body/1.
:- dynamic urgency_applies/1.
:- dynamic use_not_restricted_to_national_territory/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.

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

% ==== RECONCILED VOCABULARY (Phase B2) ====
declared(adopting_act_concerning_ai_safety_component/2, 'adoption of an act concerning an AI system that is a safety component', 'reconciled').
declared(ai_safety_component/1, 'AI system which is a safety component within the meaning of this Regulation', 'reconciled').
declared(before_placing_on_market_or_service/1, 'before placing on market or service', 'reconciled').
declared(ce_marking_indicates_compliance_with_other_law/1, 'CE marking indicates fulfilment of other Union law requirements', 'reconciled').
declared(commission_activity_pursuant_to_art_8_par_1/1, 'activity carried out by the Commission pursuant to Article 8(1) of Directive 2014/90/EU', 'reconciled').
declared(compliant_but_risky_ai_system/1, 'high-risk AI system that complies with the regulation but presents a risk', 'reconciled').
declared(conformity_assessment_carried_out/1, 'conformity assessment carried out', 'reconciled').
declared(covered_by_annex_i/1, 'product or AI system covered by Union harmonisation legislation listed in Annex I', 'reconciled').
declared(covered_by_union_harmonisation_legislation/1, 'high-risk AI system covered by Union harmonisation legislation listed in Annex I Section A', 'reconciled').
declared(designation_suspended_or_restricted/1, 'designation suspended or restricted', 'reconciled').
declared(does_not_represent_parties/1, 'body or personnel do not represent parties engaged in design, development, marketing or use', 'reconciled').
declared(established_under_national_law/1, 'notified body established under national law of a Member State', 'reconciled').
declared(financial_fraud_detection_purpose/1, 'purpose of detecting financial fraud', 'reconciled').
declared(financial_institution/1, 'provider that is a financial institution subject to Union financial services law', 'reconciled').
declared(free_and_open_source_licence/1, 'free and open source licence', 'reconciled').
declared(general_purpose_ai_model_provider/1, 'general purpose ai model provider', 'reconciled').
declared(high_risk/1, 'AI system found to be high-risk during evaluation', 'reconciled').
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'reconciled').
declared(high_risk_ai_system_annex_3_point_1/1, 'high-risk AI system listed in Annex III point 1', 'reconciled').
declared(high_risk_ai_system_annex_iii/1, 'AI system listed in Annex III as high-risk', 'reconciled').
declared(identification_number_in_promotional_material/1, 'notified body number indicated in promotional material mentioning CE compliance', 'reconciled').
declared(independent_of_operator_with_economic_interest/2, 'notified body is independent of operators with economic interest in assessed systems', 'reconciled').
declared(large_scale_it_system_component/1, 'AI system that is a component of a large-scale IT system listed in Annex X', 'reconciled').
declared(logging_capability/1, 'technical capability to record events automatically', 'reconciled').
declared(meets_requirements_of_art_31/1, 'entity satisfies requirements laid down in Article 31', 'reconciled').
declared(must_affix_ce_marking_to_packaging_or_documentation/1, 'CE marking affixed to packaging or accompanying documentation', 'reconciled').
declared(must_affix_ce_marking_visibly_legibly_indelibly/1, 'CE marking affixed in visible, legible and indelible manner', 'reconciled').
declared(must_allow_surveillance_access/2, 'obligation to grant immediate access to technical documentation upon request', 'reconciled').
declared(must_comply_with_registration/2, 'authorised representative must comply with registration obligations or ensure correctness', 'reconciled').
declared(must_cooperate_with_authorities/2, 'authorised representative must cooperate with competent authorities on risk mitigation', 'reconciled').
declared(must_encourage_code_of_conduct/2, 'obligation to encourage drawing up of codes of conduct', 'reconciled').
declared(must_ensure_cybersecurity_protection/2, 'provider must ensure cybersecurity for model and infrastructure', 'reconciled').
declared(must_ensure_data_relevance/2, 'must ensure data relevance', 'reconciled').
declared(must_ensure_product_compliance/2, 'must ensure product compliance', 'reconciled').
declared(must_ensure_single_contact_point/2, 'Member State obligation regarding single contact point designation', 'reconciled').
declared(must_evaluate_national_measure/2, 'Commission obligation to evaluate a national measure', 'reconciled').
declared(must_inform_of_risk/2, 'importer must inform provider, representative and authorities if system presents risk', 'reconciled').
declared(must_inform_termination/2, 'authorised representative must inform authority and notified body about mandate termination', 'reconciled').
declared(must_keep_documentation/2, 'authorised representative must keep documentation at disposal of authorities for specified period', 'reconciled').
declared(must_provide_information/2, 'authorised representative must provide information to demonstrate conformity upon reasoned request', 'reconciled').
declared(must_report_serious_incident/2, 'provider must report serious incidents and corrective measures to AI Office and authorities', 'reconciled').
declared(must_require_compliance_action/2, 'market surveillance authority must require provider to take compliance action', 'reconciled').
declared(must_safeguard_impartiality/1, 'Board obligation regarding organisation and operation', 'reconciled').
declared(must_stop_use/2, 'authority must stop use if authorisation refused', 'reconciled').
declared(must_submit_annual_report/2, 'National authority must submit annual report on RBI use to Commission', 'reconciled').
declared(must_supply_information/2, 'Provider or representative must supply requested information', 'reconciled').
declared(must_take_corrective_action/2, 'provider must take corrective action for AI systems on market', 'reconciled').
declared(must_treat_information_confidentially/2, 'information obtained under article must be treated confidentially', 'reconciled').
declared(must_use_digital_ce_marking/1, 'CE marking in digital form', 'reconciled').
declared(not_involved_in_design/1, 'body or personnel not directly involved in design of high-risk AI systems', 'reconciled').
declared(not_involved_in_development/1, 'body or personnel not directly involved in development of high-risk AI systems', 'reconciled').
declared(not_involved_in_marketing/1, 'body or personnel not directly involved in marketing of high-risk AI systems', 'reconciled').
declared(not_involved_in_use/1, 'body or personnel not directly involved in use of high-risk AI systems', 'reconciled').
declared(parameters_publicly_available/1, 'parameters publicly available', 'reconciled').
declared(point_of_contact/2, 'point of contact', 'reconciled').
declared(presents_risk/1, 'presents a risk within the meaning of Article 79(1)', 'reconciled').
declared(prohibited_practice_infringement/1, 'non-compliance with prohibition in Article 5', 'reconciled').
declared(provides_general_purpose_ai_model/2, 'provider develops or places a general-purpose AI model on the market', 'reconciled').
declared(public_authority_use/1, 'AI system intended to be used by public authorities', 'reconciled').
declared(reasoned_request/2, 'reasoned request', 'reconciled').
declared(relevant_market_surveillance_authority/1, 'relevant market surveillance authority', 'reconciled').
declared(required_technical_documentation_content/1, 'content requirements for technical documentation of general-purpose AI models', 'reconciled').
declared(requirements_of_chapter_3_section_2/1, 'requirements set out in Chapter III Section 2 of this Regulation', 'reconciled').
declared(sets_period/1, 'sets period', 'reconciled').
declared(single_point_of_contact/1, 'market surveillance authority designated as contact point', 'reconciled').
declared(solely_profiling_based/1, 'solely profiling based', 'reconciled').
declared(sufficient_reason_to_consider_non_compliant/2, 'sufficient reason to consider non compliant', 'reconciled').
declared(training_computation/2, 'cumulative amount of computation used for training measured in floating point operations', 'reconciled').
declared(travel_document_verification_purpose/1, 'purpose of verifying travel documents', 'reconciled').
declared(union_body/1, 'Union institution, body, office or agency', 'reconciled').
declared(urgency_applies/1, 'Duly justified case of urgency permitting deferred registration or authorisation', 'reconciled').
alias(adopting_delegated_act_concerning_safety_component_ai_system/2, adopting_act_concerning_ai_safety_component/2).
alias(ai_system_safety_component/1, ai_safety_component/1).
alias(concerns_ai_system_as_safety_component/1, ai_safety_component/1).
alias(concerns_ai_system_which_is_safety_component/1, ai_safety_component/1).
alias(before_placing_on_market_or_putting_into_service/1, before_placing_on_market_or_service/1).
alias(before_placing_on_market/1, before_placing_on_market_or_service/1).
alias(prior_to_placing_on_market_or_putting_into_service/1, before_placing_on_market_or_service/1).
alias(must_indicate_other_law_compliance_in_ce_marking/1, ce_marking_indicates_compliance_with_other_law/1).
alias(activity_pursuant_to_directive_2014_90_art_8_par_1/1, commission_activity_pursuant_to_art_8_par_1/1).
alias(finding_of_compliant_but_risky_system/1, compliant_but_risky_ai_system/1).
alias(conformity_assessment_carried_out_by_provider/1, conformity_assessment_carried_out/1).
alias(covered_by_annex_i_legislation/1, covered_by_annex_i/1).
alias(union_harmonisation_legislation_applies/1, covered_by_union_harmonisation_legislation/1).
alias(union_harmonisation_legislation_product/1, covered_by_union_harmonisation_legislation/1).
alias(product_covered_by_union_harmonisation_legislation/1, covered_by_union_harmonisation_legislation/1).
alias(related_to_product_covered_by_union_harmonisation_legislation/1, covered_by_union_harmonisation_legislation/1).
alias(designation_restricted_suspended_or_withdrawn/1, designation_suspended_or_restricted/1).
alias(must_not_represent_parties/1, does_not_represent_parties/1).
alias(must_be_established_under_national_law/1, established_under_national_law/1).
alias(purpose_is_financial_fraud_detection/1, financial_fraud_detection_purpose/1).
alias(financial_institution_provider/1, financial_institution/1).
alias(released_under_free_open_source_licence/1, free_and_open_source_licence/1).
alias(makes_accessible_under_free_and_open_source_licence/1, free_and_open_source_licence/1).
alias(supplies_general_purpose_ai_model/1, general_purpose_ai_model_provider/1).
alias(found_high_risk/1, high_risk/1).
alias(classified_as_high_risk/1, high_risk/1).
alias(high_risk_ai_system_applies/1, high_risk_ai_system/1).
alias(regulation_applies_to_high_risk_system/1, high_risk_ai_system/1).
alias(annex_3_point_1_system/1, high_risk_ai_system_annex_3_point_1/1).
alias(high_risk_ai_system_listed_in_annex_3/1, high_risk_ai_system_annex_iii/1).
alias(high_risk_ai_system_listed_in_annex_iii/1, high_risk_ai_system_annex_iii/1).
alias(must_indicate_identification_number_in_promotional_material/1, identification_number_in_promotional_material/1).
alias(must_be_independent_of_operator_with_economic_interest/2, independent_of_operator_with_economic_interest/2).
alias(component_of_large_scale_it_system/1, large_scale_it_system_component/1).
alias(required_logging_capability/1, logging_capability/1).
alias(meets_article_31_requirements/1, meets_requirements_of_art_31/1).
alias(satisfies_article_31_requirements/1, meets_requirements_of_art_31/1).
alias(ce_marking_on_packaging_or_documentation/1, must_affix_ce_marking_to_packaging_or_documentation/1).
alias(ce_marking_affixed_visibly_legibly_indelibly/1, must_affix_ce_marking_visibly_legibly_indelibly/1).
alias(must_allow_access_to_documentation/2, must_allow_surveillance_access/2).
alias(must_grant_access_to_documentation/2, must_allow_surveillance_access/2).
alias(must_comply_with_registration_obligations/2, must_comply_with_registration/2).
alias(must_cooperate_with_other_authorities/2, must_cooperate_with_authorities/2).
alias(must_cooperate_with_competent_authorities/2, must_cooperate_with_authorities/2).
alias(must_facilitate_code_of_conduct/2, must_encourage_code_of_conduct/2).
alias(must_ensure_cybersecurity_resilience/2, must_ensure_cybersecurity_protection/2).
alias(must_ensure_input_data_relevance/2, must_ensure_data_relevance/2).
alias(must_ensure_compliance_with_requirements/2, must_ensure_product_compliance/2).
alias(must_designate_single_point_of_contact/2, must_ensure_single_contact_point/2).
alias(must_evaluate_national_measures/2, must_evaluate_national_measure/2).
alias(must_inform_provider_or_importer_of_risk/2, must_inform_of_risk/2).
alias(must_immediately_inform_authorities_of_risk/2, must_inform_of_risk/2).
alias(must_inform_about_termination/2, must_inform_termination/2).
alias(must_keep_technical_documentation/2, must_keep_documentation/2).
alias(must_keep_up_to_date/2, must_keep_documentation/2).
alias(must_keep_technical_documentation_up_to_date/2, must_keep_documentation/2).
alias(must_provide_compliance_information/2, must_provide_information/2).
alias(must_provide_conformity_information/2, must_provide_information/2).
alias(must_provide_information_on_request/2, must_provide_information/2).
alias(must_provide_information_to_authority/2, must_provide_information/2).
alias(must_provide_information_to_commission/2, must_provide_information/2).
alias(must_provide_information_to_national_authority/2, must_provide_information/2).
alias(must_inform_of_serious_incident/2, must_report_serious_incident/2).
alias(must_require_corrective_action/2, must_require_compliance_action/2).
alias(must_safeguard_objectivity_and_impartiality/1, must_safeguard_impartiality/1).
alias(organised_to_safeguard_objectivity_and_impartiality/1, must_safeguard_impartiality/1).
alias(must_stop_use_on_authorisation_rejection/2, must_stop_use/2).
alias(must_prepare_annual_report/2, must_submit_annual_report/2).
alias(must_submit_annual_report_on_post_rbi/2, must_submit_annual_report/2).
alias(must_supply_requested_information/2, must_supply_information/2).
alias(must_take_corrective_actions/2, must_take_corrective_action/2).
alias(must_treat_confidentially/2, must_treat_information_confidentially/2).
alias(digital_ce_marking/1, must_use_digital_ce_marking/1).
alias(must_not_be_involved_in_design/1, not_involved_in_design/1).
alias(must_not_be_involved_in_development/1, not_involved_in_development/1).
alias(must_not_be_involved_in_marketing/1, not_involved_in_marketing/1).
alias(must_not_be_involved_in_use/1, not_involved_in_use/1).
alias(publicly_available_parameters/1, parameters_publicly_available/1).
alias(indicates_point_of_contact/2, point_of_contact/2).
alias(risk_presents/1, presents_risk/1).
alias(infringement_of_prohibited_ai_practice/1, prohibited_practice_infringement/1).
alias(provider_of_general_purpose_ai_model/2, provides_general_purpose_ai_model/2).
alias(intended_for_public_authority_use/1, public_authority_use/1).
alias(reasoned_request_made/2, reasoned_request/2).
alias(market_surveillance_authority_designated/1, relevant_market_surveillance_authority/1).
alias(required_technical_documentation_elements/1, required_technical_documentation_content/1).
alias(meets_chapter_3_section_2_requirements/1, requirements_of_chapter_3_section_2/1).
alias(sets_period_for_provision/1, sets_period/1).
alias(designated_as_single_contact_point/1, single_point_of_contact/1).
alias(based_solely_on_profiling_or_personality/1, solely_profiling_based/1).
alias(sufficient_reason_to_consider_non_compliance/2, sufficient_reason_to_consider_non_compliant/2).
alias(cumulative_training_computation/2, training_computation/2).
alias(purpose_is_travel_document_verification/1, travel_document_verification_purpose/1).
alias(union_institution_body_office_or_agency/1, union_body/1).
alias(union_institution_or_body/1, union_body/1).
alias(urgency_situation_applies/1, urgency_applies/1).

% ==== celex:32024R1689/oj#art_1 ====
declared(purpose_of_regulation/1, 'purpose stated in Article 1(1)', 'celex:32024R1689/oj#art_1').
declared(regulation_lays_down/1, 'subject matter laid down by the Regulation per Article 1(2)', 'celex:32024R1689/oj#art_1').
purpose_of_regulation(improve_functioning_of_internal_market).
purpose_of_regulation(promote_uptake_of_human_centric_and_trustworthy_ai).
purpose_of_regulation(ensure_high_level_of_protection_of_health).
purpose_of_regulation(ensure_high_level_of_protection_of_safety).
purpose_of_regulation(ensure_high_level_of_protection_of_fundamental_rights).
purpose_of_regulation(ensure_high_level_of_protection_of_democracy).
purpose_of_regulation(ensure_high_level_of_protection_of_rule_of_law).
purpose_of_regulation(ensure_high_level_of_protection_of_environmental_protection).
purpose_of_regulation(support_innovation).
regulation_lays_down(harmonised_rules_for_placing_on_market_putting_into_service_and_use_of_ai_systems).
regulation_lays_down(prohibitions_of_certain_ai_practices).
regulation_lays_down(specific_requirements_for_high_risk_ai_systems_and_obligations_for_operators).
regulation_lays_down(harmonised_transparency_rules_for_certain_ai_systems).
regulation_lays_down(harmonised_rules_for_placing_on_market_of_general_purpose_ai_models).
regulation_lays_down(rules_on_market_monitoring_surveillance_governance_and_enforcement).
regulation_lays_down(measures_to_support_innovation_with_focus_on_smes).
provenance(purpose_of_regulation/1, 'celex:32024R1689/oj#art_1').
provenance(regulation_lays_down/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies_to_provider/1, 'regulation applies to a provider', 'celex:32024R1689/oj#art_2').
declared(regulation_applies_to_deployer/1, 'regulation applies to a deployer', 'celex:32024R1689/oj#art_2').
declared(regulation_applies_to_importer/1, 'regulation applies to an importer', 'celex:32024R1689/oj#art_2').
declared(regulation_applies_to_distributor/1, 'regulation applies to a distributor', 'celex:32024R1689/oj#art_2').
declared(regulation_applies_to_product_manufacturer/1, 'regulation applies to a product manufacturer', 'celex:32024R1689/oj#art_2').
declared(regulation_applies_to_authorised_representative/1, 'regulation applies to an authorised representative', 'celex:32024R1689/oj#art_2').
declared(exempt_military_defence_national_security_purpose/1, 'AI system used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(exempt_scientific_research_and_development/1, 'AI system developed and put into service solely for scientific research and development', 'celex:32024R1689/oj#art_2').
declared(exempt_pre_market_research_testing_or_development/1, 'research, testing or development activity prior to placing on market or putting into service', 'celex:32024R1689/oj#art_2').
declared(exempt_personal_non_professional_activity/1, 'deployer who is a natural person using AI system in purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(exempt_free_and_open_source_ai_system/1, 'AI system released under free and open-source licence not placed on market as high-risk or under Art 5/50', 'celex:32024R1689/oj#art_2').
declared(limited_applicable_provisions_for_harmonised_product/1, 'high-risk AI system related to product covered by Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#art_2').
regulation_applies_to_provider(P) :-
    provider(P),
    placing_on_market(_S).
regulation_applies_to_provider(P) :-
    provider(P),
    putting_into_service(_S).
regulation_applies_to_provider(P) :-
    provides_general_purpose_ai_model(P, _M).
regulation_applies_to_deployer(D) :-
    deployer(D).
regulation_applies_to_importer(I) :-
    importer(I).
regulation_applies_to_distributor(D) :-
    distributor(D).
regulation_applies_to_product_manufacturer(M) :-
    product_manufacturer(M).
regulation_applies_to_authorised_representative(R) :-
    authorised_representative(R).
exempt_military_defence_national_security_purpose(S) :-
    ai_system(S),
    objective_military_defence_national_security(S).
exempt_scientific_research_and_development(S) :-
    ai_system(S),
    objective_scientific_research_and_development(S).
exempt_pre_market_research_testing_or_development(A) :-
    research_testing_or_development_activity(A),
    before_placing_on_market_or_service(A),
    \+ testing_in_real_world_conditions(A).
exempt_personal_non_professional_activity(D) :-
    deployer(D),
    natural_person(D),
    purely_personal_non_professional_use(D).
exempt_free_and_open_source_ai_system(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_practice_infringement(S).
limited_applicable_provisions_for_harmonised_product(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
provenance(regulation_applies_to_provider/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_deployer/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_importer/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_distributor/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_product_manufacturer/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to_authorised_representative/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_scientific_research_and_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_pre_market_research_testing_or_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_free_and_open_source_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(limited_applicable_provisions_for_harmonised_product/1, 'celex:32024R1689/oj#art_2').
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
declared(must_ensure_ai_literacy/2, 'provider or deployer must ensure sufficient AI literacy of staff and persons dealing with operation and use', 'celex:32024R1689/oj#art_4').
declared(person_dealing_with_operation_and_use/2, 'person dealing with the operation and use of an AI system on behalf of a provider or deployer', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Actor, System) :-
    provider(Actor),
    ai_system(System).
must_ensure_ai_literacy(Actor, System) :-
    deployer(Actor),
    ai_system(System).
person_dealing_with_operation_and_use(Person, System) :-
    ai_system(System),
    staff(Person, System).
person_dealing_with_operation_and_use(Person, System) :-
    ai_system(System),
    other_person_on_behalf(Person, System).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(person_dealing_with_operation_and_use/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulation/1, 'AI system deploying subliminal or manipulative techniques causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_vulnerability_exploitation/1, 'AI system exploiting vulnerabilities due to age, disability or social situation causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system for social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment/1, 'AI system assessing criminal offence risk based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(prohibited_untargeted_facial_scraping/1, 'AI system creating facial recognition databases via untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference/1, 'AI system inferring emotions in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'Biometric categorisation system deducing sensitive attributes', 'celex:32024R1689/oj#art_5').
declared(permitted_law_enforcement_rbi_use/2, 'Permitted use of real-time RBI in public spaces for law enforcement objectives', 'celex:32024R1689/oj#art_5').
declared(must_obtain_prior_authorisation_for_rbi/2, 'Law enforcement authority must obtain prior authorisation for RBI use', 'celex:32024R1689/oj#art_5').
declared(must_notify_rbi_use/2, 'Authority must notify market surveillance and data protection authorities of RBI use', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report_on_rbi/2, 'National authority must submit annual report on RBI use to Commission', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report_on_rbi/1, 'Commission must publish annual report on RBI use', 'celex:32024R1689/oj#art_5').
declared(exempt_criminal_risk_assessment/1, 'Exemption for AI systems supporting human assessment based on objective facts', 'celex:32024R1689/oj#art_5').
declared(exempt_emotion_inference/1, 'Exemption for emotion inference intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(exempt_biometric_categorisation/1, 'Exemption for labelling or filtering lawfully acquired datasets in law enforcement', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_vulnerability_exploitation(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).
prohibited_social_scoring(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    placing_on_market(S),
    \+ exempt_criminal_risk_assessment(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    putting_into_service(S),
    \+ exempt_criminal_risk_assessment(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S),
    \+ exempt_criminal_risk_assessment(S).
exempt_criminal_risk_assessment(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_facts(S).
prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    placing_on_market(S).
prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    putting_into_service(S).
prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    deployer(_D),
    uses_system(_D, S).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    placing_on_market(S),
    \+ exempt_emotion_inference(S).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    putting_into_service(S),
    \+ exempt_emotion_inference(S).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    deployer(_D),
    uses_system(_D, S),
    \+ exempt_emotion_inference(S).
exempt_emotion_inference(S) :-
    emotion_recognition_system(S),
    intended_for_medical_or_safety_reasons(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    placing_on_market(S),
    \+ exempt_biometric_categorisation(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    putting_into_service(S),
    \+ exempt_biometric_categorisation(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    deployer(_D),
    uses_system(_D, S),
    \+ exempt_biometric_categorisation(S).
exempt_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    law_enforcement_context(S),
    lawfully_acquired_dataset_labelling(S).
permitted_law_enforcement_rbi_use(S, targeted_search_for_victims) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space_deployment(S),
    law_enforcement_purpose(S).
permitted_law_enforcement_rbi_use(S, prevention_of_imminent_threat) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space_deployment(S),
    law_enforcement_purpose(S).
permitted_law_enforcement_rbi_use(S, localisation_of_suspect) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space_deployment(S),
    law_enforcement_purpose(S).
must_obtain_prior_authorisation_for_rbi(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    permitted_law_enforcement_rbi_use(S, _Objective),
    \+ urgency_applies(S).
must_notify_rbi_use(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    permitted_law_enforcement_rbi_use(S, _Objective).
must_submit_annual_report_on_rbi(Authority, commission) :-
    market_surveillance_authority(Authority),
    notified_of_rbi_use(Authority).
must_submit_annual_report_on_rbi(Authority, commission) :-
    national_data_protection_authority(Authority),
    notified_of_rbi_use(Authority).
must_publish_annual_report_on_rbi(commission) :-
    received_annual_reports_from_member_states.
provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploitation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_scraping/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rbi_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_obtain_prior_authorisation_for_rbi/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_rbi_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report_on_rbi/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report_on_rbi/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system_art_6_par_1/1, 'AI system classified as high-risk under Article 6(1)', 'celex:32024R1689/oj#art_6').
declared(requires_third_party_conformity_assessment/1, 'product or AI system required to undergo third-party conformity assessment', 'celex:32024R1689/oj#art_6').
declared(exempt_high_risk_annex_iii/1, 'AI system referred to in Annex III not considered high-risk due to limited risk', 'celex:32024R1689/oj#art_6').
declared(performs_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(improves_result_of_human_activity/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(detects_decision_patterns_without_replacement/1, 'AI system detecting decision patterns without replacing human assessment', 'celex:32024R1689/oj#art_6').
declared(performs_preparatory_task_for_annex_iii/1, 'AI system performing preparatory task for Annex III use cases', 'celex:32024R1689/oj#art_6').
declared(must_document_non_high_risk_assessment/2, 'provider must document assessment that Annex III system is not high-risk', 'celex:32024R1689/oj#art_6').
declared(must_provide_assessment_documentation/2, 'provider must provide documentation of non-high-risk assessment upon request', 'celex:32024R1689/oj#art_6').
high_risk_ai_system_art_6_par_1(S) :-
    ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    requires_third_party_conformity_assessment(S).
requires_third_party_conformity_assessment(S) :-
    ai_safety_component(S),
    covered_by_union_harmonisation_legislation(S).
requires_third_party_conformity_assessment(S) :-
    ai_system(S),
    covered_by_union_harmonisation_legislation(S).
high_risk_ai_system(S) :-
    high_risk_ai_system_art_6_par_1(S).
high_risk_ai_system(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ exempt_high_risk_annex_iii(S).
exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    performs_narrow_procedural_task(S).
exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    improves_result_of_human_activity(S).
exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    detects_decision_patterns_without_replacement(S).
exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    performs_preparatory_task_for_annex_iii(S).
must_document_non_high_risk_assessment(P, S) :-
    provider(P),
    high_risk_ai_system_annex_iii(S),
    exempt_high_risk_annex_iii(S),
    before_placing_on_market_or_service(S).
must_provide_assessment_documentation(P, A) :-
    provider(P),
    national_competent_authority(A),
    high_risk_ai_system_annex_iii(S),
    exempt_high_risk_annex_iii(S),
    reasoned_request(A, S).
provenance(high_risk_ai_system_art_6_par_1/1, 'celex:32024R1689/oj#art_6').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(performs_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improves_result_of_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(detects_decision_patterns_without_replacement/1, 'celex:32024R1689/oj#art_6').
provenance(performs_preparatory_task_for_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_non_high_risk_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

% ==== celex:32024R1689/oj#art_7 ====
declared(commission_empowered_to_amend_annex_iii/1, 'Commission empowered to adopt delegated acts to amend Annex III', 'celex:32024R1689/oj#art_7').
declared(condition_for_adding_high_risk_use_case/1, 'conditions fulfilled for adding or modifying high-risk AI use cases in Annex III', 'celex:32024R1689/oj#art_7').
declared(intended_for_annex_iii_area/1, 'AI system intended to be used in areas listed in Annex III', 'celex:32024R1689/oj#art_7').
declared(poses_equivalent_or_greater_risk/1, 'AI system poses risk equivalent to or greater than existing high-risk AI systems', 'celex:32024R1689/oj#art_7').
declared(condition_for_removing_high_risk_system/1, 'conditions fulfilled for removing high-risk AI systems from Annex III', 'celex:32024R1689/oj#art_7').
declared(no_longer_poses_significant_risk/1, 'high-risk AI system no longer poses significant risks to fundamental rights health or safety', 'celex:32024R1689/oj#art_7').
declared(deletion_does_not_decrease_protection/1, 'deletion does not decrease overall level of protection under Union law', 'celex:32024R1689/oj#art_7').
commission_empowered_to_amend_annex_iii(add_high_risk_use_case) :-
    condition_for_adding_high_risk_use_case(_S).
commission_empowered_to_amend_annex_iii(remove_high_risk_system) :-
    condition_for_removing_high_risk_system(_S).
condition_for_adding_high_risk_use_case(S) :-
    ai_system(S),
    intended_for_annex_iii_area(S),
    poses_equivalent_or_greater_risk(S).
intended_for_annex_iii_area(S) :-
    ai_system(S),
    intended_purpose(S).
poses_equivalent_or_greater_risk(S) :-
    ai_system(S),
    risk(S).
condition_for_removing_high_risk_system(S) :-
    high_risk_ai_system(S),
    no_longer_poses_significant_risk(S),
    deletion_does_not_decrease_protection(S).
no_longer_poses_significant_risk(S) :-
    high_risk_ai_system(S),
    \+ presents_risk(S).
deletion_does_not_decrease_protection(S) :-
    high_risk_ai_system(S).
provenance(commission_empowered_to_amend_annex_iii/1, 'celex:32024R1689/oj#art_7').
provenance(condition_for_adding_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(intended_for_annex_iii_area/1, 'celex:32024R1689/oj#art_7').
provenance(poses_equivalent_or_greater_risk/1, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_high_risk_system/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(must_comply_with_section_2_requirements/1, 'high-risk AI system must comply with requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_8').
declared(must_ensure_product_compliance_with_union_legislation/2, 'provider must ensure product containing AI system complies with Union harmonisation legislation', 'celex:32024R1689/oj#art_8').
declared(permitted_integration_of_documentation/1, 'provider may integrate AI testing and documentation into existing Union harmonisation procedures', 'celex:32024R1689/oj#art_8').
must_comply_with_section_2_requirements(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    requirements_of_chapter_3_section_2(S).
must_ensure_product_compliance_with_union_legislation(P, S) :-
    provider(P),
    ai_system(S),
    covered_by_union_harmonisation_legislation(S).
permitted_integration_of_documentation(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    requirements_of_chapter_3_section_2(S).
provenance(must_comply_with_section_2_requirements/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_product_compliance_with_union_legislation/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_documentation/1, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(must_establish_risk_management_system/2, 'provider must establish risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(risk_management_system_step/2, 'step comprising the risk management system', 'celex:32024R1689/oj#art_9').
declared(reasonably_mitigable_risk/2, 'risk that may be reasonably mitigated or eliminated through design or information', 'celex:32024R1689/oj#art_9').
declared(acceptable_residual_risk/1, 'residual risk judged to be acceptable', 'celex:32024R1689/oj#art_9').
declared(must_test_for_risk_management/2, 'provider must test high-risk AI system to identify risk management measures', 'celex:32024R1689/oj#art_9').
declared(testing_before_market_or_service/1, 'testing performed prior to placing on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(must_consider_vulnerable_groups/2, 'provider must consider adverse impact on vulnerable groups when implementing risk management', 'celex:32024R1689/oj#art_9').
declared(subject_to_internal_risk_management_under_union_law/1, 'provider subject to internal risk management requirements under other Union law', 'celex:32024R1689/oj#art_9').
must_establish_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
risk_management_system_step(S, identification_and_analysis_of_known_risks) :-
    high_risk_ai_system(S).
risk_management_system_step(S, estimation_and_evaluation_of_intended_use_risks) :-
    high_risk_ai_system(S).
risk_management_system_step(S, evaluation_of_post_market_monitoring_risks) :-
    high_risk_ai_system(S).
risk_management_system_step(S, adoption_of_targeted_risk_management_measures) :-
    high_risk_ai_system(S).
reasonably_mitigable_risk(S, R) :-
    high_risk_ai_system(S),
    risk(R),
    mitigable_through_design_or_information(S, R).
acceptable_residual_risk(S) :-
    high_risk_ai_system(S),
    residual_risk_acceptable(S).
must_test_for_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S).
testing_before_market_or_service(S) :-
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).
must_consider_vulnerable_groups(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    intended_purpose(S).
subject_to_internal_risk_management_under_union_law(P) :-
    provider(P),
    internal_risk_management_required_by_union_law(P).
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_step/2, 'celex:32024R1689/oj#art_9').
provenance(reasonably_mitigable_risk/2, 'celex:32024R1689/oj#art_9').
provenance(acceptable_residual_risk/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(testing_before_market_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(subject_to_internal_risk_management_under_union_law/1, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').

% ==== celex:32024R1689/oj#art_10 ====
declared(uses_training_techniques/1, 'AI system developed using techniques involving training of models with data', 'celex:32024R1689/oj#art_10').
declared(required_data_governance_practices/1, 'data governance and management practices appropriate for intended purpose', 'celex:32024R1689/oj#art_10').
declared(permitted_processing_of_special_categories/2, 'exceptional processing of special categories of personal data for bias detection', 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_of_special_categories/2, 'celex:32024R1689/oj#art_10').
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
must_use_quality_datasets(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S).
must_use_quality_testing_datasets(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S).
uses_training_techniques(S) :-
    ai_system(S),
    training_data(_D),
    
    
    fail.
required_data_governance_practices(S) :-
    high_risk_ai_system(S).
permitted_processing_of_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    strictly_necessary_for_bias_detection(S),
    cannot_be_fulfilled_by_other_data(S),
    technical_limitations_on_reuse_applied(S),
    security_and_privacy_measures_applied(S),
    access_controls_and_documentation_applied(S),
    no_transmission_to_third_parties(S),
    deletion_upon_correction_or_expiry(S),
    processing_records_include_justification(S).
strictly_necessary_for_bias_detection(S) :-
    high_risk_ai_system(S).
cannot_be_fulfilled_by_other_data(S) :-
    high_risk_ai_system(S).
technical_limitations_on_reuse_applied(S) :-
    high_risk_ai_system(S).
security_and_privacy_measures_applied(S) :-
    high_risk_ai_system(S).
access_controls_and_documentation_applied(S) :-
    high_risk_ai_system(S).
no_transmission_to_third_parties(S) :-
    high_risk_ai_system(S).
deletion_upon_correction_or_expiry(S) :-
    high_risk_ai_system(S).
processing_records_include_justification(S) :-
    high_risk_ai_system(S).

% ==== celex:32024R1689/oj#art_11 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up technical documentation for high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(must_keep_technical_documentation_up_to_date/2, 'provider must keep technical documentation up to date', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_demonstrates_compliance/1, 'technical documentation demonstrates compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_contains_annex_iv_elements/1, 'technical documentation contains at minimum elements set out in Annex IV', 'celex:32024R1689/oj#art_11').
declared(sme_provider/1, 'provider that is an SME including start-ups', 'celex:32024R1689/oj#art_11').
declared(simplified_technical_documentation_permitted/1, 'SME provider may provide Annex IV elements in simplified manner', 'celex:32024R1689/oj#art_11').
declared(single_technical_documentation_required/1, 'single set of technical documentation required for product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).
must_keep_technical_documentation_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).
technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).
technical_documentation_contains_annex_iv_elements(S) :-
    high_risk_ai_system(S).
simplified_technical_documentation_permitted(S) :-
    high_risk_ai_system(S),
    provider(P),
    sme_provider(P).
single_technical_documentation_required(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_annex_iv_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme_provider/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_permitted/1, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation_required/1, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(must_allow_automatic_recording_of_events/1, 'high-risk AI system technically allows automatic recording of events over lifetime', 'celex:32024R1689/oj#art_12').
declared(logging_capability_enables_relevant_recording/1, 'logging capability enables recording of events relevant for traceability', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_annex_iii_point_1_a/1, 'logging capabilities provide minimum records for Annex III point 1(a) systems', 'celex:32024R1689/oj#art_12').
must_allow_automatic_recording_of_events(S) :-
    high_risk_ai_system(S),
    logging_capability(S).
logging_capability_enables_relevant_recording(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    intended_purpose(S),
    recording_enables_risk_identification(S).
logging_capability_enables_relevant_recording(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    recording_facilitates_post_market_monitoring(S).
logging_capability_enables_relevant_recording(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    recording_enables_operation_monitoring(S).
required_logging_for_annex_iii_point_1_a(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    logging_capability(S),
    records_period_of_use(S),
    records_reference_database(S),
    records_matched_input_data(S),
    records_verification_person_identification(S).
provenance(must_allow_automatic_recording_of_events/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capability_enables_relevant_recording/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_annex_iii_point_1_a/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(must_ensure_transparency/2, 'provider must ensure high-risk AI system operation is sufficiently transparent', 'celex:32024R1689/oj#art_13').
declared(must_accompany_with_instructions_for_use/2, 'high-risk AI system must be accompanied by instructions for use', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_provider_identity/1, 'instructions for use contain identity and contact details of provider', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_characteristics_and_limitations/1, 'instructions for use contain characteristics capabilities and limitations of performance', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_predetermined_changes/1, 'instructions for use contain changes to system and performance predetermined at initial conformity assessment', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_human_oversight_measures/1, 'instructions for use contain human oversight measures and technical measures to facilitate interpretation', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_resource_and_maintenance_info/1, 'instructions for use contain computational resources expected lifetime and maintenance measures', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_log_interpretation_mechanisms/1, 'instructions for use contain description of mechanisms to collect store and interpret logs', 'celex:32024R1689/oj#art_13').
must_ensure_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    intended_purpose(S).
must_accompany_with_instructions_for_use(_P, S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).
instructions_contain_provider_identity(I) :-
    instructions_for_use(I).
instructions_contain_characteristics_and_limitations(I) :-
    instructions_for_use(I),
    intended_purpose(I).
instructions_contain_predetermined_changes(I) :-
    instructions_for_use(I).
instructions_contain_human_oversight_measures(I) :-
    instructions_for_use(I).
instructions_contain_resource_and_maintenance_info(I) :-
    instructions_for_use(I).
instructions_contain_log_interpretation_mechanisms(I) :-
    instructions_for_use(I).
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_accompany_with_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics_and_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_resource_and_maintenance_info/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_interpretation_mechanisms/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(must_design_for_human_oversight/2, 'provider must design high-risk AI system for effective human oversight', 'celex:32024R1689/oj#art_14').
declared(human_oversight_measure/2, 'measure ensuring human oversight of a high-risk AI system', 'celex:32024R1689/oj#art_14').
declared(built_in_oversight_measure/2, 'oversight measure built into the system by the provider', 'celex:32024R1689/oj#art_14').
declared(deployer_implemented_oversight_measure/2, 'oversight measure identified by provider for implementation by deployer', 'celex:32024R1689/oj#art_14').
declared(enables_understanding_of_capacities_and_limitations/2, 'system enables assigned persons to understand capacities and limitations', 'celex:32024R1689/oj#art_14').
declared(enables_monitoring_of_operation/2, 'system enables assigned persons to monitor operation and detect anomalies', 'celex:32024R1689/oj#art_14').
declared(enables_awareness_of_automation_bias/2, 'system enables awareness of tendency to over-rely on output', 'celex:32024R1689/oj#art_14').
declared(enables_correct_interpretation_of_output/2, 'system enables correct interpretation of output', 'celex:32024R1689/oj#art_14').
declared(enables_decision_not_to_use_or_override/2, 'system enables decision not to use or to override output', 'celex:32024R1689/oj#art_14').
declared(enables_safe_intervention_or_stop/2, 'system enables intervention or safe stop procedure', 'celex:32024R1689/oj#art_14').
declared(requires_separate_verification_by_two_persons/2, 'biometric identification system requires separate verification by two competent persons', 'celex:32024R1689/oj#art_14').
declared(exempt_from_two_person_verification/1, 'exemption from two-person verification for law enforcement etc where disproportionate', 'celex:32024R1689/oj#art_14').
must_design_for_human_oversight(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).
human_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    built_in_oversight_measure(S, M).
human_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    deployer_implemented_oversight_measure(S, M).
built_in_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    technically_feasible(M),
    identified_by_provider_before_market(S, M).
deployer_implemented_oversight_measure(S, M) :-
    high_risk_ai_system(S),
    appropriate_for_deployer_implementation(M),
    identified_by_provider_before_market(S, M).
enables_understanding_of_capacities_and_limitations(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).
enables_monitoring_of_operation(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).
enables_awareness_of_automation_bias(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).
enables_correct_interpretation_of_output(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).
enables_decision_not_to_use_or_override(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).
enables_safe_intervention_or_stop(S, P) :-
    high_risk_ai_system(S),
    person_assigned_oversight(P, S).
requires_separate_verification_by_two_persons(S, D) :-
    high_risk_ai_system_annex_3_point_1(S),
    deployer(D),
    \+ exempt_from_two_person_verification(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    law_enforcement_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    migration_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    border_control_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    asylum_purpose(S).
exempt_from_two_person_verification(S) :-
    high_risk_ai_system(S),
    disproportionate_under_applicable_law(S).
provenance(must_design_for_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(enables_understanding_of_capacities_and_limitations/2, 'celex:32024R1689/oj#art_14').
provenance(enables_monitoring_of_operation/2, 'celex:32024R1689/oj#art_14').
provenance(enables_awareness_of_automation_bias/2, 'celex:32024R1689/oj#art_14').
provenance(enables_correct_interpretation_of_output/2, 'celex:32024R1689/oj#art_14').
provenance(enables_decision_not_to_use_or_override/2, 'celex:32024R1689/oj#art_14').
provenance(enables_safe_intervention_or_stop/2, 'celex:32024R1689/oj#art_14').
provenance(requires_separate_verification_by_two_persons/2, 'celex:32024R1689/oj#art_14').
provenance(exempt_from_two_person_verification/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(must_achieve_accuracy_robustness_cybersecurity/1, 'high-risk AI system designed to achieve appropriate accuracy, robustness and cybersecurity', 'celex:32024R1689/oj#art_15').
declared(must_perform_consistently_throughout_lifecycle/1, 'high-risk AI system performs consistently in accuracy, robustness and cybersecurity throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(must_declare_accuracy_metrics_in_instructions/2, 'provider declares accuracy levels and metrics in instructions for use', 'celex:32024R1689/oj#art_15').
declared(must_be_resilient_to_errors_faults_inconsistencies/1, 'high-risk AI system resilient to errors, faults or inconsistencies within system or environment', 'celex:32024R1689/oj#art_15').
declared(must_take_technical_organisational_measures_for_robustness/1, 'technical and organisational measures taken for robustness', 'celex:32024R1689/oj#art_15').
declared(continues_to_learn_after_market_or_service/1, 'high-risk AI system continues to learn after being placed on market or put into service', 'celex:32024R1689/oj#art_15').
declared(must_eliminate_or_reduce_feedback_loop_risk/1, 'risk of biased outputs influencing future operations eliminated or reduced as far as possible', 'celex:32024R1689/oj#art_15').
declared(must_address_feedback_loops_with_mitigation/1, 'feedback loops duly addressed with appropriate mitigation measures', 'celex:32024R1689/oj#art_15').
declared(must_be_resilient_against_unauthorised_alteration/1, 'high-risk AI system resilient against attempts by unauthorised third parties to alter use, outputs or performance', 'celex:32024R1689/oj#art_15').
declared(must_implement_ai_specific_cybersecurity_measures/1, 'technical solutions address AI specific vulnerabilities including data poisoning, model poisoning, adversarial examples, confidentiality attacks or model flaws', 'celex:32024R1689/oj#art_15').
must_achieve_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S).
must_perform_consistently_throughout_lifecycle(S) :-
    high_risk_ai_system(S).
must_declare_accuracy_metrics_in_instructions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_be_resilient_to_errors_faults_inconsistencies(S) :-
    high_risk_ai_system(S).
must_take_technical_organisational_measures_for_robustness(S) :-
    high_risk_ai_system(S).
must_eliminate_or_reduce_feedback_loop_risk(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_market_or_service(S).
must_address_feedback_loops_with_mitigation(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_market_or_service(S).
must_be_resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).
must_implement_ai_specific_cybersecurity_measures(S) :-
    high_risk_ai_system(S).
provenance(must_achieve_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(must_perform_consistently_throughout_lifecycle/1, 'celex:32024R1689/oj#art_15').
provenance(must_declare_accuracy_metrics_in_instructions/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_to_errors_faults_inconsistencies/1, 'celex:32024R1689/oj#art_15').
provenance(must_take_technical_organisational_measures_for_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn_after_market_or_service/1, 'celex:32024R1689/oj#art_15').
provenance(must_eliminate_or_reduce_feedback_loop_risk/1, 'celex:32024R1689/oj#art_15').
provenance(must_address_feedback_loops_with_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(must_implement_ai_specific_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(must_ensure_compliance_with_chapter_3_section_2/2, 'provider must ensure high-risk AI system complies with requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_16').
declared(must_indicate_provider_identity/2, 'provider must indicate name and contact address on system, packaging or documentation', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider must have quality management system complying with Article 17', 'celex:32024R1689/oj#art_16').
declared(must_keep_technical_documentation/2, 'provider must keep documentation referred to in Article 18', 'celex:32024R1689/oj#art_16').
declared(must_keep_logs/2, 'provider must keep automatically generated logs when under their control', 'celex:32024R1689/oj#art_16').
declared(must_undergo_conformity_assessment/2, 'provider must ensure system undergoes conformity assessment before placing on market or putting into service', 'celex:32024R1689/oj#art_16').
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity in accordance with Article 47', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider must affix CE marking to indicate conformity with this Regulation', 'celex:32024R1689/oj#art_16').
declared(must_comply_with_registration_obligations/2, 'provider must comply with registration obligations referred to in Article 49(1)', 'celex:32024R1689/oj#art_16').
declared(must_take_corrective_actions_and_provide_information/2, 'provider must take corrective actions and provide information as required in Article 20', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity_on_request/2, 'provider must demonstrate conformity upon reasoned request of national competent authority', 'celex:32024R1689/oj#art_16').
declared(must_ensure_accessibility_compliance/2, 'provider must ensure system complies with accessibility requirements', 'celex:32024R1689/oj#art_16').
must_ensure_compliance_with_chapter_3_section_2(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).
must_indicate_provider_identity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).
must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_service(S).
must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_comply_with_registration_obligations(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_take_corrective_actions_and_provide_information(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_demonstrate_conformity_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, S).
must_ensure_accessibility_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_ensure_compliance_with_chapter_3_section_2/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_provider_identity/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions_and_provide_information/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity_on_request/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').

% ==== celex:32024R1689/oj#art_17 ====
declared(must_put_in_place_quality_management_system/2, 'provider must establish a quality management system ensuring compliance', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_documented/1, 'quality management system is documented in written policies, procedures and instructions', 'celex:32024R1689/oj#art_17').
declared(includes_regulatory_compliance_strategy/1, 'QMS includes strategy for regulatory compliance and modification management', 'celex:32024R1689/oj#art_17').
declared(includes_design_control_procedures/1, 'QMS includes techniques for design, design control and verification', 'celex:32024R1689/oj#art_17').
declared(includes_development_quality_assurance/1, 'QMS includes techniques for development, quality control and assurance', 'celex:32024R1689/oj#art_17').
declared(includes_examination_and_validation_procedures/1, 'QMS includes examination, test and validation procedures before, during and after development', 'celex:32024R1689/oj#art_17').
declared(includes_technical_specifications_application/1, 'QMS includes technical specifications and means to ensure compliance where harmonised standards are not fully applied', 'celex:32024R1689/oj#art_17').
declared(includes_data_management_systems/1, 'QMS includes systems for data acquisition, collection, analysis, labelling, storage and other operations', 'celex:32024R1689/oj#art_17').
declared(includes_risk_management_system/1, 'QMS includes the risk management system referred to in Article 9', 'celex:32024R1689/oj#art_17').
declared(includes_post_market_monitoring/1, 'QMS includes setup and maintenance of post-market monitoring system', 'celex:32024R1689/oj#art_17').
declared(includes_serious_incident_reporting/1, 'QMS includes procedures for reporting serious incidents', 'celex:32024R1689/oj#art_17').
declared(includes_communication_handling/1, 'QMS includes handling of communication with authorities, notified bodies, operators and customers', 'celex:32024R1689/oj#art_17').
declared(includes_record_keeping_systems/1, 'QMS includes systems for record-keeping of relevant documentation', 'celex:32024R1689/oj#art_17').
declared(includes_resource_management/1, 'QMS includes resource management and security-of-supply measures', 'celex:32024R1689/oj#art_17').
declared(includes_accountability_framework/1, 'QMS includes accountability framework for management and staff responsibilities', 'celex:32024R1689/oj#art_17').
declared(proportionate_to_organisation_size/2, 'implementation of QMS aspects is proportionate to provider organisation size', 'celex:32024R1689/oj#art_17').
declared(subject_to_sectoral_quality_management_obligations/1, 'provider subject to QMS obligations under relevant sectoral Union law', 'celex:32024R1689/oj#art_17').
declared(financial_institution_internal_governance_compliance/1, 'financial institution complies with internal governance rules under Union financial services law', 'celex:32024R1689/oj#art_17').
must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system_documented(S),
    includes_regulatory_compliance_strategy(S),
    includes_design_control_procedures(S),
    includes_development_quality_assurance(S),
    includes_examination_and_validation_procedures(S),
    includes_technical_specifications_application(S),
    includes_data_management_systems(S),
    includes_risk_management_system(S),
    includes_post_market_monitoring(S),
    includes_serious_incident_reporting(S),
    includes_communication_handling(S),
    includes_record_keeping_systems(S),
    includes_resource_management(S),
    includes_accountability_framework(S).
must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    financial_institution(P),
    financial_institution_internal_governance_compliance(P).
proportionate_to_organisation_size(P, S) :-
    provider(P),
    high_risk_ai_system(S).
subject_to_sectoral_quality_management_obligations(P) :-
    provider(P).
provenance(must_put_in_place_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(includes_regulatory_compliance_strategy/1, 'celex:32024R1689/oj#art_17').
provenance(includes_design_control_procedures/1, 'celex:32024R1689/oj#art_17').
provenance(includes_development_quality_assurance/1, 'celex:32024R1689/oj#art_17').
provenance(includes_examination_and_validation_procedures/1, 'celex:32024R1689/oj#art_17').
provenance(includes_technical_specifications_application/1, 'celex:32024R1689/oj#art_17').
provenance(includes_data_management_systems/1, 'celex:32024R1689/oj#art_17').
provenance(includes_risk_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(includes_post_market_monitoring/1, 'celex:32024R1689/oj#art_17').
provenance(includes_serious_incident_reporting/1, 'celex:32024R1689/oj#art_17').
provenance(includes_communication_handling/1, 'celex:32024R1689/oj#art_17').
provenance(includes_record_keeping_systems/1, 'celex:32024R1689/oj#art_17').
provenance(includes_resource_management/1, 'celex:32024R1689/oj#art_17').
provenance(includes_accountability_framework/1, 'celex:32024R1689/oj#art_17').
provenance(proportionate_to_organisation_size/2, 'celex:32024R1689/oj#art_17').
provenance(subject_to_sectoral_quality_management_obligations/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_internal_governance_compliance/1, 'celex:32024R1689/oj#art_17').
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
declared(must_keep_documentation_at_disposal/2, 'provider must keep specified documentation at disposal of national competent authorities for period', 'celex:32024R1689/oj#art_18').
declared(documentation_retention_period/2, 'period ending 10 years after placing on market or putting into service', 'celex:32024R1689/oj#art_18').
declared(required_documentation_item/2, 'specific documentation item that must be kept under Article 18(1)', 'celex:32024R1689/oj#art_18').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_18').
must_keep_documentation_at_disposal(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    \+ financial_institution_provider(P),
    documentation_retention_period(S, Period),
    required_documentation_item(S, Item),
    keep_at_disposal_of_national_competent_authorities(P, Item, Period).
documentation_retention_period(S, years(10)) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S).
required_documentation_item(S, technical_documentation(S)).
required_documentation_item(S, quality_management_system_documentation(S)).
required_documentation_item(S, changes_approved_by_notified_bodies(S)).
required_documentation_item(S, notified_body_decisions(S)).
required_documentation_item(S, eu_declaration_of_conformity(S)).
financial_institution_provider(P) :-
    provider(P),
    financial_institution(P).
provenance(must_keep_documentation_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_retention_period/2, 'celex:32024R1689/oj#art_18').
provenance(required_documentation_item/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').

% ==== celex:32024R1689/oj#art_19 ====
declared(must_keep_logs/2, 'provider must keep automatically generated logs of high-risk AI system', 'celex:32024R1689/oj#art_19').
declared(logs_under_control/2, 'logs are under the control of the provider', 'celex:32024R1689/oj#art_19').
declared(minimum_log_retention_period/2, 'minimum period for keeping logs based on intended purpose', 'celex:32024R1689/oj#art_19').
declared(financial_services_documentation_applies/2, 'logs maintained as part of documentation under financial services law', 'celex:32024R1689/oj#art_19').
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    \+ financial_institution(P),
    minimum_log_retention_period(S, months(6)).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    financial_institution(P),
    financial_services_documentation_applies(P, S).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(minimum_log_retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(financial_services_documentation_applies/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(considers_non_conformity/2, 'provider considers or has reason to consider that a high-risk AI system is not in conformity', 'celex:32024R1689/oj#art_20').
declared(must_take_corrective_action_for_non_conformity/2, 'provider must immediately take necessary corrective actions for non-conforming system', 'celex:32024R1689/oj#art_20').
declared(must_inform_distributor_of_non_conformity/2, 'provider must inform distributors of non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform_deployer_of_non_conformity/2, 'provider must inform deployers of non-conforming high-risk AI system where applicable', 'celex:32024R1689/oj#art_20').
declared(must_inform_authorised_representative_of_non_conformity/2, 'provider must inform authorised representative of non-conforming high-risk AI system where applicable', 'celex:32024R1689/oj#art_20').
declared(must_inform_importer_of_non_conformity/2, 'provider must inform importers of non-conforming high-risk AI system where applicable', 'celex:32024R1689/oj#art_20').
declared(aware_of_risk/2, 'provider becomes aware that high-risk AI system presents a risk', 'celex:32024R1689/oj#art_20').
declared(must_investigate_causes_of_risk/2, 'provider must immediately investigate causes of risk presented by high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_collaborate_with_reporting_deployer/2, 'provider must collaborate with reporting deployer on investigation of risk where applicable', 'celex:32024R1689/oj#art_20').
declared(must_inform_market_surveillance_authority_of_risk/2, 'provider must inform competent market surveillance authority of risk and corrective action', 'celex:32024R1689/oj#art_20').
declared(must_inform_notified_body_of_risk/2, 'provider must inform notified body that issued certificate of risk and corrective action where applicable', 'celex:32024R1689/oj#art_20').
considers_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S).
considers_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S).
must_take_corrective_action_for_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S).
must_inform_distributor_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    distributor(_D).
must_inform_deployer_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    deployer(_Dep).
must_inform_authorised_representative_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    authorised_representative(_AR).
must_inform_importer_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    importer(_I).
aware_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S).
must_investigate_causes_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S).
must_collaborate_with_reporting_deployer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S),
    deployer(_Dep).
must_inform_market_surveillance_authority_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S),
    relevant_market_surveillance_authority(_MSA).
must_inform_notified_body_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S),
    notified_body(_NB).
provenance(considers_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action_for_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributor_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployer_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importer_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(aware_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_collaborate_with_reporting_deployer/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authority_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body_of_risk/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(must_provide_conformity_information/2, 'provider must provide information and documentation to demonstrate conformity upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(must_provide_access_to_logs/2, 'provider must give access to automatically generated logs upon reasoned request', 'celex:32024R1689/oj#art_21').
must_provide_conformity_information(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, System),
    requirements_of_chapter_3_section_2(System).
must_provide_access_to_logs(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, System),
    logging_capability(System),
    logs_under_control(Provider, System).
logs_under_control(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(established_in_third_country/1, 'provider established in a third country', 'celex:32024R1689/oj#art_22').
declared(must_appoint_authorised_representative/2, 'provider must appoint an authorised representative by written mandate', 'celex:32024R1689/oj#art_22').
declared(must_enable_representative_tasks/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_22').
declared(must_provide_mandate_copy/2, 'authorised representative must provide mandate copy to market surveillance authorities upon request', 'celex:32024R1689/oj#art_22').
declared(must_verify_conformity_documentation/2, 'authorised representative must verify EU declaration of conformity and technical documentation', 'celex:32024R1689/oj#art_22').
declared(must_keep_documents_for_period/2, 'authorised representative must keep specified documents at disposal of authorities for a period', 'celex:32024R1689/oj#art_22').
declared(must_provide_conformity_information_on_request/2, 'authorised representative must provide information and documentation to demonstrate conformity upon reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate_on_risk_mitigation/2, 'authorised representative must cooperate with competent authorities on risk mitigation actions', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate_if_non_compliant/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
established_in_third_country(P) :-
    provider(P).
must_appoint_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    established_in_third_country(P),
    before_placing_on_market_or_service(S).
must_enable_representative_tasks(P, R) :-
    provider(P),
    authorised_representative(R),
    must_appoint_authorised_representative(P, _S).
must_provide_mandate_copy(R, A) :-
    authorised_representative(R),
    market_surveillance_authority(A).
must_verify_conformity_documentation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S).
must_keep_documents_for_period(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S).
must_provide_conformity_information_on_request(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).
must_cooperate_on_risk_mitigation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S).
must_terminate_mandate_if_non_compliant(R, P) :-
    authorised_representative(R),
    provider(P).
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_22').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_representative_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documents_for_period/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_conformity_information_on_request/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_on_risk_mitigation/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate_if_non_compliant/2, 'celex:32024R1689/oj#art_22').
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
declared(importer_verification_completed/1, 'importer has verified conformity assessment, documentation, CE marking and authorised representative', 'celex:32024R1689/oj#art_23').
declared(must_indicate_importer_details/2, 'importer must indicate name and contact address on system or packaging', 'celex:32024R1689/oj#art_23').
declared(must_ensure_storage_transport_compliance/2, 'importer must ensure storage and transport do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(must_keep_importer_documentation/2, 'importer must keep certificate, instructions and declaration of conformity for 10 years', 'celex:32024R1689/oj#art_23').
declared(must_provide_conformity_information/2, 'importer must provide information to demonstrate conformity upon reasoned request', 'celex:32024R1689/oj#art_23').
provenance(importer_verification_completed/1, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_importer_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_importer_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').
importer_verification_completed(S) :-
    high_risk_ai_system(S),
    conformity_assessment_carried_out(S),
    required_technical_documentation_content(S),
    ce_marking(S),
    instructions_for_use(S).
must_indicate_importer_details(I, S) :-
    importer(I),
    high_risk_ai_system(S).
must_ensure_storage_transport_compliance(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).
must_keep_importer_documentation(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placing_on_market(S).
must_provide_conformity_information(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    reasoned_request(_, S),
    requirements_of_chapter_3_section_2(S).
must_inform_of_risk(I, nonconformity(S)) :-
    importer(I),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(I, S),
    presents_risk(S).
must_cooperate_with_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placing_on_market(S).

% ==== celex:32024R1689/oj#art_24 ====
declared(must_verify_before_making_available/2, 'distributor must verify CE marking, declaration, instructions and provider/importer compliance before making available', 'celex:32024R1689/oj#art_24').
declared(must_not_make_available_if_non_compliant/2, 'distributor must not make system available if considered non-compliant with Chapter III Section 2', 'celex:32024R1689/oj#art_24').
declared(must_inform_provider_or_importer_of_risk/2, 'distributor must inform provider or importer if system presents risk under Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(must_ensure_storage_transport_compliance/2, 'distributor must ensure storage or transport does not jeopardise compliance', 'celex:32024R1689/oj#art_24').
declared(must_take_corrective_action_for_non_compliance/2, 'distributor must take corrective action or ensure operator takes action for non-compliant system already made available', 'celex:32024R1689/oj#art_24').
declared(must_immediately_inform_authorities_of_risk/2, 'distributor must immediately inform provider, importer and competent authorities of risk and corrective actions', 'celex:32024R1689/oj#art_24').
declared(distributor_considers_non_compliant/2, 'distributor considers or has reason to consider system not in conformity with Chapter III Section 2', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    instructions_for_use(S),
    provider_complied_with_obligations(S),
    importer_complied_with_obligations(S).
must_not_make_available_if_non_compliant(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_compliant(D, S).
must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S).
must_ensure_storage_transport_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility(D, S).
must_take_corrective_action_for_non_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(S),
    distributor_considers_non_compliant(D, S).
must_immediately_inform_authorities_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    made_available_on_market(S).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_if_non_compliant/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action_for_non_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_authorities_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(distributor_considers_non_compliant/2, 'celex:32024R1689/oj#art_24').
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
declared(considered_provider_of_high_risk_ai_system/1, 'entity considered to be a provider of a high-risk AI system under Article 25', 'celex:32024R1689/oj#art_25').
declared(initial_provider_no_longer_considered_provider/1, 'initial provider no longer considered provider of specific AI system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_provider/2, 'initial provider must cooperate with new provider', 'celex:32024R1689/oj#art_25').
declared(must_make_available_information_and_assistance/2, 'initial provider must make available information and assistance to new provider', 'celex:32024R1689/oj#art_25').
declared(specified_not_to_be_changed_into_high_risk/1, 'initial provider clearly specified AI system not to be changed into high-risk', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_considered_provider/1, 'product manufacturer considered provider of high-risk AI safety component', 'celex:32024R1689/oj#art_25').
declared(must_specify_assistance_by_written_agreement/2, 'provider and third party supplier must specify assistance by written agreement', 'celex:32024R1689/oj#art_25').
declared(supplies_component_for_high_risk_ai_system/2, 'third party supplies tools services components or processes for high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(makes_accessible_under_free_and_open_source_licence/1, 'third party makes accessible tools services processes or components under free and open-source licence', 'celex:32024R1689/oj#art_25').
considered_provider_of_high_risk_ai_system(P) :-
    distributor(P),
    high_risk_ai_system(S),
    places_name_or_trademark_on_system(P, S).
considered_provider_of_high_risk_ai_system(P) :-
    importer(P),
    high_risk_ai_system(S),
    places_name_or_trademark_on_system(P, S).
considered_provider_of_high_risk_ai_system(P) :-
    deployer(P),
    high_risk_ai_system(S),
    places_name_or_trademark_on_system(P, S).
considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    high_risk_ai_system(S),
    substantial_modification(S),
    remains_high_risk_after_modification(S).
considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    modifies_intended_purpose(P, S),
    becomes_high_risk_due_to_purpose_modification(S).
places_name_or_trademark_on_system(_P, _S).
remains_high_risk_after_modification(_S).
modifies_intended_purpose(_P, _S).
becomes_high_risk_due_to_purpose_modification(_S).
initial_provider_no_longer_considered_provider(S) :-
    considered_provider_of_high_risk_ai_system(_NewProvider),
    high_risk_ai_system(S),
    \+ specified_not_to_be_changed_into_high_risk(S).
must_cooperate_with_new_provider(InitialProvider, NewProvider) :-
    initial_provider_no_longer_considered_provider(_S),
    provider(InitialProvider),
    considered_provider_of_high_risk_ai_system(NewProvider),
    InitialProvider \= NewProvider.
must_make_available_information_and_assistance(InitialProvider, NewProvider) :-
    must_cooperate_with_new_provider(InitialProvider, NewProvider).
product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_safety_component(S),
    covered_by_annex_i(S),
    placed_on_market_with_product_under_manufacturer_name(M, S).
product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_safety_component(S),
    covered_by_annex_i(S),
    put_into_service_under_manufacturer_name(M, S).
placed_on_market_with_product_under_manufacturer_name(_M, _S).
put_into_service_under_manufacturer_name(_M, _S).
must_specify_assistance_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_component_for_high_risk_ai_system(ThirdParty, S),
    \+ makes_accessible_under_free_and_open_source_licence(ThirdParty).
supplies_component_for_high_risk_ai_system(_ThirdParty, _S).
provenance(considered_provider_of_high_risk_ai_system/1, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_no_longer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_make_available_information_and_assistance/2, 'celex:32024R1689/oj#art_25').
provenance(specified_not_to_be_changed_into_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_specify_assistance_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(supplies_component_for_high_risk_ai_system/2, 'celex:32024R1689/oj#art_25').
provenance(makes_accessible_under_free_and_open_source_licence/1, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

% ==== celex:32024R1689/oj#art_26 ====
declared(must_use_in_accordance_with_instructions/2, 'deployer must use high-risk AI system in accordance with instructions for use', 'celex:32024R1689/oj#art_26').
declared(must_assign_human_oversight/2, 'deployer must assign human oversight to competent natural persons', 'celex:32024R1689/oj#art_26').
declared(must_ensure_input_data_relevance/2, 'deployer exercising control over input data must ensure it is relevant and representative', 'celex:32024R1689/oj#art_26').
declared(must_monitor_operation/2, 'deployer must monitor operation of high-risk AI system based on instructions', 'celex:32024R1689/oj#art_26').
declared(must_inform_of_risk_and_suspend/2, 'deployer must inform provider/distributor and authority of risk and suspend use', 'celex:32024R1689/oj#art_26').
declared(must_inform_of_serious_incident/2, 'deployer must immediately inform provider and others of serious incident', 'celex:32024R1689/oj#art_26').
declared(must_keep_logs/2, 'deployer must keep automatically generated logs for appropriate period', 'celex:32024R1689/oj#art_26').
declared(must_inform_workers/2, 'employer deployer must inform workers representatives and affected workers before use', 'celex:32024R1689/oj#art_26').
declared(must_register_system/2, 'public authority deployer must comply with registration obligations', 'celex:32024R1689/oj#art_26').
declared(must_not_use_unregistered_system/2, 'public authority deployer must not use unregistered high-risk AI system', 'celex:32024R1689/oj#art_26').
declared(must_use_info_for_dpi_assessment/2, 'deployer must use article 13 information for data protection impact assessment', 'celex:32024R1689/oj#art_26').
declared(must_request_authorisation_for_post_rbi/2, 'deployer must request authorisation for post-remote biometric identification in criminal investigation', 'celex:32024R1689/oj#art_26').
declared(must_stop_use_on_authorisation_rejection/2, 'deployer must stop use and delete data if post-rbi authorisation rejected', 'celex:32024R1689/oj#art_26').
declared(prohibited_untargeted_post_rbi_use/1, 'prohibition on untargeted use of post-remote biometric identification for law enforcement', 'celex:32024R1689/oj#art_26').
declared(prohibited_sole_basis_decision/1, 'prohibition on decisions based solely on post-remote biometric identification output', 'celex:32024R1689/oj#art_26').
declared(must_document_post_rbi_use/2, 'deployer must document each use of post-remote biometric identification in police file', 'celex:32024R1689/oj#art_26').
declared(must_submit_annual_report/2, 'deployer must submit annual report on post-remote biometric identification use', 'celex:32024R1689/oj#art_26').
declared(must_inform_natural_persons/2, 'deployer of annex III system making decisions must inform natural persons', 'celex:32024R1689/oj#art_26').
declared(must_cooperate_with_competent_authorities/2, 'deployer must cooperate with competent authorities implementing this regulation', 'celex:32024R1689/oj#art_26').
must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_ensure_input_data_relevance(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    controls_input_data(D, S),
    intended_purpose(S).
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_inform_of_risk_and_suspend(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    reason_to_consider_risk(D, S),
    presents_risk(S).
must_inform_of_serious_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident(S).
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logging_capability(S),
    logs_under_control(D, S).
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    workplace_use(S).
must_register_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_or_union_body(D).
must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_or_union_body(D),
    \+ registered_in_eu_database(S).
must_use_info_for_dpi_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    data_protection_impact_assessment_required(D).
must_request_authorisation_for_post_rbi(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    criminal_investigation_context(S),
    \+ initial_identification_exception(S).
must_stop_use_on_authorisation_rejection(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S).
prohibited_untargeted_post_rbi_use(S) :-
    post_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    \+ linked_to_criminal_offence_or_threat(S).
prohibited_sole_basis_decision(S) :-
    post_remote_biometric_identification_system(S),
    adverse_legal_effect_decision(S),
    based_solely_on_output(S).
must_document_post_rbi_use(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
must_submit_annual_report(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_annex_iii(S),
    decision_related_to_natural_persons(S).
must_cooperate_with_competent_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
controls_input_data(_D, _S).
reason_to_consider_risk(_D, _S).
logs_under_control(_D, _S).
employer(_D).
workplace_use(_S).
public_authority_or_union_body(D) :- union_body(D).
public_authority_or_union_body(D) :- law_enforcement_authority(D).
registered_in_eu_database(_S).
data_protection_impact_assessment_required(_D).
criminal_investigation_context(_S).
initial_identification_exception(_S).
authorisation_rejected(_S).
law_enforcement_purpose(_S).
linked_to_criminal_offence_or_threat(_S).
adverse_legal_effect_decision(_S).
based_solely_on_output(_S).
decision_related_to_natural_persons(_S).
provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_input_data_relevance/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_risk_and_suspend/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
provenance(must_register_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_use_info_for_dpi_assessment/2, 'celex:32024R1689/oj#art_26').
provenance(must_request_authorisation_for_post_rbi/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_on_authorisation_rejection/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_post_rbi_use/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_sole_basis_decision/1, 'celex:32024R1689/oj#art_26').
provenance(must_document_post_rbi_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_26').
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
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').

% ==== celex:32024R1689/oj#art_27 ====
declared(body_governed_by_public_law/1, 'deployer that is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_providing_public_services/1, 'private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(high_risk_ai_system_art_6_par_2/1, 'high-risk AI system referred to in Article 6(2)', 'celex:32024R1689/oj#art_27').
declared(exempt_from_fria_notification/1, 'deployer exempt from obligation to notify FRIA results under Article 46(1)', 'celex:32024R1689/oj#art_27').
declared(data_protection_impact_assessment_conducted/1, 'data protection impact assessment conducted pursuant to GDPR or LED', 'celex:32024R1689/oj#art_27').
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment before deploying high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(must_notify_fria_results/2, 'deployer must notify market surveillance authority of FRIA results using template', 'celex:32024R1689/oj#art_27').
declared(must_update_fria/2, 'deployer must update FRIA when elements have changed or are no longer up to date', 'celex:32024R1689/oj#art_27').
declared(must_complement_dpia_with_fria/2, 'FRIA shall complement existing data protection impact assessment', 'celex:32024R1689/oj#art_27').
body_governed_by_public_law(D) :-
    deployer(D).
private_entity_providing_public_services(D) :-
    deployer(D).
high_risk_ai_system_art_6_par_2(S) :-
    high_risk_ai_system(S).
exempt_from_fria_notification(D) :-
    deployer(D).
data_protection_impact_assessment_conducted(D) :-
    deployer(D).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    before_placing_on_market_or_service(S),
    \+ fria_exempt_system(S),
    fria_subject_deployer(D).
fria_exempt_system(S) :-
    high_risk_ai_system_annex_iii(S).
fria_subject_deployer(D) :-
    body_governed_by_public_law(D).
fria_subject_deployer(D) :-
    private_entity_providing_public_services(D).
must_notify_fria_results(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    \+ exempt_from_fria_notification(D).
must_update_fria(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    fria_element_changed(S).
must_complement_dpia_with_fria(D, S) :-
    deployer(D),
    high_risk_ai_system_art_6_par_2(S),
    data_protection_impact_assessment_conducted(D).
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_art_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_fria_notification/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_fria_results/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fria/2, 'celex:32024R1689/oj#art_27').
provenance(must_complement_dpia_with_fria/2, 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(must_designate_notifying_authority/2, 'Member State must designate or establish at least one notifying authority', 'celex:32024R1689/oj#art_28').
declared(responsible_for_assessment_and_notification/2, 'notifying authority is responsible for assessment, designation and notification procedures', 'celex:32024R1689/oj#art_28').
declared(procedures_developed_in_cooperation/1, 'procedures developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(assessment_carried_out_by_accreditation_body/2, 'assessment and monitoring carried out by national accreditation body', 'celex:32024R1689/oj#art_28').
declared(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'notifying authority organised so no conflict of interest arises with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(objectivity_and_impartiality_safeguarded/1, 'objectivity and impartiality of notifying authority activities are safeguarded', 'celex:32024R1689/oj#art_28').
declared(notification_decision_by_different_persons/1, 'decisions relating to notification taken by persons different from those who carried out assessment', 'celex:32024R1689/oj#art_28').
declared(prohibited_commercial_activities/1, 'notifying authority does not offer activities performed by conformity assessment bodies or consultancy on commercial basis', 'celex:32024R1689/oj#art_28').
declared(must_safeguard_confidentiality/2, 'notifying authority must safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(has_adequate_competent_personnel/1, 'notifying authority has adequate number of competent personnel for proper performance of tasks', 'celex:32024R1689/oj#art_28').
declared(personnel_have_necessary_expertise/1, 'competent personnel have necessary expertise in relevant fields', 'celex:32024R1689/oj#art_28').
must_designate_notifying_authority(MS, A) :-
    notifying_authority(A),
    member_state(MS).
responsible_for_assessment_and_notification(A, Procedures) :-
    notifying_authority(A),
    assessment_procedures(Procedures),
    designation_procedures(Procedures),
    notification_procedures(Procedures),
    monitoring_procedures(Procedures).
procedures_developed_in_cooperation(Procedures) :-
    assessment_procedures(Procedures),
    designation_procedures(Procedures),
    notification_procedures(Procedures).
assessment_carried_out_by_accreditation_body(MS, B) :-
    member_state(MS),
    national_accreditation_body(B),
    ms_decides_accreditation_body_carries_out_assessment(MS, B).
no_conflict_of_interest_with_conformity_assessment_bodies(A) :-
    notifying_authority(A),
    \+ conflict_of_interest_exists(A).
objectivity_and_impartiality_safeguarded(A) :-
    notifying_authority(A),
    established_to_safeguard_objectivity(A),
    organised_to_safeguard_objectivity(A),
    operated_to_safeguard_objectivity(A).
notification_decision_by_different_persons(A) :-
    notifying_authority(A),
    organised_for_separation_of_functions(A).
prohibited_commercial_activities(A) :-
    notifying_authority(A),
    \+ offers_conformity_assessment_activities(A),
    \+ offers_commercial_consultancy_services(A).
must_safeguard_confidentiality(A, Info) :-
    notifying_authority(A),
    information_obtained(A, Info).
has_adequate_competent_personnel(A) :-
    notifying_authority(A),
    adequate_number_of_personnel(A),
    competent_personnel(A).
personnel_have_necessary_expertise(A) :-
    notifying_authority(A),
    competent_personnel(A),
    expertise_in_information_technologies(A),
    expertise_in_ai(A),
    expertise_in_law(A),
    expertise_in_fundamental_rights_supervision(A).
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(responsible_for_assessment_and_notification/2, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_carried_out_by_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decision_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_activities/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(has_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_have_necessary_expertise/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_notification_application/2, 'conformity assessment body must submit application for notification to notifying authority', 'celex:32024R1689/oj#art_29').
declared(notification_application_accompanied_by/2, 'application for notification is accompanied by required documentation', 'celex:32024R1689/oj#art_29').
declared(has_accreditation_certificate/1, 'conformity assessment body possesses valid accreditation certificate', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'body must provide documentary evidence when accreditation certificate unavailable', 'celex:32024R1689/oj#art_29').
declared(designated_under_other_union_legislation/1, 'notified body designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/2, 'notified body must update documentation when relevant changes occur', 'celex:32024R1689/oj#art_29').
must_submit_notification_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).
notification_application_accompanied_by(Application, description(activities)) :-
    notification_application(Application).
notification_application_accompanied_by(Application, description(modules)) :-
    notification_application(Application).
notification_application_accompanied_by(Application, description(ai_system_types)) :-
    notification_application(Application).
notification_application_accompanied_by(Application, accreditation_certificate(Cert)) :-
    notification_application(Application),
    has_accreditation_certificate(Cert).
notification_application_accompanied_by(Application, existing_designation_documents) :-
    notification_application(Application),
    designated_under_other_union_legislation(_Body).
must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ has_accreditation_certificate(_Cert).
must_update_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    designated_under_other_union_legislation(Body),
    relevant_changes_occurred(Body).
provenance(must_submit_notification_application/2, 'celex:32024R1689/oj#art_29').
provenance(notification_application_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(has_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_union_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_30 ====
declared(may_notify_conformity_assessment_body/2, 'notifying authority may notify a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify_commission_and_member_states/2, 'notifying authority must notify Commission and Member States of a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(notification_includes_full_details/1, 'notification includes full details of activities, modules, AI system types and attestation', 'celex:32024R1689/oj#art_30').
declared(based_on_accreditation_certificate/1, 'notification is based on an accreditation certificate referred to in Article 29(2)', 'celex:32024R1689/oj#art_30').
declared(must_provide_documentary_evidence_of_competence/2, 'notifying authority must provide documentary evidence attesting competence and monitoring arrangements', 'celex:32024R1689/oj#art_30').
declared(permitted_to_perform_notified_body_activities/1, 'conformity assessment body is permitted to perform notified body activities', 'celex:32024R1689/oj#art_30').
declared(objection_raised_within_period/1, 'objection raised by Commission or Member State within applicable period', 'celex:32024R1689/oj#art_30').
declared(must_consult_on_objection/2, 'Commission must enter into consultations regarding an objection', 'celex:32024R1689/oj#art_30').
declared(must_decide_authorisation_justification/2, 'Commission must decide whether authorisation is justified', 'celex:32024R1689/oj#art_30').
may_notify_conformity_assessment_body(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_of_art_31(Body).
must_notify_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify_conformity_assessment_body(Authority, Body).
notification_includes_full_details(notification(Body)) :-
    conformity_assessment_body(Body).
must_provide_documentary_evidence_of_competence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ based_on_accreditation_certificate(notification(Body)).
permitted_to_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    \+ objection_raised_within_period(notification(Body)).
must_consult_on_objection(commission, Notification) :-
    objection_raised_within_period(Notification).
must_decide_authorisation_justification(commission, Notification) :-
    objection_raised_within_period(Notification).
provenance(may_notify_conformity_assessment_body/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes_full_details/1, 'celex:32024R1689/oj#art_30').
provenance(based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence_of_competence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_to_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised_within_period/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult_on_objection/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation_justification/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(has_legal_personality/1, 'notified body has legal personality', 'celex:32024R1689/oj#art_31').
declared(satisfies_organisational_requirements/1, 'notified body satisfies organisational requirements necessary to fulfil tasks', 'celex:32024R1689/oj#art_31').
declared(satisfies_quality_management_requirements/1, 'notified body satisfies quality management requirements necessary to fulfil tasks', 'celex:32024R1689/oj#art_31').
declared(satisfies_resource_requirements/1, 'notified body satisfies resource requirements necessary to fulfil tasks', 'celex:32024R1689/oj#art_31').
declared(satisfies_process_requirements/1, 'notified body satisfies process requirements necessary to fulfil tasks', 'celex:32024R1689/oj#art_31').
declared(satisfies_cybersecurity_requirements/1, 'notified body satisfies suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(ensures_confidence_in_performance/1, 'organisational structure and operation ensure confidence in performance and conformity assessment results', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider/2, 'notified body is independent of the provider of the high-risk AI system assessed', 'celex:32024R1689/oj#art_31').
declared(independent_of_competitor/2, 'notified body is independent of competitors of the provider', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_activity/2, 'body or personnel not directly involved in specified activity regarding high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(maintains_confidentiality/1, 'notified body has procedures ensuring confidentiality of information obtained during conformity assessment', 'celex:32024R1689/oj#art_31').
declared(staff_bound_by_professional_secrecy/1, 'staff of notified body bound to observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(takes_account_of_provider_characteristics/1, 'procedures take due account of provider size, sector, structure and system complexity', 'celex:32024R1689/oj#art_31').
declared(has_liability_insurance/1, 'notified body has appropriate liability insurance for conformity assessment activities', 'celex:32024R1689/oj#art_31').
declared(liability_assumed_by_member_state/1, 'liability for conformity assessment assumed by Member State', 'celex:32024R1689/oj#art_31').
declared(capable_of_tasks_with_integrity_and_competence/1, 'notified body capable of carrying out tasks with professional integrity and requisite competence', 'celex:32024R1689/oj#art_31').
declared(has_sufficient_internal_competences/1, 'notified body has sufficient internal competences to evaluate tasks conducted by external parties', 'celex:32024R1689/oj#art_31').
declared(has_permanent_availability_of_personnel/1, 'notified body has permanent availability of administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination_activities/1, 'notified body participates in coordination activities referred to in Article 38', 'celex:32024R1689/oj#art_31').
declared(participates_in_standardisation/1, 'notified body takes part in or is represented in European standardisation organisations or is aware of relevant standards', 'celex:32024R1689/oj#art_31').
established_under_national_law(B) :-
    notified_body(B).
has_legal_personality(B) :-
    notified_body(B).
satisfies_organisational_requirements(B) :-
    notified_body(B).
satisfies_quality_management_requirements(B) :-
    notified_body(B).
satisfies_resource_requirements(B) :-
    notified_body(B).
satisfies_process_requirements(B) :-
    notified_body(B).
satisfies_cybersecurity_requirements(B) :-
    notified_body(B).
ensures_confidence_in_performance(B) :-
    notified_body(B).
independent_of_provider(B, S) :-
    notified_body(B),
    high_risk_ai_system(S).
independent_of_operator_with_economic_interest(B, O) :-
    notified_body(B),
    operator(O).
independent_of_competitor(B, C) :-
    notified_body(B),
    operator(C).
not_involved_in_design(B) :-
    notified_body(B).
not_involved_in_development(B) :-
    notified_body(B).
not_involved_in_marketing(B) :-
    notified_body(B).
not_involved_in_use(B) :-
    notified_body(B).
does_not_represent_parties(B) :-
    notified_body(B).
must_safeguard_impartiality(B) :-
    notified_body(B).
maintains_confidentiality(B) :-
    notified_body(B).
staff_bound_by_professional_secrecy(B) :-
    notified_body(B).
takes_account_of_provider_characteristics(B) :-
    notified_body(B).
has_liability_insurance(B) :-
    notified_body(B),
    \+ liability_assumed_by_member_state(B).
liability_assumed_by_member_state(B) :-
    notified_body(B).
capable_of_tasks_with_integrity_and_competence(B) :-
    notified_body(B).
has_sufficient_internal_competences(B) :-
    notified_body(B).
has_permanent_availability_of_personnel(B) :-
    notified_body(B).
meets_requirements_of_art_31(B) :-
    notified_body(B).
participates_in_coordination_activities(B) :-
    notified_body(B).
participates_in_standardisation(B) :-
    notified_body(B).
provenance(established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(has_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_resource_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(ensures_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_operator_with_economic_interest/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_design/1, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_development/1, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_marketing/1, 'celex:32024R1689/oj#art_31').
provenance(not_involved_in_use/1, 'celex:32024R1689/oj#art_31').
provenance(does_not_represent_parties/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(maintains_confidentiality/1, 'celex:32024R1689/oj#art_31').
provenance(staff_bound_by_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(takes_account_of_provider_characteristics/1, 'celex:32024R1689/oj#art_31').
provenance(has_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(liability_assumed_by_member_state/1, 'celex:32024R1689/oj#art_31').
provenance(capable_of_tasks_with_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(has_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(has_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(meets_requirements_of_art_31/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_compliant_with_art_31/1, 'conformity assessment body presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
declared(demonstrates_conformity_with_harmonised_standard/1, 'body demonstrates conformity with criteria in relevant harmonised standards published in OJEU', 'celex:32024R1689/oj#art_32').
declared(harmonised_standard_covers_requirement/2, 'harmonised standard covers a requirement set out in Article 31', 'celex:32024R1689/oj#art_32').
presumed_compliant_with_art_31(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standard(B).
demonstrates_conformity_with_harmonised_standard(B) :-
    conformity_assessment_body(B),
    harmonised_standard(_S),
    
    true.
provenance(presumed_compliant_with_art_31/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standard/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standard_covers_requirement/2, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontracts_tasks/2, 'notified body subcontracts specific tasks connected with conformity assessment', 'celex:32024R1689/oj#art_33').
declared(has_recourse_to_subsidiary/2, 'notified body has recourse to a subsidiary for conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(must_ensure_subcontractor_meets_requirements/2, 'notified body must ensure subcontractor meets Article 31 requirements', 'celex:32024R1689/oj#art_33').
declared(must_ensure_subsidiary_meets_requirements/2, 'notified body must ensure subsidiary meets Article 31 requirements', 'celex:32024R1689/oj#art_33').
declared(must_inform_notifying_authority_of_subcontracting/2, 'notified body must inform notifying authority of subcontracting or subsidiary use', 'celex:32024R1689/oj#art_33').
declared(takes_full_responsibility_for_subcontracted_tasks/2, 'notified body takes full responsibility for tasks performed by subcontractors or subsidiaries', 'celex:32024R1689/oj#art_33').
declared(provider_agrees_to_subcontracting/2, 'provider agrees to subcontracting or subsidiary carrying out activities', 'celex:32024R1689/oj#art_33').
declared(must_make_subsidiary_list_publicly_available/1, 'notified body must make list of subsidiaries publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_assessment_documents/2, 'notified body must keep documents concerning qualification assessment and work at disposal of notifying authority', 'celex:32024R1689/oj#art_33').
subcontracts_tasks(B, S) :-
    notified_body(B),
    ai_system(S).
has_recourse_to_subsidiary(B, S) :-
    notified_body(B),
    ai_system(S).
must_ensure_subcontractor_meets_requirements(B, S) :-
    notified_body(B),
    subcontracts_tasks(B, S).
must_ensure_subsidiary_meets_requirements(B, S) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, S).
must_inform_notifying_authority_of_subcontracting(B, A) :-
    notified_body(B),
    notifying_authority(A),
    (   subcontracts_tasks(B, _)
    ;   has_recourse_to_subsidiary(B, _)
    ).
takes_full_responsibility_for_subcontracted_tasks(B, S) :-
    notified_body(B),
    (   subcontracts_tasks(B, S)
    ;   has_recourse_to_subsidiary(B, S)
    ).
provider_agrees_to_subcontracting(P, B) :-
    provider(P),
    notified_body(B).
must_make_subsidiary_list_publicly_available(B) :-
    notified_body(B).
must_keep_assessment_documents(B, A) :-
    notified_body(B),
    notifying_authority(A),
    (   subcontracts_tasks(B, _)
    ;   has_recourse_to_subsidiary(B, _)
    ).
provenance(subcontracts_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(has_recourse_to_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(must_ensure_subcontractor_meets_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_ensure_subsidiary_meets_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority_of_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(takes_full_responsibility_for_subcontracted_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agrees_to_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiary_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_assessment_documents/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body must verify conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'notified body must avoid unnecessary burdens for provider', 'celex:32024R1689/oj#art_34').
declared(must_submit_documentation_to_notifying_authority/2, 'notified body must submit relevant documentation to notifying authority upon request', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment_carried_out(System).
must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_submit_documentation_to_notifying_authority(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    reasoned_request(Authority, Body).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit_documentation_to_notifying_authority/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign_single_identification_number/2, 'Commission shall assign a single identification number to each notified body', 'celex:32024R1689/oj#art_35').
declared(must_make_list_publicly_available/2, 'Commission shall make publicly available the list of notified bodies including identification numbers and activities', 'celex:32024R1689/oj#art_35').
declared(must_keep_list_up_to_date/2, 'Commission shall ensure that the list of notified bodies is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign_single_identification_number(commission, Body) :-
    notified_body(Body).
must_make_list_publicly_available(commission, list(notified_bodies)) :-
    true.
must_keep_list_up_to_date(commission, list(notified_bodies)) :-
    true.
provenance(must_assign_single_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_list_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify_changes_to_notification/2, 'notifying authority must notify Commission and Member States of changes to notification', 'celex:32024R1689/oj#art_36').
declared(extension_of_scope_of_notification/1, 'change to notification that extends its scope', 'celex:32024R1689/oj#art_36').
declared(must_inform_of_planned_cessation/2, 'notified body must inform notifying authority and providers of planned cessation', 'celex:32024R1689/oj#art_36').
declared(certificate_remains_valid_after_cessation/1, 'certificate remains valid for nine months after cessation subject to conditions', 'celex:32024R1689/oj#art_36').
declared(must_withdraw_designation_on_cessation/2, 'notifying authority must withdraw designation when notified body ceases activity', 'celex:32024R1689/oj#art_36').
declared(must_investigate_non_compliance/2, 'notifying authority must investigate suspected non-compliance of notified body', 'celex:32024R1689/oj#art_36').
declared(must_restrict_suspend_or_withdraw_designation/2, 'notifying authority must restrict suspend or withdraw designation for failure', 'celex:32024R1689/oj#art_36').
declared(must_inform_providers_of_designation_change/2, 'notified body must inform providers within 10 days of designation change', 'celex:32024R1689/oj#art_36').
declared(must_keep_files_on_designation_change/2, 'notifying authority must keep files and make available on designation change', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact_on_certificates/2, 'notifying authority must assess impact on certificates after designation change', 'celex:32024R1689/oj#art_36').
declared(must_submit_report_on_findings/2, 'notifying authority must submit report on findings within three months', 'celex:32024R1689/oj#art_36').
declared(must_require_suspension_or_withdrawal_of_certificate/2, 'notifying authority must require notified body to suspend or withdraw unduly issued certificates', 'celex:32024R1689/oj#art_36').
declared(must_inform_about_required_certificate_action/2, 'notifying authority must inform Commission and Member States about required certificate action', 'celex:32024R1689/oj#art_36').
declared(must_provide_certificate_information_to_competent_authority/2, 'notifying authority must provide certificate information to national competent authority', 'celex:32024R1689/oj#art_36').
declared(certificate_remains_valid_during_suspension_or_restriction/1, 'certificate remains valid during suspension or restriction under specified conditions', 'celex:32024R1689/oj#art_36').
declared(certificate_remains_valid_after_withdrawal/1, 'certificate remains valid for nine months after withdrawal under specified conditions', 'celex:32024R1689/oj#art_36').
declared(may_extend_provisional_validity/2, 'national competent authority may extend provisional validity of certificates', 'celex:32024R1689/oj#art_36').
declared(must_inform_of_assumption_of_functions/2, 'authority or notified body must inform of assumption of functions', 'celex:32024R1689/oj#art_36').
must_notify_changes_to_notification(Authority, Change) :-
    notifying_authority(Authority),
    relevant_change_to_notification(Change).
relevant_change_to_notification(change(notification(Body))) :-
    notified_body(Body).
extension_of_scope_of_notification_applies(Change) :-
    relevant_change_to_notification(Change),
    extends_scope(Change).
must_inform_of_planned_cessation(Body, Recipient) :-
    notified_body(Body),
    plans_to_cease_conformity_assessment_activities(Body),
    cessation_recipient(Recipient).
cession_recipient(notifying_authority(_)).
cession_recipient(provider(_)).
certificate_remains_valid_after_cessation(Certificate) :-
    issued_by_notified_body(Certificate, Body),
    ceased_activities(Body),
    another_notified_body_confirmed_assumption(Certificate),
    within_months_after_cessation(Certificate, 9).
must_withdraw_designation_on_cessation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activities(Body).
must_investigate_non_compliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider_non_compliant(Authority, Body).
must_restrict_suspend_or_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_non_compliance_or_failure(Authority, Body).
must_inform_providers_of_designation_change(Body, Provider) :-
    notified_body(Body),
    designation_changed(Body),
    provider_concerned(Provider, Body).
designation_changed(Body) :-
    designation_suspended_or_restricted(Body).
designation_changed(Body) :-
    designation_withdrawn(Body).
must_keep_files_on_designation_change(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_changed(Body).
must_assess_impact_on_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_changed(Body).
must_submit_report_on_findings(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_changed(Body),
    within_months_of_notification_change(Body, 3).
must_require_suspension_or_withdrawal_of_certificate(Authority, Certificate) :-
    notifying_authority(Authority),
    issued_by_notified_body(Certificate, Body),
    designation_changed(Body),
    unduly_issued(Certificate).
must_inform_about_required_certificate_action(Authority, Certificate) :-
    notifying_authority(Authority),
    required_suspension_or_withdrawal(Authority, Certificate).
must_provide_certificate_information_to_competent_authority(Authority, Certificate) :-
    notifying_authority(Authority),
    required_suspension_or_withdrawal(Authority, Certificate),
    provider_registered_in_member_state(Certificate, _State).
certificate_remains_valid_during_suspension_or_restriction(Certificate) :-
    issued_by_notified_body(Certificate, Body),
    designation_suspended_or_restricted(Body),
    \+ unduly_issued(Certificate),
    validity_condition_for_suspension_or_restriction_met(Certificate).
validity_condition_for_suspension_or_restriction_met(Certificate) :-
    no_risk_confirmed_within_one_month(Certificate).
validity_condition_for_suspension_or_restriction_met(Certificate) :-
    no_new_certificates_confirmed(Certificate),
    monitoring_capability_or_assumption_confirmed(Certificate).
certificate_remains_valid_after_withdrawal(Certificate) :-
    issued_by_notified_body(Certificate, Body),
    designation_withdrawn(Body),
    \+ unduly_issued(Certificate),
    no_risk_confirmed_by_competent_authority(Certificate),
    immediate_responsibility_assumed_and_assessment_planned(Certificate),
    within_months_after_withdrawal(Certificate, 9).
may_extend_provisional_validity(Authority, Certificate) :-
    national_competent_authority(Authority),
    certificate_remains_valid_after_withdrawal(Certificate),
    total_extension_does_not_exceed_months(12).
must_inform_of_assumption_of_functions(Entity, Certificate) :-
    assumes_functions_for_certificate(Entity, Certificate).
provenance(must_notify_changes_to_notification/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_of_notification/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_planned_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation_on_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_non_compliance/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_of_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files_on_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_on_findings/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal_of_certificate/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_required_certificate_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_certificate_information_to_competent_authority/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_during_suspension_or_restriction/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_assumption_of_functions/2, 'celex:32024R1689/oj#art_36').
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
declared(must_investigate_competence_doubt/2, 'Commission obligation to investigate cases where there are reasons to doubt competence or continued fulfilment of requirements', 'celex:32024R1689/oj#art_37').
declared(reason_to_doubt_competence/2, 'reasons exist to doubt the competence of a notified body or its continued fulfilment of requirements', 'celex:32024R1689/oj#art_37').
declared(must_provide_notification_information/2, 'notifying authority obligation to provide Commission with information relating to notification or maintenance of competence on request', 'celex:32024R1689/oj#art_37').
declared(ascertained_non_compliance_of_notified_body/1, 'Commission has ascertained that a notified body does not meet or no longer meets requirements for notification', 'celex:32024R1689/oj#art_37').
declared(must_request_corrective_measures/2, 'Commission obligation to inform Member State and request corrective measures including suspension or withdrawal of notification', 'celex:32024R1689/oj#art_37').
declared(member_state_failed_to_take_corrective_measures/1, 'Member State has failed to take necessary corrective measures regarding notified body non-compliance', 'celex:32024R1689/oj#art_37').
must_investigate_competence_doubt(commission, B) :-
    notified_body(B),
    reason_to_doubt_competence(commission, B).
must_provide_notification_information(A, commission) :-
    notifying_authority(A),
    notified_body(B),
    reason_to_doubt_competence(commission, B).
must_treat_information_confidentially(commission, investigation_under_art_37) :-
    reason_to_doubt_competence(commission, _B).
must_request_corrective_measures(commission, MS) :-
    notified_body(B),
    ascertained_non_compliance_of_notified_body(B),
    notifying_authority_of(MS, B).
designation_suspended_or_restricted(B) :-
    notified_body(B),
    ascertained_non_compliance_of_notified_body(B),
    member_state_failed_to_take_corrective_measures(_MS).
provenance(must_investigate_competence_doubt/2, 'celex:32024R1689/oj#art_37').
provenance(reason_to_doubt_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_notification_information/2, 'celex:32024R1689/oj#art_37').
provenance(ascertained_non_compliance_of_notified_body/1, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(member_state_failed_to_take_corrective_measures/1, 'celex:32024R1689/oj#art_37').
provenance(designation_suspended_or_restricted/1, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination_of_notified_bodies/2, 'Commission must ensure coordination and cooperation between notified bodies active in conformity assessment for high-risk AI systems', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation_in_sectoral_group/2, 'Notifying authority must ensure its notified bodies participate in the sectoral group of notified bodies', 'celex:32024R1689/oj#art_38').
declared(must_provide_exchange_of_knowledge/2, 'Commission must provide for exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
declared(active_in_conformity_assessment_for_high_risk_ai_systems/1, 'notified body is active in conformity assessment procedures for high-risk AI systems', 'celex:32024R1689/oj#art_38').
declared(sectoral_group_of_notified_bodies/1, 'sectoral group of notified bodies for coordination and cooperation', 'celex:32024R1689/oj#art_38').
must_ensure_coordination_of_notified_bodies(commission, sectoral_group_of_notified_bodies) :-
    active_in_conformity_assessment_for_high_risk_ai_systems(_Body).
active_in_conformity_assessment_for_high_risk_ai_systems(Body) :-
    notified_body(Body),
    conformity_assessment(CA),
    high_risk_ai_system(S),
    conformity_assessment_carried_out(CA),
    covered_by_union_harmonisation_legislation(S).
must_ensure_participation_in_sectoral_group(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    active_in_conformity_assessment_for_high_risk_ai_systems(Body).
must_provide_exchange_of_knowledge(commission, notifying_authority(_)).
provenance(must_ensure_coordination_of_notified_bodies/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation_in_sectoral_group/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange_of_knowledge/2, 'celex:32024R1689/oj#art_38').
provenance(active_in_conformity_assessment_for_high_risk_ai_systems/1, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(conformity_assessment_body_of_third_country/1, 'conformity assessment body established under the law of a third country', 'celex:32024R1689/oj#art_39').
declared(union_agreement_concluded_with_third_country/1, 'Union has concluded an agreement with the third country', 'celex:32024R1689/oj#art_39').
declared(equivalent_level_of_compliance_ensured/1, 'body ensures an equivalent level of compliance to Article 31 requirements', 'celex:32024R1689/oj#art_39').
declared(authorised_as_notified_body/1, 'authorised to carry out activities of notified bodies under this Regulation', 'celex:32024R1689/oj#art_39').
conformity_assessment_body_of_third_country(B) :-
    conformity_assessment_body(B),
    established_under_national_law(B).
authorised_as_notified_body(B) :-
    conformity_assessment_body_of_third_country(B),
    union_agreement_concluded_with_third_country(B),
    meets_requirements_of_art_31(B).
authorised_as_notified_body(B) :-
    conformity_assessment_body_of_third_country(B),
    union_agreement_concluded_with_third_country(B),
    equivalent_level_of_compliance_ensured(B).
provenance(conformity_assessment_body_of_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_concluded_with_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(equivalent_level_of_compliance_ensured/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(presumed_conformity_with_requirements/1, 'high-risk AI system or general-purpose AI model presumed to be in conformity with requirements', 'celex:32024R1689/oj#art_40').
declared(must_issue_standardisation_request/2, 'Commission obligation to issue standardisation request covering requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(must_consult_on_standardisation_request/2, 'Commission obligation to consult Board and stakeholders when preparing standardisation request', 'celex:32024R1689/oj#art_40').
declared(must_specify_clarity_and_consistency/2, 'Commission obligation to specify that standards must be clear and consistent', 'celex:32024R1689/oj#art_40').
declared(must_request_evidence_of_best_efforts/2, 'Commission obligation to request evidence of best efforts from standardisation organisations', 'celex:32024R1689/oj#art_40').
presumed_conformity_with_requirements(S) :-
    high_risk_ai_system(S),
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_requirements_or_obligations(H, S).
presumed_conformity_with_requirements(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_requirements_or_obligations(H, M).
must_issue_standardisation_request(commission, requirements(chapter_3_section_2)).
must_issue_standardisation_request(commission, obligations(chapter_5_section_2)).
must_issue_standardisation_request(commission, obligations(chapter_5_section_3)).
must_consult_on_standardisation_request(commission, board).
must_consult_on_standardisation_request(commission, relevant_stakeholders).
must_consult_on_standardisation_request(commission, advisory_forum).
must_specify_clarity_and_consistency(commission, european_standardisation_organisations).
must_request_evidence_of_best_efforts(commission, european_standardisation_organisations).
provenance(presumed_conformity_with_requirements/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult_on_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify_clarity_and_consistency/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_of_best_efforts/2, 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_10').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_2').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_24').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_6').

% ==== celex:32024R1689/oj#art_41 ====
declared(common_specification_adopted/1, 'commission has adopted implementing act establishing common specification', 'celex:32024R1689/oj#art_41').
declared(standardisation_request_not_accepted/1, 'request for harmonised standard not accepted by european standardisation organisations', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_not_delivered_in_time/1, 'harmonised standards addressing request not delivered within deadline', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_insufficient_on_fundamental_rights/1, 'relevant harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_non_compliant_with_request/1, 'harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_harmonised_standard_reference_published/1, 'no reference to harmonised standards covering requirements published in official journal', 'celex:32024R1689/oj#art_41').
declared(must_consult_advisory_forum/2, 'commission must consult advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(must_inform_committee_of_conditions/2, 'commission must inform committee that conditions for common specifications are fulfilled', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity_via_common_specification/2, 'system or model presumed in conformity due to compliance with common specifications', 'celex:32024R1689/oj#art_41').
declared(must_repeal_common_specification_on_standard_publication/2, 'commission must repeal implementing acts when harmonised standard reference is published', 'celex:32024R1689/oj#art_41').
declared(must_justify_non_compliance_with_common_specification/2, 'provider must justify technical solutions meeting requirements when not complying with common specifications', 'celex:32024R1689/oj#art_41').
declared(must_inform_commission_of_specification_deficiency/2, 'member state must inform commission if common specification does not meet requirements', 'celex:32024R1689/oj#art_41').
declared(must_assess_and_amend_specification/2, 'commission must assess member state information and amend implementing act if appropriate', 'celex:32024R1689/oj#art_41').
common_specification_adopted(Spec) :-
    standardisation_request_not_accepted(Spec).
common_specification_adopted(Spec) :-
    harmonised_standard_not_delivered_in_time(Spec).
common_specification_adopted(Spec) :-
    harmonised_standard_insufficient_on_fundamental_rights(Spec).
common_specification_adopted(Spec) :-
    harmonised_standard_non_compliant_with_request(Spec).
common_specification_adopted(Spec) :-
    no_harmonised_standard_reference_published(Spec).
must_consult_advisory_forum(commission, Spec) :-
    common_specification_adopted(Spec).
must_inform_committee_of_conditions(commission, Spec) :-
    common_specification_adopted(Spec).
presumed_conformity_via_common_specification(Entity, Spec) :-
    high_risk_ai_system(Entity),
    common_specification_adopted(Spec).
presumed_conformity_via_common_specification(Entity, Spec) :-
    general_purpose_ai_model(Entity),
    common_specification_adopted(Spec).
must_repeal_common_specification_on_standard_publication(commission, Spec) :-
    common_specification_adopted(Spec).
must_justify_non_compliance_with_common_specification(Provider, Entity) :-
    provider(Provider),
    high_risk_ai_system(Entity).
must_justify_non_compliance_with_common_specification(Provider, Entity) :-
    provider(Provider),
    general_purpose_ai_model(Entity).
must_inform_commission_of_specification_deficiency(MemberState, Spec) :-
    common_specification_adopted(Spec).
must_assess_and_amend_specification(commission, Spec) :-
    common_specification_adopted(Spec).
provenance(common_specification_adopted/1, 'celex:32024R1689/oj#art_41').
provenance(standardisation_request_not_accepted/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_not_delivered_in_time/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_insufficient_on_fundamental_rights/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_non_compliant_with_request/1, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_of_conditions/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_via_common_specification/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_common_specification_on_standard_publication/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance_with_common_specification/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission_of_specification_deficiency/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_and_amend_specification/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').

% ==== celex:32024R1689/oj#art_42 ====
declared(presumed_compliant_with_data_requirements/1, 'high-risk AI system presumed to comply with Article 10(4) requirements based on training and testing data', 'celex:32024R1689/oj#art_42').
declared(presumed_compliant_with_cybersecurity_requirements/1, 'high-risk AI system presumed to comply with Article 15 cybersecurity requirements based on certification', 'celex:32024R1689/oj#art_42').
declared(trained_and_tested_on_setting_specific_data/1, 'trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting of intended use', 'celex:32024R1689/oj#art_42').
declared(certified_under_published_cybersecurity_scheme/1, 'certified or statement of conformity issued under a cybersecurity scheme pursuant to Regulation 2019/881 with references published in OJEU', 'celex:32024R1689/oj#art_42').
declared(certificate_covers_cybersecurity_requirements/1, 'cybersecurity certificate or statement of conformity covers the relevant Article 15 requirements', 'celex:32024R1689/oj#art_42').
presumed_compliant_with_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_setting_specific_data(S).
presumed_compliant_with_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    certified_under_published_cybersecurity_scheme(S),
    certificate_covers_cybersecurity_requirements(S).
provenance(presumed_compliant_with_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliant_with_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_setting_specific_data/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_published_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(certificate_covers_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(high_risk_ai_system_annex_3_point_2_to_8/1, 'high-risk AI system referred to in Annex III points 2 to 8', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standard_or_common_specification/1, 'provider has applied harmonised standards or common specifications', 'celex:32024R1689/oj#art_43').
declared(must_follow_conformity_assessment_procedure/2, 'provider must follow a specific conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(market_surveillance_authority_acts_as_notified_body/2, 'market surveillance authority acts as notified body for specific deployers', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement_or_union_body/1, 'system intended for law enforcement, immigration, asylum or Union bodies', 'celex:32024R1689/oj#art_43').
declared(pre_determined_change_excluded_from_substantial_modification/1, 'change pre-determined at initial assessment is not substantial modification', 'celex:32024R1689/oj#art_43').
declared(continues_to_learn_after_placing_on_market/1, 'AI system continues to learn after being placed on market or put into service', 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_point_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standard_or_common_specification/1, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_acts_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_or_union_body/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_change_excluded_from_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(continues_to_learn_after_placing_on_market/1, 'celex:32024R1689/oj#art_43').
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
high_risk_ai_system_annex_3_point_2_to_8(S) :-
    high_risk_ai_system_annex_iii(S).
applied_harmonised_standard_or_common_specification(S) :-
    provider(_P),
    high_risk_ai_system(S).
must_follow_conformity_assessment_procedure(P, internal_control(anx_6)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_2_to_8(S),
    placing_on_market(P, S).
must_follow_conformity_assessment_procedure(P, Procedure) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    applied_harmonised_standard_or_common_specification(S),
    (Procedure = internal_control(anx_6) ; Procedure = quality_management_and_technical_doc_with_notified_body(anx_7)).
must_follow_conformity_assessment_procedure(P, quality_management_and_technical_doc_with_notified_body(anx_7)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    \+ applied_harmonised_standard_or_common_specification(S).
market_surveillance_authority_acts_as_notified_body(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    intended_for_law_enforcement_or_union_body(S).
intended_for_law_enforcement_or_union_body(S) :-
    high_risk_ai_system(S),
    deployer(D),
    (law_enforcement_authority(D) ; union_body(D)).
pre_determined_change_excluded_from_substantial_modification(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placing_on_market(S),
    substantial_modification(S).
continues_to_learn_after_placing_on_market(S) :-
    high_risk_ai_system(S),
    placing_on_market(_P, S).

% ==== celex:32024R1689/oj#art_44 ====
declared(certificate/1, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(issued_by_notified_body/2, 'certificate issued by a specific notified body', 'celex:32024R1689/oj#art_44').
declared(drawn_up_in_understandable_language/2, 'certificate drawn up in language easily understood by relevant authorities', 'celex:32024R1689/oj#art_44').
declared(max_validity_period/2, 'maximum validity period for a certificate based on system category', 'celex:32024R1689/oj#art_44').
declared(must_suspend_or_withdraw_certificate/2, 'notified body must suspend or withdraw certificate if requirements not met', 'celex:32024R1689/oj#art_44').
declared(corrective_action_taken_within_deadline/2, 'provider took appropriate corrective action within deadline set by notified body', 'celex:32024R1689/oj#art_44').
declared(appeal_procedure_available/1, 'appeal procedure available against decisions of notified bodies', 'celex:32024R1689/oj#art_44').
certificate(C) :-
    issued_by_notified_body(C, _B).
drawn_up_in_understandable_language(C, MS) :-
    certificate(C),
    issued_by_notified_body(C, B),
    established_under_national_law(B),
    member_state_of_establishment(B, MS).
max_validity_period(C, years(5)) :-
    certificate(C),
    covers_annex_i_system(C).
max_validity_period(C, years(4)) :-
    certificate(C),
    high_risk_ai_system_annex_iii(S),
    certificate_for_system(C, S).
must_suspend_or_withdraw_certificate(B, C) :-
    issued_by_notified_body(C, B),
    certificate_for_system(C, S),
    requirements_of_chapter_3_section_2(S),
    \+ meets_requirements_of_art_31(S),
    \+ corrective_action_taken_within_deadline(provider(S), deadline_set_by(B)).
appeal_procedure_available(decision(B)) :-
    notified_body(B).
provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(issued_by_notified_body/2, 'celex:32024R1689/oj#art_44').
provenance(drawn_up_in_understandable_language/2, 'celex:32024R1689/oj#art_44').
provenance(max_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_taken_within_deadline/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform_notifying_authority/2, 'notified body must inform notifying authority of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_notified_bodies/2, 'notified body must inform other notified bodies of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_provide_conformity_information_to_peers/2, 'notified body must provide relevant conformity assessment information to peer notified bodies', 'celex:32024R1689/oj#art_45').
must_inform_notifying_authority(Body, issued_certificate_or_approval(C)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    union_technical_documentation_assessment_certificate_or_qms_approval(C).
must_inform_notifying_authority(Body, refusal_restriction_suspension_or_withdrawal(C)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    union_technical_documentation_assessment_certificate_or_qms_approval(C).
must_inform_notifying_authority(Body, circumstances_affecting_notification(C)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    notification_circumstance(C).
must_inform_notifying_authority(Body, market_surveillance_request(R)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    request_from_market_surveillance_authority(R).
must_inform_notifying_authority(Body, conformity_assessment_activities(A)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    requested_information_on_activities(A).
must_inform_other_notified_bodies(Body, qms_approval_refusal_suspension_or_withdrawal(A)) :-
    notified_body(Body),
    quality_management_system_approval_action(A),
    negative_qms_action(A).
must_inform_other_notified_bodies(Body, certificate_refusal_withdrawal_suspension_or_restriction(C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate_action(C),
    negative_certificate_action(C).
must_provide_conformity_information_to_peers(Body, negative_conformity_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_scope(Body),
    negative_conformity_assessment_result(I).
must_provide_conformity_information_to_peers(Body, positive_conformity_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_scope(Body),
    positive_conformity_assessment_result(I),
    requested_positive_result_information(I).
must_treat_information_confidentially(Body, obtained_information) :-
    notified_body(Body).
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_conformity_information_to_peers/2, 'celex:32024R1689/oj#art_45').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(derogation_authorisation_granted/2, 'market surveillance authority authorises placing on market or putting into service of high-risk AI system by derogation', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason_applies/1, 'exceptional reason of public security, protection of life and health, environmental protection or protection of key industrial and infrastructural assets', 'celex:32024R1689/oj#art_46').
declared(urgency_situation_for_law_enforcement/1, 'duly justified situation of urgency for exceptional reasons of public security or specific substantial imminent threat to life or physical safety', 'celex:32024R1689/oj#art_46').
declared(must_request_authorisation_without_undue_delay/2, 'law enforcement or civil protection authority must request authorisation during or after use without undue delay', 'celex:32024R1689/oj#art_46').
declared(must_stop_use_and_discard_outputs/2, 'use of high-risk AI system must be stopped and outputs discarded if authorisation refused', 'celex:32024R1689/oj#art_46').
declared(must_inform_commission_and_member_states_of_authorisation/2, 'market surveillance authority must inform Commission and other Member States of authorisation issued', 'celex:32024R1689/oj#art_46').
declared(objection_raised_within_period/1, 'objection raised by Member State or Commission within 15 calendar days of receipt of information', 'celex:32024R1689/oj#art_46').
declared(authorisation_deemed_justified/1, 'authorisation deemed justified where no objection raised within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(must_consult_and_decide_on_authorisation/2, 'Commission must enter consultations and decide whether authorisation is justified', 'celex:32024R1689/oj#art_46').
declared(must_withdraw_authorisation/2, 'market surveillance authority must withdraw authorisation considered unjustified by Commission', 'celex:32024R1689/oj#art_46').
declared(covered_by_union_harmonisation_legislation_annex_i_section_1/1, 'high-risk AI system related to product covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_46').
derogation_authorisation_granted(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    exceptional_reason_applies(S),
    requirements_of_chapter_3_section_2(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_public_security(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_protection_of_life_and_health(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_environmental_protection(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_protection_of_key_industrial_and_infrastructural_assets(S).
urgency_situation_for_law_enforcement(S) :-
    high_risk_ai_system(S),
    urgency_applies(S),
    objective_public_security(S).
urgency_situation_for_law_enforcement(S) :-
    high_risk_ai_system(S),
    urgency_applies(S),
    objective_protection_of_life_and_physical_safety(S).
must_request_authorisation_without_undue_delay(Actor, S) :-
    law_enforcement_authority(Actor),
    high_risk_ai_system(S),
    urgency_situation_for_law_enforcement(S).
must_request_authorisation_without_undue_delay(Actor, S) :-
    deployer(Actor),
    high_risk_ai_system(S),
    urgency_situation_for_law_enforcement(S).
must_stop_use_and_discard_outputs(Actor, S) :-
    operator(Actor),
    high_risk_ai_system(S),
    \+ derogation_authorisation_granted(_A, S).
must_inform_commission_and_member_states_of_authorisation(A, S) :-
    market_surveillance_authority(A),
    derogation_authorisation_granted(A, S),
    \+ sensitive_operational_data_excluded(S).
sensitive_operational_data_excluded(S) :-
    high_risk_ai_system(S),
    sensitive_operational_data(S).
authorisation_deemed_justified(S) :-
    derogation_authorisation_granted(_A, S),
    \+ objection_raised_within_period(S).
must_consult_and_decide_on_authorisation(C, S) :-
    ai_office(C),
    derogation_authorisation_granted(_A, S),
    objection_raised_within_period(S).
must_withdraw_authorisation(A, S) :-
    market_surveillance_authority(A),
    derogation_authorisation_granted(A, S),
    \+ authorisation_deemed_justified(S).
covered_by_union_harmonisation_legislation_annex_i_section_1(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
provenance(derogation_authorisation_granted/2, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason_applies/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation_for_law_enforcement/1, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_outputs/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states_of_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(objection_raised_within_period/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(must_consult_and_decide_on_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(covered_by_union_harmonisation_legislation_annex_i_section_1/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity_identifies_system/2, 'EU declaration of conformity identifies the high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_eu_declaration_of_conformity/2, 'provider must keep EU declaration of conformity at disposal of authorities for period', 'celex:32024R1689/oj#art_47').
declared(must_submit_eu_declaration_of_conformity/2, 'provider must submit copy of EU declaration of conformity to authority upon request', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_states_compliance/2, 'EU declaration states that system meets requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_contains_annex_v_information/1, 'EU declaration contains information set out in Annex V', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_translated_for_authorities/1, 'EU declaration translated into language easily understood by national competent authorities', 'celex:32024R1689/oj#art_47').
declared(single_eu_declaration_for_multiple_legislation/1, 'single EU declaration drawn up for high-risk AI system subject to other Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(provider_assumes_responsibility_for_compliance/2, 'provider assumes responsibility for compliance with requirements by drawing up declaration', 'celex:32024R1689/oj#art_47').
declared(must_keep_eu_declaration_up_to_date/2, 'provider must keep EU declaration of conformity up-to-date as appropriate', 'celex:32024R1689/oj#art_47').
eu_declaration_of_conformity_identifies_system(D, S) :-
    must_draw_up_eu_declaration_of_conformity(_P, S),
    eu_declaration_of_conformity(D, S).
must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    after_placing_on_market_or_service(S),
    period(years(10)).
must_submit_eu_declaration_of_conformity(P, A) :-
    provider(P),
    relevant_market_surveillance_authority(A),
    reasoned_request(A, eu_declaration_of_conformity).
eu_declaration_states_compliance(D, S) :-
    eu_declaration_of_conformity(D, S),
    requirements_of_chapter_3_section_2(S).
eu_declaration_contains_annex_v_information(D) :-
    eu_declaration_of_conformity(D, _S).
eu_declaration_translated_for_authorities(D) :-
    eu_declaration_of_conformity(D, _S).
single_eu_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
provider_assumes_responsibility_for_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration_of_conformity(P, S).
must_keep_eu_declaration_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_identifies_system/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_contains_annex_v_information/1, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_translated_for_authorities/1, 'celex:32024R1689/oj#art_47').
provenance(single_eu_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(provider_assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(digital_ce_marking_accessible/1, 'digital CE marking is easily accessible via interface or machine-readable code', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixing_not_possible_or_warranted/1, 'affixing CE marking visibly legibly and indelibly is not possible or warranted due to nature of system', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_union_law_requiring_ce_marking/1, 'high-risk AI system subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
must_use_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_ce_marking_accessible(S).
must_affix_ce_marking_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixing_not_possible_or_warranted(S).
must_affix_ce_marking_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking_affixing_not_possible_or_warranted(S).
identification_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    notified_body_involved_in_conformity_assessment(S),
    promotional_material_mentions_ce_compliance(S).
ce_marking_indicates_compliance_with_other_law(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_requiring_ce_marking(S).
provenance(must_use_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_compliance_with_other_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(must_register_in_eu_database/2, 'obligation to register self and system in EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_use_in_eu_database/2, 'obligation for deployer to register use of system in EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_at_national_level/2, 'obligation to register high-risk AI system at national level', 'celex:32024R1689/oj#art_49').
declared(registration_in_secure_non_public_section/1, 'registration must be in secure non-public section of EU database', 'celex:32024R1689/oj#art_49').
declared(sensitive_law_enforcement_migration_system/1, 'high-risk AI system in law enforcement, migration, asylum or border control listed in specific annex points', 'celex:32024R1689/oj#art_49').
declared(determined_not_high_risk/1, 'AI system for which provider concluded it is not high-risk per Article 6(3)', 'celex:32024R1689/oj#art_49').
declared(public_authority_deployer/1, 'deployer that is a public authority, Union body or person acting on their behalf', 'celex:32024R1689/oj#art_49').
must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    high_risk_ai_system_annex_iii(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_service(S).
must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    high_risk_ai_system_annex_iii(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_service(S).
must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    determined_not_high_risk(S),
    before_placing_on_market_or_service(S).
must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    determined_not_high_risk(S),
    before_placing_on_market_or_service(S).
must_register_use_in_eu_database(Deployer, S) :-
    public_authority_deployer(Deployer),
    high_risk_ai_system_annex_iii(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_service(S).
registration_in_secure_non_public_section(S) :-
    sensitive_law_enforcement_migration_system(S).
sensitive_law_enforcement_migration_system(S) :-
    high_risk_ai_system_annex_3_point_1(S).
sensitive_law_enforcement_migration_system(S) :-
    high_risk_ai_system_annex_3_point_6(S).
sensitive_law_enforcement_migration_system(S) :-
    high_risk_ai_system_annex_3_point_7(S).
must_register_at_national_level(_Actor, S) :-
    high_risk_ai_system_annex_3_point_2(S).
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_at_national_level/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(sensitive_law_enforcement_migration_system/1, 'celex:32024R1689/oj#art_49').
provenance(determined_not_high_risk/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_49').
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
declared(interacts_directly_with_natural_persons/1, 'AI system intended to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(interaction_with_ai_is_obvious/1, 'interaction with AI system is obvious to a reasonably well-informed person', 'celex:32024R1689/oj#art_50').
declared(authorised_for_criminal_offence_purposes/1, 'AI system authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(available_to_report_criminal_offence/1, 'AI system available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generating synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(performs_assistive_editing_function/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(substantially_alters_input_data/1, 'AI system substantially alters input data or semantics thereof', 'celex:32024R1689/oj#art_50').
declared(must_mark_outputs_as_artificial/2, 'provider must ensure outputs are marked as artificially generated', 'celex:32024R1689/oj#art_50').
declared(must_inform_of_interaction/2, 'provider must inform natural persons they are interacting with an AI system', 'celex:32024R1689/oj#art_50').
declared(must_inform_of_system_operation/2, 'deployer must inform exposed persons of system operation', 'celex:32024R1689/oj#art_50').
declared(must_disclose_deep_fake/2, 'deployer must disclose content is artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(must_disclose_ai_generated_text/2, 'deployer must disclose text published to inform public is AI-generated', 'celex:32024R1689/oj#art_50').
declared(artistic_or_fictional_work/1, 'content forms part of an evidently artistic, creative, satirical, fictional or analogous work', 'celex:32024R1689/oj#art_50').
declared(informs_public_on_matters_of_public_interest/1, 'text published with purpose of informing public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(subject_to_human_editorial_control/1, 'AI-generated content has undergone human review and editorial control', 'celex:32024R1689/oj#art_50').
declared(must_encourage_codes_of_practice/2, 'AI Office must encourage drawing up of codes of practice', 'celex:32024R1689/oj#art_50').
interacts_directly_with_natural_persons(S) :-
    ai_system(S),
    intended_purpose(S),
    
    true.
interaction_with_ai_is_obvious(S) :-
    interacts_directly_with_natural_persons(S).
authorised_for_criminal_offence_purposes(S) :-
    ai_system(S).
available_to_report_criminal_offence(S) :-
    ai_system(S).
generates_synthetic_content(S) :-
    ai_system(S).
performs_assistive_editing_function(S) :-
    generates_synthetic_content(S).
substantially_alters_input_data(S) :-
    generates_synthetic_content(S).
artistic_or_fictional_work(C) :-
    deep_fake(C).
informs_public_on_matters_of_public_interest(T) :-
    ai_system(_S).
subject_to_human_editorial_control(C) :-
    ai_system(_S).
must_inform_of_interaction(P, S) :-
    provider(P),
    interacts_directly_with_natural_persons(S),
    \+ interaction_with_ai_is_obvious(S),
    \+ exempt_from_interaction_transparency(S).
exempt_from_interaction_transparency(S) :-
    authorised_for_criminal_offence_purposes(S),
    \+ available_to_report_criminal_offence(S).
must_mark_outputs_as_artificial(P, S) :-
    provider(P),
    generates_synthetic_content(S),
    \+ exempt_from_content_marking(S).
exempt_from_content_marking(S) :-
    performs_assistive_editing_function(S).
exempt_from_content_marking(S) :-
    \+ substantially_alters_input_data(S).
exempt_from_content_marking(S) :-
    authorised_for_criminal_offence_purposes(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ exempt_emotion_or_categorisation(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ exempt_emotion_or_categorisation(S).
exempt_emotion_or_categorisation(S) :-
    authorised_for_criminal_offence_purposes(S).
must_disclose_deep_fake(D, C) :-
    deployer(D),
    deep_fake(C),
    \+ authorised_for_criminal_offence_purposes(C).
must_disclose_ai_generated_text(D, T) :-
    deployer(D),
    informs_public_on_matters_of_public_interest(T),
    \+ authorised_for_criminal_offence_purposes(T),
    \+ subject_to_human_editorial_control(T).
must_encourage_codes_of_practice(AI, detection_and_labelling) :-
    ai_office(AI).
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(interaction_with_ai_is_obvious/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_for_criminal_offence_purposes/1, 'celex:32024R1689/oj#art_50').
provenance(available_to_report_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(performs_assistive_editing_function/1, 'celex:32024R1689/oj#art_50').
provenance(substantially_alters_input_data/1, 'celex:32024R1689/oj#art_50').
provenance(must_mark_outputs_as_artificial/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_system_operation/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_ai_generated_text/2, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_fictional_work/1, 'celex:32024R1689/oj#art_50').
provenance(informs_public_on_matters_of_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(subject_to_human_editorial_control/1, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_codes_of_practice/2, 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_51 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_51').
declared(has_high_impact_capabilities/1, 'model has high impact capabilities evaluated by appropriate tools', 'celex:32024R1689/oj#art_51').
declared(commission_decision_on_equivalent_capabilities/1, 'Commission decided model has equivalent capabilities or impact', 'celex:32024R1689/oj#art_51').
declared(presumed_high_impact_capabilities/1, 'model presumed to have high impact capabilities based on computation threshold', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    has_high_impact_capabilities(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_on_equivalent_capabilities(M).
has_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    presumed_high_impact_capabilities(M).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation(M, Ops),
    Ops > 10^25.
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(has_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_on_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_52 ====
declared(meets_condition_of_art_51_1_a/1, 'general-purpose AI model meets the condition referred to in Article 51(1)(a)', 'celex:32024R1689/oj#art_52').
declared(must_notify_commission_of_systemic_risk_model/2, 'provider must notify Commission of general-purpose AI model meeting systemic risk criteria', 'celex:32024R1689/oj#art_52').
declared(notification_deadline_for_systemic_risk_model/2, 'deadline for notifying Commission of general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments_against_systemic_risk_classification/2, 'provider may present substantiated arguments that model does not present systemic risks', 'celex:32024R1689/oj#art_52').
declared(commission_may_designate_systemic_risk_model/1, 'Commission may designate a general-purpose AI model as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(designation_based_on_annex_xiii_criteria/1, 'designation of systemic risk based on criteria set out in Annex XIII', 'celex:32024R1689/oj#art_52').
declared(qualified_alert_from_scientific_panel/1, 'qualified alert from the scientific panel pursuant to Article 90(1)(a)', 'celex:32024R1689/oj#art_52').
declared(must_reassess_systemic_risk_designation/2, 'Commission must take into account reasoned request for reassessment of systemic risk designation', 'celex:32024R1689/oj#art_52').
declared(reassessment_request_contains_new_reasons/1, 'reassessment request contains objective detailed and new reasons arising since designation', 'celex:32024R1689/oj#art_52').
declared(minimum_period_between_reassessment_requests/2, 'minimum period of six months between reassessment requests', 'celex:32024R1689/oj#art_52').
declared(must_publish_systemic_risk_model_list/1, 'Commission must publish and keep up to date list of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_52').
meets_condition_of_art_51_1_a(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
must_notify_commission_of_systemic_risk_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    meets_condition_of_art_51_1_a(M).
notification_deadline_for_systemic_risk_model(M, weeks(2)) :-
    meets_condition_of_art_51_1_a(M).
may_present_arguments_against_systemic_risk_classification(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    meets_condition_of_art_51_1_a(M).
commission_may_designate_systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    \+ meets_condition_of_art_51_1_a(M),
    systemic_risk(M).
commission_may_designate_systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    qualified_alert_from_scientific_panel(M),
    designation_based_on_annex_xiii_criteria(M).
designation_based_on_annex_xiii_criteria(M) :-
    general_purpose_ai_model(M).
must_reassess_systemic_risk_designation(_C, M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    reasoned_request(_, M),
    reassessment_request_contains_new_reasons(M).
reassessment_request_contains_new_reasons(M) :-
    general_purpose_ai_model(M).
minimum_period_between_reassessment_requests(M, months(6)) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_publish_systemic_risk_model_list(_C) :-
    true.
provenance(meets_condition_of_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify_commission_of_systemic_risk_model/2, 'celex:32024R1689/oj#art_52').
provenance(notification_deadline_for_systemic_risk_model/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments_against_systemic_risk_classification/2, 'celex:32024R1689/oj#art_52').
provenance(commission_may_designate_systemic_risk_model/1, 'celex:32024R1689/oj#art_52').
provenance(designation_based_on_annex_xiii_criteria/1, 'celex:32024R1689/oj#art_52').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_52').
provenance(must_reassess_systemic_risk_designation/2, 'celex:32024R1689/oj#art_52').
provenance(reassessment_request_contains_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(minimum_period_between_reassessment_requests/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_systemic_risk_model_list/1, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up and keep up-to-date technical documentation of the model', 'celex:32024R1689/oj#art_53').
declared(must_provide_integration_information/2, 'provider must make available information to downstream providers integrating the model', 'celex:32024R1689/oj#art_53').
declared(must_comply_with_copyright_policy/2, 'provider must put in place policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(must_publish_training_content_summary/2, 'provider must make publicly available summary of training content', 'celex:32024R1689/oj#art_53').
declared(exempt_open_source_model/1, 'model released under free and open-source licence with public parameters', 'celex:32024R1689/oj#art_53').
declared(must_cooperate_with_authorities/2, 'provider must cooperate with Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(may_rely_on_code_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(must_demonstrate_alternative_compliance/2, 'provider not adhering to code or standard must demonstrate alternative means', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ exempt_open_source_model(M).
must_provide_integration_information(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ exempt_open_source_model(M).
must_comply_with_copyright_policy(P, M) :-
    general_purpose_ai_model_provider(P, M).
must_publish_training_content_summary(P, M) :-
    general_purpose_ai_model_provider(P, M).
exempt_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk(M).
must_cooperate_with_authorities(P, commission) :-
    general_purpose_ai_model_provider(P, _).
must_cooperate_with_authorities(P, A) :-
    general_purpose_ai_model_provider(P, _),
    national_competent_authority(A).
may_rely_on_code_of_practice(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ harmonised_standard_published_for_obligations.
must_demonstrate_alternative_compliance(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_european_harmonised_standard(P, M).
adheres_to_approved_code_of_practice(_P, _M) :- fail.
complies_with_european_harmonised_standard(_P, _M) :- fail.
harmonised_standard_published_for_obligations :- fail.
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply_with_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_publish_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
declared(must_appoint_authorised_representative/2, 'provider established in third country must appoint authorised representative in Union before placing model on market', 'celex:32024R1689/oj#art_54').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform_mandated_tasks/2, 'authorised representative must perform tasks specified in mandate', 'celex:32024R1689/oj#art_54').
declared(must_provide_mandate_copy/2, 'authorised representative must provide copy of mandate to AI Office upon request', 'celex:32024R1689/oj#art_54').
declared(must_verify_provider_compliance/2, 'authorised representative must verify technical documentation and obligations fulfilled by provider', 'celex:32024R1689/oj#art_54').
declared(must_keep_technical_documentation_for_model/2, 'authorised representative must keep technical documentation at disposal of authorities for ten years after placing on market', 'celex:32024R1689/oj#art_54').
declared(must_provide_compliance_information_for_model/2, 'authorised representative must provide information to demonstrate compliance with Chapter V obligations upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(must_cooperate_on_model_compliance/2, 'authorised representative must cooperate with AI Office and competent authorities on actions related to general-purpose AI model', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_addressing_representative/2, 'mandate empowers authorised representative to be addressed by authorities on compliance issues', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate_on_noncompliance/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform_ai_office_of_termination/2, 'authorised representative must immediately inform AI Office about mandate termination and reasons', 'celex:32024R1689/oj#art_54').
declared(exempt_authorised_representative_obligation/1, 'general-purpose AI model exempt from authorised representative obligation under Article 54', 'celex:32024R1689/oj#art_54').
declared(released_under_free_and_open_source_licence/1, 'model released under licence allowing access usage modification and distribution', 'celex:32024R1689/oj#art_54').
declared(parameters_publicly_available_for_model/1, 'parameters weights architecture and usage information made publicly available', 'celex:32024R1689/oj#art_54').
must_appoint_authorised_representative(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    established_in_third_country(P),
    before_placing_on_market_or_service(M),
    \+ exempt_authorised_representative_obligation(M).
must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    general_purpose_ai_model(_M),
    mandated_by(P, R).
must_perform_mandated_tasks(R, P) :-
    authorised_representative(R),
    provider(P),
    mandated_by(P, R).
must_provide_mandate_copy(R, ai_office) :-
    authorised_representative(R),
    provider(_P),
    mandated_by(_P, R).
must_verify_provider_compliance(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    mandated_by(_P, R).
must_keep_technical_documentation_for_model(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    mandated_by(_P, R),
    period(years(10), after(placing_on_market(M))).
must_provide_compliance_information_for_model(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    reasoned_request(ai_office, M).
must_cooperate_on_model_compliance(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    reasoned_request(_Authority, M).
mandate_empowers_addressing_representative(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    mandated_by(_P, R).
must_terminate_mandate_on_noncompliance(R, P) :-
    authorised_representative(R),
    provider(P),
    mandated_by(P, R),
    acts_contrary_to_obligations(P).
must_inform_ai_office_of_termination(R, termination(Mandate, Reasons)) :-
    authorised_representative(R),
    mandated_by(_P, R),
    mandate_terminated(Mandate),
    has_reasons(Reasons).
exempt_authorised_representative_obligation(M) :-
    general_purpose_ai_model(M),
    released_under_free_and_open_source_licence(M),
    parameters_publicly_available_for_model(M),
    \+ systemic_risk(M).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_provider_compliance/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_technical_documentation_for_model/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_compliance_information_for_model/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_on_model_compliance/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressing_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate_on_noncompliance/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_ai_office_of_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(released_under_free_and_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(parameters_publicly_available_for_model/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model presenting systemic risk', 'celex:32024R1689/oj#art_55').
declared(must_perform_model_evaluation/2, 'provider must perform model evaluation including adversarial testing', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risks/2, 'provider must assess and mitigate possible systemic risks at Union level', 'celex:32024R1689/oj#art_55').
declared(must_report_serious_incidents_for_model/2, 'provider must report serious incidents and corrective measures for a model', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_for_model/2, 'provider must ensure cybersecurity protection for model and infrastructure', 'celex:32024R1689/oj#art_55').
declared(may_rely_on_code_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/2, 'provider must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).
must_assess_and_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).
must_report_serious_incidents_for_model(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).
must_ensure_cybersecurity_for_model(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).
may_rely_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).
must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M),
    \+ adheres_to_approved_code_or_standard(P, M).
adheres_to_approved_code_or_standard(P, M) :-
    may_rely_on_code_of_practice(P, M).
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents_for_model/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_for_model/2, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(must_encourage_codes_of_practice/1, 'AI Office obligation to encourage and facilitate drawing up of codes of practice', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_covers_obligations/1, 'code of practice covers obligations in Articles 53 and 55', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_addresses_issue/2, 'code of practice addresses specific issue listed in Article 56(2)', 'celex:32024R1689/oj#art_56').
declared(may_invite_participant_to_draw_up_code/2, 'AI Office may invite entity to participate in drawing up codes of practice', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_meets_objective_requirements/1, 'code of practice sets out objectives and contains commitments or measures', 'celex:32024R1689/oj#art_56').
declared(must_report_on_implementation/2, 'participant must report regularly to AI Office on implementation of code of practice', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate_code/2, 'AI Office and Board must monitor and evaluate achievement of code objectives', 'celex:32024R1689/oj#art_56').
declared(must_publish_adequacy_assessment/1, 'AI Office and Board must publish assessment of adequacy of codes of practice', 'celex:32024R1689/oj#art_56').
declared(may_approve_code_by_implementing_act/1, 'Commission may approve code of practice by implementing act giving general validity', 'celex:32024R1689/oj#art_56').
declared(may_invite_adherence_to_code/2, 'AI Office may invite provider to adhere to codes of practice', 'celex:32024R1689/oj#art_56').
declared(adherence_limited_to_art_53/2, 'adherence for non-systemic risk provider limited to Article 53 obligations', 'celex:32024R1689/oj#art_56').
declared(must_encourage_review_of_code/1, 'AI Office must encourage and facilitate review and adaptation of codes of practice', 'celex:32024R1689/oj#art_56').
declared(code_ready_deadline_applies/1, 'codes of practice shall be ready at latest by 2 May 2025', 'celex:32024R1689/oj#art_56').
must_encourage_codes_of_practice(ai_office).
provenance(must_encourage_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, keeping_information_up_to_date).
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, training_content_summary_detail).
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, systemic_risk_identification).
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, systemic_risk_assessment_and_management).
provenance(code_of_practice_covers_obligations/1, 'celex:32024R1689/oj#art_56').
may_invite_participant_to_draw_up_code(ai_office, general_purpose_ai_model_provider).
may_invite_participant_to_draw_up_code(ai_office, national_competent_authority).
provenance(may_invite_participant_to_draw_up_code/2, 'celex:32024R1689/oj#art_56').
code_of_practice_meets_objective_requirements(C) :-
    code_of_practice_sets_out_objectives(C),
    code_of_practice_contains_commitments_or_measures(C).
provenance(code_of_practice_meets_objective_requirements/1, 'celex:32024R1689/oj#art_56').
must_report_on_implementation(P, ai_office) :-
    participant_in_code_of_practice(P).
provenance(must_report_on_implementation/2, 'celex:32024R1689/oj#art_56').
must_monitor_and_evaluate_code(ai_office, C) :-
    code_of_practice(C).
must_monitor_and_evaluate_code(board, C) :-
    code_of_practice(C).
provenance(must_monitor_and_evaluate_code/2, 'celex:32024R1689/oj#art_56').
must_publish_adequacy_assessment(ai_office).
must_publish_adequacy_assessment(board).
provenance(must_publish_adequacy_assessment/1, 'celex:32024R1689/oj#art_56').
may_approve_code_by_implementing_act(commission).
provenance(may_approve_code_by_implementing_act/1, 'celex:32024R1689/oj#art_56').
may_invite_adherence_to_code(ai_office, P) :-
    general_purpose_ai_model_provider(_, P).
provenance(may_invite_adherence_to_code/2, 'celex:32024R1689/oj#art_56').
adherence_limited_to_art_53(P, C) :-
    general_purpose_ai_model_provider(_, P),
    \+ presents_systemic_risk(P),
    \+ declared_interest_in_full_code(P).
provenance(adherence_limited_to_art_53/2, 'celex:32024R1689/oj#art_56').
must_encourage_review_of_code(ai_office).
provenance(must_encourage_review_of_code/1, 'celex:32024R1689/oj#art_56').
code_ready_deadline_applies(C) :-
    code_of_practice(C).
provenance(code_ready_deadline_applies/1, 'celex:32024R1689/oj#art_56').
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
declared(must_establish_ai_regulatory_sandbox/2, 'Member State obligation to establish at least one AI regulatory sandbox', 'celex:32024R1689/oj#art_57').
declared(sandbox_operational_by_deadline/1, 'AI regulatory sandbox is operational by 2 August 2026', 'celex:32024R1689/oj#art_57').
declared(joint_sandbox_established/2, 'AI regulatory sandbox established jointly with competent authorities of other Member States', 'celex:32024R1689/oj#art_57').
declared(participation_fulfils_obligation/2, 'Participation in existing sandbox fulfils establishment obligation', 'celex:32024R1689/oj#art_57').
declared(must_allocate_sufficient_resources/2, 'Member State obligation to allocate sufficient resources for sandbox compliance', 'celex:32024R1689/oj#art_57').
declared(must_cooperate_with_relevant_authorities/2, 'National competent authority obligation to cooperate with other relevant authorities', 'celex:32024R1689/oj#art_57').
declared(controlled_environment_for_innovation/1, 'AI regulatory sandbox provides controlled environment fostering innovation', 'celex:32024R1689/oj#art_57').
declared(facilitates_development_and_testing/1, 'AI regulatory sandbox facilitates development, training, testing and validation', 'celex:32024R1689/oj#art_57').
declared(limited_duration_before_market/1, 'Sandbox activities occur for limited time before placing on market or putting into service', 'celex:32024R1689/oj#art_57').
declared(sandbox_plan_agreed/2, 'Specific sandbox plan agreed between provider and competent authority', 'celex:32024R1689/oj#art_57').
declared(includes_real_world_testing/1, 'AI regulatory sandbox includes testing in real world conditions', 'celex:32024R1689/oj#art_57').
declared(must_provide_guidance_and_supervision/2, 'Competent authority obligation to provide guidance, supervision and support in sandbox', 'celex:32024R1689/oj#art_57').
declared(must_provide_regulatory_guidance/2, 'Competent authority obligation to provide guidance on regulatory expectations', 'celex:32024R1689/oj#art_57').
declared(must_provide_written_proof/2, 'Competent authority obligation to provide written proof of sandbox activities upon request', 'celex:32024R1689/oj#art_57').
declared(must_provide_exit_report/2, 'Competent authority obligation to provide exit report detailing activities and results', 'celex:32024R1689/oj#art_57').
declared(documentation_demonstrates_compliance/1, 'Exit reports and written proof may be used to demonstrate compliance', 'celex:32024R1689/oj#art_57').
declared(must_take_reports_positively_into_account/2, 'Market surveillance authorities and notified bodies must take exit reports positively into account', 'celex:32024R1689/oj#art_57').
declared(authorised_to_access_exit_reports/2, 'Commission and Board authorised to access exit reports subject to confidentiality', 'celex:32024R1689/oj#art_57').
declared(exit_report_publicly_available/1, 'Exit report made publicly available through single information platform', 'celex:32024R1689/oj#art_57').
declared(objective_legal_certainty/1, 'Sandbox aims to improve legal certainty for regulatory compliance', 'celex:32024R1689/oj#art_57').
declared(objective_sharing_best_practices/1, 'Sandbox aims to support sharing of best practices', 'celex:32024R1689/oj#art_57').
declared(objective_fostering_innovation/1, 'Sandbox aims to foster innovation and competitiveness', 'celex:32024R1689/oj#art_57').
declared(objective_evidence_based_learning/1, 'Sandbox aims to contribute to evidence-based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_market_access/1, 'Sandbox aims to facilitate access to Union market for AI systems', 'celex:32024R1689/oj#art_57').
declared(must_associate_data_protection_authority/2, 'National competent authority must associate data protection authorities when personal data involved', 'celex:32024R1689/oj#art_57').
declared(supervisory_powers_unaffected/1, 'AI regulatory sandboxes do not affect supervisory or corrective powers', 'celex:32024R1689/oj#art_57').
declared(must_mitigate_significant_risks/2, 'Significant risks identified during sandbox must result in adequate mitigation', 'celex:32024R1689/oj#art_57').
declared(power_to_suspend_testing/2, 'National competent authority power to suspend testing or participation if no effective mitigation possible', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_of_suspension/2, 'National competent authority must inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57').
declared(liability_remains_applicable/2, 'Providers remain liable under applicable law for damage inflicted on third parties', 'celex:32024R1689/oj#art_57').
declared(exempt_from_administrative_fines/2, 'No administrative fines imposed if provider observes plan and follows guidance in good faith', 'celex:32024R1689/oj#art_57').
declared(must_facilitate_cross_border_cooperation/1, 'AI regulatory sandboxes designed to facilitate cross-border cooperation', 'celex:32024R1689/oj#art_57').
declared(must_coordinate_within_board/2, 'National competent authorities must coordinate activities within framework of the Board', 'celex:32024R1689/oj#art_57').
declared(must_inform_of_sandbox_establishment/2, 'National competent authority must inform AI Office and Board of sandbox establishment', 'celex:32024R1689/oj#art_57').
declared(must_publish_sandbox_list/2, 'AI Office must make publicly available list of planned and existing sandboxes', 'celex:32024R1689/oj#art_57').
declared(must_submit_annual_sandbox_report/2, 'National competent authority must submit annual reports to AI Office and Board', 'celex:32024R1689/oj#art_57').
declared(must_make_annual_report_public/2, 'National competent authority must make annual reports or abstracts available to public online', 'celex:32024R1689/oj#art_57').
declared(must_develop_single_interface/2, 'Commission must develop single dedicated interface for AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
must_establish_ai_regulatory_sandbox(MS, Sandbox) :-
    national_competent_authority(MS),
    ai_regulatory_sandbox(Sandbox),
    sandbox_operational_by_deadline(Sandbox).
sandbox_operational_by_deadline(S) :-
    ai_regulatory_sandbox(S).
joint_sandbox_established(Sandbox, OtherMS) :-
    ai_regulatory_sandbox(Sandbox),
    national_competent_authority(OtherMS).
participation_fulfils_obligation(MS, ExistingSandbox) :-
    national_competent_authority(MS),
    ai_regulatory_sandbox(ExistingSandbox),
    equivalent_national_coverage(MS, ExistingSandbox).
equivalent_national_coverage(_MS, _Sandbox).
must_allocate_sufficient_resources(MS, Sandbox) :-
    national_competent_authority(MS),
    ai_regulatory_sandbox(Sandbox).
must_cooperate_with_relevant_authorities(NCA, RelevantAuthority) :-
    national_competent_authority(NCA),
    relevant_authority(RelevantAuthority).
relevant_authority(_A).
controlled_environment_for_innovation(S) :-
    ai_regulatory_sandbox(S).
facilitates_development_and_testing(S) :-
    ai_regulatory_sandbox(S).
limited_duration_before_market(S) :-
    ai_regulatory_sandbox(S).
sandbox_plan_agreed(S, P) :-
    ai_regulatory_sandbox(S),
    provider(P).
includes_real_world_testing(S) :-
    ai_regulatory_sandbox(S),
    testing_in_real_world_conditions(S).
must_provide_guidance_and_supervision(NCA, S) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(S).
must_provide_regulatory_guidance(NCA, P) :-
    national_competent_authority(NCA),
    provider(P).
must_provide_written_proof(NCA, P) :-
    national_competent_authority(NCA),
    provider(P).
must_provide_exit_report(NCA, P) :-
    national_competent_authority(NCA),
    provider(P).
documentation_demonstrates_compliance(Doc) :-
    exit_report(Doc).
documentation_demonstrates_compliance(Doc) :-
    written_proof(Doc).
exit_report(_D).
written_proof(_D).
must_take_reports_positively_into_account(Authority, Report) :-
    market_surveillance_authority(Authority),
    exit_report(Report).
must_take_reports_positively_into_account(Authority, Report) :-
    notified_body(Authority),
    exit_report(Report).
authorised_to_access_exit_reports(Body, Report) :-
    ai_office(Body),
    exit_report(Report).
authorised_to_access_exit_reports(Body, Report) :-
    union_body(Body),
    exit_report(Report).
exit_report_publicly_available(R) :-
    exit_report(R).
objective_legal_certainty(S) :-
    ai_regulatory_sandbox(S).
objective_sharing_best_practices(S) :-
    ai_regulatory_sandbox(S).
objective_fostering_innovation(S) :-
    ai_regulatory_sandbox(S).
objective_evidence_based_learning(S) :-
    ai_regulatory_sandbox(S).
objective_market_access(S) :-
    ai_regulatory_sandbox(S).
must_associate_data_protection_authority(NCA, DPA) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(_S),
    involves_personal_data_processing(_S),
    data_protection_authority(DPA).
involves_personal_data_processing(_S).
data_protection_authority(_DPA).
supervisory_powers_unaffected(S) :-
    ai_regulatory_sandbox(S).
must_mitigate_significant_risks(NCA, Risk) :-
    national_competent_authority(NCA),
    significant_risk(Risk).
significant_risk(_R).
power_to_suspend_testing(NCA, S) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(S),
    \+ effective_mitigation_possible(S).
effective_mitigation_possible(_S).
must_inform_ai_office_of_suspension(NCA, Decision) :-
    national_competent_authority(NCA),
    suspension_decision(Decision).
suspension_decision(_D).
liability_remains_applicable(P, Damage) :-
    provider(P),
    third_party_damage(Damage).
third_party_damage(_D).
exempt_from_administrative_fines(P, Infringement) :-
    provider(P),
    infringement(Infringement),
    observes_sandbox_plan(P),
    follows_guidance_in_good_faith(P).
observes_sandbox_plan(_P).
follows_guidance_in_good_faith(_P).
must_facilitate_cross_border_cooperation(S) :-
    ai_regulatory_sandbox(S).
must_coordinate_within_board(NCA, Board) :-
    national_competent_authority(NCA),
    union_body(Board).
must_inform_of_sandbox_establishment(NCA, Body) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(_S),
    (ai_office(Body) ; union_body(Body)).
must_publish_sandbox_list(AIO, List) :-
    ai_office(AIO),
    sandbox_list(List).
sandbox_list(_L).
must_submit_annual_sandbox_report(NCA, Body) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(_S),
    (ai_office(Body) ; union_body(Body)).
must_make_annual_report_public(NCA, Report) :-
    national_competent_authority(NCA),
    annual_sandbox_report(Report).
annual_sandbox_report(_R).
must_develop_single_interface(Commission, Interface) :-
    union_body(Commission),
    sandbox_interface(Interface).
sandbox_interface(_I).
provenance(must_establish_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_operational_by_deadline/1, 'celex:32024R1689/oj#art_57').
provenance(joint_sandbox_established/2, 'celex:32024R1689/oj#art_57').
provenance(participation_fulfils_obligation/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57').
provenance(must_cooperate_with_relevant_authorities/2, 'celex:32024R1689/oj#art_57').
provenance(controlled_environment_for_innovation/1, 'celex:32024R1689/oj#art_57').
provenance(facilitates_development_and_testing/1, 'celex:32024R1689/oj#art_57').
provenance(limited_duration_before_market/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_plan_agreed/2, 'celex:32024R1689/oj#art_57').
provenance(includes_real_world_testing/1, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_and_supervision/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_regulatory_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_57').
provenance(must_take_reports_positively_into_account/2, 'celex:32024R1689/oj#art_57').
provenance(authorised_to_access_exit_reports/2, 'celex:32024R1689/oj#art_57').
provenance(exit_report_publicly_available/1, 'celex:32024R1689/oj#art_57').
provenance(objective_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').
provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_market_access/1, 'celex:32024R1689/oj#art_57').
provenance(must_associate_data_protection_authority/2, 'celex:32024R1689/oj#art_57').
provenance(supervisory_powers_unaffected/1, 'celex:32024R1689/oj#art_57').
provenance(must_mitigate_significant_risks/2, 'celex:32024R1689/oj#art_57').
provenance(power_to_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57').
provenance(liability_remains_applicable/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_from_administrative_fines/2, 'celex:32024R1689/oj#art_57').
provenance(must_facilitate_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
provenance(must_coordinate_within_board/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_of_sandbox_establishment/2, 'celex:32024R1689/oj#art_57').
provenance(must_publish_sandbox_list/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_sandbox_report/2, 'celex:32024R1689/oj#art_57').
provenance(must_make_annual_report_public/2, 'celex:32024R1689/oj#art_57').
provenance(must_develop_single_interface/2, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts_for_sandbox/1, 'Commission obligation to adopt implementing acts for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(sandbox_implementing_act_covers/2, 'implementing act covers specific aspect of AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(must_ensure_sandbox_accessibility/2, 'implementing acts must ensure accessibility features for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(must_direct_prospective_provider_to_service/2, 'obligation to direct prospective providers to pre-deployment or value-adding services', 'celex:32024R1689/oj#art_58').
declared(must_agree_testing_terms_in_sandbox/2, 'national competent authority must agree terms and conditions for testing in real world conditions within sandbox', 'celex:32024R1689/oj#art_58').
declared(must_cooperate_on_sandbox_testing/2, 'national competent authorities must cooperate to ensure consistent practices for sandbox testing', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts_for_sandbox(commission) :-
    ai_regulatory_sandbox(_S).
sandbox_implementing_act_covers(Act, eligibility_and_selection_criteria) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
sandbox_implementing_act_covers(Act, procedures_for_participation) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
sandbox_implementing_act_covers(Act, terms_and_conditions_for_participants) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, open_to_eligible_providers) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, decision_within_months(3)) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, broad_and_equal_access) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, free_of_charge_for_smes) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, facilitates_conformity_assessment_compliance) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, facilitates_ecosystem_involvement) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, simple_administrative_requirements) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, limited_participation_period) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_ensure_sandbox_accessibility(Act, facilitates_testing_infrastructure) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).
must_direct_prospective_provider_to_service(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_regulatory_sandbox(_S).
must_agree_testing_terms_in_sandbox(Authority, Testing) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Testing),
    ai_regulatory_sandbox(_S).
must_cooperate_on_sandbox_testing(Authority1, Authority2) :-
    national_competent_authority(Authority1),
    national_competent_authority(Authority2),
    testing_in_real_world_conditions(_T),
    ai_regulatory_sandbox(_S).
provenance(must_adopt_implementing_acts_for_sandbox/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_implementing_act_covers/2, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_sandbox_accessibility/2, 'celex:32024R1689/oj#art_58').
provenance(must_direct_prospective_provider_to_service/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_testing_terms_in_sandbox/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_on_sandbox_testing/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_further_processing_in_sandbox/1, 'personal data may be further processed in AI regulatory sandbox for developing AI systems', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'area of substantial public interest listed in Article 59(1)(a)', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_mechanisms_exist/1, 'effective monitoring mechanisms to identify high risks to rights and freedoms exist', 'celex:32024R1689/oj#art_59').
declared(isolated_data_environment/1, 'data processing environment is functionally separate, isolated and protected', 'celex:32024R1689/oj#art_59').
declared(no_decisions_affecting_data_subjects/1, 'processing does not lead to measures or decisions affecting data subjects', 'celex:32024R1689/oj#art_59').
declared(appropriate_protection_and_deletion/1, 'personal data protected by technical and organisational measures and deleted upon termination or retention end', 'celex:32024R1689/oj#art_59').
declared(processing_logs_kept/1, 'logs of personal data processing kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(technical_documentation_complete/1, 'complete description of training, testing and validation process kept with results in technical documentation', 'celex:32024R1689/oj#art_59').
declared(project_summary_published/1, 'short summary of AI project published on competent authority website', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_legal_basis_exists/1, 'specific Union or national law exists for law enforcement processing in sandbox', 'celex:32024R1689/oj#art_59').
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

% ==== celex:32024R1689/oj#art_60 ====
declared(permitted_testing_in_real_world_conditions/1, 'testing of high-risk AI systems in real world conditions outside sandboxes is permitted', 'celex:32024R1689/oj#art_60').
declared(must_submit_real_world_testing_plan/2, 'provider must submit real-world testing plan to market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_approved/2, 'market surveillance authority has approved testing and plan', 'celex:32024R1689/oj#art_60').
declared(must_register_real_world_testing/2, 'provider must register testing in real world conditions', 'celex:32024R1689/oj#art_60').
declared(established_or_represented_in_union/1, 'provider established in Union or has appointed legal representative in Union', 'celex:32024R1689/oj#art_60').
declared(data_transfer_safeguards_implemented/1, 'appropriate safeguards under Union law implemented for data transfer to third countries', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_duration_compliant/1, 'testing duration does not exceed necessary time and limits', 'celex:32024R1689/oj#art_60').
declared(vulnerable_subjects_protected/1, 'subjects belonging to vulnerable groups are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_informed_and_agreed/2, 'deployer informed of relevant aspects and agreement concluded specifying roles', 'celex:32024R1689/oj#art_60').
declared(informed_consent_or_law_enforcement_exception/1, 'subjects gave informed consent or law enforcement exception applies', 'celex:32024R1689/oj#art_60').
declared(effective_oversight_of_testing/1, 'testing effectively overseen by qualified persons with necessary capacity', 'celex:32024R1689/oj#art_60').
declared(predictions_reversible/1, 'predictions recommendations or decisions of AI system can be effectively reversed', 'celex:32024R1689/oj#art_60').
declared(must_report_serious_incident_during_testing/2, 'provider must report serious incident during testing to national market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(must_mitigate_or_suspend_testing/2, 'provider must adopt mitigation measures or suspend testing upon serious incident', 'celex:32024R1689/oj#art_60').
declared(must_notify_testing_outcome/2, 'provider must notify authority of suspension termination and final outcomes', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system_annex_iii(S),
    testing_in_real_world_conditions(S),
    \+ ai_regulatory_sandbox(S),
    must_submit_real_world_testing_plan(_P, S),
    real_world_testing_approved(_MSA, S),
    must_register_real_world_testing(_P, S),
    established_or_represented_in_union(_P),
    data_transfer_safeguards_implemented(S),
    real_world_testing_duration_compliant(S),
    vulnerable_subjects_protected(S),
    informed_consent_or_law_enforcement_exception(S),
    effective_oversight_of_testing(S),
    predictions_reversible(S).
must_submit_real_world_testing_plan(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    real_world_testing_plan(S).
real_world_testing_approved(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S).
must_register_real_world_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S).
established_or_represented_in_union(P) :-
    provider(P).
data_transfer_safeguards_implemented(S) :-
    testing_in_real_world_conditions(S).
real_world_testing_duration_compliant(S) :-
    testing_in_real_world_conditions(S).
vulnerable_subjects_protected(S) :-
    testing_in_real_world_conditions(S).
deployer_informed_and_agreed(D, S) :-
    deployer(D),
    testing_in_real_world_conditions(S),
    instructions_for_use(S).
informed_consent_or_law_enforcement_exception(S) :-
    testing_in_real_world_conditions(S),
    informed_consent(S).
informed_consent_or_law_enforcement_exception(S) :-
    testing_in_real_world_conditions(S),
    law_enforcement(S),
    \+ informed_consent_feasible(S),
    no_negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).
effective_oversight_of_testing(S) :-
    testing_in_real_world_conditions(S).
predictions_reversible(S) :-
    testing_in_real_world_conditions(S).
must_report_serious_incident_during_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(S).
must_mitigate_or_suspend_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(S).
must_notify_testing_outcome(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S).
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(must_submit_real_world_testing_plan/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_approved/2, 'celex:32024R1689/oj#art_60').
provenance(must_register_real_world_testing/2, 'celex:32024R1689/oj#art_60').
provenance(established_or_represented_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_duration_compliant/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_and_agreed/2, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_or_law_enforcement_exception/1, 'celex:32024R1689/oj#art_60').
provenance(effective_oversight_of_testing/1, 'celex:32024R1689/oj#art_60').
provenance(predictions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident_during_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_mitigate_or_suspend_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_testing_outcome/2, 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').

% ==== celex:32024R1689/oj#art_61 ====
declared(must_obtain_informed_consent/2, 'provider must obtain freely-given informed consent from subject prior to testing', 'celex:32024R1689/oj#art_61').
declared(informed_consent_documented/1, 'informed consent is dated and documented', 'celex:32024R1689/oj#art_61').
declared(copy_of_consent_provided/2, 'copy of informed consent given to subject or legal representative', 'celex:32024R1689/oj#art_61').
declared(subject_duly_informed/2, 'subject informed with concise clear relevant understandable information', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(Provider, Testing) :-
    testing_in_real_world_conditions(Testing),
    provider(Provider),
    subject(Subject),
    participates_in_testing(Subject, Testing),
    before_participation(Subject, Testing),
    subject_duly_informed(Subject, Testing),
    freely_given(InformedConsent),
    informed_consent(InformedConsent),
    obtained_from(InformedConsent, Subject).
subject_duly_informed(Subject, Testing) :-
    testing_in_real_world_conditions(Testing),
    subject(Subject),
    information_provided(Subject, nature_and_objectives(Testing)),
    information_provided(Subject, possible_inconvenience(Testing)),
    information_provided(Subject, conditions_of_testing(Testing)),
    information_provided(Subject, expected_duration(Testing)),
    information_provided(Subject, rights_and_guarantees(Testing)),
    information_provided(Subject, right_to_refuse(Testing)),
    information_provided(Subject, right_to_withdraw(Testing)),
    information_provided(Subject, reversal_arrangements(Testing)),
    information_provided(Subject, unique_identification_number(Testing)),
    information_provided(Subject, contact_details(Testing)).
informed_consent_documented(InformedConsent) :-
    informed_consent(InformedConsent),
    dated(InformedConsent),
    documented(InformedConsent).
copy_of_consent_provided(InformedConsent, Recipient) :-
    informed_consent_documented(InformedConsent),
    (subject(Recipient) ; legal_representative(Recipient)),
    copy_given(InformedConsent, Recipient).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_of_consent_provided/2, 'celex:32024R1689/oj#art_61').
provenance(subject_duly_informed/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(sme_provider/1, 'SME provider including start-ups', 'celex:32024R1689/oj#art_62').
declared(has_union_presence/1, 'has registered office or branch in the Union', 'celex:32024R1689/oj#art_62').
declared(must_provide_priority_sandbox_access/2, 'Member State must provide priority access to AI regulatory sandboxes', 'celex:32024R1689/oj#art_62').
declared(must_organise_sme_training/2, 'Member State must organise awareness raising and training activities', 'celex:32024R1689/oj#art_62').
declared(must_establish_communication_channel/2, 'Member State must utilise or establish communication channels for advice', 'celex:32024R1689/oj#art_62').
declared(must_facilitate_standardisation_participation/2, 'Member State must facilitate participation in standardisation development', 'celex:32024R1689/oj#art_62').
declared(must_reduce_conformity_assessment_fees/2, 'fees for conformity assessment reduced proportionately for SME providers', 'celex:32024R1689/oj#art_62').
declared(must_provide_standardised_templates/2, 'AI Office must provide standardised templates as specified by Board', 'celex:32024R1689/oj#art_62').
declared(must_maintain_information_platform/2, 'AI Office must develop and maintain single information platform', 'celex:32024R1689/oj#art_62').
declared(must_organise_communication_campaigns/2, 'AI Office must organise communication campaigns on obligations', 'celex:32024R1689/oj#art_62').
declared(must_promote_procurement_best_practices/2, 'AI Office must evaluate and promote convergence of best practices in public procurement', 'celex:32024R1689/oj#art_62').
must_provide_priority_sandbox_access(MS, S) :-
    member_state(MS),
    sme_provider(S),
    has_union_presence(S),
    fulfils_eligibility_conditions(S),
    fulfils_selection_criteria(S).
must_organise_sme_training(MS, training(application_of_regulation)) :-
    member_state(MS).
must_establish_communication_channel(MS, advice(implementation_of_regulation)) :-
    member_state(MS).
must_facilitate_standardisation_participation(MS, sme_stakeholders) :-
    member_state(MS).
must_reduce_conformity_assessment_fees(_Authority, S) :-
    sme_provider(S).
must_provide_standardised_templates(AIO, templates(specified_by_board)) :-
    ai_office(AIO).
must_maintain_information_platform(AIO, platform(regulation_information)) :-
    ai_office(AIO).
must_organise_communication_campaigns(AIO, campaigns(obligations_under_regulation)) :-
    ai_office(AIO).
must_promote_procurement_best_practices(AIO, public_procurement(ai_systems)) :-
    ai_office(AIO).
provenance(must_provide_priority_sandbox_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_sme_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_establish_communication_channel/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_conformity_assessment_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote_procurement_best_practices/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(has_partner_or_linked_enterprise/1, 'has partner enterprises or linked enterprises within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(permitted_simplified_quality_management_compliance/1, 'permitted to comply with certain elements of the quality management system in a simplified manner', 'celex:32024R1689/oj#art_63').
permitted_simplified_quality_management_compliance(O) :-
    microenterprise(O),
    \+ has_partner_or_linked_enterprise(O).
provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(has_partner_or_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(permitted_simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
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
declared(must_develop_union_expertise_through_ai_office/2, 'Commission shall develop Union expertise and capabilities in AI through the AI Office', 'celex:32024R1689/oj#art_64').
declared(must_facilitate_ai_office_tasks/2, 'Member State shall facilitate tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop_union_expertise_through_ai_office(commission, ai_office).
must_facilitate_ai_office_tasks(MemberState, ai_office) :-
    member_state(MemberState).
provenance(must_develop_union_expertise_through_ai_office/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_ai_office_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_ai_board/1, 'the European Artificial Intelligence Board established by Article 65', 'celex:32024R1689/oj#art_65').
declared(board_representative/2, 'representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(must_designate_representative/2, 'Member State must designate a representative to the Board', 'celex:32024R1689/oj#art_65').
declared(representative_term/2, 'term of office for a Board representative', 'celex:32024R1689/oj#art_65').
declared(must_ensure_representative_competence/2, 'Member State must ensure representative has relevant competences and powers', 'celex:32024R1689/oj#art_65').
declared(must_designate_single_contact_point_for_board/2, 'Member State must designate representative as single contact point vis-a-vis the Board', 'celex:32024R1689/oj#art_65').
declared(must_empower_facilitation_of_consistency/2, 'Member State must empower representative to facilitate consistency between national authorities', 'celex:32024R1689/oj#art_65').
declared(must_adopt_rules_of_procedure/1, 'designated representatives must adopt Board rules of procedure by two-thirds majority', 'celex:32024R1689/oj#art_65').
declared(must_establish_standing_subgroup/2, 'Board must establish a standing sub-group for specified cooperation', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'AI Office must provide secretariat for the Board', 'celex:32024R1689/oj#art_65').
european_ai_board(board).
must_designate_representative(MS, R) :-
    board_representative(R, MS).
representative_term(R, years(3)) :-
    board_representative(R, _MS).
must_ensure_representative_competence(MS, R) :-
    board_representative(R, MS).
must_designate_single_contact_point_for_board(MS, R) :-
    board_representative(R, MS).
must_empower_facilitation_of_consistency(MS, R) :-
    board_representative(R, MS).
must_adopt_rules_of_procedure(representatives) :-
    european_ai_board(_B).
must_establish_standing_subgroup(B, market_surveillance_authorities) :-
    european_ai_board(B).
must_establish_standing_subgroup(B, notifying_authorities) :-
    european_ai_board(B).
must_safeguard_impartiality(B) :-
    european_ai_board(B).
must_provide_secretariat(ai_office, B) :-
    european_ai_board(B).
provenance(european_ai_board/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
provenance(representative_term/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_representative_competence/2, 'celex:32024R1689/oj#art_65').
provenance(must_designate_single_contact_point_for_board/2, 'celex:32024R1689/oj#art_65').
provenance(must_empower_facilitation_of_consistency/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(must_establish_standing_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board_task/1, 'specific task assigned to the AI Board under Article 66', 'celex:32024R1689/oj#art_66').
declared(must_advise_and_assist_commission_and_member_states/1, 'Board obligation to advise and assist for consistent application', 'celex:32024R1689/oj#art_66').
declared(may_coordinate_national_competent_authorities/1, 'Board power to contribute to coordination among national competent authorities', 'celex:32024R1689/oj#art_66').
declared(may_support_joint_market_surveillance_activities/1, 'Board power to support joint activities of market surveillance authorities', 'celex:32024R1689/oj#art_66').
declared(may_share_technical_and_regulatory_expertise/1, 'Board power to collect and share expertise and best practices', 'celex:32024R1689/oj#art_66').
declared(may_provide_advice_on_implementation/1, 'Board power to provide advice on implementation of the Regulation', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_harmonisation_of_administrative_practices/1, 'Board power to contribute to harmonisation of administrative practices', 'celex:32024R1689/oj#art_66').
declared(may_issue_recommendations_and_opinions/1, 'Board power to issue recommendations and written opinions on relevant matters', 'celex:32024R1689/oj#art_66').
declared(may_promote_ai_literacy_and_awareness/1, 'Board power to support Commission in promoting AI literacy and public awareness', 'celex:32024R1689/oj#art_66').
declared(may_facilitate_common_criteria_and_understanding/1, 'Board power to facilitate development of common criteria and shared understanding', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_union_bodies/1, 'Board power to cooperate with other Union institutions and bodies', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_third_country_cooperation/1, 'Board power to contribute to cooperation with third countries and international organisations', 'celex:32024R1689/oj#art_66').
declared(may_assist_in_developing_organisational_and_technical_expertise/1, 'Board power to assist in developing expertise required for implementation', 'celex:32024R1689/oj#art_66').
declared(may_assist_ai_office_on_sandboxes/1, 'Board power to assist AI Office regarding AI regulatory sandboxes', 'celex:32024R1689/oj#art_66').
declared(may_advise_on_guidance_documents/1, 'Board power to contribute to and advise on guidance documents', 'celex:32024R1689/oj#art_66').
declared(may_advise_on_international_matters/1, 'Board power to advise Commission on international matters on AI', 'celex:32024R1689/oj#art_66').
declared(may_provide_opinions_on_qualified_alerts/1, 'Board power to provide opinions on qualified alerts regarding general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_receive_member_state_opinions/1, 'Board power to receive opinions from Member States on alerts and enforcement', 'celex:32024R1689/oj#art_66').
must_advise_and_assist_commission_and_member_states(board).
board_task(advise_and_assist) :-
    must_advise_and_assist_commission_and_member_states(board).
board_task(coordinate_national_competent_authorities) :-
    may_coordinate_national_competent_authorities(board).
board_task(support_joint_market_surveillance) :-
    may_support_joint_market_surveillance_activities(board).
board_task(share_expertise) :-
    may_share_technical_and_regulatory_expertise(board).
board_task(advice_on_implementation) :-
    may_provide_advice_on_implementation(board).
board_task(harmonise_administrative_practices) :-
    may_contribute_to_harmonisation_of_administrative_practices(board).
board_task(issue_recommendations_and_opinions) :-
    may_issue_recommendations_and_opinions(board).
board_task(promote_ai_literacy) :-
    may_promote_ai_literacy_and_awareness(board).
board_task(facilitate_common_criteria) :-
    may_facilitate_common_criteria_and_understanding(board).
board_task(cooperate_with_union_bodies) :-
    may_cooperate_with_union_bodies(board).
board_task(third_country_cooperation) :-
    may_contribute_to_third_country_cooperation(board).
board_task(develop_expertise) :-
    may_assist_in_developing_organisational_and_technical_expertise(board).
board_task(assist_on_sandboxes) :-
    may_assist_ai_office_on_sandboxes(board).
board_task(advise_on_guidance) :-
    may_advise_on_guidance_documents(board).
board_task(international_advice) :-
    may_advise_on_international_matters(board).
board_task(opinions_on_qualified_alerts) :-
    may_provide_opinions_on_qualified_alerts(board).
board_task(receive_member_state_opinions) :-
    may_receive_member_state_opinions(board).
may_coordinate_national_competent_authorities(board).
may_support_joint_market_surveillance_activities(board).
may_share_technical_and_regulatory_expertise(board).
may_provide_advice_on_implementation(board).
may_contribute_to_harmonisation_of_administrative_practices(board).
may_issue_recommendations_and_opinions(board).
may_promote_ai_literacy_and_awareness(board).
may_facilitate_common_criteria_and_understanding(board).
may_cooperate_with_union_bodies(board).
may_contribute_to_third_country_cooperation(board).
may_assist_in_developing_organisational_and_technical_expertise(board).
may_assist_ai_office_on_sandboxes(board).
may_advise_on_guidance_documents(board).
may_advise_on_international_matters(board).
may_provide_opinions_on_qualified_alerts(board).
may_receive_member_state_opinions(board).
provenance(must_advise_and_assist_commission_and_member_states/1, 'celex:32024R1689/oj#art_66').
provenance(board_task/1, 'celex:32024R1689/oj#art_66').
provenance(may_coordinate_national_competent_authorities/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_market_surveillance_activities/1, 'celex:32024R1689/oj#art_66').
provenance(may_share_technical_and_regulatory_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation_of_administrative_practices/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(may_promote_ai_literacy_and_awareness/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria_and_understanding/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_third_country_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_in_developing_organisational_and_technical_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office_on_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_member_state_opinions/1, 'celex:32024R1689/oj#art_66').
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
declared(advisory_forum/1, 'advisory forum established under Article 67', 'celex:32024R1689/oj#art_67').
declared(permanent_member_of_advisory_forum/1, 'entity that is a permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_appoint_advisory_forum_members/2, 'Commission obligation to appoint members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_prepare_annual_activity_report/2, 'advisory forum obligation to prepare annual report on activities', 'celex:32024R1689/oj#art_67').
declared(must_make_report_publicly_available/2, 'advisory forum obligation to make annual report publicly available', 'celex:32024R1689/oj#art_67').
advisory_forum(advisory_forum).
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).
must_appoint_advisory_forum_members(commission, advisory_forum) :-
    advisory_forum(advisory_forum).
must_prepare_annual_activity_report(advisory_forum, annual_report) :-
    advisory_forum(advisory_forum).
must_make_report_publicly_available(advisory_forum, annual_report) :-
    advisory_forum(advisory_forum),
    must_prepare_annual_activity_report(advisory_forum, annual_report).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_advisory_forum_members/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_activity_report/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_report_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts established under Article 68', 'celex:32024R1689/oj#art_68').
declared(member_of_scientific_panel/2, 'expert is a member of the scientific panel', 'celex:32024R1689/oj#art_68').
declared(must_select_expert_for_panel/2, 'Commission must select expert for scientific panel based on expertise and conditions', 'celex:32024R1689/oj#art_68').
declared(must_advise_ai_office/2, 'scientific panel must advise and support AI Office on specified tasks', 'celex:32024R1689/oj#art_68').
declared(must_support_market_surveillance_authority/2, 'scientific panel must support market surveillance authority at their request', 'celex:32024R1689/oj#art_68').
declared(must_perform_tasks_impartially/1, 'expert must perform tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(must_ensure_confidentiality/1, 'expert must ensure confidentiality of information obtained in tasks', 'celex:32024R1689/oj#art_68').
declared(must_not_seek_instructions/1, 'expert must neither seek nor take instructions when exercising tasks', 'celex:32024R1689/oj#art_68').
declared(must_draw_up_declaration_of_interests/1, 'expert must draw up declaration of interests made publicly available', 'celex:32024R1689/oj#art_68').
declared(must_manage_conflicts_of_interest/1, 'AI Office must establish systems to manage and prevent conflicts of interest', 'celex:32024R1689/oj#art_68').
scientific_panel(P) :-
    member_of_scientific_panel(_, P).
must_select_expert_for_panel(commission, E) :-
    member_of_scientific_panel(E, _P),
    has_ai_expertise(E),
    independent_from_providers(E),
    able_to_carry_out_activities_diligently(E).
has_ai_expertise(E) :-
    member_of_scientific_panel(E, _P).
independent_from_providers(E) :-
    member_of_scientific_panel(E, _P).
able_to_carry_out_activities_diligently(E) :-
    member_of_scientific_panel(E, _P).
must_advise_ai_office(P, alert_systemic_risk(M)) :-
    scientific_panel(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_advise_ai_office(P, develop_evaluation_tools(_T)) :-
    scientific_panel(P).
must_advise_ai_office(P, advise_classification_systemic_risk(M)) :-
    scientific_panel(P),
    general_purpose_ai_model(M).
must_advise_ai_office(P, advise_classification_model(M)) :-
    scientific_panel(P),
    general_purpose_ai_model(M).
must_advise_ai_office(P, develop_tools_and_templates(_T)) :-
    scientific_panel(P).
must_support_market_surveillance_authority(P, A) :-
    scientific_panel(P),
    market_surveillance_authority(A).
must_perform_tasks_impartially(E) :-
    member_of_scientific_panel(E, _P).
must_ensure_confidentiality(E) :-
    member_of_scientific_panel(E, _P).
must_not_seek_instructions(E) :-
    member_of_scientific_panel(E, _P).
must_draw_up_declaration_of_interests(E) :-
    member_of_scientific_panel(E, _P).
must_manage_conflicts_of_interest(ai_office) :-
    scientific_panel(_P).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(member_of_scientific_panel/2, 'celex:32024R1689/oj#art_68').
provenance(must_select_expert_for_panel/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_ai_office/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_market_surveillance_authority/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_impartially/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_manage_conflicts_of_interest/1, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_69').
declared(scientific_panel_expert/1, 'expert belonging to the scientific panel', 'celex:32024R1689/oj#art_69').
declared(enforcement_activity/1, 'activity carried out to enforce this Regulation', 'celex:32024R1689/oj#art_69').
declared(union_ai_testing_support/1, 'AI testing support provided at Union level pursuant to Article 84', 'celex:32024R1689/oj#art_69').
permitted_call_upon_scientific_panel_expert(MS, E) :-
    member_state(MS),
    scientific_panel_expert(E),
    enforcement_activity(A),
    supports_enforcement_activity(E, A).
must_facilitate_access_to_experts(commission, MS) :-
    member_state(MS).
must_ensure_efficient_organisation_of_support(commission, combination(union_ai_testing_support, scientific_panel_expert)).
supports_enforcement_activity(E, A) :-
    scientific_panel_expert(E),
    enforcement_activity(A).
provenance(permitted_call_upon_scientific_panel_expert/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access_to_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation_of_support/2, 'celex:32024R1689/oj#art_69').
provenance(supports_enforcement_activity/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_designate_national_competent_authorities/1, 'Member State obligation to designate notifying and market surveillance authorities', 'celex:32024R1689/oj#art_70').
declared(must_exercise_powers_independently_and_impartially/1, 'National competent authority obligation regarding independence and impartiality', 'celex:32024R1689/oj#art_70').
declared(must_communicate_authority_identity_to_commission/1, 'Member State obligation to communicate identity and tasks of authorities to Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_contact_information_publicly_available/1, 'Member State obligation to publish contact information for authorities by deadline', 'celex:32024R1689/oj#art_70').
declared(must_designate_single_point_of_contact/1, 'Member State obligation to designate a market surveillance authority as single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_notify_single_point_of_contact_to_commission/1, 'Member State obligation to notify Commission of single point of contact identity', 'celex:32024R1689/oj#art_70').
declared(must_publish_list_of_single_points_of_contact/1, 'Commission obligation to make list of single points of contact publicly available', 'celex:32024R1689/oj#art_70').
declared(must_provide_adequate_resources_to_authorities/1, 'Member State obligation to provide technical, financial and human resources', 'celex:32024R1689/oj#art_70').
declared(must_assess_competence_and_resource_requirements_annually/1, 'Member State obligation to assess and update resource requirements annually', 'celex:32024R1689/oj#art_70').
declared(must_ensure_cybersecurity_level/1, 'National competent authority obligation to ensure adequate cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_act_in_accordance_with_confidentiality_obligations/1, 'National competent authority obligation to respect confidentiality under Article 78', 'celex:32024R1689/oj#art_70').
declared(must_report_on_resources_to_commission/1, 'Member State obligation to report on status of resources biennially', 'celex:32024R1689/oj#art_70').
declared(must_transmit_resource_report_to_board/1, 'Commission obligation to transmit resource reports to the Board', 'celex:32024R1689/oj#art_70').
declared(must_facilitate_exchange_of_experience/1, 'Commission obligation to facilitate exchange of experience between authorities', 'celex:32024R1689/oj#art_70').
declared(may_provide_guidance_and_advice/1, 'National competent authority permission to provide guidance on implementation', 'celex:32024R1689/oj#art_70').
declared(must_consult_other_authorities_for_guidance/2, 'Obligation to consult other Union law authorities when providing guidance in their areas', 'celex:32024R1689/oj#art_70').
declared(edps_acts_as_competent_authority_for_union_bodies/1, 'EDPS acts as competent authority for supervision of Union institutions and bodies', 'celex:32024R1689/oj#art_70').
must_designate_national_competent_authorities(MS) :-
    member_state(MS).
must_exercise_powers_independently_and_impartially(A) :-
    national_competent_authority(A).
must_communicate_authority_identity_to_commission(MS) :-
    member_state(MS).
must_make_contact_information_publicly_available(MS) :-
    member_state(MS).
must_designate_single_point_of_contact(MS) :-
    member_state(MS).
must_notify_single_point_of_contact_to_commission(MS) :-
    member_state(MS).
must_publish_list_of_single_points_of_contact(commission).
must_provide_adequate_resources_to_authorities(MS) :-
    member_state(MS).
must_assess_competence_and_resource_requirements_annually(MS) :-
    member_state(MS).
must_ensure_cybersecurity_level(A) :-
    national_competent_authority(A).
must_act_in_accordance_with_confidentiality_obligations(A) :-
    national_competent_authority(A).
must_report_on_resources_to_commission(MS) :-
    member_state(MS).
must_transmit_resource_report_to_board(commission).
must_facilitate_exchange_of_experience(commission).
may_provide_guidance_and_advice(A) :-
    national_competent_authority(A).
must_consult_other_authorities_for_guidance(A, Area) :-
    national_competent_authority(A),
    area_covered_by_other_union_law(Area).
edps_acts_as_competent_authority_for_union_bodies(edps).
provenance(must_designate_national_competent_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_exercise_powers_independently_and_impartially/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authority_identity_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_publicly_available/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_notify_single_point_of_contact_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_publish_list_of_single_points_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_provide_adequate_resources_to_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_assess_competence_and_resource_requirements_annually/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity_level/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance_with_confidentiality_obligations/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_on_resources_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_transmit_resource_report_to_board/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange_of_experience/1, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance_and_advice/1, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities_for_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(edps_acts_as_competent_authority_for_union_bodies/1, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(eu_database/1, 'EU database for high-risk AI systems', 'celex:32024R1689/oj#art_71').
declared(must_set_up_and_maintain_eu_database/2, 'Commission obligation to set up and maintain EU database', 'celex:32024R1689/oj#art_71').
declared(must_enter_data_into_eu_database/2, 'obligation to enter specified data into the EU database', 'celex:32024R1689/oj#art_71').
declared(public_authority_deployer/1, 'deployer who is or acts on behalf of a public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(registered_high_risk_ai_system/1, 'high-risk AI system referred to in Article 6(2) registered in accordance with Articles 49 and 60', 'celex:32024R1689/oj#art_71').
declared(registered_non_high_risk_ai_system/1, 'AI system not considered high-risk pursuant to Article 6(3) registered in accordance with Article 6(4) and Article 49', 'celex:32024R1689/oj#art_71').
declared(annex_viii_section_i_data/1, 'data listed in Annex VIII Section I', 'celex:32024R1689/oj#art_71').
declared(annex_viii_section_ii_data/1, 'data listed in Annex VIII Section II', 'celex:32024R1689/oj#art_71').
declared(annex_viii_section_iii_data/1, 'data listed in Annex VIII Section III', 'celex:32024R1689/oj#art_71').
declared(publicly_accessible_eu_database_information/1, 'information in EU database registered under Article 49 that is publicly available', 'celex:32024R1689/oj#art_71').
declared(restricted_eu_database_information/1, 'information in EU database registered under Article 60 accessible only to authorities unless consent given', 'celex:32024R1689/oj#art_71').
declared(must_provide_technical_and_administrative_support/2, 'Commission obligation to provide adequate technical and administrative support', 'celex:32024R1689/oj#art_71').
declared(controller_of_eu_database/1, 'Commission is controller of the EU database', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain_eu_database(commission, eu_database).
must_enter_data_into_eu_database(Actor, Data) :-
    provider(Actor),
    annex_viii_section_i_data(Data).
must_enter_data_into_eu_database(Actor, Data) :-
    authorised_representative(Actor),
    annex_viii_section_i_data(Data).
must_enter_data_into_eu_database(Actor, Data) :-
    provider(Actor),
    annex_viii_section_ii_data(Data).
must_enter_data_into_eu_database(Actor, Data) :-
    authorised_representative(Actor),
    annex_viii_section_ii_data(Data).
must_enter_data_into_eu_database(Deployer, Data) :-
    public_authority_deployer(Deployer),
    annex_viii_section_iii_data(Data).
publicly_accessible_eu_database_information(I) :-
    registered_high_risk_ai_system(_S),
    \+ exempt_from_public_access(I).
restricted_eu_database_information(I) :-
    registered_non_high_risk_ai_system(_S),
    \+ public_consent_given(I).
controller_of_eu_database(commission).
must_provide_technical_and_administrative_support(commission, Recipient) :-
    provider(Recipient).
must_provide_technical_and_administrative_support(commission, Recipient) :-
    deployer(Recipient).
provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_71').
provenance(registered_high_risk_ai_system/1, 'celex:32024R1689/oj#art_71').
provenance(registered_non_high_risk_ai_system/1, 'celex:32024R1689/oj#art_71').
provenance(annex_viii_section_i_data/1, 'celex:32024R1689/oj#art_71').
provenance(annex_viii_section_ii_data/1, 'celex:32024R1689/oj#art_71').
provenance(annex_viii_section_iii_data/1, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_eu_database_information/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_eu_database_information/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_technical_and_administrative_support/2, 'celex:32024R1689/oj#art_71').
provenance(controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
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

% ==== celex:32024R1689/oj#art_72 ====
declared(must_establish_post_market_monitoring_system/2, 'provider must establish and document a post-market monitoring system proportionate to risks', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_system_covers_performance_data/1, 'system collects and analyses data on performance throughout lifetime', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan_required/1, 'post-market monitoring system must be based on a plan included in technical documentation', 'celex:32024R1689/oj#art_72').
declared(exempt_sensitive_operational_data/1, 'obligation does not cover sensitive operational data of law enforcement deployers', 'celex:32024R1689/oj#art_72').
declared(permitted_integration_of_monitoring_elements/1, 'provider may integrate AI act monitoring elements into existing union harmonisation systems', 'celex:32024R1689/oj#art_72').
must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    proportionate_to_nature_and_risks(S).
post_market_monitoring_system_covers_performance_data(S) :-
    high_risk_ai_system(S),
    \+ exempt_sensitive_operational_data(S).
exempt_sensitive_operational_data(S) :-
    high_risk_ai_system(S),
    deployer(D),
    law_enforcement_authority(D),
    involves_sensitive_operational_data(S, D).
post_market_monitoring_plan_required(S) :-
    high_risk_ai_system(S),
    part_of_technical_documentation(S).
permitted_integration_of_monitoring_elements(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    existing_monitoring_system_under_union_legislation(S),
    equivalent_level_of_protection(S).
permitted_integration_of_monitoring_elements(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    financial_institution(P),
    placing_on_market(P, S),
    subject_to_union_financial_services_governance(P).
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_covers_performance_data/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_required/1, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration_of_monitoring_elements/1, 'celex:32024R1689/oj#art_72').
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
declared(must_report_serious_incident_to_authority/2, 'provider must report serious incident to market surveillance authority', 'celex:32024R1689/oj#art_73').
declared(reporting_deadline_days/2, 'number of days within which report must be made after awareness', 'celex:32024R1689/oj#art_73').
declared(must_perform_investigation_without_delay/2, 'provider must perform investigation without delay after reporting', 'celex:32024R1689/oj#art_73').
declared(must_cooperate_during_investigation/2, 'provider must cooperate with authorities during investigation', 'celex:32024R1689/oj#art_73').
declared(must_not_alter_system_before_informing_authority/2, 'provider must not alter system in way affecting evaluation before informing authority', 'celex:32024R1689/oj#art_73').
declared(must_inform_public_authorities_of_incident/2, 'market surveillance authority must inform public authorities of serious incident', 'celex:32024R1689/oj#art_73').
declared(must_take_measures_within_days/2, 'market surveillance authority must take measures within specified days', 'celex:32024R1689/oj#art_73').
declared(limited_reporting_obligation_applies/1, 'reporting obligation limited to specific serious incidents', 'celex:32024R1689/oj#art_73').
declared(must_notify_commission_of_serious_incident/2, 'national competent authority must notify commission of serious incident', 'celex:32024R1689/oj#art_73').
must_report_serious_incident_to_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(S).
reporting_deadline_days(S, 15) :-
    serious_incident(S),
    \+ widespread_infringement(S),
    \+ death_involved(S),
    \+ serious_incident_type_b(S).
reporting_deadline_days(S, 2) :-
    serious_incident(S),
    (widespread_infringement(S) ; serious_incident_type_b(S)).
reporting_deadline_days(S, 10) :-
    serious_incident(S),
    death_involved(S),
    \+ widespread_infringement(S),
    \+ serious_incident_type_b(S).
must_perform_investigation_without_delay(P, S) :-
    provider(P),
    serious_incident(S),
    must_report_serious_incident_to_authority(P, S).
must_cooperate_during_investigation(P, S) :-
    provider(P),
    serious_incident(S),
    must_perform_investigation_without_delay(P, S).
must_not_alter_system_before_informing_authority(P, S) :-
    provider(P),
    serious_incident(S),
    must_perform_investigation_without_delay(P, S).
must_inform_public_authorities_of_incident(A, S) :-
    relevant_market_surveillance_authority(A),
    serious_incident(S),
    serious_incident_type_c(S).
must_take_measures_within_days(A, 7) :-
    relevant_market_surveillance_authority(A),
    serious_incident(_S),
    must_report_serious_incident_to_authority(_P, _S).
limited_reporting_obligation_applies(S) :-
    high_risk_ai_system_annex_iii(S),
    placing_on_market(S),
    equivalent_reporting_obligation_applies(S).
limited_reporting_obligation_applies(S) :-
    high_risk_ai_system(S),
    ai_safety_component(S),
    covered_by_medical_device_regulation(S).
must_notify_commission_of_serious_incident(A, S) :-
    national_competent_authority(A),
    serious_incident(S).
provenance(must_report_serious_incident_to_authority/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline_days/2, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigation_without_delay/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_system_before_informing_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_public_authorities_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures_within_days/2, 'celex:32024R1689/oj#art_73').
provenance(limited_reporting_obligation_applies/1, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(must_report_competition_information/2, 'market surveillance authority reports competition-relevant information to Commission and national competition authorities', 'celex:32024R1689/oj#art_74').
declared(must_report_prohibited_practices/2, 'market surveillance authority reports use of prohibited practices and measures taken to Commission', 'celex:32024R1689/oj#art_74').
declared(sectoral_market_surveillance_authority_applies/1, 'market surveillance authority is the sectoral authority designated under Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(financial_supervision_authority_applies/1, 'market surveillance authority is the national financial supervision authority for financial institutions', 'celex:32024R1689/oj#art_74').
declared(data_protection_authority_applies/1, 'market surveillance authority is the competent data protection supervisory authority', 'celex:32024R1689/oj#art_74').
declared(edps_is_market_surveillance_authority/1, 'European Data Protection Supervisor acts as market surveillance authority for Union bodies', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/2, 'Member State facilitates coordination between market surveillance authorities and other relevant national authorities', 'celex:32024R1689/oj#art_74').
declared(must_grant_access_to_data_and_documentation/2, 'provider grants market surveillance authority full access to documentation and training validation testing data sets', 'celex:32024R1689/oj#art_74').
declared(must_grant_access_to_source_code/2, 'provider grants market surveillance authority access to source code upon reasoned request when conditions fulfilled', 'celex:32024R1689/oj#art_74').
declared(source_code_access_conditions_fulfilled/1, 'conditions for granting access to source code are fulfilled', 'celex:32024R1689/oj#art_74').
must_report_competition_information(Authority, Information) :-
    market_surveillance_authority(Authority),
    identified_during_market_surveillance(Information),
    potential_interest_for_competition_law(Information).
must_report_prohibited_practices(Authority, Report) :-
    market_surveillance_authority(Authority),
    annual_report_on_prohibited_practices(Report).
sectoral_market_surveillance_authority_applies(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
financial_supervision_authority_applies(S) :-
    high_risk_ai_system(S),
    financial_institution_context(S).
data_protection_authority_applies(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    law_enforcement_or_border_or_justice_purpose(S).
data_protection_authority_applies(S) :-
    high_risk_ai_system_annex_iii(S),
    annex_iii_point_6_or_7_or_8(S).
edps_is_market_surveillance_authority(Body) :-
    union_body(Body),
    \+ court_of_justice_acting_judicially(Body).
must_facilitate_coordination(MemberState, Authorities) :-
    member_state(MemberState),
    relevant_authorities_for_high_risk_systems(Authorities).
must_grant_access_to_data_and_documentation(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    provides(Provider, S).
must_grant_access_to_source_code(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    provides(Provider, S),
    reasoned_request(Authority, source_code(S)),
    source_code_access_conditions_fulfilled(S).
source_code_access_conditions_fulfilled(S) :-
    high_risk_ai_system(S),
    necessary_for_conformity_assessment(source_code(S)),
    exhausted_other_verification_means(S).
provenance(must_report_competition_information/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_market_surveillance_authority_applies/1, 'celex:32024R1689/oj#art_74').
provenance(financial_supervision_authority_applies/1, 'celex:32024R1689/oj#art_74').
provenance(data_protection_authority_applies/1, 'celex:32024R1689/oj#art_74').
provenance(edps_is_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_data_and_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_source_code/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_conditions_fulfilled/1, 'celex:32024R1689/oj#art_74').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_3/unp_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1').
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
declared(ai_office_has_powers_to_monitor/1, 'AI Office has powers to monitor and supervise compliance of an AI system', 'celex:32024R1689/oj#art_75').
declared(must_cooperate_with_ai_office_on_evaluation/2, 'market surveillance authority must cooperate with AI Office to carry out compliance evaluations', 'celex:32024R1689/oj#art_75').
declared(must_inform_board_and_authorities_of_non_compliance/2, 'market surveillance authority must inform Board and other authorities of non-compliance consideration', 'celex:32024R1689/oj#art_75').
declared(may_request_information_enforcement/2, 'market surveillance authority may submit reasoned request to AI Office to enforce access to information', 'celex:32024R1689/oj#art_75').
declared(must_supply_information_within_deadline/3, 'AI Office must supply relevant information to applicant authority within specified deadline', 'celex:32024R1689/oj#art_75').
ai_office_has_powers_to_monitor(S) :-
    general_purpose_ai_system(S),
    provider(P),
    provides_general_purpose_ai_model(P, S).
must_cooperate_with_ai_office_on_evaluation(A, S) :-
    relevant_market_surveillance_authority(A),
    general_purpose_ai_system(S),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).
must_inform_board_and_authorities_of_non_compliance(A, S) :-
    relevant_market_surveillance_authority(A),
    general_purpose_ai_system(S),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).
may_request_information_enforcement(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    unable_to_access_model_information(A, S).
must_supply_information_within_deadline(ai_office, A, days(30)) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    may_request_information_enforcement(A, S).
provenance(ai_office_has_powers_to_monitor/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office_on_evaluation/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities_of_non_compliance/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_enforcement/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within_deadline/3, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_ensure_testing_compliance/2, 'market surveillance authority ensures testing in real world conditions is in accordance with the regulation', 'celex:32024R1689/oj#art_76').
declared(must_verify_sandbox_testing_compliance/2, 'market surveillance authority verifies compliance of sandbox testing with Article 60', 'celex:32024R1689/oj#art_76').
declared(permitted_sandbox_testing_derogation/2, 'market surveillance authority allows sandbox testing derogation from Article 60(4)(f) and (g)', 'celex:32024R1689/oj#art_76').
declared(grounds_for_testing_intervention/2, 'market surveillance authority has grounds to consider testing conditions not met', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/2, 'market surveillance authority may suspend or terminate testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(may_require_testing_modification/2, 'market surveillance authority may require modification of testing aspects', 'celex:32024R1689/oj#art_76').
declared(must_indicate_decision_grounds_and_challenge/2, 'decision or objection indicates grounds and challenge procedure', 'celex:32024R1689/oj#art_76').
declared(must_communicate_testing_decision_to_other_states/2, 'market surveillance authority communicates decision grounds to other Member States where system tested', 'celex:32024R1689/oj#art_76').
must_ensure_testing_compliance(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S).
must_verify_sandbox_testing_compliance(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S),
    requirements_of_chapter_3_section_2(S).
permitted_sandbox_testing_derogation(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S).
grounds_for_testing_intervention(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    serious_incident(S).
grounds_for_testing_intervention(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    \+ requirements_of_chapter_3_section_2(S).
may_suspend_or_terminate_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_testing_intervention(A, S).
may_require_testing_modification(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_testing_intervention(A, S).
must_indicate_decision_grounds_and_challenge(A, D) :-
    market_surveillance_authority(A),
    testing_intervention_decision(D),
    grounds_for_testing_intervention(A, _S).
must_communicate_testing_decision_to_other_states(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_testing_intervention(A, S),
    tested_in_multiple_member_states(S).
declared(testing_intervention_decision/1, 'decision to suspend, terminate or modify testing under Article 76(3)', 'celex:32024R1689/oj#art_76').
declared(tested_in_multiple_member_states/1, 'AI system tested in more than one Member State according to testing plan', 'celex:32024R1689/oj#art_76').
provenance(must_ensure_testing_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_sandbox_testing_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_sandbox_testing_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_testing_intervention/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_testing_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_decision_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_testing_decision_to_other_states/2, 'celex:32024R1689/oj#art_76').
provenance(testing_intervention_decision/1, 'celex:32024R1689/oj#art_76').
provenance(tested_in_multiple_member_states/1, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(fundamental_rights_authority/1, 'national public authority or body supervising fundamental rights obligations', 'celex:32024R1689/oj#art_77').
declared(must_inform_msa_of_request/2, 'fundamental rights authority must inform market surveillance authority of documentation request', 'celex:32024R1689/oj#art_77').
declared(must_identify_fundamental_rights_authorities/1, 'Member State must identify and list fundamental rights authorities', 'celex:32024R1689/oj#art_77').
declared(must_notify_fundamental_rights_authority_list/2, 'Member State must notify list of fundamental rights authorities to Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(must_keep_fundamental_rights_authority_list_updated/1, 'Member State must keep list of fundamental rights authorities up to date', 'celex:32024R1689/oj#art_77').
declared(may_request_testing_via_msa/2, 'fundamental rights authority may request market surveillance authority to organise testing', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority must organise testing of high-risk AI system upon reasoned request', 'celex:32024R1689/oj#art_77').
fundamental_rights_authority(A) :-
    operator(_),
    high_risk_ai_system_annex_iii(_).
must_inform_msa_of_request(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA).
must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).
must_notify_fundamental_rights_authority_list(MS, Recipient) :-
    member_state(MS),
    (Recipient = commission ; member_state(Recipient)).
must_keep_fundamental_rights_authority_list_updated(MS) :-
    member_state(MS).
may_request_testing_via_msa(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    documentation_insufficient_for_infringement_assessment(A).
must_organise_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    fundamental_rights_authority(A),
    reasoned_request(A, testing(S)).
provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(must_inform_msa_of_request/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_fundamental_rights_authority_list/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_fundamental_rights_authority_list_updated/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing_via_msa/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(involved_in_application_of_regulation/1, 'natural or legal person involved in the application of this Regulation', 'celex:32024R1689/oj#art_78').
declared(must_respect_confidentiality/2, 'obligation to respect confidentiality of information obtained', 'celex:32024R1689/oj#art_78').
declared(must_request_only_necessary_data/2, 'authority must request only data strictly necessary for risk assessment', 'celex:32024R1689/oj#art_78').
declared(must_implement_cybersecurity_measures/2, 'authority must put in place adequate cybersecurity measures', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/2, 'authority must delete collected data when no longer needed', 'celex:32024R1689/oj#art_78').
declared(confidential_exchange_between_authorities/1, 'information exchanged on a confidential basis between authorities', 'celex:32024R1689/oj#art_78').
declared(disclosure_would_jeopardise_security/1, 'disclosure would jeopardise public and national security interests', 'celex:32024R1689/oj#art_78').
declared(used_by_sensitive_authority/1, 'high-risk AI system used by law enforcement, border control, immigration or asylum authority', 'celex:32024R1689/oj#art_78').
declared(provider_is_sensitive_authority/2, 'provider of high-risk AI system is a law enforcement, immigration or asylum authority', 'celex:32024R1689/oj#art_78').
declared(must_keep_documentation_on_premises/2, 'technical documentation must remain within premises of sensitive authority provider', 'celex:32024R1689/oj#art_78').
declared(must_allow_access_to_documentation/3, 'sensitive authority must allow market surveillance authority access to documentation', 'celex:32024R1689/oj#art_78').
declared(holds_appropriate_security_clearance/2, 'staff member holds appropriate level of security clearance', 'celex:32024R1689/oj#art_78').
declared(permitted_third_country_exchange/1, 'exchange of confidential information with third country regulatory authority', 'celex:32024R1689/oj#art_78').
involved_in_application_of_regulation(commission).
involved_in_application_of_regulation(A) :- market_surveillance_authority(A).
involved_in_application_of_regulation(B) :- notified_body(B).
must_respect_confidentiality(Entity, Information) :-
    involved_in_application_of_regulation(Entity),
    obtained_in_carrying_out_tasks(Entity, Information).
must_request_only_necessary_data(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    \+ strictly_necessary_for_risk_assessment(Data).
must_implement_cybersecurity_measures(Authority, Information) :-
    involved_in_application_of_regulation(Authority),
    obtained_in_carrying_out_tasks(Authority, Information).
must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    \+ needed_for_original_purpose(Data).
confidential_exchange_between_authorities(Information) :-
    exchanged_between_competent_authorities(Information).
used_by_sensitive_authority(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    deployer(D),
    sensitive_authority(D).
used_by_sensitive_authority(S) :-
    high_risk_ai_system_annex_iii(S),
    deployer(D),
    sensitive_authority(D).
provider_is_sensitive_authority(P, S) :-
    provider(P),
    sensitive_authority(P),
    high_risk_ai_system_annex_3_point_1(S).
provider_is_sensitive_authority(P, S) :-
    provider(P),
    sensitive_authority(P),
    high_risk_ai_system_annex_iii(S).
must_keep_documentation_on_premises(Authority, Documentation) :-
    provider_is_sensitive_authority(Authority, _S),
    technical_documentation(Documentation).
must_allow_access_to_documentation(Provider, SurveillanceAuthority, Documentation) :-
    provider_is_sensitive_authority(Provider, _S),
    market_surveillance_authority(SurveillanceAuthority),
    technical_documentation(Documentation).
permitted_third_country_exchange(Information) :-
    confidential_information(Information),
    third_country_regulatory_authority(_Recipient),
    confidentiality_arrangement_exists(_Recipient).
provenance(involved_in_application_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(confidential_exchange_between_authorities/1, 'celex:32024R1689/oj#art_78').
provenance(disclosure_would_jeopardise_security/1, 'celex:32024R1689/oj#art_78').
provenance(used_by_sensitive_authority/1, 'celex:32024R1689/oj#art_78').
provenance(provider_is_sensitive_authority/2, 'celex:32024R1689/oj#art_78').
provenance(must_keep_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_allow_access_to_documentation/3, 'celex:32024R1689/oj#art_78').
provenance(holds_appropriate_security_clearance/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_third_country_exchange/1, 'celex:32024R1689/oj#art_78').
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
declared(presents_risk_to_health_or_safety_or_fundamental_rights/1, 'AI system presenting a risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_79').
declared(must_evaluate_ai_system_compliance/2, 'market surveillance authority must evaluate AI system compliance when sufficient reason exists', 'celex:32024R1689/oj#art_79').
declared(must_inform_and_cooperate_on_fundamental_rights_risk/2, 'market surveillance authority must inform and cooperate with relevant national public authorities on fundamental rights risks', 'celex:32024R1689/oj#art_79').
declared(must_require_corrective_action_for_noncompliance/2, 'market surveillance authority must require operator to take corrective action for non-compliant AI system', 'celex:32024R1689/oj#art_79').
declared(must_inform_notified_body_of_measure/2, 'market surveillance authority must inform relevant notified body of measures taken', 'celex:32024R1689/oj#art_79').
declared(must_inform_commission_and_member_states_of_cross_border_noncompliance/2, 'market surveillance authority must inform Commission and Member States of cross-border non-compliance', 'celex:32024R1689/oj#art_79').
declared(must_take_corrective_action_for_all_marketed_systems/2, 'operator must ensure corrective action for all AI systems made available on Union market', 'celex:32024R1689/oj#art_79').
declared(must_take_provisional_measures_on_inaction/2, 'market surveillance authority must take provisional measures if operator fails to act', 'celex:32024R1689/oj#art_79').
declared(must_notify_provisional_measures/2, 'market surveillance authority must notify Commission and Member States of provisional measures', 'celex:32024R1689/oj#art_79').
declared(noncompliance_reason/2, 'reason for non-compliance identified by market surveillance authority', 'celex:32024R1689/oj#art_79').
declared(must_inform_of_measures_and_objections/2, 'other market surveillance authorities must inform of measures and objections', 'celex:32024R1689/oj#art_79').
declared(provisional_measure_deemed_justified/2, 'provisional measure deemed justified after period without objection', 'celex:32024R1689/oj#art_79').
declared(must_ensure_restrictive_measures/2, 'market surveillance authority must ensure restrictive measures are taken', 'celex:32024R1689/oj#art_79').
presents_risk_to_health_or_safety_or_fundamental_rights(S) :-
    ai_system(S),
    presents_risk(S).
must_evaluate_ai_system_compliance(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).
must_inform_and_cooperate_on_fundamental_rights_risk(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    presents_risk_to_health_or_safety_or_fundamental_rights(S).
must_require_corrective_action_for_noncompliance(A, O) :-
    market_surveillance_authority(A),
    operator(O),
    ai_system(S),
    must_evaluate_ai_system_compliance(A, S),
    \+ compliant_with_requirements(S).
must_inform_notified_body_of_measure(A, B) :-
    market_surveillance_authority(A),
    notified_body(B),
    must_require_corrective_action_for_noncompliance(A, _O).
must_inform_commission_and_member_states_of_cross_border_noncompliance(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_require_corrective_action_for_noncompliance(A, _O),
    noncompliance_not_restricted_to_national_territory(A, S).
must_take_corrective_action_for_all_marketed_systems(O, S) :-
    operator(O),
    ai_system(S),
    making_available_on_market(S),
    must_require_corrective_action_for_noncompliance(_A, O).
must_take_provisional_measures_on_inaction(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_require_corrective_action_for_noncompliance(A, O),
    \+ adequate_corrective_action_taken(O, S).
must_notify_provisional_measures(A, M) :-
    market_surveillance_authority(A),
    must_take_provisional_measures_on_inaction(A, _S),
    provisional_measure(M).
noncompliance_reason(S, prohibited_practice) :-
    ai_system(S),
    prohibited_practice_infringement(S).
noncompliance_reason(S, high_risk_requirement_failure) :-
    ai_system(S),
    high_risk_ai_system(S),
    \+ requirements_of_chapter_3_section_2(S).
noncompliance_reason(S, harmonised_standard_shortcoming) :-
    ai_system(S),
    harmonised_standard(H),
    presumption_of_conformity_shortcoming(H).
noncompliance_reason(S, transparency_obligation_failure) :-
    ai_system(S),
    \+ compliant_with_transparency_obligations(S).
must_inform_of_measures_and_objections(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_notify_provisional_measures(_OtherA, _M),
    \+ initiating_authority(A, S).
provisional_measure_deemed_justified(M, months(3)) :-
    must_notify_provisional_measures(_A, M),
    \+ objection_raised_within_period(M, months(3)).
provisional_measure_deemed_justified(M, days(30)) :-
    must_notify_provisional_measures(_A, M),
    noncompliance_reason(_S, prohibited_practice),
    \+ objection_raised_within_period(M, days(30)).
must_ensure_restrictive_measures(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_take_provisional_measures_on_inaction(A, S).
compliant_with_requirements(_S) :- fail.
noncompliance_not_restricted_to_national_territory(_A, _S) :- fail.
adequate_corrective_action_taken(_O, _S) :- fail.
provisional_measure(_M) :- fail.
presumption_of_conformity_shortcoming(_H) :- fail.
compliant_with_transparency_obligations(_S) :- fail.
initiating_authority(_A, _S) :- fail.
objection_raised_within_period(_M, _Period) :- fail.
provenance(presents_risk_to_health_or_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_ai_system_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate_on_fundamental_rights_risk/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action_for_noncompliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body_of_measure/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states_of_cross_border_noncompliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_action_for_all_marketed_systems/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures_on_inaction/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(noncompliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_measures_and_objections/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').

% ==== celex:32024R1689/oj#art_80 ====
declared(classified_as_non_high_risk_by_provider/1, 'AI system classified by the provider as non-high-risk pursuant to Article 6(3)', 'celex:32024R1689/oj#art_80').
declared(must_evaluate_classification/2, 'market surveillance authority must evaluate AI system classification', 'celex:32024R1689/oj#art_80').
declared(must_require_compliance_and_corrective_action/2, 'market surveillance authority must require provider to take compliance and corrective action', 'celex:32024R1689/oj#art_80').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and Member States of evaluation results', 'celex:32024R1689/oj#art_80').
declared(must_ensure_compliance/2, 'provider must ensure AI system complies with requirements', 'celex:32024R1689/oj#art_80').
declared(must_take_corrective_action_for_all_systems/2, 'provider must take corrective action for all AI systems made available on Union market', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent_requirements/1, 'AI system misclassified by provider as non-high-risk to circumvent Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/1, 'use of AI system is not restricted to national territory of market surveillance authority', 'celex:32024R1689/oj#art_80').
provenance(classified_as_non_high_risk_by_provider/1, 'celex:32024R1689/oj#art_80').
provenance(must_evaluate_classification/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance_and_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action_for_all_systems/2, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/1, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_6').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_7').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_9').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
must_evaluate_classification(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    sufficient_reason_to_consider_non_compliant(A, S).
must_require_compliance_and_corrective_action(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    high_risk_ai_system(S),
    must_evaluate_classification(A, S).
must_inform_commission_and_member_states(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_require_compliance_and_corrective_action(A, S),
    use_not_restricted_to_national_territory(S).
must_ensure_compliance(P, S) :-
    provider(P),
    ai_system(S),
    must_require_compliance_and_corrective_action(_A, S).
must_take_corrective_action_for_all_systems(P, S) :-
    provider(P),
    ai_system(S),
    making_available_on_market(S),
    must_require_compliance_and_corrective_action(_A, S).
misclassified_to_circumvent_requirements(S) :-
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).

% ==== celex:32024R1689/oj#art_81 ====
declared(union_safeguard_procedure_applies/1, 'Union safeguard procedure is triggered for a national measure', 'celex:32024R1689/oj#art_81').
declared(must_enter_into_consultation/2, 'Commission must enter into consultation regarding a national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide_on_national_measure/2, 'Commission must decide whether a national measure is justified', 'celex:32024R1689/oj#art_81').
declared(must_notify_decision_to_authority/2, 'Commission must notify its decision to the market surveillance authority concerned', 'celex:32024R1689/oj#art_81').
declared(must_inform_other_authorities/2, 'Commission must inform all other market surveillance authorities of its decision', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member States must take appropriate restrictive measures in respect of an AI system', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_unjustified_measure/2, 'Member State concerned must withdraw an unjustified national measure', 'celex:32024R1689/oj#art_81').
declared(must_apply_standards_procedure/2, 'Commission must apply procedure for shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
declared(objection_raised_by_authority/2, 'market surveillance authority raises objection to a measure taken by another authority', 'celex:32024R1689/oj#art_81').
declared(commission_considers_measure_contrary_to_law/1, 'Commission considers the national measure to be contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(non_compliance_with_art_5_prohibition/1, 'non-compliance with prohibition of AI practices referred to in Article 5', 'celex:32024R1689/oj#art_81').
declared(national_measure_justified/1, 'national measure is considered justified by the Commission', 'celex:32024R1689/oj#art_81').
declared(non_compliance_attributed_to_standards_shortcoming/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
union_safeguard_procedure_applies(M) :-
    objection_raised_by_authority(_, M).
union_safeguard_procedure_applies(M) :-
    commission_considers_measure_contrary_to_law(M).
must_enter_into_consultation(commission, M) :-
    union_safeguard_procedure_applies(M),
    relevant_market_surveillance_authority(A),
    operator(O),
    must_evaluate_national_measure(commission, M).
must_decide_on_national_measure(commission, M) :-
    union_safeguard_procedure_applies(M),
    must_evaluate_national_measure(commission, M).
must_notify_decision_to_authority(commission, A) :-
    must_decide_on_national_measure(commission, _M),
    relevant_market_surveillance_authority(A).
must_inform_other_authorities(commission, M) :-
    must_decide_on_national_measure(commission, M),
    market_surveillance_authority(A),
    \+ relevant_market_surveillance_authority(A).
must_take_restrictive_measures(member_state, S) :-
    national_measure_justified(M),
    ai_system(S),
    subject_of_measure(M, S).
must_withdraw_unjustified_measure(member_state, M) :-
    must_decide_on_national_measure(commission, M),
    \+ national_measure_justified(M).
must_apply_standards_procedure(commission, M) :-
    national_measure_justified(M),
    non_compliance_attributed_to_standards_shortcoming(M).
provenance(union_safeguard_procedure_applies/1, 'celex:32024R1689/oj#art_81').
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_on_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision_to_authority/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_other_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_unjustified_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_standards_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(objection_raised_by_authority/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_contrary_to_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_art_5_prohibition/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_attributed_to_standards_shortcoming/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(must_require_risk_mitigation_measures/2, 'market surveillance authority requires operator to take measures for compliant but risky system', 'celex:32024R1689/oj#art_82').
declared(must_take_corrective_action_for_compliant_but_risky_system/2, 'operator ensures corrective action for compliant but risky system within prescribed timeline', 'celex:32024R1689/oj#art_82').
declared(must_inform_of_compliant_but_risky_finding/2, 'member state informs commission and other member states of finding under article 82(1)', 'celex:32024R1689/oj#art_82').
declared(must_evaluate_national_measure_for_compliant_but_risky_system/2, 'commission evaluates national measures taken for compliant but risky system', 'celex:32024R1689/oj#art_82').
declared(must_communicate_decision_on_compliant_but_risky_system/2, 'commission communicates decision on national measure to member states and operators', 'celex:32024R1689/oj#art_82').
compliant_but_risky_ai_system(S) :-
    high_risk_ai_system(S),
    presents_risk(S).
must_require_risk_mitigation_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    compliant_but_risky_ai_system(S),
    evaluation_performed_under_art_79(Authority, S),
    consulted_relevant_public_authority(Authority, S).
must_take_corrective_action_for_compliant_but_risky_system(Operator, S) :-
    operator(Operator),
    compliant_but_risky_ai_system(S),
    made_available_on_union_market(Operator, S),
    timeline_prescribed_by_authority(S).
must_inform_of_compliant_but_risky_finding(MemberState, Finding) :-
    finding_under_art_82_par_1(Finding),
    member_state(MemberState).
must_evaluate_national_measure_for_compliant_but_risky_system(Commission, Measure) :-
    ai_office(Commission),
    national_measure_for_compliant_but_risky_system(Measure).
must_communicate_decision_on_compliant_but_risky_system(Commission, Decision) :-
    ai_office(Commission),
    decision_on_national_measure(Decision).
provenance(must_require_risk_mitigation_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action_for_compliant_but_risky_system/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_of_compliant_but_risky_finding/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measure_for_compliant_but_risky_system/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision_on_compliant_but_risky_system/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(formal_non_compliance_finding/2, 'market surveillance authority finding of formal non-compliance under Article 83(1)', 'celex:32024R1689/oj#art_83').
declared(ce_marking_affixed_in_violation_of_art_48/1, 'CE marking affixed in violation of Article 48', 'celex:32024R1689/oj#art_83').
declared(ce_marking_not_affixed/1, 'CE marking has not been affixed', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_of_conformity_not_drawn_up/1, 'EU declaration of conformity referred to in Article 47 has not been drawn up', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'EU declaration of conformity referred to in Article 47 has not been drawn up correctly', 'celex:32024R1689/oj#art_83').
declared(registration_in_eu_database_not_carried_out/1, 'registration in the EU database referred to in Article 71 has not been carried out', 'celex:32024R1689/oj#art_83').
declared(no_authorised_representative_appointed/1, 'no authorised representative has been appointed where applicable', 'celex:32024R1689/oj#art_83').
declared(technical_documentation_not_available/1, 'technical documentation is not available', 'celex:32024R1689/oj#art_83').
declared(must_end_formal_non_compliance/2, 'market surveillance authority requires provider to end formal non-compliance within prescribed period', 'celex:32024R1689/oj#art_83').
declared(must_restrict_or_prohibit_or_recall/2, 'market surveillance authority takes measures to restrict, prohibit, recall or withdraw system due to persistent non-compliance', 'celex:32024R1689/oj#art_83').
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_affixed_in_violation_of_art_48(S).
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    ce_marking_not_affixed(S).
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up(S).
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    eu_declaration_of_conformity_not_drawn_up_correctly(S).
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    registration_in_eu_database_not_carried_out(S).
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    no_authorised_representative_appointed(S).
formal_non_compliance_finding(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    technical_documentation_not_available(S).
must_end_formal_non_compliance(A, S) :-
    market_surveillance_authority(A),
    provider(P),
    formal_non_compliance_finding(A, S).
must_restrict_or_prohibit_or_recall(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    formal_non_compliance_finding(A, S),
    \+ compliance_restored(S).
compliance_restored(_S).
provenance(formal_non_compliance_finding/2, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation_of_art_48/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_in_eu_database_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(no_authorised_representative_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_formal_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit_or_recall/2, 'celex:32024R1689/oj#art_83').
provenance(compliance_restored/1, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'structure designated by the Commission to perform testing support tasks in the area of AI', 'celex:32024R1689/oj#art_84').
declared(must_designate_union_ai_testing_support_structure/2, 'Commission obligation to designate one or more Union AI testing support structures', 'celex:32024R1689/oj#art_84').
declared(must_provide_independent_advice/2, 'Union AI testing support structure obligation to provide independent technical or scientific advice', 'celex:32024R1689/oj#art_84').
must_designate_union_ai_testing_support_structure(commission, S) :-
    union_ai_testing_support_structure(S).
must_provide_independent_advice(S, Requester) :-
    union_ai_testing_support_structure(S),
    independent_advice_requester(Requester).
independent_advice_requester(board).
independent_advice_requester(commission).
independent_advice_requester(A) :-
    market_surveillance_authority(A).
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate_union_ai_testing_support_structure/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_independent_advice/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').

% ==== celex:32024R1689/oj#art_85 ====
declared(has_grounds_to_consider_infringement/1, 'person has grounds to consider that there has been an infringement of the provisions of this Regulation', 'celex:32024R1689/oj#art_85').
declared(may_submit_complaint/2, 'person may submit complaint to relevant market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(must_take_complaint_into_account/2, 'market surveillance authority must take complaint into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(must_handle_complaint_according_to_procedures/2, 'market surveillance authority must handle complaint in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
has_grounds_to_consider_infringement(Person) :-
    operator(Person).
has_grounds_to_consider_infringement(Person) :-
    union_body(Person).
may_submit_complaint(Person, Authority) :-
    has_grounds_to_consider_infringement(Person),
    relevant_market_surveillance_authority(Authority).
must_take_complaint_into_account(Authority, Complaint) :-
    relevant_market_surveillance_authority(Authority),
    may_submit_complaint(_Person, Authority),
    complaint(Complaint).
must_handle_complaint_according_to_procedures(Authority, Complaint) :-
    relevant_market_surveillance_authority(Authority),
    may_submit_complaint(_Person, Authority),
    complaint(Complaint).
provenance(has_grounds_to_consider_infringement/1, 'celex:32024R1689/oj#art_85').
provenance(may_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_complaint_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint_according_to_procedures/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(affected_person/1, 'natural person subject to a decision with adverse impact', 'celex:32024R1689/oj#art_86').
declared(decision_based_on_ai_output/2, 'decision taken by deployer on basis of AI system output', 'celex:32024R1689/oj#art_86').
declared(produces_legal_effects/1, 'decision produces legal effects', 'celex:32024R1689/oj#art_86').
declared(significantly_affects_person/1, 'decision similarly significantly affects the person', 'celex:32024R1689/oj#art_86').
declared(adverse_impact_considered/2, 'person considers decision has adverse impact on health safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(high_risk_ai_system_annex_iii_point_2/1, 'high-risk AI system listed under Annex III point 2', 'celex:32024R1689/oj#art_86').
declared(exception_from_explanation_obligation_applies/1, 'exception or restriction to explanation obligation follows from Union or national law', 'celex:32024R1689/oj#art_86').
declared(right_to_explanation_provided_under_union_law/1, 'right to explanation is otherwise provided for under Union law', 'celex:32024R1689/oj#art_86').
declared(must_provide_explanation/2, 'deployer must provide clear and meaningful explanations to affected person', 'celex:32024R1689/oj#art_86').
affected_person(P) :-
    decision_based_on_ai_output(D, _S),
    (produces_legal_effects(D) ; significantly_affects_person(D)),
    adverse_impact_considered(P, D).
must_provide_explanation(Deployer, Person) :-
    affected_person(Person),
    decision_based_on_ai_output(Decision, System),
    high_risk_ai_system_annex_iii(System),
    \+ high_risk_ai_system_annex_iii_point_2(System),
    deployer(Deployer),
    \+ exception_from_explanation_obligation_applies(System),
    \+ right_to_explanation_provided_under_union_law(Person).
provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_ai_output/2, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects/1, 'celex:32024R1689/oj#art_86').
provenance(significantly_affects_person/1, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_considered/2, 'celex:32024R1689/oj#art_86').
provenance(high_risk_ai_system_annex_iii_point_2/1, 'celex:32024R1689/oj#art_86').
provenance(exception_from_explanation_obligation_applies/1, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').

% ==== celex:32024R1689/oj#art_87 ====
declared(directive_2019_1937_applies_to_reporting/1, 'Directive (EU) 2019/1937 applies to the reporting of infringements and protection of reporting persons', 'celex:32024R1689/oj#art_87').
directive_2019_1937_applies_to_reporting(infringement_of_regulation).
provenance(directive_2019_1937_applies_to_reporting/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(has_exclusive_powers_to_supervise_and_enforce/2, 'entity has exclusive powers to supervise and enforce a specific chapter', 'celex:32024R1689/oj#art_88').
declared(must_entrust_implementation_to_ai_office/2, 'entity must entrust implementation of tasks to the AI Office', 'celex:32024R1689/oj#art_88').
declared(may_request_commission_to_exercise_powers/2, 'market surveillance authority may request Commission to exercise powers for assistance', 'celex:32024R1689/oj#art_88').
has_exclusive_powers_to_supervise_and_enforce(commission, chapter_v).
must_entrust_implementation_to_ai_office(commission, tasks_of_chapter_v_supervision_and_enforcement).
may_request_commission_to_exercise_powers(Authority, powers_of_chapter_ix_section_5) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate_for_fulfilment_of_tasks(Authority).
necessary_and_proportionate_for_fulfilment_of_tasks(_Authority).
provenance(has_exclusive_powers_to_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust_implementation_to_ai_office/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_commission_to_exercise_powers/2, 'celex:32024R1689/oj#art_88').
provenance(necessary_and_proportionate_for_fulfilment_of_tasks/1, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').

% ==== celex:32024R1689/oj#art_89 ====
may_monitor_implementation(ai_office, compliance(general_purpose_ai_model_provider)) :-
    general_purpose_ai_model_provider(_P).
has_right_to_lodge_complaint(D, infringement(regulation)) :-
    downstream_provider(D).
must_be_duly_reasoned(complaint(D, infringement(regulation))) :-
    downstream_provider(D).
must_indicate_point_of_contact(complaint(D, infringement(regulation)), P) :-
    downstream_provider(D),
    general_purpose_ai_model_provider(P),
    point_of_contact(P, _Contact).
must_describe_relevant_facts(complaint(D, infringement(regulation)), description(Facts, Provisions, Reason)) :-
    downstream_provider(D),
    general_purpose_ai_model_provider(_P),
    nonvar(Facts),
    nonvar(Provisions),
    nonvar(Reason).
must_include_other_relevant_information(complaint(D, infringement(regulation)), Info) :-
    downstream_provider(D),
    nonvar(Info).
provenance(may_monitor_implementation/2, 'celex:32024R1689/oj#art_89').
provenance(has_right_to_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(must_be_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(must_indicate_point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(must_describe_relevant_facts/2, 'celex:32024R1689/oj#art_89').
provenance(must_include_other_relevant_information/2, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'independent panel of experts providing advice on AI', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'formal alert issued by the scientific panel regarding systemic risk', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'concrete identifiable risk at Union level posed by a general-purpose AI model', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_of_art_51/1, 'general-purpose AI model meets conditions referred to in Article 51', 'celex:32024R1689/oj#art_90').
declared(must_provide_qualified_alert/2, 'scientific panel may provide qualified alert to AI Office', 'celex:32024R1689/oj#art_90').
declared(may_exercise_powers_for_assessment/2, 'Commission through AI Office may exercise powers to assess matter after qualified alert', 'celex:32024R1689/oj#art_90').
declared(must_inform_board_of_measure/2, 'AI Office shall inform Board of measure taken under Articles 91-94', 'celex:32024R1689/oj#art_90').
declared(duly_reasoned/1, 'qualified alert is duly reasoned', 'celex:32024R1689/oj#art_90').
declared(indicates_provider_point_of_contact/1, 'qualified alert indicates point of contact of provider concerned', 'celex:32024R1689/oj#art_90').
declared(describes_relevant_facts_and_reasons/1, 'qualified alert describes relevant facts and reasons for alert', 'celex:32024R1689/oj#art_90').
declared(includes_other_relevant_information/1, 'qualified alert includes other information considered relevant by scientific panel', 'celex:32024R1689/oj#art_90').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_of_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(must_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers_for_assessment/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_provider_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(describes_relevant_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(includes_other_relevant_information/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
must_provide_qualified_alert(P, A) :-
    scientific_panel(P),
    qualified_alert(A),
    general_purpose_ai_model(M),
    (concrete_identifiable_risk_at_union_level(M) ; meets_conditions_of_art_51(M)).
may_exercise_powers_for_assessment(C, M) :-
    ai_office(C),
    qualified_alert(_A),
    board(B),
    informed(B).
must_inform_board_of_measure(O, Measure) :-
    ai_office(O),
    measure_under_articles_91_to_94(Measure).
duly_reasoned(A) :-
    qualified_alert(A).
indicates_provider_point_of_contact(A) :-
    qualified_alert(A),
    general_purpose_ai_model(M),
    point_of_contact(M, _Contact).
describes_relevant_facts_and_reasons(A) :-
    qualified_alert(A).
includes_other_relevant_information(A) :-
    qualified_alert(A).

% ==== celex:32024R1689/oj#art_91 ====
declared(may_request_documentation_or_information/2, 'Commission may request provider of general-purpose AI model to provide documentation or information', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before sending request', 'celex:32024R1689/oj#art_91').
declared(may_issue_request_on_scientific_panel_request/2, 'Commission may issue request for information upon duly substantiated request from scientific panel', 'celex:32024R1689/oj#art_91').
declared(request_for_information_meets_requirements/1, 'request for information states legal basis, purpose, required information, period and fines', 'celex:32024R1689/oj#art_91').
declared(must_supply_requested_information/2, 'provider or representative must supply information requested by Commission', 'celex:32024R1689/oj#art_91').
may_request_documentation_or_information(commission, Provider) :-
    general_purpose_ai_model_provider(Provider, _Model),
    necessary_for_compliance_assessment(Provider).
may_initiate_structured_dialogue(ai_office, Provider) :-
    general_purpose_ai_model_provider(Provider, _Model),
    before_request_for_information(Provider).
may_issue_request_on_scientific_panel_request(commission, Provider) :-
    general_purpose_ai_model_provider(Provider, _Model),
    duly_substantiated_request_from_scientific_panel(Provider),
    necessary_and_proportionate_for_scientific_panel_tasks(Provider).
request_for_information_meets_requirements(Request) :-
    states_legal_basis(Request),
    states_purpose(Request),
    specifies_required_information(Request),
    sets_period_for_provision(Request),
    indicates_fines_for_incorrect_information(Request).
must_supply_requested_information(Provider, Request) :-
    general_purpose_ai_model_provider(Provider, _Model),
    request_for_information_meets_requirements(Request).
must_supply_requested_information(Representative, Request) :-
    authorised_representative(Representative),
    represents_general_purpose_ai_model_provider(Representative, _Provider),
    request_for_information_meets_requirements(Request).
provenance(may_request_documentation_or_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_on_scientific_panel_request/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information_meets_requirements/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(may_conduct_evaluation/2, 'AI Office may conduct evaluation of general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(evaluation_purpose/2, 'purpose for which an evaluation is conducted', 'celex:32024R1689/oj#art_92').
declared(information_insufficient/1, 'information gathered pursuant to Article 91 is insufficient', 'celex:32024R1689/oj#art_92').
declared(qualified_alert_received/1, 'qualified alert received from scientific panel', 'celex:32024R1689/oj#art_92').
declared(may_appoint_independent_expert/1, 'Commission may appoint independent expert to carry out evaluation', 'celex:32024R1689/oj#art_92').
declared(meets_expert_criteria/1, 'independent expert meets criteria outlined in Article 68(2)', 'celex:32024R1689/oj#art_92').
declared(may_request_access_to_model/2, 'Commission may request access to general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(access_via_technical_means/2, 'access provided through APIs or other technical means including source code', 'celex:32024R1689/oj#art_92').
declared(must_supply_requested_information/2, 'provider or representative must supply information requested for evaluation', 'celex:32024R1689/oj#art_92').
declared(must_provide_access_on_behalf/2, 'authorised person must provide access on behalf of provider', 'celex:32024R1689/oj#art_92').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider prior to requesting access', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    evaluation_purpose(M, assess_compliance),
    information_insufficient(M).
may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    evaluation_purpose(M, investigate_systemic_risk).
evaluation_purpose(M, assess_compliance) :-
    general_purpose_ai_model(M),
    information_insufficient(M).
evaluation_purpose(M, investigate_systemic_risk) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    qualified_alert_received(M).
may_appoint_independent_expert(commission) :-
    true.
meets_expert_criteria(E) :-
    independent_expert(E).
may_request_access_to_model(commission, M) :-
    general_purpose_ai_model(M),
    may_conduct_evaluation(ai_office, M).
access_via_technical_means(M, api) :-
    general_purpose_ai_model(M).
access_via_technical_means(M, source_code) :-
    general_purpose_ai_model(M).
must_supply_requested_information(P, M) :-
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    may_request_access_to_model(commission, M).
must_supply_requested_information(R, M) :-
    general_purpose_ai_model(M),
    authorised_representative(R),
    may_request_access_to_model(commission, M).
must_provide_access_on_behalf(A, M) :-
    general_purpose_ai_model(M),
    may_request_access_to_model(commission, M),
    authorised_to_represent(A, M).
may_initiate_structured_dialogue(ai_office, P) :-
    general_purpose_ai_model(M),
    provides_general_purpose_ai_model(P, M),
    may_request_access_to_model(commission, M).
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose/2, 'celex:32024R1689/oj#art_92').
provenance(information_insufficient/1, 'celex:32024R1689/oj#art_92').
provenance(qualified_alert_received/1, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(meets_expert_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access_to_model/2, 'celex:32024R1689/oj#art_92').
provenance(access_via_technical_means/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access_on_behalf/2, 'celex:32024R1689/oj#art_92').
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
declared(commission_may_request_measures/2, 'Commission may request provider to take measures under Article 93', 'celex:32024R1689/oj#art_93').
declared(necessary_and_appropriate/1, 'condition that a request for measures is necessary and appropriate', 'celex:32024R1689/oj#art_93').
declared(systemic_risk_concern_from_evaluation/1, 'evaluation under Article 92 gave rise to serious and substantiated concern of systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(ai_office_may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before requesting measures', 'celex:32024R1689/oj#art_93').
declared(commission_may_make_commitments_binding/2, 'Commission may by decision make provider commitments binding and declare no further grounds for action', 'celex:32024R1689/oj#art_93').
declared(provider_offers_commitments_during_dialogue/2, 'provider offers commitments to implement mitigation measures during structured dialogue', 'celex:32024R1689/oj#art_93').
commission_may_request_measures(Provider, comply_with_obligations) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider, _Model),
    necessary_and_appropriate(comply_with_obligations).
commission_may_request_measures(Provider, implement_mitigation_measures) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider, Model),
    systemic_risk(Model),
    systemic_risk_concern_from_evaluation(Model),
    necessary_and_appropriate(implement_mitigation_measures).
commission_may_request_measures(Provider, restrict_availability_or_withdraw_or_recall) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider, _Model),
    necessary_and_appropriate(restrict_availability_or_withdraw_or_recall).
ai_office_may_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model_provider(Provider, _Model).
commission_may_make_commitments_binding(Commission, Provider) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model_provider(Provider, Model),
    systemic_risk(Model),
    ai_office_may_initiate_structured_dialogue(AIOffice, Provider),
    provider_offers_commitments_during_dialogue(Provider, Model).
provenance(commission_may_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(necessary_and_appropriate/1, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_concern_from_evaluation/1, 'celex:32024R1689/oj#art_93').
provenance(ai_office_may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(commission_may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(provider_offers_commitments_during_dialogue/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply_to_general_purpose_ai_model_provider/1, 'procedural rights under Regulation 2019/1020 Article 18 apply mutatis mutandis to provider of general-purpose AI model', 'celex:32024R1689/oj#art_94').
procedural_rights_apply_to_general_purpose_ai_model_provider(P) :-
    general_purpose_ai_model_provider(P, _M).
provenance(procedural_rights_apply_to_general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(must_encourage_voluntary_codes_of_conduct/2, 'AI Office and Member States shall encourage drawing up of codes of conduct for voluntary application of requirements', 'celex:32024R1689/oj#art_95').
declared(must_facilitate_voluntary_codes_of_conduct/2, 'AI Office and Member States shall facilitate drawing up of codes of conduct for voluntary application of requirements', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_of_chapter_3_section_2_requirements_applies/1, 'voluntary application of requirements set out in Chapter III Section 2 to AI systems other than high-risk', 'celex:32024R1689/oj#art_95').
declared(specific_voluntary_requirement_objective/1, 'specific objective for voluntary code of conduct applicable to all AI systems', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct_drawn_up_by/2, 'entity or organisation that draws up a code of conduct', 'celex:32024R1689/oj#art_95').
declared(must_consider_sme_interests_in_codes_of_conduct/2, 'AI Office and Member States shall take into account interests and needs of SMEs when encouraging codes of conduct', 'celex:32024R1689/oj#art_95').
must_encourage_voluntary_codes_of_conduct(ai_office, voluntary_application_of_chapter_3_section_2_requirements).
must_encourage_voluntary_codes_of_conduct(member_states, voluntary_application_of_chapter_3_section_2_requirements).
must_facilitate_voluntary_codes_of_conduct(ai_office, voluntary_application_of_chapter_3_section_2_requirements).
must_facilitate_voluntary_codes_of_conduct(member_states, voluntary_application_of_chapter_3_section_2_requirements).
voluntary_application_of_chapter_3_section_2_requirements_applies(S) :-
    ai_system(S),
    \+ high_risk_ai_system(S).
must_facilitate_voluntary_codes_of_conduct(ai_office, specific_voluntary_requirement(Objective)) :-
    specific_voluntary_requirement_objective(Objective).
must_facilitate_voluntary_codes_of_conduct(member_states, specific_voluntary_requirement(Objective)) :-
    specific_voluntary_requirement_objective(Objective).
specific_voluntary_requirement_objective(union_ethical_guidelines_for_trustworthy_ai).
specific_voluntary_requirement_objective(environmental_sustainability_impact_assessment_and_minimisation).
specific_voluntary_requirement_objective(ai_literacy_promotion).
specific_voluntary_requirement_objective(inclusive_and_diverse_ai_system_design).
specific_voluntary_requirement_objective(negative_impact_assessment_and_prevention_for_vulnerable_persons).
code_of_conduct_drawn_up_by(Code, provider(P)) :-
    provider(P).
code_of_conduct_drawn_up_by(Code, deployer(D)) :-
    deployer(D).
code_of_conduct_drawn_up_by(Code, representative_organisation(O)) :-
    representative_organisation(O).
code_of_conduct_drawn_up_by(Code, civil_society_organisation(O)) :-
    civil_society_organisation(O).
code_of_conduct_drawn_up_by(Code, academia(A)) :-
    academia(A).
must_consider_sme_interests_in_codes_of_conduct(ai_office, smes_including_startups).
must_consider_sme_interests_in_codes_of_conduct(member_states, smes_including_startups).
provenance(must_encourage_voluntary_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_voluntary_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_chapter_3_section_2_requirements_applies/1, 'celex:32024R1689/oj#art_95').
provenance(specific_voluntary_requirement_objective/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(must_consider_sme_interests_in_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'Commission obligation to develop guidelines on practical implementation', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'Commission obligation to update previously adopted guidelines when deemed necessary', 'celex:32024R1689/oj#art_96').
declared(guideline_topic/2, 'specific topic that Commission guidelines must address', 'celex:32024R1689/oj#art_96').
declared(must_consider_sme_needs/1, 'Commission must pay particular attention to SME needs when issuing guidelines', 'celex:32024R1689/oj#art_96').
declared(must_account_for_state_of_art/1, 'guidelines must take due account of generally acknowledged state of the art on AI', 'celex:32024R1689/oj#art_96').
declared(must_account_for_standards_and_specifications/1, 'guidelines must take due account of relevant harmonised standards and common specifications', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(commission, guidelines(practical_implementation)).
guideline_topic(guidelines(practical_implementation), application_of_requirements(arts_8_to_15_and_25)).
guideline_topic(guidelines(practical_implementation), prohibited_practices(art_5)).
guideline_topic(guidelines(practical_implementation), substantial_modification).
guideline_topic(guidelines(practical_implementation), transparency_obligations(art_50)).
guideline_topic(guidelines(practical_implementation), relationship_with_union_harmonisation_legislation(annex_i)).
guideline_topic(guidelines(practical_implementation), application_of_ai_system_definition(art_3)).
must_consider_sme_needs(guidelines(practical_implementation)).
must_account_for_state_of_art(guidelines(practical_implementation)).
must_account_for_standards_and_specifications(guidelines(practical_implementation)).
must_update_guidelines(commission, guidelines(practical_implementation)) :-
    request_from_member_states.
must_update_guidelines(commission, guidelines(practical_implementation)) :-
    request_from_ai_office.
must_update_guidelines(commission, guidelines(practical_implementation)) :-
    own_initiative(commission).
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guideline_topic/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider_sme_needs/1, 'celex:32024R1689/oj#art_96').
provenance(must_account_for_state_of_art/1, 'celex:32024R1689/oj#art_96').
provenance(must_account_for_standards_and_specifications/1, 'celex:32024R1689/oj#art_96').
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
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').

% ==== celex:32024R1689/oj#art_97 ====
declared(delegated_power_conferred_on_commission/1, 'power to adopt delegated acts is conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(delegation_period_applies/1, 'delegation of power is conferred for a period of five years from 1 August 2024', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_delegation_report/2, 'Commission must draw up a report in respect of the delegation of power', 'celex:32024R1689/oj#art_97').
declared(delegation_tacitly_extended/1, 'delegation of power is tacitly extended for periods of identical duration', 'celex:32024R1689/oj#art_97').
declared(delegation_revocable/1, 'delegation of power may be revoked at any time by Parliament or Council', 'celex:32024R1689/oj#art_97').
declared(must_consult_member_state_experts/2, 'Commission must consult experts designated by each Member State before adopting delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify_delegated_act/2, 'Commission must notify adopted delegated act simultaneously to Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(delegated_act_entry_into_force_condition/1, 'conditions under which a delegated act enters into force', 'celex:32024R1689/oj#art_97').
delegated_power_conferred_on_commission(delegated_acts).
delegation_period_applies(delegated_acts).
must_draw_up_delegation_report(commission, report(delegation_of_power)).
delegation_tacitly_extended(delegated_acts).
delegation_revocable(delegated_acts).
must_consult_member_state_experts(commission, experts(designated_by_member_states)).
must_notify_delegated_act(commission, delegated_act(_Act)).
delegated_act_entry_into_force_condition(delegated_act(_Act)).
provenance(delegated_power_conferred_on_commission/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_applies/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_delegation_report/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_tacitly_extended/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_revocable/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_member_state_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_entry_into_force_condition/1, 'celex:32024R1689/oj#art_97').
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
declared(assisted_by_committee/1, 'Commission is assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning_of_regulation/2, 'committee is within the meaning of a specified regulation', 'celex:32024R1689/oj#art_98').
declared(reference_made_to_paragraph/1, 'reference is made to Article 98(2)', 'celex:32024R1689/oj#art_98').
declared(examination_procedure_applies/1, 'examination procedure under Regulation 182/2011 Article 5 applies', 'celex:32024R1689/oj#art_98').
assisted_by_committee(commission).
committee_within_meaning_of_regulation(C, 'celex:32011R0182/oj') :-
    assisted_by_committee(commission),
    C = commission_assistance_committee.
reference_made_to_paragraph('celex:32024R1689/oj#art_98/par_2').
examination_procedure_applies('celex:32024R1689/oj#art_98/par_2') :-
    reference_made_to_paragraph('celex:32024R1689/oj#art_98/par_2').
provenance(assisted_by_committee/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/2, 'celex:32024R1689/oj#art_98').
provenance(reference_made_to_paragraph/1, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(must_lay_down_penalty_rules/1, 'Member State obligation to establish rules on penalties and enforcement measures', 'celex:32024R1689/oj#art_99').
declared(must_notify_penalty_rules/2, 'Member State obligation to notify Commission of penalty rules and amendments', 'celex:32024R1689/oj#art_99').
declared(must_report_annual_fines/2, 'Member State obligation to report issued administrative fines and litigation annually', 'celex:32024R1689/oj#art_99').
declared(penalty_for_prohibited_practice/2, 'Administrative fine applicable to non-compliance with Article 5 prohibitions', 'celex:32024R1689/oj#art_99').
declared(penalty_for_operator_obligation/2, 'Administrative fine applicable to non-compliance with operator or notified body obligations', 'celex:32024R1689/oj#art_99').
declared(penalty_for_misleading_information/2, 'Administrative fine applicable to supply of incorrect or misleading information', 'celex:32024R1689/oj#art_99').
declared(sme_penalty_cap_applies/2, 'Penalty cap for SMEs is the lower of percentage or fixed amount', 'celex:32024R1689/oj#art_99').
declared(must_consider_circumstances_for_fine/2, 'Authority obligation to consider relevant circumstances when imposing fines', 'celex:32024R1689/oj#art_99').
must_lay_down_penalty_rules(MemberState) :-
    operator(_Operator),
    prohibited_practice_infringement(_Infringement).
must_notify_penalty_rules(MemberState, Commission) :-
    must_lay_down_penalty_rules(MemberState),
    ai_office(Commission).
must_report_annual_fines(MemberState, Commission) :-
    must_lay_down_penalty_rules(MemberState),
    ai_office(Commission).
penalty_for_prohibited_practice(Infringement, Fine) :-
    prohibited_practice_infringement(Infringement),
    administrative_fine(Fine).
penalty_for_operator_obligation(Infringement, Fine) :-
    operator(_Operator),
    \+ prohibited_practice_infringement(Infringement),
    administrative_fine(Fine).
penalty_for_misleading_information(Supply, Fine) :-
    incorrect_or_misleading_supply(Supply),
    administrative_fine(Fine).
sme_penalty_cap_applies(Offender, Fine) :-
    sme(Offender),
    administrative_fine(Fine).
must_consider_circumstances_for_fine(Authority, Infringement) :-
    national_competent_authority(Authority),
    (prohibited_practice_infringement(Infringement) ; operator_obligation_infringement(Infringement)).
provenance(must_lay_down_penalty_rules/1, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99').
provenance(penalty_for_prohibited_practice/2, 'celex:32024R1689/oj#art_99').
provenance(penalty_for_operator_obligation/2, 'celex:32024R1689/oj#art_99').
provenance(penalty_for_misleading_information/2, 'celex:32024R1689/oj#art_99').
provenance(sme_penalty_cap_applies/2, 'celex:32024R1689/oj#art_99').
provenance(must_consider_circumstances_for_fine/2, 'celex:32024R1689/oj#art_99').
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

% ==== celex:32024R1689/oj#art_100 ====
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_100').
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency falling within the scope of this Regulation', 'celex:32024R1689/oj#art_100').
declared(administrative_fine_applies/2, 'administrative fine applicable to a Union body for an infringement', 'celex:32024R1689/oj#art_100').
declared(max_administrative_fine_amount/2, 'maximum amount of administrative fine in EUR for a category of infringement', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'EDPS must give Union body opportunity to be heard before decision', 'celex:32024R1689/oj#art_100').
declared(must_notify_commission_of_fines_and_proceedings/2, 'EDPS must notify Commission annually of fines imposed and proceedings initiated', 'celex:32024R1689/oj#art_100').
european_data_protection_supervisor(edps).
union_institution_body_office_or_agency(B) :-
    union_body(B).
administrative_fine_applies(B, prohibited_practice_infringement) :-
    union_institution_body_office_or_agency(B),
    prohibited_practice_infringement(_).
administrative_fine_applies(B, other_non_compliance) :-
    union_institution_body_office_or_agency(B),
    \+ prohibited_practice_infringement(_).
max_administrative_fine_amount(prohibited_practice_infringement, eur(1500000)).
max_administrative_fine_amount(other_non_compliance, eur(750000)).
must_give_opportunity_to_be_heard(edps, B) :-
    union_institution_body_office_or_agency(B),
    administrative_fine_applies(B, _).
must_notify_commission_of_fines_and_proceedings(edps, commission) :-
    european_data_protection_supervisor(edps).
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine_applies/2, 'celex:32024R1689/oj#art_100').
provenance(max_administrative_fine_amount/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_of_fines_and_proceedings/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_101 ====
declared(may_impose_fine_on_general_purpose_ai_model_provider/2, 'Commission may impose fine on provider of general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(infringement_ground_for_fine/2, 'Ground for imposing fine under Article 101(1)', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'Commission must communicate preliminary findings before adopting decision', 'celex:32024R1689/oj#art_101').
declared(must_give_opportunity_to_be_heard/2, 'Commission must give provider opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(must_communicate_fine_information_to_board/2, 'Information on fines communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts_for_proceedings/1, 'Commission must adopt implementing acts for proceedings under Article 101', 'celex:32024R1689/oj#art_101').
may_impose_fine_on_general_purpose_ai_model_provider(commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    infringement_ground_for_fine(Provider, _Ground).
infringement_ground_for_fine(Provider, infringed_relevant_provisions) :-
    general_purpose_ai_model_provider(Provider),
    intentional_or_negligent_infringement(Provider).
infringement_ground_for_fine(Provider, failed_to_comply_with_information_request) :-
    general_purpose_ai_model_provider(Provider),
    failed_information_request_compliance(Provider).
infringement_ground_for_fine(Provider, supplied_incorrect_information) :-
    general_purpose_ai_model_provider(Provider),
    supplied_incorrect_incomplete_or_misleading_information(Provider).
infringement_ground_for_fine(Provider, failed_to_comply_with_measure) :-
    general_purpose_ai_model_provider(Provider),
    failed_measure_compliance(Provider).
infringement_ground_for_fine(Provider, failed_to_provide_model_access) :-
    general_purpose_ai_model_provider(Provider),
    failed_model_access_for_evaluation(Provider).
must_communicate_preliminary_findings(commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    may_impose_fine_on_general_purpose_ai_model_provider(commission, Provider).
must_give_opportunity_to_be_heard(commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    may_impose_fine_on_general_purpose_ai_model_provider(commission, Provider).
must_communicate_fine_information_to_board(commission, FineInfo) :-
    fine_imposed_under_art_101(FineInfo).
must_adopt_implementing_acts_for_proceedings(commission) :-
    true.
provenance(may_impose_fine_on_general_purpose_ai_model_provider/2, 'celex:32024R1689/oj#art_101').
provenance(infringement_ground_for_fine/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information_to_board/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts_for_proceedings/1, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(must_take_into_account_requirements/2, 'when adopting detailed measures for AI security equipment, requirements of Chapter III Section 2 shall be taken into account', 'celex:32024R1689/oj#art_102').
must_take_into_account_requirements(Actor, Measure) :-
    adopting_detailed_measures_for_ai_security_equipment(Actor, Measure).
adopting_detailed_measures_for_ai_security_equipment(_Actor, Measure) :-
    detailed_measure(Measure),
    related_to_technical_specifications_and_procedures(Measure),
    concerns_ai_system_security_equipment(Measure).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_102', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_102', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_102', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_102', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_103 ====
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when adopting delegated acts concerning AI safety components', 'celex:32024R1689/oj#art_103').
must_take_into_account_requirements(commission, adopting_act_concerning_ai_safety_component(Act, S)) :-
    adopting_act_concerning_ai_safety_component(Act, S),
    ai_safety_component(S),
    requirements_of_chapter_3_section_2(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
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
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when adopting delegated acts concerning AI safety components', 'celex:32024R1689/oj#art_104').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
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
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when carrying out activities or adopting standards for AI safety components', 'celex:32024R1689/oj#art_105').
must_take_into_account_requirements(commission, requirements_of_chapter_3_section_2) :-
    commission_activity_pursuant_to_art_8_par_1(_Activity),
    ai_safety_component(_System).
must_take_into_account_requirements(commission, requirements_of_chapter_3_section_2) :-
    adopting_act_concerning_ai_safety_component(_Act, _System),
    ai_safety_component(_System).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
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
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_106 ====
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when adopting acts concerning AI safety components', 'celex:32024R1689/oj#art_106').
must_take_into_account_requirements(commission, Act) :-
    adopting_act_concerning_ai_safety_component(commission, Act),
    requirements_of_chapter_3_section_2(Act).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_107 ====
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when adopting delegated acts concerning AI safety components', 'celex:32024R1689/oj#art_107').
must_take_into_account_requirements(commission, delegated_act_concerning_ai_safety_component(A)) :-
    adopting_act_concerning_ai_safety_component(commission, A),
    requirements_of_chapter_3_section_2(R),
    taken_into_account(A, R).
taken_into_account(_A, _R).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_108 ====
declared(must_take_into_account_chapter_3_section_2_requirements/1, 'Commission must take into account requirements of Chapter III Section 2 when adopting acts concerning AI safety components', 'celex:32024R1689/oj#art_108').
must_take_into_account_chapter_3_section_2_requirements(Act) :-
    adopting_act_concerning_ai_safety_component(_Type, Act),
    requirements_of_chapter_3_section_2(Act).
provenance(must_take_into_account_chapter_3_section_2_requirements/1, 'celex:32024R1689/oj#art_108').
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
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when adopting implementing acts concerning AI safety components', 'celex:32024R1689/oj#art_109').
must_take_into_account_requirements(commission, implementing_act_concerning_ai_safety_component(A)) :-
    adopting_act_concerning_ai_safety_component(commission, A),
    requirements_of_chapter_3_section_2(R),
    taken_into_account(R, A).
taken_into_account(_R, _A).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
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
provenance(amendment_to_representative_actions_directive/0, 'celex:32024R1689/oj#art_110').
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
declared(large_scale_it_system_component_placed_before_august_2027/1, 'AI system component of large-scale IT system placed on market or put into service before 2 August 2027', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system_placed_before_august_2026/1, 'high-risk AI system placed on market or put into service before 2 August 2026', 'celex:32024R1689/oj#art_111').
declared(general_purpose_ai_model_placed_before_august_2025/1, 'general-purpose AI model placed on market before 2 August 2025', 'celex:32024R1689/oj#art_111').
declared(subject_to_significant_design_change/1, 'system subject to significant changes in design after 2 August 2026', 'celex:32024R1689/oj#art_111').
declared(must_bring_into_compliance_by_december_2030/2, 'operator must bring system into compliance with regulation by 31 December 2030', 'celex:32024R1689/oj#art_111').
declared(must_take_steps_to_comply_by_august_2030/2, 'provider or deployer must take necessary steps to comply with regulation by 2 August 2030', 'celex:32024R1689/oj#art_111').
declared(must_take_steps_to_comply_by_august_2027/2, 'provider must take necessary steps to comply with obligations by 2 August 2027', 'celex:32024R1689/oj#art_111').
large_scale_it_system_component_placed_before_august_2027(S) :-
    large_scale_it_system_component(S),
    placing_on_market(S).
high_risk_ai_system_placed_before_august_2026(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).
general_purpose_ai_model_placed_before_august_2025(M) :-
    general_purpose_ai_model(M),
    placing_on_market(M).
must_bring_into_compliance_by_december_2030(O, S) :-
    operator(O),
    large_scale_it_system_component_placed_before_august_2027(S).
must_take_steps_to_comply_by_august_2030(P, S) :-
    provider(P),
    high_risk_ai_system_placed_before_august_2026(S),
    public_authority_use(S).
must_take_steps_to_comply_by_august_2030(D, S) :-
    deployer(D),
    high_risk_ai_system_placed_before_august_2026(S),
    public_authority_use(S).
must_take_steps_to_comply_by_august_2027(P, M) :-
    provider(P),
    general_purpose_ai_model_placed_before_august_2025(M).
provenance(large_scale_it_system_component_placed_before_august_2027/1, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system_placed_before_august_2026/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_before_august_2025/1, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_change/1, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by_december_2030/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by_august_2030/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by_august_2027/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess_annex_iii_and_art_5_lists/1, 'Commission obligation to assess need for amendment of Annex III and Article 5 lists annually', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_regulation_periodically/1, 'Commission obligation to evaluate and report on the regulation every four years starting 2028', 'celex:32024R1689/oj#art_112').
declared(must_submit_general_evaluation_report/1, 'Commission obligation to submit general evaluation report by 2029 and every four years thereafter', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_ai_office/1, 'Commission obligation to evaluate functioning and powers of AI Office by 2028', 'celex:32024R1689/oj#art_112').
declared(must_review_energy_efficiency_standardisation/1, 'Commission obligation to review progress on energy-efficient standardisation for general-purpose AI models', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_voluntary_codes_of_conduct/1, 'Commission obligation to evaluate impact of voluntary codes of conduct for non-high-risk AI systems', 'celex:32024R1689/oj#art_112').
declared(must_provide_information_for_evaluation/2, 'Obligation of Board, Member States and authorities to provide information to Commission for evaluations', 'celex:32024R1689/oj#art_112').
declared(must_develop_risk_evaluation_methodology/1, 'AI Office obligation to develop methodology for evaluating risk levels and list amendments', 'celex:32024R1689/oj#art_112').
declared(must_assess_enforcement_structure/1, 'Commission obligation to assess enforcement structure and need for Union agency by 2031', 'celex:32024R1689/oj#art_112').
must_assess_annex_iii_and_art_5_lists(commission) :-
    ai_system(_).
must_evaluate_regulation_periodically(commission) :-
    high_risk_ai_system_annex_iii(_).
must_submit_general_evaluation_report(commission) :-
    national_competent_authority(_).
must_evaluate_ai_office(commission) :-
    ai_office(_).
must_review_energy_efficiency_standardisation(commission) :-
    general_purpose_ai_model(_).
must_evaluate_voluntary_codes_of_conduct(commission) :-
    requirements_of_chapter_3_section_2(_).
must_provide_information_for_evaluation(Entity, commission) :-
    operator(Entity).
must_provide_information_for_evaluation(Entity, commission) :-
    national_competent_authority(Entity).
must_develop_risk_evaluation_methodology(ai_office) :-
    high_risk_ai_system_annex_iii(_).
must_assess_enforcement_structure(commission) :-
    national_competent_authority(_).
provenance(must_assess_annex_iii_and_art_5_lists/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_regulation_periodically/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_general_evaluation_report/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(must_review_energy_efficiency_standardisation/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information_for_evaluation/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop_risk_evaluation_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_enforcement_structure/1, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% ==== celex:32024R1689/oj#art_113 ====
declared(regulation_enters_into_force/1, 'regulation enters into force on specified date', 'celex:32024R1689/oj#art_113').
declared(regulation_applies_from/2, 'regulation or provision applies from specified date', 'celex:32024R1689/oj#art_113').
declared(binding_in_all_member_states/1, 'regulation is binding in entirety and directly applicable', 'celex:32024R1689/oj#art_113').
regulation_enters_into_force(celex_32024r1689_oj).
regulation_applies_from(celex_32024r1689_oj, date(2026, 8, 2)).
regulation_applies_from(celex_32024r1689_oj_chp_1, date(2025, 2, 2)).
regulation_applies_from(celex_32024r1689_oj_chp_2, date(2025, 2, 2)).
regulation_applies_from(celex_32024r1689_oj_chp_3_sec_4, date(2025, 8, 2)).
regulation_applies_from(celex_32024r1689_oj_chp_5, date(2025, 8, 2)).
regulation_applies_from(celex_32024r1689_oj_chp_7, date(2025, 8, 2)).
regulation_applies_from(celex_32024r1689_oj_chp_12, date(2025, 8, 2)).
regulation_applies_from(celex_32024r1689_oj_art_78, date(2025, 8, 2)).
regulation_applies_from(celex_32024r1689_oj_art_6_par_1, date(2027, 8, 2)).
binding_in_all_member_states(celex_32024r1689_oj).
provenance(regulation_enters_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(regulation_applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(binding_in_all_member_states/1, 'celex:32024R1689/oj#art_113').
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
declared(listed_in_annex_i_section_a/1, 'Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#anx_1').
declared(listed_in_annex_i_section_b/1, 'Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#anx_1').
listed_in_annex_i_section_a('celex:32006L0042/oj').
listed_in_annex_i_section_a('celex:32009L0048/oj').
listed_in_annex_i_section_a('celex:32013L0053/oj').
listed_in_annex_i_section_a('celex:32014L0033/oj').
listed_in_annex_i_section_a('celex:32014L0034/oj').
listed_in_annex_i_section_a('celex:32014L0053/oj').
listed_in_annex_i_section_a('celex:32014L0068/oj').
listed_in_annex_i_section_a('celex:32016R0424/oj').
listed_in_annex_i_section_a('celex:32016R0425/oj').
listed_in_annex_i_section_a('celex:32016R0426/oj').
listed_in_annex_i_section_a('celex:32017R0745/oj').
listed_in_annex_i_section_a('celex:32017R0746/oj').
listed_in_annex_i_section_b('celex:32008R0300/oj').
listed_in_annex_i_section_b('celex:32013R0168/oj').
listed_in_annex_i_section_b('celex:32013R0167/oj').
listed_in_annex_i_section_b('celex:32014L0090/oj').
listed_in_annex_i_section_b('celex:32016L0797/oj').
listed_in_annex_i_section_b('celex:32018R0858/oj').
listed_in_annex_i_section_b('celex:32019R2144/oj').
listed_in_annex_i_section_b('celex:32018R1139/oj').
provenance(listed_in_annex_i_section_a/1, 'celex:32024R1689/oj#anx_1').
provenance(listed_in_annex_i_section_b/1, 'celex:32024R1689/oj#anx_1').
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
declared(annex_ii_criminal_offence/1, 'criminal offence listed in Annex II referred to in Article 5(1)(h)(iii)', 'celex:32024R1689/oj#anx_2').
annex_ii_criminal_offence(terrorism).
annex_ii_criminal_offence(trafficking_in_human_beings).
annex_ii_criminal_offence(sexual_exploitation_of_children).
annex_ii_criminal_offence(child_pornography).
annex_ii_criminal_offence(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
annex_ii_criminal_offence(illicit_trafficking_in_weapons_munitions_or_explosives).
annex_ii_criminal_offence(murder).
annex_ii_criminal_offence(grievous_bodily_injury).
annex_ii_criminal_offence(illicit_trade_in_human_organs_or_tissue).
annex_ii_criminal_offence(illicit_trafficking_in_nuclear_or_radioactive_materials).
annex_ii_criminal_offence(kidnapping).
annex_ii_criminal_offence(illegal_restraint).
annex_ii_criminal_offence(hostage_taking).
annex_ii_criminal_offence(crimes_within_jurisdiction_of_international_criminal_court).
annex_ii_criminal_offence(unlawful_seizure_of_aircraft_or_ships).
annex_ii_criminal_offence(rape).
annex_ii_criminal_offence(environmental_crime).
annex_ii_criminal_offence(organised_or_armed_robbery).
annex_ii_criminal_offence(sabotage).
annex_ii_criminal_offence(participation_in_criminal_organisation_involved_in_listed_offences).
provenance(annex_ii_criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system_annex_iii_biometrics/1, 'AI system listed in Annex III point 1 (Biometrics)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_critical_infrastructure/1, 'AI system listed in Annex III point 2 (Critical infrastructure)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_education/1, 'AI system listed in Annex III point 3 (Education and vocational training)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_employment/1, 'AI system listed in Annex III point 4 (Employment and workers management)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_essential_services/1, 'AI system listed in Annex III point 5 (Access to essential services)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_law_enforcement/1, 'AI system listed in Annex III point 6 (Law enforcement)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_migration/1, 'AI system listed in Annex III point 7 (Migration, asylum and border control)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_ai_system_annex_iii_justice/1, 'AI system listed in Annex III point 8 (Administration of justice and democratic processes)', 'celex:32024R1689/oj#anx_3').
declared(exempt_biometric_verification/1, 'AI system intended solely for biometric verification to confirm claimed identity', 'celex:32024R1689/oj#anx_3').
declared(exempt_financial_fraud_detection/1, 'AI system used for detecting financial fraud', 'celex:32024R1689/oj#anx_3').
declared(exempt_travel_document_verification/1, 'AI system used for verification of travel documents', 'celex:32024R1689/oj#anx_3').
declared(exempt_political_campaign_administration/1, 'AI system used to organise or structure political campaigns administratively without direct exposure to voters', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_biometrics(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_critical_infrastructure(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_education(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_employment(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_essential_services(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_law_enforcement(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_migration(S).
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system_annex_iii_justice(S).
high_risk_ai_system_annex_iii_biometrics(S) :-
    remote_biometric_identification_system(S),
    \+ exempt_biometric_verification(S).
high_risk_ai_system_annex_iii_biometrics(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    intended_purpose(S, Purpose),
    sensitive_attribute_inference(Purpose).
high_risk_ai_system_annex_iii_biometrics(S) :-
    emotion_recognition_system(S).
high_risk_ai_system_annex_iii_critical_infrastructure(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, Purpose),
    critical_infrastructure_management(Purpose).
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_access_determination(Purpose).
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    learning_outcome_evaluation(Purpose).
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_level_assessment(Purpose).
high_risk_ai_system_annex_iii_education(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    student_test_monitoring(Purpose).
high_risk_ai_system_annex_iii_employment(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    recruitment_or_selection(Purpose).
high_risk_ai_system_annex_iii_employment(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    work_relationship_decision(Purpose).
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    public_benefit_eligibility_evaluation(Purpose).
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    creditworthiness_assessment(Purpose),
    \+ exempt_financial_fraud_detection(S).
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    insurance_risk_assessment(Purpose).
high_risk_ai_system_annex_iii_essential_services(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    emergency_service_dispatch(Purpose).
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    crime_victim_risk_assessment(Purpose).
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    polygraph_tool(Purpose),
    law_enforcement_context(Purpose).
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    evidence_reliability_evaluation(Purpose).
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    offending_risk_assessment(Purpose),
    \+ solely_profiling_based(S).
high_risk_ai_system_annex_iii_law_enforcement(S) :-
    ai_system(S),
    profiling(S),
    intended_purpose(S, Purpose),
    criminal_offence_profiling(Purpose).
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    polygraph_tool(Purpose),
    migration_border_control_context(Purpose).
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    entry_risk_assessment(Purpose).
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    asylum_visa_examination(Purpose).
high_risk_ai_system_annex_iii_migration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    person_identification_in_migration(Purpose),
    \+ exempt_travel_document_verification(S).
high_risk_ai_system_annex_iii_justice(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    judicial_interpretation_assistance(Purpose).
high_risk_ai_system_annex_iii_justice(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    election_influence(Purpose),
    \+ exempt_political_campaign_administration(S).
exempt_biometric_verification(S) :-
    ai_system(S),
    biometric_verification(S),
    intended_purpose(S, Purpose),
    sole_purpose_confirm_identity(Purpose).
exempt_financial_fraud_detection(S) :-
    ai_system(S),
    financial_fraud_detection_purpose(S).
exempt_travel_document_verification(S) :-
    ai_system(S),
    travel_document_verification_purpose(S).
exempt_political_campaign_administration(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    political_campaign_administrative_tool(Purpose),
    \+ direct_exposure_to_voters(S).
sensitive_attribute_inference(purpose(biometric_categorisation, sensitive_attributes)).
critical_infrastructure_management(purpose(safety_component, critical_digital_infrastructure)).
critical_infrastructure_management(purpose(safety_component, road_traffic)).
critical_infrastructure_management(purpose(safety_component, water_supply)).
critical_infrastructure_management(purpose(safety_component, gas_supply)).
critical_infrastructure_management(purpose(safety_component, heating_supply)).
critical_infrastructure_management(purpose(safety_component, electricity_supply)).
education_access_determination(purpose(access_or_admission, educational_institution)).
education_access_determination(purpose(assign_persons, educational_institution)).
learning_outcome_evaluation(purpose(evaluate_learning_outcomes, _)).
education_level_assessment(purpose(assess_education_level, _)).
student_test_monitoring(purpose(monitor_prohibited_behaviour, tests)).
recruitment_or_selection(purpose(recruitment, _)).
recruitment_or_selection(purpose(selection, _)).
recruitment_or_selection(purpose(targeted_job_advertisements, _)).
recruitment_or_selection(purpose(filter_job_applications, _)).
work_relationship_decision(purpose(decision, terms_of_work)).
work_relationship_decision(purpose(decision, promotion)).
work_relationship_decision(purpose(decision, termination)).
work_relationship_decision(purpose(allocate_tasks, individual_behaviour)).
work_relationship_decision(purpose(monitor_performance, work_relationship)).
public_benefit_eligibility_evaluation(purpose(evaluate_eligibility, essential_public_assistance)).
creditworthiness_assessment(purpose(evaluate_creditworthiness, _)).
creditworthiness_assessment(purpose(establish_credit_score, _)).
insurance_risk_assessment(purpose(risk_assessment, life_insurance)).
insurance_risk_assessment(purpose(pricing, life_insurance)).
insurance_risk_assessment(purpose(risk_assessment, health_insurance)).
insurance_risk_assessment(purpose(pricing, health_insurance)).
emergency_service_dispatch(purpose(classify_emergency_calls, _)).
emergency_service_dispatch(purpose(dispatch_emergency_services, _)).
emergency_service_dispatch(purpose(priority_dispatch, emergency_services)).
emergency_service_dispatch(purpose(patient_triage, emergency_healthcare)).
crime_victim_risk_assessment(purpose(assess_risk, victim_of_criminal_offences)).
polygraph_tool(purpose(polygraph, _)).
evidence_reliability_evaluation(purpose(evaluate_reliability, evidence)).
offending_risk_assessment(purpose(assess_risk, offending)).
offending_risk_assessment(purpose(assess_risk, re_offending)).
criminal_offence_profiling(purpose(profiling, criminal_offences)).
migration_border_control_context(purpose(_, migration)).
migration_border_control_context(purpose(_, border_control)).
entry_risk_assessment(purpose(assess_risk, entry_into_territory)).
asylum_visa_examination(purpose(examine_application, asylum)).
asylum_visa_examination(purpose(examine_application, visa)).
asylum_visa_examination(purpose(examine_application, residence_permit)).
person_identification_in_migration(purpose(detect_persons, migration_context)).
person_identification_in_migration(purpose(recognise_persons, migration_context)).
person_identification_in_migration(purpose(identify_persons, migration_context)).
judicial_interpretation_assistance(purpose(assist_judicial_authority, interpret_facts_and_law)).
judicial_interpretation_assistance(purpose(assist_judicial_authority, apply_law)).
judicial_interpretation_assistance(purpose(alternative_dispute_resolution, _)).
election_influence(purpose(influence_election_outcome, _)).
election_influence(purpose(influence_referendum_outcome, _)).
election_influence(purpose(influence_voting_behaviour, _)).
political_campaign_administrative_tool(purpose(organise_political_campaign, administrative)).
political_campaign_administrative_tool(purpose(structure_political_campaign, logistical)).
sole_purpose_confirm_identity(purpose(confirm_identity, sole)).
law_enforcement_context(purpose(_, law_enforcement)).
direct_exposure_to_voters(S) :-
    ai_system(S),
    output_directly_exposed_to_natural_persons(S).
provenance(high_risk_ai_system_annex_iii_biometrics/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_education/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_employment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_essential_services/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_migration/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_ai_system_annex_iii_justice/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_biometric_verification/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_financial_fraud_detection/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_travel_document_verification/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_political_campaign_administration/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(required_technical_documentation_element/2, 'specific information element required in technical documentation for an AI system', 'celex:32024R1689/oj#anx_4').
declared(general_description_of_ai_system/1, 'general description of the AI system including purpose and provider', 'celex:32024R1689/oj#anx_4').
declared(detailed_development_description/1, 'detailed description of AI system elements and development process', 'celex:32024R1689/oj#anx_4').
declared(monitoring_and_control_information/1, 'detailed information about monitoring functioning and control of AI system', 'celex:32024R1689/oj#anx_4').
declared(performance_metrics_appropriateness_description/1, 'description of appropriateness of performance metrics for specific AI system', 'celex:32024R1689/oj#anx_4').
declared(risk_management_system_description/1, 'detailed description of risk management system', 'celex:32024R1689/oj#anx_4').
declared(lifecycle_changes_description/1, 'description of relevant changes made by provider through lifecycle', 'celex:32024R1689/oj#anx_4').
declared(harmonised_standards_list/1, 'list of harmonised standards applied or solutions adopted', 'celex:32024R1689/oj#anx_4').
declared(eu_declaration_of_conformity_copy/1, 'copy of EU declaration of conformity', 'celex:32024R1689/oj#anx_4').
declared(post_market_monitoring_system_description/1, 'detailed description of system to evaluate performance in post-market phase', 'celex:32024R1689/oj#anx_4').
required_technical_documentation_element(S, general_description) :-
    ai_system(S),
    general_description_of_ai_system(S).
required_technical_documentation_element(S, development_process) :-
    ai_system(S),
    detailed_development_description(S).
required_technical_documentation_element(S, monitoring_control) :-
    ai_system(S),
    monitoring_and_control_information(S).
required_technical_documentation_element(S, performance_metrics) :-
    ai_system(S),
    performance_metrics_appropriateness_description(S).
required_technical_documentation_element(S, risk_management) :-
    ai_system(S),
    risk_management_system_description(S).
required_technical_documentation_element(S, lifecycle_changes) :-
    ai_system(S),
    lifecycle_changes_description(S).
required_technical_documentation_element(S, standards_compliance) :-
    ai_system(S),
    harmonised_standards_list(S).
required_technical_documentation_element(S, declaration_of_conformity) :-
    ai_system(S),
    eu_declaration_of_conformity_copy(S).
required_technical_documentation_element(S, post_market_monitoring) :-
    ai_system(S),
    post_market_monitoring_system_description(S).
provenance(required_technical_documentation_element/2, 'celex:32024R1689/oj#anx_4').
provenance(general_description_of_ai_system/1, 'celex:32024R1689/oj#anx_4').
provenance(detailed_development_description/1, 'celex:32024R1689/oj#anx_4').
provenance(monitoring_and_control_information/1, 'celex:32024R1689/oj#anx_4').
provenance(performance_metrics_appropriateness_description/1, 'celex:32024R1689/oj#anx_4').
provenance(risk_management_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_4').
provenance(post_market_monitoring_system_description/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity document', 'celex:32024R1689/oj#anx_5').
declared(contains_ai_system_identification/1, 'declaration contains AI system name, type and unambiguous reference', 'celex:32024R1689/oj#anx_5').
declared(contains_provider_information/1, 'declaration contains name and address of provider or authorised representative', 'celex:32024R1689/oj#anx_5').
declared(contains_sole_responsibility_statement/1, 'declaration states it is issued under sole responsibility of provider', 'celex:32024R1689/oj#anx_5').
declared(contains_conformity_statement/1, 'declaration states AI system is in conformity with this Regulation and relevant Union law', 'celex:32024R1689/oj#anx_5').
declared(contains_personal_data_compliance_statement/1, 'declaration states compliance with GDPR, EUDPR and LED where personal data processed', 'celex:32024R1689/oj#anx_5').
declared(contains_standards_references/1, 'declaration references harmonised standards or common specifications used', 'celex:32024R1689/oj#anx_5').
declared(contains_notified_body_details/1, 'declaration contains notified body name, number, procedure description and certificate identification', 'celex:32024R1689/oj#anx_5').
declared(contains_signature_details/1, 'declaration contains place, date, signatory name, function and signature', 'celex:32024R1689/oj#anx_5').
required_eu_declaration_of_conformity_content(D) :-
    eu_declaration_of_conformity(D),
    contains_ai_system_identification(D),
    contains_provider_information(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_standards_references(D),
    contains_signature_details(D).
required_eu_declaration_of_conformity_content(D) :-
    eu_declaration_of_conformity(D),
    involves_personal_data_processing(D),
    contains_personal_data_compliance_statement(D).
required_eu_declaration_of_conformity_content(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_carried_out(D),
    contains_notified_body_details(D).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_provider_information/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_sole_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_personal_data_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_standards_references/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_notified_body_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_signature_details/1, 'celex:32024R1689/oj#anx_5').
provenance(required_eu_declaration_of_conformity_content/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_based_on_internal_control/1, 'conformity assessment procedure based on internal control as set out in Annex VI', 'celex:32024R1689/oj#anx_6').
declared(must_verify_quality_management_system_compliance/2, 'provider verifies that the established quality management system complies with Article 17', 'celex:32024R1689/oj#anx_6').
declared(must_examine_technical_documentation_for_compliance/2, 'provider examines technical documentation to assess compliance with essential requirements of Chapter III Section 2', 'celex:32024R1689/oj#anx_6').
declared(must_verify_design_and_development_consistency/2, 'provider verifies that design and development process and post-market monitoring are consistent with technical documentation', 'celex:32024R1689/oj#anx_6').
conformity_assessment_based_on_internal_control(S) :-
    ai_system(S),
    must_verify_quality_management_system_compliance(_P, S),
    must_examine_technical_documentation_for_compliance(_P, S),
    must_verify_design_and_development_consistency(_P, S).
must_verify_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S),
    requirements_of_chapter_3_section_2(S).
must_examine_technical_documentation_for_compliance(P, S) :-
    provider(P),
    ai_system(S),
    requirements_of_chapter_3_section_2(S).
must_verify_design_and_development_consistency(P, S) :-
    provider(P),
    ai_system(S),
    post_market_monitoring_system(S).
provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation_for_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_and_development_consistency/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(annex_vii_conformity_assessment_procedure/1, 'conformity assessment procedure based on quality management system and technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(must_apply_for_qms_assessment/2, 'provider must apply to notified body for quality management system assessment', 'celex:32024R1689/oj#anx_7').
declared(must_include_provider_details_in_qms_application/2, 'qms application must include name and address of provider and representative if applicable', 'celex:32024R1689/oj#anx_7').
declared(must_include_ai_system_list_in_qms_application/2, 'qms application must include list of AI systems covered under the same quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_include_technical_documentation_in_qms_application/2, 'qms application must include technical documentation for each covered AI system', 'celex:32024R1689/oj#anx_7').
declared(must_include_qms_documentation_in_application/2, 'qms application must include documentation concerning the quality management system covering Article 17 aspects', 'celex:32024R1689/oj#anx_7').
declared(must_include_adequacy_procedures_in_qms_application/2, 'qms application must include description of procedures ensuring QMS remains adequate and effective', 'celex:32024R1689/oj#anx_7').
declared(must_declare_no_duplicate_qms_application/2, 'provider must declare same QMS application not lodged with other notified body', 'celex:32024R1689/oj#anx_7').
declared(must_assess_qms_compliance/2, 'notified body must assess whether QMS satisfies Article 17 requirements', 'celex:32024R1689/oj#anx_7').
declared(must_notify_qms_decision/2, 'notified body must notify provider or representative of QMS assessment decision with conclusions', 'celex:32024R1689/oj#anx_7').
declared(must_maintain_approved_qms/2, 'provider must implement and maintain approved QMS so it remains adequate and efficient', 'celex:32024R1689/oj#anx_7').
declared(must_notify_intended_qms_changes/2, 'provider must bring intended changes to approved QMS or AI system list to notified body attention', 'celex:32024R1689/oj#anx_7').
declared(must_examine_qms_changes/2, 'notified body must examine proposed QMS changes and decide on continued compliance or reassessment', 'celex:32024R1689/oj#anx_7').
declared(must_apply_for_technical_documentation_assessment/2, 'provider must lodge application with notified body for technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(must_include_provider_details_in_td_application/2, 'technical documentation application must include name and address of provider', 'celex:32024R1689/oj#anx_7').
declared(must_declare_no_duplicate_td_application/2, 'provider must declare same technical documentation application not lodged with other notified body', 'celex:32024R1689/oj#anx_7').
declared(must_include_technical_documentation_in_td_application/2, 'technical documentation application must include technical documentation referred to in Annex IV', 'celex:32024R1689/oj#anx_7').
declared(must_examine_technical_documentation/2, 'notified body must examine technical documentation of AI system', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access_to_data_sets/2, 'provider must grant notified body full access to training validation and testing data sets where relevant', 'celex:32024R1689/oj#anx_7').
declared(may_require_further_evidence_or_tests/2, 'notified body may require provider to supply further evidence or carry out further tests', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out_tests_if_unsatisfied/2, 'notified body must directly carry out adequate tests if not satisfied with provider tests', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access_to_models_on_reasoned_request/2, 'provider must grant access to training and trained models upon reasoned request after other means exhausted', 'celex:32024R1689/oj#anx_7').
declared(must_notify_td_assessment_decision/2, 'notified body must notify provider or representative of technical documentation assessment decision', 'celex:32024R1689/oj#anx_7').
declared(must_issue_certificate_if_conformity/2, 'notified body must issue Union technical documentation assessment certificate if AI system conforms', 'celex:32024R1689/oj#anx_7').
declared(must_refuse_certificate_if_non_conformity/2, 'notified body must refuse certificate and give detailed reasons if AI system does not conform', 'celex:32024R1689/oj#anx_7').
declared(must_assess_changes_affecting_compliance/2, 'notified body must assess changes to AI system that could affect compliance or intended purpose', 'celex:32024R1689/oj#anx_7').
declared(must_inform_of_intended_changes/2, 'provider must inform notified body of intention to introduce changes affecting compliance', 'celex:32024R1689/oj#anx_7').
declared(must_surveil_approved_qms/2, 'notified body must carry out surveillance to ensure provider complies with approved QMS terms', 'celex:32024R1689/oj#anx_7').
declared(must_allow_premises_access_for_surveillance/2, 'provider must allow notified body access to design development and testing premises for assessment', 'celex:32024R1689/oj#anx_7').
declared(must_share_information_for_surveillance/2, 'provider must share all necessary information with notified body for assessment purposes', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out_periodic_audits/2, 'notified body must carry out periodic audits to ensure provider maintains and applies QMS', 'celex:32024R1689/oj#anx_7').
annex_vii_conformity_assessment_procedure(S) :-
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).
must_apply_for_qms_assessment(P, B) :-
    provider(P),
    notified_body(B),
    annex_vii_conformity_assessment_procedure(_S).
must_include_provider_details_in_qms_application(P, application(qms)) :-
    provider(P).
must_include_ai_system_list_in_qms_application(P, application(qms)) :-
    provider(P).
must_include_technical_documentation_in_qms_application(P, application(qms)) :-
    provider(P).
must_include_qms_documentation_in_application(P, application(qms)) :-
    provider(P).
must_include_adequacy_procedures_in_qms_application(P, application(qms)) :-
    provider(P).
must_declare_no_duplicate_qms_application(P, application(qms)) :-
    provider(P).
must_assess_qms_compliance(B, qms) :-
    notified_body(B).
must_notify_qms_decision(B, P) :-
    notified_body(B),
    provider(P).
must_maintain_approved_qms(P, qms) :-
    provider(P).
must_notify_intended_qms_changes(P, B) :-
    provider(P),
    notified_body(B).
must_examine_qms_changes(B, changes(qms)) :-
    notified_body(B).
must_apply_for_technical_documentation_assessment(P, B) :-
    provider(P),
    notified_body(B),
    annex_vii_conformity_assessment_procedure(_S).
must_include_provider_details_in_td_application(P, application(technical_documentation)) :-
    provider(P).
must_declare_no_duplicate_td_application(P, application(technical_documentation)) :-
    provider(P).
must_include_technical_documentation_in_td_application(P, application(technical_documentation)) :-
    provider(P).
must_examine_technical_documentation(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S).
must_grant_access_to_data_sets(P, B) :-
    provider(P),
    notified_body(B).
may_require_further_evidence_or_tests(B, P) :-
    notified_body(B),
    provider(P).
must_carry_out_tests_if_unsatisfied(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S).
must_grant_access_to_models_on_reasoned_request(P, B) :-
    provider(P),
    notified_body(B),
    reasoned_request(B, access(models)).
must_notify_td_assessment_decision(B, P) :-
    notified_body(B),
    provider(P).
must_issue_certificate_if_conformity(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S),
    requirements_of_chapter_3_section_2(S).
must_refuse_certificate_if_non_conformity(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S),
    \+ requirements_of_chapter_3_section_2(S).
must_assess_changes_affecting_compliance(B, S) :-
    notified_body(B),
    annex_vii_conformity_assessment_procedure(S).
must_inform_of_intended_changes(P, B) :-
    provider(P),
    notified_body(B).
must_surveil_approved_qms(B, P) :-
    notified_body(B),
    provider(P).
must_allow_premises_access_for_surveillance(P, B) :-
    provider(P),
    notified_body(B).
must_share_information_for_surveillance(P, B) :-
    provider(P),
    notified_body(B).
must_carry_out_periodic_audits(B, P) :-
    notified_body(B),
    provider(P).
provenance(annex_vii_conformity_assessment_procedure/1, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_qms_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_provider_details_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_ai_system_list_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_technical_documentation_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_qms_documentation_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_adequacy_procedures_in_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_declare_no_duplicate_qms_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_qms_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_qms_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_approved_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_intended_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_technical_documentation_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_provider_details_in_td_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_declare_no_duplicate_td_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_technical_documentation_in_td_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data_sets/2, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence_or_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_tests_if_unsatisfied/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models_on_reasoned_request/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_td_assessment_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate_if_conformity/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate_if_non_conformity/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_changes_affecting_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_intended_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_surveil_approved_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_premises_access_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(required_registration_information_section_a/1, 'information items required for registration under Annex VIII Section A', 'celex:32024R1689/oj#anx_8').
declared(required_registration_information_section_b/1, 'information items required for registration under Annex VIII Section B', 'celex:32024R1689/oj#anx_8').
declared(required_registration_information_section_c/1, 'information items required for registration under Annex VIII Section C', 'celex:32024R1689/oj#anx_8').
declared(must_submit_registration_information/2, 'actor must submit specified registration information for an AI system', 'celex:32024R1689/oj#anx_8').
declared(must_keep_registration_information_updated/2, 'actor must keep registration information up to date', 'celex:32024R1689/oj#anx_8').
declared(exempt_instructions_for_use_in_registration/1, 'high-risk AI system exempt from providing electronic instructions for use in registration', 'celex:32024R1689/oj#anx_8').
required_registration_information_section_a(provider_details).
required_registration_information_section_a(submitter_details).
required_registration_information_section_a(authorised_representative_details).
required_registration_information_section_a(system_identification).
required_registration_information_section_a(intended_purpose_description).
required_registration_information_section_a(system_logic_description).
required_registration_information_section_a(system_status).
required_registration_information_section_a(certificate_details).
required_registration_information_section_a(certificate_copy).
required_registration_information_section_a(member_states_availability).
required_registration_information_section_a(eu_declaration_of_conformity).
required_registration_information_section_a(electronic_instructions_for_use).
required_registration_information_section_a(additional_information_url).
required_registration_information_section_b(provider_details).
required_registration_information_section_b(submitter_details).
required_registration_information_section_b(authorised_representative_details).
required_registration_information_section_b(system_identification).
required_registration_information_section_b(intended_purpose_description).
required_registration_information_section_b(not_high_risk_condition).
required_registration_information_section_b(not_high_risk_grounds_summary).
required_registration_information_section_b(system_status).
required_registration_information_section_b(member_states_availability).
required_registration_information_section_c(deployer_details).
required_registration_information_section_c(submitter_details).
required_registration_information_section_c(database_entry_url).
required_registration_information_section_c(fundamental_rights_impact_assessment_summary).
required_registration_information_section_c(data_protection_impact_assessment_summary).
must_submit_registration_information(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    required_registration_information_section_a(_Item).
must_submit_registration_information(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    required_registration_information_section_b(_Item).
must_submit_registration_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    required_registration_information_section_c(_Item).
must_keep_registration_information_updated(Actor, S) :-
    must_submit_registration_information(Actor, S).
exempt_instructions_for_use_in_registration(S) :-
    high_risk_ai_system_annex_3_point_1(S).
provenance(required_registration_information_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_information_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_information_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_information_updated/2, 'celex:32024R1689/oj#anx_8').
provenance(exempt_instructions_for_use_in_registration/1, 'celex:32024R1689/oj#anx_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').

% ==== celex:32024R1689/oj#anx_9 ====
declared(required_registration_information_for_real_world_testing/1, 'information item required for registration of testing in real world conditions under Annex IX', 'celex:32024R1689/oj#anx_9').
declared(must_provide_and_update_registration_information/2, 'obligation to provide and keep up to date information for testing in real world conditions registration', 'celex:32024R1689/oj#anx_9').
required_registration_information_for_real_world_testing(unique_identification_number).
required_registration_information_for_real_world_testing(provider_and_deployer_contact_details).
required_registration_information_for_real_world_testing(ai_system_description_and_purpose).
required_registration_information_for_real_world_testing(testing_plan_summary).
required_registration_information_for_real_world_testing(suspension_or_termination_information).
must_provide_and_update_registration_information(Provider, Testing) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    high_risk_ai_system_annex_iii(S),
    intended_purpose_of_testing(Testing, S).
provenance(required_registration_information_for_real_world_testing/1, 'celex:32024R1689/oj#anx_9').
provenance(must_provide_and_update_registration_information/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(listed_in_annex_x/1, 'large-scale IT system listed in Annex X of the AI Act', 'celex:32024R1689/oj#anx_10').
listed_in_annex_x(schengen_information_system).
listed_in_annex_x(visa_information_system).
listed_in_annex_x(eurodac).
listed_in_annex_x(entry_exit_system).
listed_in_annex_x(european_travel_information_and_authorisation_system).
listed_in_annex_x(ecris_tcn).
listed_in_annex_x(interoperability_framework_borders_and_visa).
listed_in_annex_x(interoperability_framework_police_and_judicial_cooperation).
provenance(listed_in_annex_x/1, 'celex:32024R1689/oj#anx_10').
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
references('celex:32024R1689/oj#anx_10', 'celex:32019R1896/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32004D0512/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32008D0633/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1358/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1315/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1350/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32001L0055/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32011R1077/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(required_technical_documentation_for_general_purpose_ai_model/1, 'technical documentation content required for all general-purpose AI model providers', 'celex:32024R1689/oj#anx_11').
declared(required_additional_documentation_for_systemic_risk_model/1, 'additional technical documentation content required for general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_11').
required_technical_documentation_for_general_purpose_ai_model(Doc) :-
    general_purpose_ai_model_documentation(Doc),
    contains_general_description(Doc),
    contains_development_process_description(Doc).
required_additional_documentation_for_systemic_risk_model(Doc) :-
    general_purpose_ai_model_documentation(Doc),
    systemic_risk_model_documentation(Doc),
    contains_evaluation_strategy_description(Doc),
    contains_adversarial_testing_description(Doc),
    contains_system_architecture_description(Doc).
provenance(required_technical_documentation_for_general_purpose_ai_model/1, 'celex:32024R1689/oj#anx_11').
provenance(required_additional_documentation_for_systemic_risk_model/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_transparency_information_for_downstream_provider/1, 'transparency information content required by Annex XII for general-purpose AI model providers', 'celex:32024R1689/oj#anx_12').
declared(contains_general_description_of_model/1, 'information contains a general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(contains_development_process_description/1, 'information contains a description of the elements of the model and development process', 'celex:32024R1689/oj#anx_12').
required_transparency_information_for_downstream_provider(Info) :-
    contains_general_description_of_model(Info),
    contains_development_process_description(Info).
contains_general_description_of_model(Info) :-
    describes_intended_tasks_and_integration_types(Info),
    describes_acceptable_use_policies(Info),
    describes_release_date_and_distribution_methods(Info),
    describes_hardware_software_interaction(Info),
    describes_relevant_software_versions(Info),
    describes_architecture_and_parameter_count(Info),
    describes_input_output_modality_and_format(Info),
    describes_model_licence(Info).
contains_development_process_description(Info) :-
    describes_technical_means_for_integration(Info),
    describes_input_output_specifications(Info),
    describes_training_testing_validation_data(Info).
provenance(required_transparency_information_for_downstream_provider/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_general_description_of_model/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_development_process_description/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(systemic_risk_criterion/1, 'criterion for designation of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_13').
declared(model_parameter_count/1, 'number of parameters of the model', 'celex:32024R1689/oj#anx_13').
declared(dataset_quality_or_size/1, 'quality or size of the data set measured through tokens or similar', 'celex:32024R1689/oj#anx_13').
declared(training_computation_amount/1, 'amount of computation used for training measured in floating point operations or proxy variables', 'celex:32024R1689/oj#anx_13').
declared(input_output_modality/1, 'input and output modalities of the model including state of the art thresholds', 'celex:32024R1689/oj#anx_13').
declared(capability_benchmark_evaluation/1, 'benchmarks and evaluations of model capabilities including autonomy and scalability', 'celex:32024R1689/oj#anx_13').
declared(high_internal_market_impact/1, 'high impact on the internal market due to reach', 'celex:32024R1689/oj#anx_13').
declared(registered_business_user_count/1, 'number of registered business users established in the Union', 'celex:32024R1689/oj#anx_13').
declared(registered_end_user_count/1, 'number of registered end-users', 'celex:32024R1689/oj#anx_13').
declared(presumed_high_internal_market_impact/1, 'presumption of high impact based on business user threshold', 'celex:32024R1689/oj#anx_13').
systemic_risk_criterion(model_parameter_count).
systemic_risk_criterion(dataset_quality_or_size).
systemic_risk_criterion(training_computation_amount).
systemic_risk_criterion(input_output_modality).
systemic_risk_criterion(capability_benchmark_evaluation).
systemic_risk_criterion(high_internal_market_impact).
systemic_risk_criterion(registered_end_user_count).
presumed_high_internal_market_impact(M) :-
    general_purpose_ai_model(M),
    registered_business_user_count(M),
    made_available_to_business_users(M, Count),
    Count >= 10000.
provenance(systemic_risk_criterion/1, 'celex:32024R1689/oj#anx_13').
provenance(model_parameter_count/1, 'celex:32024R1689/oj#anx_13').
provenance(dataset_quality_or_size/1, 'celex:32024R1689/oj#anx_13').
provenance(training_computation_amount/1, 'celex:32024R1689/oj#anx_13').
provenance(input_output_modality/1, 'celex:32024R1689/oj#anx_13').
provenance(capability_benchmark_evaluation/1, 'celex:32024R1689/oj#anx_13').
provenance(high_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_user_count/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_end_user_count/1, 'celex:32024R1689/oj#anx_13').
provenance(presumed_high_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

