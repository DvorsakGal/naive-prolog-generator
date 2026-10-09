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
% There are 381 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous adopt_implementing_act/2.
:- discontiguous affected_person_applies/1.
:- discontiguous after_placement_or_service/1.
:- discontiguous ai_office_request_applies/1.
:- discontiguous ai_regulation/1.
:- discontiguous alias/2.
:- discontiguous allow_testing_by/2.
:- discontiguous applies_from/2.
:- discontiguous applies_to_operator/2.
:- discontiguous appoint_independent_expert/2.
:- discontiguous art79_par5_applies/1.
:- discontiguous art79_par6_applies/1.
:- discontiguous art79_par7_applies/1.
:- discontiguous art79_par8_applies/1.
:- discontiguous art79_par9_applies/1.
:- discontiguous assess_quality_management_system/2.
:- discontiguous authorise_placing_on_market/2.
:- discontiguous authorise_putting_into_service/2.
:- discontiguous authorised_representative_applies/1.
:- discontiguous authority_may_decide/1.
:- discontiguous board/1.
:- discontiguous board_representatives/1.
:- discontiguous circumstances_par_1_applies/1.
:- discontiguous commission/1.
:- discontiguous compliance_by/1.
:- discontiguous concrete_reliable_evidence/1.
:- discontiguous concrete_reliable_evidence_of_necessity/1.
:- discontiguous condition_a/1.
:- discontiguous condition_b/1.
:- discontiguous conduct_evaluations/2.
:- discontiguous conform_obligation/2.
:- discontiguous conform_requirements/2.
:- discontiguous consider_not_high_risk/2.
:- discontiguous criminal_offence/1.
:- discontiguous decision_referred/1.
:- discontiguous deployer_applies/1.
:- discontiguous deployer_or_prospective/1.
:- discontiguous detect_decision_patterns_without_replacing_human_assessment/1.
:- discontiguous distributor_applies/1.
:- discontiguous document_type/1.
:- discontiguous ensure_ai_literacy/2.
:- discontiguous established/1.
:- discontiguous european_data_protection_supervisor/1.
:- discontiguous exception_for_separate_verification/1.
:- discontiguous excluded_by_par1/1.
:- discontiguous exempt_explanation/1.
:- discontiguous exempt_provider/1.
:- discontiguous exempt_quality_management_system/1.
:- discontiguous fee_structure_set_in_implementing_act/0.
:- discontiguous good_faith/1.
:- discontiguous harmonised_standard_published/0.
:- discontiguous high_impact_capabilities/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous importer_applies/1.
:- discontiguous impose_fine/2.
:- discontiguous improve_human_activity_result/1.
:- discontiguous informed_board/0.
:- discontiguous initiate_structured_dialogue/2.
:- discontiguous justified_authorisation/1.
:- discontiguous law_enforcement_use/1.
:- discontiguous low_risk_condition/1.
:- discontiguous make_commitments_binding/2.
:- discontiguous max_extension/2.
:- discontiguous member_state_request_applies/1.
:- discontiguous monitor_compliance/2.
:- discontiguous must_accept/2.
:- discontiguous must_act/2.
:- discontiguous must_act_as_market_surveillance_authority/2.
:- discontiguous must_act_in_accordance/2.
:- discontiguous must_adopt/2.
:- discontiguous must_adopt_delegated_act/2.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_adopt_mitigation_measures/2.
:- discontiguous must_advise/2.
:- discontiguous must_affix/2.
:- discontiguous must_agree/2.
:- discontiguous must_allocate_resources/2.
:- discontiguous must_allow/2.
:- discontiguous must_amend/2.
:- discontiguous must_analyse/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_assess/2.
:- discontiguous must_assess_and_mitigate_systemic_risk/2.
:- discontiguous must_assess_and_update/2.
:- discontiguous must_assess_impact/2.
:- discontiguous must_assign/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assist/2.
:- discontiguous must_associate/2.
:- discontiguous must_assume_responsibility_declaration_of_conformity/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_processing_on_law/2.
:- discontiguous must_be_able_to_propose_joint_activities/1.
:- discontiguous must_be_controller/2.
:- discontiguous must_be_established/2.
:- discontiguous must_be_independent_of/2.
:- discontiguous must_be_provider/2.
:- discontiguous must_be_ready_by/2.
:- discontiguous must_carry_out_evaluation/2.
:- discontiguous must_choose_conformity_assessment_procedure/2.
:- discontiguous must_classify_as_systemic_risk/2.
:- discontiguous must_collect/2.
:- discontiguous must_communicate/2.
:- discontiguous must_communicate_fine_information/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_comply/2.
:- discontiguous must_comply_registration/2.
:- discontiguous must_conduct/2.
:- discontiguous must_conduct_new_conformity_assessment/2.
:- discontiguous must_conduct_risk_assessment/2.
:- discontiguous must_confer/2.
:- discontiguous must_consider/2.
:- discontiguous must_consider_adverse_impact/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult_board_when_updating_specs/2.
:- discontiguous must_consult_experts/2.
:- discontiguous must_consult_experts_when_setting_specs/2.
:- discontiguous must_convene_meetings/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_cooperate_with_competent_authorities/2.
:- discontiguous must_cooperate_with_new_providers/2.
:- discontiguous must_coordinate/2.
:- discontiguous must_decide/2.
:- discontiguous must_decide_authorisation/2.
:- discontiguous must_decide_justification/2.
:- discontiguous must_declare/2.
:- discontiguous must_delete_data/2.
:- discontiguous must_delete_personal_data_linked/2.
:- discontiguous must_demonstrate/2.
:- discontiguous must_demonstrate_alternative_means_of_compliance/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_market_surveillance_authority/2.
:- discontiguous must_designate_or_establish/2.
:- discontiguous must_determine/2.
:- discontiguous must_develop/2.
:- discontiguous must_develop_and_maintain/2.
:- discontiguous must_develop_guidance/2.
:- discontiguous must_direct/2.
:- discontiguous must_disclose/2.
:- discontiguous must_document/2.
:- discontiguous must_document_and_implement/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_document_consent/2.
:- discontiguous must_document_use/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_draw_up_declaration_of_conformity/2.
:- discontiguous must_draw_up_declaration_of_interests/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_rules_of_procedure/2.
:- discontiguous must_draw_up_single_declaration_of_conformity/2.
:- discontiguous must_elect_co_chair/2.
:- discontiguous must_enable/2.
:- discontiguous must_encourage/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_enforce/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_cybersecurity_protection/2.
:- discontiguous must_ensure_decision_makers_separate/2.
:- discontiguous must_ensure_input_data_relevant/2.
:- discontiguous must_ensure_no_adverse_legal_effect_based_on_output/2.
:- discontiguous must_ensure_no_conflict_of_interest/2.
:- discontiguous must_ensure_objectivity_and_impartiality/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_ensure_up_to_date/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_enter_into_consultation/2.
:- discontiguous must_entrust/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_systems/2.
:- discontiguous must_evaluate/2.
:- discontiguous must_evaluate_and_promote/2.
:- discontiguous must_evaluate_and_report/2.
:- discontiguous must_examine/2.
:- discontiguous must_face_fine/2.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_coordination/1.
:- discontiguous must_follow_annex_7_procedure/2.
:- discontiguous must_follow_union_legislation_procedure/2.
:- discontiguous must_give_copy_of_consent/2.
:- discontiguous must_give_hearing_opportunity/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access/2.
:- discontiguous must_handle_complaint_in_line_with_procedures/2.
:- discontiguous must_handle_confidentially/2.
:- discontiguous must_have/2.
:- discontiguous must_have_confidentiality_procedures/1.
:- discontiguous must_have_legal_personality/2.
:- discontiguous must_have_procedures_considering/2.
:- discontiguous must_hold_meetings/2.
:- discontiguous must_identify_public_authorities/2.
:- discontiguous must_implement/2.
:- discontiguous must_implement_cybersecurity_measures/1.
:- discontiguous must_impose_fine/2.
:- discontiguous must_include/2.
:- discontiguous must_include_fines/2.
:- discontiguous must_include_full_details/2.
:- discontiguous must_include_in_technical_documentation/2.
:- discontiguous must_indicate/2.
:- discontiguous must_indicate_in_promotional_material/2.
:- discontiguous must_inform/2.
:- discontiguous must_inform_distributor/2.
:- discontiguous must_inform_first_provider/2.
:- discontiguous must_inform_importer_or_distributor/2.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_provider/2.
:- discontiguous must_inform_provider_or_distributor/2.
:- discontiguous must_inform_subject/2.
:- discontiguous must_inform_workers_representatives/2.
:- discontiguous must_investigate/2.
:- discontiguous must_issue/2.
:- discontiguous must_justify/2.
:- discontiguous must_keep/2.
:- discontiguous must_keep_declaration_of_conformity/2.
:- discontiguous must_keep_files/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_track_document_and_report/2.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_keep_up_to_date_declaration_of_conformity/2.
:- discontiguous must_lay_down_rules_on_penalties/2.
:- discontiguous must_limit_use_to_specific_offence/2.
:- discontiguous must_maintain/2.
:- discontiguous must_make_available_information/2.
:- discontiguous must_make_available_to_authorities/2.
:- discontiguous must_make_files_available/2.
:- discontiguous must_make_provisions/2.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_mark/2.
:- discontiguous must_meet_criteria/2.
:- discontiguous must_mitigate/2.
:- discontiguous must_monitor_and_evaluate/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_alter_before_informing/2.
:- discontiguous must_not_place_on_market/2.
:- discontiguous must_not_seek_instructions/2.
:- discontiguous must_not_use_if_not_registered/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_annually/2.
:- discontiguous must_observe_professional_secrecy/1.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_participate_in_coordination/1.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_task/2.
:- discontiguous must_prepare_agenda/2.
:- discontiguous must_prepare_annual_report/2.
:- discontiguous must_process_personal_data/2.
:- discontiguous must_process_special_categories/2.
:- discontiguous must_provide/2.
:- discontiguous must_provide_access/2.
:- discontiguous must_provide_access_to_file/2.
:- discontiguous must_provide_coordination_support/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_documentation/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_instructions/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_provide_technical_access/2.
:- discontiguous must_provide_technical_documentation/2.
:- discontiguous must_publish/2.
:- discontiguous must_reduce_fees/2.
:- discontiguous must_register/2.
:- discontiguous must_reject_arguments/2.
:- discontiguous must_repeal/2.
:- discontiguous must_report/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_request/2.
:- discontiguous must_request_authorisation/2.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require/2.
:- discontiguous must_require_certificate_action/2.
:- discontiguous must_require_provider_to_take_actions/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rights_of_defence/2.
:- discontiguous must_respect_rigour_and_protection/2.
:- discontiguous must_safeguard/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_satisfy/2.
:- discontiguous must_seek/2.
:- discontiguous must_set_period/2.
:- discontiguous must_set_up_and_maintain/2.
:- discontiguous must_share/2.
:- discontiguous must_specify/2.
:- discontiguous must_specify_information_and_assistance/2.
:- discontiguous must_state_legal_basis/2.
:- discontiguous must_state_purpose/2.
:- discontiguous must_state_reason/2.
:- discontiguous must_stop_use_if_authorisation_rejected/2.
:- discontiguous must_subject_to_provider_obligations/2.
:- discontiguous must_submit/2.
:- discontiguous must_submit_annual_reports/2.
:- discontiguous must_submit_application/2.
:- discontiguous must_submit_copy_declaration_of_conformity/2.
:- discontiguous must_submit_proposal/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_supervise/2.
:- discontiguous must_supply/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information/3.
:- discontiguous must_support/2.
:- discontiguous must_suspend_or_withdraw_or_restrict/2.
:- discontiguous must_suspend_testing/2.
:- discontiguous must_suspend_use/2.
:- discontiguous must_take/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_complaint/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_provisional_measures/2.
:- discontiguous must_take_request_into_account/2.
:- discontiguous must_take_steps/2.
:- discontiguous must_terminate/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_test/2.
:- discontiguous must_test_before_market/2.
:- discontiguous must_transmit/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_update/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_fundamental_rights_impact_assessment/2.
:- discontiguous must_use_data_set/2.
:- discontiguous must_use_information_for_dpia/2.
:- discontiguous must_use_market_surveillance_authority_as_notified_body/2.
:- discontiguous must_use_testing_data_set/2.
:- discontiguous must_utilise/2.
:- discontiguous must_verify/2.
:- discontiguous must_verify_compliance/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_withdraw/2.
:- discontiguous narrow_procedural_task/1.
:- discontiguous necessary_applies/0.
:- discontiguous new_provider_of/2.
:- discontiguous no_longer_provider/2.
:- discontiguous notified_body/1.
:- discontiguous objective_assessment_criterion/1.
:- discontiguous objective_cross_border_cooperation/1.
:- discontiguous objective_evidence_based_learning/1.
:- discontiguous objective_facilitate_market_access/1.
:- discontiguous objective_focus_smes/1.
:- discontiguous objective_fostering_innovation/1.
:- discontiguous objective_harmonised_rules_for_general_purpose_ai_models/1.
:- discontiguous objective_harmonised_rules_for_placing_on_market/1.
:- discontiguous objective_harmonised_rules_for_putting_into_service/1.
:- discontiguous objective_harmonised_rules_for_use_of_ai_systems/1.
:- discontiguous objective_harmonised_transparency_rules/1.
:- discontiguous objective_improve_internal_market/1.
:- discontiguous objective_improving_legal_certainty/1.
:- discontiguous objective_measures_to_support_innovation/1.
:- discontiguous objective_objectivity_and_impartiality/1.
:- discontiguous objective_obligations_for_operators_of_high_risk_ai_systems/1.
:- discontiguous objective_prevent_or_minimise_risk/1.
:- discontiguous objective_prohibitions_of_ai_practices/1.
:- discontiguous objective_promote_human_centric_trustworthy_ai/1.
:- discontiguous objective_protect_health_safety_fundamental_rights/1.
:- discontiguous objective_rules_on_market_monitoring_surveillance_governance_enforcement/1.
:- discontiguous objective_specific_requirements_for_high_risk_ai_systems/1.
:- discontiguous objective_support_innovation/1.
:- discontiguous objective_support_sharing_best_practices/1.
:- discontiguous open_source_provider_without_systemic_risk/1.
:- discontiguous operator/1.
:- discontiguous own_initiative_applies/0.
:- discontiguous penalty_amount/2.
:- discontiguous performs_profiling/1.
:- discontiguous permanent_member/2.
:- discontiguous permit_require_modification/3.
:- discontiguous permit_subcontracting/2.
:- discontiguous permit_suspend_testing/2.
:- discontiguous permitted_access/2.
:- discontiguous permitted_access_to_market_surveillance/1.
:- discontiguous permitted_additional_tests/1.
:- discontiguous permitted_adhere/2.
:- discontiguous permitted_adopt_delegated_act/1.
:- discontiguous permitted_advise_commission_international/1.
:- discontiguous permitted_amendment/2.
:- discontiguous permitted_approve/2.
:- discontiguous permitted_assessment/2.
:- discontiguous permitted_assessment_by_national_accreditation_body/1.
:- discontiguous permitted_assist_ai_office_sandboxes/1.
:- discontiguous permitted_assist_expertise_development/1.
:- discontiguous permitted_authorisation_of_conformity_assessment_body/1.
:- discontiguous permitted_call_upon_experts/1.
:- discontiguous permitted_collect_and_share_expertise/1.
:- discontiguous permitted_combination_with_other_law/2.
:- discontiguous permitted_complaint_lodging/1.
:- discontiguous permitted_contribute_to_guidance_documents/1.
:- discontiguous permitted_contribute_to_harmonisation/1.
:- discontiguous permitted_contribute_to_international_cooperation/1.
:- discontiguous permitted_cooperate_with_union_entities/1.
:- discontiguous permitted_coordination_contribution/1.
:- discontiguous permitted_designate_another_market_surveillance_authority/1.
:- discontiguous permitted_designate_systemic_risk/1.
:- discontiguous permitted_drawing_up_codes_of_conduct_by/1.
:- discontiguous permitted_entry_into_force/1.
:- discontiguous permitted_establish_other_subgroup/1.
:- discontiguous permitted_establish_subgroup/1.
:- discontiguous permitted_exercise_power_remotely/1.
:- discontiguous permitted_exercise_powers/1.
:- discontiguous permitted_facilitate_common_criteria_development/1.
:- discontiguous permitted_human_assisted_criminal_risk_assessment_ai_system/1.
:- discontiguous permitted_implement_mitigation_measures/1.
:- discontiguous permitted_incomplete_report/2.
:- discontiguous permitted_integration_of_post_market_monitoring_elements/1.
:- discontiguous permitted_integration_of_testing_and_reporting/1.
:- discontiguous permitted_invitation/1.
:- discontiguous permitted_invite/2.
:- discontiguous permitted_issue_recommendations_and_opinions/1.
:- discontiguous permitted_law_enforcement_biometric_dataset_labeling/1.
:- discontiguous permitted_make_publicly_available/1.
:- discontiguous permitted_medical_or_safety_emotion_inference_ai_system/1.
:- discontiguous permitted_monitoring_action/1.
:- discontiguous permitted_no_administrative_fine/1.
:- discontiguous permitted_notification/1.
:- discontiguous permitted_notified_body_choice/2.
:- discontiguous permitted_notified_body_control/3.
:- discontiguous permitted_objective/2.
:- discontiguous permitted_perform_checks/1.
:- discontiguous permitted_perform_notified_body_activities/1.
:- discontiguous permitted_prepare_opinion/1.
:- discontiguous permitted_prepare_recommendation/1.
:- discontiguous permitted_prepare_written_contribution/1.
:- discontiguous permitted_present_arguments/1.
:- discontiguous permitted_processing_of_personal_data_in_sandbox/1.
:- discontiguous permitted_provide/2.
:- discontiguous permitted_provide_guidance/2.
:- discontiguous permitted_provide_implementation_advice/1.
:- discontiguous permitted_provide_qualified_alert_opinions/1.
:- discontiguous permitted_public_access/1.
:- discontiguous permitted_qualified_alert/1.
:- discontiguous permitted_reasoned_request_testing/1.
:- discontiguous permitted_reassess/1.
:- discontiguous permitted_recall/1.
:- discontiguous permitted_receive_qualified_alert_opinions/1.
:- discontiguous permitted_reliance_on_code_of_practice/1.
:- discontiguous permitted_reliance_on_codes_of_practice/1.
:- discontiguous permitted_request_and_access_documentation/1.
:- discontiguous permitted_request_exercise_powers/1.
:- discontiguous permitted_request_reassessment/1.
:- discontiguous permitted_restrict_designation/1.
:- discontiguous permitted_restrict_making_available/1.
:- discontiguous permitted_revocation/1.
:- discontiguous permitted_simplified_quality_management_compliance/1.
:- discontiguous permitted_submit_complaint/2.
:- discontiguous permitted_submit_reasoned_request/2.
:- discontiguous permitted_support_ai_literacy_promotion/1.
:- discontiguous permitted_suspend_designation/1.
:- discontiguous permitted_take_appropriate_measures/1.
:- discontiguous permitted_take_into_account/2.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_use_of_existing_designation_documents/1.
:- discontiguous permitted_withdraw/1.
:- discontiguous permitted_withdraw_designation/1.
:- discontiguous permitted_withdrawal_of_informed_consent/1.
:- discontiguous persists_non_compliance/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous preparatory_task_for_assessment_use_cases/1.
:- discontiguous presume_compliance/2.
:- discontiguous presumed_compliant/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_cybersecurity_compliance/1.
:- discontiguous procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies/1.
:- discontiguous product_manufacturer_applies/1.
:- discontiguous prohibited_affect/1.
:- discontiguous prohibited_application_of_procedure/1.
:- discontiguous prohibited_applies_from/1.
:- discontiguous prohibited_assessment_activities/1.
:- discontiguous prohibited_authorisation_outside_union_harmonisation/1.
:- discontiguous prohibited_biometric_categorisation_race_political_ai_system/1.
:- discontiguous prohibited_certificate/1.
:- discontiguous prohibited_commercial_consultancy_services/1.
:- discontiguous prohibited_conflict_of_interest/1.
:- discontiguous prohibited_consultancy_services/1.
:- discontiguous prohibited_criminal_risk_assessment_ai_system/1.
:- discontiguous prohibited_direct_involvement/1.
:- discontiguous prohibited_disclosure_without_consultation/2.
:- discontiguous prohibited_emotion_inference_ai_system/1.
:- discontiguous prohibited_exemption_from_other_requirements/1.
:- discontiguous prohibited_exploit_vulnerable_person_ai_system/1.
:- discontiguous prohibited_making_available_on_market/1.
:- discontiguous prohibited_representation/1.
:- discontiguous prohibited_sensitive_operational_data/1.
:- discontiguous prohibited_sensitive_operational_data_exchange/1.
:- discontiguous prohibited_social_scoring_ai_system/1.
:- discontiguous prohibited_subliminal_manipulative_ai_system/1.
:- discontiguous prohibited_untargeted_facial_recognition_database_ai_system/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/1.
:- discontiguous prohibited_use_of_rt_rbi_in_public_space_for_law_enforcement/1.
:- discontiguous protection_of_reporting_person_applies/1.
:- discontiguous provenance/2.
:- discontiguous provided_by_union_law_explanation/1.
:- discontiguous provider_applies/1.
:- discontiguous provider_of_open_source_model/1.
:- discontiguous provider_or_prospective/1.
:- discontiguous put_into_service/2.
:- discontiguous qualified_alert_received/0.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.
:- discontiguous relevant_provider/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous renewable_once/1.
:- discontiguous reporting_infringement_applies/1.
:- discontiguous representative/1.
:- discontiguous request_access/2.
:- discontiguous request_information/2.
:- discontiguous required_accuracy/1.
:- discontiguous required_accuracy_information/1.
:- discontiguous required_accuracy_metrics_declared/1.
:- discontiguous required_advisory_forum/1.
:- discontiguous required_ai_system_identification/1.
:- discontiguous required_appeal_procedure_available/1.
:- discontiguous required_authorised_representative_information/1.
:- discontiguous required_automatic_logging/1.
:- discontiguous required_awareness_of_automation_bias/1.
:- discontiguous required_balanced_membership/1.
:- discontiguous required_broad_equal_access/1.
:- discontiguous required_certificate_identification/1.
:- discontiguous required_chair/1.
:- discontiguous required_change_information/1.
:- discontiguous required_common_specification_reference/1.
:- discontiguous required_complaint_content/1.
:- discontiguous required_compliance/1.
:- discontiguous required_compliance_accessibility_requirements/1.
:- discontiguous required_composition/1.
:- discontiguous required_computational_resources/1.
:- discontiguous required_condition_a/1.
:- discontiguous required_condition_b/1.
:- discontiguous required_condition_c/1.
:- discontiguous required_condition_d/1.
:- discontiguous required_condition_e/1.
:- discontiguous required_condition_f/1.
:- discontiguous required_condition_g/1.
:- discontiguous required_condition_h/1.
:- discontiguous required_condition_i/1.
:- discontiguous required_condition_j/1.
:- discontiguous required_confidential_treatment/1.
:- discontiguous required_confidentiality/1.
:- discontiguous required_conformity_assessment/1.
:- discontiguous required_conformity_assessment_procedure_description/1.
:- discontiguous required_conformity_statement/1.
:- discontiguous required_consistent_performance/1.
:- discontiguous required_cooperation_between_notifying_authorities/1.
:- discontiguous required_copyright_policy/1.
:- discontiguous required_cybersecurity/1.
:- discontiguous required_cybersecurity_measures/1.
:- discontiguous required_data_governance/1.
:- discontiguous required_decide_not_use/1.
:- discontiguous required_declaration_issue_details/1.
:- discontiguous required_digital_ce_marking/1.
:- discontiguous required_error_free/1.
:- discontiguous required_expert_condition/1.
:- discontiguous required_expert_selection/1.
:- discontiguous required_expertise_of_competent_personnel/1.
:- discontiguous required_facilitate_compliance/1.
:- discontiguous required_facilitate_development_of_tools/1.
:- discontiguous required_facilitate_involvement/1.
:- discontiguous required_fee_payment/1.
:- discontiguous required_feedback_loop_mitigation/1.
:- discontiguous required_flexibility_for_nca/1.
:- discontiguous required_free_of_charge_for_smes/1.
:- discontiguous required_gdpr_compliance_statement/1.
:- discontiguous required_general_principles/1.
:- discontiguous required_geographical_context/1.
:- discontiguous required_harmonised_standard_reference/1.
:- discontiguous required_human_oversight_capability/1.
:- discontiguous required_human_oversight_measures/1.
:- discontiguous required_impartiality/1.
:- discontiguous required_indication_of_other_law/1.
:- discontiguous required_information_annex_5/1.
:- discontiguous required_information_for_integrators/1.
:- discontiguous required_input_data_specifications/1.
:- discontiguous required_intended_purpose/1.
:- discontiguous required_interpret_output/1.
:- discontiguous required_interpretation_information/1.
:- discontiguous required_intervene_stop/1.
:- discontiguous required_limited_period/1.
:- discontiguous required_log_mechanisms/1.
:- discontiguous required_logging_for_identifying_risk/1.
:- discontiguous required_logging_for_operation_monitoring/1.
:- discontiguous required_logging_for_post_market_monitoring/1.
:- discontiguous required_logging_input_data_match/1.
:- discontiguous required_logging_period_of_use/1.
:- discontiguous required_logging_reference_database/1.
:- discontiguous required_logging_verifier_identification/1.
:- discontiguous required_market_surveillance_authority/1.
:- discontiguous required_meets_requirements_art_31/1.
:- discontiguous required_national_registration/1.
:- discontiguous required_notified_body_information/1.
:- discontiguous required_objectivity/1.
:- discontiguous required_open_access/1.
:- discontiguous required_oversight_measure_a/1.
:- discontiguous required_oversight_measure_b/1.
:- discontiguous required_performance_on_persons/1.
:- discontiguous required_personal_data_limit/1.
:- discontiguous required_provider_identity/1.
:- discontiguous required_provider_information/1.
:- discontiguous required_provider_responsibility_statement/1.
:- discontiguous required_qualified_alert/1.
:- discontiguous required_quality_criteria/1.
:- discontiguous required_quality_management_aspect/1.
:- discontiguous required_redundancy_solution/1.
:- discontiguous required_registration_information/2.
:- discontiguous required_representativeness/1.
:- discontiguous required_resilience/1.
:- discontiguous required_responsible_person_details/1.
:- discontiguous required_risk_information/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous required_robustness/1.
:- discontiguous required_secure_non_public_section/1.
:- discontiguous required_separate_verification/1.
:- discontiguous required_simple_intelligible_process/1.
:- discontiguous required_step_a/1.
:- discontiguous required_step_b/1.
:- discontiguous required_step_c/1.
:- discontiguous required_step_d/1.
:- discontiguous required_system_characteristics/1.
:- discontiguous required_technical_and_organisational_measures/1.
:- discontiguous required_technical_capabilities/1.
:- discontiguous required_technical_documentation/1.
:- discontiguous required_training_summary/1.
:- discontiguous required_translation/1.
:- discontiguous required_transparency_information/1.
:- discontiguous required_understand_capacities/1.
:- discontiguous required_visible_affixation/1.
:- discontiguous scientific_panel/1.
:- discontiguous significant_risk_of_harm/1.
:- discontiguous systemic_risk/1.
:- discontiguous term_of_office/2.
:- discontiguous through_ai_office/0.
:- discontiguous union_harmonisation_legislation_applies/1.
:- discontiguous union_legislative_act_applies/1.
:- discontiguous years/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic ability_to_carry_out_tasks/1.
:- dynamic accreditation_certificate/1.
:- dynamic act_concerns_safety_component_ai_system/1.
:- dynamic activity_pursuant_to_art_8_par_1/1.
:- dynamic additional_tests/1.
:- dynamic adheres_to_code_of_practice/1.
:- dynamic adopt_delegated_act/2.
:- dynamic adopting_detailed_measures/1.
:- dynamic adopting_technical_specifications_and_testing_standards_art_8_par_2_3/1.
:- dynamic adverse_impact_on_health_safety_fundamental_rights/1.
:- dynamic affected_person/1.
:- dynamic agreement/2.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic annex_1_ai_system/1.
:- dynamic annex_3_ai_system/1.
:- dynamic annex_3_pnt_1_a/1.
:- dynamic annex_3_pnt_2_applies/1.
:- dynamic annex_3_pnt_2_to_8/1.
:- dynamic annex_3_pnt_5_b_applies/2.
:- dynamic annex_3_pnt_5_c_applies/2.
:- dynamic applied_common_specification/2.
:- dynamic applied_harmonised_standard/2.
:- dynamic area_listed_in_annex_3/1.
:- dynamic area_of_ai_system/2.
:- dynamic arguments_not_substantiated/2.
:- dynamic art11_applies/1.
:- dynamic art_46_par_1_applies/1.
:- dynamic assessment_performed/2.
:- dynamic assistive_function_applies/1.
:- dynamic audit_report/1.
:- dynamic authorisation_issued_by/2.
:- dynamic authorised_for_criminal_offences_applies/1.
:- dynamic authorised_representative/1.
:- dynamic automatically_generated_by/1.
:- dynamic aware_of_incident/2.
:- dynamic based_on_accreditation_certificate/1.
:- dynamic based_on_general_purpose_ai_model/1.
:- dynamic based_on_profiling/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic cannot_fulfill_with_non_personal_data/1.
:- dynamic causal_link_established/2.
:- dynamic ce_marking/1.
:- dynamic certificate/1.
:- dynamic certificate_of/2.
:- dynamic certificate_validity/2.
:- dynamic certified_under_cybersecurity_scheme_applies/1.
:- dynamic civil_protection_authority/1.
:- dynamic codes_of_conduct/1.
:- dynamic commission_considers_contrary/1.
:- dynamic commission_considers_justified/1.
:- dynamic commission_considers_unjustified/1.
:- dynamic commission_equivalent_capabilities/1.
:- dynamic committee/1.
:- dynamic common_specification/1.
:- dynamic common_specification_available/1.
:- dynamic competent_authority/1.
:- dynamic complaint/1.
:- dynamic compliance_assessed/1.
:- dynamic compliance_restored_by_provider/2.
:- dynamic complies_with_harmonised_standard/1.
:- dynamic component_of_large_scale_it_system/1.
:- dynamic concerns/2.
:- dynamic condition_access_to_source_code_necessary/1.
:- dynamic condition_bias_detection_not_fulfilled_by_other_data/1.
:- dynamic condition_deletion_after_bias_correction/1.
:- dynamic condition_no_transfer/1.
:- dynamic condition_records_of_processing/1.
:- dynamic condition_security_measures/1.
:- dynamic condition_technical_limitations/1.
:- dynamic condition_testing_exhausted/1.
:- dynamic confidentiality_obligation_applies/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conforms_to_common_specifications/1.
:- dynamic considered_relevant/2.
:- dynamic considers_not_in_conformity/2.
:- dynamic contains_minimum_information/2.
:- dynamic context_workplace_education/1.
:- dynamic controlled_by_prospective_provider/1.
:- dynamic creates_or_expands_facial_recognition_database/1.
:- dynamic criteria_set_in_annex_13/0.
:- dynamic critical_infrastructure/1.
:- dynamic data_set/1.
:- dynamic death_of_person/1.
:- dynamic decision/1.
:- dynamic decision_affects/2.
:- dynamic declaration_of_conformity/1.
:- dynamic declares_interest/1.
:- dynamic deep_fake/1.
:- dynamic delegated_act/1.
:- dynamic delegated_act_adoption_applies/1.
:- dynamic deleted_when_termination_or_retention_end/1.
:- dynamic demonstrates_conformity_with_criteria/2.
:- dynamic deployer/1.
:- dynamic deployer_of_high_risk_ai_system/2.
:- dynamic description_kept_with_testing_results/1.
:- dynamic design_and_development_process/1.
:- dynamic designated_systemic_risk/1.
:- dynamic developed_for_public_interest/2.
:- dynamic distributor/1.
:- dynamic documentation_insufficient/1.
:- dynamic documentation_under_financial_services_law/1.
:- dynamic downstream_provider/1.
:- dynamic effective_monitoring_mechanisms/1.
:- dynamic element_changed/2.
:- dynamic eligibility_conditions_fulfilled/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employs_subliminal_techniques/1.
:- dynamic enables_understanding/1.
:- dynamic equivalent_compliance/1.
:- dynamic established_in/2.
:- dynamic established_in_third_country/1.
:- dynamic established_in_union/1.
:- dynamic eu_database_info_applies/1.
:- dynamic evaluation_finds_high_risk_applies/1.
:- dynamic exceptional_reason/1.
:- dynamic exempt_high_risk_ai_system/1.
:- dynamic exercising_power_to_monitor_art80_applies/1.
:- dynamic expertise_in_ai/1.
:- dynamic exploits_vulnerability/1.
:- dynamic failed_to_comply_measure/1.
:- dynamic failed_to_comply_request/1.
:- dynamic failed_to_make_available/1.
:- dynamic finalised_by/1.
:- dynamic financial_institution/1.
:- dynamic floating_point_operation/1.
:- dynamic follows_template/2.
:- dynamic free_open_source_licence/2.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_model_provider/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content_applies/1.
:- dynamic generates_text_applies/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_exists/1.
:- dynamic harmonised_standard_restricted/1.
:- dynamic has_ground_to_consider_infringement/1.
:- dynamic has_training_computation/2.
:- dynamic high_risk_identified/1.
:- dynamic human_oversight_person/1.
:- dynamic human_review_applies/1.
:- dynamic implementing_act_adoption_applies/1.
:- dynamic implementing_acts/1.
:- dynamic importer/1.
:- dynamic inability_to_access_information/2.
:- dynamic inadequate_corrective_action_within_period_applies/1.
:- dynamic incident_occurs_in_member_state/2.
:- dynamic includes_description/1.
:- dynamic includes_other_information/1.
:- dynamic includes_point_of_contact/1.
:- dynamic independent_expert/1.
:- dynamic independent_from_provider/1.
:- dynamic infers_emotions/1.
:- dynamic infers_race_political/1.
:- dynamic info_registered_under/2.
:- dynamic information_obtained_art_55_applies/1.
:- dynamic informed_by/2.
:- dynamic informed_consent/1.
:- dynamic informs_to_commission/1.
:- dynamic informs_to_other_member_states/1.
:- dynamic infringed_provisions/1.
:- dynamic initial_provider_of/2.
:- dynamic initial_provider_specified_no_change/2.
:- dynamic input_data/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_for_law_enforcement/1.
:- dynamic intended_for_medical_or_safety/1.
:- dynamic intended_for_public_authorities/1.
:- dynamic intended_purpose/1.
:- dynamic intentional_or_negligent/1.
:- dynamic interacts_directly_with_natural_persons_applies/1.
:- dynamic involved_in_testing/2.
:- dynamic isolated_protected_environment/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_dataset_labeling/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic law_enforcement_related/1.
:- dynamic lawfully_collected_for_other_purposes/1.
:- dynamic leads_to_unfavourable_treatment/1.
:- dynamic likely_causes_significant_harm/1.
:- dynamic linked_enterprise_applies/1.
:- dynamic logs_kept_for_participation_duration/1.
:- dynamic logs_under_control/2.
:- dynamic made_all_appropriate_efforts/2.
:- dynamic made_available_on_union_market/2.
:- dynamic makes_risk_assessment_of_person/1.
:- dynamic makes_substantial_modification_high_risk_ai_system/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate_received/2.
:- dynamic manipulative_or_deceptive/1.
:- dynamic market_surveillance_authority/1.
:- dynamic materially_distorts_behavior/1.
:- dynamic measure_concerns/2.
:- dynamic meets_conditions_art_51/1.
:- dynamic meets_requirements_art_31/1.
:- dynamic member_state/1.
:- dynamic member_state_fails_to_correct/1.
:- dynamic microenterprise/1.
:- dynamic misclassification_to_circumvent_applies/1.
:- dynamic modifies_intended_purpose_ai_system/2.
:- dynamic national_competent_authority/1.
:- dynamic national_public_authority/1.
:- dynamic natural_or_legal_person/1.
:- dynamic natural_or_legal_person_applies/1.
:- dynamic necessary_for_requirements/2.
:- dynamic no_objection/2.
:- dynamic no_significant_risk/1.
:- dynamic non_compliance_attributed_to_shortcomings/1.
:- dynamic non_compliance_details/1.
:- dynamic non_compliance_within_period_applies/1.
:- dynamic non_compliant/1.
:- dynamic non_compliant/2.
:- dynamic non_conformity/1.
:- dynamic non_high_risk_classified_by_provider_applies/1.
:- dynamic non_personal_data/1.
:- dynamic not_adequate_assessment/0.
:- dynamic not_affects_measures_or_decisions/1.
:- dynamic not_affects_rights/1.
:- dynamic not_decrease_protection/1.
:- dynamic not_fulfil_requirements/1.
:- dynamic not_sensitive_operational_data/1.
:- dynamic not_shared_outside_sandbox/1.
:- dynamic not_substantially_alter_input_applies/1.
:- dynamic notified/1.
:- dynamic notifying_authority/1.
:- dynamic objection_issued/1.
:- dynamic objection_raised/2.
:- dynamic objection_raised/3.
:- dynamic objective_localisation_of_suspect/1.
:- dynamic objective_prevention_imminent_threat/1.
:- dynamic objective_targeted_search/1.
:- dynamic obtained_information/2.
:- dynamic obvious_applies/1.
:- dynamic offers_commitments_to_implement_mitigation_measures/1.
:- dynamic only_authorised_persons_have_access/1.
:- dynamic open_source_license/1.
:- dynamic operator_fails_to_act/2.
:- dynamic operator_of_system/2.
:- dynamic organisation/1.
:- dynamic other_member_state/1.
:- dynamic other_union_law/1.
:- dynamic partner_enterprise_applies/1.
:- dynamic performance_of_ai_system/1.
:- dynamic periodic_audit/1.
:- dynamic personal_data/1.
:- dynamic placed_on_market_before/2.
:- dynamic placed_on_market_under_name_of_product_manufacturer/2.
:- dynamic placing_on_market/1.
:- dynamic poses_concrete_identifiable_risk_at_union_level/1.
:- dynamic post_market_monitoring/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic pre_determined_change/1.
:- dynamic presents_risk/1.
:- dynamic private_entity_public_service_applies/1.
:- dynamic processes_personal_data/1.
:- dynamic product_contains_ai_system/2.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic prospective_deployer/1.
:- dynamic prospective_provider/1.
:- dynamic protected_by_measures/1.
:- dynamic provided_digitally/1.
:- dynamic provider/1.
:- dynamic provider_applied_common_specification/2.
:- dynamic provider_applied_harmonised_standard/2.
:- dynamic provider_applied_only_restricted_part/2.
:- dynamic provider_applied_partial_harmonised_standard/2.
:- dynamic provider_bankrupt_or_ceases/1.
:- dynamic provider_consents_public/1.
:- dynamic provider_contrary_obligations/1.
:- dynamic provider_noncompliant/1.
:- dynamic provider_of_high_risk_ai_system/2.
:- dynamic provider_unable_to_demonstrate_no_risk/2.
:- dynamic provides/2.
:- dynamic provides_general_purpose_ai_model/2.
:- dynamic provides_high_risk_ai_system/2.
:- dynamic provides_upon_request/2.
:- dynamic provisional_measure_taken/2.
:- dynamic public_authority/1.
:- dynamic public_authority_applies/1.
:- dynamic public_interest_area/1.
:- dynamic public_interest_purpose_applies/1.
:- dynamic public_law_body_applies/1.
:- dynamic publicly_accessible_space/1.
:- dynamic published_in_official_journal/1.
:- dynamic published_references_applies/1.
:- dynamic put_into_service_under_name_of_product_manufacturer/2.
:- dynamic puts_name_on_high_risk_ai_system/2.
:- dynamic putting_into_service/1.
:- dynamic quality_management_system/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonable_likelihood/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request_by/1.
:- dynamic reasons_to_doubt_competence/1.
:- dynamic recall_of_ai_system/1.
:- dynamic receipt_of_information/2.
:- dynamic receives_notification/2.
:- dynamic related_to_high_risk_ai_system/1.
:- dynamic relevant_change_occurs/1.
:- dynamic remote/1.
:- dynamic reported/2.
:- dynamic represents/2.
:- dynamic request_contains/3.
:- dynamic request_made/2.
:- dynamic requirement_art_31_applies/1.
:- dynamic response_mechanisms/1.
:- dynamic risk/1.
:- dynamic risk_equivalent_or_greater/1.
:- dynamic risk_present/1.
:- dynamic risk_to_fundamental_rights_identified/1.
:- dynamic risk_within_art_79_par_1/1.
:- dynamic safety_component/1.
:- dynamic safety_component_ai_system/1.
:- dynamic same_provider_developed/2.
:- dynamic sandbox_plan/1.
:- dynamic selection_criteria_met/1.
:- dynamic sensitive_information_obtained/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_type_b/1.
:- dynamic share_allowed_under_union_law/1.
:- dynamic significant_design_change/2.
:- dynamic six_months_after_designation/1.
:- dynamic sme_applies/1.
:- dynamic socially_scoring_ai_system/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specific_high_risk_ai_system/1.
:- dynamic specific_procedural_rights/1.
:- dynamic standard_covers_requirement/2.
:- dynamic state_of_the_art_applies/1.
:- dynamic storage_conditions_not_jeopardise/1.
:- dynamic subcontractor/2.
:- dynamic subject/1.
:- dynamic subsidiary/2.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason/2.
:- dynamic sufficient_reason_to_consider_applies/1.
:- dynamic sufficient_reason_to_consider_non_compliant/2.
:- dynamic summary_published/1.
:- dynamic supervised_in_sandbox/1.
:- dynamic supervises_fundamental_rights/1.
:- dynamic supplies_for_high_risk_ai_system/2.
:- dynamic supports_human_assessment/1.
:- dynamic suspect_causal_link/2.
:- dynamic systemic_risk_applies/1.
:- dynamic systemic_risk_present/1.
:- dynamic technical_documentation/1.
:- dynamic template_fundamental_rights_assessment/1.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic third_country_conformity_assessment_body/1.
:- dynamic third_party/1.
:- dynamic third_party_applies/1.
:- dynamic timeline_prescribed_by_msa/2.
:- dynamic trained_and_tested_on_reflective_data_applies/1.
:- dynamic training_data/1.
:- dynamic unable_to_conclude_investigation/2.
:- dynamic under_control/2.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_entity/1.
:- dynamic untargeted_scraping/1.
:- dynamic urgent_situation/1.
:- dynamic use_not_restricted_to_national_territory_applies/1.
:- dynamic uses_data_set/2.
:- dynamic uses_training_technique/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_15_days/1.
:- dynamic within_days/3.

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
declared(adheres_to_code_of_practice/1, 'provider adheres to an approved code of practice', 'reconciled').
declared(annex_3_ai_system/1, 'AI system listed in annex 3', 'reconciled').
declared(annex_3_pnt_1_a/1, 'systems referred to in annex 3 point 1 (a)', 'reconciled').
declared(complies_with_harmonised_standard/1, 'provider complies with a European harmonised standard', 'reconciled').
declared(condition_b/1, 'Condition (b) for adopting common specifications is satisfied', 'reconciled').
declared(general_purpose_ai_model_provider/1, 'provider of a general‑purpose AI model', 'reconciled').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'reconciled').
declared(meets_requirements_art_31/1, 'meets the requirements laid down in article 31', 'reconciled').
declared(member_state/1, 'Member State of the Union', 'reconciled').
declared(must_adopt/2, 'Commission shall adopt implementing acts in accordance with the examination procedure', 'reconciled').
declared(must_designate_or_establish/2, 'Member State shall designate or establish a notifying authority', 'reconciled').
declared(must_make_publicly_available/2, 'obligation to make a list publicly available', 'reconciled').
declared(obtained_information/2, 'information obtained by authority', 'reconciled').
declared(required_risk_management_system/1, 'risk management system required', 'reconciled').
declared(safety_component_ai_system/1, 'AI system that is a safety component', 'reconciled').
declared(union_harmonisation_legislation_applies/1, 'legislation listed in annex I', 'reconciled').
alias(adheres_to_approved_code_of_practice/1, adheres_to_code_of_practice/1).
alias(listed_in_annex_3/1, annex_3_ai_system/1).
alias(annex_3_pnt_1_a_applies/1, annex_3_pnt_1_a/1).
alias(complies_with_european_harmonised_standard/1, complies_with_harmonised_standard/1).
alias(required_condition_b/1, condition_b/1).
alias(provides_general_purpose_ai_model/1, general_purpose_ai_model_provider/1).
alias(provider_of_general_purpose_ai_model/1, general_purpose_ai_model_provider/1).
alias(required_high_risk_ai_system/1, high_risk_ai_system/1).
alias(high_risk_ai_system_applies/1, high_risk_ai_system/1).
alias(required_requirements_of_art_31/1, meets_requirements_art_31/1).
alias(member_state_applies/1, member_state/1).
alias(must_adopt_in_accordance/2, must_adopt/2).
alias(must_establish_or_designate/2, must_designate_or_establish/2).
alias(must_make_list_publicly_available/2, must_make_publicly_available/2).
alias(information_obtained_by/2, obtained_information/2).
alias(risk_management_system/1, required_risk_management_system/1).
alias(act_concerns_safety_component_ai_system/1, safety_component_ai_system/1).
alias(listed_in_union_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(covered_by_union_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(related_to_product_covered_by_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).

% ==== celex:32024R1689/oj#art_1 ====
declared(objective_improve_internal_market/1, 'improve the functioning of the internal market', 'celex:32024R1689/oj#art_1').
declared(objective_promote_human_centric_trustworthy_ai/1, 'promote the uptake of human‑centric and trustworthy AI', 'celex:32024R1689/oj#art_1').
declared(objective_protect_health_safety_fundamental_rights/1, 'ensure a high level of protection of health, safety and fundamental rights', 'celex:32024R1689/oj#art_1').
declared(objective_support_innovation/1, 'support innovation', 'celex:32024R1689/oj#art_1').
declared(objective_focus_smes/1, 'focus on SMEs, including start‑ups', 'celex:32024R1689/oj#art_1').
declared(objective_harmonised_rules_for_placing_on_market/1, 'harmonised rules for the placing on the market of AI systems', 'celex:32024R1689/oj#art_1').
declared(objective_harmonised_rules_for_putting_into_service/1, 'harmonised rules for the putting into service of AI systems', 'celex:32024R1689/oj#art_1').
declared(objective_harmonised_rules_for_use_of_ai_systems/1, 'harmonised rules for the use of AI systems', 'celex:32024R1689/oj#art_1').
declared(objective_prohibitions_of_ai_practices/1, 'prohibitions of certain AI practices', 'celex:32024R1689/oj#art_1').
declared(objective_specific_requirements_for_high_risk_ai_systems/1, 'specific requirements for high‑risk AI systems', 'celex:32024R1689/oj#art_1').
declared(objective_obligations_for_operators_of_high_risk_ai_systems/1, 'obligations for operators of high‑risk AI systems', 'celex:32024R1689/oj#art_1').
declared(objective_harmonised_transparency_rules/1, 'harmonised transparency rules for certain AI systems', 'celex:32024R1689/oj#art_1').
declared(objective_harmonised_rules_for_general_purpose_ai_models/1, 'harmonised rules for the placing on the market of general‑purpose AI models', 'celex:32024R1689/oj#art_1').
declared(objective_rules_on_market_monitoring_surveillance_governance_enforcement/1, 'rules on market monitoring, market surveillance, governance and enforcement', 'celex:32024R1689/oj#art_1').
declared(objective_measures_to_support_innovation/1, 'measures to support innovation, with focus on SMEs', 'celex:32024R1689/oj#art_1').
objective_improve_internal_market('celex:32024R1689/oj#art_1').
objective_promote_human_centric_trustworthy_ai('celex:32024R1689/oj#art_1').
objective_protect_health_safety_fundamental_rights('celex:32024R1689/oj#art_1').
objective_support_innovation('celex:32024R1689/oj#art_1').
objective_focus_smes('celex:32024R1689/oj#art_1').
objective_harmonised_rules_for_placing_on_market('celex:32024R1689/oj#art_1').
objective_harmonised_rules_for_putting_into_service('celex:32024R1689/oj#art_1').
objective_harmonised_rules_for_use_of_ai_systems('celex:32024R1689/oj#art_1').
objective_prohibitions_of_ai_practices('celex:32024R1689/oj#art_1').
objective_specific_requirements_for_high_risk_ai_systems('celex:32024R1689/oj#art_1').
objective_obligations_for_operators_of_high_risk_ai_systems('celex:32024R1689/oj#art_1').
objective_harmonised_transparency_rules('celex:32024R1689/oj#art_1').
objective_harmonised_rules_for_general_purpose_ai_models('celex:32024R1689/oj#art_1').
objective_rules_on_market_monitoring_surveillance_governance_enforcement('celex:32024R1689/oj#art_1').
objective_measures_to_support_innovation('celex:32024R1689/oj#art_1').
provenance(objective_improve_internal_market/1, 'celex:32024R1689/oj#art_1').
provenance(objective_promote_human_centric_trustworthy_ai/1, 'celex:32024R1689/oj#art_1').
provenance(objective_protect_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_1').
provenance(objective_support_innovation/1, 'celex:32024R1689/oj#art_1').
provenance(objective_focus_smes/1, 'celex:32024R1689/oj#art_1').
provenance(objective_harmonised_rules_for_placing_on_market/1, 'celex:32024R1689/oj#art_1').
provenance(objective_harmonised_rules_for_putting_into_service/1, 'celex:32024R1689/oj#art_1').
provenance(objective_harmonised_rules_for_use_of_ai_systems/1, 'celex:32024R1689/oj#art_1').
provenance(objective_prohibitions_of_ai_practices/1, 'celex:32024R1689/oj#art_1').
provenance(objective_specific_requirements_for_high_risk_ai_systems/1, 'celex:32024R1689/oj#art_1').
provenance(objective_obligations_for_operators_of_high_risk_ai_systems/1, 'celex:32024R1689/oj#art_1').
provenance(objective_harmonised_transparency_rules/1, 'celex:32024R1689/oj#art_1').
provenance(objective_harmonised_rules_for_general_purpose_ai_models/1, 'celex:32024R1689/oj#art_1').
provenance(objective_rules_on_market_monitoring_surveillance_governance_enforcement/1, 'celex:32024R1689/oj#art_1').
provenance(objective_measures_to_support_innovation/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(affected_person/1, 'natural person affected by an AI system', 'celex:32024R1689/oj#art_2').
provider_applies(P) :-
    provider(P),
    (   placing_on_market(P)
    ;   putting_into_service(P)
    ;   (   general_purpose_ai_model_provider(P),
        placing_on_market(P)
        )
    ).
provenance(provider_applies/1, 'celex:32024R1689/oj#art_2').
deployer_applies(D) :-
    deployer(D).
provenance(deployer_applies/1, 'celex:32024R1689/oj#art_2').
importer_applies(I) :-
    importer(I).
provenance(importer_applies/1, 'celex:32024R1689/oj#art_2').
distributor_applies(Dist) :-
    distributor(Dist).
provenance(distributor_applies/1, 'celex:32024R1689/oj#art_2').
product_manufacturer_applies(M) :-
    product_manufacturer(M),
    (   placing_on_market(M)
    ;   putting_into_service(M)
    ).
provenance(product_manufacturer_applies/1, 'celex:32024R1689/oj#art_2').
authorised_representative_applies(AR) :-
    authorised_representative(AR).
provenance(authorised_representative_applies/1, 'celex:32024R1689/oj#art_2').
affected_person_applies(AP) :-
    affected_person(AP).
provenance(affected_person_applies/1, 'celex:32024R1689/oj#art_2').
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
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').

% ==== celex:32024R1689/oj#art_4 ====
declared(ensure_ai_literacy/2, 'ensure sufficient AI literacy of staff and other persons dealing with operation and use of AI systems', 'celex:32024R1689/oj#art_4').
ensure_ai_literacy(Actor, staff_and_others(Actor)) :-
    provider(Actor).
ensure_ai_literacy(Actor, staff_and_others(Actor)) :-
    deployer(Actor).
provenance(ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(employs_subliminal_techniques/1, 'AI system uses subliminal techniques beyond consciousness', 'art_5_a').
declared(manipulative_or_deceptive/1, 'AI system employs purposefully manipulative or deceptive techniques', 'art_5_a').
declared(materially_distorts_behavior/1, 'AI system materially distorts the behaviour of a person or group', 'art_5_a').
declared(likely_causes_significant_harm/1, 'AI system is reasonably likely to cause significant harm', 'art_5_a').
declared(exploits_vulnerability/1, 'AI system exploits vulnerabilities of a natural person or specific group', 'art_5_b').
declared(socially_scoring_ai_system/1, 'AI system evaluates or classifies persons over time based on social behaviour or inferred characteristics', 'art_5_c').
declared(leads_to_unfavourable_treatment/1, 'AI system leads to detrimental or unfavourable treatment', 'art_5_c').
declared(makes_risk_assessment_of_person/1, 'AI system makes risk assessments of natural persons for criminal offence prediction', 'art_5_d').
declared(based_on_profiling/1, 'AI system bases assessment solely on profiling or personality traits', 'art_5_d').
declared(supports_human_assessment/1, 'AI system is used to support human assessment of criminal involvement', 'art_5_d').
declared(creates_or_expands_facial_recognition_database/1, 'AI system creates or expands facial‑recognition databases via untargeted scraping', 'art_5_e').
declared(untargeted_scraping/1, 'AI system obtains facial images untargeted from internet or CCTV', 'art_5_e').
declared(infers_emotions/1, 'AI system infers emotions of a natural person', 'art_5_f').
declared(context_workplace_education/1, 'Inference takes place in workplace or education institutions', 'art_5_f').
declared(intended_for_medical_or_safety/1, 'Use is intended for medical or safety reasons', 'art_5_f').
declared(biometric_categorisation_system/1, 'AI system categorises persons based on biometric data', 'art_5_g').
declared(infers_race_political/1, 'System deduces race, political opinions, trade‑union membership, religious beliefs, sex life or sexual orientation', 'art_5_g').
declared(law_enforcement_dataset_labeling/1, 'Labelling or filtering of lawfully acquired biometric datasets for law‑enforcement', 'art_5_g').
declared(law_enforcement_purpose/1, 'Use for law‑enforcement purposes', 'art_5_h').
declared(objective_targeted_search/1, 'Targeted search for victims of abduction, trafficking or sexual exploitation', 'art_5_h_i').
declared(objective_prevention_imminent_threat/1, 'Prevention of a substantial and imminent threat to life or safety, or a terrorist attack', 'art_5_h_ii').
declared(objective_localisation_of_suspect/1, 'Localisation or identification of a suspect for criminal investigation or prosecution', 'art_5_h_iii').
declared(permitted_objective/2, 'Use of real‑time remote biometric ID system is permitted for the listed objective', 'art_5_h').
declared(must_submit/2, 'Authority must submit object', 'art_5_6').
declared(must_publish/2, 'Commission must publish object', 'art_5_7').
declared(must_provide/2, 'Commission must provide object', 'art_5_6').
prohibited_subliminal_manipulative_ai_system(S) :-
    ai_system(S),
    employs_subliminal_techniques(S),
    manipulative_or_deceptive(S),
    materially_distorts_behavior(S),
    likely_causes_significant_harm(S).
prohibited_exploit_vulnerable_person_ai_system(S) :-
    ai_system(S),
    exploits_vulnerability(S),
    likely_causes_significant_harm(S).
prohibited_social_scoring_ai_system(S) :-
    ai_system(S),
    socially_scoring_ai_system(S),
    leads_to_unfavourable_treatment(S).
prohibited_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    makes_risk_assessment_of_person(S),
    based_on_profiling(S),
    likely_causes_significant_harm(S),
    \+ supports_human_assessment(S).
prohibited_untargeted_facial_recognition_database_ai_system(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping(S).
prohibited_emotion_inference_ai_system(S) :-
    ai_system(S),
    infers_emotions(S),
    context_workplace_education(S),
    \+ intended_for_medical_or_safety(S).
prohibited_biometric_categorisation_race_political_ai_system(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    infers_race_political(S).
prohibited_use_of_rt_rbi_in_public_space_for_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    publicly_accessible_space(_),
    \+ permitted_objective(S, _).
permitted_human_assisted_criminal_risk_assessment_ai_system(S) :-
    ai_system(S),
    supports_human_assessment(S).
permitted_medical_or_safety_emotion_inference_ai_system(S) :-
    ai_system(S),
    infers_emotions(S),
    intended_for_medical_or_safety(S).
permitted_law_enforcement_biometric_dataset_labeling(S) :-
    ai_system(S),
    law_enforcement_dataset_labeling(S).
permitted_objective(S, targeted_search) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    objective_targeted_search(_).
permitted_objective(S, prevention_imminent_threat) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    objective_prevention_imminent_threat(_).
permitted_objective(S, localisation_of_suspect) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    objective_localisation_of_suspect(_).
must_submit(Authority, annual_report(S)) :-
    national_market_surveillance_authority(Authority);
    national_data_protection_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    law_enforcement_purpose(S),
    notified_use(Authority, S).
must_provide(Commission, report_template) :-
    commission(Commission).
must_publish(Commission, aggregated_annual_report) :-
    commission(Commission).
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploit_vulnerable_person_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_recognition_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_race_political_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_use_of_rt_rbi_in_public_space_for_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_human_assisted_criminal_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_medical_or_safety_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_biometric_dataset_labeling/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_objective/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish/2, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
condition_a(S) :-
    safety_component_ai_system(S) ;
    union_harmonisation_legislation_applies(S).
required_conformity_assessment(S) :-
    conformity_assessment(S),
    union_harmonisation_legislation_applies(S).
condition_b(S) :-
    required_conformity_assessment(S).
high_risk_ai_system(S) :-
    condition_a(S),
    condition_b(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    significant_risk_of_harm(S),
    \+ low_risk_condition(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    performs_profiling(S).
low_risk_condition(S) :-
    narrow_procedural_task(S) ;
    improve_human_activity_result(S) ;
    detect_decision_patterns_without_replacing_human_assessment(S) ;
    preparatory_task_for_assessment_use_cases(S).
must_document_assessment(Provider, assessment(S)) :-
    provider(Provider),
    annex_3_ai_system(S),
    consider_not_high_risk(Provider, S).
must_register(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    consider_not_high_risk(Provider, S).
must_provide_documentation(Provider, assessment(S)) :-
    provider(Provider),
    annex_3_ai_system(S),
    consider_not_high_risk(Provider, S).
must_provide(commission, guidelines(art_6, deadline(date(2026,2,2)))).
must_adopt(commission, delegated_act(amend_paragraph_3_add_conditions)) :-
    concrete_reliable_evidence(S),
    annex_3_ai_system(S),
    \+ significant_risk_of_harm(S).
must_adopt(commission, delegated_act(amend_paragraph_3_delete_conditions)) :-
    concrete_reliable_evidence_of_necessity(S).
narrow_procedural_task(_).
improve_human_activity_result(_).
detect_decision_patterns_without_replacing_human_assessment(_).
preparatory_task_for_assessment_use_cases(_).
performs_profiling(_).
significant_risk_of_harm(_).
consider_not_high_risk(_, _).
concrete_reliable_evidence(_).
concrete_reliable_evidence_of_necessity(_).
provenance(condition_a/1, 'celex:32024R1689/oj#art_6').
provenance(required_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(condition_b/1, 'celex:32024R1689/oj#art_6').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(low_risk_condition/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improve_human_activity_result/1, 'celex:32024R1689/oj#art_6').
provenance(detect_decision_patterns_without_replacing_human_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(preparatory_task_for_assessment_use_cases/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_6').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(consider_not_high_risk/2, 'celex:32024R1689/oj#art_6').
provenance(concrete_reliable_evidence/1, 'celex:32024R1689/oj#art_6').
provenance(concrete_reliable_evidence_of_necessity/1, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_7 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_7').
declared(area_listed_in_annex_3/1, 'AI system intended for an area listed in annex 3', 'celex:32024R1689/oj#art_7').
declared(risk_equivalent_or_greater/1, 'Risk posed by AI system is equivalent to or greater than that of existing high‑risk AI systems', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk/1, 'AI system no longer poses any significant risk to fundamental rights, health or safety', 'celex:32024R1689/oj#art_7').
declared(not_decrease_protection/1, 'Removal does not decrease overall level of protection under Union law', 'celex:32024R1689/oj#art_7').
declared(permitted_adopt_delegated_act/1, 'Commission may adopt delegated act', 'celex:32024R1689/oj#art_7').
declared(objective_assessment_criterion/1, 'Criterion taken into account when assessing condition', 'celex:32024R1689/oj#art_7').
permitted_adopt_delegated_act(adopt_delegated_act(Commission, amendment(annex_3, add_or_modify_use_cases(S)))) :-
    commission(Commission),
    high_risk_ai_system(S),
    area_listed_in_annex_3(S),
    risk_equivalent_or_greater(S).
provenance(permitted_adopt_delegated_act/1, 'celex:32024R1689/oj#art_7').
permitted_adopt_delegated_act(remove_high_risk_ai_system(Commission, S)) :-
    commission(Commission),
    high_risk_ai_system(S),
    no_significant_risk(S),
    not_decrease_protection(S).
objective_assessment_criterion(intended_purpose).
objective_assessment_criterion(extent_of_use_or_likelihood_of_use).
objective_assessment_criterion(data_nature_and_amount).
objective_assessment_criterion(autonomy_and_human_override).
objective_assessment_criterion(past_harm_or_adverse_impact).
objective_assessment_criterion(potential_extent_of_harm_or_impact).
objective_assessment_criterion(dependence_of_affected_persons).
objective_assessment_criterion(imbalance_of_power_or_vulnerability).
objective_assessment_criterion(corrigibility_or_reversibility).
objective_assessment_criterion(magnitude_and_likelihood_of_benefit).
objective_assessment_criterion(existing_union_law_measures).
provenance(objective_assessment_criterion/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(required_compliance/1, 'high‑risk AI system complies with laid‑down requirements', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/2, 'product contains the given AI system', 'celex:32024R1689/oj#art_8').
declared(state_of_the_art_applies/1, 'state of the art on AI is taken into account', 'celex:32024R1689/oj#art_8').
declared(permitted_integration_of_testing_and_reporting/1, 'provider may integrate testing and reporting into existing documentation', 'celex:32024R1689/oj#art_8').
required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    state_of_the_art_applies(S),
    required_risk_management_system(_R).
must_ensure_compliance(P, Prod) :-
    provider(P),
    product_contains_ai_system(Prod, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(_L).
permitted_integration_of_testing_and_reporting(P) :-
    provider(P),
    product_contains_ai_system(_, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(_L).
provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/1, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
must_establish(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_implement(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_document(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
must_maintain(Provider, risk_management_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
required_step_a(risk_management_system(System)) :-
    high_risk_ai_system(System).
required_step_b(risk_management_system(System)) :-
    high_risk_ai_system(System).
required_step_c(risk_management_system(System)) :-
    high_risk_ai_system(System).
required_step_d(risk_management_system(System)) :-
    high_risk_ai_system(System).
required_risk_management_system(System) :-
    high_risk_ai_system(System).
must_test(Provider, high_risk_ai_system(System)) :-
    provider(Provider),
    high_risk_ai_system(System).
permitted_testing_in_real_world_conditions(System) :-
    high_risk_ai_system(System).
must_test_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ placing_on_market(System).
must_consider_adverse_impact(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
permitted_combination_with_other_law(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(must_establish/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement/2, 'celex:32024R1689/oj#art_9').
provenance(must_document/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_9').
provenance(required_step_a/1, 'celex:32024R1689/oj#art_9').
provenance(required_step_b/1, 'celex:32024R1689/oj#art_9').
provenance(required_step_c/1, 'celex:32024R1689/oj#art_9').
provenance(required_step_d/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(must_test/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_before_market/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_adverse_impact/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_law/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
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
declared(data_set/1, 'data set used for training, validation or testing', 'derived').
declared(uses_data_set/2, 'system uses given data set', 'derived').
declared(uses_training_technique/1, 'system uses techniques involving training of AI models', 'derived').
declared(condition_bias_detection_not_fulfilled_by_other_data/1, 'bias detection cannot be effectively fulfilled by processing other data', 'derived').
declared(condition_technical_limitations/1, 'technical limitations on re‑use of special categories of personal data', 'derived').
declared(condition_security_measures/1, 'state‑of‑the‑art security and privacy‑preserving measures are applied', 'derived').
declared(condition_no_transfer/1, 'special categories of personal data are not transmitted, transferred or otherwise accessed by other parties', 'derived').
declared(condition_deletion_after_bias_correction/1, 'special categories of personal data are deleted once bias has been corrected or retention period ends', 'derived').
declared(condition_records_of_processing/1, 'records of processing include reasons why processing was strictly necessary', 'derived').
must_use_data_set(Provider, DataSet) :-
    provider(Provider),
    high_risk_ai_system(System),
    uses_data_set(System, DataSet),
    (   training_data(DataSet)
    ;   validation_data(DataSet)
    ;   testing_data(DataSet)
    ),
    required_quality_criteria(DataSet).
required_quality_criteria(DataSet) :-
    data_set(DataSet),
    required_data_governance(DataSet),
    required_representativeness(DataSet),
    required_error_free(DataSet),
    required_geographical_context(DataSet).
required_data_governance(DataSet) :-
    data_set(DataSet).
required_representativeness(DataSet) :-
    data_set(DataSet).
required_error_free(DataSet) :-
    data_set(DataSet).
required_geographical_context(DataSet) :-
    data_set(DataSet).
must_process_special_categories(Provider, Data) :-
    provider(Provider),
    special_categories_of_personal_data(Data),
    condition_bias_detection_not_fulfilled_by_other_data(Data),
    condition_technical_limitations(Data),
    condition_security_measures(Data),
    condition_no_transfer(Data),
    condition_deletion_after_bias_correction(Data),
    condition_records_of_processing(Data).
must_use_testing_data_set(Provider, DataSet) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ uses_training_technique(System),
    uses_data_set(System, DataSet),
    testing_data(DataSet),
    required_quality_criteria(DataSet).
provenance(must_use_data_set/2, 'celex:32024R1689/oj#art_10').
provenance(required_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_representativeness/1, 'celex:32024R1689/oj#art_10').
provenance(required_error_free/1, 'celex:32024R1689/oj#art_10').
provenance(required_geographical_context/1, 'celex:32024R1689/oj#art_10').
provenance(must_process_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(must_use_testing_data_set/2, 'celex:32024R1689/oj#art_10').
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
declared(must_draw_up/2, 'obligation to draw up technical documentation', 'celex:32024R1689/oj#art_11').
declared(must_keep_up_to_date/2, 'obligation to keep technical documentation up to date', 'celex:32024R1689/oj#art_11').
declared(must_establish/2, 'obligation to establish a simplified technical documentation form', 'celex:32024R1689/oj#art_11').
declared(must_accept/2, 'obligation for notified bodies to accept the simplified form', 'celex:32024R1689/oj#art_11').
must_draw_up(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).
must_keep_up_to_date(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_establish(commission, simplified_technical_documentation_form).
must_accept(NotifiedBody, simplified_technical_documentation_form) :-
    notified_body(NotifiedBody).
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(must_establish/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
required_automatic_logging(S) :-
    high_risk_ai_system(S).
required_logging_for_identifying_risk(S) :-
    high_risk_ai_system(S).
required_logging_for_post_market_monitoring(S) :-
    high_risk_ai_system(S).
required_logging_for_operation_monitoring(S) :-
    high_risk_ai_system(S).
required_logging_period_of_use(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).
required_logging_reference_database(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).
required_logging_input_data_match(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).
required_logging_verifier_identification(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S).
provenance(required_automatic_logging/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_identifying_risk/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_period_of_use/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_input_data_match/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_verifier_identification/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(must_ensure_transparency/2, 'provider must ensure transparency of high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(must_provide_instructions/2, 'provider must provide instructions for use to deployers', 'celex:32024R1689/oj#art_13').
declared(required_provider_identity/1, 'instructions must contain identity and contact details of the provider and, where applicable, its authorised representative', 'celex:32024R1689/oj#art_13').
declared(required_system_characteristics/1, 'instructions must contain characteristics, capabilities and limitations of performance of the high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(required_intended_purpose/1, 'instructions must contain the intended purpose of the high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(required_accuracy_information/1, 'instructions must contain level of accuracy, metrics, robustness and cybersecurity, and known or foreseeable circumstances affecting them', 'celex:32024R1689/oj#art_13').
declared(required_risk_information/1, 'instructions must contain any known or foreseeable circumstance that may lead to risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_13').
declared(required_technical_capabilities/1, 'instructions must contain technical capabilities and characteristics relevant to explain the system’s output', 'celex:32024R1689/oj#art_13').
declared(required_performance_on_persons/1, 'instructions must contain performance regarding specific persons or groups of persons on which the system is intended to be used', 'celex:32024R1689/oj#art_13').
declared(required_input_data_specifications/1, 'instructions must contain specifications for the input data or other relevant information on training, validation and testing data sets', 'celex:32024R1689/oj#art_13').
declared(required_interpretation_information/1, 'instructions must contain information enabling deployers to interpret the output and use it appropriately', 'celex:32024R1689/oj#art_13').
declared(required_change_information/1, 'instructions must contain changes to the system and its performance pre‑determined by the provider at the moment of the initial conformity assessment', 'celex:32024R1689/oj#art_13').
declared(required_human_oversight_measures/1, 'instructions must contain human oversight measures and technical measures facilitating interpretation of outputs', 'celex:32024R1689/oj#art_13').
declared(required_computational_resources/1, 'instructions must contain computational and hardware resources needed, expected lifetime and maintenance measures', 'celex:32024R1689/oj#art_13').
declared(required_log_mechanisms/1, 'instructions must contain description of mechanisms for collecting, storing and interpreting logs', 'celex:32024R1689/oj#art_13').
must_ensure_transparency(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_provide_instructions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    instructions_for_use(_Info).
required_provider_identity(System) :-
    high_risk_ai_system(System).
required_system_characteristics(System) :-
    high_risk_ai_system(System).
required_intended_purpose(System) :-
    high_risk_ai_system(System).
required_accuracy_information(System) :-
    high_risk_ai_system(System).
required_risk_information(System) :-
    high_risk_ai_system(System).
required_technical_capabilities(System) :-
    high_risk_ai_system(System).
required_performance_on_persons(System) :-
    high_risk_ai_system(System).
required_input_data_specifications(System) :-
    high_risk_ai_system(System).
required_interpretation_information(System) :-
    high_risk_ai_system(System).
required_change_information(System) :-
    high_risk_ai_system(System).
required_human_oversight_measures(System) :-
    high_risk_ai_system(System).
required_computational_resources(System) :-
    high_risk_ai_system(System).
required_log_mechanisms(System) :-
    high_risk_ai_system(System).
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(required_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(required_system_characteristics/1, 'celex:32024R1689/oj#art_13').
provenance(required_intended_purpose/1, 'celex:32024R1689/oj#art_13').
provenance(required_accuracy_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_risk_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_technical_capabilities/1, 'celex:32024R1689/oj#art_13').
provenance(required_performance_on_persons/1, 'celex:32024R1689/oj#art_13').
provenance(required_input_data_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(required_interpretation_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_change_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(required_computational_resources/1, 'celex:32024R1689/oj#art_13').
provenance(required_log_mechanisms/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(required_human_oversight_capability/1, 'high‑risk AI system must be designed and developed to allow effective human oversight', 'celex:32024R1689/oj#art_14').
declared(objective_prevent_or_minimise_risk/1, 'human oversight shall aim to prevent or minimise risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_14').
declared(required_oversight_measure_a/1, 'provider must build oversight measures into the system before market placement or putting into service', 'celex:32024R1689/oj#art_14').
declared(required_oversight_measure_b/1, 'provider must identify oversight measures to be implemented by the deployer before market placement or putting into service', 'celex:32024R1689/oj#art_14').
declared(required_understand_capacities/1, 'deployer must be enabled to understand capacities and limitations of the system', 'celex:32024R1689/oj#art_14').
declared(required_awareness_of_automation_bias/1, 'deployer must be aware of the tendency to over‑rely on system output', 'celex:32024R1689/oj#art_14').
declared(required_interpret_output/1, 'deployer must be able to correctly interpret the system’s output', 'celex:32024R1689/oj#art_14').
declared(required_decide_not_use/1, 'deployer must be able to decide not to use or to override the system’s output', 'celex:32024R1689/oj#art_14').
declared(required_intervene_stop/1, 'deployer must be able to intervene or stop the system safely', 'celex:32024R1689/oj#art_14').
declared(required_separate_verification/1, 'identifications must be verified by at least two competent natural persons unless an exception applies', 'celex:32024R1689/oj#art_14').
declared(exception_for_separate_verification/1, 'exception where separate verification is not required for law‑enforcement, migration, border‑control or asylum purposes', 'celex:32024R1689/oj#art_14').
declared(law_enforcement_use/1, 'high‑risk AI system is used for law‑enforcement, migration, border‑control or asylum purposes', 'celex:32024R1689/oj#art_14').
required_human_oversight_capability(S) :-
    high_risk_ai_system(S).
provenance(required_human_oversight_capability/1, 'celex:32024R1689/oj#art_14').
objective_prevent_or_minimise_risk(S) :-
    high_risk_ai_system(S),
    (intended_purpose(S) ; reasonably_foreseeable_misuse(S)).
provenance(objective_prevent_or_minimise_risk/1, 'celex:32024R1689/oj#art_14').
required_oversight_measure_a(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).
provenance(required_oversight_measure_a/1, 'celex:32024R1689/oj#art_14').
required_oversight_measure_b(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P),
    deployer(D),
    deployer(D).
provenance(required_oversight_measure_b/1, 'celex:32024R1689/oj#art_14').
required_understand_capacities(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).
provenance(required_understand_capacities/1, 'celex:32024R1689/oj#art_14').
required_awareness_of_automation_bias(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).
provenance(required_awareness_of_automation_bias/1, 'celex:32024R1689/oj#art_14').
required_interpret_output(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).
provenance(required_interpret_output/1, 'celex:32024R1689/oj#art_14').
required_decide_not_use(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).
provenance(required_decide_not_use/1, 'celex:32024R1689/oj#art_14').
required_intervene_stop(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P).
provenance(required_intervene_stop/1, 'celex:32024R1689/oj#art_14').
required_separate_verification(S) :-
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S),
    \+ exception_for_separate_verification(S).
provenance(required_separate_verification/1, 'celex:32024R1689/oj#art_14').
exception_for_separate_verification(S) :-
    high_risk_ai_system(S),
    law_enforcement_use(S).
provenance(exception_for_separate_verification/1, 'celex:32024R1689/oj#art_14').
law_enforcement_use(S) :-
    high_risk_ai_system(S).
provenance(law_enforcement_use/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(required_accuracy/1, 'high‑risk AI system must achieve appropriate accuracy', 'celex:32024R1689/oj#art_15').
declared(required_robustness/1, 'high‑risk AI system must achieve appropriate robustness', 'celex:32024R1689/oj#art_15').
declared(required_cybersecurity/1, 'high‑risk AI system must achieve appropriate cybersecurity', 'celex:32024R1689/oj#art_15').
declared(required_consistent_performance/1, 'high‑risk AI system must perform consistently throughout its lifecycle', 'celex:32024R1689/oj#art_15').
declared(required_resilience/1, 'high‑risk AI system must be as resilient as possible to errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(required_technical_and_organisational_measures/1, 'technical and organisational measures shall be taken to ensure resilience', 'celex:32024R1689/oj#art_15').
declared(required_redundancy_solution/1, 'robustness may be achieved through technical redundancy solutions', 'celex:32024R1689/oj#art_15').
declared(required_feedback_loop_mitigation/1, 'systems that continue to learn must mitigate biased feedback loops', 'celex:32024R1689/oj#art_15').
declared(required_cybersecurity_measures/1, 'systems must be resilient against unauthorised alterations and attacks', 'celex:32024R1689/oj#art_15').
declared(must_encourage/2, 'Commission shall encourage development of benchmarks and measurement methodologies', 'celex:32024R1689/oj#art_15').
declared(must_declare/2, 'Provider shall declare accuracy metrics in the instructions for use', 'celex:32024R1689/oj#art_15').
declared(must_take/2, 'Provider shall take technical and organisational measures for resilience and cybersecurity', 'celex:32024R1689/oj#art_15').
required_accuracy(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_robustness(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_cybersecurity(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_consistent_performance(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_resilience(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_technical_and_organisational_measures(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_redundancy_solution(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_feedback_loop_mitigation(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system(S).
must_encourage(C, development_of_benchmarks_and_measurement_methodologies) :-
    ai_office(C),
    ai_office(C).
must_declare(P, accuracy_metrics(S)) :-
    provider(P),
    high_risk_ai_system(S),
    provider(P).
must_take(P, technical_and_organisational_measures(S)) :-
    provider(P),
    high_risk_ai_system(S),
    provider(P).
must_take(P, cybersecurity_measures(S)) :-
    provider(P),
    high_risk_ai_system(S),
    provider(P).
required_accuracy_metrics_declared(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S),
    high_risk_ai_system(S).
provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(required_consistent_performance/1, 'celex:32024R1689/oj#art_15').
provenance(required_resilience/1, 'celex:32024R1689/oj#art_15').
provenance(required_technical_and_organisational_measures/1, 'celex:32024R1689/oj#art_15').
provenance(required_redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(required_feedback_loop_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_15').
provenance(must_declare/2, 'celex:32024R1689/oj#art_15').
provenance(must_take/2, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy_metrics_declared/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(provides_high_risk_ai_system/2, 'provider provides a high‑risk AI system', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(Provider, compliance_with(chp_3_sec_2, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_indicate(Provider, identification_details(System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_have(Provider, quality_management_system(complies_with(art_17))) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_keep(Provider, documentation(art_18, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_keep(Provider, logs(System, art_19)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_ensure(Provider, conformity_assessment_before_market(System, art_43)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_draw_up(Provider, eu_declaration_of_conformity(art_47, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_affix(Provider, ce_marking(System, art_48)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, registration_obligations(art_49_par_1)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_take(Provider, corrective_actions_and_information(art_20, System)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_demonstrate(Provider, conformity(System, chp_3_sec_2)) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System),
    national_competent_authority(_).
must_ensure(Provider, accessibility_compliance(System, [dir_32016L2102, dir_32019L0882])) :-
    provides_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_16').
provenance(must_have/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
provenance(must_take/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_16').
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
declared(financial_institution/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_17').
declared(required_quality_management_aspect/1, 'aspect that must be included in quality management system', 'celex:32024R1689/oj#art_17').
declared(exempt_quality_management_system/1, 'quality management system obligation exempt for financial institutions', 'celex:32024R1689/oj#art_17').
must_establish(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(_).
exempt_quality_management_system(Provider) :-
    provider(Provider),
    financial_institution(Provider).
required_quality_management_aspect(strategy_for_regulatory_compliance).
required_quality_management_aspect(design_control_and_verification_techniques).
required_quality_management_aspect(development_quality_control_assurance).
required_quality_management_aspect(examination_test_validation_procedures).
required_quality_management_aspect(technical_specifications_and_standards).
required_quality_management_aspect(data_management_procedures).
required_quality_management_aspect(risk_management_system).
required_quality_management_aspect(post_market_monitoring_system).
required_quality_management_aspect(serious_incident_reporting_procedures).
required_quality_management_aspect(communication_handling_with_authorities).
required_quality_management_aspect(record_keeping_systems).
required_quality_management_aspect(resource_management).
required_quality_management_aspect(accountability_framework).
provenance(must_establish/2, 'celex:32024R1689/oj#art_17').
provenance(required_quality_management_aspect/1, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system/1, 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i').

% ==== celex:32024R1689/oj#art_18 ====
declared(provides/2, 'provider provides AI system', 'celex:32024R1689/oj#art_18').
declared(financial_institution/1, 'provider is a financial institution', 'celex:32024R1689/oj#art_18').
declared(provider_bankrupt_or_ceases/1, 'provider or its authorised representative goes bankrupt or ceases activity', 'celex:32024R1689/oj#art_18').
declared(document_type/1, 'type of documentation required', 'celex:32024R1689/oj#art_18').
must_keep(Provider, technical_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_keep(Provider, quality_management_system_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_keep(Provider, changes_approved_by_notified_body_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_keep(Provider, notified_body_decisions_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_keep(Provider, eu_declaration_of_conformity(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_determine(MemberState, documentation_availability(Provider, Document, period(years(10)))) :-
    member_state(MemberState),
    (provider(Provider) ; authorised_representative(Provider)),
    provider_bankrupt_or_ceases(Provider),
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    document_type(Document).
must_keep(Provider, technical_documentation(under_financial_services_law)) :-
    provider(Provider),
    financial_institution(Provider),
    provides(Provider, System),
    high_risk_ai_system(System).
document_type(technical_documentation).
document_type(quality_management_system_documentation).
document_type(changes_approved_by_notified_body_documentation).
document_type(notified_body_decisions_documentation).
document_type(eu_declaration_of_conformity).
provenance(must_keep/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine/2, 'celex:32024R1689/oj#art_18').
provenance(provides/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_18').
provenance(provider_bankrupt_or_ceases/1, 'celex:32024R1689/oj#art_18').
provenance(document_type/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(logs_under_control/2, 'logs of a high‑risk AI system are under the control of the provider', 'celex:32024R1689/oj#art_19').
declared(automatically_generated_by/1, 'logs are automatically generated by the high‑risk AI system', 'celex:32024R1689/oj#art_19').
declared(financial_institution/1, 'provider is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_19').
declared(documentation_under_financial_services_law/1, 'documentation kept under the relevant financial services law', 'celex:32024R1689/oj#art_19').
must_keep(Provider, logs(HighRiskAI, period(months(6)))) :-
    provider(Provider),
    high_risk_ai_system(HighRiskAI),
    logs_under_control(Provider, HighRiskAI),
    automatically_generated_by(HighRiskAI).
must_maintain(Provider, logs(HighRiskAI)) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(HighRiskAI),
    automatically_generated_by(HighRiskAI),
    documentation_under_financial_services_law(Provider).
provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(must_take_corrective_action/2, 'provider must take corrective action for a non‑conforming high‑risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform/2, 'actor must inform a specified party or authority about a high‑risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_investigate/2, 'provider must investigate the causes of a risk associated with a high‑risk AI system', 'celex:32024R1689/oj#art_20').
declared(risk_within_art_79_par_1/1, 'high‑risk AI system presents a risk as defined in article 79 paragraph 1', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_inform(Provider, inform(distributor, System)) :-
    provider(Provider),
    distributor(_),
    high_risk_ai_system(System).
must_inform(Provider, inform(deployer, System)) :-
    provider(Provider),
    deployer(_),
    high_risk_ai_system(System).
must_inform(Provider, inform(authorised_representative, System)) :-
    provider(Provider),
    authorised_representative(_),
    high_risk_ai_system(System).
must_inform(Provider, inform(importer, System)) :-
    provider(Provider),
    importer(_),
    high_risk_ai_system(System).
must_investigate(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_within_art_79_par_1(System).
must_inform(Provider, market_surveillance_authority) :-
    provider(Provider),
    market_surveillance_authority(_).
must_inform(Provider, notified_body) :-
    provider(Provider),
    notified_body(_).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_20').
provenance(risk_within_art_79_par_1/1, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(competent_authority/1, 'competent authority', 'celex:32024R1689/oj#art_21').
declared(reasoned_request_by/1, 'reasoned request by a competent authority', 'celex:32024R1689/oj#art_21').
declared(under_control/2, 'entity has control over the specified item', 'celex:32024R1689/oj#art_21').
declared(confidentiality_obligation_applies/1, 'confidentiality obligations set out in article 78 apply', 'celex:32024R1689/oj#art_21').
must_provide(Provider, information_and_documentation(HighRiskAISystem, conformity_requirements, language(official_language(MemberState)))) :-
    provider(Provider),
    high_risk_ai_system(HighRiskAISystem),
    competent_authority(Authority),
    reasoned_request_by(Authority),
    member_state(MemberState).
must_provide_access(Provider, logs(HighRiskAISystem)) :-
    provider(Provider),
    high_risk_ai_system(HighRiskAISystem),
    competent_authority(Authority),
    reasoned_request_by(Authority),
    under_control(Provider, logs(HighRiskAISystem)).
must_treat_confidentially(Authority, Information) :-
    obtained_information(Authority, Information),
    confidentiality_obligation_applies(Information).
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').

% ==== celex:32024R1689/oj#art_22 ====
declared(must_appoint/2, 'provider must appoint an authorised representative', 'celex:32024R1689/oj#art_22').
declared(must_enable/2, 'provider must enable its authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_22').
declared(must_verify/2, 'authorised representative must verify conformity documentation', 'celex:32024R1689/oj#art_22').
declared(must_keep/2, 'authorised representative must keep information for ten years after placement', 'celex:32024R1689/oj#art_22').
declared(must_provide/2, 'authorised representative must provide information to competent authority on request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate/2, 'authorised representative must cooperate with competent authorities', 'celex:32024R1689/oj#art_22').
declared(must_comply/2, 'authorised representative must comply with registration obligations where applicable', 'celex:32024R1689/oj#art_22').
declared(must_terminate/2, 'authorised representative must terminate the mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(must_inform/2, 'authorised representative must inform authorities of termination', 'celex:32024R1689/oj#art_22').
declared(provider_contrary_obligations/1, 'provider is acting contrary to its obligations', 'celex:32024R1689/oj#art_22').
must_appoint(Provider, authorised_representative(Representative)) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ placing_on_market(S),
    authorised_representative(Representative).
must_enable(Provider, authorised_representative(Representative)) :-
    provider(Provider),
    authorised_representative(Representative).
must_verify(Representative, conformity_documents) :-
    authorised_representative(Representative).
must_keep(Representative,
          kept_information(Provider,
                           eu_declaration,
                           technical_documentation,
                           certificate,
                           years(10),
                           after_placement(S))) :-
    authorised_representative(Representative),
    provider(Provider),
    high_risk_ai_system(S).
must_provide(Representative, conformity_information(Authority)) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).
must_cooperate(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).
must_comply(Representative, registration_obligations) :-
    authorised_representative(Representative).
must_terminate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_contrary_obligations(Provider).
must_inform(Representative,
            termination_notice(market_surveillance_authority, Provider)) :-
    authorised_representative(Representative),
    provider(Provider).
must_inform(Representative,
            termination_notice(notified_body(NB), Provider)) :-
    authorised_representative(Representative),
    provider(Provider),
    notified_body(NB).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').
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
declared(must_ensure/2, 'importer must ensure the specified conformity condition for a high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(must_not_place_on_market/2, 'importer must not place a non‑conforming high‑risk AI system on the market', 'celex:32024R1689/oj#art_23').
declared(must_inform/2, 'importer must inform relevant parties about a condition concerning a high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(must_provide/2, 'importer must provide specified information or documentation for a high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(must_keep/2, 'importer must keep specified documentation for a period', 'celex:32024R1689/oj#art_23').
declared(must_cooperate/2, 'importer must cooperate with competent authorities regarding a high‑risk AI system', 'celex:32024R1689/oj#art_23').
declared(non_conformity/1, 'the AI system is not in conformity with the regulation', 'celex:32024R1689/oj#art_23').
must_ensure(I, conformity_assessment_by_provider(S)) :-
    importer(I),
    high_risk_ai_system(S).
must_ensure(I, technical_documentation_drawn_up_by_provider(S)) :-
    importer(I),
    high_risk_ai_system(S).
must_ensure(I, ce_marking_and_declaration_present(S)) :-
    importer(I),
    high_risk_ai_system(S),
    ce_marking(S),
    instructions_for_use(S).
must_ensure(I, authorised_representative_appointed(S)) :-
    importer(I),
    high_risk_ai_system(S),
    authorised_representative(_R).
must_not_place_on_market(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    non_conformity(S).
must_inform(I, non_conformity(S)) :-
    importer(I),
    high_risk_ai_system(S),
    non_conformity(S).
must_inform(I, risk(S)) :-
    importer(I),
    high_risk_ai_system(S),
    risk(S).
must_provide(I, identification_information(S)) :-
    importer(I),
    high_risk_ai_system(S).
must_ensure(I, storage_transport_not_jeopardise_compliance(S)) :-
    importer(I),
    high_risk_ai_system(S).
must_keep(I, documentation_copy(S, years(10))) :-
    importer(I),
    high_risk_ai_system(S).
must_provide(I, information_to_authorities(S)) :-
    importer(I),
    high_risk_ai_system(S).
must_cooperate(I, competent_authorities(S)) :-
    importer(I),
    high_risk_ai_system(S).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23').
provenance(non_conformity/1, 'celex:32024R1689/oj#art_23').
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
declared(must_verify/2, 'distributor must verify CE marking, declaration of conformity and instructions for use, and that provider and importer have complied', 'celex:32024R1689/oj#art_24').
must_verify(Distributor, verification(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).
declared(prohibited_making_available_on_market/1, 'distributor must not make available a high‑risk AI system that is not in conformity', 'celex:32024R1689/oj#art_24').
prohibited_making_available_on_market(System) :-
    high_risk_ai_system(System),
    distributor(Distributor),
    considers_not_in_conformity(Distributor, System).
declared(must_inform/2, 'distributor must inform provider or importer when a risk is present', 'celex:32024R1689/oj#art_24').
must_inform(Distributor, risk_present(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_present(System).
declared(must_ensure/2, 'distributor must ensure storage or transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_24').
must_ensure(Distributor, storage_conditions_not_jeopardise(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).
declared(must_take_corrective_action/2, 'distributor must take corrective actions to bring the system into conformity', 'celex:32024R1689/oj#art_24').
must_take_corrective_action(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_not_in_conformity(Distributor, System).
declared(must_inform/2, 'distributor must inform provider, importer and competent authorities of non‑compliance and corrective actions', 'celex:32024R1689/oj#art_24').
must_inform(Distributor, non_compliance_details(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_not_in_conformity(Distributor, System),
    risk_present(System).
declared(must_provide_information/2, 'distributor must provide all information and documentation to a competent authority upon request', 'celex:32024R1689/oj#art_24').
must_provide_information(Distributor, info_request(Authority, System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).
declared(must_cooperate/2, 'distributor must cooperate with competent authorities', 'celex:32024R1689/oj#art_24').
must_cooperate(Distributor, Authority) :-
    distributor(Distributor),
    market_surveillance_authority(Authority).
declared(considers_not_in_conformity/2, 'distributor considers or has reason to consider the system not in conformity', 'celex:32024R1689/oj#art_24').
declared(risk_present/1, 'the high‑risk AI system presents a risk within the meaning of article 79(1)', 'celex:32024R1689/oj#art_24').
declared(storage_conditions_not_jeopardise/1, 'storage or transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_24').
declared(non_compliance_details/1, 'details of non‑compliance and corrective actions taken', 'celex:32024R1689/oj#art_24').
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_available_on_market/1, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_24').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').

% ==== celex:32024R1689/oj#art_25 ====
declared(third_party_applies/1, 'other third party not otherwise defined', 'celex:32024R1689/oj#art_25').
declared(puts_name_on_high_risk_ai_system/2, 'actor puts name or trademark on a high‑risk AI system already on the market or in service', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification_high_risk_ai_system/2, 'actor makes a substantial modification to a high‑risk AI system already on the market or in service', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose_ai_system/2, 'actor modifies the intended purpose of an AI system, causing it to become high‑risk', 'celex:32024R1689/oj#art_25').
declared(must_be_provider/2, 'actor is to be considered a provider of a high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(must_subject_to_provider_obligations/2, 'actor is subject to the obligations of a provider', 'celex:32024R1689/oj#art_25').
declared(circumstances_par_1_applies/1, 'one of the circumstances listed in paragraph 1 applies to the AI system', 'celex:32024R1689/oj#art_25').
declared(initial_provider_of/2, 'provider that initially placed the AI system on the market or put it into service', 'celex:32024R1689/oj#art_25').
declared(new_provider_of/2, 'actor that becomes a new provider of the AI system under paragraph 1', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_providers/2, 'initial provider shall closely cooperate with new providers', 'celex:32024R1689/oj#art_25').
declared(must_make_available_information/2, 'initial provider shall make available the necessary information', 'celex:32024R1689/oj#art_25').
declared(must_provide_technical_access/2, 'initial provider shall provide the reasonably expected technical access and assistance', 'celex:32024R1689/oj#art_25').
declared(initial_provider_specified_no_change/2, 'initial provider has clearly specified that its AI system is not to be changed into a high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(placed_on_market_under_name_of_product_manufacturer/2, 'high‑risk AI system placed on the market together with the product under the product manufacturer’s name or trademark', 'celex:32024R1689/oj#art_25').
declared(put_into_service_under_name_of_product_manufacturer/2, 'high‑risk AI system put into service under the product manufacturer’s name or trademark after the product has been placed on the market', 'celex:32024R1689/oj#art_25').
declared(must_specify_information_and_assistance/2, 'provider or third‑party shall, by written agreement, specify necessary information, capabilities, technical access and other assistance', 'celex:32024R1689/oj#art_25').
declared(supplies_for_high_risk_ai_system/2, 'third‑party supplies tools, services, components or processes used or integrated in a high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(free_open_source_licence/2, 'third‑party makes the supplied tool, service, component or process available to the public under a free and open‑source licence', 'celex:32024R1689/oj#art_25').
must_be_provider(Actor, high_risk_ai_system(S)) :-
    (distributor(Actor); importer(Actor); deployer(Actor); third_party_applies(Actor)),
    puts_name_on_high_risk_ai_system(Actor, S),
    (placing_on_market(S); putting_into_service(S)),
    high_risk_ai_system(S).
must_be_provider(Actor, high_risk_ai_system(S)) :-
    (distributor(Actor); importer(Actor); deployer(Actor); third_party_applies(Actor)),
    makes_substantial_modification_high_risk_ai_system(Actor, S),
    (placing_on_market(S); putting_into_service(S)),
    high_risk_ai_system(S).
must_be_provider(Actor, high_risk_ai_system(S)) :-
    (distributor(Actor); importer(Actor); deployer(Actor); third_party_applies(Actor)),
    modifies_intended_purpose_ai_system(Actor, S),
    (placing_on_market(S); putting_into_service(S)),
    high_risk_ai_system(S).
must_subject_to_provider_obligations(Actor, high_risk_ai_system(S)) :-
    must_be_provider(Actor, high_risk_ai_system(S)).
circumstances_par_1_applies(S) :-
    puts_name_on_high_risk_ai_system(_, S).
circumstances_par_1_applies(S) :-
    makes_substantial_modification_high_risk_ai_system(_, S).
circumstances_par_1_applies(S) :-
    modifies_intended_purpose_ai_system(_, S).
new_provider_of(S, Actor) :-
    must_be_provider(Actor, high_risk_ai_system(S)).
no_longer_provider(InitialProvider, S) :-
    initial_provider_of(S, InitialProvider),
    circumstances_par_1_applies(S),
    \+ initial_provider_specified_no_change(InitialProvider, S).
must_cooperate_with_new_providers(InitialProvider, S) :-
    no_longer_provider(InitialProvider, S),
    new_provider_of(S, _NewProvider).
must_make_available_information(InitialProvider, S) :-
    no_longer_provider(InitialProvider, S).
must_provide_technical_access(InitialProvider, S) :-
    no_longer_provider(InitialProvider, S).
must_be_provider(ProductManufacturer, high_risk_ai_system(S)) :-
    product_manufacturer(ProductManufacturer),
    safety_component_ai_system(S),
    union_harmonisation_legislation_applies(_),
    ( placed_on_market_under_name_of_product_manufacturer(ProductManufacturer, S)
    ; put_into_service_under_name_of_product_manufacturer(ProductManufacturer, S) ).
must_subject_to_provider_obligations(ProductManufacturer, high_risk_ai_system(S)) :-
    must_be_provider(ProductManufacturer, high_risk_ai_system(S)).
must_specify_information_and_assistance(Actor, high_risk_ai_system(S)) :-
    (provider(Actor); third_party_applies(Actor)),
    supplies_for_high_risk_ai_system(Actor, S),
    \+ (free_open_source_licence(Actor, S), \+ general_purpose_ai_model(S)).
provenance(must_be_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_subject_to_provider_obligations/2, 'celex:32024R1689/oj#art_25').
provenance(circumstances_par_1_applies/1, 'celex:32024R1689/oj#art_25').
provenance(new_provider_of/2, 'celex:32024R1689/oj#art_25').
provenance(no_longer_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_technical_access/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_information_and_assistance/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_1', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_2', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_3', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#anx_1/sec_1', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_4', 'celex:32024R1689/oj#art_25').

% ==== celex:32024R1689/oj#art_26 ====
declared(must_take_measures/2, 'deployer must take appropriate technical and organisational measures to use the system in accordance with the instructions for use', 'celex:32024R1689/oj#art_26').
declared(must_assign_human_oversight/2, 'deployer must assign human oversight to a natural person with the necessary competence, training and authority', 'celex:32024R1689/oj#art_26').
declared(human_oversight_person/1, 'natural person competent to perform human oversight', 'celex:32024R1689/oj#art_26').
declared(must_ensure_input_data_relevant/2, 'deployer must ensure input data is relevant and sufficiently representative', 'celex:32024R1689/oj#art_26').
declared(must_monitor_operation/2, 'deployer must monitor the operation of the high‑risk AI system', 'celex:32024R1689/oj#art_26').
declared(must_inform_provider/2, 'deployer must inform the provider', 'celex:32024R1689/oj#art_26').
declared(must_inform_distributor/2, 'deployer must inform the distributor', 'celex:32024R1689/oj#art_26').
declared(must_inform_market_surveillance_authority/2, 'deployer must inform the relevant market surveillance authority', 'celex:32024R1689/oj#art_26').
declared(must_suspend_use/2, 'deployer must suspend the use of the system', 'celex:32024R1689/oj#art_26').
declared(must_inform_first_provider/2, 'deployer must first inform the provider in case of a serious incident', 'celex:32024R1689/oj#art_26').
declared(must_inform_importer_or_distributor/2, 'deployer must inform the importer or distributor after the provider', 'celex:32024R1689/oj#art_26').
declared(must_keep_logs/2, 'deployer must keep the automatically generated logs for at least six months', 'celex:32024R1689/oj#art_26').
declared(must_inform_workers_representatives/2, 'deployer must inform workers’ representatives and affected workers before use', 'celex:32024R1689/oj#art_26').
declared(public_authority/1, 'entity that is a public authority, Union institution, body, office or agency', 'celex:32024R1689/oj#art_26').
declared(must_comply_registration/2, 'public‑authority deployer must comply with registration obligations', 'celex:32024R1689/oj#art_26').
declared(must_not_use_if_not_registered/2, 'public‑authority deployer must not use a system that is not registered', 'celex:32024R1689/oj#art_26').
declared(must_inform_provider_or_distributor/2, 'public‑authority deployer must inform the provider or the distributor when the system is not registered', 'celex:32024R1689/oj#art_26').
declared(must_use_information_for_dpia/2, 'deployer must use the information provided to carry out a data‑protection impact assessment', 'celex:32024R1689/oj#art_26').
declared(must_request_authorisation/2, 'deployer of a post‑remote biometric identification system must request authorisation before use', 'celex:32024R1689/oj#art_26').
declared(must_limit_use_to_specific_offence/2, 'deployer must limit each use to what is strictly necessary for a specific criminal offence', 'celex:32024R1689/oj#art_26').
declared(must_stop_use_if_authorisation_rejected/2, 'deployer must stop use if the authorisation request is rejected', 'celex:32024R1689/oj#art_26').
declared(must_delete_personal_data_linked/2, 'deployer must delete personal data linked to the use when authorisation is rejected', 'celex:32024R1689/oj#art_26').
declared(prohibited_untargeted_law_enforcement_use/1, 'post‑remote biometric identification systems must not be used for untargeted law‑enforcement purposes', 'celex:32024R1689/oj#art_26').
declared(must_ensure_no_adverse_legal_effect_based_on_output/2, 'deployer must ensure no adverse legal effect is based solely on the system’s output', 'celex:32024R1689/oj#art_26').
declared(must_document_use/2, 'deployer must document each use in the relevant police file', 'celex:32024R1689/oj#art_26').
declared(must_make_available_to_authorities/2, 'deployer must make the documentation available to market surveillance and data‑protection authorities', 'celex:32024R1689/oj#art_26').
declared(must_submit_annual_reports/2, 'deployer must submit annual reports on the use of post‑remote biometric identification systems', 'celex:32024R1689/oj#art_26').
declared(must_inform_natural_persons/2, 'deployer must inform natural persons that they are subject to the use of the system', 'celex:32024R1689/oj#art_26').
declared(must_cooperate_with_competent_authorities/2, 'deployer must cooperate with the relevant competent authorities', 'celex:32024R1689/oj#art_26').
must_take_measures(Deployer, use_in_accordance_with_instructions(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_assign_human_oversight(Deployer, Person) :-
    deployer(Deployer),
    high_risk_ai_system(_System),
    human_oversight_person(Person).
must_ensure_input_data_relevant(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_monitor_operation(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform_provider(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform_distributor(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_suspend_use(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform_first_provider(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform_importer_or_distributor(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_keep_logs(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_inform_workers_representatives(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_comply_registration(Deployer, registration_obligation) :-
    deployer(Deployer),
    public_authority(Deployer).
must_not_use_if_not_registered(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    public_authority(Deployer).
must_inform_provider_or_distributor(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    public_authority(Deployer).
must_use_information_for_dpia(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_request_authorisation(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_limit_use_to_specific_offence(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_stop_use_if_authorisation_rejected(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_delete_personal_data_linked(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
prohibited_untargeted_law_enforcement_use(System) :-
    post_remote_biometric_identification_system(System).
must_ensure_no_adverse_legal_effect_based_on_output(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_document_use(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_make_available_to_authorities(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_submit_annual_reports(Deployer, System) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(System).
must_inform_natural_persons(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_cooperate_with_competent_authorities(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(human_oversight_person/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_input_data_relevant/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_first_provider/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_importer_or_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers_representatives/2, 'celex:32024R1689/oj#art_26').
provenance(public_authority/1, 'celex:32024R1689/oj#art_26').
provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_26').
provenance(must_not_use_if_not_registered/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_or_distributor/2, 'celex:32024R1689/oj#art_26').
provenance(must_use_information_for_dpia/2, 'celex:32024R1689/oj#art_26').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26').
provenance(must_limit_use_to_specific_offence/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_if_authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
provenance(must_delete_personal_data_linked/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_no_adverse_legal_effect_based_on_output/2, 'celex:32024R1689/oj#art_26').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_make_available_to_authorities/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26').
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
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').

% ==== celex:32024R1689/oj#art_27 ====
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(permitted_assessment/2, 'deployer is permitted exemption from assessment', 'celex:32024R1689/oj#art_27').
declared(public_law_body_applies/1, 'deployer is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_public_service_applies/1, 'deployer is a private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(annex_3_pnt_2_applies/1, 'system intended for area listed in annex 3 point 2', 'celex:32024R1689/oj#art_27').
declared(annex_3_pnt_5_b_applies/2, 'deployer of system referred to in annex 3 point 5 b', 'celex:32024R1689/oj#art_27').
declared(annex_3_pnt_5_c_applies/2, 'deployer of system referred to in annex 3 point 5 c', 'celex:32024R1689/oj#art_27').
declared(must_update_fundamental_rights_impact_assessment/2, 'deployer must update the assessment', 'celex:32024R1689/oj#art_27').
declared(element_changed/2, 'an element of the assessment has changed', 'celex:32024R1689/oj#art_27').
declared(must_notify/2, 'deployer must notify market surveillance authority', 'celex:32024R1689/oj#art_27').
declared(permitted_notification/1, 'deployer is permitted exemption from notification', 'celex:32024R1689/oj#art_27').
declared(art_46_par_1_applies/1, 'case where notification exemption applies', 'celex:32024R1689/oj#art_46/par_1').
declared(assessment_performed/2, 'assessment has been performed for system', 'celex:32024R1689/oj#art_27').
declared(must_develop/2, 'AI office must develop template', 'celex:32024R1689/oj#art_27').
declared(template_fundamental_rights_assessment/1, 'template for fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
must_perform_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ permitted_assessment(Deployer, System).
permitted_assessment(Deployer, System) :-
    public_law_body_applies(Deployer).
permitted_assessment(Deployer, System) :-
    private_entity_public_service_applies(Deployer).
permitted_assessment(Deployer, System) :-
    annex_3_pnt_2_applies(System).
permitted_assessment(Deployer, System) :-
    annex_3_pnt_5_b_applies(Deployer, System).
permitted_assessment(Deployer, System) :-
    annex_3_pnt_5_c_applies(Deployer, System).
must_update_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    element_changed(Deployer, System).
must_notify(Deployer, market_surveillance_authority) :-
    deployer(Deployer),
    assessment_performed(Deployer, System),
    assessment_performed(Deployer, System),   
    \+ permitted_notification(Deployer).
permitted_notification(Deployer) :-
    art_46_par_1_applies(Deployer).
must_develop(Office, template_fundamental_rights_assessment) :-
    ai_office(Office).
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(public_law_body_applies/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_public_service_applies/1, 'celex:32024R1689/oj#art_27').
provenance(annex_3_pnt_2_applies/1, 'celex:32024R1689/oj#art_27').
provenance(annex_3_pnt_5_b_applies/2, 'celex:32024R1689/oj#art_27').
provenance(annex_3_pnt_5_c_applies/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(element_changed/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_notification/1, 'celex:32024R1689/oj#art_27').
provenance(art_46_par_1_applies/1, 'celex:32024R1689/oj#art_27').
provenance(assessment_performed/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop/2, 'celex:32024R1689/oj#art_27').
provenance(template_fundamental_rights_assessment/1, 'celex:32024R1689/oj#art_27').
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

% ==== celex:32024R1689/oj#art_28 ====
declared(notifying_authority/1, 'authority designated or established for notifying conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(required_cooperation_between_notifying_authorities/1, 'procedures developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(permitted_assessment_by_national_accreditation_body/1, 'assessment and monitoring may be carried out by a national accreditation body', 'celex:32024R1689/oj#art_28').
declared(must_ensure_no_conflict_of_interest/2, 'ensure that no conflict of interest arises', 'celex:32024R1689/oj#art_28').
declared(must_ensure_objectivity_and_impartiality/2, 'ensure objectivity and impartiality of activities', 'celex:32024R1689/oj#art_28').
declared(must_ensure_decision_makers_separate/2, 'ensure decisions are taken by persons different from assessors', 'celex:32024R1689/oj#art_28').
declared(prohibited_assessment_activities/1, 'prohibit offering activities performed by conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(prohibited_commercial_consultancy_services/1, 'prohibit providing consultancy services on a commercial or competitive basis', 'celex:32024R1689/oj#art_28').
declared(must_safeguard_confidentiality/2, 'safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(must_have/2, 'have an adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
declared(required_expertise_of_competent_personnel/1, 'competent personnel shall have necessary expertise', 'celex:32024R1689/oj#art_28').
must_designate_or_establish(MemberState, NotifyingAuthority) :-
    member_state(MemberState),
    notifying_authority(NotifyingAuthority).
required_cooperation_between_notifying_authorities(MemberState) :-
    member_state(MemberState).
permitted_assessment_by_national_accreditation_body(MemberState) :-
    member_state(MemberState).
must_ensure_no_conflict_of_interest(NotifyingAuthority, conflict_of_interest_absent) :-
    notifying_authority(NotifyingAuthority).
must_ensure_objectivity_and_impartiality(NotifyingAuthority, safeguarded) :-
    notifying_authority(NotifyingAuthority).
must_ensure_decision_makers_separate(NotifyingAuthority, separate) :-
    notifying_authority(NotifyingAuthority).
prohibited_assessment_activities(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority).
prohibited_commercial_consultancy_services(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority).
must_safeguard_confidentiality(NotifyingAuthority, information_obtained) :-
    notifying_authority(NotifyingAuthority).
must_have(NotifyingAuthority, adequate_competent_personnel) :-
    notifying_authority(NotifyingAuthority).
required_expertise_of_competent_personnel(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority).
provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_28').
provenance(required_cooperation_between_notifying_authorities/1, 'celex:32024R1689/oj#art_28').
provenance(permitted_assessment_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_no_conflict_of_interest/2, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_objectivity_and_impartiality/2, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_decision_makers_separate/2, 'celex:32024R1689/oj#art_28').
provenance(prohibited_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(must_have/2, 'celex:32024R1689/oj#art_28').
provenance(required_expertise_of_competent_personnel/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(established_in/2, 'conformity assessment body is established in member state', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate/1, 'accreditation certificate exists for conformity assessment body', 'celex:32024R1689/oj#art_29').
declared(relevant_change_occurs/1, 'relevant change occurs for conformity assessment body', 'celex:32024R1689/oj#art_29').
must_submit_application(Body, application_for_notification(Authority)) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in(Body, MS),
    member_state(MS).
must_provide(Body, description_of_conformity_assessment_activities) :-
    conformity_assessment_body(Body).
must_provide(Body, accreditation_certificate) :-
    conformity_assessment_body(Body),
    accreditation_certificate(Body).
must_provide(Body, documentary_evidence) :-
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).
permitted_use_of_existing_designation_documents(Body) :-
    notified_body(Body).
must_update_documentation(Body, documentation_par_2_3) :-
    notified_body(Body),
    relevant_change_occurs(Body).
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_of_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_30 ====
declared(based_on_accreditation_certificate/1, 'notification based on accreditation certificate', 'celex:32024R1689/oj#art_30/par_3').
declared(objection_raised/2, 'objection raised by authority concerning conformity assessment body', 'celex:32024R1689/oj#art_30/par_4').
must_notify(NotifyingAuthority, notification(_Commission, _MemberStates, CAB)) :-
    notifying_authority(NotifyingAuthority),
    conformity_assessment_body(CAB),
    meets_requirements_art_31(CAB).
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
must_include_full_details(NotifyingAuthority, notification(CAB)) :-
    notifying_authority(NotifyingAuthority),
    conformity_assessment_body(CAB).
provenance(must_include_full_details/2, 'celex:32024R1689/oj#art_30').
must_provide_documentary_evidence(NotifyingAuthority, CAB) :-
    notifying_authority(NotifyingAuthority),
    conformity_assessment_body(CAB),
    \+ based_on_accreditation_certificate(CAB).
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
permitted_perform_notified_body_activities(CAB) :-
    conformity_assessment_body(CAB),
    \+ objection_raised(_, CAB).
provenance(permitted_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
must_consult(Commission, consultation(CAB)) :-
    objection_raised(Commission, CAB).
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
must_decide_authorisation(Commission, CAB) :-
    objection_raised(Commission, CAB).
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(must_be_established/2, 'notified body must be established under national law of a member state', 'celex:32024R1689/oj#art_31').
declared(must_have_legal_personality/2, 'notified body must have legal personality', 'celex:32024R1689/oj#art_31').
declared(must_satisfy/2, 'notified body must satisfy specified requirements', 'celex:32024R1689/oj#art_31').
declared(must_ensure/2, 'notified body must ensure confidence in performance and conformity assessment', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of/2, 'notified body must be independent of specified parties', 'celex:32024R1689/oj#art_31').
declared(prohibited_direct_involvement/1, 'notified body must not be directly involved in design, development, marketing or use of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_representation/1, 'notified body must not represent parties engaged in design, development, marketing or use', 'celex:32024R1689/oj#art_31').
declared(prohibited_conflict_of_interest/1, 'notified body must not engage in activities that could conflict with independence or integrity', 'celex:32024R1689/oj#art_31').
declared(prohibited_consultancy_services/1, 'notified body must not provide consultancy services', 'celex:32024R1689/oj#art_31').
declared(must_safeguard/2, 'notified body must safeguard independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(must_document_and_implement/2, 'notified body must document and implement structures and procedures to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(must_have_confidentiality_procedures/1, 'notified body must have documented procedures to maintain confidentiality', 'celex:32024R1689/oj#art_31').
declared(must_observe_professional_secrecy/1, 'notified body staff must observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(must_have_procedures_considering/2, 'notified body must have procedures taking account of provider size, sector, structure and AI system complexity', 'celex:32024R1689/oj#art_31').
declared(must_have/2, 'notified body must have specified element', 'celex:32024R1689/oj#art_31').
declared(must_participate_in_coordination/1, 'notified body must participate in coordination activities', 'celex:32024R1689/oj#art_31').
must_be_established(NB, establishment_under_national_law(MS)) :-
    notified_body(NB),
    member_state(MS).
must_have_legal_personality(NB, legal_personality) :-
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
must_ensure(NB, confidence_in_performance_and_conformity_assessment) :-
    notified_body(NB).
must_be_independent_of(NB, Provider) :-
    notified_body(NB),
    provider(Provider),
    high_risk_ai_system(_).
must_be_independent_of(NB, Operator) :-
    notified_body(NB),
    operator(Operator),
    high_risk_ai_system(_).
must_be_independent_of(NB, Competitor) :-
    notified_body(NB),
    provider(Competitor),
    high_risk_ai_system(_).
prohibited_direct_involvement(NB) :-
    notified_body(NB).
prohibited_representation(NB) :-
    notified_body(NB).
prohibited_conflict_of_interest(NB) :-
    notified_body(NB).
prohibited_consultancy_services(NB) :-
    notified_body(NB).
must_safeguard(NB, independence_objectivity_impartiality) :-
    notified_body(NB).
must_document_and_implement(NB, impartiality_structure_and_procedures) :-
    notified_body(NB).
must_have_confidentiality_procedures(NB) :-
    notified_body(NB).
must_observe_professional_secrecy(NB) :-
    notified_body(NB).
must_have_procedures_considering(NB, provider_characteristics) :-
    notified_body(NB).
must_have(NB, liability_insurance) :-
    notified_body(NB).
must_have(NB, professional_integrity_and_competence) :-
    notified_body(NB).
must_have(NB, sufficient_internal_competences) :-
    notified_body(NB).
must_participate_in_coordination(NB) :-
    notified_body(NB).
provenance(must_be_established/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/2, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy/2, 'celex:32024R1689/oj#art_31').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_representation/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_31').
provenance(must_document_and_implement/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_procedures_considering/2, 'celex:32024R1689/oj#art_31').
provenance(must_have/2, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(demonstrates_conformity_with_criteria/2, 'conformity assessment body demonstrates conformity with criteria of a harmonised standard', 'celex:32024R1689/oj#art_32').
declared(published_in_official_journal/1, 'harmonised standard published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_32').
declared(standard_covers_requirement/2, 'harmonised standard covers a requirement', 'celex:32024R1689/oj#art_32').
declared(requirement_art_31_applies/1, 'requirement set out in article 31', 'celex:32024R1689/oj#art_32').
presume_compliance(Body, Requirement) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_criteria(Body, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    requirement_art_31_applies(Requirement),
    standard_covers_requirement(Standard, Requirement).
provenance(presume_compliance/2, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontractor/2, 'relationship where a notified body uses a subcontractor for conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(subsidiary/2, 'relationship where a notified body uses a subsidiary for conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(agreement/2, 'agreement of a provider with a subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(must_ensure/2, 'obligation to ensure that a subcontractor or subsidiary meets the requirements laid down in article 31', 'celex:32024R1689/oj#art_33').
declared(must_inform/2, 'obligation to inform the notifying authority', 'celex:32024R1689/oj#art_33').
declared(must_take_full_responsibility/2, 'obligation to take full responsibility for tasks performed by a subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(permit_subcontracting/2, 'permission to subcontract activities only with the agreement of the provider', 'celex:32024R1689/oj#art_33').
declared(must_keep/2, 'obligation to keep relevant documents for five years after termination of subcontracting', 'celex:32024R1689/oj#art_33').
must_ensure(NB, meets_requirements_art_31(Sub)) :-
    notified_body(NB),
    (   subcontractor(NB, Sub)
    ;   subsidiary(NB, Sub)
    ).
must_inform(NB, notifying_authority(A)) :-
    notified_body(NB),
    notifying_authority(A).
must_take_full_responsibility(NB, subcontractor(Sub)) :-
    notified_body(NB),
    subcontractor(NB, Sub).
must_take_full_responsibility(NB, subsidiary(Sub)) :-
    notified_body(NB),
    subsidiary(NB, Sub).
permit_subcontracting(Provider, Sub) :-
    provider(Provider),
    agreement(Provider, Sub).
must_make_publicly_available(NB, subsidiaries_list(NB)) :-
    notified_body(NB).
must_keep(NB, documents_of(Sub, period(years(5), after(termination_date(Sub))))) :-
    notified_body(NB),
    (   subcontractor(NB, Sub)
    ;   subsidiary(NB, Sub)
    ).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permit_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep/2, 'celex:32024R1689/oj#art_33').
provenance(subcontractor/2, 'celex:32024R1689/oj#art_33').
provenance(subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(agreement/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body must verify conformity of high‑risk AI system', 'celex:32024R1689/oj#art_34').
must_verify_conformity(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).
declared(must_avoid_unnecessary_burdens/2, 'notified body must avoid unnecessary burdens for provider', 'celex:32024R1689/oj#art_34').
must_avoid_unnecessary_burdens(NB, P) :-
    notified_body(NB),
    provider(P).
declared(must_respect_rigour_and_protection/2, 'notified body must respect required rigour and level of protection for high‑risk AI system', 'celex:32024R1689/oj#art_34').
must_respect_rigour_and_protection(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).
declared(must_provide_documentation/2, 'notified body must make available and submit documentation to notifying authority', 'celex:32024R1689/oj#art_34').
must_provide_documentation(NB, A) :-
    notified_body(NB),
    notifying_authority(A).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_35').
declared(must_assign/2, 'Commission shall assign a single identification number to each notified body', 'celex:32024R1689/oj#art_35').
declared(must_ensure_up_to_date/2, 'Commission shall ensure the publicly available list is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign(Commission, identification_number(Body)) :-
    commission(Commission),
    notified_body(Body).
must_make_publicly_available(Commission, notified_body_list) :-
    commission(Commission).
must_ensure_up_to_date(Commission, notified_body_list) :-
    commission(Commission).
provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify/2, 'notifying authority must notify about changes', 'celex:32024R1689/oj#art_36').
declared(must_inform/2, 'entity must inform another party', 'celex:32024R1689/oj#art_36').
declared(must_investigate/2, 'notifying authority must investigate', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact/2, 'notifying authority must assess impact on certificates', 'celex:32024R1689/oj#art_36').
declared(must_submit_report/2, 'notifying authority must submit report', 'celex:32024R1689/oj#art_36').
declared(must_require_certificate_action/2, 'notifying authority must require suspension or withdrawal of certificates', 'celex:32024R1689/oj#art_36').
declared(must_keep_files/2, 'notifying authority must keep files of notified body', 'celex:32024R1689/oj#art_36').
declared(must_make_files_available/2, 'notifying authority must make files available to other authorities', 'celex:32024R1689/oj#art_36').
must_notify(Authority, change_notification(commission, other_member_states)) :-
    notifying_authority(Authority).
must_inform(NotifiedBody, cessation_notice(Authority, Providers)) :-
    notified_body(NotifiedBody),
    notifying_authority(Authority),
    provider(Providers).
must_investigate(Authority, NotifiedBody) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_inform(Authority, objections_raised(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).
must_inform(NotifiedBody, providers_concerned(within(days(10)))) :-
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).
must_keep_files(Authority, files_of(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).
must_make_files_available(Authority, files_of(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).
must_assess_impact(Authority, certificates_of(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).
must_submit_report(Authority, report(findings, commission_and_member_states, within(months(3)))) :-
    notifying_authority(Authority),
    designation_changed(_, suspension;restriction;withdrawal).
must_require_certificate_action(Authority, suspend_or_withdraw(certificates_unduly_issued, reasonable_period)) :-
    notifying_authority(Authority),
    designation_changed(_, suspension;restriction;withdrawal).
must_inform(Authority, commission_and_member_states(certificates_suspended_or_withdrawn)) :-
    notifying_authority(Authority),
    designation_changed(_, suspension;restriction;withdrawal).
must_inform(Authority, national_competent_authority(ProviderMemberState, certificate_information)) :-
    notifying_authority(Authority),
    provider(Provider),
    national_competent_authority(ProviderMemberState).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_certificate_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_files_available/2, 'celex:32024R1689/oj#art_36').
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
declared(reasons_to_doubt_competence/1, 'there are reasons to doubt the competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(not_fulfil_requirements/1, 'a notified body does not meet the requirements laid down in art_31', 'celex:32024R1689/oj#art_37').
declared(request_made/2, 'the Commission requests information from a notifying authority', 'celex:32024R1689/oj#art_37').
declared(sensitive_information_obtained/1, 'sensitive information obtained during investigations', 'celex:32024R1689/oj#art_37').
declared(member_state_fails_to_correct/1, 'the notifying Member State fails to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
must_investigate(commission, case_of_doubt(NB)) :-
    notified_body(NB),
    (   reasons_to_doubt_competence(NB)
    ;   not_fulfil_requirements(NB)
    ).
must_provide(Authority, information(related_to(NB))) :-
    notifying_authority(Authority),
    request_made(commission, Authority),
    notified_body(NB).
must_ensure(commission, confidential_treatment(SI)) :-
    sensitive_information_obtained(SI).
must_inform(commission, informing(member_state(MS), NB)) :-
    not_fulfil_requirements(NB),
    member_state(MS),
    notified_body(NB).
must_request(member_state(MS), corrective_measures(NB)) :-
    not_fulfil_requirements(NB),
    member_state(MS),
    notified_body(NB).
permitted_suspend_designation(NB) :-
    member_state_fails_to_correct(NB),
    notified_body(NB).
permitted_restrict_designation(NB) :-
    member_state_fails_to_correct(NB),
    notified_body(NB).
permitted_withdraw_designation(NB) :-
    member_state_fails_to_correct(NB),
    notified_body(NB).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_suspend_designation/1, 'celex:32024R1689/oj#art_37').
provenance(permitted_restrict_designation/1, 'celex:32024R1689/oj#art_37').
provenance(permitted_withdraw_designation/1, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure/2, 'obligation to ensure', 'celex:32024R1689/oj#art_38').
declared(must_provide/2, 'obligation to provide', 'celex:32024R1689/oj#art_38').
must_ensure(_Commission, coordination_and_cooperation_between_notified_bodies(HR)) :-
    high_risk_ai_system(HR).
must_ensure(_Authority, participation_of_notified_bodies_in_group(_Authority)) :-
    notifying_authority(_Authority).
must_provide(_Commission, exchange_of_knowledge_and_best_practices_between_notifying_authorities) :-
    notifying_authority(_).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country with which the Union has concluded an agreement', 'celex:32024R1689/oj#art_39').
declared(equivalent_compliance/1, 'ensures an equivalent level of compliance with the requirements laid down in article 31', 'celex:32024R1689/oj#art_39').
permitted_authorisation_of_conformity_assessment_body(CAB) :-
    third_country_conformity_assessment_body(CAB),
    (   meets_requirements_art_31(CAB)
    ;   equivalent_compliance(CAB)
    ).
provenance(permitted_authorisation_of_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(conform_requirements/2, 'system conforms to requirements when complying with a harmonised standard', 'celex:32024R1689/oj#art_40').
declared(conform_obligation/2, 'system conforms to obligation when complying with a harmonised standard', 'celex:32024R1689/oj#art_40').
declared(must_issue/2, 'Commission shall issue a standardisation request', 'celex:32024R1689/oj#art_40').
declared(must_include/2, 'Commission shall include deliverables on resource performance', 'celex:32024R1689/oj#art_40').
declared(must_consult/2, 'Commission shall consult board and stakeholders', 'celex:32024R1689/oj#art_40').
declared(must_specify/2, 'Commission shall specify standards characteristics', 'celex:32024R1689/oj#art_40').
declared(must_seek/2, 'Participants shall seek to promote investment and innovation', 'celex:32024R1689/oj#art_40').
conform_requirements(S, chp_3_sec_2) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    complies_with_harmonised_standard(S).
conform_obligation(S, chp_5_sec_2) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    complies_with_harmonised_standard(S).
conform_obligation(S, chp_5_sec_3) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    complies_with_harmonised_standard(S).
must_issue(C, standardisation_request(requirements(chp_3_sec_2))) :-
    ai_office(C).
must_issue(C, standardisation_request(obligation(chp_5_sec_2))) :-
    ai_office(C).
must_issue(C, standardisation_request(obligation(chp_5_sec_3))) :-
    ai_office(C).
must_include(C, resource_performance_deliverable) :-
    ai_office(C).
must_consult(C, board) :-
    ai_office(C).
must_consult(C, stakeholder) :-
    ai_office(C).
must_specify(C, standard_characteristics(clear, consistent, union_harmonisation_legislation(anx_1))) :-
    ai_office(C).
must_seek(O, promote(investment_and_innovation)) :-
    operator(O).
provenance(conform_requirements/2, 'celex:32024R1689/oj#art_40').
provenance(conform_obligation/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_include/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_seek/2, 'celex:32024R1689/oj#art_40').
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
declared(adopt_implementing_act/2, 'Commission may adopt implementing act establishing common specifications', 'celex:32024R1689/oj#art_41').
adopt_implementing_act(Commission, _Act) :-
    Commission = commission,
    condition_a(Commission),
    condition_b(Commission).
declared(condition_a/1, 'Condition (a) for adopting common specifications is fulfilled', 'celex:32024R1689/oj#art_41').
declared(condition_b/1, 'Condition (b) for adopting common specifications is fulfilled', 'celex:32024R1689/oj#art_41').
declared(must_consult/2, 'Commission shall consult the advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
must_consult(Commission, advisory_forum) :-
    Commission = commission.
declared(must_adopt/2, 'Commission shall adopt implementing acts in accordance with the examination procedure', 'celex:32024R1689/oj#art_41').
must_adopt(Commission, implementing_act) :-
    Commission = commission.
declared(must_inform/2, 'Commission shall inform the committee that conditions are fulfilled', 'celex:32024R1689/oj#art_41').
must_inform(Commission, inform(committee, conditions_fulfilled)) :-
    Commission = commission.
declared(presumed_conformity/1, 'System conforming to common specifications is presumed to conform with requirements', 'celex:32024R1689/oj#art_41').
presumed_conformity(System) :-
    (high_risk_ai_system(System) ; general_purpose_ai_model(System)),
    conforms_to_common_specifications(System).
declared(conforms_to_common_specifications/1, 'System is in conformity with the common specifications', 'celex:32024R1689/oj#art_41').
declared(must_assess/2, 'Commission shall assess harmonised standard or information', 'celex:32024R1689/oj#art_41').
must_assess(Commission, harmonised_standard) :-
    Commission = commission.
must_assess(Commission, information) :-
    Commission = commission.
declared(must_repeal/2, 'Commission shall repeal implementing acts when harmonised standard is published', 'celex:32024R1689/oj#art_41').
must_repeal(Commission, implementing_act) :-
    Commission = commission.
declared(must_justify/2, 'Provider shall justify technical solutions when not complying with common specifications', 'celex:32024R1689/oj#art_41').
must_justify(Provider, justification(technical_solutions_meet_requirements)) :-
    provider(Provider).
declared(must_inform/2, 'Member State shall inform Commission of deficiencies in common specifications', 'celex:32024R1689/oj#art_41').
must_inform(MemberState, inform(commission, detailed_explanation)) :-
    member_state(MemberState).
declared(must_amend/2, 'Commission shall amend implementing act after assessing information', 'celex:32024R1689/oj#art_41').
must_amend(Commission, implementing_act) :-
    Commission = commission.
provenance(adopt_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(condition_a/1, 'celex:32024R1689/oj#art_41').
provenance(condition_b/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_41').
provenance(conforms_to_common_specifications/1, 'celex:32024R1689/oj#art_41').
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
declared(trained_and_tested_on_reflective_data_applies/1, 'system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting intended for use', 'celex:32024R1689/oj#art_42').
declared(certified_under_cybersecurity_scheme_applies/1, 'system certified or with a statement of conformity issued under a cybersecurity scheme', 'celex:32024R1689/oj#art_42').
declared(published_references_applies/1, 'references of the cybersecurity certificate or statement of conformity have been published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_42').
presumed_compliant(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_reflective_data_applies(S).
presumed_cybersecurity_compliance(S) :-
    high_risk_ai_system(S),
    certified_under_cybersecurity_scheme_applies(S),
    published_references_applies(S).
provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_cybersecurity_compliance/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(applied_harmonised_standard/2, 'provider has applied a harmonised standard to the AI system', 'celex:32024R1689/oj#art_43').
declared(applied_common_specification/2, 'provider has applied a common specification to the AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_exists/1, 'a harmonised standard exists for the AI system', 'celex:32024R1689/oj#art_43').
declared(common_specification_available/1, 'a common specification is available for the AI system', 'celex:32024R1689/oj#art_43').
declared(provider_applied_harmonised_standard/2, 'provider applied the full harmonised standard to the AI system', 'celex:32024R1689/oj#art_43').
declared(provider_applied_partial_harmonised_standard/2, 'provider applied only part of the harmonised standard to the AI system', 'celex:32024R1689/oj#art_43').
declared(provider_applied_common_specification/2, 'provider applied the common specification to the AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_restricted/1, 'a harmonised standard for the AI system is published with a restriction', 'celex:32024R1689/oj#art_43').
declared(provider_applied_only_restricted_part/2, 'provider applied only the restricted part of the harmonised standard', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement/1, 'high‑risk AI system is intended for law‑enforcement, immigration, asylum authorities or Union institutions', 'celex:32024R1689/oj#art_43').
declared(annex_3_pnt_2_to_8/1, 'high‑risk AI system listed in annex 3 points 2‑8', 'celex:32024R1689/oj#art_43').
declared(pre_determined_change/1, 'change to the AI system was pre‑determined by the provider and documented in the technical documentation', 'celex:32024R1689/oj#art_43').
declared(compliance_assessed/1, 'notified body compliance with the requirements of article 31 has been assessed', 'celex:32024R1689/oj#art_43').
declared(permitted_notified_body_choice/2, 'provider may choose any notified body', 'celex:32024R1689/oj#art_43').
declared(must_choose_conformity_assessment_procedure/2, 'provider must choose a conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(must_follow_annex_7_procedure/2, 'provider must follow the conformity assessment procedure set out in annex 7', 'celex:32024R1689/oj#art_43').
declared(must_use_market_surveillance_authority_as_notified_body/2, 'market surveillance authority shall act as notified body', 'celex:32024R1689/oj#art_43').
declared(must_follow_union_legislation_procedure/2, 'provider must follow the conformity assessment procedure required by Union harmonisation legislation', 'celex:32024R1689/oj#art_43').
declared(must_conduct_new_conformity_assessment/2, 'provider must conduct a new conformity assessment after a substantial modification', 'celex:32024R1689/oj#art_43').
declared(permitted_amendment/2, 'Commission may amend annexes', 'celex:32024R1689/oj#art_43').
declared(must_adopt_delegated_act/2, 'Commission must adopt delegated acts to amend article 43 paragraphs 1‑2', 'celex:32024R1689/oj#art_43').
must_choose_conformity_assessment_procedure(Provider, internal_control) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S),
    (   applied_harmonised_standard(Provider, S)
    ;   applied_common_specification(Provider, S)
    ).
must_choose_conformity_assessment_procedure(Provider, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S),
    (   applied_harmonised_standard(Provider, S)
    ;   applied_common_specification(Provider, S)
    ).
must_follow_annex_7_procedure(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    (   ( \+ harmonised_standard_exists(S), \+ common_specification_available(S) )
    ;   ( \+ provider_applied_harmonised_standard(Provider, S)
        ; provider_applied_partial_harmonised_standard(Provider, S) )
    ;   ( common_specification_available(S), \+ provider_applied_common_specification(Provider, S) )
    ;   ( harmonised_standard_restricted(S), provider_applied_only_restricted_part(Provider, S) )
    ).
permitted_notified_body_choice(Provider, NB) :-
    provider(Provider),
    notified_body(NB).
must_use_market_surveillance_authority_as_notified_body(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_for_law_enforcement(S).
must_choose_conformity_assessment_procedure(Provider, internal_control) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_3_pnt_2_to_8(S).
must_follow_union_legislation_procedure(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).
permitted_notified_body_control(Provider, NB, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    notified_body(NB),
    compliance_assessed(NB).
must_conduct_new_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    substantial_modification(S),
    \+ pre_determined_change(S).
permitted_amendment(commission, annex_6).
permitted_amendment(commission, annex_7).
must_adopt_delegated_act(commission, amendment_of_art_43_par_1_2).
provenance(must_choose_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_annex_7_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body_choice/2, 'celex:32024R1689/oj#art_43').
provenance(must_use_market_surveillance_authority_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_union_legislation_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body_control/3, 'celex:32024R1689/oj#art_43').
provenance(must_conduct_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_amendment/2, 'celex:32024R1689/oj#art_43').
provenance(must_adopt_delegated_act/2, 'celex:32024R1689/oj#art_43').
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
declared(certificate_of/2, 'certificate relates to AI system', 'celex:32024R1689/oj#art_44').
declared(certificate_validity/2, 'validity period of a certificate expressed in years', 'celex:32024R1689/oj#art_44').
declared(annex_1_ai_system/1, 'AI system covered by annex 1', 'celex:32024R1689/oj#art_44').
declared(non_compliant/1, 'AI system no longer meets the requirements', 'celex:32024R1689/oj#art_44').
declared(compliance_restored_by_provider/2, 'provider has taken corrective action ensuring compliance by a deadline', 'celex:32024R1689/oj#art_44').
declared(decision/1, 'decision taken by a notified body', 'celex:32024R1689/oj#art_44').
must_draw_up(NotifiedBody, certificate_language(Authority)) :-
    notified_body(NotifiedBody),
    market_surveillance_authority(Authority).
prohibited_certificate(Cert) :-
    certificate(Cert),
    certificate_of(Cert, System),
    annex_1_ai_system(System),
    certificate_validity(Cert, years(Years)),
    Years > 5.
prohibited_certificate(Cert) :-
    certificate(Cert),
    certificate_of(Cert, System),
    annex_3_ai_system(System),
    certificate_validity(Cert, years(Years)),
    Years > 4.
must_suspend_or_withdraw_or_restrict(NotifiedBody, Cert) :-
    notified_body(NotifiedBody),
    certificate(Cert),
    certificate_of(Cert, System),
    non_compliant(System),
    \+ compliance_restored_by_provider(System, _Deadline).
must_give_reasons(NotifiedBody, Decision) :-
    notified_body(NotifiedBody),
    decision(Decision),
    decision_made_by(NotifiedBody, Decision).
required_appeal_procedure_available(appeal_procedure).
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_44').
provenance(prohibited_certificate/1, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_or_restrict/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(required_appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'obligation of a notified body to inform a party about specific information', 'celex:32024R1689/oj#art_45').
declared(must_provide/2, 'obligation of a notified body to provide information to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard/2, 'obligation of a notified body to safeguard confidentiality', 'celex:32024R1689/oj#art_45').
must_inform(NB, inform(notifying_authority, info_a)) :-
    notified_body(NB).
must_inform(NB, inform(notifying_authority, info_b)) :-
    notified_body(NB).
must_inform(NB, inform(notifying_authority, info_c)) :-
    notified_body(NB).
must_inform(NB, inform(notifying_authority, info_d)) :-
    notified_body(NB).
must_inform(NB, inform(notifying_authority, info_e)) :-
    notified_body(NB).
must_inform(NB, inform(other_notified_bodies, info_2a)) :-
    notified_body(NB).
must_inform(NB, inform(other_notified_bodies, info_2b)) :-
    notified_body(NB).
must_provide(NB, provide(other_notified_bodies, conformity_assessment_results(negative, positive_on_request))) :-
    notified_body(NB).
must_safeguard(NB, confidentiality_of(information_obtained)) :-
    notified_body(NB).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(specific_high_risk_ai_system/1, 'specific high‑risk AI system', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional reason for derogation', 'celex:32024R1689/oj#art_46').
declared(urgent_situation/1, 'urgently justified situation', 'celex:32024R1689/oj#art_46').
declared(civil_protection_authority/1, 'civil protection authority', 'celex:32024R1689/oj#art_46').
declared(authorisation_issued_by/2, 'authorisation issued by authority for system', 'celex:32024R1689/oj#art_46').
declared(receipt_of_information/2, 'receipt of information by authority', 'celex:32024R1689/oj#art_46').
declared(objection_raised/2, 'objection raised by member state or commission', 'celex:32024R1689/oj#art_46').
declared(within_15_days/1, 'within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_46').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_46').
authorise_placing_on_market(Authority, System) :-
    market_surveillance_authority(Authority),
    specific_high_risk_ai_system(System),
    exceptional_reason(_Reason).
authorise_putting_into_service(Authority, System) :-
    market_surveillance_authority(Authority),
    specific_high_risk_ai_system(System),
    exceptional_reason(_Reason).
put_into_service(Authority, System) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    specific_high_risk_ai_system(System),
    urgent_situation(_Situation).
must_inform(Authority, authorisation_issued(System)) :-
    market_surveillance_authority(Authority),
    authorisation_issued_by(Authority, System),
    \+ sensitive_operational_data(_).
justified_authorisation(System) :-
    authorisation_issued_by(Authority, System),
    receipt_of_information(Authority, Info),
    within_15_days(Info),
    \+ objection_raised(_, Info).
must_consult(Commission, Authority) :-
    commission(Commission),
    objection_raised(Authority, _).
must_decide_justification(Commission, System) :-
    commission(Commission),
    objection_raised(_, System).
must_withdraw(Authority, System) :-
    market_surveillance_authority(Authority),
    commission_considers_unjustified(System).
prohibited_authorisation_outside_union_harmonisation(System) :-
    high_risk_ai_system(System),
    product_covered_by_union_harmonisation_legislation(System),
    \+ authorisation_issued_by(_, System).
provenance(authorise_placing_on_market/2, 'celex:32024R1689/oj#art_46').
provenance(authorise_putting_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(put_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_consult/2, 'celex:32024R1689/oj#art_46').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_46').
provenance(prohibited_authorisation_outside_union_harmonisation/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_4').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_5').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_6').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for a high‑risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_of_conformity/2, 'provider must keep the EU declaration of conformity for 10 years after placement or service', 'celex:32024R1689/oj#art_47').
declared(must_submit_copy_declaration_of_conformity/2, 'provider must submit a copy of the EU declaration of conformity to the national competent authority upon request', 'celex:32024R1689/oj#art_47').
declared(required_meets_requirements_art_31/1, 'EU declaration of conformity must state that the high‑risk AI system meets the requirements of article 31', 'celex:32024R1689/oj#art_47').
declared(required_information_annex_5/1, 'EU declaration of conformity must contain the information set out in annex 5', 'celex:32024R1689/oj#art_47').
declared(required_translation/1, 'EU declaration of conformity must be translated into a language easily understood by the national competent authorities', 'celex:32024R1689/oj#art_47').
declared(must_draw_up_single_declaration_of_conformity/2, 'provider must draw up a single EU declaration of conformity covering all applicable Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(must_assume_responsibility_declaration_of_conformity/2, 'provider assumes responsibility for compliance by drawing up the EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(must_keep_up_to_date_declaration_of_conformity/2, 'provider must keep the EU declaration of conformity up‑to‑date', 'celex:32024R1689/oj#art_47').
declared(after_placement_or_service/1, 'event occurs after the AI system has been placed on the market or put into service', 'celex:32024R1689/oj#art_47').
declared(years/1, 'duration in years', 'celex:32024R1689/oj#art_47').
must_draw_up_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_keep_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    years(10),
    after_placement_or_service(S).
must_submit_copy_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    national_competent_authority(_).
required_meets_requirements_art_31(declaration_of_conformity(S)) :-
    high_risk_ai_system(S).
required_information_annex_5(declaration_of_conformity(S)) :-
    high_risk_ai_system(S).
required_translation(declaration_of_conformity(S)) :-
    high_risk_ai_system(S),
    member_state(MS),
    member_state(MS).
must_draw_up_single_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).
must_assume_responsibility_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_keep_up_to_date_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
after_placement_or_service(S) :-
    placing_on_market(S).
after_placement_or_service(S) :-
    putting_into_service(S).
years(10).
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(required_meets_requirements_art_31/1, 'celex:32024R1689/oj#art_47').
provenance(required_information_annex_5/1, 'celex:32024R1689/oj#art_47').
provenance(required_translation/1, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_single_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_up_to_date_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(after_placement_or_service/1, 'celex:32024R1689/oj#art_47').
provenance(years/1, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(required_general_principles/1, 'CE marking shall be subject to the general principles', 'celex:32024R1689/oj#art_48').
declared(required_digital_ce_marking/1, 'digital CE marking shall be used for digitally provided high‑risk AI systems', 'celex:32024R1689/oj#art_48').
declared(required_visible_affixation/1, 'CE marking shall be affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(required_indication_of_other_law/1, 'CE marking shall indicate fulfilment of other applicable Union law', 'celex:32024R1689/oj#art_48').
declared(must_affix/2, 'actor shall affix the identification number of the notified body to the CE marking', 'celex:32024R1689/oj#art_48').
declared(must_indicate_in_promotional_material/2, 'actor shall indicate the identification number of the notified body in promotional material', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'AI system is provided digitally', 'celex:32024R1689/oj#art_48').
declared(other_union_law/1, 'high‑risk AI system is subject to another Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
required_general_principles(CE) :-
    ce_marking(CE).
required_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S).
required_visible_affixation(S) :-
    high_risk_ai_system(S).
required_indication_of_other_law(S) :-
    high_risk_ai_system(S),
    other_union_law(S).
must_affix(Body, identification_number(Body)) :-
    notified_body(Body).
must_affix(Provider, identification_number(Body)) :-
    provider(Provider),
    notified_body(Body).
must_affix(Rep, identification_number(Body)) :-
    authorised_representative(Rep),
    notified_body(Body).
must_indicate_in_promotional_material(Provider, identification_number(Body)) :-
    provider(Provider),
    notified_body(Body).
must_indicate_in_promotional_material(Rep, identification_number(Body)) :-
    authorised_representative(Rep),
    notified_body(Body).
provenance(required_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(required_visible_affixation/1, 'celex:32024R1689/oj#art_48').
provenance(required_indication_of_other_law/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix/2, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_in_promotional_material/2, 'celex:32024R1689/oj#art_48').
provenance(provided_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(other_union_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(exempt_high_risk_ai_system/1, 'high‑risk AI system referred to in annex 3 point 2', 'celex:32024R1689/oj#anx_3/pnt_2').
declared(law_enforcement_related/1, 'high‑risk AI system used in law‑enforcement, migration, asylum or border‑control management', 'celex:32024R1689/oj#art_49/par_4').
declared(required_secure_non_public_section/1, 'registration must be in a secure non‑public section of the EU database', 'celex:32024R1689/oj#art_49/par_4').
declared(required_registration_information/2, 'registration must include the specified information', 'celex:32024R1689/oj#art_49/par_4').
declared(required_national_registration/1, 'high‑risk AI system must be registered at national level', 'celex:32024R1689/oj#art_49/par_5').
must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    \+ exempt_high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    \+ high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_register(Actor, System) :-
    deployer(Actor),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    \+ exempt_high_risk_ai_system(System),
    (putting_into_service(System) ; using_system(Actor, System)).
required_secure_non_public_section(System) :-
    high_risk_ai_system(System),
    (annex_3_pnt_1_a(System) ; annex_3_pnt_6(System) ; annex_3_pnt_7(System)),
    law_enforcement_related(System).
required_registration_information(System, a) :-
    required_secure_non_public_section(System).
required_registration_information(System, b) :-
    required_secure_non_public_section(System).
required_registration_information(System, c) :-
    required_secure_non_public_section(System).
required_registration_information(System, d) :-
    required_secure_non_public_section(System).
required_national_registration(System) :-
    exempt_high_risk_ai_system(System).
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(required_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(required_registration_information/2, 'celex:32024R1689/oj#art_49').
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
declared(interacts_directly_with_natural_persons_applies/1, 'AI system intended to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(obvious_applies/1, 'It is obvious to a reasonably well‑informed, observant and circumspect natural person', 'celex:32024R1689/oj#art_50').
declared(authorised_for_criminal_offences_applies/1, 'AI system is authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content_applies/1, 'AI system generates synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(assistive_function_applies/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(not_substantially_alter_input_applies/1, 'AI system does not substantially alter the input data provided by the deployer', 'celex:32024R1689/oj#art_50').
declared(generates_text_applies/1, 'AI system generates or manipulates text content', 'celex:32024R1689/oj#art_50').
declared(public_interest_purpose_applies/1, 'The generated text is published with the purpose of informing the public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(human_review_applies/1, 'AI‑generated content has undergone a process of human review or editorial control', 'celex:32024R1689/oj#art_50').
must_inform(Provider, ai_interaction_information(S)) :-
    provider(Provider),
    ai_system(S),
    interacts_directly_with_natural_persons_applies(S),
    \+ obvious_applies(S),
    \+ authorised_for_criminal_offences_applies(S).
must_mark(Provider, output_marked(S)) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content_applies(S),
    \+ assistive_function_applies(S),
    \+ not_substantially_alter_input_applies(S),
    \+ authorised_for_criminal_offences_applies(S).
must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_for_criminal_offences_applies(S).
must_process_personal_data(Deployer, S) :-
    deployer(Deployer),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_for_criminal_offences_applies(S).
must_disclose(Deployer, artificial_generation(S)) :-
    deployer(Deployer),
    deep_fake(S),
    \+ authorised_for_criminal_offences_applies(S).
must_disclose(Deployer, artificial_generation_text(S)) :-
    deployer(Deployer),
    generates_text_applies(S),
    public_interest_purpose_applies(S),
    \+ authorised_for_criminal_offences_applies(S),
    \+ human_review_applies(S).
must_provide(Actor, clear_distinguishable_information) :-
    (provider(Actor) ; deployer(Actor)).
must_encourage(ai_office, drawing_up_codes_of_practice).
must_facilitate(ai_office, drawing_up_codes_of_practice).
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark/2, 'celex:32024R1689/oj#art_50').
provenance(must_process_personal_data/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_provide/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_50').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_50').
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
declared(commission_equivalent_capabilities/1, 'capabilities or impact equivalent to those set out in the reference based on a Commission decision', 'celex:32024R1689/oj#art_51').
declared(has_training_computation/2, 'cumulative amount of computation used for training measured in floating point operations', 'celex:32024R1689/oj#art_51').
systemic_risk(S) :-
    general_purpose_ai_model(S),
    (   high_impact_capabilities(S)
    ;   commission_equivalent_capabilities(S)
    ).
provenance(systemic_risk/1, 'celex:32024R1689/oj#art_51').
high_impact_capabilities(S) :-
    has_training_computation(S, Ops),
    Ops > 1025.
provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
must_adopt(commission, delegated_act_amending_thresholds).
provenance(must_adopt/2, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(provides_general_purpose_ai_model/2, 'provider provides a general‑purpose AI model', 'celex:32024R1689/oj#art_52').
declared(condition_a/1, 'general‑purpose AI model meets condition referred to in art 51 p 1 a', 'celex:32024R1689/oj#art_52').
declared(arguments_not_substantiated/2, 'commission concludes that the provider’s arguments are not sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(provider_unable_to_demonstrate_no_risk/2, 'provider cannot demonstrate that the model does not present systemic risks', 'celex:32024R1689/oj#art_52').
declared(criteria_set_in_annex_13/0, 'criteria for systemic risk are set out in annex 13', 'celex:32024R1689/oj#art_52').
declared(designated_systemic_risk/1, 'general‑purpose AI model has been designated as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(request_contains/3, 'request contains objective, detailed and new reasons', 'celex:32024R1689/oj#art_52').
declared(six_months_after_designation/1, 'six months have elapsed since the designation decision', 'celex:32024R1689/oj#art_52').
must_notify(Provider, notification(general_purpose_ai_model(Model), commission, within(weeks(2)), info(demonstrate_requirement_met))) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    condition_a(Model).
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
permitted_present_arguments(Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    condition_a(Model).
provenance(permitted_present_arguments/1, 'celex:32024R1689/oj#art_52').
must_reject_arguments(Commission, arguments(Provider, Model)) :-
    ai_office(Commission),
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    arguments_not_substantiated(Provider, Model),
    provider_unable_to_demonstrate_no_risk(Provider, Model).
provenance(must_reject_arguments/2, 'celex:32024R1689/oj#art_52').
must_classify_as_systemic_risk(Commission, Model) :-
    ai_office(Commission),
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    general_purpose_ai_model(Model),
    arguments_not_substantiated(Provider, Model),
    provider_unable_to_demonstrate_no_risk(Provider, Model).
provenance(must_classify_as_systemic_risk/2, 'celex:32024R1689/oj#art_52').
permitted_designate_systemic_risk(Commission) :-
    ai_office(Commission),
    criteria_set_in_annex_13.
provenance(permitted_designate_systemic_risk/1, 'celex:32024R1689/oj#art_52').
must_adopt(Commission, delegated_act(amend_annex_13)) :-
    ai_office(Commission).
provenance(must_adopt/2, 'celex:32024R1689/oj#art_52').
must_take_request_into_account(Commission, request(Provider, Model)) :-
    ai_office(Commission),
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    designated_systemic_risk(Model),
    request_contains(Provider, Model, objective_detailed_new_reasons).
provenance(must_take_request_into_account/2, 'celex:32024R1689/oj#art_52').
permitted_reassess(Commission) :-
    ai_office(Commission),
    designated_systemic_risk(Model),
    criteria_set_in_annex_13.
provenance(permitted_reassess/1, 'celex:32024R1689/oj#art_52').
permitted_request_reassessment(Provider) :-
    provider(Provider),
    provides_general_purpose_ai_model(Provider, Model),
    designated_systemic_risk(Model),
    six_months_after_designation(Model).
provenance(permitted_request_reassessment/1, 'celex:32024R1689/oj#art_52').
must_publish(Commission, list(systemic_risk_models)) :-
    ai_office(Commission).
provenance(must_publish/2, 'celex:32024R1689/oj#art_52').
must_keep_up_to_date(Commission, list(systemic_risk_models)) :-
    ai_office(Commission).
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(required_technical_documentation/1, 'technical documentation must be drawn up and kept up‑to‑date', 'celex:32024R1689/oj#art_53').
declared(required_information_for_integrators/1, 'information and documentation for AI system providers must be drawn up, kept up‑to‑date and made available', 'celex:32024R1689/oj#art_53').
declared(required_copyright_policy/1, 'policy to comply with Union copyright law must be put in place', 'celex:32024R1689/oj#art_53').
declared(required_training_summary/1, 'summary of training data content must be drawn up and made publicly available', 'celex:32024R1689/oj#art_53').
declared(exempt_provider/1, 'provider exempt from the obligations', 'celex:32024R1689/oj#art_53').
declared(provider_of_open_source_model/1, 'provider of an open‑source AI model', 'celex:32024R1689/oj#art_53').
declared(open_source_license/1, 'model is released under a free and open‑source licence', 'celex:32024R1689/oj#art_53').
declared(must_cooperate/2, 'provider must cooperate with the Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(permitted_reliance_on_code_of_practice/1, 'provider may rely on codes of practice until a harmonised standard is published', 'celex:32024R1689/oj#art_53').
declared(must_handle_confidentially/2, 'information obtained must be treated confidentially', 'celex:32024R1689/oj#art_53').
declared(contains_minimum_information/2, 'documentation contains the minimum information set out in the referenced annex', 'celex:32024R1689/oj#art_53').
declared(provides_upon_request/2, 'information is provided upon request to the specified authority', 'celex:32024R1689/oj#art_53').
declared(enables_understanding/1, 'information enables understanding of capabilities and limitations', 'celex:32024R1689/oj#art_53').
declared(follows_template/2, 'summary follows the template provided by the AI Office', 'celex:32024R1689/oj#art_53').
declared(harmonised_standard_published/0, 'a European harmonised standard covering the obligations has been published', 'celex:32024R1689/oj#art_53').
required_technical_documentation(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P),
    contains_minimum_information(P, annex_11),
    provides_upon_request(P, ai_office),
    provides_upon_request(P, national_competent_authority).
required_information_for_integrators(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P),
    enables_understanding(P),
    contains_minimum_information(P, annex_12).
required_copyright_policy(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P).
required_training_summary(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P),
    follows_template(P, ai_office).
exempt_provider(P) :-
    provider_of_open_source_model(P),
    \+ systemic_risk(P).
provider_of_open_source_model(P) :-
    general_purpose_ai_model_provider(P),
    open_source_license(P).
must_cooperate(P, commission) :-
    general_purpose_ai_model_provider(P).
must_cooperate(P, national_competent_authority) :-
    general_purpose_ai_model_provider(P).
permitted_reliance_on_code_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    \+ harmonised_standard_published.
must_handle_confidentially(P, information_obtained_under_art_53) :-
    general_purpose_ai_model_provider(P).
harmonised_standard_published :- fail.
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(required_information_for_integrators/1, 'celex:32024R1689/oj#art_53').
provenance(required_copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(required_training_summary/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_provider/1, 'celex:32024R1689/oj#art_53').
provenance(provider_of_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(open_source_license/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_reliance_on_code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(must_handle_confidentially/2, 'celex:32024R1689/oj#art_53').
provenance(contains_minimum_information/2, 'celex:32024R1689/oj#art_53').
provenance(provides_upon_request/2, 'celex:32024R1689/oj#art_53').
provenance(enables_understanding/1, 'celex:32024R1689/oj#art_53').
provenance(follows_template/2, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published/0, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_54 ====
declared(must_appoint/2, 'provider must appoint an authorised representative', 'celex:32024R1689/oj#art_54').
declared(must_enable/2, 'provider must enable its authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform_task/2, 'authorised representative must perform a mandated task', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate/2, 'authorised representative must terminate the mandate if provider is non‑compliant', 'celex:32024R1689/oj#art_54').
declared(must_inform/2, 'authorised representative must inform the AI Office of termination', 'celex:32024R1689/oj#art_54').
declared(established_in_third_country/1, 'entity is established in a third country', 'celex:32024R1689/oj#art_54').
declared(established_in_union/1, 'entity is established in the Union', 'celex:32024R1689/oj#art_54').
declared(open_source_license/1, 'provider releases the model under a free and open‑source licence', 'celex:32024R1689/oj#art_54').
declared(open_source_provider_without_systemic_risk/1, 'open‑source provider whose model does not present systemic risk', 'celex:32024R1689/oj#art_54').
declared(mandate_received/2, 'provider has given a written mandate to the authorised representative', 'celex:32024R1689/oj#art_54').
declared(provider_noncompliant/1, 'provider is acting contrary to its obligations', 'celex:32024R1689/oj#art_54').
must_appoint(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    established_in_third_country(Provider),
    established_in_union(Representative),
    \+ open_source_provider_without_systemic_risk(Provider).
must_enable(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    \+ open_source_provider_without_systemic_risk(Provider).
must_perform_task(Representative, verify_technical_documentation) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
must_perform_task(Representative, keep_copy_of_technical_documentation) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
must_perform_task(Representative, provide_copy_of_mandate) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
must_perform_task(Representative, provide_information) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
must_perform_task(Representative, cooperate) :-
    authorised_representative(Representative),
    mandate_received(Provider, Representative),
    provider(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_noncompliant(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
must_inform(Representative, termination_notice(Provider)) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_noncompliant(Provider),
    \+ open_source_provider_without_systemic_risk(Provider).
open_source_provider_without_systemic_risk(Provider) :-
    provider(Provider),
    open_source_license(Provider),
    \+ systemic_risk(Provider).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_task/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform/2, 'celex:32024R1689/oj#art_54').
provenance(open_source_provider_without_systemic_risk/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(systemic_risk_applies/1, 'general‑purpose AI model with systemic risk', 'celex:32024R1689/oj#art_55').
declared(must_perform_model_evaluation/2, 'provider must perform model evaluation', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risk/2, 'provider must assess and mitigate systemic risk', 'celex:32024R1689/oj#art_55').
declared(must_keep_track_document_and_report/2, 'provider must keep track, document and report', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_protection/2, 'provider must ensure cybersecurity protection', 'celex:32024R1689/oj#art_55').
declared(permitted_reliance_on_codes_of_practice/1, 'provider may rely on codes of practice', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_means_of_compliance/2, 'provider must demonstrate alternative means of compliance', 'celex:32024R1689/oj#art_55').
declared(required_confidential_treatment/1, 'information must be treated confidentially', 'celex:32024R1689/oj#art_55').
declared(information_obtained_art_55_applies/1, 'information obtained pursuant to article 55', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
must_assess_and_mitigate_systemic_risk(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
must_keep_track_document_and_report(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
must_ensure_cybersecurity_protection(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
permitted_reliance_on_codes_of_practice(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
must_demonstrate_alternative_means_of_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
required_confidential_treatment(I) :-
    information_obtained_art_55_applies(I).
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_keep_track_document_and_report/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_reliance_on_codes_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_means_of_compliance/2, 'celex:32024R1689/oj#art_55').
provenance(required_confidential_treatment/1, 'celex:32024R1689/oj#art_55').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_55').
provenance(information_obtained_art_55_applies/1, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(board/1, 'Board of the AI Office', 'celex:32024R1689/oj#art_56').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_56').
declared(systemic_risk_present/1, 'Provider presents systemic risk', 'celex:32024R1689/oj#art_56').
declared(declares_interest/1, 'Provider declares interest to join full code', 'celex:32024R1689/oj#art_56').
declared(finalised_by/1, 'Code of practice finalised by date', 'celex:32024R1689/oj#art_56').
declared(not_adequate_assessment/0, 'AI Office deems code not adequate', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate(AI, drawing_up_codes_of_practice) :-
    ai_office(AI).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
must_ensure(AI, codes_of_practice_cover_obligations) :-
    ai_office(AI).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_56').
must_ensure(B, codes_of_practice_cover_obligations) :-
    board(B).
must_ensure(AI, codes_of_practice_set_objectives) :-
    ai_office(AI).
must_ensure(B, codes_of_practice_set_objectives) :-
    board(B).
must_ensure(AI, participants_report_regularly) :-
    ai_office(AI).
must_monitor_and_evaluate(AI, codes_of_practice_objectives) :-
    ai_office(AI).
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
must_monitor_and_evaluate(B, codes_of_practice_objectives) :-
    board(B).
permitted_invite(AI, Provider) :-
    ai_office(AI),
    provider(Provider),
    general_purpose_ai_model_provider(Provider).
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_56').
permitted_invite(AI, Authority) :-
    ai_office(AI),
    national_competent_authority(Authority).
permitted_approve(Comm, code_of_practice) :-
    commission(Comm).
provenance(permitted_approve/2, 'celex:32024R1689/oj#art_56').
permitted_adhere(Provider, limited_to_art_53) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    \+ systemic_risk_present(Provider).
provenance(permitted_adhere/2, 'celex:32024R1689/oj#art_56').
permitted_adhere(Provider, full_code) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    declares_interest(Provider).
must_encourage_and_facilitate(AI, review_and_adaptation_of_codes) :-
    ai_office(AI).
must_assist(AI, assessment_of_standards) :-
    ai_office(AI).
provenance(must_assist/2, 'celex:32024R1689/oj#art_56').
must_be_ready_by(codes_of_practice, date(2025,5,2)).
provenance(must_be_ready_by/2, 'celex:32024R1689/oj#art_56').
must_take_steps(AI, inviting_providers_par_7) :-
    ai_office(AI).
provenance(must_take_steps/2, 'celex:32024R1689/oj#art_56').
permitted_provide(Comm, common_rules) :-
    commission(Comm),
    ( \+ finalised_by(date(2025,8,2))
    ; not_adequate_assessment
    ).
provenance(permitted_provide/2, 'celex:32024R1689/oj#art_56').
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
declared(must_establish/2, 'obligation to establish', 'celex:32024R1689/oj#art_57').
declared(prohibited_affect/1, 'prohibition to affect', 'celex:32024R1689/oj#art_57').
declared(must_allocate_resources/2, 'obligation to allocate sufficient resources', 'celex:32024R1689/oj#art_57').
declared(must_cooperate/2, 'obligation to cooperate with other relevant authorities', 'celex:32024R1689/oj#art_57').
declared(must_provide/2, 'obligation to provide', 'celex:32024R1689/oj#art_57').
declared(permitted_access/2, 'permission to access', 'celex:32024R1689/oj#art_57').
declared(permitted_make_publicly_available/1, 'permission to make publicly available', 'celex:32024R1689/oj#art_57').
declared(objective_improving_legal_certainty/1, 'objective to improve legal certainty', 'celex:32024R1689/oj#art_57').
declared(objective_support_sharing_best_practices/1, 'objective to support sharing of best practices', 'celex:32024R1689/oj#art_57').
declared(objective_fostering_innovation/1, 'objective to foster innovation and competitiveness', 'celex:32024R1689/oj#art_57').
declared(objective_evidence_based_learning/1, 'objective to contribute to evidence‑based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_facilitate_market_access/1, 'objective to facilitate and accelerate market access', 'celex:32024R1689/oj#art_57').
declared(objective_cross_border_cooperation/1, 'objective to facilitate cross‑border cooperation', 'celex:32024R1689/oj#art_57').
declared(must_associate/2, 'obligation to associate', 'celex:32024R1689/oj#art_57').
declared(must_mitigate/2, 'obligation to mitigate identified significant risks', 'celex:32024R1689/oj#art_57').
declared(must_suspend_testing/2, 'obligation to suspend testing or participation', 'celex:32024R1689/oj#art_57').
declared(must_inform/2, 'obligation to inform', 'celex:32024R1689/oj#art_57').
declared(good_faith/1, 'provider acts in good faith', 'celex:32024R1689/oj#art_57').
declared(permitted_no_administrative_fine/1, 'permission that no administrative fine be imposed', 'celex:32024R1689/oj#art_57').
declared(must_coordinate/2, 'obligation to coordinate', 'celex:32024R1689/oj#art_57').
declared(must_make_publicly_available/2, 'obligation to make publicly available', 'celex:32024R1689/oj#art_57').
declared(must_submit/2, 'obligation to submit', 'celex:32024R1689/oj#art_57').
declared(permitted_take_into_account/2, 'permission to take into account', 'celex:32024R1689/oj#art_57').
declared(must_develop/2, 'obligation to develop', 'celex:32024R1689/oj#art_57').
must_establish(CompetentAuthority, ai_regulatory_sandbox(by(date(2026,8,2)))) :-
    national_competent_authority(CompetentAuthority).
provenance(must_establish/2, 'celex:32024R1689/oj#art_57').
prohibited_affect(other_regulatory_sandbox).
provenance(prohibited_affect/1, 'celex:32024R1689/oj#art_57').
must_allocate_resources(CompetentAuthority, sufficient) :-
    national_competent_authority(CompetentAuthority).
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57').
must_cooperate(CompetentAuthority, other_relevant_authorities) :-
    national_competent_authority(CompetentAuthority).
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_57').
must_provide(CompetentAuthority, controlled_environment_for_innovation) :-
    national_competent_authority(CompetentAuthority).
provenance(must_provide/2, 'celex:32024R1689/oj#art_57').
must_provide(CompetentAuthority, guidance_and_supervision_in_sandbox) :-
    national_competent_authority(CompetentAuthority).
must_provide(CompetentAuthority, written_proof) :-
    national_competent_authority(CompetentAuthority).
must_provide(CompetentAuthority, exit_report) :-
    national_competent_authority(CompetentAuthority).
permitted_access(commission, exit_report).
provenance(permitted_access/2, 'celex:32024R1689/oj#art_57').
permitted_access(board, exit_report).
permitted_make_publicly_available(exit_report).
provenance(permitted_make_publicly_available/1, 'celex:32024R1689/oj#art_57').
objective_improving_legal_certainty(ai_regulatory_sandbox).
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
objective_support_sharing_best_practices(ai_regulatory_sandbox).
provenance(objective_support_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
objective_fostering_innovation(ai_regulatory_sandbox).
provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').
objective_evidence_based_learning(ai_regulatory_sandbox).
provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
objective_facilitate_market_access(ai_regulatory_sandbox).
provenance(objective_facilitate_market_access/1, 'celex:32024R1689/oj#art_57').
objective_cross_border_cooperation(ai_regulatory_sandbox).
provenance(objective_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
must_associate(national_competent_authority, national_data_protection_authority).
provenance(must_associate/2, 'celex:32024R1689/oj#art_57').
must_mitigate(CompetentAuthority, significant_risk) :-
    national_competent_authority(CompetentAuthority).
provenance(must_mitigate/2, 'celex:32024R1689/oj#art_57').
must_suspend_testing(CompetentAuthority, sandbox) :-
    national_competent_authority(CompetentAuthority).
provenance(must_suspend_testing/2, 'celex:32024R1689/oj#art_57').
must_inform(CompetentAuthority, inform(ai_office, decision)) :-
    national_competent_authority(CompetentAuthority).
provenance(must_inform/2, 'celex:32024R1689/oj#art_57').
good_faith(Provider).
provenance(good_faith/1, 'celex:32024R1689/oj#art_57').
permitted_no_administrative_fine(Provider) :-
    provider(Provider),
    good_faith(Provider).
provenance(permitted_no_administrative_fine/1, 'celex:32024R1689/oj#art_57').
must_coordinate(CompetentAuthority, board) :-
    national_competent_authority(CompetentAuthority).
provenance(must_coordinate/2, 'celex:32024R1689/oj#art_57').
must_inform(CompetentAuthority, inform(ai_office, sandbox_establishment)) :-
    national_competent_authority(CompetentAuthority).
must_make_publicly_available(ai_office, sandbox_list).
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_57').
must_submit(CompetentAuthority, annual_report) :-
    national_competent_authority(CompetentAuthority).
provenance(must_submit/2, 'celex:32024R1689/oj#art_57').
must_make_publicly_available(CompetentAuthority, annual_report) :-
    national_competent_authority(CompetentAuthority).
permitted_take_into_account(commission, annual_report).
provenance(permitted_take_into_account/2, 'celex:32024R1689/oj#art_57').
must_develop(commission, sandbox_interface).
provenance(must_develop/2, 'celex:32024R1689/oj#art_57').
must_coordinate(commission, national_competent_authority).
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_58 ====
declared(ai_regulatory_sandbox/1, 'AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(required_open_access/1, 'open access required for sandbox', 'celex:32024R1689/oj#art_58').
declared(required_broad_equal_access/1, 'broad and equal access required for sandbox', 'celex:32024R1689/oj#art_58').
declared(required_flexibility_for_nca/1, 'flexibility for national competent authorities required', 'celex:32024R1689/oj#art_58').
declared(required_free_of_charge_for_smes/1, 'free of charge for SMEs required', 'celex:32024R1689/oj#art_58').
declared(required_facilitate_compliance/1, 'facilitate compliance with conformity assessment obligations', 'celex:32024R1689/oj#art_58').
declared(required_facilitate_involvement/1, 'facilitate involvement of ecosystem actors', 'celex:32024R1689/oj#art_58').
declared(required_simple_intelligible_process/1, 'simple, intelligible and clear processes required', 'celex:32024R1689/oj#art_58').
declared(required_limited_period/1, 'limited participation period required', 'celex:32024R1689/oj#art_58').
declared(required_facilitate_development_of_tools/1, 'facilitate development of testing and benchmarking tools', 'celex:32024R1689/oj#art_58').
declared(prospective_provider/1, 'provider or prospective provider of an AI system', 'celex:32024R1689/oj#art_58').
declared(must_direct/2, 'must direct provider to a service', 'celex:32024R1689/oj#art_58').
declared(must_agree/2, 'must agree terms and conditions with participants', 'celex:32024R1689/oj#art_58').
declared(must_cooperate/2, 'must cooperate with other national competent authorities', 'celex:32024R1689/oj#art_58').
must_adopt(commission, implementing_act(details_for_ai_regulatory_sandboxes)).
required_open_access(S) :-
    ai_regulatory_sandbox(S).
required_broad_equal_access(S) :-
    ai_regulatory_sandbox(S).
required_flexibility_for_nca(S) :-
    ai_regulatory_sandbox(S).
required_free_of_charge_for_smes(S) :-
    ai_regulatory_sandbox(S).
required_facilitate_compliance(S) :-
    ai_regulatory_sandbox(S).
required_facilitate_involvement(S) :-
    ai_regulatory_sandbox(S).
required_simple_intelligible_process(S) :-
    ai_regulatory_sandbox(S).
required_limited_period(S) :-
    ai_regulatory_sandbox(S).
required_facilitate_development_of_tools(S) :-
    ai_regulatory_sandbox(S).
must_direct(P, service(guidance_on_implementation)) :-
    prospective_provider(P).
must_agree(N, terms_and_conditions(testing_in_real_world_conditions)) :-
    national_competent_authority(N).
must_cooperate(N, other_nca) :-
    national_competent_authority(N).
provenance(must_adopt/2, 'celex:32024R1689/oj#art_58').
provenance(required_open_access/1, 'celex:32024R1689/oj#art_58').
provenance(required_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(required_flexibility_for_nca/1, 'celex:32024R1689/oj#art_58').
provenance(required_free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_compliance/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(required_simple_intelligible_process/1, 'celex:32024R1689/oj#art_58').
provenance(required_limited_period/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(lawfully_collected_for_other_purposes/1, 'personal data lawfully collected for other purposes', 'celex:32024R1689/oj#art_59').
declared(required_condition_a/1, 'AI systems developed for safeguarding substantial public interest in listed areas', 'celex:32024R1689/oj#art_59').
declared(required_condition_b/1, 'Data necessary for complying with requirements that cannot be met with non‑personal data', 'celex:32024R1689/oj#art_59').
declared(required_condition_c/1, 'Effective monitoring and response mechanisms for high‑risk impacts', 'celex:32024R1689/oj#art_59').
declared(required_condition_d/1, 'Data kept in isolated, protected environment under control of prospective provider', 'celex:32024R1689/oj#art_59').
declared(required_condition_e/1, 'Further sharing only under Union law; sandbox‑created data not shared outside', 'celex:32024R1689/oj#art_59').
declared(required_condition_f/1, 'Processing does not lead to measures/decisions affecting data subjects or their rights', 'celex:32024R1689/oj#art_59').
declared(required_condition_g/1, 'Technical and organisational protection; deletion after termination or end of retention', 'celex:32024R1689/oj#art_59').
declared(required_condition_h/1, 'Logs kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(required_condition_i/1, 'Complete description and rationale kept with testing results in technical documentation', 'celex:32024R1689/oj#art_59').
declared(required_condition_j/1, 'Short summary published on competent authority website, excluding sensitive operational data', 'celex:32024R1689/oj#art_59').
declared(public_authority_applies/1, 'public authority', 'celex:32024R1689/oj#art_59').
declared(natural_or_legal_person_applies/1, 'natural or legal person', 'celex:32024R1689/oj#art_59').
declared(developed_for_public_interest/2, 'AI system developed for safeguarding substantial public interest', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'area of substantial public interest listed in (a)', 'celex:32024R1689/oj#art_59').
declared(area_of_ai_system/2, 'AI system belongs to a specific public‑interest area', 'celex:32024R1689/oj#art_59').
declared(necessary_for_requirements/2, 'data necessary for complying with specific requirements', 'celex:32024R1689/oj#art_59').
declared(cannot_fulfill_with_non_personal_data/1, 'cannot be fulfilled with anonymised, synthetic or other non‑personal data', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_mechanisms/1, 'effective monitoring mechanisms in place', 'celex:32024R1689/oj#art_59').
declared(high_risk_identified/1, 'high risks to rights and freedoms may arise', 'celex:32024R1689/oj#art_59').
declared(response_mechanisms/1, 'response mechanisms to promptly mitigate risks', 'celex:32024R1689/oj#art_59').
declared(isolated_protected_environment/1, 'data processed in a functionally separate, isolated and protected environment', 'celex:32024R1689/oj#art_59').
declared(controlled_by_prospective_provider/1, 'environment under control of prospective provider', 'celex:32024R1689/oj#art_59').
declared(only_authorised_persons_have_access/1, 'only authorised persons have access to the data', 'celex:32024R1689/oj#art_59').
declared(share_allowed_under_union_law/1, 'further sharing only in accordance with Union data‑protection law', 'celex:32024R1689/oj#art_59').
declared(not_shared_outside_sandbox/1, 'personal data created in sandbox cannot be shared outside', 'celex:32024R1689/oj#art_59').
declared(not_affects_measures_or_decisions/1, 'processing does not lead to measures or decisions affecting data subjects', 'celex:32024R1689/oj#art_59').
declared(not_affects_rights/1, 'processing does not affect the application of data subjects’ rights', 'celex:32024R1689/oj#art_59').
declared(protected_by_measures/1, 'personal data protected by appropriate technical and organisational measures', 'celex:32024R1689/oj#art_59').
declared(deleted_when_termination_or_retention_end/1, 'personal data deleted after sandbox participation ends or retention period expires', 'celex:32024R1689/oj#art_59').
declared(logs_kept_for_participation_duration/1, 'logs of processing kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(description_kept_with_testing_results/1, 'complete description and rationale kept with testing results in technical documentation', 'celex:32024R1689/oj#art_59').
declared(summary_published/1, 'short summary of AI project published on competent authority website', 'celex:32024R1689/oj#art_59').
declared(not_sensitive_operational_data/1, 'summary does not cover sensitive operational data', 'celex:32024R1689/oj#art_59').
permitted_processing_of_personal_data_in_sandbox(PD) :-
    personal_data(PD),
    lawfully_collected_for_other_purposes(PD),
    required_condition_a(PD),
    required_condition_b(PD),
    required_condition_c(PD),
    required_condition_d(PD),
    required_condition_e(PD),
    required_condition_f(PD),
    required_condition_g(PD),
    required_condition_h(PD),
    required_condition_i(PD),
    required_condition_j(PD).
required_condition_a(PD) :-
    ai_system(S),
    (public_authority_applies(A); natural_or_legal_person_applies(A)),
    developed_for_public_interest(S, A),
    public_interest_area(Area),
    area_of_ai_system(S, Area).
required_condition_b(PD) :-
    necessary_for_requirements(PD, chp_3_sec_2),
    cannot_fulfill_with_non_personal_data(PD).
required_condition_c(PD) :-
    effective_monitoring_mechanisms(PD),
    high_risk_identified(PD),
    response_mechanisms(PD).
required_condition_d(PD) :-
    isolated_protected_environment(PD),
    controlled_by_prospective_provider(PD),
    only_authorised_persons_have_access(PD).
required_condition_e(PD) :-
    share_allowed_under_union_law(PD),
    not_shared_outside_sandbox(PD).
required_condition_f(PD) :-
    not_affects_measures_or_decisions(PD),
    not_affects_rights(PD).
required_condition_g(PD) :-
    protected_by_measures(PD),
    deleted_when_termination_or_retention_end(PD).
required_condition_h(PD) :-
    logs_kept_for_participation_duration(PD).
required_condition_i(PD) :-
    description_kept_with_testing_results(PD).
required_condition_j(PD) :-
    summary_published(PD),
    not_sensitive_operational_data(PD).
must_base_processing_on_law(Authority, processing_of_personal_data_in_sandbox) :-
    law_enforcement_authority(Authority).
provenance(permitted_processing_of_personal_data_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_a/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_b/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_c/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_d/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_e/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_f/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_g/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_h/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_i/1, 'celex:32024R1689/oj#art_59').
provenance(required_condition_j/1, 'celex:32024R1689/oj#art_59').
provenance(must_base_processing_on_law/2, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
permitted_testing_in_real_world_conditions(testing(Provider, System, MemberState)) :-
    provider(Provider) ;
    prospective_provider(Provider),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    \+ placing_on_market(System),
    \+ putting_into_service(System),
    required_testing_plan_submitted(testing(Provider, System, MemberState)),
    approved_testing(testing(Provider, System, MemberState)),
    required_registration(testing(Provider, System, MemberState)),
    established_in_union(Provider),
    data_transfer_safeguarded(testing(Provider, System, MemberState)),
    duration_within_limit(testing(Provider, System, MemberState)),
    protected_vulnerable_subjects(testing(Provider, System, MemberState)),
    informed_deployers(testing(Provider, System, MemberState)),
    agreement_concluded(testing(Provider, System, MemberState)),
    informed_consent_obtained(testing(Provider, System, MemberState)),
    qualified_oversight(testing(Provider, System, MemberState)),
    reversible_output(testing(Provider, System, MemberState)).
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
must_specify(commission, real_world_testing_plan_elements) :-
    commission(commission).
provenance(must_specify/2, 'celex:32024R1689/oj#art_60').
must_confer(MemberState, powers(market_surveillance_authority)) :-
    member_state(MemberState).
provenance(must_confer/2, 'celex:32024R1689/oj#art_60').
must_report_serious_incident(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
must_adopt_mitigation_measures(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).
provenance(must_adopt_mitigation_measures/2, 'celex:32024R1689/oj#art_60').
must_suspend_testing(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).
provenance(must_suspend_testing/2, 'celex:32024R1689/oj#art_60').
must_establish_recall_procedure(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
must_notify(Provider, notification(suspension_or_termination, final_outcomes)) :-
    provider(Provider),
    high_risk_ai_system(System),
    testing_in_real_world_conditions(System).
provenance(must_notify/2, 'celex:32024R1689/oj#art_60').
permitted_withdrawal_of_informed_consent(Subject) :-
    subject(Subject).
provenance(permitted_withdrawal_of_informed_consent/1, 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
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
declared(must_obtain_informed_consent/2, 'obtain freely‑given informed consent from subject for testing in real‑world conditions', 'celex:32024R1689/oj#art_61').
declared(must_inform_subject/2, 'provide concise, clear, relevant and understandable information to subject about the testing', 'celex:32024R1689/oj#art_61').
declared(must_document_consent/2, 'ensure the informed consent is dated and documented', 'celex:32024R1689/oj#art_61').
declared(must_give_copy_of_consent/2, 'give a copy of the informed consent to the subject or their legal representative', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T),
    must_inform_subject(Subject, testing_in_real_world_conditions),
    must_document_consent(Subject, testing_in_real_world_conditions),
    must_give_copy_of_consent(Subject, testing_in_real_world_conditions).
must_inform_subject(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T).
must_document_consent(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T).
must_give_copy_of_consent(Subject, testing_in_real_world_conditions) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ ai_regulatory_sandbox(T).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_inform_subject/2, 'celex:32024R1689/oj#art_61').
provenance(must_document_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_give_copy_of_consent/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(sme_applies/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_62').
declared(eligibility_conditions_fulfilled/1, 'SME fulfills eligibility conditions for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(selection_criteria_met/1, 'SME meets selection criteria for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
must_provide(MemberState, priority_access(SME, ai_regulatory_sandbox)) :-
    member_state(MemberState),
    sme_applies(SME),
    eligibility_conditions_fulfilled(SME),
    selection_criteria_met(SME).
must_organise(MemberState, awareness_training(sme, deployer, local_public_authority)) :-
    member_state(MemberState).
must_utilise(MemberState, communication_channels(sme, deployer, other_innovator, local_public_authority)) :-
    member_state(MemberState).
must_establish(MemberState, new_communication_channel(sme, deployer, other_innovator, local_public_authority)) :-
    member_state(MemberState).
must_facilitate(MemberState, participation_in_standardisation(sme, stakeholder)) :-
    member_state(MemberState).
must_take_into_account(MemberState, fee_setting(conformity_assessment, sme_provider)) :-
    member_state(MemberState).
must_reduce_fees(MemberState, conformity_assessment_fee(SME)) :-
    member_state(MemberState),
    sme_applies(SME).
must_provide(AO, standardised_templates(regulation_area)) :-
    ai_office(AO).
must_develop_and_maintain(AO, information_platform(regulation)) :-
    ai_office(AO).
must_organise(AO, communication_campaigns(awareness_obligations)) :-
    ai_office(AO).
must_evaluate_and_promote(AO, convergence_best_practices(public_procurement)) :-
    ai_office(AO).
provenance(must_provide/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise/2, 'celex:32024R1689/oj#art_62').
provenance(must_establish/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_and_maintain/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_and_promote/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise as defined in the Union regulation', 'celex:32003H0361/oj').
declared(partner_enterprise_applies/1, 'operator has a partner enterprise', 'derived').
declared(linked_enterprise_applies/1, 'operator has a linked enterprise', 'derived').
declared(commission/1, 'European Commission', 'derived').
permitted_simplified_quality_management_compliance(Operator) :-
    microenterprise(Operator),
    \+ partner_enterprise_applies(Operator),
    \+ linked_enterprise_applies(Operator).
must_develop(CommissionActor, guidelines(simplified_quality_management_elements)) :-
    commission(CommissionActor).
prohibited_exemption_from_other_requirements(Operator) :-
    microenterprise(Operator).
provenance(permitted_simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exemption_from_other_requirements/1, 'celex:32024R1689/oj#art_63').
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
declared(must_develop/2, 'Commission shall develop Union expertise and capabilities in AI through the AI Office', 'celex:32024R1689/oj#art_64').
declared(must_facilitate/2, 'Member State shall facilitate the tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop(commission, expertise_and_capabilities(ai_office)).
must_facilitate(MS, tasks_of(ai_office)) :-
    member_state(MS).
provenance(must_develop/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(representative/1, 'Member State representative on the Board', 'celex:32024R1689/oj#art_65').
declared(must_designate/2, 'Member State must designate a representative for the Board', 'celex:32024R1689/oj#art_65').
declared(must_ensure/2, 'Member State must ensure a property of its representative', 'celex:32024R1689/oj#art_65').
declared(must_adopt/2, 'Board representatives must adopt the rules of procedure', 'celex:32024R1689/oj#art_65').
declared(board_representatives/1, 'Representatives of Member States on the Board', 'celex:32024R1689/oj#art_65').
declared(required_chair/1, 'Board must be chaired by a Member State representative', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'AI Office must provide secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(must_convene_meetings/2, 'AI Office must convene Board meetings upon request of the Chair', 'celex:32024R1689/oj#art_65').
declared(must_prepare_agenda/2, 'AI Office must prepare the agenda for Board meetings', 'celex:32024R1689/oj#art_65').
declared(required_composition/1, 'Board must be composed as set out in the Regulation', 'celex:32024R1689/oj#art_65').
declared(established/1, 'Entity is established', 'celex:32024R1689/oj#art_65').
declared(permitted_establish_other_subgroup/1, 'Board may establish other standing or temporary sub‑groups', 'celex:32024R1689/oj#art_65').
declared(objective_objectivity_and_impartiality/1, 'Board must safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_65').
board(board).
established(board).
required_composition(board).
required_chair(board).
must_provide_secretariat(ai_office, board).
must_convene_meetings(ai_office, board).
must_prepare_agenda(ai_office, board).
objective_objectivity_and_impartiality(board).
permitted_establish_other_subgroup(board).
representative(_).
board_representatives(R) :-
    representative(R).
must_designate(MemberState, designation(Representative, term(years(3), renewable_once))) :-
    member_state(MemberState),
    representative(Representative).
must_ensure(MemberState, representative_has_competences(Representative)) :-
    member_state(MemberState),
    representative(Representative).
must_ensure(MemberState, representative_is_contact_point(Representative)) :-
    member_state(MemberState),
    representative(Representative).
must_ensure(MemberState, representative_empowered_for_coordination(Representative)) :-
    member_state(MemberState),
    representative(Representative).
must_adopt(board_representatives, adoption(rules_of_procedure, condition(two_thirds_majority))) :-
    board_representatives(_).
provenance(board/1, 'celex:32024R1689/oj#art_65').
provenance(representative/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(board_representatives/1, 'celex:32024R1689/oj#art_65').
provenance(required_chair/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').
provenance(required_composition/1, 'celex:32024R1689/oj#art_65').
provenance(established/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_establish_other_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(objective_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'Board of the AI Union governance', 'celex:32024R1689/oj#art_66').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_66').
must_advise(Board, Commission) :-
    board(Board),
    commission(Commission),
    board(Board),
    commission(Commission).
must_assist(Board, Commission) :-
    board(Board),
    commission(Commission),
    board(Board),
    commission(Commission).
must_advise(Board, MemberState) :-
    board(Board),
    member_state(MemberState),
    board(Board),
    member_state(MemberState).
must_assist(Board, MemberState) :-
    board(Board),
    member_state(MemberState),
    board(Board),
    member_state(MemberState).
permitted_coordination_contribution(Board) :-
    board(Board),
    national_competent_authority(NCA),
    national_competent_authority(NCA),
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA).
permitted_collect_and_share_expertise(Board) :-
    board(Board),
    member_state(MS),
    member_state(MS).
permitted_provide_implementation_advice(Board) :-
    board(Board),
    general_purpose_ai_model(GPM),
    general_purpose_ai_model(GPM).
permitted_contribute_to_harmonisation(Board) :-
    board(Board),
    member_state(MS),
    member_state(MS),
    conformity_assessment(_CA),
    conformity_assessment(_CA),
    ai_regulatory_sandbox(_SB),
    ai_regulatory_sandbox(_SB),
    testing_in_real_world_conditions(_TW),
    testing_in_real_world_conditions(_TW).
permitted_issue_recommendations_and_opinions(Board) :-
    board(Board),
    commission(C),
    commission(C).
permitted_support_ai_literacy_promotion(Board) :-
    board(Board),
    commission(C),
    commission(C).
permitted_facilitate_common_criteria_development(Board) :-
    board(Board),
    operator(Op),
    operator(Op),
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA).
permitted_cooperate_with_union_entities(Board) :-
    board(Board),
    ai_office(AO),
    ai_office(AO).
permitted_contribute_to_international_cooperation(Board) :-
    board(Board),
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA).
permitted_assist_expertise_development(Board) :-
    board(Board),
    national_competent_authority(NCA),
    national_competent_authority(NCA),
    commission(C),
    commission(C).
permitted_assist_ai_office_sandboxes(Board) :-
    board(Board),
    ai_office(AO),
    ai_office(AO),
    ai_regulatory_sandbox(SB),
    ai_regulatory_sandbox(SB).
permitted_contribute_to_guidance_documents(Board) :-
    board(Board),
    board(Board).
permitted_advise_commission_international(Board) :-
    board(Board),
    commission(C),
    commission(C).
permitted_provide_qualified_alert_opinions(Board) :-
    board(Board),
    commission(C),
    commission(C),
    general_purpose_ai_model(GPM),
    general_purpose_ai_model(GPM).
permitted_receive_qualified_alert_opinions(Board) :-
    board(Board),
    member_state(MS),
    member_state(MS),
    general_purpose_ai_model(GPM),
    general_purpose_ai_model(GPM).
provenance(must_advise/2, 'celex:32024R1689/oj#art_66').
provenance(must_assist/2, 'celex:32024R1689/oj#art_66').
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(commission/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_coordination_contribution/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_implementation_advice/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_support_ai_literacy_promotion/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_facilitate_common_criteria_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_with_union_entities/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_advise_commission_international/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_qualified_alert_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_receive_qualified_alert_opinions/1, 'celex:32024R1689/oj#art_66').
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
declared(required_advisory_forum/1, 'advisory forum must be established', 'celex:32024R1689/oj#art_67').
declared(required_balanced_membership/1, 'membership must be balanced', 'celex:32024R1689/oj#art_67').
declared(term_of_office/2, 'term of office for an entity', 'celex:32024R1689/oj#art_67').
declared(max_extension/2, 'maximum possible extension of term', 'celex:32024R1689/oj#art_67').
declared(permanent_member/2, 'permanent members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_appoint/2, 'Commission shall appoint members', 'celex:32024R1689/oj#art_67').
declared(must_draw_up_rules_of_procedure/2, 'advisory forum shall draw up its rules of procedure', 'celex:32024R1689/oj#art_67').
declared(must_elect_co_chair/2, 'advisory forum shall elect two co‑chairs', 'celex:32024R1689/oj#art_67').
declared(renewable_once/1, 'term may be renewed once', 'celex:32024R1689/oj#art_67').
declared(must_hold_meetings/2, 'advisory forum shall hold meetings at least twice a year', 'celex:32024R1689/oj#art_67').
declared(permitted_invitation/1, 'advisory forum may invite experts and stakeholders', 'celex:32024R1689/oj#art_67').
declared(permitted_prepare_opinion/1, 'advisory forum may prepare opinions', 'celex:32024R1689/oj#art_67').
declared(permitted_prepare_recommendation/1, 'advisory forum may prepare recommendations', 'celex:32024R1689/oj#art_67').
declared(permitted_prepare_written_contribution/1, 'advisory forum may prepare written contributions', 'celex:32024R1689/oj#art_67').
declared(permitted_establish_subgroup/1, 'advisory forum may establish sub‑groups', 'celex:32024R1689/oj#art_67').
declared(must_prepare_annual_report/2, 'advisory forum shall prepare an annual report', 'celex:32024R1689/oj#art_67').
required_advisory_forum(advisory_forum).
required_balanced_membership(advisory_forum).
term_of_office(advisory_forum, years(2)).
max_extension(advisory_forum, years(4)).
permanent_member(advisory_forum, fundamental_rights_agency).
permanent_member(advisory_forum, enisa).
permanent_member(advisory_forum, cen).
permanent_member(advisory_forum, cenelec).
permanent_member(advisory_forum, etsi).
must_appoint(commission, advisory_forum_member(_)).
must_draw_up_rules_of_procedure(advisory_forum, rules_of_procedure).
must_elect_co_chair(advisory_forum, co_chair(_)).
term_of_office(co_chair(_), years(2)).
renewable_once(co_chair(_)).
must_hold_meetings(advisory_forum, frequency(at_least_twice_per_year)).
permitted_invitation(advisory_forum).
permitted_prepare_opinion(advisory_forum).
permitted_prepare_recommendation(advisory_forum).
permitted_prepare_written_contribution(advisory_forum).
permitted_establish_subgroup(advisory_forum).
must_prepare_annual_report(advisory_forum, annual_report).
must_make_publicly_available(advisory_forum, annual_report).
provenance(required_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(max_extension/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member/2, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chair/2, 'celex:32024R1689/oj#art_67').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invitation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_opinion/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_recommendation/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_written_contribution/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_subgroup/1, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(must_make_provisions/2, 'Commission shall make provisions for scientific panel', 'celex:32024R1689/oj#art_68').
declared(required_expert_selection/1, 'Scientific panel shall consist of experts selected by the Commission', 'celex:32024R1689/oj#art_68').
declared(required_expert_condition/1, 'Each expert must meet the required conditions', 'celex:32024R1689/oj#art_68').
declared(expertise_in_ai/1, 'Expert has up‑to‑date scientific or technical expertise in the field of AI', 'celex:32024R1689/oj#art_68').
declared(independent_from_provider/1, 'Expert is independent from any provider of AI systems or general‑purpose AI models', 'celex:32024R1689/oj#art_68').
declared(ability_to_carry_out_tasks/1, 'Expert can carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(must_advise/2, 'Scientific panel shall advise the AI Office', 'celex:32024R1689/oj#art_68').
declared(must_support/2, 'Scientific panel shall support the AI Office', 'celex:32024R1689/oj#art_68').
declared(required_impartiality/1, 'Experts shall act with impartiality', 'celex:32024R1689/oj#art_68').
declared(required_objectivity/1, 'Experts shall act with objectivity', 'celex:32024R1689/oj#art_68').
declared(required_confidentiality/1, 'Experts shall ensure confidentiality of information and data', 'celex:32024R1689/oj#art_68').
declared(must_not_seek_instructions/2, 'Experts shall neither seek nor take instructions from anyone', 'celex:32024R1689/oj#art_68').
declared(must_draw_up_declaration_of_interests/2, 'Experts shall draw up a declaration of interests', 'celex:32024R1689/oj#art_68').
declared(must_establish_systems/2, 'AI Office shall establish systems and procedures to manage conflicts of interest', 'celex:32024R1689/oj#art_68').
must_make_provisions(commission, scientific_panel).
must_adopt(commission, implementing_act).
required_expert_selection(scientific_panel).
required_expert_condition(Expert) :-
    expert(Expert),
    expertise_in_ai(Expert),
    independent_from_provider(Expert),
    ability_to_carry_out_tasks(Expert).
must_advise(scientific_panel, ai_office).
must_support(scientific_panel, ai_office).
required_impartiality(Expert) :-
    expert(Expert).
required_objectivity(Expert) :-
    expert(Expert).
required_confidentiality(Expert) :-
    expert(Expert).
must_not_seek_instructions(Expert, instructions) :-
    expert(Expert).
must_draw_up_declaration_of_interests(Expert, declaration_of_interests) :-
    expert(Expert).
must_make_publicly_available(Expert, declaration_of_interests) :-
    expert(Expert).
must_establish_systems(ai_office, manage_conflicts_of_interest).
provenance(must_make_provisions/2, 'celex:32024R1689/oj#art_68').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_68').
provenance(required_expert_selection/1, 'celex:32024R1689/oj#art_68').
provenance(required_expert_condition/1, 'celex:32024R1689/oj#art_68').
provenance(expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(ability_to_carry_out_tasks/1, 'celex:32024R1689/oj#art_68').
provenance(must_advise/2, 'celex:32024R1689/oj#art_68').
provenance(must_support/2, 'celex:32024R1689/oj#art_68').
provenance(required_impartiality/1, 'celex:32024R1689/oj#art_68').
provenance(required_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(required_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/2, 'celex:32024R1689/oj#art_68').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(permitted_call_upon_experts/1, 'Member State may call upon experts of the scientific panel', 'celex:32024R1689/oj#art_69').
declared(required_fee_payment/1, 'Member State may be required to pay fees for expert advice and support', 'celex:32024R1689/oj#art_69').
declared(fee_structure_set_in_implementing_act/0, 'Structure and level of fees are set out in the implementing act', 'celex:32024R1689/oj#art_69').
declared(must_facilitate/2, 'Commission shall facilitate timely access to experts by Member States', 'celex:32024R1689/oj#art_69').
declared(must_ensure/2, 'Commission shall ensure efficient organisation of support activities', 'celex:32024R1689/oj#art_69').
permitted_call_upon_experts(MS) :-
    member_state(MS).
required_fee_payment(MS) :-
    member_state(MS),
    fee_structure_set_in_implementing_act.
fee_structure_set_in_implementing_act.
must_facilitate(commission, access_to_experts(MS)) :-
    member_state(MS).
must_ensure(commission, efficient_organisation_of_support_combination).
provenance(permitted_call_upon_experts/1, 'celex:32024R1689/oj#art_69').
provenance(required_fee_payment/1, 'celex:32024R1689/oj#art_69').
provenance(fee_structure_set_in_implementing_act/0, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_communicate/2, 'Member State communicates information to the Commission', 'celex:32024R1689/oj#art_70').
declared(must_ensure/2, 'Member State ensures resources are provided to national competent authorities', 'celex:32024R1689/oj#art_70').
declared(must_assess_and_update/2, 'Member State assesses and updates competence and resource requirements annually', 'celex:32024R1689/oj#art_70').
declared(must_take_measures/2, 'National competent authority takes measures to ensure cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_act_in_accordance/2, 'National competent authority acts in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_70').
declared(must_report/2, 'Member State reports resources status to the Commission periodically', 'celex:32024R1689/oj#art_70').
declared(must_transmit/2, 'Commission transmits information to the Board', 'celex:32024R1689/oj#art_70').
declared(must_facilitate/2, 'Commission facilitates exchange of experience between national competent authorities', 'celex:32024R1689/oj#art_70').
declared(permitted_provide_guidance/2, 'National competent authority may provide guidance and advice', 'celex:32024R1689/oj#art_70').
declared(must_act/2, 'European Data Protection Supervisor acts as competent authority for Union institutions', 'celex:32024R1689/oj#art_70').
must_designate_or_establish(MS, NA) :-
    member_state(MS),
    notifying_authority(NA),
    NA = NA.
must_designate_or_establish(MS, MSA) :-
    member_state(MS),
    market_surveillance_authority(MSA),
    MSA = MSA.
must_communicate(MS, identity_of(Authority)) :-
    member_state(MS),
    (   notifying_authority(Authority)
    ;   market_surveillance_authority(Authority)
    ;   single_point_of_contact(Authority)
    ),
    Authority = Authority.
must_make_publicly_available(MS, contact_information(competent_authorities)) :-
    member_state(MS),
    deadline(date(2025,8,2)),
    MS = MS.
must_designate_or_establish(MS, SPOC) :-
    member_state(MS),
    market_surveillance_authority(SPOC),
    single_point_of_contact(SPOC),
    SPOC = SPOC.
must_communicate(MS, single_point_of_contact_identity(SPOC)) :-
    member_state(MS),
    single_point_of_contact(SPOC),
    SPOC = SPOC.
must_make_publicly_available(commission, list_of(single_points_of_contact)).
must_ensure(MS, resources_provided(NCA)) :-
    member_state(MS),
    national_competent_authority(NCA),
    NCA = NCA.
must_assess_and_update(MS, competence_and_resource_requirements) :-
    member_state(MS),
    annual_basis,
    MS = MS.
must_take_measures(NCA, cybersecurity) :-
    national_competent_authority(NCA),
    NCA = NCA.
must_act_in_accordance(NCA, confidentiality_obligations) :-
    national_competent_authority(NCA),
    NCA = NCA.
must_report(MS, resources_status_report) :-
    member_state(MS),
    deadline(date(2025,8,2)),
    periodic(years(2)),
    MS = MS.
must_transmit(commission, information_to_board).
must_facilitate(commission, exchange_of_experience_between(national_competent_authorities)).
permitted_provide_guidance(NCA, guidance_and_advice) :-
    national_competent_authority(NCA),
    NCA = NCA.
must_act(european_data_protection_supervisor, competent_authority_supervision).
provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_act/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_set_up_and_maintain/2, 'Commission must set up and maintain the EU database', 'celex:32024R1689/oj#art_71').
declared(must_consult_experts_when_setting_specs/2, 'Commission must consult relevant experts when setting functional specifications of the EU database', 'celex:32024R1689/oj#art_71').
declared(must_consult_board_when_updating_specs/2, 'Commission must consult the Board when updating functional specifications of the EU database', 'celex:32024R1689/oj#art_71').
declared(must_enter_data/2, 'Provider, authorised representative or deployer must enter specified data into the EU database', 'celex:32024R1689/oj#art_71').
declared(public_authority/1, 'Entity that is a public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(info_registered_under/2, 'Information is registered under a given article', 'celex:32024R1689/oj#art_71').
declared(permitted_public_access/1, 'Information is publicly accessible', 'celex:32024R1689/oj#art_71').
declared(permitted_access_to_market_surveillance/1, 'Information is accessible to market surveillance authorities and the Commission', 'celex:32024R1689/oj#art_71').
declared(provider_consents_public/1, 'Provider gives consent for public access to information', 'celex:32024R1689/oj#art_71').
declared(required_personal_data_limit/1, 'EU database shall contain personal data only as necessary', 'celex:32024R1689/oj#art_71').
declared(required_responsible_person_details/1, 'EU database shall include names and contact details of responsible natural persons', 'celex:32024R1689/oj#art_71').
declared(must_be_controller/2, 'Commission is the controller of the EU database', 'celex:32024R1689/oj#art_71').
declared(must_provide_support/2, 'Commission shall provide technical and administrative support', 'celex:32024R1689/oj#art_71').
declared(required_compliance_accessibility_requirements/1, 'EU database shall comply with applicable accessibility requirements', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain(commission, eu_database).
must_consult_experts_when_setting_specs(commission, eu_database).
must_consult_board_when_updating_specs(commission, eu_database).
must_enter_data(Actor, data_annex_8_sec_1_2) :-
    provider(Actor).
must_enter_data(Actor, data_annex_8_sec_1_2) :-
    authorised_representative(Actor).
must_enter_data(Deployer, data_annex_8_sec_3) :-
    deployer(Deployer),
    public_authority(Deployer).
permitted_public_access(Info) :-
    info_registered_under(Info, art_49).
permitted_access_to_market_surveillance(Info) :-
    info_registered_under(Info, art_60).
permitted_public_access(Info) :-
    info_registered_under(Info, art_60),
    provider_consents_public(_Provider).
required_personal_data_limit(eu_database).
required_responsible_person_details(eu_database).
must_be_controller(commission, eu_database).
must_provide_support(commission, technical_and_administrative_support).
required_compliance_accessibility_requirements(eu_database).
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_experts_when_setting_specs/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_board_when_updating_specs/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority/1, 'celex:32024R1689/oj#art_71').
provenance(info_registered_under/2, 'celex:32024R1689/oj#art_71').
provenance(permitted_public_access/1, 'celex:32024R1689/oj#art_71').
provenance(permitted_access_to_market_surveillance/1, 'celex:32024R1689/oj#art_71').
provenance(provider_consents_public/1, 'celex:32024R1689/oj#art_71').
provenance(required_personal_data_limit/1, 'celex:32024R1689/oj#art_71').
provenance(required_responsible_person_details/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
provenance(required_compliance_accessibility_requirements/1, 'celex:32024R1689/oj#art_71').
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
declared(must_establish/2, 'provider must establish a post-market monitoring system for a high‑risk AI system', 'celex:32024R1689/oj#art_72').
declared(must_document/2, 'provider must document a post-market monitoring system for a high‑risk AI system', 'celex:32024R1689/oj#art_72').
declared(must_collect/2, 'provider must collect relevant data via the post-market monitoring system', 'celex:32024R1689/oj#art_72').
declared(must_analyse/2, 'provider must analyse relevant data via the post-market monitoring system', 'celex:32024R1689/oj#art_72').
declared(prohibited_sensitive_operational_data/1, 'provider must not cover sensitive operational data of law‑enforcement deployers', 'celex:32024R1689/oj#art_72').
declared(must_establish/2, 'provider must establish a post‑market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(must_include_in_technical_documentation/2, 'provider must include the post‑market monitoring plan in the technical documentation', 'celex:32024R1689/oj#art_72').
declared(permitted_integration_of_post_market_monitoring_elements/1, 'provider may integrate post‑market monitoring elements into existing systems/plans', 'celex:32024R1689/oj#art_72').
must_establish(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_document(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_collect(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_analyse(Provider, post_market_monitoring_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S).
prohibited_sensitive_operational_data(Provider) :-
    provider(Provider),
    deployer(Deployer),
    law_enforcement_authority(Deployer).
must_establish(Provider, post_market_monitoring_plan) :-
    provider(Provider),
    high_risk_ai_system(_S).
must_include_in_technical_documentation(Provider, post_market_monitoring_plan) :-
    provider(Provider),
    high_risk_ai_system(_S).
must_adopt(commission, implementing_act_template(deadline(date(2026,2,2)))).
permitted_integration_of_post_market_monitoring_elements(Provider) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect/2, 'celex:32024R1689/oj#art_72').
provenance(must_analyse/2, 'celex:32024R1689/oj#art_72').
provenance(prohibited_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(must_include_in_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration_of_post_market_monitoring_elements/1, 'celex:32024R1689/oj#art_72').
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
declared(incident_occurs_in_member_state/2, 'incident occurred in the territory of the member state of the authority', 'celex:32024R1689/oj#art_73').
declared(causal_link_established/2, 'provider has established a causal link between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(reasonable_likelihood/2, 'provider has reasonable likelihood of a causal link between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(aware_of_incident/2, 'actor is aware of the serious incident', 'celex:32024R1689/oj#art_73').
declared(within_days/3, 'action must be taken within given number of days after awareness', 'celex:32024R1689/oj#art_73').
declared(serious_incident_type_b/1, 'serious incident as defined in article 3 point 49(b)', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'serious incident resulting in death of a person', 'celex:32024R1689/oj#art_73').
declared(suspect_causal_link/2, 'provider suspects a causal link between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(permitted_incomplete_report/2, 'provider or deployer may submit an initial incomplete report', 'celex:32024R1689/oj#art_73').
declared(reported/2, 'provider has reported the serious incident', 'celex:32024R1689/oj#art_73').
declared(must_report/2, 'provider must report serious incident to the relevant authority', 'celex:32024R1689/oj#art_73').
declared(must_investigate/2, 'provider must investigate the serious incident', 'celex:32024R1689/oj#art_73').
declared(must_conduct_risk_assessment/2, 'provider must conduct a risk assessment of the incident', 'celex:32024R1689/oj#art_73').
declared(must_take_corrective_action/2, 'provider must take corrective action', 'celex:32024R1689/oj#art_73').
declared(must_cooperate/2, 'provider must cooperate with competent authorities', 'celex:32024R1689/oj#art_73').
declared(must_not_alter_before_informing/2, 'provider must not alter the AI system before informing competent authorities', 'celex:32024R1689/oj#art_73').
declared(receives_notification/2, 'authority has received a notification of a serious incident', 'celex:32024R1689/oj#art_73').
declared(must_inform/2, 'authority must inform public authorities', 'celex:32024R1689/oj#art_73').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_73').
declared(must_develop_guidance/2, 'Commission must develop guidance by a given date', 'celex:32024R1689/oj#art_73').
declared(must_take_measures/2, 'market surveillance authority must take measures within seven days', 'celex:32024R1689/oj#art_73').
declared(must_notify/2, 'authority must notify the Commission or national competent authority of a serious incident', 'celex:32024R1689/oj#art_73').
must_report(Provider, report(Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    incident_occurs_in_member_state(Incident, Authority),
    (causal_link_established(Provider, Incident) ; reasonable_likelihood(Provider, Incident)),
    aware_of_incident(Actor, Incident),
    within_days(Actor, Incident, days(15)).
must_report(Provider, report(Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    incident_occurs_in_member_state(Incident, Authority),
    (widespread_infringement(Incident) ; serious_incident_type_b(Incident)),
    aware_of_incident(Actor, Incident),
    within_days(Actor, Incident, days(2)).
must_report(Provider, report(Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    incident_occurs_in_member_state(Incident, Authority),
    death_of_person(Incident),
    (causal_link_established(Provider, Incident) ; suspect_causal_link(Provider, Incident)),
    aware_of_incident(Actor, Incident),
    within_days(Actor, Incident, days(10)).
permitted_incomplete_report(Provider, Incident) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(Incident).
must_investigate(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).
must_conduct_risk_assessment(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).
must_take_corrective_action(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).
must_cooperate(Provider, Authority) :-
    provider(Provider),
    national_competent_authority(Authority),
    serious_incident(Incident),
    reported(Provider, Incident).
must_not_alter_before_informing(Provider, Incident) :-
    provider(Provider),
    serious_incident(Incident),
    reported(Provider, Incident).
must_inform(Authority, public_authorities) :-
    market_surveillance_authority(Authority),
    receives_notification(Authority, Incident).
must_develop_guidance(Commission, by(date(2025,8,2))) :-
    commission(Commission).
must_take_measures(Authority, Incident) :-
    market_surveillance_authority(Authority),
    receives_notification(Authority, Incident),
    within_days(Authority, Incident, days(7)).
must_notify(national_competent_authority, notification(Incident)) :-
    high_risk_ai_system(System),
    safety_component_ai_system(System),
    serious_incident(Incident).
must_notify(national_competent_authority, commission_notification(Incident)) :-
    serious_incident(Incident).
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_conduct_risk_assessment/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_before_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(condition_access_to_source_code_necessary/1, 'access to source code necessary', 'celex:32024R1689/oj#art_13/a').
declared(condition_testing_exhausted/1, 'testing exhausted', 'celex:32024R1689/oj#art_13/b').
must_report(Authority, annual_report(commission, market_surveillance_information)) :-
    market_surveillance_authority(Authority).
must_report(Authority, annual_report(commission, prohibited_practices_report)) :-
    market_surveillance_authority(Authority).
required_market_surveillance_authority(Authority) :-
    high_risk_ai_system(_S),
    union_harmonisation_legislation_applies(_S),
    market_surveillance_authority(Authority).
permitted_designate_another_market_surveillance_authority(MemberState) :-
    member_state(MemberState).
prohibited_application_of_procedure(art_79) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).
prohibited_application_of_procedure(art_80) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).
prohibited_application_of_procedure(art_81) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).
prohibited_application_of_procedure(art_82) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).
prohibited_application_of_procedure(art_83) :-
    ai_system(S),
    union_harmonisation_legislation_applies(S).
permitted_exercise_power_remotely(Authority) :-
    market_surveillance_authority(Authority).
must_report(Authority, immediate_report(european_central_bank, market_surveillance_information)) :-
    market_surveillance_authority(Authority).
must_designate_market_surveillance_authority(MemberState, data_protection_supervisory_authority) :-
    member_state(MemberState).
must_act_as_market_surveillance_authority(european_data_protection_supervisor, union_institutions).
must_facilitate_coordination(MemberState) :-
    member_state(MemberState).
must_be_able_to_propose_joint_activities(Authority) :-
    market_surveillance_authority(Authority).
must_be_able_to_propose_joint_activities(commission).
must_provide_coordination_support(ai_office, joint_investigations).
must_grant_access(Provider, access(documentation_and_data)) :-
    provider(Provider),
    high_risk_ai_system(_S),
    ai_system(_S).
must_grant_access(Provider, access(source_code)) :-
    provider(Provider),
    high_risk_ai_system(_S),
    ai_system(_S),
    condition_access_to_source_code_necessary(_S),
    condition_testing_exhausted(_S).
must_treat_confidentially(Authority, information_or_documentation) :-
    market_surveillance_authority(Authority).
provenance(must_report/2, 'celex:32024R1689/oj#art_74').
provenance(required_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_designate_another_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(prohibited_application_of_procedure/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_power_remotely/1, 'celex:32024R1689/oj#art_74').
provenance(must_designate_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_act_as_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(must_be_able_to_propose_joint_activities/1, 'celex:32024R1689/oj#art_74').
provenance(must_provide_coordination_support/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_74').
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
references('celex:32024R1689/oj#art_74', 'celex:32013L0036/oj').
references('celex:32024R1689/oj#art_74', 'celex:32013R1024/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_6').
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
declared(based_on_general_purpose_ai_model/1, 'AI system based on a general‑purpose AI model', 'celex:32024R1689/oj#art_75').
declared(same_provider_developed/2, 'AI system and its underlying model are developed by the same provider', 'celex:32024R1689/oj#art_75').
declared(sufficient_reason_to_consider_non_compliant/2, 'Market surveillance authority has sufficient reason to consider a system non‑compliant', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/2, 'Authority cannot conclude investigation of a high‑risk AI system', 'celex:32024R1689/oj#art_75').
declared(inability_to_access_information/2, 'Authority cannot access information related to the general‑purpose AI model', 'celex:32024R1689/oj#art_75').
declared(made_all_appropriate_efforts/2, 'Authority has made all appropriate efforts to obtain the information', 'celex:32024R1689/oj#art_75').
declared(considered_relevant/2, 'AI Office considers the information relevant', 'celex:32024R1689/oj#art_75').
declared(obtained_information/2, 'Market surveillance authority has obtained the information', 'celex:32024R1689/oj#art_75').
declared(must_cooperate/2, 'Authority shall cooperate with the AI Office', 'celex:32024R1689/oj#art_75').
declared(must_inform/2, 'Authority shall inform the specified recipient', 'celex:32024R1689/oj#art_75').
declared(must_supply_information/3, 'AI Office shall supply information to the authority within a time limit', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'Authority shall safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
declared(permitted_submit_reasoned_request/2, 'Authority may submit a reasoned request to the AI Office', 'celex:32024R1689/oj#art_75').
declared(monitor_compliance/2, 'AI Office monitors and supervises compliance of an AI system', 'celex:32024R1689/oj#art_75').
monitor_compliance(AI_Office, System) :-
    ai_office(AI_Office),
    ai_system(System),
    based_on_general_purpose_ai_model(System),
    same_provider_developed(System, Model),
    general_purpose_ai_model(Model).
must_cooperate(Authority, ai_office) :-
    market_surveillance_authority(Authority),
    sufficient_reason_to_consider_non_compliant(Authority, System).
must_inform(Authority, board) :-
    market_surveillance_authority(Authority).
must_inform(Authority, OtherAuthority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority.
permitted_submit_reasoned_request(Authority, ai_office) :-
    market_surveillance_authority(Authority),
    unable_to_conclude_investigation(Authority, System),
    inability_to_access_information(Authority, Model),
    made_all_appropriate_efforts(Authority, Model).
must_supply_information(ai_office, Authority, supply(Info, within(days(30)))) :-
    ai_office(_),
    market_surveillance_authority(Authority),
    considered_relevant(ai_office, Info).
must_safeguard_confidentiality(Authority, Info) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, Info).
provenance(monitor_compliance/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_ensure/2, 'market surveillance authority must ensure testing in real world conditions is compliant', 'celex:32024R1689/oj#art_76').
declared(must_verify_compliance/2, 'market surveillance authority must verify compliance with article 60 for sandbox‑supervised testing', 'celex:32024R1689/oj#art_76').
declared(allow_testing_by/2, 'market surveillance authority may allow testing by provider or prospective provider', 'celex:32024R1689/oj#art_76').
declared(prospective_provider/1, 'entity that may become a provider', 'celex:32024R1689/oj#art_76').
declared(supervised_in_sandbox/1, 'testing is supervised within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(informed_by/2, 'authority has been informed by an entity', 'celex:32024R1689/oj#art_76').
declared(third_party/1, 'any third party', 'celex:32024R1689/oj#art_76').
declared(authority_may_decide/1, 'market surveillance authority may take decisions on testing', 'celex:32024R1689/oj#art_76').
declared(permit_suspend_testing/2, 'authority may suspend or terminate testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(permit_require_modification/3, 'authority may require provider and deployer to modify testing', 'celex:32024R1689/oj#art_76').
declared(provider_or_prospective/1, 'provider or prospective provider', 'celex:32024R1689/oj#art_76').
declared(deployer_or_prospective/1, 'deployer or prospective deployer', 'celex:32024R1689/oj#art_76').
declared(prospective_deployer/1, 'entity that may become a deployer', 'celex:32024R1689/oj#art_76').
declared(decision_referred/1, 'decision referred to in paragraph 3', 'celex:32024R1689/oj#art_76').
declared(objection_issued/1, 'objection issued by market surveillance authority', 'celex:32024R1689/oj#art_76').
declared(must_indicate/2, 'authority must indicate grounds and how provider can challenge', 'celex:32024R1689/oj#art_76').
declared(must_communicate/2, 'authority must communicate grounds to other Member State authorities', 'celex:32024R1689/oj#art_76').
must_ensure(Authority, testing_in_real_world_conditions_compliant) :-
    market_surveillance_authority(Authority).
must_verify_compliance(Authority, art_60) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(_S),
    supervised_in_sandbox(_S).
allow_testing_by(Authority, Provider) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    testing_in_real_world_conditions(_S),
    supervised_in_sandbox(_S).
allow_testing_by(Authority, ProsProv) :-
    market_surveillance_authority(Authority),
    prospective_provider(ProsProv),
    testing_in_real_world_conditions(_S),
    supervised_in_sandbox(_S).
authority_may_decide(Authority) :-
    market_surveillance_authority(Authority),
    informed_by(Authority, _),
    serious_incident(_).
permit_suspend_testing(Authority, S) :-
    authority_may_decide(Authority),
    testing_in_real_world_conditions(S).
permit_require_modification(Authority, Provider, Deployer) :-
    authority_may_decide(Authority),
    provider_or_prospective(Provider),
    deployer_or_prospective(Deployer),
    testing_in_real_world_conditions(_S).
provider_or_prospective(P) :- provider(P).
provider_or_prospective(P) :- prospective_provider(P).
deployer_or_prospective(D) :- deployer(D).
deployer_or_prospective(D) :- prospective_deployer(D).
decision_referred(Authority) :-
    permit_suspend_testing(Authority, _).
decision_referred(Authority) :-
    permit_require_modification(Authority, _, _).
must_indicate(Authority, decision_or_objection(grounds_and_challenge)) :-
    market_surveillance_authority(Authority),
    (   decision_referred(Authority)
    ;   objection_issued(Authority)
    ).
must_communicate(Authority, grounds_to_other_member_states) :-
    market_surveillance_authority(Authority),
    decision_referred(Authority).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(allow_testing_by/2, 'celex:32024R1689/oj#art_76').
provenance(authority_may_decide/1, 'celex:32024R1689/oj#art_76').
provenance(permit_suspend_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permit_require_modification/3, 'celex:32024R1689/oj#art_76').
provenance(provider_or_prospective/1, 'celex:32024R1689/oj#art_76').
provenance(deployer_or_prospective/1, 'celex:32024R1689/oj#art_76').
provenance(decision_referred/1, 'celex:32024R1689/oj#art_76').
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
declared(national_public_authority/1, 'national public authority or body supervising or enforcing fundamental rights', 'celex:32024R1689/oj#art_77').
declared(supervises_fundamental_rights/1, 'authority supervises or enforces respect of obligations under Union law protecting fundamental rights', 'celex:32024R1689/oj#art_77').
declared(related_to_high_risk_ai_system/1, 'authority is related to the use of high‑risk AI systems referred to in annex 3', 'celex:32024R1689/oj#art_77').
declared(documentation_insufficient/1, 'documentation is insufficient to ascertain whether an infringement has occurred', 'celex:32024R1689/oj#art_77').
declared(other_member_state/1, 'any other Member State', 'celex:32024R1689/oj#art_77').
declared(permitted_request_and_access_documentation/1, 'authority may request and access documentation in accessible language and format when necessary for its mandate', 'celex:32024R1689/oj#art_77').
declared(must_inform/2, 'authority must inform the market surveillance authority of the Member State concerned of any request', 'celex:32024R1689/oj#art_77').
declared(must_identify_public_authorities/2, 'Member State must identify the public authorities referred to in paragraph 1 by a given deadline', 'celex:32024R1689/oj#art_77').
declared(must_notify/2, 'Member State must notify the list to the Commission and to other Member States', 'celex:32024R1689/oj#art_77').
declared(permitted_reasoned_request_testing/1, 'authority may make a reasoned request to organise testing of the high‑risk AI system', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority shall organise testing with close involvement of the requesting authority within a reasonable time', 'celex:32024R1689/oj#art_77').
declared(must_treat_confidentially/2, 'authority must treat obtained information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_77').
permitted_request_and_access_documentation(Authority) :-
    national_public_authority(Authority),
    supervises_fundamental_rights(Authority),
    related_to_high_risk_ai_system(Authority).
must_inform(Authority, market_surveillance_authority_of(MemberState)) :-
    national_public_authority(Authority),
    member_state(MemberState).
must_identify_public_authorities(MemberState, by(date(2024,11,2))) :-
    member_state(MemberState).
must_make_publicly_available(MemberState, list_of_authorities(MemberState)) :-
    member_state(MemberState).
must_notify(MemberState, commission) :-
    member_state(MemberState).
must_notify(MemberState, other_member_state) :-
    member_state(MemberState).
permitted_reasoned_request_testing(Authority) :-
    national_public_authority(Authority),
    documentation_insufficient(Authority).
must_organise_testing(MarketSurveillanceAuthority, testing_request(Authority, within(reasonable_time))) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    national_public_authority(Authority).
must_treat_confidentially(Authority, confidentiality_obligations(art_78)) :-
    national_public_authority(Authority).
provenance(permitted_request_and_access_documentation/1, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_public_authorities/2, 'celex:32024R1689/oj#art_77').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77').
provenance(permitted_reasoned_request_testing/1, 'celex:32024R1689/oj#art_77').
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
declared(must_delete_data/2, 'obligation to delete data when no longer needed', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure_without_consultation/2, 'prohibition on disclosing information without prior consultation', 'celex:32024R1689/oj#art_78').
declared(prohibited_sensitive_operational_data_exchange/1, 'prohibition on including sensitive operational data in information exchange', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(commission, confidentiality) :-
    true.
must_respect_confidentiality(Authority, confidentiality) :-
    market_surveillance_authority(Authority).
must_respect_confidentiality(Body, confidentiality) :-
    notified_body(Body).
must_request_only_necessary_data(Authority, data) :-
    national_competent_authority(Authority).
must_implement_cybersecurity_measures(Authority) :-
    national_competent_authority(Authority).
must_delete_data(Authority, data) :-
    national_competent_authority(Authority).
prohibited_disclosure_without_consultation(Actor, confidential_info) :-
    national_competent_authority(NCA),
    deployer(D),
    high_risk_ai_system(_S),
    law_enforcement_authority(_LFA),
    Actor \= NCA,
    Actor \= D.
prohibited_sensitive_operational_data_exchange(confidential_info) :-
    sensitive_operational_data(_).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_sensitive_operational_data_exchange/1, 'celex:32024R1689/oj#art_78').
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
declared(sufficient_reason/2, 'market surveillance authority has sufficient reason to consider system a risk', 'celex:32024R1689/oj#art_79').
declared(non_compliant/2, 'evaluation finds AI system does not comply with requirements', 'celex:32024R1689/oj#art_79').
declared(risk_to_fundamental_rights_identified/1, 'risk to fundamental rights has been identified for AI system', 'celex:32024R1689/oj#art_79').
declared(made_available_on_union_market/2, 'operator has made AI system available on the Union market', 'celex:32024R1689/oj#art_79').
declared(operator_fails_to_act/2, 'operator does not take adequate corrective action within prescribed period', 'celex:32024R1689/oj#art_79').
declared(provisional_measure_taken/2, 'market surveillance authority has taken provisional measure concerning AI system', 'celex:32024R1689/oj#art_79').
must_evaluate(MSA, System) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    sufficient_reason(MSA, System).
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').
must_require(MSA, corrective_action(Operator, System)) :-
    market_surveillance_authority(MSA),
    operator(Operator),
    ai_system(System),
    non_compliant(MSA, System).
provenance(must_require/2, 'celex:32024R1689/oj#art_79').
must_inform(MSA, national_public_authority(cooperation_info(System))) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    risk_to_fundamental_rights_identified(System).
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').
must_inform(MSA, commission_and_member_states(evaluation_result(System))) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    non_compliant(MSA, System).
must_ensure(Operator, corrective_action_taken(System)) :-
    operator(Operator),
    ai_system(System),
    made_available_on_union_market(Operator, System).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').
must_take_provisional_measures(MSA, System) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    non_compliant(MSA, System),
    operator_fails_to_act(Operator, System).
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
must_notify(MSA, commission_and_member_states(provisional_measure(System))) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    must_take_provisional_measures(MSA, System).
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').
must_inform(OtherMSA, commission_and_member_states(measure_info(System))) :-
    market_surveillance_authority(OtherMSA),
    ai_system(System),
    provisional_measure_taken(OtherMSA, System).
must_ensure(OtherMSA, restrictive_measure_taken(System)) :-
    market_surveillance_authority(OtherMSA),
    ai_system(System),
    provisional_measure_taken(OtherMSA, System).
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').

% ==== celex:32024R1689/oj#art_80 ====
declared(sufficient_reason_to_consider_applies/1, 'authority has sufficient reason to consider system high‑risk', 'celex:32024R1689/oj#art_80').
declared(non_high_risk_classified_by_provider_applies/1, 'system classified by provider as non‑high‑risk', 'celex:32024R1689/oj#art_80').
declared(evaluation_finds_high_risk_applies/1, 'evaluation finds system to be high‑risk', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory_applies/1, 'use of system is not restricted to national territory', 'celex:32024R1689/oj#art_80').
declared(non_compliance_within_period_applies/1, 'provider has not complied within prescribed period', 'celex:32024R1689/oj#art_80').
declared(inadequate_corrective_action_within_period_applies/1, 'provider has not taken adequate corrective action within period', 'celex:32024R1689/oj#art_80').
declared(misclassification_to_circumvent_applies/1, 'system was misclassified to circumvent requirements', 'celex:32024R1689/oj#art_80').
declared(exercising_power_to_monitor_art80_applies/1, 'authority exercising power to monitor application of art 80', 'celex:32024R1689/oj#art_80').
declared(art11_applies/1, 'action in accordance with art 11 of Regulation 2020/1020', 'celex:32024R1689/oj#art_80').
declared(eu_database_info_applies/1, 'taking into account information stored in EU database referred to in art 71', 'celex:32024R1689/oj#art_80').
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    sufficient_reason_to_consider_applies(S),
    non_high_risk_classified_by_provider_applies(S).
must_require_provider_to_take_actions(Authority, compliance_actions(P, S)) :-
    market_surveillance_authority(Authority),
    evaluation_finds_high_risk_applies(S),
    provider(P).
must_inform(Authority, evaluation_results(S)) :-
    market_surveillance_authority(Authority),
    use_not_restricted_to_national_territory_applies(S).
must_ensure_compliance(Provider, S) :-
    provider(Provider),
    non_high_risk_classified_by_provider_applies(S).
must_face_fine(Provider, fine(S)) :-
    provider(Provider),
    non_compliance_within_period_applies(S).
must_ensure_corrective_action(Provider, S) :-
    provider(Provider),
    making_available_on_market(S).
art79_par5_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).
art79_par6_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).
art79_par7_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).
art79_par8_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).
art79_par9_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).
must_face_fine(Provider, fine(S)) :-
    provider(Provider),
    misclassification_to_circumvent_applies(S).
permitted_perform_checks(Authority) :-
    market_surveillance_authority(Authority),
    exercising_power_to_monitor_art80_applies(Authority),
    art11_applies(Authority),
    eu_database_info_applies(Authority).
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_provider_to_take_actions/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_face_fine/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(art79_par5_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par6_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par7_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par8_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par9_applies/1, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_checks/1, 'celex:32024R1689/oj#art_80').
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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').

% ==== celex:32024R1689/oj#art_81 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_81').
declared(objection_raised/3, 'objection raised by a market surveillance authority to a national measure', 'celex:32024R1689/oj#art_81').
declared(commission_considers_contrary/1, 'Commission considers a national measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(commission_considers_justified/1, 'Commission considers a national measure justified', 'celex:32024R1689/oj#art_81').
declared(commission_considers_unjustified/1, 'Commission considers a national measure unjustified', 'celex:32024R1689/oj#art_81').
declared(measure_concerns/2, 'AI system is concerned by a national measure', 'celex:32024R1689/oj#art_81').
declared(non_compliance_attributed_to_shortcomings/1, 'Non‑compliance of the AI system is attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
declared(must_consult/2, 'Commission must consult with the market surveillance authority of the relevant Member State and the operator(s)', 'celex:32024R1689/oj#art_81').
must_consult(Commission, consultation(MSA, Operator)) :-
    commission(Commission),
    market_surveillance_authority(MSA),
    member_state(_MemberState),
    operator(Operator),
    ( objection_raised(MSA, _Measure, _OtherMSA)
    ; commission_considers_contrary(_Measure)
    ).
declared(must_evaluate/2, 'Commission must evaluate the national measure', 'celex:32024R1689/oj#art_81').
must_evaluate(Commission, Measure) :-
    commission(Commission),
    ( objection_raised(_MSA, Measure, _OtherMSA)
    ; commission_considers_contrary(Measure)
    ).
declared(must_decide/2, 'Commission must decide whether the national measure is justified', 'celex:32024R1689/oj#art_81').
must_decide(Commission, decision(Measure, Status)) :-
    commission(Commission),
    ( objection_raised(_MSA, Measure, _OtherMSA)
    ; commission_considers_contrary(Measure)
    ),
    member(Status, [justified, unjustified]).
declared(must_notify/2, 'Commission must notify its decision to the market surveillance authority of the concerned Member State', 'celex:32024R1689/oj#art_81').
must_notify(Commission, notification(decision(Measure, Status), MSA)) :-
    commission(Commission),
    market_surveillance_authority(MSA),
    member(Status, [justified, unjustified]),
    ( objection_raised(_MSA2, Measure, _)
    ; commission_considers_contrary(Measure)
    ).
declared(must_inform/2, 'Commission must inform all other market surveillance authorities of its decision', 'celex:32024R1689/oj#art_81').
must_inform(Commission, inform(OtherMSA, decision(Measure, Status))) :-
    commission(Commission),
    market_surveillance_authority(OtherMSA),
    member(Status, [justified, unjustified]),
    ( objection_raised(_MSA2, Measure, _)
    ; commission_considers_contrary(Measure)
    ).
declared(must_ensure/2, 'Member State shall ensure appropriate restrictive measures are taken concerning the AI system', 'celex:32024R1689/oj#art_81').
must_ensure(MemberState, restrictive_measures(AISystem)) :-
    member_state(MemberState),
    commission_considers_justified(_Measure),
    ai_system(AISystem),
    measure_concerns(AISystem, _Measure).
declared(must_inform/2, 'Member State shall inform the Commission of the restrictive measures taken', 'celex:32024R1689/oj#art_81').
must_inform(MemberState, inform(Commission, restrictive_measures_taken(AISystem))) :-
    member_state(MemberState),
    commission(Commission),
    commission_considers_justified(_Measure),
    ai_system(AISystem),
    measure_concerns(AISystem, _Measure).
declared(must_withdraw/2, 'Member State shall withdraw the national measure', 'celex:32024R1689/oj#art_81').
must_withdraw(MemberState, Measure) :-
    member_state(MemberState),
    commission_considers_unjustified(Measure).
declared(must_inform/2, 'Member State shall inform the Commission that the national measure has been withdrawn', 'celex:32024R1689/oj#art_81').
must_inform(MemberState, inform(Commission, measure_withdrawn(Measure))) :-
    member_state(MemberState),
    commission(Commission),
    commission_considers_unjustified(Measure).
declared(must_apply_procedure/2, 'Commission shall apply the procedure provided for in Article 11 of Regulation (EU) 2021/1025', 'celex:32024R1689/oj#art_81').
must_apply_procedure(Commission, procedure(art_11)) :-
    commission(Commission),
    commission_considers_justified(_Measure),
    non_compliance_attributed_to_shortcomings(_Measure),
    ( harmonised_standard(_)
    ; common_specification(_)
    ).
provenance(must_consult/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform/2, 'celex:32024R1689/oj#art_81').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(operator_of_system/2, 'operator responsible for AI system', 'derived').
declared(presents_risk/1, 'AI system presents a risk', 'derived').
declared(timeline_prescribed_by_msa/2, 'timeline prescribed by market surveillance authority for AI system', 'derived').
declared(informs_to_commission/1, 'Member State informs Commission', 'derived').
declared(informs_to_other_member_states/1, 'Member State informs other Member States', 'derived').
must_require(MSA, requirement_take_measures(O, S)) :-
    market_surveillance_authority(MSA),
    operator(O),
    operator_of_system(O, S),
    high_risk_ai_system(S),
    presents_risk(S),
    placing_on_market(S).
must_ensure(O, corrective_action_taken(S)) :-
    (provider(O) ; operator(O)),
    operator_of_system(O, S),
    placing_on_market(S),
    market_surveillance_authority(MSA),
    timeline_prescribed_by_msa(MSA, S).
must_inform(MS, finding_information(par_1)) :-
    member_state(MS),
    informs_to_commission(MS),
    informs_to_other_member_states(MS).
must_enter_into_consultation(Comm, consultation(MS_list, Ops_list)) :-
    commission(Comm),
    commission(Comm).
must_evaluate(Comm, national_measures_taken) :-
    commission(Comm),
    commission(Comm).
must_communicate(Comm, decision(MS_list, Ops_list)) :-
    commission(Comm),
    commission(Comm).
provenance(must_require/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(relevant_provider/1, 'provider relevant to a finding of non‑compliance', 'celex:32024R1689/oj#art_83').
declared(persists_non_compliance/1, 'non‑compliance persists for the AI system', 'celex:32024R1689/oj#art_83').
relevant_provider(P) :-
    provider(P).
persists_non_compliance(AI) :-
    high_risk_ai_system(AI).
must_require(MSA, end_non_compliance(P, ce_marking_affixed_in_violation)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_require(MSA, end_non_compliance(P, ce_marking_not_affixed)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_require(MSA, end_non_compliance(P, eu_declaration_not_drawn_up)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_require(MSA, end_non_compliance(P, eu_declaration_not_drawn_up_correctly)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_require(MSA, end_non_compliance(P, registration_not_carried_out)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_require(MSA, end_non_compliance(P, no_authorised_representative_appointed)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_require(MSA, end_non_compliance(P, technical_documentation_not_available)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    provider(P),
    relevant_provider(P).
must_take(MSA, appropriate_measures(HighRiskAI)) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA),
    high_risk_ai_system(HighRiskAI),
    persists_non_compliance(HighRiskAI).
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_take/2, 'celex:32024R1689/oj#art_83').
provenance(relevant_provider/1, 'celex:32024R1689/oj#art_83').
provenance(persists_non_compliance/1, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'Union AI testing support structure', 'celex:32024R1689/oj#art_84').
declared(must_designate/2, 'Commission shall designate Union AI testing support structures', 'celex:32024R1689/oj#art_84').
declared(must_provide/2, 'Union AI testing support structures shall provide independent technical or scientific advice', 'celex:32024R1689/oj#art_84').
must_designate(commission, S) :-
    union_ai_testing_support_structure(S).
must_provide(S, independent_advice(Requester)) :-
    union_ai_testing_support_structure(S),
    (   Requester = board
    ;   Requester = commission
    ;   market_surveillance_authority(Requester)
    ).
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(natural_or_legal_person/1, 'natural or legal person', 'celex:32024R1689/oj#art_85').
declared(has_ground_to_consider_infringement/1, 'has grounds to consider an infringement', 'celex:32024R1689/oj#art_85').
declared(complaint/1, 'complaint submitted to a market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(permitted_submit_complaint/2, 'person may submit a complaint to the relevant market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(must_take_into_account_complaint/2, 'market surveillance authority must take the complaint into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(must_handle_complaint_in_line_with_procedures/2, 'market surveillance authority must handle the complaint in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
permitted_submit_complaint(Person, complaint_to(Authority)) :-
    natural_or_legal_person(Person),
    has_ground_to_consider_infringement(Person),
    market_surveillance_authority(Authority).
must_take_into_account_complaint(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).
must_handle_complaint_in_line_with_procedures(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).
provenance(permitted_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint_in_line_with_procedures/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(affected_person_applies/1, 'person affected by a decision taken by a deployer', 'celex:32024R1689/oj#art_86').
declared(decision_affects/2, 'decision taken by a deployer based on AI system output affects the person', 'celex:32024R1689/oj#art_86').
declared(adverse_impact_on_health_safety_fundamental_rights/1, 'person considers the decision to have an adverse impact on health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(exempt_explanation/1, 'AI system exempt from the right to explanation', 'celex:32024R1689/oj#art_86').
declared(provided_by_union_law_explanation/1, 'right to explanation already provided for by Union law', 'celex:32024R1689/oj#art_86').
must_provide_explanation(Deployer, explanation(Person)) :-
    deployer(Deployer),
    affected_person_applies(Person),
    high_risk_ai_system(AI),
    annex_3_ai_system(AI),
    \+ exempt_explanation(AI),
    \+ provided_by_union_law_explanation(AI),
    decision_affects(Person, AI),
    adverse_impact_on_health_safety_fundamental_rights(Person).
exempt_explanation(_AI) :- false.
provided_by_union_law_explanation(_AI) :- false.
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(ai_regulation/1, 'AI regulation to which reporting obligations apply', 'celex:32024R1689/oj#art_87').
declared(reporting_infringement_applies/1, 'application of reporting of infringements provision', 'celex:32024R1689/oj#art_87').
declared(protection_of_reporting_person_applies/1, 'application of protection of reporting persons provision', 'celex:32024R1689/oj#art_87').
ai_regulation(celex_32024R1689_oj).
reporting_infringement_applies(Reg) :-
    ai_regulation(Reg).
protection_of_reporting_person_applies(Reg) :-
    ai_regulation(Reg).
provenance(ai_regulation/1, 'celex:32024R1689/oj#art_87').
provenance(reporting_infringement_applies/1, 'celex:32024R1689/oj#art_87').
provenance(protection_of_reporting_person_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
must_supervise(commission, Provider) :-
    general_purpose_ai_model_provider(Provider).
must_enforce(commission, Provider) :-
    general_purpose_ai_model_provider(Provider).
must_entrust(commission, ai_office).
permitted_request_exercise_powers(Authority) :-
    market_surveillance_authority(Authority).
provenance(must_supervise/2, 'celex:32024R1689/oj#art_88').
provenance(must_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_powers/1, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(permitted_monitoring_action/1, 'AI Office may monitor providers of general-purpose AI models', 'celex:32024R1689/oj#art_89').
declared(permitted_complaint_lodging/1, 'Downstream providers may lodge a complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(required_complaint_content/1, 'Complaint must be duly reasoned and include required information', 'celex:32024R1689/oj#art_89').
declared(includes_point_of_contact/1, 'Complaint includes point of contact of the provider of the general-purpose AI model concerned', 'celex:32024R1689/oj#art_89').
declared(includes_description/1, 'Complaint includes description of relevant facts, provisions and reason', 'celex:32024R1689/oj#art_89').
declared(includes_other_information/1, 'Complaint includes any other relevant information', 'celex:32024R1689/oj#art_89').
permitted_monitoring_action(Actor) :-
    ai_office(Actor),
    general_purpose_ai_model_provider(_).
permitted_complaint_lodging(Actor) :-
    downstream_provider(Actor).
required_complaint_content(Complaint) :-
    includes_point_of_contact(Complaint),
    includes_description(Complaint),
    includes_other_information(Complaint).
provenance(permitted_monitoring_action/1, 'celex:32024R1689/oj#art_89').
provenance(permitted_complaint_lodging/1, 'celex:32024R1689/oj#art_89').
provenance(required_complaint_content/1, 'celex:32024R1689/oj#art_89').
provenance(includes_point_of_contact/1, 'celex:32024R1689/oj#art_89').
provenance(includes_description/1, 'celex:32024R1689/oj#art_89').
provenance(includes_other_information/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel', 'celex:32024R1689/oj#art_90').
declared(permitted_qualified_alert/1, 'permission to provide qualified alert', 'celex:32024R1689/oj#art_90').
declared(poses_concrete_identifiable_risk_at_union_level/1, 'model poses concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_art_51/1, 'model meets conditions of article 51', 'celex:32024R1689/oj#art_90').
declared(permitted_exercise_powers/1, 'permission for Commission to exercise powers', 'celex:32024R1689/oj#art_90').
declared(must_inform/2, 'obligation to inform', 'celex:32024R1689/oj#art_90').
declared(required_qualified_alert/1, 'qualified alert must be duly reasoned and indicate required information', 'celex:32024R1689/oj#art_90').
declared(includes_point_of_contact/1, 'alert includes point of contact of provider', 'celex:32024R1689/oj#art_90').
declared(includes_description/1, 'alert includes description of facts and reasons', 'celex:32024R1689/oj#art_90').
declared(includes_other_information/1, 'alert includes any other relevant information', 'celex:32024R1689/oj#art_90').
scientific_panel(scientific_panel).
permitted_qualified_alert(scientific_panel) :-
    (   (   general_purpose_ai_model(M),
            poses_concrete_identifiable_risk_at_union_level(M) )
    ;   (   general_purpose_ai_model(M),
            meets_conditions_art_51(M) )
    ).
qualified_alert_received.
informed_board.
through_ai_office.
permitted_exercise_powers(commission) :-
    qualified_alert_received,
    informed_board,
    through_ai_office.
must_inform(ai_office, board_measure(art_91)).
must_inform(ai_office, board_measure(art_92)).
must_inform(ai_office, board_measure(art_93)).
must_inform(ai_office, board_measure(art_94)).
required_qualified_alert(qualified_alert) :-
    includes_point_of_contact(qualified_alert),
    includes_description(qualified_alert),
    includes_other_information(qualified_alert).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(poses_concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(includes_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(includes_description/1, 'celex:32024R1689/oj#art_90').
provenance(includes_other_information/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_91').
declared(request_information/2, 'Commission may request information from provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_91').
declared(initiate_structured_dialogue/2, 'AI Office may initiate a structured dialogue with provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_91').
declared(must_supply/2, 'Provider or its authorised representative shall supply the information requested', 'celex:32024R1689/oj#art_91').
declared(represents/2, 'Person authorised to represent a provider', 'celex:32024R1689/oj#art_91').
request_information(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider).
request_information(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider),
    scientific_panel_request_substantiated,
    access_necessary_and_proportionate.
initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    general_purpose_ai_model_provider(Provider).
must_supply(Provider, information_requested) :-
    general_purpose_ai_model_provider(Provider).
must_supply(Representative, information_requested) :-
    authorised_representative(Representative),
    represents(Representative, Provider),
    general_purpose_ai_model_provider(Provider).
provenance(commission/1, 'celex:32024R1689/oj#art_91').
provenance(request_information/2, 'celex:32024R1689/oj#art_91').
provenance(initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply/2, 'celex:32024R1689/oj#art_91').
provenance(represents/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_92 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_92').
declared(independent_expert/1, 'expert appointed independently to carry out evaluations', 'celex:32024R1689/oj#art_92').
declared(conduct_evaluations/2, 'AI Office may conduct evaluations of a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(appoint_independent_expert/2, 'Commission may appoint independent experts to carry out evaluations', 'celex:32024R1689/oj#art_92').
declared(must_meet_criteria/2, 'Independent expert must meet the criteria set out in art 68 par 2', 'celex:32024R1689/oj#art_92').
declared(request_access/2, 'Commission may request access to a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(must_state_legal_basis/2, 'Request must state the legal basis', 'celex:32024R1689/oj#art_92').
declared(must_state_purpose/2, 'Request must state the purpose', 'celex:32024R1689/oj#art_92').
declared(must_state_reason/2, 'Request must state the reasons', 'celex:32024R1689/oj#art_92').
declared(must_set_period/2, 'Request must set the period for providing access', 'celex:32024R1689/oj#art_92').
declared(must_include_fines/2, 'Request must include the fines for failure to provide access', 'celex:32024R1689/oj#art_92').
declared(must_supply_information/2, 'Provider or its representative must supply the requested information', 'celex:32024R1689/oj#art_92').
declared(must_provide_access/2, 'Authorized representative must provide access on behalf of the provider', 'celex:32024R1689/oj#art_92').
declared(initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with the provider', 'celex:32024R1689/oj#art_92').
commission(commission).
conduct_evaluations(Actor, Model) :-
    ai_office(Actor),
    general_purpose_ai_model(Model).
appoint_independent_expert(Actor, Expert) :-
    commission(Actor),
    independent_expert(Expert).
must_meet_criteria(Expert, criteria_art_68_par_2) :-
    independent_expert(Expert).
request_access(Actor, Model) :-
    commission(Actor),
    general_purpose_ai_model(Model).
must_state_legal_basis(Actor, request) :-
    commission(Actor).
must_state_purpose(Actor, request) :-
    commission(Actor).
must_state_reason(Actor, request) :-
    commission(Actor).
must_set_period(Actor, request) :-
    commission(Actor).
must_include_fines(Actor, request) :-
    commission(Actor).
must_supply_information(Provider, request) :-
    provider(Provider).
must_provide_access(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider).
initiate_structured_dialogue(Actor, Provider) :-
    ai_office(Actor),
    provider(Provider).
provenance(commission/1, 'celex:32024R1689/oj#art_92').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(conduct_evaluations/2, 'celex:32024R1689/oj#art_92').
provenance(appoint_independent_expert/2, 'celex:32024R1689/oj#art_92').
provenance(must_meet_criteria/2, 'celex:32024R1689/oj#art_92').
provenance(request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_legal_basis/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_purpose/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_reason/2, 'celex:32024R1689/oj#art_92').
provenance(must_set_period/2, 'celex:32024R1689/oj#art_92').
provenance(must_include_fines/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(permitted_take_appropriate_measures/1, 'Commission may request provider to take appropriate measures', 'celex:32024R1689/oj#art_93').
declared(permitted_implement_mitigation_measures/1, 'Commission may request provider to implement mitigation measures', 'celex:32024R1689/oj#art_93').
declared(permitted_restrict_making_available/1, 'Commission may request provider to restrict making available on the market', 'celex:32024R1689/oj#art_93').
declared(permitted_withdraw/1, 'Commission may request provider to withdraw the model', 'celex:32024R1689/oj#art_93').
declared(permitted_recall/1, 'Commission may request provider to recall the model', 'celex:32024R1689/oj#art_93').
declared(initiate_structured_dialogue/2, 'AI Office may initiate a structured dialogue with the provider', 'celex:32024R1689/oj#art_93').
declared(make_commitments_binding/2, 'Commission may make provider commitments binding', 'celex:32024R1689/oj#art_93').
declared(systemic_risk_applies/1, 'Provider of a general‑purpose AI model is subject to a systemic risk', 'celex:32024R1689/oj#art_93').
declared(offers_commitments_to_implement_mitigation_measures/1, 'Provider offers commitments to implement mitigation measures', 'celex:32024R1689/oj#art_93').
permitted_take_appropriate_measures(Provider) :-
    provider(Provider).
permitted_implement_mitigation_measures(Provider) :-
    provider(Provider).
permitted_restrict_making_available(Provider) :-
    provider(Provider).
permitted_withdraw(Provider) :-
    provider(Provider).
permitted_recall(Provider) :-
    provider(Provider).
initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider).
make_commitments_binding(commission, Provider) :-
    provider(Provider),
    systemic_risk_applies(Provider),
    offers_commitments_to_implement_mitigation_measures(Provider).
provenance(permitted_take_appropriate_measures/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_implement_mitigation_measures/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_restrict_making_available/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_withdraw/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_recall/1, 'celex:32024R1689/oj#art_93').
provenance(initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments_to_implement_mitigation_measures/1, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies/1, 'procedural rights of economic operators of the general‑purpose AI model apply to provider', 'celex:32024R1689/oj#art_94').
declared(specific_procedural_rights/1, 'more specific procedural rights provided for in this regulation', 'celex:32024R1689/oj#art_94').
procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies(Provider) :-
    general_purpose_ai_model_provider(Provider),
    \+ specific_procedural_rights(Provider).
provenance(procedural_rights_of_economic_operators_of_general_purpose_ai_model_applies/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(must_encourage_and_facilitate/2, 'AI Office and Member States shall encourage and facilitate the drawing up of codes of conduct for AI systems other than high‑risk AI systems', 'celex:32024R1689/oj#art_95').
declared(must_facilitate/2, 'AI Office and Member States shall facilitate the drawing up of codes of conduct concerning the voluntary application of specific requirements to all AI systems', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account/2, 'AI Office and Member States shall take into account the specific interests and needs of SMEs when encouraging and facilitating the drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(permitted_drawing_up_codes_of_conduct_by/1, 'Entities that may draw up codes of conduct', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct/1, 'code of conduct for AI systems', 'celex:32024R1689/oj#art_95').
declared(organisation/1, 'organisation representing providers or deployers', 'celex:32024R1689/oj#art_95').
must_encourage_and_facilitate(Actor, codes_of_conduct(S)) :-
    (ai_office(Actor) ; member_state(Actor)),
    ai_system(S),
    \+ high_risk_ai_system(S).
must_facilitate(Actor, codes_of_conduct(S)) :-
    (ai_office(Actor) ; member_state(Actor)),
    ai_system(S).
must_take_into_account(Actor, smes) :-
    (ai_office(Actor) ; member_state(Actor)).
permitted_drawing_up_codes_of_conduct_by(Entity) :-
    provider(Entity).
permitted_drawing_up_codes_of_conduct_by(Entity) :-
    deployer(Entity).
permitted_drawing_up_codes_of_conduct_by(Entity) :-
    organisation(Entity).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct_by/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(organisation/1, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop/2, 'Commission shall develop guidelines', 'celex:32024R1689/oj#art_96').
declared(must_consider/2, 'Commission shall consider specified matters', 'celex:32024R1689/oj#art_96').
declared(must_update/2, 'Commission shall update guidelines', 'celex:32024R1689/oj#art_96').
declared(member_state_request_applies/1, 'Request by a Member State', 'celex:32024R1689/oj#art_96').
declared(ai_office_request_applies/1, 'Request by the AI Office', 'celex:32024R1689/oj#art_96').
declared(own_initiative_applies/0, 'Commission acts on its own initiative', 'celex:32024R1689/oj#art_96').
declared(necessary_applies/0, 'Action deemed necessary', 'celex:32024R1689/oj#art_96').
must_develop(commission, guidelines(implementation_of(regulation))) :-
    true.
must_consider(commission, needs(sme)).
must_consider(commission, needs(local_public_authority)).
must_consider(commission, needs(sector_likely_affected)).
must_consider(commission, state_of_the_art).
must_consider(commission, harmonised_standard).
must_consider(commission, common_specification).
must_update(commission, guidelines) :-
    ( member_state_request_applies(_)
    ; ai_office_request_applies(_)
    ; own_initiative_applies
    ),
    necessary_applies.
member_state_request_applies(MS) :-
    member_state(MS).
ai_office_request_applies(AO) :-
    ai_office(AO).
own_initiative_applies.
necessary_applies.
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider/2, 'celex:32024R1689/oj#art_96').
provenance(must_update/2, 'celex:32024R1689/oj#art_96').
provenance(member_state_request_applies/1, 'celex:32024R1689/oj#art_96').
provenance(ai_office_request_applies/1, 'celex:32024R1689/oj#art_96').
provenance(own_initiative_applies/0, 'celex:32024R1689/oj#art_96').
provenance(necessary_applies/0, 'celex:32024R1689/oj#art_96').
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
declared(must_draw_up_report/2, 'Commission must draw up a report on the delegation of power not later than nine months before the end of the five‑year period', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts/2, 'Commission must consult experts designated by each Member State before adopting a delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission must notify a delegated act simultaneously to the European Parliament and the Council as soon as it adopts the act', 'celex:32024R1689/oj#art_97').
declared(permitted_revocation/1, 'European Parliament or Council may revoke the delegation of power at any time', 'celex:32024R1689/oj#art_97').
declared(permitted_entry_into_force/1, 'A delegated act may enter into force only if no objection has been expressed by the European Parliament or the Council within the prescribed period', 'celex:32024R1689/oj#art_97').
declared(no_objection/2, 'No objection has been expressed by the given actor concerning the delegated act', 'celex:32024R1689/oj#art_97').
must_draw_up_report(_Commission, report(deadline(months(9), before_end_of_period))).
must_consult_experts(_Commission, consult_experts(delegated_act)).
must_notify(_Commission, notification(delegated_act, [parliament, council])).
permitted_revocation(parliament).
permitted_revocation(council).
permitted_entry_into_force(DelegatedAct) :-
    no_objection(parliament, DelegatedAct),
    no_objection(council, DelegatedAct).
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revocation/1, 'celex:32024R1689/oj#art_97').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_98').
declared(committee/1, 'committee assisting the Commission', 'celex:32024R1689/oj#art_98').
must_assist(Commission, Committee) :-
    commission(Commission),
    committee(Committee).
provenance(must_assist/2, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(must_lay_down_rules_on_penalties/2, 'Member State shall lay down rules on penalties', 'celex:32024R1689/oj#art_99').
must_lay_down_rules_on_penalties(MS, penalties_rules) :-
    member_state(MS).
provenance(must_lay_down_rules_on_penalties/2, 'celex:32024R1689/oj#art_99').
declared(must_notify/2, 'Member State shall notify the Commission of the rules on penalties', 'celex:32024R1689/oj#art_99').
must_notify(MS, penalty_rules_notification) :-
    member_state(MS).
provenance(must_notify/2, 'celex:32024R1689/oj#art_99').
declared(must_report/2, 'Member State shall report annually to the Commission on administrative fines issued', 'celex:32024R1689/oj#art_99').
must_report(MS, annual_fine_report) :-
    member_state(MS).
provenance(must_report/2, 'celex:32024R1689/oj#art_99').
declared(penalty_amount/2, 'Maximum administrative fine for a specific type of non‑compliance', 'celex:32024R1689/oj#art_99').
penalty_amount(non_compliance_with_art5, max_fine(eur(35000000), percent(7))).
penalty_amount(non_compliance_with_operator_obligations, max_fine(eur(15000000), percent(3))).
penalty_amount(supply_of_incorrect_information, max_fine(eur(7500000), percent(1))).
provenance(penalty_amount/2, 'celex:32024R1689/oj#art_99').
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
declared(union_entity/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(must_impose_fine/2, 'European Data Protection Supervisor may impose administrative fines', 'celex:32024R1689/oj#art_100').
declared(must_give_hearing_opportunity/2, 'European Data Protection Supervisor shall give the Union entity the opportunity to be heard', 'celex:32024R1689/oj#art_100').
declared(must_respect_rights_of_defence/2, 'Rights of defence of the parties concerned shall be fully respected', 'celex:32024R1689/oj#art_100').
declared(must_provide_access_to_file/2, 'Parties shall have access to the European Data Protection Supervisor’s file', 'celex:32024R1689/oj#art_100').
declared(must_notify_annually/2, 'European Data Protection Supervisor shall annually notify the Commission of the administrative fines imposed', 'celex:32024R1689/oj#art_100').
european_data_protection_supervisor(edps).
must_impose_fine(EDPS, fine(up_to(eur(1500000)), non_compliance_prohibition_ai_practices)) :-
    european_data_protection_supervisor(EDPS).
must_impose_fine(EDPS, fine(up_to(eur(750000)), non_compliance_requirements)) :-
    european_data_protection_supervisor(EDPS).
must_give_hearing_opportunity(EDPS, hearing(Entity)) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity).
must_respect_rights_of_defence(EDPS, parties_concerned) :-
    european_data_protection_supervisor(EDPS).
must_provide_access_to_file(EDPS, parties_concerned) :-
    european_data_protection_supervisor(EDPS).
must_notify_annually(EDPS, notification(commission, fines_imposed)) :-
    european_data_protection_supervisor(EDPS).
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_entity/1, 'celex:32024R1689/oj#art_100').
provenance(must_impose_fine/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_hearing_opportunity/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/2, 'celex:32024R1689/oj#art_100').
provenance(must_provide_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_annually/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_101').
declared(intentional_or_negligent/1, 'intentional or negligent conduct', 'celex:32024R1689/oj#art_101').
declared(infringed_provisions/1, 'infringed relevant provisions of the regulation', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_request/1, 'failed to comply with a request for a document or information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_measure/1, 'failed to comply with a measure requested', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available/1, 'failed to make available access to the model for evaluation', 'celex:32024R1689/oj#art_101').
declared(board/1, 'Board of the European AI Board', 'celex:32024R1689/oj#art_101').
declared(implementing_acts/1, 'implementing acts containing detailed arrangements', 'celex:32024R1689/oj#art_101').
impose_fine(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider),
    intentional_or_negligent(Provider),
    (   infringed_provisions(Provider)
    ;   failed_to_comply_request(Provider)
    ;   failed_to_comply_measure(Provider)
    ;   failed_to_make_available(Provider)
    ).
must_communicate_preliminary_findings(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider).
must_communicate_fine_information(Commission, B) :-
    commission(Commission),
    board(B).
must_adopt_implementing_acts(Commission, A) :-
    commission(Commission),
    implementing_acts(A).
provenance(impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information/2, 'celex:32024R1689/oj#art_101').
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
declared(adopting_detailed_measures/1, 'adopting detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems', 'celex:32024R1689/oj#art_102').
must_take_into_account(Actor, requirements(chapter3_section2)) :-
    adopting_detailed_measures(Actor).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_102').
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
declared(adopt_delegated_act/2, 'entity adopts a delegated act', 'celex:32024R1689/oj#art_103').
declared(concerns/2, 'delegated act concerns an AI system', 'celex:32024R1689/oj#art_103').
must_take_into_account(Actor, requirements_ch3_sec2) :-
    adopt_delegated_act(Actor, Act),
    concerns(Act, System),
    safety_component_ai_system(System).
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
declared(delegated_act/1, 'delegated act adopted pursuant to article 22 paragraph 5', 'celex:32024R1689/oj#art_104').
declared(act_concerns_safety_component_ai_system/1, 'delegated act concerns AI systems that are safety components', 'celex:32024R1689/oj#art_104').
must_take_into_account(_Actor, requirements(chapter_3_section_2)) :-
    delegated_act(Act),
    act_concerns_safety_component_ai_system(Act).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
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
declared(activity_pursuant_to_art_8_par_1/1, 'activity pursuant to article 8 paragraph 1', 'celex:32014L0090/oj#art_8/par_1').
declared(adopting_technical_specifications_and_testing_standards_art_8_par_2_3/1, 'adopting technical specifications and testing standards according to article 8 paragraphs 2 and 3', 'celex:32014L0090/oj#art_8/par_2').
must_take_into_account(Commission, requirements(chp_3_sec_2)) :-
    commission(Commission),
    safety_component_ai_system(S),
    activity_pursuant_to_art_8_par_1(S),
    adopting_technical_specifications_and_testing_standards_art_8_par_2_3(S).
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
declared(delegated_act_adoption_applies/1, 'adoption of delegated acts pursuant to article 5', 'celex:32024R1689/oj#art_106').
declared(implementing_act_adoption_applies/1, 'adoption of implementing acts pursuant to article 5', 'celex:32024R1689/oj#art_106').
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    delegated_act_adoption_applies(Actor),
    implementing_act_adoption_applies(Actor),
    safety_component_ai_system(_).
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
declared(adopt_delegated_act/2, 'adoption of delegated act concerning AI system', 'celex:32024R1689/oj#art_107').
declared(must_take_into_account/2, 'requirement to take into account specified requirements', 'celex:32024R1689/oj#art_107').
must_take_into_account(Actor, requirement(chapter_3_sec_2)) :-
    adopt_delegated_act(Actor, S),
    safety_component_ai_system(S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_108 ====
declared(adopt_implementing_act/2, 'entity adopting an implementing act concerning an AI system', 'celex:32024R1689/oj#art_108').
declared(adopt_delegated_act/2, 'entity adopting a delegated act concerning an AI system', 'celex:32024R1689/oj#art_108').
must_take_into_account(Actor, requirements(chapter_3, section_2)) :-
    adopt_implementing_act(Actor, S),
    safety_component_ai_system(S).
must_take_into_account(Actor, requirements(chapter_3, section_2)) :-
    adopt_delegated_act(Actor, S),
    safety_component_ai_system(S).
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
declared(must_take_into_account/2, 'obligation to consider the requirements set out in chapter 3 section 2 when adopting implementing acts concerning safety component AI systems', 'celex:32024R1689/oj#art_109').
must_take_into_account(Commission, requirements(chapter_3, section_2)) :-
    must_adopt(Commission, _Act),
    safety_component_ai_system(_S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_109').
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
declared(component_of_large_scale_it_system/1, 'AI system component of a large‑scale IT system listed in annex 10', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_before/2, 'AI system placed on the market before the given date', 'celex:32024R1689/oj#art_111').
declared(compliance_by/1, 'deadline for compliance', 'celex:32024R1689/oj#art_111').
declared(required_compliance/1, 'AI system must be brought into compliance with the Regulation', 'celex:32024R1689/oj#art_111').
declared(applies_to_operator/2, 'Regulation applies to operator of a high‑risk AI system', 'celex:32024R1689/oj#art_111').
declared(excluded_by_par1/1, 'AI system excluded by paragraph 1', 'celex:32024R1689/oj#art_111').
declared(significant_design_change/2, 'AI system is subject to significant design change from the given date', 'celex:32024R1689/oj#art_111').
declared(intended_for_public_authorities/1, 'AI system intended for use by public authorities', 'celex:32024R1689/oj#art_111').
declared(must_comply/2, 'Actor must comply by the given deadline', 'celex:32024R1689/oj#art_111').
compliance_by(date(2030,12,31)).
compliance_by(date(2030,8,2)).
compliance_by(date(2027,8,2)).
required_compliance(S) :-
    component_of_large_scale_it_system(S),
    placed_on_market_before(S, date(2027,8,2)),
    compliance_by(date(2030,12,31)).
provenance(required_compliance/1, 'celex:32024R1689/oj#art_111').
applies_to_operator(Op, S) :-
    operator(Op),
    high_risk_ai_system(S),
    placed_on_market_before(S, date(2026,8,2)),
    significant_design_change(S, date(2026,8,2)),
    \+ excluded_by_par1(S).
provenance(applies_to_operator/2, 'celex:32024R1689/oj#art_111').
excluded_by_par1(S) :-
    component_of_large_scale_it_system(S).
provenance(excluded_by_par1/1, 'celex:32024R1689/oj#art_111').
must_comply(Actor, compliance_by(date(2030,8,2))) :-
    (provider(Actor) ; deployer(Actor)),
    high_risk_ai_system(S),
    intended_for_public_authorities(S).
provenance(must_comply/2, 'celex:32024R1689/oj#art_111').

% ==== celex:32024R1689/oj#art_112 ====
must_assess(commission, amendment_need(annex_3, art_5, annual)).
must_submit(commission, findings(european_parliament, council, annex_3, art_5)).
must_evaluate_and_report(commission, evaluation(annex_3, art_50, supervision_governance, deadline(date(2028,8,2)), period(years(4)))).
must_submit(commission, evaluation_review_report(deadline(date(2029,8,2)), period(years(4)), includes([enforcement_structure, union_agency]), public)).
must_include(commission, attention(resources(national_competent_authorities), penalties(state), standards(adopted), market_entries(undertakings, smes))).
must_evaluate(commission, ai_office_functioning(deadline(date(2028,8,2)))).
must_submit(commission, ai_office_evaluation_report(european_parliament, council, public)).
must_submit(commission, standardisation_review(general_purpose_ai_models, energy_efficient, deadline(date(2028,8,2)), period(years(4)), public)).
must_evaluate(commission, voluntary_codes_impact(other_than(high_risk_ai_system), aspects([environmental_sustainability]), deadline(date(2028,8,2)), period(years(3)))).
must_provide(board, information(commission)).
must_provide(member_state, information(commission)).
must_provide(national_competent_authority, information(commission)).
must_consider(commission, positions([board, european_parliament, council, other_bodies])).
must_submit_proposal(commission, amendment(necessary, considerations([technology, health_and_safety, fundamental_rights, information_society]))).
must_develop(ai_office, methodology(objective_participative, risk_evaluation, inclusion([annex_3, art_5, art_50]))).
must_assess(commission, enforcement_assessment(deadline(date(2031,8,2)), public)).
must_submit(commission, enforcement_assessment_report(european_parliament, council, european_economic_and_social_committee, public)).
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_include/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide/2, 'celex:32024R1689/oj#art_112').
provenance(must_consider/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_proposal/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').
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
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_113 ====
declared(applies_from/2, 'date from which a unit applies', 'celex:32024R1689/oj#art_113').
applies_from('celex:32024R1689/oj#art_113', date(2026,8,2)).
applies_from('celex:32024R1689/oj#chp_1', date(2025,2,2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025,2,2)).
applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025,8,2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025,8,2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025,8,2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025,8,2)).
applies_from('celex:32024R1689/oj#art_78', date(2025,8,2)).
applies_from('celex:32024R1689/oj#art_6/par_1', date(2027,8,2)).
prohibited_applies_from('celex:32024R1689/oj#art_101').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(prohibited_applies_from/1, 'celex:32024R1689/oj#art_113').
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
union_harmonisation_legislation_applies('celex:32006L0042/oj').
union_harmonisation_legislation_applies('celex:32009L0048/oj').
union_harmonisation_legislation_applies('celex:32013L0053/oj').
union_harmonisation_legislation_applies('celex:32014L0033/oj').
union_harmonisation_legislation_applies('celex:32014L0034/oj').
union_harmonisation_legislation_applies('celex:32014L0053/oj').
union_harmonisation_legislation_applies('celex:32014L0068/oj').
union_harmonisation_legislation_applies('celex:32016R0424/oj').
union_harmonisation_legislation_applies('celex:32016R0425/oj').
union_harmonisation_legislation_applies('celex:32016R0426/oj').
union_harmonisation_legislation_applies('celex:32017R0745/oj').
union_harmonisation_legislation_applies('celex:32017R0746/oj').
union_harmonisation_legislation_applies('celex:32008R0300/oj').
union_harmonisation_legislation_applies('celex:32013R0168/oj').
union_harmonisation_legislation_applies('celex:32013R0167/oj').
union_harmonisation_legislation_applies('celex:32014L0090/oj').
union_harmonisation_legislation_applies('celex:32016L0797/oj').
union_harmonisation_legislation_applies('celex:32018R0858/oj').
union_harmonisation_legislation_applies('celex:32019R2144/oj').
union_harmonisation_legislation_applies('celex:32018R1139/oj').
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
declared(criminal_offence/1, 'criminal offence referred to in annex II', 'celex:32024R1689/oj#anx_2').
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
criminal_offence(illegal_restraint_or_hostage_taking).
criminal_offence(crimes_within_jurisdiction_of_international_criminal_court).
criminal_offence(unlawful_seizure_of_aircraft_or_ships).
criminal_offence(rape).
criminal_offence(environmental_crime).
criminal_offence(organised_or_armed_robbery).
criminal_offence(sabotage).
criminal_offence(participation_in_criminal_organisation_involved_in_listed_offences).
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    biometric_categorisation_system(S).
high_risk_ai_system(S) :-
    emotion_recognition_system(S).
high_risk_ai_system(S) :-
    safety_component_ai_system(S).
high_risk_ai_system(S) :-
    education_access_ai_system(S).
high_risk_ai_system(S) :-
    education_learning_outcome_ai_system(S).
high_risk_ai_system(S) :-
    education_level_assessment_ai_system(S).
high_risk_ai_system(S) :-
    education_test_monitoring_ai_system(S).
high_risk_ai_system(S) :-
    employment_recruitment_ai_system(S).
high_risk_ai_system(S) :-
    employment_work_relationship_ai_system(S).
high_risk_ai_system(S) :-
    public_authority_eligibility_ai_system(S).
high_risk_ai_system(S) :-
    creditworthiness_assessment_ai_system(S).
high_risk_ai_system(S) :-
    life_health_insurance_pricing_ai_system(S).
high_risk_ai_system(S) :-
    emergency_services_dispatch_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_victim_risk_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_polygraph_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_offender_risk_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_profiling_ai_system(S).
high_risk_ai_system(S) :-
    migration_polygraph_ai_system(S).
high_risk_ai_system(S) :-
    migration_risk_assessment_ai_system(S).
high_risk_ai_system(S) :-
    migration_asylum_assistance_ai_system(S).
high_risk_ai_system(S) :-
    migration_identification_ai_system(S),
    \+ travel_document_verification_ai_system(S).
high_risk_ai_system(S) :-
    justice_assistance_ai_system(S).
high_risk_ai_system(S) :-
    justice_election_influence_ai_system(S).
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(must_provide_technical_documentation/2, 'provider must provide technical documentation item', 'celex:32024R1689/oj#anx_4').
declared(required_technical_documentation/1, 'required item in technical documentation', 'celex:32024R1689/oj#anx_4').
required_technical_documentation(general_description).
required_technical_documentation(detailed_description_of_elements).
required_technical_documentation(monitoring_function_control_information).
required_technical_documentation(performance_metrics_appropriateness_description).
required_technical_documentation(risk_management_system_description).
required_technical_documentation(provider_lifecycle_changes_description).
required_technical_documentation(harmonised_standards_list).
required_technical_documentation(eu_declaration_of_conformity_copy).
required_technical_documentation(post_market_performance_evaluation_description).
must_provide_technical_documentation(Provider, Item) :-
    provider(Provider),
    required_technical_documentation(Item).
provenance(must_provide_technical_documentation/2, 'celex:32024R1689/oj#anx_4').
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(required_ai_system_identification/1, 'AI system name, type and reference for identification and traceability', 'celex:32024R1689/oj#anx_5').
declared(required_provider_information/1, 'name and address of the provider', 'celex:32024R1689/oj#anx_5').
declared(required_authorised_representative_information/1, 'name and address of the authorised representative', 'celex:32024R1689/oj#anx_5').
declared(required_provider_responsibility_statement/1, 'statement that the declaration is issued under the sole responsibility of the provider', 'celex:32024R1689/oj#anx_5').
declared(required_conformity_statement/1, 'statement that the AI system is in conformity with the Regulation and other Union law', 'celex:32024R1689/oj#anx_5').
declared(processes_personal_data/1, 'AI system involves processing of personal data', 'celex:32024R1689/oj#anx_5').
declared(required_gdpr_compliance_statement/1, 'statement that the AI system complies with GDPR and related regulations', 'celex:32024R1689/oj#anx_5').
declared(required_harmonised_standard_reference/1, 'reference to any relevant harmonised standard used', 'celex:32024R1689/oj#anx_5').
declared(required_common_specification_reference/1, 'reference to any other common specification used', 'celex:32024R1689/oj#anx_5').
declared(required_notified_body_information/1, 'name and identification number of the notified body', 'celex:32024R1689/oj#anx_5').
declared(required_conformity_assessment_procedure_description/1, 'description of the conformity assessment procedure performed', 'celex:32024R1689/oj#anx_5').
declared(certificate/1, 'certificate issued for conformity', 'celex:32024R1689/oj#anx_5').
declared(required_certificate_identification/1, 'identification of the certificate issued', 'celex:32024R1689/oj#anx_5').
declared(declaration_of_conformity/1, 'EU declaration of conformity document', 'celex:32024R1689/oj#anx_5').
declared(required_declaration_issue_details/1, 'place, date, signatory name, function and signature details of the declaration', 'celex:32024R1689/oj#anx_5').
required_ai_system_identification(S) :-
    ai_system(S),
    ai_system(S).
required_provider_information(P) :-
    provider(P),
    provider(P).
required_authorised_representative_information(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).
required_provider_responsibility_statement(P) :-
    provider(P),
    provider(P).
required_conformity_statement(S) :-
    ai_system(S),
    ai_system(S).
required_gdpr_compliance_statement(S) :-
    processes_personal_data(S),
    processes_personal_data(S).
required_harmonised_standard_reference(S) :-
    ai_system(S),
    harmonised_standard(H),
    harmonised_standard(H).
required_common_specification_reference(S) :-
    ai_system(S),
    common_specification(C),
    common_specification(C).
required_notified_body_information(NB) :-
    notified_body(NB),
    notified_body(NB).
required_conformity_assessment_procedure_description(A) :-
    conformity_assessment(A),
    conformity_assessment(A).
required_certificate_identification(C) :-
    certificate(C),
    certificate(C).
required_declaration_issue_details(D) :-
    declaration_of_conformity(D),
    declaration_of_conformity(D).
provenance(required_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_authorised_representative_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_gdpr_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_harmonised_standard_reference/1, 'celex:32024R1689/oj#anx_5').
provenance(required_common_specification_reference/1, 'celex:32024R1689/oj#anx_5').
provenance(required_notified_body_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_conformity_assessment_procedure_description/1, 'celex:32024R1689/oj#anx_5').
provenance(required_certificate_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(required_declaration_issue_details/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(quality_management_system/1, 'quality management system', 'celex:32024R1689/oj#anx_6').
declared(established/1, 'established', 'celex:32024R1689/oj#anx_6').
declared(technical_documentation/1, 'technical documentation', 'celex:32024R1689/oj#anx_6').
declared(design_and_development_process/1, 'design and development process', 'celex:32024R1689/oj#anx_6').
declared(post_market_monitoring/1, 'post‑market monitoring', 'celex:32024R1689/oj#anx_6').
must_verify(Provider, compliance(QMS, 'celex:32024R1689/oj#art_17')) :-
    provider(Provider),
    quality_management_system(QMS),
    established(QMS).
must_examine(Provider, technical_documentation(Doc)) :-
    provider(Provider),
    technical_documentation(Doc).
must_assess(Provider, compliance(AI, essential_requirements('celex:32024R1689/oj#chp_3/sec_2'))) :-
    provider(Provider),
    ai_system(AI).
must_verify(Provider, consistency(design_and_development_process(DP), post_market_monitoring(PM), technical_documentation(Doc), 'celex:32024R1689/oj#art_72')) :-
    provider(Provider),
    design_and_development_process(DP),
    post_market_monitoring(PM),
    technical_documentation(Doc).
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').
provenance(must_assess/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(quality_management_system/1, 'quality management system', 'celex:32024R1689/oj#anx_7').
declared(technical_documentation/1, 'technical documentation', 'celex:32024R1689/oj#anx_7').
declared(periodic_audit/1, 'periodic audit', 'celex:32024R1689/oj#anx_7').
declared(audit_report/1, 'audit report', 'celex:32024R1689/oj#anx_7').
declared(additional_tests/1, 'additional tests', 'celex:32024R1689/oj#anx_7').
assess_quality_management_system(NB, QMS) :-
    notified_body(NB),
    quality_management_system(QMS).
provenance(assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
must_maintain(Provider, quality_management_system) :-
    provider(Provider).
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
must_allow(Provider, access(premises)) :-
    provider(Provider).
provenance(must_allow/2, 'celex:32024R1689/oj#anx_7').
must_share(Provider, information) :-
    provider(Provider).
provenance(must_share/2, 'celex:32024R1689/oj#anx_7').
must_examine(NB, technical_documentation) :-
    notified_body(NB).
provenance(must_examine/2, 'celex:32024R1689/oj#anx_7').
must_conduct(NB, periodic_audit) :-
    notified_body(NB).
provenance(must_conduct/2, 'celex:32024R1689/oj#anx_7').
must_provide(NB, audit_report) :-
    notified_body(NB).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_7').
permitted_additional_tests(NB) :-
    notified_body(NB).
provenance(permitted_additional_tests/1, 'celex:32024R1689/oj#anx_7').
must_notify(NB, provider) :-
    notified_body(NB).
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
must_inform(Provider, notified_body) :-
    provider(Provider).
provenance(must_inform/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(provider_of_high_risk_ai_system/2, 'provider provides a high‑risk AI system', 'celex:32024R1689/oj#anx_8').
declared(deployer_of_high_risk_ai_system/2, 'deployer uses a high‑risk AI system', 'celex:32024R1689/oj#anx_8').
must_provide(Provider, provider_contact_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, submission_agent_contact_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, authorised_representative_contact_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, ai_system_trade_name) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, intended_purpose_description) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, system_information_description) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, ai_system_status) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, certificate_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, certificate_copy) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, member_state_placements) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, eu_declaration_of_conformity) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, electronic_instructions_for_use) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, additional_information_url) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, not_high_risk_conditions) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Provider, not_high_risk_summary) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).
must_provide(Deployer, deployer_contact_details) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).
must_provide(Deployer, person_submitting_information) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).
must_provide(Deployer, eu_database_url) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).
must_provide(Deployer, fundamental_rights_impact_assessment_summary) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).
must_provide(Deployer, data_protection_impact_assessment_summary) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).
provenance(provider_of_high_risk_ai_system/2, 'celex:32024R1689/oj#anx_8').
provenance(deployer_of_high_risk_ai_system/2, 'celex:32024R1689/oj#anx_8').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32024L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').

% ==== celex:32024R1689/oj#anx_9 ====
declared(involved_in_testing/2, 'actor involved in testing in real world conditions', 'derived').
must_provide(Actor, identification_number(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).
must_maintain(Actor, identification_number(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).
must_provide(Actor, contact_details(Actor)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).
must_maintain(Actor, contact_details(Actor)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).
must_provide(Actor, ai_system_description(System)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).
must_maintain(Actor, ai_system_description(System)) :-
    testing_in_real_world_conditions(_Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    (provider(Actor) ; deployer(Actor)).
must_provide(Actor, testing_plan_summary(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).
must_maintain(Actor, testing_plan_summary(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).
must_provide(Actor, testing_suspension_info(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).
must_maintain(Actor, testing_suspension_info(Test)) :-
    testing_in_real_world_conditions(Test),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    involved_in_testing(Actor, Test),
    (provider(Actor) ; deployer(Actor)).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_9').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(union_legislative_act_applies/1, 'Union legislative act on large‑scale IT systems', 'celex:32024R1689/oj#anx_10').
union_legislative_act_applies('celex:32018R1860/oj').
union_legislative_act_applies('celex:32018R1861/oj').
union_legislative_act_applies('celex:42000A0922(01)/oj').
union_legislative_act_applies('celex:32006R1987/oj').
union_legislative_act_applies('celex:32018R1862/oj').
union_legislative_act_applies('celex:32007D0533/oj').
union_legislative_act_applies('celex:32006R1986/oj').
union_legislative_act_applies('celex:32010D0261/oj').
union_legislative_act_applies('celex:32021R1133/oj').
union_legislative_act_applies('celex:32013R0603/oj').
union_legislative_act_applies('celex:32016R0794/oj').
union_legislative_act_applies('celex:32019R0816/oj').
union_legislative_act_applies('celex:32019R0818/oj').
union_legislative_act_applies('celex:32021R1134/oj').
union_legislative_act_applies('celex:32008R0767/oj').
union_legislative_act_applies('celex:32009R0810/oj').
union_legislative_act_applies('celex:32016R0399/oj').
union_legislative_act_applies('celex:32017R2226/oj').
union_legislative_act_applies('celex:32018R1240/oj').
union_legislative_act_applies('celex:32019R0817/oj').
union_legislative_act_applies('celex:32019R1896/oj').
union_legislative_act_applies('celex:32004D0512/oj').
union_legislative_act_applies('celex:32008D0633/oj').
union_legislative_act_applies('celex:32024R1358/oj').
union_legislative_act_applies('celex:32024R1315/oj').
union_legislative_act_applies('celex:32024R1350/oj').
union_legislative_act_applies('celex:32001L0055/oj').
union_legislative_act_applies('celex:32011R1077/oj').
union_legislative_act_applies('celex:32014R0515/oj').
union_legislative_act_applies('celex:32016R1624/oj').
union_legislative_act_applies('celex:32018R1241/oj').
union_legislative_act_applies('celex:32018R1726/oj').
provenance(union_legislative_act_applies/1, 'celex:32024R1689/oj#anx_10').
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
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11 ====
must_provide(P, general_description_of_model) :-
    general_purpose_ai_model_provider(P).
must_provide(P, acceptable_use_policy) :-
    general_purpose_ai_model_provider(P).
must_provide(P, release_date_and_distribution) :-
    general_purpose_ai_model_provider(P).
must_provide(P, architecture_and_number_of_parameters) :-
    general_purpose_ai_model_provider(P).
must_provide(P, modality_and_format_of_inputs_outputs) :-
    general_purpose_ai_model_provider(P).
must_provide(P, licence) :-
    general_purpose_ai_model_provider(P).
must_provide(P, technical_means_for_integration) :-
    general_purpose_ai_model_provider(P).
must_provide(P, design_specifications_of_model_and_training_process) :-
    general_purpose_ai_model_provider(P).
must_provide(P, training_testing_validation_data_information) :-
    general_purpose_ai_model_provider(P).
must_provide(P, computational_resources_used) :-
    general_purpose_ai_model_provider(P).
must_provide(P, energy_consumption_information) :-
    general_purpose_ai_model_provider(P).
must_provide(P, evaluation_strategies_and_results) :-
    general_purpose_ai_model_provider(P).
must_provide(P, adversarial_testing_measures) :-
    general_purpose_ai_model_provider(P).
must_provide(P, system_architecture_description) :-
    general_purpose_ai_model_provider(P).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_transparency_information/1, 'information that must be included in the transparency documentation for a general‑purpose AI model', 'celex:32024R1689/oj#anx_12').
required_transparency_information(general_description(tasks_and_integration)).
required_transparency_information(general_description(acceptable_use_policies)).
required_transparency_information(general_description(date_of_release_and_distribution_methods)).
required_transparency_information(general_description(interaction_with_external_hardware_software)).
required_transparency_information(general_description(relevant_software_versions)).
required_transparency_information(general_description(architecture_and_parameters)).
required_transparency_information(general_description(modality_and_format_of_inputs_outputs)).
required_transparency_information(general_description(licence)).
required_transparency_information(development_description(technical_means_for_integration)).
required_transparency_information(development_description(modality_format_and_maximum_size_of_inputs_outputs)).
required_transparency_information(development_description(data_used_for_training_testing_validation)).
provenance(required_transparency_information/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(must_take_into_account/2, 'Commission must take into account criteria for designation of general‑purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_13').
must_take_into_account(commission, criterion_number_of_parameters).
must_take_into_account(commission, criterion_quality_or_size_of_data_set).
must_take_into_account(commission, criterion_amount_of_computation).
must_take_into_account(commission, criterion_input_output_modalities).
must_take_into_account(commission, criterion_benchmarks_and_evaluations).
must_take_into_account(commission, criterion_high_impact_internal_market).
must_take_into_account(commission, criterion_number_of_registered_end_users).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

