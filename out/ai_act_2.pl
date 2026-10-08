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
% There are 543 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous accessible_to_market_surveillance/1.
:- discontiguous accreditation_certificate_exists/1.
:- discontiguous act_is_delegated/1.
:- discontiguous adopt_delegated_act/2.
:- discontiguous ai_office/1.
:- discontiguous ai_office_applies/1.
:- discontiguous ai_vulnerability_measures/1.
:- discontiguous annual_basis_applies/0.
:- discontiguous another_notified_body_confirmed/1.
:- discontiguous appointed_for_evaluation/1.
:- discontiguous appropriate_cybersecurity_measures/1.
:- discontiguous assessment_completed_within/2.
:- discontiguous assessment_performed/2.
:- discontiguous assessment_published/1.
:- discontiguous bias_detection_and_correction_needed/1.
:- discontiguous board/1.
:- discontiguous ceased_activity/1.
:- discontiguous ceasing_conformity_assessment/1.
:- discontiguous certificate_validity_extended/1.
:- discontiguous certificates_remain_valid/1.
:- discontiguous certificates_remain_valid_after_withdrawal/1.
:- discontiguous code_adequate/0.
:- discontiguous code_finalised/0.
:- discontiguous combination_of_support_activities_efficient/1.
:- discontiguous commission/1.
:- discontiguous commission_finds_intentional_or_negligent_infringement/1.
:- discontiguous commission_requested_standardisation/1.
:- discontiguous committee/1.
:- discontiguous common_principle/1.
:- discontiguous competent_authority/1.
:- discontiguous complaint_submitted/2.
:- discontiguous concerning_safety_component_ai_system/1.
:- discontiguous conclusion_not_meet_requirements/1.
:- discontiguous condition/1.
:- discontiguous condition_a_applies/2.
:- discontiguous condition_b_applies/1.
:- discontiguous condition_c_applies/1.
:- discontiguous condition_common_specifications_adoptable/1.
:- discontiguous condition_common_specifications_fulfilled/1.
:- discontiguous condition_d_applies/1.
:- discontiguous condition_e_applies/1.
:- discontiguous condition_f_applies/1.
:- discontiguous condition_g_applies/1.
:- discontiguous condition_h_applies/1.
:- discontiguous condition_i_applies/1.
:- discontiguous condition_j_applies/1.
:- discontiguous conditions_paragraph1_met/1.
:- discontiguous considering_needs_of_microenterprises/1.
:- discontiguous cooperate_with/3.
:- discontiguous criminal_offence/1.
:- discontiguous criteria_amount_of_computation/1.
:- discontiguous criteria_input_output_modalities/1.
:- discontiguous criteria_number_of_parameters/1.
:- discontiguous criteria_quality_of_data_set/1.
:- discontiguous criterion/1.
:- discontiguous data_section/1.
:- discontiguous data_set_used_in_system/2.
:- discontiguous deadline_passed/1.
:- discontiguous declares_accuracy_metrics/2.
:- discontiguous declares_interest/1.
:- discontiguous deemed_necessary/1.
:- discontiguous delegated_act/1.
:- discontiguous delegation_of_power/1.
:- discontiguous designated_competent_authority/1.
:- discontiguous designation_status/2.
:- discontiguous detailed_arrangements_for/2.
:- discontiguous diligent_objective/1.
:- discontiguous doc_type/1.
:- discontiguous examination_procedure/1.
:- discontiguous examination_procedure_applies/1.
:- discontiguous exception_info/1.
:- discontiguous exception_two_person_verification/1.
:- discontiguous excluded_from_electronic_instructions/1.
:- discontiguous exempt_administrative_fine/1.
:- discontiguous exempt_application/1.
:- discontiguous exempt_authorised_criminal_detection/1.
:- discontiguous exempt_authorised_representative_obligation/1.
:- discontiguous exempt_disclosure_when_required_by_law/1.
:- discontiguous exempt_from_regulation/1.
:- discontiguous exempt_fundamental_rights_impact_assessment/1.
:- discontiguous exempt_liability_insurance_when_state_assumes/1.
:- discontiguous exempt_mark_output/1.
:- discontiguous exempt_provider_of_general_purpose_ai_model/2.
:- discontiguous exempt_quality_management_system/1.
:- discontiguous exempt_sensitive_operational_data/2.
:- discontiguous exempt_third_party_open_source/1.
:- discontiguous exempt_use_of_assessed_system_for_operations/2.
:- discontiguous exempt_use_of_assessed_system_for_personal_purposes/2.
:- discontiguous exempt_verification_of_requirements/2.
:- discontiguous expertise_in_ai/1.
:- discontiguous extension_of_scope_applies/1.
:- discontiguous factor_annual_budget_applies/1.
:- discontiguous factor_cooperation_applies/1.
:- discontiguous factor_level_of_damage_applies/1.
:- discontiguous factor_manner_of_discovery_applies/1.
:- discontiguous factor_mitigation_action_applies/1.
:- discontiguous factor_nature_gravity_duration_applies/1.
:- discontiguous factor_number_affected_applies/1.
:- discontiguous factor_previous_infringements_applies/1.
:- discontiguous factor_purpose_applies/1.
:- discontiguous factor_responsibility_applies/1.
:- discontiguous factor_technical_measures_applies/1.
:- discontiguous general_purpose_ai_model_provider/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous guideline_item/1.
:- discontiguous high_impact_capabilities/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous implementing_act/1.
:- discontiguous independent_from_provider/1.
:- discontiguous inform/2.
:- discontiguous informed_consent_obtained/2.
:- discontiguous infringement_a/1.
:- discontiguous infringement_b/1.
:- discontiguous infringement_c/1.
:- discontiguous infringement_d/1.
:- discontiguous justified_measure/1.
:- discontiguous keep_copy_of_certificate_for_10_years/2.
:- discontiguous keep_copy_of_declaration_for_10_years/2.
:- discontiguous keep_copy_of_instructions_for_10_years/2.
:- discontiguous label_contains_name_trade_mark_address/2.
:- discontiguous learns_after_market_placement/1.
:- discontiguous legislative_act/1.
:- discontiguous liability/2.
:- discontiguous listed_union_harmonisation_legislation/1.
:- discontiguous low_risk_conditions/1.
:- discontiguous market_surveillance_authority_finds_risk/2.
:- discontiguous measures_included/1.
:- discontiguous meets_requirements/1.
:- discontiguous member_state/1.
:- discontiguous member_state_applies/1.
:- discontiguous member_status/1.
:- discontiguous mitigation_measures_for_feedback_loops/1.
:- discontiguous monitor_and_evaluate/1.
:- discontiguous must_accept_form/2.
:- discontiguous must_adopt_delegated_acts/1.
:- discontiguous must_adopt_implementing_act/2.
:- discontiguous must_adopt_implementing_acts/1.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_advise/2.
:- discontiguous must_advise_ai_office/1.
:- discontiguous must_affix_identification_number/3.
:- discontiguous must_allocate_resources/1.
:- discontiguous must_allow_access_to_file/2.
:- discontiguous must_allow_access_to_premises/2.
:- discontiguous must_allow_views/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_assess_amendment_need/1.
:- discontiguous must_assess_and_mitigate_systemic_risks/2.
:- discontiguous must_assess_change/2.
:- discontiguous must_assess_enforcement/1.
:- discontiguous must_assess_harmonised_standard/2.
:- discontiguous must_assess_information/1.
:- discontiguous must_assess_need_for_further_measures/1.
:- discontiguous must_assess_quality_management_system/2.
:- discontiguous must_assign_identification_number/2.
:- discontiguous must_assist/2.
:- discontiguous must_assist_assessment_of_standards/1.
:- discontiguous must_associate_authority/2.
:- discontiguous must_assume_responsibility/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_be_controller/2.
:- discontiguous must_carry_out_adequate_tests/2.
:- discontiguous must_communicate_fine_information/3.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_complete_assessment/2.
:- discontiguous must_comply/2.
:- discontiguous must_conduct_periodic_audits/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult_experts/1.
:- discontiguous must_contain/2.
:- discontiguous must_contain_information/2.
:- discontiguous must_convene/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_cooperate/3.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/1.
:- discontiguous must_cooperate_with_new_providers/2.
:- discontiguous must_coordinate/2.
:- discontiguous must_decide_authorisation/2.
:- discontiguous must_decide_measure/3.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_demonstrate_alternative_means/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_or_establish_notifying_authority/2.
:- discontiguous must_determine_number/1.
:- discontiguous must_develop_expertise_and_capabilities/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_interface/1.
:- discontiguous must_develop_methodology/1.
:- discontiguous must_develop_procedures_in_cooperation/1.
:- discontiguous must_document_assessment/2.
:- discontiguous must_draw_up_declaration_of_conformity/2.
:- discontiguous must_draw_up_declaration_of_interests/1.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_encourage/2.
:- discontiguous must_encourage_and_facilitate_drawing_up_codes_of_practice/2.
:- discontiguous must_encourage_and_facilitate_review_of_codes/1.
:- discontiguous must_enforce/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_codes_cover_obligations/2.
:- discontiguous must_ensure_codes_set_objectives_and_measures/2.
:- discontiguous must_ensure_combination_efficient/1.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_corrective_action/1.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_cybersecurity_protection/2.
:- discontiguous must_ensure_decisions_taken_by_competent_persons_different_from_assessors/1.
:- discontiguous must_ensure_fair_representation/1.
:- discontiguous must_ensure_files_kept/2.
:- discontiguous must_ensure_list_up_to_date/1.
:- discontiguous must_ensure_no_conflict_of_interest/1.
:- discontiguous must_ensure_participants_report_regularly/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_enter_consultation/2.
:- discontiguous must_enter_data/3.
:- discontiguous must_entrust/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_conflict_of_interest_management/1.
:- discontiguous must_establish_sandbox/2.
:- discontiguous must_establish_scientific_panel/1.
:- discontiguous must_evaluate_ai_office/1.
:- discontiguous must_evaluate_amendment_area_headings/1.
:- discontiguous must_evaluate_national_measure/2.
:- discontiguous must_evaluate_supervision_effectiveness/1.
:- discontiguous must_evaluate_transparency_amendments/1.
:- discontiguous must_evaluate_voluntary_codes/1.
:- discontiguous must_examine/2.
:- discontiguous must_examine_qms_change/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_exercise_supervisory_powers/1.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_access/3.
:- discontiguous must_facilitate_development/1.
:- discontiguous must_facilitate_exchange/1.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access_to_models/3.
:- discontiguous must_grant_full_access_to_data/3.
:- discontiguous must_handle_in_line_with_procedures/2.
:- discontiguous must_have_adequate_competent_personnel/1.
:- discontiguous must_have_unlimited_jurisdiction/2.
:- discontiguous must_identify_system_in_declaration/2.
:- discontiguous must_implement_cybersecurity_measures/1.
:- discontiguous must_include_accreditation_certificate_when_available/2.
:- discontiguous must_include_assessment_of_enforcement_structure/1.
:- discontiguous must_include_description/1.
:- discontiguous must_include_other_information/1.
:- discontiguous must_include_point_of_contact/2.
:- discontiguous must_include_required_issues/2.
:- discontiguous must_include_testing_in_real_world_conditions/1.
:- discontiguous must_indicate_fines/1.
:- discontiguous must_inform/2.
:- discontiguous must_inform/3.
:- discontiguous must_inform_all_authorities/2.
:- discontiguous must_inform_authorised_representative/2.
:- discontiguous must_inform_authority_of_termination/2.
:- discontiguous must_inform_before_draft/2.
:- discontiguous must_inform_board_and_authorities/2.
:- discontiguous must_inform_board_of_measure/2.
:- discontiguous must_inform_change_to_ai_system/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_deployer/2.
:- discontiguous must_inform_distributor/2.
:- discontiguous must_inform_importer/2.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_member_state/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_of_serious_incident/2.
:- discontiguous must_inform_other_notified_bodies/2.
:- discontiguous must_inform_provider_when_risk/2.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_causes/2.
:- discontiguous must_issue_certificate_if_conform/2.
:- discontiguous must_justify_non_compliance/2.
:- discontiguous must_keep_declaration_at_disposal/2.
:- discontiguous must_keep_declaration_up_to_date/2.
:- discontiguous must_keep_documents_at_disposal_of/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_lodge_technical_documentation_application/3.
:- discontiguous must_maintain/2.
:- discontiguous must_maintain_quality_management_system/1.
:- discontiguous must_make_available/3.
:- discontiguous must_make_available_and_submit_documentation/2.
:- discontiguous must_make_declaration_public/1.
:- discontiguous must_make_list_publicly_available/1.
:- discontiguous must_make_public/2.
:- discontiguous must_make_report_public/1.
:- discontiguous must_monitor_and_evaluate_codes/2.
:- discontiguous must_not_alter_ai_system/2.
:- discontiguous must_not_seek_instructions/1.
:- discontiguous must_not_use_if_not_registered/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_assessment_conclusions/2.
:- discontiguous must_notify_change_to_qms/2.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_commission_and_members/2.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_decision/3.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_notified_body/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_with_impartiality/1.
:- discontiguous must_prepare/2.
:- discontiguous must_propose_amendment_if_appropriate/1.
:- discontiguous must_provide/2.
:- discontiguous must_provide_access/3.
:- discontiguous must_provide_access_to_logs/2.
:- discontiguous must_provide_advice/2.
:- discontiguous must_provide_application_description/2.
:- discontiguous must_provide_assessment_documentation/2.
:- discontiguous must_provide_audit_report/2.
:- discontiguous must_provide_controlled_environment/1.
:- discontiguous must_provide_copy_of_mandate/2.
:- discontiguous must_provide_documentary_evidence_without_accreditation/2.
:- discontiguous must_provide_exit_report/3.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information_to_other_notified_bodies/2.
:- discontiguous must_provide_supervision/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_provide_written_proof/3.
:- discontiguous must_publish_assessment_of_codes/2.
:- discontiguous must_publish_notified_body_list/1.
:- discontiguous must_publish_spoc_list/1.
:- discontiguous must_reason_qualified_alert/1.
:- discontiguous must_refuse_certificate_if_nonconform/2.
:- discontiguous must_repeal_implementing_act/2.
:- discontiguous must_report/2.
:- discontiguous must_report_assessment/1.
:- discontiguous must_report_serious_incident_information/2.
:- discontiguous must_report_standardisation_progress/1.
:- discontiguous must_report_to_ep_and_council/1.
:- discontiguous must_request_corrective_measures/3.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require_further_evidence/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rights_of_defence/1.
:- discontiguous must_respect_rigour_and_protection/2.
:- discontiguous must_restrict/2.
:- discontiguous must_safeguard/2.
:- discontiguous must_safeguard_confidentiality/1.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_safeguard_objectivity_and_impartiality/1.
:- discontiguous must_set_provision_period/1.
:- discontiguous must_set_up/2.
:- discontiguous must_share_information/2.
:- discontiguous must_specify_information_by_written_agreement/2.
:- discontiguous must_specify_required_information/1.
:- discontiguous must_state_legal_basis_and_purpose/1.
:- discontiguous must_state_legal_basis_purpose_reason_and_period/1.
:- discontiguous must_state_meets_requirements/2.
:- discontiguous must_stop_use_and_discard_results/2.
:- discontiguous must_stop_use_if_authorisation_rejected/2.
:- discontiguous must_submit_ai_office_report/1.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_application/2.
:- discontiguous must_submit_copy_on_request/2.
:- discontiguous must_submit_evaluation_report/1.
:- discontiguous must_submit_findings/1.
:- discontiguous must_submit_proposals/1.
:- discontiguous must_supervise/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information/3.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_support_cross_border_market_surveillance/1.
:- discontiguous must_support_market_surveillance/1.
:- discontiguous must_support_union_safeguard/1.
:- discontiguous must_suspend/2.
:- discontiguous must_suspend_or_withdraw_certificate/2.
:- discontiguous must_suspend_testing/1.
:- discontiguous must_suspend_use_when_risk/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_due_account/3.
:- discontiguous must_take_due_account_of_needs_and_interests/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_for_market_surveillance/2.
:- discontiguous must_take_steps_to_finalize_codes/1.
:- discontiguous must_translate_declaration/2.
:- discontiguous must_transmit_to_board/1.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_update_documentation/1.
:- discontiguous must_use_simplified_form/2.
:- discontiguous must_verify/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous needs_and_interests_accounted/1.
:- discontiguous no_harmonised_standard_reference_published/1.
:- discontiguous no_objection_within_period/1.
:- discontiguous no_risk_to_health_safety/1.
:- discontiguous non_compliance_finding/3.
:- discontiguous non_extension_change_applies/1.
:- discontiguous not_compliant_with_common_specifications/2.
:- discontiguous notified_body/1.
:- discontiguous notifying_authority_confirms_no_risk/1.
:- discontiguous objection/2.
:- discontiguous objective_advise_classification/2.
:- discontiguous objective_alert_systemic_risk/2.
:- discontiguous objective_cross_border_cooperation/1.
:- discontiguous objective_develop_evaluation_tools/2.
:- discontiguous objective_ensure_protection_of_fundamental_rights/1.
:- discontiguous objective_evidence_based_learning/1.
:- discontiguous objective_facilitating_market_access/1.
:- discontiguous objective_fostering_innovation/1.
:- discontiguous objective_improve_internal_market/1.
:- discontiguous objective_improving_legal_certainty/1.
:- discontiguous objective_prevent_or_minimise_risk/1.
:- discontiguous objective_promote_human_centric_trustworthy_ai/1.
:- discontiguous objective_sharing_best_practices/1.
:- discontiguous objective_support_innovation/1.
:- discontiguous objectives_set/1.
:- discontiguous obligation_from_art/2.
:- discontiguous operator/1.
:- discontiguous other_notifying_authority/1.
:- discontiguous own_initiative/1.
:- discontiguous paragraph1_system/1.
:- discontiguous participants_report_regularly/1.
:- discontiguous permitted_access/2.
:- discontiguous permitted_access_exit_report/2.
:- discontiguous permitted_adhere_full/1.
:- discontiguous permitted_adhere_limited/1.
:- discontiguous permitted_adopt_common_specifications/2.
:- discontiguous permitted_adopt_delegated_act/1.
:- discontiguous permitted_adopt_delegated_act/2.
:- discontiguous permitted_advise_commission_international_ai/1.
:- discontiguous permitted_amend_implementing_act/2.
:- discontiguous permitted_application_from/2.
:- discontiguous permitted_appoint_independent_expert/2.
:- discontiguous permitted_approve_code_of_practice/2.
:- discontiguous permitted_assessment_and_monitoring_by_accreditation_body/2.
:- discontiguous permitted_assist_ai_office_sandboxes/1.
:- discontiguous permitted_assist_expertise_development/1.
:- discontiguous permitted_attendance/2.
:- discontiguous permitted_authorisation/3.
:- discontiguous permitted_authorisation_deemed_justified/2.
:- discontiguous permitted_authorisation_of_third_country_conformity_assessment_body/1.
:- discontiguous permitted_call_upon_expert/2.
:- discontiguous permitted_certificate_extension/3.
:- discontiguous permitted_collect_and_share_expertise/1.
:- discontiguous permitted_combination_with_other_risk_management/2.
:- discontiguous permitted_conduct_evaluations/2.
:- discontiguous permitted_contribute_guidance_documents/1.
:- discontiguous permitted_control_conformity/2.
:- discontiguous permitted_cooperate_internationally/1.
:- discontiguous permitted_cooperate_with_union_entities/1.
:- discontiguous permitted_coordinate_national_competent_authorities/1.
:- discontiguous permitted_designate_another_market_surveillance_authority/2.
:- discontiguous permitted_disclosure_with_consultation/1.
:- discontiguous permitted_drawing_up_codes_of_conduct_by/1.
:- discontiguous permitted_entry_into_force/1.
:- discontiguous permitted_establish/2.
:- discontiguous permitted_establish_joint_sandbox/2.
:- discontiguous permitted_establish_sandbox/2.
:- discontiguous permitted_establish_subgroups/0.
:- discontiguous permitted_exceptional_processing_special_categories/2.
:- discontiguous permitted_exchange_confidential_info/2.
:- discontiguous permitted_exercise_assessment_powers/2.
:- discontiguous permitted_exercise_power_remotely/2.
:- discontiguous permitted_facilitate_common_criteria_and_understanding/1.
:- discontiguous permitted_fine_imposition/2.
:- discontiguous permitted_harmonise_administrative_practices/1.
:- discontiguous permitted_human_assisted_assessment_ai_system/1.
:- discontiguous permitted_impose_administrative_fine/3.
:- discontiguous permitted_initial_incomplete_report/2.
:- discontiguous permitted_initiate_structured_dialogue/2.
:- discontiguous permitted_integration_of_testing_and_reporting/2.
:- discontiguous permitted_invitation/2.
:- discontiguous permitted_invite_experts/0.
:- discontiguous permitted_invite_to_adhere/2.
:- discontiguous permitted_invite_to_participate_in_codes/2.
:- discontiguous permitted_issue_recommendations_and_opinions/1.
:- discontiguous permitted_issue_request_information/2.
:- discontiguous permitted_law_enforcement_labeling_ai_system/1.
:- discontiguous permitted_lodge_complaint/2.
:- discontiguous permitted_make_commitments_binding/2.
:- discontiguous permitted_measures_to_support_innovation/1.
:- discontiguous permitted_medical_or_safety_reason_ai_system/1.
:- discontiguous permitted_monitor_implementation_and_compliance/2.
:- discontiguous permitted_notified_body_activity/1.
:- discontiguous permitted_notify/2.
:- discontiguous permitted_observer/2.
:- discontiguous permitted_perform_check/1.
:- discontiguous permitted_prepare_opinions/0.
:- discontiguous permitted_processing_of_personal_data_in_sandbox/1.
:- discontiguous permitted_propose_joint_activity/3.
:- discontiguous permitted_provide_advice_general_purpose_ai_models/1.
:- discontiguous permitted_provide_common_rules/1.
:- discontiguous permitted_provide_qualified_alert/2.
:- discontiguous permitted_provide_qualified_alerts_opinions/1.
:- discontiguous permitted_provide_technical_support/2.
:- discontiguous permitted_provision_of_guidance/1.
:- discontiguous permitted_public_release/1.
:- discontiguous permitted_put_into_service_without_authorisation/2.
:- discontiguous permitted_reasoned_request/2.
:- discontiguous permitted_receive_member_state_opinions/1.
:- discontiguous permitted_reliance_on_codes_of_practice/2.
:- discontiguous permitted_rely_on_codes_of_practice/2.
:- discontiguous permitted_request_access/2.
:- discontiguous permitted_request_and_access/2.
:- discontiguous permitted_request_exercise_powers/2.
:- discontiguous permitted_request_implement_mitigation_measures/2.
:- discontiguous permitted_request_information/2.
:- discontiguous permitted_request_restrict_market_withdraw_recall/2.
:- discontiguous permitted_request_take_appropriate_measures/2.
:- discontiguous permitted_require_modification/4.
:- discontiguous permitted_restrict_designation/2.
:- discontiguous permitted_revocation/2.
:- discontiguous permitted_simplified_compliance/2.
:- discontiguous permitted_simplified_technical_documentation/2.
:- discontiguous permitted_subcontracting/1.
:- discontiguous permitted_submit_complaint/2.
:- discontiguous permitted_submit_reasoned_request/2.
:- discontiguous permitted_support_ai_literacy_and_public_awareness/1.
:- discontiguous permitted_support_joint_market_surveillance_activities/1.
:- discontiguous permitted_support_process/2.
:- discontiguous permitted_suspend_designation/2.
:- discontiguous permitted_suspend_or_terminate_testing/2.
:- discontiguous permitted_tacit_extension/1.
:- discontiguous permitted_testing_conducted_by/3.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_use_harmonised_standard/2.
:- discontiguous permitted_use_of_existing_designation_documents/1.
:- discontiguous permitted_when_objectives_met/1.
:- discontiguous permitted_withdraw_designation/2.
:- discontiguous persists_non_compliance/2.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous presumed_compliant/1.
:- discontiguous presumed_conformant/1.
:- discontiguous presumed_conformity/1.
:- discontiguous prohibited_affect_other_sandboxes/1.
:- discontiguous prohibited_affect_supervisory_powers/1.
:- discontiguous prohibited_application_of_sectoral_procedure/2.
:- discontiguous prohibited_biometric_categorisation_ai_system/1.
:- discontiguous prohibited_conflict_of_interest/1.
:- discontiguous prohibited_consultancy_services/1.
:- discontiguous prohibited_criminal_risk_assessment_ai_system/1.
:- discontiguous prohibited_disclosure_without_consultation/1.
:- discontiguous prohibited_emotion_inference_ai_system/1.
:- discontiguous prohibited_exemption_from_other_requirements/1.
:- discontiguous prohibited_exploit_vulnerable_persons_ai_system/1.
:- discontiguous prohibited_incompatible_action/1.
:- discontiguous prohibited_interference_with_judicial_independence/1.
:- discontiguous prohibited_involvement_in_design_development_marketing_use/1.
:- discontiguous prohibited_make_available_until_conformity/2.
:- discontiguous prohibited_place_on_market_unless_conform/2.
:- discontiguous prohibited_provision_of_assessment_activities/1.
:- discontiguous prohibited_provision_of_consultancy_services/1.
:- discontiguous prohibited_real_time_remote_biometric_identification_use/1.
:- discontiguous prohibited_social_scoring_ai_system/1.
:- discontiguous prohibited_subliminal_manipulative_ai_system/1.
:- discontiguous prohibited_untargeted_facial_database_ai_system/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/1.
:- discontiguous proportionate_to_size_applies/1.
:- discontiguous prospective_provider/1.
:- discontiguous protection_against_unauthorised_alteration/1.
:- discontiguous provenance/2.
:- discontiguous provide_information/2.
:- discontiguous provider/1.
:- discontiguous provider_has_appointed_authorised_representative/1.
:- discontiguous provider_has_carried_out_assessment/2.
:- discontiguous provider_has_drawn_up_technical_documentation/2.
:- discontiguous provider_of_general_purpose_ai_model/1.
:- discontiguous provides_general_purpose_ai_model/2.
:- discontiguous publicly_accessible_info/1.
:- discontiguous qualified_alert/1.
:- discontiguous quality_management_system/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous redundancy_solution/1.
:- discontiguous reference_published/1.
:- discontiguous references/2.
:- discontiguous regulation/1.
:- discontiguous related_nb/2.
:- discontiguous relevant_change_of_notification/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous report_made/2.
:- discontiguous request_for_access/1.
:- discontiguous request_from/1.
:- discontiguous request_not_accepted/1.
:- discontiguous request_reasoned/1.
:- discontiguous required_access_source_code/3.
:- discontiguous required_accessibility_compliance/2.
:- discontiguous required_accuracy/1.
:- discontiguous required_additional_information_url/2.
:- discontiguous required_adopt_delegated_act/2.
:- discontiguous required_adopt_implementing_act/2.
:- discontiguous required_adopt_implementing_acts/2.
:- discontiguous required_advisory_forum/0.
:- discontiguous required_affix_ce_marking/2.
:- discontiguous required_affix_ce_marking_visibly_legibly_indelibly/1.
:- discontiguous required_agree_testing_terms/2.
:- discontiguous required_ai_literacy/1.
:- discontiguous required_ai_system_status/2.
:- discontiguous required_ai_system_trade_name_reference/2.
:- discontiguous required_annual_assessment_of_resources/1.
:- discontiguous required_annual_report/0.
:- discontiguous required_annual_report_market_surveillance/2.
:- discontiguous required_annual_report_of_fines/1.
:- discontiguous required_appeal_procedure_available/1.
:- discontiguous required_application_from/2.
:- discontiguous required_application_includes/2.
:- discontiguous required_application_of_art79/2.
:- discontiguous required_apply_provision/2.
:- discontiguous required_appoint_authorised_representative/2.
:- discontiguous required_appointment_of_members/0.
:- discontiguous required_assess_impact_on_certificates/2.
:- discontiguous required_authorisation_conditions/2.
:- discontiguous required_authorisation_only_under_legislation/1.
:- discontiguous required_authorisation_request/2.
:- discontiguous required_authorised_representative_appointment/2.
:- discontiguous required_authorised_representative_details/2.
:- discontiguous required_authorised_representative_enablement/2.
:- discontiguous required_authorised_representative_task/2.
:- discontiguous required_authorised_representative_termination/1.
:- discontiguous required_balanced_membership/0.
:- discontiguous required_based_on_plan/2.
:- discontiguous required_bring_into_compliance/1.
:- discontiguous required_capability_with_integrity_and_competence/1.
:- discontiguous required_ce_marking_and_declaration/2.
:- discontiguous required_ce_marking_indicates_other_union_law/1.
:- discontiguous required_ce_marking_subject_to_general_principles/1.
:- discontiguous required_certificate_details/2.
:- discontiguous required_certificate_language/2.
:- discontiguous required_certificate_validity_limit/2.
:- discontiguous required_chair/2.
:- discontiguous required_communicate_decision/3.
:- discontiguous required_communication_of_grounds/3.
:- discontiguous required_communication_of_nca_to_commission/1.
:- discontiguous required_competence_and_power/2.
:- discontiguous required_compliance/1.
:- discontiguous required_compliance/2.
:- discontiguous required_compliance_action/2.
:- discontiguous required_comply_with_registration_obligations/1.
:- discontiguous required_condition_a/2.
:- discontiguous required_condition_b/2.
:- discontiguous required_condition_c/2.
:- discontiguous required_condition_d/2.
:- discontiguous required_condition_e/2.
:- discontiguous required_condition_f/2.
:- discontiguous required_confidence_in_assessment_results/1.
:- discontiguous required_confidence_in_performance/1.
:- discontiguous required_confidentiality_handling/2.
:- discontiguous required_confidentiality_obligation/2.
:- discontiguous required_confidentiality_observance/1.
:- discontiguous required_confidentiality_procedures/1.
:- discontiguous required_conformity_assessment/2.
:- discontiguous required_conformity_assessment_by_provider/2.
:- discontiguous required_conformity_assessment_procedure/3.
:- discontiguous required_consider_common_specifications/1.
:- discontiguous required_consider_harmonised_standards/1.
:- discontiguous required_consider_requirements/2.
:- discontiguous required_consider_state_of_the_art/1.
:- discontiguous required_consideration_of_factors/2.
:- discontiguous required_consideration_of_requirements/2.
:- discontiguous required_consideration_of_requirements_chapter_3_section_2/1.
:- discontiguous required_consideration_of_risk/2.
:- discontiguous required_consideration_of_vulnerable_groups/2.
:- discontiguous required_consistent_performance/1.
:- discontiguous required_consult/2.
:- discontiguous required_consult/3.
:- discontiguous required_consultation_and_decision/3.
:- discontiguous required_consultation_of_other_authority/2.
:- discontiguous required_cooperate/2.
:- discontiguous required_cooperate_with_authorities/1.
:- discontiguous required_cooperate_with_authority/3.
:- discontiguous required_cooperation/2.
:- discontiguous required_copyright_policy/2.
:- discontiguous required_corrective_action/2.
:- discontiguous required_corrective_action/3.
:- discontiguous required_corrective_actions/1.
:- discontiguous required_cybersecurity/1.
:- discontiguous required_cybersecurity_measures/1.
:- discontiguous required_cybersecurity_requirements/1.
:- discontiguous required_data_characteristic_consideration/2.
:- discontiguous required_data_collection/2.
:- discontiguous required_data_governance_practice/2.
:- discontiguous required_data_protection_impact_assessment_summary/2.
:- discontiguous required_data_quality_attribute/2.
:- discontiguous required_deadline_codes_of_practice/1.
:- discontiguous required_declaration_of_accuracy_metrics/1.
:- discontiguous required_declaration_of_conformity/2.
:- discontiguous required_demonstrate_conformity/2.
:- discontiguous required_deployer_name_address_contact/2.
:- discontiguous required_deployer_submitting_person_details/2.
:- discontiguous required_design_and_development/1.
:- discontiguous required_design_for_human_oversight/1.
:- discontiguous required_designated_financial_market_surveillance_authority/2.
:- discontiguous required_designated_market_surveillance_authority/2.
:- discontiguous required_designation_of_market_surveillance_authority/2.
:- discontiguous required_designation_of_notifying_authority/2.
:- discontiguous required_designation_of_spoc/2.
:- discontiguous required_designation_period/2.
:- discontiguous required_determine_conditions/3.
:- discontiguous required_develop_guidelines/2.
:- discontiguous required_digital_ce_marking/1.
:- discontiguous required_direct_to_pre_deployment_services/2.
:- discontiguous required_disclose_generated_content/2.
:- discontiguous required_documented_impartiality_procedures/1.
:- discontiguous required_dpia/2.
:- discontiguous required_draw_up_rules_of_procedure/0.
:- discontiguous required_elect_two_co_chairs/0.
:- discontiguous required_electronic_instructions/2.
:- discontiguous required_enable_authorised_representative/2.
:- discontiguous required_encourage_codes_of_practice/1.
:- discontiguous required_end_non_compliance/3.
:- discontiguous required_enforcement_rules/1.
:- discontiguous required_engagement_in_standardisation/1.
:- discontiguous required_ensure/2.
:- discontiguous required_ensure_balanced_representation/1.
:- discontiguous required_ensure_conformity/2.
:- discontiguous required_ensure_storage_transport_not_jeopardise/2.
:- discontiguous required_entry_into_force/2.
:- discontiguous required_establishment/1.
:- discontiguous required_establishment_under_national_law/1.
:- discontiguous required_eu_database_url/2.
:- discontiguous required_eu_declaration_of_conformity/2.
:- discontiguous required_evaluate/3.
:- discontiguous required_evaluation/2.
:- discontiguous required_expert/1.
:- discontiguous required_facilitate_coordination/1.
:- discontiguous required_fee_structure/1.
:- discontiguous required_feedback_loop_mitigation/1.
:- discontiguous required_fine/1.
:- discontiguous required_fine_characteristics/1.
:- discontiguous required_fine_for_ai_practice_prohibition/2.
:- discontiguous required_fine_for_misleading_information/2.
:- discontiguous required_fine_for_operator_obligation_non_compliance/2.
:- discontiguous required_fine_not_exceeding_limit/2.
:- discontiguous required_fine_up_to/2.
:- discontiguous required_fundamental_rights_impact_assessment/2.
:- discontiguous required_fundamental_rights_impact_assessment_summary/2.
:- discontiguous required_governance_rules/1.
:- discontiguous required_grant_full_access/3.
:- discontiguous required_guideline_content/2.
:- discontiguous required_harmonised_rules_for_placing_general_purpose_ai_model/1.
:- discontiguous required_harmonised_rules_for_placing_on_market/1.
:- discontiguous required_harmonised_rules_for_putting_into_service/1.
:- discontiguous required_harmonised_rules_for_use/1.
:- discontiguous required_harmonised_transparency_rules/1.
:- discontiguous required_human_oversight_assignment/2.
:- discontiguous required_identify_public_authorities/1.
:- discontiguous required_include_common_principle/2.
:- discontiguous required_independence_from_competitor/2.
:- discontiguous required_independence_from_operator/2.
:- discontiguous required_independence_from_provider/2.
:- discontiguous required_independent_exercise_of_powers/1.
:- discontiguous required_indication_of_grounds_and_challenge/2.
:- discontiguous required_inform/2.
:- discontiguous required_inform_authorities_of_non_compliance/2.
:- discontiguous required_inform_commission_and_members/2.
:- discontiguous required_inform_natural_persons/2.
:- discontiguous required_inform_natural_persons_deployer/2.
:- discontiguous required_inform_provider_if_risk/2.
:- discontiguous required_inform_provider_or_importer_of_risk/2.
:- discontiguous required_information/2.
:- discontiguous required_information_for_integrators/2.
:- discontiguous required_information_item/2.
:- discontiguous required_information_item/3.
:- discontiguous required_information_sharing/2.
:- discontiguous required_informed_consent/2.
:- discontiguous required_input_data_relevance/2.
:- discontiguous required_instructions_for_use/1.
:- discontiguous required_integration_option/2.
:- discontiguous required_intended_purpose_description/2.
:- discontiguous required_issue_in_codes/1.
:- discontiguous required_issue_standardisation_request/2.
:- discontiguous required_item/1.
:- discontiguous required_keep_documentation/1.
:- discontiguous required_keep_documentation/3.
:- discontiguous required_keep_documents_for_10_years/1.
:- discontiguous required_keep_list_up_to_date/1.
:- discontiguous required_keep_logs/2.
:- discontiguous required_label_information/2.
:- discontiguous required_labeling/2.
:- discontiguous required_lay_down_penalties_rules/1.
:- discontiguous required_legal_personality/1.
:- discontiguous required_liability_insurance/1.
:- discontiguous required_log_retention/2.
:- discontiguous required_log_retention_minimum/2.
:- discontiguous required_logging_capability/1.
:- discontiguous required_maintain_compliance_storage/2.
:- discontiguous required_maintain_logs_financial/2.
:- discontiguous required_maintain_records/2.
:- discontiguous required_maintain_technical_documentation/2.
:- discontiguous required_mark_output_machine_readable/2.
:- discontiguous required_market_monitoring_rules/1.
:- discontiguous required_market_surveillance_authority_for_institution/2.
:- discontiguous required_market_surveillance_powers/2.
:- discontiguous required_market_surveillance_rules/1.
:- discontiguous required_measure/2.
:- discontiguous required_meet_criteria/1.
:- discontiguous required_meetings_at_least_twice_per_year/0.
:- discontiguous required_member_states_placement/2.
:- discontiguous required_minimum_logging_details/1.
:- discontiguous required_mitigation_of_ai_vulnerabilities/1.
:- discontiguous required_monitoring/2.
:- discontiguous required_monitoring_and_supervision_power/2.
:- discontiguous required_national_registration/1.
:- discontiguous required_new_conformity_assessment/2.
:- discontiguous required_not_high_risk_conditions/2.
:- discontiguous required_not_high_risk_grounds_summary/2.
:- discontiguous required_notification_content/2.
:- discontiguous required_notify_commission_of_amendment/1.
:- discontiguous required_notify_commission_of_penalties_rules/1.
:- discontiguous required_notify_list/2.
:- discontiguous required_obligation_application_from/2.
:- discontiguous required_one_representative_per_member_state/1.
:- discontiguous required_operational_by/2.
:- discontiguous required_operator_cooperation/2.
:- discontiguous required_organisational_requirements/1.
:- discontiguous required_oversight_measures/1.
:- discontiguous required_participation_in_coordination/1.
:- discontiguous required_pay_attention_to_needs/2.
:- discontiguous required_pay_fees/2.
:- discontiguous required_perform_task/2.
:- discontiguous required_permanent_member/1.
:- discontiguous required_plan_summary/1.
:- discontiguous required_post_market_monitoring_system/2.
:- discontiguous required_power_to_adopt_delegated_acts/1.
:- discontiguous required_procedural_rights/2.
:- discontiguous required_procedures_accounting_for_provider_characteristics/1.
:- discontiguous required_process_requirements/1.
:- discontiguous required_processing_of_personal_data_in_sandbox_for_law_enforcement/1.
:- discontiguous required_professional_secrecy/1.
:- discontiguous required_prohibit/2.
:- discontiguous required_promote_investment_and_innovation/1.
:- discontiguous required_promotional_material_includes_identification_number/2.
:- discontiguous required_protect_fundamental_rights/2.
:- discontiguous required_protection_against_unauthorised_alteration/1.
:- discontiguous required_protection_of_reporting_persons/1.
:- discontiguous required_provide_evidence/2.
:- discontiguous required_provide_guidelines/1.
:- discontiguous required_provide_info_to_nca/2.
:- discontiguous required_provide_information/2.
:- discontiguous required_provide_information_on_request/1.
:- discontiguous required_provide_information_to_authority/3.
:- discontiguous required_provider_contact_details/1.
:- discontiguous required_provider_name_address_contact/2.
:- discontiguous required_provider_submitting_person_details/2.
:- discontiguous required_provision_for_deployer/1.
:- discontiguous required_provision_of_resources/1.
:- discontiguous required_provisional_measures/2.
:- discontiguous required_public_availability_of_contact_info/1.
:- discontiguous required_public_availability_of_report/0.
:- discontiguous required_publish_list/1.
:- discontiguous required_quality_criteria_for_data_set/1.
:- discontiguous required_quality_management_aspect/2.
:- discontiguous required_quality_management_requirements/1.
:- discontiguous required_quality_management_system/1.
:- discontiguous required_quality_management_system/2.
:- discontiguous required_recall/2.
:- discontiguous required_recall/3.
:- discontiguous required_redundancy_solution/1.
:- discontiguous required_registration/2.
:- discontiguous required_registration_compliance/2.
:- discontiguous required_registration_obligation/1.
:- discontiguous required_registration_obligations/1.
:- discontiguous required_regulation_applies_to_operator/2.
:- discontiguous required_report/2.
:- discontiguous required_report_content/2.
:- discontiguous required_report_immediate_after_causal_link/2.
:- discontiguous required_reporting_deadline/3.
:- discontiguous required_reporting_of_infringements/1.
:- discontiguous required_reporting_of_resources/1.
:- discontiguous required_request_evidence/3.
:- discontiguous required_require_nb_suspend_or_withdraw/2.
:- discontiguous required_residual_risk_acceptable/1.
:- discontiguous required_resilience_measures/1.
:- discontiguous required_resources_requirements/1.
:- discontiguous required_restrict/2.
:- discontiguous required_risk_management_step/2.
:- discontiguous required_risk_management_system/2.
:- discontiguous required_robustness/1.
:- discontiguous required_rules_on_fines_for_public_authorities/1.
:- discontiguous required_safeguard_independence_objectivity_impartiality/1.
:- discontiguous required_scanned_certificate/2.
:- discontiguous required_secure_registration/2.
:- discontiguous required_specific_requirements_for_high_risk_ai_system/1.
:- discontiguous required_specify_standards/2.
:- discontiguous required_submit_report/2.
:- discontiguous required_sufficient_internal_competences/1.
:- discontiguous required_system_description/1.
:- discontiguous required_system_information_and_logic/2.
:- discontiguous required_take_corrective_actions/2.
:- discontiguous required_take_into_account/2.
:- discontiguous required_take_into_account_in_evaluation/1.
:- discontiguous required_take_into_account_requirements/1.
:- discontiguous required_take_into_account_requirements/2.
:- discontiguous required_take_steps_to_comply/2.
:- discontiguous required_technical_and_organisational_measures/2.
:- discontiguous required_technical_doc_application_includes/2.
:- discontiguous required_technical_documentation/2.
:- discontiguous required_technical_documentation_by_provider/2.
:- discontiguous required_technical_documentation_contains_minimum_elements/1.
:- discontiguous required_technical_documentation_item/2.
:- discontiguous required_template_for_fundamental_rights_impact_assessment/1.
:- discontiguous required_term_of_office_co_chairs/0.
:- discontiguous required_term_of_office_members/0.
:- discontiguous required_terminate_mandate/1.
:- discontiguous required_testing_before_market/2.
:- discontiguous required_testing_for_risk_management_measures/2.
:- discontiguous required_testing_termination_information/1.
:- discontiguous required_training_content_summary/2.
:- discontiguous required_transparency/1.
:- discontiguous required_transparency_information/3.
:- discontiguous required_two_person_verification/1.
:- discontiguous required_unique_identification_number/1.
:- discontiguous required_update_fundamental_rights_impact_assessment/2.
:- discontiguous required_update_guidelines/1.
:- discontiguous required_verify_ce_marking_and_declaration_and_instructions/2.
:- discontiguous required_verify_compliance/3.
:- discontiguous required_verify_declaration_and_assessment/1.
:- discontiguous required_withdraw/2.
:- discontiguous required_withdraw_or_recall/2.
:- discontiguous required_withdrawal/3.
:- discontiguous required_worker_information/2.
:- discontiguous requirement_chapter3_section2/1.
:- discontiguous requirements_chapter_3_section_2_applies/0.
:- discontiguous requirements_laid_down_in_art_31/1.
:- discontiguous retention_period_five_years/1.
:- discontiguous risk_within_meaning_of_art_79/1.
:- discontiguous safety_component_ai_system/1.
:- discontiguous setting_functional_specifications/1.
:- discontiguous stakeholder/1.
:- discontiguous standards_insufficient_fundamental_rights/1.
:- discontiguous standards_not_comply/1.
:- discontiguous standards_not_delivered/1.
:- discontiguous status/1.
:- discontiguous step/1.
:- discontiguous storage_or_transport_conditions_do_not_jeopardise_compliance/1.
:- discontiguous subcontractor_or_subsidiary/1.
:- discontiguous subject_to_regulation/1.
:- discontiguous sufficient_reason/1.
:- discontiguous system_accompanied_by_declaration_and_instructions/1.
:- discontiguous system_has_ce_marking/1.
:- discontiguous system_in_conformity/1.
:- discontiguous systemic_risk_present/1.
:- discontiguous take_into_account/2.
:- discontiguous takes_into_account/1.
:- discontiguous target_group/1.
:- discontiguous task/1.
:- discontiguous technical_and_organisational_measures_taken/1.
:- discontiguous technical_documentation/1.
:- discontiguous third_country_conformity_assessment_body/1.
:- discontiguous updating_functional_specifications/1.
:- discontiguous within_one_month/1.
:- discontiguous without_affecting_high_risk_requirements/1.
:- discontiguous without_affecting_protection/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic access_necessary_for_conformity/1.
:- dynamic accessibility_requirements_conform/1.
:- dynamic accessible_language_and_format/1.
:- dynamic accreditation_certificate/1.
:- dynamic act_concerns_ai_system/2.
:- dynamic activity_pursuant_to/2.
:- dynamic administrative_fine/1.
:- dynamic adopt_implementing_act/2.
:- dynamic adopting_implementing_act/1.
:- dynamic adoption_of_detailed_measures_applies/1.
:- dynamic adopts_technical_specifications_and_testing_standards/2.
:- dynamic advisory_forum/1.
:- dynamic affected_person/1.
:- dynamic affixing_not_possible/1.
:- dynamic affixing_not_warranted/1.
:- dynamic agreement/2.
:- dynamic ai_literacy/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic aim_promoting_compliance/1.
:- dynamic amount_up_to/1.
:- dynamic annex_3_ai_system/1.
:- dynamic annex_3_point_1_a/1.
:- dynamic annual_report/1.
:- dynamic arguments_not_substantiated/1.
:- dynamic assessment_positive/1.
:- dynamic assistive_function_for_standard_editing/1.
:- dynamic authorisation_refused/2.
:- dynamic authorisation_rejected/2.
:- dynamic authorisation_requested_during_or_after_use_without_undue_delay/1.
:- dynamic authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_on_territory/2.
:- dynamic authority_approved_testing/2.
:- dynamic authority_involved/1.
:- dynamic authority_responsible_for_market_surveillance/2.
:- dynamic automatic_recording_of_events/1.
:- dynamic awareness_raising_and_training/1.
:- dynamic bankrupt/1.
:- dynamic based_on/2.
:- dynamic based_on_profiling/1.
:- dynamic based_on_specific_union_or_national_law/2.
:- dynamic before_first_interaction/1.
:- dynamic before_market_or_service/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic can_be_used_directly_by_deployer_for_high_risk_purpose/1.
:- dynamic cannot_access_information/2.
:- dynamic causal_link_established/2.
:- dynamic causes_significant_harm/1.
:- dynamic ce_marking/1.
:- dynamic ceases_activity/1.
:- dynamic certificate_for_system/2.
:- dynamic certificate_issued_by/2.
:- dynamic certificate_language/2.
:- dynamic changes_occur/1.
:- dynamic civil_protection_authority/1.
:- dynamic code_of_conduct/1.
:- dynamic code_of_practice/1.
:- dynamic collects_and_analyzes_relevant_data/2.
:- dynamic commensurate_with_risk_autonomy_context/1.
:- dynamic commission_ascertains_not_meeting_requirements/1.
:- dynamic commission_considers_unjustified/2.
:- dynamic commission_equivalent_capabilities/1.
:- dynamic common_specification/1.
:- dynamic common_specification_applied/2.
:- dynamic common_specification_available/1.
:- dynamic communication_channels/1.
:- dynamic competence_doubt_applies/1.
:- dynamic competent_person/1.
:- dynamic complaint/1.
:- dynamic complaint_includes_description_of_facts/1.
:- dynamic complaint_includes_other_information/1.
:- dynamic complaint_includes_point_of_contact/1.
:- dynamic complaint_is_duly_reasoned/1.
:- dynamic compliance_deadline/2.
:- dynamic compliance_deadline/3.
:- dynamic complied_with_plan/1.
:- dynamic component_of_large_scale_it_system/1.
:- dynamic concerning_ai_system/2.
:- dynamic concerns/2.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic condition_applies/1.
:- dynamic conditions_laid_down/1.
:- dynamic conditions_not_met_applies/1.
:- dynamic confidential_exchange/1.
:- dynamic confidentiality_applies/1.
:- dynamic confidentiality_arrangement/2.
:- dynamic confidentiality_category/1.
:- dynamic confidentiality_obligation/1.
:- dynamic confidentiality_obligation_applies/1.
:- dynamic confidentiality_obligations_apply/1.
:- dynamic confirm_identity_of_targeted_individual/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_without_undue_delay/1.
:- dynamic conforms_to_harmonised_standard/2.
:- dynamic consent_given/1.
:- dynamic considered_relevant_by_ai_office/1.
:- dynamic controls_input_data/2.
:- dynamic cooperate_with_competent_authorities/1.
:- dynamic cooperation_agreement_in_place/2.
:- dynamic coordination_ensured/2.
:- dynamic coordination_of_notified_bodies/1.
:- dynamic copy_given_to_subject/2.
:- dynamic corrective_action_taken/2.
:- dynamic court_of_justice/1.
:- dynamic covered_by_annex_1/1.
:- dynamic covered_by_annex_3/1.
:- dynamic creates_facial_database/1.
:- dynamic critical_infrastructure/1.
:- dynamic cumulative_floating_point_operations_exceeds_threshold/1.
:- dynamic cybersecurity_certified_and_published_applies/1.
:- dynamic damage/1.
:- dynamic data_no_longer_needed/1.
:- dynamic data_protection_supervisory_authority/1.
:- dynamic data_strictly_necessary/1.
:- dynamic data_transfer_safeguarded/1.
:- dynamic date_deadline/1.
:- dynamic dated_and_documented/1.
:- dynamic deadline_prescribed_by/3.
:- dynamic deadline_set_by/3.
:- dynamic death_of_person/1.
:- dynamic decision/1.
:- dynamic decision_refers_to_art_76_par_3/1.
:- dynamic decision_taken_by_deployer/2.
:- dynamic decisions_reversible/1.
:- dynamic deduces_protected_attributes/1.
:- dynamic deep_fake/1.
:- dynamic delegated_act_authorised_by/1.
:- dynamic delete_personal_data/2.
:- dynamic demonstrates_conformity_with_criteria/1.
:- dynamic deployer/1.
:- dynamic deployer_informed_and_agreement/2.
:- dynamic deployer_of_annex3_pnt5/2.
:- dynamic deploys_subliminal_techniques/1.
:- dynamic design_and_development_process/1.
:- dynamic designated_under_other_legislation/1.
:- dynamic detrimental_treatment/1.
:- dynamic developed_for_scientific_research/1.
:- dynamic digital_ce_marking/1.
:- dynamic distributor/1.
:- dynamic documentation_and_data_provided/1.
:- dynamic documentation_created_or_maintained/1.
:- dynamic downstream_provider/1.
:- dynamic easily_accessed_via_interface/1.
:- dynamic educational_ai_system/1.
:- dynamic element_changed/2.
:- dynamic eligibility_conditions_fulfilled/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic employment_ai_system/1.
:- dynamic enabled_automation_bias_awareness/1.
:- dynamic enabled_decision_not_use/1.
:- dynamic enabled_interpret_output/1.
:- dynamic enabled_intervention/1.
:- dynamic enabled_understanding/1.
:- dynamic equivalent_level_of_compliance_applies/1.
:- dynamic equivalent_sectoral_procedure_exists/2.
:- dynamic essential_service_ai_system/1.
:- dynamic established_in_union/1.
:- dynamic established_under/2.
:- dynamic eu_database/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic european_data_protection_supervisor/1.
:- dynamic evaluation_finds_high_risk/2.
:- dynamic evaluation_finds_non_compliance/2.
:- dynamic exceptional_reason/1.
:- dynamic exceptional_reason_applies/2.
:- dynamic exempt_from_explanation/1.
:- dynamic exempt_notify_market_surveillance_authority/2.
:- dynamic existing_dedicated_channel/1.
:- dynamic existing_harmonised_legislation/1.
:- dynamic exit_report/1.
:- dynamic expert/1.
:- dynamic expert_of_scientific_panel/1.
:- dynamic expertise_and_capabilities_in_ai/1.
:- dynamic exploits_vulnerabilities/1.
:- dynamic failed_to_comply_with_measure/1.
:- dynamic failed_to_comply_with_request/2.
:- dynamic failed_to_make_available_model/1.
:- dynamic falls_under_art_5/1.
:- dynamic falls_under_art_50/1.
:- dynamic financial_institution/1.
:- dynamic financial_supervision_authority/1.
:- dynamic floating_point_operation/1.
:- dynamic followed_guidance_good_faith/1.
:- dynamic free_open_source_license/1.
:- dynamic freely_given/1.
:- dynamic fulfilment_doubt_applies/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_or_manipulates_content/1.
:- dynamic generates_synthetic_content/1.
:- dynamic grounds_to_consider_infringement/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_applied/2.
:- dynamic harmonised_standard_covers_requirements/1.
:- dynamic harmonised_standard_exists/1.
:- dynamic high_risk/1.
:- dynamic high_risk_ai_system_used_by_law_enforcement/1.
:- dynamic human_oversight_assigned/2.
:- dynamic identification_number_of_notified_body/1.
:- dynamic identified_in_sandbox/1.
:- dynamic identified_information/1.
:- dynamic identifies_fundamental_rights_risk/1.
:- dynamic importer/1.
:- dynamic in_ai_regulatory_sandbox/1.
:- dynamic in_conformity_with_common_specifications/1.
:- dynamic incident_related_to_system/2.
:- dynamic independent_expert/1.
:- dynamic infers_emotions/1.
:- dynamic info_registered_under/2.
:- dynamic inform_affected_workers/2.
:- dynamic inform_importer_or_distributor/2.
:- dynamic inform_market_surveillance_authority/2.
:- dynamic inform_person/3.
:- dynamic inform_provider/2.
:- dynamic inform_provider_first/2.
:- dynamic inform_provider_or_distributor/2.
:- dynamic inform_workers_representatives/2.
:- dynamic information/1.
:- dynamic informed_consent/1.
:- dynamic informed_consent_obtained/1.
:- dynamic initial_provider_of/2.
:- dynamic input_data/1.
:- dynamic input_data_relevant/1.
:- dynamic institution/1.
:- dynamic instructions_for_use/1.
:- dynamic integrates_elements_using_template/2.
:- dynamic integrates_model/2.
:- dynamic intended_as_safety_component/1.
:- dynamic intended_detect_decision_patterns_without_replacement/1.
:- dynamic intended_for_public_authorities/1.
:- dynamic intended_improve_human_activity/1.
:- dynamic intended_narrow_procedural_task/1.
:- dynamic intended_preparatory_task_for_assessment/1.
:- dynamic intended_purpose/1.
:- dynamic intended_purpose_applies/1.
:- dynamic intended_use_in_annex_area_applies/1.
:- dynamic intended_use_in_exempt_area/1.
:- dynamic interacts_directly_with_natural_persons/1.
:- dynamic internal_control/1.
:- dynamic internal_risk_management_processes/1.
:- dynamic international_organisation/1.
:- dynamic jeopardises_public_security/1.
:- dynamic joint_activity/1.
:- dynamic judicial_authority/1.
:- dynamic justice_ai_system/1.
:- dynamic justified_measure_applies/1.
:- dynamic language_understood_by_authorities/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_use/1.
:- dynamic lawfully_collected_for_other_purposes/1.
:- dynamic legal_exception_applies/1.
:- dynamic legitimate_interest_excludes_access/1.
:- dynamic liability/1.
:- dynamic limited_period_authorisation/2.
:- dynamic linked_enterprise/1.
:- dynamic listed_in_annex3_pnt1/1.
:- dynamic listed_in_annex3_pnt2_8/1.
:- dynamic listed_in_annex_3/1.
:- dynamic listed_in_annex_3_pnt_2/1.
:- dynamic listed_in_annex_3_point/2.
:- dynamic local_public_authority/1.
:- dynamic log/1.
:- dynamic log_generated/2.
:- dynamic logging_capability_enables_facilitate_post_market_monitoring/1.
:- dynamic logging_capability_enables_identify_risk_situations/1.
:- dynamic logging_capability_enables_monitor_operation/1.
:- dynamic logging_detail_identify_natural_persons_in_verification/1.
:- dynamic logging_detail_input_data_match/1.
:- dynamic logging_detail_period_of_use/1.
:- dynamic logging_detail_reference_database/1.
:- dynamic logs_under_control/1.
:- dynamic logs_under_control/2.
:- dynamic made_all_appropriate_efforts/2.
:- dynamic made_available_on_union_market/2.
:- dynamic makes_decisions_about_natural_persons/1.
:- dynamic makes_publicly_accessible_under_fos_license/1.
:- dynamic makes_risk_assessment/1.
:- dynamic makes_substantial_modification/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate_received/2.
:- dynamic manipulative_deceptive_techniques/1.
:- dynamic market_surveillance_authority/1.
:- dynamic materially_distorts_behavior/1.
:- dynamic measure/1.
:- dynamic measures_taken/1.
:- dynamic meets_conditions_art_51/1.
:- dynamic member_state_fails_to_take_corrective_measures/1.
:- dynamic microenterprise/1.
:- dynamic migration_ai_system/1.
:- dynamic migration_asylum_border_control_management/1.
:- dynamic military_or_defence_or_national_security_use/1.
:- dynamic misclassification_to_circumvent_requirements/2.
:- dynamic mitigatable/2.
:- dynamic mitigation_measure/1.
:- dynamic modifies_intended_purpose/2.
:- dynamic monitor_operation/2.
:- dynamic must_conduct_dpia/2.
:- dynamic must_keep_list_up_to_date/1.
:- dynamic must_publish_list/1.
:- dynamic national_accreditation_body/1.
:- dynamic national_competent_authority/1.
:- dynamic national_data_protection_authority/1.
:- dynamic national_measure/1.
:- dynamic natural_or_legal_person/1.
:- dynamic natural_person/1.
:- dynamic necessary_and_proportionate/1.
:- dynamic need_new_channel/1.
:- dynamic new_provider_of/2.
:- dynamic no_objection_within_15_days/2.
:- dynamic no_significant_risk_applies/1.
:- dynamic non_compliance/2.
:- dynamic non_compliance_not_restricted_to_national_territory/2.
:- dynamic non_compliance_with_prohibition_of_ai_practices/1.
:- dynamic non_compliance_with_requirements_other_than_art5/1.
:- dynamic non_conformant/1.
:- dynamic non_conformity_applies/1.
:- dynamic non_high_risk_classified_by_provider/1.
:- dynamic non_personal_data/1.
:- dynamic not_adequate_corrective_action_within_period/2.
:- dynamic not_high_risk_ai_system/1.
:- dynamic not_substantially_alter_input/1.
:- dynamic notification/1.
:- dynamic notified/1.
:- dynamic notified_body_assessment/1.
:- dynamic notified_body_compliance_assessed/1.
:- dynamic notified_by/2.
:- dynamic notifying_authority/1.
:- dynamic objection_raised/2.
:- dynamic objection_recorded/2.
:- dynamic objection_under_art_60_par_4_b/1.
:- dynamic obtained_information/1.
:- dynamic obtained_information/2.
:- dynamic obtained_under_art/2.
:- dynamic obtained_under_art_55/1.
:- dynamic obvious_interaction/1.
:- dynamic open_source/1.
:- dynamic open_source_model/2.
:- dynamic operator_fails_to_take_adequate_action/2.
:- dynamic operators_consulted/2.
:- dynamic opposition/2.
:- dynamic organisation/1.
:- dynamic other_authority_designated/1.
:- dynamic other_competent_authority/1.
:- dynamic other_involved_actor/1.
:- dynamic other_than_high_risk_ai_system/1.
:- dynamic other_union_law_applies/1.
:- dynamic output_used_in_union/1.
:- dynamic overridden_by_law/2.
:- dynamic oversight_by_qualified/1.
:- dynamic part_of/2.
:- dynamic part_of_financial_services_law/1.
:- dynamic participant_in_standardisation/1.
:- dynamic participation_in_standardisation/1.
:- dynamic participation_of_notified_body_in_group/3.
:- dynamic partner_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_profiling/1.
:- dynamic period_not_ended_yet/1.
:- dynamic permitted_designate_systemic_risk/2.
:- dynamic permitted_initial_identification/2.
:- dynamic permitted_present_arguments/2.
:- dynamic personal_data/1.
:- dynamic personal_non_professional_use/1.
:- dynamic placed_on_market_before/2.
:- dynamic places_into_service_with_product_name/2.
:- dynamic places_on_market_with_product_name/2.
:- dynamic placing_on_market/1.
:- dynamic post_market_monitoring/1.
:- dynamic post_market_monitoring_plan/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic potential_interest_for_competition_law/1.
:- dynamic pre_determined_change/1.
:- dynamic presents_risk/1.
:- dynamic prior_consultation/2.
:- dynamic priority_access_to_ai_regulatory_sandbox/1.
:- dynamic private_entity_providing_public_services/1.
:- dynamic procedure/1.
:- dynamic product/1.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic prohibited_practices_used/1.
:- dynamic proportionate_to_nature_and_risk/1.
:- dynamic prospective_deployer/1.
:- dynamic protection_not_decreased_applies/1.
:- dynamic provide_ai_system/2.
:- dynamic provided_by_union_law/1.
:- dynamic provided_digitally/1.
:- dynamic provided_to_deployer/1.
:- dynamic provider_acting_contrary/1.
:- dynamic provider_aware_of_risk/2.
:- dynamic provider_built_measures/1.
:- dynamic provider_identified_measures_for_deployer/1.
:- dynamic provider_not_applied_common_specification/2.
:- dynamic provider_not_fully_applied_harmonised_standard/2.
:- dynamic provider_of/2.
:- dynamic provider_of_ai/2.
:- dynamic provider_on_territory/2.
:- dynamic provider_uses_system/2.
:- dynamic provides/2.
:- dynamic provides_adequate_safeguards/1.
:- dynamic provides_high_risk_ai_system/2.
:- dynamic provides_model/2.
:- dynamic public_authority/1.
:- dynamic public_authority_actor/1.
:- dynamic public_authority_fundamental_rights/1.
:- dynamic public_authority_third_country/1.
:- dynamic public_law_body/1.
:- dynamic public_reporting/1.
:- dynamic publicly_accessible_space/1.
:- dynamic publicly_available_parameters/1.
:- dynamic published_in_official_journal/1.
:- dynamic puts_name_or_trademark_on/2.
:- dynamic putting_into_service/1.
:- dynamic qms_element/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonable_time/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/3.
:- dynamic reasoned_request_by/1.
:- dynamic recall_of_ai_system/1.
:- dynamic receipt_of_information/2.
:- dynamic receipt_of_notification/2.
:- dynamic reflective_data_training_and_testing_applies/1.
:- dynamic registered_in_eu_database/1.
:- dynamic registration_in_database/2.
:- dynamic registration_obligation/2.
:- dynamic related_by_state/2.
:- dynamic related_to_product_covered_by_legislation/1.
:- dynamic relevant_information/2.
:- dynamic relevant_national_public_authority/1.
:- dynamic relevant_operator/2.
:- dynamic remote/1.
:- dynamic remote_exercise_allowed/1.
:- dynamic representative/1.
:- dynamic representative_of_provider/2.
:- dynamic represents/2.
:- dynamic request_authorisation/3.
:- dynamic request_from_authority/1.
:- dynamic request_from_national_competent_authority/2.
:- dynamic request_information/1.
:- dynamic required_notification/2.
:- dynamic required_third_party_conformity_assessment/1.
:- dynamic requirement/1.
:- dynamic requirements_laid_down_in_art_31_applies/1.
:- dynamic requirements_set_out_in/2.
:- dynamic responsible_for_ai/2.
:- dynamic restricted_harmonised_standard_partially_applied/2.
:- dynamic retention_at_least/2.
:- dynamic retention_at_least_six_months/2.
:- dynamic retention_period_10_years/1.
:- dynamic risk/1.
:- dynamic risk_management_system/1.
:- dynamic risk_management_system_applies/1.
:- dynamic risk_of_harm_or_fundamental_rights_applies/1.
:- dynamic risk_of_system/1.
:- dynamic risk_present/1.
:- dynamic safety_component/1.
:- dynamic same_provider_for_model_and_system/1.
:- dynamic sandbox_plan/1.
:- dynamic scientific_panel/1.
:- dynamic scientific_panel_request/1.
:- dynamic secure_non_public_section/1.
:- dynamic selection_criteria_fulfilled/1.
:- dynamic sensitive_information_obtained/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_reported/1.
:- dynamic shortcomings_in_standards_applies/1.
:- dynamic significant_design_change/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic six_months_applies/1.
:- dynamic sixty_days_applies/1.
:- dynamic small_and_microenterprise/1.
:- dynamic smes/1.
:- dynamic social_scoring/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specific_high_risk_ai_system/1.
:- dynamic state_of_the_art_applies/1.
:- dynamic stop_use/2.
:- dynamic storage_transport_conditions/1.
:- dynamic strictly_necessary_objective/1.
:- dynamic subcontractor/1.
:- dynamic subject/1.
:- dynamic subsidiary/1.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason_to_consider_high_risk/2.
:- dynamic sufficient_reason_to_consider_non_compliant/2.
:- dynamic sufficient_reason_to_consider_risk/2.
:- dynamic supervised_in_ai_regulatory_sandbox/1.
:- dynamic suspend_use/2.
:- dynamic systemic_risk/1.
:- dynamic targeted_to_criminal_offence/1.
:- dynamic tasks_entrusted_to_ai_office/1.
:- dynamic tasks_listed_under/2.
:- dynamic technical_solution_meets_requirements/1.
:- dynamic ten_years_after_market_or_service/1.
:- dynamic testing_data/1.
:- dynamic testing_duration_allowed/2.
:- dynamic testing_exhausted_or_insufficient/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_plan_submitted/2.
:- dynamic testing_registered/2.
:- dynamic third_country_provider/1.
:- dynamic third_party/1.
:- dynamic third_party_supplier/1.
:- dynamic thirty_days_applies/1.
:- dynamic three_months_applies/1.
:- dynamic training_data/1.
:- dynamic under_control/2.
:- dynamic union_agreement_with_third_country_applies/1.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_entity/1.
:- dynamic union_resident/1.
:- dynamic unjustified_measure_applies/1.
:- dynamic urgency_situation/2.
:- dynamic usage_in_intended_purpose/1.
:- dynamic usage_under_foreseeable_misuse/1.
:- dynamic use/1.
:- dynamic use_information_art13/2.
:- dynamic used/1.
:- dynamic used_by_financial_institution/1.
:- dynamic uses_ai_system_in_cooperation/1.
:- dynamic uses_training_techniques/1.
:- dynamic using/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_jurisdiction/1.
:- dynamic workplace_or_education/1.
:- dynamic written_proof/1.

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
declared(objective_improve_internal_market/1, 'improve functioning of internal market', 'celex:32024R1689/oj#art_1').
declared(objective_promote_human_centric_trustworthy_ai/1, 'promote uptake of human‑centric and trustworthy AI', 'celex:32024R1689/oj#art_1').
declared(objective_ensure_protection_of_fundamental_rights/1, 'ensure high level protection of health, safety, fundamental rights', 'celex:32024R1689/oj#art_1').
declared(objective_support_innovation/1, 'support innovation, especially for SMEs and start‑ups', 'celex:32024R1689/oj#art_1').
objective_improve_internal_market('celex:32024R1689/oj#art_1') :-
    true.
provenance(objective_improve_internal_market/1, 'celex:32024R1689/oj#art_1').
objective_promote_human_centric_trustworthy_ai('celex:32024R1689/oj#art_1') :-
    true.
provenance(objective_promote_human_centric_trustworthy_ai/1, 'celex:32024R1689/oj#art_1').
objective_ensure_protection_of_fundamental_rights('celex:32024R1689/oj#art_1') :-
    true.
provenance(objective_ensure_protection_of_fundamental_rights/1, 'celex:32024R1689/oj#art_1').
objective_support_innovation('celex:32024R1689/oj#art_1') :-
    true.
provenance(objective_support_innovation/1, 'celex:32024R1689/oj#art_1').
declared(required_harmonised_rules_for_placing_on_market/1, 'harmonised rules for placing on the market', 'celex:32024R1689/oj#art_1').
required_harmonised_rules_for_placing_on_market(S) :-
    placing_on_market(S).
provenance(required_harmonised_rules_for_placing_on_market/1, 'celex:32024R1689/oj#art_1').
declared(required_harmonised_rules_for_putting_into_service/1, 'harmonised rules for putting into service', 'celex:32024R1689/oj#art_1').
required_harmonised_rules_for_putting_into_service(S) :-
    putting_into_service(S).
provenance(required_harmonised_rules_for_putting_into_service/1, 'celex:32024R1689/oj#art_1').
declared(required_harmonised_rules_for_use/1, 'harmonised rules for use', 'celex:32024R1689/oj#art_1').
required_harmonised_rules_for_use(S) :-
    ai_system(S).
provenance(required_harmonised_rules_for_use/1, 'celex:32024R1689/oj#art_1').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_1').
declared(required_specific_requirements_for_high_risk_ai_system/1, 'specific requirements for high‑risk AI systems', 'celex:32024R1689/oj#art_1').
required_specific_requirements_for_high_risk_ai_system(S) :-
    high_risk_ai_system(S).
provenance(required_specific_requirements_for_high_risk_ai_system/1, 'celex:32024R1689/oj#art_1').
declared(must_comply/2, 'obligation for operator to comply with requirements for high‑risk AI systems', 'celex:32024R1689/oj#art_1').
must_comply(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S).
provenance(must_comply/2, 'celex:32024R1689/oj#art_1').
declared(required_harmonised_transparency_rules/1, 'harmonised transparency rules for certain AI systems', 'celex:32024R1689/oj#art_1').
required_harmonised_transparency_rules(S) :-
    ai_system(S).
provenance(required_harmonised_transparency_rules/1, 'celex:32024R1689/oj#art_1').
declared(required_harmonised_rules_for_placing_general_purpose_ai_model/1, 'harmonised rules for placing on market of general‑purpose AI models', 'celex:32024R1689/oj#art_1').
required_harmonised_rules_for_placing_general_purpose_ai_model(M) :-
    general_purpose_ai_model(M).
provenance(required_harmonised_rules_for_placing_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_1').
declared(required_market_monitoring_rules/1, 'rules on market monitoring', 'celex:32024R1689/oj#art_1').
required_market_monitoring_rules(S) :-
    ai_system(S).
provenance(required_market_monitoring_rules/1, 'celex:32024R1689/oj#art_1').
declared(required_market_surveillance_rules/1, 'rules on market surveillance', 'celex:32024R1689/oj#art_1').
required_market_surveillance_rules(S) :-
    ai_system(S).
provenance(required_market_surveillance_rules/1, 'celex:32024R1689/oj#art_1').
declared(required_governance_rules/1, 'rules on governance', 'celex:32024R1689/oj#art_1').
required_governance_rules(S) :-
    ai_system(S).
provenance(required_governance_rules/1, 'celex:32024R1689/oj#art_1').
declared(required_enforcement_rules/1, 'rules on enforcement', 'celex:32024R1689/oj#art_1').
required_enforcement_rules(S) :-
    ai_system(S).
provenance(required_enforcement_rules/1, 'celex:32024R1689/oj#art_1').
declared(permitted_measures_to_support_innovation/1, 'measures to support innovation, especially for SMEs and start‑ups', 'celex:32024R1689/oj#art_1').
permitted_measures_to_support_innovation('celex:32024R1689/oj#art_1') :-
    true.
provenance(permitted_measures_to_support_innovation/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(subject_to_regulation/1, 'entity to which the regulation applies', 'celex:32024R1689/oj#art_2').
declared(exempt_from_regulation/1, 'entity excluded from the regulation', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'natural person affected by AI systems', 'celex:32024R1689/oj#art_2').
declared(union_resident/1, 'person located in the Union', 'celex:32024R1689/oj#art_2').
declared(output_used_in_union/1, 'output of an AI system used in the Union', 'celex:32024R1689/oj#art_2').
declared(military_or_defence_or_national_security_use/1, 'AI system used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(used/1, 'AI system used (with or without modification)', 'celex:32024R1689/oj#art_2').
declared(public_authority_third_country/1, 'public authority of a third country', 'celex:32024R1689/oj#art_2').
declared(international_organisation/1, 'international organisation falling within the scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(uses_ai_system_in_cooperation/1, 'entity uses AI systems in international cooperation with the Union', 'celex:32024R1689/oj#art_2').
declared(provides_adequate_safeguards/1, 'entity provides adequate safeguards for fundamental rights', 'celex:32024R1689/oj#art_2').
declared(developed_for_scientific_research/1, 'AI system or model developed for scientific research and development', 'celex:32024R1689/oj#art_2').
declared(open_source/1, 'AI system released under a free and open‑source licence', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_2').
declared(falls_under_art_5/1, 'AI system falls under Article 5', 'celex:32024R1689/oj#art_2').
declared(falls_under_art_50/1, 'AI system falls under Article 50', 'celex:32024R1689/oj#art_2').
declared(natural_person/1, 'natural person', 'celex:32024R1689/oj#art_2').
declared(personal_non_professional_use/1, 'use of an AI system in a purely personal non‑professional activity', 'celex:32024R1689/oj#art_2').
subject_to_regulation(P) :-
    provider(P),
    operator(P),
    (placing_on_market(S); putting_into_service(S)),
    ai_system(S).
subject_to_regulation(P) :-
    provider(P),
    operator(P),
    placing_on_market(M),
    general_purpose_ai_model(M).
subject_to_regulation(D) :-
    deployer(D),
    operator(D).
subject_to_regulation(P) :-
    provider(P),
    operator(P),
    ai_system(S),
    output_used_in_union(S).
subject_to_regulation(D) :-
    deployer(D),
    operator(D),
    ai_system(S),
    output_used_in_union(S).
subject_to_regulation(I) :-
    importer(I),
    operator(I).
subject_to_regulation(Dist) :-
    distributor(Dist),
    operator(Dist).
subject_to_regulation(PM) :-
    product_manufacturer(PM),
    operator(PM),
    (placing_on_market(S); putting_into_service(S)),
    ai_system(S).
subject_to_regulation(AR) :-
    authorised_representative(AR),
    operator(AR).
subject_to_regulation(AP) :-
    affected_person(AP),
    union_resident(AP).
exempt_from_regulation(S) :-
    ai_system(S),
    (placing_on_market(S); putting_into_service(S); used(S)),
    military_or_defence_or_national_security_use(S).
exempt_from_regulation(S) :-
    ai_system(S),
    \+ (placing_on_market(S); putting_into_service(S)),
    output_used_in_union(S),
    military_or_defence_or_national_security_use(S).
exempt_from_regulation(E) :-
    public_authority_third_country(E),
    uses_ai_system_in_cooperation(E),
    provides_adequate_safeguards(E).
exempt_from_regulation(E) :-
    international_organisation(E),
    uses_ai_system_in_cooperation(E),
    provides_adequate_safeguards(E).
exempt_from_regulation(S) :-
    ai_system(S),
    developed_for_scientific_research(S),
    putting_into_service(S).
exempt_from_regulation(M) :-
    general_purpose_ai_model(M),
    developed_for_scientific_research(M),
    putting_into_service(M).
exempt_from_regulation(D) :-
    deployer(D),
    natural_person(D),
    personal_non_professional_use(D).
exempt_from_regulation(S) :-
    ai_system(S),
    open_source(S),
    \+ (high_risk_ai_system(S), (placing_on_market(S); putting_into_service(S))),
    \+ falls_under_art_5(S),
    \+ falls_under_art_50(S).
provenance(subject_to_regulation/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_from_regulation/1, 'celex:32024R1689/oj#art_2').
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
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').

% ==== celex:32024R1689/oj#art_4 ====
declared(required_ai_literacy/1, 'ensure sufficient AI literacy of staff and persons dealing with AI systems', 'celex:32024R1689/oj#art_4').
required_ai_literacy(Actor) :-
    provider(Actor).
required_ai_literacy(Actor) :-
    deployer(Actor).
provenance(required_ai_literacy/1, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(use/1, 'use of an AI system', 'celex:32024R1689/oj#art_5').
declared(deploys_subliminal_techniques/1, 'deploys subliminal techniques beyond consciousness', 'celex:32024R1689/oj#art_5').
declared(manipulative_deceptive_techniques/1, 'uses manipulative or deceptive techniques', 'celex:32024R1689/oj#art_5').
declared(materially_distorts_behavior/1, 'materially distorts the behaviour of a person or group', 'celex:32024R1689/oj#art_5').
declared(causes_significant_harm/1, 'causes or is likely to cause significant harm', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerabilities/1, 'exploits vulnerabilities of a natural person or specific group', 'celex:32024R1689/oj#art_5').
declared(social_scoring/1, 'produces a social score based on behaviour or characteristics', 'celex:32024R1689/oj#art_5').
declared(detrimental_treatment/1, 'leads to detrimental or unfavourable treatment', 'celex:32024R1689/oj#art_5').
declared(makes_risk_assessment/1, 'makes risk assessments of natural persons', 'celex:32024R1689/oj#art_5').
declared(based_on_profiling/1, 'based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(permitted_human_assisted_assessment_ai_system/1, 'AI system used to support human assessment based on objective facts', 'celex:32024R1689/oj#art_5').
declared(creates_facial_database/1, 'creates or expands facial recognition databases via untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(infers_emotions/1, 'infers emotions of a natural person', 'celex:32024R1689/oj#art_5').
declared(workplace_or_education/1, 'used in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(permitted_medical_or_safety_reason_ai_system/1, 'AI system intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(biometric_categorisation_system/1, 'categorises persons based on biometric data', 'celex:32024R1689/oj#art_5').
declared(deduces_protected_attributes/1, 'deduces race, political opinions, trade union membership, religious beliefs, sex life or sexual orientation', 'celex:32024R1689/oj#art_5').
declared(permitted_law_enforcement_labeling_ai_system/1, 'lawful labelling or filtering of biometric datasets for law enforcement', 'celex:32024R1689/oj#art_5').
declared(law_enforcement_use/1, 'used for law enforcement purposes', 'celex:32024R1689/oj#art_5').
declared(strictly_necessary_objective/1, 'strictly necessary for one of the listed objectives', 'celex:32024R1689/oj#art_5').
declared(confirm_identity_of_targeted_individual/1, 'confirms identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(permitted_when_objectives_met/1, 'use permitted when objectives and safeguards are satisfied', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulative_ai_system(S) :-
    ai_system(S),
    deploys_subliminal_techniques(S),
    manipulative_deceptive_techniques(S),
    materially_distorts_behavior(S),
    causes_significant_harm(S),
    (placing_on_market(S); putting_into_service(S); use(S)).
prohibited_exploit_vulnerable_persons_ai_system(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    causes_significant_harm(S),
    (placing_on_market(S); putting_into_service(S); use(S)).
prohibited_social_scoring_ai_system(S) :-
    ai_system(S),
    social_scoring(S),
    detrimental_treatment(S),
    (placing_on_market(S); putting_into_service(S); use(S)).
prohibited_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    makes_risk_assessment(S),
    based_on_profiling(S),
    causes_significant_harm(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_human_assisted_assessment_ai_system(S).
prohibited_untargeted_facial_database_ai_system(S) :-
    ai_system(S),
    creates_facial_database(S),
    (placing_on_market(S); putting_into_service(S); use(S)).
prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    infers_emotions(S),
    workplace_or_education(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_medical_or_safety_reason_ai_system(S).
prohibited_biometric_categorisation_ai_system(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    deduces_protected_attributes(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_law_enforcement_labeling_ai_system(S).
prohibited_real_time_remote_biometric_identification_use(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    (placing_on_market(S); putting_into_service(S); use(S)),
    \+ permitted_when_objectives_met(S).
permitted_human_assisted_assessment_ai_system(S) :-
    ai_system(S),
    used_to_support_human_assessment(S).
permitted_medical_or_safety_reason_ai_system(S) :-
    ai_system(S),
    intended_for_medical_or_safety_reason(S).
permitted_law_enforcement_labeling_ai_system(S) :-
    ai_system(S),
    law_enforcement_labeling(S).
permitted_when_objectives_met(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_use(S),
    strictly_necessary_objective(S),
    confirm_identity_of_targeted_individual(S).
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploit_vulnerable_persons_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_use/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_human_assisted_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_medical_or_safety_reason_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_labeling_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_when_objectives_met/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_6').
declared(annex_3_ai_system/1, 'AI system listed in annex III', 'celex:32024R1689/oj#art_6').
declared(intended_as_safety_component/1, 'AI system intended to be used as a safety component of a product', 'celex:32024R1689/oj#art_6').
declared(product/1, 'AI system that is itself a product', 'celex:32024R1689/oj#art_6').
declared(required_third_party_conformity_assessment/1, 'AI system for which a third‑party conformity assessment is required', 'celex:32024R1689/oj#art_6').
declared(low_risk_conditions/1, 'One of the conditions that allow derogation from high‑risk classification', 'celex:32024R1689/oj#art_6').
declared(intended_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(intended_improve_human_activity/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(intended_detect_decision_patterns_without_replacement/1, 'AI system intended to detect decision‑making patterns without replacing or influencing prior human assessment', 'celex:32024R1689/oj#art_6').
declared(intended_preparatory_task_for_assessment/1, 'AI system intended to perform a preparatory task for an assessment relevant to annex III use cases', 'celex:32024R1689/oj#art_6').
declared(performs_profiling/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(must_document_assessment/2, 'Provider must document its assessment of a non‑high‑risk AI system', 'celex:32024R1689/oj#art_6').
declared(required_registration_obligation/1, 'Provider is subject to the registration obligation', 'celex:32024R1689/oj#art_6').
declared(must_provide_assessment_documentation/2, 'Provider must provide the assessment documentation on request of national competent authorities', 'celex:32024R1689/oj#art_6').
declared(before_market_or_service/1, 'AI system has not yet been placed on the market nor put into service', 'celex:32024R1689/oj#art_6').
declared(request_from_national_competent_authority/2, 'National competent authority requests documentation from provider', 'celex:32024R1689/oj#art_6').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_6').
declared(date_deadline/1, 'Deadline date for a Commission action', 'celex:32024R1689/oj#art_6').
declared(delegated_act_authorised_by/1, 'Delegated act authorised by a specific article', 'celex:32024R1689/oj#art_6').
declared(required_provide_guidelines/1, 'Commission must provide guidelines for the implementation of Article 6', 'celex:32024R1689/oj#art_6').
declared(required_adopt_delegated_act/2, 'Commission must adopt a delegated act for a specified purpose', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    (intended_as_safety_component(S) ; product(S)),
    required_third_party_conformity_assessment(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    (performs_profiling(S) ; \+ low_risk_conditions(S)).
low_risk_conditions(S) :-
    intended_narrow_procedural_task(S).
low_risk_conditions(S) :-
    intended_improve_human_activity(S).
low_risk_conditions(S) :-
    intended_detect_decision_patterns_without_replacement(S).
low_risk_conditions(S) :-
    intended_preparatory_task_for_assessment(S).
must_document_assessment(P, S) :-
    provider(P),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S),
    before_market_or_service(S).
required_registration_obligation(P) :-
    provider(P),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S).
must_provide_assessment_documentation(P, S) :-
    provider(P),
    annex_3_ai_system(S),
    request_from_national_competent_authority(P, S).
required_provide_guidelines(C) :-
    commission(C),
    date_deadline('2026-02-02').
required_adopt_delegated_act(C, amend_conditions) :-
    commission(C),
    delegated_act_authorised_by('art_97').
required_adopt_delegated_act(C, delete_conditions) :-
    commission(C),
    delegated_act_authorised_by('art_97').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(annex_3_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(intended_as_safety_component/1, 'celex:32024R1689/oj#art_6').
provenance(product/1, 'celex:32024R1689/oj#art_6').
provenance(required_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(low_risk_conditions/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_patterns_without_replacement/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(required_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(before_market_or_service/1, 'celex:32024R1689/oj#art_6').
provenance(request_from_national_competent_authority/2, 'celex:32024R1689/oj#art_6').
provenance(commission/1, 'celex:32024R1689/oj#art_6').
provenance(date_deadline/1, 'celex:32024R1689/oj#art_6').
provenance(delegated_act_authorised_by/1, 'celex:32024R1689/oj#art_6').
provenance(required_provide_guidelines/1, 'celex:32024R1689/oj#art_6').
provenance(required_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_7 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_7').
declared(permitted_adopt_delegated_act/2, 'Commission may adopt delegated act', 'celex:32024R1689/oj#art_7').
declared(intended_use_in_annex_area_applies/1, 'AI system intended for area listed in annex 3', 'celex:32024R1689/oj#art_7').
declared(risk_of_harm_or_fundamental_rights_applies/1, 'AI system poses risk of harm to health/safety or fundamental rights equivalent or greater than existing high‑risk AI systems', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk_applies/1, 'AI system no longer poses significant risks to fundamental rights, health or safety', 'celex:32024R1689/oj#art_7').
declared(protection_not_decreased_applies/1, 'Deletion does not decrease overall level of protection of health, safety and fundamental rights', 'celex:32024R1689/oj#art_7').
declared(criterion/1, 'assessment criterion for risk condition', 'celex:32024R1689/oj#art_7').
declared(required_take_into_account/2, 'Commission shall take into account criterion', 'celex:32024R1689/oj#art_7').
commission(commission).
criterion(intended_purpose).
criterion(extent_of_use).
criterion(data_processed_nature_amount).
criterion(autonomy_and_human_override).
criterion(past_harm_or_concerns).
criterion(potential_extent_of_harm).
criterion(dependence_of_affected_persons).
criterion(imbalance_of_power_vulnerability).
criterion(corrigibility_of_outcome).
criterion(magnitude_and_likelihood_of_benefit).
criterion(existing_union_law_measures).
required_take_into_account(C, Cr) :-
    commission(C),
    criterion(Cr).
permitted_adopt_delegated_act(C, add_modify_use_case) :-
    commission(C),
    intended_use_in_annex_area_applies(S),
    risk_of_harm_or_fundamental_rights_applies(S).
permitted_adopt_delegated_act(C, remove_high_risk_ai_system) :-
    commission(C),
    no_significant_risk_applies(S),
    protection_not_decreased_applies.
provenance(commission/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_7').
provenance(intended_use_in_annex_area_applies/1, 'celex:32024R1689/oj#art_7').
provenance(risk_of_harm_or_fundamental_rights_applies/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk_applies/1, 'celex:32024R1689/oj#art_7').
provenance(protection_not_decreased_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion/1, 'celex:32024R1689/oj#art_7').
provenance(required_take_into_account/2, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_8').
declared(intended_purpose_applies/1, 'consideration of the intended purpose of the AI system', 'celex:32024R1689/oj#art_8').
declared(state_of_the_art_applies/1, 'consideration of the generally acknowledged state of the art on AI', 'celex:32024R1689/oj#art_8').
declared(risk_management_system_applies/1, 'consideration of the risk management system referred to in art 9', 'celex:32024R1689/oj#art_8').
declared(required_compliance/1, 'high‑risk AI system must comply with the requirements laid down', 'celex:32024R1689/oj#art_8').
declared(must_ensure_compliance/2, 'provider must ensure that the AI system is fully compliant', 'celex:32024R1689/oj#art_8').
declared(permitted_integration_of_testing_and_reporting/2, 'provider may integrate testing and reporting processes into existing documentation required by Union harmonisation legislation', 'celex:32024R1689/oj#art_8').
required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose_applies(S),
    state_of_the_art_applies(S),
    risk_management_system_applies(S).
must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
permitted_integration_of_testing_and_reporting(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(intended_purpose_applies/1, 'celex:32024R1689/oj#art_8').
provenance(state_of_the_art_applies/1, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_applies/1, 'celex:32024R1689/oj#art_8').
provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(risk_management_system/1, 'risk management system for a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/2, 'provider must establish, implement, document and maintain a risk management system for a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(step/1, 'step of the risk management process', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_step/2, 'provider must include a specific step in the risk management system for a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(mitigatable/2, 'risk that can be reasonably mitigated or eliminated through design or technical information', 'celex:32024R1689/oj#art_9').
declared(required_consideration_of_risk/2, 'risk management system must consider only mitigatable risks', 'celex:32024R1689/oj#art_9').
declared(required_residual_risk_acceptable/1, 'risk management measures must result in acceptable residual risk', 'celex:32024R1689/oj#art_9').
declared(required_testing_for_risk_management_measures/2, 'provider must test high-risk AI system to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(permitted_testing_in_real_world_conditions/1, 'testing procedures may include testing in real‑world conditions', 'celex:32024R1689/oj#art_9').
declared(required_testing_before_market/2, 'testing must be performed before placement on the market or putting into service', 'celex:32024R1689/oj#art_9').
declared(required_consideration_of_vulnerable_groups/2, 'provider must consider impact on persons under 18 and other vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(internal_risk_management_processes/1, 'provider has internal risk management processes under other Union law', 'celex:32024R1689/oj#art_9').
declared(permitted_combination_with_other_risk_management/2, 'risk management aspects may be combined with other internal risk management processes', 'celex:32024R1689/oj#art_9').
step(identification_and_analysis_of_known_and_foreseeable_risks).
step(estimation_and_evaluation_of_risks).
step(evaluation_of_other_risks_from_post_market_monitoring).
step(adoption_of_appropriate_and_targeted_measures).
required_risk_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_management_system(_).
provenance(required_risk_management_system/2, 'celex:32024R1689/oj#art_9').
required_risk_management_step(System, identification_and_analysis_of_known_and_foreseeable_risks) :-
    high_risk_ai_system(System),
    risk_management_system(_).
provenance(required_risk_management_step/2, 'celex:32024R1689/oj#art_9').
required_risk_management_step(System, estimation_and_evaluation_of_risks) :-
    high_risk_ai_system(System),
    risk_management_system(_).
required_risk_management_step(System, evaluation_of_other_risks_from_post_market_monitoring) :-
    high_risk_ai_system(System),
    risk_management_system(_).
required_risk_management_step(System, adoption_of_appropriate_and_targeted_measures) :-
    high_risk_ai_system(System),
    risk_management_system(_).
required_consideration_of_risk(Risk, System) :-
    risk(Risk),
    high_risk_ai_system(System),
    mitigatable(Risk, System).
provenance(required_consideration_of_risk/2, 'celex:32024R1689/oj#art_9').
required_residual_risk_acceptable(System) :-
    high_risk_ai_system(System),
    risk_management_system(_).
provenance(required_residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
required_testing_for_risk_management_measures(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_testing_for_risk_management_measures/2, 'celex:32024R1689/oj#art_9').
permitted_testing_in_real_world_conditions(System) :-
    high_risk_ai_system(System).
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
required_testing_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ (placing_on_market(System) ; putting_into_service(System)).
provenance(required_testing_before_market/2, 'celex:32024R1689/oj#art_9').
required_consideration_of_vulnerable_groups(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
permitted_combination_with_other_risk_management(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    internal_risk_management_processes(Provider).
provenance(permitted_combination_with_other_risk_management/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').

% ==== celex:32024R1689/oj#art_10 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_10').
declared(uses_training_techniques/1, 'AI system that uses techniques involving training of AI models', 'celex:32024R1689/oj#art_10').
declared(data_set_used_in_system/2, 'data set employed in the development of an AI system', 'celex:32024R1689/oj#art_10').
declared(required_quality_criteria_for_data_set/1, 'data set meets the quality criteria referred to in the regulation', 'celex:32024R1689/oj#art_10').
declared(required_data_governance_practice/2, 'data governance and management practice applied to a data set', 'celex:32024R1689/oj#art_10').
declared(required_data_quality_attribute/2, 'quality attribute that a data set must possess', 'celex:32024R1689/oj#art_10').
declared(required_data_characteristic_consideration/2, 'consideration of specific characteristics of the setting for a data set', 'celex:32024R1689/oj#art_10').
declared(permitted_exceptional_processing_special_categories/2, 'provider may process special categories of personal data under strict conditions', 'celex:32024R1689/oj#art_10').
declared(bias_detection_and_correction_needed/1, 'processing is strictly necessary for bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(required_condition_a/2, 'condition a for exceptional processing', 'celex:32024R1689/oj#art_10').
declared(required_condition_b/2, 'condition b for exceptional processing', 'celex:32024R1689/oj#art_10').
declared(required_condition_c/2, 'condition c for exceptional processing', 'celex:32024R1689/oj#art_10').
declared(required_condition_d/2, 'condition d for exceptional processing', 'celex:32024R1689/oj#art_10').
declared(required_condition_e/2, 'condition e for exceptional processing', 'celex:32024R1689/oj#art_10').
declared(required_condition_f/2, 'condition f for exceptional processing', 'celex:32024R1689/oj#art_10').
data_set_used_in_system(DataSet, System) :-
    high_risk_ai_system(System),
    (training_data_set(DataSet) ; validation_data_set(DataSet) ; testing_data_set(DataSet)).
required_quality_criteria_for_data_set(DataSet) :-
    high_risk_ai_system(System),
    uses_training_techniques(System),
    (training_data_set(DataSet) ; validation_data_set(DataSet) ; testing_data_set(DataSet)),
    data_set_used_in_system(DataSet, System).
required_quality_criteria_for_data_set(DataSet) :-
    high_risk_ai_system(System),
    \+ uses_training_techniques(System),
    testing_data_set(DataSet),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, design_choices) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, data_collection_origin) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, data_preparation_operations) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, assumption_formulation) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, availability_assessment) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, bias_examination) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, bias_detection_prevention_mitigation) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_governance_practice(DataSet, data_gap_identification) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_quality_attribute(DataSet, relevant) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_quality_attribute(DataSet, sufficiently_representative) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_quality_attribute(DataSet, error_free) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_quality_attribute(DataSet, complete) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_quality_attribute(DataSet, appropriate_statistical_properties) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
required_data_characteristic_consideration(DataSet, specific_setting) :-
    high_risk_ai_system(System),
    data_set_used_in_system(DataSet, System).
permitted_exceptional_processing_special_categories(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data),
    bias_detection_and_correction_needed(Provider),
    required_condition_a(Provider, Data),
    required_condition_b(Provider, Data),
    required_condition_c(Provider, Data),
    required_condition_d(Provider, Data),
    required_condition_e(Provider, Data),
    required_condition_f(Provider, Data).
bias_detection_and_correction_needed(Provider) :-
    provider(Provider).
required_condition_a(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).
required_condition_b(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).
required_condition_c(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).
required_condition_d(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).
required_condition_e(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).
required_condition_f(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_used_in_system/2, 'celex:32024R1689/oj#art_10').
provenance(required_quality_criteria_for_data_set/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_practice/2, 'celex:32024R1689/oj#art_10').
provenance(required_data_quality_attribute/2, 'celex:32024R1689/oj#art_10').
provenance(required_data_characteristic_consideration/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_exceptional_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_and_correction_needed/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_a/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_b/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_c/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_d/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_e/2, 'celex:32024R1689/oj#art_10').
provenance(required_condition_f/2, 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#art_11 ====
declared(technical_documentation/1, 'technical documentation of an AI system', 'celex:32024R1689/oj#art_11').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_11').
declared(must_draw_up_technical_documentation/2, 'obligation to draw up technical documentation', 'celex:32024R1689/oj#art_11').
declared(must_keep_technical_documentation_up_to_date/2, 'obligation to keep technical documentation up to date', 'celex:32024R1689/oj#art_11').
declared(required_technical_documentation_contains_minimum_elements/1, 'technical documentation must contain the minimum elements', 'celex:32024R1689/oj#art_11').
declared(small_and_microenterprise/1, 'small or micro enterprise', 'celex:32024R1689/oj#art_11').
declared(simplified_technical_documentation_form/1, 'simplified form for technical documentation', 'celex:32024R1689/oj#art_11').
declared(permitted_simplified_technical_documentation/2, 'permission for SME to use simplified technical documentation', 'celex:32024R1689/oj#art_11').
declared(must_use_simplified_form/2, 'obligation to use the simplified form when SME opts for it', 'celex:32024R1689/oj#art_11').
declared(must_accept_form/2, 'obligation of notified body to accept the simplified form', 'celex:32024R1689/oj#art_11').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_11').
declared(permitted_adopt_delegated_act/1, 'permission for Commission to adopt delegated acts', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).
must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).
required_technical_documentation_contains_minimum_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).
permitted_simplified_technical_documentation(SME, S) :-
    provider(SME),
    small_and_microenterprise(SME),
    high_risk_ai_system(S),
    technical_documentation(S).
must_use_simplified_form(SME, S) :-
    provider(SME),
    small_and_microenterprise(SME),
    high_risk_ai_system(S),
    technical_documentation(S).
must_accept_form(NotifiedBody, Form) :-
    notified_body(NotifiedBody),
    simplified_technical_documentation_form(Form).
commission(eu_commission).
permitted_adopt_delegated_act(Commission) :-
    commission(Commission).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept_form/2, 'celex:32024R1689/oj#art_11').
provenance(commission/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_adopt_delegated_act/1, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'art_12').
declared(automatic_recording_of_events/1, 'system automatically records events (logs) over its lifetime', 'art_12').
declared(logging_capability_enables_identify_risk_situations/1, 'logging enables identification of situations that may lead to a risk or a substantial modification', 'art_12').
declared(logging_capability_enables_facilitate_post_market_monitoring/1, 'logging facilitates post‑market monitoring', 'art_12').
declared(logging_capability_enables_monitor_operation/1, 'logging enables monitoring of the operation of high‑risk AI systems', 'art_12').
declared(annex_3_ai_system/1, 'high‑risk AI system referred to in annex III point 1(a)', 'art_12').
declared(logging_detail_period_of_use/1, 'records start and end date‑time of each use', 'art_12').
declared(logging_detail_reference_database/1, 'records the reference database against which input data was checked', 'art_12').
declared(logging_detail_input_data_match/1, 'records the input data that led to a match', 'art_12').
declared(logging_detail_identify_natural_persons_in_verification/1, 'records the natural persons involved in verification of results', 'art_12').
required_logging_capability(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S),
    logging_capability_enables_identify_risk_situations(S),
    logging_capability_enables_facilitate_post_market_monitoring(S),
    logging_capability_enables_monitor_operation(S).
required_minimum_logging_details(S) :-
    annex_3_ai_system(S),
    logging_detail_period_of_use(S),
    logging_detail_reference_database(S),
    logging_detail_input_data_match(S),
    logging_detail_identify_natural_persons_in_verification(S).
provenance(required_logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(required_minimum_logging_details/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(required_transparency/1, 'obligation to ensure transparency of operation', 'celex:32024R1689/oj#art_13').
declared(required_instructions_for_use/1, 'obligation to provide appropriate digital instructions for use', 'celex:32024R1689/oj#art_13').
declared(required_information/2, 'specific information that must be included in the instructions for use', 'celex:32024R1689/oj#art_13').
required_transparency(S) :-
    high_risk(S).
provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').
required_instructions_for_use(S) :-
    high_risk(S).
provenance(required_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
required_information(S, provider_identity_and_contact) :-
    high_risk(S).
required_information(S, intended_purpose) :-
    high_risk(S).
required_information(S, accuracy_and_cybersecurity) :-
    high_risk(S).
required_information(S, risk_circumstances) :-
    high_risk(S).
required_information(S, technical_capabilities_for_explanation) :-
    high_risk(S).
required_information(S, performance_for_specific_persons) :-
    high_risk(S).
required_information(S, data_specifications) :-
    high_risk(S).
required_information(S, interpretation_information) :-
    high_risk(S).
required_information(S, changes_and_performance) :-
    high_risk(S).
required_information(S, human_oversight_measures) :-
    high_risk(S).
required_information(S, resources_and_maintenance) :-
    high_risk(S).
required_information(S, log_mechanisms) :-
    high_risk(S).
provenance(required_information/2, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(high_risk/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_14').
declared(required_design_for_human_oversight/1, 'design and development enabling effective human oversight', 'celex:32024R1689/oj#art_14').
declared(objective_prevent_or_minimise_risk/1, 'human oversight aims to prevent or minimise health, safety or fundamental rights risks', 'celex:32024R1689/oj#art_14').
declared(usage_in_intended_purpose/1, 'AI system used in accordance with its intended purpose', 'celex:32024R1689/oj#art_14').
declared(usage_under_foreseeable_misuse/1, 'AI system used under reasonably foreseeable misuse', 'celex:32024R1689/oj#art_14').
declared(required_oversight_measures/1, 'oversight measures commensurate with risk, autonomy and context', 'celex:32024R1689/oj#art_14').
declared(commensurate_with_risk_autonomy_context/1, 'measures proportionate to risk, level of autonomy and context of use', 'celex:32024R1689/oj#art_14').
declared(provider_built_measures/1, 'measures built into the system by the provider before market placement', 'celex:32024R1689/oj#art_14').
declared(provider_identified_measures_for_deployer/1, 'measures identified by the provider for implementation by the deployer', 'celex:32024R1689/oj#art_14').
declared(required_provision_for_deployer/1, 'system provided to deployer so that natural persons can exercise oversight', 'celex:32024R1689/oj#art_14').
declared(enabled_understanding/1, 'natural persons can understand capacities and limitations', 'celex:32024R1689/oj#art_14').
declared(enabled_automation_bias_awareness/1, 'natural persons are aware of automation bias', 'celex:32024R1689/oj#art_14').
declared(enabled_interpret_output/1, 'natural persons can correctly interpret system output', 'celex:32024R1689/oj#art_14').
declared(enabled_decision_not_use/1, 'natural persons can decide not to use or override the system', 'celex:32024R1689/oj#art_14').
declared(enabled_intervention/1, 'natural persons can intervene or stop the system safely', 'celex:32024R1689/oj#art_14').
declared(required_two_person_verification/1, 'identifications must be verified by at least two competent natural persons', 'celex:32024R1689/oj#art_14').
declared(exception_two_person_verification/1, 'exception for law‑enforcement, migration, border control or asylum uses', 'celex:32024R1689/oj#art_14').
declared(law_enforcement_use/1, 'AI system used for law‑enforcement, migration, border control or asylum', 'celex:32024R1689/oj#art_14').
declared(annex_3_point_1_a/1, 'AI systems referred to in annex III point 1 a', 'celex:32024R1689/oj#art_14').
declared(provided_to_deployer/1, 'system is provided to the deployer', 'celex:32024R1689/oj#art_14').
required_design_for_human_oversight(S) :-
    high_risk(S),
    effective_oversight_possible(S).
objective_prevent_or_minimise_risk(S) :-
    high_risk(S),
    (   usage_in_intended_purpose(S)
    ;   usage_under_foreseeable_misuse(S)
    ).
required_oversight_measures(S) :-
    high_risk(S),
    commensurate_with_risk_autonomy_context(S),
    (   provider_built_measures(S)
    ;   provider_identified_measures_for_deployer(S)
    ).
required_provision_for_deployer(S) :-
    high_risk(S),
    provided_to_deployer(S),
    enabled_understanding(S),
    enabled_automation_bias_awareness(S),
    enabled_interpret_output(S),
    enabled_decision_not_use(S),
    enabled_intervention(S).
required_two_person_verification(S) :-
    high_risk(S),
    annex_3_point_1_a(S),
    \+ exception_two_person_verification(S).
exception_two_person_verification(S) :-
    law_enforcement_use(S).
provenance(high_risk/1, 'celex:32024R1689/oj#art_14').
provenance(required_design_for_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(objective_prevent_or_minimise_risk/1, 'celex:32024R1689/oj#art_14').
provenance(usage_in_intended_purpose/1, 'celex:32024R1689/oj#art_14').
provenance(usage_under_foreseeable_misuse/1, 'celex:32024R1689/oj#art_14').
provenance(required_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(commensurate_with_risk_autonomy_context/1, 'celex:32024R1689/oj#art_14').
provenance(provider_built_measures/1, 'celex:32024R1689/oj#art_14').
provenance(provider_identified_measures_for_deployer/1, 'celex:32024R1689/oj#art_14').
provenance(required_provision_for_deployer/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_understanding/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_automation_bias_awareness/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_decision_not_use/1, 'celex:32024R1689/oj#art_14').
provenance(enabled_intervention/1, 'celex:32024R1689/oj#art_14').
provenance(required_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(exception_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(law_enforcement_use/1, 'celex:32024R1689/oj#art_14').
provenance(annex_3_point_1_a/1, 'celex:32024R1689/oj#art_14').
provenance(provided_to_deployer/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_15').
declared(required_design_and_development/1, 'design and development must achieve required accuracy, robustness and cybersecurity', 'celex:32024R1689/oj#art_15').
declared(required_accuracy/1, 'appropriate level of accuracy must be achieved', 'celex:32024R1689/oj#art_15').
declared(required_robustness/1, 'appropriate level of robustness must be achieved', 'celex:32024R1689/oj#art_15').
declared(required_cybersecurity/1, 'appropriate level of cybersecurity must be achieved', 'celex:32024R1689/oj#art_15').
declared(required_consistent_performance/1, 'performance must be consistent throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(required_declaration_of_accuracy_metrics/1, 'accuracy metrics must be declared in instructions for use', 'celex:32024R1689/oj#art_15').
declared(declares_accuracy_metrics/2, 'instructions of use declare accuracy metrics for AI system', 'celex:32024R1689/oj#art_15').
declared(required_resilience_measures/1, 'technical and organisational measures for resilience must be taken', 'celex:32024R1689/oj#art_15').
declared(technical_and_organisational_measures_taken/1, 'technical and organisational resilience measures are taken', 'celex:32024R1689/oj#art_15').
declared(required_redundancy_solution/1, 'technical redundancy solutions may be used', 'celex:32024R1689/oj#art_15').
declared(redundancy_solution/1, 'redundancy solution such as backup or fail‑safe plan is implemented', 'celex:32024R1689/oj#art_15').
declared(required_feedback_loop_mitigation/1, 'feedback‑loop risk must be eliminated or reduced and mitigated', 'celex:32024R1689/oj#art_15').
declared(learns_after_market_placement/1, 'AI system continues to learn after market placement or putting into service', 'celex:32024R1689/oj#art_15').
declared(mitigation_measures_for_feedback_loops/1, 'mitigation measures for feedback loops are applied', 'celex:32024R1689/oj#art_15').
declared(required_cybersecurity_measures/1, 'cybersecurity measures must be appropriate to circumstances and risks', 'celex:32024R1689/oj#art_15').
declared(appropriate_cybersecurity_measures/1, 'cybersecurity measures are appropriate to the relevant circumstances and risks', 'celex:32024R1689/oj#art_15').
declared(required_protection_against_unauthorised_alteration/1, 'system must be resilient against unauthorised alteration attempts', 'celex:32024R1689/oj#art_15').
declared(protection_against_unauthorised_alteration/1, 'protection against unauthorised third‑party alteration is in place', 'celex:32024R1689/oj#art_15').
declared(required_mitigation_of_ai_vulnerabilities/1, 'measures to prevent, detect, respond to, resolve and control AI‑specific attacks must be taken', 'celex:32024R1689/oj#art_15').
declared(ai_vulnerability_measures/1, 'measures against data poisoning, model poisoning, adversarial examples, confidentiality attacks and model flaws are implemented', 'celex:32024R1689/oj#art_15').
required_design_and_development(S) :-
    high_risk_ai_system(S),
    required_accuracy(S),
    required_robustness(S),
    required_cybersecurity(S),
    required_consistent_performance(S).
required_accuracy(S) :-
    high_risk_ai_system(S).
required_robustness(S) :-
    high_risk_ai_system(S).
required_cybersecurity(S) :-
    high_risk_ai_system(S).
required_consistent_performance(S) :-
    high_risk_ai_system(S).
required_declaration_of_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    declares_accuracy_metrics(I, S).
declares_accuracy_metrics(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S).
required_resilience_measures(S) :-
    high_risk_ai_system(S),
    technical_and_organisational_measures_taken(S).
technical_and_organisational_measures_taken(S) :-
    high_risk_ai_system(S).
required_redundancy_solution(S) :-
    high_risk_ai_system(S),
    redundancy_solution(S).
redundancy_solution(S) :-
    high_risk_ai_system(S).
required_feedback_loop_mitigation(S) :-
    high_risk_ai_system(S),
    learns_after_market_placement(S),
    mitigation_measures_for_feedback_loops(S).
learns_after_market_placement(S) :-
    high_risk_ai_system(S).
mitigation_measures_for_feedback_loops(S) :-
    high_risk_ai_system(S).
required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_measures(S).
appropriate_cybersecurity_measures(S) :-
    high_risk_ai_system(S).
required_protection_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    protection_against_unauthorised_alteration(S).
protection_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).
required_mitigation_of_ai_vulnerabilities(S) :-
    high_risk_ai_system(S),
    ai_vulnerability_measures(S).
ai_vulnerability_measures(S) :-
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_15').
provenance(required_design_and_development/1, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(required_consistent_performance/1, 'celex:32024R1689/oj#art_15').
provenance(required_declaration_of_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
provenance(declares_accuracy_metrics/2, 'celex:32024R1689/oj#art_15').
provenance(required_resilience_measures/1, 'celex:32024R1689/oj#art_15').
provenance(technical_and_organisational_measures_taken/1, 'celex:32024R1689/oj#art_15').
provenance(required_redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(required_feedback_loop_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(learns_after_market_placement/1, 'celex:32024R1689/oj#art_15').
provenance(mitigation_measures_for_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(required_protection_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(protection_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(required_mitigation_of_ai_vulnerabilities/1, 'celex:32024R1689/oj#art_15').
provenance(ai_vulnerability_measures/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_16').
declared(required_compliance/2, 'obligation to ensure compliance with the requirements', 'celex:32024R1689/oj#art_16').
declared(required_labeling/2, 'obligation to indicate name, trade name or trade mark and contact address', 'celex:32024R1689/oj#art_16').
declared(required_quality_management_system/1, 'obligation to have a quality management system in place', 'celex:32024R1689/oj#art_16').
declared(required_keep_documentation/1, 'obligation to keep the documentation referred to in the regulation', 'celex:32024R1689/oj#art_16').
declared(required_keep_logs/2, 'obligation to keep automatically generated logs', 'celex:32024R1689/oj#art_16').
declared(required_conformity_assessment/2, 'obligation to ensure the system undergoes the relevant conformity assessment procedure', 'celex:32024R1689/oj#art_16').
declared(required_declaration_of_conformity/2, 'obligation to draw up an EU declaration of conformity', 'celex:32024R1689/oj#art_16').
declared(required_affix_ce_marking/2, 'obligation to affix the CE marking', 'celex:32024R1689/oj#art_16').
declared(required_registration_obligations/1, 'obligation to comply with registration obligations', 'celex:32024R1689/oj#art_16').
declared(required_corrective_actions/1, 'obligation to take necessary corrective actions and provide information', 'celex:32024R1689/oj#art_16').
declared(required_demonstrate_conformity/2, 'obligation to demonstrate conformity upon request of a national competent authority', 'celex:32024R1689/oj#art_16').
declared(required_accessibility_compliance/2, 'obligation to ensure compliance with accessibility requirements', 'celex:32024R1689/oj#art_16').
required_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_labeling(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_quality_management_system(P) :-
    provider(P).
required_keep_documentation(P) :-
    provider(P).
required_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_registration_obligations(P) :-
    provider(P).
required_corrective_actions(P) :-
    provider(P).
required_demonstrate_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_accessibility_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_16').
provenance(required_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(required_labeling/2, 'celex:32024R1689/oj#art_16').
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_16').
provenance(required_keep_documentation/1, 'celex:32024R1689/oj#art_16').
provenance(required_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(required_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(required_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(required_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(required_registration_obligations/1, 'celex:32024R1689/oj#art_16').
provenance(required_corrective_actions/1, 'celex:32024R1689/oj#art_16').
provenance(required_demonstrate_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(required_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').
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
declared(quality_management_system/1, 'quality management system', 'celex:32024R1689/oj#art_17').
declared(required_quality_management_system/2, 'obligation for provider to have quality management system', 'celex:32024R1689/oj#art_17').
declared(required_quality_management_aspect/2, 'aspect that must be included in quality management system', 'celex:32024R1689/oj#art_17').
declared(proportionate_to_size_applies/1, 'implementation proportionate to size of provider', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_17').
declared(exempt_quality_management_system/1, 'exemption from quality management system requirement', 'celex:32024R1689/oj#art_17').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_17').
quality_management_system(_).
high_risk_ai_system(_).
proportionate_to_size_applies(P) :-
    provider(P).
exempt_quality_management_system(P) :-
    financial_institution(P).
required_quality_management_system(P, QMS) :-
    provider(P),
    high_risk_ai_system(_),
    \+ exempt_quality_management_system(P),
    quality_management_system(QMS),
    proportionate_to_size_applies(P).
required_quality_management_aspect(QMS, strategy_for_regulatory_compliance) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, design_control_and_verification) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, development_quality_control_and_assurance) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, examination_test_validation) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, technical_specifications) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, data_management_systems) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, risk_management_system) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, post_market_monitoring_system) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, serious_incident_reporting) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, communication_handling) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, record_keeping) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, resource_management) :-
    quality_management_system(QMS).
required_quality_management_aspect(QMS, accountability_framework) :-
    quality_management_system(QMS).
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(proportionate_to_size_applies/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_17').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_18').
declared(ten_years_after_market_or_service/1, 'period ending ten years after the AI system has been placed on the market or put into service', 'celex:32024R1689/oj#art_18').
declared(doc_type/1, 'type of documentation referred to in Article 18', 'celex:32024R1689/oj#art_18').
declared(required_keep_documentation/3, 'provider must keep documentation at the disposal of the national competent authorities', 'celex:32024R1689/oj#art_18').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_18').
declared(bankrupt/1, 'entity has become bankrupt', 'celex:32024R1689/oj#art_18').
declared(ceases_activity/1, 'entity has ceased its activity', 'celex:32024R1689/oj#art_18').
declared(provider_on_territory/2, 'provider established on the territory of a Member State', 'celex:32024R1689/oj#art_18').
declared(authorised_representative_on_territory/2, 'authorised representative established on the territory of a Member State', 'celex:32024R1689/oj#art_18').
declared(period_not_ended_yet/1, 'the ten‑year period has not yet ended', 'celex:32024R1689/oj#art_18').
declared(financial_institution/1, 'provider is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_18').
declared(part_of_financial_services_law/1, 'documentation is part of the documentation kept under Union financial services law', 'celex:32024R1689/oj#art_18').
declared(technical_documentation/1, 'technical documentation of the AI system', 'celex:32024R1689/oj#art_18').
doc_type(technical_documentation).
doc_type(quality_management_system_documentation).
doc_type(changes_approved_by_notified_body_documentation).
doc_type(notified_body_decisions_documentation).
doc_type(eu_declaration_of_conformity).
technical_documentation(technical_documentation).
required_keep_documentation(Provider, Doc, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    ten_years_after_market_or_service(System),
    doc_type(Doc).
provenance(required_keep_documentation/3, 'celex:32024R1689/oj#art_18').
required_determine_conditions(MemberState, Doc, System) :-
    member_state(MemberState),
    high_risk_ai_system(System),
    doc_type(Doc),
    (   provider(P),
        (bankrupt(P) ; ceases_activity(P)),
        provider_on_territory(P, MemberState)
    ;   authorised_representative(AR),
        (bankrupt(AR) ; ceases_activity(AR)),
        authorised_representative_on_territory(AR, MemberState)
    ),
    period_not_ended_yet(System).
provenance(required_determine_conditions/3, 'celex:32024R1689/oj#art_18').
required_maintain_technical_documentation(Provider, System) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(System),
    technical_documentation(Doc),
    part_of_financial_services_law(Doc).
provenance(required_maintain_technical_documentation/2, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'art_19').
declared(log/1, 'automatically generated log of a high‑risk AI system', 'art_19').
declared(logs_under_control/2, 'logs are under the control of the provider', 'art_19').
declared(retention_at_least_six_months/2, 'log retention period is at least six months', 'art_19').
declared(overridden_by_law/2, 'retention period is overridden by applicable Union or national law', 'art_19').
declared(financial_institution/1, 'provider that is a financial institution subject to Union financial services law', 'art_19').
required_keep_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System).
provenance(required_keep_logs/2, 'celex:32024R1689/oj#art_19').
required_log_retention_minimum(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System),
    retention_at_least_six_months(Provider, System),
    \+ overridden_by_law(Provider, System).
provenance(required_log_retention_minimum/2, 'celex:32024R1689/oj#art_19').
required_maintain_logs_financial(Provider, System) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System).
provenance(required_maintain_logs_financial/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_20').
declared(non_conformity_applies/1, 'system not in conformity', 'celex:32024R1689/oj#art_20').
declared(risk_present/1, 'risk presented by system', 'celex:32024R1689/oj#art_20').
declared(provider_aware_of_risk/2, 'provider aware of risk for system', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    non_conformity_applies(S).
must_inform_distributor(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    distributor(_D).
must_inform_deployer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    deployer(_Deployer).
must_inform_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    authorised_representative(_AR).
must_inform_importer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    importer(_Imp).
must_investigate_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S).
must_inform_market_surveillance_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    market_surveillance_authority(_MA),
    risk_present(S),
    provider_aware_of_risk(P, S).
must_inform_notified_body(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body(_NB),
    risk_present(S),
    provider_aware_of_risk(P, S).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributor/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployer/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importer/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_21').
declared(provides_high_risk_ai_system/2, 'provider provides a high‑risk AI system', 'celex:32024R1689/oj#art_21').
declared(competent_authority/1, 'competent authority', 'celex:32024R1689/oj#art_21').
declared(reasoned_request_by/1, 'reasoned request issued by competent authority', 'celex:32024R1689/oj#art_21').
declared(logs_under_control/1, 'logs of AI system under provider control', 'celex:32024R1689/oj#art_21').
declared(obtained_under_art/2, 'information obtained under a specific article', 'celex:32024R1689/oj#art_21').
declared(confidentiality_obligation_applies/1, 'confidentiality obligations apply to information', 'celex:32024R1689/oj#art_78').
declared(must_provide_information/2, 'provider must provide information to competent authority', 'celex:32024R1689/oj#art_21').
declared(must_provide_access_to_logs/2, 'provider must give access to logs to competent authority', 'celex:32024R1689/oj#art_21').
declared(required_confidentiality_handling/2, 'competent authority must treat information confidentially', 'celex:32024R1689/oj#art_21').
must_provide_information(P, A) :-
    provider(P),
    provides_high_risk_ai_system(P, S),
    competent_authority(A),
    reasoned_request_by(A).
must_provide_access_to_logs(P, A) :-
    provider(P),
    provides_high_risk_ai_system(P, S),
    competent_authority(A),
    reasoned_request_by(A),
    logs_under_control(S).
required_confidentiality_handling(A, Info) :-
    competent_authority(A),
    obtained_under_art(Info, 'celex:32024R1689/oj#art_21'),
    confidentiality_obligation_applies(Info).
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(required_confidentiality_handling/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(third_country_provider/1, 'provider established in a third country', 'celex:32024R1689/oj#art_22').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_22').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_22').
declared(required_appoint_authorised_representative/2, 'provider must appoint an authorised representative', 'celex:32024R1689/oj#art_22').
declared(required_enable_authorised_representative/2, 'provider must enable its authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_22').
declared(required_perform_task/2, 'authorised representative must perform a mandated task', 'celex:32024R1689/oj#art_22').
declared(task/1, 'specific task that the authorised representative must carry out', 'celex:32024R1689/oj#art_22').
declared(required_verify_declaration_and_assessment/1, 'authorised representative must verify EU declaration of conformity and conformity assessment', 'celex:32024R1689/oj#art_22').
declared(required_keep_documents_for_10_years/1, 'authorised representative must keep documentation for ten years', 'celex:32024R1689/oj#art_22').
declared(required_provide_information_on_request/1, 'authorised representative must provide information and documentation on a reasoned request', 'celex:32024R1689/oj#art_22').
declared(required_cooperate_with_authorities/1, 'authorised representative must cooperate with competent authorities', 'celex:32024R1689/oj#art_22').
declared(required_comply_with_registration_obligations/1, 'authorised representative must comply with registration obligations', 'celex:32024R1689/oj#art_22').
declared(must_provide_copy_of_mandate/2, 'authorised representative must provide a copy of the mandate to a market surveillance authority on request', 'celex:32024R1689/oj#art_22').
declared(required_terminate_mandate/1, 'authorised representative must terminate the mandate if the provider breaches obligations', 'celex:32024R1689/oj#art_22').
declared(must_inform_authority_of_termination/2, 'authorised representative must inform a relevant authority of the termination of the mandate', 'celex:32024R1689/oj#art_22').
required_appoint_authorised_representative(P, AR) :-
    provider(P),
    third_country_provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    authorised_representative(AR),
    established_in_union(AR).
provenance(required_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
required_enable_authorised_representative(P, AR) :-
    provider(P),
    provider(P),
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
required_perform_task(AR, T) :-
    authorised_representative(AR),
    authorised_representative(AR),
    task(T),
    task(T).
provenance(required_perform_task/2, 'celex:32024R1689/oj#art_22').
task(verify_declaration_and_assessment).
task(keep_documents_for_10_years).
task(provide_information_on_request).
task(cooperate_with_authorities).
task(comply_with_registration_obligations).
required_verify_declaration_and_assessment(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_verify_declaration_and_assessment/1, 'celex:32024R1689/oj#art_22').
required_keep_documents_for_10_years(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_keep_documents_for_10_years/1, 'celex:32024R1689/oj#art_22').
required_provide_information_on_request(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_provide_information_on_request/1, 'celex:32024R1689/oj#art_22').
required_cooperate_with_authorities(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_cooperate_with_authorities/1, 'celex:32024R1689/oj#art_22').
required_comply_with_registration_obligations(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_comply_with_registration_obligations/1, 'celex:32024R1689/oj#art_22').
must_provide_copy_of_mandate(AR, Auth) :-
    authorised_representative(AR),
    authorised_representative(AR),
    market_surveillance_authority(Auth),
    market_surveillance_authority(Auth).
provenance(must_provide_copy_of_mandate/2, 'celex:32024R1689/oj#art_22').
required_terminate_mandate(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
provenance(required_terminate_mandate/1, 'celex:32024R1689/oj#art_22').
must_inform_authority_of_termination(AR, Auth) :-
    authorised_representative(AR),
    authorised_representative(AR),
    market_surveillance_authority(Auth),
    market_surveillance_authority(Auth).
provenance(must_inform_authority_of_termination/2, 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').

% ==== celex:32024R1689/oj#art_23 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(required_ensure_conformity/2, 'importer must ensure conformity of high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(required_conformity_assessment_by_provider/2, 'provider has carried out the relevant conformity assessment procedure', 'celex:32024R1689/oj#art_23').
declared(required_technical_documentation_by_provider/2, 'provider has drawn up the technical documentation', 'celex:32024R1689/oj#art_23').
declared(required_ce_marking_and_declaration/2, 'system bears CE marking and is accompanied by EU declaration of conformity and instructions for use', 'celex:32024R1689/oj#art_23').
declared(required_authorised_representative_appointment/2, 'provider has appointed an authorised representative', 'celex:32024R1689/oj#art_23').
declared(prohibited_place_on_market_unless_conform/2, 'importer shall not place system on market until conformity is achieved', 'celex:32024R1689/oj#art_23').
declared(system_in_conformity/1, 'high‑risk AI system is in conformity with the Regulation', 'celex:32024R1689/oj#art_23').
declared(required_inform_provider_if_risk/2, 'importer shall inform provider, authorised representative and market surveillance authorities of a risk', 'celex:32024R1689/oj#art_23').
declared(risk_within_meaning_of_art_79/1, 'system presents a risk within the meaning of Art 79 para 1', 'celex:32024R1689/oj#art_23').
declared(required_label_information/2, 'importer shall indicate name, trade name/mark and address on system, packaging or documentation', 'celex:32024R1689/oj#art_23').
declared(required_maintain_compliance_storage/2, 'importer shall ensure storage/transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(required_maintain_records/2, 'importer shall keep copies of certificate, instructions for use and declaration for ten years', 'celex:32024R1689/oj#art_23').
declared(required_provide_information/2, 'importer shall provide competent authorities with necessary information upon request', 'celex:32024R1689/oj#art_23').
declared(required_cooperate/2, 'importer shall cooperate with competent authorities in actions concerning the system', 'celex:32024R1689/oj#art_23').
required_ensure_conformity(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    required_conformity_assessment_by_provider(I, S),
    required_technical_documentation_by_provider(I, S),
    required_ce_marking_and_declaration(I, S),
    required_authorised_representative_appointment(I, S).
required_conformity_assessment_by_provider(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    provider(P),
    provider_has_carried_out_assessment(P, S).
required_technical_documentation_by_provider(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    provider(P),
    provider_has_drawn_up_technical_documentation(P, S).
required_ce_marking_and_declaration(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    system_has_ce_marking(S),
    system_accompanied_by_declaration_and_instructions(S).
required_authorised_representative_appointment(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    provider(P),
    provider_has_appointed_authorised_representative(P).
prohibited_place_on_market_unless_conform(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    \+ system_in_conformity(S).
system_in_conformity(S) :-
    required_ensure_conformity(_, S).
required_inform_provider_if_risk(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    risk_within_meaning_of_art_79(S),
    provider(P),
    authorised_representative(AR),
    market_surveillance_authority(MSA),
    inform(P, S),
    inform(AR, S),
    inform(MSA, S).
required_label_information(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    label_contains_name_trade_mark_address(I, S).
required_maintain_compliance_storage(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    storage_or_transport_conditions_do_not_jeopardise_compliance(S).
required_maintain_records(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    keep_copy_of_certificate_for_10_years(I, S),
    keep_copy_of_instructions_for_10_years(I, S),
    keep_copy_of_declaration_for_10_years(I, S).
required_provide_information(I, S) :-
    importer(I),
    high_rrisk_ai_system(S),
    competent_authority(CA),
    request_reasoned(CA),
    provide_information(CA, S).
required_cooperate(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    competent_authority(CA),
    cooperate_with(CA, I, S).
provider_has_carried_out_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provider_has_drawn_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).
system_has_ce_marking(S) :-
    high_risk_ai_system(S).
system_accompanied_by_declaration_and_instructions(S) :-
    high_risk_ai_system(S).
provider_has_appointed_authorised_representative(P) :-
    provider(P).
risk_within_meaning_of_art_79(S) :-
    high_risk_ai_system(S).
inform(Actor, S) :-
    actor(Actor),
    high_risk_ai_system(S).
label_contains_name_trade_mark_address(I, S) :-
    importer(I),
    high_risk_ai_system(S).
storage_or_transport_conditions_do_not_jeopardise_compliance(S) :-
    high_risk_ai_system(S).
keep_copy_of_certificate_for_10_years(I, S) :-
    importer(I),
    high_risk_ai_system(S).
keep_copy_of_instructions_for_10_years(I, S) :-
    importer(I),
    high_risk_ai_system(S).
keep_copy_of_declaration_for_10_years(I, S) :-
    importer(I),
    high_risk_ai_system(S).
competent_authority(CA) :-
    market_surveillance_authority(CA).
request_reasoned(CA) :-
    competent_authority(CA).
provide_information(CA, S) :-
    competent_authority(CA),
    high_risk_ai_system(S).
cooperate_with(CA, I, S) :-
    competent_authority(CA),
    importer(I),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(required_ensure_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(required_conformity_assessment_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_technical_documentation_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(required_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_place_on_market_unless_conform/2, 'celex:32024R1689/oj#art_23').
provenance(system_in_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(required_inform_provider_if_risk/2, 'celex:32024R1689/oj#art_23').
provenance(risk_within_meaning_of_art_79/1, 'celex:32024R1689/oj#art_23').
provenance(required_label_information/2, 'celex:32024R1689/oj#art_23').
provenance(required_maintain_compliance_storage/2, 'celex:32024R1689/oj#art_23').
provenance(required_maintain_records/2, 'celex:32024R1689/oj#art_23').
provenance(required_provide_information/2, 'celex:32024R1689/oj#art_23').
provenance(required_cooperate/2, 'celex:32024R1689/oj#art_23').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_24').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(non_conformant/1, 'system not in conformity with the requirements', 'celex:32024R1689/oj#art_24').
declared(risk_present/1, 'system presents a risk as defined in article 79', 'celex:32024R1689/oj#art_24').
declared(storage_transport_conditions/1, 'storage or transport conditions applicable', 'celex:32024R1689/oj#art_24').
declared(request_from_authority/1, 'reasoned request from a competent authority', 'celex:32024R1689/oj#art_24').
required_verify_ce_marking_and_declaration_and_instructions(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    ce_marking(Sys),
    eu_declaration_of_conformity(Sys),
    instructions_for_use(Sys).
provenance(required_verify_ce_marking_and_declaration_and_instructions/2, 'celex:32024R1689/oj#art_24').
prohibited_make_available_until_conformity(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys).
provenance(prohibited_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
required_inform_provider_or_importer_of_risk(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    risk_present(Sys).
provenance(required_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
required_ensure_storage_transport_not_jeopardise(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    storage_transport_conditions(Sys).
provenance(required_ensure_storage_transport_not_jeopardise/2, 'celex:32024R1689/oj#art_24').
required_take_corrective_actions(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys).
provenance(required_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
required_withdraw_or_recall(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys).
provenance(required_withdraw_or_recall/2, 'celex:32024R1689/oj#art_24').
required_inform_authorities_of_non_compliance(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys),
    risk_present(Sys).
provenance(required_inform_authorities_of_non_compliance/2, 'celex:32024R1689/oj#art_24').
required_provide_information_to_authority(Dist, Auth, Sys) :-
    distributor(Dist),
    national_competent_authority(Auth),
    high_risk_ai_system(Sys),
    request_from_authority(Auth).
provenance(required_provide_information_to_authority/3, 'celex:32024R1689/oj#art_24').
required_cooperate_with_authority(Dist, Auth, Sys) :-
    distributor(Dist),
    national_competent_authority(Auth),
    high_risk_ai_system(Sys).
provenance(required_cooperate_with_authority/3, 'celex:32024R1689/oj#art_24').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(third_party/1, 'other third‑party', 'celex:32024R1689/oj#art_25').
declared(puts_name_or_trademark_on/2, 'places name or trademark on AI system', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification/2, 'makes substantial modification to AI system', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose/2, 'modifies intended purpose of AI system', 'celex:32024R1689/oj#art_25').
declared(initial_provider_of/2, 'initial provider of AI system', 'celex:32024R1689/oj#art_25').
declared(new_provider_of/2, 'new provider of AI system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_providers/2, 'must cooperate with new providers', 'celex:32024R1689/oj#art_25').
declared(must_provide_information/2, 'must provide necessary information and technical access', 'celex:32024R1689/oj#art_25').
declared(places_on_market_with_product_name/2, 'places AI system on market together with product under product‑manufacturer name', 'celex:32024R1689/oj#art_25').
declared(places_into_service_with_product_name/2, 'places AI system into service under product‑manufacturer name', 'celex:32024R1689/oj#art_25').
declared(third_party_supplier/1, 'third‑party that supplies tools, services, components or processes for a high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(must_specify_information_by_written_agreement/2, 'must, by written agreement, specify information, capabilities, technical access and assistance', 'celex:32024R1689/oj#art_25').
declared(makes_publicly_accessible_under_fos_license/1, 'makes tools, services, components publicly accessible under a free and open‑source licence', 'celex:32024R1689/oj#art_25').
declared(exempt_third_party_open_source/1, 'exempt third‑party from information‑specification duty when providing open‑source tools not general‑purpose AI models', 'celex:32024R1689/oj#art_25').
provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).
provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).
provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).
provider(P) :-
    third_party(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).
must_cooperate_with_new_providers(InitialProvider, System) :-
    initial_provider_of(InitialProvider, System),
    new_provider_of(_NewProvider, System).
must_provide_information(InitialProvider, System) :-
    initial_provider_of(InitialProvider, System),
    new_provider_of(_NewProvider, System).
provider(P) :-
    product_manufacturer(P),
    high_risk_ai_system(S),
    safety_component(S),
    (   places_on_market_with_product_name(P,S)
    ;   places_into_service_with_product_name(P,S)
    ).
must_specify_information_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    third_party_supplier(ThirdParty),
    third_party_supplier(ThirdParty),
    high_risk_ai_system(_S).
exempt_third_party_open_source(ThirdParty) :-
    third_party_supplier(ThirdParty),
    makes_publicly_accessible_under_fos_license(ThirdParty),
    \+ general_purpose_ai_model(_).
provenance(provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_25').
provenance(places_on_market_with_product_name/2, 'celex:32024R1689/oj#art_25').
provenance(places_into_service_with_product_name/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_information_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_third_party_open_source/1, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_26').
declared(natural_person/1, 'natural person', 'celex:32024R1689/oj#art_26').
declared(human_oversight_assigned/2, 'human oversight assigned by a deployer to a person', 'celex:32024R1689/oj#art_26').
declared(controls_input_data/2, 'deployer exercises control over input data of an AI system', 'celex:32024R1689/oj#art_26').
declared(input_data_relevant/1, 'input data is relevant and sufficiently representative', 'celex:32024R1689/oj#art_26').
declared(monitor_operation/2, 'deployer monitors the operation of an AI system', 'celex:32024R1689/oj#art_26').
declared(risk_of_system/1, 'use of the AI system may present a risk as defined in the Regulation', 'celex:32024R1689/oj#art_26').
declared(inform_provider/2, 'deployer informs the provider', 'celex:32024R1689/oj#art_26').
declared(suspend_use/2, 'deployer suspends the use of the AI system', 'celex:32024R1689/oj#art_26').
declared(serious_incident/1, 'serious incident as defined in the Regulation', 'celex:32024R1689/oj#art_26').
declared(incident_related_to_system/2, 'incident is related to a given AI system', 'celex:32024R1689/oj#art_26').
declared(inform_provider_first/2, 'deployer first informs the provider', 'celex:32024R1689/oj#art_26').
declared(inform_importer_or_distributor/2, 'deployer informs the importer or distributor', 'celex:32024R1689/oj#art_26').
declared(inform_market_surveillance_authority/2, 'deployer informs the relevant market surveillance authority', 'celex:32024R1689/oj#art_26').
declared(log_generated/2, 'log automatically generated by an AI system', 'celex:32024R1689/oj#art_26').
declared(under_control/2, 'log is under the control of the deployer', 'celex:32024R1689/oj#art_26').
declared(retention_at_least/2, 'log is retained for at least the specified period', 'celex:32024R1689/oj#art_26').
declared(employer/1, 'entity that employs workers', 'celex:32024R1689/oj#art_26').
declared(inform_workers_representatives/2, 'deployer informs workers’ representatives', 'celex:32024R1689/oj#art_26').
declared(inform_affected_workers/2, 'deployer informs affected workers', 'celex:32024R1689/oj#art_26').
declared(public_authority/1, 'public authority, Union institution, body, office or agency', 'celex:32024R1689/oj#art_26').
declared(registration_obligation/2, 'obligation to comply with registration requirements', 'celex:32024R1689/oj#art_26').
declared(registered_in_eu_database/1, 'AI system is registered in the EU database', 'celex:32024R1689/oj#art_26').
declared(inform_provider_or_distributor/2, 'deployer informs the provider or the distributor', 'celex:32024R1689/oj#art_26').
declared(use_information_art13/2, 'deployer uses information provided under Article 13', 'celex:32024R1689/oj#art_26').
declared(must_conduct_dpia/2, 'deployer must carry out a data‑protection impact assessment', 'celex:32024R1689/oj#art_26').
declared(permitted_initial_identification/2, 'use is for the initial identification of a potential suspect based on objective verifiable facts', 'celex:32024R1689/oj#art_26').
declared(request_authorisation/3, 'deployer requests authorisation for use of the system', 'celex:32024R1689/oj#art_26').
declared(authorisation_rejected/2, 'authorisation request has been rejected', 'celex:32024R1689/oj#art_26').
declared(stop_use/2, 'deployer stops the use of the system', 'celex:32024R1689/oj#art_26').
declared(delete_personal_data/2, 'deployer deletes personal data linked to the system', 'celex:32024R1689/oj#art_26').
declared(law_enforcement_use/1, 'system is used for law‑enforcement purposes', 'celex:32024R1689/oj#art_26').
declared(targeted_to_criminal_offence/1, 'use is linked to a specific criminal offence, proceeding or threat', 'celex:32024R1689/oj#art_26').
declared(makes_decisions_about_natural_persons/1, 'AI system makes or assists in decisions affecting natural persons', 'celex:32024R1689/oj#art_26').
declared(inform_person/3, 'deployer informs a natural person that they are subject to the system', 'celex:32024R1689/oj#art_26').
declared(cooperate_with_competent_authorities/1, 'deployer cooperates with competent authorities', 'celex:32024R1689/oj#art_26').
declared(financial_institution/1, 'deployer is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_26').
required_technical_and_organisational_measures(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    instructions_for_use(System).
provenance(required_technical_and_organisational_measures/2, 'celex:32024R1689/oj#art_26').
required_human_oversight_assignment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    human_oversight_assigned(Deployer, Person),
    natural_person(Person).
provenance(required_human_oversight_assignment/2, 'celex:32024R1689/oj#art_26').
required_input_data_relevance(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_input_data(Deployer, System),
    input_data_relevant(System).
provenance(required_input_data_relevance/2, 'celex:32024R1689/oj#art_26').
required_monitoring(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    monitor_operation(Deployer, System).
provenance(required_monitoring/2, 'celex:32024R1689/oj#art_26').
must_inform_provider_when_risk(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    risk_of_system(System),
    inform_provider(Deployer, System).
provenance(must_inform_provider_when_risk/2, 'celex:32024R1689/oj#art_26').
must_suspend_use_when_risk(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    risk_of_system(System),
    suspend_use(Deployer, System).
provenance(must_suspend_use_when_risk/2, 'celex:32024R1689/oj#art_26').
must_inform_of_serious_incident(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    serious_incident(Incident),
    incident_related_to_system(Incident, System),
    inform_provider_first(Deployer, System),
    inform_importer_or_distributor(Deployer, System),
    inform_market_surveillance_authority(Deployer, System).
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
required_log_retention(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    log_generated(System, Log),
    under_control(Deployer, Log),
    retention_at_least(Log, six_months).
provenance(required_log_retention/2, 'celex:32024R1689/oj#art_26').
required_worker_information(Deployer, System) :-
    deployer(Deployer),
    employer(Deployer),
    high_risk_ai_system(System),
    inform_workers_representatives(Deployer, System),
    inform_affected_workers(Deployer, System).
provenance(required_worker_information/2, 'celex:32024R1689/oj#art_26').
required_registration_compliance(Deployer, System) :-
    deployer(Deployer),
    public_authority(Deployer),
    high_risk_ai_system(System),
    registration_obligation(Deployer, System).
provenance(required_registration_compliance/2, 'celex:32024R1689/oj#art_26').
must_not_use_if_not_registered(Deployer, System) :-
    deployer(Deployer),
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_eu_database(System),
    inform_provider_or_distributor(Deployer, System).
provenance(must_not_use_if_not_registered/2, 'celex:32024R1689/oj#art_26').
required_dpia(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    use_information_art13(Deployer, System),
    must_conduct_dpia(Deployer, System).
provenance(required_dpia/2, 'celex:32024R1689/oj#art_26').
required_authorisation_request(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    \+ permitted_initial_identification(Deployer, System),
    request_authorisation(Deployer, System, within_48_hours).
provenance(required_authorisation_request/2, 'celex:32024R1689/oj#art_26').
must_stop_use_if_authorisation_rejected(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System),
    stop_use(Deployer, System),
    delete_personal_data(Deployer, System).
provenance(must_stop_use_if_authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
prohibited_untargeted_law_enforcement_use(System) :-
    post_remote_biometric_identification_system(System),
    law_enforcement_use(System),
    \+ targeted_to_criminal_offence(System).
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').
required_inform_natural_persons(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    makes_decisions_about_natural_persons(System),
    natural_person(Person),
    inform_person(Person, Deployer, System).
provenance(required_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
must_cooperate_with_authorities(Deployer) :-
    deployer(Deployer),
    cooperate_with_competent_authorities(Deployer).
provenance(must_cooperate_with_authorities/1, 'celex:32024R1689/oj#art_26').
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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(required_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment before deploying a high‑risk AI system', 'celex:32024R1689/oj#art_27').
declared(public_law_body/1, 'deployer is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_providing_public_services/1, 'deployer is a private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(deployer_of_annex3_pnt5/2, 'deployer of a high‑risk AI system referred to in annex 3 point 5', 'celex:32024R1689/oj#art_27').
declared(exempt_fundamental_rights_impact_assessment/1, 'high‑risk AI system is exempt from the fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(intended_use_in_exempt_area/1, 'high‑risk AI system is intended to be used in the area listed in annex 3 point 2', 'celex:32024R1689/oj#art_27').
required_fundamental_rights_impact_assessment(Deployer, System) :-
    high_risk_ai_system(System),
    deployer(Deployer),
    (   public_law_body(Deployer)
    ;   private_entity_providing_public_services(Deployer)
    ;   deployer_of_annex3_pnt5(Deployer, System)
    ),
    putting_into_service(System),
    \+ exempt_fundamental_rights_impact_assessment(System).
exempt_fundamental_rights_impact_assessment(System) :-
    high_risk_ai_system(System),
    intended_use_in_exempt_area(System).
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
declared(required_update_fundamental_rights_impact_assessment/2, 'deployer must update the fundamental rights impact assessment when any element changes during use', 'celex:32024R1689/oj#art_27').
declared(element_changed/2, 'an element of the assessment has changed or is no longer up to date', 'celex:32024R1689/oj#art_27').
required_update_fundamental_rights_impact_assessment(Deployer, System) :-
    high_risk_ai_system(System),
    deployer(Deployer),
    putting_into_service(System),
    element_changed(Deployer, System).
provenance(required_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority/2, 'deployer must notify the market surveillance authority of the assessment results', 'celex:32024R1689/oj#art_27').
declared(assessment_performed/2, 'fundamental rights impact assessment has been performed', 'celex:32024R1689/oj#art_27').
declared(exempt_notify_market_surveillance_authority/2, 'deployer is exempt from the notification obligation', 'celex:32024R1689/oj#art_27').
assessment_performed(Deployer, System) :-
    required_fundamental_rights_impact_assessment(Deployer, System).
must_notify_market_surveillance_authority(Deployer, System) :-
    high_risk_ai_system(System),
    deployer(Deployer),
    assessment_performed(Deployer, System),
    market_surveillance_authority(_),
    \+ exempt_notify_market_surveillance_authority(Deployer, System).
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
declared(required_template_for_fundamental_rights_impact_assessment/1, 'AI Office must develop a template questionnaire to facilitate compliance', 'celex:32024R1689/oj#art_27').
required_template_for_fundamental_rights_impact_assessment(Office) :-
    ai_office(Office).
provenance(required_template_for_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_28').
declared(national_accreditation_body/1, 'national accreditation body', 'celex:32024R1689/oj#art_28').
declared(competent_person/1, 'competent person', 'celex:32024R1689/oj#art_28').
must_designate_or_establish_notifying_authority(MS, NA) :-
    member_state(MS),
    notifying_authority(NA).
provenance(must_designate_or_establish_notifying_authority/2, 'celex:32024R1689/oj#art_28').
must_develop_procedures_in_cooperation(NA) :-
    notifying_authority(NA).
provenance(must_develop_procedures_in_cooperation/1, 'celex:32024R1689/oj#art_28').
permitted_assessment_and_monitoring_by_accreditation_body(MS, AB) :-
    member_state(MS),
    national_accreditation_body(AB).
provenance(permitted_assessment_and_monitoring_by_accreditation_body/2, 'celex:32024R1689/oj#art_28').
must_ensure_no_conflict_of_interest(NA) :-
    notifying_authority(NA).
provenance(must_ensure_no_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
must_safeguard_objectivity_and_impartiality(NA) :-
    notifying_authority(NA).
provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
must_ensure_decisions_taken_by_competent_persons_different_from_assessors(NA) :-
    notifying_authority(NA).
provenance(must_ensure_decisions_taken_by_competent_persons_different_from_assessors/1, 'celex:32024R1689/oj#art_28').
prohibited_provision_of_assessment_activities(NA) :-
    notifying_authority(NA).
provenance(prohibited_provision_of_assessment_activities/1, 'celex:32024R1689/oj#art_28').
prohibited_provision_of_consultancy_services(NA) :-
    notifying_authority(NA).
provenance(prohibited_provision_of_consultancy_services/1, 'celex:32024R1689/oj#art_28').
must_safeguard_confidentiality(NA) :-
    notifying_authority(NA).
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_28').
must_have_adequate_competent_personnel(NA) :-
    notifying_authority(NA).
provenance(must_have_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application/2, 'conformity assessment body must submit an application for notification to the notifying authority', 'celex:32024R1689/oj#art_29').
declared(must_provide_application_description/2, 'application must be accompanied by a description of conformity assessment activities, modules and AI system types', 'celex:32024R1689/oj#art_29').
declared(must_include_accreditation_certificate_when_available/2, 'application must include an accreditation certificate when one exists', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence_without_accreditation/2, 'when no accreditation certificate exists, the body must provide documentary evidence for verification and monitoring', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate_exists/1, 'accreditation certificate is available for the conformity assessment body', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate/1, 'accreditation certificate issued by a national accreditation body', 'celex:32024R1689/oj#art_29').
declared(permitted_use_of_existing_designation_documents/1, 'notified bodies designated under other Union legislation may use existing designation documents', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/1, 'designated notified bodies must update documentation whenever relevant changes occur', 'celex:32024R1689/oj#art_29').
declared(designated_under_other_legislation/1, 'conformity assessment body is designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(changes_occur/1, 'relevant changes affecting the conformity assessment body have occurred', 'celex:32024R1689/oj#art_29').
must_submit_application(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A).
must_provide_application_description(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A).
must_include_accreditation_certificate_when_available(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    accreditation_certificate_exists(B).
must_provide_documentary_evidence_without_accreditation(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    \+ accreditation_certificate_exists(B).
accreditation_certificate_exists(B) :-
    accreditation_certificate(B).
permitted_use_of_existing_designation_documents(B) :-
    notified_body(B),
    designated_under_other_legislation(B).
must_update_documentation(B) :-
    notified_body(B),
    designated_under_other_legislation(B),
    changes_occur(B).
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_application_description/2, 'celex:32024R1689/oj#art_29').
provenance(must_include_accreditation_certificate_when_available/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence_without_accreditation/2, 'celex:32024R1689/oj#art_29').
provenance(accreditation_certificate_exists/1, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_of_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(permitted_notify/2, 'notifying authority may notify conformity assessment body that satisfies requirements', 'celex:32024R1689/oj#art_30').
declared(must_notify/2, 'notifying authority shall notify the Commission and other Member States of a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(required_notification_content/2, 'notification shall include full details of conformity assessment activities, modules, AI system types and competence attestation', 'celex:32024R1689/oj#art_30').
declared(required_provide_evidence/2, 'when no accreditation certificate, notifying authority shall provide documentary evidence of competence and monitoring', 'celex:32024R1689/oj#art_30').
declared(permitted_notified_body_activity/1, 'conformity assessment body may perform activities of a notified body where no objections are raised', 'celex:32024R1689/oj#art_30').
declared(must_consult/2, 'Commission shall consult with Member States and conformity assessment body when objections are raised', 'celex:32024R1689/oj#art_30').
declared(must_decide_authorisation/2, 'Commission shall decide whether authorisation is justified after objections', 'celex:32024R1689/oj#art_30').
permitted_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).
must_notify(Authority, commission_notification(Body)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body).
required_notification_content(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body).
required_provide_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).
permitted_notified_body_activity(Body) :-
    conformity_assessment_body(Body),
    \+ objection_raised(Body).
must_consult(commission, Body) :-
    objection_raised(Body).
must_decide_authorisation(commission, Body) :-
    objection_raised(Body).
provenance(permitted_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(required_notification_content/2, 'celex:32024R1689/oj#art_30').
provenance(required_provide_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_notified_body_activity/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(required_establishment_under_national_law/1, 'notified body must be established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(required_legal_personality/1, 'notified body must have legal personality', 'celex:32024R1689/oj#art_31').
declared(required_organisational_requirements/1, 'notified body must satisfy organisational requirements necessary to fulfil its tasks', 'celex:32024R1689/oj#art_31').
declared(required_quality_management_requirements/1, 'notified body must satisfy quality management requirements necessary to fulfil its tasks', 'celex:32024R1689/oj#art_31').
declared(required_resources_requirements/1, 'notified body must satisfy resources requirements necessary to fulfil its tasks', 'celex:32024R1689/oj#art_31').
declared(required_process_requirements/1, 'notified body must satisfy process requirements necessary to fulfil its tasks', 'celex:32024R1689/oj#art_31').
declared(required_cybersecurity_requirements/1, 'notified body must satisfy suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(required_confidence_in_performance/1, 'organisational structure of notified body must ensure confidence in its performance', 'celex:32024R1689/oj#art_31').
declared(required_confidence_in_assessment_results/1, 'organisational structure of notified body must ensure confidence in conformity assessment results', 'celex:32024R1689/oj#art_31').
declared(required_independence_from_provider/2, 'notified body must be independent of the provider of a high‑risk AI system', 'celex:32024R1689/oj#art_31').
declared(required_independence_from_operator/2, 'notified body must be independent of any operator having an economic interest in high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(required_independence_from_competitor/2, 'notified body must be independent of any competitor of the provider', 'celex:32024R1689/oj#art_31').
declared(exempt_use_of_assessed_system_for_operations/2, 'use of assessed high‑risk AI system necessary for the operations of the notified body is exempt from independence restriction', 'celex:32024R1689/oj#art_31').
declared(exempt_use_of_assessed_system_for_personal_purposes/2, 'use of assessed high‑risk AI system for personal purposes is exempt from independence restriction', 'celex:32024R1689/oj#art_31').
declared(prohibited_involvement_in_design_development_marketing_use/1, 'notified body and its personnel shall not be involved in design, development, marketing or use of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_conflict_of_interest/1, 'notified body shall not engage in any activity that might conflict with its independence or integrity', 'celex:32024R1689/oj#art_31').
declared(prohibited_consultancy_services/1, 'notified body shall not provide consultancy services that could affect its independence', 'celex:32024R1689/oj#art_31').
declared(required_safeguard_independence_objectivity_impartiality/1, 'notified body must safeguard independence, objectivity and impartiality of its activities', 'celex:32024R1689/oj#art_31').
declared(required_documented_impartiality_procedures/1, 'notified body must document and implement procedures to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(required_confidentiality_procedures/1, 'notified body must have documented procedures to maintain confidentiality of information', 'celex:32024R1689/oj#art_31').
declared(required_professional_secrecy/1, 'staff of notified body must observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(exempt_disclosure_when_required_by_law/1, 'confidentiality may be breached when disclosure is required by law', 'celex:32024R1689/oj#art_31').
declared(required_procedures_accounting_for_provider_characteristics/1, 'notified body must have procedures that take account of provider size, sector, structure and AI system complexity', 'celex:32024R1689/oj#art_31').
declared(required_liability_insurance/1, 'notified body must take out appropriate liability insurance for its conformity assessment activities', 'celex:32024R1689/oj#art_31').
declared(exempt_liability_insurance_when_state_assumes/1, 'liability insurance not required when liability is assumed by the Member State', 'celex:32024R1689/oj#art_31').
declared(required_capability_with_integrity_and_competence/1, 'notified body must be capable of performing tasks with highest professional integrity and requisite competence', 'celex:32024R1689/oj#art_31').
declared(required_sufficient_internal_competences/1, 'notified body must have sufficient internal competences and permanent availability of qualified personnel', 'celex:32024R1689/oj#art_31').
declared(required_participation_in_coordination/1, 'notified body must participate in coordination activities', 'celex:32024R1689/oj#art_31').
declared(required_engagement_in_standardisation/1, 'notified body must take part in European standardisation organisations or stay up‑to‑date with relevant standards', 'celex:32024R1689/oj#art_31').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_31').
required_establishment_under_national_law(NB) :-
    notified_body(NB).
required_legal_personality(NB) :-
    notified_body(NB).
required_organisational_requirements(NB) :-
    notified_body(NB).
required_quality_management_requirements(NB) :-
    notified_body(NB).
required_resources_requirements(NB) :-
    notified_body(NB).
required_process_requirements(NB) :-
    notified_body(NB).
required_cybersecurity_requirements(NB) :-
    notified_body(NB).
required_confidence_in_performance(NB) :-
    notified_body(NB).
required_confidence_in_assessment_results(NB) :-
    notified_body(NB).
required_independence_from_provider(NB, P) :-
    notified_body(NB),
    provider(P).
required_independence_from_operator(NB, O) :-
    notified_body(NB),
    operator(O).
required_independence_from_competitor(NB, C) :-
    notified_body(NB),
    provider(C).
exempt_use_of_assessed_system_for_operations(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).
exempt_use_of_assessed_system_for_personal_purposes(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).
prohibited_involvement_in_design_development_marketing_use(NB) :-
    notified_body(NB).
prohibited_conflict_of_interest(NB) :-
    notified_body(NB).
prohibited_consultancy_services(NB) :-
    notified_body(NB).
required_safeguard_independence_objectivity_impartiality(NB) :-
    notified_body(NB).
required_documented_impartiality_procedures(NB) :-
    notified_body(NB).
required_confidentiality_procedures(NB) :-
    notified_body(NB).
required_professional_secrecy(NB) :-
    notified_body(NB).
exempt_disclosure_when_required_by_law(NB) :-
    notified_body(NB).
required_procedures_accounting_for_provider_characteristics(NB) :-
    notified_body(NB).
required_liability_insurance(NB) :-
    notified_body(NB).
exempt_liability_insurance_when_state_assumes(NB) :-
    notified_body(NB).
required_capability_with_integrity_and_competence(NB) :-
    notified_body(NB).
required_sufficient_internal_competences(NB) :-
    notified_body(NB).
required_participation_in_coordination(NB) :-
    notified_body(NB).
required_engagement_in_standardisation(NB) :-
    notified_body(NB).
provenance(required_establishment_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(required_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(required_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_resources_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidence_in_assessment_results/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_provider/2, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_operator/2, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_use_of_assessed_system_for_operations/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_use_of_assessed_system_for_personal_purposes/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_involvement_in_design_development_marketing_use/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(required_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(required_documented_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(required_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_disclosure_when_required_by_law/1, 'celex:32024R1689/oj#art_31').
provenance(required_procedures_accounting_for_provider_characteristics/1, 'celex:32024R1689/oj#art_31').
provenance(required_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance_when_state_assumes/1, 'celex:32024R1689/oj#art_31').
provenance(required_capability_with_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(required_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(required_participation_in_coordination/1, 'celex:32024R1689/oj#art_31').
provenance(required_engagement_in_standardisation/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_32 ====
declared(demonstrates_conformity_with_criteria/1, 'conformity assessment body demonstrates conformity with criteria in relevant harmonised standards', 'celex:32024R1689/oj#art_32').
declared(harmonised_standard_covers_requirements/1, 'applicable harmonised standards cover the requirements set out in art 31', 'celex:32024R1689/oj#art_32').
presumed_compliant(Body) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_criteria(Body),
    harmonised_standard_covers_requirements(Body).
provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontractor/1, 'entity performing subcontracted tasks', 'celex:32024R1689/oj#art_33').
declared(subsidiary/1, 'entity that is a subsidiary of a notified body', 'celex:32024R1689/oj#art_33').
declared(agreement/2, 'agreement between provider and subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(requirements_laid_down_in_art_31/1, 'requirements set out in article 31', 'celex:32024R1689/oj#art_33').
declared(meets_requirements/1, 'entity meets the requirements of article 31', 'celex:32024R1689/oj#art_33').
declared(retention_period_five_years/1, 'documents retained for five years after termination of subcontracting', 'celex:32024R1689/oj#art_33').
declared(subcontractor_or_subsidiary/1, 'entity that is either a subcontractor or a subsidiary', 'celex:32024R1689/oj#art_33').
must_ensure(NB, Sub) :-
    notified_body(NB),
    subcontractor_or_subsidiary(Sub),
    meets_requirements(Sub),
    notified_body(NB).
must_notify(Authority, Sub) :-
    notifying_authority(Authority),
    subcontractor_or_subsidiary(Sub),
    notifying_authority(Authority).
must_take_full_responsibility(NB, Sub) :-
    notified_body(NB),
    subcontractor_or_subsidiary(Sub),
    notified_body(NB),
    subcontractor_or_subsidiary(Sub).
permitted_subcontracting(Sub) :-
    provider(P),
    agreement(P, Sub),
    provider(P),
    subcontractor_or_subsidiary(Sub).
must_make_list_publicly_available(NB) :-
    notified_body(NB),
    notified_body(NB).
must_keep_documents_at_disposal_of(Authority, Sub) :-
    notifying_authority(Authority),
    subcontractor_or_subsidiary(Sub),
    retention_period_five_years(Sub),
    notifying_authority(Authority).
subcontractor_or_subsidiary(X) :-
    subcontractor(X).
subcontractor_or_subsidiary(X) :-
    subsidiary(X).
meets_requirements(Sub) :-
    subcontractor_or_subsidiary(Sub),
    requirements_laid_down_in_art_31(Sub),
    subcontractor_or_subsidiary(Sub).
requirements_laid_down_in_art_31(Sub) :-
    subcontractor_or_subsidiary(Sub),
    subcontractor_or_subsidiary(Sub).
retention_period_five_years(Sub) :-
    subcontractor_or_subsidiary(Sub),
    subcontractor_or_subsidiary(Sub).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_notify/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/1, 'celex:32024R1689/oj#art_33').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_documents_at_disposal_of/2, 'celex:32024R1689/oj#art_33').
provenance(subcontractor_or_subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(meets_requirements/1, 'celex:32024R1689/oj#art_33').
provenance(requirements_laid_down_in_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(retention_period_five_years/1, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'obligation of notified body to verify conformity of high‑risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'obligation of notified body to avoid unnecessary burdens for provider', 'celex:32024R1689/oj#art_34').
declared(must_take_due_account/3, 'obligation of notified body to take due account of provider and system characteristics', 'celex:32024R1689/oj#art_34').
declared(must_respect_rigour_and_protection/2, 'obligation of notified body to respect required rigour and level of protection', 'celex:32024R1689/oj#art_34').
declared(must_make_available_and_submit_documentation/2, 'obligation of notified body to make available and submit documentation to notifying authority', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System).
must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_take_due_account(Body, Provider, System) :-
    notified_body(Body),
    provider(Provider),
    high_risk_ai_system(System).
must_respect_rigour_and_protection(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System).
must_make_available_and_submit_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account/3, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_and_submit_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign_identification_number/2, 'Commission must assign a single identification number to each notified body', 'celex:32024R1689/oj#art_35').
declared(must_publish_notified_body_list/1, 'Commission must make publicly available the list of notified bodies', 'celex:32024R1689/oj#art_35').
declared(must_ensure_list_up_to_date/1, 'Commission must ensure the list of notified bodies is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign_identification_number(commission, Body) :-
    notified_body(Body).
must_publish_notified_body_list(commission).
must_ensure_list_up_to_date(commission).
provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_publish_notified_body_list/1, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_list_up_to_date/1, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_36').
declared(other_notifying_authority/1, 'other notifying authority', 'celex:32024R1689/oj#art_36').
must_notify(notifying_authority, commission) :-
    relevant_change_of_notification(NB),
    notified_body(NB).
must_notify(notifying_authority, member_state) :-
    relevant_change_of_notification(NB),
    notified_body(NB).
relevant_change_of_notification(NB) :-
    notified_body(NB).
extension_of_scope_applies(NB) :-
    notified_body(NB).
non_extension_change_applies(NB) :-
    notified_body(NB),
    \+ extension_of_scope_applies(NB).
ceasing_conformity_assessment(NB) :-
    notified_body(NB).
must_inform(notified_body, notifying_authority) :-
    ceasing_conformity_assessment(NB),
    notified_body(NB).
must_inform(notified_body, Provider) :-
    ceasing_conformity_assessment(NB),
    notified_body(NB),
    provider(Provider),
    provider(Provider).
another_notified_body_confirmed(AnotherNB) :-
    notified_body(AnotherNB).
related_nb(NB, NB) :-
    notified_body(NB).
certificate_validity_extended(NB) :-
    ceasing_conformity_assessment(NB),
    another_notified_body_confirmed(AnotherNB),
    related_nb(NB, AnotherNB).
must_complete_assessment(AnotherNB, HR) :-
    another_notified_body_confirmed(AnotherNB),
    high_risk_ai_system(HR),
    high_risk_ai_system(HR).
must_withdraw_designation(notifying_authority, NB) :-
    ceased_activity(NB),
    notified_body(NB).
ceased_activity(NB) :-
    notified_body(NB).
sufficient_reason(NB) :-
    notified_body(NB).
must_investigate(notifying_authority, NB) :-
    sufficient_reason(NB),
    notified_body(NB).
must_inform(notifying_authority, NB) :-
    sufficient_reason(NB),
    notified_body(NB).
must_allow_views(notifying_authority, NB) :-
    sufficient_reason(NB),
    notified_body(NB).
conclusion_not_meet_requirements(NB) :-
    notified_body(NB).
must_restrict(notifying_authority, NB) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).
must_suspend(notifying_authority, NB) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).
must_withdraw_designation(notifying_authority, NB) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).
must_inform(notifying_authority, commission) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).
must_inform(notifying_authority, member_state) :-
    conclusion_not_meet_requirements(NB),
    notified_body(NB).
designation_status(NB, Status) :-
    notified_body(NB),
    status(Status).
status(suspended).
status(restricted).
status(withdrawn).
member_status(Status) :-
    status(Status).
must_ensure_files_kept(notifying_authority, NB) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).
must_make_available(notifying_authority, NB, ONA) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB),
    other_notifying_authority(ONA),
    ONA = ONA.
other_notifying_authority(ona).
must_make_available(notifying_authority, NB, MSA) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB),
    market_surveillance_authority(MSA),
    MSA = MSA.
required_assess_impact_on_certificates(notifying_authority, NB) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).
required_submit_report(notifying_authority, commission) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).
required_require_nb_suspend_or_withdraw(notifying_authority, NB) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).
required_inform(notifying_authority, commission) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB).
required_provide_info_to_nca(notifying_authority, Provider) :-
    designation_status(NB, Status),
    member_status(Status),
    notified_body(NB),
    provider(Provider),
    provider(Provider).
certificates_remain_valid(NB) :-
    designation_status(NB, suspended),
    notifying_authority_confirms_no_risk(NB),
    within_one_month(NB).
certificates_remain_valid(NB) :-
    designation_status(NB, restricted),
    notifying_authority_confirms_no_risk(NB),
    within_one_month(NB).
notifying_authority_confirms_no_risk(NB) :-
    notifying_authority(A),
    notified_body(NB),
    A = A.
within_one_month(NB) :-
    notified_body(NB).
certificates_remain_valid_after_withdrawal(NB) :-
    designation_status(NB, withdrawn),
    national_competent_authority(NCA),
    national_competent_authority(NCA),
    no_risk_to_health_safety(NB),
    another_notified_body_confirmed(AnotherNB),
    assessment_completed_within(AnotherNB, 12).
no_risk_to_health_safety(NB) :-
    notified_body(NB).
assessment_completed_within(AnotherNB, 12) :-
    another_notified_body_confirmed(AnotherNB).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(relevant_change_of_notification/1, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_applies/1, 'celex:32024R1689/oj#art_36').
provenance(non_extension_change_applies/1, 'celex:32024R1689/oj#art_36').
provenance(ceasing_conformity_assessment/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(another_notified_body_confirmed/1, 'celex:32024R1689/oj#art_36').
provenance(related_nb/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_validity_extended/1, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(ceased_activity/1, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason/1, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_allow_views/2, 'celex:32024R1689/oj#art_36').
provenance(conclusion_not_meet_requirements/1, 'celex:32024R1689/oj#art_36').
provenance(must_restrict/2, 'celex:32024R1689/oj#art_36').
provenance(must_suspend/2, 'celex:32024R1689/oj#art_36').
provenance(designation_status/2, 'celex:32024R1689/oj#art_36').
provenance(status/1, 'celex:32024R1689/oj#art_36').
provenance(member_status/1, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_available/3, 'celex:32024R1689/oj#art_36').
provenance(other_notifying_authority/1, 'celex:32024R1689/oj#art_36').
provenance(required_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(required_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(required_require_nb_suspend_or_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(required_inform/2, 'celex:32024R1689/oj#art_36').
provenance(required_provide_info_to_nca/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid/1, 'celex:32024R1689/oj#art_36').
provenance(notifying_authority_confirms_no_risk/1, 'celex:32024R1689/oj#art_36').
provenance(within_one_month/1, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(no_risk_to_health_safety/1, 'celex:32024R1689/oj#art_36').
provenance(assessment_completed_within/2, 'celex:32024R1689/oj#art_36').
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
declared(competence_doubt_applies/1, 'reasons to doubt competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(fulfilment_doubt_applies/1, 'reasons to doubt continued fulfilment of requirements by a notified body', 'celex:32024R1689/oj#art_37').
declared(sensitive_information_obtained/1, 'sensitive information obtained in investigations', 'celex:32024R1689/oj#art_37').
declared(commission_ascertains_not_meeting_requirements/1, 'commission determines a notified body does not meet notification requirements', 'celex:32024R1689/oj#art_37').
declared(member_state_fails_to_take_corrective_measures/1, 'member state does not take necessary corrective measures', 'celex:32024R1689/oj#art_37').
declared(member_state/1, 'member state of the Union', 'celex:32024R1689/oj#art_37').
declared(must_investigate/2, 'commission must investigate cases where competence or fulfilment is doubted', 'celex:32024R1689/oj#art_37').
declared(must_provide_information/2, 'notifying authority must provide information to the commission on request', 'celex:32024R1689/oj#art_37').
declared(must_treat_confidentially/2, 'commission must treat sensitive information confidentially', 'celex:32024R1689/oj#art_37').
declared(must_inform/3, 'commission must inform the notifying member state', 'celex:32024R1689/oj#art_37').
declared(must_request_corrective_measures/3, 'commission must request corrective measures from the notifying member state', 'celex:32024R1689/oj#art_37').
declared(permitted_suspend_designation/2, 'commission may suspend the designation of a notified body', 'celex:32024R1689/oj#art_37').
declared(permitted_restrict_designation/2, 'commission may restrict the designation of a notified body', 'celex:32024R1689/oj#art_37').
declared(permitted_withdraw_designation/2, 'commission may withdraw the designation of a notified body', 'celex:32024R1689/oj#art_37').
must_investigate(commission, Body) :-
    notified_body(Body),
    (   competence_doubt_applies(Body)
    ;   fulfilment_doubt_applies(Body)
    ).
must_provide_information(notifying_authority, information_about_notified_body(Body)) :-
    notified_body(Body).
must_treat_confidentially(commission, Info) :-
    sensitive_information_obtained(Info).
must_inform(commission, MS, Body) :-
    member_state(MS),
    commission_ascertains_not_meeting_requirements(Body).
must_request_corrective_measures(commission, MS, Body) :-
    member_state(MS),
    commission_ascertains_not_meeting_requirements(Body).
permitted_suspend_designation(commission, Body) :-
    commission_ascertains_not_meeting_requirements(Body),
    member_state_fails_to_take_corrective_measures(Body).
permitted_restrict_designation(commission, Body) :-
    commission_ascertains_not_meeting_requirements(Body),
    member_state_fails_to_take_corrective_measures(Body).
permitted_withdraw_designation(commission, Body) :-
    commission_ascertains_not_meeting_requirements(Body),
    member_state_fails_to_take_corrective_measures(Body).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/3, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/3, 'celex:32024R1689/oj#art_37').
provenance(permitted_suspend_designation/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_restrict_designation/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_withdraw_designation/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(notified_by/2, 'notifying authority notifies notified body', 'celex:32024R1689/oj#art_38').
declared(coordination_of_notified_bodies/1, 'coordination and cooperation between notified bodies for high‑risk AI systems', 'celex:32024R1689/oj#art_38').
declared(participation_of_notified_body_in_group/3, 'participation of a notified body in the sectoral group referred to in paragraph 1', 'celex:32024R1689/oj#art_38').
must_ensure(commission, coordination_of_notified_bodies(S)) :-
    high_risk_ai_system(S).
must_ensure(N, participation_of_notified_body_in_group(N, B, group_par_1)) :-
    notifying_authority(N),
    notified_body(B),
    notified_by(N, B).
must_provide(commission, exchange_of_knowledge_between_notifying_authorities).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country with which the Union has concluded an agreement', 'celex:32024R1689/oj#art_39').
declared(union_agreement_with_third_country_applies/1, 'the Union has concluded an agreement with the third country of the body', 'celex:32024R1689/oj#art_39').
declared(requirements_laid_down_in_art_31_applies/1, 'the body meets the requirements laid down in article 31', 'celex:32024R1689/oj#art_39').
declared(equivalent_level_of_compliance_applies/1, 'the body ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
declared(permitted_authorisation_of_third_country_conformity_assessment_body/1, 'may be authorised to carry out the activities of notified bodies', 'celex:32024R1689/oj#art_39').
third_country_conformity_assessment_body(S) :-
    conformity_assessment_body(S),
    union_agreement_with_third_country_applies(S).
permitted_authorisation_of_third_country_conformity_assessment_body(S) :-
    third_country_conformity_assessment_body(S),
    (   requirements_laid_down_in_art_31_applies(S)
    ;   equivalent_level_of_compliance_applies(S)
    ).
provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(permitted_authorisation_of_third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(conforms_to_harmonised_standard/2, 'system conforms to a harmonised standard', 'celex:32024R1689/oj#art_40').
declared(published_in_official_journal/1, 'standard reference published in Official Journal', 'celex:32024R1689/oj#art_40').
declared(participant_in_standardisation/1, 'entity participating in standardisation process', 'celex:32024R1689/oj#art_40').
declared(required_issue_standardisation_request/2, 'Commission must issue a standardisation request', 'celex:32024R1689/oj#art_40').
declared(required_consult/2, 'Commission must consult board or stakeholders', 'celex:32024R1689/oj#art_40').
declared(required_specify_standards/2, 'Commission must specify criteria for standards', 'celex:32024R1689/oj#art_40').
declared(required_request_evidence/3, 'Commission must request evidence of best efforts', 'celex:32024R1689/oj#art_40').
declared(required_promote_investment_and_innovation/1, 'Participants must promote investment and innovation', 'celex:32024R1689/oj#art_40').
declared(required_ensure_balanced_representation/1, 'Participants must ensure balanced representation', 'celex:32024R1689/oj#art_40').
presumed_conformant(S) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    conforms_to_harmonised_standard(S, HS),
    harmonised_standard(HS),
    published_in_official_journal(HS).
required_issue_standardisation_request(C, all_requirements) :-
    ai_office(C),
    ai_office(C).
required_consult(C, board) :-
    ai_office(C),
    ai_office(C).
required_consult(C, stakeholder) :-
    ai_office(C),
    ai_office(C).
required_specify_standards(C, clear_consistent) :-
    ai_office(C),
    ai_office(C).
required_request_evidence(C, european_standardisation_organisation, objectives) :-
    ai_office(C),
    ai_office(C).
required_promote_investment_and_innovation(P) :-
    participant_in_standardisation(P),
    participant_in_standardisation(P).
required_ensure_balanced_representation(P) :-
    participant_in_standardisation(P),
    participant_in_standardisation(P).
provenance(presumed_conformant/1, 'celex:32024R1689/oj#art_40').
provenance(required_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(required_consult/2, 'celex:32024R1689/oj#art_40').
provenance(required_specify_standards/2, 'celex:32024R1689/oj#art_40').
provenance(required_request_evidence/3, 'celex:32024R1689/oj#art_40').
provenance(required_promote_investment_and_innovation/1, 'celex:32024R1689/oj#art_40').
provenance(required_ensure_balanced_representation/1, 'celex:32024R1689/oj#art_40').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_41').
declared(advisory_forum/1, 'advisory forum referred to in art_67', 'celex:32024R1689/oj#art_41').
declared(committee/1, 'committee referred to in art_22', 'celex:32024R1689/oj#art_41').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard/1, 'harmonised standard', 'celex:32024R1689/oj#art_41').
declared(implementing_act/1, 'implementing act establishing common specifications', 'celex:32024R1689/oj#art_41').
declared(common_specification/1, 'common specification', 'celex:32024R1689/oj#art_41').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_41').
declared(general_purpose_ai_model/1, 'general‑purpose AI model', 'celex:32024R1689/oj#art_41').
declared(in_conformity_with_common_specifications/1, 'in conformity with the common specifications', 'celex:32024R1689/oj#art_41').
declared(technical_solution_meets_requirements/1, 'technical solution meeting the required requirements', 'celex:32024R1689/oj#art_41').
declared(assessment_positive/1, 'assessment by the Commission found appropriate', 'celex:32024R1689/oj#art_41').
permitted_adopt_common_specifications(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    condition_common_specifications_adoptable(Act).
condition_common_specifications_adoptable(Act) :-
    commission_requested_standardisation(Commission),
    (   request_not_accepted(Commission)
    ;   standards_not_delivered(Commission)
    ;   standards_insufficient_fundamental_rights(Commission)
    ;   standards_not_comply(Commission)
    ),
    no_harmonised_standard_reference_published(Act).
commission_requested_standardisation(Commission) :-
    commission(Commission).
request_not_accepted(Commission) :-
    commission(Commission).
standards_not_delivered(Commission) :-
    commission(Commission).
standards_insufficient_fundamental_rights(Commission) :-
    commission(Commission).
standards_not_comply(Commission) :-
    commission(Commission).
no_harmonised_standard_reference_published(_Act).
must_consult(Commission, AdvisoryForum) :-
    commission(Commission),
    advisory_forum(AdvisoryForum).
must_adopt_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    examination_procedure_applies(Act).
examination_procedure_applies(_Act).
must_inform_before_draft(Commission, Committee) :-
    commission(Commission),
    committee(Committee),
    condition_common_specifications_fulfilled(Commission).
condition_common_specifications_fulfilled(_Commission).
presumed_conformity(System) :-
    (   high_risk_ai_system(System)
    ;   general_purpose_ai_model(System)
    ),
    in_conformity_with_common_specifications(System).
must_assess_harmonised_standard(Commission, Standard) :-
    commission(Commission),
    harmonised_standard(Standard).
must_repeal_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    reference_published(Standard),
    harmonised_standard(Standard).
reference_published(_Standard).
must_justify_non_compliance(Provider, Solution) :-
    provider(Provider),
    (   high_risk_ai_system(System)
    ;   general_purpose_ai_model(System)
    ),
    not_compliant_with_common_specifications(Provider, System),
    technical_solution_meets_requirements(Solution).
not_compliant_with_common_specifications(_Provider, _System).
must_inform_member_state(MemberState, Commission) :-
    member_state(MemberState),
    commission(Commission).
must_assess_information(Commission) :-
    commission(Commission).
permitted_amend_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    assessment_positive(Commission).
provenance(permitted_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_before_draft/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_41').
provenance(must_assess_harmonised_standard/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_member_state/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_information/1, 'celex:32024R1689/oj#art_41').
provenance(permitted_amend_implementing_act/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').

% ==== celex:32024R1689/oj#art_42 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_42').
declared(reflective_data_training_and_testing_applies/1, 'system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting in which it is intended to be used', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_certified_and_published_applies/1, 'system certified or with a statement of conformity issued under a cybersecurity scheme and whose references have been published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_42').
declared(exempt_verification_of_requirements/2, 'presumption of conformity with the specified set of requirements', 'celex:32024R1689/oj#art_42').
exempt_verification_of_requirements(S, art_10_par_4) :-
    high_risk_ai_system(S),
    reflective_data_training_and_testing_applies(S).
exempt_verification_of_requirements(S, art_15) :-
    high_risk_ai_system(S),
    cybersecurity_certified_and_published_applies(S).
provenance(exempt_verification_of_requirements/2, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(required_conformity_assessment_procedure/3, 'provider must select a conformity assessment procedure for a high‑risk AI system', 'celex:32024R1689/oj#art_43').
declared(internal_control/1, 'internal‑control conformity‑assessment procedure', 'celex:32024R1689/oj#art_43').
declared(notified_body_assessment/1, 'conformity‑assessment procedure involving a notified body', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex3_pnt1/1, 'high‑risk AI system listed in annex III point 1', 'celex:32024R1689/oj#anx_3/pnt_1').
declared(listed_in_annex3_pnt2_8/1, 'high‑risk AI system listed in annex III points 2‑8', 'celex:32024R1689/oj#anx_3/pnt_2').
declared(harmonised_standard_applied/2, 'provider has applied a harmonised standard to the AI system', 'celex:32024R1689/oj#art_40').
declared(common_specification_applied/2, 'provider has applied a common specification to the AI system', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_exists/1, 'harmonised standards referred to in art 40 exist for the AI system', 'celex:32024R1689/oj#art_40').
declared(common_specification_available/1, 'common specifications referred to in art 41 are available for the AI system', 'celex:32024R1689/oj#art_41').
declared(provider_not_fully_applied_harmonised_standard/2, 'provider has not applied, or has only partially applied, the harmonised standard', 'celex:32024R1689/oj#art_43').
declared(provider_not_applied_common_specification/2, 'provider has not applied the common specification', 'celex:32024R1689/oj#art_43').
declared(restricted_harmonised_standard_partially_applied/2, 'a harmonised standard is published with a restriction and only the restricted part has been applied', 'celex:32024R1689/oj#art_43').
declared(substantial_modification/1, 'change to an AI system after market placement affecting compliance', 'celex:32024R1689/oj#anx_3').
declared(pre_determined_change/1, 'change pre‑determined by the provider and documented in the technical documentation', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
declared(notified_body/1, 'conformity assessment body notified in accordance with the regulation', 'celex:32024R1689/oj#art_22').
declared(notified_body_compliance_assessed/1, 'compliance of the notified body with the requirements of art 31 has been assessed', 'celex:32024R1689/oj#art_31').
declared(permitted_control_conformity/2, 'notified body is entitled to control conformity of the high‑risk AI system', 'celex:32024R1689/oj#art_43').
required_conformity_assessment_procedure(Provider, System, Procedure) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    (   harmonised_standard_applied(Provider, System)
    ;   common_specification_applied(Provider, System)
    ),
    (   Procedure = internal_control
    ;   Procedure = notified_body_assessment
    ).
required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    \+ harmonised_standard_exists(System),
    \+ common_specification_available(System).
required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    provider_not_fully_applied_harmonised_standard(Provider, System).
required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    common_specification_available(System),
    provider_not_applied_common_specification(Provider, System).
required_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt1(System),
    restricted_harmonised_standard_partially_applied(Provider, System).
required_conformity_assessment_procedure(Provider, System, internal_control) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_pnt2_8(System).
required_new_conformity_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    substantial_modification(System),
    \+ pre_determined_change(System).
permitted_control_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    notified_body_compliance_assessed(Body).
provenance(required_conformity_assessment_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(internal_control/1, 'celex:32024R1689/oj#art_43').
provenance(notified_body_assessment/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex3_pnt1/1, 'celex:32024R1689/oj#art_43').
provenance(listed_in_annex3_pnt2_8/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_applied/2, 'celex:32024R1689/oj#art_43').
provenance(common_specification_applied/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_exists/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_available/1, 'celex:32024R1689/oj#art_43').
provenance(provider_not_fully_applied_harmonised_standard/2, 'celex:32024R1689/oj#art_43').
provenance(provider_not_applied_common_specification/2, 'celex:32024R1689/oj#art_43').
provenance(restricted_harmonised_standard_partially_applied/2, 'celex:32024R1689/oj#art_43').
provenance(required_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_control_conformity/2, 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').

% ==== celex:32024R1689/oj#art_44 ====
declared(required_certificate_language/2, 'language in which a certificate must be drawn up', 'celex:32024R1689/oj#art_44').
declared(certificate_language/2, 'language used in a certificate', 'celex:32024R1689/oj#art_44').
declared(language_understood_by_authorities/2, 'language that can be easily understood by the relevant authorities in the Member State where the notified body is established', 'celex:32024R1689/oj#art_44').
declared(certificate_issued_by/2, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_for_system/2, 'certificate that applies to an AI system', 'celex:32024R1689/oj#art_44').
declared(covered_by_annex_1/1, 'AI system covered by annex 1', 'celex:32024R1689/oj#art_44').
declared(covered_by_annex_3/1, 'AI system covered by annex 3', 'celex:32024R1689/oj#art_44').
declared(required_certificate_validity_limit/2, 'maximum validity period (in years) for a certificate', 'celex:32024R1689/oj#art_44').
declared(permitted_certificate_extension/3, 'extension of a certificate validity period requested by the provider', 'celex:32024R1689/oj#art_44').
declared(corrective_action_taken/2, 'corrective action taken by the provider for an AI system', 'celex:32024R1689/oj#art_44').
declared(deadline_set_by/3, 'deadline set by a notified body for corrective action', 'celex:32024R1689/oj#art_44').
declared(must_suspend_or_withdraw_certificate/2, 'suspend or withdraw a certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'give reasons for a decision concerning a certificate', 'celex:32024R1689/oj#art_44').
declared(required_appeal_procedure_available/1, 'make an appeal procedure available', 'celex:32024R1689/oj#art_44').
required_certificate_language(Body, Language) :-
    notified_body(Body),
    certificate_language(_C, Language),
    language_understood_by_authorities(Language, Body).
required_certificate_validity_limit(Cert, 5) :-
    certificate_for_system(Cert, S),
    covered_by_annex_1(S).
required_certificate_validity_limit(Cert, 4) :-
    certificate_for_system(Cert, S),
    covered_by_annex_3(S).
permitted_certificate_extension(Provider, Cert, Years) :-
    provider(Provider),
    certificate_for_system(Cert, S),
    covered_by_annex_1(S),
    Years =< 5.
permitted_certificate_extension(Provider, Cert, Years) :-
    provider(Provider),
    certificate_for_system(Cert, S),
    covered_by_annex_3(S),
    Years =< 4.
must_suspend_or_withdraw_certificate(Body, Cert) :-
    notified_body(Body),
    certificate_issued_by(Cert, Body),
    \+ corrective_action_taken(_P, _S),
    deadline_set_by(Body, Cert, _D).
must_give_reasons(Body, Cert) :-
    notified_body(Body),
    certificate_issued_by(Cert, Body).
required_appeal_procedure_available(Body) :-
    notified_body(Body).
provenance(required_certificate_language/2, 'celex:32024R1689/oj#art_44').
provenance(required_certificate_validity_limit/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_certificate_extension/3, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(required_appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform_notifying_authority/2, 'obligation of notified body to inform the notifying authority', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_notified_bodies/2, 'obligation of notified body to inform other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_provide_information_to_other_notified_bodies/2, 'obligation of notified body to provide information to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/1, 'obligation of notified body to safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform_notifying_authority(Body, union_technical_documentation_assessment_certificate) :-
    notified_body(Body).
must_inform_notifying_authority(Body, union_technical_documentation_assessment_certificate_supplement) :-
    notified_body(Body).
must_inform_notifying_authority(Body, quality_management_system_approval) :-
    notified_body(Body).
must_inform_notifying_authority(Body, refusal_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).
must_inform_notifying_authority(Body, restriction_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).
must_inform_notifying_authority(Body, suspension_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).
must_inform_notifying_authority(Body, withdrawal_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).
must_inform_notifying_authority(Body, refusal_quality_management_system_approval) :-
    notified_body(Body).
must_inform_notifying_authority(Body, suspension_quality_management_system_approval) :-
    notified_body(Body).
must_inform_notifying_authority(Body, withdrawal_quality_management_system_approval) :-
    notified_body(Body).
must_inform_notifying_authority(Body, circumstances_affecting_notification_scope) :-
    notified_body(Body).
must_inform_notifying_authority(Body, request_from_market_surveillance_authority) :-
    notified_body(Body).
must_inform_notifying_authority(Body, conformity_assessment_activities_on_request) :-
    notified_body(Body).
must_inform_other_notified_bodies(Body, refused_quality_management_system_approval) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, suspended_quality_management_system_approval) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, withdrawn_quality_management_system_approval) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, issued_quality_management_system_approval_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, refused_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, withdrawn_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, suspended_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, restricted_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, issued_union_technical_documentation_assessment_certificate_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_inform_other_notified_bodies(Body, issued_union_technical_documentation_assessment_certificate_supplement_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_provide_information_to_other_notified_bodies(Body, negative_conformity_assessment_results) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_provide_information_to_other_notified_bodies(Body, positive_conformity_assessment_results_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.
must_safeguard_confidentiality(Body) :-
    notified_body(Body).
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_information_to_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(permitted_authorisation/3, 'permission for market surveillance authority to authorise placing on market or putting into service', 'celex:32024R1689/oj#art_46').
declared(required_authorisation_conditions/2, 'obligation that authorisation be for limited period and conformity assessment without undue delay', 'celex:32024R1689/oj#art_46').
declared(permitted_put_into_service_without_authorisation/2, 'permission for law‑enforcement or civil protection authorities to put a high‑risk AI system into service without prior authorisation', 'celex:32024R1689/oj#art_46').
declared(must_stop_use_and_discard_results/2, 'obligation to stop use and discard results if authorisation is refused', 'celex:32024R1689/oj#art_46').
declared(permitted_authorisation_deemed_justified/2, 'permission that an authorisation is deemed justified when no objection is raised within 15 days', 'celex:32024R1689/oj#art_46').
declared(required_consultation_and_decision/3, 'obligation for the Commission to consult and decide on the justification of an authorisation', 'celex:32024R1689/oj#art_46').
declared(must_withdraw_authorisation/2, 'obligation to withdraw an authorisation when the Commission considers it unjustified', 'celex:32024R1689/oj#art_46').
declared(required_authorisation_only_under_legislation/1, 'obligation that derogations apply only where specific Union harmonisation legislation provides for them', 'celex:32024R1689/oj#art_46').
declared(specific_high_risk_ai_system/1, 'high‑risk AI system that is the object of the derogation', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional reason justifying derogation', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason_applies/2, 'exceptional reason applies to a given system', 'celex:32024R1689/oj#art_46').
declared(limited_period_authorisation/2, 'authorisation is for a limited period', 'celex:32024R1689/oj#art_46').
declared(conformity_assessment_without_undue_delay/1, 'conformity assessment is carried out without undue delay', 'celex:32024R1689/oj#art_46').
declared(civil_protection_authority/1, 'civil protection authority', 'celex:32024R1689/oj#art_46').
declared(urgency_situation/2, 'urgency situation justifying immediate use', 'celex:32024R1689/oj#art_46').
declared(authorisation_requested_during_or_after_use_without_undue_delay/1, 'authorisation is requested during or after use without undue delay', 'celex:32024R1689/oj#art_46').
declared(authorisation_refused/2, 'authorisation has been refused', 'celex:32024R1689/oj#art_46').
declared(receipt_of_information/2, 'market surveillance authority has received information about an authorisation', 'celex:32024R1689/oj#art_46').
declared(no_objection_within_15_days/2, 'no objection raised within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(objection_raised/2, 'objection raised by a Member State or the Commission', 'celex:32024R1689/oj#art_46').
declared(receipt_of_notification/2, 'Commission has received notification of an authorisation', 'celex:32024R1689/oj#art_46').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_46').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_46').
declared(operators_consulted/2, 'operators have been consulted', 'celex:32024R1689/oj#art_46').
declared(commission_considers_unjustified/2, 'Commission considers the authorisation unjustified', 'celex:32024R1689/oj#art_46').
declared(related_to_product_covered_by_legislation/1, 'system is related to a product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_46').
permitted_authorisation(Authority, placing_on_market, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    specific_high_risk_ai_system(System),
    exceptional_reason(Reason),
    exceptional_reason_applies(Reason, System).
permitted_authorisation(Authority, putting_into_service, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    specific_high_risk_ai_system(System),
    exceptional_reason(Reason),
    exceptional_reason_applies(Reason, System).
required_authorisation_conditions(Authority, System) :-
    limited_period_authorisation(Authority, System),
    conformity_assessment_without_undue_delay(System).
permitted_put_into_service_without_authorisation(Authority, System) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    high_risk_ai_system(System),
    specific_high_risk_ai_system(System),
    urgency_situation(Authority, System),
    exceptional_reason(public_security),
    authorisation_requested_during_or_after_use_without_undue_delay(System).
must_stop_use_and_discard_results(Authority, System) :-
    authorisation_refused(Authority, System),
    high_risk_ai_system(System).
permitted_authorisation_deemed_justified(Authority, System) :-
    receipt_of_information(Authority, System),
    no_objection_within_15_days(Authority, System).
required_consultation_and_decision(Commission, Authority, System) :-
    objection_raised(Authority, System),
    receipt_of_notification(Authority, System),
    commission(Commission),
    market_surveillance_authority(Authority),
    operators_consulted(Authority, System).
must_withdraw_authorisation(Authority, System) :-
    commission_considers_unjustified(Commission, System),
    market_surveillance_authority(Authority).
required_authorisation_only_under_legislation(System) :-
    high_risk_ai_system(System),
    related_to_product_covered_by_legislation(System).
provenance(permitted_authorisation/3, 'celex:32024R1689/oj#art_46').
provenance(required_authorisation_conditions/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_results/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_authorisation_deemed_justified/2, 'celex:32024R1689/oj#art_46').
provenance(required_consultation_and_decision/3, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(required_authorisation_only_under_legislation/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for a high‑risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_at_disposal/2, 'provider must keep the EU declaration of conformity at the disposal of national competent authorities for ten years after placement or putting into service', 'celex:32024R1689/oj#art_47').
declared(must_identify_system_in_declaration/2, 'provider must identify the high‑risk AI system in the EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(must_submit_copy_on_request/2, 'provider must submit a copy of the EU declaration of conformity to the national competent authority upon request', 'celex:32024R1689/oj#art_47').
declared(must_state_meets_requirements/2, 'EU declaration of conformity must state that the high‑risk AI system meets the requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_47').
declared(must_contain_information/2, 'EU declaration of conformity must contain the information set out in Annex 5', 'celex:32024R1689/oj#art_47').
declared(must_translate_declaration/2, 'EU declaration of conformity must be translated into a language easily understood by the national competent authorities of the Member States where the system is placed on the market or made available', 'celex:32024R1689/oj#art_47').
declared(must_assume_responsibility/2, 'by drawing up the EU declaration of conformity, the provider assumes responsibility for compliance with the requirements', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_up_to_date/2, 'provider must keep the EU declaration of conformity up‑to‑date as appropriate', 'celex:32024R1689/oj#art_47').
must_draw_up_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_declaration_at_disposal(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_identify_system_in_declaration(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_submit_copy_on_request(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_state_meets_requirements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_contain_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_translate_declaration(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_assume_responsibility(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_declaration_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(must_identify_system_in_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_state_meets_requirements/2, 'celex:32024R1689/oj#art_47').
provenance(must_contain_information/2, 'celex:32024R1689/oj#art_47').
provenance(must_translate_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'AI system provided digitally', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking/1, 'digital CE marking', 'celex:32024R1689/oj#art_48').
declared(easily_accessed_via_interface/1, 'CE marking can be easily accessed via the interface or machine‑readable code', 'celex:32024R1689/oj#art_48').
declared(affixing_not_possible/1, 'affixing CE marking not possible due to nature of the system', 'celex:32024R1689/oj#art_48').
declared(affixing_not_warranted/1, 'affixing CE marking not warranted due to nature of the system', 'celex:32024R1689/oj#art_48').
declared(identification_number_of_notified_body/1, 'identification number of the notified body', 'celex:32024R1689/oj#art_48').
declared(must_affix_identification_number/3, 'obligation to affix the identification number of the notified body', 'celex:32024R1689/oj#art_48').
declared(required_promotional_material_includes_identification_number/2, 'identification number must be indicated in promotional material', 'celex:32024R1689/oj#art_48').
declared(other_union_law_applies/1, 'high‑risk AI system is subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
declared(required_ce_marking_subject_to_general_principles/1, 'CE marking shall be subject to the general principles set out in the referenced provision', 'celex:32024R1689/oj#art_48').
declared(required_digital_ce_marking/1, 'digital CE marking shall be used for digitally provided high‑risk AI systems', 'celex:32024R1689/oj#art_48').
declared(required_affix_ce_marking_visibly_legibly_indelibly/1, 'CE marking shall be affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(required_ce_marking_indicates_other_union_law/1, 'CE marking shall indicate compliance with other applicable Union law', 'celex:32024R1689/oj#art_48').
required_ce_marking_subject_to_general_principles(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    ce_marking(S).
required_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_ce_marking(S),
    easily_accessed_via_interface(S),
    ce_marking(S).
required_affix_ce_marking_visibly_legibly_indelibly(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    high_risk_ai_system(S),
    \+ affixing_not_possible(S),
    \+ affixing_not_warranted(S).
must_affix_identification_number(Actor, NB, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    identification_number_of_notified_body(NB),
    identification_number_of_notified_body(NB),
    (Actor = body ; Actor = provider ; Actor = authorised_representative).
required_promotional_material_includes_identification_number(NB, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    identification_number_of_notified_body(NB),
    identification_number_of_notified_body(NB).
required_ce_marking_indicates_other_union_law(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    other_union_law_applies(S),
    other_union_law_applies(S).
provenance(required_ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(required_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_identification_number/3, 'celex:32024R1689/oj#art_48').
provenance(required_promotional_material_includes_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking_indicates_other_union_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(required_registration/2, 'obligation to register actor and system in EU database', 'celex:32024R1689/oj#art_49').
declared(not_high_risk_ai_system/1, 'system concluded not high‑risk by provider', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3/1, 'system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3_pnt_2/1, 'system listed in point 2 of Annex III', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3_point/2, 'system listed in a specific point of Annex III', 'celex:32024R1689/oj#art_49').
declared(public_authority_actor/1, 'deployer that is a public authority or equivalent', 'celex:32024R1689/oj#art_49').
declared(using/1, 'system is used', 'celex:32024R1689/oj#art_49').
declared(law_enforcement_area/1, 'system used in law‑enforcement, migration, asylum or border control', 'celex:32024R1689/oj#art_49').
declared(registration_in_database/2, 'system registered in a given EU database', 'celex:32024R1689/oj#art_49').
declared(secure_non_public_section/1, 'secure non‑public section of a database', 'celex:32024R1689/oj#art_49').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_49').
declared(permitted_access/2, 'entity may access a database section', 'celex:32024R1689/oj#art_49').
declared(required_secure_registration/2, 'obligation to register in secure non‑public section', 'celex:32024R1689/oj#art_49').
declared(required_national_registration/1, 'obligation to register at national level', 'celex:32024R1689/oj#art_49').
required_registration(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_pnt_2(System),
    (placing_on_market(System) ; putting_into_service(System)).
required_registration(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    not_high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
required_registration(Actor, System) :-
    deployer(Actor),
    public_authority_actor(Actor),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_pnt_2(System),
    (putting_into_service(System) ; using(System)).
required_secure_registration(System, Database) :-
    high_risk_ai_system(System),
    listed_in_annex_3_point(System, Point),
    member(Point, [1,6,7]),
    law_enforcement_area(System),
    registration_in_database(System, Database),
    secure_non_public_section(Database).
permitted_access(Entity, Database) :-
    (commission(Entity) ; national_competent_authority(Entity)),
    secure_non_public_section(Database).
required_national_registration(System) :-
    high_risk_ai_system(System),
    listed_in_annex_3_pnt_2(System).
provenance(required_registration/2, 'celex:32024R1689/oj#art_49').
provenance(not_high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3_pnt_2/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3_point/2, 'celex:32024R1689/oj#art_49').
provenance(public_authority_actor/1, 'celex:32024R1689/oj#art_49').
provenance(using/1, 'celex:32024R1689/oj#art_49').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#art_49').
provenance(registration_in_database/2, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(commission/1, 'celex:32024R1689/oj#art_49').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_49').
provenance(required_secure_registration/2, 'celex:32024R1689/oj#art_49').
provenance(required_national_registration/1, 'celex:32024R1689/oj#art_49').
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
declared(required_inform_natural_persons/2, 'provider must ensure natural persons are informed they are interacting with an AI system', 'celex:32024R1689/oj#art_50').
declared(interacts_directly_with_natural_persons/1, 'AI system is intended to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(obvious_interaction/1, 'the AI interaction is obvious to a reasonably well‑informed natural person', 'celex:32024R1689/oj#art_50').
declared(authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences/1, 'AI system is authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(public_reporting/1, 'the AI system is available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
declared(exempt_authorised_criminal_detection/1, 'exemption applies to AI systems authorised for criminal‑offence detection and not publicly reportable', 'celex:32024R1689/oj#art_50').
required_inform_natural_persons(Provider, S) :-
    provider(Provider),
    ai_system(S),
    interacts_directly_with_natural_persons(S),
    \+ obvious_interaction(S),
    \+ exempt_authorised_criminal_detection(S).
exempt_authorised_criminal_detection(S) :-
    authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences(S),
    \+ public_reporting(S).
provenance(required_inform_natural_persons/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_authorised_criminal_detection/1, 'celex:32024R1689/oj#art_50').
declared(required_mark_output_machine_readable/2, 'provider must ensure AI‑generated synthetic content is marked in a machine‑readable, detectable way', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generates synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(exempt_mark_output/1, 'exemption from marking obligations', 'celex:32024R1689/oj#art_50').
declared(assistive_function_for_standard_editing/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(not_substantially_alter_input/1, 'AI system does not substantially alter the input data provided by the deployer', 'celex:32024R1689/oj#art_50').
required_mark_output_machine_readable(Provider, S) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_mark_output(S).
exempt_mark_output(S) :-
    assistive_function_for_standard_editing(S).
exempt_mark_output(S) :-
    not_substantially_alter_input(S).
exempt_mark_output(S) :-
    authorised_by_law_to_detect_prevent_investigate_prosecute_criminal_offences(S).
provenance(required_mark_output_machine_readable/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_mark_output/1, 'celex:32024R1689/oj#art_50').
declared(required_inform_natural_persons_deployer/2, 'deployer must inform natural persons exposed to emotion‑recognition or biometric‑categorisation systems of the system’s operation', 'celex:32024R1689/oj#art_50').
required_inform_natural_persons_deployer(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ exempt_authorised_criminal_detection(S).
provenance(required_inform_natural_persons_deployer/2, 'celex:32024R1689/oj#art_50').
declared(required_disclose_generated_content/2, 'deployer must disclose that AI‑generated or manipulated content has been artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_content/1, 'AI system generates or manipulates image, audio, video or text content', 'celex:32024R1689/oj#art_50').
required_disclose_generated_content(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    generates_or_manipulates_content(S),
    \+ exempt_authorised_criminal_detection(S).
provenance(required_disclose_generated_content/2, 'celex:32024R1689/oj#art_50').
declared(required_provide_information/2, 'information required by paragraphs 1‑4 must be provided to natural persons in a clear, distinguishable manner at the latest at the first interaction', 'celex:32024R1689/oj#art_50').
declared(before_first_interaction/1, 'information is provided no later than the first interaction or exposure', 'celex:32024R1689/oj#art_50').
declared(accessibility_requirements_conform/1, 'information conforms to applicable accessibility requirements', 'celex:32024R1689/oj#art_50').
required_provide_information(Actor, S) :-
    (provider(Actor) ; deployer(Actor)),
    ai_system(S),
    ( required_inform_natural_persons(Actor, S)
    ; required_inform_natural_persons_deployer(Actor, S)
    ; required_mark_output_machine_readable(Actor, S)
    ; required_disclose_generated_content(Actor, S)
    ),
    before_first_interaction(S),
    accessibility_requirements_conform(S).
provenance(required_provide_information/2, 'celex:32024R1689/oj#art_50').
declared(required_encourage_codes_of_practice/1, 'AI Office shall encourage and facilitate the drawing up of Union‑level codes of practice for transparency obligations', 'celex:32024R1689/oj#art_50').
required_encourage_codes_of_practice(AIOffice) :-
    ai_office(AIOffice).
provenance(required_encourage_codes_of_practice/1, 'celex:32024R1689/oj#art_50').
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
declared(general_purpose_ai_model_with_systemic_risk/1, 'general‑purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_51').
declared(commission_equivalent_capabilities/1, 'capabilities or impact equivalent to those set out by a Commission decision or scientific panel alert', 'celex:32024R1689/oj#art_51').
declared(cumulative_floating_point_operations_exceeds_threshold/1, 'training computation exceeds 1025 floating point operations', 'celex:32024R1689/oj#art_51').
declared(must_adopt_delegated_acts/1, 'Commission shall adopt delegated acts to amend thresholds and supplement benchmarks', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    (   high_impact_capabilities(M)
    ;   commission_equivalent_capabilities(M)
    ).
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_floating_point_operations_exceeds_threshold(M).
must_adopt_delegated_acts(C) :-
    ai_office(C).
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(commission_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_floating_point_operations_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(condition_applies/1, 'condition referred to in art 51 paragraph 1', 'celex:32024R1689/oj#art_52').
declared(required_notification/2, 'provider must notify the Commission', 'celex:32024R1689/oj#art_52').
declared(permitted_present_arguments/2, 'provider may present arguments to demonstrate no systemic risk', 'celex:32024R1689/oj#art_52').
declared(arguments_not_substantiated/1, 'Commission concludes arguments are not sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(permitted_designate_systemic_risk/2, 'Commission may designate a model as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(must_publish_list/1, 'Commission shall publish the list of systemic‑risk models', 'celex:32024R1689/oj#art_52').
declared(must_keep_list_up_to_date/1, 'Commission shall keep the list up to date', 'celex:32024R1689/oj#art_52').

% ==== celex:32024R1689/oj#art_53 ====
declared(provides/2, 'provider provides AI model', 'celex:32024R1689/oj#art_53').
declared(open_source_model/2, 'AI model released under a free and open‑source licence', 'celex:32024R1689/oj#art_53').
declared(publicly_available_parameters/1, 'parameters of the AI model are publicly available', 'celex:32024R1689/oj#art_53').
declared(required_technical_documentation/2, 'provider must draw up and keep up‑to‑date technical documentation of the model', 'celex:32024R1689/oj#art_53').
declared(required_information_for_integrators/2, 'provider must draw up, keep up‑to‑date and make available information to AI‑system providers', 'celex:32024R1689/oj#art_53').
declared(required_copyright_policy/2, 'provider must put in place a policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(required_training_content_summary/2, 'provider must draw up and make publicly available a summary of training content', 'celex:32024R1689/oj#art_53').
declared(exempt_provider_of_general_purpose_ai_model/2, 'exemption from obligations for open‑source general‑purpose AI models without systemic risk', 'celex:32024R1689/oj#art_53').
declared(required_cooperation/2, 'provider shall cooperate with the Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(permitted_reliance_on_codes_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(required_confidentiality_obligation/2, 'information obtained shall be treated in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_53').
required_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).
required_information_for_integrators(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).
required_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).
required_training_content_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).
exempt_provider_of_general_purpose_ai_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    open_source_model(P, M),
    publicly_available_parameters(M),
    \+ systemic_risk(M).
required_cooperation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).
permitted_reliance_on_codes_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).
required_confidentiality_obligation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(required_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(required_information_for_integrators/2, 'celex:32024R1689/oj#art_53').
provenance(required_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(required_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_provider_of_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_53').
provenance(required_cooperation/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_reliance_on_codes_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(required_confidentiality_obligation/2, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
declared(third_country_provider/1, 'provider established in third countries', 'celex:32024R1689/oj#art_54').
declared(provider_of/2, 'provider supplies a general‑purpose AI model', 'celex:32024R1689/oj#art_54').
declared(mandate_received/2, 'mandate issued by provider to authorised representative', 'celex:32024R1689/oj#art_54').
declared(required_authorised_representative_appointment/2, 'provider must appoint an authorised representative before placing a model on the market', 'celex:32024R1689/oj#art_54').
declared(required_authorised_representative_enablement/2, 'provider must enable its authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_54').
declared(required_authorised_representative_task/2, 'authorised representative must perform a mandated task', 'celex:32024R1689/oj#art_54').
declared(retention_period_10_years/1, 'technical documentation must be retained for ten years after market placement', 'celex:32024R1689/oj#art_54').
declared(free_open_source_license/1, 'AI model is released under a free and open‑source licence', 'celex:32024R1689/oj#art_54').
declared(publicly_available_parameters/1, 'model parameters and architecture are publicly available', 'celex:32024R1689/oj#art_54').
declared(provider_acting_contrary/1, 'provider is acting contrary to its obligations', 'celex:32024R1689/oj#art_54').
declared(required_authorised_representative_termination/1, 'authorised representative must terminate the mandate and inform the AI Office', 'celex:32024R1689/oj#art_54').
declared(exempt_authorised_representative_obligation/1, 'exempt provider from the obligations of this article', 'celex:32024R1689/oj#art_54').
required_authorised_representative_appointment(P, S) :-
    provider(P),
    third_country_provider(P),
    general_purpose_ai_model(S).
required_authorised_representative_enablement(P, R) :-
    provider(P),
    authorised_representative(R),
    mandate_received(P, R).
required_authorised_representative_task(R, verify_technical_documentation) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S).
required_authorised_representative_task(R, retain_technical_documentation) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S),
    retention_period_10_years(S).
required_authorised_representative_task(R, provide_information) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S).
required_authorised_representative_task(R, cooperate) :-
    authorised_representative(R),
    provider(P),
    provider_of(P, S),
    general_purpose_ai_model(S).
required_authorised_representative_termination(R) :-
    authorised_representative(R),
    provider(P),
    provider_acting_contrary(P).
exempt_authorised_representative_obligation(P) :-
    provider(P),
    free_open_source_license(P),
    publicly_available_parameters(P),
    general_purpose_ai_model(S),
    provider_of(P, S),
    \+ systemic_risk(S).
provenance(required_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_54').
provenance(required_authorised_representative_enablement/2, 'celex:32024R1689/oj#art_54').
provenance(required_authorised_representative_task/2, 'celex:32024R1689/oj#art_54').
provenance(retention_period_10_years/1, 'celex:32024R1689/oj#art_54').
provenance(free_open_source_license/1, 'celex:32024R1689/oj#art_54').
provenance(publicly_available_parameters/1, 'celex:32024R1689/oj#art_54').
provenance(provider_acting_contrary/1, 'celex:32024R1689/oj#art_54').
provenance(required_authorised_representative_termination/1, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_perform_model_evaluation/2, 'provider must perform model evaluation in accordance with standardised protocols and tools', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risks/2, 'provider must assess and mitigate possible systemic risks at Union level', 'celex:32024R1689/oj#art_55').
declared(must_report_serious_incident_information/2, 'provider must keep track of, document and report information about serious incidents and corrective measures', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_protection/2, 'provider must ensure an adequate level of cybersecurity protection for the model and its physical infrastructure', 'celex:32024R1689/oj#art_55').
declared(permitted_rely_on_codes_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(permitted_use_harmonised_standard/2, 'provider may rely on a European harmonised standard to demonstrate conformity', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_means/2, 'provider must demonstrate alternative adequate means of compliance when not relying on a code of practice or harmonised standard', 'celex:32024R1689/oj#art_55').
declared(information/1, 'any information or documentation obtained pursuant to the obligations', 'celex:32024R1689/oj#art_55').
declared(obtained_under_art_55/1, 'information obtained pursuant to article 55', 'celex:32024R1689/oj#art_55').
declared(must_treat_confidentially/2, 'provider must treat information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_assess_and_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_report_serious_incident_information(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_ensure_cybersecurity_protection(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
permitted_rely_on_codes_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
permitted_use_harmonised_standard(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    harmonised_standard(_).
must_demonstrate_alternative_means(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ permitted_rely_on_codes_of_practice(P, M),
    \+ permitted_use_harmonised_standard(P, M).
must_treat_confidentially(P, I) :-
    provider(P),
    information(I),
    obtained_under_art_55(I).
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incident_information/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_use_harmonised_standard/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_means/2, 'celex:32024R1689/oj#art_55').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(must_encourage_and_facilitate_drawing_up_codes_of_practice/2, 'AI Office must encourage and facilitate drawing up codes of practice', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate_drawing_up_codes_of_practice(ai_office, C) :-
    code_of_practice(C).
declared(must_ensure_codes_cover_obligations/2, 'AI Office and Board must ensure codes of practice cover obligations from Art 53 and Art 55', 'celex:32024R1689/oj#art_56').
must_ensure_codes_cover_obligations(ai_office, C) :-
    code_of_practice(C),
    obligation_from_art(C, art_53),
    obligation_from_art(C, art_55).
must_ensure_codes_cover_obligations(board, C) :-
    code_of_practice(C),
    obligation_from_art(C, art_53),
    obligation_from_art(C, art_55).
declared(obligation_from_art/2, 'Code of practice includes obligations from the referenced article', 'celex:32024R1689/oj#art_56').
obligation_from_art(_C, _Art).
declared(required_issue_in_codes/1, 'Specific issues that must be covered by codes of practice', 'celex:32024R1689/oj#art_56').
required_issue_in_codes(information_up_to_date).
required_issue_in_codes(summary_detail).
required_issue_in_codes(systemic_risk_identification).
required_issue_in_codes(risk_assessment_and_management).
declared(must_include_required_issues/2, 'Codes of practice must include the required issues', 'celex:32024R1689/oj#art_56').
must_include_required_issues(ai_office, C) :-
    code_of_practice(C),
    required_issue_in_codes(_Issue).
must_include_required_issues(board, C) :-
    code_of_practice(C),
    required_issue_in_codes(_Issue).
declared(provider_of_general_purpose_ai_model/1, 'Provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_56').
provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(_).
declared(permitted_invite_to_participate_in_codes/2, 'AI Office may invite providers or authorities to participate in drawing up codes of practice', 'celex:32024R1689/oj#art_56').
permitted_invite_to_participate_in_codes(ai_office, P) :-
    provider_of_general_purpose_ai_model(P).
permitted_invite_to_participate_in_codes(ai_office, A) :-
    national_competent_authority(A).
declared(stakeholder/1, 'Relevant stakeholder that may support the code‑of‑practice process', 'celex:32024R1689/oj#art_56').
stakeholder(S) :-
    civil_society_organisation(S).
stakeholder(S) :-
    industry(S).
stakeholder(S) :-
    academia(S).
stakeholder(S) :-
    downstream_provider(S).
stakeholder(S) :-
    independent_expert(S).
declared(permitted_support_process/2, 'Stakeholders may support the code‑of‑practice drafting process', 'celex:32024R1689/oj#art_56').
permitted_support_process(ai_office, S) :-
    stakeholder(S).
declared(must_ensure_codes_set_objectives_and_measures/2, 'AI Office and Board must ensure codes set objectives and contain commitments/measures', 'celex:32024R1689/oj#art_56').
must_ensure_codes_set_objectives_and_measures(ai_office, C) :-
    code_of_practice(C),
    objectives_set(C),
    measures_included(C).
must_ensure_codes_set_objectives_and_measures(board, C) :-
    code_of_practice(C),
    objectives_set(C),
    measures_included(C).
declared(objectives_set/1, 'Objectives are clearly set out in the code of practice', 'celex:32024R1689/oj#art_56').
objectives_set(_).
declared(measures_included/1, 'Commitments or measures, including KPIs, are included in the code of practice', 'celex:32024R1689/oj#art_56').
measures_included(_).
declared(must_take_due_account_of_needs_and_interests/2, 'AI Office and Board must take due account of needs and interests of all interested parties', 'celex:32024R1689/oj#art_56').
must_take_due_account_of_needs_and_interests(ai_office, C) :-
    code_of_practice(C),
    needs_and_interests_accounted(C).
must_take_due_account_of_needs_and_interests(board, C) :-
    code_of_practice(C),
    needs_and_interests_accounted(C).
declared(needs_and_interests_accounted/1, 'Needs and interests of all interested parties are taken into account', 'celex:32024R1689/oj#art_56').
needs_and_interests_accounted(_).
declared(must_ensure_participants_report_regularly/2, 'AI Office must ensure participants report regularly on implementation', 'celex:32024R1689/oj#art_56').
must_ensure_participants_report_regularly(ai_office, C) :-
    code_of_practice(C),
    participants_report_regularly(C).
declared(participants_report_regularly/1, 'Participants report regularly on commitments and outcomes', 'celex:32024R1689/oj#art_56').
participants_report_regularly(_).
declared(must_monitor_and_evaluate_codes/2, 'AI Office and Board must regularly monitor and evaluate achievement of code objectives', 'celex:32024R1689/oj#art_56').
must_monitor_and_evaluate_codes(ai_office, C) :-
    code_of_practice(C),
    monitor_and_evaluate(C).
must_monitor_and_evaluate_codes(board, C) :-
    code_of_practice(C),
    monitor_and_evaluate(C).
declared(monitor_and_evaluate/1, 'Monitoring and evaluation of code objectives', 'celex:32024R1689/oj#art_56').
monitor_and_evaluate(_).
declared(must_publish_assessment_of_codes/2, 'AI Office and Board must publish assessment of adequacy of codes', 'celex:32024R1689/oj#art_56').
must_publish_assessment_of_codes(ai_office, C) :-
    code_of_practice(C),
    assessment_published(C).
must_publish_assessment_of_codes(board, C) :-
    code_of_practice(C),
    assessment_published(C).
declared(assessment_published/1, 'Assessment of adequacy of the code of practice is published', 'celex:32024R1689/oj#art_56').
assessment_published(_).
declared(permitted_approve_code_of_practice/2, 'Commission may approve a code of practice by implementing act', 'celex:32024R1689/oj#art_56').
permitted_approve_code_of_practice(commission, C) :-
    code_of_practice(C).
declared(required_adopt_implementing_act/2, 'Implementing act shall be adopted in accordance with the examination procedure', 'celex:32024R1689/oj#art_56').
required_adopt_implementing_act(Act, Procedure) :-
    implementing_act(Act),
    examination_procedure(Procedure).
declared(implementing_act/1, 'An implementing act', 'celex:32024R1689/oj#art_56').
implementing_act(_).
declared(examination_procedure/1, 'Examination procedure referred to in Art 98 paragraph 2', 'celex:32024R1689/oj#art_56').
examination_procedure(_).
declared(permitted_invite_to_adhere/2, 'AI Office may invite providers to adhere to the codes of practice', 'celex:32024R1689/oj#art_56').
permitted_invite_to_adhere(ai_office, P) :-
    provider_of_general_purpose_ai_model(P).
declared(permitted_adhere_limited/1, 'Provider may adhere limitedly to obligations from Art 53 when no systemic risk', 'celex:32024R1689/oj#art_56').
permitted_adhere_limited(P) :-
    provider_of_general_purpose_ai_model(P),
    \+ systemic_risk_present(P).
declared(permitted_adhere_full/1, 'Provider may adhere to the full code if it declares interest', 'celex:32024R1689/oj#art_56').
permitted_adhere_full(P) :-
    provider_of_general_purpose_ai_model(P),
    declares_interest(P).
declared(systemic_risk_present/1, 'Provider presents systemic risks', 'celex:32024R1689/oj#art_56').
systemic_risk_present(_P) :-
    systemic_risk(_).
declared(declares_interest/1, 'Provider explicitly declares interest to join the full code', 'celex:32024R1689/oj#art_56').
declares_interest(_).
declared(must_encourage_and_facilitate_review_of_codes/1, 'AI Office must encourage and facilitate review and adaptation of codes', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate_review_of_codes(ai_office).
declared(must_assist_assessment_of_standards/1, 'AI Office must assist in the assessment of available standards', 'celex:32024R1689/oj#art_56').
must_assist_assessment_of_standards(ai_office) :-
    harmonised_standard(_).
declared(required_deadline_codes_of_practice/1, 'Codes of practice shall be ready by 2 May 2025', 'celex:32024R1689/oj#art_56').
required_deadline_codes_of_practice('2025-05-02').
declared(must_take_steps_to_finalize_codes/1, 'AI Office shall take necessary steps to finalise codes', 'celex:32024R1689/oj#art_56').
must_take_steps_to_finalize_codes(ai_office) :-
    code_of_practice(_).
declared(permitted_provide_common_rules/1, 'Commission may provide common rules if code not finalised or inadequate', 'celex:32024R1689/oj#art_56').
permitted_provide_common_rules(commission) :-
    deadline_passed('2025-08-02'),
    ( \+ code_finalised ; \+ code_adequate ).
declared(deadline_passed/1, 'Specified deadline has passed', 'celex:32024R1689/oj#art_56').
deadline_passed(_).
declared(code_finalised/0, 'Code of practice has been finalised', 'celex:32024R1689/oj#art_56').
code_finalised.
declared(code_adequate/0, 'Code of practice has been assessed as adequate', 'celex:32024R1689/oj#art_56').
code_adequate.
declared(code_of_practice/1, 'A code of practice', 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate_drawing_up_codes_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_codes_cover_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(obligation_from_art/2, 'celex:32024R1689/oj#art_56').
provenance(required_issue_in_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_include_required_issues/2, 'celex:32024R1689/oj#art_56').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_participate_in_codes/2, 'celex:32024R1689/oj#art_56').
provenance(stakeholder/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_support_process/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_codes_set_objectives_and_measures/2, 'celex:32024R1689/oj#art_56').
provenance(objectives_set/1, 'celex:32024R1689/oj#art_56').
provenance(measures_included/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_due_account_of_needs_and_interests/2, 'celex:32024R1689/oj#art_56').
provenance(needs_and_interests_accounted/1, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_participants_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(participants_report_regularly/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_codes/2, 'celex:32024R1689/oj#art_56').
provenance(monitor_and_evaluate/1, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment_of_codes/2, 'celex:32024R1689/oj#art_56').
provenance(assessment_published/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_approve_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(required_adopt_implementing_act/2, 'celex:32024R1689/oj#art_56').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_56').
provenance(examination_procedure/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_adhere/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_adhere_limited/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_adhere_full/1, 'celex:32024R1689/oj#art_56').
provenance(systemic_risk_present/1, 'celex:32024R1689/oj#art_56').
provenance(declares_interest/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate_review_of_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_assist_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(required_deadline_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_steps_to_finalize_codes/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
provenance(deadline_passed/1, 'celex:32024R1689/oj#art_56').
provenance(code_finalised/0, 'celex:32024R1689/oj#art_56').
provenance(code_adequate/0, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
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
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_57').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_57').
declared(board/1, 'Board established under the AI Regulation', 'celex:32024R1689/oj#art_57').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_57').
declared(ai_regulatory_sandbox/1, 'AI regulatory sandbox', 'celex:32024R1689/oj#art_57').
declared(sandbox_plan/1, 'Specific plan and terms for participation in a sandbox', 'celex:32024R1689/oj#art_57').
declared(exit_report/1, 'Report detailing activities and outcomes of a sandbox', 'celex:32024R1689/oj#art_57').
declared(written_proof/1, 'Written proof of activities carried out in a sandbox', 'celex:32024R1689/oj#art_57').
declared(annual_report/1, 'Annual report on sandbox implementation', 'celex:32024R1689/oj#art_57').
declared(mitigation_measure/1, 'Measure to mitigate identified risks', 'celex:32024R1689/oj#art_57').
declared(administrative_fine/1, 'Administrative monetary penalty', 'celex:32024R1689/oj#art_57').
declared(liability/1, 'Legal liability for damage', 'celex:32024R1689/oj#art_57').
declared(established_under/2, 'Sandbox established under a specific paragraph', 'celex:32024R1689/oj#art_57').
declared(confidentiality_applies/1, 'Confidentiality provisions apply', 'celex:32024R1689/oj#art_78').
declared(agreement/2, 'Explicit agreement between provider and authority', 'celex:32024R1689/oj#art_57').
declared(national_data_protection_authority/1, 'National data protection authority', 'celex:32024R1689/oj#art_57').
declared(identified_in_sandbox/1, 'Risk identified during sandbox activities', 'celex:32024R1689/oj#art_57').
declared(decision/1, 'Decision to suspend testing', 'celex:32024R1689/oj#art_57').
declared(damage/1, 'Damage inflicted on third parties', 'celex:32024R1689/oj#art_57').
declared(complied_with_plan/1, 'Provider has complied with the specific sandbox plan', 'celex:32024R1689/oj#art_57').
declared(followed_guidance_good_faith/1, 'Provider has followed guidance in good faith', 'celex:32024R1689/oj#art_57').
declared(take_into_account/2, 'Authority takes a document into account', 'celex:32024R1689/oj#art_57').
declared(objective_improving_legal_certainty/1, 'Objective of improving legal certainty', 'celex:32024R1689/oj#art_57').
declared(objective_sharing_best_practices/1, 'Objective of sharing best practices', 'celex:32024R1689/oj#art_57').
declared(objective_fostering_innovation/1, 'Objective of fostering innovation', 'celex:32024R1689/oj#art_57').
declared(objective_evidence_based_learning/1, 'Objective of evidence‑based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_facilitating_market_access/1, 'Objective of facilitating market access', 'celex:32024R1689/oj#art_57').
declared(objective_cross_border_cooperation/1, 'Objective of cross‑border cooperation', 'celex:32024R1689/oj#art_57').
must_establish_sandbox(NCA, national) :-
    member_state(MS),
    national_competent_authority(NCA),
    member_state(MS).
provenance(must_establish_sandbox/2, 'celex:32024R1689/oj#art_57').
required_operational_by(Sandbox, date('2026-08-02')) :-
    ai_regulatory_sandbox(Sandbox).
provenance(required_operational_by/2, 'celex:32024R1689/oj#art_57').
must_allocate_resources(NCA) :-
    national_competent_authority(NCA).
provenance(must_allocate_resources/1, 'celex:32024R1689/oj#art_57').
must_cooperate(NCA, MSA) :-
    national_competent_authority(NCA),
    market_surveillance_authority(MSA).
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_57').
must_provide_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_provide_controlled_environment/1, 'celex:32024R1689/oj#art_57').
must_facilitate_development(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_facilitate_development/1, 'celex:32024R1689/oj#art_57').
must_include_testing_in_real_world_conditions(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_include_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_57').
must_provide_guidance(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_provide_guidance/2, 'celex:32024R1689/oj#art_57').
must_provide_supervision(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_provide_supervision/2, 'celex:32024R1689/oj#art_57').
must_provide_support(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_57').
must_provide_exit_report(NCA, Provider, Report) :-
    national_competent_authority(NCA),
    provider(Provider),
    exit_report(Report),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_provide_exit_report/3, 'celex:32024R1689/oj#art_57').
must_provide_written_proof(NCA, Provider, Proof) :-
    national_competent_authority(NCA),
    provider(Provider),
    written_proof(Proof),
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, par_1).
provenance(must_provide_written_proof/3, 'celex:32024R1689/oj#art_57').
must_submit_annual_report(NCA, Report) :-
    national_competent_authority(NCA),
    annual_report(Report),
    sandbox_established_since_one_year(NCA).
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_57').
must_inform(ai_office, NCA, sandbox_established) :-
    ai_office(AO),
    national_competent_authority(NCA).
provenance(must_inform/3, 'celex:32024R1689/oj#art_57').
must_make_public(ai_office, sandbox_list) :-
    ai_office(AO).
provenance(must_make_public/2, 'celex:32024R1689/oj#art_57').
must_coordinate(NCA, Board) :-
    national_competent_authority(NCA),
    board(Board).
provenance(must_coordinate/2, 'celex:32024R1689/oj#art_57').
must_exercise_supervisory_powers(NCA) :-
    national_competent_authority(NCA).
provenance(must_exercise_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
must_suspend_testing(NCA) :-
    national_competent_authority(NCA),
    risk(Risk),
    identified_in_sandbox(Risk),
    \+ mitigation_measure(Risk).
provenance(must_suspend_testing/1, 'celex:32024R1689/oj#art_57').
must_inform(ai_office, NCA, Decision) :-
    ai_office(AO),
    national_competent_authority(NCA),
    decision(Decision).
must_develop_interface(Commission) :-
    commission(Commission).
provenance(must_develop_interface/1, 'celex:32024R1689/oj#art_57').
must_coordinate(Commission, NCA) :-
    commission(Commission),
    national_competent_authority(NCA).
permitted_establish_joint_sandbox(NCA, OtherMS) :-
    member_state(OtherMS),
    national_competent_authority(NCA).
provenance(permitted_establish_joint_sandbox/2, 'celex:32024R1689/oj#art_57').
permitted_establish_sandbox(NCA, regional) :-
    national_competent_authority(NCA).
provenance(permitted_establish_sandbox/2, 'celex:32024R1689/oj#art_57').
permitted_establish_sandbox(NCA, local) :-
    national_competent_authority(NCA).
permitted_establish_sandbox(EDS, union_institutions) :-
    european_data_protection_supervisor(EDS).
permitted_provide_technical_support(Commission, NCA) :-
    commission(Commission),
    national_competent_authority(NCA).
provenance(permitted_provide_technical_support/2, 'celex:32024R1689/oj#art_57').
permitted_access_exit_report(Commission, Report) :-
    commission(Commission),
    exit_report(Report),
    confidentiality_applies(Report).
provenance(permitted_access_exit_report/2, 'celex:32024R1689/oj#art_57').
permitted_access_exit_report(Board, Report) :-
    board(Board),
    exit_report(Report),
    confidentiality_applies(Report).
permitted_public_release(Report) :-
    exit_report(Report),
    agreement(Provider, NCA),
    provider(Provider),
    national_competent_authority(NCA).
provenance(permitted_public_release/1, 'celex:32024R1689/oj#art_57').
prohibited_affect_other_sandboxes(NCA) :-
    national_competent_authority(NCA).
provenance(prohibited_affect_other_sandboxes/1, 'celex:32024R1689/oj#art_57').
prohibited_affect_supervisory_powers(NCA) :-
    national_competent_authority(NCA).
provenance(prohibited_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
exempt_administrative_fine(Provider) :-
    provider(Provider),
    complied_with_plan(Provider),
    followed_guidance_good_faith(Provider).
provenance(exempt_administrative_fine/1, 'celex:32024R1689/oj#art_57').
objective_improving_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
objective_sharing_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
provenance(objective_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
objective_fostering_innovation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').
objective_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
objective_facilitating_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').
objective_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
provenance(objective_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
must_associate_authority(NCA, DPA) :-
    national_competent_authority(NCA),
    national_data_protection_authority(DPA).
provenance(must_associate_authority/2, 'celex:32024R1689/oj#art_57').
must_associate_authority(NCA, OtherAuthority) :-
    national_competent_authority(NCA),
    authority(OtherAuthority).
liability(Provider, Damage) :-
    provider(Provider),
    damage(Damage).
provenance(liability/2, 'celex:32024R1689/oj#art_57').
take_into_account(MSA, Report) :-
    market_surveillance_authority(MSA),
    exit_report(Report).
provenance(take_into_account/2, 'celex:32024R1689/oj#art_57').
take_into_account(NB, Report) :-
    notified_body(NB),
    exit_report(Report).
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_58 ====
declared(implementing_act/1, 'implementing act specifying detailed arrangements for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(detailed_arrangements_for/2, 'subject and act for which detailed arrangements are specified', 'celex:32024R1689/oj#art_58').
declared(common_principle/1, 'common principle enumerated in implementing act', 'celex:32024R1689/oj#art_58').
declared(condition/1, 'condition that implementing act shall ensure', 'celex:32024R1689/oj#art_58').
declared(prospective_provider/1, 'entity that may become a provider of an AI system', 'celex:32024R1689/oj#art_58').
detailed_arrangements_for(_, _).
common_principle(_).
condition(_).
prospective_provider(_).
required_adopt_implementing_acts(commission, ImplementingAct) :-
    implementing_act(ImplementingAct),
    detailed_arrangements_for(ai_regulatory_sandbox, ImplementingAct).
required_include_common_principle(ImplementingAct, Principle) :-
    implementing_act(ImplementingAct),
    common_principle(Principle).
required_ensure(ImplementingAct, Condition) :-
    implementing_act(ImplementingAct),
    condition(Condition).
required_direct_to_pre_deployment_services(NCA, Provider) :-
    national_competent_authority(NCA),
    prospective_provider(Provider).
required_agree_testing_terms(NCA, Testing) :-
    national_competent_authority(NCA),
    testing_in_real_world_conditions(Testing).
required_protect_fundamental_rights(NCA, Testing) :-
    national_competent_authority(NCA),
    testing_in_real_world_conditions(Testing).
required_cooperate(NCA, OtherNCA) :-
    national_competent_authority(NCA),
    national_competent_authority(OtherNCA),
    NCA \= OtherNCA.
provenance(implementing_act/1, 'celex:32024R1689/oj#art_58').
provenance(detailed_arrangements_for/2, 'celex:32024R1689/oj#art_58').
provenance(common_principle/1, 'celex:32024R1689/oj#art_58').
provenance(condition/1, 'celex:32024R1689/oj#art_58').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_58').
provenance(required_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(required_include_common_principle/2, 'celex:32024R1689/oj#art_58').
provenance(required_ensure/2, 'celex:32024R1689/oj#art_58').
provenance(required_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(required_agree_testing_terms/2, 'celex:32024R1689/oj#art_58').
provenance(required_protect_fundamental_rights/2, 'celex:32024R1689/oj#art_58').
provenance(required_cooperate/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(lawfully_collected_for_other_purposes/1, 'personal data collected for purposes other than AI sandbox processing', 'celex:32024R1689/oj#art_59').
declared(in_ai_regulatory_sandbox/1, 'AI regulatory sandbox environment', 'celex:32024R1689/oj#art_59').
declared(condition_a_applies/2, 'condition a satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_b_applies/1, 'condition b satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_c_applies/1, 'condition c satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_d_applies/1, 'condition d satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_e_applies/1, 'condition e satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_f_applies/1, 'condition f satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_g_applies/1, 'condition g satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_h_applies/1, 'condition h satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_i_applies/1, 'condition i satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(condition_j_applies/1, 'condition j satisfied for sandbox processing', 'celex:32024R1689/oj#art_59').
declared(based_on_specific_union_or_national_law/2, 'processing is based on a specific Union or national law', 'celex:32024R1689/oj#art_59').
permitted_processing_of_personal_data_in_sandbox(Data) :-
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    in_ai_regulatory_sandbox(Sandbox),
    condition_a_applies(Sandbox, Data),
    condition_b_applies(Data),
    condition_c_applies(Sandbox),
    condition_d_applies(Data),
    condition_e_applies(Data),
    condition_f_applies(Data),
    condition_g_applies(Data),
    condition_h_applies(Sandbox),
    condition_i_applies(Sandbox),
    condition_j_applies(Sandbox).
required_processing_of_personal_data_in_sandbox_for_law_enforcement(Data) :-
    law_enforcement_authority(Authority),
    personal_data(Data),
    in_ai_regulatory_sandbox(Sandbox),
    based_on_specific_union_or_national_law(Authority, Data),
    conditions_paragraph1_met(Data).
conditions_paragraph1_met(Data) :-
    condition_a_applies(_, Data),
    condition_b_applies(Data),
    condition_c_applies(_),
    condition_d_applies(Data),
    condition_e_applies(Data),
    condition_f_applies(Data),
    condition_g_applies(Data),
    condition_h_applies(_),
    condition_i_applies(_),
    condition_j_applies(_).
condition_a_applies(_, _).
condition_b_applies(_).
condition_c_applies(_).
condition_d_applies(_).
condition_e_applies(_).
condition_f_applies(_).
condition_g_applies(_).
condition_h_applies(_).
condition_i_applies(_).
condition_j_applies(_).
provenance(permitted_processing_of_personal_data_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(required_processing_of_personal_data_in_sandbox_for_law_enforcement/1, 'celex:32024R1689/oj#art_59').
provenance(conditions_paragraph1_met/1, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_60').
declared(prospective_provider/1, 'entity that intends to become a provider of AI systems', 'celex:32024R1689/oj#art_60').
declared(testing_plan_submitted/2, 'real‑world testing plan submitted to the market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(authority_approved_testing/2, 'market surveillance authority approved the testing and its plan', 'celex:32024R1689/oj#art_60').
declared(testing_registered/2, 'testing registered with a Union‑wide unique identification number', 'celex:32024R1689/oj#art_60').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_60').
declared(data_transfer_safeguarded/1, 'data transferred to third countries only with appropriate safeguards', 'celex:32024R1689/oj#art_60').
declared(testing_duration_allowed/2, 'testing duration does not exceed six months, or an authorised extension', 'celex:32024R1689/oj#art_60').
declared(vulnerable_subjects_protected/1, 'subjects belonging to vulnerable groups are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_informed_and_agreement/2, 'deployer informed of all aspects and agreement on roles concluded', 'celex:32024R1689/oj#art_60').
declared(cooperation_agreement_in_place/2, 'agreement between provider and deployer specifying responsibilities', 'celex:32024R1689/oj#art_60').
declared(informed_consent_obtained/1, 'informed consent obtained from testing subjects', 'celex:32024R1689/oj#art_60').
declared(oversight_by_qualified/1, 'testing overseen by suitably qualified persons', 'celex:32024R1689/oj#art_60').
declared(decisions_reversible/1, 'predictions, recommendations or decisions of the AI system can be effectively reversed', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions(Provider, System) :-
    ( provider(Provider) ; prospective_provider(Provider) ),
    high_risk_ai_system(System),
    testing_plan_submitted(Provider, System),
    authority_approved_testing(Provider, System),
    testing_registered(Provider, System),
    established_in_union(Provider),
    data_transfer_safeguarded(Provider),
    testing_duration_allowed(Provider, System),
    vulnerable_subjects_protected(Provider),
    deployer_informed_and_agreement(Provider, Deployer),
    cooperation_agreement_in_place(Provider, Deployer),
    informed_consent_obtained(Provider),
    oversight_by_qualified(Provider),
    decisions_reversible(System).
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
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
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').

% ==== celex:32024R1689/oj#art_61 ====
declared(required_informed_consent/2, 'obligation to obtain freely‑given informed consent from subject for testing in real world conditions', 'celex:32024R1689/oj#art_61').
declared(informed_consent_obtained/2, 'condition that informed consent has been obtained from subject for a given testing', 'celex:32024R1689/oj#art_61').
declared(freely_given/1, 'consent is freely given', 'celex:32024R1689/oj#art_61').
declared(dated_and_documented/1, 'consent is dated and documented', 'celex:32024R1689/oj#art_61').
declared(copy_given_to_subject/2, 'a copy of the consent is given to the subject or their legal representative', 'celex:32024R1689/oj#art_61').
required_informed_consent(S, T) :-
    subject(S),
    testing_in_real_world_conditions(T),
    informed_consent_obtained(S, T).
informed_consent_obtained(S, T) :-
    informed_consent(S),
    testing_in_real_world_conditions(T),
    freely_given(S),
    dated_and_documented(S),
    copy_given_to_subject(S, T).
provenance(required_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_obtained/2, 'celex:32024R1689/oj#art_61').
provenance(freely_given/1, 'celex:32024R1689/oj#art_61').
provenance(dated_and_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_given_to_subject/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_62').
declared(eligibility_conditions_fulfilled/1, 'SME meets the eligibility conditions for the AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(selection_criteria_fulfilled/1, 'SME meets the selection criteria for the AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(priority_access_to_ai_regulatory_sandbox/1, 'SME granted priority access to the AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(smes/1, 'small or medium‑sized enterprise', 'celex:32024R1689/oj#art_62').
declared(local_public_authority/1, 'local public authority', 'celex:32024R1689/oj#art_62').
declared(awareness_raising_and_training/1, 'awareness‑raising and training activities tailored to SMEs, deployers and local public authorities', 'celex:32024R1689/oj#art_62').
declared(existing_dedicated_channel/1, 'existing dedicated communication channel', 'celex:32024R1689/oj#art_62').
declared(need_new_channel/1, 'new communication channel to be established', 'celex:32024R1689/oj#art_62').
declared(communication_channels/1, 'communication channels for advice and queries about the regulation', 'celex:32024R1689/oj#art_62').
declared(stakeholder/1, 'relevant stakeholder', 'celex:32024R1689/oj#art_62').
declared(participation_in_standardisation/1, 'participation of SMEs and stakeholders in the standardisation development process', 'celex:32024R1689/oj#art_62').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise operator', 'celex:32024R1689/oj#art_63').
declared(partner_enterprise/1, 'partner enterprise of a microenterprise', 'celex:32024R1689/oj#art_63').
declared(linked_enterprise/1, 'linked enterprise of a microenterprise', 'celex:32024R1689/oj#art_63').
declared(qms_element/1, 'element of the quality management system', 'celex:32024R1689/oj#art_63').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_63').
declared(considering_needs_of_microenterprises/1, 'consideration of microenterprise needs', 'celex:32024R1689/oj#art_63').
declared(without_affecting_protection/1, 'no impact on level of protection', 'celex:32024R1689/oj#art_63').
declared(without_affecting_high_risk_requirements/1, 'no impact on high‑risk AI system requirements', 'celex:32024R1689/oj#art_63').
declared(permitted_simplified_compliance/2, 'permission for microenterprises to comply with QMS elements in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(must_develop_guidelines/2, 'obligation for the Commission to develop guidelines for simplified QMS compliance', 'celex:32024R1689/oj#art_63').
declared(prohibited_exemption_from_other_requirements/1, 'prohibition of exemption from other regulatory obligations', 'celex:32024R1689/oj#art_63').
permitted_simplified_compliance(O, E) :-
    microenterprise(O),
    qms_element(E),
    qms_element(E),
    \+ partner_enterprise(O),
    \+ linked_enterprise(O).
must_develop_guidelines(C, simplified_qms_elements) :-
    commission(C),
    considering_needs_of_microenterprises(C),
    without_affecting_protection(C),
    without_affecting_high_risk_requirements(C).
prohibited_exemption_from_other_requirements(O) :-
    microenterprise(O),
    microenterprise(O).
considering_needs_of_microenterprises(C) :-
    commission(C),
    commission(C).
without_affecting_protection(C) :-
    commission(C),
    commission(C).
without_affecting_high_risk_requirements(C) :-
    commission(C),
    commission(C).
provenance(permitted_simplified_compliance/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exemption_from_other_requirements/1, 'celex:32024R1689/oj#art_63').
provenance(considering_needs_of_microenterprises/1, 'celex:32024R1689/oj#art_63').
provenance(without_affecting_protection/1, 'celex:32024R1689/oj#art_63').
provenance(without_affecting_high_risk_requirements/1, 'celex:32024R1689/oj#art_63').
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
declared(ai_office/1, 'AI Office', 'celex:32024R1689/oj#art_64').
declared(expertise_and_capabilities_in_ai/1, 'Union expertise and capabilities in AI', 'celex:32024R1689/oj#art_64').
declared(tasks_entrusted_to_ai_office/1, 'tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_64').
declared(ai_office_applies/1, 'AI Office applies to actor', 'celex:32024R1689/oj#art_64').
declared(member_state_applies/1, 'Member State applies to actor', 'celex:32024R1689/oj#art_64').
must_develop_expertise_and_capabilities(Commission, Union) :-
    ai_office(_),
    ai_office_applies(Commission),
    expertise_and_capabilities_in_ai(Union).
must_facilitate(MemberState, Union) :-
    ai_office(_),
    member_state_applies(MemberState),
    tasks_entrusted_to_ai_office(Union).
ai_office_applies(Actor) :-
    ai_office(_).
member_state_applies(Actor) :-
    member_state(Actor).
provenance(ai_office_applies/1, 'celex:32024R1689/oj#art_64').
provenance(member_state_applies/1, 'celex:32024R1689/oj#art_64').
provenance(must_develop_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(member_state/1, 'Member State of the EU', 'celex:32024R1689/oj#art_65').
declared(representative/1, 'Representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(represents/2, 'Representative represents a Member State', 'celex:32024R1689/oj#art_65').
declared(required_establishment/1, 'Establishment of the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(required_one_representative_per_member_state/1, 'Each Member State must have one representative on the Board', 'celex:32024R1689/oj#art_65').
declared(permitted_observer/2, 'Entity may participate as observer in Board meetings', 'celex:32024R1689/oj#art_65').
declared(permitted_attendance/2, 'Entity may attend Board meetings without voting', 'celex:32024R1689/oj#art_65').
declared(permitted_invitation/2, 'Authority may be invited to Board meetings', 'celex:32024R1689/oj#art_65').
declared(required_designation_period/2, 'Term length for Board representatives', 'celex:32024R1689/oj#art_65').
declared(must_ensure/2, 'Member State must ensure condition for its representative', 'celex:32024R1689/oj#art_65').
declared(must_establish/2, 'Board must establish standing sub‑groups', 'celex:32024R1689/oj#art_65').
declared(permitted_establish/2, 'Board may establish other sub‑groups', 'celex:32024R1689/oj#art_65').
declared(must_safeguard/2, 'Board must safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_65').
declared(required_chair/2, 'Board must be chaired by a Member State representative', 'celex:32024R1689/oj#art_65').
declared(must_provide/2, 'Entity must provide something for the Board', 'celex:32024R1689/oj#art_65').
declared(must_convene/2, 'Entity must convene Board meetings', 'celex:32024R1689/oj#art_65').
declared(must_prepare/2, 'Entity must prepare agenda for the Board', 'celex:32024R1689/oj#art_65').
required_establishment(board).
required_one_representative_per_member_state(MS) :-
    member_state(MS).
permitted_observer(european_data_protection_supervisor, board).
permitted_attendance(ai_office, board_meetings_without_voting).
permitted_invitation(_Authority, board_meeting).
required_designation_period(_Rep, three_years_renewable_once).
must_ensure(MS, board_representative_competent(Rep)) :-
    member_state(MS),
    representative(Rep),
    represents(Rep, MS).
must_ensure(MS, board_representative_contact_point(Rep)) :-
    member_state(MS),
    representative(Rep),
    represents(Rep, MS).
must_ensure(MS, board_representative_empowered(Rep)) :-
    member_state(MS),
    representative(Rep),
    represents(Rep, MS).
must_establish(board, standing_subgroup(market_surveillance)).
must_establish(board, standing_subgroup(notifying_authorities)).
permitted_establish(board, other_subgroup).
must_safeguard(board, objectivity_and_impartiality).
required_chair(board, Rep) :-
    representative(Rep).
must_provide(ai_office, secretariat(board)).
must_convene(ai_office, meeting(board)).
must_prepare(ai_office, agenda(board)).
provenance(required_establishment/1, 'celex:32024R1689/oj#art_65').
provenance(required_one_representative_per_member_state/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_observer/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_attendance/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_invitation/2, 'celex:32024R1689/oj#art_65').
provenance(required_designation_period/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_65').
provenance(required_chair/2, 'celex:32024R1689/oj#art_65').
provenance(must_provide/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'Board of the AI Regulation', 'celex:32024R1689/oj#art_66').
board(board).
declared(must_advise/2, 'Obligation for the Board to advise a target', 'celex:32024R1689/oj#art_66').
must_advise(board, commission).
must_advise(board, member_state).
declared(must_assist/2, 'Obligation for the Board to assist a target', 'celex:32024R1689/oj#art_66').
must_assist(board, commission).
must_assist(board, member_state).
declared(permitted_coordinate_national_competent_authorities/1, 'Permission for the Board to coordinate among national competent authorities', 'celex:32024R1689/oj#art_66').
permitted_coordinate_national_competent_authorities(board).
declared(permitted_support_joint_market_surveillance_activities/1, 'Permission for the Board to support joint activities of market surveillance authorities', 'celex:32024R1689/oj#art_66').
permitted_support_joint_market_surveillance_activities(board).
declared(permitted_collect_and_share_expertise/1, 'Permission for the Board to collect and share technical and regulatory expertise and best practices among Member States', 'celex:32024R1689/oj#art_66').
permitted_collect_and_share_expertise(board).
declared(permitted_provide_advice_general_purpose_ai_models/1, 'Permission for the Board to provide advice on implementation of the Regulation concerning enforcement of rules on general‑purpose AI models', 'celex:32024R1689/oj#art_66').
permitted_provide_advice_general_purpose_ai_models(board).
declared(permitted_harmonise_administrative_practices/1, 'Permission for the Board to contribute to the harmonisation of administrative practices in the Member States', 'celex:32024R1689/oj#art_66').
permitted_harmonise_administrative_practices(board).
declared(permitted_issue_recommendations_and_opinions/1, 'Permission for the Board to issue recommendations and written opinions on matters related to the implementation of the Regulation', 'celex:32024R1689/oj#art_66').
permitted_issue_recommendations_and_opinions(board).
declared(permitted_support_ai_literacy_and_public_awareness/1, 'Permission for the Board to support the Commission in promoting AI literacy and public awareness', 'celex:32024R1689/oj#art_66').
permitted_support_ai_literacy_and_public_awareness(board).
declared(permitted_facilitate_common_criteria_and_understanding/1, 'Permission for the Board to facilitate development of common criteria and shared understanding among market operators and competent authorities', 'celex:32024R1689/oj#art_66').
permitted_facilitate_common_criteria_and_understanding(board).
declared(permitted_cooperate_with_union_entities/1, 'Permission for the Board to cooperate with other Union institutions, bodies, offices, agencies and expert groups', 'celex:32024R1689/oj#art_66').
permitted_cooperate_with_union_entities(board).
declared(permitted_cooperate_internationally/1, 'Permission for the Board to contribute to effective cooperation with competent authorities of third countries and international organisations', 'celex:32024R1689/oj#art_66').
permitted_cooperate_internationally(board).
declared(permitted_assist_expertise_development/1, 'Permission for the Board to assist national competent authorities and the Commission in developing organisational and technical expertise for implementation of the Regulation', 'celex:32024R1689/oj#art_66').
permitted_assist_expertise_development(board).
declared(permitted_assist_ai_office_sandboxes/1, 'Permission for the Board to assist the AI Office in supporting national competent authorities in AI regulatory sandboxes and facilitate cooperation among sandboxes', 'celex:32024R1689/oj#art_66').
permitted_assist_ai_office_sandboxes(board).
declared(permitted_contribute_guidance_documents/1, 'Permission for the Board to contribute to and advise on the development of guidance documents', 'celex:32024R1689/oj#art_66').
permitted_contribute_guidance_documents(board).
declared(permitted_advise_commission_international_ai/1, 'Permission for the Board to advise the Commission on international matters concerning AI', 'celex:32024R1689/oj#art_66').
permitted_advise_commission_international_ai(board).
declared(permitted_provide_qualified_alerts_opinions/1, 'Permission for the Board to provide opinions to the Commission on qualified alerts regarding general‑purpose AI models', 'celex:32024R1689/oj#art_66').
permitted_provide_qualified_alerts_opinions(board).
declared(permitted_receive_member_state_opinions/1, 'Permission for the Board to receive opinions from Member States on qualified alerts and national experiences regarding AI systems', 'celex:32024R1689/oj#art_66').
permitted_receive_member_state_opinions(board).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise/2, 'celex:32024R1689/oj#art_66').
provenance(must_assist/2, 'celex:32024R1689/oj#art_66').
provenance(permitted_coordinate_national_competent_authorities/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_support_joint_market_surveillance_activities/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_advice_general_purpose_ai_models/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_harmonise_administrative_practices/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_support_ai_literacy_and_public_awareness/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_facilitate_common_criteria_and_understanding/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_with_union_entities/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_internationally/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_advise_commission_international_ai/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_qualified_alerts_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_receive_member_state_opinions/1, 'celex:32024R1689/oj#art_66').
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
declared(required_advisory_forum/0, 'establishment of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(required_balanced_membership/0, 'membership balanced across stakeholder categories', 'celex:32024R1689/oj#art_67').
declared(required_appointment_of_members/0, 'Commission appoints members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(required_term_of_office_members/0, 'term of office of members is two years, extendable up to four years', 'celex:32024R1689/oj#art_67').
declared(required_permanent_member/1, 'permanent members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(required_draw_up_rules_of_procedure/0, 'advisory forum draws up its rules of procedure', 'celex:32024R1689/oj#art_67').
declared(required_elect_two_co_chairs/0, 'advisory forum elects two co‑chairs', 'celex:32024R1689/oj#art_67').
declared(required_term_of_office_co_chairs/0, 'term of office of co‑chairs is two years, renewable once', 'celex:32024R1689/oj#art_67').
declared(required_meetings_at_least_twice_per_year/0, 'advisory forum holds meetings at least twice a year', 'celex:32024R1689/oj#art_67').
declared(permitted_invite_experts/0, 'advisory forum may invite experts and other stakeholders to its meetings', 'celex:32024R1689/oj#art_67').
declared(permitted_prepare_opinions/0, 'advisory forum may prepare opinions, recommendations and written contributions on request of the Board or the Commission', 'celex:32024R1689/oj#art_67').
declared(permitted_establish_subgroups/0, 'advisory forum may establish standing or temporary sub‑groups', 'celex:32024R1689/oj#art_67').
declared(required_annual_report/0, 'advisory forum prepares an annual report on its activities', 'celex:32024R1689/oj#art_67').
declared(required_public_availability_of_report/0, 'the annual report shall be made publicly available', 'celex:32024R1689/oj#art_67').
required_advisory_forum.
required_balanced_membership.
required_appointment_of_members.
required_term_of_office_members.
required_permanent_member(fundamental_rights_agency).
required_permanent_member(enisa).
required_permanent_member(cen).
required_permanent_member(cenelec).
required_permanent_member(etsi).
required_draw_up_rules_of_procedure.
required_elect_two_co_chairs.
required_term_of_office_co_chairs.
required_meetings_at_least_twice_per_year.
permitted_invite_experts.
permitted_prepare_opinions.
permitted_establish_subgroups.
required_annual_report.
required_public_availability_of_report.
provenance(required_advisory_forum/0, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/0, 'celex:32024R1689/oj#art_67').
provenance(required_appointment_of_members/0, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office_members/0, 'celex:32024R1689/oj#art_67').
provenance(required_permanent_member/1, 'celex:32024R1689/oj#art_67').
provenance(required_draw_up_rules_of_procedure/0, 'celex:32024R1689/oj#art_67').
provenance(required_elect_two_co_chairs/0, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office_co_chairs/0, 'celex:32024R1689/oj#art_67').
provenance(required_meetings_at_least_twice_per_year/0, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite_experts/0, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_opinions/0, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_subgroups/0, 'celex:32024R1689/oj#art_67').
provenance(required_annual_report/0, 'celex:32024R1689/oj#art_67').
provenance(required_public_availability_of_report/0, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_68').
declared(implementing_act/1, 'Implementing act adopted by the Commission', 'celex:32024R1689/oj#art_68').
declared(scientific_panel/1, 'Scientific panel of independent experts', 'celex:32024R1689/oj#art_68').
declared(expert/1, 'Member of the scientific panel', 'celex:32024R1689/oj#art_68').
must_establish_scientific_panel(C) :-
    commission(C),
    commission(C),
    implementing_act(_A).
provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
required_expert(E) :-
    expertise_in_ai(E),
    independent_from_provider(E),
    diligent_objective(E).
provenance(required_expert/1, 'celex:32024R1689/oj#art_68').
expertise_in_ai(E) :-
    expert(E),
    expert(E).
provenance(expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
independent_from_provider(E) :-
    expert(E),
    expert(E).
provenance(independent_from_provider/1, 'celex:32024R1689/oj#art_68').
diligent_objective(E) :-
    expert(E),
    expert(E).
provenance(diligent_objective/1, 'celex:32024R1689/oj#art_68').
must_determine_number(C) :-
    commission(C),
    commission(C).
provenance(must_determine_number/1, 'celex:32024R1689/oj#art_68').
must_ensure_fair_representation(C) :-
    commission(C),
    commission(C).
provenance(must_ensure_fair_representation/1, 'celex:32024R1689/oj#art_68').
must_advise_ai_office(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).
provenance(must_advise_ai_office/1, 'celex:32024R1689/oj#art_68').
objective_alert_systemic_risk(SP, GP) :-
    scientific_panel(SP),
    scientific_panel(SP),
    general_purpose_ai_model(GP).
provenance(objective_alert_systemic_risk/2, 'celex:32024R1689/oj#art_68').
objective_develop_evaluation_tools(SP, GP) :-
    scientific_panel(SP),
    scientific_panel(SP),
    general_purpose_ai_model(GP).
provenance(objective_develop_evaluation_tools/2, 'celex:32024R1689/oj#art_68').
objective_advise_classification(SP, GP) :-
    scientific_panel(SP),
    scientific_panel(SP),
    general_purpose_ai_model(GP).
provenance(objective_advise_classification/2, 'celex:32024R1689/oj#art_68').
must_support_market_surveillance(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).
provenance(must_support_market_surveillance/1, 'celex:32024R1689/oj#art_68').
must_support_cross_border_market_surveillance(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).
provenance(must_support_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
must_support_union_safeguard(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).
provenance(must_support_union_safeguard/1, 'celex:32024R1689/oj#art_68').
must_perform_with_impartiality(E) :-
    expert(E),
    expert(E).
provenance(must_perform_with_impartiality/1, 'celex:32024R1689/oj#art_68').
must_ensure_confidentiality(E) :-
    expert(E),
    expert(E).
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
must_not_seek_instructions(E) :-
    expert(E),
    expert(E).
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
must_draw_up_declaration_of_interests(E) :-
    expert(E),
    expert(E).
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
must_make_declaration_public(E) :-
    expert(E),
    expert(E).
provenance(must_make_declaration_public/1, 'celex:32024R1689/oj#art_68').
must_establish_conflict_of_interest_management(AIO) :-
    ai_office(AIO),
    ai_office(AIO).
provenance(must_establish_conflict_of_interest_management/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_69').
declared(expert_of_scientific_panel/1, 'Expert belonging to the scientific panel', 'celex:32024R1689/oj#art_69').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_69').
declared(implementing_act/1, 'Implementing act referred to in the regulation', 'celex:32024R1689/oj#art_69').
permitted_call_upon_expert(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).
required_pay_fees(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).
required_fee_structure(ImplementingAct) :-
    implementing_act(ImplementingAct),
    takes_into_account(objectives_of_adequate_implementation),
    takes_into_account(cost_effectiveness),
    takes_into_account(ensuring_effective_access).
must_facilitate_access(Commission, MemberState, Expert) :-
    commission(Commission),
    member_state(MemberState),
    expert_of_scientific_panel(Expert).
must_ensure_combination_efficient(Commission) :-
    commission(Commission),
    combination_of_support_activities_efficient(Commission).
takes_into_account(objectives_of_adequate_implementation).
takes_into_account(cost_effectiveness).
takes_into_account(ensuring_effective_access).
combination_of_support_activities_efficient(Commission) :-
    commission(Commission).
provenance(permitted_call_upon_expert/2, 'celex:32024R1689/oj#art_69').
provenance(required_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(required_fee_structure/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/3, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_combination_efficient/1, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_70').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_70').
declared(required_designation_of_notifying_authority/2, 'Member State must designate a notifying authority', 'celex:32024R1689/oj#art_70').
declared(required_designation_of_market_surveillance_authority/2, 'Member State must designate a market surveillance authority', 'celex:32024R1689/oj#art_70').
declared(required_independent_exercise_of_powers/1, 'National competent authority must exercise powers independently, impartially and without bias', 'celex:32024R1689/oj#art_70').
declared(prohibited_incompatible_action/1, 'Members of national competent authorities must refrain from actions incompatible with their duties', 'celex:32024R1689/oj#art_70').
declared(required_communication_of_nca_to_commission/1, 'Member State must communicate identities and tasks of national competent authorities to the Commission', 'celex:32024R1689/oj#art_70').
declared(required_public_availability_of_contact_info/1, 'Member State must make contact information for competent authorities publicly available', 'celex:32024R1689/oj#art_70').
declared(required_designation_of_spoc/2, 'Member State must designate a market surveillance authority as single point of contact and notify the Commission', 'celex:32024R1689/oj#art_70').
declared(must_publish_spoc_list/1, 'Commission must publish list of single points of contact', 'celex:32024R1689/oj#art_70').
declared(required_provision_of_resources/1, 'Member State must ensure national competent authorities have adequate technical, financial and human resources', 'celex:32024R1689/oj#art_70').
declared(required_annual_assessment_of_resources/1, 'Member State must assess and update competence and resource requirements annually', 'celex:32024R1689/oj#art_70').
declared(required_cybersecurity_measures/1, 'National competent authorities must take appropriate measures to ensure adequate cybersecurity', 'celex:32024R1689/oj#art_70').
declared(required_confidentiality_observance/1, 'National competent authorities must act in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_70').
declared(required_reporting_of_resources/1, 'Member State must report to the Commission on financial and human resources of national competent authorities every two years', 'celex:32024R1689/oj#art_70').
declared(must_transmit_to_board/1, 'Commission must transmit reported information to the Board', 'celex:32024R1689/oj#art_70').
declared(must_facilitate_exchange/1, 'Commission must facilitate exchange of experience between national competent authorities', 'celex:32024R1689/oj#art_70').
declared(permitted_provision_of_guidance/1, 'National competent authorities may provide guidance and advice on implementation', 'celex:32024R1689/oj#art_70').
declared(required_consultation_of_other_authority/2, 'National competent authorities must consult the competent authority under other Union law when providing guidance on AI systems', 'celex:32024R1689/oj#art_70').
declared(other_competent_authority/1, 'Competent authority under other Union law', 'celex:32024R1689/oj#art_70').
declared(designated_competent_authority/1, 'Designated competent authority for Union institutions, bodies, offices or agencies', 'celex:32024R1689/oj#art_70').
required_designation_of_notifying_authority(MS, NA) :-
    member_state(MS),
    member_state(MS),
    notifying_authority(NA),
    notifying_authority(NA).
required_designation_of_market_surveillance_authority(MS, MA) :-
    member_state(MS),
    member_state(MS),
    market_surveillance_authority(MA),
    market_surveillance_authority(MA).
required_independent_exercise_of_powers(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).
prohibited_incompatible_action(Member) :-
    national_competent_authority(Member),
    national_competent_authority(Member).
required_communication_of_nca_to_commission(MS) :-
    member_state(MS),
    member_state(MS),
    commission(C),
    commission(C).
required_public_availability_of_contact_info(MS) :-
    member_state(MS),
    member_state(MS),
    commission(C),
    commission(C).
required_designation_of_spoc(MS, MA) :-
    member_state(MS),
    member_state(MS),
    market_surveillance_authority(MA),
    market_surveillance_authority(MA).
must_publish_spoc_list(C) :-
    commission(C),
    commission(C).
required_provision_of_resources(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).
required_annual_assessment_of_resources(MS) :-
    member_state(MS),
    member_state(MS).
required_cybersecurity_measures(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).
required_confidentiality_observance(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).
required_reporting_of_resources(MS) :-
    member_state(MS),
    member_state(MS),
    commission(C),
    commission(C).
must_transmit_to_board(C) :-
    commission(C),
    commission(C).
must_facilitate_exchange(C) :-
    commission(C),
    commission(C).
permitted_provision_of_guidance(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).
required_consultation_of_other_authority(Authority, Other) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority),
    other_competent_authority(Other),
    other_competent_authority(Other).
designated_competent_authority(european_data_protection_supervisor).
provenance(required_designation_of_notifying_authority/2, 'celex:32024R1689/oj#art_70').
provenance(required_designation_of_market_surveillance_authority/2, 'celex:32024R1689/oj#art_70').
provenance(required_independent_exercise_of_powers/1, 'celex:32024R1689/oj#art_70').
provenance(prohibited_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(required_communication_of_nca_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(required_public_availability_of_contact_info/1, 'celex:32024R1689/oj#art_70').
provenance(required_designation_of_spoc/2, 'celex:32024R1689/oj#art_70').
provenance(must_publish_spoc_list/1, 'celex:32024R1689/oj#art_70').
provenance(required_provision_of_resources/1, 'celex:32024R1689/oj#art_70').
provenance(required_annual_assessment_of_resources/1, 'celex:32024R1689/oj#art_70').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_70').
provenance(required_confidentiality_observance/1, 'celex:32024R1689/oj#art_70').
provenance(required_reporting_of_resources/1, 'celex:32024R1689/oj#art_70').
provenance(must_transmit_to_board/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange/1, 'celex:32024R1689/oj#art_70').
provenance(permitted_provision_of_guidance/1, 'celex:32024R1689/oj#art_70').
provenance(required_consultation_of_other_authority/2, 'celex:32024R1689/oj#art_70').
provenance(designated_competent_authority/1, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(eu_database/1, 'EU database for high‑risk AI systems', 'celex:32024R1689/oj#art_71').
declared(info_registered_under/2, 'information registered under a given article', 'celex:32024R1689/oj#art_71').
declared(data_section/1, 'section of annex containing data to be entered', 'celex:32024R1689/oj#art_71').
declared(exception_info/1, 'information exempt from public accessibility', 'celex:32024R1689/oj#art_71').
declared(consent_given/1, 'provider consent to make information publicly accessible', 'celex:32024R1689/oj#art_71').
declared(public_authority/1, 'public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(prospective_provider/1, 'entity that may become a provider', 'celex:32024R1689/oj#art_71').
must_set_up(commission, DB) :-
    eu_database(DB).
must_maintain(commission, DB) :-
    eu_database(DB).
must_consult(commission, experts) :-
    eu_database(DB),
    setting_functional_specifications(DB).
must_consult(commission, board) :-
    eu_database(DB),
    updating_functional_specifications(DB).
setting_functional_specifications(DB) :-
    eu_database(DB).
updating_functional_specifications(DB) :-
    eu_database(DB).
must_enter_data(Actor, DB, Section) :-
    eu_database(DB),
    data_section(Section),
    (provider(Actor) ; authorised_representative(Actor)).
must_enter_data(Actor, DB, Section) :-
    eu_database(DB),
    data_section(Section),
    deployer(Actor),
    public_authority(Actor).
data_section('anx_8_sec_1').
data_section('anx_8_sec_2').
data_section('anx_8_sec_3').
publicly_accessible_info(Info) :-
    info_registered_under(Info, art_49),
    \+ exception_info(Info).
exception_info('art_49_par_4_section').
exception_info('art_60_par_4_unp_1_pnt_c').
accessible_to_market_surveillance(Info) :-
    info_registered_under(Info, art_60).
publicly_accessible_info(Info) :-
    info_registered_under(Info, art_60),
    consent_given(Info).
must_be_controller(commission, DB) :-
    eu_database(DB).
must_provide_support(commission, Actor) :-
    eu_database(DB),
    (provider(Actor) ; prospective_provider(Actor) ; deployer(Actor)).
provenance(must_set_up/2, 'celex:32024R1689/oj#art_71').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(setting_functional_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(updating_functional_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/3, 'celex:32024R1689/oj#art_71').
provenance(data_section/1, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_info/1, 'celex:32024R1689/oj#art_71').
provenance(exception_info/1, 'celex:32024R1689/oj#art_71').
provenance(accessible_to_market_surveillance/1, 'celex:32024R1689/oj#art_71').
provenance(consent_given/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
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
declared(required_post_market_monitoring_system/2, 'provider must establish and document a post‑market monitoring system', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_nature_and_risk/1, 'system is proportionate to the nature of the AI technologies and the risks of the high‑risk AI system', 'celex:32024R1689/oj#art_72').
declared(required_data_collection/2, 'provider must collect, document and analyse relevant data on the performance of high‑risk AI systems', 'celex:32024R1689/oj#art_72').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_72').
declared(collects_and_analyzes_relevant_data/2, 'post‑market monitoring system collects and analyses relevant data for a given AI system', 'celex:32024R1689/oj#art_72').
declared(exempt_sensitive_operational_data/2, 'obligation does not cover sensitive operational data of deployers that are law‑enforcement authorities', 'celex:32024R1689/oj#art_72').
declared(required_based_on_plan/2, 'post‑market monitoring system must be based on a post‑market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan/1, 'plan for post‑market monitoring', 'celex:32024R1689/oj#art_72').
declared(based_on/2, 'system is based on a given plan', 'celex:32024R1689/oj#art_72').
declared(part_of/2, 'plan is part of technical documentation', 'celex:32024R1689/oj#art_72').
declared(technical_documentation/1, 'technical documentation referred to in the Regulation', 'celex:32024R1689/oj#art_72').
declared(required_integration_option/2, 'provider may integrate existing monitoring elements using the template, provided equivalent protection', 'celex:32024R1689/oj#art_72').
declared(existing_harmonised_legislation/1, 'high‑risk AI system already covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_72').
declared(integrates_elements_using_template/2, 'provider integrates necessary elements using the post‑market monitoring plan template', 'celex:32024R1689/oj#art_72').
required_post_market_monitoring_system(P, S) :-
    provider(P),
    post_market_monitoring_system(S),
    proportionate_to_nature_and_risk(S).
provenance(required_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
required_data_collection(P, S) :-
    provider(P),
    post_market_monitoring_system(S),
    high_risk_ai_system(AI),
    collects_and_analyzes_relevant_data(S, AI),
    \+ exempt_sensitive_operational_data(P, _).
provenance(required_data_collection/2, 'celex:32024R1689/oj#art_72').
exempt_sensitive_operational_data(P, D) :-
    provider(P),
    sensitive_operational_data(D),
    deployer(Deployer),
    law_enforcement_authority(Deployer).
provenance(exempt_sensitive_operational_data/2, 'celex:32024R1689/oj#art_72').
required_based_on_plan(S, P) :-
    post_market_monitoring_system(S),
    post_market_monitoring_plan(P),
    based_on(S, P),
    part_of(P, T),
    technical_documentation(T).
provenance(required_based_on_plan/2, 'celex:32024R1689/oj#art_72').
required_integration_option(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    existing_harmonised_legislation(S),
    integrates_elements_using_template(P, S).
provenance(required_integration_option/2, 'celex:32024R1689/oj#art_72').
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
declared(provider_of/2, 'provider provides AI system', 'celex:32024R1689/oj#art_73').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'incident resulting in death of a person', 'celex:32024R1689/oj#art_73').
declared(causal_link_established/2, 'causal link between AI system and incident established', 'celex:32024R1689/oj#art_73').
must_report(Provider, Incident) :-
    provider(Provider),
    provider_of(Provider, System),
    high_risk_ai_system(System),
    serious_incident(Incident).
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
required_reporting_deadline(Provider, Incident, Days) :-
    must_report(Provider, Incident),
    \+ widespread_infringement(Incident),
    \+ death_of_person(Incident),
    Days = 15,
    Days = Days.
provenance(required_reporting_deadline/3, 'celex:32024R1689/oj#art_73').
required_reporting_deadline(Provider, Incident, Days) :-
    must_report(Provider, Incident),
    (widespread_infringement(Incident) ; serious_incident(Incident)),
    Days = 2,
    Days = Days.
required_reporting_deadline(Provider, Incident, Days) :-
    must_report(Provider, Incident),
    death_of_person(Incident),
    Days = 10,
    Days = Days.
required_report_immediate_after_causal_link(Provider, Incident) :-
    must_report(Provider, Incident),
    causal_link_established(Provider, Incident).
provenance(required_report_immediate_after_causal_link/2, 'celex:32024R1689/oj#art_73').
permitted_initial_incomplete_report(Provider, Incident) :-
    must_report(Provider, Incident).
provenance(permitted_initial_incomplete_report/2, 'celex:32024R1689/oj#art_73').
report_made(Provider, Incident) :-
    must_report(Provider, Incident),
    required_reporting_deadline(Provider, Incident, Days),
    Days >= 0.
provenance(report_made/2, 'celex:32024R1689/oj#art_73').
must_investigate(Provider, Incident) :-
    report_made(Provider, Incident).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
must_cooperate(Provider, Authority, Incident) :-
    must_investigate(Provider, Incident),
    market_surveillance_authority(Authority).
provenance(must_cooperate/3, 'celex:32024R1689/oj#art_73').
must_not_alter_ai_system(Provider, Incident) :-
    must_investigate(Provider, Incident).
provenance(must_not_alter_ai_system/2, 'celex:32024R1689/oj#art_73').
must_notify_commission(Authority, Incident) :-
    market_surveillance_authority(Authority),
    serious_incident(Incident).
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(required_annual_report_market_surveillance/2, 'obligation of market surveillance authority to submit annual report', 'celex:32024R1689/oj#art_74').
declared(identified_information/1, 'information identified during market surveillance activities', 'celex:32024R1689/oj#art_74').
declared(potential_interest_for_competition_law/1, 'information may be of potential interest for competition law', 'celex:32024R1689/oj#art_74').
declared(prohibited_practices_used/1, 'use of prohibited practices', 'celex:32024R1689/oj#art_74').
declared(measures_taken/1, 'measures taken concerning prohibited practices', 'celex:32024R1689/oj#art_74').
declared(required_designated_market_surveillance_authority/2, 'designation of market surveillance authority for high‑risk AI systems', 'celex:32024R1689/oj#art_74').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_74').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(authority_responsible_for_market_surveillance/2, 'authority responsible for market surveillance activities', 'celex:32024R1689/oj#art_74').
declared(prohibited_application_of_sectoral_procedure/2, 'prohibition of application of sectoral procedure to AI system', 'celex:32024R1689/oj#art_74').
declared(procedure/1, 'procedure referred to in the Regulation', 'celex:32024R1689/oj#art_74').
declared(equivalent_sectoral_procedure_exists/2, 'equivalent sectoral procedure provides same level of protection', 'celex:32024R1689/oj#art_74').
declared(permitted_exercise_power_remotely/2, 'permission to exercise a power remotely', 'celex:32024R1689/oj#art_74').
declared(remote_exercise_allowed/1, 'remote exercise of power is appropriate', 'celex:32024R1689/oj#art_74').
declared(required_designated_financial_market_surveillance_authority/2, 'designation of market surveillance authority for financial‑sector high‑risk AI systems', 'celex:32024R1689/oj#art_74').
declared(used_by_financial_institution/1, 'AI system used by a financial institution', 'celex:32024R1689/oj#art_74').
declared(financial_supervision_authority/1, 'national authority responsible for financial supervision', 'celex:32024R1689/oj#art_74').
declared(permitted_designate_another_market_surveillance_authority/2, 'permission for Member State to designate another market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_74').
declared(coordination_ensured/2, 'coordination between authorities is ensured', 'celex:32024R1689/oj#art_74').
declared(required_designation_of_market_surveillance_authority/2, 'requirement to designate a market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(data_protection_supervisory_authority/1, 'competent data‑protection supervisory authority', 'celex:32024R1689/oj#art_74').
declared(other_authority_designated/1, 'any other authority designated under the same conditions', 'celex:32024R1689/oj#art_74').
declared(conditions_laid_down/1, 'conditions laid down in the relevant legislation', 'celex:32024R1689/oj#art_74').
declared(prohibited_interference_with_judicial_independence/1, 'prohibition of interference with judicial independence', 'celex:32024R1689/oj#art_74').
declared(judicial_authority/1, 'judicial authority', 'celex:32024R1689/oj#art_74').
declared(required_market_surveillance_authority_for_institution/2, 'requirement that the European Data Protection Supervisor acts as market surveillance authority for institutions', 'celex:32024R1689/oj#art_74').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_74').
declared(institution/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_74').
declared(court_of_justice/1, 'Court of Justice of the European Union', 'celex:32024R1689/oj#art_74').
declared(required_facilitate_coordination/1, 'requirement for Member State to facilitate coordination', 'celex:32024R1689/oj#art_74').
declared(permitted_propose_joint_activity/3, 'permission for market surveillance authorities and the Commission to propose joint activities', 'celex:32024R1689/oj#art_74').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_74').
declared(joint_activity/1, 'joint activity such as investigation', 'celex:32024R1689/oj#art_74').
declared(aim_promoting_compliance/1, 'aim of promoting compliance', 'celex:32024R1689/oj#art_74').
declared(required_grant_full_access/3, 'requirement for providers to grant full access to documentation and data sets', 'celex:32024R1689/oj#art_74').
declared(documentation_and_data_provided/1, 'documentation and training/validation/testing data sets provided by provider', 'celex:32024R1689/oj#art_74').
declared(provider_uses_system/2, 'provider uses the AI system', 'celex:32024R1689/oj#art_74').
declared(required_access_source_code/3, 'requirement to grant access to source code upon reasoned request and conditions', 'celex:32024R1689/oj#art_74').
declared(reasoned_request/3, 'reasoned request by authority to provider for source code', 'celex:32024R1689/oj#art_74').
declared(access_necessary_for_conformity/1, 'access necessary to assess conformity', 'celex:32024R1689/oj#art_74').
declared(testing_exhausted_or_insufficient/1, 'testing or auditing procedures have been exhausted or proved insufficient', 'celex:32024R1689/oj#art_74').
declared(required_confidentiality_obligation/2, 'obligation to treat obtained information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_74').
declared(obtained_information/1, 'information or documentation obtained by market surveillance authorities', 'celex:32024R1689/oj#art_74').
declared(confidentiality_obligations_apply/1, 'confidentiality obligations set out in the Regulation apply', 'celex:32024R1689/oj#art_74').
required_annual_report_market_surveillance(Authority, competition_information) :-
    market_surveillance_authority(Authority),
    identified_information(Info),
    potential_interest_for_competition_law(Info).
required_annual_report_market_surveillance(Authority, prohibited_practices_report) :-
    market_surveillance_authority(Authority),
    prohibited_practices_used(Practice),
    measures_taken(Measure).
required_designated_market_surveillance_authority(Authority, System) :-
    high_risk_ai_system(System),
    product_covered_by_union_harmonisation_legislation(System),
    authority_responsible_for_market_surveillance(Authority, System).
prohibited_application_of_sectoral_procedure(Procedure, System) :-
    procedure(Procedure),
    ai_system(System),
    product_covered_by_union_harmonisation_legislation(System),
    equivalent_sectoral_procedure_exists(Procedure, System).
permitted_exercise_power_remotely(Authority, power_14_4_dj) :-
    market_surveillance_authority(Authority),
    remote_exercise_allowed(Authority).
required_designated_financial_market_surveillance_authority(Authority, System) :-
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System) ; used_by_financial_institution(System)),
    financial_supervision_authority(Authority).
permitted_designate_another_market_surveillance_authority(MemberState, Authority) :-
    member_state(MemberState),
    coordination_ensured(MemberState, Authority).
required_designation_of_market_surveillance_authority(MemberState, Authority) :-
    member_state(MemberState),
    (data_protection_supervisory_authority(Authority) ; other_authority_designated(Authority)),
    conditions_laid_down(Authority).
prohibited_interference_with_judicial_independence(Authority) :-
    market_surveillance_authority(Authority),
    judicial_authority(Authority).
required_market_surveillance_authority_for_institution(Authority, Institution) :-
    european_data_protection_supervisor(Authority),
    institution(Institution),
    \+ court_of_justice(Institution).
required_facilitate_coordination(MemberState) :-
    member_state(MemberState),
    coordination_between_market_surveillance_and_other_authorities(MemberState).
permitted_propose_joint_activity(Authority, Commission, Activity) :-
    market_surveillance_authority(Authority),
    commission(Commission),
    joint_activity(Activity),
    aim_promoting_compliance(Activity).
required_grant_full_access(Provider, Authority, data_set) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    provider_uses_system(Provider, System).
required_access_source_code(Authority, Provider, System) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_ai_system(System),
    reasoned_request(Authority, Provider, System),
    access_necessary_for_conformity(System),
    testing_exhausted_or_insufficient(System).
required_confidentiality_obligation(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_information(Information),
    confidentiality_obligations_apply(Information).
provenance(required_annual_report_market_surveillance/2, 'celex:32024R1689/oj#art_74').
provenance(required_designated_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(prohibited_application_of_sectoral_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_power_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(required_designated_financial_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_designate_another_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(required_designation_of_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(prohibited_interference_with_judicial_independence/1, 'celex:32024R1689/oj#art_74').
provenance(required_market_surveillance_authority_for_institution/2, 'celex:32024R1689/oj#art_74').
provenance(required_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_propose_joint_activity/3, 'celex:32024R1689/oj#art_74').
provenance(required_grant_full_access/3, 'celex:32024R1689/oj#art_74').
provenance(required_access_source_code/3, 'celex:32024R1689/oj#art_74').
provenance(required_confidentiality_obligation/2, 'celex:32024R1689/oj#art_74').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_3/unp_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_14').
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
declared(required_monitoring_and_supervision_power/2, 'AI Office must have power to monitor and supervise compliance of a GP AI system', 'celex:32024R1689/oj#art_75').
declared(required_market_surveillance_powers/2, 'AI Office must have all powers of a market surveillance authority', 'celex:32024R1689/oj#art_75').
declared(same_provider_for_model_and_system/1, 'Provider develops both the general‑purpose AI model and the AI system', 'celex:32024R1689/oj#art_75').
declared(can_be_used_directly_by_deployer_for_high_risk_purpose/1, 'AI system can be used directly by deployers for at least one high‑risk purpose', 'celex:32024R1689/oj#art_75').
declared(sufficient_reason_to_consider_non_compliant/2, 'Market surveillance authority has sufficient reason to deem the system non‑compliant', 'celex:32024R1689/oj#art_75').
declared(must_cooperate_with_ai_office/2, 'Market surveillance authority must cooperate with the AI Office to carry out compliance evaluations', 'celex:32024R1689/oj#art_75').
declared(must_inform_board_and_authorities/2, 'Market surveillance authority must inform the Board and other authorities of the non‑compliance', 'celex:32024R1689/oj#art_75').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_75').
declared(cannot_access_information/2, 'Authority cannot access information related to the GP AI model despite appropriate efforts', 'celex:32024R1689/oj#art_75').
declared(made_all_appropriate_efforts/2, 'Authority has made all appropriate efforts to obtain the information', 'celex:32024R1689/oj#art_75').
declared(permitted_submit_reasoned_request/2, 'Market surveillance authority may submit a reasoned request to the AI Office', 'celex:32024R1689/oj#art_75').
declared(relevant_information/2, 'Information relevant to establishing non‑compliance of a high‑risk AI system', 'celex:32024R1689/oj#art_75').
declared(considered_relevant_by_ai_office/1, 'AI Office considers the information relevant', 'celex:32024R1689/oj#art_75').
declared(must_supply_information/3, 'AI Office must supply relevant information to the requesting authority without delay and within 30 days', 'celex:32024R1689/oj#art_75').
declared(obtained_information/2, 'Market surveillance authority has obtained information', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'Market surveillance authority must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
required_monitoring_and_supervision_power(ai_office, S) :-
    general_purpose_ai_system(S),
    same_provider_for_model_and_system(S).
required_market_surveillance_powers(ai_office, S) :-
    general_purpose_ai_system(S),
    same_provider_for_model_and_system(S).
must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    can_be_used_directly_by_deployer_for_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(Authority, S).
must_inform_board_and_authorities(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    can_be_used_directly_by_deployer_for_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(Authority, S).
permitted_submit_reasoned_request(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    cannot_access_information(Authority, S),
    made_all_appropriate_efforts(Authority, S).
must_supply_information(ai_office, Authority, S) :-
    permitted_submit_reasoned_request(Authority, S),
    relevant_information(S, Info),
    considered_relevant_by_ai_office(Info).
must_safeguard_confidentiality(Authority, Info) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, Info).
provenance(required_monitoring_and_supervision_power/2, 'celex:32024R1689/oj#art_75').
provenance(required_market_surveillance_powers/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(required_competence_and_power/2, 'obligation for market surveillance authority to have competences and powers', 'celex:32024R1689/oj#art_76').
declared(testing_in_real_world_conditions/1, 'testing of an AI system in real‑world conditions', 'celex:32024R1689/oj#art_76').
declared(supervised_in_ai_regulatory_sandbox/1, 'AI system is supervised within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(required_verify_compliance/3, 'obligation for market surveillance authority to verify compliance with a given article', 'celex:32024R1689/oj#art_76').
declared(permitted_testing_conducted_by/3, 'permission for market surveillance authority to allow testing to be conducted by a provider or prospective provider', 'celex:32024R1689/oj#art_76').
declared(prospective_provider/1, 'entity that may become a provider of an AI system', 'celex:32024R1689/oj#art_76').
declared(prospective_deployer/1, 'entity that may become a deployer of an AI system', 'celex:32024R1689/oj#art_76').
declared(serious_incident_reported/1, 'serious incident concerning an AI system has been reported', 'celex:32024R1689/oj#art_76').
declared(conditions_not_met_applies/1, 'conditions set out in the relevant articles are not met', 'celex:32024R1689/oj#art_76').
declared(permitted_suspend_or_terminate_testing/2, 'permission for market surveillance authority to suspend or terminate real‑world testing', 'celex:32024R1689/oj#art_76').
declared(permitted_require_modification/4, 'permission for market surveillance authority to require modification of testing', 'celex:32024R1689/oj#art_76').
declared(required_indication_of_grounds_and_challenge/2, 'obligation to indicate grounds and how the provider can challenge a decision or objection', 'celex:32024R1689/oj#art_76').
declared(decision/1, 'decision taken by a market surveillance authority', 'celex:32024R1689/oj#art_76').
declared(decision_refers_to_art_76_par_3/1, 'decision refers to paragraph 3 of article 76', 'celex:32024R1689/oj#art_76').
declared(objection_under_art_60_par_4_b/1, 'objection issued under paragraph 4 point b of article 60', 'celex:32024R1689/oj#art_76').
declared(required_communication_of_grounds/3, 'obligation to communicate grounds to other Member State authorities', 'celex:32024R1689/oj#art_76').
required_competence_and_power(MSA, testing_in_real_world_conditions(S)) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S).
required_verify_compliance(MSA, S, 'art_60') :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).
permitted_testing_conducted_by(MSA, Provider, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    ( provider(Provider) ; prospective_provider(Provider) ),
    supervised_in_ai_regulatory_sandbox(S).
permitted_suspend_or_terminate_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    ( serious_incident_reported(S) ; conditions_not_met_applies(S) ).
permitted_require_modification(MSA, Provider, Deployer, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    ( provider(Provider) ; prospective_provider(Provider) ),
    ( deployer(Deployer) ; prospective_deployer(Deployer) ).
required_indication_of_grounds_and_challenge(MSA, Decision) :-
    market_surveillance_authority(MSA),
    decision(Decision),
    ( decision_refers_to_art_76_par_3(Decision) ; objection_under_art_60_par_4_b(Decision) ).
required_communication_of_grounds(MSA, OtherMSA, S) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(OtherMSA),
    testing_in_real_world_conditions(S),
    decision_refers_to_art_76_par_3(_).
provenance(required_competence_and_power/2, 'celex:32024R1689/oj#art_76').
provenance(required_verify_compliance/3, 'celex:32024R1689/oj#art_76').
provenance(permitted_testing_conducted_by/3, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/4, 'celex:32024R1689/oj#art_76').
provenance(required_indication_of_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(required_communication_of_grounds/3, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(public_authority_fundamental_rights/1, 'national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights', 'celex:32024R1689/oj#art_77').
declared(documentation_created_or_maintained/1, 'documentation created or maintained under the Regulation', 'celex:32024R1689/oj#art_77').
declared(accessible_language_and_format/1, 'documentation provided in accessible language and format', 'celex:32024R1689/oj#art_77').
declared(within_jurisdiction/1, 'action is within the limits of the authority’s jurisdiction', 'celex:32024R1689/oj#art_77').
declared(related_by_state/2, 'authority and market surveillance authority belong to the same Member State', 'celex:32024R1689/oj#art_77').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_77').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_77').
declared(reasonable_time/1, 'reasonable time following the request', 'celex:32024R1689/oj#art_77').
declared(confidentiality_obligation/1, 'confidentiality obligations set out in Article 78', 'celex:32024R1689/oj#art_77').
declared(permitted_request_and_access/2, 'authority may request and access documentation', 'celex:32024R1689/oj#art_77').
declared(must_inform/2, 'authority shall inform the market surveillance authority of any request', 'celex:32024R1689/oj#art_77').
declared(required_identify_public_authorities/1, 'Member State shall identify the public authorities', 'celex:32024R1689/oj#art_77').
declared(required_publish_list/1, 'Member State shall make the list publicly available', 'celex:32024R1689/oj#art_77').
declared(required_notify_list/2, 'Member State shall notify the list to the Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(required_keep_list_up_to_date/1, 'Member State shall keep the list up to date', 'celex:32024R1689/oj#art_77').
declared(permitted_reasoned_request/2, 'authority may make a reasoned request to organise testing', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority shall organise testing with involvement of requesting authority', 'celex:32024R1689/oj#art_77').
declared(must_treat_confidentially/2, 'information obtained shall be treated in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_77').
permitted_request_and_access(Authority, Documentation) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    documentation_created_or_maintained(Documentation),
    accessible_language_and_format(Documentation).
must_inform(Authority, MSA) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    market_surveillance_authority(MSA),
    related_by_state(Authority, MSA).
required_identify_public_authorities(MemberState) :-
    member_state(MemberState),
    member_state(MemberState).
required_publish_list(MemberState) :-
    member_state(MemberState),
    member_state(MemberState).
required_notify_list(MemberState, commission) :-
    member_state(MemberState),
    commission(commission),
    member_state(MemberState).
required_notify_list(MemberState, OtherMemberState) :-
    member_state(MemberState),
    member_state(OtherMemberState),
    member_state(OtherMemberState),
    member_state(MemberState).
required_keep_list_up_to_date(MemberState) :-
    member_state(MemberState),
    member_state(MemberState).
permitted_reasoned_request(Authority, MSA) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    market_surveillance_authority(MSA),
    related_by_state(Authority, MSA).
must_organise_testing(MSA, Authority) :-
    market_surveillance_authority(MSA),
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    related_by_state(Authority, MSA),
    reasonable_time(MSA).
must_treat_confidentially(Authority, Documentation) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    documentation_created_or_maintained(Documentation),
    confidentiality_obligation(Documentation).
provenance(permitted_request_and_access/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(required_identify_public_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(required_publish_list/1, 'celex:32024R1689/oj#art_77').
provenance(required_notify_list/2, 'celex:32024R1689/oj#art_77').
provenance(required_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(permitted_reasoned_request/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'obligation to keep information confidential', 'celex:32024R1689/oj#art_78').
declared(must_request_only_necessary_data/2, 'obligation to request only data strictly necessary', 'celex:32024R1689/oj#art_78').
declared(must_implement_cybersecurity_measures/1, 'obligation to put in place adequate cybersecurity measures', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/2, 'obligation to delete data when no longer needed', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure_without_consultation/1, 'prohibition on disclosing confidential information without prior consultation', 'celex:32024R1689/oj#art_78').
declared(permitted_disclosure_with_consultation/1, 'permission to disclose confidential information after prior consultation', 'celex:32024R1689/oj#art_78').
declared(permitted_exchange_confidential_info/2, 'permission to exchange confidential information with third‑country authorities', 'celex:32024R1689/oj#art_78').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_78').
declared(member_state/1, 'a Member State', 'celex:32024R1689/oj#art_78').
declared(other_involved_actor/1, 'any other natural or legal person involved in the application of the Regulation', 'celex:32024R1689/oj#art_78').
declared(confidentiality_category/1, 'category of information protected by confidentiality', 'celex:32024R1689/oj#art_78').
declared(authority_involved/1, 'authority involved in the application of the Regulation', 'celex:32024R1689/oj#art_78').
declared(data_strictly_necessary/1, 'data that is strictly necessary for risk assessment or exercise of powers', 'celex:32024R1689/oj#art_78').
declared(data_no_longer_needed/1, 'data that is no longer needed for its original purpose', 'celex:32024R1689/oj#art_78').
declared(confidential_exchange/1, 'information exchanged on a confidential basis between competent authorities', 'celex:32024R1689/oj#art_78').
declared(high_risk_ai_system_used_by_law_enforcement/1, 'high‑risk AI system used by law‑enforcement, border control, immigration or asylum authorities', 'celex:32024R1689/oj#art_78').
declared(jeopardises_public_security/1, 'disclosure would jeopardise public or national security interests', 'celex:32024R1689/oj#art_78').
declared(prior_consultation/2, 'prior consultation of the originating authority and the deployer', 'celex:32024R1689/oj#art_78').
declared(confidentiality_arrangement/2, 'bilateral or multilateral confidentiality arrangement with a third‑country authority', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Actor, Info) :-
    (   commission(Actor)
    ;   market_surveillance_authority(Actor)
    ;   notified_body(Actor)
    ;   other_involved_actor(Actor)
    ),
    confidentiality_category(Info),
    confidentiality_category(Info).
must_request_only_necessary_data(Authority, Data) :-
    authority_involved(Authority),
    data_strictly_necessary(Data).
must_implement_cybersecurity_measures(Authority) :-
    authority_involved(Authority).
must_delete_data_when_no_longer_needed(Authority, Data) :-
    authority_involved(Authority),
    data_no_longer_needed(Data).
prohibited_disclosure_without_consultation(Info) :-
    confidential_exchange(Info),
    high_risk_ai_system_used_by_law_enforcement(Info),
    jeopardises_public_security(Info),
    \+ permitted_disclosure_with_consultation(Info).
permitted_disclosure_with_consultation(Info) :-
    prior_consultation(_OriginAuthority, _Deployer),
    confidential_exchange(Info),
    confidential_exchange(Info).
permitted_exchange_confidential_info(Actor, ThirdCountryAuthority) :-
    (   commission(Actor)
    ;   member_state(Actor)
    ),
    confidentiality_arrangement(Actor, ThirdCountryAuthority).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_disclosure_with_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_info/2, 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').

% ==== celex:32024R1689/oj#art_79 ====
declared(market_surveillance_authority/1, 'national authority carrying out market surveillance', 'celex:32024R1689/oj#art_79').
declared(presents_risk/1, 'AI system presenting a risk as defined in the Regulation', 'celex:32024R1689/oj#art_79').
declared(sufficient_reason_to_consider_risk/2, 'Authority has sufficient reason to consider the system a risk', 'celex:32024R1689/oj#art_79').
declared(identifies_fundamental_rights_risk/1, 'System presents risk to fundamental rights', 'celex:32024R1689/oj#art_79').
declared(relevant_national_public_authority/1, 'National public authority or body referred to in article 77 paragraph 1', 'celex:32024R1689/oj#art_79').
declared(required_evaluation/2, 'Authority must evaluate the AI system for compliance', 'celex:32024R1689/oj#art_79').
declared(required_cooperation/2, 'Authority must cooperate with relevant national public authority', 'celex:32024R1689/oj#art_79').
declared(required_operator_cooperation/2, 'Operator must cooperate with market surveillance authority', 'celex:32024R1689/oj#art_79').
declared(evaluation_finds_non_compliance/2, 'Evaluation finds the AI system does not comply with requirements', 'celex:32024R1689/oj#art_79').
declared(required_corrective_action/3, 'Authority requires operator to take corrective action', 'celex:32024R1689/oj#art_79').
declared(required_withdrawal/3, 'Authority requires operator to withdraw the AI system', 'celex:32024R1689/oj#art_79').
declared(required_recall/3, 'Authority requires operator to recall the AI system', 'celex:32024R1689/oj#art_79').
declared(must_notify_notified_body/2, 'Authority must inform the relevant notified body', 'celex:32024R1689/oj#art_79').
declared(non_compliance_not_restricted_to_national_territory/2, 'Non‑compliance is not restricted to national territory', 'celex:32024R1689/oj#art_79').
declared(required_inform_commission_and_members/2, 'Authority must inform the Commission and other Member States', 'celex:32024R1689/oj#art_79').
declared(must_ensure_corrective_action/1, 'Operator must ensure corrective action is taken', 'celex:32024R1689/oj#art_79').
declared(operator_fails_to_take_adequate_action/2, 'Operator does not take adequate corrective action within the prescribed period', 'celex:32024R1689/oj#art_79').
declared(required_provisional_measures/2, 'Authority must take provisional measures (prohibit, restrict, withdraw, recall)', 'celex:32024R1689/oj#art_79').
declared(must_notify_commission_and_members/2, 'Authority must notify the Commission and other Member States of provisional measures', 'celex:32024R1689/oj#art_79').
declared(objection/2, 'A market surveillance authority or the Commission objects to a provisional measure', 'celex:32024R1689/oj#art_79').
declared(objection_recorded/2, 'Record of an objection', 'celex:32024R1689/oj#art_79').
declared(no_objection_within_period/1, 'No objection has been raised within the prescribed period', 'celex:32024R1689/oj#art_79').
declared(justified_measure/1, 'Provisional measure is deemed justified', 'celex:32024R1689/oj#art_79').
declared(must_ensure_restrictive_measures/2, 'Authority must ensure appropriate restrictive measures are taken', 'celex:32024R1689/oj#art_79').
required_evaluation(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System),
    sufficient_reason_to_consider_risk(Authority, System).
required_cooperation(Authority, PublicAuthority) :-
    market_surveillance_authority(Authority),
    ai_system(_System),
    identifies_fundamental_rights_risk(_System),
    relevant_national_public_authority(PublicAuthority).
required_operator_cooperation(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).
required_corrective_action(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    evaluation_finds_non_compliance(Authority, System).
required_withdrawal(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    evaluation_finds_non_compliance(Authority, System).
required_recall(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    evaluation_finds_non_compliance(Authority, System).
must_notify_notified_body(Authority, NotifiedBody) :-
    market_surveillance_authority(Authority),
    notified_body(NotifiedBody),
    market_surveillance_authority(Authority).
required_inform_commission_and_members(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    non_compliance_not_restricted_to_national_territory(Authority, System),
    market_surveillance_authority(Authority).
must_ensure_corrective_action(Operator) :-
    operator(Operator),
    operator(Operator).
required_provisional_measures(Authority, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    operator_fails_to_take_adequate_action(Operator, System),
    market_surveillance_authority(Authority).
must_notify_commission_and_members(Authority, Measure) :-
    market_surveillance_authority(Authority),
    Measure,
    market_surveillance_authority(Authority).
objection(Authority, Measure) :-
    objection_recorded(Authority, Measure).
no_objection_within_period(Measure) :-
    \+ objection(_, Measure).
justified_measure(Measure) :-
    no_objection_within_period(Measure).
must_ensure_restrictive_measures(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    market_surveillance_authority(Authority).
provenance(market_surveillance_authority/1, 'celex:32024R1689/oj#art_79').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(identifies_fundamental_rights_risk/1, 'celex:32024R1689/oj#art_79').
provenance(relevant_national_public_authority/1, 'celex:32024R1689/oj#art_79').
provenance(required_evaluation/2, 'celex:32024R1689/oj#art_79').
provenance(required_cooperation/2, 'celex:32024R1689/oj#art_79').
provenance(required_operator_cooperation/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_finds_non_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(required_corrective_action/3, 'celex:32024R1689/oj#art_79').
provenance(required_withdrawal/3, 'celex:32024R1689/oj#art_79').
provenance(required_recall/3, 'celex:32024R1689/oj#art_79').
provenance(must_notify_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_to_national_territory/2, 'celex:32024R1689/oj#art_79').
provenance(required_inform_commission_and_members/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/1, 'celex:32024R1689/oj#art_79').
provenance(operator_fails_to_take_adequate_action/2, 'celex:32024R1689/oj#art_79').
provenance(required_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_members/2, 'celex:32024R1689/oj#art_79').
provenance(objection/2, 'celex:32024R1689/oj#art_79').
provenance(objection_recorded/2, 'celex:32024R1689/oj#art_79').
provenance(no_objection_within_period/1, 'celex:32024R1689/oj#art_79').
provenance(justified_measure/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').

% ==== celex:32024R1689/oj#art_80 ====
declared(non_high_risk_classified_by_provider/1, 'AI system classified by the provider as non‑high‑risk', 'celex:32024R1689/oj#art_80').
declared(sufficient_reason_to_consider_high_risk/2, 'Authority has sufficient reason to consider the AI system high‑risk', 'celex:32024R1689/oj#art_80').
declared(evaluation_finds_high_risk/2, 'Authority finds during evaluation that the AI system is high‑risk', 'celex:32024R1689/oj#art_80').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_80').
declared(responsible_for_ai/2, 'Provider is responsible for the AI system', 'celex:32024R1689/oj#art_80').
declared(provider_of_ai/2, 'Provider is the entity that placed the AI system on the market', 'celex:32024R1689/oj#art_80').
declared(non_compliance/2, 'Provider has not complied with the required actions', 'celex:32024R1689/oj#art_80').
declared(made_available_on_union_market/2, 'Provider has made the AI system available on the Union market', 'celex:32024R1689/oj#art_80').
declared(not_adequate_corrective_action_within_period/2, 'Provider has not taken adequate corrective action within the prescribed period', 'celex:32024R1689/oj#art_80').
declared(misclassification_to_circumvent_requirements/2, 'AI system was misclassified to evade requirements', 'celex:32024R1689/oj#art_80').
required_evaluation(Authority, AI) :-
    market_surveillance_authority(Authority),
    non_high_risk_classified_by_provider(AI),
    sufficient_reason_to_consider_high_risk(Authority, AI).
required_compliance_action(Provider, AI) :-
    provider(Provider),
    responsible_for_ai(Provider, AI),
    evaluation_finds_high_risk(Authority, AI),
    market_surveillance_authority(Authority).
required_information_sharing(Authority, AI) :-
    market_surveillance_authority(Authority),
    use_not_restricted_to_national_territory(AI).
must_ensure_compliance(Provider, AI) :-
    provider(Provider),
    provider_of_ai(Provider, AI),
    high_risk_ai_system(AI).
required_fine(Provider) :-
    provider(Provider),
    non_compliance(Provider, _AI).
must_ensure_corrective_action(Provider, AI) :-
    provider(Provider),
    made_available_on_union_market(Provider, AI).
required_application_of_art79(Provider, AI) :-
    provider(Provider),
    not_adequate_corrective_action_within_period(Provider, AI).
required_fine(Provider) :-
    provider(Provider),
    misclassification_to_circumvent_requirements(Provider, _AI).
permitted_perform_check(Authority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).
provenance(required_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(required_compliance_action/2, 'celex:32024R1689/oj#art_80').
provenance(required_information_sharing/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(required_fine/1, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(required_application_of_art79/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_check/1, 'celex:32024R1689/oj#art_80').
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
declared(notification/1, 'notification received', 'celex:32024R1689/oj#art_81').
declared(three_months_applies/1, 'within three months of notification', 'celex:32024R1689/oj#art_81').
declared(thirty_days_applies/1, 'within thirty days in case of non‑compliance with prohibition', 'celex:32024R1689/oj#art_81').
declared(six_months_applies/1, 'within six months from notification', 'celex:32024R1689/oj#art_81').
declared(sixty_days_applies/1, 'within sixty days in case of non‑compliance', 'celex:32024R1689/oj#art_81').
declared(national_measure/1, 'measure taken by a market surveillance authority', 'celex:32024R1689/oj#art_81').
declared(decision/1, 'decision whether national measure is justified', 'celex:32024R1689/oj#art_81').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_81').
declared(justified_measure_applies/1, 'Commission considers the measure justified', 'celex:32024R1689/oj#art_81').
declared(unjustified_measure_applies/1, 'Commission considers the measure unjustified', 'celex:32024R1689/oj#art_81').
declared(shortcomings_in_standards_applies/1, 'non‑compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
must_enter_consultation(commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    notification(N),
    three_months_applies(N).
must_enter_consultation(commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    notification(N),
    thirty_days_applies(N).
must_evaluate_national_measure(commission, Measure) :-
    national_measure(Measure),
    notification(N),
    ( three_months_applies(N) ; thirty_days_applies(N) ).
must_decide_measure(commission, Measure, Decision) :-
    national_measure(Measure),
    notification(N),
    ( six_months_applies(N) ; sixty_days_applies(N) ),
    decision(Decision).
must_notify_decision(commission, Authority, Decision) :-
    market_surveillance_authority(Authority),
    decision(Decision).
must_inform_all_authorities(commission, Decision) :-
    decision(Decision).
must_ensure_restrictive_measures(MemberState, AISystem) :-
    member_state(MemberState),
    ai_system(AISystem),
    justified_measure_applies(Measure),
    justified_measure_applies(Measure).
must_inform_commission(MemberState, Decision) :-
    member_state(MemberState),
    decision(Decision).
must_withdraw_measure(MemberState, Measure) :-
    member_state(MemberState),
    unjustified_measure_applies(Measure).
must_apply_procedure(commission, procedure('celex:32012R1025/oj#art_11')) :-
    justified_measure_applies(Measure),
    shortcomings_in_standards_applies(Measure).
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_measure/3, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/3, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_82').
declared(presents_risk/1, 'AI system presents a risk to health, safety, fundamental rights or public interest', 'celex:32024R1689/oj#art_82').
declared(deadline_prescribed_by/3, 'deadline prescribed by market surveillance authority for operator to remove risk', 'celex:32024R1689/oj#art_82').
declared(market_surveillance_authority_finds_risk/2, 'market surveillance authority finds risk in AI system', 'celex:32024R1689/oj#art_82').
declared(relevant_operator/2, 'operator relevant to the AI system', 'celex:32024R1689/oj#art_82').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_82').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_82').
declared(required_measure/2, 'operator must take appropriate measures to eliminate risk', 'celex:32024R1689/oj#art_82').
declared(required_corrective_action/2, 'provider or operator must ensure corrective action for AI systems made available', 'celex:32024R1689/oj#art_82').
declared(required_inform/2, 'Member State must inform Commission and other Member States of finding', 'celex:32024R1689/oj#art_82').
declared(required_consult/3, 'Commission must consult with Member States and relevant operators', 'celex:32024R1689/oj#art_82').
declared(required_evaluate/3, 'Commission must evaluate national measures taken', 'celex:32024R1689/oj#art_82').
declared(required_communicate_decision/3, 'Commission must communicate its decision to Member States and operators', 'celex:32024R1689/oj#art_82').
market_surveillance_authority_finds_risk(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    presents_risk(S).
required_measure(Operator, S) :-
    market_surveillance_authority_finds_risk(MSA, S),
    relevant_operator(Operator, S),
    deadline_prescribed_by(MSA, Operator, S).
required_corrective_action(Actor, S) :-
    ( provider(Actor) ; operator(Actor) ),
    made_available_on_market(S),
    deadline_prescribed_by(MSA, Actor, S),
    market_surveillance_authority(MSA).
required_inform(MemberState, Commission) :-
    member_state(MemberState),
    commission(Commission),
    market_surveillance_authority_finds_risk(_, _).
required_consult(Commission, MemberState, Operator) :-
    commission(Commission),
    member_state(MemberState),
    relevant_operator(Operator, _),
    market_surveillance_authority_finds_risk(_, _).
required_evaluate(Commission, MemberState, Operator) :-
    commission(Commission),
    member_state(MemberState),
    relevant_operator(Operator, _),
    market_surveillance_authority_finds_risk(_, _).
required_communicate_decision(Commission, MemberState, Operator) :-
    commission(Commission),
    member_state(MemberState),
    relevant_operator(Operator, _),
    market_surveillance_authority_finds_risk(_, _).
provenance(required_measure/2, 'celex:32024R1689/oj#art_82').
provenance(required_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(required_inform/2, 'celex:32024R1689/oj#art_82').
provenance(required_consult/3, 'celex:32024R1689/oj#art_82').
provenance(required_evaluate/3, 'celex:32024R1689/oj#art_82').
provenance(required_communicate_decision/3, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(non_compliance_finding/3, 'specific finding of non‑compliance by a market surveillance authority concerning a provider', 'celex:32024R1689/oj#art_83').
declared(required_end_non_compliance/3, 'authority must require provider to put an end to the non‑compliance', 'celex:32024R1689/oj#art_83').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_83').
declared(persists_non_compliance/2, 'non‑compliance continues despite measures', 'celex:32024R1689/oj#art_83').
declared(required_restrict/2, 'authority must restrict the high‑risk AI system from being made available on the market', 'celex:32024R1689/oj#art_83').
declared(required_prohibit/2, 'authority must prohibit the high‑risk AI system from being made available on the market', 'celex:32024R1689/oj#art_83').
declared(required_recall/2, 'authority must ensure the high‑risk AI system is recalled from the market', 'celex:32024R1689/oj#art_83').
declared(required_withdraw/2, 'authority must ensure the high‑risk AI system is withdrawn from the market', 'celex:32024R1689/oj#art_83').
non_compliance_finding(Authority, Provider, ce_marking_affixed_violation) :-
    market_surveillance_authority(Authority),
    provider(Provider).
non_compliance_finding(Authority, Provider, ce_marking_not_affixed) :-
    market_surveillance_authority(Authority),
    provider(Provider).
non_compliance_finding(Authority, Provider, eu_declaration_not_drawn_up) :-
    market_surveillance_authority(Authority),
    provider(Provider).
non_compliance_finding(Authority, Provider, eu_declaration_not_drawn_up_correctly) :-
    market_surveillance_authority(Authority),
    provider(Provider).
non_compliance_finding(Authority, Provider, registration_not_carried_out) :-
    market_surveillance_authority(Authority),
    provider(Provider).
non_compliance_finding(Authority, Provider, no_authorised_representative) :-
    market_surveillance_authority(Authority),
    provider(Provider).
non_compliance_finding(Authority, Provider, technical_documentation_not_available) :-
    market_surveillance_authority(Authority),
    provider(Provider).
required_end_non_compliance(Authority, Provider, Type) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    non_compliance_finding(Authority, Provider, Type).
persists_non_compliance(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    non_compliance_finding(Authority, _, _).
required_restrict(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).
required_prohibit(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).
required_recall(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).
required_withdraw(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(Authority, System).
provenance(non_compliance_finding/3, 'celex:32024R1689/oj#art_83').
provenance(required_end_non_compliance/3, 'celex:32024R1689/oj#art_83').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_83').
provenance(persists_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(required_restrict/2, 'celex:32024R1689/oj#art_83').
provenance(required_prohibit/2, 'celex:32024R1689/oj#art_83').
provenance(required_recall/2, 'celex:32024R1689/oj#art_83').
provenance(required_withdraw/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'entity designated to support AI testing in the Union', 'celex:32024R1689/oj#art_84').
declared(must_designate/2, 'Commission must designate a Union AI testing support structure', 'celex:32024R1689/oj#art_84').
declared(must_provide_advice/2, 'Union AI testing support structure must provide independent technical or scientific advice upon request', 'celex:32024R1689/oj#art_84').
declared(board/1, 'board requesting advice', 'celex:32024R1689/oj#art_84').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_84').
declared(tasks_listed_under/2, 'tasks listed under a referenced provision', 'celex:32024R1689/oj#art_84').
must_designate(Commission, Structure) :-
    commission(Commission),
    union_ai_testing_support_structure(Structure),
    tasks_listed_under(Structure, 'celex:32019R1020/oj#art_21/par_6').
must_provide_advice(Structure, Requester) :-
    union_ai_testing_support_structure(Structure),
    (   board(Requester)
    ;   commission(Requester)
    ;   market_surveillance_authority(Requester)
    ).
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').
provenance(commission/1, 'celex:32024R1689/oj#art_84').
provenance(tasks_listed_under/2, 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_85 ====
declared(natural_or_legal_person/1, 'natural or legal person', 'celex:32024R1689/oj#art_85').
declared(grounds_to_consider_infringement/1, 'has grounds to consider an infringement of the regulation', 'celex:32024R1689/oj#art_85').
declared(permitted_submit_complaint/2, 'may submit a complaint to a market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(complaint_submitted/2, 'complaint has been submitted by a person to an authority', 'celex:32024R1689/oj#art_85').
declared(must_take_into_account_for_market_surveillance/2, 'authority must take the complaint into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(must_handle_in_line_with_procedures/2, 'authority must handle the complaint in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
permitted_submit_complaint(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).
complaint_submitted(Person, Authority) :-
    permitted_submit_complaint(Person, Authority).
must_take_into_account_for_market_surveillance(Authority, Person) :-
    complaint_submitted(Person, Authority),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).
must_handle_in_line_with_procedures(Authority, Person) :-
    complaint_submitted(Person, Authority),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).
provenance(natural_or_legal_person/1, 'celex:32024R1689/oj#art_85').
provenance(grounds_to_consider_infringement/1, 'celex:32024R1689/oj#art_85').
provenance(permitted_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_submitted/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account_for_market_surveillance/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_in_line_with_procedures/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_86').
declared(affected_person/1, 'natural person whose interests are impacted by a decision', 'celex:32024R1689/oj#art_86').
declared(decision_taken_by_deployer/2, 'decision made by a deployer based on the output of an AI system', 'celex:32024R1689/oj#art_86').
declared(exempt_from_explanation/1, 'high‑risk AI system listed in annex 3 or point 2 thereof, exempt from the right to explanation', 'celex:32024R1689/oj#art_86').
declared(legal_exception_applies/1, 'union or national law provides an exception or restriction to the obligation', 'celex:32024R1689/oj#art_86').
declared(provided_by_union_law/1, 'the right to explanation is already provided for under Union law', 'celex:32024R1689/oj#art_86').
must_provide_explanation(Deployer, explanation(Person, System)) :-
    deployer(Deployer),
    affected_person(Person),
    decision_taken_by_deployer(Person, System),
    high_risk_ai_system(System),
    \+ exempt_from_explanation(System),
    \+ legal_exception_applies(System),
    \+ provided_by_union_law(System).
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(required_reporting_of_infringements/1, 'obligation to report infringements', 'celex:32024R1689/oj#art_87').
declared(required_protection_of_reporting_persons/1, 'obligation to protect persons reporting infringements', 'celex:32024R1689/oj#art_87').
required_reporting_of_infringements('celex:32019L1937/oj').
required_protection_of_reporting_persons('celex:32019L1937/oj').
provenance(required_reporting_of_infringements/1, 'celex:32024R1689/oj#art_87').
provenance(required_protection_of_reporting_persons/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_88').
declared(provides_general_purpose_ai_model/2, 'provider provides a general‑purpose AI model', 'celex:32024R1689/oj#art_88').
declared(general_purpose_ai_model_provider/1, 'provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate/1, 'condition that the request is necessary and proportionate', 'celex:32024R1689/oj#art_88').
declared(must_supervise/2, 'Commission must supervise the provider', 'celex:32024R1689/oj#art_88').
declared(must_enforce/2, 'Commission must enforce the provider', 'celex:32024R1689/oj#art_88').
declared(must_entrust/2, 'Commission must entrust tasks to AI Office', 'celex:32024R1689/oj#art_88').
declared(permitted_request_exercise_powers/2, 'Market surveillance authority may request Commission to exercise powers', 'celex:32024R1689/oj#art_88').
general_purpose_ai_model_provider(P) :-
    provider(P),
    provides_general_purpose_ai_model(P, _M).
must_supervise(C, P) :-
    commission(C),
    general_purpose_ai_model_provider(P).
must_enforce(C, P) :-
    commission(C),
    general_purpose_ai_model_provider(P).
must_entrust(C, O) :-
    commission(C),
    ai_office(O).
permitted_request_exercise_powers(A, C) :-
    market_surveillance_authority(A),
    commission(C),
    necessary_and_proportionate(C).
provenance(must_supervise/2, 'celex:32024R1689/oj#art_88').
provenance(must_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_powers/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(provider_of_general_purpose_ai_model/1, 'provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_89').
declared(permitted_monitor_implementation_and_compliance/2, 'AI Office may monitor compliance of providers of general‑purpose AI models', 'celex:32024R1689/oj#art_89').
declared(complaint/1, 'complaint lodged by a downstream provider', 'celex:32024R1689/oj#art_89').
declared(complaint_is_duly_reasoned/1, 'complaint is duly reasoned', 'celex:32024R1689/oj#art_89').
declared(complaint_includes_point_of_contact/1, 'complaint includes point of contact of the provider concerned', 'celex:32024R1689/oj#art_89').
declared(complaint_includes_description_of_facts/1, 'complaint includes description of relevant facts and provisions', 'celex:32024R1689/oj#art_89').
declared(complaint_includes_other_information/1, 'complaint includes any other relevant information', 'celex:32024R1689/oj#art_89').
declared(permitted_lodge_complaint/2, 'downstream provider has the right to lodge a complaint', 'celex:32024R1689/oj#art_89').
permitted_monitor_implementation_and_compliance(AI_Office, Provider) :-
    ai_office(AI_Office),
    ai_office(AI_Office),
    provider_of_general_purpose_ai_model(Provider).
permitted_lodge_complaint(DownstreamProvider, Complaint) :-
    downstream_provider(DownstreamProvider),
    downstream_provider(DownstreamProvider),
    complaint(Complaint),
    complaint_is_duly_reasoned(Complaint),
    complaint_includes_point_of_contact(Complaint),
    complaint_includes_description_of_facts(Complaint),
    complaint_includes_other_information(Complaint).
provenance(permitted_monitor_implementation_and_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel', 'celex:32024R1689/oj#art_90').
declared(permitted_provide_qualified_alert/2, 'scientific panel may provide a qualified alert concerning a general‑purpose AI model', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'qualified alert concerning a general‑purpose AI model', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'general‑purpose AI model poses concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_art_51/1, 'general‑purpose AI model meets the conditions referred to in art_51', 'celex:32024R1689/oj#art_90').
declared(must_reason_qualified_alert/1, 'qualified alert shall be duly reasoned', 'celex:32024R1689/oj#art_90').
declared(must_include_point_of_contact/2, 'qualified alert shall indicate the point of contact of the provider of the model', 'celex:32024R1689/oj#art_90').
declared(must_include_description/1, 'qualified alert shall contain a description of the relevant facts and reasons', 'celex:32024R1689/oj#art_90').
declared(must_include_other_information/1, 'qualified alert shall contain any other relevant information', 'celex:32024R1689/oj#art_90').
declared(permitted_exercise_assessment_powers/2, 'Commission may exercise assessment powers after a qualified alert', 'celex:32024R1689/oj#art_90').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_90').
declared(must_inform_board_of_measure/2, 'AI Office shall inform the Board of any measure', 'celex:32024R1689/oj#art_90').
declared(measure/1, 'measure referred to in articles 91‑94', 'celex:32024R1689/oj#art_90').
permitted_provide_qualified_alert(Panel, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    (   concrete_identifiable_risk_at_union_level(Model)
    ;   meets_conditions_art_51(Model)
    ).
qualified_alert(Model) :-
    permitted_provide_qualified_alert(_, Model).
must_reason_qualified_alert(Model) :-
    qualified_alert(Model).
must_include_point_of_contact(Model, Provider) :-
    qualified_alert(Model),
    provider(Provider).
must_include_description(Model) :-
    qualified_alert(Model).
must_include_other_information(Model) :-
    qualified_alert(Model).
permitted_exercise_assessment_powers(Comm, Model) :-
    qualified_alert(Model),
    commission(Comm).
must_inform_board_of_measure(AIOffice, Measure) :-
    ai_office(AIOffice),
    measure(Measure).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(must_reason_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(must_include_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_description/1, 'celex:32024R1689/oj#art_90').
provenance(must_include_other_information/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_assessment_powers/2, 'celex:32024R1689/oj#art_90').
provenance(commission/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
provenance(measure/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_91').
declared(provider_of_general_purpose_ai_model/1, 'provider that offers a general‑purpose AI model', 'celex:32024R1689/oj#art_91').
declared(permitted_request_information/2, 'permission for an actor to request documentation and information from a provider', 'celex:32024R1689/oj#art_91').
declared(permitted_initiate_structured_dialogue/2, 'permission for the AI Office to start a structured dialogue with a provider', 'celex:32024R1689/oj#art_91').
declared(permitted_issue_request_information/2, 'permission for the Commission to issue a request for information after a scientific panel request', 'celex:32024R1689/oj#art_91').
declared(request_information/1, 'formal request for documentation or information issued by the Commission', 'celex:32024R1689/oj#art_91').
declared(must_state_legal_basis_and_purpose/1, 'obligation that a request states its legal basis and purpose', 'celex:32024R1689/oj#art_91').
declared(must_specify_required_information/1, 'obligation that a request specifies the information required', 'celex:32024R1689/oj#art_91').
declared(must_set_provision_period/1, 'obligation that a request sets a deadline for provision', 'celex:32024R1689/oj#art_91').
declared(must_indicate_fines/1, 'obligation that a request indicates applicable fines for incorrect information', 'celex:32024R1689/oj#art_91').
declared(must_supply_requested_information/2, 'obligation for a provider or its representative to supply the requested information', 'celex:32024R1689/oj#art_91').
declared(representative_of_provider/2, 'person authorised to act on behalf of a provider', 'celex:32024R1689/oj#art_91').
declared(scientific_panel_request/1, 'substantiated request made by the scientific panel', 'celex:32024R1689/oj#art_91').
declared(necessary_and_proportionate/1, 'condition that access to information is necessary and proportionate', 'celex:32024R1689/oj#art_91').
provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(_M).
permitted_request_information(C, P) :-
    commission(C),
    provider_of_general_purpose_ai_model(P).
permitted_initiate_structured_dialogue(AO, P) :-
    ai_office(AO),
    provider_of_general_purpose_ai_model(P).
permitted_issue_request_information(C, P) :-
    commission(C),
    provider_of_general_purpose_ai_model(P),
    scientific_panel_request(_R),
    necessary_and_proportionate(P).
must_state_legal_basis_and_purpose(R) :-
    request_information(R).
must_specify_required_information(R) :-
    request_information(R).
must_set_provision_period(R) :-
    request_information(R).
must_indicate_fines(R) :-
    request_information(R).
must_supply_requested_information(P, R) :-
    provider_of_general_purpose_ai_model(P),
    request_information(R).
must_supply_requested_information(Rep, R) :-
    representative_of_provider(Rep, P),
    provider_of_general_purpose_ai_model(P),
    request_information(R).
provenance(permitted_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_issue_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(must_state_legal_basis_and_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(must_specify_required_information/1, 'celex:32024R1689/oj#art_91').
provenance(must_set_provision_period/1, 'celex:32024R1689/oj#art_91').
provenance(must_indicate_fines/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_92').
declared(independent_expert/1, 'independent expert appointed for evaluation', 'celex:32024R1689/oj#art_92').
declared(request_for_access/1, 'request for access to a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(appointed_for_evaluation/1, 'independent expert appointed for evaluation', 'celex:32024R1689/oj#art_92').
permitted_conduct_evaluations(AIOffice, Model) :-
    ai_office(AIOffice),
    general_purpose_ai_model(Model).
permitted_appoint_independent_expert(Commission, Expert) :-
    commission(Commission),
    independent_expert(Expert).
permitted_request_access(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model).
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider).
appointed_for_evaluation(Expert) :-
    permitted_appoint_independent_expert(_, Expert).
request_for_access(Request) :-
    permitted_request_access(_, Request).
required_meet_criteria(Expert) :-
    independent_expert(Expert),
    appointed_for_evaluation(Expert).
must_state_legal_basis_purpose_reason_and_period(Request) :-
    request_for_access(Request).
must_supply_information(Provider, Request) :-
    provider(Provider),
    request_for_access(Request).
must_provide_access(Representative, Provider, Model) :-
    authorised_representative(Representative),
    provider(Provider),
    general_purpose_ai_model(Model).
must_adopt_implementing_acts(commission).
provenance(permitted_conduct_evaluations/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_independent_expert/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
provenance(appointed_for_evaluation/1, 'celex:32024R1689/oj#art_92').
provenance(request_for_access/1, 'celex:32024R1689/oj#art_92').
provenance(required_meet_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(must_state_legal_basis_purpose_reason_and_period/1, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/3, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_93').
permitted_request_take_appropriate_measures(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P),
    general_purpose_ai_system(_).
provenance(permitted_request_take_appropriate_measures/2, 'celex:32024R1689/oj#art_93').
permitted_request_implement_mitigation_measures(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P),
    systemic_risk(_).
provenance(permitted_request_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').
permitted_request_restrict_market_withdraw_recall(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P).
provenance(permitted_request_restrict_market_withdraw_recall/2, 'celex:32024R1689/oj#art_93').
permitted_initiate_structured_dialogue(AIO, P) :-
    ai_office(AIO), ai_office(AIO),
    provider(P), provider(P),
    general_purpose_ai_system(_).
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
permitted_make_commitments_binding(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P),
    systemic_risk(_).
provenance(permitted_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(required_procedural_rights/2, 'procedural rights that must be afforded', 'celex:32024R1689/oj#art_94').
required_procedural_rights(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
provenance(required_procedural_rights/2, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_95').
declared(smes/1, 'Small and medium‑sized enterprises', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct/1, 'Voluntary code of conduct for AI systems', 'celex:32024R1689/oj#art_95').
declared(other_than_high_risk_ai_system/1, 'AI system that is not high‑risk', 'celex:32024R1689/oj#art_95').
declared(organisation/1, 'Organisation representing providers or deployers', 'celex:32024R1689/oj#art_95').
declared(must_encourage/2, 'Obligation to encourage the drawing up of a code of conduct', 'celex:32024R1689/oj#art_95').
declared(must_facilitate/2, 'Obligation to facilitate the drawing up of a code of conduct', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account/2, 'Obligation to take into account the interests of SMEs', 'celex:32024R1689/oj#art_95').
declared(permitted_drawing_up_codes_of_conduct_by/1, 'Permission to draw up a code of conduct', 'celex:32024R1689/oj#art_95').
must_encourage(ai_office, drawing_up_codes_of_conduct(C)) :-
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).
must_encourage(MS, drawing_up_codes_of_conduct(C)) :-
    member_state(MS),
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).
must_facilitate(ai_office, drawing_up_codes_of_conduct(C)) :-
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).
must_facilitate(MS, drawing_up_codes_of_conduct(C)) :-
    member_state(MS),
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).
must_take_into_account(ai_office, smes).
must_take_into_account(MS, smes) :-
    member_state(MS).
permitted_drawing_up_codes_of_conduct_by(P) :-
    provider(P).
permitted_drawing_up_codes_of_conduct_by(D) :-
    deployer(D).
permitted_drawing_up_codes_of_conduct_by(O) :-
    organisation(O).
provenance(must_encourage/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct_by/1, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_96').
declared(regulation/1, 'AI Regulation', 'celex:32024R1689/oj#art_96').
declared(guideline_item/1, 'subject of a guideline', 'celex:32024R1689/oj#art_96').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_96').
declared(ai_office/1, 'AI Office of the Commission', 'celex:32024R1689/oj#art_96').
declared(request_from/1, 'request made by', 'celex:32024R1689/oj#art_96').
declared(own_initiative/1, 'initiative taken by', 'celex:32024R1689/oj#art_96').
declared(deemed_necessary/1, 'deemed necessary by', 'celex:32024R1689/oj#art_96').
declared(target_group/1, 'group whose needs must be considered', 'celex:32024R1689/oj#art_96').
regulation(ai_regulation).
guideline_item('celex:32024R1689/oj#art_8').
guideline_item('celex:32024R1689/oj#art_9').
guideline_item('celex:32024R1689/oj#art_10').
guideline_item('celex:32024R1689/oj#art_11').
guideline_item('celex:32024R1689/oj#art_12').
guideline_item('celex:32024R1689/oj#art_13').
guideline_item('celex:32024R1689/oj#art_14').
guideline_item('celex:32024R1689/oj#art_15').
guideline_item('celex:32024R1689/oj#art_25').
guideline_item('celex:32024R1689/oj#art_5').
guideline_item('celex:32024R1689/oj#art_50').
guideline_item('celex:32024R1689/oj#anx_1').
guideline_item('celex:32024R1689/oj#art_3/unp_1/pnt_1').
target_group(smes).
target_group(local_public_authority).
target_group(affected_sector).
member_state(member_state).
ai_office(ai_office).
request_from(X) :- member_state(X).
request_from(X) :- ai_office(X).
own_initiative(commission).
deemed_necessary(commission).
required_develop_guidelines(C, R) :-
    commission(C),
    regulation(R).
required_guideline_content(C, Item) :-
    commission(C),
    guideline_item(Item).
required_pay_attention_to_needs(C, Group) :-
    commission(C),
    target_group(Group).
required_consider_state_of_the_art(C) :-
    commission(C).
required_consider_harmonised_standards(C) :-
    commission(C).
required_consider_common_specifications(C) :-
    commission(C).
required_update_guidelines(C) :-
    commission(C),
    request_from(_Requester),
    deemed_necessary(C).
required_update_guidelines(C) :-
    commission(C),
    own_initiative(C),
    deemed_necessary(C).
provenance(required_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(required_guideline_content/2, 'celex:32024R1689/oj#art_96').
provenance(required_pay_attention_to_needs/2, 'celex:32024R1689/oj#art_96').
provenance(required_consider_state_of_the_art/1, 'celex:32024R1689/oj#art_96').
provenance(required_consider_harmonised_standards/1, 'celex:32024R1689/oj#art_96').
provenance(required_consider_common_specifications/1, 'celex:32024R1689/oj#art_96').
provenance(required_update_guidelines/1, 'celex:32024R1689/oj#art_96').
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
declared(required_power_to_adopt_delegated_acts/1, 'Commission must have power to adopt delegated acts', 'celex:32024R1689/oj#art_97').
declared(required_report/2, 'Commission must draw up a report on the delegation of power', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_report/2, 'Commission must draw up a report in respect of the delegation of power', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts/1, 'Commission must consult experts designated by each Member State before adopting a delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission must notify a delegated act simultaneously to the European Parliament and the Council', 'celex:32024R1689/oj#art_97').
declared(permitted_revocation/2, 'Parliament or Council may revoke the delegation of power', 'celex:32024R1689/oj#art_97').
declared(permitted_tacit_extension/1, 'Delegation of power is tacitly extended unless Parliament or Council opposes', 'celex:32024R1689/oj#art_97').
declared(permitted_entry_into_force/1, 'Delegated act enters into force only if no objection by Parliament or Council', 'celex:32024R1689/oj#art_97').
declared(opposition/2, 'Parliament or Council opposes extension of the delegation of power', 'celex:32024R1689/oj#art_97').
declared(objection/2, 'Parliament or Council objects to a delegated act', 'celex:32024R1689/oj#art_97').
declared(delegation_of_power/1, 'Specific delegation of power', 'celex:32024R1689/oj#art_97').
required_power_to_adopt_delegated_acts(commission).
required_report(commission, delegation_of_power).
must_draw_up_report(commission, delegation_of_power).
must_consult_experts(commission).
must_notify(commission, _).
delegation_of_power(delegation_of_power).
permitted_revocation(Delegation, parliament) :-
    delegation_of_power(Delegation).
permitted_revocation(Delegation, council) :-
    delegation_of_power(Delegation).
permitted_tacit_extension(Delegation) :-
    delegation_of_power(Delegation),
    \+ opposition(parliament, Delegation),
    \+ opposition(council, Delegation).
permitted_entry_into_force(Act) :-
    \+ objection(parliament, Act),
    \+ objection(council, Act).
provenance(required_power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_97').
provenance(required_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/1, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revocation/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(permitted_entry_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(opposition/2, 'celex:32024R1689/oj#art_97').
provenance(objection/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power/1, 'celex:32024R1689/oj#art_97').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_98').
declared(committee/1, 'Committee assisting the Commission', 'celex:32024R1689/oj#art_98').
declared(must_assist/2, 'Duty of the Commission to be assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(required_apply_provision/2, 'Requirement that a referenced provision shall apply', 'celex:32024R1689/oj#art_98').
committee(committee).
must_assist(Commission, Committee) :-
    commission(Commission),
    committee(Committee).
required_apply_provision('celex:32011R0182/oj#art_5', 'celex:32024R1689/oj#art_98/par_2').
provenance(commission/1, 'celex:32024R1689/oj#art_98').
provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(must_assist/2, 'celex:32024R1689/oj#art_98').
provenance(required_apply_provision/2, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_99').
declared(required_lay_down_penalties_rules/1, 'Obligation for a Member State to lay down rules on penalties', 'celex:32024R1689/oj#art_99').
declared(required_notify_commission_of_penalties_rules/1, 'Obligation for a Member State to notify the Commission of the rules on penalties', 'celex:32024R1689/oj#art_99').
declared(required_notify_commission_of_amendment/1, 'Obligation for a Member State to notify the Commission of any amendment to the rules on penalties', 'celex:32024R1689/oj#art_99').
declared(required_fine_for_ai_practice_prohibition/2, 'Administrative fine applicable for non‑compliance with the prohibition of AI practices', 'celex:32024R1689/oj#art_99').
declared(required_fine_for_operator_obligation_non_compliance/2, 'Administrative fine applicable for non‑compliance with obligations of operators or notified bodies', 'celex:32024R1689/oj#art_99').
declared(required_fine_for_misleading_information/2, 'Administrative fine applicable for supplying incorrect, incomplete or misleading information to notified bodies or national competent authorities', 'celex:32024R1689/oj#art_99').
declared(required_rules_on_fines_for_public_authorities/1, 'Obligation for a Member State to lay down rules on fines for public authorities', 'celex:32024R1689/oj#art_99').
declared(required_annual_report_of_fines/1, 'Obligation for a Member State to report annually to the Commission on administrative fines issued', 'celex:32024R1689/oj#art_99').
required_lay_down_penalties_rules(MS) :-
    member_state(MS).
required_notify_commission_of_penalties_rules(MS) :-
    member_state(MS).
required_notify_commission_of_amendment(MS) :-
    member_state(MS).
required_rules_on_fines_for_public_authorities(MS) :-
    member_state(MS).
required_annual_report_of_fines(MS) :-
    member_state(MS).
required_fine_for_ai_practice_prohibition(Offender, eur(35000000)) :-
    non_compliance_with_prohibition(Offender, ai_practice),
    \+ undertaking(Offender).
required_fine_for_ai_practice_prohibition(Offender, percent(7)) :-
    non_compliance_with_prohibition(Offender, ai_practice),
    undertaking(Offender).
required_fine_for_operator_obligation_non_compliance(Offender, eur(15000000)) :-
    (operator(Offender) ; notified_body(Offender)),
    non_compliance_with_obligation(Offender, _Obligation),
    \+ undertaking(Offender).
required_fine_for_operator_obligation_non_compliance(Offender, percent(3)) :-
    (operator(Offender) ; notified_body(Offender)),
    non_compliance_with_obligation(Offender, _Obligation),
    undertaking(Offender).
required_fine_for_misleading_information(Offender, eur(7500000)) :-
    provides_incorrect_information(Offender),
    \+ undertaking(Offender).
required_fine_for_misleading_information(Offender, percent(1)) :-
    provides_incorrect_information(Offender),
    undertaking(Offender).
provenance(required_lay_down_penalties_rules/1, 'celex:32024R1689/oj#art_99').
provenance(required_notify_commission_of_penalties_rules/1, 'celex:32024R1689/oj#art_99').
provenance(required_notify_commission_of_amendment/1, 'celex:32024R1689/oj#art_99').
provenance(required_rules_on_fines_for_public_authorities/1, 'celex:32024R1689/oj#art_99').
provenance(required_annual_report_of_fines/1, 'celex:32024R1689/oj#art_99').
provenance(required_fine_for_ai_practice_prohibition/2, 'celex:32024R1689/oj#art_99').
provenance(required_fine_for_operator_obligation_non_compliance/2, 'celex:32024R1689/oj#art_99').
provenance(required_fine_for_misleading_information/2, 'celex:32024R1689/oj#art_99').
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
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_100').
declared(union_entity/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_100').
declared(amount_up_to/1, 'Maximum monetary amount for an administrative fine', 'celex:32024R1689/oj#art_100').
declared(permitted_impose_administrative_fine/3, 'Permission for the European Data Protection Supervisor to impose an administrative fine', 'celex:32024R1689/oj#art_100').
declared(required_consideration_of_factors/2, 'Requirement to take into account all relevant circumstances when deciding a fine', 'celex:32024R1689/oj#art_100').
declared(factor_nature_gravity_duration_applies/1, 'Nature, gravity and duration of the infringement are taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_purpose_applies/1, 'Purpose of the AI system concerned is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_number_affected_applies/1, 'Number of affected persons is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_level_of_damage_applies/1, 'Level of damage suffered by affected persons is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_responsibility_applies/1, 'Degree of responsibility of the Union entity is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_technical_measures_applies/1, 'Technical and organisational measures implemented are taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_mitigation_action_applies/1, 'Any action taken to mitigate damage is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_cooperation_applies/1, 'Degree of cooperation with the Supervisor is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_previous_infringements_applies/1, 'Any similar previous infringements are taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_manner_of_discovery_applies/1, 'Manner in which the infringement became known is taken into account', 'celex:32024R1689/oj#art_100').
declared(factor_annual_budget_applies/1, 'Annual budget of the Union entity is taken into account', 'celex:32024R1689/oj#art_100').
declared(non_compliance_with_prohibition_of_ai_practices/1, 'Non‑compliance with the prohibition of AI practices referred to in art 5', 'celex:32024R1689/oj#art_100').
declared(non_compliance_with_requirements_other_than_art5/1, 'Non‑compliance with any requirements or obligations other than those laid down in art 5', 'celex:32024R1689/oj#art_100').
declared(required_fine_up_to/2, 'Administrative fine up to a specified amount for a given non‑compliance', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'Duty to give the Union entity the opportunity to be heard before a decision', 'celex:32024R1689/oj#art_100').
declared(must_respect_rights_of_defence/1, 'Duty to fully respect the rights of defence of the parties concerned', 'celex:32024R1689/oj#art_100').
declared(must_allow_access_to_file/2, 'Duty to allow the Union entity access to the Supervisor’s file, subject to legitimate interest', 'celex:32024R1689/oj#art_100').
declared(legitimate_interest_excludes_access/1, 'Legitimate interest of individuals or undertakings that excludes access to the file', 'celex:32024R1689/oj#art_100').
declared(must_notify/2, 'Duty of the Supervisor to annually notify the Commission of imposed fines and related proceedings', 'celex:32024R1689/oj#art_100').
declared(annual_basis_applies/0, 'Indicates that a duty applies on an annual basis', 'celex:32024R1689/oj#art_100').
permitted_impose_administrative_fine(EDPS, Entity, Amount) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity),
    amount_up_to(Amount).
provenance(permitted_impose_administrative_fine/3, 'celex:32024R1689/oj#art_100').
required_consideration_of_factors(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity),
    factor_nature_gravity_duration_applies(Entity),
    factor_purpose_applies(Entity),
    factor_number_affected_applies(Entity),
    factor_level_of_damage_applies(Entity),
    factor_responsibility_applies(Entity),
    factor_technical_measures_applies(Entity),
    factor_mitigation_action_applies(Entity),
    factor_cooperation_applies(Entity),
    factor_previous_infringements_applies(Entity),
    factor_manner_of_discovery_applies(Entity),
    factor_annual_budget_applies(Entity).
provenance(required_consideration_of_factors/2, 'celex:32024R1689/oj#art_100').
factor_nature_gravity_duration_applies(_).
factor_purpose_applies(_).
factor_number_affected_applies(_).
factor_level_of_damage_applies(_).
factor_responsibility_applies(_).
factor_technical_measures_applies(_).
factor_mitigation_action_applies(_).
factor_cooperation_applies(_).
factor_previous_infringements_applies(_).
factor_manner_of_discovery_applies(_).
factor_annual_budget_applies(_).
required_fine_up_to(NonComp, 1500000) :-
    non_compliance_with_prohibition_of_ai_practices(NonComp).
provenance(required_fine_up_to/2, 'celex:32024R1689/oj#art_100').
required_fine_up_to(NonComp, 750000) :-
    non_compliance_with_requirements_other_than_art5(NonComp).
must_give_opportunity_to_be_heard(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity).
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
must_respect_rights_of_defence(Entity) :-
    union_entity(Entity).
provenance(must_respect_rights_of_defence/1, 'celex:32024R1689/oj#art_100').
must_allow_access_to_file(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity),
    \+ legitimate_interest_excludes_access(Entity).
provenance(must_allow_access_to_file/2, 'celex:32024R1689/oj#art_100').
must_notify(Commission, EDPS) :-
    commission(Commission),
    european_data_protection_supervisor(EDPS),
    annual_basis_applies.
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').
annual_basis_applies.
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(provides_general_purpose_ai_model/2, 'provider provides a general‑purpose AI model', 'celex:32024R1689/oj#art_101').
declared(commission_finds_intentional_or_negligent_infringement/1, 'commission finds that the provider acted intentionally or negligently', 'celex:32024R1689/oj#art_101').
declared(infringement_a/1, 'provider infringed the relevant provisions of the Regulation', 'celex:32024R1689/oj#art_101').
declared(infringement_b/1, 'provider failed to comply with a request for a document or information or supplied incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_101').
declared(infringement_c/1, 'provider failed to comply with a measure requested by the Commission', 'celex:32024R1689/oj#art_101').
declared(infringement_d/1, 'provider failed to make available the general‑purpose AI model or model with systemic risk for evaluation', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_request/2, 'provider failed to comply with a request for a document or information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_measure/1, 'provider failed to comply with a measure requested by the Commission', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available_model/1, 'provider failed to make available the AI model for Commission evaluation', 'celex:32024R1689/oj#art_101').
declared(permitted_fine_imposition/2, 'Commission may impose a fine on a provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_101').
declared(required_fine_not_exceeding_limit/2, 'fine must not exceed 3 % of annual worldwide turnover or EUR 15 000 000, whichever is higher', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'Commission shall communicate preliminary findings to the provider before adopting a decision', 'celex:32024R1689/oj#art_101').
declared(required_fine_characteristics/1, 'fines shall be effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_101').
declared(must_communicate_fine_information/3, 'information on fines shall be communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(must_have_unlimited_jurisdiction/2, 'Court of Justice shall have unlimited jurisdiction to review Commission fine decisions', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts containing detailed arrangements and procedural safeguards', 'celex:32024R1689/oj#art_101').
provides_general_purpose_ai_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
provenance(provides_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_101').
commission_finds_intentional_or_negligent_infringement(Provider) :-
    infringement_a(Provider) ;
    infringement_b(Provider) ;
    infringement_c(Provider) ;
    infringement_d(Provider).
provenance(commission_finds_intentional_or_negligent_infringement/1, 'celex:32024R1689/oj#art_101').
infringement_a(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    infringed_relevant_provisions(Provider).
provenance(infringement_a/1, 'celex:32024R1689/oj#art_101').
infringement_b(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    failed_to_comply_with_request(Provider, document_or_information).
provenance(infringement_b/1, 'celex:32024R1689/oj#art_101').
infringement_c(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    failed_to_comply_with_measure(Provider).
provenance(infringement_c/1, 'celex:32024R1689/oj#art_101').
infringement_d(Provider) :-
    provider(Provider),
    intentional_or_negligent(Provider),
    failed_to_make_available_model(Provider).
provenance(infringement_d/1, 'celex:32024R1689/oj#art_101').
permitted_fine_imposition(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_general_purpose_ai_model(Provider, Model),
    commission_finds_intentional_or_negligent_infringement(Provider).
provenance(permitted_fine_imposition/2, 'celex:32024R1689/oj#art_101').
required_fine_not_exceeding_limit(Provider, Fine) :-
    provider(Provider),
    annual_total_worldwide_turnover(Provider, Turnover),
    Max1 is 0.03 * Turnover,
    ( Max1 > 15000000 -> Max = Max1 ; Max = 15000000 ),
    Fine =< Max.
provenance(required_fine_not_exceeding_limit/2, 'celex:32024R1689/oj#art_101').
must_communicate_preliminary_findings(_Commission, Provider) :-
    provider(Provider).
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
required_fine_characteristics(Fine) :-
    effective(Fine),
    proportionate(Fine),
    dissuasive(Fine).
provenance(required_fine_characteristics/1, 'celex:32024R1689/oj#art_101').
must_communicate_fine_information(_Commission, _Board, Fine) :-
    fine(Fine).
provenance(must_communicate_fine_information/3, 'celex:32024R1689/oj#art_101').
must_have_unlimited_jurisdiction(_Court, _Decision).
provenance(must_have_unlimited_jurisdiction/2, 'celex:32024R1689/oj#art_101').
must_adopt_implementing_acts(_Commission, Act) :-
    implementing_act(Act).
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(adoption_of_detailed_measures_applies/1, 'adoption of detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems', 'celex:32024R1689/oj#art_102').
declared(requirement/1, 'requirement set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_102').
required_consideration_of_requirements(Actor, Requirement) :-
    adoption_of_detailed_measures_applies(Actor),
    requirement(Requirement).
provenance(required_consideration_of_requirements/2, 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#art_4/par_3').
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
declared(delegated_act/1, 'delegated act adopted pursuant to the AI regulation', 'celex:32024R1689/oj#art_103').
declared(act_concerns_ai_system/2, 'delegated act concerns a given AI system', 'celex:32024R1689/oj#art_103').
declared(act_is_delegated/1, 'act is a delegated act', 'celex:32024R1689/oj#art_103').
declared(concerning_safety_component_ai_system/1, 'delegated act concerns an AI system that is a safety component', 'celex:32024R1689/oj#art_103').
declared(required_consideration_of_requirements_chapter_3_section_2/1, 'requirements of chapter 3 section 2 shall be taken into account', 'celex:32024R1689/oj#art_103').
act_is_delegated(Act) :-
    delegated_act(Act).
concerning_safety_component_ai_system(Act) :-
    act_is_delegated(Act),
    act_concerns_ai_system(Act, S),
    safety_component(S).
required_consideration_of_requirements_chapter_3_section_2(Act) :-
    delegated_act(Act),
    concerning_safety_component_ai_system(Act).
provenance(act_is_delegated/1, 'celex:32024R1689/oj#art_103').
provenance(concerning_safety_component_ai_system/1, 'celex:32024R1689/oj#art_103').
provenance(required_consideration_of_requirements_chapter_3_section_2/1, 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#art_103').
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
declared(safety_component_ai_system/1, 'AI system that is a safety component', 'celex:32024R1689/oj#art_104').
declared(adopt_delegated_act/2, 'adoption of a delegated act concerning an AI system', 'celex:32024R1689/oj#art_104').
declared(required_consideration_of_requirements/2, 'requirement to take into account specific requirements when adopting delegated acts', 'celex:32024R1689/oj#art_104').
declared(requirement_chapter3_section2/1, 'requirements set out in chapter 3 section 2', 'celex:32024R1689/oj#art_104').
declared(delegated_act/1, 'delegated act pursuant to the AI Regulation', 'celex:32024R1689/oj#art_104').
safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).
adopt_delegated_act(_Actor, Act) :-
    delegated_act(Act).
required_consideration_of_requirements(Actor, Req) :-
    adopt_delegated_act(Actor, Act),
    safety_component_ai_system(Act),
    requirement_chapter3_section2(Req).
requirement_chapter3_section2(requirements_ch3_sec2).
delegated_act(_).
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_104').
provenance(adopt_delegated_act/2, 'celex:32024R1689/oj#art_104').
provenance(required_consideration_of_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(requirement_chapter3_section2/1, 'celex:32024R1689/oj#art_104').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_104').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_105').
declared(activity_pursuant_to/2, 'activity carried out pursuant to a legal provision', 'celex:32024R1689/oj#art_105').
declared(adopts_technical_specifications_and_testing_standards/2, 'adopts technical specifications and testing standards in accordance with a legal provision', 'celex:32024R1689/oj#art_105').
declared(must_take_into_account/2, 'obligation for an actor to consider certain requirements', 'celex:32024R1689/oj#art_105').
must_take_into_account(Commission, Requirement) :-
    commission(Commission),
    safety_component(_),
    activity_pursuant_to(Commission, 'celex:32014L0090/oj#art_8/par_1'),
    adopts_technical_specifications_and_testing_standards(Commission, 'celex:32014L0090/oj#art_8/par_2'),
    adopts_technical_specifications_and_testing_standards(Commission, 'celex:32014L0090/oj#art_8/par_3'),
    Requirement = 'celex:32024R1689/oj#chp_3/sec_2'.
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
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
declared(delegated_act/1, 'delegated act adopted pursuant to article 5 paragraph 1', 'celex:32024R1689/oj#art_106').
declared(implementing_act/1, 'implementing act adopted pursuant to article 5 paragraph 11', 'celex:32024R1689/oj#art_106').
declared(concerning_ai_system/2, 'act concerns an AI system', 'celex:32024R1689/oj#art_106').
declared(requirements_set_out_in/2, 'requirements set out in a given location', 'celex:32024R1689/oj#art_106').
required_take_into_account_requirements(Act, Req) :-
    ( delegated_act(Act) ; implementing_act(Act) ),
    concerning_ai_system(Act, S),
    ai_system(S),
    safety_component(S),
    requirements_set_out_in(Req, chp_3_sec_2).
provenance(required_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
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
declared(delegated_act/1, 'delegated act adopted pursuant to article 5 paragraph 3 concerning AI systems which are safety components', 'celex:32024R1689/oj#art_107').
declared(concerns/2, 'delegated act concerns a given AI system', 'celex:32024R1689/oj#art_107').
declared(required_take_into_account_requirements/1, 'when adopting a delegated act, the requirements set out in chapter 3 section 2 shall be taken into account', 'celex:32024R1689/oj#art_107').
declared(requirements_chapter_3_section_2_applies/0, 'requirements set out in chapter 3 section 2 are applicable', 'celex:32024R1689/oj#art_107').
required_take_into_account_requirements(DA) :-
    delegated_act(DA),
    concerns(DA, S),
    safety_component(S),
    ai_system(S),
    requirements_chapter_3_section_2_applies.
requirements_chapter_3_section_2_applies.
provenance(required_take_into_account_requirements/1, 'celex:32024R1689/oj#art_107').
provenance(requirements_chapter_3_section_2_applies/0, 'celex:32024R1689/oj#art_107').
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
declared(adopt_implementing_act/2, 'adopting implementing act', 'celex:32024R1689/oj#art_108').
declared(adopt_delegated_act/2, 'adopting delegated act', 'celex:32024R1689/oj#art_108').
declared(concerns/2, 'act concerns AI system', 'celex:32024R1689/oj#art_108').
declared(safety_component_ai_system/1, 'AI system that is a safety component', 'celex:32024R1689/oj#art_108').
declared(required_consider_requirements/2, 'required to consider requirements of chapter 3 section 2', 'celex:32024R1689/oj#art_108').
required_consider_requirements(Actor, Act) :-
    adopt_implementing_act(Actor, Act),
    adopt_implementing_act(Actor, Act),
    concerns(Act, S),
    safety_component_ai_system(S).
required_consider_requirements(Actor, Act) :-
    adopt_delegated_act(Actor, Act),
    adopt_delegated_act(Actor, Act),
    concerns(Act, S),
    safety_component_ai_system(S).
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(required_consider_requirements/2, 'celex:32024R1689/oj#art_108').
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
declared(safety_component_ai_system/1, 'AI system that is a safety component', 'celex:32024R1689/oj#art_109').
declared(adopting_implementing_act/1, 'implementing act adopted pursuant to article 11 paragraph 2', 'celex:32024R1689/oj#art_109').
declared(concerns/2, 'implementing act concerns AI system', 'celex:32024R1689/oj#art_109').
declared(required_take_into_account_requirements/2, 'requirements must be taken into account when adopting implementing act', 'celex:32024R1689/oj#art_109').
required_take_into_account_requirements(Act, requirement_chapter_3_section_2) :-
    adopting_implementing_act(Act),
    safety_component_ai_system(S),
    concerns(Act, S).
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_109').
provenance(adopting_implementing_act/1, 'celex:32024R1689/oj#art_109').
provenance(concerns/2, 'celex:32024R1689/oj#art_109').
provenance(required_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
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
declared(component_of_large_scale_it_system/1, 'AI system component of a large‑scale IT system established by listed legal acts', 'art_111').
declared(placed_on_market_before/2, 'AI system placed on the Union market before a given date', 'art_111').
declared(compliance_deadline/2, 'deadline by which a system must comply with the regulation', 'art_111').
declared(compliance_deadline/3, 'deadline by which an actor must ensure a system complies', 'art_111').
declared(significant_design_change/1, 'AI system subject to significant changes in design', 'art_111').
declared(intended_for_public_authorities/1, 'AI system intended to be used by public authorities', 'art_111').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'art_111').
declared(general_purpose_ai_model/1, 'general‑purpose AI model', 'art_111').
declared(paragraph1_system/1, 'AI system covered by paragraph 1 of Art 111', 'art_111').
required_bring_into_compliance(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date('2027-08-02')),
    compliance_deadline(S, date('2030-12-31')).
required_take_into_account_in_evaluation(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date('2027-08-02')),
    
    
    true.
required_regulation_applies_to_operator(Op, S) :-
    operator(Op),
    high_risk_ai_system(S),
    \+ paragraph1_system(S),
    placed_on_market_before(S, date('2026-08-02')),
    significant_design_change(S).
required_take_steps_to_comply(Actor, S) :-
    ( provider(Actor) ; deployer(Actor) ),
    high_risk_ai_system(S),
    intended_for_public_authorities(S),
    placed_on_market_before(S, date('2026-08-02')),
    compliance_deadline(Actor, S, date('2030-08-02')).
required_take_steps_to_comply(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    placed_on_market_before(M, date('2025-08-02')),
    compliance_deadline(Provider, M, date('2027-08-02')).
paragraph1_system(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date('2027-08-02')).
provenance(required_bring_into_compliance/1, 'celex:32024R1689/oj#art_111').
provenance(required_take_into_account_in_evaluation/1, 'celex:32024R1689/oj#art_111').
provenance(required_regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').
provenance(required_take_steps_to_comply/2, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
provenance(compliance_deadline/2, 'celex:32024R1689/oj#art_111').
provenance(compliance_deadline/3, 'celex:32024R1689/oj#art_111').
provenance(significant_design_change/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model/1, 'celex:32024R1689/oj#art_111').
provenance(paragraph1_system/1, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess_amendment_need/1, 'Commission shall assess the need for amendment of the annexed lists', 'celex:32024R1689/oj#art_112').
must_assess_amendment_need(commission).
declared(must_submit_findings/1, 'Commission shall submit the findings of the assessment to the European Parliament and the Council', 'celex:32024R1689/oj#art_112').
must_submit_findings(commission).
declared(must_evaluate_amendment_area_headings/1, 'Commission shall evaluate the need for amendments extending existing area headings or adding new area headings in annex 3', 'celex:32024R1689/oj#art_112').
must_evaluate_amendment_area_headings(commission).
declared(must_evaluate_transparency_amendments/1, 'Commission shall evaluate amendments to the list of AI systems requiring additional transparency measures', 'celex:32024R1689/oj#art_112').
must_evaluate_transparency_amendments(commission).
declared(must_evaluate_supervision_effectiveness/1, 'Commission shall evaluate amendments enhancing the effectiveness of the supervision and governance system', 'celex:32024R1689/oj#art_112').
must_evaluate_supervision_effectiveness(commission).
declared(must_report_to_ep_and_council/1, 'Commission shall report to the European Parliament and the Council', 'celex:32024R1689/oj#art_112').
must_report_to_ep_and_council(commission).
declared(must_submit_evaluation_report/1, 'Commission shall submit a report on the evaluation and review of the Regulation', 'celex:32024R1689/oj#art_112').
must_submit_evaluation_report(commission).
declared(must_include_assessment_of_enforcement_structure/1, 'Report shall include an assessment of the structure of enforcement', 'celex:32024R1689/oj#art_112').
must_include_assessment_of_enforcement_structure(commission).
declared(must_propose_amendment_if_appropriate/1, 'Report shall, where appropriate, be accompanied by a proposal for amendment', 'celex:32024R1689/oj#art_112').
must_propose_amendment_if_appropriate(commission).
declared(must_make_report_public/1, 'Reports shall be made public', 'celex:32024R1689/oj#art_112').
must_make_report_public(commission).
declared(required_report_content/2, 'Reports shall pay specific attention to the listed topics', 'celex:32024R1689/oj#art_112').
required_report_content(commission, resources_of_national_competent_authorities).
required_report_content(commission, state_of_penalties).
required_report_content(commission, adopted_harmonised_standards_and_common_specifications).
required_report_content(commission, number_of_undertakings_and_smes).
declared(must_evaluate_ai_office/1, 'Commission shall evaluate the functioning, powers and competences of the AI Office', 'celex:32024R1689/oj#art_112').
must_evaluate_ai_office(commission).
declared(must_submit_ai_office_report/1, 'Commission shall submit a report on the AI Office evaluation to the European Parliament and the Council', 'celex:32024R1689/oj#art_112').
must_submit_ai_office_report(commission).
declared(must_report_standardisation_progress/1, 'Commission shall submit a report on the progress of standardisation deliverables on energy‑efficient development of general‑purpose AI models', 'celex:32024R1689/oj#art_112').
must_report_standardisation_progress(commission).
declared(must_assess_need_for_further_measures/1, 'Commission shall assess the need for further measures or actions, including binding measures', 'celex:32024R1689/oj#art_112').
must_assess_need_for_further_measures(commission).
declared(must_evaluate_voluntary_codes/1, 'Commission shall evaluate the impact and effectiveness of voluntary codes of conduct for AI systems other than high‑risk AI systems', 'celex:32024R1689/oj#art_112').
must_evaluate_voluntary_codes(commission).
declared(must_provide_information/2, 'Board, Member States and national competent authorities shall provide the Commission with information upon request without undue delay', 'celex:32024R1689/oj#art_112').
must_provide_information(board, commission).
must_provide_information(member_state, commission).
must_provide_information(NCA, commission) :-
    national_competent_authority(NCA).
declared(must_take_into_account/2, 'Commission shall take into account the positions and findings of the Board, the European Parliament, the Council and other relevant bodies', 'celex:32024R1689/oj#art_112').
must_take_into_account(commission, board).
must_take_into_account(commission, european_parliament).
must_take_into_account(commission, council).
must_take_into_account(commission, other_relevant_bodies).
declared(must_submit_proposals/1, 'Commission shall, if necessary, submit appropriate proposals to amend the Regulation', 'celex:32024R1689/oj#art_112').
must_submit_proposals(commission).
declared(must_develop_methodology/1, 'AI Office shall develop an objective and participative methodology for the evaluation of risk levels', 'celex:32024R1689/oj#art_112').
must_develop_methodology(ai_office).
declared(must_assess_enforcement/1, 'Commission shall carry out an assessment of the enforcement of the Regulation', 'celex:32024R1689/oj#art_112').
must_assess_enforcement(commission).
declared(must_report_assessment/1, 'Commission shall report on the enforcement assessment to the European Parliament, the Council and the European Economic and Social Committee', 'celex:32024R1689/oj#art_112').
must_report_assessment(commission).
provenance(must_assess_amendment_need/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_amendment_area_headings/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_transparency_amendments/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_supervision_effectiveness/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_to_ep_and_council/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_evaluation_report/1, 'celex:32024R1689/oj#art_112').
provenance(must_include_assessment_of_enforcement_structure/1, 'celex:32024R1689/oj#art_112').
provenance(must_propose_amendment_if_appropriate/1, 'celex:32024R1689/oj#art_112').
provenance(must_make_report_public/1, 'celex:32024R1689/oj#art_112').
provenance(required_report_content/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_ai_office_report/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_standardisation_progress/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_need_for_further_measures/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_voluntary_codes/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_proposals/1, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_enforcement/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_assessment/1, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').

% ==== celex:32024R1689/oj#art_113 ====
declared(required_entry_into_force/2, 'entry into force of regulation', 'celex:32024R1689/oj#art_113').
declared(required_application_from/2, 'application date of regulation or chapter', 'celex:32024R1689/oj#art_113').
declared(required_obligation_application_from/2, 'application date of obligations', 'celex:32024R1689/oj#art_113').
declared(permitted_application_from/2, 'earlier application date for specific chapter or article', 'celex:32024R1689/oj#art_113').
declared(exempt_application/1, 'exception where application does not apply from earlier date', 'celex:32024R1689/oj#art_113').
required_entry_into_force('celex:32024R1689/oj#art_113', relative_day(20)).
required_application_from('celex:32024R1689/oj#art_113', date(2026,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_1', date(2025,2,2)).
permitted_application_from('celex:32024R1689/oj#chp_2', date(2025,2,2)).
permitted_application_from('celex:32024R1689/oj#chp_3/sec_4', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_5', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_7', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#chp_12', date(2025,8,2)).
permitted_application_from('celex:32024R1689/oj#art_78', date(2025,8,2)).
exempt_application('celex:32024R1689/oj#art_101').
permitted_application_from('celex:32024R1689/oj#art_6/par_1', date(2027,8,2)).
required_obligation_application_from('celex:32024R1689/oj', date(2027,8,2)).
provenance(required_entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(required_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(required_obligation_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(permitted_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(exempt_application/1, 'celex:32024R1689/oj#art_113').
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
declared(listed_union_harmonisation_legislation/1, 'legislation listed in annex I of the AI regulation', 'celex:32024R1689/oj#anx_1').
listed_union_harmonisation_legislation('celex:32006L0042/oj').
listed_union_harmonisation_legislation('celex:31995L0016/oj').
listed_union_harmonisation_legislation('celex:32009L0048/oj').
listed_union_harmonisation_legislation('celex:32013L0053/oj').
listed_union_harmonisation_legislation('celex:31994L0025/oj').
listed_union_harmonisation_legislation('celex:32014L0033/oj').
listed_union_harmonisation_legislation('celex:32014L0034/oj').
listed_union_harmonisation_legislation('celex:32014L0031/oj').
listed_union_harmonisation_legislation('celex:32014L0053/oj').
listed_union_harmonisation_legislation('celex:31999L0005/oj').
listed_union_harmonisation_legislation('celex:32014L0068/oj').
listed_union_harmonisation_legislation('celex:32016R0424/oj').
listed_union_harmonisation_legislation('celex:32000L0009/oj').
listed_union_harmonisation_legislation('celex:32016R0425/oj').
listed_union_harmonisation_legislation('celex:31989L0686/oj').
listed_union_harmonisation_legislation('celex:32016R0426/oj').
listed_union_harmonisation_legislation('celex:32009L0142/oj').
listed_union_harmonisation_legislation('celex:32017R0745/oj').
listed_union_harmonisation_legislation('celex:32001L0083/oj').
listed_union_harmonisation_legislation('celex:32002R0178/oj').
listed_union_harmonisation_legislation('celex:32009R1223/oj').
listed_union_harmonisation_legislation('celex:31990L0385/oj').
listed_union_harmonisation_legislation('celex:31993L0042/oj').
listed_union_harmonisation_legislation('celex:32017R0746/oj').
listed_union_harmonisation_legislation('celex:31998L0079/oj').
listed_union_harmonisation_legislation('celex:32010D0227/oj').
listed_union_harmonisation_legislation('celex:32008R0300/oj').
listed_union_harmonisation_legislation('celex:32002R2320/oj').
listed_union_harmonisation_legislation('celex:32013R0168/oj').
listed_union_harmonisation_legislation('celex:32013R0167/oj').
listed_union_harmonisation_legislation('celex:32014L0090/oj').
listed_union_harmonisation_legislation('celex:31996L0098/oj').
listed_union_harmonisation_legislation('celex:32016L0797/oj').
listed_union_harmonisation_legislation('celex:32018R0858/oj').
listed_union_harmonisation_legislation('celex:32007R0715/oj').
listed_union_harmonisation_legislation('celex:32009R0595/oj').
listed_union_harmonisation_legislation('celex:32007L0046/oj').
listed_union_harmonisation_legislation('celex:32019R2144/oj').
listed_union_harmonisation_legislation('celex:32009R0078/oj').
listed_union_harmonisation_legislation('celex:32009R0079/oj').
listed_union_harmonisation_legislation('celex:32009R0661/oj').
listed_union_harmonisation_legislation('celex:32009R0631/oj').
listed_union_harmonisation_legislation('celex:32010R0406/oj').
listed_union_harmonisation_legislation('celex:32010R0672/oj').
listed_union_harmonisation_legislation('celex:32010R1003/oj').
listed_union_harmonisation_legislation('celex:32010R1005/oj').
listed_union_harmonisation_legislation('celex:32010R1008/oj').
listed_union_harmonisation_legislation('celex:32010R1009/oj').
listed_union_harmonisation_legislation('celex:32011R0019/oj').
listed_union_harmonisation_legislation('celex:32011R0109/oj').
listed_union_harmonisation_legislation('celex:32011R0458/oj').
listed_union_harmonisation_legislation('celex:32012R0065/oj').
listed_union_harmonisation_legislation('celex:32012R0130/oj').
listed_union_harmonisation_legislation('celex:32012R0347/oj').
listed_union_harmonisation_legislation('celex:32012R0351/oj').
listed_union_harmonisation_legislation('celex:32012R1230/oj').
listed_union_harmonisation_legislation('celex:32015R0166/oj').
listed_union_harmonisation_legislation('celex:32018R1139/oj').
listed_union_harmonisation_legislation('celex:32005R2111/oj').
listed_union_harmonisation_legislation('celex:32008R1008/oj').
listed_union_harmonisation_legislation('celex:32010R0996/oj').
listed_union_harmonisation_legislation('celex:32014R0376/oj').
listed_union_harmonisation_legislation('celex:32014L0030/oj').
listed_union_harmonisation_legislation('celex:32004R0552/oj').
listed_union_harmonisation_legislation('celex:32008R0216/oj').
listed_union_harmonisation_legislation('celex:31991R3922/oj').
listed_union_harmonisation_legislation('celex:31991R3922/oj#art_2/par_1/pnt_a').
listed_union_harmonisation_legislation('celex:31991R3922/oj#art_2/par_1/pnt_b').
provenance(listed_union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#anx_1', 'celex:32006L0042/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31995L0016/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009L0048/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013L0053/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31994L0025/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0033/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0034/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0031/oj').
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
declared(criminal_offence/1, 'criminal offence referred to in article 5', 'celex:32024R1689/oj#anx_2').
criminal_offence('terrorism').
criminal_offence('trafficking in human beings').
criminal_offence('sexual exploitation of children').
criminal_offence('child pornography').
criminal_offence('illicit trafficking in narcotic drugs or psychotropic substances').
criminal_offence('illicit trafficking in weapons, munitions or explosives').
criminal_offence('murder').
criminal_offence('grievous bodily injury').
criminal_offence('illicit trade in human organs or tissue').
criminal_offence('illicit trafficking in nuclear or radioactive materials').
criminal_offence('kidnapping').
criminal_offence('illegal restraint or hostage-taking').
criminal_offence('crimes within the jurisdiction of the International Criminal Court').
criminal_offence('unlawful seizure of aircraft or ships').
criminal_offence('rape').
criminal_offence('environmental crime').
criminal_offence('organised or armed robbery').
criminal_offence('sabotage').
criminal_offence('participation in a criminal organisation involved in one or more of the offences listed above').
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under Annex III', 'celex:32024R1689/oj#anx_3').
declared(educational_ai_system/1, 'AI system intended for use in education or vocational training', 'celex:32024R1689/oj#anx_3').
declared(employment_ai_system/1, 'AI system intended for use in employment, workers’ management or self‑employment', 'celex:32024R1689/oj#anx_3').
declared(essential_service_ai_system/1, 'AI system intended for use in essential private or public services and benefits', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_ai_system/1, 'AI system intended for use by law‑enforcement authorities', 'celex:32024R1689/oj#anx_3').
declared(migration_ai_system/1, 'AI system intended for use in migration, asylum or border‑control management', 'celex:32024R1689/oj#anx_3').
declared(justice_ai_system/1, 'AI system intended for use in administration of justice or democratic processes', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S).
high_risk_ai_system(S) :-
    biometric_categorisation_system(S).
high_risk_ai_system(S) :-
    emotion_recognition_system(S).
high_risk_ai_system(S) :-
    safety_component(S),
    critical_infrastructure(S).
high_risk_ai_system(S) :-
    educational_ai_system(S).
high_risk_ai_system(S) :-
    employment_ai_system(S).
high_risk_ai_system(S) :-
    essential_service_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_ai_system(S).
high_risk_ai_system(S) :-
    migration_ai_system(S).
high_risk_ai_system(S) :-
    justice_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(required_technical_documentation_item/2, 'required item in technical documentation for AI system', 'celex:32024R1689/oj#anx_4').
required_technical_documentation_item(S, general_description_intended_purpose) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_provider_name) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_version) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_interaction_hardware_software) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_software_firmware_versions) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_market_placement_forms) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_hardware) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_product_photos_markings) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_user_interface_basic) :-
    ai_system(S).
required_technical_documentation_item(S, general_description_instructions_for_deployer) :-
    ai_system(S).
required_technical_documentation_item(S, development_methods_and_steps) :-
    ai_system(S).
required_technical_documentation_item(S, development_pretrained_systems_usage) :-
    ai_system(S).
required_technical_documentation_item(S, design_specifications_logic_and_algorithms) :-
    ai_system(S).
required_technical_documentation_item(S, design_key_choices_and_rationale) :-
    ai_system(S).
required_technical_documentation_item(S, design_assumptions_about_persons_or_groups) :-
    ai_system(S).
required_technical_documentation_item(S, design_classification_choices) :-
    ai_system(S).
required_technical_documentation_item(S, design_optimisation_and_parameters) :-
    ai_system(S).
required_technical_documentation_item(S, design_expected_output_and_quality) :-
    ai_system(S).
required_technical_documentation_item(S, design_trade_offs_for_compliance) :-
    ai_system(S).
required_technical_documentation_item(S, system_architecture_description) :-
    ai_system(S).
required_technical_documentation_item(S, computational_resources_used) :-
    ai_system(S).
required_technical_documentation_item(S, data_requirements_datasheets) :-
    ai_system(S).
required_technical_documentation_item(S, training_data_sets_description) :-
    ai_system(S).
required_technical_documentation_item(S, data_provenance_and_characteristics) :-
    ai_system(S).
required_technical_documentation_item(S, data_acquisition_and_selection) :-
    ai_system(S).
required_technical_documentation_item(S, data_labelling_procedures) :-
    ai_system(S).
required_technical_documentation_item(S, data_cleaning_methodologies) :-
    ai_system(S).
required_technical_documentation_item(S, human_oversight_assessment_art_14) :-
    ai_system(S).
required_technical_documentation_item(S, technical_measures_for_output_interpretation) :-
    ai_system(S).
required_technical_documentation_item(S, predetermined_changes_description) :-
    ai_system(S).
required_technical_documentation_item(S, continuous_compliance_technical_solutions) :-
    ai_system(S).
required_technical_documentation_item(S, validation_testing_procedures) :-
    ai_system(S).
required_technical_documentation_item(S, validation_testing_data_characteristics) :-
    ai_system(S).
required_technical_documentation_item(S, validation_testing_metrics) :-
    ai_system(S).
required_technical_documentation_item(S, test_logs_and_reports) :-
    ai_system(S).
required_technical_documentation_item(S, cybersecurity_measures) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_capabilities_and_limitations) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_accuracy_for_specific_groups) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_overall_expected_accuracy) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_foreseeable_unintended_outcomes) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_risk_sources_health_safety_fundamental_rights) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_human_oversight_measures_art_14) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_technical_measures_for_output_interpretation) :-
    ai_system(S).
required_technical_documentation_item(S, monitoring_input_data_specifications) :-
    ai_system(S).
required_technical_documentation_item(S, performance_metrics_appropriateness) :-
    ai_system(S).
required_technical_documentation_item(S, risk_management_system_description) :-
    ai_system(S).
required_technical_documentation_item(S, provider_lifecycle_changes) :-
    ai_system(S).
required_technical_documentation_item(S, harmonised_standards_list) :-
    ai_system(S).
required_technical_documentation_item(S, alternative_solutions_when_no_harmonised_standards) :-
    ai_system(S).
required_technical_documentation_item(S, other_relevant_standards_and_specifications) :-
    ai_system(S).
required_technical_documentation_item(S, eu_declaration_of_conformity_copy) :-
    ai_system(S).
required_technical_documentation_item(S, post_market_performance_evaluation_system) :-
    ai_system(S).
required_technical_documentation_item(S, post_market_monitoring_plan) :-
    ai_system(S).
provenance(required_technical_documentation_item/2, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(must_contain/2, 'obligation to include specific information in the EU declaration of conformity', 'celex:32024R1689/oj#anx_5').
must_contain(Provider, ai_system_name_and_type) :-
    provider(Provider).
must_contain(Provider, provider_name_and_address) :-
    provider(Provider).
must_contain(Provider, statement_provider_responsibility) :-
    provider(Provider).
must_contain(Provider, statement_conformity_with_regulation) :-
    provider(Provider).
must_contain(Provider, statement_personal_data_compliance) :-
    provider(Provider).
must_contain(Provider, references_harmonised_standards_or_common_specification) :-
    provider(Provider).
must_contain(Provider, notified_body_details) :-
    provider(Provider).
must_contain(Provider, place_date_and_signatory_information) :-
    provider(Provider).
provenance(must_contain/2, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(provide_ai_system/2, 'provider provides an AI system', 'celex:32024R1689/oj#anx_6').
declared(quality_management_system/1, 'quality management system of an AI system', 'celex:32024R1689/oj#anx_6').
declared(technical_documentation/1, 'technical documentation of an AI system', 'celex:32024R1689/oj#anx_6').
declared(design_and_development_process/1, 'design and development process of an AI system', 'celex:32024R1689/oj#anx_6').
declared(post_market_monitoring/1, 'post‑market monitoring of an AI system', 'celex:32024R1689/oj#anx_6').
must_verify(Provider, quality_management_system(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    quality_management_system(System).
must_examine(Provider, technical_documentation(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    technical_documentation(System).
must_verify(Provider, design_and_development_process(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    design_and_development_process(System).
must_verify(Provider, post_market_monitoring(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    post_market_monitoring(System).
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(required_application_includes/2, 'items that must be included in the provider''s conformity assessment application', 'celex:32024R1689/oj#anx_7').
declared(must_assess_quality_management_system/2, 'obligation of the notified body to assess the quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_notify_assessment_conclusions/2, 'obligation of the notified body to notify the provider of the assessment conclusions', 'celex:32024R1689/oj#anx_7').
declared(must_maintain_quality_management_system/1, 'obligation of the provider to keep the approved quality management system in place', 'celex:32024R1689/oj#anx_7').
declared(must_notify_change_to_qms/2, 'obligation of the provider to inform the notified body of any intended change to the quality management system or covered AI‑system list', 'celex:32024R1689/oj#anx_7').
declared(must_examine_qms_change/2, 'obligation of the notified body to examine a change to the quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_lodge_technical_documentation_application/3, 'obligation of the provider to lodge an application for technical documentation assessment with a notified body', 'celex:32024R1689/oj#anx_7').
declared(required_technical_doc_application_includes/2, 'items that must be included in the technical documentation assessment application', 'celex:32024R1689/oj#anx_7').
declared(must_examine_technical_documentation/2, 'obligation of the notified body to examine the technical documentation', 'celex:32024R1689/oj#anx_7').
declared(must_grant_full_access_to_data/3, 'obligation of the notified body to be granted full access to data sets for assessment', 'celex:32024R1689/oj#anx_7').
declared(must_require_further_evidence/2, 'right of the notified body to require further evidence or tests from the provider', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out_adequate_tests/2, 'obligation of the notified body to carry out its own tests where the provider''s tests are insufficient', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access_to_models/3, 'obligation of the notified body to be granted access to training data and trained models for high‑risk AI systems', 'celex:32024R1689/oj#anx_7').
declared(must_notify_decision/2, 'obligation of the notified body to notify the provider of its assessment decision', 'celex:32024R1689/oj#anx_7').
declared(must_issue_certificate_if_conform/2, 'obligation of the notified body to issue a Union technical documentation assessment certificate when the AI system conforms', 'celex:32024R1689/oj#anx_7').
declared(must_refuse_certificate_if_nonconform/2, 'obligation of the notified body to refuse the certificate when the AI system does not conform', 'celex:32024R1689/oj#anx_7').
declared(must_inform_change_to_ai_system/2, 'obligation of the provider to inform the notified body of any change to the AI system that may affect conformity', 'celex:32024R1689/oj#anx_7').
declared(must_assess_change/2, 'obligation of the notified body to assess a change to the AI system', 'celex:32024R1689/oj#anx_7').
declared(must_allow_access_to_premises/2, 'obligation of the provider to allow the notified body access to premises for assessment', 'celex:32024R1689/oj#anx_7').
declared(must_share_information/2, 'obligation of the provider to share all necessary information with the notified body', 'celex:32024R1689/oj#anx_7').
declared(must_conduct_periodic_audits/2, 'obligation of the notified body to carry out periodic audits of the provider''s quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_provide_audit_report/2, 'obligation of the notified body to provide the provider with an audit report', 'celex:32024R1689/oj#anx_7').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#anx_7').
required_application_includes(Provider, name_and_address_of_provider) :-
    provider(Provider).
required_application_includes(Provider, name_and_address_of_authorised_representative) :-
    provider(Provider),
    authorised_representative(_).
required_application_includes(Provider, list_of_ai_systems_covered) :-
    provider(Provider).
required_application_includes(Provider, technical_documentation_for_each_ai_system) :-
    provider(Provider).
required_application_includes(Provider, documentation_concerning_qms) :-
    provider(Provider).
required_application_includes(Provider, description_of_qms_procedures) :-
    provider(Provider).
required_application_includes(Provider, written_declaration_no_other_notified_body_application) :-
    provider(Provider).
must_assess_quality_management_system(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_notify_assessment_conclusions(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_maintain_quality_management_system(Provider) :-
    provider(Provider).
must_notify_change_to_qms(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).
must_examine_qms_change(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_lodge_technical_documentation_application(Provider, NotifiedBody, AISystem) :-
    provider(Provider),
    notified_body(NotifiedBody),
    ai_system(AISystem).
required_technical_doc_application_includes(Provider, name_and_address_of_provider) :-
    provider(Provider).
required_technical_doc_application_includes(Provider, written_declaration_no_other_notified_body_application) :-
    provider(Provider).
required_technical_doc_application_includes(Provider, technical_documentation) :-
    provider(Provider).
must_examine_technical_documentation(NotifiedBody, AISystem) :-
    notified_body(NotifiedBody),
    ai_system(AISystem).
must_grant_full_access_to_data(NotifiedBody, Provider, DataSet) :-
    notified_body(NotifiedBody),
    provider(Provider),
    training_data_set(DataSet).
must_grant_full_access_to_data(NotifiedBody, Provider, DataSet) :-
    notified_body(NotifiedBody),
    provider(Provider),
    validation_data_set(DataSet).
must_grant_full_access_to_data(NotifiedBody, Provider, DataSet) :-
    notified_body(NotifiedBody),
    provider(Provider),
    testing_data_set(DataSet).
must_require_further_evidence(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_carry_out_adequate_tests(NotifiedBody, AISystem) :-
    notified_body(NotifiedBody),
    ai_system(AISystem).
must_grant_access_to_models(NotifiedBody, Provider, AISystem) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(AISystem),
    high_risk_ai_system(AISystem).
must_notify_decision(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_issue_certificate_if_conform(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_refuse_certificate_if_nonconform(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_inform_change_to_ai_system(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).
must_assess_change(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_allow_access_to_premises(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).
must_share_information(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).
must_conduct_periodic_audits(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_provide_audit_report(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider).
provenance(required_application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_assessment_conclusions/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_change_to_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_qms_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_technical_documentation_application/3, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_full_access_to_data/3, 'celex:32024R1689/oj#anx_7').
provenance(must_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_adequate_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models/3, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate_if_conform/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate_if_nonconform/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_change_to_ai_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(must_conduct_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(must_provide_audit_report/2, 'celex:32024R1689/oj#anx_7').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'annex_8').
declared(not_high_risk_ai_system/1, 'AI system considered not‑high‑risk', 'annex_8').
declared(law_enforcement_area/1, 'AI system used for law‑enforcement purposes', 'annex_8').
declared(migration_asylum_border_control_management/1, 'AI system used for migration, asylum or border‑control management', 'annex_8').
excluded_from_electronic_instructions(System) :-
    law_enforcement_area(System) ;
    migration_asylum_border_control_management(System).
required_provider_name_address_contact(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_provider_submitting_person_details(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_authorised_representative_details(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_ai_system_trade_name_reference(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_intended_purpose_description(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_system_information_and_logic(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
required_ai_system_status(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_certificate_details(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    notified_body(_NB).
required_scanned_certificate(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
required_member_states_placement(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).
required_electronic_instructions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ excluded_from_electronic_instructions(System).
required_additional_information_url(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
required_not_high_risk_conditions(Provider, System) :-
    provider(Provider),
    not_high_risk_ai_system(System).
required_not_high_risk_grounds_summary(Provider, System) :-
    provider(Provider),
    not_high_risk_ai_system(System).
required_deployer_name_address_contact(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
required_deployer_submitting_person_details(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
required_eu_database_url(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
required_fundamental_rights_impact_assessment_summary(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
required_data_protection_impact_assessment_summary(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
provenance(required_provider_name_address_contact/2, 'celex:32024R1689/oj#anx_8').
provenance(required_provider_submitting_person_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_authorised_representative_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_ai_system_trade_name_reference/2, 'celex:32024R1689/oj#anx_8').
provenance(required_intended_purpose_description/2, 'celex:32024R1689/oj#anx_8').
provenance(required_system_information_and_logic/2, 'celex:32024R1689/oj#anx_8').
provenance(required_ai_system_status/2, 'celex:32024R1689/oj#anx_8').
provenance(required_certificate_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_scanned_certificate/2, 'celex:32024R1689/oj#anx_8').
provenance(required_member_states_placement/2, 'celex:32024R1689/oj#anx_8').
provenance(required_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#anx_8').
provenance(required_electronic_instructions/2, 'celex:32024R1689/oj#anx_8').
provenance(required_additional_information_url/2, 'celex:32024R1689/oj#anx_8').
provenance(required_not_high_risk_conditions/2, 'celex:32024R1689/oj#anx_8').
provenance(required_not_high_risk_grounds_summary/2, 'celex:32024R1689/oj#anx_8').
provenance(required_deployer_name_address_contact/2, 'celex:32024R1689/oj#anx_8').
provenance(required_deployer_submitting_person_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_eu_database_url/2, 'celex:32024R1689/oj#anx_8').
provenance(required_fundamental_rights_impact_assessment_summary/2, 'celex:32024R1689/oj#anx_8').
provenance(required_data_protection_impact_assessment_summary/2, 'celex:32024R1689/oj#anx_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').

% ==== celex:32024R1689/oj#anx_9 ====
declared(required_unique_identification_number/1, 'unique identification number for testing in real world conditions', 'celex:32024R1689/oj#anx_9').
declared(required_provider_contact_details/1, 'name and contact details of the provider or prospective provider and of the deployers involved in the testing in real world conditions', 'celex:32024R1689/oj#anx_9').
declared(required_system_description/1, 'brief description of the AI system, its intended purpose and other information necessary for identification', 'celex:32024R1689/oj#anx_9').
declared(required_plan_summary/1, 'summary of the main characteristics of the plan for testing in real world conditions', 'celex:32024R1689/oj#anx_9').
declared(required_testing_termination_information/1, 'information on the suspension or termination of the testing in real world conditions', 'celex:32024R1689/oj#anx_9').
required_unique_identification_number(T) :-
    testing_in_real_world_conditions(T).
required_provider_contact_details(T) :-
    testing_in_real_world_conditions(T).
required_system_description(T) :-
    testing_in_real_world_conditions(T).
required_plan_summary(T) :-
    testing_in_real_world_conditions(T).
required_testing_termination_information(T) :-
    testing_in_real_world_conditions(T).
provenance(required_unique_identification_number/1, 'celex:32024R1689/oj#anx_9').
provenance(required_provider_contact_details/1, 'celex:32024R1689/oj#anx_9').
provenance(required_system_description/1, 'celex:32024R1689/oj#anx_9').
provenance(required_plan_summary/1, 'celex:32024R1689/oj#anx_9').
provenance(required_testing_termination_information/1, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(legislative_act/1, 'Union legislative act listed in annex', 'celex:32024R1689/oj#anx_10').
legislative_act('celex:32018R1860/oj').
legislative_act('celex:32018R1861/oj').
legislative_act('celex:42000A0922(01)/oj').
legislative_act('celex:32006R1987/oj').
legislative_act('celex:32018R1862/oj').
legislative_act('celex:32007D0533/oj').
legislative_act('celex:32006R1986/oj').
legislative_act('celex:32010D0261/oj').
legislative_act('celex:32021R1133/oj').
legislative_act('celex:32013R0603/oj').
legislative_act('celex:32016R0794/oj').
legislative_act('celex:32019R0816/oj').
legislative_act('celex:32019R0818/oj').
legislative_act('celex:32021R1134/oj').
legislative_act('celex:32008R0767/oj').
legislative_act('celex:32009R0810/oj').
legislative_act('celex:32016R0399/oj').
legislative_act('celex:32017R2226/oj').
legislative_act('celex:32018R1240/oj').
legislative_act('celex:32019R0817/oj').
legislative_act('celex:32019R1896/oj').
legislative_act('celex:32004D0512/oj').
legislative_act('celex:32008D0633/oj').
legislative_act('celex:32024R1358/oj').
legislative_act('celex:32024R1315/oj').
legislative_act('celex:32024R1350/oj').
legislative_act('celex:32001L0055/oj').
legislative_act('celex:32018R1241/oj').
legislative_act('celex:32016R1624/oj').
legislative_act('celex:32014R0515/oj').
legislative_act('celex:32011R1077/oj').
legislative_act('celex:32018R1726/oj').
provenance(legislative_act/1, 'celex:32024R1689/oj#anx_10').
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
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32011R1077/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(required_technical_documentation/2, 'technical documentation that providers of general‑purpose AI models must produce', 'celex:32024R1689/oj#anx_11').
declared(required_information_item/3, 'specific information element that must be included in the technical documentation', 'celex:32024R1689/oj#anx_11').
declared(required_item/1, 'type of information element required in the technical documentation', 'celex:32024R1689/oj#anx_11').
required_technical_documentation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
required_information_item(Provider, Model, Item) :-
    required_technical_documentation(Provider, Model),
    required_item(Item).
required_item(general_description).
required_item(detailed_description).
required_item(additional_information).
provenance(required_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(required_information_item/3, 'celex:32024R1689/oj#anx_11').
provenance(required_item/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(provides_model/2, 'provider supplies a general‑purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(integrates_model/2, 'downstream provider integrates a model into its AI system', 'celex:32024R1689/oj#anx_12').
declared(required_transparency_information/3, 'provider must give transparency information about model to downstream provider', 'celex:32024R1689/oj#anx_12').
declared(required_information_item/2, 'transparency documentation must contain specific item', 'celex:32024R1689/oj#anx_12').
required_transparency_information(Provider, Model, Downstream) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(Downstream),
    provides_model(Provider, Model),
    integrates_model(Downstream, Model).
required_information_item(Model, tasks_intended) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, acceptable_use_policies) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, release_date) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, distribution_methods) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, hardware_software_interaction) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, software_versions) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, architecture_parameters) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, input_output_modality) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, licence) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, technical_means) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, input_output_modality_format_and_size) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
required_information_item(Model, data_information) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).
provenance(provides_model/2, 'celex:32024R1689/oj#anx_12').
provenance(integrates_model/2, 'celex:32024R1689/oj#anx_12').
provenance(required_transparency_information/3, 'celex:32024R1689/oj#anx_12').
provenance(required_information_item/2, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(criteria_number_of_parameters/1, 'the number of parameters of the model', 'celex:32024R1689/oj#anx_13').
criteria_number_of_parameters(M) :-
    general_purpose_ai_model(M).
declared(criteria_quality_of_data_set/1, 'the quality or size of the data set used for the model', 'celex:32024R1689/oj#anx_13').
criteria_quality_of_data_set(M) :-
    general_purpose_ai_model(M).
declared(criteria_amount_of_computation/1, 'the amount of computation used for training the model', 'celex:32024R1689/oj#anx_13').
criteria_amount_of_computation(M) :-
    general_purpose_ai_model(M).
declared(criteria_input_output_modalities/1, 'the input and output modalities of the model', 'celex:32024R1689/oj#anx_13').
criteria_input_output_modalities(M) :-
    general_purpose_ai_model(M).

