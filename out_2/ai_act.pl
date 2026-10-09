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
% There are 442 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous act_concerns_ai_system/2.
:- discontiguous act_concerns_safety_component_ai_system/1.
:- discontiguous acts_as_provider/2.
:- discontiguous adheres_to_approved_code_of_practice/1.
:- discontiguous amends/2.
:- discontiguous art_6_par_3_unp_1_applies/1.
:- discontiguous assign_identification_number/2.
:- discontiguous authority_approved/2.
:- discontiguous board/1.
:- discontiguous commission/1.
:- discontiguous commission_finds_intentional_or_negligent/2.
:- discontiguous complies_with_european_harmonised_standard/1.
:- discontiguous condition_a/1.
:- discontiguous condition_b/1.
:- discontiguous condition_fulfilled/1.
:- discontiguous conduct_real_world_testing/2.
:- discontiguous criminal_offence_applies/1.
:- discontiguous data_transfer_safeguarded/1.
:- discontiguous decision_taken_par_3/1.
:- discontiguous decisions_reversible/1.
:- discontiguous deployer_informed/1.
:- discontiguous duration_within_limit/1.
:- discontiguous ensure_list_up_to_date/2.
:- discontiguous equivalent_protection/1.
:- discontiguous established_in_union/1.
:- discontiguous exempt_ai_system/1.
:- discontiguous exempt_deployer_obligation/1.
:- discontiguous exempt_high_risk_ai_system/1.
:- discontiguous exempt_law_enforcement_exemption/1.
:- discontiguous exempt_monitoring_obligation/1.
:- discontiguous exempt_open_source_provider/1.
:- discontiguous exempt_other_derogations/1.
:- discontiguous exempt_provider/1.
:- discontiguous exempt_quality_management_system/1.
:- discontiguous exempt_sensitive_operational_data/1.
:- discontiguous existing_system_and_plan/1.
:- discontiguous finds_non_compliance/2.
:- discontiguous follow_notification_procedures/1.
:- discontiguous general_purpose_ai_model_provider/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous guidance_deadline/2.
:- discontiguous has_power/2.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_biometric_categorisation_system/1.
:- discontiguous high_risk_biometric_identification_system/1.
:- discontiguous high_risk_critical_infrastructure_ai_system/1.
:- discontiguous high_risk_emotion_recognition_system/1.
:- discontiguous implementing_act/1.
:- discontiguous include_aspect/2.
:- discontiguous informed_consent_obtained/1.
:- discontiguous informed_of_serious_incident/2.
:- discontiguous informed_subject_applies/1.
:- discontiguous initiate_dialogue/2.
:- discontiguous justified_authorisation/1.
:- discontiguous legislative_act_applies/1.
:- discontiguous linked_enterprise/2.
:- discontiguous make_publicly_available_list_of_notified_bodies/2.
:- discontiguous max_validity_years/2.
:- discontiguous measure_deemed_justified/1.
:- discontiguous measures_deadline/2.
:- discontiguous must_accept_form/2.
:- discontiguous must_achieve_accuracy/2.
:- discontiguous must_achieve_cybersecurity/2.
:- discontiguous must_achieve_robustness/2.
:- discontiguous must_act/2.
:- discontiguous must_address_feedback_loops/2.
:- discontiguous must_adopt/2.
:- discontiguous must_adopt_delegated_acts/2.
:- discontiguous must_adopt_in_accordance/2.
:- discontiguous must_advise/2.
:- discontiguous must_advise_and_support/2.
:- discontiguous must_affix/2.
:- discontiguous must_affix_identification_number/2.
:- discontiguous must_agree/2.
:- discontiguous must_aim_to_ensure/2.
:- discontiguous must_alert_ai_office_of_possible_systemic_risks/1.
:- discontiguous must_allocate_resources/2.
:- discontiguous must_allow_access/2.
:- discontiguous must_amend/2.
:- discontiguous must_amend_thresholds/2.
:- discontiguous must_analyse/2.
:- discontiguous must_apply_data_governance/2.
:- discontiguous must_apply_procedural_safeguards/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_appoint_chair/2.
:- discontiguous must_assess/2.
:- discontiguous must_assess_and_mitigate_systemic_risk/2.
:- discontiguous must_assess_and_update_competence/2.
:- discontiguous must_assess_coverage/2.
:- discontiguous must_assess_impact/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assist/2.
:- discontiguous must_associate/2.
:- discontiguous must_assume_responsibility/2.
:- discontiguous must_authorise/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_on/2.
:- discontiguous must_be_capable/2.
:- discontiguous must_be_controller/2.
:- discontiguous must_be_independent/2.
:- discontiguous must_be_member/2.
:- discontiguous must_be_represented/2.
:- discontiguous must_be_resilient/2.
:- discontiguous must_be_resilient_to_unauthorised_modification/2.
:- discontiguous must_carry_out_evaluation/2.
:- discontiguous must_choose_conformity_assessment_procedure/3.
:- discontiguous must_collect/2.
:- discontiguous must_communicate/2.
:- discontiguous must_communicate_ground_to_other_msa/2.
:- discontiguous must_communicate_identity_and_tasks/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_comply/2.
:- discontiguous must_conduct_audit/2.
:- discontiguous must_conduct_new_assessment/2.
:- discontiguous must_consider/2.
:- discontiguous must_consider_adverse_impact_on_vulnerable_groups/2.
:- discontiguous must_consider_criteria/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult_experts/2.
:- discontiguous must_contribute_funds_to_general_budget/2.
:- discontiguous must_contribute_to_development_of_tools_and_methodologies/1.
:- discontiguous must_contribute_to_development_of_tools_and_templates/1.
:- discontiguous must_convene_meetings/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_coordinate/2.
:- discontiguous must_date_and_document_consent/2.
:- discontiguous must_decide/2.
:- discontiguous must_decide_justified/2.
:- discontiguous must_declare_accuracy_metrics/2.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_delete_personal_data/2.
:- discontiguous must_demonstrate/2.
:- discontiguous must_demonstrate_alternative_compliance/1.
:- discontiguous must_demonstrate_alternative_means/1.
:- discontiguous must_deploy_for_identity_confirmation/1.
:- discontiguous must_design_and_develop/2.
:- discontiguous must_design_for_human_oversight/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_market_surveillance_authority/2.
:- discontiguous must_designate_or_establish/2.
:- discontiguous must_designate_single_point_of_contact/2.
:- discontiguous must_determine/2.
:- discontiguous must_determine_number_of_experts/2.
:- discontiguous must_develop/2.
:- discontiguous must_develop_and_maintain/2.
:- discontiguous must_develop_guidance/2.
:- discontiguous must_develop_procedures_in_cooperation/2.
:- discontiguous must_direct/2.
:- discontiguous must_disclose/2.
:- discontiguous must_document/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_document_risk_management_system/2.
:- discontiguous must_document_use/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_draw_up_declaration_of_interests/1.
:- discontiguous must_draw_up_information/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_rules_of_procedure/2.
:- discontiguous must_draw_up_single_technical_documentation/2.
:- discontiguous must_draw_up_summary/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_elect/2.
:- discontiguous must_eliminate_feedback_loop_risk/2.
:- discontiguous must_enable/2.
:- discontiguous must_encourage/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_encourage_benchmark_development/1.
:- discontiguous must_enforce/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_cybersecurity_protection/2.
:- discontiguous must_ensure_effective_implementation/2.
:- discontiguous must_ensure_efficient_organisation/2.
:- discontiguous must_ensure_fair_gender_geographical_representation/2.
:- discontiguous must_ensure_files_kept/2.
:- discontiguous must_ensure_mitigation/2.
:- discontiguous must_ensure_provider_takes_actions/2.
:- discontiguous must_ensure_resources/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_enter_into_consultation/2.
:- discontiguous must_entitle_access_to_file/2.
:- discontiguous must_entrust/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_or_designate/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_simplified_technical_documentation_form/2.
:- discontiguous must_establish_systems_and_procedures/2.
:- discontiguous must_evaluate/2.
:- discontiguous must_evaluate_and_promote/2.
:- discontiguous must_evaluate_and_report/2.
:- discontiguous must_evaluate_national_measure/2.
:- discontiguous must_examine/2.
:- discontiguous must_exercise_powers/2.
:- discontiguous must_face_fine/2.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_access/2.
:- discontiguous must_facilitate_coordination/2.
:- discontiguous must_facilitate_cross_border_cooperation/1.
:- discontiguous must_facilitate_development/1.
:- discontiguous must_follow_legal_act_procedure/2.
:- discontiguous must_follow_notified_body_assessment/2.
:- discontiguous must_foster_innovation/1.
:- discontiguous must_give_copy_of_consent/2.
:- discontiguous must_give_hearing/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access/2.
:- discontiguous must_handle/2.
:- discontiguous must_have/2.
:- discontiguous must_have_competences_and_powers/2.
:- discontiguous must_have_power_to_suspend/1.
:- discontiguous must_have_validity_within_limit/1.
:- discontiguous must_identify_and_build_measures/2.
:- discontiguous must_identify_measures_for_deployer/2.
:- discontiguous must_identify_public_authorities/2.
:- discontiguous must_implement_backup_failsafe/2.
:- discontiguous must_implement_cybersecurity_measures/2.
:- discontiguous must_implement_measures/2.
:- discontiguous must_implement_redundancy/2.
:- discontiguous must_implement_risk_management_system/2.
:- discontiguous must_impose_fine/2.
:- discontiguous must_include/2.
:- discontiguous must_include_description/2.
:- discontiguous must_include_information/2.
:- discontiguous must_include_other_information/2.
:- discontiguous must_include_point_of_contact/2.
:- discontiguous must_include_provisions/2.
:- discontiguous must_indicate_contact_info/2.
:- discontiguous must_indicate_ground_and_challenge_procedure/1.
:- discontiguous must_inform/2.
:- discontiguous must_inform/3.
:- discontiguous must_inform_all_authorities/1.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inspect/2.
:- discontiguous must_investigate/2.
:- discontiguous must_issue/2.
:- discontiguous must_issue_authorisation/2.
:- discontiguous must_justify/2.
:- discontiguous must_keep/2.
:- discontiguous must_keep_at_disposal/2.
:- discontiguous must_keep_list_up_to_date/1.
:- discontiguous must_keep_list_up_to_date/2.
:- discontiguous must_keep_logs/3.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_keep_up_to_date_information/2.
:- discontiguous must_keep_up_to_date_technical_documentation/2.
:- discontiguous must_lay_down_rules_on_fines_for_public_authorities/2.
:- discontiguous must_lay_down_rules_on_penalties/2.
:- discontiguous must_maintain/2.
:- discontiguous must_maintain_risk_management_system/2.
:- discontiguous must_make_accessible_only_to/2.
:- discontiguous must_make_accessible_publicly/1.
:- discontiguous must_make_available/2.
:- discontiguous must_make_available/3.
:- discontiguous must_make_available_information/2.
:- discontiguous must_make_available_public/1.
:- discontiguous must_make_list_publicly_available/2.
:- discontiguous must_make_provisions/2.
:- discontiguous must_make_public/2.
:- discontiguous must_make_publicly_available/1.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_make_publicly_available_summary/2.
:- discontiguous must_meet/2.
:- discontiguous must_modify_designation/2.
:- discontiguous must_monitor_and_evaluate/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_affect_effective_operation/2.
:- discontiguous must_not_alter_before_informing/2.
:- discontiguous must_not_be_provider/2.
:- discontiguous must_not_seek_or_take_instructions/1.
:- discontiguous must_not_use/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_commission_of_amendments/2.
:- discontiguous must_notify_commission_of_rules/2.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_list/2.
:- discontiguous must_observe/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_participate/2.
:- discontiguous must_pay_attention/2.
:- discontiguous must_pay_fees/2.
:- discontiguous must_perform/2.
:- discontiguous must_perform_consistently/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_task/2.
:- discontiguous must_perform_with_impartiality_and_objectivity/1.
:- discontiguous must_prepare/2.
:- discontiguous must_prepare_agenda/2.
:- discontiguous must_prevent_adversarial_examples/2.
:- discontiguous must_prevent_confidentiality_attacks/2.
:- discontiguous must_prevent_data_poisoning/2.
:- discontiguous must_prevent_model_flaws/2.
:- discontiguous must_prevent_model_poisoning/2.
:- discontiguous must_process/2.
:- discontiguous must_process_personal_data_in_sandbox/2.
:- discontiguous must_prohibit/2.
:- discontiguous must_promote/2.
:- discontiguous must_provide/2.
:- discontiguous must_provide_access/2.
:- discontiguous must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk/1.
:- discontiguous must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems/1.
:- discontiguous must_provide_controlled_environment/1.
:- discontiguous must_provide_copy_of_mandate/1.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_instructions/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_supervision/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_provide_transparency_information/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish/2.
:- discontiguous must_publish_assessment/2.
:- discontiguous must_publish_list/1.
:- discontiguous must_put_in_place_cybersecurity_measures/1.
:- discontiguous must_put_policy/2.
:- discontiguous must_recall/2.
:- discontiguous must_register/2.
:- discontiguous must_reject_arguments/2.
:- discontiguous must_remain_liable/1.
:- discontiguous must_repeal/2.
:- discontiguous must_report/2.
:- discontiguous must_report_annual_fines/2.
:- discontiguous must_report_serious_incident_information/2.
:- discontiguous must_request/2.
:- discontiguous must_request_authorisation/3.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require/2.
:- discontiguous must_respect/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rights_of_defence/2.
:- discontiguous must_respect_rigour_and_protection/2.
:- discontiguous must_safeguard/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_satisfy/2.
:- discontiguous must_set/2.
:- discontiguous must_set_up_and_maintain/2.
:- discontiguous must_share_information/2.
:- discontiguous must_specify/2.
:- discontiguous must_specify_information/2.
:- discontiguous must_state/2.
:- discontiguous must_stop_use/2.
:- discontiguous must_submit/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_supervise/2.
:- discontiguous must_supplement_benchmarks/2.
:- discontiguous must_supply/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_support_cross_border_market_surveillance/1.
:- discontiguous must_support_market_surveillance_authorities/1.
:- discontiguous must_support_union_safeguard_procedure/1.
:- discontiguous must_suspend_or_withdraw_or_impose_restrictions/2.
:- discontiguous must_suspend_use/2.
:- discontiguous must_take_appropriate_measures/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_due_account/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_commission_guidelines/2.
:- discontiguous must_take_into_account_sme_interests/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_organisational_measures/2.
:- discontiguous must_take_out/2.
:- discontiguous must_take_provisional_measures/2.
:- discontiguous must_take_request_into_account/3.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_take_steps/2.
:- discontiguous must_take_technical_measures/2.
:- discontiguous must_terminate/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_test_before_placing_on_market/2.
:- discontiguous must_transmit/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_update/2.
:- discontiguous must_update_information/2.
:- discontiguous must_use_information/2.
:- discontiguous must_use_simplified_form/2.
:- discontiguous must_utilise/2.
:- discontiguous must_verify/2.
:- discontiguous must_withdraw/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous necessary_and_proportionate/1.
:- discontiguous no_objection_within/3.
:- discontiguous notification_due_applies/1.
:- discontiguous notified_body/1.
:- discontiguous notify_body/2.
:- discontiguous objection_issued_pnt_b/1.
:- discontiguous objective_ensure_protection_of_health_safety_fundamental_rights/1.
:- discontiguous objective_evidence_based_regulatory_learning/0.
:- discontiguous objective_facilitating_market_access/0.
:- discontiguous objective_fostering_innovation_and_competitiveness/0.
:- discontiguous objective_improve_internal_market/1.
:- discontiguous objective_improving_legal_certainty/0.
:- discontiguous objective_presumption/1.
:- discontiguous objective_prevent_or_minimise_risks/1.
:- discontiguous objective_promote_human_centric_trustworthy_ai/1.
:- discontiguous objective_protect_democracy_rule_of_law_environment/1.
:- discontiguous objective_sharing_best_practices/0.
:- discontiguous objective_support_innovation/1.
:- discontiguous offers_commitments/2.
:- discontiguous operator/1.
:- discontiguous operator_fails_to_act/2.
:- discontiguous oversight_by_qualified_personnel/1.
:- discontiguous partner_enterprise/2.
:- discontiguous permitted_access_exit_report/1.
:- discontiguous permitted_additional_ai_regulatory_sandbox/1.
:- discontiguous permitted_adherence/1.
:- discontiguous permitted_adopt_implementing_act/1.
:- discontiguous permitted_advise_commission_international/1.
:- discontiguous permitted_ai_regulatory_sandbox_by_edps/1.
:- discontiguous permitted_allow_testing_by_provider/1.
:- discontiguous permitted_amend_annex_by_adding_use_cases/2.
:- discontiguous permitted_appoint_independent_expert/1.
:- discontiguous permitted_appropriate_checks/1.
:- discontiguous permitted_assessment_by_accreditation_body/2.
:- discontiguous permitted_assist_ai_office_sandboxes/1.
:- discontiguous permitted_assist_expertise_development/1.
:- discontiguous permitted_authorisation_high_risk_ai_system/1.
:- discontiguous permitted_biometric_categorisation_for_law_enforcement/1.
:- discontiguous permitted_call_upon_experts/2.
:- discontiguous permitted_collect_and_share_expertise/1.
:- discontiguous permitted_combination_with_other_risk_management_procedures/1.
:- discontiguous permitted_complaint/1.
:- discontiguous permitted_complete_report/1.
:- discontiguous permitted_conduct_evaluation/1.
:- discontiguous permitted_conformity_assessment_body_authorisation/1.
:- discontiguous permitted_contribute_to_coordination/1.
:- discontiguous permitted_contribute_to_guidance_documents/1.
:- discontiguous permitted_contribute_to_harmonisation/1.
:- discontiguous permitted_contribute_to_international_cooperation/1.
:- discontiguous permitted_cooperate_with_union_institutions/1.
:- discontiguous permitted_delegated_act_adoption/1.
:- discontiguous permitted_designate_systemic_risk/2.
:- discontiguous permitted_disclosure/1.
:- discontiguous permitted_emotion_inference_medical_safety/1.
:- discontiguous permitted_entry_into_force/1.
:- discontiguous permitted_exchange_confidential_information/1.
:- discontiguous permitted_exercise_powers/2.
:- discontiguous permitted_exercise_remotely/1.
:- discontiguous permitted_extend_certificate_validity/1.
:- discontiguous permitted_facilitate_development_of_common_criteria/1.
:- discontiguous permitted_impose_administrative_fine/1.
:- discontiguous permitted_impose_fine/2.
:- discontiguous permitted_initial_report/1.
:- discontiguous permitted_initiate_structured_dialogue/1.
:- discontiguous permitted_integrate/2.
:- discontiguous permitted_integration_of_testing_and_reporting/1.
:- discontiguous permitted_invite/1.
:- discontiguous permitted_issue_recommendations_and_opinions/1.
:- discontiguous permitted_lodge_complaint/1.
:- discontiguous permitted_make_commitments_binding/1.
:- discontiguous permitted_monitoring_actions/1.
:- discontiguous permitted_notified_body/1.
:- discontiguous permitted_notify/2.
:- discontiguous permitted_opinion_preparation/1.
:- discontiguous permitted_perform_activities_of_notified_body/1.
:- discontiguous permitted_processing_special_categories/1.
:- discontiguous permitted_propose_joint_activity/1.
:- discontiguous permitted_provide_advice_implementation/1.
:- discontiguous permitted_provide_common_rules/1.
:- discontiguous permitted_provide_guidance_and_advice/1.
:- discontiguous permitted_provide_opinions_qualified_alerts/1.
:- discontiguous permitted_provide_qualified_alert/2.
:- discontiguous permitted_put_into_service_without_authorisation/1.
:- discontiguous permitted_reassess/2.
:- discontiguous permitted_receive_opinions/1.
:- discontiguous permitted_recommendation_preparation/1.
:- discontiguous permitted_rely_on_codes_of_practice/1.
:- discontiguous permitted_remove_high_risk_ai_system/2.
:- discontiguous permitted_request/2.
:- discontiguous permitted_request_access/1.
:- discontiguous permitted_request_reassessment/2.
:- discontiguous permitted_require_modification/1.
:- discontiguous permitted_restrict_designation/1.
:- discontiguous permitted_revocation_of_delegation/1.
:- discontiguous permitted_simplified_quality_management_compliance/1.
:- discontiguous permitted_sub_group/1.
:- discontiguous permitted_subcontracting/1.
:- discontiguous permitted_submit_reasoned_request/1.
:- discontiguous permitted_subsidiary/1.
:- discontiguous permitted_support/1.
:- discontiguous permitted_support_ai_literacy/1.
:- discontiguous permitted_suspend_designation/1.
:- discontiguous permitted_suspend_or_terminate_testing/1.
:- discontiguous permitted_technical_support/1.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_urgency/1.
:- discontiguous permitted_use_for_objective/2.
:- discontiguous permitted_use_of_designation_documents/1.
:- discontiguous permitted_withdraw_consent/1.
:- discontiguous permitted_withdraw_designation/1.
:- discontiguous permitted_written_contribution_preparation/1.
:- discontiguous persists_non_compliance/2.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous present_arguments/2.
:- discontiguous presumed_compliant/1.
:- discontiguous presumed_conformity_applies/1.
:- discontiguous presumed_cybersecurity_compliant/1.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous prior_to_participation_applies/1.
:- discontiguous prohibited_administrative_fine/1.
:- discontiguous prohibited_affect/1.
:- discontiguous prohibited_affect_supervisory_powers/1.
:- discontiguous prohibited_biometric_categorisation_ai_system/1.
:- discontiguous prohibited_commercial_consultancy_services/1.
:- discontiguous prohibited_conflict_of_interest/1.
:- discontiguous prohibited_consultancy_services/1.
:- discontiguous prohibited_criminal_risk_assessment_ai_system/1.
:- discontiguous prohibited_deployer_action_without_verification/1.
:- discontiguous prohibited_disclosure/1.
:- discontiguous prohibited_electronic_instructions_for_use/1.
:- discontiguous prohibited_emotion_inference_ai_system/1.
:- discontiguous prohibited_exempting_operators/1.
:- discontiguous prohibited_facial_recognition_database_creation_ai_system/1.
:- discontiguous prohibited_involvement_in_design_development_marketing_use/1.
:- discontiguous prohibited_making_on_market/1.
:- discontiguous prohibited_non_compliance_with_ai_practices/1.
:- discontiguous prohibited_non_compliance_with_notified_body_obligations/1.
:- discontiguous prohibited_non_compliance_with_operator_obligations/1.
:- discontiguous prohibited_placing_on_market/1.
:- discontiguous prohibited_provision_of_assessment_activities/1.
:- discontiguous prohibited_real_time_remote_biometric_identification_in_public_spaces/1.
:- discontiguous prohibited_sensitive_operational_data/1.
:- discontiguous prohibited_social_scoring_ai_system/1.
:- discontiguous prohibited_subliminal_technique_ai_system/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/1.
:- discontiguous prohibited_vulnerability_exploiting_ai_system/1.
:- discontiguous protection_of_reporting_persons_applies/1.
:- discontiguous provenance/2.
:- discontiguous provider_of_general_purpose_ai_model/1.
:- discontiguous provides_system/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous reason_to_suspect/2.
:- discontiguous reasoned_request_testing/2.
:- discontiguous references/2.
:- discontiguous registration_done/2.
:- discontiguous regulation_applies/1.
:- discontiguous relevant_data/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous report_deadline/2.
:- discontiguous report_immediately/2.
:- discontiguous reporting_of_infringements_applies/1.
:- discontiguous represents_provider/2.
:- discontiguous request_and_access/2.
:- discontiguous request_information/2.
:- discontiguous request_submitted/3.
:- discontiguous required_acceptable_use_policies/1.
:- discontiguous required_accreditation_certificate/1.
:- discontiguous required_adequate_competent_personnel/1.
:- discontiguous required_advisory_forum/1.
:- discontiguous required_affixed_to_packaging_or_documentation/1.
:- discontiguous required_affixed_visibly_legibly_indelibly/1.
:- discontiguous required_amendment_consideration/4.
:- discontiguous required_appeal_procedure/1.
:- discontiguous required_application/1.
:- discontiguous required_appropriate_measures/1.
:- discontiguous required_architecture_and_parameters/1.
:- discontiguous required_aspect/1.
:- discontiguous required_assumption_formulation_governance/1.
:- discontiguous required_automatic_event_recording/1.
:- discontiguous required_availability_assessment_governance/1.
:- discontiguous required_balanced_membership/1.
:- discontiguous required_bias_detection_measures_governance/1.
:- discontiguous required_bias_examination_governance/1.
:- discontiguous required_binding/1.
:- discontiguous required_board/1.
:- discontiguous required_broad_equal_access/1.
:- discontiguous required_ce_marking/1.
:- discontiguous required_ce_marking_indicates_other_law/1.
:- discontiguous required_classification_as_systemic_risk/1.
:- discontiguous required_codes_of_practice_ready_by/1.
:- discontiguous required_common_principles/1.
:- discontiguous required_complaint_content/1.
:- discontiguous required_compliance_with_requirements/1.
:- discontiguous required_condition_a/1.
:- discontiguous required_condition_b/1.
:- discontiguous required_condition_c/1.
:- discontiguous required_condition_d/1.
:- discontiguous required_condition_e/1.
:- discontiguous required_condition_f/1.
:- discontiguous required_conformity_assessment_procedure_based_on_internal_control/1.
:- discontiguous required_content_of_request/2.
:- discontiguous required_contextual_consideration/1.
:- discontiguous required_data_collection_governance/1.
:- discontiguous required_data_gap_identification_governance/1.
:- discontiguous required_data_information/1.
:- discontiguous required_data_preparation_governance/1.
:- discontiguous required_data_quality/1.
:- discontiguous required_description_of_conformity_assessment_activities/1.
:- discontiguous required_design_choice_governance/1.
:- discontiguous required_designation_document/1.
:- discontiguous required_detailed_description_of_elements/1.
:- discontiguous required_digital_ce_marking/1.
:- discontiguous required_diligent_objectivity/1.
:- discontiguous required_entry_into_force/1.
:- discontiguous required_eu_declaration_of_conformity_copy/1.
:- discontiguous required_expertise_in_ai/1.
:- discontiguous required_expertise_of_personnel/1.
:- discontiguous required_extension_by_nca/1.
:- discontiguous required_facilitate_compliance/1.
:- discontiguous required_facilitate_development_of_tools/1.
:- discontiguous required_facilitate_involvement_of_actors/1.
:- discontiguous required_fee_structure/1.
:- discontiguous required_fine/1.
:- discontiguous required_flexibility_for_nca/1.
:- discontiguous required_free_of_charge_for_smes/1.
:- discontiguous required_general_description/1.
:- discontiguous required_general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous required_hardware_software_interaction/1.
:- discontiguous required_harmonised_standards_list/1.
:- discontiguous required_high_risk_ai_system/1.
:- discontiguous required_identification/1.
:- discontiguous required_identification_number_in_promotional_material/1.
:- discontiguous required_independence_from_provider/1.
:- discontiguous required_inform_applicants_within_three_months/1.
:- discontiguous required_information/1.
:- discontiguous required_information_in_notification/2.
:- discontiguous required_input_output_modality_and_size/1.
:- discontiguous required_legislation_identification/1.
:- discontiguous required_licence/1.
:- discontiguous required_limited_participation_period/1.
:- discontiguous required_logging_detail_input_data_match/1.
:- discontiguous required_logging_detail_natural_person_identification/1.
:- discontiguous required_logging_detail_period_of_use/1.
:- discontiguous required_logging_detail_reference_database/1.
:- discontiguous required_logging_for_operation_monitoring/1.
:- discontiguous required_logging_for_post_market_monitoring/1.
:- discontiguous required_logging_for_risk_identification/1.
:- discontiguous required_market_restriction/1.
:- discontiguous required_meetings/1.
:- discontiguous required_minimum_period/1.
:- discontiguous required_mitigation_measures/1.
:- discontiguous required_modality_and_format/1.
:- discontiguous required_model_elements_description/1.
:- discontiguous required_monitoring_and_control_information/1.
:- discontiguous required_mutual_recognition/1.
:- discontiguous required_objectivity_and_impartiality/1.
:- discontiguous required_observe_intellectual_property_rights/1.
:- discontiguous required_open_access/1.
:- discontiguous required_partnership_applications/1.
:- discontiguous required_performance_metrics_appropriateness/1.
:- discontiguous required_personal_data/1.
:- discontiguous required_post_market_performance_evaluation_description/1.
:- discontiguous required_provider_changes_description/1.
:- discontiguous required_quality_criteria/1.
:- discontiguous required_release_date_and_distribution_methods/1.
:- discontiguous required_report_content/2.
:- discontiguous required_requirements_chapter_3_section_2/1.
:- discontiguous required_responsible_contact_details/1.
:- discontiguous required_retention/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous required_risk_management_system_description/1.
:- discontiguous required_separation_of_decision_and_assessment/1.
:- discontiguous required_simple_intelligible_procedures/1.
:- discontiguous required_single_declaration/1.
:- discontiguous required_software_versions/1.
:- discontiguous required_statement_meeting_requirements/1.
:- discontiguous required_tasks_intended/1.
:- discontiguous required_technical_documentation/1.
:- discontiguous required_technical_means/1.
:- discontiguous required_term_of_office/1.
:- discontiguous required_testing_for_risk_management_measures/1.
:- discontiguous required_translation/1.
:- discontiguous required_transparent_fair_criteria/1.
:- discontiguous required_two_person_verification/1.
:- discontiguous safety_component_ai_system/1.
:- discontiguous satisfies_requirements_in_art_31/1.
:- discontiguous selected_by_commission/1.
:- discontiguous type_applies/1.
:- discontiguous union_harmonisation_legislation_applies/1.
:- discontiguous valid_certificate/1.
:- discontiguous vulnerable_groups_protected/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic accessible_via_interface/1.
:- dynamic accreditation_certificate/1.
:- dynamic accreditation_certificate_included/1.
:- dynamic activity_pursuant_to/1.
:- dynamic acts_on_behalf_of/2.
:- dynamic adheres_to_code_of_practice/1.
:- dynamic adopting_delegated_act/1.
:- dynamic adopting_delegated_act/2.
:- dynamic adopting_implementing_act/2.
:- dynamic adopting_technical_specifications/1.
:- dynamic adopting_testing_standards/1.
:- dynamic adopts_delegated_act/2.
:- dynamic adopts_detailed_measures_for_security_equipment/1.
:- dynamic adverse_impact/1.
:- dynamic affected_person/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic alter_before_informing/2.
:- dynamic annex1_covered/1.
:- dynamic annex3_covered/1.
:- dynamic annex_3_ai_system/1.
:- dynamic annex_3_pnt_1_a/1.
:- dynamic applicable/1.
:- dynamic applicable_requirements/2.
:- dynamic applied_common_specification/2.
:- dynamic applied_harmonised_standard/2.
:- dynamic applied_only_restricted_part/2.
:- dynamic applied_partial_harmonised_standard/2.
:- dynamic appropriate/0.
:- dynamic appropriate_measures_taken/2.
:- dynamic assessment_changed/2.
:- dynamic assistive_editing_function_applies/1.
:- dynamic authorisation_issued/1.
:- dynamic authorised_access/1.
:- dynamic authorised_by_law/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_under_instructions_of_notified_body/1.
:- dynamic authority_involved_in_application/1.
:- dynamic awareness/2.
:- dynamic awareness_raising_and_training/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic bodies_participate_in_group/2.
:- dynamic case_art_46_par_1/1.
:- dynamic causal_link_established/2.
:- dynamic ce_marking/1.
:- dynamic certificate/1.
:- dynamic certificate_for_ai/2.
:- dynamic certificate_language/2.
:- dynamic certificate_validity/2.
:- dynamic certified/1.
:- dynamic codes_of_practice/1.
:- dynamic commission_considers_unjustified/1.
:- dynamic commission_decision_applies/1.
:- dynamic committee/1.
:- dynamic common_specification/1.
:- dynamic communication_campaigns/1.
:- dynamic communication_channels/1.
:- dynamic competence_doubt_applies/1.
:- dynamic complete_report/2.
:- dynamic compliance_assessed/1.
:- dynamic compliant_with_common_specifications/1.
:- dynamic complies_with_harmonised_standard/1.
:- dynamic complies_with_requirements/1.
:- dynamic component_of_large_scale_it_system/1.
:- dynamic concerning/2.
:- dynamic concerning_ai_system/2.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic condition_met/1.
:- dynamic confidential_exchange/1.
:- dynamic confidentiality_arrangement/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conforms_to/2.
:- dynamic contact_point/1.
:- dynamic controls_input_data/2.
:- dynamic convergence_best_practices_public_procurement/1.
:- dynamic cooperate_with/2.
:- dynamic corrective_action_taken/2.
:- dynamic covered_by_union_harmonisation_legislation/1.
:- dynamic covers_cybersecurity_requirements/1.
:- dynamic creates_facial_recognition_database/1.
:- dynamic criterion_autonomy_human_override/1.
:- dynamic criterion_benefit_magnitude_likelihood/1.
:- dynamic criterion_corrigibility/1.
:- dynamic criterion_data_nature_amount/1.
:- dynamic criterion_dependency_of_affected_persons/1.
:- dynamic criterion_existing_union_law_measures/1.
:- dynamic criterion_extent_of_use/1.
:- dynamic criterion_harm_history/1.
:- dynamic criterion_imbalance_of_power/1.
:- dynamic criterion_intended_purpose/1.
:- dynamic criterion_potential_harm_extent/1.
:- dynamic critical_infrastructure/1.
:- dynamic data_protection_authority/1.
:- dynamic deadline_set_by_notified_body/2.
:- dynamic death_of_person/1.
:- dynamic decision/1.
:- dynamic decision_taken_by_deployer/3.
:- dynamic deep_fake/1.
:- dynamic delegated_act/1.
:- dynamic deleted_after_termination/1.
:- dynamic demonstrates_conformity/2.
:- dynamic deployer/1.
:- dynamic deploys/2.
:- dynamic deploys_subliminal_technique/1.
:- dynamic description_facts_and_reasons/1.
:- dynamic designated_representative/2.
:- dynamic designated_under_other_legislation/1.
:- dynamic direct_interaction_with_natural_persons_applies/1.
:- dynamic distributor/1.
:- dynamic documentary_evidence_included/1.
:- dynamic documentation_kept/1.
:- dynamic does_not_meet_requirements_applies/1.
:- dynamic downstream_provider/1.
:- dynamic education_access_assignment_applies/1.
:- dynamic education_assessment_applies/1.
:- dynamic education_learning_outcome_applies/1.
:- dynamic education_monitoring_prohibited_behaviour_applies/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic employment_recruitment_applies/1.
:- dynamic employment_work_relationships_applies/1.
:- dynamic empowered_for_coordination/1.
:- dynamic ensures_equivalent_compliance/1.
:- dynamic equivalent_capabilities/1.
:- dynamic essential_services_creditworthiness_applies/1.
:- dynamic essential_services_eligibility_applies/1.
:- dynamic essential_services_emergency_dispatch_applies/1.
:- dynamic essential_services_insurance_risk_pricing_applies/1.
:- dynamic evaluation_concerned/1.
:- dynamic evaluation_finds_high_risk/2.
:- dynamic evaluation_result/1.
:- dynamic exception_from_law/2.
:- dynamic exception_high_risk_ai_system/1.
:- dynamic exceptional_reason/1.
:- dynamic exists_common_specification/1.
:- dynamic exists_harmonised_standard/1.
:- dynamic expert_of_scientific_panel/1.
:- dynamic exploits_vulnerability/1.
:- dynamic extension_period/2.
:- dynamic failed_to_comply_measure/2.
:- dynamic failed_to_comply_request/2.
:- dynamic failed_to_make_available_model/2.
:- dynamic falls_under_art_5/1.
:- dynamic falls_under_art_50/1.
:- dynamic fee_setting_conformity_assessment/1.
:- dynamic financial_institution/1.
:- dynamic finding_details/1.
:- dynamic finds_risk/2.
:- dynamic first_interaction_time/1.
:- dynamic floating_point_operation/1.
:- dynamic floating_point_operations/2.
:- dynamic fulfills_eligibility/1.
:- dynamic funds_collected_by_fines_applies/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generated_text_for_public_interest/1.
:- dynamic generates_synthetic_content/1.
:- dynamic grounds_to_consider_infringement_applies/1.
:- dynamic guidance_developed_by/2.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_not_delivered/1.
:- dynamic harmonised_standard_published/0.
:- dynamic harmonised_standard_restricted/1.
:- dynamic has_subsidiary/2.
:- dynamic has_sufficient_reason/2.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk_ai_system_applies/1.
:- dynamic high_risk_ai_system_used_by_law_enforcement/1.
:- dynamic high_risk_purpose/1.
:- dynamic human_oversight_assigned/2.
:- dynamic human_review/1.
:- dynamic importer/1.
:- dynamic in_conformity_with_common_specifications/1.
:- dynamic incident_occurred_in/2.
:- dynamic includes_description/1.
:- dynamic includes_other_information/1.
:- dynamic includes_point_of_contact/1.
:- dynamic independent_expert/1.
:- dynamic independent_technical_scientific_advice/1.
:- dynamic infers_emotion/1.
:- dynamic infers_protected_attribute/1.
:- dynamic information_obtained_by/2.
:- dynamic information_obtained_pursuant_to_art_55/1.
:- dynamic information_platform/1.
:- dynamic informed_consent/1.
:- dynamic infringed_provision/2.
:- dynamic initial_report/2.
:- dynamic initiating_authority/1.
:- dynamic input_data/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_detect_decision_making_patterns/1.
:- dynamic intended_for_medical_or_safety_reason/1.
:- dynamic intended_for_public_authorities/1.
:- dynamic intended_improve_human_activity_result/1.
:- dynamic intended_narrow_procedural_task/1.
:- dynamic intended_preparatory_task_for_assessment/1.
:- dynamic intended_purpose/1.
:- dynamic intended_purpose_in_annex_areas/1.
:- dynamic investigation/2.
:- dynamic isolated_environment/1.
:- dynamic issued_by/2.
:- dynamic justice_assistance_applies/1.
:- dynamic justice_influence_election_applies/1.
:- dynamic language_understood_by_relevant_authorities/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_area_applies/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_evidence_reliability_applies/1.
:- dynamic law_enforcement_offence_risk_assessment_applies/1.
:- dynamic law_enforcement_polygraph_applies/1.
:- dynamic law_enforcement_profiling_applies/1.
:- dynamic law_enforcement_related_system/1.
:- dynamic law_enforcement_risk_victim_assessment_applies/1.
:- dynamic list_of_subsidiaries/1.
:- dynamic listed_in_annex3_point1/1.
:- dynamic listed_in_annex3_points2to8/1.
:- dynamic listed_in_annex_3/1.
:- dynamic listed_in_union_harmonisation_legislation/1.
:- dynamic logs_kept_duration/1.
:- dynamic made_available_on_union_market/2.
:- dynamic makes_substantial_modification/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate_received/2.
:- dynamic market_surveillance_authority/1.
:- dynamic marks_name/2.
:- dynamic measure/1.
:- dynamic meets_conditions_art_51/1.
:- dynamic meets_requirements_art_31/1.
:- dynamic member_state/1.
:- dynamic member_state_applies/1.
:- dynamic member_state_fails_to_take_measures/1.
:- dynamic member_states/1.
:- dynamic microenterprise/1.
:- dynamic migration_asylum_application_assistance_applies/1.
:- dynamic migration_asylum_border_control_area_applies/1.
:- dynamic migration_detection_identification_applies/1.
:- dynamic migration_polygraph_applies/1.
:- dynamic migration_risk_assessment_applies/1.
:- dynamic military_purpose/1.
:- dynamic misclassification_to_circumvent_requirements/3.
:- dynamic modifies_intended_purpose/2.
:- dynamic monitoring_mechanism_exists/1.
:- dynamic national_accreditation_body/1.
:- dynamic national_competent_authority/1.
:- dynamic national_measures/1.
:- dynamic natural_or_legal_person_applies/1.
:- dynamic natural_person/1.
:- dynamic necessary_for_requirements/1.
:- dynamic new_communication_channels/1.
:- dynamic no_decisions_affecting_subjects/1.
:- dynamic no_harmonised_reference_published/1.
:- dynamic no_significant_risk/1.
:- dynamic non_compliant_certificate/1.
:- dynamic non_conformity/1.
:- dynamic non_high_risk_classified_by_provider_applies/1.
:- dynamic non_personal_data/1.
:- dynamic not_compliant_with_common_specifications/1.
:- dynamic not_compliant_within_period/2.
:- dynamic not_fulfillable_by_non_personal/1.
:- dynamic not_high_risk_ai_system/1.
:- dynamic not_in_conformity/2.
:- dynamic not_possible_or_not_warranted/1.
:- dynamic not_sensitive_operational_data/1.
:- dynamic not_shared_outside/1.
:- dynamic notified/1.
:- dynamic notifying_authority/1.
:- dynamic objection/1.
:- dynamic objection_raised/1.
:- dynamic objection_raised/2.
:- dynamic objection_within/2.
:- dynamic objective/1.
:- dynamic obtained_information/2.
:- dynamic obvious_interaction/1.
:- dynamic open_source/1.
:- dynamic open_source_free_license_applies/1.
:- dynamic open_source_model/1.
:- dynamic open_source_provider/1.
:- dynamic operators/1.
:- dynamic organisation/1.
:- dynamic other_involved_person/1.
:- dynamic other_member_state/1.
:- dynamic other_msa/1.
:- dynamic other_national_authority/1.
:- dynamic other_relevant_information/1.
:- dynamic participation_in_standardisation/1.
:- dynamic party_concerned_applies/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_criminal_risk_assessment/1.
:- dynamic performs_social_scoring/1.
:- dynamic personal_data/1.
:- dynamic personal_non_professional_use/1.
:- dynamic placed_before/2.
:- dynamic placed_system/2.
:- dynamic places_on_market_with_name/2.
:- dynamic placing_on_market/1.
:- dynamic point_of_contact_provider/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic pre_determined_change/1.
:- dynamic presents_risk/1.
:- dynamic prior_consultation/2.
:- dynamic priority_access/1.
:- dynamic product_contains_ai_system/1.
:- dynamic product_fully_compliant/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic prospective_provider/1.
:- dynamic protected_by_measures/1.
:- dynamic protection_not_decreased/1.
:- dynamic provided_digitally/1.
:- dynamic provider/1.
:- dynamic provider_agrees/1.
:- dynamic provider_consent_public/1.
:- dynamic provider_contrary_obligations/1.
:- dynamic provider_of/2.
:- dynamic provider_under_instructions_of_notified_body/1.
:- dynamic provides/2.
:- dynamic provides_general_purpose_ai_model/1.
:- dynamic provision_subject/2.
:- dynamic public_authority/1.
:- dynamic public_authority_deployer/1.
:- dynamic public_authority_or_body/1.
:- dynamic public_interest_area/1.
:- dynamic publicly_accessible_space/1.
:- dynamic published_in_official_journal/1.
:- dynamic published_in_oj/1.
:- dynamic pursuant_to/2.
:- dynamic puts_into_service_with_name/2.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic re_assessment_based_on_conformity_assessment_procedures/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_not_conform/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request_by/1.
:- dynamic recall_of_ai_system/1.
:- dynamic receipt_within_15_days/1.
:- dynamic recipients/1.
:- dynamic reduced_fee/2.
:- dynamic related_certificate/2.
:- dynamic related_to_product_covered_by_harmonisation_legislation/1.
:- dynamic relevant_competences/1.
:- dynamic relevant_documents/1.
:- dynamic relevant_information/2.
:- dynamic relevant_national_public_authority/1.
:- dynamic relevant_operator/2.
:- dynamic relevant_provider_of/2.
:- dynamic remote/1.
:- dynamic representative/1.
:- dynamic represents/2.
:- dynamic request/2.
:- dynamic request_extension_by_provider/2.
:- dynamic request_from/2.
:- dynamic request_made/1.
:- dynamic request_made_by/2.
:- dynamic request_not_accepted/1.
:- dynamic required_adversarial_testing_measures/1.
:- dynamic required_amendment_consideration/1.
:- dynamic required_computational_resources/1.
:- dynamic required_coverage_of_requirements/1.
:- dynamic required_design_specifications/1.
:- dynamic required_energy_consumption/1.
:- dynamic required_evaluation_strategies/1.
:- dynamic required_general_description_tasks/1.
:- dynamic required_publication_in_official_journal/1.
:- dynamic required_release_date_and_distribution/1.
:- dynamic required_report_content/1.
:- dynamic required_requirements_of_art_31/1.
:- dynamic required_system_architecture_description/1.
:- dynamic required_technical_means_for_integration/1.
:- dynamic requirements_fulfilment_applies/1.
:- dynamic response_mechanism_exists/1.
:- dynamic risk/1.
:- dynamic risk_equivalent_or_greater/1.
:- dynamic risk_management_system/1.
:- dynamic risk_present/1.
:- dynamic risk_present/2.
:- dynamic risks_to_fundamental_rights_identified/1.
:- dynamic safety_component/1.
:- dynamic same_provider/2.
:- dynamic sandbox_plan/1.
:- dynamic scientific_panel/1.
:- dynamic scientific_research_development/1.
:- dynamic sensitive_information_obtained/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic sharing_allowed/1.
:- dynamic significant_design_change/1.
:- dynamic significant_risk_of_harm/1.
:- dynamic smes/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specified_not_to_become_high_risk/2.
:- dynamic standardisation_process_participant/1.
:- dynamic standardised_templates/1.
:- dynamic standards_insufficient/1.
:- dynamic standards_not_comply/1.
:- dynamic statement_of_conformity_issued/1.
:- dynamic subcontractor/1.
:- dynamic subcontracts_task/2.
:- dynamic subject/1.
:- dynamic subject_to_other_union_law/1.
:- dynamic subsidiary/1.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason_to_consider_high_risk/2.
:- dynamic summary_published/1.
:- dynamic supervised_in_sandbox/1.
:- dynamic supplement_of/2.
:- dynamic supplies_system/2.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_model/1.
:- dynamic tested/1.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_in_real_world_conditions_in_member_state/1.
:- dynamic third_country_conformity_assessment_body/1.
:- dynamic third_country_established/1.
:- dynamic third_party_applies/1.
:- dynamic third_party_conformity_assessment_required/1.
:- dynamic timeline_prescribed_by/2.
:- dynamic trained/1.
:- dynamic training_data/1.
:- dynamic unable_to_access_information/2.
:- dynamic under_control_of/2.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_established/1.
:- dynamic union_institution_body_agency_applies/1.
:- dynamic union_law_provides_explanation/1.
:- dynamic urgent_exception/1.
:- dynamic usable_directly_by_deployer/1.
:- dynamic use_not_restricted_to_national_territory/2.
:- dynamic used_for_law_enforcement/1.
:- dynamic using/1.
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

% ==== celex:32024R1689/oj#art_1 ====
declared(objective_improve_internal_market/1, 'improve functioning of the internal market', 'celex:32024R1689/oj#art_1').
declared(objective_promote_human_centric_trustworthy_ai/1, 'promote uptake of human‑centric and trustworthy AI', 'celex:32024R1689/oj#art_1').
declared(objective_ensure_protection_of_health_safety_fundamental_rights/1, 'ensure a high level of protection of health, safety and fundamental rights', 'celex:32024R1689/oj#art_1').
declared(objective_protect_democracy_rule_of_law_environment/1, 'protect democracy, the rule of law and environmental protection', 'celex:32024R1689/oj#art_1').
declared(objective_support_innovation/1, 'support innovation, especially for SMEs and start‑ups', 'celex:32024R1689/oj#art_1').
objective_improve_internal_market(S) :-
    ai_system(S).
objective_promote_human_centric_trustworthy_ai(S) :-
    ai_system(S).
objective_ensure_protection_of_health_safety_fundamental_rights(S) :-
    ai_system(S).
objective_protect_democracy_rule_of_law_environment(S) :-
    ai_system(S).
objective_support_innovation(S) :-
    ai_system(S).
provenance(objective_improve_internal_market/1, 'celex:32024R1689/oj#art_1').
provenance(objective_promote_human_centric_trustworthy_ai/1, 'celex:32024R1689/oj#art_1').
provenance(objective_ensure_protection_of_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_1').
provenance(objective_protect_democracy_rule_of_law_environment/1, 'celex:32024R1689/oj#art_1').
provenance(objective_support_innovation/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies/1, 'entity to which the regulation applies', 'celex:32024R1689/oj#art_2').
declared(exempt_ai_system/1, 'AI system to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(exempt_deployer_obligation/1, 'deployer whose obligations are excluded from the regulation', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'person affected by AI systems located in the Union', 'celex:32024R1689/oj#art_2').
declared(military_purpose/1, 'AI system used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(scientific_research_development/1, 'AI system developed for sole scientific research and development purpose', 'celex:32024R1689/oj#art_2').
declared(open_source/1, 'AI system released under a free and open‑source licence', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_2').
declared(falls_under_art_5/1, 'AI system falling under article 5', 'celex:32024R1689/oj#art_2').
declared(falls_under_art_50/1, 'AI system falling under article 50', 'celex:32024R1689/oj#art_2').
declared(natural_person/1, 'natural person', 'celex:32024R1689/oj#art_2').
declared(personal_non_professional_use/1, 'use of an AI system in a purely personal non‑professional activity', 'celex:32024R1689/oj#art_2').
regulation_applies(P) :-
    provider(P),
    ( placing_on_market(P) ; putting_into_service(P) ).
regulation_applies(D) :-
    deployer(D).
regulation_applies(P) :-
    provider(P).
regulation_applies(I) :-
    importer(I).
regulation_applies(Dist) :-
    distributor(Dist).
regulation_applies(M) :-
    product_manufacturer(M),
    ( placing_on_market(M) ; putting_into_service(M) ).
regulation_applies(AR) :-
    authorised_representative(AR).
regulation_applies(AP) :-
    affected_person(AP).
exempt_ai_system(S) :-
    military_purpose(S).
exempt_ai_system(S) :-
    scientific_research_development(S).
exempt_ai_system(S) :-
    open_source(S),
    \+ ( high_risk_ai_system(S)
        ; falls_under_art_5(S)
        ; falls_under_art_50(S)
        ).
exempt_deployer_obligation(D) :-
    natural_person(D),
    personal_non_professional_use(D).
provenance(regulation_applies/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_deployer_obligation/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
provenance(military_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_development/1, 'celex:32024R1689/oj#art_2').
provenance(open_source/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_5/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_50/1, 'celex:32024R1689/oj#art_2').
provenance(natural_person/1, 'celex:32024R1689/oj#art_2').
provenance(personal_non_professional_use/1, 'celex:32024R1689/oj#art_2').
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
declared(must_ensure/2, 'obligation to ensure AI literacy of staff and other persons dealing with operation and use', 'celex:32024R1689/oj#art_4').
must_ensure(Provider, ai_literacy_of_staff_and_others(Provider)) :-
    provider(Provider).
must_ensure(Deployer, ai_literacy_of_staff_and_others(Deployer)) :-
    deployer(Deployer).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_technique_ai_system/1, 'AI system that deploys subliminal or manipulative techniques', 'celex:32024R1689/oj#art_5').
declared(prohibited_vulnerability_exploiting_ai_system/1, 'AI system that exploits vulnerabilities of persons or groups', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring_ai_system/1, 'AI system that performs social scoring of persons or groups', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment_ai_system/1, 'AI system that assesses criminal risk of natural persons based on profiling', 'celex:32024R1689/oj#art_5').
declared(prohibited_facial_recognition_database_creation_ai_system/1, 'AI system that creates or expands facial recognition databases by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference_ai_system/1, 'AI system that infers emotions of natural persons in workplace or education', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation_ai_system/1, 'AI system that categorises persons on protected attributes from biometric data', 'celex:32024R1689/oj#art_5').
declared(prohibited_real_time_remote_biometric_identification_in_public_spaces/1, 'Real‑time remote biometric identification system used in publicly accessible spaces for law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_use_for_objective/2, 'Exception permitting use of real‑time remote biometric ID for a specific law‑enforcement objective', 'celex:32024R1689/oj#art_5').
declared(permitted_emotion_inference_medical_safety/1, 'Exception permitting emotion‑inference AI for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_categorisation_for_law_enforcement/1, 'Exception permitting biometric categorisation for lawful law‑enforcement purposes', 'celex:32024R1689/oj#art_5').
declared(must_deploy_for_identity_confirmation/1, 'Deployment limited to confirming identity of a specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(must_notify/2, 'Obligation to notify a competent authority of the use of a real‑time remote biometric ID system', 'celex:32024R1689/oj#art_5').
declared(must_submit/2, 'Obligation of national authorities to submit annual reports to the Commission', 'celex:32024R1689/oj#art_5').
declared(must_publish/2, 'Commission must publish annual reports', 'celex:32024R1689/oj#art_5').
declared(must_authorise/2, 'Prior authorisation required unless urgency', 'celex:32024R1689/oj#art_5').
declared(permitted_urgency/1, 'Exception allowing use in duly justified urgent cases', 'celex:32024R1689/oj#art_5').
declared(deploys_subliminal_technique/1, 'Deploys subliminal or manipulative techniques', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerability/1, 'Exploits vulnerability of a natural person or specific group', 'celex:32024R1689/oj#art_5').
declared(performs_social_scoring/1, 'Performs social scoring based on behaviour or inferred characteristics', 'celex:32024R1689/oj#art_5').
declared(performs_criminal_risk_assessment/1, 'Assesses criminal risk of a natural person based on profiling', 'celex:32024R1689/oj#art_5').
declared(creates_facial_recognition_database/1, 'Creates or expands facial‑recognition database by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(infers_emotion/1, 'Infers emotions of a natural person', 'celex:32024R1689/oj#art_5').
declared(intended_for_medical_or_safety_reason/1, 'Use intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(infers_protected_attribute/1, 'Infers protected attribute from biometric data', 'celex:32024R1689/oj#art_5').
declared(data_protection_authority/1, 'National data‑protection authority', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_technique_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    deploys_subliminal_technique(S).
provenance(prohibited_subliminal_technique_ai_system/1, 'celex:32024R1689/oj#art_5').
prohibited_vulnerability_exploiting_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    exploits_vulnerability(S).
provenance(prohibited_vulnerability_exploiting_ai_system/1, 'celex:32024R1689/oj#art_5').
prohibited_social_scoring_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    performs_social_scoring(S).
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
prohibited_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    performs_criminal_risk_assessment(S).
provenance(prohibited_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
prohibited_facial_recognition_database_creation_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    creates_facial_recognition_database(S).
provenance(prohibited_facial_recognition_database_creation_ai_system/1, 'celex:32024R1689/oj#art_5').
prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    infers_emotion(S),
    \+ permitted_emotion_inference_medical_safety(S).
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
permitted_emotion_inference_medical_safety(S) :-
    ai_system(S),
    intended_for_medical_or_safety_reason(S).
provenance(permitted_emotion_inference_medical_safety/1, 'celex:32024R1689/oj#art_5').
prohibited_biometric_categorisation_ai_system(S) :-
    ai_system(S),
    (placing_on_market(S) ; putting_into_service(S) ; use(S)),
    infers_protected_attribute(S),
    \+ permitted_biometric_categorisation_for_law_enforcement(S).
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
permitted_biometric_categorisation_for_law_enforcement(S) :-
    ai_system(S),
    law_enforcement_authority(_).
provenance(permitted_biometric_categorisation_for_law_enforcement/1, 'celex:32024R1689/oj#art_5').
prohibited_real_time_remote_biometric_identification_in_public_spaces(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(_),
    law_enforcement_authority(_),
    \+ permitted_use_for_objective(S, _).
provenance(prohibited_real_time_remote_biometric_identification_in_public_spaces/1, 'celex:32024R1689/oj#art_5').
permitted_use_for_objective(S, targeted_search) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_).
permitted_use_for_objective(S, threat_prevention) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_).
permitted_use_for_objective(S, suspect_localisation) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_).
provenance(permitted_use_for_objective/2, 'celex:32024R1689/oj#art_5').
must_deploy_for_identity_confirmation(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(_),
    confirm_identity(S).
provenance(must_deploy_for_identity_confirmation/1, 'celex:32024R1689/oj#art_5').
must_notify(A, S) :-
    market_surveillance_authority(A),
    real_time_remote_biometric_identification_system(S).
must_notify(A, S) :-
    data_protection_authority(A),
    real_time_remote_biometric_identification_system(S).
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
must_submit(A, annual_report(S)) :-
    (market_surveillance_authority(A) ; data_protection_authority(A)),
    real_time_remote_biometric_identification_system(S).
provenance(must_submit/2, 'celex:32024R1689/oj#art_5').
must_publish(commission, annual_report) :-
    true.
provenance(must_publish/2, 'celex:32024R1689/oj#art_5').
must_authorise(A, S) :-
    (market_surveillance_authority(A) ; data_protection_authority(A)),
    real_time_remote_biometric_identification_system(S),
    \+ permitted_urgency(S).
provenance(must_authorise/2, 'celex:32024R1689/oj#art_5').
permitted_urgency(S) :-
    real_time_remote_biometric_identification_system(S),
    urgency(S).
provenance(permitted_urgency/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_6').
declared(annex_3_ai_system/1, 'AI system listed in annex 3', 'celex:32024R1689/oj#art_6').
declared(covered_by_union_harmonisation_legislation/1, 'AI system covered by Union harmonisation legislation listed in annex 1', 'celex:32024R1689/oj#art_6').
declared(third_party_conformity_assessment_required/1, 'Product required to undergo third‑party conformity assessment', 'celex:32024R1689/oj#art_6').
declared(significant_risk_of_harm/1, 'AI system poses a significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6').
declared(exempt_high_risk_ai_system/1, 'AI system exempt from high‑risk classification', 'celex:32024R1689/oj#art_6').
declared(art_6_par_3_unp_1_applies/1, 'Conditions of art 6 par 3 unp 1 apply', 'celex:32024R1689/oj#art_6').
declared(intended_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(intended_improve_human_activity_result/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(intended_detect_decision_making_patterns/1, 'AI system intended to detect decision‑making patterns without replacing human assessment', 'celex:32024R1689/oj#art_6').
declared(intended_preparatory_task_for_assessment/1, 'AI system intended to perform a preparatory task for an assessment relevant to annex 3 use cases', 'celex:32024R1689/oj#art_6').
declared(must_document_assessment/2, 'Provider must document its assessment of an AI system', 'celex:32024R1689/oj#art_6').
declared(must_register/2, 'Provider must be subject to the registration obligation', 'celex:32024R1689/oj#art_6').
declared(must_provide/2, 'Actor must provide the specified object', 'celex:32024R1689/oj#art_6').
declared(request_made_by/2, 'Request made by authority to actor', 'celex:32024R1689/oj#art_6').
declared(must_adopt/2, 'Commission must adopt the specified delegated act', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    ( safety_component(S) ; covered_by_union_harmonisation_legislation(S) ),
    ( conformity_assessment(S) ; third_party_conformity_assessment_required(S) ),
    \+ exempt_high_risk_ai_system(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    profiling(S).
exempt_high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    \+ significant_risk_of_harm(S).
art_6_par_3_unp_1_applies(S) :-
    annex_3_ai_system(S),
    ( intended_narrow_procedural_task(S)
    ; intended_improve_human_activity_result(S)
    ; intended_detect_decision_making_patterns(S)
    ; intended_preparatory_task_for_assessment(S)
    ).
must_document_assessment(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).
must_register(Provider, registration_obligation) :-
    provider(Provider),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S).
must_provide(Provider, assessment_documentation(S)) :-
    provider(Provider),
    annex_3_ai_system(S),
    request_made_by(national_competent_authority, Provider).
must_provide(commission, guidelines(art_6, deadline(date(2026,2,2)))).
must_adopt(commission, delegated_act(delete_conditions_art_6_par_3_unp_2)).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(annex_3_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(third_party_conformity_assessment_required/1, 'celex:32024R1689/oj#art_6').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(art_6_par_3_unp_1_applies/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_human_activity_result/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_making_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(request_made_by/2, 'celex:32024R1689/oj#art_6').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_6').
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
declared(permitted_amend_annex_by_adding_use_cases/2, 'Commission may amend annex by adding or modifying use‑cases of high‑risk AI systems', 'celex:32024R1689/oj#art_7').
declared(intended_purpose_in_annex_areas/1, 'AI system intended for an area listed in annex 3', 'celex:32024R1689/oj#art_7').
declared(risk_equivalent_or_greater/1, 'Risk of the AI system is equivalent to or greater than that of existing high‑risk AI systems', 'celex:32024R1689/oj#art_7').
declared(permitted_remove_high_risk_ai_system/2, 'Commission may remove a high‑risk AI system from the list', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk/1, 'AI system no longer poses significant risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_7').
declared(protection_not_decreased/1, 'Removal does not decrease overall level of protection', 'celex:32024R1689/oj#art_7').
declared(must_consider_criteria/2, 'Commission shall take into account the listed criteria when assessing conditions', 'celex:32024R1689/oj#art_7').
declared(criterion_intended_purpose/1, 'Intended purpose of the AI system', 'celex:32024R1689/oj#art_7').
declared(criterion_extent_of_use/1, 'Extent to which the AI system has been or is likely to be used', 'celex:32024R1689/oj#art_7').
declared(criterion_data_nature_amount/1, 'Nature and amount of data processed, especially special categories of personal data', 'celex:32024R1689/oj#art_7').
declared(criterion_autonomy_human_override/1, 'Extent to which the system acts autonomously and possibility for human override', 'celex:32024R1689/oj#art_7').
declared(criterion_harm_history/1, 'Extent to which use has already caused harm or adverse impact', 'celex:32024R1689/oj#art_7').
declared(criterion_potential_harm_extent/1, 'Potential extent of such harm or impact', 'celex:32024R1689/oj#art_7').
declared(criterion_dependency_of_affected_persons/1, 'Dependence of harmed persons on the outcome', 'celex:32024R1689/oj#art_7').
declared(criterion_imbalance_of_power/1, 'Imbalance of power or vulnerability of affected persons', 'celex:32024R1689/oj#art_7').
declared(criterion_corrigibility/1, 'Ease of correcting or reversing the outcome', 'celex:32024R1689/oj#art_7').
declared(criterion_benefit_magnitude_likelihood/1, 'Magnitude and likelihood of benefit of deployment', 'celex:32024R1689/oj#art_7').
declared(criterion_existing_union_law_measures/1, 'Existence of effective Union law measures', 'celex:32024R1689/oj#art_7').
commission(commission).
permitted_amend_annex_by_adding_use_cases(Commission, AI_System) :-
    commission(Commission),
    high_risk_ai_system(AI_System),
    intended_purpose_in_annex_areas(AI_System),
    risk_equivalent_or_greater(AI_System).
permitted_remove_high_risk_ai_system(Commission, AI_System) :-
    commission(Commission),
    high_risk_ai_system(AI_System),
    no_significant_risk(AI_System),
    protection_not_decreased(AI_System).
must_consider_criteria(Commission, AI_System) :-
    commission(Commission),
    high_risk_ai_system(AI_System),
    criterion_intended_purpose(AI_System),
    criterion_extent_of_use(AI_System),
    criterion_data_nature_amount(AI_System),
    criterion_autonomy_human_override(AI_System),
    criterion_harm_history(AI_System),
    criterion_potential_harm_extent(AI_System),
    criterion_dependency_of_affected_persons(AI_System),
    criterion_imbalance_of_power(AI_System),
    criterion_corrigibility(AI_System),
    criterion_benefit_magnitude_likelihood(AI_System),
    criterion_existing_union_law_measures(AI_System).
provenance(commission/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_amend_annex_by_adding_use_cases/2, 'celex:32024R1689/oj#art_7').
provenance(intended_purpose_in_annex_areas/1, 'celex:32024R1689/oj#art_7').
provenance(risk_equivalent_or_greater/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_remove_high_risk_ai_system/2, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(protection_not_decreased/1, 'celex:32024R1689/oj#art_7').
provenance(must_consider_criteria/2, 'celex:32024R1689/oj#art_7').
provenance(criterion_intended_purpose/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_extent_of_use/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_data_nature_amount/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_autonomy_human_override/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_harm_history/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_potential_harm_extent/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_dependency_of_affected_persons/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_imbalance_of_power/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_corrigibility/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_benefit_magnitude_likelihood/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_union_law_measures/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_8').
declared(risk_management_system/1, 'risk management system referred to in art 9', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/1, 'product that contains an AI system', 'celex:32024R1689/oj#art_8').
declared(applicable_requirements/2, 'requirements applicable to a product', 'celex:32024R1689/oj#art_8').
declared(product_fully_compliant/1, 'product that meets all applicable requirements', 'celex:32024R1689/oj#art_8').
declared(must_comply/2, 'actor must comply with object', 'celex:32024R1689/oj#art_8').
declared(must_take_into_account/2, 'actor must take into account object', 'celex:32024R1689/oj#art_8').
declared(must_ensure/2, 'actor must ensure object', 'celex:32024R1689/oj#art_8').
declared(permitted_integration_of_testing_and_reporting/1, 'provider may integrate testing and reporting into existing documentation', 'celex:32024R1689/oj#art_8').
must_comply(System, requirements(chapter_3_sec_2)) :-
    high_risk_ai_system(System).
must_take_into_account(System, intended_purpose) :-
    high_risk_ai_system(System).
must_take_into_account(System, state_of_the_art) :-
    high_risk_ai_system(System).
must_take_into_account(System, risk_management_system) :-
    high_risk_ai_system(System).
must_ensure(Provider, product_fully_compliant(Product)) :-
    provider(Provider),
    product_contains_ai_system(Product).
permitted_integration_of_testing_and_reporting(Provider) :-
    provider(Provider).
provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_8').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/1, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/1, 'risk management system required', 'celex:32024R1689/oj#art_9').
declared(must_establish_risk_management_system/2, 'provider must establish risk management system', 'celex:32024R1689/oj#art_9').
declared(must_implement_risk_management_system/2, 'provider must implement risk management system', 'celex:32024R1689/oj#art_9').
declared(must_document_risk_management_system/2, 'provider must document risk management system', 'celex:32024R1689/oj#art_9').
declared(must_maintain_risk_management_system/2, 'provider must maintain risk management system', 'celex:32024R1689/oj#art_9').
declared(required_testing_for_risk_management_measures/1, 'testing for risk management measures required', 'celex:32024R1689/oj#art_9').
declared(permitted_testing_in_real_world_conditions/1, 'testing in real‑world conditions may be permitted', 'celex:32024R1689/oj#art_9').
declared(must_test_before_placing_on_market/2, 'provider must test before market placement', 'celex:32024R1689/oj#art_9').
declared(must_consider_adverse_impact_on_vulnerable_groups/2, 'provider must consider adverse impact on vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(permitted_combination_with_other_risk_management_procedures/1, 'combination with other risk‑management procedures may be permitted', 'celex:32024R1689/oj#art_9').
required_risk_management_system(S) :-
    high_risk_ai_system(S),
    ai_system(S).
must_establish_risk_management_system(P, S) :-
    provider(P),
    provider(P),
    high_risk_ai_system(S),
    ai_system(S).
must_implement_risk_management_system(P, S) :-
    provider(P),
    provider(P),
    high_risk_ai_system(S),
    ai_system(S).
must_document_risk_management_system(P, S) :-
    provider(P),
    provider(P),
    high_risk_ai_system(S),
    ai_system(S).
must_maintain_risk_management_system(P, S) :-
    provider(P),
    provider(P),
    high_risk_ai_system(S),
    ai_system(S).
required_testing_for_risk_management_measures(S) :-
    high_risk_ai_system(S),
    ai_system(S).
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    ai_system(S).
must_test_before_placing_on_market(P, S) :-
    provider(P),
    provider(P),
    high_risk_ai_system(S),
    ai_system(S).
must_consider_adverse_impact_on_vulnerable_groups(P, S) :-
    provider(P),
    provider(P),
    high_risk_ai_system(S),
    ai_system(S).
permitted_combination_with_other_risk_management_procedures(P) :-
    provider(P),
    provider(P).
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_document_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_for_risk_management_measures/1, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_before_placing_on_market/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_adverse_impact_on_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_risk_management_procedures/1, 'celex:32024R1689/oj#art_9').
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
required_quality_criteria(DataSet) :-
    training_data_set(DataSet),
    training_data_set(DataSet).
required_quality_criteria(DataSet) :-
    validation_data_set(DataSet),
    validation_data_set(DataSet).
required_quality_criteria(DataSet) :-
    testing_data_set(DataSet),
    testing_data_set(DataSet).
provenance(required_quality_criteria/1, 'celex:32024R1689/oj#art_10').
must_apply_data_governance(Provider, DataSet) :-
    provider(Provider),
    provider(Provider),
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    required_quality_criteria(DataSet).
provenance(must_apply_data_governance/2, 'celex:32024R1689/oj#art_10').
required_design_choice_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).
required_data_collection_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).
required_data_preparation_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    testing_data_set(DataSet),
    testing_data_set(DataSet).
required_assumption_formulation_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).
required_availability_assessment_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).
required_bias_examination_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    testing_data_set(DataSet),
    testing_data_set(DataSet).
required_bias_detection_measures_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).
required_data_gap_identification_governance(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).
provenance(required_design_choice_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_collection_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_preparation_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_assumption_formulation_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_availability_assessment_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_bias_examination_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_bias_detection_measures_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_gap_identification_governance/1, 'celex:32024R1689/oj#art_10').
required_data_quality(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    training_data_set(DataSet),
    training_data_set(DataSet).
provenance(required_data_quality/1, 'celex:32024R1689/oj#art_10').
required_contextual_consideration(DataSet) :-
    ( training_data_set(DataSet)
    ; validation_data_set(DataSet)
    ; testing_data_set(DataSet)
    ),
    validation_data_set(DataSet),
    validation_data_set(DataSet).
provenance(required_contextual_consideration/1, 'celex:32024R1689/oj#art_10').
permitted_processing_special_categories(Provider) :-
    provider(Provider),
    provider(Provider),
    required_condition_a(Provider),
    required_condition_b(Provider),
    required_condition_c(Provider),
    required_condition_d(Provider),
    required_condition_e(Provider),
    required_condition_f(Provider).
required_condition_a(Provider) :-
    provider(Provider),
    provider(Provider).
required_condition_b(Provider) :-
    provider(Provider),
    provider(Provider).
required_condition_c(Provider) :-
    provider(Provider),
    provider(Provider).
required_condition_d(Provider) :-
    provider(Provider),
    provider(Provider).
required_condition_e(Provider) :-
    provider(Provider),
    provider(Provider).
required_condition_f(Provider) :-
    provider(Provider),
    provider(Provider).
provenance(permitted_processing_special_categories/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_a/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_b/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_c/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_d/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_e/1, 'celex:32024R1689/oj#art_10').
provenance(required_condition_f/1, 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_3').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
references('celex:32024R1689/oj#art_10', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_10', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_10', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_10', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_11 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_11').
declared(smes/1, 'small or micro enterprise', 'celex:32024R1689/oj#art_11').
declared(related_to_product_covered_by_harmonisation_legislation/1, 'system related to a product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
must_keep_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_11').
required_technical_documentation(System) :-
    high_risk_ai_system(System).
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#art_11').
must_establish_simplified_technical_documentation_form(commission, simplified_technical_documentation_form).
provenance(must_establish_simplified_technical_documentation_form/2, 'celex:32024R1689/oj#art_11').
must_use_simplified_form(SME, System) :-
    provider(SME),
    smes(SME),
    high_risk_ai_system(System).
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
must_accept_form(NB, simplified_technical_documentation_form) :-
    notified_body(NB).
provenance(must_accept_form/2, 'celex:32024R1689/oj#art_11').
must_draw_up_single_technical_documentation(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    related_to_product_covered_by_harmonisation_legislation(System),
    (placing_on_market(System) ; putting_into_service(System)).
provenance(must_draw_up_single_technical_documentation/2, 'celex:32024R1689/oj#art_11').
must_adopt_delegated_acts(commission, delegated_acts).
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(required_automatic_event_recording/1, 'system must allow automatic logging of events over its lifetime', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_risk_identification/1, 'logging must enable recording of events to identify risk situations or substantial modifications', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_post_market_monitoring/1, 'logging must enable recording of events to facilitate post‑market monitoring', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_operation_monitoring/1, 'logging must enable recording of events to monitor operation of high‑risk AI systems', 'celex:32024R1689/oj#art_12').
declared(required_logging_detail_period_of_use/1, 'logging must record start and end date‑time of each use', 'celex:32024R1689/oj#art_12').
declared(required_logging_detail_reference_database/1, 'logging must record the reference database against which input data was checked', 'celex:32024R1689/oj#art_12').
declared(required_logging_detail_input_data_match/1, 'logging must record the input data that led to a match', 'celex:32024R1689/oj#art_12').
declared(required_logging_detail_natural_person_identification/1, 'logging must record the natural persons involved in verification of results', 'celex:32024R1689/oj#art_12').
required_automatic_event_recording(S) :-
    high_risk_ai_system(S).
required_logging_for_risk_identification(S) :-
    high_risk_ai_system(S).
required_logging_for_post_market_monitoring(S) :-
    high_risk_ai_system(S).
required_logging_for_operation_monitoring(S) :-
    high_risk_ai_system(S).
required_logging_detail_period_of_use(S) :-
    annex_3_pnt_1_a_applies(S).
required_logging_detail_reference_database(S) :-
    annex_3_pnt_1_a_applies(S).
required_logging_detail_input_data_match(S) :-
    annex_3_pnt_1_a_applies(S).
required_logging_detail_natural_person_identification(S) :-
    annex_3_pnt_1_a_applies(S).
provenance(required_automatic_event_recording/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_risk_identification/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_period_of_use/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_input_data_match/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_detail_natural_person_identification/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(provides_system/2, 'provider provides AI system', 'celex:32024R1689/oj#art_13').
declared(must_ensure_transparency/2, 'provider must ensure transparency of system', 'celex:32024R1689/oj#art_13').
declared(must_provide_instructions/2, 'provider must provide instructions for use', 'celex:32024R1689/oj#art_13').
declared(must_include_information/2, 'provider must include required information in instructions', 'celex:32024R1689/oj#art_13').
declared(required_information/1, 'information required to be included in instructions', 'celex:32024R1689/oj#art_13').
high_risk_ai_system(S) :-
    ai_system(S).
provides_system(P, S) :-
    provider(P),
    ai_system(S).
must_ensure_transparency(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    provides_system(P, S).
must_provide_instructions(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    provides_system(P, S).
must_include_information(P, Info) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    provides_system(P, S),
    required_information(Info).
required_information(info(identity_and_contact_details)).
required_information(info(characteristics_capabilities_limitations)).
required_information(info(intended_purpose)).
required_information(info(level_of_accuracy)).
required_information(info(known_circumstances_impact_accuracy)).
required_information(info(known_or_foreseeable_circumstance_risk)).
required_information(info(technical_capabilities_explain_output)).
required_information(info(performance_specific_persons_groups)).
required_information(info(specifications_input_data)).
required_information(info(information_to_interpret_output)).
required_information(info(changes_and_performance_pre_determined)).
required_information(info(human_oversight_measures)).
required_information(info(computational_and_hardware_resources)).
required_information(info(log_collection_mechanisms)).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(provides_system/2, 'celex:32024R1689/oj#art_13').
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(must_include_information/2, 'celex:32024R1689/oj#art_13').
provenance(required_information/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_14').
declared(must_design_for_human_oversight/2, 'provider must design system to allow effective human oversight', 'celex:32024R1689/oj#art_14').
declared(objective_prevent_or_minimise_risks/1, 'human oversight aims to prevent or minimise risks', 'celex:32024R1689/oj#art_14').
declared(must_identify_and_build_measures/2, 'provider must identify and build oversight measures into the system', 'celex:32024R1689/oj#art_14').
declared(must_identify_measures_for_deployer/2, 'provider must identify oversight measures to be implemented by the deployer', 'celex:32024R1689/oj#art_14').
declared(must_implement_measures/2, 'deployer must implement identified oversight measures', 'celex:32024R1689/oj#art_14').
declared(must_provide/2, 'provider must provide the system enabling specific oversight capabilities', 'celex:32024R1689/oj#art_14').
declared(required_two_person_verification/1, 'identification must be verified by at least two competent natural persons', 'celex:32024R1689/oj#art_14').
declared(prohibited_deployer_action_without_verification/1, 'deployer may not act on identification without the required verification', 'celex:32024R1689/oj#art_14').
declared(exempt_law_enforcement_exemption/1, 'exemption applies to law‑enforcement, migration, border‑control or asylum uses', 'celex:32024R1689/oj#art_14').
declared(annex_3_pnt_1_a/1, 'systems referred to in annex 3 point 1 (a)', 'celex:32024R1689/oj#art_14').
declared(used_for_law_enforcement/1, 'system used for law‑enforcement purposes', 'celex:32024R1689/oj#art_14').
must_design_for_human_oversight(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
objective_prevent_or_minimise_risks(System) :-
    high_risk_ai_system(System).
must_identify_and_build_measures(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_identify_measures_for_deployer(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_implement_measures(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_provide(Provider, provision(System, enable_understand_capacities)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_provide(Provider, provision(System, enable_automation_bias_awareness)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_provide(Provider, provision(System, enable_interpret_output)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_provide(Provider, provision(System, enable_decision_override)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_provide(Provider, provision(System, enable_intervention_stop)) :-
    provider(Provider),
    high_risk_ai_system(System).
required_two_person_verification(System) :-
    high_risk_ai_system(System),
    annex_3_pnt_1_a(System).
exempt_law_enforcement_exemption(System) :-
    high_risk_ai_system(System),
    used_for_law_enforcement(System).
prohibited_deployer_action_without_verification(System) :-
    high_risk_ai_system(System),
    annex_3_pnt_1_a(System),
    \+ exempt_law_enforcement_exemption(System).
provenance(must_design_for_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(objective_prevent_or_minimise_risks/1, 'celex:32024R1689/oj#art_14').
provenance(must_identify_and_build_measures/2, 'celex:32024R1689/oj#art_14').
provenance(must_identify_measures_for_deployer/2, 'celex:32024R1689/oj#art_14').
provenance(must_implement_measures/2, 'celex:32024R1689/oj#art_14').
provenance(must_provide/2, 'celex:32024R1689/oj#art_14').
provenance(required_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(prohibited_deployer_action_without_verification/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_law_enforcement_exemption/1, 'celex:32024R1689/oj#art_14').
provenance(annex_3_pnt_1_a/1, 'celex:32024R1689/oj#art_14').
provenance(used_for_law_enforcement/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(required_high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_15').
declared(must_design_and_develop/2, 'obligation to design and develop the system', 'celex:32024R1689/oj#art_15').
declared(must_achieve_accuracy/2, 'obligation to achieve an appropriate level of accuracy', 'celex:32024R1689/oj#art_15').
declared(must_achieve_robustness/2, 'obligation to achieve an appropriate level of robustness', 'celex:32024R1689/oj#art_15').
declared(must_achieve_cybersecurity/2, 'obligation to achieve an appropriate level of cybersecurity', 'celex:32024R1689/oj#art_15').
declared(must_perform_consistently/2, 'obligation to perform consistently throughout the lifecycle', 'celex:32024R1689/oj#art_15').
declared(must_encourage_benchmark_development/1, 'Commission shall encourage development of benchmarks and measurement methodologies', 'celex:32024R1689/oj#art_15').
declared(must_declare_accuracy_metrics/2, 'obligation to declare accuracy levels and metrics in instructions for use', 'celex:32024R1689/oj#art_15').
declared(must_be_resilient/2, 'obligation to be as resilient as possible to errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(must_take_technical_measures/2, 'obligation to take technical measures for resilience', 'celex:32024R1689/oj#art_15').
declared(must_take_organisational_measures/2, 'obligation to take organisational measures for resilience', 'celex:32024R1689/oj#art_15').
declared(must_implement_redundancy/2, 'obligation to achieve robustness through technical redundancy', 'celex:32024R1689/oj#art_15').
declared(must_implement_backup_failsafe/2, 'obligation to include backup or fail‑safe plans', 'celex:32024R1689/oj#art_15').
declared(must_eliminate_feedback_loop_risk/2, 'obligation to eliminate or reduce risk of biased feedback loops', 'celex:32024R1689/oj#art_15').
declared(must_address_feedback_loops/2, 'obligation to address feedback loops with mitigation measures', 'celex:32024R1689/oj#art_15').
declared(must_be_resilient_to_unauthorised_modification/2, 'obligation to be resilient against unauthorised third‑party alteration', 'celex:32024R1689/oj#art_15').
declared(must_implement_cybersecurity_measures/2, 'obligation to implement appropriate technical solutions for cybersecurity', 'celex:32024R1689/oj#art_15').
declared(must_prevent_data_poisoning/2, 'obligation to prevent data‑poisoning attacks', 'celex:32024R1689/oj#art_15').
declared(must_prevent_model_poisoning/2, 'obligation to prevent model‑poisoning attacks', 'celex:32024R1689/oj#art_15').
declared(must_prevent_adversarial_examples/2, 'obligation to prevent adversarial‑example attacks', 'celex:32024R1689/oj#art_15').
declared(must_prevent_confidentiality_attacks/2, 'obligation to prevent confidentiality attacks', 'celex:32024R1689/oj#art_15').
declared(must_prevent_model_flaws/2, 'obligation to prevent exploitation of model flaws', 'celex:32024R1689/oj#art_15').
required_high_risk_ai_system(S) :-
    ai_system(S).
must_design_and_develop(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_achieve_accuracy(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_achieve_robustness(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_achieve_cybersecurity(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_perform_consistently(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_encourage_benchmark_development(commission) :-
    true.
must_declare_accuracy_metrics(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_be_resilient(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_take_technical_measures(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_take_organisational_measures(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_implement_redundancy(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_implement_backup_failsafe(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_eliminate_feedback_loop_risk(P, S) :-
    provider(P),
    required_high_risk_ai_system(S),
    (putting_into_service(S) ; placing_on_market(S)).
must_address_feedback_loops(P, S) :-
    provider(P),
    required_high_risk_ai_system(S),
    (putting_into_service(S) ; placing_on_market(S)).
must_be_resilient_to_unauthorised_modification(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_implement_cybersecurity_measures(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_prevent_data_poisoning(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_prevent_model_poisoning(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_prevent_adversarial_examples(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_prevent_confidentiality_attacks(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
must_prevent_model_flaws(P, S) :-
    provider(P),
    required_high_risk_ai_system(S).
provenance(required_high_risk_ai_system/1, 'celex:32024R1689/oj#art_15').
provenance(must_design_and_develop/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve_accuracy/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve_robustness/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve_cybersecurity/2, 'celex:32024R1689/oj#art_15').
provenance(must_perform_consistently/2, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_benchmark_development/1, 'celex:32024R1689/oj#art_15').
provenance(must_declare_accuracy_metrics/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient/2, 'celex:32024R1689/oj#art_15').
provenance(must_take_technical_measures/2, 'celex:32024R1689/oj#art_15').
provenance(must_take_organisational_measures/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_redundancy/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_backup_failsafe/2, 'celex:32024R1689/oj#art_15').
provenance(must_eliminate_feedback_loop_risk/2, 'celex:32024R1689/oj#art_15').
provenance(must_address_feedback_loops/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_to_unauthorised_modification/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_data_poisoning/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_model_poisoning/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_adversarial_examples/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_confidentiality_attacks/2, 'celex:32024R1689/oj#art_15').
provenance(must_prevent_model_flaws/2, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(P, compliance(high_risk_ai_system(S), requirements(chp_3_sec_2))) :-
    provider(P),
    high_risk_ai_system(S).
must_indicate_contact_info(P, identification(high_risk_ai_system(S), contact_details(name, trade_name, trade_mark, address))) :-
    provider(P),
    high_risk_ai_system(S).
must_have(P, quality_management_system(complies(art_17))) :-
    provider(P).
must_keep(P, documentation(art_18)) :-
    provider(P).
must_keep(P, logs(high_risk_ai_system(S), art_19)) :-
    provider(P),
    high_risk_ai_system(S).
must_ensure(P, conformity_assessment(high_risk_ai_system(S), art_43, before(placing_on_market(S)))) :-
    provider(P),
    high_risk_ai_system(S).
must_draw_up(P, eu_declaration_of_conformity(art_47)) :-
    provider(P).
must_affix(P, ce_marking(high_risk_ai_system(S), art_48)) :-
    provider(P),
    high_risk_ai_system(S).
must_comply(P, registration_obligations(art_49_par_1)) :-
    provider(P).
must_take_corrective_actions(P, corrective_actions(art_20)) :-
    provider(P).
must_provide_information(P, information(art_20)) :-
    provider(P).
must_demonstrate(P, conformity(high_risk_ai_system(S), requirements(chp_3_sec_2))) :-
    provider(P),
    high_risk_ai_system(S).
must_ensure(P, accessibility_compliance(high_risk_ai_system(S), directives([dir_32016L2102, dir_32019L0882]))) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_info/2, 'celex:32024R1689/oj#art_16').
provenance(must_have/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_16').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_17').
declared(required_aspect/1, 'aspect that must be included in the quality management system', 'celex:32024R1689/oj#art_17').
must_establish(P, quality_management_system) :-
    provider(P),
    high_risk_ai_system(_),
    \+ financial_institution(P).
must_document(P, quality_management_system) :-
    provider(P),
    high_risk_ai_system(_),
    \+ financial_institution(P).
include_aspect(P, A) :-
    provider(P),
    high_risk_ai_system(_),
    \+ financial_institution(P),
    required_aspect(A).
must_ensure(P, proportionate_implementation) :-
    provider(P),
    high_risk_ai_system(_).
must_respect(P, degree_of_rigour_and_level_of_protection) :-
    provider(P),
    high_risk_ai_system(_).
exempt_quality_management_system(P) :-
    provider(P),
    financial_institution(P).
required_aspect(strategy_for_regulatory_compliance).
required_aspect(design_control_and_verification).
required_aspect(development_quality_control).
required_aspect(examination_test_validation).
required_aspect(technical_specifications).
required_aspect(data_management_systems).
required_aspect(risk_management_system).
required_aspect(post_market_monitoring_system).
required_aspect(serious_incident_reporting).
required_aspect(communication_handling).
required_aspect(record_keeping_systems).
required_aspect(resource_management).
required_aspect(accountability_framework).
provenance(must_establish/2, 'celex:32024R1689/oj#art_17').
provenance(must_document/2, 'celex:32024R1689/oj#art_17').
provenance(include_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_17').
provenance(must_respect/2, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(required_aspect/1, 'celex:32024R1689/oj#art_17').
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
declared(high_risk_ai_system/1, 'high‑risk AI system as defined in the Regulation', 'celex:32024R1689/oj#art_18').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_18').
declared(financial_institution/1, 'provider that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_18').
must_keep(Provider, technical_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).
must_keep(Provider, quality_management_system_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).
must_keep(Provider, notified_body_changes_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).
must_keep(Provider, notified_body_decisions_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).
must_keep(Provider, eu_declaration_of_conformity) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).
must_determine(MemberState, retention_condition(Provider, period(years(10), after(S)))) :-
    member_state(MemberState),
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
must_determine(MemberState, retention_condition(AR, period(years(10), after(S)))) :-
    member_state(MemberState),
    authorised_representative(AR),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
must_maintain(Provider, technical_documentation) :-
    provider(Provider),
    financial_institution(Provider).
provenance(must_keep/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(financial_institution/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_19').
must_keep(Provider, logs(automatic, System)) :-
    provider(Provider),
    high_risk_ai_system(System).
required_minimum_period(logs(automatic, System)) :-
    months(6).
must_maintain(Provider, logs(automatic, System)) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(System).
provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(required_minimum_period/1, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(not_in_conformity/2, 'provider considers or has reason to consider the system not in conformity', 'celex:32024R1689/oj#art_20').
declared(risk_present/2, 'provider is aware that the system presents a risk', 'celex:32024R1689/oj#art_20').
declared(must_take_corrective_action/2, 'provider must take corrective actions for the system', 'celex:32024R1689/oj#art_20').
declared(must_inform/2, 'provider must inform a party about the system', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    ai_system(System),
    (   placing_on_market(System)
    ;   putting_into_service(System)
    ),
    not_in_conformity(Provider, System).
must_inform(Provider, distributors_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).
must_inform(Provider, deployers_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).
must_inform(Provider, authorised_representative_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).
must_inform(Provider, importers_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).
must_investigate(Provider, System) :-
    provider(Provider),
    ai_system(System),
    risk_present(Provider, System).
must_inform(Provider, market_surveillance_authority_of(System)) :-
    provider(Provider),
    ai_system(System),
    risk_present(Provider, System).
must_inform(Provider, notified_body_of(System)) :-
    provider(Provider),
    ai_system(System),
    risk_present(Provider, System).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(high_risk_ai_system/1, 'high‑risk AI system as defined in the Regulation', 'celex:32024R1689/oj#art_21').
declared(reasoned_request_by/1, 'competent authority has issued a reasoned request', 'celex:32024R1689/oj#art_21').
declared(provides_system/2, 'provider supplies the AI system', 'celex:32024R1689/oj#art_21').
declared(under_control_of/2, 'the logs are under the control of the provider', 'celex:32024R1689/oj#art_21').
declared(information_obtained_by/2, 'information has been obtained by the competent authority', 'celex:32024R1689/oj#art_21').
must_provide(Provider, info_doc(System, language(official))) :-
    provider(Provider),
    provides_system(Provider, System),
    high_risk_ai_system(System),
    provides_system(Provider, System),          
    high_risk_ai_system(System),                
    reasoned_request_by(Authority),
    market_surveillance_authority(Authority).
must_provide_access(Provider, logs_of(System)) :-
    provider(Provider),
    provides_system(Provider, System),
    high_risk_ai_system(System),
    provides_system(Provider, System),          
    high_risk_ai_system(System),                  
    reasoned_request_by(Authority),
    market_surveillance_authority(Authority),
    under_control_of(Provider, logs_of(System)).
must_treat_confidentially(Authority, Information) :-
    market_surveillance_authority(Authority),
    information_obtained_by(Authority, Information).
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(third_country_established/1, 'provider established in third countries', 'celex:32024R1689/oj#art_22').
declared(union_established/1, 'authorised representative established in the Union', 'celex:32024R1689/oj#art_22').
declared(mandate_received/2, 'mandate received from provider by authorised representative', 'celex:32024R1689/oj#art_22').
declared(provider_contrary_obligations/1, 'provider acting contrary to its obligations', 'celex:32024R1689/oj#art_22').
must_appoint(Provider, Representative) :-
    provider(Provider),
    third_country_established(Provider),
    authorised_representative(Representative),
    union_established(Representative).
must_enable(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate_received(Provider, Representative).
must_perform_task(Representative, verify_declaration_and_documentation) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).
must_perform_task(Representative, keep_documents_for_10_years) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).
must_perform_task(Representative, provide_information_on_request) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).
must_perform_task(Representative, cooperate_with_authorities) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).
must_perform_task(Representative, comply_with_registration_obligations) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).
must_provide_copy_of_mandate(Representative) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).
must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_contrary_obligations(Provider).
must_inform(Representative, termination_notice(market_surveillance_authority)) :-
    must_terminate_mandate(Representative, _Provider).
must_inform(Representative, termination_notice(notified_body)) :-
    must_terminate_mandate(Representative, _Provider),
    notified_body(_Body).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_task/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_copy_of_mandate/1, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(reason_not_conform/2, 'importer has sufficient reason to consider the system not in conformity or falsified', 'celex:32024R1689/oj#art_23').
declared(presents_risk/1, 'system presents a risk within the meaning of article 79', 'celex:32024R1689/oj#art_23').
must_ensure(Importer, system_in_conformity(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_ensure(Importer, provider_conducted_assessment(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_ensure(Importer, provider_technical_documentation(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_ensure(Importer, ce_marking_and_declaration(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_ensure(Importer, provider_appointed_authorised_representative(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
prohibited_placing_on_market(S) :-
    high_risk_ai_system(S),
    reason_not_conform(_,S).
must_inform(Importer, risk_information(Provider, AuthorisedRepresentative, MarketSurveillanceAuthority, S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(Provider),
    authorised_representative(AuthorisedRepresentative),
    market_surveillance_authority(MarketSurveillanceAuthority),
    presents_risk(S).
must_provide(Importer, identification_information(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_ensure(Importer, storage_transport_not_jeopardise(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_keep(Importer, documentation_copy(S, period(years(10), after(placed_or_put_into_service(S))))) :-
    importer(Importer),
    high_risk_ai_system(S).
must_provide(Importer, information_to_competent_authorities(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_ensure(Importer, technical_documentation_available(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
must_cooperate(Importer, competent_authorities(S)) :-
    importer(Importer),
    high_risk_ai_system(S).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep/2, 'celex:32024R1689/oj#art_23').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', '24').
declared(non_conformity/1, 'system not in conformity with requirements', '24').
declared(risk_present/1, 'risk within the meaning of art 79 par 1', '24').
declared(request_from/2, 'relevant competent authority has requested information from distributor', '24').
must_verify(D, ce_marking(S)) :-
    distributor(D),
    high_risk_ai_system(S).
must_verify(D, declaration_of_conformity(S)) :-
    distributor(D),
    high_risk_ai_system(S).
must_verify(D, instructions_for_use(S)) :-
    distributor(D),
    high_risk_ai_system(S).
must_verify(D, provider_obligations_met(P, S)) :-
    distributor(D),
    provider(P),
    high_risk_ai_system(S).
must_verify(D, importer_obligations_met(I, S)) :-
    distributor(D),
    importer(I),
    high_risk_ai_system(S).
prohibited_making_on_market(D) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).
must_inform(D, inform_provider_or_importer(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    risk_present(S).
must_ensure(D, storage_transport_conditions_not_jeopardising_compliance(S)) :-
    distributor(D),
    high_risk_ai_system(S).
must_take_corrective_actions(D, bring_into_conformity(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).
must_take_corrective_actions(D, withdraw_or_recall(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).
must_ensure_provider_takes_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity(S).
must_inform(D, immediate_risk_notification(S)) :-
    distributor(D),
    high_risk_ai_system(S),
    risk_present(S).
must_provide(D, information_and_documentation(A, S)) :-
    distributor(D),
    high_risk_ai_system(S),
    request_from(A, D).
must_cooperate(D, authority(A)) :-
    distributor(D),
    national_competent_authority(A).
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_on_market/1, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_provider_takes_actions/2, 'celex:32024R1689/oj#art_24').
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
declared(acts_as_provider/2, 'actor considered provider of system', 'celex:32024R1689/oj#art_25').
declared(third_party_applies/1, 'actor is a third party', 'celex:32024R1689/oj#art_25').
declared(marks_name/2, 'actor marks system with name or trademark', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification/2, 'actor makes substantial modification to system', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose/2, 'actor modifies intended purpose of system', 'celex:32024R1689/oj#art_25').
declared(placed_system/2, 'provider initially placed system on market or into service', 'celex:32024R1689/oj#art_25').
declared(specified_not_to_become_high_risk/2, 'provider specified system must not become high‑risk', 'celex:32024R1689/oj#art_25').
declared(must_not_be_provider/2, 'actor shall no longer be considered provider of system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate/2, 'initial provider shall cooperate with new provider', 'celex:32024R1689/oj#art_25').
declared(must_provide_information/2, 'initial provider shall provide information and technical access', 'celex:32024R1689/oj#art_25').
declared(safety_component/1, 'component fulfilling a safety function', '41').
declared(places_on_market_with_name/2, 'actor places system on market under name or trademark', 'celex:32024R1689/oj#art_25').
declared(puts_into_service_with_name/2, 'actor puts system into service under name or trademark', 'celex:32024R1689/oj#art_25').
declared(supplies_system/2, 'third party supplies system, tools, services, components or processes', 'celex:32024R1689/oj#art_25').
declared(open_source_free_license_applies/1, 'third party makes tool etc. available under free open‑source licence', 'celex:32024R1689/oj#art_25').
declared(must_specify_information/2, 'provider and third party shall specify necessary information and assistance', 'celex:32024R1689/oj#art_25').
acts_as_provider(Actor, System) :-
    (distributor(Actor) ; importer(Actor) ; deployer(Actor) ; third_party_applies(Actor)),
    high_risk_ai_system(System),
    (   marks_name(Actor, System)
    ;   makes_substantial_modification(Actor, System)
    ;   modifies_intended_purpose(Actor, System)
    ).
must_not_be_provider(InitialProvider, System) :-
    placed_system(InitialProvider, System),
    acts_as_provider(NewProvider, System),
    InitialProvider \= NewProvider,
    \+ specified_not_to_become_high_risk(InitialProvider, System).
must_cooperate(InitialProvider, NewProvider) :-
    placed_system(InitialProvider, System),
    acts_as_provider(NewProvider, System),
    InitialProvider \= NewProvider.
must_provide_information(InitialProvider, System) :-
    placed_system(InitialProvider, System),
    \+ specified_not_to_become_high_risk(InitialProvider, System).
acts_as_provider(Manu, System) :-
    safety_component(System),
    product_manufacturer(Manu),
    (   places_on_market_with_name(Manu, System)
    ;   puts_into_service_with_name(Manu, System)
    ).
must_specify_information(Provider, ThirdParty) :-
    provider(Provider),
    third_party_applies(ThirdParty),
    supplies_system(ThirdParty, System),
    high_risk_ai_system(System),
    \+ open_source_free_license_applies(ThirdParty).
provenance(acts_as_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_not_be_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_information/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_5').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'art_26').
declared(controls_input_data/2, 'deployer controls input data of system', 'art_26').
declared(human_oversight_assigned/2, 'human oversight assigned to person', 'art_26').
declared(financial_institution/1, 'financial institution', 'art_26').
declared(employer/1, 'employer', 'art_26').
declared(public_authority/1, 'public authority, Union institution, body, office or agency', 'art_26').
must_take_measures(Deployer, use_in_accordance(instructions_for_use, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26').
must_assign_human_oversight(Deployer, Person) :-
    deployer(Deployer),
    human(Person),
    competence(Person),
    training(Person),
    authority(Person),
    support(Person).
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
must_ensure(Deployer, input_data_relevant_and_representative(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_input_data(Deployer, System).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_26').
must_monitor_operation(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    instructions_for_use(System).
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
must_inform(Deployer, provider, risk_of_non_compliance) :-
    deployer(Deployer),
    high_risk_ai_system(_),
    reason_to_consider_risk(Deployer).
provenance(must_inform/3, 'celex:32024R1689/oj#art_26').
must_inform(Deployer, distributor, risk_of_non_compliance) :-
    deployer(Deployer),
    high_risk_ai_system(_),
    reason_to_consider_risk(Deployer).
must_inform(Deployer, market_surveillance_authority, risk_of_non_compliance) :-
    deployer(Deployer),
    high_risk_ai_system(_),
    reason_to_consider_risk(Deployer).
must_suspend_use(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    reason_to_consider_risk(Deployer).
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').
must_inform(Deployer, provider, serious_incident) :-
    deployer(Deployer),
    serious_incident(_).
must_inform(Deployer, importer_or_distributor, serious_incident) :-
    deployer(Deployer),
    serious_incident(_).
must_inform(Deployer, market_surveillance_authority, serious_incident) :-
    deployer(Deployer),
    serious_incident(_).
exempt_sensitive_operational_data(Deployer) :-
    deployer(Deployer),
    law_enforcement_authority(Deployer).
provenance(exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_26').
exempt_monitoring_obligation(Deployer) :-
    deployer(Deployer),
    financial_institution(Deployer).
provenance(exempt_monitoring_obligation/1, 'celex:32024R1689/oj#art_26').
must_keep_logs(Deployer, System, period(months(6))) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    logs_automatically_generated(System).
provenance(must_keep_logs/3, 'celex:32024R1689/oj#art_26').
must_inform(Deployer, workers_representatives_and_workers, upcoming_use) :-
    employer(Deployer),
    before_putting_into_service(Deployer).
must_comply(Deployer, registration_obligations) :-
    public_authority(Deployer).
provenance(must_comply/2, 'celex:32024R1689/oj#art_26').
must_not_use(Deployer, System) :-
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_eu_database(System).
provenance(must_not_use/2, 'celex:32024R1689/oj#art_26').
must_inform(Deployer, provider_or_distributor, not_registered) :-
    public_authority(Deployer),
    high_risk_ai_system(System),
    \+ registered_in_eu_database(System).
must_use_information(Deployer, data_protection_impact_assessment) :-
    deployer(Deployer),
    information_provided_under_art_13(_).
provenance(must_use_information/2, 'celex:32024R1689/oj#art_26').
must_request_authorisation(Deployer, System, period(hours(48))) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    investigation_targeted(Deployer, System).
provenance(must_request_authorisation/3, 'celex:32024R1689/oj#art_26').
must_stop_use(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System).
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_26').
must_delete_personal_data(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System).
provenance(must_delete_personal_data/2, 'celex:32024R1689/oj#art_26').
prohibited_untargeted_law_enforcement_use(System) :-
    post_remote_biometric_identification_system(System).
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').
must_document_use(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26').
must_make_available(Deployer, System, authorities) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System),
    authorities = [market_surveillance_authority, national_data_protection_authority],
    \+ sensitive_operational_data_related_to_law_enforcement(System).
provenance(must_make_available/3, 'celex:32024R1689/oj#art_26').
must_submit_annual_report(Deployer, post_remote_biometric_identification_system) :-
    deployer(Deployer).
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
must_inform(Deployer, natural_person, subject_to_use) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    makes_decisions_related_to_natural_persons(System).
must_cooperate(Deployer, competent_authorities) :-
    deployer(Deployer).
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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_27').
declared(case_art_46_par_1/1, 'situation defined in art_46/par_1 giving exemption from notification', 'celex:32024R1689/oj#art_46/par_1').
declared(assessment_changed/2, 'assessment elements have changed or are no longer up to date', 'celex:32024R1689/oj#art_27').
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must assess impact on fundamental rights of high‑risk AI system', 'celex:32024R1689/oj#art_27').
declared(must_notify/2, 'deployer must notify the market surveillance authority of assessment results', 'celex:32024R1689/oj#art_27').
declared(permitted_notify/2, 'deployer may be exempt from the notification obligation', 'celex:32024R1689/oj#art_27').
declared(must_update_information/2, 'deployer must update assessment information when elements have changed', 'celex:32024R1689/oj#art_27').
declared(must_develop/2, 'AI Office shall develop a template questionnaire', 'celex:32024R1689/oj#art_27').
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_notify(D, market_surveillance_authority) :-
    deployer(D),
    high_risk_ai_system(S),
    must_perform_fundamental_rights_impact_assessment(D, S),
    \+ permitted_notify(D, market_surveillance_authority).
permitted_notify(D, market_surveillance_authority) :-
    case_art_46_par_1(D).
must_update_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    assessment_changed(D, S).
must_develop(ai_office, template).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_27').
provenance(case_art_46_par_1/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(assessment_changed/2, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_notify/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_information/2, 'celex:32024R1689/oj#art_27').
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
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_28').
declared(must_designate_or_establish/2, 'Member State shall designate or establish a notifying authority', 'celex:32024R1689/oj#art_28').
declared(must_develop_procedures_in_cooperation/2, 'Member State shall develop procedures in cooperation between notifying authorities', 'celex:32024R1689/oj#art_28').
declared(permitted_assessment_by_accreditation_body/2, 'Member State may decide that assessment and monitoring is carried out by a national accreditation body', 'celex:32024R1689/oj#art_28').
declared(national_accreditation_body/1, 'National accreditation body', 'celex:32024R1689/oj#art_28').
declared(prohibited_conflict_of_interest/1, 'No conflict of interest arises with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(required_objectivity_and_impartiality/1, 'Objectivity and impartiality of activities are safeguarded', 'celex:32024R1689/oj#art_28').
declared(required_separation_of_decision_and_assessment/1, 'Decisions are taken by persons different from those who carried out the assessment', 'celex:32024R1689/oj#art_28').
declared(prohibited_provision_of_assessment_activities/1, 'Not offering activities performed by conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(prohibited_commercial_consultancy_services/1, 'No consultancy services on a commercial or competitive basis', 'celex:32024R1689/oj#art_28').
declared(must_safeguard_confidentiality/2, 'Safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(required_adequate_competent_personnel/1, 'Adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
declared(required_expertise_of_personnel/1, 'Competent personnel have necessary expertise', 'celex:32024R1689/oj#art_28').
must_designate_or_establish(MemberState, NA) :-
    member_state(MemberState),
    notifying_authority(NA).
must_develop_procedures_in_cooperation(MemberState, cooperation_between_notifying_authorities) :-
    member_state(MemberState).
permitted_assessment_by_accreditation_body(MemberState, AB) :-
    member_state(MemberState),
    national_accreditation_body(AB).
prohibited_conflict_of_interest(NA) :-
    notifying_authority(NA).
required_objectivity_and_impartiality(NA) :-
    notifying_authority(NA).
required_separation_of_decision_and_assessment(NA) :-
    notifying_authority(NA).
prohibited_provision_of_assessment_activities(NA) :-
    notifying_authority(NA).
prohibited_commercial_consultancy_services(NA) :-
    notifying_authority(NA).
must_safeguard_confidentiality(NA, confidentiality_of_information) :-
    notifying_authority(NA).
required_adequate_competent_personnel(NA) :-
    notifying_authority(NA).
required_expertise_of_personnel(NA) :-
    notifying_authority(NA).
provenance(member_state/1, 'celex:32024R1689/oj#art_28').
provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop_procedures_in_cooperation/2, 'celex:32024R1689/oj#art_28').
provenance(permitted_assessment_by_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(required_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_decision_and_assessment/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_provision_of_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(required_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(required_expertise_of_personnel/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(required_description_of_conformity_assessment_activities/1, 'description of conformity assessment activities required with application', 'celex:32024R1689/oj#art_29').
declared(required_accreditation_certificate/1, 'accreditation certificate required with application where it exists', 'celex:32024R1689/oj#art_29').
declared(required_designation_document/1, 'document related to existing designations to be added to application', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate/1, 'accreditation certificate held by a conformity assessment body', 'celex:32024R1689/oj#art_29').
declared(designated_under_other_legislation/1, 'conformity assessment body designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
must_submit(Body, application_for_notification) :-
    conformity_assessment_body(Body).
required_description_of_conformity_assessment_activities(application_for_notification).
required_accreditation_certificate(application_for_notification).
required_designation_document(application_for_notification).
must_provide(Body, documentary_evidence_for_compliance) :-
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).
permitted_use_of_designation_documents(Body) :-
    notified_body(Body),
    designated_under_other_legislation(Body).
must_update(Body, documentation_par_2_3) :-
    notified_body(Body),
    designated_under_other_legislation(Body).
provenance(must_submit/2, 'celex:32024R1689/oj#art_29').
provenance(required_description_of_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_29').
provenance(required_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(required_designation_document/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_of_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(notify_body/2, 'permission for a notifying authority to notify a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify/2, 'obligation for a notifying authority to notify the Commission and other Member States', 'celex:32024R1689/oj#art_30').
declared(must_include/2, 'obligation for a notifying authority to include full details in a notification', 'celex:32024R1689/oj#art_30').
declared(must_provide/2, 'obligation for a notifying authority to provide documentary evidence when no accreditation certificate is used', 'celex:32024R1689/oj#art_30').
declared(permitted_perform_activities_of_notified_body/1, 'permission for a conformity assessment body to perform activities of a notified body under conditions', 'celex:32024R1689/oj#art_30').
declared(no_objection_within/3, 'no objection raised by the Commission or Member States within a given time limit', 'celex:32024R1689/oj#art_30').
declared(must_consult/2, 'obligation for the Commission to consult Member States and the conformity assessment body when objections are raised', 'celex:32024R1689/oj#art_30').
declared(must_decide/2, 'obligation for the Commission to decide on the authorisation after consultations', 'celex:32024R1689/oj#art_30').
declared(accreditation_certificate_included/1, 'the notification includes an accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(documentary_evidence_included/1, 'the notification includes documentary evidence of competence', 'celex:32024R1689/oj#art_30').
declared(objection_raised/2, 'an objection has been raised by a Commission or Member State concerning a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_30').
declared(other_member_state/1, 'a Member State other than the notifying authority', 'celex:32024R1689/oj#art_30').
notify_body(NA, B) :-
    notifying_authority(NA),
    conformity_assessment_body(B),
    satisfies_requirements_in_art_31(B).
must_notify(NA, notification(commission, other_member_states, B)) :-
    notifying_authority(NA),
    conformity_assessment_body(B).
must_include(NA, full_details(B)) :-
    notifying_authority(NA),
    conformity_assessment_body(B).
must_provide(NA, documentary_evidence(competence, B)) :-
    notifying_authority(NA),
    conformity_assessment_body(B),
    \+ accreditation_certificate_included(B).
permitted_perform_activities_of_notified_body(B) :-
    conformity_assessment_body(B),
    accreditation_certificate_included(B),
    no_objection_within(commission, weeks(2), B).
permitted_perform_activities_of_notified_body(B) :-
    conformity_assessment_body(B),
    documentary_evidence_included(B),
    no_objection_within(commission, months(2), B).
must_consult(Commission, consultation(objections_raised, MemberStates, B)) :-
    commission(Commission),
    objection_raised(MemberStates, B).
must_decide(Commission, decision(authorisation, B)) :-
    commission(Commission),
    objection_raised(_, B).
no_objection_within(Actor, Period, B) :-
    \+ objection_raised(Actor, B, Period).
satisfies_requirements_in_art_31(_).
provenance(notify_body/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_include/2, 'celex:32024R1689/oj#art_30').
provenance(must_provide/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_perform_activities_of_notified_body/1, 'celex:32024R1689/oj#art_30').
provenance(no_objection_within/3, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide/2, 'celex:32024R1689/oj#art_30').
provenance(accreditation_certificate_included/1, 'celex:32024R1689/oj#art_30').
provenance(documentary_evidence_included/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(commission/1, 'celex:32024R1689/oj#art_30').
provenance(other_member_state/1, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(must_establish/2, 'notified body must be established under national law', 'celex:32024R1689/oj#art_31').
declared(must_have/2, 'notified body must have the specified attribute', 'celex:32024R1689/oj#art_31').
declared(must_satisfy/2, 'notified body must satisfy the given requirements', 'celex:32024R1689/oj#art_31').
declared(must_be_independent/2, 'notified body must be independent of the specified party', 'celex:32024R1689/oj#art_31').
declared(prohibited_involvement_in_design_development_marketing_use/1, 'notified body must not be involved in design, development, marketing or use of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_conflict_of_interest/1, 'notified body must not engage in activities that could conflict with its independence or integrity', 'celex:32024R1689/oj#art_31').
declared(prohibited_consultancy_services/1, 'notified body must not provide consultancy services that could affect its independence', 'celex:32024R1689/oj#art_31').
declared(must_safeguard/2, 'notified body must safeguard the listed quality', 'celex:32024R1689/oj#art_31').
declared(must_document/2, 'notified body must document and implement the listed procedures', 'celex:32024R1689/oj#art_31').
declared(must_maintain/2, 'notified body must maintain the listed confidentiality', 'celex:32024R1689/oj#art_31').
declared(must_observe/2, 'notified body must observe the listed professional secrecy', 'celex:32024R1689/oj#art_31').
declared(must_consider/2, 'notified body must take due account of the listed provider characteristics', 'celex:32024R1689/oj#art_31').
declared(must_take_out/2, 'notified body must take out the listed insurance', 'celex:32024R1689/oj#art_31').
declared(must_be_capable/2, 'notified body must be capable of the listed performance', 'celex:32024R1689/oj#art_31').
declared(must_participate/2, 'notified body must participate in the listed activities', 'celex:32024R1689/oj#art_31').
declared(must_be_represented/2, 'notified body must be represented in the listed organisations', 'celex:32024R1689/oj#art_31').
must_establish(NB, national_law) :-
    notified_body(NB).
must_have(NB, legal_personality) :-
    notified_body(NB).
must_satisfy(NB, organisational_requirements) :-
    notified_body(NB).
must_satisfy(NB, quality_management_requirements) :-
    notified_body(NB).
must_satisfy(NB, resources_requirements) :-
    notified_body(NB).
must_satisfy(NB, process_requirements) :-
    notified_body(NB).
must_satisfy(NB, cybersecurity_requirements) :-
    notified_body(NB).
must_be_independent(NB, Provider) :-
    notified_body(NB),
    provider(Provider).
must_be_independent(NB, Operator) :-
    notified_body(NB),
    operator(Operator).
prohibited_involvement_in_design_development_marketing_use(NB) :-
    notified_body(NB).
prohibited_conflict_of_interest(NB) :-
    notified_body(NB).
prohibited_consultancy_services(NB) :-
    notified_body(NB).
must_safeguard(NB, independence) :-
    notified_body(NB).
must_safeguard(NB, objectivity) :-
    notified_body(NB).
must_safeguard(NB, impartiality) :-
    notified_body(NB).
must_document(NB, impartiality_procedures) :-
    notified_body(NB).
must_maintain(NB, confidentiality) :-
    notified_body(NB).
must_observe(NB, professional_secrecy) :-
    notified_body(NB).
must_consider(NB, provider_characteristics) :-
    notified_body(NB).
must_take_out(NB, liability_insurance) :-
    notified_body(NB).
must_be_capable(NB, integrity_and_competence) :-
    notified_body(NB).
must_have(NB, sufficient_internal_competences) :-
    notified_body(NB).
must_participate(NB, coordination_activities) :-
    notified_body(NB).
must_be_represented(NB, european_standardisation) :-
    notified_body(NB).
provenance(must_establish/2, 'celex:32024R1689/oj#art_31').
provenance(must_have/2, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_involvement_in_design_development_marketing_use/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_31').
provenance(must_document/2, 'celex:32024R1689/oj#art_31').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_31').
provenance(must_observe/2, 'celex:32024R1689/oj#art_31').
provenance(must_consider/2, 'celex:32024R1689/oj#art_31').
provenance(must_take_out/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_capable/2, 'celex:32024R1689/oj#art_31').
provenance(must_participate/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_represented/2, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(demonstrates_conformity/2, 'conformity assessment body demonstrates conformity with criteria of a harmonised standard', 'celex:32024R1689/oj#art_32').
declared(required_publication_in_official_journal/1, 'reference of the harmonised standard published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_32').
declared(required_coverage_of_requirements/1, 'applicable harmonised standard covers the requirements set out in the referenced article', 'celex:32024R1689/oj#art_32').
declared(required_compliance_with_requirements/1, 'conformity assessment body is presumed to comply with the requirements set out in the referenced article', 'celex:32024R1689/oj#art_32').
required_compliance_with_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity(B, HS),
    required_publication_in_official_journal(HS),
    required_coverage_of_requirements(HS).
provenance(demonstrates_conformity/2, 'celex:32024R1689/oj#art_32').
provenance(required_publication_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(required_coverage_of_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(required_compliance_with_requirements/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(must_ensure/2, 'obligation to ensure a condition', 'celex:32024R1689/oj#art_33').
declared(must_inform/2, 'obligation to inform the notifying authority', 'celex:32024R1689/oj#art_33').
declared(must_take_full_responsibility/2, 'obligation to take full responsibility for tasks', 'celex:32024R1689/oj#art_33').
declared(must_make_publicly_available/2, 'obligation to make a list publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_at_disposal/2, 'obligation to keep documents at the disposal of the notifying authority', 'celex:32024R1689/oj#art_33').
declared(required_requirements_of_art_31/1, 'must meet the requirements laid down in Article 31', 'celex:32024R1689/oj#art_33').
declared(provider_agrees/1, 'provider gives agreement', 'celex:32024R1689/oj#art_33').
declared(permitted_subcontracting/1, 'permission to subcontract activities', 'celex:32024R1689/oj#art_33').
declared(permitted_subsidiary/1, 'permission to use a subsidiary', 'celex:32024R1689/oj#art_33').
declared(subcontractor/1, 'entity performing subcontracted tasks', 'celex:32024R1689/oj#art_33').
declared(subsidiary/1, 'entity that is a subsidiary of a notified body', 'celex:32024R1689/oj#art_33').
declared(subcontracts_task/2, 'notified body subcontracts a specific task to a subcontractor', 'celex:32024R1689/oj#art_33').
declared(has_subsidiary/2, 'notified body has a subsidiary', 'celex:32024R1689/oj#art_33').
declared(relevant_documents/1, 'documents concerning assessment of qualifications and work carried out', 'celex:32024R1689/oj#art_33').
declared(list_of_subsidiaries/1, 'list of subsidiaries of a notified body', 'celex:32024R1689/oj#art_33').
must_ensure(NB, required_requirements_of_art_31(Sub)) :-
    notified_body(NB),
    ( subcontracts_task(NB, Sub) ; has_subsidiary(NB, Sub) ).
must_inform(NB, notifying_authority) :-
    notified_body(NB),
    ( subcontracts_task(NB, Sub) ; has_subsidiary(NB, Sub) ).
must_take_full_responsibility(NB, subcontractor(Sub)) :-
    notified_body(NB),
    subcontractor(Sub).
must_take_full_responsibility(NB, subsidiary(Sub)) :-
    notified_body(NB),
    subsidiary(Sub).
permitted_subcontracting(Activity) :-
    provider_agrees(Activity).
permitted_subsidiary(Activity) :-
    provider_agrees(Activity).
must_make_publicly_available(NB, list_of_subsidiaries(NB)) :-
    notified_body(NB).
must_keep_at_disposal(NA, kept_documents(Sub, period(years(5)))) :-
    notifying_authority(NA),
    ( subcontractor(Sub) ; subsidiary(Sub) ),
    relevant_documents(Sub).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_33').
provenance(required_requirements_of_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(provider_agrees/1, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/1, 'celex:32024R1689/oj#art_33').
provenance(permitted_subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(subcontractor/1, 'celex:32024R1689/oj#art_33').
provenance(subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(subcontracts_task/2, 'celex:32024R1689/oj#art_33').
provenance(has_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(relevant_documents/1, 'celex:32024R1689/oj#art_33').
provenance(list_of_subsidiaries/1, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify/2, 'obligation of notified bodies to verify conformity of high‑risk AI systems', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'obligation of notified bodies to avoid unnecessary burdens for providers', 'celex:32024R1689/oj#art_34').
declared(must_take_due_account/2, 'obligation of notified bodies to take due account of provider characteristics', 'celex:32024R1689/oj#art_34').
declared(must_respect_rigour_and_protection/2, 'obligation of notified bodies to respect required rigour and level of protection', 'celex:32024R1689/oj#art_34').
declared(must_make_available/2, 'obligation of notified bodies to make relevant documentation available', 'celex:32024R1689/oj#art_34').
declared(must_submit/2, 'obligation of notified bodies to submit documentation to the notifying authority on request', 'celex:32024R1689/oj#art_34').
must_verify(NB, conformity_verification(S)) :-
    notified_body(NB),
    high_risk_ai_system(S).
must_avoid_unnecessary_burdens(NB, Provider) :-
    notified_body(NB),
    provider(Provider).
must_take_due_account(NB, Provider) :-
    notified_body(NB),
    provider(Provider).
must_respect_rigour_and_protection(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).
must_make_available(NB, all_relevant_documentation) :-
    notified_body(NB).
must_submit(NB, submission(documentation, Authority)) :-
    notified_body(NB),
    notifying_authority(Authority).
provenance(must_verify/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').

% ==== celex:32024R1689/oj#art_35 ====
assign_identification_number(commission, identification_number(NB)) :-
    notified_body(NB).
make_publicly_available_list_of_notified_bodies(commission, list_of_notified_bodies(Act)) :-
    Act = 'celex:32024R1689/oj'.
ensure_list_up_to_date(commission, list_of_notified_bodies(Act)) :-
    Act = 'celex:32024R1689/oj'.
provenance(assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(make_publicly_available_list_of_notified_bodies/2, 'celex:32024R1689/oj#art_35').
provenance(ensure_list_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify/2, 'obligation of notifying authority to inform about changes to notified body notification', 'celex:32024R1689/oj#art_36').
declared(must_inform/2, 'obligation to inform a party about a matter', 'celex:32024R1689/oj#art_36').
declared(must_investigate/2, 'obligation of notifying authority to investigate a notified body', 'celex:32024R1689/oj#art_36').
declared(must_modify_designation/2, 'obligation of notifying authority to modify the designation of a notified body', 'celex:32024R1689/oj#art_36').
declared(must_ensure_files_kept/2, 'obligation of notifying authority to keep files of a notified body', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact/2, 'obligation of notifying authority to assess impact on certificates', 'celex:32024R1689/oj#art_36').
declared(must_submit_report/2, 'obligation of notifying authority to submit a report within a deadline', 'celex:32024R1689/oj#art_36').
declared(must_require/2, 'obligation of notifying authority to require a notified body to suspend or withdraw certificates', 'celex:32024R1689/oj#art_36').
declared(must_provide_information/2, 'obligation of notifying authority to provide information to national competent authorities', 'celex:32024R1689/oj#art_36').
must_notify(Authority, notification_change(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_inform(NotifiedBody, inform(notifying_authority)) :-
    notified_body(NotifiedBody).
must_inform(NotifiedBody, inform(provider, before(years(1)))) :-
    notified_body(NotifiedBody).
must_investigate(Authority, NotifiedBody) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_inform(Authority, inform(notified_body_objections)) :-
    notifying_authority(Authority).
must_modify_designation(Authority, modification(Action, NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    member(Action, [restrict, suspend, withdraw]).
must_inform(Authority, inform(commission_and_member_states)) :-
    notifying_authority(Authority).
must_inform(NotifiedBody, inform(providers, within(days(10)))) :-
    notified_body(NotifiedBody).
must_ensure_files_kept(Authority, NotifiedBody) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_assess_impact(Authority, impact_on_certificates(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_submit_report(Authority, report(findings, within(months(3)))) :-
    notifying_authority(Authority).
must_require(Authority, suspend_or_withdraw_certificates(NotifiedBody, period(reasonable))) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_inform(Authority, inform(commission_and_member_states_about_certificates)) :-
    notifying_authority(Authority).
must_provide_information(Authority, information_for(national_competent_authority, certificates)) :-
    notifying_authority(Authority).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_modify_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_36').
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
declared(must_investigate/2, 'Commission investigates cases where competence of a notified body is doubted or its continued fulfilment of requirements is in question', 'celex:32024R1689/oj#art_37').
declared(must_provide/2, 'Notifying authority provides the Commission with relevant information on request', 'celex:32024R1689/oj#art_37').
declared(must_treat_confidentially/2, 'Commission treats sensitive information obtained from investigations as confidential', 'celex:32024R1689/oj#art_37').
declared(must_inform/2, 'Commission informs the notifying Member State that a notified body does not meet the requirements', 'celex:32024R1689/oj#art_37').
declared(must_request/2, 'Commission requests the notifying Member State to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
declared(permitted_suspend_designation/1, 'Commission may suspend the designation of a notified body', 'celex:32024R1689/oj#art_37').
declared(permitted_restrict_designation/1, 'Commission may restrict the designation of a notified body', 'celex:32024R1689/oj#art_37').
declared(permitted_withdraw_designation/1, 'Commission may withdraw the designation of a notified body', 'celex:32024R1689/oj#art_37').
declared(competence_doubt_applies/1, 'There are reasons to doubt the competence of the notified body', 'celex:32024R1689/oj#art_37').
declared(requirements_fulfilment_applies/1, 'The notified body continues to fulfil the requirements laid down', 'celex:32024R1689/oj#art_37').
declared(does_not_meet_requirements_applies/1, 'The notified body does not meet or no longer meets the requirements for its notification', 'celex:32024R1689/oj#art_37').
declared(member_state_fails_to_take_measures/1, 'The notifying Member State fails to take the necessary corrective measures', 'celex:32024R1689/oj#art_37').
declared(provision_subject/2, 'Subject of the information to be provided: either the notification or the maintenance of competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(sensitive_information_obtained/1, 'Sensitive information obtained in the course of investigations', 'celex:32024R1689/oj#art_37').
must_investigate(commission, NB) :-
    notified_body(NB),
    ( competence_doubt_applies(NB)
    ; requirements_fulfilment_applies(NB) ).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
must_provide(Authority, info(commission, Subject)) :-
    notifying_authority(Authority),
    provision_subject(Subject, NB),
    notified_body(NB).
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
must_treat_confidentially(commission, Info) :-
    sensitive_information_obtained(Info).
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
must_inform(commission, member_state(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB).
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
must_request(commission, corrective_measures(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB).
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
permitted_suspend_designation(commission(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB),
    member_state_fails_to_take_measures(NB).
provenance(permitted_suspend_designation/1, 'celex:32024R1689/oj#art_37').
permitted_restrict_designation(commission(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB),
    member_state_fails_to_take_measures(NB).
provenance(permitted_restrict_designation/1, 'celex:32024R1689/oj#art_37').
permitted_withdraw_designation(commission(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB),
    member_state_fails_to_take_measures(NB).
provenance(permitted_withdraw_designation/1, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure/2, 'obligation to ensure', 'celex:32024R1689/oj#art_38').
declared(must_provide/2, 'obligation to provide', 'celex:32024R1689/oj#art_38').
declared(bodies_participate_in_group/2, 'participation of notified bodies in sectoral group', 'celex:32024R1689/oj#art_38').
must_ensure(commission, coordination_of_notified_bodies(high_risk_ai_system, sectoral_group)).
must_ensure(Authority, bodies_participate_in_group(Authority, sectoral_group)) :-
    notifying_authority(Authority).
must_provide(commission, exchange_of_knowledge_and_best_practices_between_notifying_authorities).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country with which the Union has concluded an agreement', 'celex:32024R1689/oj#art_39').
declared(meets_requirements_art_31/1, 'meets the requirements laid down in article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_compliance/1, 'ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
permitted_conformity_assessment_body_authorisation(C) :-
    third_country_conformity_assessment_body(C),
    (   meets_requirements_art_31(C)
    ;   ensures_equivalent_compliance(C)
    ).
provenance(permitted_conformity_assessment_body_authorisation/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_40').
declared(conforms_to/2, 'system conforms to standard', 'celex:32024R1689/oj#art_40').
declared(published_in_official_journal/1, 'standard reference published in Official Journal', 'celex:32024R1689/oj#art_40').
declared(standardisation_process_participant/1, 'participant in standardisation process', 'celex:32024R1689/oj#art_40').
presumed_conformity_applies(S) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    conforms_to(S, H),
    harmonised_standard(H),
    published_in_official_journal(H).
must_issue(commission, standardisation_request(covering(requirements(chapter_3, section_2), obligations(chapter_5, section_2)))).
must_consult(commission, board_and_relevant_stakeholders).
must_specify(commission, standards_characteristics(clear, consistent, aligned_with_union_harmonisation_legislation)).
must_promote(Participant, investment_and_innovation) :-
    standardisation_process_participant(Participant).
must_take_into_account(Participant, international_standards_consistent_with_union_values) :-
    standardisation_process_participant(Participant).
provenance(presumed_conformity_applies/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_promote/2, 'celex:32024R1689/oj#art_40').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_40').
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
declared(permitted_adopt_implementing_act/1, 'Commission may adopt implementing acts establishing common specifications', 'celex:32024R1689/oj#art_41').
declared(condition_fulfilled/1, 'All conditions for adopting common specifications are fulfilled', 'celex:32024R1689/oj#art_41').
declared(condition_a/1, 'Condition (a) for adopting common specifications is satisfied', 'celex:32024R1689/oj#art_41').
declared(condition_b/1, 'Condition (b) for adopting common specifications is satisfied', 'celex:32024R1689/oj#art_41').
declared(request_made/1, 'Commission has requested European standardisation organisations to draft a harmonised standard', 'celex:32024R1689/oj#art_41').
declared(request_not_accepted/1, 'The request has not been accepted by any European standardisation organisation', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_not_delivered/1, 'The harmonised standards addressing the request are not delivered within the deadline', 'celex:32024R1689/oj#art_41').
declared(standards_insufficient/1, 'The relevant harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(standards_not_comply/1, 'The harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_harmonised_reference_published/1, 'No reference to harmonised standards covering the requirements has been published in the Official Journal', 'celex:32024R1689/oj#art_41').
declared(must_consult/2, 'Commission shall consult the advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(must_adopt/2, 'Commission shall adopt implementing acts in accordance with the examination procedure', 'celex:32024R1689/oj#art_41').
declared(must_inform/2, 'Commission shall inform the committee that conditions are fulfilled before preparing a draft implementing act', 'celex:32024R1689/oj#art_41').
declared(objective_presumption/1, 'High‑risk AI systems or general‑purpose AI models in conformity with common specifications are presumed to conform with the requirements', 'celex:32024R1689/oj#art_41').
declared(in_conformity_with_common_specifications/1, 'AI system is in conformity with the common specifications', 'celex:32024R1689/oj#art_41').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_41').
declared(general_purpose_ai_model/1, 'General‑purpose AI model', 'celex:32024R1689/oj#art_41').
declared(must_assess/2, 'Commission shall assess a harmonised standard or information', 'celex:32024R1689/oj#art_41').
declared(must_repeal/2, 'Commission shall repeal implementing acts when a harmonised standard is published', 'celex:32024R1689/oj#art_41').
declared(must_justify/2, 'Providers shall justify technical solutions when they do not comply with common specifications', 'celex:32024R1689/oj#art_41').
declared(not_compliant_with_common_specifications/1, 'Provider does not comply with the common specifications', 'celex:32024R1689/oj#art_41').
declared(compliant_with_common_specifications/1, 'Provider complies with the common specifications', 'celex:32024R1689/oj#art_41').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_41').
declared(must_amend/2, 'Commission shall amend the implementing act when appropriate', 'celex:32024R1689/oj#art_41').
declared(appropriate/0, 'Condition that amendment is appropriate', 'celex:32024R1689/oj#art_41').
permitted_adopt_implementing_act(commission) :-
    condition_fulfilled(commission).
condition_fulfilled(C) :-
    condition_a(C),
    condition_b(C).
condition_a(C) :-
    request_made(C),
    (   request_not_accepted(C)
    ;   harmonised_standard_not_delivered(C)
    ;   standards_insufficient(C)
    ;   standards_not_comply(C)
    ).
condition_b(C) :-
    no_harmonised_reference_published(C).
must_consult(commission, advisory_forum).
must_adopt(commission, implementing_act(adopted_in_accordance_with(examination_procedure))).
must_inform(commission, inform(committee, conditions_fulfilled)).
objective_presumption(S) :-
    (   high_risk_ai_system(S)
    ;   general_purpose_ai_model(S)
    ),
    in_conformity_with_common_specifications(S).
must_assess(commission, harmonised_standard).
must_repeal(commission, implementing_act).
must_justify(P, justification(technical_solution_meets_requirements)) :-
    provider(P),
    not_compliant_with_common_specifications(P).
must_inform(MS, inform(commission, detailed_explanation)) :-
    member_state(MS).
must_assess(commission, information).
must_amend(commission, implementing_act) :-
    appropriate.
provenance(permitted_adopt_implementing_act/1, 'celex:32024R1689/oj#art_41').
provenance(condition_fulfilled/1, 'celex:32024R1689/oj#art_41').
provenance(condition_a/1, 'celex:32024R1689/oj#art_41').
provenance(condition_b/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(objective_presumption/1, 'celex:32024R1689/oj#art_41').
provenance(must_assess/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify/2, 'celex:32024R1689/oj#art_41').
provenance(must_amend/2, 'celex:32024R1689/oj#art_41').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_42').
declared(trained/1, 'system has been trained on appropriate data', 'celex:32024R1689/oj#art_42').
declared(tested/1, 'system has been tested on appropriate data', 'celex:32024R1689/oj#art_42').
declared(certified/1, 'system has obtained a cybersecurity certification', 'celex:32024R1689/oj#art_42').
declared(statement_of_conformity_issued/1, 'system has a statement of conformity under a cybersecurity scheme', 'celex:32024R1689/oj#art_42').
declared(published_in_oj/1, 'reference of certification or statement published in the Official Journal', 'celex:32024R1689/oj#art_42').
declared(covers_cybersecurity_requirements/1, 'certificate or statement covers the required cybersecurity requirements', 'celex:32024R1689/oj#art_42').
declared(presumed_compliant/1, 'presumed to comply with relevant requirements of the Regulation', 'celex:32024R1689/oj#art_42').
declared(presumed_cybersecurity_compliant/1, 'presumed to comply with cybersecurity requirements of the Regulation', 'celex:32024R1689/oj#art_42').
presumed_compliant(S) :-
    high_risk_ai_system(S),
    trained(S),
    tested(S),
    intended_purpose(S).
presumed_cybersecurity_compliant(S) :-
    high_risk_ai_system(S),
    ( certified(S) ; statement_of_conformity_issued(S) ),
    published_in_oj(S),
    covers_cybersecurity_requirements(S).
provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_cybersecurity_compliant/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex3_point1/1, 'high‑risk AI system listed in annex 3 point 1', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex3_points2to8/1, 'high‑risk AI system listed in annex 3 points 2‑8', 'celex:32024R1689/oj#art_43').
declared(listed_in_union_harmonisation_legislation/1, 'high‑risk AI system covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standard/2, 'provider has applied the harmonised standard to the AI system', 'celex:32024R1689/oj#art_43').
declared(applied_common_specification/2, 'provider has applied the common specification to the AI system', 'celex:32024R1689/oj#art_43').
declared(exists_harmonised_standard/1, 'harmonised standard exists for the AI system', 'celex:32024R1689/oj#art_43').
declared(exists_common_specification/1, 'common specification exists for the AI system', 'celex:32024R1689/oj#art_43').
declared(applied_partial_harmonised_standard/2, 'provider has applied only part of the harmonised standard', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_restricted/1, 'harmonised standard has been published with a restriction', 'celex:32024R1689/oj#art_43').
declared(applied_only_restricted_part/2, 'provider has applied only the restricted part of the harmonised standard', 'celex:32024R1689/oj#art_43').
declared(pre_determined_change/1, 'change has been pre‑determined by the provider and documented in the technical documentation', 'celex:32024R1689/oj#art_43').
declared(compliance_assessed/1, 'notified body compliance has been assessed in the notification procedure', 'celex:32024R1689/oj#art_43').
must_choose_conformity_assessment_procedure(Provider, System, internal_control) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_point1(System),
    (   applied_harmonised_standard(Provider, System)
    ;   applied_common_specification(Provider, System)
    ).
must_choose_conformity_assessment_procedure(Provider, System, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_point1(System),
    (   applied_harmonised_standard(Provider, System)
    ;   applied_common_specification(Provider, System)
    ).
must_choose_conformity_assessment_procedure(Provider, System, internal_control) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_points2to8(System).
must_follow_notified_body_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex3_point1(System),
    (   \+ exists_harmonised_standard(System), \+ exists_common_specification(System)
    ;   \+ applied_harmonised_standard(Provider, System)
    ;   applied_partial_harmonised_standard(Provider, System)
    ;   exists_common_specification(System), \+ applied_common_specification(Provider, System)
    ;   harmonised_standard_restricted(System), applied_only_restricted_part(Provider, System)
    ).
must_follow_legal_act_procedure(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_union_harmonisation_legislation(System).
permitted_notified_body(Body) :-
    notified_body(Body),
    compliance_assessed(Body).
must_conduct_new_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    substantial_modification(System),
    \+ pre_determined_change(System).
provenance(must_choose_conformity_assessment_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(must_follow_notified_body_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_legal_act_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(must_conduct_new_assessment/2, 'celex:32024R1689/oj#art_43').
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').

% ==== celex:32024R1689/oj#art_44 ====
declared(certificate/1, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(issued_by/2, 'certificate issued by notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_language/2, 'language of a certificate', 'celex:32024R1689/oj#art_44').
declared(language_understood_by_relevant_authorities/2, 'language understandable by relevant authorities in the member state of the notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_validity/2, 'validity period of a certificate', 'celex:32024R1689/oj#art_44').
declared(certificate_for_ai/2, 'certificate applies to AI system', 'celex:32024R1689/oj#art_44').
declared(annex1_covered/1, 'AI system covered by annex 1', 'celex:32024R1689/oj#art_44').
declared(annex3_covered/1, 'AI system covered by annex 3', 'celex:32024R1689/oj#art_44').
declared(request_extension_by_provider/2, 'provider requests extension of certificate validity', 'celex:32024R1689/oj#art_44').
declared(extension_period/2, 'extension period requested', 'celex:32024R1689/oj#art_44').
declared(re_assessment_based_on_conformity_assessment_procedures/1, 're‑assessment according to conformity assessment procedures', 'celex:32024R1689/oj#art_44').
declared(supplement_of/2, 'supplement certificate and base certificate', 'celex:32024R1689/oj#art_44').
declared(non_compliant_certificate/1, 'certificate for AI system no longer meets requirements', 'celex:32024R1689/oj#art_44').
declared(corrective_action_taken/2, 'provider takes corrective action for certificate', 'celex:32024R1689/oj#art_44').
declared(deadline_set_by_notified_body/2, 'deadline set by notified body for corrective action', 'celex:32024R1689/oj#art_44').
declared(decision/1, 'decision of notified body', 'celex:32024R1689/oj#art_44').
declared(related_certificate/2, 'certificate related to a decision', 'celex:32024R1689/oj#art_44').
declared(must_draw_up/2, 'obligation for notified body to draw up certificate in an understandable language', 'celex:32024R1689/oj#art_44').
declared(max_validity_years/2, 'maximum allowed validity period for a certificate', 'celex:32024R1689/oj#art_44').
declared(must_have_validity_within_limit/1, 'certificate validity must not exceed the maximum period', 'celex:32024R1689/oj#art_44').
declared(permitted_extend_certificate_validity/1, 'permission to extend certificate validity upon provider request', 'celex:32024R1689/oj#art_44').
declared(valid_certificate/1, 'certificate is valid', 'celex:32024R1689/oj#art_44').
declared(must_suspend_or_withdraw_or_impose_restrictions/2, 'obligation for notified body to suspend, withdraw or restrict a certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'obligation for notified body to give reasons for its decision', 'celex:32024R1689/oj#art_44').
declared(required_appeal_procedure/1, 'availability of appeal procedure against notified body decisions', 'celex:32024R1689/oj#art_44').
must_draw_up(notified_body(NB), certificate_in_language(Cert, Lang)) :-
    issued_by(Cert, NB),
    certificate(Cert),
    language_understood_by_relevant_authorities(NB, Lang).
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_44').
max_validity_years(Cert, years(5)) :-
    certificate(Cert),
    certificate_for_ai(Cert, AI),
    annex1_covered(AI).
provenance(max_validity_years/2, 'celex:32024R1689/oj#art_44').
max_validity_years(Cert, years(4)) :-
    certificate(Cert),
    certificate_for_ai(Cert, AI),
    annex3_covered(AI).
must_have_validity_within_limit(Cert) :-
    certificate(Cert),
    certificate_validity(Cert, years(N)),
    max_validity_years(Cert, years(Max)),
    N =< Max.
provenance(must_have_validity_within_limit/1, 'celex:32024R1689/oj#art_44').
permitted_extend_certificate_validity(Cert) :-
    request_extension_by_provider(Prov, Cert),
    provider(Prov),
    certificate(Cert),
    certificate_for_ai(Cert, AI),
    ( annex1_covered(AI) -> Max = years(5) ; annex3_covered(AI) -> Max = years(4) ),
    extension_period(Cert, years(N)),
    N =< Max,
    re_assessment_based_on_conformity_assessment_procedures(Cert).
provenance(permitted_extend_certificate_validity/1, 'celex:32024R1689/oj#art_44').
valid_certificate(Cert) :-
    certificate(Cert),
    certificate_validity(Cert, _).
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').
valid_certificate(Supp) :-
    supplement_of(Supp, Base),
    valid_certificate(Base).
must_suspend_or_withdraw_or_impose_restrictions(notified_body(NB), Cert) :-
    notified_body(NB),
    issued_by(Cert, NB),
    non_compliant_certificate(Cert),
    \+ corrective_action_taken(Prov, Cert).
provenance(must_suspend_or_withdraw_or_impose_restrictions/2, 'celex:32024R1689/oj#art_44').
must_give_reasons(notified_body(NB), Decision) :-
    notified_body(NB),
    decision(Decision),
    related_certificate(Decision, Cert),
    issued_by(Cert, NB).
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
required_appeal_procedure(appeal_procedure).
provenance(required_appeal_procedure/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'obligation of a notified body to inform a party about specific information', 'celex:32024R1689/oj#art_45').
declared(must_provide/2, 'obligation of a notified body to provide information to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'obligation of a notified body to safeguard the confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform(NB, notifying_authority_info(union_technical_documentation_assessment_certificate)) :-
    notified_body(NB).
must_inform(NB, notifying_authority_info(certificate_supplement)) :-
    notified_body(NB).
must_inform(NB, notifying_authority_info(quality_management_system_approval)) :-
    notified_body(NB).
must_inform(NB, notifying_authority_info(action(refusal_or_restriction_or_suspension_or_withdrawal, union_technical_documentation_assessment_certificate))) :-
    notified_body(NB).
must_inform(NB, notifying_authority_info(action(refusal_or_restriction_or_suspension_or_withdrawal, quality_management_system_approval))) :-
    notified_body(NB).
must_inform(NB, notifying_authority_info(circumstances_affecting_notification_scope)) :-
    notified_body(NB).
must_inform(NB, notifying_authority_info(request_for_information_from_market_surveillance_authority)) :-
    notified_body(NB),
    market_surveillance_authority(_).
must_inform(NB, notifying_authority_info(conformity_assessment_activities_on_request)) :-
    notified_body(NB).
must_inform(NB, other_notified_body_info(action(refusal_or_suspension_or_withdrawal, quality_management_system_approval))) :-
    notified_body(NB).
must_inform(NB, other_notified_body_info(quality_management_system_approval_issued_on_request)) :-
    notified_body(NB).
must_inform(NB, other_notified_body_info(action(refusal_or_withdrawal_or_suspension_or_restriction, union_technical_documentation_assessment_certificate))) :-
    notified_body(NB).
must_inform(NB, other_notified_body_info(certificates_and_supplements_issued_on_request)) :-
    notified_body(NB).
must_provide(NB, other_notified_body_info(conformity_assessment_results(negative))) :-
    notified_body(NB).
must_provide(NB, other_notified_body_info(conformity_assessment_results(positive_on_request))) :-
    notified_body(NB).
must_safeguard_confidentiality(NB, information) :-
    notified_body(NB).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional reason for derogation', 'celex:32024R1689/oj#art_46').
declared(urgent_exception/1, 'urgent exceptional reason', 'celex:32024R1689/oj#art_46').
declared(authorisation_issued/1, 'authorisation issued for system', 'celex:32024R1689/oj#art_46').
declared(receipt_within_15_days/1, 'receipt of information within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(objection_raised/1, 'objection raised against authorisation', 'celex:32024R1689/oj#art_46').
declared(commission_considers_unjustified/1, 'commission considers authorisation unjustified', 'celex:32024R1689/oj#art_46').
declared(complies_with_requirements/1, 'system complies with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_46').
declared(covered_by_union_harmonisation_legislation/1, 'system related to product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_46').
permitted_authorisation_high_risk_ai_system(S) :-
    market_surveillance_authority(_A),
    high_risk_ai_system(S),
    exceptional_reason(_R).
permitted_put_into_service_without_authorisation(S) :-
    law_enforcement_authority(_L),
    high_risk_ai_system(S),
    urgent_exception(_U).
must_issue_authorisation(_A, S) :-
    market_surveillance_authority(_A),
    high_risk_ai_system(S),
    complies_with_requirements(S).
must_inform(_A, information(commission_and_member_states, authorisation(S))) :-
    market_surveillance_authority(_A),
    high_risk_ai_system(S),
    \+ sensitive_operational_data(_).
justified_authorisation(S) :-
    authorisation_issued(S),
    receipt_within_15_days(S),
    \+ objection_raised(S).
must_withdraw_authorisation(_A, S) :-
    market_surveillance_authority(_A),
    commission_considers_unjustified(S),
    high_risk_ai_system(S).
exempt_other_derogations(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
provenance(permitted_authorisation_high_risk_ai_system/1, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_without_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_issue_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(exempt_other_derogations/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up/2, 'provider must draw up EU declaration of conformity for a high‑risk AI system', 'celex:32024R1689/oj#art_47').
declared(required_retention/1, 'EU declaration of conformity must be kept for ten years after placement or putting into service', 'celex:32024R1689/oj#art_47').
declared(required_identification/1, 'EU declaration of conformity must identify the high‑risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_submit/2, 'provider must submit a copy of the EU declaration of conformity upon request', 'celex:32024R1689/oj#art_47').
declared(required_statement_meeting_requirements/1, 'EU declaration of conformity must state conformity with the requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_47').
declared(required_information/1, 'EU declaration of conformity must contain the information set out in Annex 5', 'celex:32024R1689/oj#art_47').
declared(required_translation/1, 'EU declaration of conformity must be translated into a language easily understood by the competent authorities', 'celex:32024R1689/oj#art_47').
declared(required_single_declaration/1, 'When multiple Union legislations apply, a single EU declaration of conformity must be drawn up', 'celex:32024R1689/oj#art_47').
declared(required_legislation_identification/1, 'The declaration must contain information to identify the applicable Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(must_assume_responsibility/2, 'by drawing up the declaration, the provider assumes responsibility for compliance with Chapter 3 Section 2', 'celex:32024R1689/oj#art_47').
declared(must_keep_up_to_date/2, 'provider must keep the EU declaration of conformity up‑to‑date', 'celex:32024R1689/oj#art_47').
must_draw_up(Provider, eu_declaration_of_conformity(HighRiskAISystem)) :-
    provider(Provider),
    ai_system(HighRiskAISystem),
    ai_system(HighRiskAISystem).
required_retention(eu_declaration_of_conformity(years(10), after(placed_on_market_or_put_into_service))).
required_identification(eu_declaration_of_conformity).
must_submit(Provider, copy_of(eu_declaration_of_conformity, upon_request)) :-
    provider(Provider).
required_statement_meeting_requirements(eu_declaration_of_conformity).
required_information(eu_declaration_of_conformity).
required_translation(eu_declaration_of_conformity).
required_single_declaration(eu_declaration_of_conformity).
required_legislation_identification(eu_declaration_of_conformity).
must_assume_responsibility(Provider, compliance(chapter_3_sec_2)) :-
    provider(Provider).
must_keep_up_to_date(Provider, eu_declaration_of_conformity) :-
    provider(Provider).
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_47').
provenance(required_retention/1, 'celex:32024R1689/oj#art_47').
provenance(required_identification/1, 'celex:32024R1689/oj#art_47').
provenance(must_submit/2, 'celex:32024R1689/oj#art_47').
provenance(required_statement_meeting_requirements/1, 'celex:32024R1689/oj#art_47').
provenance(required_information/1, 'celex:32024R1689/oj#art_47').
provenance(required_translation/1, 'celex:32024R1689/oj#art_47').
provenance(required_single_declaration/1, 'celex:32024R1689/oj#art_47').
provenance(required_legislation_identification/1, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(high_risk_ai_system_applies/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'AI system provided digitally', 'celex:32024R1689/oj#art_48').
declared(accessible_via_interface/1, 'digital CE marking can be easily accessed via the interface or machine‑readable code', 'celex:32024R1689/oj#art_48').
declared(not_possible_or_not_warranted/1, 'affixing CE marking visibly, legibly and indelibly is not possible or not warranted', 'celex:32024R1689/oj#art_48').
declared(applicable/1, 'the situation where the identification number of the notified body must be affixed', 'celex:32024R1689/oj#art_48').
declared(provider_under_instructions_of_notified_body/1, 'provider acts under the instructions of the notified body', 'celex:32024R1689/oj#art_48').
declared(authorised_representative_under_instructions_of_notified_body/1, 'authorised representative acts under the instructions of the notified body', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_union_law/1, 'high‑risk AI system is subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
required_ce_marking(S) :-
    high_risk_ai_system_applies(S).
provenance(required_ce_marking/1, 'celex:32024R1689/oj#art_48').
required_digital_ce_marking(S) :-
    high_risk_ai_system_applies(S),
    provided_digitally(S),
    accessible_via_interface(S).
provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
required_affixed_visibly_legibly_indelibly(S) :-
    high_risk_ai_system_applies(S),
    \+ not_possible_or_not_warranted(S).
provenance(required_affixed_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
required_affixed_to_packaging_or_documentation(S) :-
    high_risk_ai_system_applies(S),
    not_possible_or_not_warranted(S).
provenance(required_affixed_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
must_affix_identification_number(notified_body, S) :-
    high_risk_ai_system_applies(S),
    applicable(S).
provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
must_affix_identification_number(provider, S) :-
    high_risk_ai_system_applies(S),
    applicable(S),
    provider_under_instructions_of_notified_body(S).
must_affix_identification_number(authorised_representative, S) :-
    high_risk_ai_system_applies(S),
    applicable(S),
    authorised_representative_under_instructions_of_notified_body(S).
required_identification_number_in_promotional_material(S) :-
    high_risk_ai_system_applies(S),
    applicable(S).
provenance(required_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
required_ce_marking_indicates_other_law(S) :-
    high_risk_ai_system_applies(S),
    subject_to_other_union_law(S).
provenance(required_ce_marking_indicates_other_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'art_49').
declared(listed_in_annex_3/1, 'AI system listed in annex 3', 'art_49').
declared(exception_high_risk_ai_system/1, 'high‑risk AI system listed in annex 3 point 2 (exception)', 'art_49').
declared(not_high_risk_ai_system/1, 'AI system concluded not high‑risk according to art 6 paragraph 3', 'art_49').
declared(public_authority_deployer/1, 'deployer that is a public authority, Union institution, body, office, agency or acting on its behalf', 'art_49').
declared(law_enforcement_related_system/1, 'high‑risk AI system listed in annex 3 points 1, 6 or 7, i.e. law‑enforcement related', 'art_49').
declared(using/1, 'use of an AI system', 'art_49').
must_register(Actor, registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ exception_high_risk_ai_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register(Actor, registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    not_high_risk_ai_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register(Actor, use_registration(System)) :-
    public_authority_deployer(Actor),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ exception_high_risk_ai_system(System),
    ( putting_into_service(System) ; using(System) ).
must_register(Actor, secure_section_registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    law_enforcement_related_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register(Actor, national_registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    exception_high_risk_ai_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
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
declared(direct_interaction_with_natural_persons_applies/1, 'AI system intended to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(obvious_interaction/1, 'Interaction is obvious to a reasonably well‑informed, observant and circumspect natural person', 'celex:32024R1689/oj#art_50').
declared(authorised_by_law/1, 'AI system authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generates synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(assistive_editing_function_applies/1, 'AI system performs an assistive function for standard editing and does not substantially alter the input data', 'celex:32024R1689/oj#art_50').
declared(generated_text_for_public_interest/1, 'AI‑generated text published with the purpose of informing the public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(human_review/1, 'AI‑generated content has undergone a process of human review or editorial control', 'celex:32024R1689/oj#art_50').
declared(first_interaction_time/1, 'Time of the first interaction or exposure of the natural person with the AI system', 'celex:32024R1689/oj#art_50').
declared(codes_of_practice/1, 'Codes of practice at Union level for transparency obligations', 'celex:32024R1689/oj#art_50').
declared(must_ensure/2, 'Actor must ensure the specified object', 'celex:32024R1689/oj#art_50').
declared(must_inform/2, 'Actor must inform the natural persons about the specified object', 'celex:32024R1689/oj#art_50').
declared(must_process/2, 'Actor must process personal data in accordance with applicable law', 'celex:32024R1689/oj#art_50').
declared(must_disclose/2, 'Actor must disclose the specified artificial generation or manipulation', 'celex:32024R1689/oj#art_50').
declared(must_provide/2, 'Actor must provide the specified transparency information', 'celex:32024R1689/oj#art_50').
declared(must_encourage/2, 'Actor must encourage the specified activity', 'celex:32024R1689/oj#art_50').
declared(must_facilitate/2, 'Actor must facilitate the specified activity', 'celex:32024R1689/oj#art_50').
declared(must_adopt/2, 'Actor must adopt the specified implementing act', 'celex:32024R1689/oj#art_50').
must_ensure(P, inform_natural_persons(S)) :-
    provider(P),
    ai_system(S),
    direct_interaction_with_natural_persons_applies(S),
    \+ obvious_interaction(S),
    \+ authorised_by_law(S).
must_ensure(P, mark_outputs(S)) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ assistive_editing_function_applies(S),
    \+ authorised_by_law(S).
must_ensure(P, effective_technical_solution(S)) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ assistive_editing_function_applies(S),
    \+ authorised_by_law(S).
must_inform(D, operation_of_system(S)) :-
    deployer(D),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_by_law(S).
must_process(D, personal_data_compliance(S)) :-
    deployer(D),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_by_law(S).
must_disclose(D, deep_fake_content(S)) :-
    deployer(D),
    ai_system(S),
    deep_fake(S),
    \+ authorised_by_law(S).
must_disclose(D, generated_text(S)) :-
    deployer(D),
    ai_system(S),
    generated_text_for_public_interest(S),
    \+ authorised_by_law(S),
    \+ human_review(S).
must_provide(A, transparency_information(S)) :-
    (provider(A) ; deployer(A)),
    ai_system(S),
    ( direct_interaction_with_natural_persons_applies(S)
    ; generates_synthetic_content(S)
    ; emotion_recognition_system(S)
    ; biometric_categorisation_system(S)
    ; deep_fake(S)
    ; generated_text_for_public_interest(S)
    ),
    first_interaction_time(S).
must_encourage(ai_office, codes_of_practice).
must_facilitate(ai_office, codes_of_practice).
must_adopt(commission, implementing_act(codes_of_practice)).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_process/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_provide/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_50').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_50').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_50').
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
declared(required_general_purpose_ai_model_with_systemic_risk/1, 'general‑purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_51').
declared(presumed_high_impact_capabilities/1, 'general‑purpose AI model presumed to have high impact capabilities', 'celex:32024R1689/oj#art_51').
declared(floating_point_operations/2, 'amount of floating‑point operations used for training', 'celex:32024R1689/oj#art_51').
declared(commission_decision_applies/1, 'Commission decision ex officio or after qualified alert applies', 'celex:32024R1689/oj#art_51').
declared(equivalent_capabilities/1, 'capabilities or impact equivalent to those set out in referenced point', 'celex:32024R1689/oj#art_51').
declared(must_amend_thresholds/2, 'Commission shall adopt delegated acts to amend thresholds', 'celex:32024R1689/oj#art_51').
declared(must_supplement_benchmarks/2, 'Commission shall adopt delegated acts to supplement benchmarks and indicators', 'celex:32024R1689/oj#art_51').
required_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
required_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_applies(M),
    equivalent_capabilities(M).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    floating_point_operations(M, Ops),
    Ops > 1025.
must_amend_thresholds(commission, thresholds(par_1)).
must_supplement_benchmarks(commission, benchmarks(par_1)).
provenance(required_general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_amend_thresholds/2, 'celex:32024R1689/oj#art_51').
provenance(must_supplement_benchmarks/2, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(condition_met/1, 'general‑purpose AI model meets the condition of art 51 para 1 unp 1 pnt a', 'celex:32024R1689/oj#art_52').
declared(must_notify/2, 'provider must notify the Commission', 'celex:32024R1689/oj#art_52').
declared(required_information_in_notification/2, 'notification must include information to demonstrate requirement met', 'celex:32024R1689/oj#art_52').
declared(present_arguments/2, 'provider may present arguments with its notification', 'celex:32024R1689/oj#art_52').
declared(must_reject_arguments/2, 'Commission must reject insufficiently substantiated arguments', 'celex:32024R1689/oj#art_52').
declared(required_classification_as_systemic_risk/1, 'model shall be classified as a general‑purpose AI model with systemic risk', 'celex:32024R1689/oj#art_52').
declared(permitted_designate_systemic_risk/2, 'Commission may designate a model as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(must_adopt_delegated_acts/2, 'Commission shall adopt delegated acts to amend annex criteria', 'celex:32024R1689/oj#art_52').
declared(must_publish_list/1, 'Commission shall ensure a list of systemic‑risk models is published', 'celex:32024R1689/oj#art_52').
declared(must_keep_list_up_to_date/1, 'Commission shall keep the list up to date', 'celex:32024R1689/oj#art_52').
declared(required_observe_intellectual_property_rights/1, 'Commission must observe IP rights when publishing the list', 'celex:32024R1689/oj#art_52').
declared(required_content_of_request/2, 'request must contain objective, detailed and new reasons', 'celex:32024R1689/oj#art_52').
declared(permitted_request_reassessment/2, 'provider may request reassessment after six months', 'celex:32024R1689/oj#art_52').
must_notify(P, notification(general_purpose_ai_model(M), within(weeks(2)))) :-
    provider(P),
    general_purpose_ai_model(M),
    condition_met(M).
required_information_in_notification(P, info(demonstrate_requirement_met)) :-
    provider(P),
    general_purpose_ai_model(_M).
present_arguments(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    condition_met(M).
must_reject_arguments(C, M) :-
    commission(C),
    general_purpose_ai_model(M),
    \+ sufficiently_substantiated_arguments(M).
required_classification_as_systemic_risk(M) :-
    general_purpose_ai_model(M),
    \+ sufficiently_substantiated_arguments(M).
permitted_designate_systemic_risk(C, M) :-
    commission(C),
    general_purpose_ai_model(M).
must_adopt_delegated_acts(C, amend_annex(criteria)) :-
    commission(C).
must_publish_list(C) :-
    commission(C).
must_keep_list_up_to_date(C) :-
    commission(C).
required_observe_intellectual_property_rights(C) :-
    commission(C).
must_take_request_into_account(C, P, M) :-
    commission(C),
    provider(P),
    general_purpose_ai_model(M).
permitted_reassess(C, M) :-
    commission(C),
    general_purpose_ai_model(M).
required_content_of_request(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
permitted_request_reassessment(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    six_months_after(decision_date(M)).
provenance(condition_met/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(required_information_in_notification/2, 'celex:32024R1689/oj#art_52').
provenance(present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(must_reject_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(required_classification_as_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/1, 'celex:32024R1689/oj#art_52').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_52').
provenance(required_observe_intellectual_property_rights/1, 'celex:32024R1689/oj#art_52').
provenance(must_take_request_into_account/3, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(required_content_of_request/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_request_reassessment/2, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up technical documentation of the general‑purpose AI model', 'celex:32024R1689/oj#art_53').
declared(must_keep_up_to_date_technical_documentation/2, 'provider must keep technical documentation of the general‑purpose AI model up to date', 'celex:32024R1689/oj#art_53').
declared(must_draw_up_information/2, 'provider must draw up information and documentation for AI‑system providers intending to integrate the model', 'celex:32024R1689/oj#art_53').
declared(must_keep_up_to_date_information/2, 'provider must keep that information and documentation up to date', 'celex:32024R1689/oj#art_53').
declared(must_make_available_information/2, 'provider must make that information and documentation available to AI‑system providers', 'celex:32024R1689/oj#art_53').
declared(must_put_policy/2, 'provider must put in place a policy to comply with Union copyright and related rights law', 'celex:32024R1689/oj#art_53').
declared(must_draw_up_summary/2, 'provider must draw up a sufficiently detailed summary of the content used for training the model', 'celex:32024R1689/oj#art_53').
declared(must_make_publicly_available_summary/2, 'provider must make the training‑content summary publicly available', 'celex:32024R1689/oj#art_53').
declared(must_cooperate/2, 'provider must cooperate as necessary with the Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(permitted_rely_on_codes_of_practice/1, 'provider may rely on codes of practice to demonstrate compliance until a harmonised standard is published', 'celex:32024R1689/oj#art_53').
declared(must_demonstrate_alternative_means/1, 'provider must demonstrate alternative adequate means of compliance when not adhering to a code of practice or harmonised standard', 'celex:32024R1689/oj#art_53').
declared(must_treat_confidentially/2, 'provider must treat information obtained under this article in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_53').
declared(exempt_open_source_provider/1, 'provider is exempt from the obligations because the model is released under a free and open‑source licence and not subject to systemic risk', 'celex:32024R1689/oj#art_53').
declared(open_source_model/1, 'the AI model is released under a free and open‑source licence with full public availability of parameters, architecture and usage information', 'celex:32024R1689/oj#art_53').
declared(systemic_risk_model/1, 'the general‑purpose AI model presents systemic risk', 'celex:32024R1689/oj#art_53').
declared(harmonised_standard_published/0, 'a European harmonised standard covering the obligations has been published', 'celex:32024R1689/oj#art_53').
declared(adheres_to_code_of_practice/1, 'provider adheres to an approved code of practice', 'celex:32024R1689/oj#art_53').
declared(complies_with_harmonised_standard/1, 'provider complies with a European harmonised standard', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(Provider, technical_documentation(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_keep_up_to_date_technical_documentation(Provider, technical_documentation(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_draw_up_information(Provider, information_for_integration(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_keep_up_to_date_information(Provider, information_for_integration(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_make_available_information(Provider, information_for_integration(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_put_policy(Provider, copyright_policy) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_draw_up_summary(Provider, training_content_summary(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_make_publicly_available_summary(Provider, training_content_summary(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).
must_cooperate(Provider, cooperation(commission, national_competent_authority)) :-
    provider(Provider).
permitted_rely_on_codes_of_practice(Provider) :-
    provider(Provider),
    \+ harmonised_standard_published.
must_demonstrate_alternative_means(Provider) :-
    provider(Provider),
    \+ adheres_to_code_of_practice(Provider),
    \+ complies_with_harmonised_standard(Provider).
must_treat_confidentially(Provider, information_obtained(art_53)) :-
    provider(Provider).
exempt_open_source_provider(Provider) :-
    provider(Provider),
    open_source_model(Provider),
    \+ systemic_risk_model(Provider).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_rely_on_codes_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_means/1, 'celex:32024R1689/oj#art_53').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_open_source_provider/1, 'celex:32024R1689/oj#art_53').
provenance(open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_model/1, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published/0, 'celex:32024R1689/oj#art_53').
provenance(adheres_to_code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(complies_with_harmonised_standard/1, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
declared(open_source_provider/1, 'provider releasing model under a free open‑source licence', 'celex:32024R1689/oj#art_54').
declared(exempt_provider/1, 'provider to which the obligations of Article 54 do not apply', 'celex:32024R1689/oj#art_54').
declared(must_appoint/2, 'provider must appoint an authorised representative before placing a model on the market', 'celex:32024R1689/oj#art_54').
declared(must_enable/2, 'provider must enable its authorised representative to perform the mandated tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform/2, 'authorised representative must perform the tasks specified in the mandate', 'celex:32024R1689/oj#art_54').
declared(must_terminate/2, 'authorised representative must terminate the mandate if the provider breaches its obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform/2, 'authorised representative must inform the AI Office of the termination of the mandate', 'celex:32024R1689/oj#art_54').
exempt_provider(P) :-
    provider(P),
    open_source_provider(P),
    \+ systemic_risk(P).
must_appoint(P, authorised_representative(AR)) :-
    provider(P),
    \+ exempt_provider(P).
must_enable(P, authorised_representative(AR)) :-
    provider(P),
    \+ exempt_provider(P).
must_perform(AR, tasks_from_mandate) :-
    authorised_representative(AR).
must_terminate(AR, mandate) :-
    authorised_representative(AR).
must_inform(AR, inform(ai_office, termination)) :-
    authorised_representative(AR).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_provider/1, 'celex:32024R1689/oj#art_54').
provenance(open_source_provider/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_perform_model_evaluation/2, 'provider must perform model evaluation', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risk/2, 'provider must assess and mitigate systemic risk', 'celex:32024R1689/oj#art_55').
declared(must_report_serious_incident_information/2, 'provider must report serious incident information', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_protection/2, 'provider must ensure cybersecurity protection', 'celex:32024R1689/oj#art_55').
declared(permitted_rely_on_codes_of_practice/1, 'provider may rely on codes of practice', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/1, 'provider must demonstrate alternative compliance', 'celex:32024R1689/oj#art_55').
declared(must_treat_confidentially/2, 'provider must treat information confidentially', 'celex:32024R1689/oj#art_55').
declared(adheres_to_approved_code_of_practice/1, 'provider adheres to an approved code of practice', 'celex:32024R1689/oj#art_55').
declared(complies_with_european_harmonised_standard/1, 'provider complies with a European harmonised standard', 'celex:32024R1689/oj#art_55').
declared(information_obtained_pursuant_to_art_55/1, 'information obtained pursuant to article 55', 'celex:32024R1689/oj#art_55').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general‑purpose AI model with systemic risk', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model).
must_assess_and_mitigate_systemic_risk(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model).
must_report_serious_incident_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model),
    serious_incident(_Incident),
    ai_office(_AIOffice),
    national_competent_authority(_NCA).
must_ensure_cybersecurity_protection(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model).
permitted_rely_on_codes_of_practice(Provider) :-
    provider(Provider).
must_demonstrate_alternative_compliance(Provider) :-
    provider(Provider),
    (\+ adheres_to_approved_code_of_practice(Provider) ;
     \+ complies_with_european_harmonised_standard(Provider)).
must_treat_confidentially(Provider, Information) :-
    provider(Provider),
    information_obtained_pursuant_to_art_55(Information).
adheres_to_approved_code_of_practice(_Provider) :- fail.
complies_with_european_harmonised_standard(_Provider) :- fail.
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(_Risk).
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incident_information/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_codes_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_55').
provenance(adheres_to_approved_code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(complies_with_european_harmonised_standard/1, 'celex:32024R1689/oj#art_55').
provenance(information_obtained_pursuant_to_art_55/1, 'celex:32024R1689/oj#art_55').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(must_encourage/2, 'obligation to encourage', 'celex:32024R1689/oj#art_56').
declared(must_facilitate/2, 'obligation to facilitate', 'celex:32024R1689/oj#art_56').
declared(must_aim_to_ensure/2, 'obligation to aim to ensure', 'celex:32024R1689/oj#art_56').
declared(permitted_invite/1, 'permission to invite', 'celex:32024R1689/oj#art_56').
declared(permitted_support/1, 'permission to support', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate/2, 'obligation to monitor and evaluate', 'celex:32024R1689/oj#art_56').
declared(must_assess_coverage/2, 'obligation to assess coverage', 'celex:32024R1689/oj#art_56').
declared(must_publish_assessment/2, 'obligation to publish assessment', 'celex:32024R1689/oj#art_56').
declared(required_codes_of_practice_ready_by/1, 'deadline for codes of practice to be ready', 'celex:32024R1689/oj#art_56').
declared(must_take_steps/2, 'obligation to take necessary steps', 'celex:32024R1689/oj#art_56').
declared(permitted_provide_common_rules/1, 'permission for Commission to provide common rules', 'celex:32024R1689/oj#art_56').
declared(permitted_adherence/1, 'permission to adhere to codes of practice', 'celex:32024R1689/oj#art_56').
must_encourage(ai_office, drawing_up(codes_of_practice)).
must_facilitate(ai_office, drawing_up(codes_of_practice)).
must_aim_to_ensure(ai_office, codes_of_practice_covers_obligations([art_53, art_55])).
must_aim_to_ensure(board, codes_of_practice_covers_obligations([art_53, art_55])).
must_aim_to_ensure(ai_office, codes_of_practice_sets_objectives_and_measures).
must_aim_to_ensure(board, codes_of_practice_sets_objectives_and_measures).
must_aim_to_ensure(ai_office, participants_report_regularly).
must_monitor_and_evaluate(ai_office, codes_of_practice_objectives_achievement).
must_monitor_and_evaluate(board, codes_of_practice_objectives_achievement).
must_assess_coverage(ai_office, codes_of_practice_covers_obligations([art_53, art_55])).
must_assess_coverage(board, codes_of_practice_covers_obligations([art_53, art_55])).
must_publish_assessment(ai_office, adequacy_of_codes_of_practice).
must_publish_assessment(board, adequacy_of_codes_of_practice).
required_codes_of_practice_ready_by(date(2025,5,2)).
must_take_steps(ai_office, prepare_codes_of_practice).
must_encourage_and_facilitate(ai_office, review_and_adaptation_of_codes_of_practice) :-
    true.
must_assist(ai_office, assessment_of_available_standards).
permitted_invite(invite(ai_office, providers_of_general_purpose_ai_models)).
permitted_invite(invite(ai_office, national_competent_authorities)).
permitted_support(support(civil_society_organisations, drawing_up_codes_of_practice)).
permitted_support(support(industry, drawing_up_codes_of_practice)).
permitted_support(support(academia, drawing_up_codes_of_practice)).
permitted_support(support(downstream_providers, drawing_up_codes_of_practice)).
permitted_support(support(independent_experts, drawing_up_codes_of_practice)).
permitted_adherence(adherence(ai_office, providers_of_general_purpose_ai_models)).
permitted_provide_common_rules(commission).
provenance(must_encourage/2, 'celex:32024R1689/oj#art_56').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_support/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(required_codes_of_practice_ready_by/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_steps/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_adherence/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assist/2, 'celex:32024R1689/oj#art_56').
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
must_establish(_MemberState, ai_regulatory_sandbox(operational_by(date(2026,8,2)))).
provenance(must_establish/2, 'celex:32024R1689/oj#art_57').
permitted_technical_support(_Commission).
provenance(permitted_technical_support/1, 'celex:32024R1689/oj#art_57').
permitted_additional_ai_regulatory_sandbox(_MemberState).
provenance(permitted_additional_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
permitted_ai_regulatory_sandbox_by_edps(_EDPS).
provenance(permitted_ai_regulatory_sandbox_by_edps/1, 'celex:32024R1689/oj#art_57').
must_allocate_resources(_NCA, ai_regulatory_sandbox).
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57').
must_cooperate(_NCA, other_authorities).
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_57').
prohibited_affect(other_regulatory_sandbox).
provenance(prohibited_affect/1, 'celex:32024R1689/oj#art_57').
must_provide_controlled_environment(ai_regulatory_sandbox).
provenance(must_provide_controlled_environment/1, 'celex:32024R1689/oj#art_57').
must_foster_innovation(ai_regulatory_sandbox).
provenance(must_foster_innovation/1, 'celex:32024R1689/oj#art_57').
must_facilitate_development(ai_regulatory_sandbox).
provenance(must_facilitate_development/1, 'celex:32024R1689/oj#art_57').
must_provide_guidance(_NCA, ai_regulatory_sandbox).
provenance(must_provide_guidance/2, 'celex:32024R1689/oj#art_57').
must_provide_supervision(_NCA, ai_regulatory_sandbox).
provenance(must_provide_supervision/2, 'celex:32024R1689/oj#art_57').
must_provide_support(_NCA, ai_regulatory_sandbox).
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_57').
must_provide_guidance(_NCA, provider).
must_provide_written_proof(_NCA, provider).
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
must_provide_exit_report(_NCA, provider).
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
permitted_access_exit_report(_Commission).
provenance(permitted_access_exit_report/1, 'celex:32024R1689/oj#art_57').
permitted_access_exit_report(_Board).
objective_improving_legal_certainty.
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
objective_sharing_best_practices.
provenance(objective_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
objective_fostering_innovation_and_competitiveness.
provenance(objective_fostering_innovation_and_competitiveness/1, 'celex:32024R1689/oj#art_57').
objective_evidence_based_regulatory_learning.
provenance(objective_evidence_based_regulatory_learning/1, 'celex:32024R1689/oj#art_57').
objective_facilitating_market_access.
provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').
must_associate(_NCA, data_protection_authority).
provenance(must_associate/2, 'celex:32024R1689/oj#art_57').
prohibited_affect_supervisory_powers(other_sandboxes).
provenance(prohibited_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
must_ensure_mitigation(_NCA, significant_risk).
provenance(must_ensure_mitigation/2, 'celex:32024R1689/oj#art_57').
must_have_power_to_suspend(_NCA).
provenance(must_have_power_to_suspend/1, 'celex:32024R1689/oj#art_57').
must_inform(_NCA, ai_office).
provenance(must_inform/2, 'celex:32024R1689/oj#art_57').
must_remain_liable(provider).
provenance(must_remain_liable/1, 'celex:32024R1689/oj#art_57').
prohibited_administrative_fine(_Authority).
provenance(prohibited_administrative_fine/1, 'celex:32024R1689/oj#art_57').
must_facilitate_cross_border_cooperation(ai_regulatory_sandbox).
provenance(must_facilitate_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
must_coordinate(_NCA, board).
provenance(must_coordinate/2, 'celex:32024R1689/oj#art_57').
must_make_public(ai_office, sandbox_list).
provenance(must_make_public/2, 'celex:32024R1689/oj#art_57').
must_submit_annual_report(_NCA, ai_office).
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_57').
must_submit_annual_report(_NCA, board).
must_make_available_public(annual_report).
provenance(must_make_available_public/1, 'celex:32024R1689/oj#art_57').
must_develop(commission, sandbox_interface).
provenance(must_develop/2, 'celex:32024R1689/oj#art_57').
must_coordinate(commission, _NCA).
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_58 ====
declared(implementing_act/1, 'implementing act specifying arrangements for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(required_common_principles/1, 'common principles on eligibility, procedures and terms', 'celex:32024R1689/oj#art_58').
declared(required_open_access/1, 'open to any applying or prospective provider', 'celex:32024R1689/oj#art_58').
declared(required_transparent_fair_criteria/1, 'eligibility and selection criteria are transparent and fair', 'celex:32024R1689/oj#art_58').
declared(required_inform_applicants_within_three_months/1, 'national competent authorities inform applicants within three months', 'celex:32024R1689/oj#art_58').
declared(required_broad_equal_access/1, 'broad and equal access, keeping up with demand', 'celex:32024R1689/oj#art_58').
declared(required_partnership_applications/1, 'providers may submit applications in partnership with deployers and other third parties', 'celex:32024R1689/oj#art_58').
declared(required_flexibility_for_nca/1, 'flexibility for national competent authorities to establish and operate sandboxes', 'celex:32024R1689/oj#art_58').
declared(required_free_of_charge_for_smes/1, 'access free of charge for SMEs, including start‑ups', 'celex:32024R1689/oj#art_58').
declared(required_facilitate_compliance/1, 'facilitate providers to comply with conformity assessment obligations and voluntary codes of conduct', 'celex:32024R1689/oj#art_58').
declared(required_facilitate_involvement_of_actors/1, 'facilitate involvement of notified bodies, standardisation organisations, SMEs, innovators, testing facilities, etc.', 'celex:32024R1689/oj#art_58').
declared(required_simple_intelligible_procedures/1, 'procedures are simple, easily intelligible and clearly communicated', 'celex:32024R1689/oj#art_58').
declared(required_mutual_recognition/1, 'participation is mutually and uniformly recognised across the Union', 'celex:32024R1689/oj#art_58').
declared(required_limited_participation_period/1, 'participation limited to a period appropriate to the complexity and scale of the project', 'celex:32024R1689/oj#art_58').
declared(required_extension_by_nca/1, 'period may be extended by the national competent authority', 'celex:32024R1689/oj#art_58').
declared(required_facilitate_development_of_tools/1, 'facilitate development of tools and infrastructure for testing, benchmarking, assessing and explaining AI systems', 'celex:32024R1689/oj#art_58').
declared(must_adopt/2, 'Commission shall adopt implementing acts', 'celex:32024R1689/oj#art_58').
declared(must_direct/2, 'Sandbox shall direct prospective providers to pre‑deployment and value‑adding services', 'celex:32024R1689/oj#art_58').
declared(must_agree/2, 'National competent authority shall agree terms and conditions of testing', 'celex:32024R1689/oj#art_58').
declared(must_cooperate/2, 'National competent authority shall cooperate with other national competent authorities', 'celex:32024R1689/oj#art_58').
must_adopt(commission, implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(must_adopt/2, 'celex:32024R1689/oj#art_58').
implementing_act(ai_regulatory_sandbox_arrangements).
provenance(implementing_act/1, 'celex:32024R1689/oj#art_58').
required_common_principles(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_common_principles/1, 'celex:32024R1689/oj#art_58').
required_open_access(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_open_access/1, 'celex:32024R1689/oj#art_58').
required_transparent_fair_criteria(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_transparent_fair_criteria/1, 'celex:32024R1689/oj#art_58').
required_inform_applicants_within_three_months(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_inform_applicants_within_three_months/1, 'celex:32024R1689/oj#art_58').
required_broad_equal_access(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
required_partnership_applications(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_partnership_applications/1, 'celex:32024R1689/oj#art_58').
required_flexibility_for_nca(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_flexibility_for_nca/1, 'celex:32024R1689/oj#art_58').
required_free_of_charge_for_smes(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58').
required_facilitate_compliance(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_facilitate_compliance/1, 'celex:32024R1689/oj#art_58').
required_facilitate_involvement_of_actors(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_facilitate_involvement_of_actors/1, 'celex:32024R1689/oj#art_58').
required_simple_intelligible_procedures(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_simple_intelligible_procedures/1, 'celex:32024R1689/oj#art_58').
required_mutual_recognition(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_mutual_recognition/1, 'celex:32024R1689/oj#art_58').
required_limited_participation_period(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_limited_participation_period/1, 'celex:32024R1689/oj#art_58').
required_extension_by_nca(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_extension_by_nca/1, 'celex:32024R1689/oj#art_58').
required_facilitate_development_of_tools(implementing_act(ai_regulatory_sandbox_arrangements)).
provenance(required_facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
must_direct(ai_regulatory_sandbox, direction(pre_deployment_and_value_adding_services)).
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
must_agree(national_competent_authority, testing_in_real_world_conditions).
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').
must_cooperate(national_competent_authority, other_national_competent_authority).
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(must_process_personal_data_in_sandbox/2, 'obligation to process personal data in AI regulatory sandbox', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'area of substantial public interest for AI system development', 'celex:32024R1689/oj#art_59').
declared(necessary_for_requirements/1, 'personal data necessary for complying with specific regulatory requirements', 'celex:32024R1689/oj#art_59').
declared(not_fulfillable_by_non_personal/1, 'requirements cannot be met by anonymised, synthetic or non‑personal data', 'celex:32024R1689/oj#art_59').
declared(monitoring_mechanism_exists/1, 'effective monitoring mechanisms to identify high risks', 'celex:32024R1689/oj#art_59').
declared(response_mechanism_exists/1, 'response mechanisms to promptly mitigate identified risks', 'celex:32024R1689/oj#art_59').
declared(isolated_environment/1, 'functionally separate, isolated and protected processing environment', 'celex:32024R1689/oj#art_59').
declared(authorised_access/1, 'only authorised persons have access to the data', 'celex:32024R1689/oj#art_59').
declared(sharing_allowed/1, 'further sharing of originally collected data only in accordance with Union data protection law', 'celex:32024R1689/oj#art_59').
declared(not_shared_outside/1, 'personal data created in the sandbox cannot be shared outside the sandbox', 'celex:32024R1689/oj#art_59').
declared(no_decisions_affecting_subjects/1, 'processing does not lead to measures or decisions affecting data subjects nor affect their rights', 'celex:32024R1689/oj#art_59').
declared(protected_by_measures/1, 'personal data protected by appropriate technical and organisational measures', 'celex:32024R1689/oj#art_59').
declared(deleted_after_termination/1, 'personal data deleted once sandbox participation has terminated or retention period ends', 'celex:32024R1689/oj#art_59').
declared(logs_kept_duration/1, 'logs of processing kept for the duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(documentation_kept/1, 'complete description of training, testing and validation kept with technical documentation', 'celex:32024R1689/oj#art_59').
declared(summary_published/1, 'short summary of AI project published on competent authority website', 'celex:32024R1689/oj#art_59').
declared(not_sensitive_operational_data/1, 'summary does not cover sensitive operational data related to law‑enforcement activities', 'celex:32024R1689/oj#art_59').
must_process_personal_data_in_sandbox(Actor, PD) :-
    personal_data(PD),
    ai_regulatory_sandbox(_Sandbox),
    provider(Actor),
    ai_system(AS),
    intended_purpose(AS),
    public_interest_area(Area),
    public_interest_area(Area),
    necessary_for_requirements(PD),
    not_fulfillable_by_non_personal(PD),
    monitoring_mechanism_exists(PD),
    response_mechanism_exists(PD),
    isolated_environment(PD),
    authorised_access(PD),
    sharing_allowed(PD),
    not_shared_outside(PD),
    no_decisions_affecting_subjects(PD),
    protected_by_measures(PD),
    deleted_after_termination(PD),
    logs_kept_duration(PD),
    documentation_kept(PD),
    summary_published(PD),
    not_sensitive_operational_data(PD).
provenance(must_process_personal_data_in_sandbox/2, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(prospective_provider/1, 'entity that intends to become a provider of a high‑risk AI system', 'celex:32024R1689/oj#art_60').
conduct_real_world_testing(Actor, high_risk_ai_system) :-
    (provider(Actor) ; prospective_provider(Actor)),
    real_world_testing_plan_submitted(Actor, State),
    authority_approved(Actor, State),
    registration_done(Actor, State),
    established_in_union(Actor),
    data_transfer_safeguarded(Actor),
    duration_within_limit(Actor),
    vulnerable_groups_protected(Actor),
    deployer_informed(Actor),
    informed_consent_obtained(Actor),
    oversight_by_qualified_personnel(Actor),
    decisions_reversible(Actor),
    before_market_placement(Actor, high_risk_ai_system).
must_draw_up(Actor, real_world_testing_plan) :-
    (provider(Actor) ; prospective_provider(Actor)).
must_submit(Actor, submission(real_world_testing_plan, market_surveillance_authority(State))) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_location_state(Actor, State).
authority_approved(Actor, State) :-
    market_surveillance_authority(State),
    approved_testing(Actor, State).
registration_done(Actor, State) :-
    registration_number(Actor, State).
established_in_union(Actor) :-
    provider(Actor) ; prospective_provider(Actor).
data_transfer_safeguarded(Actor) :-
    safeguards_implemented(Actor).
duration_within_limit(Actor) :-
    testing_duration(Actor, months(Duration)),
    ( Duration =< 6
    ; (Duration =< 12, extension_requested(Actor))
    ).
vulnerable_groups_protected(Actor) :-
    protection_measures_for_vulnerable_groups(Actor).
deployer_informed(Actor) :-
    deployer_informed_of_testing(Actor).
informed_consent_obtained(Actor) :-
    subjects_informed_consent(Actor).
oversight_by_qualified_personnel(Actor) :-
    qualified_oversight_provided(Actor).
decisions_reversible(Actor) :-
    decisions_can_be_reversed(Actor).
must_require(Authority, information(Actor)) :-
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)).
must_inspect(Authority, Actor) :-
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)).
must_notify(Authority, suspension_or_termination(Actor)) :-
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)),
    testing_location_state(Actor, State),
    State = Authority.
permitted_withdraw_consent(Subject) :-
    subject(Subject).
provenance(conduct_real_world_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_60').
provenance(must_submit/2, 'celex:32024R1689/oj#art_60').
provenance(authority_approved/2, 'celex:32024R1689/oj#art_60').
provenance(registration_done/2, 'celex:32024R1689/oj#art_60').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguarded/1, 'celex:32024R1689/oj#art_60').
provenance(duration_within_limit/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_groups_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed/1, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_obtained/1, 'celex:32024R1689/oj#art_60').
provenance(oversight_by_qualified_personnel/1, 'celex:32024R1689/oj#art_60').
provenance(decisions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_require/2, 'celex:32024R1689/oj#art_60').
provenance(must_inspect/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_withdraw_consent/1, 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
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
declared(must_obtain_informed_consent/2, 'obligation to obtain freely‑given informed consent from subject', 'celex:32024R1689/oj#art_61').
declared(must_date_and_document_consent/2, 'obligation to date and document the consent', 'celex:32024R1689/oj#art_61').
declared(must_give_copy_of_consent/2, 'obligation to give a copy of the consent to the subject or its legal representative', 'celex:32024R1689/oj#art_61').
declared(required_information/1, 'information that must be provided to the subject before consent', 'celex:32024R1689/oj#art_61').
declared(prior_to_participation_applies/1, 'condition that consent must be obtained prior to participation', 'celex:32024R1689/oj#art_61').
declared(informed_subject_applies/1, 'condition that the subject has been duly informed with the required information', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(P, consent(S)) :-
    provider(P),
    subject(S),
    prior_to_participation_applies(S),
    informed_subject_applies(S).
must_date_and_document_consent(P, consent(S)) :-
    provider(P),
    subject(S).
must_give_copy_of_consent(P, consent(S)) :-
    provider(P),
    subject(S).
required_information(nature_and_objectives).
required_information(conditions_of_testing).
required_information(rights_and_guarantees).
required_information(arrangements_for_reversal).
required_information(identification_number_and_contact).
prior_to_participation_applies(S) :-
    subject(S).
informed_subject_applies(S) :-
    subject(S),
    required_information(_).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_date_and_document_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_give_copy_of_consent/2, 'celex:32024R1689/oj#art_61').
provenance(required_information/1, 'celex:32024R1689/oj#art_61').
provenance(prior_to_participation_applies/1, 'celex:32024R1689/oj#art_61').
provenance(informed_subject_applies/1, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_62').
declared(smes/1, 'small and medium‑sized enterprise', 'celex:32024R1689/oj#art_62').
declared(fulfills_eligibility/1, 'SME fulfills eligibility conditions and selection criteria', 'celex:32024R1689/oj#art_62').
declared(priority_access/1, 'priority access to AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(awareness_raising_and_training/1, 'awareness raising and training activities', 'celex:32024R1689/oj#art_62').
declared(communication_channels/1, 'communication channels with SMEs and other stakeholders', 'celex:32024R1689/oj#art_62').
declared(new_communication_channels/1, 'new communication channels', 'celex:32024R1689/oj#art_62').
declared(participation_in_standardisation/1, 'participation in standardisation development process', 'celex:32024R1689/oj#art_62').
declared(fee_setting_conformity_assessment/1, 'fees for conformity assessment', 'celex:32024R1689/oj#art_62').
declared(reduced_fee/2, 'reduced fee proportionate to size, market size and other indicators', 'celex:32024R1689/oj#art_62').
declared(standardised_templates/1, 'standardised templates for areas covered by the regulation', 'celex:32024R1689/oj#art_62').
declared(information_platform/1, 'single information platform', 'celex:32024R1689/oj#art_62').
declared(communication_campaigns/1, 'communication campaigns to raise awareness about obligations', 'celex:32024R1689/oj#art_62').
declared(convergence_best_practices_public_procurement/1, 'convergence of best practices in public procurement procedures', 'celex:32024R1689/oj#art_62').
must_provide(MS, priority_access(SME)) :-
    member_state(MS),
    smes(SME),
    fulfills_eligibility(SME).
must_organise(MS, awareness_raising_and_training(SME)) :-
    member_state(MS),
    smes(SME).
must_utilise(MS, communication_channels(SME)) :-
    member_state(MS),
    smes(SME).
must_establish(MS, new_communication_channels(SME)) :-
    member_state(MS),
    smes(SME).
must_facilitate(MS, participation_in_standardisation(SME)) :-
    member_state(MS),
    smes(SME).
must_take_into_account(Authority, fee_setting_conformity_assessment(SME)) :-
    member_state(Authority),
    smes(SME),
    reduced_fee(SME, proportionate).
must_provide(AIOffice, standardised_templates) :-
    ai_office(AIOffice).
must_develop_and_maintain(AIOffice, information_platform) :-
    ai_office(AIOffice).
must_organise(AIOffice, communication_campaigns) :-
    ai_office(AIOffice).
must_evaluate_and_promote(AIOffice, convergence_best_practices_public_procurement) :-
    ai_office(AIOffice).
provenance(must_provide/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise/2, 'celex:32024R1689/oj#art_62').
provenance(must_establish/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_and_maintain/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_and_promote/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise as defined in the Commission Recommendation', 'celex:32003H0361/oj').
declared(partner_enterprise/2, 'partner enterprise relationship', 'celex:32003H0361/oj').
declared(linked_enterprise/2, 'linked enterprise relationship', 'celex:32003H0361/oj').
declared(permitted_simplified_quality_management_compliance/1, 'permission for a microenterprise to comply with the quality‑management system in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(must_develop/2, 'obligation to develop something', 'celex:32024R1689/oj#art_63').
declared(prohibited_exempting_operators/1, 'prohibition of interpreting the provision as exempting operators from other requirements', 'celex:32024R1689/oj#art_63').
partner_enterprise(_,_) :- false.
linked_enterprise(_,_) :- false.
permitted_simplified_quality_management_compliance(M) :-
    microenterprise(M),
    \+ partner_enterprise(M,_),
    \+ linked_enterprise(M,_).
must_develop(commission, guidelines(quality_management_system_simplified)).
prohibited_exempting_operators(art_63_par_1).
provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_enterprise/2, 'celex:32024R1689/oj#art_63').
provenance(linked_enterprise/2, 'celex:32024R1689/oj#art_63').
provenance(permitted_simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exempting_operators/1, 'celex:32024R1689/oj#art_63').
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
declared(must_develop/2, 'obligation for the Commission to develop Union expertise and capabilities in AI', 'celex:32024R1689/oj#art_64').
declared(must_facilitate/2, 'obligation for Member States to facilitate tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop(commission, expertise_and_capabilities(union, ai)).
must_facilitate(member_state, tasks_entrusted_to_ai_office).
provenance(must_develop/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(required_board/1, 'European Artificial Intelligence Board is established', 'celex:32024R1689/oj#art_65').
declared(representative/1, 'Member State representative on the Board', 'celex:32024R1689/oj#art_65').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_65').
declared(designated_representative/2, 'Representative designated by a Member State', 'celex:32024R1689/oj#art_65').
declared(relevant_competences/1, 'Representative has relevant competences and powers', 'celex:32024R1689/oj#art_65').
declared(contact_point/1, 'Representative acts as single contact point', 'celex:32024R1689/oj#art_65').
declared(empowered_for_coordination/1, 'Representative empowered to facilitate consistency and coordination', 'celex:32024R1689/oj#art_65').
declared(must_designate/2, 'Member State must designate a representative for a period', 'celex:32024R1689/oj#art_65').
declared(must_ensure/2, 'Member State must ensure attributes of its representative', 'celex:32024R1689/oj#art_65').
declared(must_adopt/2, 'Board must adopt its rules of procedure by two‑thirds majority', 'celex:32024R1689/oj#art_65').
declared(must_establish/2, 'Board must establish standing sub‑groups', 'celex:32024R1689/oj#art_65').
declared(must_safeguard/2, 'Board must safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_65').
declared(must_appoint_chair/2, 'Board must be chaired by a Member State representative', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'AI Office must provide secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(must_convene_meetings/2, 'AI Office must convene Board meetings upon request of the Chair', 'celex:32024R1689/oj#art_65').
declared(must_prepare_agenda/2, 'AI Office must prepare the Board agenda in accordance with its tasks', 'celex:32024R1689/oj#art_65').
required_board(board).
must_designate(MemberState, representative(Representative, period(years(3), renewable_once))) :-
    member_state(MemberState),
    representative(Representative),
    designated_representative(MemberState, Representative).
must_ensure(MemberState, representative_has_relevant_competences(Representative)) :-
    designated_representative(MemberState, Representative),
    relevant_competences(Representative).
must_ensure(MemberState, representative_is_contact_point(Representative)) :-
    designated_representative(MemberState, Representative),
    contact_point(Representative).
must_ensure(MemberState, representative_empowered_for_coordination(Representative)) :-
    designated_representative(MemberState, Representative),
    empowered_for_coordination(Representative).
must_adopt(Board, rules_of_procedure(majority(two_thirds))) :-
    required_board(Board).
must_establish(Board, standing_sub_group(market_surveillance)) :-
    required_board(Board).
must_establish(Board, standing_sub_group(notifying_authorities)) :-
    required_board(Board).
must_safeguard(Board, objectivity) :-
    required_board(Board).
must_safeguard(Board, impartiality) :-
    required_board(Board).
must_appoint_chair(Board, Representative) :-
    required_board(Board),
    designated_representative(_, Representative).
must_provide_secretariat(AIOffice, Board) :-
    ai_office(AIOffice),
    required_board(Board).
must_convene_meetings(AIOffice, Board) :-
    ai_office(AIOffice),
    required_board(Board).
must_prepare_agenda(AIOffice, Board) :-
    ai_office(AIOffice),
    required_board(Board).
provenance(required_board/1, 'celex:32024R1689/oj#art_65').
provenance(representative/1, 'celex:32024R1689/oj#art_65').
provenance(member_state/1, 'celex:32024R1689/oj#art_65').
provenance(designated_representative/2, 'celex:32024R1689/oj#art_65').
provenance(relevant_competences/1, 'celex:32024R1689/oj#art_65').
provenance(contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_for_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_65').
provenance(must_appoint_chair/2, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'Board of the AI Regulation', 'celex:32024R1689/oj#art_66').
board(board).
must_advise(board, commission) :-
    board(board).
must_assist(board, member_state) :-
    board(board).
permitted_contribute_to_coordination(board) :-
    board(board).
permitted_collect_and_share_expertise(board) :-
    board(board).
permitted_provide_advice_implementation(board) :-
    board(board).
permitted_contribute_to_harmonisation(board) :-
    board(board).
permitted_issue_recommendations_and_opinions(board) :-
    board(board).
permitted_support_ai_literacy(board) :-
    board(board).
permitted_facilitate_development_of_common_criteria(board) :-
    board(board).
permitted_cooperate_with_union_institutions(board) :-
    board(board).
permitted_contribute_to_international_cooperation(board) :-
    board(board).
permitted_assist_expertise_development(board) :-
    board(board).
permitted_assist_ai_office_sandboxes(board) :-
    board(board).
permitted_contribute_to_guidance_documents(board) :-
    board(board).
permitted_advise_commission_international(board) :-
    board(board).
permitted_provide_opinions_qualified_alerts(board) :-
    board(board).
permitted_receive_opinions(board) :-
    board(board).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise/2, 'celex:32024R1689/oj#art_66').
provenance(must_assist/2, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_advice_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_facilitate_development_of_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_with_union_institutions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_advise_commission_international/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_opinions_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_receive_opinions/1, 'celex:32024R1689/oj#art_66').
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
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_67 ====
declared(required_advisory_forum/1, 'advisory forum must be established', 'celex:32024R1689/oj#art_67').
declared(required_balanced_membership/1, 'membership must represent a balanced selection of stakeholders', 'celex:32024R1689/oj#art_67').
declared(required_term_of_office/1, 'term of office for members shall be two years, extendable up to four years', 'celex:32024R1689/oj#art_67').
declared(required_meetings/1, 'advisory forum shall hold meetings at least twice a year', 'celex:32024R1689/oj#art_67').
declared(must_appoint/2, 'Commission shall appoint the members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_be_member/2, 'specified entities shall be permanent members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_draw_up_rules_of_procedure/2, 'advisory forum shall draw up its rules of procedure', 'celex:32024R1689/oj#art_67').
declared(must_elect/2, 'advisory forum shall elect two co‑chairs from among its members', 'celex:32024R1689/oj#art_67').
declared(must_prepare/2, 'advisory forum shall prepare an annual report on its activities', 'celex:32024R1689/oj#art_67').
declared(must_make_publicly_available/2, 'the annual report shall be made publicly available', 'celex:32024R1689/oj#art_67').
declared(permitted_invite/1, 'advisory forum may invite experts and other stakeholders to its meetings', 'celex:32024R1689/oj#art_67').
declared(permitted_opinion_preparation/1, 'advisory forum may prepare opinions at the request of the Board or the Commission', 'celex:32024R1689/oj#art_67').
declared(permitted_recommendation_preparation/1, 'advisory forum may prepare recommendations at the request of the Board or the Commission', 'celex:32024R1689/oj#art_67').
declared(permitted_written_contribution_preparation/1, 'advisory forum may prepare written contributions at the request of the Board or the Commission', 'celex:32024R1689/oj#art_67').
declared(permitted_sub_group/1, 'advisory forum may establish standing or temporary sub‑groups', 'celex:32024R1689/oj#art_67').
required_advisory_forum(advisory_forum).
required_balanced_membership(advisory_forum).
required_term_of_office(advisory_forum).
required_meetings(advisory_forum).
must_appoint(commission, members_of(advisory_forum)).
must_be_member(fundamental_rights_agency, advisory_forum).
must_be_member(enisa, advisory_forum).
must_be_member(cen, advisory_forum).
must_be_member(cenelec, advisory_forum).
must_be_member(etsi, advisory_forum).
must_draw_up_rules_of_procedure(advisory_forum, rules_of_procedure).
must_elect(advisory_forum, co_chairs(2)).
must_prepare(advisory_forum, annual_report).
must_make_publicly_available(annual_report, public).
permitted_invite(expert).
permitted_opinion_preparation(opinion).
permitted_recommendation_preparation(recommendation).
permitted_written_contribution_preparation(written_contribution).
permitted_sub_group(sub_group).
provenance(required_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office/1, 'celex:32024R1689/oj#art_67').
provenance(required_meetings/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(must_be_member/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_opinion_preparation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_recommendation_preparation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_written_contribution_preparation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_sub_group/1, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(must_make_provisions/2, 'obligation of the Commission to adopt an implementing act establishing the scientific panel', 'celex:32024R1689/oj#art_68').
declared(selected_by_commission/1, 'expert chosen by the Commission for the scientific panel', 'celex:32024R1689/oj#art_68').
declared(required_expertise_in_ai/1, 'expert must have up‑to‑date scientific or technical expertise in the field of AI', 'celex:32024R1689/oj#art_68').
declared(required_independence_from_provider/1, 'expert must be independent from any provider of AI systems or general‑purpose AI models', 'celex:32024R1689/oj#art_68').
declared(required_diligent_objectivity/1, 'expert must be able to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(must_determine_number_of_experts/2, 'Commission shall determine the number of experts on the scientific panel', 'celex:32024R1689/oj#art_68').
declared(must_ensure_fair_gender_geographical_representation/2, 'Commission shall ensure fair gender and geographical representation on the scientific panel', 'celex:32024R1689/oj#art_68').
declared(must_advise_and_support/2, 'scientific panel shall advise and support the AI Office', 'celex:32024R1689/oj#art_68').
declared(must_alert_ai_office_of_possible_systemic_risks/1, 'panel shall alert the AI Office of possible systemic risks at Union level of general‑purpose AI models', 'celex:32024R1689/oj#art_68').
declared(must_contribute_to_development_of_tools_and_methodologies/1, 'panel shall contribute to development of tools and methodologies for evaluating capabilities of general‑purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk/1, 'panel shall provide advice on the classification of general‑purpose AI models with systemic risk', 'celex:32024R1689/oj#art_68').
declared(must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems/1, 'panel shall provide advice on the classification of various general‑purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(must_contribute_to_development_of_tools_and_templates/1, 'panel shall contribute to the development of tools and templates', 'celex:32024R1689/oj#art_68').
declared(must_support_market_surveillance_authorities/1, 'panel shall support market surveillance authorities at their request', 'celex:32024R1689/oj#art_68').
declared(must_support_cross_border_market_surveillance/1, 'panel shall support cross‑border market surveillance activities', 'celex:32024R1689/oj#art_68').
declared(must_support_union_safeguard_procedure/1, 'panel shall support the AI Office in the Union safeguard procedure', 'celex:32024R1689/oj#art_68').
declared(must_perform_with_impartiality_and_objectivity/1, 'experts shall perform their tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(must_ensure_confidentiality/1, 'experts shall ensure confidentiality of information and data obtained', 'celex:32024R1689/oj#art_68').
declared(must_not_seek_or_take_instructions/1, 'experts shall neither seek nor take instructions from anyone', 'celex:32024R1689/oj#art_68').
declared(must_draw_up_declaration_of_interests/1, 'each expert shall draw up a declaration of interests', 'celex:32024R1689/oj#art_68').
declared(must_make_publicly_available/1, 'declaration of interests shall be made publicly available', 'celex:32024R1689/oj#art_68').
declared(must_establish_systems_and_procedures/2, 'AI Office shall establish systems and procedures to manage and prevent conflicts of interest', 'celex:32024R1689/oj#art_68').
declared(must_include_provisions/2, 'implementing act shall include provisions on conditions, procedures and arrangements for the scientific panel', 'celex:32024R1689/oj#art_68').
must_make_provisions(commission, scientific_panel_establishment).
selected_by_commission(Expert) :-
    expert(Expert).
required_expertise_in_ai(Expert) :-
    selected_by_commission(Expert).
required_independence_from_provider(Expert) :-
    selected_by_commission(Expert).
required_diligent_objectivity(Expert) :-
    selected_by_commission(Expert).
must_determine_number_of_experts(commission, scientific_panel).
must_ensure_fair_gender_geographical_representation(commission, scientific_panel).
must_advise_and_support(scientific_panel, ai_office).
must_alert_ai_office_of_possible_systemic_risks(scientific_panel).
must_contribute_to_development_of_tools_and_methodologies(scientific_panel).
must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk(scientific_panel).
must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems(scientific_panel).
must_contribute_to_development_of_tools_and_templates(scientific_panel).
must_support_market_surveillance_authorities(scientific_panel).
must_support_cross_border_market_surveillance(scientific_panel).
must_support_union_safeguard_procedure(scientific_panel).
must_perform_with_impartiality_and_objectivity(Expert) :-
    selected_by_commission(Expert).
must_ensure_confidentiality(Expert) :-
    selected_by_commission(Expert).
must_not_seek_or_take_instructions(Expert) :-
    selected_by_commission(Expert).
must_draw_up_declaration_of_interests(Expert) :-
    selected_by_commission(Expert).
must_make_publicly_available(declaration_of_interests(Expert)) :-
    must_draw_up_declaration_of_interests(Expert).
must_establish_systems_and_procedures(ai_office, conflict_of_interest_management).
must_include_provisions(implementing_act, scientific_panel_alerts_and_assistance).
provenance(must_make_provisions/2, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(required_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(required_independence_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(required_diligent_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number_of_experts/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_gender_geographical_representation/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_alert_ai_office_of_possible_systemic_risks/1, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_to_development_of_tools_and_methodologies/1, 'celex:32024R1689/oj#art_68').
provenance(must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems/1, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_to_development_of_tools_and_templates/1, 'celex:32024R1689/oj#art_68').
provenance(must_support_market_surveillance_authorities/1, 'celex:32024R1689/oj#art_68').
provenance(must_support_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(must_support_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(must_perform_with_impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_or_take_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_make_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems_and_procedures/2, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_69').
declared(expert_of_scientific_panel/1, 'Expert belonging to the scientific panel', 'celex:32024R1689/oj#art_69').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_69').
declared(implementing_act/1, 'Act implementing the regulation', 'celex:32024R1689/oj#art_69').
declared(objective/1, 'Objective taken into account', 'celex:32024R1689/oj#art_69').
permitted_call_upon_experts(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).
must_pay_fees(MemberState, fees_for_expert_advice(Expert)) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).
required_fee_structure(ImplementingAct) :-
    implementing_act(ImplementingAct),
    objective(adequate_implementation),
    objective(cost_effectiveness),
    objective(effective_access_to_experts).
must_facilitate_access(Commission, access_to_experts(MemberState)) :-
    commission(Commission),
    member_state(MemberState).
must_ensure_efficient_organisation(Commission, support_activities) :-
    commission(Commission).
provenance(permitted_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(required_fee_structure/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state_applies/1, 'Member State', 'celex:32024R1689/oj#art_70').
declared(must_establish_or_designate/2, 'establish or designate authority', 'celex:32024R1689/oj#art_70').
declared(must_exercise_powers/2, 'exercise powers with specified quality', 'celex:32024R1689/oj#art_70').
declared(must_communicate_identity_and_tasks/2, 'communicate identity and tasks to the Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_publicly_available/2, 'make information publicly available', 'celex:32024R1689/oj#art_70').
declared(must_designate_single_point_of_contact/2, 'designate a market surveillance authority as single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_notify/2, 'notify the Commission of the single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_ensure_resources/2, 'ensure adequate resources for national competent authorities', 'celex:32024R1689/oj#art_70').
declared(must_assess_and_update_competence/2, 'assess and update competence and resource requirements annually', 'celex:32024R1689/oj#art_70').
declared(must_take_appropriate_measures/2, 'take appropriate measures for cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_act/2, 'act in accordance with confidentiality obligations or as competent authority', 'celex:32024R1689/oj#art_70').
declared(must_report/2, 'report resources status to the Commission periodically', 'celex:32024R1689/oj#art_70').
declared(must_transmit/2, 'transmit information to the Board', 'celex:32024R1689/oj#art_70').
declared(must_facilitate/2, 'facilitate exchange of experience', 'celex:32024R1689/oj#art_70').
declared(permitted_provide_guidance_and_advice/1, 'provide guidance and advice', 'celex:32024R1689/oj#art_70').
must_establish_or_designate(MS, notifying_authority) :-
    member_state_applies(MS).
must_establish_or_designate(MS, market_surveillance_authority) :-
    member_state_applies(MS).
must_exercise_powers(Authority, independently) :-
    national_competent_authority(Authority).
must_exercise_powers(Authority, impartially) :-
    national_competent_authority(Authority).
must_exercise_powers(Authority, without_bias) :-
    national_competent_authority(Authority).
must_communicate_identity_and_tasks(MS, commission) :-
    member_state_applies(MS).
must_make_publicly_available(MS, public_information(contact_information, by(date(2025,8,2)))) :-
    member_state_applies(MS).
must_designate_single_point_of_contact(MS, market_surveillance_authority) :-
    member_state_applies(MS).
must_notify(MS, notification(single_point_of_contact_identity)) :-
    member_state_applies(MS).
must_ensure_resources(MS, resources(national_competent_authority)) :-
    member_state_applies(MS).
must_assess_and_update_competence(MS, annual) :-
    member_state_applies(MS).
must_take_appropriate_measures(Authority, cybersecurity) :-
    national_competent_authority(Authority).
must_act(Authority, confidentiality_obligations) :-
    national_competent_authority(Authority).
must_report(MS, report(resources_status, by(date(2025,8,2)), periodic(years(2)))) :-
    member_state_applies(MS).
must_transmit(commission, information(board, resources_status)).
must_facilitate(commission, exchange_of_experience(national_competent_authorities)).
permitted_provide_guidance_and_advice(Authority) :-
    national_competent_authority(Authority).
must_act(european_data_protection_supervisor, competent_authority(supervision)).
provenance(member_state_applies/1, 'celex:32024R1689/oj#art_70').
provenance(must_establish_or_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_exercise_powers/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity_and_tasks/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update_competence/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_70').
provenance(must_act/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_provide_guidance_and_advice/1, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(public_authority/1, 'public authority, agency or body', 'art_71').
declared(acts_on_behalf_of/2, 'acts on behalf of', 'art_71').
declared(provider_consent_public/1, 'provider has given consent for public access', 'art_71').
must_set_up_and_maintain(commission, eu_database).
must_consult(commission, relevant_experts).
must_consult(commission, board).
must_enter_data(Actor, eu_database) :-
    provider(Actor).
must_enter_data(Actor, eu_database) :-
    authorised_representative(Actor).
must_enter_data(Actor, eu_database) :-
    deployer(Actor),
    (   public_authority(Actor)
    ;   acts_on_behalf_of(Actor, Authority),
        public_authority(Authority)
    ).
must_make_accessible_publicly(eu_database_info_art_49) :-
    \+ exception_section(eu_database_info_art_49).
must_make_accessible_only_to(eu_database_info_art_60, market_surveillance_authority).
must_make_accessible_only_to(eu_database_info_art_60, commission) :-
    \+ provider_consent_public(_).
required_personal_data(eu_database).
required_responsible_contact_details(eu_database).
must_be_controller(commission, eu_database).
must_provide_support(commission, provider).
must_provide_support(commission, prospective_provider).
must_provide_support(commission, deployer).
must_comply(eu_database, accessibility_requirements).
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(must_make_accessible_publicly/1, 'celex:32024R1689/oj#art_71').
provenance(must_make_accessible_only_to/2, 'celex:32024R1689/oj#art_71').
provenance(required_personal_data/1, 'celex:32024R1689/oj#art_71').
provenance(required_responsible_contact_details/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
provenance(must_comply/2, 'celex:32024R1689/oj#art_71').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_72').
declared(relevant_data/1, 'data relevant for post‑market monitoring', 'celex:32024R1689/oj#art_72').
declared(existing_system_and_plan/1, 'existing post‑market monitoring system and plan', 'celex:32024R1689/oj#art_72').
declared(equivalent_protection/1, 'equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_72').
must_establish(Provider, post_market_monitoring_system) :-
    provider(Provider),
    high_risk_ai_system(_).
must_document(Provider, post_market_monitoring_system) :-
    provider(Provider),
    high_risk_ai_system(_).
must_collect(Provider, Data) :-
    provider(Provider),
    high_risk_ai_system(_),
    relevant_data(Data),
    \+ prohibited_sensitive_operational_data(Data).
must_document(Provider, Data) :-
    provider(Provider),
    high_risk_ai_system(_),
    relevant_data(Data),
    \+ prohibited_sensitive_operational_data(Data).
must_analyse(Provider, Data) :-
    provider(Provider),
    high_risk_ai_system(_),
    relevant_data(Data),
    \+ prohibited_sensitive_operational_data(Data).
must_base_on(Provider, post_market_monitoring_plan) :-
    provider(Provider),
    high_risk_ai_system(_).
prohibited_sensitive_operational_data(Data) :-
    sensitive_operational_data(Data),
    deployer(Deployer),
    law_enforcement_authority(Deployer).
must_adopt(Commission, implementing_act_template(deadline(date(2026,2,2)))) :-
    commission(Commission).
permitted_integrate(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    existing_system_and_plan(System),
    equivalent_protection(System).
high_risk_ai_system(_).
relevant_data(_).
existing_system_and_plan(_).
equivalent_protection(_).
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect/2, 'celex:32024R1689/oj#art_72').
provenance(must_analyse/2, 'celex:32024R1689/oj#art_72').
provenance(must_base_on/2, 'celex:32024R1689/oj#art_72').
provenance(prohibited_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integrate/2, 'celex:32024R1689/oj#art_72').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_72').
provenance(relevant_data/1, 'celex:32024R1689/oj#art_72').
provenance(existing_system_and_plan/1, 'celex:32024R1689/oj#art_72').
provenance(equivalent_protection/1, 'celex:32024R1689/oj#art_72').
provenance(commission/1, 'celex:32024R1689/oj#art_72').
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
declared(required_high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_73').
declared(serious_incident/1, 'serious incident', 'celex:32024R1689/oj#art_73').
declared(causal_link_established/2, 'causal link between AI system and serious incident established', 'celex:32024R1689/oj#art_73').
declared(awareness/2, 'provider or deployer becomes aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(widespread_infringement/1, 'widespread infringement', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'death of a person', 'celex:32024R1689/oj#art_73').
declared(incident_occurred_in/2, 'incident occurred in the territory of a Member State', 'celex:32024R1689/oj#art_73').
declared(initial_report/2, 'initial incomplete report', 'celex:32024R1689/oj#art_73').
declared(complete_report/2, 'complete report', 'celex:32024R1689/oj#art_73').
declared(investigation/2, 'investigation of serious incident', 'celex:32024R1689/oj#art_73').
declared(cooperate_with/2, 'cooperate with competent authority', 'celex:32024R1689/oj#art_73').
declared(alter_before_informing/2, 'alter AI system before informing competent authority', 'celex:32024R1689/oj#art_73').
declared(guidance_developed_by/2, 'guidance developed by Commission', 'celex:32024R1689/oj#art_73').
declared(guidance_deadline/2, 'deadline for guidance', 'celex:32024R1689/oj#art_73').
declared(appropriate_measures_taken/2, 'appropriate measures taken by market surveillance authority', 'celex:32024R1689/oj#art_73').
declared(measures_deadline/2, 'deadline for taking measures', 'celex:32024R1689/oj#art_73').
declared(follow_notification_procedures/1, 'follow notification procedures', 'celex:32024R1689/oj#art_73').
must_report(Provider, report(serious_incident(Incident), Authority)) :-
    provider(Provider),
    required_high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    incident_occurred_in(Incident, Authority).
report_immediately(Provider, serious_incident(Incident)) :-
    provider(Provider),
    causal_link_established(Provider, Incident).
report_deadline(Provider, deadline(days(15), Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    awareness(Provider, Incident),
    causal_link_established(Provider, Incident).
report_immediately(Provider, serious_incident(Incident)) :-
    provider(Provider),
    (   widespread_infringement(Incident)
    ;   serious_incident(Incident)  
    ).
report_deadline(Provider, deadline(days(2), Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    awareness(Provider, Incident).
report_immediately(Provider, serious_incident(Incident)) :-
    provider(Provider),
    death_of_person(Incident).
report_deadline(Provider, deadline(days(10), Incident)) :-
    provider(Provider),
    serious_incident(Incident),
    awareness(Provider, Incident).
permitted_initial_report(Provider) :-
    provider(Provider).
permitted_complete_report(Provider) :-
    provider(Provider).
must_investigate(Provider, serious_incident(Incident)) :-
    provider(Provider),
    serious_incident(Incident).
must_cooperate(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority).
must_not_alter_before_informing(Provider, serious_incident(Incident)) :-
    provider(Provider),
    serious_incident(Incident).
must_inform(MarketAuthority, national_public_authorities) :-
    market_surveillance_authority(MarketAuthority).
must_develop_guidance(Commission, guidance) :-
    ai_office(Commission).
guidance_deadline(guidance, date(2025,8,2)).
must_take_measures(MarketAuthority, serious_incident(Incident)) :-
    market_surveillance_authority(MarketAuthority),
    serious_incident(Incident).
measures_deadline(Incident, days(7)) :-
    serious_incident(Incident).
follow_notification_procedures(MarketAuthority) :-
    market_surveillance_authority(MarketAuthority).
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
provenance(report_immediately/2, 'celex:32024R1689/oj#art_73').
provenance(report_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_initial_report/1, 'celex:32024R1689/oj#art_73').
provenance(permitted_complete_report/1, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_before_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(guidance_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(measures_deadline/2, 'celex:32024R1689/oj#art_73').
provenance(follow_notification_procedures/1, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_4').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_5').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_7').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_8').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_9').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_10').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_11').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(must_report/2, 'obligation of market surveillance authority to report annually', 'celex:32024R1689/oj#art_74').
declared(must_grant_access/2, 'obligation of provider to grant access to market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(permitted_exercise_remotely/1, 'permission for market surveillance authority to exercise powers remotely', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/2, 'obligation of member state to facilitate coordination', 'celex:32024R1689/oj#art_74').
declared(permitted_propose_joint_activity/1, 'permission for market surveillance authority or Commission to propose joint activities', 'celex:32024R1689/oj#art_74').
declared(must_designate_market_surveillance_authority/2, 'obligation of member state to designate a market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(member_state/1, 'EU member state', 'celex:32024R1689/oj#art_74').
declared(other_national_authority/1, 'other relevant national authority', 'celex:32024R1689/oj#art_74').
must_report(Authority, annual_report(commission, competition_authorities, info(market_surveillance))) :-
    market_surveillance_authority(Authority).
must_report(Authority, annual_report(commission, prohibited_practices_and_measures)) :-
    market_surveillance_authority(Authority).
must_grant_access(Provider, full_access(documentation_and_data_sets, market_surveillance_authority)) :-
    provider(Provider).
must_grant_access(Provider, source_code(conditions([necessary_to_assess_conformity, testing_exhausted]))) :-
    provider(Provider).
permitted_exercise_remotely(Authority) :-
    market_surveillance_authority(Authority).
must_facilitate_coordination(MemberState, coordination(market_surveillance_authorities, other_national_authority)) :-
    member_state(MemberState),
    other_national_authority(_).
permitted_propose_joint_activity(Authority) :-
    market_surveillance_authority(Authority).
permitted_propose_joint_activity(commission).
must_designate_market_surveillance_authority(MemberState, Authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority).
provenance(must_report/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_remotely/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_propose_joint_activity/1, 'celex:32024R1689/oj#art_74').
provenance(must_designate_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(member_state/1, 'celex:32024R1689/oj#art_74').
provenance(other_national_authority/1, 'celex:32024R1689/oj#art_74').
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
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_75 ====
declared(has_power/2, 'authority to monitor and supervise compliance', 'celex:32024R1689/oj#art_75').
declared(same_provider/2, 'provider develops both model and system', 'celex:32024R1689/oj#art_75').
declared(usable_directly_by_deployer/1, 'system can be used directly by deployers', 'celex:32024R1689/oj#art_75').
declared(high_risk_purpose/1, 'purpose classified as high‑risk', 'celex:32024R1689/oj#art_75').
declared(has_sufficient_reason/2, 'authority has sufficient reason to consider non‑compliance', 'celex:32024R1689/oj#art_75').
declared(unable_to_access_information/2, 'authority cannot access information despite appropriate efforts', 'celex:32024R1689/oj#art_75').
declared(relevant_information/2, 'information relevant to establish non‑compliance', 'celex:32024R1689/oj#art_75').
declared(obtained_information/2, 'information obtained by authority', 'celex:32024R1689/oj#art_75').
has_power(ai_office, monitor_and_supervise(S)) :-
    general_purpose_ai_system(S),
    provider(P),
    same_provider(P, S).
must_cooperate(MSA, ai_office) :-
    market_surveillance_authority(MSA),
    has_sufficient_reason(MSA, S),
    general_purpose_ai_system(S),
    usable_directly_by_deployer(S),
    high_risk_purpose(_Purpose).
must_inform(MSA, board) :-
    market_surveillance_authority(MSA),
    has_sufficient_reason(MSA, S),
    general_purpose_ai_system(S),
    usable_directly_by_deployer(S),
    high_risk_purpose(_Purpose).
must_inform(MSA, other_market_surveillance_authorities) :-
    market_surveillance_authority(MSA),
    has_sufficient_reason(MSA, S),
    general_purpose_ai_system(S),
    usable_directly_by_deployer(S),
    high_risk_purpose(_Purpose).
permitted_submit_reasoned_request(request(MSA, ai_office, S)) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    unable_to_access_information(MSA, S).
request_submitted(MSA, ai_office, S) :-
    permitted_submit_reasoned_request(request(MSA, ai_office, S)).
must_supply(ai_office, information(Info, MSA)) :-
    request_submitted(MSA, ai_office, S),
    relevant_information(Info, S),
    within(days(30)).
must_safeguard(MSA, confidentiality(Info)) :-
    obtained_information(MSA, Info).
provenance(has_power/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/1, 'celex:32024R1689/oj#art_75').
provenance(request_submitted/3, 'celex:32024R1689/oj#art_75').
provenance(must_supply/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_have_competences_and_powers/2, 'market surveillance authority must have competences and powers', 'celex:32024R1689/oj#art_76').
declared(must_ensure/2, 'market surveillance authority must ensure testing in real world conditions is in accordance', 'celex:32024R1689/oj#art_76').
declared(testing_in_real_world_conditions/1, 'testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(supervised_in_sandbox/1, 'AI system supervised within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(must_verify/2, 'market surveillance authority must verify compliance with article 60', 'celex:32024R1689/oj#art_76').
declared(permitted_allow_testing_by_provider/1, 'market surveillance authority may allow testing by provider in derogation', 'celex:32024R1689/oj#art_76').
declared(informed_of_serious_incident/2, 'market surveillance authority has been informed of a serious incident', 'celex:32024R1689/oj#art_76').
declared(permitted_suspend_or_terminate_testing/1, 'market surveillance authority may suspend or terminate testing', 'celex:32024R1689/oj#art_76').
declared(permitted_require_modification/1, 'market surveillance authority may require modification of testing', 'celex:32024R1689/oj#art_76').
declared(decision_taken_par_3/1, 'market surveillance authority has taken a decision referred to in article 76 paragraph 3', 'celex:32024R1689/oj#art_76').
declared(objection_issued_pnt_b/1, 'market surveillance authority has issued an objection referred to in article 60 paragraph 4 unp 1 pnt b', 'celex:32024R1689/oj#art_76').
declared(must_indicate_ground_and_challenge_procedure/1, 'decision or objection shall indicate grounds and how to challenge', 'celex:32024R1689/oj#art_76').
declared(testing_in_real_world_conditions_in_member_state/1, 'member state where AI system has been tested in accordance with the testing plan', 'celex:32024R1689/oj#art_76').
declared(must_communicate_ground_to_other_msa/2, 'communicate grounds to other market surveillance authorities', 'celex:32024R1689/oj#art_76').
must_have_competences_and_powers(MSA, testing_in_real_world_conditions) :-
    market_surveillance_authority(MSA).
must_ensure(MSA, testing_in_real_world_conditions_in_accordance) :-
    market_surveillance_authority(MSA).
must_verify(MSA, compliance_with_art_60) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(T),
    supervised_in_sandbox(T).
permitted_allow_testing_by_provider(MSA) :-
    market_surveillance_authority(MSA).
informed_of_serious_incident(MSA, Provider) :-
    market_surveillance_authority(MSA),
    provider(Provider).
permitted_suspend_or_terminate_testing(MSA) :-
    informed_of_serious_incident(MSA, _Provider).
permitted_require_modification(MSA) :-
    informed_of_serious_incident(MSA, _Provider).
decision_taken_par_3(MSA) :-
    market_surveillance_authority(MSA).
objection_issued_pnt_b(MSA) :-
    market_surveillance_authority(MSA).
must_indicate_ground_and_challenge_procedure(MSA) :-
    market_surveillance_authority(MSA),
    ( decision_taken_par_3(MSA) ; objection_issued_pnt_b(MSA) ).
must_communicate_ground_to_other_msa(MSA, OtherMSA) :-
    market_surveillance_authority(MSA),
    decision_taken_par_3(MSA),
    testing_in_real_world_conditions_in_member_state(OtherMSA).
provenance(must_have_competences_and_powers/2, 'celex:32024R1689/oj#art_76').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_allow_testing_by_provider/1, 'celex:32024R1689/oj#art_76').
provenance(informed_of_serious_incident/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_or_terminate_testing/1, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/1, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_ground_and_challenge_procedure/1, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_ground_to_other_msa/2, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(public_authority_or_body/1, 'national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights', 'celex:32024R1689/oj#art_77').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_77').
request_and_access(Authority, Documentation) :-
    public_authority_or_body(Authority).
provenance(request_and_access/2, 'celex:32024R1689/oj#art_77').
must_inform(Authority, MSA) :-
    public_authority_or_body(Authority),
    market_surveillance_authority(MSA).
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
must_identify_public_authorities(MemberState, identification(deadline(date(2024,11,2)))) :-
    member_state(MemberState).
provenance(must_identify_public_authorities/2, 'celex:32024R1689/oj#art_77').
must_make_list_publicly_available(MemberState, list_publication) :-
    member_state(MemberState).
provenance(must_make_list_publicly_available/2, 'celex:32024R1689/oj#art_77').
must_notify_list(MemberState, commission) :-
    member_state(MemberState).
provenance(must_notify_list/2, 'celex:32024R1689/oj#art_77').
must_notify_list(MemberState, other_member_states) :-
    member_state(MemberState).
must_keep_list_up_to_date(MemberState, list) :-
    member_state(MemberState).
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_77').
reasoned_request_testing(Authority, MSA) :-
    public_authority_or_body(Authority),
    market_surveillance_authority(MSA).
provenance(reasoned_request_testing/2, 'celex:32024R1689/oj#art_77').
must_organise_testing(MSA, testing(high_risk_ai_system, involvement(Authority), within_reasonable_time)) :-
    market_surveillance_authority(MSA),
    public_authority_or_body(Authority).
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
must_treat_confidentially(Authority, Information) :-
    public_authority_or_body(Authority).
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'obligation to respect confidentiality of information and data obtained in tasks', 'celex:32024R1689/oj#art_78').
declared(must_request_only_necessary_data/2, 'obligation to request only data strictly necessary for risk assessment and exercise of powers', 'celex:32024R1689/oj#art_78').
declared(must_put_in_place_cybersecurity_measures/1, 'obligation to put in place adequate and effective cybersecurity measures', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/2, 'obligation to delete data as soon as it is no longer needed for the purpose for which it was obtained', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure/1, 'prohibition of disclosure of confidential information without prior consultation', 'celex:32024R1689/oj#art_78').
declared(permitted_disclosure/1, 'exception allowing disclosure after prior consultation of originating authority and deployer', 'celex:32024R1689/oj#art_78').
declared(permitted_exchange_confidential_information/1, 'permission for the Commission and Member States to exchange confidential information with third‑country authorities under confidentiality arrangements', 'celex:32024R1689/oj#art_78').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_78').
declared(other_involved_person/1, 'any other natural or legal person involved in the application of the Regulation', 'celex:32024R1689/oj#art_78').
declared(authority_involved_in_application/1, 'authority involved in the application of the Regulation', 'celex:32024R1689/oj#art_78').
declared(confidential_exchange/1, 'confidential information exchanged between national competent authorities or with the Commission', 'celex:32024R1689/oj#art_78').
declared(high_risk_ai_system_used_by_law_enforcement/1, 'high‑risk AI systems used by law‑enforcement, border‑control, immigration or asylum authorities', 'celex:32024R1689/oj#art_78').
declared(prior_consultation/2, 'prior consultation of the originating national competent authority and the deployer', 'celex:32024R1689/oj#art_78').
declared(confidentiality_arrangement/1, 'bilateral or multilateral confidentiality arrangement with a third‑country authority', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    commission(Actor).
must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    market_surveillance_authority(Actor).
must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    notified_body(Actor).
must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    other_involved_person(Actor).
must_request_only_necessary_data(Authority, data) :-
    authority_involved_in_application(Authority).
must_put_in_place_cybersecurity_measures(Authority) :-
    authority_involved_in_application(Authority).
must_delete_data_when_no_longer_needed(Authority, data) :-
    authority_involved_in_application(Authority).
prohibited_disclosure(Info) :-
    confidential_exchange(Info),
    high_risk_ai_system_used_by_law_enforcement(Info),
    \+ permitted_disclosure(Info).
permitted_disclosure(Info) :-
    prior_consultation(OriginatingAuthority, Deployer).
permitted_exchange_confidential_information(Info) :-
    commission(_Actor),
    confidentiality_arrangement(_ThirdCountry).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_put_in_place_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_information/1, 'celex:32024R1689/oj#art_78').
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
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_79 ====
declared(must_evaluate/2, 'market surveillance authority shall carry out evaluation of AI system', 'celex:32024R1689/oj#art_79').
declared(must_inform/2, 'market surveillance authority shall inform and cooperate with relevant national public authorities', 'celex:32024R1689/oj#art_79').
declared(must_require/2, 'market surveillance authority shall require operator to take corrective actions, withdraw or recall AI system', 'celex:32024R1689/oj#art_79').
declared(must_notify/2, 'market surveillance authority shall notify the Commission and other Member States', 'celex:32024R1689/oj#art_79').
declared(must_ensure/2, 'operator shall ensure corrective action is taken; market surveillance authority shall ensure restrictive measures are taken', 'celex:32024R1689/oj#art_79').
declared(must_take_provisional_measures/2, 'market surveillance authority shall take provisional measures when operator fails to act', 'celex:32024R1689/oj#art_79').
declared(operator_fails_to_act/2, 'operator has not taken adequate corrective action within the prescribed period', 'celex:32024R1689/oj#art_79').
declared(corrective_action_taken/2, 'operator has taken adequate corrective action for AI system', 'celex:32024R1689/oj#art_79').
declared(objection/1, 'objection raised by a market surveillance authority or the Commission', 'celex:32024R1689/oj#art_79').
declared(measure_deemed_justified/1, 'provisional measure is deemed justified after no objection within three months', 'celex:32024R1689/oj#art_79').
declared(objection_within/2, 'objection raised within a given period', 'celex:32024R1689/oj#art_79').
declared(risks_to_fundamental_rights_identified/1, 'risk to fundamental rights has been identified for AI system', 'celex:32024R1689/oj#art_79').
declared(relevant_national_public_authority/1, 'national public authority or body referred to in art 77 par 1', 'celex:32024R1689/oj#art_77/par_1').
declared(initiating_authority/1, 'market surveillance authority that initiated the procedure', 'celex:32024R1689/oj#art_79').
declared(other_msa/1, 'market surveillance authority other than the initiating one', 'celex:32024R1689/oj#art_79').
declared(measure/1, 'provisional measure taken by a market surveillance authority', 'celex:32024R1689/oj#art_79').
must_evaluate(Authority, AI) :-
    market_surveillance_authority(Authority),
    ai_system(AI),
    sufficient_reason_to_consider_risk(Authority, AI).
must_inform(Authority, cooperate_with(NationalPublicAuthority)) :-
    market_surveillance_authority(Authority),
    risks_to_fundamental_rights_identified(AI),
    relevant_national_public_authority(NationalPublicAuthority).
must_require(Authority, corrective_measures(Operator, period(days(15)))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(AI),
    sufficient_reason_to_consider_risk(Authority, AI).
must_inform(Authority, notified_body) :-
    market_surveillance_authority(Authority).
must_notify(Authority, commission_and_member_states) :-
    market_surveillance_authority(Authority).
must_ensure(Operator, corrective_action_taken) :-
    operator(Operator).
must_take_provisional_measures(Authority, AI) :-
    market_surveillance_authority(Authority),
    operator_fails_to_act(Operator, AI).
must_notify(Authority, commission_and_member_states) :-
    market_surveillance_authority(Authority),
    operator_fails_to_act(Operator, AI).
must_inform(Authority, measures_and_info) :-
    other_msa(Authority).
measure_deemed_justified(Measure) :-
    measure(Measure),
    \+ objection_within(period(months(3)), Measure).
must_ensure(Authority, restrictive_measures_taken) :-
    market_surveillance_authority(Authority).
operator_fails_to_act(Operator, AI) :-
    operator(Operator),
    ai_system(AI),
    \+ corrective_action_taken(Operator, AI).
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').
provenance(must_require/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(operator_fails_to_act/2, 'celex:32024R1689/oj#art_79').
provenance(measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').

% ==== celex:32024R1689/oj#art_80 ====
declared(sufficient_reason_to_consider_high_risk/2, 'authority has sufficient reason to consider system high‑risk', 'celex:32024R1689/oj#art_80').
declared(non_high_risk_classified_by_provider_applies/1, 'system classified by provider as non‑high‑risk', 'celex:32024R1689/oj#art_80').
declared(evaluation_finds_high_risk/2, 'authority finds system to be high‑risk', 'celex:32024R1689/oj#art_80').
declared(relevant_provider_of/2, 'provider responsible for the AI system', 'celex:32024R1689/oj#art_80').
declared(must_carry_out_evaluation/2, 'authority must carry out evaluation of system', 'celex:32024R1689/oj#art_80').
declared(must_require/2, 'authority must require provider to take action', 'celex:32024R1689/oj#art_80').
declared(must_inform/2, 'authority must inform Commission and other Member States', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/2, 'use of system is not limited to national territory', 'celex:32024R1689/oj#art_80').
declared(must_ensure/2, 'provider must ensure compliance or corrective action', 'celex:32024R1689/oj#art_80').
declared(not_compliant_within_period/2, 'provider has not complied within the prescribed period', 'celex:32024R1689/oj#art_80').
declared(must_face_fine/2, 'provider must face fine', 'celex:32024R1689/oj#art_80').
declared(made_available_on_union_market/2, 'provider has made system available on the Union market', 'celex:32024R1689/oj#art_80').
declared(misclassification_to_circumvent_requirements/3, 'authority finds misclassification intended to circumvent requirements', 'celex:32024R1689/oj#art_80').
declared(permitted_appropriate_checks/1, 'authority may perform appropriate checks', 'celex:32024R1689/oj#art_80').
must_carry_out_evaluation(Authority, System) :-
    market_surveillance_authority(Authority),
    sufficient_reason_to_consider_high_risk(Authority, System),
    non_high_risk_classified_by_provider_applies(System),
    ai_system(System).
must_require(Authority, take_all_necessary_actions(Provider, System)) :-
    market_surveillance_authority(Authority),
    evaluation_finds_high_risk(Authority, System),
    provider(Provider),
    relevant_provider_of(Provider, System).
must_require(Authority, take_appropriate_corrective_action(Provider, System)) :-
    market_surveillance_authority(Authority),
    evaluation_finds_high_risk(Authority, System),
    provider(Provider),
    relevant_provider_of(Provider, System).
must_inform(Authority, inform_commission_and_member_states(System)) :-
    market_surveillance_authority(Authority),
    use_not_restricted_to_national_territory(Authority, System).
must_ensure(Provider, bring_into_compliance(System)) :-
    provider(Provider),
    ai_system(System),
    relevant_provider_of(Provider, System).
must_face_fine(Provider, fine(System)) :-
    provider(Provider),
    ai_system(System),
    relevant_provider_of(Provider, System),
    not_compliant_within_period(Provider, System).
must_ensure(Provider, appropriate_corrective_action(System)) :-
    provider(Provider),
    ai_system(System),
    made_available_on_union_market(Provider, System).
must_face_fine(Provider, fine(System)) :-
    provider(Provider),
    ai_system(System),
    misclassification_to_circumvent_requirements(_Authority, Provider, System).
permitted_appropriate_checks(Authority) :-
    market_surveillance_authority(Authority).
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_80').
provenance(must_face_fine/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_appropriate_checks/1, 'celex:32024R1689/oj#art_80').
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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

% ==== celex:32024R1689/oj#art_81 ====
declared(must_enter_into_consultation/2, 'Commission must consult with the market surveillance authority of the relevant Member State and the operator(s)', 'celex:32024R1689/oj#art_81').
declared(must_evaluate_national_measure/2, 'Commission must evaluate the national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide_justified/2, 'Commission must decide whether the national measure is justified', 'celex:32024R1689/oj#art_81').
declared(must_notify_decision/2, 'Commission must notify its decision to the market surveillance authority of the Member State concerned', 'celex:32024R1689/oj#art_81').
declared(must_inform_all_authorities/1, 'Commission must inform all other market surveillance authorities of its decision', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member State must take appropriate restrictive measures concerning the AI system', 'celex:32024R1689/oj#art_81').
declared(must_inform_commission/2, 'Member State must inform the Commission accordingly', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_measure/2, 'Member State must withdraw the national measure', 'celex:32024R1689/oj#art_81').
declared(must_apply_procedure/2, 'Commission must apply the procedure provided for in the referenced article', 'celex:32024R1689/oj#art_81').
must_enter_into_consultation(commission, consultation(MSA, Operator)) :-
    market_surveillance_authority(MSA),
    operator(Operator).
must_evaluate_national_measure(commission, measure(Measure)) :-
    
    true.
must_decide_justified(commission, decision(Measure, justified)) :-
    must_evaluate_national_measure(commission, measure(Measure)).
must_notify_decision(commission, notification(Measure, MSA)) :-
    must_decide_justified(commission, decision(Measure, justified)),
    market_surveillance_authority(MSA).
must_inform_all_authorities(commission) :-
    must_notify_decision(commission, _).
must_take_restrictive_measures(MSA, ai_system(System)) :-
    market_surveillance_authority(MSA),
    ai_system(System).
must_inform_commission(MSA, info(restrictive_measures_taken)) :-
    must_take_restrictive_measures(MSA, _).
must_withdraw_measure(MSA, measure(Measure)) :-
    market_surveillance_authority(MSA),
    
    true.
must_inform_commission(MSA, info(measure_withdrawn)) :-
    must_withdraw_measure(MSA, _).
must_apply_procedure(commission, procedure(art_11)) :-
    
    true.
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justified/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
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
declared(finds_risk/2, 'market surveillance authority finds risk in system', 'celex:32024R1689/oj#art_82').
declared(relevant_operator/2, 'operator relevant to AI system', 'celex:32024R1689/oj#art_82').
declared(timeline_prescribed_by/2, 'timeline prescribed by market surveillance authority', 'celex:32024R1689/oj#art_82').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_82').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_82').
declared(finding_details/1, 'details of the finding', 'celex:32024R1689/oj#art_82').
declared(member_states/1, 'Member States concerned', 'celex:32024R1689/oj#art_82').
declared(operators/1, 'relevant operators', 'celex:32024R1689/oj#art_82').
declared(national_measures/1, 'national measures taken', 'celex:32024R1689/oj#art_82').
declared(evaluation_result/1, 'result of evaluation of national measures', 'celex:32024R1689/oj#art_82').
declared(decision/1, 'Commission decision', 'celex:32024R1689/oj#art_82').
declared(recipients/1, 'recipients of the decision', 'celex:32024R1689/oj#art_82').
must_require(MSA, take_all_appropriate_measures(Op, Sys)) :-
    market_surveillance_authority(MSA),
    finds_risk(MSA, Sys),
    operator(Op),
    relevant_operator(Op, Sys).
must_ensure(Actor, corrective_action_taken(Sys)) :-
    ( provider(Actor) ; relevant_operator(Actor, Sys) ),
    making_available_on_market(Sys),
    timeline_prescribed_by(Actor, MSA),
    market_surveillance_authority(MSA).
must_inform(MemberState, finding_information(Commission, Details)) :-
    member_state(MemberState),
    commission(Commission),
    finding_details(Details),
    member_state(MemberState),
    commission(Commission).
must_consult(Commission, member_states_and_operators(MemberStates, Operators)) :-
    commission(Commission),
    member_states(MemberStates),
    operators(Operators),
    commission(Commission).
must_evaluate(Commission, national_measures(Measures)) :-
    commission(Commission),
    national_measures(Measures),
    commission(Commission).
must_decide(Commission, measure_justified(Justified)) :-
    commission(Commission),
    evaluation_result(Justified),
    commission(Commission).
must_communicate(Commission, decision_communication(Decision, Recipients)) :-
    commission(Commission),
    decision(Decision),
    recipients(Recipients),
    commission(Commission).
provenance(must_require/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(finds_non_compliance/2, 'authority finds a specific type of non‑compliance concerning a provider', 'celex:32024R1689/oj#art_83').
declared(type_applies/1, 'type of non‑compliance listed in article 83', 'celex:32024R1689/oj#art_83').
declared(persists_non_compliance/2, 'non‑compliance persists after initial finding', 'celex:32024R1689/oj#art_83').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_83').
must_require(Authority, Provider) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    finds_non_compliance(Authority, non_compliance(Provider, Type)),
    type_applies(Type).
finds_non_compliance(Authority, non_compliance(Provider, Type)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    type_applies(Type).
type_applies(ce_marking_violation).
type_applies(ce_marking_missing).
type_applies(declaration_missing).
type_applies(declaration_incorrect).
type_applies(registration_missing).
type_applies(no_authorised_representative).
type_applies(technical_documentation_unavailable).
persists_non_compliance(Provider, Type) :-
    finds_non_compliance(_, non_compliance(Provider, Type)).
must_prohibit(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(_Provider, _Type).
must_recall(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(_Provider, _Type).
must_withdraw(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    persists_non_compliance(_Provider, _Type).
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(finds_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(type_applies/1, 'celex:32024R1689/oj#art_83').
provenance(persists_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_prohibit/2, 'celex:32024R1689/oj#art_83').
provenance(must_recall/2, 'celex:32024R1689/oj#art_83').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_83').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_84').
declared(board/1, 'Board of the Union AI testing support structures', 'celex:32024R1689/oj#art_84').
declared(union_ai_testing_support_structure/1, 'Union AI testing support structure', 'celex:32024R1689/oj#art_84').
declared(independent_technical_scientific_advice/1, 'Independent technical or scientific advice', 'celex:32024R1689/oj#art_84').
declared(request/2, 'Request for advice by an actor', 'celex:32024R1689/oj#art_84').
must_designate(Commission, union_ai_testing_support_structure) :-
    commission(Commission).
must_provide(Structure, independent_technical_scientific_advice) :-
    union_ai_testing_support_structure(Structure),
    ( board(Requester)
    ; commission(Requester)
    ; market_surveillance_authority(Requester)
    ),
    request(Requester, independent_technical_scientific_advice).
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(natural_or_legal_person_applies/1, 'natural or legal person', 'celex:32024R1689/oj#art_85').
declared(grounds_to_consider_infringement_applies/1, 'has grounds to consider infringement', 'celex:32024R1689/oj#art_85').
declared(permitted_complaint/1, 'allowed to submit complaint', 'celex:32024R1689/oj#art_85').
declared(must_take_into_account/2, 'authority must take complaint into account', 'celex:32024R1689/oj#art_85').
declared(must_handle/2, 'authority must handle complaint according to procedures', 'celex:32024R1689/oj#art_85').
permitted_complaint(P) :-
    natural_or_legal_person_applies(P),
    grounds_to_consider_infringement_applies(P).
must_take_into_account(A, _C) :-
    market_surveillance_authority(A).
must_handle(A, _C) :-
    market_surveillance_authority(A).
provenance(permitted_complaint/1, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(affected_person/1, 'person subject to a decision taken by a deployer', 'celex:32024R1689/oj#art_86').
declared(decision_taken_by_deployer/3, 'decision taken by a deployer based on the output of an AI system', 'celex:32024R1689/oj#art_86').
declared(high_risk_ai_system/1, 'high‑risk AI system listed in annex III', 'celex:32024R1689/oj#art_86').
declared(adverse_impact/1, 'adverse impact on health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(exception_from_law/2, 'exception or restriction from Union or national law', 'celex:32024R1689/oj#art_86').
declared(union_law_provides_explanation/1, 'right to explanation already provided under Union law', 'celex:32024R1689/oj#art_86').
must_provide_explanation(Deployer, explanation(Person)) :-
    deployer(Deployer),
    affected_person(Person),
    decision_taken_by_deployer(Person, Deployer, System),
    high_risk_ai_system(System),
    adverse_impact(Person),
    \+ exception_from_law(Deployer, System),
    \+ union_law_provides_explanation(Person).
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(reporting_of_infringements_applies/1, 'article applies to reporting of infringements', 'celex:32024R1689/oj#art_87').
declared(protection_of_reporting_persons_applies/1, 'article applies to protection of persons reporting infringements', 'celex:32024R1689/oj#art_87').
reporting_of_infringements_applies('celex:32024R1689/oj#art_87').
protection_of_reporting_persons_applies('celex:32024R1689/oj#art_87').
provenance(reporting_of_infringements_applies/1, 'celex:32024R1689/oj#art_87').
provenance(protection_of_reporting_persons_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(provider_of_general_purpose_ai_model/1, 'provider that develops or places a general‑purpose AI model', 'celex:32024R1689/oj#art_88').
declared(must_supervise/2, 'Commission must supervise providers of general‑purpose AI models', 'celex:32024R1689/oj#art_88').
declared(must_enforce/2, 'Commission must enforce obligations of providers of general‑purpose AI models', 'celex:32024R1689/oj#art_88').
declared(must_entrust/2, 'Commission must entrust implementation of supervisory tasks to the AI Office', 'celex:32024R1689/oj#art_88').
declared(permitted_request/2, 'Market surveillance authorities may request the Commission to exercise its powers', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate/1, 'Condition that a request is necessary and proportionate', 'celex:32024R1689/oj#art_88').
provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(M),
    general_purpose_ai_model(M).
must_supervise(commission, provider_of_general_purpose_ai_model(P)) :-
    provider_of_general_purpose_ai_model(P).
must_enforce(commission, provider_of_general_purpose_ai_model(P)) :-
    provider_of_general_purpose_ai_model(P).
must_entrust(commission, ai_office).
permitted_request(market_surveillance_authority, commission) :-
    necessary_and_proportionate(request_to_exercise_powers).
necessary_and_proportionate(request_to_exercise_powers).
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_88').
provenance(must_supervise/2, 'celex:32024R1689/oj#art_88').
provenance(must_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request/2, 'celex:32024R1689/oj#art_88').
provenance(necessary_and_proportionate/1, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(permitted_monitoring_actions/1, 'AI Office may take necessary actions to monitor implementation and compliance', 'celex:32024R1689/oj#art_89').
declared(permitted_lodge_complaint/1, 'Downstream provider may lodge a complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(required_complaint_content/1, 'Complaint must be duly reasoned and contain required elements', 'celex:32024R1689/oj#art_89').
declared(includes_point_of_contact/1, 'Complaint includes point of contact of the provider concerned', 'celex:32024R1689/oj#art_89').
declared(includes_description/1, 'Complaint includes description of facts, provisions and reason', 'celex:32024R1689/oj#art_89').
declared(includes_other_information/1, 'Complaint includes any other relevant information', 'celex:32024R1689/oj#art_89').
permitted_monitoring_actions(AO) :-
    ai_office(AO),
    ai_office(AO).
permitted_lodge_complaint(DP) :-
    downstream_provider(DP),
    downstream_provider(DP).
required_complaint_content(C) :-
    includes_point_of_contact(C),
    includes_description(C),
    includes_other_information(C).
provenance(permitted_monitoring_actions/1, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(required_complaint_content/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel', 'celex:32024R1689/oj#art_90').
declared(board/1, 'board', 'celex:32024R1689/oj#art_90').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'qualified alert', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_art_51/1, 'meets conditions of art 51', 'celex:32024R1689/oj#art_90').
declared(point_of_contact_provider/2, 'point of contact of provider', 'celex:32024R1689/oj#art_90').
declared(description_facts_and_reasons/1, 'description of facts and reasons', 'celex:32024R1689/oj#art_90').
declared(other_relevant_information/1, 'other relevant information', 'celex:32024R1689/oj#art_90').
permitted_provide_qualified_alert(ScientificPanel, AI_Office) :-
    scientific_panel(ScientificPanel),
    ai_office(AI_Office),
    reason_to_suspect(ScientificPanel, Model),
    general_purpose_ai_model(Model).
reason_to_suspect(_, Model) :-
    concrete_identifiable_risk_at_union_level(Model).
reason_to_suspect(_, Model) :-
    meets_conditions_art_51(Model).
permitted_exercise_powers(Commission, exercise(ai_office, Alert)) :-
    commission(Commission),
    ai_office(AI_Office),
    qualified_alert(Alert),
    must_inform(Commission, board).
must_inform(Commission, board) :-
    commission(Commission),
    board(Board),
    Board = board.
must_inform(ai_office, board_measure(art_91)).
must_inform(ai_office, board_measure(art_92)).
must_inform(ai_office, board_measure(art_93)).
must_inform(ai_office, board_measure(art_94)).
must_provide(scientific_panel, qualified_alert(Alert)) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.
must_include_point_of_contact(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.
must_include_description(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.
must_include_other_information(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ScientificPanel = ScientificPanel.
provenance(permitted_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(must_provide/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_description/2, 'celex:32024R1689/oj#art_90').
provenance(must_include_other_information/2, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(general_purpose_ai_model_provider/1, 'provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_91').
general_purpose_ai_model_provider(P) :-
    provider(P).
declared(request_information/2, 'actor may request information from provider', 'celex:32024R1689/oj#art_91').
request_information(commission, P) :-
    general_purpose_ai_model_provider(P).
declared(must_supply/2, 'obligation to supply requested information', 'celex:32024R1689/oj#art_91').
must_supply(P, information_requested) :-
    general_purpose_ai_model_provider(P).
must_supply(R, information_requested) :-
    authorised_representative(R),
    represents_provider(R, P),
    general_purpose_ai_model_provider(P).
declared(represents_provider/2, 'representative acts on behalf of provider', 'celex:32024R1689/oj#art_91').
represents_provider(R, P) :-
    authorised_representative(R),
    provider(P).
declared(initiate_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_91').
initiate_dialogue(AO, P) :-
    ai_office(AO),
    general_purpose_ai_model_provider(P).
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_91').
provenance(request_information/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply/2, 'celex:32024R1689/oj#art_91').
provenance(represents_provider/2, 'celex:32024R1689/oj#art_91').
provenance(initiate_dialogue/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(independent_expert/1, 'independent expert appointed for evaluation', 'celex:32024R1689/oj#art_92').
declared(provider_of/2, 'provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(represents/2, 'person authorised to represent a provider', 'celex:32024R1689/oj#art_92').
declared(implementing_act/1, 'implementing act adopted by the Commission', 'celex:32024R1689/oj#art_92').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_92').
permitted_conduct_evaluation(conduct_evaluation(AIOffice, Model)) :-
    ai_office(AIOffice),
    general_purpose_ai_model(Model).
permitted_appoint_independent_expert(appoint_independent_expert(Commission, Expert)) :-
    commission(Commission),
    independent_expert(Expert).
must_meet(Expert, criteria(art_68_par_2)) :-
    independent_expert(Expert).
permitted_request_access(request_access(Commission, Model)) :-
    commission(Commission),
    general_purpose_ai_model(Model).
must_state(Commission, access_request_details) :-
    commission(Commission).
must_set(Commission, access_provision_period) :-
    commission(Commission).
must_comply(Commission, fines(art_101)) :-
    commission(Commission).
must_supply_information(Provider, information_requested) :-
    provider_of(Model, Provider),
    general_purpose_ai_model(Model).
must_supply_information(Rep, information_requested) :-
    authorised_representative(Rep),
    represents(Rep, Provider),
    provider_of(Model, Provider),
    general_purpose_ai_model(Model).
must_adopt(Commission, implementing_act(Act)) :-
    commission(Commission),
    implementing_act(Act).
must_adopt_in_accordance(Act, examination_procedure(art_98_par_2)) :-
    implementing_act(Act).
permitted_initiate_structured_dialogue(structured_dialogue(AIOffice, Provider)) :-
    ai_office(AIOffice),
    provider_of(Model, Provider),
    general_purpose_ai_model(Model).
provenance(permitted_conduct_evaluation/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(must_meet/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/1, 'celex:32024R1689/oj#art_92').
provenance(must_state/2, 'celex:32024R1689/oj#art_92').
provenance(must_set/2, 'celex:32024R1689/oj#art_92').
provenance(must_comply/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_in_accordance/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/1, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(required_appropriate_measures/1, 'provider must take appropriate measures to comply with obligations set out in art 53 and art 54', 'celex:32024R1689/oj#art_93').
declared(required_mitigation_measures/1, 'provider must implement mitigation measures where evaluation raised serious systemic risk concerns', 'celex:32024R1689/oj#art_93').
declared(required_market_restriction/1, 'provider must restrict making available on the market, withdraw or recall the model', 'celex:32024R1689/oj#art_93').
declared(permitted_initiate_structured_dialogue/1, 'ai office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_93').
declared(offers_commitments/2, 'provider offers commitments to implement mitigation measures', 'celex:32024R1689/oj#art_93').
declared(permitted_make_commitments_binding/1, 'commission may make commitments binding', 'celex:32024R1689/oj#art_93').
declared(evaluation_concerned/1, 'evaluation has given rise to serious and substantiated concern of a systemic risk at Union level', 'celex:32024R1689/oj#art_93').
required_appropriate_measures(P) :-
    provider(P),
    general_purpose_ai_model(P).
required_mitigation_measures(P) :-
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P),
    evaluation_concerned(P).
required_market_restriction(P) :-
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P).
permitted_initiate_structured_dialogue(ai_office) :-
    provider(P),
    general_purpose_ai_model(P).
offers_commitments(P, commitments) :-
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P).
permitted_make_commitments_binding(commission) :-
    offers_commitments(P, commitments),
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P).
provenance(required_appropriate_measures/1, 'celex:32024R1689/oj#art_93').
provenance(required_mitigation_measures/1, 'celex:32024R1689/oj#art_93').
provenance(required_market_restriction/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/1, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/1, 'celex:32024R1689/oj#art_93').
provenance(evaluation_concerned/1, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(must_have/2, 'obligation for an actor to have a given right or entitlement', 'celex:32024R1689/oj#art_94').
must_have(Provider, procedural_rights) :-
    provider(Provider),
    provides(Provider, System),
    general_purpose_ai_system(System).
provenance(must_have/2, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_95').
declared(organisation/1, 'Organisation representing providers or deployers of AI systems', 'celex:32024R1689/oj#art_95').
must_encourage(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    ai_office(Actor).
must_encourage(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    member_state(Actor).
must_facilitate(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    ai_office(Actor).
must_facilitate(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    member_state(Actor).

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop/2, 'Commission must develop guidelines on the practical implementation of the Regulation', 'celex:32024R1689/oj#art_96').
declared(must_pay_attention/2, 'Commission must pay particular attention to the needs of SMEs, start‑ups, local public authorities and sectors most likely to be affected', 'celex:32024R1689/oj#art_96').
declared(must_take_due_account/2, 'Guidelines shall take due account of the state of the art, harmonised standards and common specifications', 'celex:32024R1689/oj#art_96').
declared(must_update/2, 'Commission shall update previously adopted guidelines when requested by Member States or the AI Office, or on its own initiative', 'celex:32024R1689/oj#art_96').
must_develop(commission,
    guidelines(implementation_of(regulation),
        includes([
            requirements_and_obligations,   
            prohibited_practices,            
            substantial_modification,       
            transparency_obligations,       
            relationship_with_harmonisation_legislation, 
            definition_of_ai_system          
        ]))).
must_pay_attention(commission,
    needs_of([smes_start_ups, local_public_authorities, affected_sectors])).
must_take_due_account(commission,
    guidelines(state_of_the_art, harmonised_standards, common_specifications)).
must_update(commission,
    guidelines(previously_adopted)) :-
    request(member_state);
    request(ai_office);
    initiative(commission).
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_pay_attention/2, 'celex:32024R1689/oj#art_96').
provenance(must_take_due_account/2, 'celex:32024R1689/oj#art_96').
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
declared(permitted_delegated_act_adoption/1, 'Commission may adopt delegated acts', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_report/2, 'Commission must draw up a report on the delegation of power', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts/2, 'Commission must consult experts designated by each Member State before adopting a delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission must notify a delegated act to the European Parliament and the Council', 'celex:32024R1689/oj#art_97').
declared(permitted_revocation_of_delegation/1, 'European Parliament or Council may revoke the delegation of power', 'celex:32024R1689/oj#art_97').
declared(permitted_entry_into_force/1, 'A delegated act may enter into force only if no objection is raised by the European Parliament or the Council', 'celex:32024R1689/oj#art_97').
permitted_delegated_act_adoption(commission).
must_draw_up_report(commission, delegation_of_power_report).
must_consult_experts(commission, delegated_act).
must_notify(commission, notification(delegated_act, european_parliament)).
must_notify(commission, notification(delegated_act, council)).
permitted_revocation_of_delegation(european_parliament).
permitted_revocation_of_delegation(council).
permitted_entry_into_force(DelegatedAct) :-
    no_objection(european_parliament, DelegatedAct),
    no_objection(council, DelegatedAct).
provenance(permitted_delegated_act_adoption/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revocation_of_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(permitted_entry_into_force/1, 'celex:32024R1689/oj#art_97').
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
declared(committee/1, 'committee as defined in EU law', 'celex:32024R1689/oj#art_98').
declared(must_assist/2, 'obligation for a committee to assist the Commission', 'celex:32024R1689/oj#art_98').
must_assist(C, commission) :-
    committee(C).
provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(must_assist/2, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(member_state/1, 'Member State of the EU', 'art_99').
declared(commission/1, 'European Commission', 'art_99').
must_lay_down_rules_on_penalties(M, rules_on_penalties) :-
    member_state(M).
must_take_into_account_sme_interests(M, sme_interests) :-
    member_state(M).
must_ensure_effective_implementation(M, effective_implementation) :-
    member_state(M).
must_take_into_account_commission_guidelines(M, commission_guidelines) :-
    member_state(M),
    commission(C).
must_notify_commission_of_rules(M, penalty_rules) :-
    member_state(M),
    commission(C).
must_notify_commission_of_amendments(M, penalty_rules_amendments) :-
    member_state(M),
    commission(C).
must_report_annual_fines(M, annual_fine_report) :-
    member_state(M).
must_lay_down_rules_on_fines_for_public_authorities(M, public_authority_fines) :-
    member_state(M).
must_apply_procedural_safeguards(M, procedural_safeguards) :-
    member_state(M).
prohibited_non_compliance_with_ai_practices(O) :-
    operator(O).
prohibited_non_compliance_with_operator_obligations(O) :-
    operator(O).
prohibited_non_compliance_with_notified_body_obligations(O) :-
    notified_body(O).
must_impose_fine(A, O) :-
    market_surveillance_authority(A),
    prohibited_non_compliance_with_ai_practices(O).
must_impose_fine(A, O) :-
    market_surveillance_authority(A),
    prohibited_non_compliance_with_operator_obligations(O).
must_impose_fine(A, O) :-
    market_surveillance_authority(A),
    prohibited_non_compliance_with_notified_body_obligations(O).
provenance(must_lay_down_rules_on_penalties/2, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_99').
provenance(must_ensure_effective_implementation/2, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account_commission_guidelines/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_of_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_of_amendments/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_rules_on_fines_for_public_authorities/2, 'celex:32024R1689/oj#art_99').
provenance(must_apply_procedural_safeguards/2, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_ai_practices/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_operator_obligations/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_notified_body_obligations/1, 'celex:32024R1689/oj#art_99').
provenance(must_impose_fine/2, 'celex:32024R1689/oj#art_99').
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
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_5').

% ==== celex:32024R1689/oj#art_100 ====
declared(union_institution_body_agency_applies/1, 'union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(party_concerned_applies/1, 'party concerned in the proceedings', 'celex:32024R1689/oj#art_100').
declared(funds_collected_by_fines_applies/1, 'funds collected by imposition of fines', 'celex:32024R1689/oj#art_100').
declared(notification_due_applies/1, 'annual notification due to the Commission', 'celex:32024R1689/oj#art_100').
declared(required_fine/1, 'administrative fine required for non‑compliance', 'celex:32024R1689/oj#art_100').
declared(permitted_impose_administrative_fine/1, 'permission to impose an administrative fine', 'celex:32024R1689/oj#art_100').
permitted_impose_administrative_fine(impose_administrative_fine(european_data_protection_supervisor, Institution)) :-
    union_institution_body_agency_applies(Institution).
must_give_hearing(european_data_protection_supervisor, Institution) :-
    union_institution_body_agency_applies(Institution).
must_respect_rights_of_defence(european_data_protection_supervisor, Party) :-
    party_concerned_applies(Party).
must_entitle_access_to_file(european_data_protection_supervisor, Party) :-
    party_concerned_applies(Party).
must_contribute_funds_to_general_budget(european_data_protection_supervisor, Funds) :-
    funds_collected_by_fines_applies(Funds).
must_not_affect_effective_operation(european_data_protection_supervisor, Institution) :-
    union_institution_body_agency_applies(Institution).
must_notify(Supervisor, commission) :-
    notification_due_applies(Supervisor).
notification_due_applies(european_data_protection_supervisor).
required_fine(non_compliance_prohibition_art5(eur(1500000))).
required_fine(non_compliance_requirements_other_than_art5(eur(750000))).
provenance(permitted_impose_administrative_fine/1, 'celex:32024R1689/oj#art_100').
provenance(must_give_hearing/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/2, 'celex:32024R1689/oj#art_100').
provenance(must_entitle_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(must_contribute_funds_to_general_budget/2, 'celex:32024R1689/oj#art_100').
provenance(must_not_affect_effective_operation/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').
provenance(notification_due_applies/1, 'celex:32024R1689/oj#art_100').
provenance(required_fine/1, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(provides_general_purpose_ai_model/1, 'provider supplies a general‑purpose AI model', 'celex:32024R1689/oj#art_101').
declared(commission_finds_intentional_or_negligent/2, 'Commission finds provider acted intentionally or negligently', 'celex:32024R1689/oj#art_101').
declared(infringed_provision/2, 'provider infringed a provision of the regulation', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_request/2, 'provider failed to comply with a request for document or information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_measure/2, 'provider failed to comply with a requested measure', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available_model/2, 'provider failed to make available the model for Commission evaluation', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'Commission must communicate its preliminary findings to the provider', 'celex:32024R1689/oj#art_101').
declared(must_give_opportunity_to_be_heard/2, 'Commission must give the provider an opportunity to be heard', 'celex:32024R1689/oj#art_101').
permitted_impose_fine(Commission, Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider),
    commission_finds_intentional_or_negligent(Provider, Reason),
    (   Reason = infringement
    ;   Reason = request_noncompliance
    ;   Reason = measure_noncompliance
    ;   Reason = access_denial
    ).
commission_finds_intentional_or_negligent(Provider, infringement) :-
    infringed_provision(Provider, _).
commission_finds_intentional_or_negligent(Provider, request_noncompliance) :-
    failed_to_comply_request(Provider, _).
commission_finds_intentional_or_negligent(Provider, measure_noncompliance) :-
    failed_to_comply_measure(Provider, _).
commission_finds_intentional_or_negligent(Provider, access_denial) :-
    failed_to_make_available_model(Provider, _).
must_communicate_preliminary_findings(_Commission, Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider).
must_give_opportunity_to_be_heard(_Commission, Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider).
provenance(permitted_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(commission_finds_intentional_or_negligent/2, 'celex:32024R1689/oj#art_101').
provenance(infringed_provision/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_request/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_measure/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_model/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(adopts_detailed_measures_for_security_equipment/1, 'adopts detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems', 'celex:32024R1689/oj#art_102').
declared(must_take_into_account/2, 'obligation to take into account the requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_102').
must_take_into_account(Actor, requirement(chapter_3_section_2)) :-
    national_competent_authority(Actor),
    adopts_detailed_measures_for_security_equipment(Actor).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_102').
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
declared(adopting_delegated_act/1, 'adoption of a delegated act', 'celex:32024R1689/oj#art_103').
declared(required_requirements_chapter_3_section_2/1, 'requirements set out in chapter 3 section 2 must be taken into account when adopting delegated acts concerning safety component AI systems', 'celex:32024R1689/oj#art_103').
required_requirements_chapter_3_section_2(Act) :-
    adopting_delegated_act(Act),
    ai_system(Act),
    safety_component(Act).
provenance(required_requirements_chapter_3_section_2/1, 'celex:32024R1689/oj#art_103').
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
declared(must_take_into_account/2, 'obligation to consider requirements when adopting delegated acts', 'celex:32024R1689/oj#art_104').
declared(safety_component_ai_system/1, 'AI system that is a safety component', 'celex:32024R1689/oj#art_104').
declared(adopting_delegated_act/2, 'entity adopting a delegated act concerning an AI system', 'celex:32024R1689/oj#art_104').
must_take_into_account(Actor, requirement(chapter_3_section_2)) :-
    adopting_delegated_act(Actor, _AI),
    safety_component_ai_system(_AI).
safety_component_ai_system(AI) :-
    ai_system(AI),
    safety_component(AI).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_105 ====
declared(activity_pursuant_to/1, 'activity pursuant to a referenced provision', 'celex:32024R1689/oj#art_105').
declared(adopting_technical_specifications/1, 'adopting technical specifications in accordance with a referenced provision', 'celex:32024R1689/oj#art_105').
declared(adopting_testing_standards/1, 'adopting testing standards in accordance with a referenced provision', 'celex:32024R1689/oj#art_105').
declared(must_take_into_account/2, 'Commission must take into account the specified requirements', 'celex:32024R1689/oj#art_105').
must_take_into_account(Commission, requirements(chapter_3_section_2, S)) :-
    ai_office(Commission),
    safety_component(S),
    activity_pursuant_to('celex:32014L0090/oj#art_8/par_1'),
    adopting_technical_specifications('celex:32014L0090/oj#art_8/par_2'),
    adopting_testing_standards('celex:32014L0090/oj#art_8/par_3').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_5').
references('celex:32024R1689/oj#art_105', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_105', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_106 ====
declared(adopting_delegated_act/1, 'entity adopting delegated act pursuant to a provision', 'celex:32024R1689/oj#art_106').
declared(implementing_act/1, 'entity implementing act pursuant to a provision', 'celex:32024R1689/oj#art_106').
declared(pursuant_to/2, 'actor acts pursuant to the given provision', 'celex:32024R1689/oj#art_106').
must_take_into_account(Actor, requirements_set_out_in(chapter_3_section_2)) :-
    adopting_delegated_act(Actor),
    pursuant_to(Actor, 'celex:32016L0797/oj#art_5/par_1'),
    implementing_act(Actor),
    pursuant_to(Actor, 'celex:32016L0797/oj#art_5/par_11'),
    safety_component(S),
    ai_system(S).
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
declared(delegated_act/1, 'delegated act concerning AI systems', 'celex:32024R1689/oj#art_107').
declared(adopts_delegated_act/2, 'entity adopts a delegated act', 'celex:32024R1689/oj#art_107').
declared(pursuant_to/2, 'act is pursuant to a legal provision', 'celex:32024R1689/oj#art_107').
declared(concerning_ai_system/2, 'act concerns an AI system', 'celex:32024R1689/oj#art_107').
declared(must_take_into_account/2, 'actor must take into account the specified requirements', 'celex:32024R1689/oj#art_107').
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    delegated_act(Act),
    adopts_delegated_act(Actor, Act),
    pursuant_to(Act, art_5_par_3),
    concerning_ai_system(Act, S),
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
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
declared(safety_component_ai_system/1, 'AI system that is a safety component', 'celex:32024R1689/oj#art_108').
declared(act_concerns_ai_system/2, 'act concerns a given AI system', 'celex:32024R1689/oj#art_108').
declared(implementing_act/1, 'implementing act adopted pursuant to the regulation', 'celex:32024R1689/oj#art_108').
declared(delegated_act/1, 'delegated act adopted pursuant to the regulation', 'celex:32024R1689/oj#art_108').
declared(act_concerns_safety_component_ai_system/1, 'act concerns an AI system that is a safety component', 'celex:32024R1689/oj#art_108').
declared(required_requirements_chapter_3_section_2/1, 'act must take into account the requirements set out in chapter 3 section 2', 'celex:32024R1689/oj#art_108').
safety_component_ai_system(S) :-
    ai_system(S),
    safety_component(S).
act_concerns_ai_system(Act, S) :-
    
    
    true.
act_concerns_safety_component_ai_system(Act) :-
    act_concerns_ai_system(Act, S),
    safety_component_ai_system(S).
required_requirements_chapter_3_section_2(Act) :-
    (implementing_act(Act) ; delegated_act(Act)),
    act_concerns_safety_component_ai_system(Act).
provenance(safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(act_concerns_ai_system/2, 'celex:32024R1689/oj#art_108').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_108').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_108').
provenance(act_concerns_safety_component_ai_system/1, 'celex:32024R1689/oj#art_108').
provenance(required_requirements_chapter_3_section_2/1, 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_17/par_1').
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
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').

% ==== celex:32024R1689/oj#art_109 ====
declared(adopting_implementing_act/2, 'actor adopts implementing act', 'celex:32024R1689/oj#art_109').
declared(concerning/2, 'implementing act concerns AI system', 'celex:32024R1689/oj#art_109').
declared(must_take_into_account/2, 'actor must take into account requirements', 'celex:32024R1689/oj#art_109').
must_take_into_account(Actor, requirements(chapter_3, section_2)) :-
    adopting_implementing_act(Actor, _),
    concerning(_, S),
    safety_component(S).
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
amends('celex:32020L1828/oj', 'celex:32024R1689/oj#art_110').
provenance(amends/2, 'celex:32024R1689/oj#art_110').
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
declared(component_of_large_scale_it_system/1, 'AI system component of large‑scale IT system listed in annex 10', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_111').
declared(placed_before/2, 'AI system placed on market or put into service before given date', 'celex:32024R1689/oj#art_111').
declared(significant_design_change/1, 'AI system subject to significant changes in design', 'celex:32024R1689/oj#art_111').
declared(intended_for_public_authorities/1, 'AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
must_comply(P, compliance(S, by(date(2030,12,31)))) :-
    provider(P),
    component_of_large_scale_it_system(S),
    placed_before(S, date(2027,8,2)).
must_comply(O, compliance(S, by(date(2030,8,2)))) :-
    operator(O),
    high_risk_ai_system(S),
    placed_before(S, date(2026,8,2)),
    significant_design_change(S),
    \+ component_of_large_scale_it_system(S).
must_comply(P, compliance(S, by(date(2030,8,2)))) :-
    provider(P),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).
must_comply(D, compliance(S, by(date(2030,8,2)))) :-
    deployer(D),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).
must_comply(P, compliance(M, by(date(2027,8,2)))) :-
    provider(P),
    general_purpose_ai_model(M),
    placed_before(M, date(2025,8,2)).
provenance(must_comply/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess/2, 'Commission must assess the need for amendment of specified lists', 'celex:32024R1689/oj#art_112').
declared(must_submit/2, 'Commission must submit findings or reports', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_and_report/2, 'Commission must evaluate and report on specified topics', 'celex:32024R1689/oj#art_112').
declared(required_report_content/1, 'Reports must contain specific attention items', 'celex:32024R1689/oj#art_112').
declared(must_provide/2, 'Board, Member States and national competent authorities must provide information to the Commission', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account/2, 'Commission must take into account positions and findings of various bodies', 'celex:32024R1689/oj#art_112').
declared(must_develop/2, 'AI Office must develop methodology for risk level evaluation', 'celex:32024R1689/oj#art_112').
declared(required_amendment_consideration/1, 'Amendments must consider sectoral specificities and existing mechanisms', 'celex:32024R1689/oj#art_112').
must_assess(commission,
    amendment_need(annex_3, art_5,
        annual,
        after(entry_into_force),
        until(end_of_delegation_period))).
must_submit(commission,
    findings_of_assessment(to([european_parliament, council]))).
must_evaluate_and_report(commission,
    evaluation(date(2028,8,2), periodic(years(4)),
        topics([area_headings_annex_3,
                transparency_measures_art_50,
                supervision_governance_effectiveness]),
        to([european_parliament, council]))).
must_submit(commission,
    evaluation_review_report(date(2029,8,2), periodic(years(4)),
        includes([enforcement_structure_assessment,
                  union_agency_need_assessment]),
        to([european_parliament, council]),
        public)).
required_report_content(report_par_2,
    attention_to([financial_resources_national_competent_authorities,
                 penalties_state(administrative_fines),
                 adopted_harmonised_standards,
                 number_of_undertakings_and_smes])).
must_evaluate_and_report(commission,
    ai_office_functioning(date(2028,8,2),
        topics([sufficient_powers,
                relevance,
                resource_upgrades]),
        to([european_parliament, council]))).
must_submit(commission,
    ai_office_evaluation_report(to([european_parliament, council]))).
must_submit(commission,
    standardisation_progress_report(date(2028,8,2), periodic(years(4)),
        includes([energy_efficient_general_purpose_ai_models]),
        assess_need([further_measures, binding_measures]),
        to([european_parliament, council]),
        public)).
must_evaluate_and_report(commission,
    voluntary_codes_impact(date(2028,8,2), periodic(years(3)),
        topics([environmental_sustainability]),
        to([european_parliament, council]))).
must_provide(board, information(commission, request, without_undue_delay)).
must_provide(member_state, information(commission, request, without_undue_delay)).
must_provide(national_competent_authority, information(commission, request, without_undue_delay)).
must_take_into_account(commission,
    positions([board, european_parliament, council, other_relevant_bodies],
        for_evaluations(paragraphs([1,2,3,4,5,6,7])))).
must_submit(commission,
    amendment_proposal(if_necessary,
        considerations([technology_developments,
                        health_and_safety_effects,
                        fundamental_rights,
                        information_society_progress]))).
must_develop(ai_office,
    methodology(objective_participative,
        evaluation(risk_levels),
        criteria(articles),
        inclusion_in_lists([annex_3, art_5, art_50]))).
required_amendment_consideration(amendment(regulation),
    sectoral_harmonisation_legislation,
    regulatory_specificities,
    existing_governance_conformity_assessment_enforcement).
must_assess(commission,
    enforcement_assessment(date(2031,8,2),
        includes([first_years_application]),
        to([european_parliament, council, european_economic_and_social_committee]),
        proposal_amendment_if_appropriate)).
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/2, 'celex:32024R1689/oj#art_112').
provenance(required_report_content/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').
provenance(required_amendment_consideration/1, 'celex:32024R1689/oj#art_112').
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
declared(required_entry_into_force/1, 'date when a provision enters into force', 'celex:32024R1689/oj#art_113').
declared(required_application/1, 'date when a provision applies', 'celex:32024R1689/oj#art_113').
declared(required_binding/1, 'regulation is binding in its entirety and directly applicable', 'celex:32024R1689/oj#art_113').
required_entry_into_force(entry(art_113, date(2026,8,2))).
required_application(application(art_113, date(2026,8,2))).
required_application(application('celex:32024R1689/oj#chp_1', date(2025,2,2))).
required_application(application('celex:32024R1689/oj#chp_2', date(2025,2,2))).
required_application(application('celex:32024R1689/oj#chp_3/sec_4', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#chp_5', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#chp_7', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#chp_12', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#art_78', date(2025,8,2))).
required_application(application('celex:32024R1689/oj#art_6/par_1', date(2027,8,2))).
required_application(application('celex:32024R1689/oj', date(2027,8,2))).
required_binding(regulation).
provenance(required_entry_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(required_application/1, 'celex:32024R1689/oj#art_113').
provenance(required_binding/1, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation_applies/1, 'legislation listed in annex I', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation_applies('celex:32006L0042/oj').
union_harmonisation_legislation_applies('celex:31995L0016/oj').
union_harmonisation_legislation_applies('celex:32009L0048/oj').
union_harmonisation_legislation_applies('celex:32013L0053/oj').
union_harmonisation_legislation_applies('celex:31994L0025/oj').
union_harmonisation_legislation_applies('celex:32014L0033/oj').
union_harmonisation_legislation_applies('celex:32014L0031/oj').
union_harmonisation_legislation_applies('celex:32014L0034/oj').
union_harmonisation_legislation_applies('celex:32014L0053/oj').
union_harmonisation_legislation_applies('celex:31999L0005/oj').
union_harmonisation_legislation_applies('celex:32014L0068/oj').
union_harmonisation_legislation_applies('celex:32016R0424/oj').
union_harmonisation_legislation_applies('celex:32000L0009/oj').
union_harmonisation_legislation_applies('celex:32016R0425/oj').
union_harmonisation_legislation_applies('celex:31989L0686/oj').
union_harmonisation_legislation_applies('celex:32016R0426/oj').
union_harmonisation_legislation_applies('celex:32009L0142/oj').
union_harmonisation_legislation_applies('celex:32017R0745/oj').
union_harmonisation_legislation_applies('celex:32001L0083/oj').
union_harmonisation_legislation_applies('celex:32002R0178/oj').
union_harmonisation_legislation_applies('celex:32009R1223/oj').
union_harmonisation_legislation_applies('celex:31990L0385/oj').
union_harmonisation_legislation_applies('celex:31993L0042/oj').
union_harmonisation_legislation_applies('celex:32017R0746/oj').
union_harmonisation_legislation_applies('celex:31998L0079/oj').
union_harmonisation_legislation_applies('celex:32010D0227/oj').
union_harmonisation_legislation_applies('celex:32008R0300/oj').
union_harmonisation_legislation_applies('celex:32002R2320/oj').
union_harmonisation_legislation_applies('celex:32013R0168/oj').
union_harmonisation_legislation_applies('celex:32013R0167/oj').
union_harmonisation_legislation_applies('celex:32014L0090/oj').
union_harmonisation_legislation_applies('celex:31996L0098/oj').
union_harmonisation_legislation_applies('celex:32016L0797/oj').
union_harmonisation_legislation_applies('celex:32018R0858/oj').
union_harmonisation_legislation_applies('celex:32007R0715/oj').
union_harmonisation_legislation_applies('celex:32009R0595/oj').
union_harmonisation_legislation_applies('celex:32007L0046/oj').
union_harmonisation_legislation_applies('celex:32019R2144/oj').
union_harmonisation_legislation_applies('celex:32009R0078/oj').
union_harmonisation_legislation_applies('celex:32009R0079/oj').
union_harmonisation_legislation_applies('celex:32009R0661/oj').
union_harmonisation_legislation_applies('celex:32009R0631/oj').
union_harmonisation_legislation_applies('celex:32010R0406/oj').
union_harmonisation_legislation_applies('celex:32010R0672/oj').
union_harmonisation_legislation_applies('celex:32010R1003/oj').
union_harmonisation_legislation_applies('celex:32010R1005/oj').
union_harmonisation_legislation_applies('celex:32010R1008/oj').
union_harmonisation_legislation_applies('celex:32010R1009/oj').
union_harmonisation_legislation_applies('celex:32011R0019/oj').
union_harmonisation_legislation_applies('celex:32011R0109/oj').
union_harmonisation_legislation_applies('celex:32011R0458/oj').
union_harmonisation_legislation_applies('celex:32012R0065/oj').
union_harmonisation_legislation_applies('celex:32012R0130/oj').
union_harmonisation_legislation_applies('celex:32012R0347/oj').
union_harmonisation_legislation_applies('celex:32012R0351/oj').
union_harmonisation_legislation_applies('celex:32012R1230/oj').
union_harmonisation_legislation_applies('celex:32015R0166/oj').
union_harmonisation_legislation_applies('celex:32018R1139/oj').
union_harmonisation_legislation_applies('celex:32005R2111/oj').
union_harmonisation_legislation_applies('celex:32008R1008/oj').
union_harmonisation_legislation_applies('celex:32010R0996/oj').
union_harmonisation_legislation_applies('celex:32014R0376/oj').
union_harmonisation_legislation_applies('celex:32014L0030/oj').
union_harmonisation_legislation_applies('celex:32004R0552/oj').
union_harmonisation_legislation_applies('celex:32008R0216/oj').
union_harmonisation_legislation_applies('celex:31991R3922/oj').
union_harmonisation_legislation_applies('celex:31991R3922/oj#art_2/par_1/pnt_a').
union_harmonisation_legislation_applies('celex:31991R3922/oj#art_2/par_1/pnt_b').
provenance(union_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#anx_1').
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
criminal_offence_applies(terrorism).
criminal_offence_applies(trafficking_in_human_beings).
criminal_offence_applies(sexual_exploitation_of_children).
criminal_offence_applies(child_pornography).
criminal_offence_applies(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence_applies(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence_applies(murder).
criminal_offence_applies(grievous_bodily_injury).
criminal_offence_applies(illicit_trade_in_human_organs_or_tissue).
criminal_offence_applies(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence_applies(kidnapping).
criminal_offence_applies(illegal_restraint_or_hostage_taking).
criminal_offence_applies(crimes_within_jurisdiction_of_international_criminal_court).
criminal_offence_applies(unlawful_seizure_of_aircraft_or_ships).
criminal_offence_applies(rape).
criminal_offence_applies(environmental_crime).
criminal_offence_applies(organised_or_armed_robbery).
criminal_offence_applies(sabotage).
criminal_offence_applies(participation_in_criminal_organisation).
provenance(criminal_offence_applies/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(required_high_risk_ai_system/1, 'AI system classified as high‑risk under Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_biometric_identification_system/1, 'remote biometric identification system not used for verification', 'celex:32024R1689/oj#anx_3').
declared(high_risk_biometric_categorisation_system/1, 'AI system for biometric categorisation based on sensitive attributes', 'celex:32024R1689/oj#anx_3').
declared(high_risk_emotion_recognition_system/1, 'AI system for emotion recognition', 'celex:32024R1689/oj#anx_3').
declared(high_risk_critical_infrastructure_ai_system/1, 'AI system used as safety component in critical infrastructure', 'celex:32024R1689/oj#anx_3').
declared(education_access_assignment_applies/1, 'AI system used to determine access or assign persons to education/vocational institutions', 'celex:32024R1689/oj#anx_3').
declared(education_learning_outcome_applies/1, 'AI system used to evaluate learning outcomes or steer learning processes', 'celex:32024R1689/oj#anx_3').
declared(education_assessment_applies/1, 'AI system used to assess appropriate level of education for an individual', 'celex:32024R1689/oj#anx_3').
declared(education_monitoring_prohibited_behaviour_applies/1, 'AI system used to monitor/detect prohibited student behaviour during tests', 'celex:32024R1689/oj#anx_3').
declared(employment_recruitment_applies/1, 'AI system used for recruitment, selection, targeted job ads, application analysis or candidate evaluation', 'celex:32024R1689/oj#anx_3').
declared(employment_work_relationships_applies/1, 'AI system used to affect work‑related relationships, task allocation or performance monitoring', 'celex:32024R1689/oj#anx_3').
declared(essential_services_eligibility_applies/1, 'AI system used by public authorities to evaluate eligibility for essential public assistance', 'celex:32024R1689/oj#anx_3').
declared(essential_services_creditworthiness_applies/1, 'AI system used to evaluate creditworthiness or credit scores, excluding fraud detection', 'celex:32024R1689/oj#anx_3').
declared(essential_services_insurance_risk_pricing_applies/1, 'AI system used for risk assessment and pricing in life/health insurance', 'celex:32024R1689/oj#anx_3').
declared(essential_services_emergency_dispatch_applies/1, 'AI system used to evaluate/classify emergency calls and dispatch priority', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_risk_victim_assessment_applies/1, 'AI system used by law enforcement to assess risk of a person becoming a victim', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_polygraph_applies/1, 'AI system used as polygraph or similar tool by law enforcement', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_evidence_reliability_applies/1, 'AI system used to evaluate reliability of evidence in investigations or prosecutions', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_offence_risk_assessment_applies/1, 'AI system used to assess risk of offending/re‑offending not solely based on profiling', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_profiling_applies/1, 'AI system used for profiling of natural persons in criminal investigations', 'celex:32024R1689/oj#anx_3').
declared(migration_polygraph_applies/1, 'AI system used as polygraph or similar tool in migration management', 'celex:32024R1689/oj#anx_3').
declared(migration_risk_assessment_applies/1, 'AI system used to assess security, irregular migration or health risk of a person entering a Member State', 'celex:32024R1689/oj#anx_3').
declared(migration_asylum_application_assistance_applies/1, 'AI system used to assist authorities with asylum/visa/residence permit applications', 'celex:32024R1689/oj#anx_3').
declared(migration_detection_identification_applies/1, 'AI system used to detect/recognise/identify persons in migration context, excluding travel‑document verification', 'celex:32024R1689/oj#anx_3').
declared(justice_assistance_applies/1, 'AI system used to assist judicial authorities in researching, interpreting facts or law', 'celex:32024R1689/oj#anx_3').
declared(justice_influence_election_applies/1, 'AI system used to influence election or referendum outcomes or voting behaviour', 'celex:32024R1689/oj#anx_3').
required_high_risk_ai_system(S) :-
    high_risk_biometric_identification_system(S).
required_high_risk_ai_system(S) :-
    high_risk_biometric_categorisation_system(S).
required_high_risk_ai_system(S) :-
    high_risk_emotion_recognition_system(S).
required_high_risk_ai_system(S) :-
    high_risk_critical_infrastructure_ai_system(S).
required_high_risk_ai_system(S) :-
    education_access_assignment_applies(S).
required_high_risk_ai_system(S) :-
    education_learning_outcome_applies(S).
required_high_risk_ai_system(S) :-
    education_assessment_applies(S).
required_high_risk_ai_system(S) :-
    education_monitoring_prohibited_behaviour_applies(S).
required_high_risk_ai_system(S) :-
    employment_recruitment_applies(S).
required_high_risk_ai_system(S) :-
    employment_work_relationships_applies(S).
required_high_risk_ai_system(S) :-
    essential_services_eligibility_applies(S).
required_high_risk_ai_system(S) :-
    essential_services_creditworthiness_applies(S).
required_high_risk_ai_system(S) :-
    essential_services_insurance_risk_pricing_applies(S).
required_high_risk_ai_system(S) :-
    essential_services_emergency_dispatch_applies(S).
required_high_risk_ai_system(S) :-
    law_enforcement_risk_victim_assessment_applies(S).
required_high_risk_ai_system(S) :-
    law_enforcement_polygraph_applies(S).
required_high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_applies(S).
required_high_risk_ai_system(S) :-
    law_enforcement_offence_risk_assessment_applies(S).
required_high_risk_ai_system(S) :-
    law_enforcement_profiling_applies(S).
required_high_risk_ai_system(S) :-
    migration_polygraph_applies(S).
required_high_risk_ai_system(S) :-
    migration_risk_assessment_applies(S).
required_high_risk_ai_system(S) :-
    migration_asylum_application_assistance_applies(S).
required_high_risk_ai_system(S) :-
    migration_detection_identification_applies(S).
required_high_risk_ai_system(S) :-
    justice_assistance_applies(S).
required_high_risk_ai_system(S) :-
    justice_influence_election_applies(S).
high_risk_biometric_identification_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification(S).
high_risk_biometric_categorisation_system(S) :-
    biometric_categorisation_system(S).
high_risk_emotion_recognition_system(S) :-
    emotion_recognition_system(S).
high_risk_critical_infrastructure_ai_system(S) :-
    safety_component(S),
    critical_infrastructure(S).
provenance(required_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_categorisation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_critical_infrastructure_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_assignment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(education_learning_outcome_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(education_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(education_monitoring_prohibited_behaviour_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_recruitment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_work_relationships_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_eligibility_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_creditworthiness_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_insurance_risk_pricing_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_services_emergency_dispatch_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_risk_victim_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_polygraph_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_evidence_reliability_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_offence_risk_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_asylum_application_assistance_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_detection_identification_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(justice_assistance_applies/1, 'celex:32024R1689/oj#anx_3').
provenance(justice_influence_election_applies/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
required_general_description(S) :-
    ai_system(S).
required_detailed_description_of_elements(S) :-
    ai_system(S).
required_monitoring_and_control_information(S) :-
    ai_system(S).
required_performance_metrics_appropriateness(S) :-
    ai_system(S).
required_risk_management_system_description(S) :-
    ai_system(S).
required_provider_changes_description(S) :-
    ai_system(S).
required_harmonised_standards_list(S) :-
    ai_system(S).
required_eu_declaration_of_conformity_copy(S) :-
    ai_system(S).
required_post_market_performance_evaluation_description(S) :-
    ai_system(S).
provenance(required_general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_detailed_description_of_elements/1, 'celex:32024R1689/oj#anx_4').
provenance(required_monitoring_and_control_information/1, 'celex:32024R1689/oj#anx_4').
provenance(required_performance_metrics_appropriateness/1, 'celex:32024R1689/oj#anx_4').
provenance(required_risk_management_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_provider_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(required_eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_4').
provenance(required_post_market_performance_evaluation_description/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(required_information/1, 'information that must be included in the EU declaration of conformity', 'celex:32024R1689/oj#anx_5').
required_information(ai_system_name_and_type).
required_information(provider_name_and_address).
required_information(provider_responsibility_statement).
required_information(conformity_statement).
required_information(personal_data_compliance_statement).
required_information(harmonised_standard_reference).
required_information(notified_body_details).
required_information(place_date_and_signatory_information).
provenance(required_information/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(required_conformity_assessment_procedure_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'anx_6').
declared(must_verify/2, 'obligation for provider to verify a condition', 'anx_6').
declared(must_examine/2, 'obligation for provider to examine technical documentation', 'anx_6').
required_conformity_assessment_procedure_based_on_internal_control(internal_control_procedure).
must_verify(P, compliance(quality_management_system, art_17)) :-
    provider(P).
must_examine(P, examine(technical_documentation,
                         assess_compliance(S, essential_requirements(chp_3_sec_2)))) :-
    provider(P),
    ai_system(S).
must_verify(P, consistency(design_and_development_process(S),
                          post_market_monitoring(S),
                          technical_documentation)) :-
    provider(P),
    ai_system(S).
provenance(required_conformity_assessment_procedure_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(must_assess/2, 'obligation to assess', 'celex:32024R1689/oj#anx_7').
declared(must_notify/2, 'obligation to notify', 'celex:32024R1689/oj#anx_7').
declared(must_maintain/2, 'obligation to maintain', 'celex:32024R1689/oj#anx_7').
declared(must_allow_access/2, 'obligation to allow access', 'celex:32024R1689/oj#anx_7').
declared(must_share_information/2, 'obligation to share information', 'celex:32024R1689/oj#anx_7').
declared(must_conduct_audit/2, 'obligation to conduct audit', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access/2, 'obligation to grant access to data', 'celex:32024R1689/oj#anx_7').
must_assess(NB, quality_management_system) :-
    notified_body(NB).
must_assess(NB, technical_documentation) :-
    notified_body(NB).
must_notify(NB, Provider) :-
    notified_body(NB),
    provider(Provider).
must_notify(Provider, NB) :-
    provider(Provider),
    notified_body(NB).
must_maintain(P, quality_management_system) :-
    provider(P).
must_allow_access(P, NB) :-
    provider(P),
    notified_body(NB).
must_share_information(P, NB) :-
    provider(P),
    notified_body(NB).
must_conduct_audit(NB, P) :-
    notified_body(NB),
    provider(P).
must_grant_access(NB, data_access(P)) :-
    notified_body(NB),
    provider(P).
provenance(must_assess/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(must_conduct_audit/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'annex_8').
declared(not_high_risk_ai_system/1, 'AI system considered not‑high‑risk', 'annex_8').
declared(provides/2, 'provider supplies AI system', 'annex_8').
declared(deploys/2, 'deployer uses AI system', 'annex_8').
declared(law_enforcement_area_applies/1, 'AI system is used for law‑enforcement purposes', 'annex_8').
declared(migration_asylum_border_control_area_applies/1, 'AI system is used for migration, asylum or border‑control management', 'annex_8').
declared(must_provide/2, 'obligation to provide information', 'annex_8').
declared(must_maintain/2, 'obligation to keep information up to date', 'annex_8').
declared(prohibited_electronic_instructions_for_use/1, 'electronic instructions must not be provided', 'annex_8').
must_provide(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, intended_purpose_and_components_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, intended_purpose_and_components_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, data_and_logic_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, data_and_logic_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, status)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, status)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, certificate_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, certificate_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, certificate_copy)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, certificate_copy)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, eu_declaration_of_conformity)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, eu_declaration_of_conformity)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, electronic_instructions_for_use)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System),
    \+ (law_enforcement_area_applies(System) ; migration_asylum_border_control_area_applies(System)).
must_maintain(Provider, registration_information(System, electronic_instructions_for_use)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System),
    \+ (law_enforcement_area_applies(System) ; migration_asylum_border_control_area_applies(System)).
must_provide(Provider, registration_information(System, url_additional_information)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, url_additional_information)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).
prohibited_electronic_instructions_for_use(System) :-
    high_risk_ai_system(System),
    ( law_enforcement_area_applies(System)
    ; migration_asylum_border_control_area_applies(System) ).
must_provide(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, intended_purpose_description)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, intended_purpose_description)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, condition_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, condition_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, summary_of_grounds_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, summary_of_grounds_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, status)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, status)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_maintain(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).
must_provide(Deployer, registration_information(System, deployer_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_maintain(Deployer, registration_information(System, deployer_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_provide(Deployer, registration_information(System, person_submitting_on_behalf_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_maintain(Deployer, registration_information(System, person_submitting_on_behalf_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_provide(Deployer, registration_information(System, url_of_entry_in_eu_database)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_maintain(Deployer, registration_information(System, url_of_entry_in_eu_database)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_provide(Deployer, registration_information(System, summary_fundamental_rights_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_maintain(Deployer, registration_information(System, summary_fundamental_rights_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_provide(Deployer, registration_information(System, summary_data_protection_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
must_maintain(Deployer, registration_information(System, summary_data_protection_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_8').
provenance(not_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_8').
provenance(provides/2, 'celex:32024R1689/oj#anx_8').
provenance(deploys/2, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_area_applies/1, 'celex:32024R1689/oj#anx_8').
provenance(migration_asylum_border_control_area_applies/1, 'celex:32024R1689/oj#anx_8').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_8').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_8').
provenance(prohibited_electronic_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
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
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').

% ==== celex:32024R1689/oj#anx_9 ====
declared(must_provide/2, 'obligation to provide required information', 'celex:32024R1689/oj#anx_9').
declared(must_maintain/2, 'obligation to keep required information up to date', 'celex:32024R1689/oj#anx_9').
must_provide(Provider, unique_testing_id) :-
    provider(Provider).
must_maintain(Provider, unique_testing_id) :-
    provider(Provider).
must_provide(Provider, provider_contact_details) :-
    provider(Provider).
must_maintain(Provider, provider_contact_details) :-
    provider(Provider).
must_provide(Deployer, deployer_contact_details) :-
    deployer(Deployer).
must_maintain(Deployer, deployer_contact_details) :-
    deployer(Deployer).
must_provide(Provider, system_description) :-
    provider(Provider).
must_maintain(Provider, system_description) :-
    provider(Provider).
must_provide(Provider, plan_summary) :-
    provider(Provider).
must_maintain(Provider, plan_summary) :-
    provider(Provider).
must_provide(Provider, suspension_information) :-
    provider(Provider).
must_maintain(Provider, suspension_information) :-
    provider(Provider).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_9').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(legislative_act_applies/1, 'Union legislative act listed in annex', 'celex:32024R1689/oj#anx_10').
legislative_act_applies('celex:32018R1860/oj').
legislative_act_applies('celex:32018R1861/oj').
legislative_act_applies('celex:42000A0922(01)/oj').
legislative_act_applies('celex:32006R1987/oj').
legislative_act_applies('celex:32021R1133/oj').
legislative_act_applies('celex:32013R0603/oj').
legislative_act_applies('celex:32016R0794/oj').
legislative_act_applies('celex:32018R1862/oj').
legislative_act_applies('celex:32019R0816/oj').
legislative_act_applies('celex:32019R0818/oj').
legislative_act_applies('celex:32021R1134/oj').
legislative_act_applies('celex:32008R0767/oj').
legislative_act_applies('celex:32009R0810/oj').
legislative_act_applies('celex:32016R0399/oj').
legislative_act_applies('celex:32017R2226/oj').
legislative_act_applies('celex:32018R1240/oj').
legislative_act_applies('celex:32019R0817/oj').
legislative_act_applies('celex:32019R1896/oj').
legislative_act_applies('celex:32004D0512/oj').
legislative_act_applies('celex:32008D0633/oj').
legislative_act_applies('celex:32024R1358/oj').
legislative_act_applies('celex:32024R1315/oj').
legislative_act_applies('celex:32024R1350/oj').
legislative_act_applies('celex:32001L0055/oj').
legislative_act_applies('celex:32011R1077/oj').
legislative_act_applies('celex:32014R0515/oj').
legislative_act_applies('celex:32016R1624/oj').
legislative_act_applies('celex:32018R1241/oj').
legislative_act_applies('celex:32018R1726/oj').
provenance(legislative_act_applies/1, 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1860/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1861/oj').
references('celex:32024R1689/oj#anx_10', 'celex:42000A0922(01)/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1987/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32021R1133/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32013R0603/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R0794/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1862/oj').
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
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(provides/2, 'provider provides AI model', 'celex:32024R1689/oj#anx_11').
declared(required_general_description_tasks/1, 'tasks the model is intended to perform and integration contexts', 'celex:32024R1689/oj#anx_11').
declared(required_acceptable_use_policies/1, 'acceptable use policies applicable to the model', 'celex:32024R1689/oj#anx_11').
declared(required_release_date_and_distribution/1, 'date of release and methods of distribution of the model', 'celex:32024R1689/oj#anx_11').
declared(required_architecture_and_parameters/1, 'architecture and number of parameters of the model', 'celex:32024R1689/oj#anx_11').
declared(required_modality_and_format/1, 'modality and format of inputs and outputs of the model', 'celex:32024R1689/oj#anx_11').
declared(required_licence/1, 'licence governing the model', 'celex:32024R1689/oj#anx_11').
declared(required_technical_means_for_integration/1, 'technical means required for integration of the model in AI systems', 'celex:32024R1689/oj#anx_11').
declared(required_design_specifications/1, 'design specifications of the model and training process', 'celex:32024R1689/oj#anx_11').
declared(required_data_information/1, 'information on data used for training, testing and validation', 'celex:32024R1689/oj#anx_11').
declared(required_computational_resources/1, 'computational resources used to train the model', 'celex:32024R1689/oj#anx_11').
declared(required_energy_consumption/1, 'known or estimated energy consumption of the model', 'celex:32024R1689/oj#anx_11').
declared(required_evaluation_strategies/1, 'evaluation strategies, results, criteria, metrics and limitation identification methodology', 'celex:32024R1689/oj#anx_11').
declared(required_adversarial_testing_measures/1, 'measures for internal and external adversarial testing, model adaptations, alignment and fine‑tuning', 'celex:32024R1689/oj#anx_11').
declared(required_system_architecture_description/1, 'description of system architecture and component integration', 'celex:32024R1689/oj#anx_11').
must_provide(Provider, required_general_description_tasks(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_acceptable_use_policies(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_release_date_and_distribution(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_architecture_and_parameters(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_modality_and_format(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_licence(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_technical_means_for_integration(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_design_specifications(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_data_information(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_computational_resources(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_energy_consumption(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).
must_provide(Provider, required_evaluation_strategies(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model),
    systemic_risk(Model).
must_provide(Provider, required_adversarial_testing_measures(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model),
    systemic_risk(Model).
must_provide(Provider, required_system_architecture_description(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model),
    systemic_risk(Model).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
must_provide_transparency_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
provenance(must_provide_transparency_information/2, 'celex:32024R1689/oj#anx_12').
required_general_description(Model) :-
    general_purpose_ai_model(Model).
required_tasks_intended(Model) :-
    general_purpose_ai_model(Model).
required_acceptable_use_policies(Model) :-
    general_purpose_ai_model(Model).
required_release_date_and_distribution_methods(Model) :-
    general_purpose_ai_model(Model).
required_hardware_software_interaction(Model) :-
    general_purpose_ai_model(Model).
required_software_versions(Model) :-
    general_purpose_ai_model(Model).
required_architecture_and_parameters(Model) :-
    general_purpose_ai_model(Model).
required_modality_and_format(Model) :-
    general_purpose_ai_model(Model).
required_licence(Model) :-
    general_purpose_ai_model(Model).
provenance(required_general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(required_tasks_intended/1, 'celex:32024R1689/oj#anx_12').
provenance(required_acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(required_release_date_and_distribution_methods/1, 'celex:32024R1689/oj#anx_12').
provenance(required_hardware_software_interaction/1, 'celex:32024R1689/oj#anx_12').
provenance(required_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(required_architecture_and_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(required_modality_and_format/1, 'celex:32024R1689/oj#anx_12').
provenance(required_licence/1, 'celex:32024R1689/oj#anx_12').
required_model_elements_description(Model) :-
    general_purpose_ai_model(Model).
required_technical_means(Model) :-
    general_purpose_ai_model(Model).
required_input_output_modality_and_size(Model) :-
    general_purpose_ai_model(Model).
required_data_information(Model) :-
    general_purpose_ai_model(Model).
provenance(required_model_elements_description/1, 'celex:32024R1689/oj#anx_12').
provenance(required_technical_means/1, 'celex:32024R1689/oj#anx_12').
provenance(required_input_output_modality_and_size/1, 'celex:32024R1689/oj#anx_12').
provenance(required_data_information/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(must_take_into_account/2, 'Commission must take into account criteria for designation of general‑purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_13').
must_take_into_account(commission,
    criteria(number_of_parameters,
              quality_of_data_set,
              amount_of_computation,
              input_output_modalities,
              benchmarks_evaluations,
              high_market_impact,
              number_of_registered_end_users)).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

