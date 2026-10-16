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
% There are 530 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous advice_requester/1.
:- discontiguous advisory_forum/1.
:- discontiguous ai_literacy_measures_target/1.
:- discontiguous application_date/2.
:- discontiguous arguments_sufficiently_substantiated/2.
:- discontiguous article_79_paragraphs_5_to_9_apply/1.
:- discontiguous assesses_technical_documentation_compliance/2.
:- discontiguous assisted_by_committee/1.
:- discontiguous attendee_non_voting/1.
:- discontiguous binding_in_entirety/1.
:- discontiguous chair_of_board/1.
:- discontiguous check_notified_body_requirement/2.
:- discontiguous check_personal_data_requirement/2.
:- discontiguous classified_with_systemic_risk/1.
:- discontiguous commission_safeguard_consultation_triggered/1.
:- discontiguous competent_authority_for/2.
:- discontiguous compliant_instructions_for_use/1.
:- discontiguous complies_with_data_governance/1.
:- discontiguous concerning_ai_safety_component/1.
:- discontiguous concerns_ai_safety_component/1.
:- discontiguous conditions_met_testing_outside_sandbox/2.
:- discontiguous confidential/1.
:- discontiguous confidential_treatment_applies/1.
:- discontiguous conformity_assessment_internal_control/1.
:- discontiguous contains_element/2.
:- discontiguous controller_of/2.
:- discontiguous covered_by_representative_action/1.
:- discontiguous criminal_offence/1.
:- discontiguous criteria_for_designation_systemic_risk/1.
:- discontiguous decision_deadline/2.
:- discontiguous deemed_fulfilled_quality_management_system/1.
:- discontiguous deemed_justified/1.
:- discontiguous deemed_justified_derogation/1.
:- discontiguous delegated_power_scope/1.
:- discontiguous designation_affected/1.
:- discontiguous directive_2019_1937_applies/1.
:- discontiguous directly_applicable/1.
:- discontiguous duly_informed/2.
:- discontiguous duly_reasoned_complaint/1.
:- discontiguous eligible_advisory_forum_member/1.
:- discontiguous empowered_to_adopt_delegated_acts/2.
:- discontiguous empowered_to_amend_annex_iv/1.
:- discontiguous enables_human_oversight/2.
:- discontiguous enters_into_force/1.
:- discontiguous entitled_access_to_file/2.
:- discontiguous entry_into_force/2.
:- discontiguous european_artificial_intelligence_board/1.
:- discontiguous examination_procedure_applies/1.
:- discontiguous exclusive_powers/2.
:- discontiguous exempt_administrative_fines/2.
:- discontiguous exempt_authorised_representative_obligation/1.
:- discontiguous exempt_biometric_transparency/1.
:- discontiguous exempt_deep_fake_disclosure/1.
:- discontiguous exempt_fees/2.
:- discontiguous exempt_from_electronic_instructions/1.
:- discontiguous exempt_high_risk_annex_three/1.
:- discontiguous exempt_liability_insurance/1.
:- discontiguous exempt_monitoring_data/2.
:- discontiguous exempt_scope/1.
:- discontiguous exempt_substantial_modification/1.
:- discontiguous exempt_synthetic_marking/1.
:- discontiguous exempt_technical_and_downstream_documentation/1.
:- discontiguous exempt_text_disclosure/1.
:- discontiguous exempt_transparency_interaction/1.
:- discontiguous fee_requirement_applies/2.
:- discontiguous finding_formal_non_compliance/2.
:- discontiguous formal_non_compliance/2.
:- discontiguous general_purpose_ai_model_provider/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous high_impact_capabilities/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous human_oversight_measure/2.
:- discontiguous in_scope_actor/2.
:- discontiguous independent_from/2.
:- discontiguous involved_in_application/1.
:- discontiguous jurisdiction_to_review_fines/2.
:- discontiguous large_scale_it_system_act/1.
:- discontiguous liable_for_damage/2.
:- discontiguous limited_scope_high_risk_annex_i/1.
:- discontiguous mandate_period/2.
:- discontiguous market_surveillance_authority_for/2.
:- discontiguous market_surveillance_authority_powers/1.
:- discontiguous max_fine_cap/3.
:- discontiguous maximum_extension_period/2.
:- discontiguous maximum_fine/2.
:- discontiguous maximum_fine_gpai_model/2.
:- discontiguous maximum_validity_period/2.
:- discontiguous must_accept/2.
:- discontiguous must_adapt_procedures/2.
:- discontiguous must_adopt/2.
:- discontiguous must_adopt_delegated_acts/2.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_advise/2.
:- discontiguous must_affix/2.
:- discontiguous must_agree/2.
:- discontiguous must_allocate_resources/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_assess/2.
:- discontiguous must_assess_and_mitigate/2.
:- discontiguous must_assess_criterion/2.
:- discontiguous must_assess_impact/2.
:- discontiguous must_assign/2.
:- discontiguous must_assist/2.
:- discontiguous must_assume_responsibility/2.
:- discontiguous must_avoid/2.
:- discontiguous must_bring_into_compliance/2.
:- discontiguous must_carry_out/2.
:- discontiguous must_communicate/2.
:- discontiguous must_complete_assessment/2.
:- discontiguous must_comply/2.
:- discontiguous must_comply_with/2.
:- discontiguous must_comply_with_confidentiality/2.
:- discontiguous must_consider/2.
:- discontiguous must_consult/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_decide/2.
:- discontiguous must_decide_justification/2.
:- discontiguous must_delete/2.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_demonstrate/2.
:- discontiguous must_design_and_develop/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_or_establish/2.
:- discontiguous must_develop/2.
:- discontiguous must_develop_expertise_and_capabilities/2.
:- discontiguous must_direct/2.
:- discontiguous must_discard/2.
:- discontiguous must_disclose/2.
:- discontiguous must_document/2.
:- discontiguous must_document_consent/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_duly_justify/2.
:- discontiguous must_elect/2.
:- discontiguous must_enable/2.
:- discontiguous must_encourage/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_encourage_benchmarks/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidence/2.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_efficient_organisation/2.
:- discontiguous must_ensure_immediate_access/2.
:- discontiguous must_ensure_up_to_date/2.
:- discontiguous must_enter/2.
:- discontiguous must_entrust/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_evaluate/2.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_access/2.
:- discontiguous must_facilitate_standardisation_participation/2.
:- discontiguous must_facilitate_tasks/2.
:- discontiguous must_follow_procedure/2.
:- discontiguous must_give_access/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant/2.
:- discontiguous must_grant_access/2.
:- discontiguous must_handle/2.
:- discontiguous must_have/2.
:- discontiguous must_have_competence/2.
:- discontiguous must_hear/2.
:- discontiguous must_hold/2.
:- discontiguous must_hold_liability_insurance/2.
:- discontiguous must_identify/2.
:- discontiguous must_include/2.
:- discontiguous must_indicate/2.
:- discontiguous must_inform/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_causes/2.
:- discontiguous must_issue/2.
:- discontiguous must_keep/2.
:- discontiguous must_keep_at_disposal/2.
:- discontiguous must_keep_technical_documentation_on_premises/2.
:- discontiguous must_lay_down_rules/2.
:- discontiguous must_maintain/2.
:- discontiguous must_maintain_confidentiality/2.
:- discontiguous must_maintain_information_platform/2.
:- discontiguous must_make_available/2.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_mitigate_or_suspend/2.
:- discontiguous must_mitigate_risk/2.
:- discontiguous must_monitor/2.
:- discontiguous must_monitor_and_evaluate/2.
:- discontiguous must_notify/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise_awareness_and_training/2.
:- discontiguous must_organise_communication_campaigns/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_participate_in_coordination/2.
:- discontiguous must_perform/2.
:- discontiguous must_perform_tasks/2.
:- discontiguous must_prepare/2.
:- discontiguous must_preserve_and_share_files/2.
:- discontiguous must_promote_best_practices_in_procurement/2.
:- discontiguous must_provide/2.
:- discontiguous must_provide_access/2.
:- discontiguous must_provide_communication_channels/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_guidelines/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_priority_access/2.
:- discontiguous must_provide_templates/2.
:- discontiguous must_publish/2.
:- discontiguous must_publish_annual_report/2.
:- discontiguous must_put_in_place/2.
:- discontiguous must_put_in_place_cybersecurity_measures/2.
:- discontiguous must_refuse/2.
:- discontiguous must_register/2.
:- discontiguous must_repeal/2.
:- discontiguous must_report/2.
:- discontiguous must_request/2.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require/2.
:- discontiguous must_require_action/2.
:- discontiguous must_require_corrective_action/2.
:- discontiguous must_require_mitigation/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_restrict_suspend_or_withdraw/2.
:- discontiguous must_safeguard/2.
:- discontiguous must_safeguard_impartiality/2.
:- discontiguous must_satisfy_requirements/2.
:- discontiguous must_specify/2.
:- discontiguous must_specify_by_agreement/2.
:- discontiguous must_stop/2.
:- discontiguous must_submit/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_supply/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_support/2.
:- discontiguous must_suspend/2.
:- discontiguous must_take/2.
:- discontiguous must_take_action/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_provisional_measure/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_terminate/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_transmit/2.
:- discontiguous must_treat_confidential/2.
:- discontiguous must_update/2.
:- discontiguous must_verify/2.
:- discontiguous must_withdraw/2.
:- discontiguous national_competent_authority/1.
:- discontiguous national_level_registration/1.
:- discontiguous notified_body/1.
:- discontiguous objection_period/2.
:- discontiguous objection_within_deadline/2.
:- discontiguous objective_fundamental_rights_protection/1.
:- discontiguous objective_internal_market_improvement/1.
:- discontiguous observer_on_board/1.
:- discontiguous operational_by/2.
:- discontiguous operator/1.
:- discontiguous participates_in_work_of/2.
:- discontiguous permanent_member_of_advisory_forum/1.
:- discontiguous permitted_access/2.
:- discontiguous permitted_access_to_sandbox/2.
:- discontiguous permitted_action_on_biometric_id/2.
:- discontiguous permitted_administrative_fine/2.
:- discontiguous permitted_adopt_common_specifications/2.
:- discontiguous permitted_adopt_delegated_act/2.
:- discontiguous permitted_affix_identification_number/2.
:- discontiguous permitted_allow/2.
:- discontiguous permitted_amendment_by_addition/1.
:- discontiguous permitted_amendment_by_removal/1.
:- discontiguous permitted_application/2.
:- discontiguous permitted_appoint_expert/2.
:- discontiguous permitted_assessment_and_monitoring_by/2.
:- discontiguous permitted_authorisation/2.
:- discontiguous permitted_call_upon/2.
:- discontiguous permitted_combination/2.
:- discontiguous permitted_common_rules/1.
:- discontiguous permitted_conduct_evaluation/2.
:- discontiguous permitted_database_access/2.
:- discontiguous permitted_derogation_authorisation/2.
:- discontiguous permitted_derogation_putting_into_service/2.
:- discontiguous permitted_designate/2.
:- discontiguous permitted_develop_model_terms/2.
:- discontiguous permitted_digital_ce_marking/1.
:- discontiguous permitted_draw_up/2.
:- discontiguous permitted_establish/2.
:- discontiguous permitted_exchange_with_third_country/2.
:- discontiguous permitted_exercise_powers/2.
:- discontiguous permitted_explanation_request/3.
:- discontiguous permitted_extension/2.
:- discontiguous permitted_extension_period/2.
:- discontiguous permitted_guidance/2.
:- discontiguous permitted_impose_fine/2.
:- discontiguous permitted_initial_report/2.
:- discontiguous permitted_initiate_dialogue/2.
:- discontiguous permitted_initiate_structured_dialogue/2.
:- discontiguous permitted_integrate_documentation_and_procedures/2.
:- discontiguous permitted_integration/2.
:- discontiguous permitted_invite/2.
:- discontiguous permitted_limited_adherence/2.
:- discontiguous permitted_lodge_complaint/1.
:- discontiguous permitted_lodge_complaint/2.
:- discontiguous permitted_make_commitments_binding/2.
:- discontiguous permitted_monitoring_action/2.
:- discontiguous permitted_notification/2.
:- discontiguous permitted_participation/2.
:- discontiguous permitted_perform_activities/2.
:- discontiguous permitted_perform_checks/2.
:- discontiguous permitted_prepare/2.
:- discontiguous permitted_present_arguments/2.
:- discontiguous permitted_procedure/2.
:- discontiguous permitted_processing_special_categories/1.
:- discontiguous permitted_qualified_alert/2.
:- discontiguous permitted_real_time_remote_biometric_identification/1.
:- discontiguous permitted_reassess/2.
:- discontiguous permitted_reliance/2.
:- discontiguous permitted_remote_powers/1.
:- discontiguous permitted_request/2.
:- discontiguous permitted_request_access/2.
:- discontiguous permitted_request_documentation/2.
:- discontiguous permitted_request_information_scientific_panel/2.
:- discontiguous permitted_request_measures/2.
:- discontiguous permitted_request_reassessment/2.
:- discontiguous permitted_request_testing/2.
:- discontiguous permitted_require_modification/2.
:- discontiguous permitted_revoke_delegation/2.
:- discontiguous permitted_sandbox_data_processing/2.
:- discontiguous permitted_simplified_compliance/2.
:- discontiguous permitted_simplified_technical_documentation/2.
:- discontiguous permitted_subcontracting_or_subsidiary_activity/2.
:- discontiguous permitted_suspend_or_terminate/2.
:- discontiguous permitted_suspend_restrict_withdraw/2.
:- discontiguous permitted_task/2.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_use/1.
:- discontiguous permitted_use/2.
:- discontiguous permitted_withdrawal/2.
:- discontiguous post_market_monitoring_system/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous powers_to_monitor_and_supervise/2.
:- discontiguous presumed_compliance/2.
:- discontiguous presumed_conformity/2.
:- discontiguous presumed_high_impact_on_internal_market/1.
:- discontiguous presumption_of_conformity/2.
:- discontiguous priority_access_to_sandbox/2.
:- discontiguous procedural_rights_apply/2.
:- discontiguous procedure_applies/2.
:- discontiguous prohibited_activity/2.
:- discontiguous prohibited_ai_practice/1.
:- discontiguous prohibited_conflict_of_interest/1.
:- discontiguous prohibited_conflicting_activity/2.
:- discontiguous prohibited_disclosure/1.
:- discontiguous prohibited_exchange/1.
:- discontiguous prohibited_instruction_taking/1.
:- discontiguous prohibited_investigation/2.
:- discontiguous prohibited_involvement/2.
:- discontiguous prohibited_making_available_on_market/2.
:- discontiguous prohibited_placing_on_market/2.
:- discontiguous prohibited_use/1.
:- discontiguous provenance/2.
:- discontiguous provider/1.
:- discontiguous provider_of_general_purpose_ai_model/1.
:- discontiguous provider_of_general_purpose_ai_model/2.
:- discontiguous provider_of_general_purpose_ai_model_with_systemic_risk/2.
:- discontiguous publicly_available/1.
:- discontiguous qualifying_expert/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.
:- discontiguous regulation_applies_to_operator/2.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous required_accuracy_robustness_cybersecurity/1.
:- discontiguous required_ai_specific_cybersecurity_measures/1.
:- discontiguous required_appeal_procedure/1.
:- discontiguous required_application_for_notification/1.
:- discontiguous required_ce_marking/2.
:- discontiguous required_consideration_of_requirements/1.
:- discontiguous required_cybersecurity_resilience/1.
:- discontiguous required_data_governance/1.
:- discontiguous required_declaration_content/2.
:- discontiguous required_declared_accuracy/1.
:- discontiguous required_establishment/1.
:- discontiguous required_fee_reduction/2.
:- discontiguous required_fundamental_rights_impact_assessment/2.
:- discontiguous required_human_oversight/1.
:- discontiguous required_incident_scope/2.
:- discontiguous required_indication/2.
:- discontiguous required_language/1.
:- discontiguous required_logging_capabilities/2.
:- discontiguous required_mandate_powers/2.
:- discontiguous required_mitigation_feedback_loops/1.
:- discontiguous required_monitoring_collection/2.
:- discontiguous required_new_conformity_assessment/1.
:- discontiguous required_notified_body/2.
:- discontiguous required_qualified_alert/1.
:- discontiguous required_quality_data_sets/1.
:- discontiguous required_quality_management_system/1.
:- discontiguous required_registration_information/2.
:- discontiguous required_reporting_deadline/2.
:- discontiguous required_request_specification/1.
:- discontiguous required_resilience_to_errors/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous required_separation_of_personnel/1.
:- discontiguous required_single_technical_documentation/1.
:- discontiguous required_suspension_or_withdrawal_or_restriction/2.
:- discontiguous required_technical_documentation/1.
:- discontiguous required_technical_documentation/2.
:- discontiguous required_testing/1.
:- discontiguous required_transparency/1.
:- discontiguous required_transparency_information/2.
:- discontiguous restricted_access/1.
:- discontiguous safety_component_ai_system/1.
:- discontiguous satisfies_article_6_paragraph_3_condition/1.
:- discontiguous scope_applies/1.
:- discontiguous secretariat_of_board/1.
:- discontiguous secure_non_public_section/1.
:- discontiguous single_point_of_contact/1.
:- discontiguous standing_subgroup/2.
:- discontiguous subject_matter_scope/2.
:- discontiguous subject_to_fines/2.
:- discontiguous term_of_office/2.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous union_harmonisation_legislation_section_a/1.
:- discontiguous union_harmonisation_legislation_section_b/1.
:- discontiguous valid_authorised_representative_mandate/3.
:- discontiguous valid_certificate/1.
:- discontiguous valid_eu_declaration_of_conformity/2.
:- discontiguous valid_informed_consent/2.
:- discontiguous verifies_design_and_monitoring_consistency/2.
:- discontiguous verifies_quality_management_system/2.
:- discontiguous voluntary_application_requirements/2.

% --- input slots: assert facts against these at runtime ---
:- dynamic accompanied_by_instructions_for_use/1.
:- dynamic achieves_equivalent_level_of_protection/1.
:- dynamic acting_for_or_supporting/2.
:- dynamic adequate_corrective_action_taken/2.
:- dynamic adheres_to/2.
:- dynamic adheres_to_code/2.
:- dynamic adopts_act/2.
:- dynamic adopts_delegated_act/2.
:- dynamic affected_person/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic already_placed_or_serviced/1.
:- dynamic alters_ai_system/1.
:- dynamic annex_1_product_manufacturer/2.
:- dynamic annex_1_section_a_system/1.
:- dynamic annex_3_point_1_a_system/1.
:- dynamic annex_3_point_1_system/1.
:- dynamic annex_3_point_2_system/1.
:- dynamic annex_3_points_2_to_8_system/1.
:- dynamic annex_i_section_b_product_system/1.
:- dynamic annual_turnover/2.
:- dynamic applies_common_specifications/1.
:- dynamic applies_harmonised_standards/1.
:- dynamic approved_code_of_practice/1.
:- dynamic approved_testing/2.
:- dynamic area_of_law_enforcement/1.
:- dynamic area_of_migration_asylum_border_control/1.
:- dynamic arguments_rejected/2.
:- dynamic artistic_or_satirical_work/1.
:- dynamic assessment_elements_changed_or_outdated/2.
:- dynamic assessment_performed/2.
:- dynamic attributed_to_standard_shortcoming/1.
:- dynamic authorisation_refused/2.
:- dynamic authorised_by_competent_authority/1.
:- dynamic authorised_by_law_for_criminal_investigation/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_of/2.
:- dynamic automatic_recording_of_events/1.
:- dynamic automatically_generated_logs/2.
:- dynamic aware_of_risk/2.
:- dynamic aware_of_serious_incident/2.
:- dynamic balanced_selection_of_stakeholders/1.
:- dynamic based_on_accreditation_certificate/1.
:- dynamic based_on_model/2.
:- dynamic based_on_plan/2.
:- dynamic based_on_specific_law/1.
:- dynamic biometric_categorisation_inference/2.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic biometrics_annex_3_1_a/1.
:- dynamic board/1.
:- dynamic board_representative/2.
:- dynamic body_governed_by_public_law/1.
:- dynamic brings_into_compliance/2.
:- dynamic brought_into_conformity/1.
:- dynamic categorises_deducing_sensitive_traits/1.
:- dynamic causal_link_established_or_likely/2.
:- dynamic causal_link_suspected_or_established/2.
:- dynamic ce_marking/1.
:- dynamic certificate/1.
:- dynamic certificate_for_system/2.
:- dynamic certificate_language/2.
:- dynamic certificate_supplement/2.
:- dynamic certified_by_notified_body/1.
:- dynamic certified_under_cybersecurity_scheme/2.
:- dynamic certifying_notified_body/2.
:- dynamic civil_protection_authority/1.
:- dynamic civil_society_organisation/1.
:- dynamic code_of_conduct/1.
:- dynamic code_of_conduct_drawing_up/1.
:- dynamic code_of_practice/1.
:- dynamic commission/1.
:- dynamic commission_considers_unjustified/1.
:- dynamic common_specification/1.
:- dynamic competent_authority/1.
:- dynamic competent_market_surveillance_authority/2.
:- dynamic competent_public_authority/1.
:- dynamic competitor_of/2.
:- dynamic complaint_facts_and_reasons/2.
:- dynamic complaint_point_of_contact/2.
:- dynamic complaint_to_market_surveillance_authority/2.
:- dynamic completed_fundamental_rights_impact_assessment/1.
:- dynamic complies_with/2.
:- dynamic complies_with_chapter_3_section_2/1.
:- dynamic complies_with_financial_services_governance/1.
:- dynamic complies_with_regulation/1.
:- dynamic component_of_large_scale_it_system/1.
:- dynamic concerns_ai_safety_component/2.
:- dynamic concerns_ai_system/1.
:- dynamic concluded_not_high_risk_derogation/1.
:- dynamic confirmed_no_objection/1.
:- dynamic confirms_identity_of_specifically_targeted_individual/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conforms_to_common_specification/2.
:- dynamic conforms_with/2.
:- dynamic considered_contrary_to_union_law/2.
:- dynamic considered_justified/2.
:- dynamic considered_unjustified/2.
:- dynamic considers_not_high_risk/2.
:- dynamic considers_provider_violating_regulation/2.
:- dynamic consulted_relevant_public_authority/2.
:- dynamic contains_ai_system/2.
:- dynamic contains_computational_hardware_and_maintenance_info/1.
:- dynamic contains_harmonisation_legislation_information/1.
:- dynamic contains_human_oversight_measures/1.
:- dynamic contains_information/2.
:- dynamic contains_log_mechanisms_description/1.
:- dynamic contains_minimum_annex_iv_elements/1.
:- dynamic contains_performance_characteristics_and_limitations/1.
:- dynamic contains_predetermined_changes/1.
:- dynamic contains_provider_identity_and_contact/1.
:- dynamic contractual_allocation_otherwise/2.
:- dynamic control_of_logs/2.
:- dynamic controls_input_data/2.
:- dynamic controls_logs/2.
:- dynamic copy_provided_to_subject/2.
:- dynamic corrective_action_ensured_within_deadline/2.
:- dynamic court_of_justice_judicial_capacity/1.
:- dynamic covered_annex_iii_point_5_financial_institution/1.
:- dynamic covered_by_annex_1_legislation/1.
:- dynamic covered_by_annex_one_legislation/1.
:- dynamic covered_by_annex_three/1.
:- dynamic covered_by_union_harmonisation_legislation_annex_i/1.
:- dynamic covers_requirement/2.
:- dynamic covers_union_harmonisation_legislation_annex_i/1.
:- dynamic creates_or_expands_facial_recognition_database_via_untargeted_scraping/1.
:- dynamic credit_scoring_or_creditworthiness_system/1.
:- dynamic criminal_risk_assessment_based_solely_on_profiling/1.
:- dynamic critical_infrastructure/1.
:- dynamic critical_infrastructure_area/1.
:- dynamic critical_infrastructure_disruption/1.
:- dynamic data_protected_and_deleted/1.
:- dynamic data_set/1.
:- dynamic data_sharing_compliant/1.
:- dynamic data_transfer_safeguards_implemented/1.
:- dynamic dated/1.
:- dynamic deadline_missed/2.
:- dynamic death_of_person/1.
:- dynamic decision_taken_on_output/3.
:- dynamic deep_fake/1.
:- dynamic delegated_act/1.
:- dynamic demonstrates_compliance_with_requirements/1.
:- dynamic demonstrates_conformity_with_harmonised_standards/2.
:- dynamic deployer/1.
:- dynamic deployer_cooperation_agreement_concluded/2.
:- dynamic deployer_of/2.
:- dynamic deploys_subliminal_or_manipulative_techniques/1.
:- dynamic designated_competent_authority/2.
:- dynamic designated_representative/2.
:- dynamic designated_under_paragraph_4/1.
:- dynamic detects_decision_patterns/1.
:- dynamic developed_by/2.
:- dynamic develops_or_places/2.
:- dynamic diligent_accurate_objective/1.
:- dynamic direct_connection_with_financial_services/1.
:- dynamic distributor/1.
:- dynamic distributor_of/2.
:- dynamic documentation_insufficient/2.
:- dynamic documentation_under_regulation/1.
:- dynamic documented/1.
:- dynamic documented_written_policies_procedures/1.
:- dynamic doubts_competence_or_requirements/1.
:- dynamic downstream_provider/1.
:- dynamic drawn_up_before_market_placement/1.
:- dynamic duration_compliant/1.
:- dynamic easily_accessible_electronically/1.
:- dynamic easily_understood_by_authorities/2.
:- dynamic economic_interest_in/2.
:- dynamic editorial_responsibility_held/1.
:- dynamic effectively_overseen/1.
:- dynamic elapsed_since_decision/2.
:- dynamic electronic_notification_tool_used/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic empowered_for_coordination/1.
:- dynamic enables_recording_for_operation_monitoring/1.
:- dynamic enables_recording_for_post_market_monitoring/1.
:- dynamic enables_recording_for_risk_identification/1.
:- dynamic enforcement_activity/2.
:- dynamic ensures_equivalent_compliance/2.
:- dynamic equivalent_capabilities_or_impact_decision/1.
:- dynamic established_in_member_state/2.
:- dynamic established_in_third_country/1.
:- dynamic established_in_union/1.
:- dynamic established_or_represented_in_union/1.
:- dynamic established_under_law_of_third_country/1.
:- dynamic established_under_national_law/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic european_commission/1.
:- dynamic european_data_protection_supervisor/1.
:- dynamic evaluated_under_article_79/2.
:- dynamic exception_trade_secret_disclosure/1.
:- dynamic exceptional_reason/1.
:- dynamic exempt_from_explanation/1.
:- dynamic exempt_from_notification/2.
:- dynamic exempt_human_assessment_support/1.
:- dynamic exempt_initial_provider_assistance/2.
:- dynamic exempt_law_enforcement_biometric_labelling/1.
:- dynamic exempt_medical_or_safety_reasons/1.
:- dynamic exempt_two_person_verification/1.
:- dynamic existing_post_market_monitoring_established/1.
:- dynamic expert/1.
:- dynamic explicitly_declares_full_adherence/2.
:- dynamic exploits_vulnerabilities_causing_significant_harm/1.
:- dynamic fails_corrective_measures/1.
:- dynamic fails_to_meet_notification_requirements/1.
:- dynamic fee_for_conformity_assessment/1.
:- dynamic fees_set_in_implementing_act/1.
:- dynamic financial_institution/1.
:- dynamic financial_institution_subject_to_union_financial_services_law/1.
:- dynamic financial_supervisory_authority/1.
:- dynamic first_use/1.
:- dynamic floating_point_operation/1.
:- dynamic free_and_open_source_licence/1.
:- dynamic fulfils_eligibility_and_selection_criteria/2.
:- dynamic fundamental_rights_authority/1.
:- dynamic fundamental_rights_breach/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_or_manipulates_deep_fake/1.
:- dynamic generates_or_manipulates_public_interest_text/1.
:- dynamic generates_synthetic_content/1.
:- dynamic grounds_to_consider_infringement/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_restricted/1.
:- dynamic heard_on_possible_infringement/1.
:- dynamic high_risk_evaluation_finding/2.
:- dynamic human_oversight/1.
:- dynamic impairs_informed_decision_causing_significant_harm/1.
:- dynamic implementing_act_adoption/2.
:- dynamic importer/1.
:- dynamic importer_of/2.
:- dynamic improves_result_of_human_activity/1.
:- dynamic in_union/1.
:- dynamic inadequate_code_of_practice/1.
:- dynamic incident_occurred_in/2.
:- dynamic includes_aspect/2.
:- dynamic independent_from_providers/1.
:- dynamic infers_emotions_in_workplace_or_education/1.
:- dynamic informed/2.
:- dynamic informed_competent_authority/2.
:- dynamic informed_conditions_and_duration/2.
:- dynamic informed_consent/1.
:- dynamic informed_identification_and_contact/2.
:- dynamic informed_nature_and_objectives/2.
:- dynamic informed_reversal_arrangements/2.
:- dynamic informed_rights_and_guarantees/2.
:- dynamic infringement_of_regulation/1.
:- dynamic initial_provider/2.
:- dynamic initial_suspect_identification/1.
:- dynamic input_data/1.
:- dynamic instructed_by_notified_body/2.
:- dynamic instructions_for_use/1.
:- dynamic instructions_include_concise_complete_correct_clear_info/1.
:- dynamic intended_deployer_law_enforcement_or_institution/1.
:- dynamic intended_for_public_authorities/1.
:- dynamic intended_in_annex_3_area/1.
:- dynamic intended_purpose/1.
:- dynamic intentional_misclassification_to_circumvent/2.
:- dynamic intentional_or_negligent_infringement/2.
:- dynamic interaction_obviously_ai/1.
:- dynamic interacts_directly_with_natural_persons/1.
:- dynamic international_law_enforcement_cooperation/1.
:- dynamic involves_notified_body/1.
:- dynamic involves_notified_body/2.
:- dynamic isolated_processing_environment/1.
:- dynamic issuing_body/2.
:- dynamic judicial_authority/1.
:- dynamic judicial_or_administrative_authorisation/1.
:- dynamic kept_up_to_date/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic lawful_data_collection/1.
:- dynamic legal_act_evaluation_of_large_scale_it_system/1.
:- dynamic legal_personality/1.
:- dynamic liability_assumed_by_member_state/1.
:- dynamic linked_enterprise/1.
:- dynamic listed_in_annex_iii/1.
:- dynamic listed_in_annex_iii_point_2/1.
:- dynamic listed_in_annex_iii_sensitive_areas/1.
:- dynamic logs_kept/1.
:- dynamic logs_under_control/2.
:- dynamic maintains_overall_protection_level/1.
:- dynamic makes_or_assists_decisions_on_persons/1.
:- dynamic makes_substantial_modification/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate/3.
:- dynamic mandate_covers_required_tasks/1.
:- dynamic marine_equipment_activity/2.
:- dynamic market_surveillance_authority/1.
:- dynamic medical_device_ai_system/1.
:- dynamic meets_annex_13_criteria/1.
:- dynamic meets_chapter_3_section_2_requirements/1.
:- dynamic meets_condition_art_51_1_a/1.
:- dynamic meets_quality_criteria/1.
:- dynamic meets_requirements/2.
:- dynamic member_state/1.
:- dynamic member_state_directly_responsible/1.
:- dynamic member_state_finding_compliant_risk/2.
:- dynamic member_state_of/2.
:- dynamic microenterprise/1.
:- dynamic modifies_intended_purpose/2.
:- dynamic monitoring_and_response_mechanisms_in_place/1.
:- dynamic narrow_procedural_task/1.
:- dynamic national_accreditation_body/1.
:- dynamic national_authority/1.
:- dynamic national_measure/1.
:- dynamic national_measure_taken/2.
:- dynamic natural_or_legal_person/1.
:- dynamic necessary_and_appropriate/1.
:- dynamic necessary_and_proportionate_for_tasks/2.
:- dynamic necessary_for_chapter_3_section_2/1.
:- dynamic necessary_for_mandate/2.
:- dynamic necessary_to_reflect_state_of_art/1.
:- dynamic no_adverse_effect_on_subjects/1.
:- dynamic no_longer_poses_significant_risk/1.
:- dynamic non_compliance/2.
:- dynamic non_compliance_other_obligations/1.
:- dynamic non_compliance_persists/1.
:- dynamic non_compliance_prohibited_ai_practices/1.
:- dynamic non_compliance_prohibited_practice/1.
:- dynamic non_compliant/1.
:- dynamic non_compliant_with_requirements/1.
:- dynamic non_conforming/1.
:- dynamic non_conforming_or_falsified/2.
:- dynamic non_personal_data/1.
:- dynamic notification_details_included/1.
:- dynamic notified/1.
:- dynamic notified_by/2.
:- dynamic notifying_authority/1.
:- dynamic objected_to/1.
:- dynamic objection_raised/1.
:- dynamic objection_raised/2.
:- dynamic objective_detailed_new_reasons/1.
:- dynamic objective_locate_or_identify_suspect_of_serious_crime/1.
:- dynamic objective_military_defence_national_security/1.
:- dynamic objective_prevent_imminent_threat_or_terrorist_attack/1.
:- dynamic objective_search_for_victims_or_missing_persons/1.
:- dynamic obtained_informed_consent/2.
:- dynamic obtained_pursuant_to_art_53/2.
:- dynamic obtained_pursuant_to_article_55/1.
:- dynamic offers_commitments/3.
:- dynamic open_source_licensed/1.
:- dynamic open_source_public_component/1.
:- dynamic originating_member_state/2.
:- dynamic output_used_in_union/1.
:- dynamic outputs_reversible_and_disregardable/1.
:- dynamic particular_expertise_in_ai/1.
:- dynamic partner_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_conformity_assessment/2.
:- dynamic performs_profiling_of_natural_persons/1.
:- dynamic period_elapsed/2.
:- dynamic permitted_use_under_law/1.
:- dynamic personal_data/1.
:- dynamic personal_non_professional_activity/1.
:- dynamic physical_affixing_possible_and_warranted/1.
:- dynamic placed_on_market_before/2.
:- dynamic places_on_market/2.
:- dynamic places_with_own_trademark/2.
:- dynamic placing_on_market/1.
:- dynamic poses_concrete_identifiable_risk_at_union_level/1.
:- dynamic poses_equivalent_or_greater_risk/1.
:- dynamic poses_significant_risk_of_harm/1.
:- dynamic post_market_monitoring_plan/1.
:- dynamic pre_determined_learning_change/1.
:- dynamic pre_market_research_testing_development/1.
:- dynamic preparatory_task_to_annex_three_assessment/1.
:- dynamic presents_risk/1.
:- dynamic presents_risk/2.
:- dynamic presents_risk_article_79/1.
:- dynamic presents_risk_despite_compliance/1.
:- dynamic presents_systemic_risk/1.
:- dynamic prior_consultation_held/2.
:- dynamic private_entity_providing_public_services/1.
:- dynamic process_description_and_results_kept/1.
:- dynamic processes_personal_data/1.
:- dynamic product/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic project_summary_published/1.
:- dynamic promotional_material_mentions_ce_marking/2.
:- dynamic proportionate_to_nature_and_risks/2.
:- dynamic prospective_deployer/1.
:- dynamic prospective_provider/1.
:- dynamic provided_digitally/1.
:- dynamic provider_agreed/2.
:- dynamic provider_contrary_to_regulation/2.
:- dynamic provider_of/2.
:- dynamic provides_clear_comprehensive_assessment_info/1.
:- dynamic provides_model/2.
:- dynamic public_authority/1.
:- dynamic public_deployer/1.
:- dynamic public_interest_area/1.
:- dynamic public_reporting_of_criminal_offence/1.
:- dynamic publication_conditions_fulfilled/1.
:- dynamic publicly_accessible_space/1.
:- dynamic publicly_available_parameters/1.
:- dynamic published/1.
:- dynamic published_in_oj/1.
:- dynamic pursues_empowerment/2.
:- dynamic put_into_service_before/2.
:- dynamic puts_into_service/2.
:- dynamic puts_name_or_trademark_on/2.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert_scientific_panel/1.
:- dynamic quality_management_system/1.
:- dynamic railway_interoperability_act/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_consider_high_risk/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/2.
:- dynamic reasons_to_consider_non_conforming/2.
:- dynamic reassessment_performed/1.
:- dynamic recall_of_ai_system/1.
:- dynamic records_matched_input_data/1.
:- dynamic records_period_of_use/1.
:- dynamic records_reference_database/1.
:- dynamic records_verification_persons/1.
:- dynamic references_article_98_paragraph_2/1.
:- dynamic registered_in_database/2.
:- dynamic registered_in_eu_database/1.
:- dynamic registered_testing/2.
:- dynamic remote/1.
:- dynamic reporting_person/1.
:- dynamic represents_actors/2.
:- dynamic request_conditions_fulfilled/1.
:- dynamic request_from_commission/2.
:- dynamic requested_advice/2.
:- dynamic requested_derogation_authorisation/2.
:- dynamic requested_extension/2.
:- dynamic required_mitigation/2.
:- dynamic required_third_party_conformity_assessment/1.
:- dynamic requires_data_protection_impact_assessment/1.
:- dynamic requires_fundamental_rights_impact_assessment/1.
:- dynamic right_otherwise_provided/2.
:- dynamic risk/1.
:- dynamic risk_assessment_or_pricing_life_health_insurance_system/1.
:- dynamic risk_management_system/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of/2.
:- dynamic sandbox_plan/1.
:- dynamic satisfies_requirements/2.
:- dynamic scientific_panel/1.
:- dynamic scientific_panel_expert/1.
:- dynamic scientific_research_and_development/1.
:- dynamic sectoral_group_of_notified_bodies/1.
:- dynamic security_equipment_measure/1.
:- dynamic sensitive_authority/1.
:- dynamic sensitive_operational_data/1.
:- dynamic sensitive_security_high_risk_ai_system/1.
:- dynamic serious_incident/1.
:- dynamic significant_adverse_impact/2.
:- dynamic significant_design_change_after/2.
:- dynamic single_contact_point/2.
:- dynamic single_eu_declaration_of_conformity/1.
:- dynamic small_or_medium_enterprise/1.
:- dynamic small_or_microenterprise/1.
:- dynamic sme/1.
:- dynamic social_scoring_leading_to_detriment/1.
:- dynamic source_code_access_condition_exhausted/1.
:- dynamic source_code_access_condition_necessary/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic stakeholder_with_recognised_expertise_in_ai/1.
:- dynamic standard_editing_assistive_function/1.
:- dynamic subcontractor_or_subsidiary/2.
:- dynamic subject/1.
:- dynamic subject_protection_and_consent_met/1.
:- dynamic subject_to_equivalent_reporting/1.
:- dynamic subject_to_harmonisation_legislation/2.
:- dynamic subject_to_other_ce_marking_union_law/1.
:- dynamic subject_to_other_union_harmonisation_legislation/1.
:- dynamic submitted_plan/2.
:- dynamic substantial_modification/1.
:- dynamic substantiated_concern_systemic_risk/1.
:- dynamic sufficiently_transparent_operation/1.
:- dynamic supplied_misleading_info/2.
:- dynamic supplies_component_to/2.
:- dynamic system_covered_by_annex_1/1.
:- dynamic system_covered_by_annex_3/1.
:- dynamic system_of_provider/2.
:- dynamic system_use_not_restricted_to_national_territory/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_conditions_met/1.
:- dynamic systemic_risk_model/1.
:- dynamic takes_adequate_corrective_action/2.
:- dynamic takes_into_account_setting_characteristics/1.
:- dynamic target_ai_system/2.
:- dynamic technical_documentation/1.
:- dynamic technical_documentation_contains/2.
:- dynamic testing_data/1.
:- dynamic testing_data_set/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_outside_sandbox/1.
:- dynamic third_country/1.
:- dynamic trained_and_tested_on_setting_data/1.
:- dynamic training_computation_flops/2.
:- dynamic training_data/1.
:- dynamic training_data_set/1.
:- dynamic transparency_risk_system/1.
:- dynamic under_control/2.
:- dynamic undertaking/1.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_institution_body_office_agency/1.
:- dynamic union_institution_body_office_or_agency/1.
:- dynamic unnotified_systemic_risk/1.
:- dynamic urgency_applies/1.
:- dynamic used_for/2.
:- dynamic used_for_law_enforcement/1.
:- dynamic used_in_publicly_accessible_space/1.
:- dynamic uses_model_training_techniques/1.
:- dynamic uses_simplified_documentation_form/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic verified_and_confirmed_by_two_persons/1.
:- dynamic verified_authorised_representative/2.
:- dynamic verified_ce_marking_and_declaration/2.
:- dynamic verified_conformity_assessment/2.
:- dynamic verified_technical_documentation/2.
:- dynamic vulnerable_groups_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_jurisdiction/2.

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
declared(objective_internal_market_improvement/1, 'regulation pursues internal market improvement and trustworthy AI uptake', 'celex:32024R1689/oj#art_1').
declared(objective_fundamental_rights_protection/1, 'regulation protects health, safety, and fundamental rights', 'celex:32024R1689/oj#art_1').
declared(subject_matter_scope/2, 'regulation establishes specific category of rules or measures', 'celex:32024R1689/oj#art_1').
objective_internal_market_improvement(ai_act).
objective_fundamental_rights_protection(ai_act).
subject_matter_scope(ai_act, harmonised_rules(market_and_use, ai_system)).
subject_matter_scope(ai_act, prohibitions(ai_practices)).
subject_matter_scope(ai_act, high_risk_requirements(operator)).
subject_matter_scope(ai_act, transparency_rules(ai_system)).
subject_matter_scope(ai_act, harmonised_rules(placing_on_market, general_purpose_ai_model)).
subject_matter_scope(ai_act, rules(market_surveillance_and_governance)).
subject_matter_scope(ai_act, innovation_support_measures(smes_and_startups)).
provenance(objective_internal_market_improvement/1, 'celex:32024R1689/oj#art_1').
provenance(objective_fundamental_rights_protection/1, 'celex:32024R1689/oj#art_1').
provenance(subject_matter_scope/2, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(scope_applies/1, 'entity, system, or activity falling within the scope of the AI Act', 'celex:32024R1689/oj#art_2').
declared(exempt_scope/1, 'matter or entity excluded from the scope of the AI Act', 'celex:32024R1689/oj#art_2').
declared(in_union/1, 'entity or location established, located, or having effect within the European Union', 'celex:32024R1689/oj#art_2').
declared(third_country/1, 'entity or location situated outside the European Union', 'celex:32024R1689/oj#art_2').
declared(output_used_in_union/1, 'output produced by an AI system is used within the Union', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'natural or legal person affected by an AI system', 'celex:32024R1689/oj#art_2').
declared(places_on_market/2, 'actor places an AI system or model on the market', 'celex:32024R1689/oj#art_2').
declared(puts_into_service/2, 'actor puts an AI system into service', 'celex:32024R1689/oj#art_2').
declared(places_with_own_trademark/2, 'product manufacturer places AI system with product under own name or trademark', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_2').
declared(annex_i_section_b_product_system/1, 'AI system related to products covered by Union harmonisation legislation in Annex I Section B', 'celex:32024R1689/oj#art_2').
declared(objective_military_defence_national_security/1, 'system or use is exclusively for military, defence, or national security purposes', 'celex:32024R1689/oj#art_2').
declared(international_law_enforcement_cooperation/1, 'use in framework of international cooperation for law enforcement or judicial cooperation with adequate safeguards', 'celex:32024R1689/oj#art_2').
declared(scientific_research_and_development/1, 'specifically developed and put into service solely for scientific research and development', 'celex:32024R1689/oj#art_2').
declared(pre_market_research_testing_development/1, 'research, testing, or development activity prior to placing on market or putting into service other than real-world testing', 'celex:32024R1689/oj#art_2').
declared(personal_non_professional_activity/1, 'natural person using an AI system purely in personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(open_source_licensed/1, 'AI system or model released under free and open-source licence', 'celex:32024R1689/oj#art_2').
declared(prohibited_ai_practice/1, 'AI practice prohibited under Article 5', 'celex:32024R1689/oj#art_2').
declared(transparency_risk_system/1, 'AI system subject to transparency obligations under Article 50', 'celex:32024R1689/oj#art_2').
declared(limited_scope_high_risk_annex_i/1, 'limited articles apply to high-risk systems under Annex I Section B', 'celex:32024R1689/oj#art_2').
scope_applies(P) :-
    provider(P),
    places_on_market(P, S),
    (ai_system(S) ; general_purpose_ai_model(S)),
    in_union(S).
scope_applies(P) :-
    provider(P),
    puts_into_service(P, S),
    ai_system(S),
    in_union(S).
scope_applies(D) :-
    deployer(D),
    in_union(D).
scope_applies(P) :-
    provider(P),
    third_country(P),
    output_used_in_union(P).
scope_applies(D) :-
    deployer(D),
    third_country(D),
    output_used_in_union(D).
scope_applies(I) :-
    importer(I).
scope_applies(D) :-
    distributor(D).
scope_applies(M) :-
    product_manufacturer(M),
    places_with_own_trademark(M, _Product).
scope_applies(R) :-
    authorised_representative(R).
scope_applies(P) :-
    affected_person(P),
    in_union(P).
limited_scope_high_risk_annex_i(S) :-
    high_risk_ai_system(S),
    annex_i_section_b_product_system(S).
exempt_scope(S) :-
    objective_military_defence_national_security(S).
exempt_scope(E) :-
    international_law_enforcement_cooperation(E).
exempt_scope(S) :-
    scientific_research_and_development(S).
exempt_scope(A) :-
    pre_market_research_testing_development(A),
    \+ testing_in_real_world_conditions(A).
exempt_scope(D) :-
    deployer(D),
    personal_non_professional_activity(D).
exempt_scope(S) :-
    open_source_licensed(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_ai_practice(S),
    \+ transparency_risk_system(S).
provenance(scope_applies/1, 'celex:32024R1689/oj#art_2').
provenance(limited_scope_high_risk_annex_i/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_scope/1, 'celex:32024R1689/oj#art_2').
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
declared(ai_literacy_measures_target/1, 'target subject to AI literacy measures', 'celex:32024R1689/oj#art_4').
must_ensure(Provider, ai_literacy_level(staff_and_operators(Provider))) :-
    provider(Provider).
must_ensure(Deployer, ai_literacy_level(staff_and_operators(Deployer))) :-
    deployer(Deployer).
ai_literacy_measures_target(ai_literacy_level(staff_and_operators(Actor))) :-
    provider(Actor).
ai_literacy_measures_target(ai_literacy_level(staff_and_operators(Actor))) :-
    deployer(Actor).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').
provenance(ai_literacy_measures_target/1, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_ai_practice/1, 'AI practice prohibited under Article 5', 'celex:32024R1689/oj#art_5').
declared(deploys_subliminal_or_manipulative_techniques/1, 'system deploys subliminal, manipulative, or deceptive techniques', 'celex:32024R1689/oj#art_5').
declared(impairs_informed_decision_causing_significant_harm/1, 'materially distorts behaviour impairing informed decision and causing significant harm', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerabilities_causing_significant_harm/1, 'exploits vulnerabilities of a person/group causing significant harm', 'celex:32024R1689/oj#art_5').
declared(social_scoring_leading_to_detriment/1, 'evaluates/classifies persons over time based on social behaviour leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(criminal_risk_assessment_based_solely_on_profiling/1, 'assesses risk of criminal offence based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(exempt_human_assessment_support/1, 'exempt AI system supporting human assessment of criminal involvement based on objective verifiable facts', 'celex:32024R1689/oj#art_5').
declared(creates_or_expands_facial_recognition_database_via_untargeted_scraping/1, 'creates or expands facial recognition databases via untargeted scraping of internet or CCTV', 'celex:32024R1689/oj#art_5').
declared(infers_emotions_in_workplace_or_education/1, 'infers emotions in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(exempt_medical_or_safety_reasons/1, 'exempt use for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(categorises_deducing_sensitive_traits/1, 'categorises persons based on biometric data to deduce sensitive traits', 'celex:32024R1689/oj#art_5').
declared(exempt_law_enforcement_biometric_labelling/1, 'exempt labelling or filtering of lawfully acquired biometric data for law enforcement', 'celex:32024R1689/oj#art_5').
declared(used_in_publicly_accessible_space/1, 'AI system used in a publicly accessible space', 'celex:32024R1689/oj#art_5').
declared(used_for_law_enforcement/1, 'AI system used for the purposes of law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_identification/1, 'use of real-time remote biometric identification strictly necessary for permitted objectives', 'celex:32024R1689/oj#art_5').
declared(objective_search_for_victims_or_missing_persons/1, 'targeted search for specific victims of abduction/trafficking or missing persons', 'celex:32024R1689/oj#art_5').
declared(objective_prevent_imminent_threat_or_terrorist_attack/1, 'prevention of specific substantial imminent threat to life/safety or terrorist attack', 'celex:32024R1689/oj#art_5').
declared(objective_locate_or_identify_suspect_of_serious_crime/1, 'localisation/identification of suspect of Annex II offence punishable by at least four years', 'celex:32024R1689/oj#art_5').
declared(confirms_identity_of_specifically_targeted_individual/1, 'deployed only to confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(authorised_by_competent_authority/1, 'prior authorisation granted by judicial or independent administrative authority', 'celex:32024R1689/oj#art_5').
declared(completed_fundamental_rights_impact_assessment/1, 'fundamental rights impact assessment completed under Article 27', 'celex:32024R1689/oj#art_5').
declared(registered_in_eu_database/1, 'system registered in EU database under Article 49', 'celex:32024R1689/oj#art_5').
declared(urgency_applies/1, 'duly justified situation of urgency', 'celex:32024R1689/oj#art_5').
declared(must_notify/2, 'actor must notify body of system use', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'actor must submit annual report on use to recipient', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/2, 'actor must publish annual report on use', 'celex:32024R1689/oj#art_5').
prohibited_ai_practice(S) :-
    ai_system(S),
    deploys_subliminal_or_manipulative_techniques(S),
    impairs_informed_decision_causing_significant_harm(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    exploits_vulnerabilities_causing_significant_harm(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    social_scoring_leading_to_detriment(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    criminal_risk_assessment_based_solely_on_profiling(S),
    \+ exempt_human_assessment_support(S).
prohibited_ai_practice(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database_via_untargeted_scraping(S).
prohibited_ai_practice(S) :-
    emotion_recognition_system(S),
    infers_emotions_in_workplace_or_education(S),
    \+ exempt_medical_or_safety_reasons(S).
prohibited_ai_practice(S) :-
    biometric_categorisation_system(S),
    categorises_deducing_sensitive_traits(S),
    \+ exempt_law_enforcement_biometric_labelling(S).
prohibited_ai_practice(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    used_for_law_enforcement(S),
    \+ permitted_real_time_remote_biometric_identification(S).
permitted_real_time_remote_biometric_identification(S) :-
    confirms_identity_of_specifically_targeted_individual(S),
    completed_fundamental_rights_impact_assessment(S),
    (   registered_in_eu_database(S)
    ;   urgency_applies(S)
    ),
    (   authorised_by_competent_authority(S)
    ;   urgency_applies(S)
    ),
    (   objective_search_for_victims_or_missing_persons(S)
    ;   objective_prevent_imminent_threat_or_terrorist_attack(S)
    ;   objective_locate_or_identify_suspect_of_serious_crime(S)
    ).
must_notify(Deployer, notification(use_of_real_time_remote_biometric_identification, System)) :-
    deployer(Deployer),
    real_time_remote_biometric_identification_system(System),
    used_in_publicly_accessible_space(System),
    used_for_law_enforcement(System).
must_submit_annual_report(Authority, commission) :-
    market_surveillance_authority(Authority).
must_publish_annual_report(ai_office, real_time_remote_biometric_identification).
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(covered_by_annex_one_legislation/1, 'Product or AI system is covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_6').
declared(safety_component_of/2, 'AI system is intended to be used as a safety component of a product', 'celex:32024R1689/oj#art_6').
declared(required_third_party_conformity_assessment/1, 'Product or AI system is required to undergo third-party conformity assessment under Annex I legislation', 'celex:32024R1689/oj#art_6').
declared(covered_by_annex_three/1, 'AI system referred to in Annex III use cases', 'celex:32024R1689/oj#art_6').
declared(exempt_high_risk_annex_three/1, 'AI system referred to in Annex III exempted from high-risk classification by Article 6(3)', 'celex:32024R1689/oj#art_6').
declared(poses_significant_risk_of_harm/1, 'AI system poses a significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6').
declared(performs_profiling_of_natural_persons/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(satisfies_article_6_paragraph_3_condition/1, 'AI system fulfills one of the specific procedural/task conditions of Article 6(3)', 'celex:32024R1689/oj#art_6').
declared(narrow_procedural_task/1, 'AI system is intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(improves_result_of_human_activity/1, 'AI system is intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(detects_decision_patterns/1, 'AI system is intended to detect decision-making patterns without replacing human assessment', 'celex:32024R1689/oj#art_6').
declared(preparatory_task_to_annex_three_assessment/1, 'AI system is intended to perform a preparatory task to an assessment for Annex III use cases', 'celex:32024R1689/oj#art_6').
declared(considers_not_high_risk/2, 'Provider considers an Annex III AI system is not high-risk', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of(S, Product),
    covered_by_annex_one_legislation(Product),
    required_third_party_conformity_assessment(Product).
high_risk_ai_system(S) :-
    ai_system(S),
    covered_by_annex_one_legislation(S),
    required_third_party_conformity_assessment(S).
high_risk_ai_system(S) :-
    ai_system(S),
    covered_by_annex_three(S),
    \+ exempt_high_risk_annex_three(S).
exempt_high_risk_annex_three(S) :-
    ai_system(S),
    covered_by_annex_three(S),
    satisfies_article_6_paragraph_3_condition(S),
    \+ poses_significant_risk_of_harm(S),
    \+ performs_profiling_of_natural_persons(S).
satisfies_article_6_paragraph_3_condition(S) :-
    narrow_procedural_task(S).
satisfies_article_6_paragraph_3_condition(S) :-
    improves_result_of_human_activity(S).
satisfies_article_6_paragraph_3_condition(S) :-
    detects_decision_patterns(S).
satisfies_article_6_paragraph_3_condition(S) :-
    preparatory_task_to_annex_three_assessment(S).
must_document(Provider, assessment(System)) :-
    provider(Provider),
    considers_not_high_risk(Provider, System),
    covered_by_annex_three(System).
must_register(Provider, System) :-
    provider(Provider),
    considers_not_high_risk(Provider, System),
    covered_by_annex_three(System).
must_provide(Provider, documentation(assessment(System))) :-
    provider(Provider),
    considers_not_high_risk(Provider, System),
    covered_by_annex_three(System),
    requested_by(documentation(assessment(System)), Authority),
    national_competent_authority(Authority).
must_provide_guidelines(commission, guidelines(article_6, deadline(date(2026, 2, 2)))).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_annex_three/1, 'celex:32024R1689/oj#art_6').
provenance(satisfies_article_6_paragraph_3_condition/1, 'celex:32024R1689/oj#art_6').
provenance(must_document/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_guidelines/2, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

% ==== celex:32024R1689/oj#art_7 ====
declared(permitted_amendment_by_addition/1, 'Amendment to Annex III by adding or modifying high-risk AI system use-cases is permitted', 'celex:32024R1689/oj#art_7').
declared(permitted_amendment_by_removal/1, 'Amendment to Annex III by removing high-risk AI systems is permitted', 'celex:32024R1689/oj#art_7').
declared(intended_in_annex_3_area/1, 'AI system is intended to be used in any area listed in Annex III', 'celex:32024R1689/oj#art_7').
declared(poses_equivalent_or_greater_risk/1, 'AI system poses risk of harm to health/safety or adverse impact on fundamental rights equivalent to or greater than Annex III systems', 'celex:32024R1689/oj#art_7').
declared(no_longer_poses_significant_risk/1, 'High-risk AI system no longer poses significant risks to fundamental rights, health or safety', 'celex:32024R1689/oj#art_7').
declared(maintains_overall_protection_level/1, 'Deletion of high-risk AI system does not decrease overall level of protection under Union law', 'celex:32024R1689/oj#art_7').
declared(must_assess_criterion/2, 'Commission must assess criterion when evaluating risk equivalence for Annex III amendment', 'celex:32024R1689/oj#art_7').
permitted_amendment_by_addition(System) :-
    ai_system(System),
    intended_in_annex_3_area(System),
    poses_equivalent_or_greater_risk(System).
must_assess_criterion(commission, intended_purpose).
must_assess_criterion(commission, extent_of_use).
must_assess_criterion(commission, nature_and_amount_of_data_processed).
must_assess_criterion(commission, autonomy_and_human_override_possibility).
must_assess_criterion(commission, historical_harm_or_significant_concerns).
must_assess_criterion(commission, potential_extent_and_intensity_of_harm).
must_assess_criterion(commission, dependency_on_outcome).
must_assess_criterion(commission, imbalance_of_power_or_vulnerability).
must_assess_criterion(commission, reversibility_or_corrigibility_of_outcome).
must_assess_criterion(commission, magnitude_and_likelihood_of_benefit).
must_assess_criterion(commission, effective_redress_measures_in_union_law).
must_assess_criterion(commission, effective_prevention_measures_in_union_law).
permitted_amendment_by_removal(System) :-
    ai_system(System),
    no_longer_poses_significant_risk(System),
    maintains_overall_protection_level(System).
provenance(permitted_amendment_by_addition/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_amendment_by_removal/1, 'celex:32024R1689/oj#art_7').
provenance(must_assess_criterion/2, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_8').
declared(contains_ai_system/2, 'product contains an AI system', 'celex:32024R1689/oj#art_8').
declared(subject_to_harmonisation_legislation/2, 'product or AI system is subject to specific Union harmonisation legislation', 'celex:32024R1689/oj#art_8').
declared(product/1, 'entity is a product', 'celex:32024R1689/oj#art_8').
declared(permitted_integrate_documentation_and_procedures/2, 'provider is permitted to integrate documentation and procedures for AI system into existing product compliance procedures', 'celex:32024R1689/oj#art_8').
must_comply(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S).
must_comply(Provider, product_harmonisation_legislation(Product)) :-
    provider(Provider),
    product(Product),
    contains_ai_system(Product, System),
    ai_system(System),
    subject_to_harmonisation_legislation(Product, annex_1_section_a).
permitted_integrate_documentation_and_procedures(Provider, product_integration(System, Product)) :-
    provider(Provider),
    high_risk_ai_system(System),
    product(Product),
    contains_ai_system(Product, System),
    subject_to_harmonisation_legislation(Product, annex_1_section_a).
provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integrate_documentation_and_procedures/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_9').
declared(risk_management_system/1, 'systematic iterative process managing risks of an AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/1, 'requirement to establish, implement, document and maintain a risk management system', 'celex:32024R1689/oj#art_9').
declared(required_testing/1, 'requirement that high-risk AI system be tested before market placement or service', 'celex:32024R1689/oj#art_9').
declared(permitted_testing_in_real_world_conditions/1, 'testing procedures permitted in real-world conditions under art 60', 'celex:32024R1689/oj#art_9').
declared(must_consider/2, 'actor obliged to consider specified impacts or aspects', 'celex:32024R1689/oj#art_9').
declared(permitted_combination/2, 'actor permitted to combine risk management processes across Union law', 'celex:32024R1689/oj#art_9').
required_risk_management_system(S) :-
    high_risk_ai_system(S).
required_testing(S) :-
    high_risk_ai_system(S).
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).
must_consider(Provider, adverse_impact(S, vulnerable_groups)) :-
    provider(Provider),
    high_risk_ai_system(S).
permitted_combination(Provider, risk_management(S, union_law)) :-
    provider(Provider),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_testing/1, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination/2, 'celex:32024R1689/oj#art_9').
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
declared(high_risk_ai_system/1, 'high-risk AI system pursuant to Chapter III Section 1', 'celex:32024R1689/oj#art_10').
declared(uses_model_training_techniques/1, 'AI system making use of techniques involving training of AI models with data', 'celex:32024R1689/oj#art_10').
declared(data_set/1, 'data set used for AI system development or testing', 'celex:32024R1689/oj#art_10').
declared(testing_data_set/1, 'separate data set used for testing', 'celex:32024R1689/oj#art_10').
declared(training_data_set/1, 'separate data set used for training', 'celex:32024R1689/oj#art_10').
declared(complies_with_data_governance/1, 'data set complies with the data governance and quality criteria of Article 10', 'celex:32024R1689/oj#art_10').
declared(meets_quality_criteria/1, 'data set meets relevance, representativeness, error-free and completeness criteria', 'celex:32024R1689/oj#art_10').
declared(takes_into_account_setting_characteristics/1, 'data set takes into account specific setting characteristics required by intended purpose', 'celex:32024R1689/oj#art_10').
declared(used_for/2, 'data set is used for the development or testing of an AI system', 'celex:32024R1689/oj#art_10').
required_data_governance(D) :-
    data_set(D),
    used_for(D, S),
    high_risk_ai_system(S),
    uses_model_training_techniques(S),
    ( training_data_set(D)
    ; validation_data_set(D)
    ; testing_data_set(D)
    ).
required_data_governance(D) :-
    data_set(D),
    used_for(D, S),
    high_risk_ai_system(S),
    \+ uses_model_training_techniques(S),
    testing_data_set(D).
complies_with_data_governance(D) :-
    required_data_governance(D),
    appropriate_data_governance_practices(D),
    meets_quality_criteria(D),
    takes_into_account_setting_characteristics(D).
permitted_processing_special_categories(P) :-
    provider(P),
    bias_detection_correction_necessary(P),
    cannot_fulfill_with_other_data(P),
    technical_limitations_applied(P),
    access_control_measures_applied(P),
    not_transferred_to_other_parties(P),
    deleted_after_correction_or_retention(P),
    records_include_necessity_reasons(P).
required_quality_data_sets(S) :-
    high_risk_ai_system(S),
    used_for(D, S),
    required_data_governance(D),
    complies_with_data_governance(D).
provenance(required_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(complies_with_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/1, 'celex:32024R1689/oj#art_10').
provenance(required_quality_data_sets/1, 'celex:32024R1689/oj#art_10').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_11').
declared(sme/1, 'small and medium-sized enterprise, including start-up', 'celex:32024R1689/oj#art_11').
declared(small_or_microenterprise/1, 'small or microenterprise', 'celex:32024R1689/oj#art_11').
declared(required_technical_documentation/1, 'technical documentation required for an AI system', 'celex:32024R1689/oj#art_11').
declared(drawn_up_before_market_placement/1, 'documentation is drawn up before market placement or putting into service', 'celex:32024R1689/oj#art_11').
declared(kept_up_to_date/1, 'documentation is kept up to date', 'celex:32024R1689/oj#art_11').
declared(demonstrates_compliance_with_requirements/1, 'documentation demonstrates compliance with high-risk AI requirements', 'celex:32024R1689/oj#art_11').
declared(provides_clear_comprehensive_assessment_info/1, 'documentation provides necessary compliance assessment information clearly and comprehensively', 'celex:32024R1689/oj#art_11').
declared(contains_minimum_annex_iv_elements/1, 'documentation contains at minimum the elements of Annex IV', 'celex:32024R1689/oj#art_11').
declared(permitted_simplified_technical_documentation/2, 'provider permitted to provide technical documentation in a simplified manner', 'celex:32024R1689/oj#art_11').
declared(uses_simplified_documentation_form/1, 'documentation uses the simplified technical documentation form', 'celex:32024R1689/oj#art_11').
declared(covered_by_union_harmonisation_legislation_annex_i/1, 'AI system related to a product covered by Annex I Section A legislation', 'celex:32024R1689/oj#art_11').
declared(required_single_technical_documentation/1, 'single set of technical documentation combining AI and product legislation info', 'celex:32024R1689/oj#art_11').
declared(contains_harmonisation_legislation_information/1, 'documentation contains information required under relevant Union harmonisation acts', 'celex:32024R1689/oj#art_11').
required_technical_documentation(S) :-
    high_risk_ai_system(S),
    drawn_up_before_market_placement(S),
    kept_up_to_date(S),
    demonstrates_compliance_with_requirements(S),
    provides_clear_comprehensive_assessment_info(S),
    contains_minimum_annex_iv_elements(S).
permitted_simplified_technical_documentation(Provider, S) :-
    provider(Provider),
    sme(Provider),
    high_risk_ai_system(S).
must_accept(Body, simplified_form(S)) :-
    notified_body(Body),
    high_risk_ai_system(S),
    uses_simplified_documentation_form(S).
required_single_technical_documentation(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation_annex_i(S),
    required_technical_documentation(S),
    contains_harmonisation_legislation_information(S).
empowered_to_amend_annex_iv(commission).
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept/2, 'celex:32024R1689/oj#art_11').
provenance(required_single_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(empowered_to_amend_annex_iv/1, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_12').
declared(annex_3_point_1_a_system/1, 'high-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_12').
declared(required_logging_capabilities/2, 'logging capabilities required of an AI system', 'celex:32024R1689/oj#art_12').
declared(automatic_recording_of_events/1, 'system technically allows automatic recording of events over its lifetime', 'celex:32024R1689/oj#art_12').
declared(enables_recording_for_risk_identification/1, 'logging enables recording relevant to identify situations resulting in risk or substantial modification', 'celex:32024R1689/oj#art_12').
declared(enables_recording_for_post_market_monitoring/1, 'logging enables recording relevant to facilitate post-market monitoring', 'celex:32024R1689/oj#art_12').
declared(enables_recording_for_operation_monitoring/1, 'logging enables recording relevant to monitor operation under Article 26(5)', 'celex:32024R1689/oj#art_12').
declared(records_period_of_use/1, 'logging records start date/time and end date/time of each use', 'celex:32024R1689/oj#art_12').
declared(records_reference_database/1, 'logging records reference database against which input data has been checked', 'celex:32024R1689/oj#art_12').
declared(records_matched_input_data/1, 'logging records input data for which search led to a match', 'celex:32024R1689/oj#art_12').
declared(records_verification_persons/1, 'logging records identification of natural persons involved in result verification', 'celex:32024R1689/oj#art_12').
required_logging_capabilities(S, automatic_recording_of_events) :-
    high_risk_ai_system(S),
    \+ automatic_recording_of_events(S).
required_logging_capabilities(S, traceability_for_risk_identification) :-
    high_risk_ai_system(S),
    \+ enables_recording_for_risk_identification(S).
required_logging_capabilities(S, traceability_for_post_market_monitoring) :-
    high_risk_ai_system(S),
    \+ enables_recording_for_post_market_monitoring(S).
required_logging_capabilities(S, traceability_for_operation_monitoring) :-
    high_risk_ai_system(S),
    \+ enables_recording_for_operation_monitoring(S).
required_logging_capabilities(S, record_period_of_use) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_period_of_use(S).
required_logging_capabilities(S, record_reference_database) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_reference_database(S).
required_logging_capabilities(S, record_matched_input_data) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_matched_input_data(S).
required_logging_capabilities(S, record_verification_persons) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ records_verification_persons(S).
provenance(required_logging_capabilities/2, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_13').
declared(sufficiently_transparent_operation/1, 'operation is sufficiently transparent to enable deployers to interpret output and use appropriately', 'celex:32024R1689/oj#art_13').
declared(accompanied_by_instructions_for_use/1, 'accompanied by instructions for use in an appropriate digital format or otherwise', 'celex:32024R1689/oj#art_13').
declared(instructions_include_concise_complete_correct_clear_info/1, 'instructions include concise, complete, correct and clear information relevant, accessible and comprehensible to deployers', 'celex:32024R1689/oj#art_13').
declared(contains_provider_identity_and_contact/1, 'instructions contain identity and contact details of provider and authorised representative', 'celex:32024R1689/oj#art_13').
declared(contains_performance_characteristics_and_limitations/1, 'instructions contain characteristics, capabilities and limitations of performance', 'celex:32024R1689/oj#art_13').
declared(contains_predetermined_changes/1, 'instructions contain pre-determined changes to the system and performance from initial conformity assessment', 'celex:32024R1689/oj#art_13').
declared(contains_human_oversight_measures/1, 'instructions contain human oversight measures and technical measures facilitating interpretation', 'celex:32024R1689/oj#art_13').
declared(contains_computational_hardware_and_maintenance_info/1, 'instructions contain computational and hardware resources, expected lifetime, and maintenance measures', 'celex:32024R1689/oj#art_13').
declared(contains_log_mechanisms_description/1, 'instructions contain description of mechanisms to collect, store and interpret logs', 'celex:32024R1689/oj#art_13').
declared(compliant_instructions_for_use/1, 'instructions for use satisfy content requirements of Article 13(3)', 'celex:32024R1689/oj#art_13').
declared(required_transparency/1, 'requirement of transparency and provision of information under Article 13 is met', 'celex:32024R1689/oj#art_13').
compliant_instructions_for_use(I) :-
    instructions_for_use(I),
    contains_provider_identity_and_contact(I),
    contains_performance_characteristics_and_limitations(I),
    contains_predetermined_changes(I),
    contains_human_oversight_measures(I),
    contains_computational_hardware_and_maintenance_info(I),
    contains_log_mechanisms_description(I).
required_transparency(S) :-
    high_risk_ai_system(S),
    sufficiently_transparent_operation(S),
    accompanied_by_instructions_for_use(S),
    instructions_include_concise_complete_correct_clear_info(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent_operation/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_include_concise_complete_correct_clear_info/1, 'celex:32024R1689/oj#art_13').
provenance(contains_provider_identity_and_contact/1, 'celex:32024R1689/oj#art_13').
provenance(contains_performance_characteristics_and_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(contains_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(contains_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(contains_computational_hardware_and_maintenance_info/1, 'celex:32024R1689/oj#art_13').
provenance(contains_log_mechanisms_description/1, 'celex:32024R1689/oj#art_13').
provenance(compliant_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_14').
declared(required_human_oversight/1, 'High-risk AI system requires effective human oversight during use', 'celex:32024R1689/oj#art_14').
declared(human_oversight_measure/2, 'Oversight measure established for a high-risk AI system', 'celex:32024R1689/oj#art_14').
declared(enables_human_oversight/2, 'System enables an oversight capability for assigned natural persons', 'celex:32024R1689/oj#art_14').
declared(biometrics_annex_3_1_a/1, 'High-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_14').
declared(exempt_two_person_verification/1, 'System exempt from two-person verification requirement under Union or national law', 'celex:32024R1689/oj#art_14').
declared(verified_and_confirmed_by_two_persons/1, 'Identification output verified and confirmed by at least two competent persons', 'celex:32024R1689/oj#art_14').
declared(permitted_action_on_biometric_id/2, 'Deployer is permitted to act or decide based on biometric identification', 'celex:32024R1689/oj#art_14').
declared(must_design_and_develop/2, 'Provider must design and develop system with human oversight capability', 'celex:32024R1689/oj#art_14').
must_design_and_develop(Provider, human_oversight(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
required_human_oversight(System) :-
    high_risk_ai_system(System).
human_oversight_measure(System, built_in(Provider)) :-
    high_risk_ai_system(System),
    provider(Provider).
human_oversight_measure(System, deployer_implementable(Provider)) :-
    high_risk_ai_system(System),
    provider(Provider).
enables_human_oversight(System, understand_and_monitor) :-
    high_risk_ai_system(System).
enables_human_oversight(System, avoid_automation_bias) :-
    high_risk_ai_system(System).
enables_human_oversight(System, correctly_interpret_output) :-
    high_risk_ai_system(System).
enables_human_oversight(System, disregard_override_or_reverse) :-
    high_risk_ai_system(System).
enables_human_oversight(System, intervene_or_interrupt) :-
    high_risk_ai_system(System).
permitted_action_on_biometric_id(Deployer, action(System, Output)) :-
    deployer(Deployer),
    biometrics_annex_3_1_a(System),
    verified_and_confirmed_by_two_persons(Output).
permitted_action_on_biometric_id(Deployer, action(System, _Output)) :-
    deployer(Deployer),
    biometrics_annex_3_1_a(System),
    exempt_two_person_verification(System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_14').
provenance(required_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(enables_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(biometrics_annex_3_1_a/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(verified_and_confirmed_by_two_persons/1, 'celex:32024R1689/oj#art_14').
provenance(permitted_action_on_biometric_id/2, 'celex:32024R1689/oj#art_14').
provenance(must_design_and_develop/2, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_15').
declared(required_accuracy_robustness_cybersecurity/1, 'system achieves appropriate level of accuracy, robustness, cybersecurity consistently throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(must_encourage_benchmarks/2, 'actor encourages development of benchmarks and measurement methodologies', 'celex:32024R1689/oj#art_15').
declared(required_declared_accuracy/1, 'accuracy levels and metrics declared in accompanying instructions for use', 'celex:32024R1689/oj#art_15').
declared(required_resilience_to_errors/1, 'system is resilient regarding errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(required_mitigation_feedback_loops/1, 'measures to eliminate or reduce risk of biased feedback loops', 'celex:32024R1689/oj#art_15').
declared(required_cybersecurity_resilience/1, 'resilient against attempts by unauthorised third parties to alter use, outputs or performance', 'celex:32024R1689/oj#art_15').
declared(required_ai_specific_cybersecurity_measures/1, 'measures addressing AI specific vulnerabilities such as poisoning, adversarial examples, and flaws', 'celex:32024R1689/oj#art_15').
required_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S).
must_encourage_benchmarks(commission, benchmarks_and_measurement_methodologies).
required_declared_accuracy(S) :-
    high_risk_ai_system(S).
required_resilience_to_errors(S) :-
    high_risk_ai_system(S).
required_mitigation_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S).
required_cybersecurity_resilience(S) :-
    high_risk_ai_system(S).
required_ai_specific_cybersecurity_measures(S) :-
    high_risk_ai_system(S).
provenance(required_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_benchmarks/2, 'celex:32024R1689/oj#art_15').
provenance(required_declared_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_resilience_to_errors/1, 'celex:32024R1689/oj#art_15').
provenance(required_mitigation_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_resilience/1, 'celex:32024R1689/oj#art_15').
provenance(required_ai_specific_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_16').
declared(provider_of/2, 'provider of a given AI system', 'celex:32024R1689/oj#art_16').
declared(control_of_logs/2, 'provider has control over logs of an AI system', 'celex:32024R1689/oj#art_16').
declared(reasoned_request/2, 'authority makes a reasoned request to an actor', 'celex:32024R1689/oj#art_16').
must_ensure(Provider, compliance(System, chapter_iii_section_2)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_indicate(Provider, provider_details(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_have(Provider, quality_management_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_keep(Provider, technical_documentation(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_keep(Provider, automatically_generated_logs(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    control_of_logs(Provider, System).
must_ensure(Provider, conformity_assessment_procedure(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_draw_up(Provider, eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_affix(Provider, ce_marking(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, registration_obligations(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_take(Provider, corrective_actions(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, information(corrective_actions(System))) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_demonstrate(Provider, conformity(System, chapter_iii_section_2)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, Provider).
must_ensure(Provider, compliance(System, accessibility_requirements)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_16').
provenance(must_have/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
provenance(must_take/2, 'celex:32024R1689/oj#art_16').
provenance(must_provide/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').

% ==== celex:32024R1689/oj#art_17 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_17').
declared(quality_management_system/1, 'quality management system put in place by a provider', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'entity that is a financial institution', 'celex:32024R1689/oj#art_17').
declared(complies_with_financial_services_governance/1, 'entity complies with rules on internal governance under Union financial services law', 'celex:32024R1689/oj#art_17').
declared(system_of_provider/2, 'relation between an AI system and its provider', 'celex:32024R1689/oj#art_17').
declared(includes_aspect/2, 'system includes a specific mandated aspect', 'celex:32024R1689/oj#art_17').
declared(documented_written_policies_procedures/1, 'system is documented in systematic and orderly written policies, procedures and instructions', 'celex:32024R1689/oj#art_17').
declared(deemed_fulfilled_quality_management_system/1, 'quality management system requirement is deemed fulfilled', 'celex:32024R1689/oj#art_17').
must_put_in_place(Provider, quality_management_system(System)) :-
    provider(Provider),
    system_of_provider(System, Provider),
    high_risk_ai_system(System).
required_quality_management_system(QMS) :-
    quality_management_system(QMS),
    documented_written_policies_procedures(QMS),
    includes_aspect(QMS, regulatory_compliance_strategy),
    includes_aspect(QMS, design_control_and_verification),
    includes_aspect(QMS, development_quality_control),
    includes_aspect(QMS, examination_test_validation_procedures),
    includes_aspect(QMS, technical_specifications_and_standards),
    includes_aspect(QMS, data_management_systems_procedures),
    includes_aspect(QMS, risk_management_system),
    includes_aspect(QMS, post_market_monitoring_system),
    includes_aspect(QMS, serious_incident_reporting_procedures),
    includes_aspect(QMS, communication_handling),
    includes_aspect(QMS, record_keeping_systems),
    includes_aspect(QMS, resource_management),
    includes_aspect(QMS, accountability_framework).
permitted_integration(Provider, sectoral_quality_management_system) :-
    provider(Provider),
    system_of_provider(System, Provider),
    high_risk_ai_system(System).
deemed_fulfilled_quality_management_system(Provider) :-
    provider(Provider),
    financial_institution(Provider),
    complies_with_financial_services_governance(Provider),
    must_put_in_place(Provider, risk_management_system),
    must_put_in_place(Provider, post_market_monitoring_system),
    must_put_in_place(Provider, serious_incident_reporting_procedures).
provenance(must_put_in_place/2, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(permitted_integration/2, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_quality_management_system/1, 'celex:32024R1689/oj#art_17').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_18').
declared(financial_institution/1, 'provider is a financial institution under Union law', 'celex:32024R1689/oj#art_18').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_18').

% ==== celex:32024R1689/oj#art_19 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_19').
declared(automatically_generated_logs/2, 'logs automatically generated by an AI system', 'celex:32024R1689/oj#art_19').
declared(under_control/2, 'an object is under the control of an actor', 'celex:32024R1689/oj#art_19').
declared(financial_institution_subject_to_union_financial_services_law/1, 'financial institution subject to internal governance requirements under Union financial services law', 'celex:32024R1689/oj#art_19').
must_keep(Provider, logs(Logs, System, period(months(6)))) :-
    provider(Provider),
    high_risk_ai_system(System),
    automatically_generated_logs(Logs, System),
    under_control(Logs, Provider).
must_maintain(Provider, documentation(Logs, under_financial_services_law)) :-
    provider(Provider),
    financial_institution_subject_to_union_financial_services_law(Provider),
    high_risk_ai_system(System),
    automatically_generated_logs(Logs, System).
provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_20').
declared(non_conforming/1, 'AI system not in conformity with this Regulation', 'celex:32024R1689/oj#art_20').
declared(reasons_to_consider_non_conforming/2, 'provider considers or has reason to consider system non-conforming', 'celex:32024R1689/oj#art_20').
declared(places_on_market/2, 'provider placed AI system on the market', 'celex:32024R1689/oj#art_20').
declared(puts_into_service/2, 'provider put AI system into service', 'celex:32024R1689/oj#art_20').
declared(must_take_corrective_action/2, 'provider must immediately take corrective actions regarding AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform/2, 'actor must inform recipient about specified subject matter', 'celex:32024R1689/oj#art_20').
declared(presents_risk/1, 'AI system presents a risk within the meaning of Art. 79(1)', 'celex:32024R1689/oj#art_20').
declared(aware_of_risk/2, 'provider becomes aware of a risk presented by AI system', 'celex:32024R1689/oj#art_20').
declared(must_investigate_causes/2, 'provider must immediately investigate the causes of risk', 'celex:32024R1689/oj#art_20').
declared(distributor_of/2, 'distributor of an AI system', 'celex:32024R1689/oj#art_20').
declared(deployer_of/2, 'deployer of an AI system', 'celex:32024R1689/oj#art_20').
declared(authorised_representative_of/2, 'authorised representative for an AI system or provider', 'celex:32024R1689/oj#art_20').
declared(importer_of/2, 'importer of an AI system', 'celex:32024R1689/oj#art_20').
declared(competent_market_surveillance_authority/2, 'market surveillance authority competent for AI system', 'celex:32024R1689/oj#art_20').
declared(certifying_notified_body/2, 'notified body that issued a certificate for AI system under Art. 44', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, corrective_action(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System).
must_inform(Provider, information(Distributor, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    distributor_of(Distributor, System).
must_inform(Provider, information(Deployer, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    deployer_of(Deployer, System).
must_inform(Provider, information(Representative, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    authorised_representative_of(Representative, Provider).
must_inform(Provider, information(Importer, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    importer_of(Importer, System).
must_investigate_causes(Provider, risk(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    presents_risk(System),
    aware_of_risk(Provider, System).
must_inform(Provider, information(Authority, details(System, non_compliance, corrective_actions))) :-
    provider(Provider),
    high_risk_ai_system(System),
    presents_risk(System),
    aware_of_risk(Provider, System),
    competent_market_surveillance_authority(Authority, System).
must_inform(Provider, information(Body, details(System, non_compliance, corrective_actions))) :-
    provider(Provider),
    high_risk_ai_system(System),
    presents_risk(System),
    aware_of_risk(Provider, System),
    certifying_notified_body(Body, System).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_21').
declared(competent_authority/1, 'competent public authority', 'celex:32024R1689/oj#art_21').
declared(reasoned_request/2, 'authority makes a reasoned request to an actor', 'celex:32024R1689/oj#art_21').
declared(logs_under_control/2, 'provider has control over logs of an AI system', 'celex:32024R1689/oj#art_21').
must_provide(Provider, information_and_documentation(Authority, System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, Provider).
must_give_access(Provider, logs(Authority, System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, Provider),
    logs_under_control(Provider, System).
must_comply_with_confidentiality(Authority, information_obtained(System)) :-
    competent_authority(Authority),
    high_risk_ai_system(System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_21').
provenance(competent_authority/1, 'celex:32024R1689/oj#art_21').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_comply_with_confidentiality/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_22').
declared(established_in_third_country/1, 'entity established in a third country', 'celex:32024R1689/oj#art_22').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_22').
declared(mandate_covers_required_tasks/1, 'written mandate covers all statutory tasks', 'celex:32024R1689/oj#art_22').
declared(mandate/3, 'written mandate between provider and authorised representative', 'celex:32024R1689/oj#art_22').
declared(considers_provider_violating_regulation/2, 'representative considers provider to act contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(valid_authorised_representative_mandate/3, 'valid appointment and mandate under Article 22', 'celex:32024R1689/oj#art_22').
must_appoint(Provider, authorised_representative(Rep, System)) :-
    provider(Provider),
    established_in_third_country(Provider),
    high_risk_ai_system(System),
    authorised_representative(Rep),
    established_in_union(Rep).
must_enable(Provider, authorised_representative(Rep, Mandate)) :-
    provider(Provider),
    authorised_representative(Rep),
    mandate(Provider, Rep, Mandate).
must_perform(Rep, tasks(Mandate)) :-
    authorised_representative(Rep),
    mandate(_Provider, Rep, Mandate).
must_provide(Rep, copy_of_mandate(Authority)) :-
    authorised_representative(Rep),
    market_surveillance_authority(Authority).
must_keep_at_disposal(Rep, documentation(System, period(years(10)))) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    mandate(_Provider, Rep, mandate_for(System)).
must_provide(Rep, compliance_documentation(System, Authority)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_cooperate(Rep, competent_authority(Authority, System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_register(Rep, system(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).
must_ensure(Rep, registration_info_correct(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).
must_terminate(Rep, mandate(Provider)) :-
    authorised_representative(Rep),
    provider(Provider),
    mandate(Provider, Rep, _Mandate),
    considers_provider_violating_regulation(Rep, Provider).
must_inform(Rep, termination(Provider, Authority)) :-
    authorised_representative(Rep),
    provider(Provider),
    considers_provider_violating_regulation(Rep, Provider),
    market_surveillance_authority(Authority).
must_inform(Rep, termination(Provider, Body)) :-
    authorised_representative(Rep),
    provider(Provider),
    considers_provider_violating_regulation(Rep, Provider),
    notified_body(Body).
valid_authorised_representative_mandate(Provider, Rep, Mandate) :-
    mandate(Provider, Rep, Mandate),
    mandate_covers_required_tasks(Mandate).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_register/2, 'celex:32024R1689/oj#art_22').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').
provenance(valid_authorised_representative_mandate/3, 'celex:32024R1689/oj#art_22').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_23').
declared(verified_conformity_assessment/2, 'importer verified relevant conformity assessment carried out by provider', 'celex:32024R1689/oj#art_23').
declared(verified_technical_documentation/2, 'importer verified technical documentation drawn up by provider', 'celex:32024R1689/oj#art_23').
declared(verified_ce_marking_and_declaration/2, 'importer verified CE marking, EU declaration of conformity, and instructions for use', 'celex:32024R1689/oj#art_23').
declared(verified_authorised_representative/2, 'importer verified provider appointed authorised representative', 'celex:32024R1689/oj#art_23').
declared(non_conforming_or_falsified/2, 'importer has sufficient reason to consider system non-conforming or falsified', 'celex:32024R1689/oj#art_23').
declared(brought_into_conformity/1, 'system has been brought into conformity', 'celex:32024R1689/oj#art_23').
declared(presents_risk_article_79/1, 'AI system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_23').
declared(prohibited_placing_on_market/2, 'operator is prohibited from placing system on the market', 'celex:32024R1689/oj#art_23').
must_ensure(Importer, conformity(System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    verified_conformity_assessment(Importer, System),
    verified_technical_documentation(Importer, System),
    verified_ce_marking_and_declaration(Importer, System),
    verified_authorised_representative(Importer, System).
prohibited_placing_on_market(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    \+ brought_into_conformity(System).
must_inform(Importer, risk_information(System, Provider)) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    presents_risk_article_79(System),
    provider(Provider).
must_inform(Importer, risk_information(System, AuthRep)) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    presents_risk_article_79(System),
    authorised_representative(AuthRep).
must_inform(Importer, risk_information(System, Authority)) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    presents_risk_article_79(System),
    market_surveillance_authority(Authority).
must_indicate(Importer, contact_details(System)) :-
    importer(Importer),
    high_risk_ai_system(System).
must_ensure(Importer, safe_storage_and_transport(System)) :-
    importer(Importer),
    high_risk_ai_system(System).
must_keep(Importer, documentation(System, period(years(10), after(market_placement_or_service)))) :-
    importer(Importer),
    high_risk_ai_system(System).
must_provide(Importer, documentation_demonstrating_conformity(System, Authority)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_ensure(Importer, technical_documentation_available(System, Authority)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_cooperate(Importer, actions(Authority, System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(verified_conformity_assessment/2, 'celex:32024R1689/oj#art_23').
provenance(verified_technical_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(verified_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(verified_authorised_representative/2, 'celex:32024R1689/oj#art_23').
provenance(non_conforming_or_falsified/2, 'celex:32024R1689/oj#art_23').
provenance(brought_into_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(presents_risk_article_79/1, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').

% ==== celex:32024R1689/oj#art_24 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_24').
declared(non_compliant_with_requirements/1, 'AI system not in conformity with Chapter III Section 2', 'celex:32024R1689/oj#art_24').
declared(presents_risk_article_79/1, 'AI system presents a risk within Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(reasoned_request/2, 'authority makes a reasoned request to an actor', 'celex:32024R1689/oj#art_24').
declared(competent_authority/1, 'competent national or relevant authority', 'celex:32024R1689/oj#art_24').
declared(prohibited_making_available_on_market/2, 'distributor is prohibited from making AI system available on market', 'celex:32024R1689/oj#art_24').
declared(must_verify/2, 'distributor must verify certain compliance conditions before making available', 'celex:32024R1689/oj#art_24').
declared(must_inform/2, 'distributor must inform specified party about non-conformity or risk', 'celex:32024R1689/oj#art_24').
declared(must_ensure/2, 'distributor must ensure conditions or corrective actions', 'celex:32024R1689/oj#art_24').
declared(must_take_action/2, 'distributor must take corrective actions', 'celex:32024R1689/oj#art_24').
declared(must_provide/2, 'distributor must provide information and documentation to authority', 'celex:32024R1689/oj#art_24').
declared(must_cooperate/2, 'distributor must cooperate with authority', 'celex:32024R1689/oj#art_24').
must_verify(Distributor, verification_requirements(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).
prohibited_making_available_on_market(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    non_compliant_with_requirements(System).
must_inform(Distributor, risk_provider_or_importer(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk_article_79(System).
must_ensure(Distributor, compliance_during_storage_and_transport(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).
must_take_action(Distributor, corrective_action(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    non_compliant_with_requirements(System).
must_inform(Distributor, risk_and_corrective_actions(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk_article_79(System).
must_provide(Distributor, documentation_to(Authority, System)) :-
    distributor(Distributor),
    competent_authority(Authority),
    reasoned_request(Authority, Distributor),
    high_risk_ai_system(System).
must_cooperate(Distributor, Authority) :-
    distributor(Distributor),
    competent_authority(Authority).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_24').
provenance(non_compliant_with_requirements/1, 'celex:32024R1689/oj#art_24').
provenance(presents_risk_article_79/1, 'celex:32024R1689/oj#art_24').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_24').
provenance(competent_authority/1, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_available_on_market/2, 'celex:32024R1689/oj#art_24').
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_24').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_25').
declared(already_placed_or_serviced/1, 'AI system already placed on market or put into service', 'celex:32024R1689/oj#art_25').
declared(puts_name_or_trademark_on/2, 'Entity puts name or trademark on an AI system', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification/2, 'Entity makes substantial modification to an AI system', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose/2, 'Entity modifies intended purpose of an AI system', 'celex:32024R1689/oj#art_25').
declared(contractual_allocation_otherwise/2, 'Contractual arrangements allocate obligations otherwise', 'celex:32024R1689/oj#art_25').
declared(initial_provider/2, 'Initial provider that placed AI system on market or put into service', 'celex:32024R1689/oj#art_25').
declared(exempt_initial_provider_assistance/2, 'Initial provider clearly specified AI system not to be changed into high-risk', 'celex:32024R1689/oj#art_25').
declared(annex_1_product_manufacturer/2, 'Manufacturer of product covered by Annex I Union harmonisation legislation', 'celex:32024R1689/oj#art_25').
declared(supplies_component_to/2, 'Third party supplies AI system, tool, service, component or process to provider', 'celex:32024R1689/oj#art_25').
declared(open_source_public_component/1, 'Component made accessible to public under free and open-source licence other than GPAI model', 'celex:32024R1689/oj#art_25').
provider(Entity) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    puts_name_or_trademark_on(Entity, System),
    \+ contractual_allocation_otherwise(Entity, System).
provider(Entity) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    makes_substantial_modification(Entity, System).
provider(Entity) :-
    \+ high_risk_ai_system(OldSystem),
    already_placed_or_serviced(OldSystem),
    modifies_intended_purpose(Entity, OldSystem),
    high_risk_ai_system(OldSystem).
must_comply(Entity, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    puts_name_or_trademark_on(Entity, System),
    \+ contractual_allocation_otherwise(Entity, System).
must_comply(Entity, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    makes_substantial_modification(Entity, System).
must_comply(Entity, obligations_article_16(OldSystem)) :-
    \+ high_risk_ai_system(OldSystem),
    already_placed_or_serviced(OldSystem),
    modifies_intended_purpose(Entity, OldSystem),
    high_risk_ai_system(OldSystem).
must_cooperate(InitialProvider, assistance_to(NewProvider, System)) :-
    initial_provider(InitialProvider, System),
    provider(NewProvider),
    NewProvider \= InitialProvider,
    \+ exempt_initial_provider_assistance(InitialProvider, System).
provider(Manufacturer) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(together(System, Product)),
    puts_name_or_trademark_on(Manufacturer, System).
provider(Manufacturer) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(Product),
    putting_into_service(System),
    puts_name_or_trademark_on(Manufacturer, System).
must_comply(Manufacturer, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(together(System, Product)),
    puts_name_or_trademark_on(Manufacturer, System).
must_comply(Manufacturer, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(Product),
    putting_into_service(System),
    puts_name_or_trademark_on(Manufacturer, System).
must_specify_by_agreement(parties(Provider, ThirdParty), support_agreement(System, Component)) :-
    provider(Provider),
    high_risk_ai_system(System),
    supplies_component_to(ThirdParty, Provider),
    \+ open_source_public_component(Component).
permitted_develop_model_terms(ai_office, model_terms_for_value_chain_contracts).
provenance(provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_comply/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(permitted_develop_model_terms/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_26').
declared(human_oversight/1, 'oversight exercised by natural persons', 'celex:32024R1689/oj#art_26').
declared(public_authority/1, 'public authority or Union institution, body, office or agency', 'celex:32024R1689/oj#art_26').
declared(employer/1, 'entity employing workers', 'celex:32024R1689/oj#art_26').
declared(controls_input_data/2, 'deployer exercises control over input data for an AI system', 'celex:32024R1689/oj#art_26').
declared(controls_logs/2, 'deployer exercises control over logs generated by an AI system', 'celex:32024R1689/oj#art_26').
declared(presents_risk/2, 'system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_26').
declared(registered_in_database/2, 'system is registered in the EU database', 'celex:32024R1689/oj#art_26').
declared(makes_or_assists_decisions_on_persons/1, 'system makes or assists in making decisions relating to natural persons', 'celex:32024R1689/oj#art_26').
declared(judicial_or_administrative_authorisation/1, 'authorisation granted by a judicial or binding administrative authority', 'celex:32024R1689/oj#art_26').
declared(initial_suspect_identification/1, 'initial identification of a potential suspect based on objective and verifiable facts directly linked to the offence', 'celex:32024R1689/oj#art_26').
declared(prohibited_use/1, 'deployment or use prohibited under the regulation', 'celex:32024R1689/oj#art_26').
declared(permitted_use/1, 'deployment or use permitted under conditions', 'celex:32024R1689/oj#art_26').
must_ensure(Deployer, technical_and_organisational_measures(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_assign(Deployer, human_oversight(NaturalPersons, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    human_oversight(NaturalPersons).
must_ensure(Deployer, relevant_and_representative_input_data(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_input_data(Deployer, System).
must_monitor(Deployer, operation(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform(Deployer, risk(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    presents_risk(Deployer, System).
must_suspend(Deployer, use(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    presents_risk(Deployer, System).
must_inform(Deployer, serious_incident(Incident, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    serious_incident(Incident).
must_keep(Deployer, logs(System, period(months(6)))) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_logs(Deployer, System).
must_inform(Deployer, workers(System)) :-
    deployer(Deployer),
    employer(Deployer),
    high_risk_ai_system(System).
must_register(Deployer, registration(System)) :-
    deployer(Deployer),
    public_authority(Deployer),
    high_risk_ai_system(System).
prohibited_use(use_of_unregistered_system(Deployer, System)) :-
    deployer(Deployer),
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_database(Deployer, System).
must_inform(Deployer, unregistered(System)) :-
    deployer(Deployer),
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_database(Deployer, System).
permitted_use(post_remote_biometric_id(Deployer, System, Investigation)) :-
    initial_suspect_identification(Investigation),
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
must_request(Deployer, authorisation(System, Investigation)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    \+ initial_suspect_identification(Investigation).
must_stop(Deployer, use(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    \+ judicial_or_administrative_authorisation(System).
must_delete(Deployer, personal_data(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    \+ judicial_or_administrative_authorisation(System).
must_document(Deployer, police_file(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
must_submit(Deployer, annual_reports(post_remote_biometric_identification_system)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
must_inform(Deployer, natural_persons(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    makes_or_assists_decisions_on_persons(System).
must_cooperate(Deployer, competent_authorities(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_26').
provenance(human_oversight/1, 'celex:32024R1689/oj#art_26').
provenance(public_authority/1, 'celex:32024R1689/oj#art_26').
provenance(employer/1, 'celex:32024R1689/oj#art_26').
provenance(controls_input_data/2, 'celex:32024R1689/oj#art_26').
provenance(controls_logs/2, 'celex:32024R1689/oj#art_26').
provenance(presents_risk/2, 'celex:32024R1689/oj#art_26').
provenance(registered_in_database/2, 'celex:32024R1689/oj#art_26').
provenance(makes_or_assists_decisions_on_persons/1, 'celex:32024R1689/oj#art_26').
provenance(judicial_or_administrative_authorisation/1, 'celex:32024R1689/oj#art_26').
provenance(initial_suspect_identification/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_use/1, 'celex:32024R1689/oj#art_26').
provenance(permitted_use/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep/2, 'celex:32024R1689/oj#art_26').
provenance(must_register/2, 'celex:32024R1689/oj#art_26').
provenance(must_request/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop/2, 'celex:32024R1689/oj#art_26').
provenance(must_delete/2, 'celex:32024R1689/oj#art_26').
provenance(must_document/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit/2, 'celex:32024R1689/oj#art_26').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_26').
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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_27').
declared(body_governed_by_public_law/1, 'entity governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_providing_public_services/1, 'private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(critical_infrastructure_area/1, 'AI system intended to be used in critical infrastructure area under Annex III point 2', 'celex:32024R1689/oj#art_27').
declared(credit_scoring_or_creditworthiness_system/1, 'system under Annex III point 5(b) for credit scoring or creditworthiness assessment', 'celex:32024R1689/oj#art_27').
declared(risk_assessment_or_pricing_life_health_insurance_system/1, 'system under Annex III point 5(c) for risk assessment and pricing in life and health insurance', 'celex:32024R1689/oj#art_27').
declared(required_fundamental_rights_impact_assessment/2, 'deployer is required to perform a fundamental rights impact assessment for the AI system', 'celex:32024R1689/oj#art_27').
declared(first_use/1, 'the first use of an AI system', 'celex:32024R1689/oj#art_27').
declared(assessment_elements_changed_or_outdated/2, 'elements of fundamental rights impact assessment changed or no longer up to date', 'celex:32024R1689/oj#art_27').
declared(assessment_performed/2, 'fundamental rights impact assessment has been performed by deployer for system', 'celex:32024R1689/oj#art_27').
declared(exempt_from_notification/2, 'deployer is exempt from notifying assessment results under Article 46(1)', 'celex:32024R1689/oj#art_27').
required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    body_governed_by_public_law(Deployer),
    \+ critical_infrastructure_area(System).
required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    private_entity_providing_public_services(Deployer),
    \+ critical_infrastructure_area(System).
required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    credit_scoring_or_creditworthiness_system(System).
required_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    risk_assessment_or_pricing_life_health_insurance_system(System).
must_perform(Deployer, assessment(fundamental_rights_impact, System)) :-
    required_fundamental_rights_impact_assessment(Deployer, System),
    first_use(System).
must_update(Deployer, assessment(fundamental_rights_impact, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    assessment_elements_changed_or_outdated(Deployer, System).
must_notify(Deployer, results(assessment(fundamental_rights_impact, System), market_surveillance_authority)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    assessment_performed(Deployer, System),
    \+ exempt_from_notification(Deployer, System).
must_develop(ai_office, template(questionnaire, fundamental_rights_impact_assessment)).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(critical_infrastructure_area/1, 'celex:32024R1689/oj#art_27').
provenance(credit_scoring_or_creditworthiness_system/1, 'celex:32024R1689/oj#art_27').
provenance(risk_assessment_or_pricing_life_health_insurance_system/1, 'celex:32024R1689/oj#art_27').
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(first_use/1, 'celex:32024R1689/oj#art_27').
provenance(assessment_elements_changed_or_outdated/2, 'celex:32024R1689/oj#art_27').
provenance(assessment_performed/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/2, 'celex:32024R1689/oj#art_27').
provenance(must_perform/2, 'celex:32024R1689/oj#art_27').
provenance(must_update/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop/2, 'celex:32024R1689/oj#art_27').
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
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_28').
declared(national_accreditation_body/1, 'national accreditation body under Regulation 765/2008', 'celex:32024R1689/oj#art_28').
declared(permitted_assessment_and_monitoring_by/2, 'Member State may decide assessment and monitoring carried out by body', 'celex:32024R1689/oj#art_28').
declared(must_designate_or_establish/2, 'Member State must designate or establish notifying authority', 'celex:32024R1689/oj#art_28').
declared(must_develop/2, 'authority must develop procedures in cooperation', 'celex:32024R1689/oj#art_28').
declared(must_safeguard/2, 'authority must safeguard objectivity, impartiality or confidentiality', 'celex:32024R1689/oj#art_28').
declared(prohibited_conflict_of_interest/1, 'notifying authority must avoid conflict of interest with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(required_separation_of_personnel/1, 'decision-makers must be different from assessors of conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(prohibited_activity/2, 'notifying authority is prohibited from offering or providing activity', 'celex:32024R1689/oj#art_28').
declared(must_have/2, 'authority must have adequate competent personnel at its disposal', 'celex:32024R1689/oj#art_28').
must_designate_or_establish(MS, notifying_authority(procedures_for_conformity_assessment_bodies)) :-
    member_state(MS).
must_develop(NA, procedures_in_cooperation_with_all_member_states) :-
    notifying_authority(NA).
permitted_assessment_and_monitoring_by(MS, NAB) :-
    member_state(MS),
    national_accreditation_body(NAB).
prohibited_conflict_of_interest(NA) :-
    notifying_authority(NA).
must_safeguard(NA, objectivity_and_impartiality) :-
    notifying_authority(NA).
required_separation_of_personnel(NA) :-
    notifying_authority(NA).
prohibited_activity(NA, conformity_assessment_body_activities) :-
    notifying_authority(NA).
prohibited_activity(NA, commercial_or_competitive_consultancy) :-
    notifying_authority(NA).
must_safeguard(NA, confidentiality_of_obtained_information) :-
    notifying_authority(NA).
must_have(NA, adequate_competent_personnel) :-
    notifying_authority(NA).
provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop/2, 'celex:32024R1689/oj#art_28').
provenance(permitted_assessment_and_monitoring_by/2, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_activity/2, 'celex:32024R1689/oj#art_28').
provenance(must_have/2, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
must_submit(Body, application_for_notification(Authority)) :-
    conformity_assessment_body(Body),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState),
    notifying_authority(Authority).
required_application_for_notification(App) :-
    application_accompanying_content(App, description_of_competence),
    application_accompanying_content(App, existing_designation_documents).
must_provide(Body, documentary_evidence_of_compliance(Authority)) :-
    conformity_assessment_body(Body),
    \+ has_accreditation_certificate(Body),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState),
    notifying_authority(Authority).
permitted_use(support_designation(Doc)) :-
    designation_document_or_certificate(Doc, Body),
    designated_under_other_union_harmonisation_legislation(Body),
    notified_body(Body).
must_update(Body, documentation_for_continuous_compliance) :-
    notified_body(Body),
    relevant_change_occurred(Body).
provenance(must_submit/2, 'celex:32024R1689/oj#art_29').
provenance(established_in/2, 'celex:32024R1689/oj#art_29').
provenance(notifying_authority_of/2, 'celex:32024R1689/oj#art_29').
provenance(required_application_for_notification/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanying_content/2, 'celex:32024R1689/oj#art_29').
provenance(has_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use/1, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(designation_document_or_certificate/2, 'celex:32024R1689/oj#art_29').
provenance(must_update/2, 'celex:32024R1689/oj#art_29').
provenance(relevant_change_occurred/1, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(permitted_notification/2, 'A notifying authority may notify a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(satisfies_requirements/2, 'An entity satisfies specific legal requirements', 'celex:32024R1689/oj#art_30').
declared(must_notify/2, 'An actor is obliged to send a notification', 'celex:32024R1689/oj#art_30').
declared(electronic_notification_tool_used/1, 'The notification uses the electronic tool managed by the Commission', 'celex:32024R1689/oj#art_30').
declared(notification_details_included/1, 'The notification includes required full details and attestation', 'celex:32024R1689/oj#art_30').
declared(based_on_accreditation_certificate/1, 'A notification is based on an accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(must_provide_documentary_evidence/2, 'A notifying authority must provide documentary evidence of competence and monitoring', 'celex:32024R1689/oj#art_30').
declared(permitted_perform_activities/2, 'A conformity assessment body is permitted to perform the activities of a notified body', 'celex:32024R1689/oj#art_30').
declared(objection_raised/2, 'An objection was raised against the notification within the specified deadline', 'celex:32024R1689/oj#art_30').
declared(period_elapsed/2, 'A period has elapsed since an event or notification', 'celex:32024R1689/oj#art_30').
declared(must_consult/2, 'The Commission must enter into consultations with relevant parties', 'celex:32024R1689/oj#art_30').
declared(must_decide/2, 'The Commission must decide on the justification of the authorisation', 'celex:32024R1689/oj#art_30').
permitted_notification(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfies_requirements(Body, requirements_article_31).
must_notify(Authority, notification_of(Body, recipients(commission, other_member_states))) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    permitted_notification(Authority, Body),
    electronic_notification_tool_used(notification_of(Body)).
must_provide_documentary_evidence(Authority, evidence_for(Body, recipients(commission, other_member_states))) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    notification_details_included(notification_of(Body)),
    \+ based_on_accreditation_certificate(notification_of(Body)).
permitted_perform_activities(Body, notified_body_activities) :-
    conformity_assessment_body(Body),
    based_on_accreditation_certificate(notification_of(Body)),
    period_elapsed(weeks(2), notification_of(Body)),
    \+ objection_raised(commission, notification_of(Body)),
    \+ objection_raised(other_member_states, notification_of(Body)).
permitted_perform_activities(Body, notified_body_activities) :-
    conformity_assessment_body(Body),
    \+ based_on_accreditation_certificate(notification_of(Body)),
    period_elapsed(months(2), notification_of(Body)),
    \+ objection_raised(commission, notification_of(Body)),
    \+ objection_raised(other_member_states, notification_of(Body)).
must_consult(commission, consultations_on(Body, MemberState)) :-
    objection_raised(_Objector, notification_of(Body)),
    notifying_authority(Authority),
    permitted_notification(Authority, Body),
    member_state_of(Authority, MemberState).
must_decide(commission, authorisation_justified(Body)) :-
    objection_raised(_Objector, notification_of(Body)),
    conformity_assessment_body(Body).
declared(member_state_of/2, 'The Member State corresponding to a notifying authority', 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
provenance(permitted_notification/2, 'celex:32024R1689/oj#art_30').
provenance(satisfies_requirements/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(electronic_notification_tool_used/1, 'celex:32024R1689/oj#art_30').
provenance(notification_details_included/1, 'celex:32024R1689/oj#art_30').
provenance(based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_perform_activities/2, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(period_elapsed/2, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide/2, 'celex:32024R1689/oj#art_30').
provenance(member_state_of/2, 'celex:32024R1689/oj#art_30').

% ==== celex:32024R1689/oj#art_31 ====
declared(established_under_national_law/1, 'established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(legal_personality/1, 'has legal personality', 'celex:32024R1689/oj#art_31').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_31').
declared(independent_from/2, 'entity is independent from another entity or operator', 'celex:32024R1689/oj#art_31').
declared(competitor_of/2, 'first entity is a competitor of second entity', 'celex:32024R1689/oj#art_31').
declared(economic_interest_in/2, 'operator has economic interest in high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(performs_conformity_assessment/2, 'body performs conformity assessment on a system', 'celex:32024R1689/oj#art_31').
declared(prohibited_involvement/2, 'entity or personnel is prohibited from involvement in activities regarding AI system', 'celex:32024R1689/oj#art_31').
declared(prohibited_conflicting_activity/2, 'entity or personnel is prohibited from activity conflicting with independence or integrity', 'celex:32024R1689/oj#art_31').
declared(liability_assumed_by_member_state/1, 'liability is assumed by the Member State', 'celex:32024R1689/oj#art_31').
declared(member_state_directly_responsible/1, 'Member State is directly responsible for conformity assessment', 'celex:32024R1689/oj#art_31').
declared(exempt_liability_insurance/1, 'conformity assessment body is exempt from liability insurance requirement', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_requirements/2, 'body must satisfy organizational, quality, resources, process, or cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(must_ensure_confidence/2, 'body must ensure confidence in performance and results', 'celex:32024R1689/oj#art_31').
declared(must_safeguard_impartiality/2, 'body must document and implement procedures safeguarding impartiality', 'celex:32024R1689/oj#art_31').
declared(must_maintain_confidentiality/2, 'body must maintain confidentiality and professional secrecy', 'celex:32024R1689/oj#art_31').
declared(must_adapt_procedures/2, 'body must have procedures adapted to provider scale and system complexity', 'celex:32024R1689/oj#art_31').
declared(must_hold_liability_insurance/2, 'body must take out appropriate liability insurance', 'celex:32024R1689/oj#art_31').
declared(must_have_competence/2, 'body must have professional integrity, competence, and personnel', 'celex:32024R1689/oj#art_31').
declared(must_participate_in_coordination/2, 'body must participate in coordination and standardisation activities', 'celex:32024R1689/oj#art_31').
declared(permitted_use/2, 'conformity assessment body permitted to use AI system for operations or personal purposes', 'celex:32024R1689/oj#art_31').
required_establishment(B) :-
    notified_body(B),
    established_under_national_law(B),
    legal_personality(B).
must_satisfy_requirements(B, operational_and_cybersecurity) :-
    notified_body(B).
must_ensure_confidence(B, assessment_activities) :-
    notified_body(B).
independent_from(B, P) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    performs_conformity_assessment(B, S).
independent_from(B, O) :-
    notified_body(B),
    operator(O),
    high_risk_ai_system(S),
    performs_conformity_assessment(B, S),
    economic_interest_in(O, S).
independent_from(B, C) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    performs_conformity_assessment(B, S),
    competitor_of(C, P).
permitted_use(B, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    necessary_for_operations(B, S).
permitted_use(B, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    personal_purpose_use(B, S).
prohibited_involvement(Actor, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    in_scope_actor(Actor, B).
prohibited_conflicting_activity(Actor, activity_conflicting_with_independence) :-
    conformity_assessment_body(B),
    in_scope_actor(Actor, B).
prohibited_conflicting_activity(Actor, consultancy_services) :-
    conformity_assessment_body(B),
    in_scope_actor(Actor, B).
in_scope_actor(B, B) :-
    conformity_assessment_body(B).
in_scope_actor(top_level_management(B), B) :-
    conformity_assessment_body(B).
in_scope_actor(assessment_personnel(B), B) :-
    conformity_assessment_body(B).
must_safeguard_impartiality(B, impartiality_structure_and_procedures) :-
    notified_body(B).
must_maintain_confidentiality(B, professional_secrecy) :-
    notified_body(B).
must_adapt_procedures(B, proportionate_assessment_procedures) :-
    notified_body(B).
exempt_liability_insurance(B) :-
    liability_assumed_by_member_state(B).
exempt_liability_insurance(B) :-
    member_state_directly_responsible(B).
must_hold_liability_insurance(B, liability_insurance) :-
    notified_body(B),
    \+ exempt_liability_insurance(B).
must_have_competence(B, professional_integrity_and_competence) :-
    notified_body(B).
must_have_competence(B, internal_competence_to_evaluate_external) :-
    notified_body(B).
must_have_competence(B, permanent_sufficient_personnel) :-
    notified_body(B).
must_participate_in_coordination(B, coordination_activities) :-
    notified_body(B).
must_participate_in_coordination(B, standardisation_activities) :-
    notified_body(B).
provenance(required_establishment/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_requirements/2, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence/2, 'celex:32024R1689/oj#art_31').
provenance(independent_from/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_involvement/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(in_scope_actor/2, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/2, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/2, 'celex:32024R1689/oj#art_31').
provenance(must_adapt_procedures/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(must_hold_liability_insurance/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_competence/2, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination/2, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(demonstrates_conformity_with_harmonised_standards/2, 'conformity assessment body demonstrates conformity with relevant harmonised standards covering certain requirements', 'celex:32024R1689/oj#art_32').
declared(presumed_compliance/2, 'an entity is presumed to comply with specified requirements', 'celex:32024R1689/oj#art_32').
presumed_compliance(Body, requirements_article_31) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_harmonised_standards(Body, requirements_article_31).
provenance(demonstrates_conformity_with_harmonised_standards/2, 'celex:32024R1689/oj#art_32').
provenance(presumed_compliance/2, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontractor_or_subsidiary/2, 'Entity is a subcontractor or subsidiary of a notified body for tasks connected with conformity assessment', 'celex:32024R1689/oj#art_33').
declared(must_ensure/2, 'Actor is obliged to ensure a certain condition or compliance', 'celex:32024R1689/oj#art_33').
declared(must_inform/2, 'Actor is obliged to inform an entity or authority of a matter', 'celex:32024R1689/oj#art_33').
declared(must_take_full_responsibility/2, 'Actor takes full responsibility for tasks performed by another entity', 'celex:32024R1689/oj#art_33').
declared(permitted_subcontracting_or_subsidiary_activity/2, 'Activity of subcontracting or recourse to a subsidiary is permitted', 'celex:32024R1689/oj#art_33').
declared(provider_agreed/2, 'Provider has agreed to subcontracting or subsidiary activity', 'celex:32024R1689/oj#art_33').
declared(must_make_publicly_available/2, 'Actor is obliged to make information publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_at_disposal/2, 'Actor is obliged to keep documents at the disposal of an authority', 'celex:32024R1689/oj#art_33').
must_ensure(Body, compliance_art_31(Entity)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).
must_inform(Body, notifying_authority(subcontracting_or_subsidiary(Entity))) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).
must_take_full_responsibility(Body, tasks_performed_by(Entity)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).
permitted_subcontracting_or_subsidiary_activity(Body, activity(Entity, Provider)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body),
    provider(Provider),
    provider_agreed(Provider, Entity).
must_make_publicly_available(Body, list_of_subsidiaries) :-
    notified_body(Body).
must_keep_at_disposal(Body, documents(qualifications_and_work(Entity), notifying_authority, period(years(5), from_termination))) :-
    notified_body(Body),
    subcontractor_or_subsidiary(Entity, Body).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting_or_subsidiary_activity/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_34').
must_verify(Body, conformity(System)) :-
    notified_body(Body),
    high_risk_ai_system(System).
must_avoid(Body, unnecessary_burdens(Provider, System)) :-
    notified_body(Body),
    provider(Provider),
    high_risk_ai_system(System).
must_submit(Body, documentation_to(Authority, Doc)) :-
    notified_body(Body),
    notifying_authority(Authority),
    requested_documentation(Authority, Body, Doc).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_34').
provenance(must_verify/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_35').
must_assign(Commission, single_identification_number(Body)) :-
    commission(Commission),
    notified_body(Body).
must_make_publicly_available(Commission, list_of_notified_bodies) :-
    commission(Commission).
must_ensure_up_to_date(Commission, list_of_notified_bodies) :-
    commission(Commission).
provenance(commission/1, 'celex:32024R1689/oj#art_35').
provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
must_notify(Authority, changes(Body)) :-
    notifying_authority(Authority),
    notified_body(Body).
procedure_applies(articles_29_and_30, Change) :-
    extension_of_scope(Change).
procedure_applies(article_36_paragraphs_3_to_9, Change) :-
    \+ extension_of_scope(Change).
must_inform(Body, cessation(Authority, Providers)) :-
    notified_body(Body),
    decides_cessation(Body),
    notifying_authority(Authority),
    provider(Providers).
must_inform(Body, planned_cessation(Authority, Providers, at_least(years(1)))) :-
    notified_body(Body),
    decides_cessation(Body),
    planned_cessation(Body),
    notifying_authority(Authority),
    provider(Providers).
valid_certificate(Cert) :-
    decides_cessation(Body),
    confirmed_assumption_of_responsibility(OtherBody, Cert),
    notified_body(OtherBody),
    OtherBody \= Body.
must_complete_assessment(OtherBody, assessment(Systems, within(months(9)))) :-
    notified_body(OtherBody),
    confirmed_assumption_of_responsibility(OtherBody, certificates_for(Systems)).
must_withdraw(Authority, designation(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    has_ceased_activity(Body).
must_investigate(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    reason_no_longer_meets_requirements(Authority, Body).
must_inform(Authority, objections_and_hearing(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    reason_no_longer_meets_requirements(Authority, Body).
must_restrict_suspend_or_withdraw(Authority, designation(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    failure_established(Authority, Body).
must_inform(Authority, designation_change(Body, commission_and_member_states)) :-
    notifying_authority(Authority),
    notified_body(Body),
    failure_established(Authority, Body).
must_inform(Body, designation_change(Providers, within(days(10)))) :-
    notified_body(Body),
    provider(Providers),
    designation_affected(Body).
designation_affected(Body) :- designation_suspended(Body).
designation_affected(Body) :- designation_restricted(Body).
designation_affected(Body) :- designation_withdrawn(Body).
must_preserve_and_share_files(Authority, files(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).
must_assess_impact(Authority, certificates(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).
must_submit_report(Authority, findings(Body, within(months(3)))) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).
must_require_action(Authority, suspend_or_withdraw(Cert)) :-
    notifying_authority(Authority),
    unduly_issued(Cert).
must_inform(Authority, required_certificate_actions(commission_and_member_states)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).
must_inform(Authority, required_certificate_actions(national_competent_authority(ProviderState))) :-
    notifying_authority(Authority),
    national_competent_authority(ProviderState),
    notified_body(Body),
    designation_affected(Body).
valid_certificate(Cert) :-
    (designation_suspended(Body) ; designation_restricted(Body)),
    \+ unduly_issued(Cert),
    confirmed_no_risk(Authority, Cert),
    outlined_remedy_timeline(Authority, Body),
    notifying_authority(Authority).
valid_certificate(Cert) :-
    (designation_suspended(Body) ; designation_restricted(Body)),
    \+ unduly_issued(Cert),
    confirmed_no_new_certificates(Authority, Body),
    capable_of_monitoring(Body),
    notifying_authority(Authority).
valid_certificate(Cert) :-
    (designation_suspended(Body) ; designation_restricted(Body)),
    \+ unduly_issued(Cert),
    confirmed_no_new_certificates(Authority, Body),
    \+ capable_of_monitoring(Body),
    confirmed_temporary_assumption(Provider, Cert),
    provider(Provider),
    notifying_authority(Authority).
valid_certificate(Cert) :-
    designation_withdrawn(Body),
    \+ unduly_issued(Cert),
    confirmed_no_risk(NationalAuthority, Cert),
    national_competent_authority(NationalAuthority),
    confirmed_assumption_of_responsibility(OtherBody, Cert),
    notified_body(OtherBody),
    OtherBody \= Body.
permitted_extension(NationalAuthority, extension(Cert, additional_periods(months(3)), max(months(12)))) :-
    national_competent_authority(NationalAuthority),
    designation_withdrawn(Body),
    \+ unduly_issued(Cert),
    confirmed_no_risk(NationalAuthority, Cert).
must_inform(Actor, assumption_of_functions(commission_member_states_and_notified_bodies)) :-
    (national_competent_authority(Actor) ; notified_body(Actor)).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(procedure_applies/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(designation_affected/1, 'celex:32024R1689/oj#art_36').
provenance(must_preserve_and_share_files/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_action/2, 'celex:32024R1689/oj#art_36').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_36').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_37').
declared(doubts_competence_or_requirements/1, 'reasons to doubt the competence or continued fulfilment of requirements of a notified body', 'celex:32024R1689/oj#art_37').
declared(request_from_commission/2, 'request sent by Commission to an authority', 'celex:32024R1689/oj#art_37').
declared(fails_to_meet_notification_requirements/1, 'notified body does not meet or no longer meets notification requirements', 'celex:32024R1689/oj#art_37').
declared(fails_corrective_measures/1, 'Member State fails to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
must_investigate(C, Body) :-
    commission(C),
    notified_body(Body),
    doubts_competence_or_requirements(Body).
must_provide(Auth, information(Body, C)) :-
    notifying_authority(Auth),
    commission(C),
    notified_body(Body),
    request_from_commission(C, Auth).
must_ensure(C, confidentiality(investigation_info(Body))) :-
    commission(C),
    notified_body(Body).
must_inform(C, notifying_member_state(Body, non_compliance)) :-
    commission(C),
    notified_body(Body),
    fails_to_meet_notification_requirements(Body).
must_request(C, corrective_measures(notifying_member_state, Body)) :-
    commission(C),
    notified_body(Body),
    fails_to_meet_notification_requirements(Body).
permitted_suspend_restrict_withdraw(C, designation(Body)) :-
    commission(C),
    notified_body(Body),
    fails_to_meet_notification_requirements(Body),
    fails_corrective_measures(notifying_member_state).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_suspend_restrict_withdraw/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').

% ==== celex:32024R1689/oj#art_38 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_38').
declared(sectoral_group_of_notified_bodies/1, 'sectoral group of notified bodies for high-risk AI systems', 'celex:32024R1689/oj#art_38').
declared(notified_by/2, 'conformity assessment body notified by a notifying authority', 'celex:32024R1689/oj#art_38').
declared(designated_representative/2, 'designated representative of a notified body', 'celex:32024R1689/oj#art_38').
declared(high_risk_ai_system/1, 'high-risk AI system', 'celex:32024R1689/oj#art_38').
declared(participates_in_work_of/2, 'participation in the work of a body or group', 'celex:32024R1689/oj#art_38').
must_ensure(C, coordination_and_cooperation(sectoral_group_of_notified_bodies)) :-
    commission(C).
must_ensure(Auth, participation(Body, Group)) :-
    notifying_authority(Auth),
    notified_by(Body, Auth),
    sectoral_group_of_notified_bodies(Group).
participates_in_work_of(Body, Group) :-
    sectoral_group_of_notified_bodies(Group),
    designated_representative(Rep, Body),
    participates_in_work_of(Rep, Group).
must_provide(C, exchange_of_knowledge_and_best_practices(notifying_authorities)) :-
    commission(C).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(participates_in_work_of/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(established_under_law_of_third_country/1, 'conformity assessment body established under third-country law with an EU agreement', 'celex:32024R1689/oj#art_39').
declared(meets_requirements/2, 'entity meets specified requirements or standards', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_compliance/2, 'entity ensures equivalent level of compliance with specified requirements', 'celex:32024R1689/oj#art_39').
declared(permitted_authorisation/2, 'authorisation of an entity for a designated role is permitted', 'celex:32024R1689/oj#art_39').
permitted_authorisation(B, activities_of_notified_body) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B),
    meets_requirements(B, art_31).
permitted_authorisation(B, activities_of_notified_body) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B),
    ensures_equivalent_compliance(B, art_31).
provenance(permitted_authorisation/2, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(high_risk_ai_system/1, 'high-risk AI system', 'celex:32024R1689/oj#art_40').
declared(published_in_oj/1, 'reference published in the Official Journal', 'celex:32024R1689/oj#art_40').
declared(conforms_with/2, 'subject conforms with a standard or specification', 'celex:32024R1689/oj#art_40').
declared(covers_requirement/2, 'standard covers a requirement or obligation', 'celex:32024R1689/oj#art_40').
declared(presumed_conformity/2, 'subject presumed in conformity with requirement or obligation', 'celex:32024R1689/oj#art_40').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_40').
presumed_conformity(System, Req) :-
    high_risk_ai_system(System),
    conforms_with(System, Standard),
    harmonised_standard(Standard),
    published_in_oj(Standard),
    covers_requirement(Standard, Req).
presumed_conformity(Model, Obligation) :-
    general_purpose_ai_model(Model),
    conforms_with(Model, Standard),
    harmonised_standard(Standard),
    published_in_oj(Standard),
    covers_requirement(Standard, Obligation).
must_issue(Actor, standardisation_request(requirements_and_obligations)) :-
    commission(Actor).
must_consult(Actor, standardisation_preparation(board_and_stakeholders)) :-
    commission(Actor).
must_specify(Actor, standardisation_request_specifications(european_standardisation_organisations)) :-
    commission(Actor).
must_request(Actor, evidence_of_best_efforts(european_standardisation_organisations)) :-
    commission(Actor).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_40').
provenance(published_in_oj/1, 'celex:32024R1689/oj#art_40').
provenance(conforms_with/2, 'celex:32024R1689/oj#art_40').
provenance(covers_requirement/2, 'celex:32024R1689/oj#art_40').
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_request/2, 'celex:32024R1689/oj#art_40').
provenance(commission/1, 'celex:32024R1689/oj#art_40').
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
declared(permitted_adopt_common_specifications/2, 'Commission is permitted to adopt implementing acts establishing common specifications for specific requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(request_conditions_fulfilled/1, 'Conditions under Art 41(1)(a) regarding standardisation requests are fulfilled', 'celex:32024R1689/oj#art_41').
declared(publication_conditions_fulfilled/1, 'Conditions under Art 41(1)(b) regarding lack of published harmonised standards are fulfilled', 'celex:32024R1689/oj#art_41').
declared(must_consult/2, 'Entity must consult another body on a matter', 'celex:32024R1689/oj#art_41').
declared(must_inform/2, 'Entity must inform another body of a matter', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity/2, 'An AI system or GPAI model is presumed in conformity with requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(conforms_to_common_specification/2, 'An AI system or GPAI model conforms to a common specification or parts thereof', 'celex:32024R1689/oj#art_41').
declared(must_assess/2, 'Entity must assess a proposed standard or information', 'celex:32024R1689/oj#art_41').
declared(must_repeal/2, 'Commission must repeal implementing acts or parts thereof covering common specifications', 'celex:32024R1689/oj#art_41').
declared(must_duly_justify/2, 'Provider must duly justify equivalent technical solutions when not complying with common specifications', 'celex:32024R1689/oj#art_41').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_41').
permitted_adopt_common_specifications(commission, Scope) :-
    request_conditions_fulfilled(Scope),
    publication_conditions_fulfilled(Scope).
must_consult(commission, advisory_forum(Scope)) :-
    drafting_common_specifications(commission, Scope).
must_inform(commission, committee_art_22(conditions_fulfilled(Scope))) :-
    preparing_draft_implementing_act(commission, Scope),
    request_conditions_fulfilled(Scope),
    publication_conditions_fulfilled(Scope).
presumed_conformity(Target, Scope) :-
    high_risk_ai_system(Target),
    conforms_to_common_specification(Target, Spec),
    covers_scope(Spec, Scope).
presumed_conformity(Target, Scope) :-
    general_purpose_ai_model(Target),
    conforms_to_common_specification(Target, Spec),
    covers_scope(Spec, Scope).
must_assess(commission, harmonised_standard(Std)) :-
    proposed_for_oj_publication(Std).
must_repeal(commission, implementing_act_common_specifications(Spec)) :-
    published_in_oj(harmonised_standard(Std)),
    covers_same_scope(Std, Spec).
must_duly_justify(Provider, equivalent_technical_solutions(Target, Scope)) :-
    provider(Provider),
    high_risk_ai_system(Target),
    \+ conforms_to_common_specification(Target, _Spec).
must_duly_justify(Provider, equivalent_technical_solutions(Target, Scope)) :-
    provider(Provider),
    general_purpose_ai_model(Target),
    \+ conforms_to_common_specification(Target, _Spec).
must_inform(MemberState, commission(deficiency(Spec, Scope))) :-
    member_state(MemberState),
    considers_insufficient(MemberState, Spec, Scope).
must_assess(commission, member_state_information(MemberState, Spec)) :-
    must_inform(MemberState, commission(deficiency(Spec, _Scope))).
provenance(permitted_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(request_conditions_fulfilled/1, 'celex:32024R1689/oj#art_41').
provenance(publication_conditions_fulfilled/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_41').
provenance(conforms_to_common_specification/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal/2, 'celex:32024R1689/oj#art_41').
provenance(must_duly_justify/2, 'celex:32024R1689/oj#art_41').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').

% ==== celex:32024R1689/oj#art_42 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_42').
declared(trained_and_tested_on_setting_data/1, 'trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting intended', 'celex:32024R1689/oj#art_42').
declared(presumed_conformity/2, 'system is presumed to comply with specified requirements', 'celex:32024R1689/oj#art_42').
declared(certified_under_cybersecurity_scheme/2, 'system certified or statement of conformity issued under Regulation (EU) 2019/881 covering requirements', 'celex:32024R1689/oj#art_42').
declared(published_in_oj/1, 'references have been published in the Official Journal', 'celex:32024R1689/oj#art_42').
presumed_conformity(System, requirements_art_10_par_4) :-
    high_risk_ai_system(System),
    trained_and_tested_on_setting_data(System).
presumed_conformity(System, requirements_art_15_cybersecurity) :-
    high_risk_ai_system(System),
    certified_under_cybersecurity_scheme(System, Scheme),
    published_in_oj(Scheme).
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_1_system/1, 'high-risk AI system listed in Annex III point 1', 'celex:32024R1689/oj#art_43').
declared(annex_3_points_2_to_8_system/1, 'high-risk AI system listed in Annex III points 2 to 8', 'celex:32024R1689/oj#art_43').
declared(annex_1_section_a_system/1, 'high-risk AI system covered by Union legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_43').
declared(applies_harmonised_standards/1, 'provider applies relevant harmonised standards', 'celex:32024R1689/oj#art_43').
declared(applies_common_specifications/1, 'provider applies relevant common specifications', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_restricted/1, 'harmonised standard was published with a restriction', 'celex:32024R1689/oj#art_43').
declared(intended_deployer_law_enforcement_or_institution/1, 'intended deployer is law enforcement, immigration, asylum authority, or EU institution/body', 'celex:32024R1689/oj#art_43').
declared(pre_determined_learning_change/1, 'change to AI system pre-determined and documented in technical documentation', 'celex:32024R1689/oj#art_43').
declared(must_follow_procedure/2, 'actor must follow a specific conformity assessment procedure for a system', 'celex:32024R1689/oj#art_43').
declared(permitted_procedure/2, 'actor is permitted to follow a conformity assessment procedure for a system', 'celex:32024R1689/oj#art_43').
declared(required_notified_body/2, 'notified body role is assigned to a specific entity for a system', 'celex:32024R1689/oj#art_43').
declared(exempt_substantial_modification/1, 'change is exempt from being considered a substantial modification', 'celex:32024R1689/oj#art_43').
declared(required_new_conformity_assessment/1, 'system must undergo a new conformity assessment procedure', 'celex:32024R1689/oj#art_43').
must_follow_procedure(P, procedure(annex_7, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    \+ applies_harmonised_standards(S),
    \+ applies_common_specifications(S).
must_follow_procedure(P, procedure(annex_7, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    harmonised_standard_restricted(S).
permitted_procedure(P, procedure(annex_6, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    applies_harmonised_standards(S),
    \+ harmonised_standard_restricted(S).
permitted_procedure(P, procedure(annex_6, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    applies_common_specifications(S),
    \+ harmonised_standard_restricted(S).
permitted_procedure(P, procedure(annex_7, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_system(S).
required_notified_body(market_surveillance_authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_law_enforcement_or_institution(S).
must_follow_procedure(P, procedure(annex_6, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_points_2_to_8_system(S).
must_follow_procedure(P, procedure(sectoral_legislation, S)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_1_section_a_system(S).
permitted_procedure(M, opt_out_third_party_assessment(S)) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    annex_1_section_a_system(S),
    applies_harmonised_standards(S).
permitted_procedure(M, opt_out_third_party_assessment(S)) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    annex_1_section_a_system(S),
    applies_common_specifications(S).
required_new_conformity_assessment(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).
exempt_substantial_modification(Change) :-
    pre_determined_learning_change(Change).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_1_system/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_points_2_to_8_system/1, 'celex:32024R1689/oj#art_43').
provenance(annex_1_section_a_system/1, 'celex:32024R1689/oj#art_43').
provenance(applies_harmonised_standards/1, 'celex:32024R1689/oj#art_43').
provenance(applies_common_specifications/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_restricted/1, 'celex:32024R1689/oj#art_43').
provenance(intended_deployer_law_enforcement_or_institution/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_learning_change/1, 'celex:32024R1689/oj#art_43').
provenance(must_follow_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(required_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(exempt_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(required_new_conformity_assessment/1, 'celex:32024R1689/oj#art_43').
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
declared(certificate/1, 'Conformity certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_supplement/2, 'Supplement to a certificate', 'celex:32024R1689/oj#art_44').
declared(system_covered_by_annex_1/1, 'AI system covered by Annex I', 'celex:32024R1689/oj#art_44').
declared(system_covered_by_annex_3/1, 'AI system covered by Annex III', 'celex:32024R1689/oj#art_44').
declared(certificate_for_system/2, 'Certificate corresponds to an AI system', 'celex:32024R1689/oj#art_44').
declared(issuing_body/2, 'Notified body that issued the certificate', 'celex:32024R1689/oj#art_44').
declared(established_in_member_state/2, 'Entity is established in a Member State', 'celex:32024R1689/oj#art_44').
declared(certificate_language/2, 'Language in which the certificate is drawn up', 'celex:32024R1689/oj#art_44').
declared(easily_understood_by_authorities/2, 'Language easily understood by authorities of a Member State', 'celex:32024R1689/oj#art_44').
declared(maximum_validity_period/2, 'Maximum allowed validity period for a certificate', 'celex:32024R1689/oj#art_44').
declared(maximum_extension_period/2, 'Maximum allowed validity extension period for a certificate', 'celex:32024R1689/oj#art_44').
declared(valid_certificate/1, 'Certificate is currently valid', 'celex:32024R1689/oj#art_44').
declared(permitted_extension/2, 'Permitted extension of certificate validity', 'celex:32024R1689/oj#art_44').
declared(requested_extension/2, 'Provider requested extension of certificate validity', 'celex:32024R1689/oj#art_44').
declared(reassessment_performed/1, 'Re-assessment performed in accordance with conformity assessment procedures', 'celex:32024R1689/oj#art_44').
declared(meets_chapter_3_section_2_requirements/1, 'AI system meets high-risk requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_44').
declared(corrective_action_ensured_within_deadline/2, 'Corrective action ensured compliance within deadline set by notified body', 'celex:32024R1689/oj#art_44').
declared(required_suspension_or_withdrawal_or_restriction/2, 'Notified body must suspend, withdraw, or restrict certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'Actor must give reasons for an action or decision', 'celex:32024R1689/oj#art_44').
declared(required_appeal_procedure/1, 'An appeal procedure must be available against notified body decisions', 'celex:32024R1689/oj#art_44').
required_language(Cert) :-
    certificate(Cert),
    issuing_body(Cert, Body),
    notified_body(Body),
    established_in_member_state(Body, MS),
    certificate_language(Cert, Lang),
    easily_understood_by_authorities(Lang, MS).
maximum_validity_period(Cert, years(5)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System).
maximum_validity_period(Cert, years(4)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System).
maximum_extension_period(Cert, years(5)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System).
maximum_extension_period(Cert, years(4)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System).
permitted_extension(Cert, Provider) :-
    certificate(Cert),
    provider(Provider),
    requested_extension(Cert, Provider),
    reassessment_performed(Cert).
valid_certificate(Supplement) :-
    certificate_supplement(Supplement, BaseCert),
    valid_certificate(BaseCert).
required_suspension_or_withdrawal_or_restriction(Body, Cert) :-
    notified_body(Body),
    issuing_body(Cert, Body),
    certificate_for_system(Cert, System),
    ai_system(System),
    \+ meets_chapter_3_section_2_requirements(System),
    \+ corrective_action_ensured_within_deadline(System, Body).
must_give_reasons(Body, decision(Cert)) :-
    notified_body(Body),
    issuing_body(Cert, Body),
    required_suspension_or_withdrawal_or_restriction(Body, Cert).
required_appeal_procedure(Body) :-
    notified_body(Body).
provenance(required_language/1, 'celex:32024R1689/oj#art_44').
provenance(maximum_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(maximum_extension_period/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_44').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').
provenance(required_suspension_or_withdrawal_or_restriction/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(required_appeal_procedure/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'obliged entity must inform recipient of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_provide/2, 'obliged entity must provide information to recipient', 'celex:32024R1689/oj#art_45').
declared(must_safeguard/2, 'obliged entity must safeguard confidentiality of information', 'celex:32024R1689/oj#art_45').
must_inform(Body, notifying_authority(issued_certificate_or_approval(Item))) :-
    notified_body(Body),
    ( Item = union_technical_documentation_assessment_certificate
    ; Item = supplement_to_certificate
    ; Item = quality_management_system_approval
    ).
must_inform(Body, notifying_authority(restriction_or_withdrawal(Decision, Item))) :-
    notified_body(Body),
    ( Decision = refusal
    ; Decision = restriction
    ; Decision = suspension
    ; Decision = withdrawal
    ),
    ( Item = union_technical_documentation_assessment_certificate
    ; Item = quality_management_system_approval
    ).
must_inform(Body, notifying_authority(circumstances_affecting_notification)) :-
    notified_body(Body).
must_inform(Body, notifying_authority(request_from_market_surveillance_authorities(Activities))) :-
    notified_body(Body),
    Activities = conformity_assessment_activities.
must_inform(Body, notifying_authority(on_request(performed_activities(Activities)))) :-
    notified_body(Body),
    ( Activities = conformity_assessment_activities_within_scope
    ; Activities = cross_border_activities
    ; Activities = subcontracting
    ; Activities = other_activity
    ).
must_inform(Body, other_notified_bodies(quality_management_system_approval(Decision))) :-
    notified_body(Body),
    ( Decision = refused
    ; Decision = suspended
    ; Decision = withdrawn
    ; Decision = on_request(issued)
    ).
must_inform(Body, other_notified_bodies(technical_documentation_assessment_certificate(Decision))) :-
    notified_body(Body),
    ( Decision = refused
    ; Decision = withdrawn
    ; Decision = suspended
    ; Decision = restricted
    ; Decision = on_request(issued)
    ).
must_provide(Body, other_notified_bodies(similar_activities, conformity_assessment_results(Result))) :-
    notified_body(Body),
    ( Result = negative
    ; Result = on_request(positive)
    ).
must_safeguard(Body, confidentiality(obtained_information)) :-
    notified_body(Body).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional ground justifying derogation', 'celex:32024R1689/oj#art_46').
declared(civil_protection_authority/1, 'civil protection authority', 'celex:32024R1689/oj#art_46').
declared(urgency_applies/1, 'situation of urgency applies', 'celex:32024R1689/oj#art_46').
declared(permitted_derogation_putting_into_service/2, 'putting into service under urgency derogation without prior authorisation', 'celex:32024R1689/oj#art_46').
declared(permitted_derogation_authorisation/2, 'market surveillance authority may authorise derogation for system', 'celex:32024R1689/oj#art_46').
declared(must_inform/2, 'actor must provide information to recipient or about an action', 'celex:32024R1689/oj#art_46').
declared(must_withdraw/2, 'market surveillance authority must withdraw authorisation', 'celex:32024R1689/oj#art_46').
declared(must_stop/2, 'deployer or authority must stop use of AI system', 'celex:32024R1689/oj#art_46').
declared(must_discard/2, 'deployer or authority must discard outputs of AI system', 'celex:32024R1689/oj#art_46').
declared(complies_with_chapter_3_section_2/1, 'system complies with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_46').
declared(covered_by_annex_1_legislation/1, 'system related to products covered by Annex I Section A legislation', 'celex:32024R1689/oj#art_46').
declared(objection_raised/2, 'objection raised against derogation authorisation', 'celex:32024R1689/oj#art_46').
declared(deemed_justified_derogation/1, 'derogation authorisation deemed justified after objection deadline', 'celex:32024R1689/oj#art_46').
declared(commission_considers_unjustified/1, 'Commission determines authorisation is unjustified', 'celex:32024R1689/oj#art_46').
declared(authorisation_refused/2, 'authorisation request for derogation was refused', 'celex:32024R1689/oj#art_46').
declared(requested_derogation_authorisation/2, 'authority requested derogation authorisation without undue delay', 'celex:32024R1689/oj#art_46').
permitted_derogation_authorisation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    \+ covered_by_annex_1_legislation(System),
    complies_with_chapter_3_section_2(System),
    exceptional_reason(System).
permitted_derogation_putting_into_service(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    \+ covered_by_annex_1_legislation(System),
    urgency_applies(System),
    requested_derogation_authorisation(Authority, System).
permitted_derogation_putting_into_service(Authority, System) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(System),
    \+ covered_by_annex_1_legislation(System),
    urgency_applies(System),
    requested_derogation_authorisation(Authority, System).
must_stop(Authority, System) :-
    authorisation_refused(Authority, System).
must_discard(Authority, outputs_of(System)) :-
    authorisation_refused(Authority, System).
must_inform(Authority, derogation_authorisation(System)) :-
    market_surveillance_authority(Authority),
    permitted_derogation_authorisation(Authority, System).
deemed_justified_derogation(System) :-
    permitted_derogation_authorisation(_Authority, System),
    \+ objection_raised(within(days(15)), derogation_authorisation(System)).
must_withdraw(Authority, derogation_authorisation(System)) :-
    market_surveillance_authority(Authority),
    commission_considers_unjustified(derogation_authorisation(System)).
provenance(permitted_derogation_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_derogation_putting_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop/2, 'celex:32024R1689/oj#art_46').
provenance(must_discard/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified_derogation/1, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity drawn up for an AI system', 'celex:32024R1689/oj#art_47').
declared(subject_to_other_union_harmonisation_legislation/1, 'AI system subject to other Union harmonisation legislation requiring declaration', 'celex:32024R1689/oj#art_47').
declared(single_eu_declaration_of_conformity/1, 'single EU declaration of conformity covering all applicable Union law', 'celex:32024R1689/oj#art_47').
declared(empowered_to_adopt_delegated_acts/2, 'authority is empowered to adopt delegated acts on a matter', 'celex:32024R1689/oj#art_47').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_47').
declared(must_draw_up/2, 'actor must draw up an object', 'celex:32024R1689/oj#art_47').
declared(must_keep/2, 'actor must keep an object', 'celex:32024R1689/oj#art_47').
declared(must_submit/2, 'actor must submit an object', 'celex:32024R1689/oj#art_47').
declared(must_assume_responsibility/2, 'actor must assume responsibility for an object', 'celex:32024R1689/oj#art_47').
declared(must_update/2, 'actor must keep an object updated', 'celex:32024R1689/oj#art_47').
must_draw_up(Provider, declaration_of_conformity(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep(Provider, at_disposal(declaration_of_conformity(System), national_competent_authorities, period(years(10), after(placed_or_put_into_service(System))))) :-
    provider(Provider),
    high_risk_ai_system(System).
must_submit(Provider, copy_to(declaration_of_conformity(System), Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_draw_up(Provider, single_declaration_of_conformity(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System).
must_assume_responsibility(Provider, compliance(System, chapter_3_section_2)) :-
    provider(Provider),
    high_risk_ai_system(System),
    eu_declaration_of_conformity(declaration_of_conformity(System)).
must_update(Provider, declaration_of_conformity(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
empowered_to_adopt_delegated_acts(Commission, amend_annex_5(content_of_eu_declaration_of_conformity)) :-
    commission(Commission).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_47').
provenance(subject_to_other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(single_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_47').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_47').
provenance(commission/1, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_update/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'system provided via digital means', 'celex:32024R1689/oj#art_48').
declared(easily_accessible_electronically/1, 'digital access via interface, code, or other electronic means', 'celex:32024R1689/oj#art_48').
declared(permitted_digital_ce_marking/1, 'digital CE marking permitted for high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(physical_affixing_possible_and_warranted/1, 'visible, legible, and indelible affixing on the system is possible and warranted', 'celex:32024R1689/oj#art_48').
declared(required_ce_marking/2, 'affixing of CE marking required on specified medium', 'celex:32024R1689/oj#art_48').
declared(involves_notified_body/2, 'notified body involved in conformity assessment of high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(instructed_by_notified_body/2, 'actor instructed by notified body to affix identification number', 'celex:32024R1689/oj#art_48').
declared(permitted_affix_identification_number/2, 'actor permitted to affix notified body identification number to system', 'celex:32024R1689/oj#art_48').
declared(promotional_material_mentions_ce_marking/2, 'promotional material mentions system fulfils requirements for CE marking', 'celex:32024R1689/oj#art_48').
declared(required_indication/2, 'required indication in promotional material or marking', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_ce_marking_union_law/1, 'high-risk AI system is subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
permitted_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_electronically(S).
required_ce_marking(S, direct_affixing) :-
    high_risk_ai_system(S),
    physical_affixing_possible_and_warranted(S).
required_ce_marking(S, packaging_or_documentation) :-
    high_risk_ai_system(S),
    \+ physical_affixing_possible_and_warranted(S).
permitted_affix_identification_number(B, S) :-
    high_risk_ai_system(S),
    notified_body(B),
    involves_notified_body(S, B).
permitted_affix_identification_number(P, S) :-
    high_risk_ai_system(S),
    provider(P),
    notified_body(B),
    involves_notified_body(S, B),
    instructed_by_notified_body(P, B).
permitted_affix_identification_number(AR, S) :-
    high_risk_ai_system(S),
    authorised_representative(AR),
    notified_body(B),
    involves_notified_body(S, B),
    instructed_by_notified_body(AR, B).
required_indication(Material, identification_number(B)) :-
    promotional_material_mentions_ce_marking(Material, S),
    high_risk_ai_system(S),
    notified_body(B),
    involves_notified_body(S, B).
required_indication(ce_marking(S), fulfils_other_union_law) :-
    high_risk_ai_system(S),
    subject_to_other_ce_marking_union_law(S).
provenance(permitted_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(permitted_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(required_indication/2, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_iii/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_iii_point_2/1, 'AI system listed in point 2 of Annex III (critical infrastructure)', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_iii_sensitive_areas/1, 'AI system listed in points 1, 6, or 7 of Annex III in law enforcement, migration, asylum, border control', 'celex:32024R1689/oj#art_49').
declared(concluded_not_high_risk_derogation/1, 'AI system for which provider concluded not high-risk under Article 6(3)', 'celex:32024R1689/oj#art_49').
declared(public_deployer/1, 'Deployer that is a public authority, Union institution, body, office, agency or acting on their behalf', 'celex:32024R1689/oj#art_49').
declared(national_level_registration/1, 'System subject to national level registration', 'celex:32024R1689/oj#art_49').
declared(permitted_database_access/2, 'Entity permitted access to restricted database section', 'celex:32024R1689/oj#art_49').
declared(secure_non_public_section/1, 'Database section is secure non-public', 'celex:32024R1689/oj#art_49').
declared(national_authority/1, 'National authority referred to in Article 74(8)', 'celex:32024R1689/oj#art_49').
declared(european_commission/1, 'European Commission', 'celex:32024R1689/oj#art_49').
must_register(Actor, eu_database(Actor, System)) :-
    provider(Actor),
    high_risk_ai_system(System),
    listed_in_annex_iii(System),
    \+ listed_in_annex_iii_point_2(System).
must_register(Actor, eu_database(Actor, System)) :-
    authorised_representative(Actor),
    high_risk_ai_system(System),
    listed_in_annex_iii(System),
    \+ listed_in_annex_iii_point_2(System).
must_register(Actor, eu_database(Actor, System)) :-
    provider(Actor),
    ai_system(System),
    concluded_not_high_risk_derogation(System).
must_register(Actor, eu_database(Actor, System)) :-
    authorised_representative(Actor),
    ai_system(System),
    concluded_not_high_risk_derogation(System).
must_register(Deployer, eu_database_use(Deployer, System)) :-
    deployer(Deployer),
    public_deployer(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_iii(System),
    \+ listed_in_annex_iii_point_2(System).
secure_non_public_section(eu_database(Actor, System)) :-
    listed_in_annex_iii_sensitive_areas(System),
    must_register(Actor, eu_database(Actor, System)).
secure_non_public_section(eu_database_use(Actor, System)) :-
    listed_in_annex_iii_sensitive_areas(System),
    must_register(Actor, eu_database_use(Actor, System)).
permitted_database_access(Actor, restricted_section(System)) :-
    european_commission(Actor),
    listed_in_annex_iii_sensitive_areas(System).
permitted_database_access(Actor, restricted_section(System)) :-
    national_authority(Actor),
    listed_in_annex_iii_sensitive_areas(System).
national_level_registration(System) :-
    high_risk_ai_system(System),
    listed_in_annex_iii_point_2(System).
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(permitted_database_access/2, 'celex:32024R1689/oj#art_49').
provenance(national_level_registration/1, 'celex:32024R1689/oj#art_49').
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
declared(interaction_obviously_ai/1, 'interaction is obvious from the point of view of a reasonably well-informed, observant and circumspect natural person', 'celex:32024R1689/oj#art_50').
declared(authorised_by_law_for_criminal_investigation/1, 'AI system authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(public_reporting_of_criminal_offence/1, 'AI system available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generating synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(standard_editing_assistive_function/1, 'AI system performs an assistive function for standard editing or does not substantially alter input data or semantics', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_deep_fake/1, 'AI system generates or manipulates image, audio or video content constituting a deep fake', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_public_interest_text/1, 'AI system generates or manipulates text published with the purpose of informing the public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(artistic_or_satirical_work/1, 'content forms part of an evidently artistic, creative, satirical, fictional or analogous work or programme', 'celex:32024R1689/oj#art_50').
declared(editorial_responsibility_held/1, 'AI-generated content has undergone human review or editorial control with editorial responsibility held', 'celex:32024R1689/oj#art_50').
declared(must_ensure/2, 'actor must ensure a condition or requirement regarding an object', 'celex:32024R1689/oj#art_50').
declared(must_inform/2, 'actor must inform natural persons regarding a system or content', 'celex:32024R1689/oj#art_50').
declared(must_disclose/2, 'actor must disclose artificial generation or manipulation of content', 'celex:32024R1689/oj#art_50').
declared(exempt_transparency_interaction/1, 'AI system exempt from interaction transparency obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_synthetic_marking/1, 'AI system exempt from synthetic marking obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_biometric_transparency/1, 'AI system exempt from biometric transparency obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_deep_fake_disclosure/1, 'AI system exempt from deep fake disclosure obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_text_disclosure/1, 'AI system exempt from public interest text disclosure obligation', 'celex:32024R1689/oj#art_50').
declared(must_encourage/2, 'actor must encourage an initiative', 'celex:32024R1689/oj#art_50').
exempt_transparency_interaction(S) :-
    interaction_obviously_ai(S).
exempt_transparency_interaction(S) :-
    authorised_by_law_for_criminal_investigation(S),
    \+ public_reporting_of_criminal_offence(S).
must_ensure(Provider, designed_to_inform_interaction(S)) :-
    provider(Provider),
    interacts_directly_with_natural_persons(S),
    \+ exempt_transparency_interaction(S).
exempt_synthetic_marking(S) :-
    standard_editing_assistive_function(S).
exempt_synthetic_marking(S) :-
    authorised_by_law_for_criminal_investigation(S).
must_ensure(Provider, machine_readable_marking(S)) :-
    provider(Provider),
    generates_synthetic_content(S),
    \+ exempt_synthetic_marking(S).
exempt_biometric_transparency(S) :-
    authorised_by_law_for_criminal_investigation(S).
must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    emotion_recognition_system(S),
    \+ exempt_biometric_transparency(S).
must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    biometric_categorisation_system(S),
    \+ exempt_biometric_transparency(S).
exempt_deep_fake_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).
must_disclose(Deployer, deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    \+ artistic_or_satirical_work(S),
    \+ exempt_deep_fake_disclosure(S).
must_disclose(Deployer, existence_of_deep_fake_content(S)) :-
    deployer(Deployer),
    generates_or_manipulates_deep_fake(S),
    artistic_or_satirical_work(S),
    \+ exempt_deep_fake_disclosure(S).
exempt_text_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).
exempt_text_disclosure(S) :-
    editorial_responsibility_held(S).
must_disclose(Deployer, artificially_generated_text(S)) :-
    deployer(Deployer),
    generates_or_manipulates_public_interest_text(S),
    \+ exempt_text_disclosure(S).
must_encourage(ai_office, drawing_up_codes_of_practice(detection_and_labelling)).
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(interaction_obviously_ai/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_by_law_for_criminal_investigation/1, 'celex:32024R1689/oj#art_50').
provenance(public_reporting_of_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(standard_editing_assistive_function/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_public_interest_text/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_satirical_work/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_synthetic_marking/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_biometric_transparency/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_deep_fake_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_text_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_50').
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
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model classified as presenting systemic risk', 'celex:32024R1689/oj#art_51').
declared(training_computation_flops/2, 'cumulative amount of computation used for training measured in floating point operations', 'celex:32024R1689/oj#art_51').
declared(equivalent_capabilities_or_impact_decision/1, 'Commission decision finding equivalent capabilities or impact', 'celex:32024R1689/oj#art_51').
declared(must_adopt_delegated_acts/2, 'obligation on the Commission to adopt delegated acts to amend thresholds or supplement benchmarks', 'celex:32024R1689/oj#art_51').
declared(necessary_to_reflect_state_of_art/1, 'condition that delegated act is necessary for thresholds to reflect state of the art', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    equivalent_capabilities_or_impact_decision(M).
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_flops(M, Flops),
    Flops > 1.0e25.
must_adopt_delegated_acts(commission, amend_thresholds_or_supplement_benchmarks(general_purpose_ai_model_with_systemic_risk)) :-
    necessary_to_reflect_state_of_art(thresholds(general_purpose_ai_model_with_systemic_risk)).
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(meets_condition_art_51_1_a/1, 'General-purpose AI model meets condition of Article 51(1)(a)', 'celex:32024R1689/oj#art_52').
declared(provider_of/2, 'Entity is the provider of an AI model or system', 'celex:32024R1689/oj#art_52').
declared(must_notify/2, 'Party must notify an authority or body', 'celex:32024R1689/oj#art_52').
declared(permitted_designate/2, 'Entity is permitted to designate an AI model with systemic risk', 'celex:32024R1689/oj#art_52').
declared(unnotified_systemic_risk/1, 'General-purpose AI model presents systemic risk but was not notified', 'celex:32024R1689/oj#art_52').
declared(permitted_present_arguments/2, 'Provider may present substantiated arguments that model lacks systemic risk', 'celex:32024R1689/oj#art_52').
declared(arguments_sufficiently_substantiated/2, 'Arguments demonstrating lack of systemic risk are sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(classified_with_systemic_risk/1, 'General-purpose AI model is classified or considered as model with systemic risk', 'celex:32024R1689/oj#art_52').
declared(qualified_alert_scientific_panel/1, 'Qualified alert regarding general-purpose AI model issued by scientific panel', 'celex:32024R1689/oj#art_52').
declared(meets_annex_13_criteria/1, 'General-purpose AI model meets criteria set out in Annex XIII', 'celex:32024R1689/oj#art_52').
declared(permitted_request_reassessment/2, 'Provider may request reassessment of systemic risk designation', 'celex:32024R1689/oj#art_52').
declared(designated_under_paragraph_4/1, 'Model has been designated as model with systemic risk pursuant to paragraph 4', 'celex:32024R1689/oj#art_52').
declared(objective_detailed_new_reasons/1, 'Request contains objective detailed and new reasons arisen since designation', 'celex:32024R1689/oj#art_52').
declared(elapsed_since_decision/2, 'Time elapsed since designation or reassessment decision', 'celex:32024R1689/oj#art_52').
declared(permitted_reassess/2, 'Commission may decide to reassess systemic risk status of model', 'celex:32024R1689/oj#art_52').
declared(must_publish/2, 'Entity must publish and keep up to date a list', 'celex:32024R1689/oj#art_52').
must_notify(Provider, commission(meeting_condition(Model), within(weeks(2)))) :-
    provider(Provider),
    provider_of(Provider, Model),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model).
permitted_designate(commission, model_with_systemic_risk(Model)) :-
    general_purpose_ai_model(Model),
    unnotified_systemic_risk(Model).
permitted_present_arguments(Provider, model_without_systemic_risk(Model)) :-
    provider(Provider),
    provider_of(Provider, Model),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model).
classified_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    provider_of(Provider, Model),
    \+ arguments_sufficiently_substantiated(Provider, Model).
arguments_sufficiently_substantiated(Provider, Model) :-
    permitted_present_arguments(Provider, model_without_systemic_risk(Model)),
    \+ arguments_rejected(Provider, Model).
declared(arguments_rejected/2, 'Commission rejected arguments regarding model systemic risk', 'celex:32024R1689/oj#art_52').
permitted_designate(commission, model_with_systemic_risk(Model)) :-
    general_purpose_ai_model(Model),
    meets_annex_13_criteria(Model).
permitted_designate(commission, model_with_systemic_risk(Model)) :-
    general_purpose_ai_model(Model),
    qualified_alert_scientific_panel(Model),
    meets_annex_13_criteria(Model).
permitted_request_reassessment(Provider, Model) :-
    provider(Provider),
    provider_of(Provider, Model),
    general_purpose_ai_model(Model),
    designated_under_paragraph_4(Model),
    objective_detailed_new_reasons(Model),
    elapsed_since_decision(Model, at_least(months(6))).
permitted_reassess(commission, Model) :-
    permitted_request_reassessment(Provider, Model),
    meets_annex_13_criteria(Model).
must_publish(commission, list(general_purpose_ai_models_with_systemic_risk)).
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(classified_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(arguments_sufficiently_substantiated/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish/2, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(provider_of_general_purpose_ai_model/2, 'Entity that is the provider of a general-purpose AI model', 'celex:32024R1689/oj#art_53').
declared(free_and_open_source_licence/1, 'Licence allowing access, usage, modification, and distribution with parameters publicly available', 'celex:32024R1689/oj#art_53').
declared(general_purpose_ai_model_with_systemic_risk/1, 'General-purpose AI model that presents systemic risks', 'celex:32024R1689/oj#art_53').
declared(exempt_technical_and_downstream_documentation/1, 'Model exempt from technical and downstream documentation duties under open-source exception', 'celex:32024R1689/oj#art_53').
declared(code_of_practice/1, 'Code of practice within the meaning of Article 56', 'celex:32024R1689/oj#art_53').
declared(adheres_to/2, 'Entity adheres to a code of practice or standard', 'celex:32024R1689/oj#art_53').
declared(complies_with/2, 'Entity complies with a standard or requirement', 'celex:32024R1689/oj#art_53').
declared(empowered_to_adopt_delegated_acts/2, 'Institution is empowered to adopt delegated acts on a specific matter', 'celex:32024R1689/oj#art_53').
provider_of_general_purpose_ai_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
exempt_technical_and_downstream_documentation(Model) :-
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    \+ general_purpose_ai_model_with_systemic_risk(Model).
must_draw_up(Provider, technical_documentation(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model),
    \+ exempt_technical_and_downstream_documentation(Model).
must_make_available(Provider, documentation_for_downstream(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model),
    \+ exempt_technical_and_downstream_documentation(Model).
must_put_in_place(Provider, copyright_policy(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model).
must_make_publicly_available(Provider, training_content_summary(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model).
must_cooperate(Provider, commission) :-
    provider_of_general_purpose_ai_model(Provider, _Model).
must_cooperate(Provider, Authority) :-
    provider_of_general_purpose_ai_model(Provider, _Model),
    national_competent_authority(Authority).
must_demonstrate(Provider, alternative_means_of_compliance(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model),
    \+ (code_of_practice(Code), adheres_to(Provider, Code)),
    \+ (harmonised_standard(Standard), complies_with(Provider, Standard)).
empowered_to_adopt_delegated_acts(commission, measurement_methodologies(annex_11)).
empowered_to_adopt_delegated_acts(commission, amend(annex_11)).
empowered_to_adopt_delegated_acts(commission, amend(annex_12)).
must_comply(Recipient, confidentiality_obligations(article_78)) :-
    obtained_pursuant_to_art_53(Recipient, _Info).
declared(obtained_pursuant_to_art_53/2, 'Entity obtained information or documentation pursuant to Article 53', 'celex:32024R1689/oj#art_53').
provenance(provider_of_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_technical_and_downstream_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_53').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply/2, 'celex:32024R1689/oj#art_53').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_53').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(adheres_to/2, 'celex:32024R1689/oj#art_53').
provenance(complies_with/2, 'celex:32024R1689/oj#art_53').
provenance(obtained_pursuant_to_art_53/2, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
declared(established_in_third_country/1, 'entity established in a third country', 'celex:32024R1689/oj#art_54').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_54').
declared(free_and_open_source_licence/1, 'licence allowing access, usage, modification, and distribution', 'celex:32024R1689/oj#art_54').
declared(publicly_available_parameters/1, 'model parameters, architecture and usage made publicly available', 'celex:32024R1689/oj#art_54').
declared(presents_systemic_risk/1, 'general-purpose AI model presents systemic risks', 'celex:32024R1689/oj#art_54').
declared(exempt_authorised_representative_obligation/1, 'provider exempt from obligation to appoint authorised representative', 'celex:32024R1689/oj#art_54').
declared(must_appoint_authorised_representative/2, 'provider must appoint an authorised representative by written mandate', 'celex:32024R1689/oj#art_54').
declared(must_enable/2, 'provider must enable authorised representative to perform tasks in mandate', 'celex:32024R1689/oj#art_54').
declared(must_perform_tasks/2, 'authorised representative must perform tasks in mandate', 'celex:32024R1689/oj#art_54').
declared(must_provide_mandate_copy/2, 'authorised representative must provide copy of mandate to AI Office upon request', 'celex:32024R1689/oj#art_54').
declared(required_mandate_powers/2, 'mandate must empower authorised representative with specified tasks', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider breaches obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform_termination/2, 'authorised representative must immediately inform AI Office of termination and reasons', 'celex:32024R1689/oj#art_54').
declared(provider_contrary_to_regulation/2, 'authorised representative considers or has reason to consider provider acting contrary to regulation', 'celex:32024R1689/oj#art_54').
exempt_authorised_representative_obligation(Provider) :-
    provider(Provider),
    free_and_open_source_licence(Model),
    publicly_available_parameters(Model),
    \+ presents_systemic_risk(Model).
must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    established_in_union(Representative),
    \+ exempt_authorised_representative_obligation(Provider).
must_enable(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative).
must_perform_tasks(Representative, Mandate) :-
    authorised_representative(Representative),
    required_mandate_powers(Representative, Mandate).
must_provide_mandate_copy(Representative, Mandate) :-
    authorised_representative(Representative),
    required_mandate_powers(Representative, Mandate).
required_mandate_powers(Representative, mandate(Model)) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model).
must_terminate_mandate(Representative, Mandate) :-
    authorised_representative(Representative),
    provider_contrary_to_regulation(Representative, Mandate).
must_inform_termination(Representative, termination(Mandate, Reasons)) :-
    authorised_representative(Representative),
    must_terminate_mandate(Representative, Mandate),
    provider_contrary_to_regulation(Representative, Reasons).
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(required_mandate_powers/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

% ==== celex:32024R1689/oj#art_55 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'General-purpose AI model that presents systemic risk', 'celex:32024R1689/oj#art_55').
declared(provider_of_general_purpose_ai_model_with_systemic_risk/2, 'Entity that is provider of a general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_55').
declared(code_of_practice/1, 'Code of practice referred to in Article 56', 'celex:32024R1689/oj#art_55').
declared(approved_code_of_practice/1, 'Approved code of practice', 'celex:32024R1689/oj#art_55').
declared(adheres_to/2, 'Entity adheres to a code of practice', 'celex:32024R1689/oj#art_55').
declared(complies_with/2, 'Entity complies with a standard', 'celex:32024R1689/oj#art_55').
declared(published/1, 'Document or standard has been published', 'celex:32024R1689/oj#art_55').
declared(presumption_of_conformity/2, 'Presumption of conformity granted for an object under an instrument', 'celex:32024R1689/oj#art_55').
declared(confidential/1, 'Information subject to confidentiality obligations', 'celex:32024R1689/oj#art_55').
declared(obtained_pursuant_to_article_55/1, 'Information or documentation obtained under Article 55', 'celex:32024R1689/oj#art_55').
provider_of_general_purpose_ai_model_with_systemic_risk(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    general_purpose_ai_model_with_systemic_risk(M).
must_perform(P, model_evaluation(M)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).
must_assess_and_mitigate(P, systemic_risk(M, union_level)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).
must_report(P, serious_incidents_and_corrective_measures(M, recipients(ai_office, national_competent_authorities))) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).
must_ensure(P, cybersecurity_protection(M, physical_infrastructure(M))) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).
permitted_reliance(P, reliance_on_code_of_practice(C, M)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M),
    code_of_practice(C),
    \+ published(harmonised_standard(_S)).
presumption_of_conformity(M, harmonised_standard(S)) :-
    general_purpose_ai_model_with_systemic_risk(M),
    harmonised_standard(S),
    complies_with(M, S).
must_demonstrate(P, alternative_adequate_means_of_compliance(M, commission)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M),
    \+ (approved_code_of_practice(C), adheres_to(P, C)),
    \+ (harmonised_standard(S), complies_with(M, S)).
confidential(Info) :-
    obtained_pursuant_to_article_55(Info).
provenance(provider_of_general_purpose_ai_model_with_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_perform/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate/2, 'celex:32024R1689/oj#art_55').
provenance(must_report/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_reliance/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_55').
provenance(confidential/1, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(code_of_practice/1, 'code of practice for general-purpose AI models', 'celex:32024R1689/oj#art_56').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_56').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_56').
declared(civil_society_organisation/1, 'civil society organisation', 'celex:32024R1689/oj#art_56').
declared(provider_of_general_purpose_ai_model/1, 'provider of a general-purpose AI model', 'celex:32024R1689/oj#art_56').
declared(presents_systemic_risk/1, 'general-purpose AI model presents systemic risk', 'celex:32024R1689/oj#art_56').
declared(adheres_to_code/2, 'provider adheres to a code of practice', 'celex:32024R1689/oj#art_56').
declared(approved_code_of_practice/1, 'code of practice approved by the Commission with general validity', 'celex:32024R1689/oj#art_56').
declared(permitted_participation/2, 'entity permitted to participate or support drawing up of a code of practice', 'celex:32024R1689/oj#art_56').
declared(permitted_limited_adherence/2, 'provider permitted to limit adherence to Article 53 obligations', 'celex:32024R1689/oj#art_56').
declared(permitted_common_rules/1, 'Commission permitted to provide common rules by implementing act', 'celex:32024R1689/oj#art_56').
declared(deadline_missed/2, 'code of practice missed specified deadline date', 'celex:32024R1689/oj#art_56').
declared(inadequate_code_of_practice/1, 'code of practice assessed as not adequate by the AI Office', 'celex:32024R1689/oj#art_56').
declared(explicitly_declares_full_adherence/2, 'provider explicitly declares interest to join the full code of practice', 'celex:32024R1689/oj#art_56').
declared(must_encourage_and_facilitate/2, 'actor must encourage and facilitate drawing up or review of code of practice', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate/2, 'actor must monitor and evaluate objectives of code of practice', 'celex:32024R1689/oj#art_56').
declared(must_publish/2, 'actor must publish an assessment of adequacy of codes of practice', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate(Office, drawing_up(Code)) :-
    ai_office(Office),
    code_of_practice(Code).
must_encourage_and_facilitate(Office, review_and_adaptation(Code)) :-
    ai_office(Office),
    code_of_practice(Code).
permitted_participation(Provider, drawing_up(Code)) :-
    provider_of_general_purpose_ai_model(Provider),
    code_of_practice(Code).
permitted_participation(Authority, drawing_up(Code)) :-
    national_competent_authority(Authority),
    code_of_practice(Code).
permitted_participation(Org, drawing_up(Code)) :-
    civil_society_organisation(Org),
    code_of_practice(Code).
permitted_participation(Provider, drawing_up(Code)) :-
    downstream_provider(Provider),
    code_of_practice(Code).
must_monitor_and_evaluate(Office, Code) :-
    ai_office(Office),
    code_of_practice(Code).
must_monitor_and_evaluate(Board, Code) :-
    board(Board),
    code_of_practice(Code).
must_publish(Office, assessment_of_adequacy(Code)) :-
    ai_office(Office),
    code_of_practice(Code).
must_publish(Board, assessment_of_adequacy(Code)) :-
    board(Board),
    code_of_practice(Code).
permitted_limited_adherence(Provider, Code) :-
    provider_of_general_purpose_ai_model(Provider),
    code_of_practice(Code),
    \+ presents_systemic_risk(Provider),
    \+ explicitly_declares_full_adherence(Provider, Code).
permitted_common_rules(Commission) :-
    commission(Commission),
    deadline_missed(code_of_practice, date(2025, 8, 2)).
permitted_common_rules(Commission) :-
    commission(Commission),
    inadequate_code_of_practice(_Code).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_participation/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_limited_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_common_rules/1, 'celex:32024R1689/oj#art_56').
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
must_establish(MS, sandbox(national_level)) :-
    member_state(MS).
operational_by(sandbox(national_level), date(2026, 8, 2)).
permitted_establish(CA, sandbox(regional_level)) :-
    national_competent_authority(CA).
permitted_establish(CA, sandbox(local_level)) :-
    national_competent_authority(CA).
permitted_establish(CA, sandbox(joint)) :-
    national_competent_authority(CA).
permitted_establish(Supervisor, sandbox(union_institutions)) :-
    edps(Supervisor).
must_allocate_resources(MS, compliance_with(art_57)) :-
    member_state(MS).
must_provide(CA, guidance(sandbox(S))) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).
must_provide(CA, written_proof(activities(P, S))) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S),
    participant_in_sandbox(P, S).
must_provide(CA, exit_report(activities(P, S))) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S),
    participant_in_sandbox(P, S).
must_mitigate_risk(CA, Risk) :-
    national_competent_authority(CA),
    significant_risk_identified(S, Risk),
    ai_regulatory_sandbox(S).
must_inform(CA, suspension(P, S)) :-
    national_competent_authority(CA),
    participant_in_sandbox(P, S),
    significant_risk_identified(S, Risk),
    \+ effective_mitigation_possible(Risk).
exempt_administrative_fines(P, ai_act) :-
    participant_in_sandbox(P, S),
    ai_regulatory_sandbox(S),
    observes_sandbox_conditions(P, S).
must_inform(CA, establishment(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).
must_publish(Office, list_of_sandboxes) :-
    ai_office(Office).
must_submit(CA, annual_report(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).
must_submit(CA, final_report(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).
must_publish(CA, annual_report_abstract(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).
must_develop(Commission, dedicated_interface(sandboxes)) :-
    european_commission(Commission).
provenance(must_establish/2, 'celex:32024R1689/oj#art_57').
provenance(operational_by/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide/2, 'celex:32024R1689/oj#art_57').
provenance(must_mitigate_risk/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_administrative_fines/2, 'celex:32024R1689/oj#art_57').
provenance(must_publish/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit/2, 'celex:32024R1689/oj#art_57').
provenance(must_develop/2, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_58').
declared(prospective_provider/1, 'entity intending to become a provider of an AI system', 'celex:32024R1689/oj#art_58').
declared(small_or_medium_enterprise/1, 'micro, small or medium-sized enterprise, including start-up', 'celex:32024R1689/oj#art_58').
must_adopt(Commission, implementing_act(ai_regulatory_sandboxes)) :-
    commission(Commission).
must_inform(Authority, decision(Application, within(months(3)))) :-
    national_competent_authority(Authority),
    Application = sandbox_application(_Applicant, _Sandbox).
permitted_application(Applicant, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    provider(Applicant),
    eligible_for_sandbox(Applicant, Sandbox).
permitted_application(Applicant, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    prospective_provider(Applicant),
    eligible_for_sandbox(Applicant, Sandbox).
permitted_application(partnership(LeadApplicant, Partner), Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    ( provider(LeadApplicant) ; prospective_provider(LeadApplicant) ),
    eligible_for_sandbox(LeadApplicant, Sandbox),
    ( deployer(Partner) ; operator(Partner) ).
exempt_fees(Applicant, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    small_or_medium_enterprise(Applicant),
    permitted_application(Applicant, Sandbox).
must_direct(Authority, prospective_provider_support(Applicant, pre_deployment_services)) :-
    national_competent_authority(Authority),
    prospective_provider(Applicant),
    permitted_application(Applicant, _Sandbox).
must_agree(Authority, terms_and_safeguards(Testing, Participants)) :-
    national_competent_authority(Authority),
    authorising_testing_in_real_world_conditions(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    Testing = testing_in_real_world_conditions(Sandbox, Participants).
provenance(must_adopt/2, 'celex:32024R1689/oj#art_58').
provenance(must_inform/2, 'celex:32024R1689/oj#art_58').
provenance(permitted_application/2, 'celex:32024R1689/oj#art_58').
provenance(exempt_fees/2, 'celex:32024R1689/oj#art_58').
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_sandbox_data_processing/2, 'processing of personal data in sandbox is permitted for developing, training and testing an AI system', 'celex:32024R1689/oj#art_59').
declared(lawful_data_collection/1, 'personal data was lawfully collected for other purposes', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'AI system is developed for safeguarding substantial public interest in a specified area', 'celex:32024R1689/oj#art_59').
declared(necessary_for_chapter_3_section_2/1, 'processing is necessary for requirements in chapter 3 section 2 and cannot be fulfilled by non-personal data', 'celex:32024R1689/oj#art_59').
declared(monitoring_and_response_mechanisms_in_place/1, 'effective monitoring and risk mitigation mechanisms in place', 'celex:32024R1689/oj#art_59').
declared(isolated_processing_environment/1, 'data is in a functionally separate, isolated, protected environment under provider control with access restricted', 'celex:32024R1689/oj#art_59').
declared(data_sharing_compliant/1, 'data sharing restrictions are observed', 'celex:32024R1689/oj#art_59').
declared(no_adverse_effect_on_subjects/1, 'processing neither leads to measures affecting subjects nor affects their data protection rights', 'celex:32024R1689/oj#art_59').
declared(data_protected_and_deleted/1, 'personal data protected by measures and deleted post participation or retention period', 'celex:32024R1689/oj#art_59').
declared(logs_kept/1, 'processing logs are kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(process_description_and_results_kept/1, 'description of process and testing results kept as part of technical documentation', 'celex:32024R1689/oj#art_59').
declared(project_summary_published/1, 'short summary of project, objectives and results published on authority website', 'celex:32024R1689/oj#art_59').
declared(based_on_specific_law/1, 'processing is based on specific Union or national law for law enforcement purposes', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_purpose/1, 'purpose relates to criminal offences, penalties, or threats to public security under law enforcement authority', 'celex:32024R1689/oj#art_59').
permitted_sandbox_data_processing(Data, System) :-
    personal_data(Data),
    ai_system(System),
    lawful_data_collection(Data),
    public_interest_area(System),
    necessary_for_chapter_3_section_2(Data),
    monitoring_and_response_mechanisms_in_place(System),
    isolated_processing_environment(Data),
    data_sharing_compliant(Data),
    no_adverse_effect_on_subjects(Data),
    data_protected_and_deleted(Data),
    logs_kept(Data),
    process_description_and_results_kept(System),
    project_summary_published(System).
permitted_sandbox_data_processing(Data, System) :-
    personal_data(Data),
    ai_system(System),
    law_enforcement_purpose(System),
    based_on_specific_law(System),
    lawful_data_collection(Data),
    public_interest_area(System),
    necessary_for_chapter_3_section_2(Data),
    monitoring_and_response_mechanisms_in_place(System),
    isolated_processing_environment(Data),
    data_sharing_compliant(Data),
    no_adverse_effect_on_subjects(Data),
    data_protected_and_deleted(Data),
    logs_kept(Data),
    process_description_and_results_kept(System),
    project_summary_published(System).
provenance(permitted_sandbox_data_processing/2, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(high_risk_ai_system/1, 'AI system considered high-risk', 'celex:32024R1689/oj#art_60').
declared(prospective_provider/1, 'entity intending to become a provider of an AI system', 'celex:32024R1689/oj#art_60').
declared(prospective_deployer/1, 'entity intending to deploy an AI system', 'celex:32024R1689/oj#art_60').
declared(testing_outside_sandbox/1, 'testing in real world conditions conducted outside AI regulatory sandboxes', 'celex:32024R1689/oj#art_60').
declared(permitted_testing_in_real_world_conditions/2, 'entity is permitted to conduct real-world testing of a system outside sandboxes', 'celex:32024R1689/oj#art_60').
declared(conditions_met_testing_outside_sandbox/2, 'all statutory conditions for testing outside sandbox are fulfilled', 'celex:32024R1689/oj#art_60').
declared(submitted_plan/2, 'entity has submitted the testing plan to the market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(approved_testing/2, 'testing and plan have been approved or tacitly approved', 'celex:32024R1689/oj#art_60').
declared(registered_testing/2, 'testing has been registered in the appropriate section of EU database', 'celex:32024R1689/oj#art_60').
declared(established_or_represented_in_union/1, 'entity is established in the Union or has appointed an EU legal representative', 'celex:32024R1689/oj#art_60').
declared(data_transfer_safeguards_implemented/1, 'safeguards under Union law implemented for third-country data transfers', 'celex:32024R1689/oj#art_60').
declared(duration_compliant/1, 'testing does not exceed allowed duration limits', 'celex:32024R1689/oj#art_60').
declared(vulnerable_groups_protected/1, 'vulnerable group subjects are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_cooperation_agreement_concluded/2, 'deployer informed, instructed, and agreement concluded', 'celex:32024R1689/oj#art_60').
declared(subject_protection_and_consent_met/1, 'informed consent or law enforcement exception conditions met', 'celex:32024R1689/oj#art_60').
declared(effectively_overseen/1, 'testing is overseen by qualified and trained persons', 'celex:32024R1689/oj#art_60').
declared(outputs_reversible_and_disregardable/1, 'predictions, recommendations, or decisions can be reversed and disregarded', 'celex:32024R1689/oj#art_60').
declared(permitted_withdrawal/2, 'subject or representative is permitted to withdraw consent and request data deletion', 'celex:32024R1689/oj#art_60').
declared(must_report/2, 'actor must report an event to an authority', 'celex:32024R1689/oj#art_60').
declared(must_mitigate_or_suspend/2, 'provider must adopt mitigation measures or suspend testing', 'celex:32024R1689/oj#art_60').
declared(must_establish_recall_procedure/2, 'provider must establish a prompt recall procedure on termination', 'celex:32024R1689/oj#art_60').
declared(must_notify/2, 'actor must notify an authority of an event', 'celex:32024R1689/oj#art_60').
declared(liable_for_damage/2, 'provider or prospective provider is liable for damage in testing', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions(Actor, System) :-
    provider(Actor),
    high_risk_ai_system(System),
    testing_outside_sandbox(System),
    conditions_met_testing_outside_sandbox(Actor, System).
permitted_testing_in_real_world_conditions(Actor, System) :-
    prospective_provider(Actor),
    high_risk_ai_system(System),
    testing_outside_sandbox(System),
    conditions_met_testing_outside_sandbox(Actor, System).
conditions_met_testing_outside_sandbox(Actor, System) :-
    submitted_plan(Actor, System),
    approved_testing(Actor, System),
    registered_testing(Actor, System),
    established_or_represented_in_union(Actor),
    data_transfer_safeguards_implemented(System),
    duration_compliant(System),
    vulnerable_groups_protected(System),
    deployer_cooperation_agreement_concluded(Actor, System),
    subject_protection_and_consent_met(System),
    effectively_overseen(System),
    outputs_reversible_and_disregardable(System).
permitted_withdrawal(Subject, System) :-
    subject(Subject),
    testing_in_real_world_conditions(System).
permitted_withdrawal(Representative, System) :-
    authorised_representative(Representative),
    testing_in_real_world_conditions(System).
must_report(Actor, incident(Incident, Authority)) :-
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)).
must_mitigate_or_suspend(Actor, System) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System).
must_establish_recall_procedure(Actor, System) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System).
must_notify(Actor, outcome_or_termination(System, Authority)) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System),
    market_surveillance_authority(Authority).
liable_for_damage(Actor, damage_in_testing(System)) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_in_real_world_conditions(System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_deployer/1, 'celex:32024R1689/oj#art_60').
provenance(testing_outside_sandbox/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(conditions_met_testing_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(submitted_plan/2, 'celex:32024R1689/oj#art_60').
provenance(approved_testing/2, 'celex:32024R1689/oj#art_60').
provenance(registered_testing/2, 'celex:32024R1689/oj#art_60').
provenance(established_or_represented_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(duration_compliant/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_groups_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_cooperation_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(subject_protection_and_consent_met/1, 'celex:32024R1689/oj#art_60').
provenance(effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(outputs_reversible_and_disregardable/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_withdrawal/2, 'celex:32024R1689/oj#art_60').
provenance(must_report/2, 'celex:32024R1689/oj#art_60').
provenance(must_mitigate_or_suspend/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify/2, 'celex:32024R1689/oj#art_60').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60/par_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').

% ==== celex:32024R1689/oj#art_61 ====
declared(obtained_informed_consent/2, 'freely-given informed consent is obtained from the subject for real-world testing', 'celex:32024R1689/oj#art_61').
declared(duly_informed/2, 'subject has been duly informed with concise, clear, relevant, and understandable information', 'celex:32024R1689/oj#art_61').
declared(informed_nature_and_objectives/2, 'information provided regarding nature, objectives, and inconvenience of testing', 'celex:32024R1689/oj#art_61').
declared(informed_conditions_and_duration/2, 'information provided regarding conditions and expected duration of participation', 'celex:32024R1689/oj#art_61').
declared(informed_rights_and_guarantees/2, 'information provided regarding rights and guarantees to refuse or withdraw without detriment', 'celex:32024R1689/oj#art_61').
declared(informed_reversal_arrangements/2, 'information provided regarding arrangements for reversing or disregarding predictions/decisions', 'celex:32024R1689/oj#art_61').
declared(informed_identification_and_contact/2, 'information provided regarding single identification number and contact details', 'celex:32024R1689/oj#art_61').
declared(valid_informed_consent/2, 'informed consent meets requirements of Article 61', 'celex:32024R1689/oj#art_61').
declared(dated/1, 'document or consent is dated', 'celex:32024R1689/oj#art_61').
declared(documented/1, 'document or consent is documented', 'celex:32024R1689/oj#art_61').
declared(copy_provided_to_subject/2, 'a copy of the informed consent is given to the subject or legal representative', 'celex:32024R1689/oj#art_61').
declared(must_obtain_informed_consent/2, 'provider or tester must obtain informed consent from the subject prior to participation', 'celex:32024R1689/oj#art_61').
declared(must_document_consent/2, 'party must document and date informed consent and provide a copy', 'celex:32024R1689/oj#art_61').
duly_informed(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed_nature_and_objectives(Subject, Testing),
    informed_conditions_and_duration(Subject, Testing),
    informed_rights_and_guarantees(Subject, Testing),
    informed_reversal_arrangements(Subject, Testing),
    informed_identification_and_contact(Subject, Testing).
valid_informed_consent(Consent, Testing) :-
    informed_consent(Consent),
    testing_in_real_world_conditions(Testing),
    obtained_informed_consent(Subject, Testing),
    duly_informed(Subject, Testing),
    dated(Consent),
    documented(Consent),
    copy_provided_to_subject(Consent, Subject).
must_obtain_informed_consent(Provider, consent_of(Subject, Testing)) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    subject(Subject).
must_document_consent(Provider, consent_of(Subject, Testing)) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    subject(Subject).
provenance(duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(valid_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_document_consent/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_62').
declared(sme/1, 'small or medium-sized enterprise, including start-up', 'celex:32024R1689/oj#art_62').
declared(established_in_union/1, 'entity has a registered office or a branch in the Union', 'celex:32024R1689/oj#art_62').
declared(fulfils_eligibility_and_selection_criteria/2, 'entity fulfils eligibility conditions and selection criteria for a sandbox', 'celex:32024R1689/oj#art_62').
declared(priority_access_to_sandbox/2, 'entity is entitled to priority access to an AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(permitted_access_to_sandbox/2, 'entity is permitted access to an AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(must_provide_priority_access/2, 'Member State must provide priority access to AI regulatory sandboxes', 'celex:32024R1689/oj#art_62').
declared(must_organise_awareness_and_training/2, 'Member State must organise tailored awareness and training activities', 'celex:32024R1689/oj#art_62').
declared(must_provide_communication_channels/2, 'Member State must utilise or establish communication channels for advice and queries', 'celex:32024R1689/oj#art_62').
declared(must_facilitate_standardisation_participation/2, 'Member State must facilitate participation in standardisation process', 'celex:32024R1689/oj#art_62').
declared(required_fee_reduction/2, 'conformity assessment fee setting must take into account SME needs and reduce fees proportionately', 'celex:32024R1689/oj#art_62').
declared(fee_for_conformity_assessment/1, 'fee charged for conformity assessment under Article 43', 'celex:32024R1689/oj#art_62').
declared(must_provide_templates/2, 'AI Office must provide standardised templates specified by the Board', 'celex:32024R1689/oj#art_62').
declared(must_maintain_information_platform/2, 'AI Office must develop and maintain a single information platform', 'celex:32024R1689/oj#art_62').
declared(must_organise_communication_campaigns/2, 'AI Office must organise communication campaigns to raise awareness', 'celex:32024R1689/oj#art_62').
declared(must_promote_best_practices_in_procurement/2, 'AI Office must evaluate and promote best practices in public procurement of AI', 'celex:32024R1689/oj#art_62').
priority_access_to_sandbox(E, S) :-
    sme(E),
    established_in_union(E),
    ai_regulatory_sandbox(S),
    fulfils_eligibility_and_selection_criteria(E, S).
must_provide_priority_access(MS, priority_access(E, S)) :-
    member_state(MS),
    priority_access_to_sandbox(E, S).
permitted_access_to_sandbox(E, S) :-
    sme(E),
    ai_regulatory_sandbox(S),
    fulfils_eligibility_and_selection_criteria(E, S).
must_organise_awareness_and_training(MS, awareness_and_training(smes_deployers_local_authorities)) :-
    member_state(MS).
must_provide_communication_channels(MS, advice_channels(implementation_and_sandboxes)) :-
    member_state(MS).
must_facilitate_standardisation_participation(MS, standardisation(smes_and_stakeholders)) :-
    member_state(MS).
required_fee_reduction(Fee, P) :-
    fee_for_conformity_assessment(Fee),
    provider(P),
    sme(P).
must_provide_templates(O, templates(BoardRequest)) :-
    ai_office(O),
    nonvar(BoardRequest).
must_maintain_information_platform(O, platform(single_information_platform)) :-
    ai_office(O).
must_organise_communication_campaigns(O, campaigns(awareness_of_obligations)) :-
    ai_office(O).
must_promote_best_practices_in_procurement(O, best_practices(procurement_of_ai_systems)) :-
    ai_office(O).
provenance(priority_access_to_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(permitted_access_to_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_and_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(required_fee_reduction/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote_best_practices_in_procurement/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'enterprise qualifying as a microenterprise', 'celex:32024R1689/oj#art_63').
declared(partner_enterprise/1, 'enterprise having partner enterprises', 'celex:32024R1689/oj#art_63').
declared(linked_enterprise/1, 'enterprise having linked enterprises', 'celex:32024R1689/oj#art_63').
declared(permitted_simplified_compliance/2, 'operator may comply with quality management system elements in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(must_develop/2, 'an entity is obliged to develop something', 'celex:32024R1689/oj#art_63').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_63').
permitted_simplified_compliance(Operator, quality_management_system) :-
    microenterprise(Operator),
    \+ partner_enterprise(Operator),
    \+ linked_enterprise(Operator).
must_develop(commission, guidelines(simplified_quality_management_system)).
provenance(permitted_simplified_compliance/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_64').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_64').
must_develop_expertise_and_capabilities(Commission, through(Office)) :-
    commission(Commission),
    ai_office(Office).
must_facilitate_tasks(State, tasks_of(Office)) :-
    member_state(State),
    ai_office(Office).
provenance(must_develop_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_artificial_intelligence_board/1, 'European Artificial Intelligence Board established by Regulation', 'celex:32024R1689/oj#art_65').
declared(board_representative/2, 'Designated representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(observer_on_board/1, 'Entity participating as an observer in the Board', 'celex:32024R1689/oj#art_65').
declared(attendee_non_voting/1, 'Entity attending Board meetings without taking part in votes', 'celex:32024R1689/oj#art_65').
declared(mandate_period/2, 'Duration and terms of appointment mandate', 'celex:32024R1689/oj#art_65').
declared(single_contact_point/2, 'Entity designated as single contact point vis-à-vis an entity or purpose', 'celex:32024R1689/oj#art_65').
declared(empowered_for_coordination/1, 'Representative empowered to facilitate consistency and coordination between national competent authorities', 'celex:32024R1689/oj#art_65').
declared(standing_subgroup/2, 'Standing sub-group established by the Board', 'celex:32024R1689/oj#art_65').
declared(chair_of_board/1, 'Chair of the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(secretariat_of_board/1, 'Entity providing secretariat for the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(must_ensure/2, 'Named party has an obligation to ensure a condition holds', 'celex:32024R1689/oj#art_65').
declared(must_adopt/2, 'Named party has an obligation to adopt a measure or rules', 'celex:32024R1689/oj#art_65').
declared(must_establish/2, 'Named party has an obligation to establish an entity or sub-group', 'celex:32024R1689/oj#art_65').
declared(permitted_invite/2, 'Body permitted to invite an entity to meetings', 'celex:32024R1689/oj#art_65').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_65').
european_artificial_intelligence_board(eaib).
observer_on_board(european_data_protection_supervisor).
attendee_non_voting(Office) :-
    ai_office(Office).
permitted_invite(eaib, Entity) :-
    european_artificial_intelligence_board(eaib),
    relevant_for_discussion(Entity).
mandate_period(R, period(years(3), renewable_times(1))) :-
    board_representative(R, _MS).
must_ensure(MS, competent_and_empowered(R)) :-
    member_state(MS),
    board_representative(R, MS).
must_ensure(MS, single_contact_point(R, eaib)) :-
    member_state(MS),
    board_representative(R, MS).
must_ensure(MS, empowered_for_coordination(R)) :-
    member_state(MS),
    board_representative(R, MS).
must_adopt(representatives_of_member_states, rules_of_procedure(eaib, majority(two_thirds))).
standing_subgroup(eaib, market_surveillance).
standing_subgroup(eaib, notifying_authorities).
must_establish(eaib, standing_subgroup(market_surveillance)).
must_establish(eaib, standing_subgroup(notifying_authorities)).
chair_of_board(R) :-
    board_representative(R, _MS).
secretariat_of_board(Office) :-
    ai_office(Office).
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(observer_on_board/1, 'celex:32024R1689/oj#art_65').
provenance(attendee_non_voting/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_65').
provenance(mandate_period/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(chair_of_board/1, 'celex:32024R1689/oj#art_65').
provenance(secretariat_of_board/1, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
must_advise(european_artificial_intelligence_board, commission).
must_advise(european_artificial_intelligence_board, member_states).
must_assist(european_artificial_intelligence_board, commission).
must_assist(european_artificial_intelligence_board, member_states).
permitted_task(european_artificial_intelligence_board, coordinate_national_competent_authorities).
permitted_task(european_artificial_intelligence_board, support_joint_activities(market_surveillance_authorities)).
permitted_task(european_artificial_intelligence_board, share_expertise_and_best_practices).
permitted_task(european_artificial_intelligence_board, advise_implementation(enforcement_gpai_rules)).
permitted_task(european_artificial_intelligence_board, harmonise_administrative_practices).
permitted_task(european_artificial_intelligence_board, issue_recommendations_and_opinions).
permitted_task(european_artificial_intelligence_board, promote_ai_literacy_and_awareness).
permitted_task(european_artificial_intelligence_board, develop_common_criteria_and_benchmarks).
permitted_task(european_artificial_intelligence_board, cooperate_with_union_bodies).
permitted_task(european_artificial_intelligence_board, cooperate_with_third_countries_and_international_organisations).
permitted_task(european_artificial_intelligence_board, assist_expertise_development).
permitted_task(european_artificial_intelligence_board, assist_ai_office(regulatory_sandboxes)).
permitted_task(european_artificial_intelligence_board, advise_guidance_documents).
permitted_task(european_artificial_intelligence_board, advise_commission_international_matters).
permitted_task(european_artificial_intelligence_board, provide_opinions_on_qualified_alerts(gpai_models)).
permitted_task(european_artificial_intelligence_board, receive_opinions_from_member_states).
provenance(must_advise/2, 'celex:32024R1689/oj#art_66').
provenance(must_assist/2, 'celex:32024R1689/oj#art_66').
provenance(permitted_task/2, 'celex:32024R1689/oj#art_66').
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
declared(permanent_member_of_advisory_forum/1, 'permanent member organization of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(eligible_advisory_forum_member/1, 'stakeholder eligible to be appointed to the advisory forum', 'celex:32024R1689/oj#art_67').
declared(stakeholder_with_recognised_expertise_in_ai/1, 'stakeholder having recognised expertise in AI', 'celex:32024R1689/oj#art_67').
declared(balanced_selection_of_stakeholders/1, 'selection representing balanced stakeholder interests', 'celex:32024R1689/oj#art_67').
advisory_forum(advisory_forum).
eligible_advisory_forum_member(M) :-
    stakeholder_with_recognised_expertise_in_ai(M).
must_appoint(commission, members_of_advisory_forum) :-
    balanced_selection_of_stakeholders(members_of_advisory_forum).
term_of_office(member_of_advisory_forum, years(2)).
permitted_extension_period(member_of_advisory_forum, years(N)) :-
    N =< 4.
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).
must_draw_up(advisory_forum, rules_of_procedure).
must_elect(advisory_forum, two_co_chairs) :-
    balanced_selection_of_stakeholders(two_co_chairs).
term_of_office(co_chair_of_advisory_forum, years(2)).
permitted_extension_period(co_chair_of_advisory_forum, renewable_once).
must_hold(advisory_forum, meetings(at_least_per_year(2))).
permitted_invite(advisory_forum, experts_and_stakeholders).
permitted_prepare(advisory_forum, opinions_recommendations_and_contributions(requested_by(commission))).
permitted_prepare(advisory_forum, opinions_recommendations_and_contributions(requested_by(board))).
permitted_establish(advisory_forum, sub_groups(examining_specific_questions)).
must_prepare(advisory_forum, annual_activity_report).
must_make_publicly_available(advisory_forum, annual_activity_report).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(eligible_advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_extension_period/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_68').
declared(expert/1, 'expert member of the scientific panel', 'celex:32024R1689/oj#art_68').
declared(qualifying_expert/1, 'expert meeting qualifications for the scientific panel', 'celex:32024R1689/oj#art_68').
declared(independent_from_providers/1, 'expert is independent from any provider of AI systems or general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(diligent_accurate_objective/1, 'expert possesses ability to act diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(particular_expertise_in_ai/1, 'expert possesses particular competence and expertise in the field of AI', 'celex:32024R1689/oj#art_68').
declared(prohibited_instruction_taking/1, 'expert is prohibited from seeking or taking external instructions', 'celex:32024R1689/oj#art_68').
must_establish(commission, scientific_panel).
qualifying_expert(E) :-
    expert(E),
    particular_expertise_in_ai(E),
    independent_from_providers(E),
    diligent_accurate_objective(E).
must_ensure(commission, representation(fair_gender_and_geographical, scientific_panel)).
must_advise(scientific_panel, ai_office).
must_support(scientific_panel, ai_office).
must_support(scientific_panel, market_surveillance_authorities) :-
    requested_by(market_surveillance_authorities).
must_support(scientific_panel, cross_border_market_surveillance).
must_support(scientific_panel, safeguard_procedure(ai_office)).
must_perform(E, tasks_with_impartiality_and_objectivity) :-
    expert(E).
must_ensure(E, confidentiality_of_information) :-
    expert(E).
prohibited_instruction_taking(E) :-
    expert(E).
must_draw_up(E, declaration_of_interests(publicly_available)) :-
    expert(E).
must_establish(ai_office, systems_and_procedures(manage_and_prevent_conflicts_of_interest)).
must_establish(commission, implementing_act(alerts_and_assistance(scientific_panel))).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(qualifying_expert/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_providers/1, 'celex:32024R1689/oj#art_68').
provenance(diligent_accurate_objective/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(prohibited_instruction_taking/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise/2, 'celex:32024R1689/oj#art_68').
provenance(must_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_69').
declared(scientific_panel_expert/1, 'expert of the scientific panel established under the AI Act', 'celex:32024R1689/oj#art_69').
declared(enforcement_activity/2, 'enforcement activity carried out by an actor under the AI Act', 'celex:32024R1689/oj#art_69').
declared(permitted_call_upon/2, 'an entity is permitted to call upon another to support activities', 'celex:32024R1689/oj#art_69').
declared(fee_requirement_applies/2, 'requirement to pay fees applies to an actor for received advice/support', 'celex:32024R1689/oj#art_69').
declared(fees_set_in_implementing_act/1, 'fees for advice/support are established in the implementing act under Article 68(1)', 'celex:32024R1689/oj#art_69').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_69').
declared(must_facilitate_access/2, 'actor must facilitate timely access of a party to designated experts', 'celex:32024R1689/oj#art_69').
declared(must_ensure_efficient_organisation/2, 'actor must ensure combination of support activities is efficiently organised', 'celex:32024R1689/oj#art_69').
permitted_call_upon(MS, support(Expert, Activity)) :-
    member_state(MS),
    scientific_panel_expert(Expert),
    enforcement_activity(MS, Activity).
fee_requirement_applies(MS, advice_and_support(Expert)) :-
    member_state(MS),
    scientific_panel_expert(Expert),
    fees_set_in_implementing_act(advice_and_support(Expert)).
must_facilitate_access(Comm, access(MS, Expert)) :-
    commission(Comm),
    member_state(MS),
    scientific_panel_expert(Expert).
must_ensure_efficient_organisation(Comm, combined_support(testing_support_art_84, expert_support_art_69)) :-
    commission(Comm).
provenance(permitted_call_upon/2, 'celex:32024R1689/oj#art_69').
provenance(fee_requirement_applies/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state/1, 'entity that is an EU Member State', 'celex:32024R1689/oj#art_70').
declared(single_point_of_contact/1, 'designated market surveillance authority acting as single point of contact', 'celex:32024R1689/oj#art_70').
declared(union_institution_body_office_or_agency/1, 'EU institution, body, office or agency', 'celex:32024R1689/oj#art_70').
declared(must_designate/2, 'actor must designate a specified authority or body', 'celex:32024R1689/oj#art_70').
declared(must_communicate/2, 'actor must communicate specified information to a recipient', 'celex:32024R1689/oj#art_70').
declared(must_publish/2, 'actor must make specified information publicly available', 'celex:32024R1689/oj#art_70').
declared(must_ensure/2, 'actor must ensure a specified condition or provision', 'celex:32024R1689/oj#art_70').
declared(must_assess/2, 'actor must assess specified requirements periodically', 'celex:32024R1689/oj#art_70').
declared(must_take_measures/2, 'actor must take measures regarding a specified matter', 'celex:32024R1689/oj#art_70').
declared(must_comply_with/2, 'actor must comply with specified obligations', 'celex:32024R1689/oj#art_70').
declared(must_report/2, 'actor must report specified matters to a recipient', 'celex:32024R1689/oj#art_70').
declared(must_transmit/2, 'actor must transmit specified information to a recipient', 'celex:32024R1689/oj#art_70').
declared(must_facilitate/2, 'actor must facilitate specified processes', 'celex:32024R1689/oj#art_70').
declared(permitted_guidance/2, 'actor is permitted to provide guidance and advice on a subject', 'celex:32024R1689/oj#art_70').
declared(must_consult/2, 'actor must consult another authority on a matter', 'celex:32024R1689/oj#art_70').
declared(competent_authority_for/2, 'authority acts as competent authority for an entity', 'celex:32024R1689/oj#art_70').
national_competent_authority(A) :-
    notifying_authority(A).
national_competent_authority(A) :-
    market_surveillance_authority(A).
must_designate(MS, authority(notifying_authority)) :-
    member_state(MS).
must_designate(MS, authority(market_surveillance_authority)) :-
    member_state(MS).
single_point_of_contact(A) :-
    market_surveillance_authority(A).
must_designate(MS, single_point_of_contact(A)) :-
    member_state(MS),
    market_surveillance_authority(A).
must_communicate(MS, to(commission, identity_and_tasks(A))) :-
    member_state(MS),
    national_competent_authority(A).
must_communicate(MS, to(commission, single_point_of_contact(A))) :-
    member_state(MS),
    single_point_of_contact(A).
must_publish(MS, contact_information(national_competent_authorities_and_spoc)) :-
    member_state(MS).
must_publish(commission, list_of_single_points_of_contact).
must_ensure(MS, adequate_resources(A)) :-
    member_state(MS),
    national_competent_authority(A).
must_assess(MS, periodicity(annual, competence_and_resource_requirements(A))) :-
    member_state(MS),
    national_competent_authority(A).
must_take_measures(A, adequate_level(cybersecurity)) :-
    national_competent_authority(A).
must_comply_with(A, confidentiality_obligations) :-
    national_competent_authority(A).
must_report(MS, to(commission, periodicity(years(2), adequacy_assessment(financial_and_human_resources(national_competent_authorities))))) :-
    member_state(MS).
must_transmit(commission, to(board, resource_reports(national_competent_authorities))).
must_facilitate(commission, exchange_of_experience(national_competent_authorities)).
permitted_guidance(A, implementation(ai_act)) :-
    national_competent_authority(A).
must_consult(A, other_union_law_national_competent_authorities(ai_system(S))) :-
    national_competent_authority(A),
    ai_system(S).
competent_authority_for(european_data_protection_supervisor, E) :-
    union_institution_body_office_or_agency(E).
provenance(national_competent_authority/1, 'celex:32024R1689/oj#art_70').
provenance(single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(member_state/1, 'celex:32024R1689/oj#art_70').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_70').
provenance(must_publish/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_70').
provenance(must_comply_with/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult/2, 'celex:32024R1689/oj#art_70').
provenance(competent_authority_for/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_71').
must_maintain(commission, eu_database(high_risk_ai_systems)).
must_consult(commission, relevant_experts) :-
    setting_functional_specifications(eu_database(high_risk_ai_systems)).
must_consult(commission, board) :-
    updating_functional_specifications(eu_database(high_risk_ai_systems)).
must_enter(Provider, data(annex_8_section_1_and_2, System)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_enter(Representative, data(annex_8_section_1_and_2, System)) :-
    authorised_representative(Representative),
    high_risk_ai_system(System).
must_enter(Deployer, data(annex_8_section_3, System)) :-
    deployer(Deployer),
    public_deployer(Deployer),
    high_risk_ai_system(System).
publicly_available(registration_info(article_49, System)) :-
    ai_system(System).
restricted_access(registration_info(article_49_par_4, System)) :-
    ai_system(System).
restricted_access(registration_info(article_60_par_4_c, System)) :-
    ai_system(System).
restricted_access(registration_info(article_60, System)) :-
    ai_system(System),
    provider(Provider),
    \+ consent_for_public_access(Provider, registration_info(article_60, System)).
publicly_available(registration_info(article_60, System)) :-
    ai_system(System),
    provider(Provider),
    consent_for_public_access(Provider, registration_info(article_60, System)).
controller_of(commission, eu_database(high_risk_ai_systems)).
must_provide(commission, technical_and_administrative_support(Operator)) :-
    operator(Operator).
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_access/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide/2, 'celex:32024R1689/oj#art_71').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan/1, 'document laying down the post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_nature_and_risks/2, 'system is proportionate to technology nature and system risks', 'celex:32024R1689/oj#art_72').
declared(technical_documentation/1, 'technical documentation of an AI system', 'celex:32024R1689/oj#art_72').
declared(contains_element/2, 'document or container contains element', 'celex:32024R1689/oj#art_72').
declared(based_on_plan/2, 'system is based on a specific plan', 'celex:32024R1689/oj#art_72').
declared(covers_union_harmonisation_legislation_annex_i/1, 'system is covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_72').
declared(covered_annex_iii_point_5_financial_institution/1, 'system is covered by Annex III point 5 and subject to Union financial services law governance', 'celex:32024R1689/oj#art_72').
declared(achieves_equivalent_level_of_protection/1, 'integrated plan achieves an equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(existing_post_market_monitoring_established/1, 'post-market monitoring system and plan already established under other Union legislation', 'celex:32024R1689/oj#art_72').
declared(must_establish/2, 'actor must establish an object', 'celex:32024R1689/oj#art_72').
declared(must_document/2, 'actor must document an object', 'celex:32024R1689/oj#art_72').
declared(permitted_integration/2, 'actor is permitted to integrate elements into existing systems and plans', 'celex:32024R1689/oj#art_72').
declared(required_monitoring_collection/2, 'monitoring system must collect and analyse data on system performance', 'celex:32024R1689/oj#art_72').
declared(exempt_monitoring_data/2, 'data excluded from post-market monitoring collection obligation', 'celex:32024R1689/oj#art_72').
must_establish(Provider, post_market_monitoring_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    proportionate_to_nature_and_risks(post_market_monitoring_system(System), System).
must_document(Provider, post_market_monitoring_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    proportionate_to_nature_and_risks(post_market_monitoring_system(System), System).
required_monitoring_collection(post_market_monitoring_system(System), data_lifetime_performance(System)) :-
    high_risk_ai_system(System).
exempt_monitoring_data(post_market_monitoring_system(System), Data) :-
    sensitive_operational_data(Data),
    deployer(Deployer),
    law_enforcement_authority(Deployer),
    high_risk_ai_system(System).
post_market_monitoring_system(System) :-
    based_on_plan(System, Plan),
    post_market_monitoring_plan(Plan),
    technical_documentation(Doc),
    contains_element(Doc, Plan).
permitted_integration(Provider, post_market_monitoring(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    covers_union_harmonisation_legislation_annex_i(System),
    existing_post_market_monitoring_established(System),
    achieves_equivalent_level_of_protection(System).
permitted_integration(Provider, post_market_monitoring(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_annex_iii_point_5_financial_institution(System),
    existing_post_market_monitoring_established(System),
    achieves_equivalent_level_of_protection(System).
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(required_monitoring_collection/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_monitoring_data/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system/1, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration/2, 'celex:32024R1689/oj#art_72').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_73').
declared(incident_occurred_in/2, 'incident occurred in a Member State', 'celex:32024R1689/oj#art_73').
declared(causal_link_established_or_likely/2, 'causal link established or reasonably likely between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(aware_of_serious_incident/2, 'entity became aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(critical_infrastructure_disruption/1, 'serious incident causing disruption of critical infrastructure as defined in Art. 3(49)(b)', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'serious incident involving death of a person', 'celex:32024R1689/oj#art_73').
declared(causal_link_suspected_or_established/2, 'causal relationship established or suspected between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(fundamental_rights_breach/1, 'serious incident involving breach of fundamental rights under Art. 3(49)(c)', 'celex:32024R1689/oj#art_73').
declared(subject_to_equivalent_reporting/1, 'provider subject to equivalent reporting obligations in Union legislative instruments', 'celex:32024R1689/oj#art_73').
declared(medical_device_ai_system/1, 'high-risk AI system covered by Regulation (EU) 2017/745 or 2017/746', 'celex:32024R1689/oj#art_73').
declared(designated_competent_authority/2, 'competent authority designated by Member State where incident occurred', 'celex:32024R1689/oj#art_73').
declared(alters_ai_system/1, 'investigation alters AI system affecting evaluation of causes', 'celex:32024R1689/oj#art_73').
declared(informed_competent_authority/2, 'provider informed competent authority of planned alteration', 'celex:32024R1689/oj#art_73').
must_report(Provider, incident_report(Incident, MarketSurveillanceAuthority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    incident_occurred_in(Incident, MemberState),
    market_surveillance_authority(MarketSurveillanceAuthority),
    incident_occurred_in(MarketSurveillanceAuthority, MemberState).
required_reporting_deadline(Incident, days(15)) :-
    serious_incident(Incident),
    \+ widespread_infringement(Incident),
    \+ critical_infrastructure_disruption(Incident),
    \+ death_of_person(Incident).
required_reporting_deadline(Incident, days(2)) :-
    serious_incident(Incident),
    widespread_infringement(Incident).
required_reporting_deadline(Incident, days(2)) :-
    serious_incident(Incident),
    critical_infrastructure_disruption(Incident).
required_reporting_deadline(Incident, days(10)) :-
    serious_incident(Incident),
    death_of_person(Incident).
permitted_initial_report(Provider, incomplete_report(Incident)) :-
    provider(Provider),
    serious_incident(Incident).
permitted_initial_report(Deployer, incomplete_report(Incident)) :-
    deployer(Deployer),
    serious_incident(Incident).
must_investigate(Provider, serious_incident_investigation(Incident, System)) :-
    provider(Provider),
    serious_incident(Incident),
    ai_system(System).
must_cooperate(Provider, authority_investigation(Authority, Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    national_competent_authority(Authority).
must_cooperate(Provider, notified_body_investigation(NotifiedBody, Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    notified_body(NotifiedBody).
prohibited_investigation(Provider, investigation(Incident, System)) :-
    provider(Provider),
    serious_incident(Incident),
    ai_system(System),
    alters_ai_system(investigation(Incident, System)),
    \+ informed_competent_authority(Provider, investigation(Incident, System)).
must_inform(MarketSurveillanceAuthority, fundamental_rights_incident(Incident)) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    serious_incident(Incident),
    fundamental_rights_breach(Incident).
must_take_measures(MarketSurveillanceAuthority, incident_measures(Incident, within(days(7)))) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    serious_incident(Incident).
required_incident_scope(System, fundamental_rights_breach_only) :-
    high_risk_ai_system(System),
    provider(Provider),
    subject_to_equivalent_reporting(Provider).
required_incident_scope(System, fundamental_rights_breach_only) :-
    medical_device_ai_system(System).
must_report(Provider, medical_incident_report(Incident, Authority)) :-
    provider(Provider),
    medical_device_ai_system(System),
    serious_incident(Incident),
    fundamental_rights_breach(Incident),
    incident_occurred_in(Incident, MemberState),
    designated_competent_authority(Authority, MemberState).
must_notify(Authority, commission_serious_incident(Incident)) :-
    national_competent_authority(Authority),
    serious_incident(Incident).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(incident_occurred_in/2, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established_or_likely/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(critical_infrastructure_disruption/1, 'celex:32024R1689/oj#art_73').
provenance(death_of_person/1, 'celex:32024R1689/oj#art_73').
provenance(causal_link_suspected_or_established/2, 'celex:32024R1689/oj#art_73').
provenance(fundamental_rights_breach/1, 'celex:32024R1689/oj#art_73').
provenance(subject_to_equivalent_reporting/1, 'celex:32024R1689/oj#art_73').
provenance(medical_device_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(designated_competent_authority/2, 'celex:32024R1689/oj#art_73').
provenance(alters_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(informed_competent_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
provenance(required_reporting_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(required_incident_scope/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_74').
declared(financial_institution/1, 'financial institution regulated by Union financial services law', 'celex:32024R1689/oj#art_74').
declared(direct_connection_with_financial_services/1, 'AI system used in direct connection with the provision of financial services', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_authority_for/2, 'authority acting as market surveillance authority for an AI system or entity', 'celex:32024R1689/oj#art_74').
declared(financial_supervisory_authority/1, 'national authority responsible for financial supervision', 'celex:32024R1689/oj#art_74').
declared(union_institution_body_office_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_74').
declared(court_of_justice_judicial_capacity/1, 'Court of Justice of the European Union acting in its judicial capacity', 'celex:32024R1689/oj#art_74').
declared(permitted_remote_powers/1, 'market surveillance authority is permitted to exercise certain powers remotely', 'celex:32024R1689/oj#art_74').
declared(source_code_access_condition_necessary/1, 'access to source code is necessary to assess conformity with Chapter III Section 2', 'celex:32024R1689/oj#art_74').
declared(source_code_access_condition_exhausted/1, 'testing or auditing procedures based on data and documentation proved insufficient or exhausted', 'celex:32024R1689/oj#art_74').
must_report(Authority, competition_information(commission)) :-
    market_surveillance_authority(Authority).
must_report(Authority, competition_information(national_competition_authority)) :-
    market_surveillance_authority(Authority).
must_report(Authority, prohibited_practices_and_measures(commission)) :-
    market_surveillance_authority(Authority).
permitted_remote_powers(Authority) :-
    market_surveillance_authority(Authority).
market_surveillance_authority_for(Authority, System) :-
    high_risk_ai_system(System),
    financial_institution(Institution),
    operator(Institution),
    direct_connection_with_financial_services(System),
    financial_supervisory_authority(Authority).
market_surveillance_authority_for(edps, Entity) :-
    union_institution_body_office_agency(Entity),
    \+ court_of_justice_judicial_capacity(Entity).
must_grant_access(Provider, documentation_and_datasets(Authority, System)) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).
must_grant_access(Provider, source_code(Authority, System)) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    source_code_access_condition_necessary(System),
    source_code_access_condition_exhausted(System).
must_treat_confidential(Authority, Information) :-
    market_surveillance_authority(Authority),
    non_personal_data(Information).
must_treat_confidential(Authority, Information) :-
    market_surveillance_authority(Authority),
    personal_data(Information).
provenance(must_report/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_remote_powers/1, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_treat_confidential/2, 'celex:32024R1689/oj#art_74').
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
declared(developed_by/2, 'system or model developed by provider', 'celex:32024R1689/oj#art_75').
declared(based_on_model/2, 'AI system is based on general-purpose AI model', 'celex:32024R1689/oj#art_75').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_75').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_75').
powers_to_monitor_and_supervise(Office, System) :-
    ai_office(Office),
    general_purpose_ai_system(System),
    general_purpose_ai_model(Model),
    based_on_model(System, Model),
    provider(Provider),
    developed_by(System, Provider),
    developed_by(Model, Provider).
market_surveillance_authority_powers(Office) :-
    ai_office(Office).
must_cooperate(Authority, evaluation(ai_office, System)) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(System),
    direct_deployment_for_high_risk_purpose(System),
    suspected_non_compliant(Authority, System).
must_inform(Authority, suspected_non_compliance(System, Board)) :-
    market_surveillance_authority(Authority),
    board(Board),
    general_purpose_ai_system(System),
    direct_deployment_for_high_risk_purpose(System),
    suspected_non_compliant(Authority, System).
must_inform(Authority, suspected_non_compliance(System, OtherAuthority)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority,
    general_purpose_ai_system(System),
    direct_deployment_for_high_risk_purpose(System),
    suspected_non_compliant(Authority, System).
permitted_request(Authority, request_model_access(Office, Model, System)) :-
    market_surveillance_authority(Authority),
    ai_office(Office),
    high_risk_ai_system(System),
    general_purpose_ai_model(Model),
    based_on_model(System, Model),
    unable_to_access_model_information(Authority, Model).
must_supply(Office, relevant_information(Authority, System, within(days(30)))) :-
    ai_office(Office),
    reasoned_request_for_model_info(Authority, System, _Model),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).
must_safeguard(Authority, confidentiality(Info)) :-
    market_surveillance_authority(Authority),
    confidential_information(Authority, Info).
provenance(powers_to_monitor_and_supervise/2, 'celex:32024R1689/oj#art_75').
provenance(market_surveillance_authority_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
must_ensure(Authority, compliance(Testing)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing).
must_verify(Authority, compliance_with_art_60(Testing)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    testing_of_system(Testing, System),
    supervised_within_sandbox(System).
permitted_allow(Authority, derogation(Testing, [art_60_4_f, art_60_4_g])) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    testing_of_system(Testing, System),
    supervised_within_sandbox(System).
permitted_suspend_or_terminate(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_non_compliance(Testing).
permitted_require_modification(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_non_compliance(Testing).
must_indicate(Decision, grounds_and_challenge_procedure) :-
    decision_taken(Authority, Decision),
    market_surveillance_authority(Authority),
    ( Decision = suspend_or_terminate(Testing) ; Decision = modify_testing(Testing) ),
    testing_in_real_world_conditions(Testing).
must_indicate(Objection, grounds_and_challenge_procedure) :-
    objection_issued(Authority, Objection),
    market_surveillance_authority(Authority).
must_communicate(Authority, grounds_to(OtherAuthority, Decision)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority,
    decision_taken(Authority, Decision),
    ( Decision = suspend_or_terminate(Testing) ; Decision = modify_testing(Testing) ),
    tested_in_member_state(Testing, OtherState),
    tested_in_member_state(Testing, State),
    OtherState \= State.
provenance(must_ensure/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_allow/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_or_terminate/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_76').
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
declared(high_risk_ai_system/1, 'high-risk AI system as referred to in Annex III or related provisions', 'celex:32024R1689/oj#art_77').
declared(documentation_under_regulation/1, 'documentation created or maintained under the AI Act', 'celex:32024R1689/oj#art_77').
declared(necessary_for_mandate/2, 'access to documentation is necessary for an authority to fulfill its mandate', 'celex:32024R1689/oj#art_77').
declared(within_jurisdiction/2, 'matter or documentation is within the limits of jurisdiction of the authority', 'celex:32024R1689/oj#art_77').
declared(permitted_access/2, 'authority is empowered to request and access documentation', 'celex:32024R1689/oj#art_77').
declared(must_inform/2, 'party has a duty to inform another party of an event or action', 'celex:32024R1689/oj#art_77').
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_77').
declared(must_identify/2, 'Member State must identify fundamental rights authorities by deadline', 'celex:32024R1689/oj#art_77').
declared(must_publish/2, 'Member State must make publicly available a list', 'celex:32024R1689/oj#art_77').
declared(must_notify/2, 'Member State must notify list to Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(must_maintain/2, 'Member State must keep list up to date', 'celex:32024R1689/oj#art_77').
declared(documentation_insufficient/2, 'documentation is insufficient to ascertain whether an infringement occurred', 'celex:32024R1689/oj#art_77').
declared(permitted_request_testing/2, 'authority may request market surveillance authority to organise testing', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority must organise testing with involvement of authority', 'celex:32024R1689/oj#art_77').
declared(confidential_treatment_applies/1, 'information or documentation obtained under Article 77 must be treated confidentially', 'celex:32024R1689/oj#art_77').
permitted_access(Auth, Doc) :-
    fundamental_rights_authority(Auth),
    documentation_under_regulation(Doc),
    necessary_for_mandate(Auth, Doc),
    within_jurisdiction(Auth, Doc).
must_inform(Auth, request(Doc, MarketSurveillanceAuthority)) :-
    fundamental_rights_authority(Auth),
    documentation_under_regulation(Doc),
    market_surveillance_authority(MarketSurveillanceAuthority),
    permitted_access(Auth, Doc).
must_identify(MS, list(fundamental_rights_authorities, deadline(date(2024, 11, 2)))) :-
    member_state(MS).
must_publish(MS, list(fundamental_rights_authorities)) :-
    member_state(MS).
must_notify(MS, list(fundamental_rights_authorities, recipients(commission, member_states))) :-
    member_state(MS).
must_maintain(MS, list(fundamental_rights_authorities, up_to_date)) :-
    member_state(MS).
permitted_request_testing(Auth, testing(System, market_surveillance_authority(MSA))) :-
    fundamental_rights_authority(Auth),
    market_surveillance_authority(MSA),
    high_risk_ai_system(System),
    documentation_under_regulation(Doc),
    documentation_insufficient(Doc, System).
must_organise_testing(MSA, testing(System, involvement(Auth), within(reasonable_time))) :-
    market_surveillance_authority(MSA),
    fundamental_rights_authority(Auth),
    high_risk_ai_system(System),
    permitted_request_testing(Auth, testing(System, market_surveillance_authority(MSA))).
confidential_treatment_applies(obtained(Auth, InfoOrDoc)) :-
    fundamental_rights_authority(Auth),
    (   documentation_under_regulation(InfoOrDoc)
    ;   permitted_access(Auth, InfoOrDoc)
    ).
provenance(permitted_access/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify/2, 'celex:32024R1689/oj#art_77').
provenance(must_publish/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_77').
provenance(permitted_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(confidential_treatment_applies/1, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_78').
declared(involved_in_application/1, 'entity involved in the application of the AI Regulation', 'celex:32024R1689/oj#art_78').
declared(exception_trade_secret_disclosure/1, 'lawful disclosure of trade secrets under Directive (EU) 2016/943', 'celex:32024R1689/oj#art_78').
declared(sensitive_security_high_risk_ai_system/1, 'high-risk AI system under Annex III points 1, 6, or 7 used or provided by sensitive authorities', 'celex:32024R1689/oj#art_78').
declared(sensitive_authority/1, 'law enforcement, border control, immigration, or asylum authority', 'celex:32024R1689/oj#art_78').
declared(prior_consultation_held/2, 'prior consultation held between receiving body, originating authority, and deployer', 'celex:32024R1689/oj#art_78').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_78').
involved_in_application(E) :- commission(E).
involved_in_application(E) :- market_surveillance_authority(E).
involved_in_application(E) :- notified_body(E).
involved_in_application(E) :- national_competent_authority(E).
must_respect_confidentiality(Actor, Data) :-
    involved_in_application(Actor),
    \+ exception_trade_secret_disclosure(Data).
must_request_only_necessary_data(Authority, System) :-
    involved_in_application(Authority),
    ai_system(System).
must_put_in_place_cybersecurity_measures(Authority, Data) :-
    involved_in_application(Authority),
    ( personal_data(Data) ; non_personal_data(Data) ).
must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application(Authority),
    ( personal_data(Data) ; non_personal_data(Data) ).
prohibited_disclosure(confidential_exchange(Info, System)) :-
    sensitive_security_high_risk_ai_system(System),
    \+ prior_consultation_held(Info, System).
prohibited_exchange(sensitive_operational_data_in_exchange(Data, Authority)) :-
    sensitive_operational_data(Data),
    sensitive_authority(Authority).
must_keep_technical_documentation_on_premises(Authority, technical_documentation(System)) :-
    provider(Authority),
    sensitive_authority(Authority),
    sensitive_security_high_risk_ai_system(System).
must_ensure_immediate_access(Authority, access_to(technical_documentation(System), MSA)) :-
    provider(Authority),
    sensitive_authority(Authority),
    sensitive_security_high_risk_ai_system(System),
    market_surveillance_authority(MSA).
permitted_access(Staff, technical_documentation(System)) :-
    staff_of_market_surveillance_authority(Staff, MSA),
    market_surveillance_authority(MSA),
    sensitive_security_high_risk_ai_system(System),
    holds_appropriate_security_clearance(Staff).
permitted_exchange_with_third_country(commission, exchange(Info, ThirdCountryAuthority)) :-
    necessary_exchange(Info),
    confidentiality_arrangement_in_place(ThirdCountryAuthority).
permitted_exchange_with_third_country(MS, exchange(Info, ThirdCountryAuthority)) :-
    member_state(MS),
    necessary_exchange(Info),
    confidentiality_arrangement_in_place(ThirdCountryAuthority).
provenance(involved_in_application/1, 'celex:32024R1689/oj#art_78').
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_put_in_place_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(prohibited_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(must_keep_technical_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_78').
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
declared(presents_risk/1, 'AI system presents a risk to health, safety, or fundamental rights', 'celex:32024R1689/oj#art_79').
declared(non_compliant/1, 'AI system does not comply with requirements and obligations', 'celex:32024R1689/oj#art_79').
declared(adequate_corrective_action_taken/2, 'operator has taken adequate corrective action for the AI system', 'celex:32024R1689/oj#art_79').
declared(objection_raised/1, 'an objection has been raised against a provisional measure', 'celex:32024R1689/oj#art_79').
declared(prohibited_ai_practice/1, 'AI system involves a prohibited AI practice under Article 5', 'celex:32024R1689/oj#art_79').
must_evaluate(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).
must_inform(Authority, fundamental_rights_bodies) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).
must_cooperate(Authority, fundamental_rights_bodies) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).
must_cooperate(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).
must_cooperate(Operator, fundamental_rights_bodies) :-
    operator(Operator),
    ai_system(System),
    presents_risk(System).
must_require_corrective_action(Authority, corrective_action(Operator, System)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    presents_risk(System),
    non_compliant(System).
must_inform(Authority, notified_body(Body, non_compliance(System))) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    ai_system(System),
    non_compliant(System).
must_take_corrective_action(Operator, System) :-
    operator(Operator),
    ai_system(System),
    non_compliant(System),
    making_available_on_market(System).
must_take_provisional_measure(Authority, provisional_measure(Operator, System)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    non_compliant(System),
    \+ adequate_corrective_action_taken(Operator, System).
must_notify(Authority, provisional_measure(Operator, System)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    non_compliant(System),
    \+ adequate_corrective_action_taken(Operator, System).
objection_period(provisional_measure(_Operator, System), days(30)) :-
    prohibited_ai_practice(System).
objection_period(provisional_measure(_Operator, System), months(3)) :-
    \+ prohibited_ai_practice(System).
deemed_justified(Measure) :-
    Measure = provisional_measure(_Operator, _System),
    objection_period(Measure, _Period),
    \+ objection_raised(Measure).
provenance(presents_risk/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliant/1, 'celex:32024R1689/oj#art_79').
provenance(adequate_corrective_action_taken/2, 'celex:32024R1689/oj#art_79').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_79').
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measure/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(objection_period/2, 'celex:32024R1689/oj#art_79').
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
declared(reason_to_consider_high_risk/2, 'authority has sufficient reason to consider a system classified as non-high-risk is high-risk', 'celex:32024R1689/oj#art_80').
declared(high_risk_evaluation_finding/2, 'evaluation establishes that the system is high-risk', 'celex:32024R1689/oj#art_80').
declared(system_use_not_restricted_to_national_territory/1, 'use of the system is not restricted to national territory', 'celex:32024R1689/oj#art_80').
declared(brings_into_compliance/2, 'provider brings system into compliance within prescribed period', 'celex:32024R1689/oj#art_80').
declared(takes_adequate_corrective_action/2, 'provider takes adequate corrective action within prescribed period', 'celex:32024R1689/oj#art_80').
declared(intentional_misclassification_to_circumvent/2, 'provider misclassified system as non-high-risk to circumvent Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_80').
declared(subject_to_fines/2, 'provider is subject to fines for non-compliance or circumvention', 'celex:32024R1689/oj#art_80').
declared(article_79_paragraphs_5_to_9_apply/1, 'safeguard procedure under Article 79(5)-(9) applies to system', 'celex:32024R1689/oj#art_80').
declared(permitted_perform_checks/2, 'authority is permitted to perform checks to monitor classification', 'celex:32024R1689/oj#art_80').
must_evaluate(Authority, classification(System)) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    reason_to_consider_high_risk(Authority, System).
must_require(Authority, compliance_and_corrective_action(Provider, System)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_evaluation_finding(Authority, System).
must_inform(Authority, evaluation_results_and_actions(System)) :-
    market_surveillance_authority(Authority),
    high_risk_evaluation_finding(Authority, System),
    system_use_not_restricted_to_national_territory(System).
must_bring_into_compliance(Provider, System) :-
    provider(Provider),
    high_risk_evaluation_finding(_Authority, System).
subject_to_fines(Provider, non_compliance(System)) :-
    provider(Provider),
    high_risk_evaluation_finding(Authority, System),
    must_require(Authority, compliance_and_corrective_action(Provider, System)),
    \+ brings_into_compliance(Provider, System).
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_evaluation_finding(_Authority, System),
    making_available_on_market(System).
article_79_paragraphs_5_to_9_apply(System) :-
    provider(Provider),
    high_risk_evaluation_finding(Authority, System),
    must_require(Authority, compliance_and_corrective_action(Provider, System)),
    \+ takes_adequate_corrective_action(Provider, System).
subject_to_fines(Provider, circumvention(System)) :-
    provider(Provider),
    intentional_misclassification_to_circumvent(Provider, System).
permitted_perform_checks(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System).
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_80').
provenance(must_require/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(article_79_paragraphs_5_to_9_apply/1, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_checks/2, 'celex:32024R1689/oj#art_80').
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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

% ==== celex:32024R1689/oj#art_81 ====
declared(national_measure/1, 'measure taken by a market surveillance authority', 'celex:32024R1689/oj#art_81').
declared(objection_raised/2, 'objection raised by a market surveillance authority to a national measure', 'celex:32024R1689/oj#art_81').
declared(considered_contrary_to_union_law/2, 'an entity considers a measure to be contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(non_compliance_prohibited_practice/1, 'measure relates to non-compliance with prohibited AI practices', 'celex:32024R1689/oj#art_81').
declared(objection_within_deadline/2, 'objection raised within statutory period', 'celex:32024R1689/oj#art_81').
declared(commission_safeguard_consultation_triggered/1, 'safeguard procedure consultation triggered for measure', 'celex:32024R1689/oj#art_81').
declared(must_consult/2, 'Commission must enter into consultation regarding measure', 'celex:32024R1689/oj#art_81').
declared(must_evaluate/2, 'Commission must evaluate national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide/2, 'Commission must decide whether measure is justified', 'celex:32024R1689/oj#art_81').
declared(must_notify/2, 'entity must notify decision or information to recipient', 'celex:32024R1689/oj#art_81').
declared(decision_deadline/2, 'statutory deadline for Commission decision', 'celex:32024R1689/oj#art_81').
declared(considered_justified/2, 'measure is considered justified by an entity', 'celex:32024R1689/oj#art_81').
declared(considered_unjustified/2, 'measure is considered unjustified by an entity', 'celex:32024R1689/oj#art_81').
declared(member_state/1, 'a Member State of the European Union', 'celex:32024R1689/oj#art_81').
declared(originating_member_state/2, 'Member State whose authority took the national measure', 'celex:32024R1689/oj#art_81').
declared(target_ai_system/2, 'AI system targeted by a national measure', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member State must take restrictive measures regarding an AI system', 'celex:32024R1689/oj#art_81').
declared(must_withdraw/2, 'Member State must withdraw national measure', 'celex:32024R1689/oj#art_81').
declared(attributed_to_standard_shortcoming/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
declared(must_apply_procedure/2, 'Commission must apply safeguard procedure under regulation', 'celex:32024R1689/oj#art_81').
objection_within_deadline(Authority, Measure) :-
    market_surveillance_authority(Authority),
    national_measure(Measure),
    non_compliance_prohibited_practice(Measure),
    objection_raised(Authority, within(days(30), Measure)).
objection_within_deadline(Authority, Measure) :-
    market_surveillance_authority(Authority),
    national_measure(Measure),
    \+ non_compliance_prohibited_practice(Measure),
    objection_raised(Authority, within(months(3), Measure)).
commission_safeguard_consultation_triggered(Measure) :-
    objection_within_deadline(_Authority, Measure).
commission_safeguard_consultation_triggered(Measure) :-
    national_measure(Measure),
    considered_contrary_to_union_law(commission, Measure).
must_consult(commission, consultation(Measure, Authority, Operator)) :-
    commission_safeguard_consultation_triggered(Measure),
    originating_member_state(State, Measure),
    market_surveillance_authority(Authority),
    originating_member_state(State, Authority),
    operator(Operator).
must_evaluate(commission, Measure) :-
    commission_safeguard_consultation_triggered(Measure).
decision_deadline(Measure, within(days(60), notification)) :-
    national_measure(Measure),
    non_compliance_prohibited_practice(Measure).
decision_deadline(Measure, within(months(6), notification)) :-
    national_measure(Measure),
    \+ non_compliance_prohibited_practice(Measure).
must_decide(commission, justification(Measure, Deadline)) :-
    commission_safeguard_consultation_triggered(Measure),
    decision_deadline(Measure, Deadline).
must_notify(commission, decision(justification(Measure), Authority)) :-
    must_decide(commission, justification(Measure, _Deadline)),
    market_surveillance_authority(Authority).
must_take_restrictive_measures(State, System) :-
    member_state(State),
    national_measure(Measure),
    considered_justified(commission, Measure),
    target_ai_system(Measure, System).
must_notify(State, restrictive_measures_taken(System)) :-
    must_take_restrictive_measures(State, System).
must_withdraw(State, Measure) :-
    originating_member_state(State, Measure),
    considered_unjustified(commission, Measure).
must_notify(State, withdrawn(Measure)) :-
    must_withdraw(State, Measure).
must_apply_procedure(commission, article_11_regulation_1025_2012(Measure)) :-
    national_measure(Measure),
    considered_justified(commission, Measure),
    attributed_to_standard_shortcoming(Measure).
provenance(national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(considered_contrary_to_union_law/2, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_prohibited_practice/1, 'celex:32024R1689/oj#art_81').
provenance(objection_within_deadline/2, 'celex:32024R1689/oj#art_81').
provenance(commission_safeguard_consultation_triggered/1, 'celex:32024R1689/oj#art_81').
provenance(must_consult/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify/2, 'celex:32024R1689/oj#art_81').
provenance(decision_deadline/2, 'celex:32024R1689/oj#art_81').
provenance(considered_justified/2, 'celex:32024R1689/oj#art_81').
provenance(considered_unjustified/2, 'celex:32024R1689/oj#art_81').
provenance(member_state/1, 'celex:32024R1689/oj#art_81').
provenance(originating_member_state/2, 'celex:32024R1689/oj#art_81').
provenance(target_ai_system/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_standard_shortcoming/1, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_82').
declared(evaluated_under_article_79/2, 'authority has evaluated AI system under Article 79', 'celex:32024R1689/oj#art_82').
declared(consulted_relevant_public_authority/2, 'authority consulted public authority under Article 77(1)', 'celex:32024R1689/oj#art_82').
declared(complies_with_regulation/1, 'AI system complies with the regulation', 'celex:32024R1689/oj#art_82').
declared(presents_risk_despite_compliance/1, 'AI system presents risk to health, safety, fundamental rights, or public interest protection', 'celex:32024R1689/oj#art_82').
declared(must_require_mitigation/2, 'market surveillance authority must require operator to eliminate risk', 'celex:32024R1689/oj#art_82').
declared(must_ensure_corrective_action/2, 'operator must ensure corrective action is taken for all affected AI systems', 'celex:32024R1689/oj#art_82').
declared(required_mitigation/2, 'market surveillance authority requires mitigation measures from operator for system', 'celex:32024R1689/oj#art_82').
declared(must_inform/2, 'an entity must inform another entity of details', 'celex:32024R1689/oj#art_82').
declared(member_state_finding_compliant_risk/2, 'member state finds compliant AI system presenting risk', 'celex:32024R1689/oj#art_82').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_82').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_82').
declared(national_measure_taken/2, 'Member State has taken measures regarding system presenting risk', 'celex:32024R1689/oj#art_82').
declared(must_consult/2, 'actor must consult other parties', 'celex:32024R1689/oj#art_82').
declared(must_evaluate/2, 'actor must evaluate measures', 'celex:32024R1689/oj#art_82').
declared(must_decide_justification/2, 'actor must decide whether national measure is justified', 'celex:32024R1689/oj#art_82').
declared(must_communicate/2, 'actor must communicate decision to party', 'celex:32024R1689/oj#art_82').
must_require_mitigation(Authority, system_risk_mitigation(System, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    high_risk_ai_system(System),
    evaluated_under_article_79(Authority, System),
    consulted_relevant_public_authority(Authority, System),
    complies_with_regulation(System),
    presents_risk_despite_compliance(System).
must_ensure_corrective_action(Operator, corrective_action(System)) :-
    operator(Operator),
    high_risk_ai_system(System),
    required_mitigation(Authority, system_risk_mitigation(System, Operator)),
    market_surveillance_authority(Authority).
must_inform(MemberState, commission_and_other_member_states(finding_under_article_82(System))) :-
    member_state(MemberState),
    member_state_finding_compliant_risk(MemberState, System).
must_consult(Commission, consultation(MemberState, Operator, System)) :-
    commission(Commission),
    member_state(MemberState),
    operator(Operator),
    national_measure_taken(MemberState, System).
must_evaluate(Commission, national_measures(MemberState, System)) :-
    commission(Commission),
    member_state(MemberState),
    national_measure_taken(MemberState, System).
must_decide_justification(Commission, national_measure(MemberState, System)) :-
    commission(Commission),
    member_state(MemberState),
    national_measure_taken(MemberState, System).
must_communicate(Commission, decision(justification(Measure), concerned_parties(MemberState, Operator))) :-
    commission(Commission),
    member_state(MemberState),
    operator(Operator),
    national_measure_taken(MemberState, System),
    Measure = national_measure(MemberState, System).
must_inform(Commission, other_member_states(decision(justification(Measure)))) :-
    commission(Commission),
    member_state(MemberState),
    national_measure_taken(MemberState, System),
    Measure = national_measure(MemberState, System).
provenance(must_require_mitigation/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(formal_non_compliance/2, 'AI system exhibits formal non-compliance under Article 83(1)', 'celex:32024R1689/oj#art_83').
declared(finding_formal_non_compliance/2, 'authority finds formal non-compliance in an AI system', 'celex:32024R1689/oj#art_83').
declared(non_compliance_persists/1, 'formal non-compliance persists beyond the prescribed period', 'celex:32024R1689/oj#art_83').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_83').
declared(must_require/2, 'authority must require a provider to end formal non-compliance', 'celex:32024R1689/oj#art_83').
declared(must_take_measures/2, 'authority must take restrictive or corrective measures against an AI system', 'celex:32024R1689/oj#art_83').
formal_non_compliance(S, ce_marking_violation) :-
    ai_system(S).
formal_non_compliance(S, ce_marking_not_affixed) :-
    ai_system(S).
formal_non_compliance(S, declaration_of_conformity_not_drawn_up) :-
    ai_system(S).
formal_non_compliance(S, declaration_of_conformity_incorrect) :-
    ai_system(S).
formal_non_compliance(S, registration_not_carried_out) :-
    ai_system(S).
formal_non_compliance(S, authorised_representative_not_appointed) :-
    ai_system(S).
formal_non_compliance(S, technical_documentation_not_available) :-
    ai_system(S).
finding_formal_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(S, _Reason).
must_require(Authority, end_non_compliance(Provider, S)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    finding_formal_non_compliance(Authority, S).
must_take_measures(Authority, restrict_or_prohibit_making_available(S)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    finding_formal_non_compliance(Authority, S),
    non_compliance_persists(S).
must_take_measures(Authority, ensure_recall_or_withdrawal(S)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    finding_formal_non_compliance(Authority, S),
    non_compliance_persists(S).
provenance(formal_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(finding_formal_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'entity designated as Union AI testing support structure', 'celex:32024R1689/oj#art_84').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_84').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_84').
declared(advice_requester/1, 'entity eligible to request technical or scientific advice from support structures', 'celex:32024R1689/oj#art_84').
declared(requested_advice/2, 'requester asked for technical or scientific advice', 'celex:32024R1689/oj#art_84').
must_designate(commission, union_ai_testing_support_structure).
must_perform(Structure, tasks_regulation_2019_1020_art_21_6(area_of_ai)) :-
    union_ai_testing_support_structure(Structure).
advice_requester(B) :- board(B).
advice_requester(C) :- commission(C).
advice_requester(M) :- market_surveillance_authority(M).
must_provide(Structure, independent_advice(technical_or_scientific, Requester)) :-
    union_ai_testing_support_structure(Structure),
    advice_requester(Requester),
    requested_advice(Requester, Structure).
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').
provenance(commission/1, 'celex:32024R1689/oj#art_84').
provenance(advice_requester/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_perform/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide/2, 'celex:32024R1689/oj#art_84').
provenance(requested_advice/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(permitted_lodge_complaint/1, 'Person permitted to lodge a complaint to the relevant market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(natural_or_legal_person/1, 'Entity is a natural or legal person', 'celex:32024R1689/oj#art_85').
declared(grounds_to_consider_infringement/1, 'Person has grounds to consider that there has been an infringement of the AI Regulation', 'celex:32024R1689/oj#art_85').
declared(complaint_to_market_surveillance_authority/2, 'Complaint lodged by a person to a market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(must_take_into_account/2, 'Authority must take into account an object for a specific purpose', 'celex:32024R1689/oj#art_85').
declared(must_handle/2, 'Authority must handle an object in accordance with dedicated procedures', 'celex:32024R1689/oj#art_85').
permitted_lodge_complaint(Person) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person).
must_take_into_account(Authority, market_surveillance_activities(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint_to_market_surveillance_authority(Complaint, Authority).
must_handle(Authority, dedicated_procedures(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint_to_market_surveillance_authority(Complaint, Authority).
provenance(permitted_lodge_complaint/1, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_86').
declared(annex_3_point_2_system/1, 'AI system listed in Annex III point 2 (critical infrastructure)', 'celex:32024R1689/oj#art_86').
declared(affected_person/1, 'natural person subject to an AI-assisted decision', 'celex:32024R1689/oj#art_86').
declared(decision_taken_on_output/3, 'deployer took decision on person based on AI system output', 'celex:32024R1689/oj#art_86').
declared(significant_adverse_impact/2, 'decision produces legal or significant effects impacting health, safety, or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(exempt_from_explanation/1, 'use of AI system exempt or restricted under Union or national law', 'celex:32024R1689/oj#art_86').
declared(right_otherwise_provided/2, 'right to explanation is otherwise provided for under Union law', 'celex:32024R1689/oj#art_86').
declared(permitted_explanation_request/3, 'person has the right to obtain explanation from deployer regarding AI decision', 'celex:32024R1689/oj#art_86').
declared(must_provide/2, 'deployer must provide explanation to affected person', 'celex:32024R1689/oj#art_86').
permitted_explanation_request(Person, Deployer, explanation(System, Decision)) :-
    affected_person(Person),
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    decision_taken_on_output(Deployer, Person, decision(Decision, System)),
    significant_adverse_impact(Person, Decision),
    \+ exempt_from_explanation(System),
    \+ right_otherwise_provided(Person, Decision).
must_provide(Deployer, explanation(Person, Decision, System)) :-
    permitted_explanation_request(Person, Deployer, explanation(System, Decision)).
provenance(permitted_explanation_request/3, 'celex:32024R1689/oj#art_86').
provenance(must_provide/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(directive_2019_1937_applies/1, 'Directive (EU) 2019/1937 applies to the reporting or protection matter', 'celex:32024R1689/oj#art_87').
declared(infringement_of_regulation/1, 'infringement of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_87').
declared(reporting_person/1, 'person reporting an infringement', 'celex:32024R1689/oj#art_87').
directive_2019_1937_applies(reporting_of_infringement(Infringement)) :-
    infringement_of_regulation(Infringement).
directive_2019_1937_applies(protection_of_reporting_person(Person)) :-
    reporting_person(Person).
provenance(directive_2019_1937_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_88').
declared(exclusive_powers/2, 'Entity has exclusive powers over a scope', 'celex:32024R1689/oj#art_88').
declared(must_entrust/2, 'Entity must entrust tasks to another body', 'celex:32024R1689/oj#art_88').
declared(permitted_request/2, 'Entity is permitted to request an action', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate_for_tasks/2, 'Action is necessary and proportionate to fulfil tasks', 'celex:32024R1689/oj#art_88').
exclusive_powers(commission, supervision_and_enforcement(chapter_5)).
must_entrust(commission, tasks(ai_office, supervision_and_enforcement(chapter_5))).
permitted_request(Authority, commission_exercise_powers(chapter_9_section_5)) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate_for_tasks(Authority, commission_exercise_powers(chapter_9_section_5)).
provenance(exclusive_powers/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(permitted_monitoring_action/2, 'AI Office may take necessary actions to monitor implementation and compliance by providers of general-purpose AI models', 'celex:32024R1689/oj#art_89').
declared(general_purpose_ai_model_provider/1, 'Provider of a general-purpose AI model', 'celex:32024R1689/oj#art_89').
declared(permitted_lodge_complaint/2, 'A downstream provider is permitted to lodge a complaint alleging an infringement against a general-purpose AI model provider', 'celex:32024R1689/oj#art_89').
declared(duly_reasoned_complaint/1, 'A complaint is duly reasoned with required content', 'celex:32024R1689/oj#art_89').
declared(complaint_point_of_contact/2, 'Complaint indicates point of contact of the provider concerned', 'celex:32024R1689/oj#art_89').
declared(complaint_facts_and_reasons/2, 'Complaint describes relevant facts, provisions concerned, and reasons for alleging infringement', 'celex:32024R1689/oj#art_89').
provenance(permitted_monitoring_action/2, 'celex:32024R1689/oj#art_89').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(duly_reasoned_complaint/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
general_purpose_ai_model_provider(P) :-
    provider(P).
permitted_monitoring_action(Office, monitor(compliance(P))) :-
    ai_office(Office),
    general_purpose_ai_model_provider(P).
permitted_monitoring_action(Office, monitor(adherence_to_codes_of_practice(P))) :-
    ai_office(Office),
    general_purpose_ai_model_provider(P).
permitted_lodge_complaint(D, complaint(alleging_infringement(P), C)) :-
    downstream_provider(D),
    general_purpose_ai_model_provider(P),
    duly_reasoned_complaint(C).
duly_reasoned_complaint(C) :-
    complaint_point_of_contact(C, _Contact),
    complaint_facts_and_reasons(C, _Reasons).

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_90').
declared(systemic_risk_conditions_met/1, 'model meets conditions for systemic risk under Article 51', 'celex:32024R1689/oj#art_90').
declared(poses_concrete_identifiable_risk_at_union_level/1, 'model poses concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(permitted_qualified_alert/2, 'scientific panel is permitted to provide a qualified alert to the AI Office', 'celex:32024R1689/oj#art_90').
declared(permitted_exercise_powers/2, 'AI Office/Commission may exercise powers laid down in Chapter IX Section 5', 'celex:32024R1689/oj#art_90').
declared(informed/2, 'an actor has informed another body of a matter', 'celex:32024R1689/oj#art_90').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_90').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_90').
declared(must_inform/2, 'an entity must inform another entity of a matter', 'celex:32024R1689/oj#art_90').
declared(required_qualified_alert/1, 'elements required to be contained in a qualified alert', 'celex:32024R1689/oj#art_90').
permitted_qualified_alert(Panel, qualified_alert(Office, Model)) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    poses_concrete_identifiable_risk_at_union_level(Model).
permitted_qualified_alert(Panel, qualified_alert(Office, Model)) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    systemic_risk_conditions_met(Model).
permitted_exercise_powers(commission, powers(chapter_ix_section_5, Model)) :-
    ai_office(Office),
    scientific_panel(Panel),
    permitted_qualified_alert(Panel, qualified_alert(Office, Model)),
    board(Board),
    informed(commission, Board).
must_inform(Office, board(measure(Measure, Model))) :-
    ai_office(Office),
    member(Measure, [art_91, art_92, art_93, art_94]),
    general_purpose_ai_model(Model).
required_qualified_alert(alert(Model, Contact, FactsAndReasons)) :-
    general_purpose_ai_model(Model),
    nonvar(Contact),
    nonvar(FactsAndReasons).
provenance(permitted_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
permitted_request_documentation(commission, provider(Provider, Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model).
permitted_initiate_structured_dialogue(Office, provider(Provider, Model)) :-
    ai_office(Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model).
permitted_request_information_scientific_panel(commission, provider(Provider, Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model),
    substantiated_request_scientific_panel(req(Model)),
    necessary_and_proportionate_for_scientific_panel_tasks(Model, req(Model)).
required_request_specification(Request) :-
    states_legal_basis(Request),
    states_purpose(Request),
    specifies_information(Request),
    sets_period(Request),
    indicates_fines(Request).
must_supply_information(Provider, request_info(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model).
must_supply_information(Rep, request_info(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider, Model),
    authorised_representative_of_provider(Rep, Provider).
provenance(permitted_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_request_information_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(required_request_specification/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
permitted_conduct_evaluation(Actor, Model) :-
    ai_office(Actor),
    general_purpose_ai_model(Model),
    board_consulted(Actor, Model),
    evaluation_purpose(Model, assess_compliance),
    information_insufficient(Model).
permitted_conduct_evaluation(Actor, Model) :-
    ai_office(Actor),
    general_purpose_ai_model(Model),
    board_consulted(Actor, Model),
    evaluation_purpose(Model, investigate_systemic_risks),
    systemic_risk_model(Model).
permitted_appoint_expert(commission, Expert) :-
    meets_criteria_art_68_2(Expert).
permitted_request_access(commission, access_to(Model, Means)) :-
    general_purpose_ai_model(Model),
    permitted_conduct_evaluation(_Actor, Model),
    member(Means, [api, technical_tools, source_code]).
must_provide_access(Provider, Request) :-
    provider(Provider),
    valid_access_request(Request).
must_provide_access(Representative, Request) :-
    authorised_representative(Representative),
    valid_access_request(Request).
must_adopt_implementing_acts(commission, evaluation_arrangements_and_conditions).
permitted_initiate_dialogue(Actor, Provider) :-
    ai_office(Actor),
    provider(Provider).
provenance(permitted_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_expert/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_dialogue/2, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(permitted_request_measures/2, 'Commission may request provider to take measures regarding general-purpose AI model', 'celex:32024R1689/oj#art_93').
declared(permitted_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider of general-purpose AI model', 'celex:32024R1689/oj#art_93').
declared(permitted_make_commitments_binding/2, 'Commission may make commitments binding and declare no further grounds for action', 'celex:32024R1689/oj#art_93').
declared(necessary_and_appropriate/1, 'measure or request is necessary and appropriate', 'celex:32024R1689/oj#art_93').
declared(substantiated_concern_systemic_risk/1, 'evaluation under Article 92 gave rise to serious and substantiated concern of systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(offers_commitments/3, 'provider offers commitments during structured dialogue to address systemic risk', 'celex:32024R1689/oj#art_93').
declared(provides_model/2, 'provider provides a general-purpose AI model', 'celex:32024R1689/oj#art_93').
permitted_request_measures(commission, request(Provider, comply_obligations(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, comply_obligations(Model))).
permitted_request_measures(commission, request(Provider, implement_mitigation_measures(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, implement_mitigation_measures(Model))),
    substantiated_concern_systemic_risk(Model).
permitted_request_measures(commission, request(Provider, restrict_making_available(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, restrict_making_available(Model))).
permitted_request_measures(commission, request(Provider, withdraw(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, withdraw(Model))).
permitted_request_measures(commission, request(Provider, recall(Model))) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, recall(Model))).
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model).
permitted_make_commitments_binding(commission, decision(Provider, Commitments)) :-
    provider(Provider),
    provides_model(Provider, Model),
    general_purpose_ai_model(Model),
    offers_commitments(Provider, Model, Commitments).
provenance(permitted_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply/2, 'procedural rights under a given legal instrument apply to an entity', 'celex:32024R1689/oj#art_94').
declared(provider_of_general_purpose_ai_model/1, 'entity that is a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_94').
declared(develops_or_places/2, 'entity develops or places an AI model or system', 'celex:32024R1689/oj#art_94').
procedural_rights_apply(regulation_2019_1020_article_18, P) :-
    provider_of_general_purpose_ai_model(P).
provider_of_general_purpose_ai_model(P) :-
    provider(P),
    develops_or_places(P, M),
    general_purpose_ai_model(M).
provenance(procedural_rights_apply/2, 'celex:32024R1689/oj#art_94').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct/1, 'Code of conduct drawn up pursuant to Article 95', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct_drawing_up/1, 'The drawing up of a code of conduct', 'celex:32024R1689/oj#art_95').
declared(must_encourage/2, 'Actor is obliged to encourage Object', 'celex:32024R1689/oj#art_95').
declared(must_facilitate/2, 'Actor is obliged to facilitate Object', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account/2, 'Actor is obliged to take into account Object', 'celex:32024R1689/oj#art_95').
declared(permitted_draw_up/2, 'Actor is permitted to draw up Object', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_requirements/2, 'Code of conduct fosters voluntary application of requirements to AI systems', 'celex:32024R1689/oj#art_95').
declared(high_risk_ai_system/1, 'High-risk AI system under Chapter III Section 1', 'celex:32024R1689/oj#art_95').
declared(represents_actors/2, 'Organisation represents individual providers or deployers', 'celex:32024R1689/oj#art_95').
must_encourage(Actor, code_of_conduct_drawing_up(C)) :-
    ( ai_office(Actor) ; member_state(Actor) ),
    code_of_conduct(C).
must_facilitate(Actor, code_of_conduct_drawing_up(C)) :-
    ( ai_office(Actor) ; member_state(Actor) ),
    code_of_conduct(C).
must_take_into_account(Actor, specific_interests_and_needs(smes_including_startups)) :-
    ( ai_office(Actor) ; member_state(Actor) ).
voluntary_application_requirements(C, S) :-
    code_of_conduct(C),
    ai_system(S),
    \+ high_risk_ai_system(S).
permitted_draw_up(Actor, C) :-
    code_of_conduct(C),
    ( provider(Actor)
    ; deployer(Actor)
    ; ( represents_actors(Actor, P), (provider(P) ; deployer(P)) )
    ).
provenance(member_state/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_drawing_up/1, 'celex:32024R1689/oj#art_95').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_draw_up/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_requirements/2, 'celex:32024R1689/oj#art_95').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_95').
provenance(represents_actors/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
must_develop(commission, guidelines(practical_implementation(regulation))).
must_develop(commission, guidelines(requirements_and_obligations(articles_8_to_15_and_25))).
must_develop(commission, guidelines(prohibited_practices(article_5))).
must_develop(commission, guidelines(substantial_modification)).
must_develop(commission, guidelines(transparency_obligations(article_50))).
must_develop(commission, guidelines(relationship_with_union_harmonisation_legislation_and_other_law)).
must_develop(commission, guidelines(application_of_ai_system_definition)).
must_consider(commission, guidelines_development(needs_of_smes_and_startups)).
must_consider(commission, guidelines_development(needs_of_local_public_authorities)).
must_consider(commission, guidelines_development(needs_of_affected_sectors)).
must_consider(commission, guidelines_development(state_of_art_on_ai)).
must_consider(commission, guidelines_development(harmonised_standards_and_common_specifications)).
must_update(commission, guidelines(previously_adopted)) :-
    deemed_necessary(guidelines(previously_adopted)),
    update_requested(guidelines(previously_adopted)).
must_update(commission, guidelines(previously_adopted)) :-
    deemed_necessary(guidelines(previously_adopted)),
    commission_initiative(guidelines(previously_adopted)).
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider/2, 'celex:32024R1689/oj#art_96').
provenance(must_update/2, 'celex:32024R1689/oj#art_96').
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
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').

% ==== celex:32024R1689/oj#art_97 ====
declared(permitted_adopt_delegated_act/2, 'Commission is permitted to adopt a delegated act under specified conditions', 'celex:32024R1689/oj#art_97').
declared(permitted_revoke_delegation/2, 'An institution is permitted to revoke a delegation of power', 'celex:32024R1689/oj#art_97').
declared(must_consult/2, 'Commission must consult designated Member State experts before adopting a delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission must notify a delegated act simultaneously to Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_report/2, 'Commission must draw up a report on the delegation of power', 'celex:32024R1689/oj#art_97').
declared(enters_into_force/1, 'Delegated act enters into force if conditions of non-objection are satisfied', 'celex:32024R1689/oj#art_97').
declared(objected_to/1, 'European Parliament or Council has expressed an objection to a delegated act', 'celex:32024R1689/oj#art_97').
declared(confirmed_no_objection/1, 'Both European Parliament and Council have confirmed they will not object', 'celex:32024R1689/oj#art_97').
declared(delegated_power_scope/1, 'Article provision granting delegated powers', 'celex:32024R1689/oj#art_97').
delegated_power_scope('celex:32024R1689/oj#art_6/par_6').
delegated_power_scope('celex:32024R1689/oj#art_6/par_7').
delegated_power_scope('celex:32024R1689/oj#art_7/par_1').
delegated_power_scope('celex:32024R1689/oj#art_7/par_3').
delegated_power_scope('celex:32024R1689/oj#art_11/par_3').
delegated_power_scope('celex:32024R1689/oj#art_43/par_5').
delegated_power_scope('celex:32024R1689/oj#art_43/par_6').
delegated_power_scope('celex:32024R1689/oj#art_47/par_5').
delegated_power_scope('celex:32024R1689/oj#art_51/par_3').
delegated_power_scope('celex:32024R1689/oj#art_52/par_4').
delegated_power_scope('celex:32024R1689/oj#art_53/par_5').
delegated_power_scope('celex:32024R1689/oj#art_53/par_6').
permitted_adopt_delegated_act(commission, delegated_act(Provision)) :-
    delegated_power_scope(Provision).
must_draw_up_report(commission, delegation_of_power(deadline(months_before_end(9)))).
permitted_revoke_delegation(european_parliament, delegation_of_power(Provision)) :-
    delegated_power_scope(Provision).
permitted_revoke_delegation(council, delegation_of_power(Provision)) :-
    delegated_power_scope(Provision).
must_consult(commission, experts(member_state_designated, before_adopting(Act))) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision).
must_notify(commission, simultaneous(european_parliament, council, Act)) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision).
enters_into_force(Act) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision),
    \+ objected_to(Act).
enters_into_force(Act) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision),
    confirmed_no_objection(Act).
provenance(delegated_power_scope/1, 'celex:32024R1689/oj#art_97').
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revoke_delegation/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(enters_into_force/1, 'celex:32024R1689/oj#art_97').
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
declared(assisted_by_committee/1, 'entity assisted by a committee under Regulation (EU) No 182/2011', 'celex:32024R1689/oj#art_98').
declared(examination_procedure_applies/1, 'Article 5 of Regulation (EU) No 182/2011 applies to the adoption or measure', 'celex:32024R1689/oj#art_98').
declared(references_article_98_paragraph_2/1, 'reference is made to Article 98(2) of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_98').
assisted_by_committee(commission).
examination_procedure_applies(Measure) :-
    references_article_98_paragraph_2(Measure).
provenance(assisted_by_committee/1, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_99').
declared(sme/1, 'small and medium-sized enterprise, including start-ups', 'celex:32024R1689/oj#art_99').
declared(undertaking/1, 'entity engaged in economic activity', 'celex:32024R1689/oj#art_99').
declared(non_compliance/2, 'actor has committed non-compliance with a specified provision or duty', 'celex:32024R1689/oj#art_99').
declared(supplied_misleading_info/2, 'actor supplied incorrect, incomplete or misleading info to an authority or notified body in reply to a request', 'celex:32024R1689/oj#art_99').
declared(max_fine_cap/3, 'maximum administrative fine cap applicable to actor for an infringement', 'celex:32024R1689/oj#art_99').
declared(must_lay_down_rules/2, 'actor must lay down rules on a matter', 'celex:32024R1689/oj#art_99').
declared(must_notify/2, 'actor must notify another entity of an object', 'celex:32024R1689/oj#art_99').
declared(must_report/2, 'actor must report an object to another entity', 'celex:32024R1689/oj#art_99').
must_lay_down_rules(MS, penalties(operators)) :-
    member_state(MS).
must_notify(MS, commission(penalty_rules)) :-
    member_state(MS).
must_notify(MS, commission(penalty_rules_amendment)) :-
    member_state(MS).
max_fine_cap(Actor, prohibited_practices, higher_of(eur(35000000), percent(7))) :-
    non_compliance(Actor, prohibited_practices),
    undertaking(Actor),
    \+ sme(Actor).
max_fine_cap(Actor, prohibited_practices, eur(35000000)) :-
    non_compliance(Actor, prohibited_practices),
    \+ undertaking(Actor),
    \+ sme(Actor).
max_fine_cap(Actor, operator_or_notified_body_obligations, higher_of(eur(15000000), percent(3))) :-
    non_compliance(Actor, operator_or_notified_body_obligations),
    undertaking(Actor),
    \+ sme(Actor).
max_fine_cap(Actor, operator_or_notified_body_obligations, eur(15000000)) :-
    non_compliance(Actor, operator_or_notified_body_obligations),
    \+ undertaking(Actor),
    \+ sme(Actor).
max_fine_cap(Actor, misleading_information, higher_of(eur(7500000), percent(1))) :-
    supplied_misleading_info(Actor, request),
    undertaking(Actor),
    \+ sme(Actor).
max_fine_cap(Actor, misleading_information, eur(7500000)) :-
    supplied_misleading_info(Actor, request),
    \+ undertaking(Actor),
    \+ sme(Actor).
max_fine_cap(Actor, prohibited_practices, lower_of(eur(35000000), percent(7))) :-
    non_compliance(Actor, prohibited_practices),
    sme(Actor).
max_fine_cap(Actor, operator_or_notified_body_obligations, lower_of(eur(15000000), percent(3))) :-
    non_compliance(Actor, operator_or_notified_body_obligations),
    sme(Actor).
max_fine_cap(Actor, misleading_information, lower_of(eur(7500000), percent(1))) :-
    supplied_misleading_info(Actor, request),
    sme(Actor).
must_lay_down_rules(MS, penalties(public_authorities)) :-
    member_state(MS).
must_report(MS, commission(annual_penalties_and_litigation)) :-
    member_state(MS).
provenance(must_lay_down_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify/2, 'celex:32024R1689/oj#art_99').
provenance(max_fine_cap/3, 'celex:32024R1689/oj#art_99').
provenance(must_report/2, 'celex:32024R1689/oj#art_99').
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
declared(union_institution_body_office_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor (EDPS)', 'celex:32024R1689/oj#art_100').
declared(non_compliance_prohibited_ai_practices/1, 'non-compliance with the prohibition of AI practices referred to in Article 5', 'celex:32024R1689/oj#art_100').
declared(non_compliance_other_obligations/1, 'non-compliance with requirements or obligations other than Article 5', 'celex:32024R1689/oj#art_100').
declared(permitted_administrative_fine/2, 'EDPS is permitted to impose an administrative fine on an entity for an infringement', 'celex:32024R1689/oj#art_100').
declared(maximum_fine/2, 'maximum amount of the administrative fine for an infringement', 'celex:32024R1689/oj#art_100').
declared(heard_on_possible_infringement/1, 'entity has been given the opportunity of being heard regarding the infringement', 'celex:32024R1689/oj#art_100').
permitted_administrative_fine(Supervisor, fine(Entity, Infringement)) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    heard_on_possible_infringement(Entity),
    ( non_compliance_prohibited_ai_practices(Infringement)
    ; non_compliance_other_obligations(Infringement)
    ).
maximum_fine(Infringement, eur(1500000)) :-
    non_compliance_prohibited_ai_practices(Infringement).
maximum_fine(Infringement, eur(750000)) :-
    non_compliance_other_obligations(Infringement).
must_hear(Supervisor, Entity) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity).
entitled_access_to_file(Entity, file(Supervisor)) :-
    union_institution_body_office_agency(Entity),
    european_data_protection_supervisor(Supervisor).
must_notify(Supervisor, commission(annual_report(fines_and_litigation))) :-
    european_data_protection_supervisor(Supervisor).
provenance(permitted_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(maximum_fine/2, 'celex:32024R1689/oj#art_100').
provenance(must_hear/2, 'celex:32024R1689/oj#art_100').
provenance(entitled_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(permitted_impose_fine/2, 'Commission may impose fine on provider of GPAI model', 'celex:32024R1689/oj#art_101').
declared(provider_of_general_purpose_ai_model/1, 'entity is a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(intentional_or_negligent_infringement/2, 'provider intentionally or negligently committed an infringement', 'celex:32024R1689/oj#art_101').
declared(must_give_opportunity_to_be_heard/2, 'duty to give provider an opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(maximum_fine_gpai_model/2, 'maximum fine threshold for a provider of general-purpose AI models', 'celex:32024R1689/oj#art_101').
declared(annual_turnover/2, 'annual total worldwide turnover in preceding financial year of an entity', 'celex:32024R1689/oj#art_101').
declared(jurisdiction_to_review_fines/2, 'court has unlimited jurisdiction to review Commission fine decisions', 'celex:32024R1689/oj#art_101').
provider_of_general_purpose_ai_model(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    intended_purpose(Model).
permitted_impose_fine(commission, fine(Provider, Infringement)) :-
    provider_of_general_purpose_ai_model(Provider),
    intentional_or_negligent_infringement(Provider, Infringement).
maximum_fine_gpai_model(Provider, max(percent(3, turnover(Provider)), eur(15000000))) :-
    provider_of_general_purpose_ai_model(Provider),
    annual_turnover(Provider, _Turnover).
must_communicate(commission, preliminary_findings(Provider)) :-
    permitted_impose_fine(commission, fine(Provider, _Infringement)).
must_give_opportunity_to_be_heard(commission, Provider) :-
    permitted_impose_fine(commission, fine(Provider, _Infringement)).
must_communicate(commission, information(fines_imposed(art_101), european_artificial_intelligence_board)).
jurisdiction_to_review_fines(court_of_justice_of_the_european_union, commission_decisions(art_101)).
must_adopt(commission, implementing_acts(procedural_safeguards(art_101))).
provenance(permitted_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_101').
provenance(maximum_fine_gpai_model/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(jurisdiction_to_review_fines/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_101').
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
declared(required_consideration_of_requirements/1, 'requirements of Chapter III Section 2 must be taken into account', 'celex:32024R1689/oj#art_102').
declared(security_equipment_measure/1, 'detailed measures on technical specifications and procedures for approval and use of security equipment', 'celex:32024R1689/oj#art_102').
declared(concerns_ai_system/1, 'measure concerns artificial intelligence systems', 'celex:32024R1689/oj#art_102').
required_consideration_of_requirements(Measure) :-
    security_equipment_measure(Measure),
    concerns_ai_system(Measure).
provenance(required_consideration_of_requirements/1, 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#art_102').
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
declared(delegated_act/1, 'act adopted by the Commission pursuant to delegated powers', 'celex:32024R1689/oj#art_103').
declared(adopts_delegated_act/2, 'authority adopts a delegated act concerning a specific scope', 'celex:32024R1689/oj#art_103').
declared(concerns_ai_safety_component/1, 'delegated act concerns AI systems that are safety components', 'celex:32024R1689/oj#art_103').
declared(must_take_into_account/2, 'actor must take into account requirements or considerations in an act', 'celex:32024R1689/oj#art_103').
concerns_ai_safety_component(Act) :-
    delegated_act(Act),
    ai_system(S),
    safety_component(S).
must_take_into_account(Actor, requirements(chapter_iii_section_2)) :-
    adopts_delegated_act(Actor, Act),
    concerns_ai_safety_component(Act).
provenance(concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_103').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
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
declared(must_take_into_account/2, 'actor must take into account requirements when adopting acts', 'celex:32024R1689/oj#art_104').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_104').
declared(delegated_act/1, 'delegated act adopted pursuant to basic act', 'celex:32024R1689/oj#art_104').
declared(pursues_empowerment/2, 'delegated act is adopted pursuant to a specific legal basis', 'celex:32024R1689/oj#art_104').
declared(concerns_ai_safety_component/1, 'act concerns AI systems that are safety components', 'celex:32024R1689/oj#art_104').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
must_take_into_account(Actor, requirements(high_risk_ai_systems)) :-
    commission(Actor),
    delegated_act(Act),
    pursues_empowerment(Act, 'celex:32013R0168/oj#art_22/par_5/unp_1'),
    concerns_ai_safety_component(Act).
concerns_ai_safety_component(Act) :-
    ai_system(S),
    safety_component(S),
    concerns_ai_safety_component(Act).
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#art_104').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_105').
declared(marine_equipment_activity/2, 'activity or adoption of specifications/standards under Directive 2014/90/EU Article 8', 'celex:32024R1689/oj#art_105').
must_take_into_account(Commission, requirements(chapter_3_section_2, System)) :-
    commission(Commission),
    ai_system(System),
    safety_component(System),
    marine_equipment_activity(Commission, System).
provenance(commission/1, 'celex:32024R1689/oj#art_105').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
provenance(marine_equipment_activity/2, 'celex:32024R1689/oj#art_105').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_106').
declared(railway_interoperability_act/1, 'act adopting delegated or implementing acts under Directive (EU) 2016/797', 'celex:32024R1689/oj#art_106').
declared(concerns_ai_safety_component/2, 'act concerns AI systems which are safety components within the meaning of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_106').
declared(must_take_into_account/2, 'an entity must take into account certain requirements when adopting an act', 'celex:32024R1689/oj#art_106').
must_take_into_account(Actor, requirements(chapter_iii_section_2, Act)) :-
    commission(Actor),
    railway_interoperability_act(Act),
    concerns_ai_safety_component(Act, System),
    ai_system(System),
    safety_component(System).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
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
declared(delegated_act/1, 'delegated act adopted pursuant to Article 5(3) of Regulation (EU) 2018/858', 'celex:32024R1689/oj#art_107').
declared(concerns_ai_safety_component/1, 'act concerns AI systems which are safety components within the meaning of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_107').
declared(must_take_into_account/2, 'entity adopting a measure must take into account specified requirements', 'celex:32024R1689/oj#art_107').
must_take_into_account(commission, requirements(chapter_iii_section_2, Act)) :-
    delegated_act(Act),
    concerns_ai_safety_component(Act).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
provenance(concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_107').
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
declared(must_take_into_account/2, 'actor must take into account requirements when adopting acts', 'celex:32024R1689/oj#art_108').
declared(adopts_act/2, 'authority adopts an implementing or delegated act concerning an AI system', 'celex:32024R1689/oj#art_108').
declared(safety_component_ai_system/1, 'AI system which is a safety component', 'celex:32024R1689/oj#art_108').
safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).
must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = implementing_act_article_17_regulation_2018_1139(S),
    safety_component_ai_system(S).
must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = delegated_act_article_19_regulation_2018_1139(S),
    safety_component_ai_system(S).
must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = implementing_act_article_43_regulation_2018_1139(S),
    safety_component_ai_system(S).
must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = delegated_act_article_47_regulation_2018_1139(S),
    safety_component_ai_system(S).
must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = implementing_act_article_57_regulation_2018_1139(S),
    safety_component_ai_system(S).
must_take_into_account(Authority, requirements_chapter_iii_section_2) :-
    adopts_act(Authority, Act),
    Act = delegated_act_article_58_regulation_2018_1139(S),
    safety_component_ai_system(S).
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').
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
declared(must_take_into_account/2, 'actor must take into account requirements when adopting acts', 'celex:32024R1689/oj#art_109').
declared(implementing_act_adoption/2, 'adoption of an implementing act concerning an AI system', 'celex:32024R1689/oj#art_109').
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    implementing_act_adoption(Actor, Act),
    concerning_ai_safety_component(Act).
concerning_ai_safety_component(Act) :-
    targets_system(Act, System),
    ai_system(System),
    safety_component(System).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_109').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11/par_2').
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
declared(covered_by_representative_action/1, 'EU act covered by Directive (EU) 2020/1828 Annex I on representative actions', 'celex:32024R1689/oj#art_110').
covered_by_representative_action('celex:32024R1689/oj').
provenance(covered_by_representative_action/1, 'celex:32024R1689/oj#art_110').
references('celex:32024R1689/oj#art_110', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_110', 'celex:32020L1828/oj#anx_I').
references('celex:32024R1689/oj#art_110', 'celex:32009L0022/oj').
references('celex:32024R1689/oj#art_110', 'celex:32024R1689/oj#art_110').
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
declared(component_of_large_scale_it_system/1, 'AI system is a component of a large-scale IT system listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_before/2, 'System or model placed on the market before a specified date', 'celex:32024R1689/oj#art_111').
declared(put_into_service_before/2, 'System put into service before a specified date', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system/1, 'High-risk AI system under the AI Act', 'celex:32024R1689/oj#art_111').
declared(significant_design_change_after/2, 'System undergoes significant change in design on or after a specified date', 'celex:32024R1689/oj#art_111').
declared(intended_for_public_authorities/1, 'AI system is intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(legal_act_evaluation_of_large_scale_it_system/1, 'Evaluation of a large-scale IT system under relevant legal acts', 'celex:32024R1689/oj#art_111').
declared(must_ensure_compliance/2, 'Operator or entity must ensure compliance of system or model by a specified date', 'celex:32024R1689/oj#art_111').
declared(must_take_into_account_requirements/2, 'Entity must take requirements of the Regulation into account in an evaluation', 'celex:32024R1689/oj#art_111').
declared(regulation_applies_to_operator/2, 'Regulation applies to an operator with respect to an AI system', 'celex:32024R1689/oj#art_111').
must_ensure_compliance(Operator, compliance(S, deadline(date(2030, 12, 31)))) :-
    operator(Operator),
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date(2027, 8, 2)).
must_ensure_compliance(Operator, compliance(S, deadline(date(2030, 12, 31)))) :-
    operator(Operator),
    component_of_large_scale_it_system(S),
    put_into_service_before(S, date(2027, 8, 2)).
must_take_into_account_requirements(Evaluator, evaluation(System)) :-
    legal_act_evaluation_of_large_scale_it_system(evaluation(System)),
    operator(Evaluator).
regulation_applies_to_operator(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S),
    placed_on_market_before(S, date(2026, 8, 2)),
    significant_design_change_after(S, date(2026, 8, 2)).
regulation_applies_to_operator(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S),
    put_into_service_before(S, date(2026, 8, 2)),
    significant_design_change_after(S, date(2026, 8, 2)).
must_ensure_compliance(Provider, compliance(S, deadline(date(2030, 8, 2)))) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).
must_ensure_compliance(Deployer, compliance(S, deadline(date(2030, 8, 2)))) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).
must_ensure_compliance(Provider, compliance(M, deadline(date(2027, 8, 2)))) :-
    provider(Provider),
    general_purpose_ai_model(M),
    placed_on_market_before(M, date(2025, 8, 2)).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
must_assess(commission, amendment_need(lists(annex_3, prohibited_ai_practices))) :-
    delegation_of_power_period_active.
must_submit(commission, assessment_findings(lists(annex_3, prohibited_ai_practices), to(european_parliament, council))) :-
    delegation_of_power_period_active.
must_evaluate(commission, review_areas(annex_3_headings, art_50_transparency_list, governance_effectiveness)).
must_submit(commission, report(review_areas(annex_3_headings, art_50_transparency_list, governance_effectiveness), to(european_parliament, council))).
must_submit(commission, report(evaluation_and_review(ai_act), to(european_parliament, council))).
must_evaluate(commission, functioning(ai_office)).
must_submit(commission, report(functioning(ai_office), to(european_parliament, council))).
must_submit(commission, report(progress(standardisation(energy_efficiency, general_purpose_ai_model)), to(european_parliament, council))).
must_evaluate(commission, voluntary_codes_of_conduct).
must_provide(board, information_to(commission)).
must_provide(member_state, information_to(commission)).
must_provide(Authority, information_to(commission)) :-
    national_competent_authority(Authority).
must_develop(ai_office, methodology(evaluation_of_risk_levels)).
must_assess(commission, enforcement(ai_act)).
must_submit(commission, report(enforcement(ai_act), to(european_parliament, council, european_economic_and_social_committee))).
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% ==== celex:32024R1689/oj#art_113 ====
declared(entry_into_force/2, 'entry into force of a legal act or provision on a date or event', 'celex:32024R1689/oj#art_113').
declared(application_date/2, 'date or condition from which a legal act or provision applies', 'celex:32024R1689/oj#art_113').
declared(directly_applicable/1, 'provision or regulation directly applicable in all Member States', 'celex:32024R1689/oj#art_113').
declared(binding_in_entirety/1, 'act is binding in its entirety', 'celex:32024R1689/oj#art_113').
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
entry_into_force('celex:32024R1689/oj', days_after_publication(20)).
application_date('celex:32024R1689/oj', date(2026, 8, 2)).
application_date('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
application_date('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
application_date('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#art_101', date(2026, 8, 2)).
application_date('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
application_date(corresponding_obligations('celex:32024R1689/oj#art_6/par_1'), date(2027, 8, 2)).
binding_in_entirety('celex:32024R1689/oj').
directly_applicable('celex:32024R1689/oj').
provenance(entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(application_date/2, 'celex:32024R1689/oj#art_113').
provenance(binding_in_entirety/1, 'celex:32024R1689/oj#art_113').
provenance(directly_applicable/1, 'celex:32024R1689/oj#art_113').

% ==== celex:32024R1689/oj#anx_1 ====
declared(union_harmonisation_legislation/1, 'legislation listed in Annex I', 'celex:32024R1689/oj#anx_1').
declared(union_harmonisation_legislation_section_a/1, 'legislation listed in Section A of Annex I (New Legislative Framework)', 'celex:32024R1689/oj#anx_1').
declared(union_harmonisation_legislation_section_b/1, 'legislation listed in Section B of Annex I', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation(Legislation) :-
    union_harmonisation_legislation_section_a(Legislation).
union_harmonisation_legislation(Legislation) :-
    union_harmonisation_legislation_section_b(Legislation).
union_harmonisation_legislation_section_a('celex:32006L0042/oj').
union_harmonisation_legislation_section_a('celex:32009L0048/oj').
union_harmonisation_legislation_section_a('celex:32013L0053/oj').
union_harmonisation_legislation_section_a('celex:32014L0033/oj').
union_harmonisation_legislation_section_a('celex:32014L0034/oj').
union_harmonisation_legislation_section_a('celex:32014L0053/oj').
union_harmonisation_legislation_section_a('celex:32014L0068/oj').
union_harmonisation_legislation_section_a('celex:32016R0424/oj').
union_harmonisation_legislation_section_a('celex:32016R0425/oj').
union_harmonisation_legislation_section_a('celex:32016R0426/oj').
union_harmonisation_legislation_section_a('celex:32017R0745/oj').
union_harmonisation_legislation_section_a('celex:32017R0746/oj').
union_harmonisation_legislation_section_b('celex:32008R0300/oj').
union_harmonisation_legislation_section_b('celex:32013R0168/oj').
union_harmonisation_legislation_section_b('celex:32013R0167/oj').
union_harmonisation_legislation_section_b('celex:32014L0090/oj').
union_harmonisation_legislation_section_b('celex:32016L0797/oj').
union_harmonisation_legislation_section_b('celex:32018R0858/oj').
union_harmonisation_legislation_section_b('celex:32019R2144/oj').
union_harmonisation_legislation_section_b('celex:32018R1139/oj').
provenance(union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_section_a/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_section_b/1, 'celex:32024R1689/oj#anx_1').
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
declared(criminal_offence/1, 'criminal offence listed in Annex II', 'celex:32024R1689/oj#anx_2').
criminal_offence(terrorism).
criminal_offence(trafficking_in_human_beings).
criminal_offence(sexual_exploitation_of_children_and_child_pornography).
criminal_offence(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence(murder).
criminal_offence(grievous_bodily_injury).
criminal_offence(illicit_trade_in_human_organs_or_tissue).
criminal_offence(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence(kidnapping_illegal_restraint_or_hostage_taking).
criminal_offence(crimes_within_jurisdiction_of_international_criminal_court).
criminal_offence(unlawful_seizure_of_aircraft_or_ships).
criminal_offence(rape).
criminal_offence(environmental_crime).
criminal_offence(organised_or_armed_robbery).
criminal_offence(sabotage).
criminal_offence(participation_in_criminal_organisation_involved_in_annex_2_offences).
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system considered high-risk under Annex III', 'celex:32024R1689/oj#anx_3').
declared(permitted_use_under_law/1, 'Use of AI system is permitted under relevant Union or national law', 'celex:32024R1689/oj#anx_3').
declared(biometric_categorisation_inference/2, 'System infers sensitive or protected attributes or characteristics', 'celex:32024R1689/oj#anx_3').
declared(critical_infrastructure_area/1, 'Area of critical infrastructure management or supply', 'celex:32024R1689/oj#anx_3').
declared(judicial_authority/1, 'Public authority administering justice', 'celex:32024R1689/oj#anx_3').
declared(competent_public_authority/1, 'Competent authority in migration, asylum, border control', 'celex:32024R1689/oj#anx_3').
declared(union_institution_body_office_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#anx_3').
declared(acting_for_or_supporting/2, 'Entity acting on behalf of or in support of another entity', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    permitted_use_under_law(S),
    \+ intended_purpose(biometric_verification_sole_confirm_identity(S)).
high_risk_ai_system(S) :-
    biometric_categorisation_system(S),
    permitted_use_under_law(S),
    biometric_categorisation_inference(S, sensitive_or_protected_attributes).
high_risk_ai_system(S) :-
    emotion_recognition_system(S),
    permitted_use_under_law(S).
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(safety_component_in(S, Area)),
    critical_infrastructure_area(Area).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_admissions_or_assignment(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_evaluating_learning_outcomes(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_assessing_appropriate_level(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(education_monitoring_prohibited_behaviour_during_tests(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(recruitment_or_selection(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(work_relationship_decisions_or_monitoring(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluating_eligibility_public_assistance(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluating_creditworthiness(S)),
    \+ intended_purpose(detecting_financial_fraud(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(risk_assessment_and_pricing_life_health_insurance(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(emergency_call_dispatch_or_triage(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_victim_risk_assessment(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_polygraph(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_evidence_reliability_evaluation(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_offending_risk_or_traits(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(law_enforcement_profiling(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_polygraph(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_risk_assessment(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_asylum_visa_application_examination(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    permitted_use_under_law(S),
    intended_purpose(migration_detection_or_identification(S)),
    \+ intended_purpose(travel_document_verification(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(judicial_research_interpretation_or_dispute_resolution(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(influencing_election_referendum_voting(S)),
    \+ intended_purpose(political_campaign_purely_logistical_or_administrative(S)).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(technical_documentation/1, 'technical documentation of an AI system', 'celex:32024R1689/oj#anx_4').
declared(contains_element/2, 'documentation contains a specific required element', 'celex:32024R1689/oj#anx_4').
declared(required_technical_documentation/1, 'technical documentation meeting requirements of Annex IV', 'celex:32024R1689/oj#anx_4').
provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_element/2, 'celex:32024R1689/oj#anx_4').
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').
required_technical_documentation(Doc) :-
    technical_documentation(Doc),
    contains_element(Doc, general_description),
    contains_element(Doc, development_process_and_elements),
    contains_element(Doc, monitoring_functioning_and_control),
    contains_element(Doc, performance_metrics_appropriateness),
    contains_element(Doc, risk_management_system_description),
    contains_element(Doc, lifecycle_changes_description),
    contains_element(Doc, applied_standards_and_specifications),
    contains_element(Doc, eu_declaration_of_conformity_copy),
    contains_element(Doc, post_market_monitoring_system_description).
contains_element(Doc, general_description) :-
    contains_element(Doc, intended_purpose_provider_version),
    contains_element(Doc, hardware_software_interaction),
    contains_element(Doc, software_firmware_versions),
    contains_element(Doc, market_placement_forms),
    contains_element(Doc, intended_hardware),
    contains_element(Doc, product_component_features),
    contains_element(Doc, user_interface_description),
    contains_element(Doc, instructions_for_use).
contains_element(Doc, development_process_and_elements) :-
    contains_element(Doc, development_methods_and_steps),
    contains_element(Doc, design_specifications),
    contains_element(Doc, system_architecture_and_resources),
    contains_element(Doc, data_requirements_and_sets),
    contains_element(Doc, human_oversight_assessment),
    contains_element(Doc, predetermined_changes),
    contains_element(Doc, validation_and_testing_procedures),
    contains_element(Doc, cybersecurity_measures).

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity referred to in Article 47', 'celex:32024R1689/oj#anx_5').
declared(contains_information/2, 'document contains the specified information item', 'celex:32024R1689/oj#anx_5').
declared(processes_personal_data/1, 'AI system involves the processing of personal data', 'celex:32024R1689/oj#anx_5').
declared(involves_notified_body/1, 'conformity assessment of the AI system involves a notified body', 'celex:32024R1689/oj#anx_5').
declared(required_declaration_content/2, 'required information content for an EU declaration of conformity for an AI system', 'celex:32024R1689/oj#anx_5').
declared(valid_eu_declaration_of_conformity/2, 'EU declaration of conformity contains all required information for an AI system', 'celex:32024R1689/oj#anx_5').
required_declaration_content(identification_and_traceability, S) :-
    ai_system(S).
required_declaration_content(provider_or_representative_details, S) :-
    ai_system(S).
required_declaration_content(sole_responsibility_statement, S) :-
    ai_system(S).
required_declaration_content(conformity_statement, S) :-
    ai_system(S).
required_declaration_content(data_protection_compliance_statement, S) :-
    ai_system(S),
    processes_personal_data(S).
required_declaration_content(standards_and_specifications_references, S) :-
    ai_system(S).
required_declaration_content(notified_body_details_and_certificate, S) :-
    ai_system(S),
    involves_notified_body(S).
required_declaration_content(issue_and_signatory_details, S) :-
    ai_system(S).
valid_eu_declaration_of_conformity(D, S) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    contains_information(D, identification_and_traceability),
    contains_information(D, provider_or_representative_details),
    contains_information(D, sole_responsibility_statement),
    contains_information(D, conformity_statement),
    contains_information(D, standards_and_specifications_references),
    contains_information(D, issue_and_signatory_details),
    check_personal_data_requirement(D, S),
    check_notified_body_requirement(D, S).
declared(check_personal_data_requirement/2, 'checks compliance with item 5 if personal data processed', 'celex:32024R1689/oj#anx_5').
check_personal_data_requirement(D, S) :-
    processes_personal_data(S),
    contains_information(D, data_protection_compliance_statement).
check_personal_data_requirement(_D, S) :-
    ai_system(S),
    \+ processes_personal_data(S).
declared(check_notified_body_requirement/2, 'checks compliance with item 7 if notified body involved', 'celex:32024R1689/oj#anx_5').
check_notified_body_requirement(D, S) :-
    involves_notified_body(S),
    contains_information(D, notified_body_details_and_certificate).
check_notified_body_requirement(_D, S) :-
    ai_system(S),
    \+ involves_notified_body(S).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_information/2, 'celex:32024R1689/oj#anx_5').
provenance(processes_personal_data/1, 'celex:32024R1689/oj#anx_5').
provenance(involves_notified_body/1, 'celex:32024R1689/oj#anx_5').
provenance(required_declaration_content/2, 'celex:32024R1689/oj#anx_5').
provenance(valid_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#anx_5').
provenance(check_personal_data_requirement/2, 'celex:32024R1689/oj#anx_5').
provenance(check_notified_body_requirement/2, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
declared(verifies_quality_management_system/2, 'provider verifies quality management system complies with requirements', 'celex:32024R1689/oj#anx_6').
declared(assesses_technical_documentation_compliance/2, 'provider assesses AI system compliance with essential requirements via technical documentation', 'celex:32024R1689/oj#anx_6').
declared(verifies_design_and_monitoring_consistency/2, 'provider verifies design, development process, and post-market monitoring are consistent with technical documentation', 'celex:32024R1689/oj#anx_6').
declared(must_verify/2, 'provider must verify compliance or consistency aspects', 'celex:32024R1689/oj#anx_6').
declared(must_assess/2, 'provider must assess compliance aspects', 'celex:32024R1689/oj#anx_6').
conformity_assessment_internal_control(P) :-
    conformity_assessment(P),
    provider(Provider),
    ai_system(System),
    verifies_quality_management_system(Provider, System),
    assesses_technical_documentation_compliance(Provider, System),
    verifies_design_and_monitoring_consistency(Provider, System).
must_verify(Provider, quality_management_system_compliance(System)) :-
    provider(Provider),
    ai_system(System).
verifies_quality_management_system(Provider, System) :-
    must_verify(Provider, quality_management_system_compliance(System)).
must_assess(Provider, technical_documentation_compliance(System)) :-
    provider(Provider),
    ai_system(System).
assesses_technical_documentation_compliance(Provider, System) :-
    must_assess(Provider, technical_documentation_compliance(System)).
must_verify(Provider, design_and_monitoring_consistency(System)) :-
    provider(Provider),
    ai_system(System).
verifies_design_and_monitoring_consistency(Provider, System) :-
    must_verify(Provider, design_and_monitoring_consistency(System)).
provenance(conformity_assessment_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(verifies_quality_management_system/2, 'celex:32024R1689/oj#anx_6').
provenance(must_assess/2, 'celex:32024R1689/oj#anx_6').
provenance(assesses_technical_documentation_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(verifies_design_and_monitoring_consistency/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
must_include(application_qms(Provider, Qms), provider_details(Provider)) :-
    provider(Provider).
must_include(application_qms(Provider, Qms), authorised_representative_details(Rep)) :-
    provider(Provider),
    authorised_representative(Rep).
must_include(application_qms(_Provider, Qms), list_of_ai_systems(Qms)).
must_include(application_qms(_Provider, Qms), technical_documentation(System)) :-
    ai_system(System).
must_include(application_qms(_Provider, Qms), qms_documentation(Qms)).
must_include(application_qms(_Provider, Qms), adequacy_procedures(Qms)).
must_include(application_qms(_Provider, Qms), declaration_no_other_application(Qms)).
must_notify(Body, decision(assessment_qms(Provider, Qms))) :-
    notified_body(Body),
    provider(Provider).
must_maintain(Provider, approved_qms(Provider)) :-
    provider(Provider).
must_notify(Provider, change(approved_qms(Provider))) :-
    provider(Provider).
must_notify(Body, decision(change(approved_qms(Provider)))) :-
    notified_body(Body),
    provider(Provider).
must_include(application_technical_documentation(Provider, System), provider_details(Provider)) :-
    provider(Provider),
    ai_system(System).
must_include(application_technical_documentation(_Provider, System), declaration_no_other_application(System)) :-
    ai_system(System).
must_include(application_technical_documentation(_Provider, System), technical_documentation(System)) :-
    ai_system(System).
must_grant(Provider, access_to_datasets(System)) :-
    provider(Provider),
    ai_system(System).
must_grant(Provider, access_to_models(System)) :-
    provider(Provider),
    ai_system(System).
must_notify(Body, decision(assessment_technical_documentation(System))) :-
    notified_body(Body),
    ai_system(System).
must_issue(Body, union_technical_documentation_assessment_certificate(System)) :-
    notified_body(Body),
    ai_system(System),
    compliant_with_chapter_3_section_2(System).
must_refuse(Body, union_technical_documentation_assessment_certificate(System)) :-
    notified_body(Body),
    ai_system(System),
    \+ compliant_with_chapter_3_section_2(System).
must_notify(Provider, change(System)) :-
    provider(Provider),
    ai_system(System).
must_grant(Provider, access_to_premises(Provider)) :-
    provider(Provider).
must_grant(Provider, information_for_surveillance(Provider)) :-
    provider(Provider).
must_carry_out(Body, periodic_audits(Provider)) :-
    notified_body(Body),
    provider(Provider).
must_notify(Body, audit_report(Provider)) :-
    notified_body(Body),
    provider(Provider).
provenance(must_include/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#anx_8').
declared(certified_by_notified_body/1, 'system has been certified by a notified body', 'celex:32024R1689/oj#anx_8').
declared(area_of_law_enforcement/1, 'AI system in the area of law enforcement under Annex III point 1 or 6', 'celex:32024R1689/oj#anx_8').
declared(area_of_migration_asylum_border_control/1, 'AI system in migration, asylum and border control management under Annex III point 7', 'celex:32024R1689/oj#anx_8').
declared(exempt_from_electronic_instructions/1, 'exempt from submitting electronic instructions for use in registration', 'celex:32024R1689/oj#anx_8').
declared(requires_fundamental_rights_impact_assessment/1, 'deployer required to conduct fundamental rights impact assessment', 'celex:32024R1689/oj#anx_8').
declared(requires_data_protection_impact_assessment/1, 'deployer required to carry out data protection impact assessment', 'celex:32024R1689/oj#anx_8').
exempt_from_electronic_instructions(S) :-
    area_of_law_enforcement(S).
exempt_from_electronic_instructions(S) :-
    area_of_migration_asylum_border_control(S).
must_submit(P, registration_info(section_a, S, provider_details)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, submitter_details)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, authorised_representative_details)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, identification_and_traceability)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, intended_purpose_and_functions)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, system_information_and_operating_logic)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, system_status)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, notified_body_certificate_details)) :-
    provider(P),
    high_risk_ai_system(S),
    certified_by_notified_body(S).
must_submit(P, registration_info(section_a, S, notified_body_certificate_copy)) :-
    provider(P),
    high_risk_ai_system(S),
    certified_by_notified_body(S).
must_submit(P, registration_info(section_a, S, member_states_placed_or_serviced)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, declaration_of_conformity)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_a, S, electronic_instructions_for_use)) :-
    provider(P),
    high_risk_ai_system(S),
    \+ exempt_from_electronic_instructions(S).
must_update(P, registration_info(section_a, S)) :-
    provider(P),
    high_risk_ai_system(S).
must_submit(P, registration_info(section_b, S, provider_details)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, submitter_details)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, authorised_representative_details)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, identification_and_traceability)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, intended_purpose)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, article_6_3_conditions)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, article_6_3_grounds_summary)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, system_status)) :-
    provider(P),
    ai_system(S).
must_submit(P, registration_info(section_b, S, member_states_placed_or_serviced)) :-
    provider(P),
    ai_system(S).
must_update(P, registration_info(section_b, S)) :-
    provider(P),
    ai_system(S).
must_submit(D, registration_info(section_c, S, deployer_details)) :-
    deployer(D),
    high_risk_ai_system(S).
must_submit(D, registration_info(section_c, S, submitter_details)) :-
    deployer(D),
    high_risk_ai_system(S).
must_submit(D, registration_info(section_c, S, database_entry_url)) :-
    deployer(D),
    high_risk_ai_system(S).
must_submit(D, registration_info(section_c, S, fundamental_rights_impact_assessment_summary)) :-
    deployer(D),
    high_risk_ai_system(S),
    requires_fundamental_rights_impact_assessment(D).
must_submit(D, registration_info(section_c, S, data_protection_impact_assessment_summary)) :-
    deployer(D),
    high_risk_ai_system(S),
    requires_data_protection_impact_assessment(D).
must_update(D, registration_info(section_c, S)) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(exempt_from_electronic_instructions/1, 'celex:32024R1689/oj#anx_8').
provenance(must_submit/2, 'celex:32024R1689/oj#anx_8').
provenance(must_update/2, 'celex:32024R1689/oj#anx_8').
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
declared(required_registration_information/2, 'Information required to be submitted and kept up to date for real-world testing registration', 'celex:32024R1689/oj#anx_9').
required_registration_information(Testing, identification_number(Testing)) :-
    testing_in_real_world_conditions(Testing).
required_registration_information(Testing, contact_details(Party)) :-
    testing_in_real_world_conditions(Testing),
    (   provider(Party)
    ;   deployer(Party)
    ).
required_registration_information(Testing, system_description(System)) :-
    testing_in_real_world_conditions(Testing),
    ai_system(System).
required_registration_information(Testing, intended_purpose(System)) :-
    testing_in_real_world_conditions(Testing),
    ai_system(System).
required_registration_information(Testing, summary_characteristics(Plan)) :-
    testing_in_real_world_conditions(Testing),
    real_world_testing_plan(Plan).
required_registration_information(Testing, status(suspension_or_termination)) :-
    testing_in_real_world_conditions(Testing).
provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system_act/1, 'Union legislative act on large-scale IT systems in the area of Freedom, Security and Justice listed in Annex X', 'celex:32024R1689/oj#anx_10').
large_scale_it_system_act('celex:32018R1860/oj').
large_scale_it_system_act('celex:32018R1861/oj').
large_scale_it_system_act('celex:32018R1862/oj').
large_scale_it_system_act('celex:32021R1133/oj').
large_scale_it_system_act('celex:32021R1134/oj').
large_scale_it_system_act('celex:32024R1358/oj').
large_scale_it_system_act('celex:32017R2226/oj').
large_scale_it_system_act('celex:32018R1240/oj').
large_scale_it_system_act('celex:32018R1241/oj').
large_scale_it_system_act('celex:32019R0816/oj').
large_scale_it_system_act('celex:32019R0817/oj').
large_scale_it_system_act('celex:32019R0818/oj').
provenance(large_scale_it_system_act/1, 'celex:32024R1689/oj#anx_10').
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
declared(technical_documentation_contains/2, 'technical documentation contains specified element', 'celex:32024R1689/oj#anx_11').
declared(required_technical_documentation/2, 'required technical documentation content for a general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(systemic_risk_model/1, 'general-purpose AI model with systemic risk', 'celex:32024R1689/oj#anx_11').
required_technical_documentation(M, general_description(tasks_and_integration)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(acceptable_use_policies)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(release_date_and_distribution)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(architecture_and_parameters)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(modality_and_format_inputs_outputs)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(licence)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(integration_technical_means)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(design_specifications_and_training)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(data_training_testing_validation)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(computational_resources_training)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(energy_consumption)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, evaluation_strategies) :-
    general_purpose_ai_model(M),
    systemic_risk_model(M).
required_technical_documentation(M, adversarial_testing_and_adaptations) :-
    general_purpose_ai_model(M),
    systemic_risk_model(M).
required_technical_documentation(M, system_architecture_software_integration) :-
    general_purpose_ai_model(M),
    systemic_risk_model(M).
provenance(required_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_transparency_information/2, 'transparency information required to be provided to downstream providers for a general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(contains_element/2, 'information package or documentation contains a specific element or section', 'celex:32024R1689/oj#anx_12').
required_transparency_information(Model, Info) :-
    general_purpose_ai_model(Model),
    contains_element(Info, general_description(Model)),
    contains_element(Info, technical_integration_elements(Model)).
contains_element(general_description(Model), general_description_elements) :-
    contains_element(general_description(Model), intended_tasks_and_system_types),
    contains_element(general_description(Model), acceptable_use_policies),
    contains_element(general_description(Model), release_date_and_distribution_methods),
    contains_element(general_description(Model), hardware_software_interaction),
    contains_element(general_description(Model), relevant_software_versions),
    contains_element(general_description(Model), architecture_and_parameters),
    contains_element(general_description(Model), modality_and_format_inputs_outputs),
    contains_element(general_description(Model), licence).
contains_element(technical_integration_elements(Model), technical_development_elements) :-
    contains_element(technical_integration_elements(Model), integration_technical_means),
    contains_element(technical_integration_elements(Model), modality_format_maximum_size_inputs_outputs),
    contains_element(technical_integration_elements(Model), training_testing_validation_data_info).
provenance(required_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(contains_element/2, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
must_consider(commission, criteria_for_designation_systemic_risk(Model)) :-
    general_purpose_ai_model(Model).
criteria_for_designation_systemic_risk(number_of_parameters).
criteria_for_designation_systemic_risk(quality_or_size_of_dataset).
criteria_for_designation_systemic_risk(amount_of_computation_used_for_training).
criteria_for_designation_systemic_risk(input_and_output_modalities).
criteria_for_designation_systemic_risk(benchmarks_and_evaluations_of_capabilities).
criteria_for_designation_systemic_risk(high_impact_on_internal_market_due_to_reach).
criteria_for_designation_systemic_risk(number_of_registered_end_users).
presumed_high_impact_on_internal_market(Model) :-
    general_purpose_ai_model(Model),
    registered_business_users_in_union(Model, Count),
    Count >= 10000.
provenance(must_consider/2, 'celex:32024R1689/oj#anx_13').
provenance(criteria_for_designation_systemic_risk/1, 'celex:32024R1689/oj#anx_13').
provenance(presumed_high_impact_on_internal_market/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

