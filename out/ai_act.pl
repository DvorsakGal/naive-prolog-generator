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
% There are 612 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous activity_pursuant_to_art_8_par_1_applies/1.
:- discontiguous administration_of_justice_ai_system/1.
:- discontiguous administrative_fine_imposed/2.
:- discontiguous adopting_technical_specifications_art_8_par_2_3_applies/1.
:- discontiguous advisory_forum/1.
:- discontiguous advisory_forum_member/1.
:- discontiguous ai_office/1.
:- discontiguous annual_report_of/2.
:- discontiguous appropriate/1.
:- discontiguous article_applies/1.
:- discontiguous aspect/1.
:- discontiguous aspect_type/1.
:- discontiguous before_market_placement/1.
:- discontiguous board/1.
:- discontiguous board_representative/1.
:- discontiguous body_type/1.
:- discontiguous change_extension_of_scope/1.
:- discontiguous change_other_than_extension/1.
:- discontiguous codes_deemed_inadequate/0.
:- discontiguous codes_not_finalised_by/1.
:- discontiguous commission/1.
:- discontiguous committee/1.
:- discontiguous condition_a/1.
:- discontiguous condition_a/2.
:- discontiguous condition_a_pm/2.
:- discontiguous condition_b/1.
:- discontiguous condition_b/2.
:- discontiguous condition_b_pm/2.
:- discontiguous condition_c/2.
:- discontiguous council/1.
:- discontiguous criminal_offence/1.
:- discontiguous criterion_autonomy_and_human_override_applies/1.
:- discontiguous criterion_benefit_magnitude_applies/1.
:- discontiguous criterion_corrigibility_applies/1.
:- discontiguous criterion_data_processed_applies/1.
:- discontiguous criterion_dependency_of_harmed_persons_applies/1.
:- discontiguous criterion_existing_harm_applies/1.
:- discontiguous criterion_extent_of_use_applies/1.
:- discontiguous criterion_imbalance_of_power_applies/1.
:- discontiguous criterion_intended_purpose_applies/1.
:- discontiguous criterion_potential_harm_extent_applies/1.
:- discontiguous criterion_union_law_provisions_applies/1.
:- discontiguous critical_infrastructure_ai_system/1.
:- discontiguous delegated_act_adoption_power/1.
:- discontiguous derogation_applies/1.
:- discontiguous derogation_applies_only_if_union_legislation/1.
:- discontiguous documentation_type/1.
:- discontiguous duly_reasoned_complaint/1.
:- discontiguous education_ai_system/1.
:- discontiguous effect_date_of_revocation/2.
:- discontiguous employment_ai_system/1.
:- discontiguous essential_private_service_ai_system/1.
:- discontiguous established/1.
:- discontiguous european_parliament/1.
:- discontiguous exempt_admin_fine/1.
:- discontiguous exempt_ai_system/1.
:- discontiguous exempt_application_from/2.
:- discontiguous exempt_authorised_representative_appointment/2.
:- discontiguous exempt_from_assessment/2.
:- discontiguous exempt_law_enforcement_context/1.
:- discontiguous exempt_notify_market_surveillance_authority/2.
:- discontiguous exempt_obligations_for_foss_provider/2.
:- discontiguous exempt_quality_management_system_aspect/2.
:- discontiguous exempt_sensitive_operational_data/1.
:- discontiguous exempt_sensitive_operational_data/2.
:- discontiguous exempt_specify_information/1.
:- discontiguous expert/1.
:- discontiguous failed_to_comply_measure/1.
:- discontiguous failed_to_comply_request/1.
:- discontiguous failed_to_make_available_model/1.
:- discontiguous fine_cap/2.
:- discontiguous harmonised_standard_not_published_applies/0.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_used_by/1.
:- discontiguous implementing_act/1.
:- discontiguous includes_description/1.
:- discontiguous includes_other_information/1.
:- discontiguous includes_point_of_contact/1.
:- discontiguous info_obtained_under_art_55/1.
:- discontiguous infringed_relevant_provisions/1.
:- discontiguous infringement_intentional_or_negligent/1.
:- discontiguous initiator_is_council/1.
:- discontiguous initiator_is_european_parliament/1.
:- discontiguous input_data_control_applies/2.
:- discontiguous intended_use_in_annex_3_applies/1.
:- discontiguous justified_authorisation/2.
:- discontiguous large_scale_it_system_act/1.
:- discontiguous law_enforcement_ai_system/1.
:- discontiguous list_type/1.
:- discontiguous market_surveillance_authority_for_financial_ai/2.
:- discontiguous market_surveillance_authority_for_law_enforcement_ai/2.
:- discontiguous market_surveillance_authority_for_system/2.
:- discontiguous market_surveillance_authority_for_union_institution/2.
:- discontiguous maximum_fine_amount/2.
:- discontiguous measure_deemed_justified/1.
:- discontiguous migration_ai_system/1.
:- discontiguous must_act_as_adco/1.
:- discontiguous must_address_decision/3.
:- discontiguous must_adopt_delegated_acts/2.
:- discontiguous must_adopt_implementing_act/1.
:- discontiguous must_adopt_implementing_act_in_accordance_with/2.
:- discontiguous must_adopt_implementing_acts/1.
:- discontiguous must_advise_and_assist/1.
:- discontiguous must_advise_and_support/2.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_affix_identification_number/2.
:- discontiguous must_agree_testing_terms/3.
:- discontiguous must_apply_art_79_par_5_to_9/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_appoint_chair/2.
:- discontiguous must_assess_and_amend/2.
:- discontiguous must_assess_fundamental_rights_impact/2.
:- discontiguous must_assess_harmonised_standard/2.
:- discontiguous must_assess_impact/1.
:- discontiguous must_assess_need_for_amendment/2.
:- discontiguous must_assess_need_for_measures/1.
:- discontiguous must_assist/2.
:- discontiguous must_assume_responsibility/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_be_controller/2.
:- discontiguous must_be_liable/2.
:- discontiguous must_communicate_grounds_to_other_msas/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_comply/2.
:- discontiguous must_comply_registration_obligations/2.
:- discontiguous must_confidentially_treat/2.
:- discontiguous must_consider/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult/3.
:- discontiguous must_consult_experts_before_adopting/2.
:- discontiguous must_convene_meetings/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_cooperate_with/3.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_other_nca/2.
:- discontiguous must_date_and_document_consent/1.
:- discontiguous must_decide_authorisation/2.
:- discontiguous must_decide_justified/3.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_demonstrate_conformity/2.
:- discontiguous must_designate_or_establish_notifying_authority/2.
:- discontiguous must_determine_number_of_experts/1.
:- discontiguous must_develop/2.
:- discontiguous must_develop_methodology/1.
:- discontiguous must_develop_template/2.
:- discontiguous must_direct_to_predeployment_services/2.
:- discontiguous must_discard_results_if_authorisation_refused/1.
:- discontiguous must_draw_up_declaration_of_conformity/2.
:- discontiguous must_draw_up_declaration_of_interests/1.
:- discontiguous must_draw_up_report/3.
:- discontiguous must_draw_up_rules_of_procedure/1.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_elect_co_chair/2.
:- discontiguous must_encourage_ai_office_codes_of_practice/0.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_end_delegation/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_accessibility/2.
:- discontiguous must_ensure_codes_ready_by/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_conformity_assessment/2.
:- discontiguous must_ensure_conformity_before_placing/2.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_fair_gender_and_geographical_representation/1.
:- discontiguous must_ensure_files_kept/2.
:- discontiguous must_ensure_objectivity_and_impartiality/1.
:- discontiguous must_ensure_regular_reporting/2.
:- discontiguous must_ensure_requirements_met/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_ensure_use_in_accordance_with_instructions/2.
:- discontiguous must_enter_consultation/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_entrust/2.
:- discontiguous must_establish_conflict_of_interest_management/1.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_simplified_technical_documentation_form/1.
:- discontiguous must_establish_subgroup/2.
:- discontiguous must_evaluate/2.
:- discontiguous must_evaluate_national_measure/2.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_access/3.
:- discontiguous must_give_copy_of_consent/1.
:- discontiguous must_give_reasons/2.
:- discontiguous must_have_competences_and_powers/2.
:- discontiguous must_have_competent_personnel/1.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_implement_cybersecurity_measures/1.
:- discontiguous must_include_assessment/2.
:- discontiguous must_include_in_list/2.
:- discontiguous must_include_proposal_if_appropriate/2.
:- discontiguous must_indicate_contact_information/2.
:- discontiguous must_indicate_grounds_and_challenge_procedure/2.
:- discontiguous must_inform/2.
:- discontiguous must_inform/3.
:- discontiguous must_inform/5.
:- discontiguous must_inform_and_cooperate/2.
:- discontiguous must_inform_applicant/2.
:- discontiguous must_inform_authorised_representative/2.
:- discontiguous must_inform_authorities_of_serious_incident/2.
:- discontiguous must_inform_board_of_measure/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_committee_before_draft/1.
:- discontiguous must_inform_cross_border/2.
:- discontiguous must_inform_deployer/2.
:- discontiguous must_inform_distributor/2.
:- discontiguous must_inform_importer/2.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_of_request/3.
:- discontiguous must_inform_other/2.
:- discontiguous must_inform_other_authorities/1.
:- discontiguous must_inform_provider_if_risk/2.
:- discontiguous must_inform_provider_unregistered/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_causes/2.
:- discontiguous must_issue/2.
:- discontiguous must_justify_non_compliance/2.
:- discontiguous must_keep/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_documents_at_disposal/2.
:- discontiguous must_keep_eu_declaration_of_conformity/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_up_to_date_technical_documentation/2.
:- discontiguous must_maintain/2.
:- discontiguous must_maintain_up_to_date/2.
:- discontiguous must_make_available_and_submit_documentation/3.
:- discontiguous must_make_available_support/2.
:- discontiguous must_make_files_available/2.
:- discontiguous must_make_list_publicly_available/1.
:- discontiguous must_make_provisions/2.
:- discontiguous must_make_public/1.
:- discontiguous must_make_publicly_available/1.
:- discontiguous must_monitor_and_evaluate/3.
:- discontiguous must_monitor_and_supervise/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_seek_instructions/1.
:- discontiguous must_notify/2.
:- discontiguous must_notify/3.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_member_state/3.
:- discontiguous must_notify_suspension_or_termination/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise_testing/3.
:- discontiguous must_pay_fees/2.
:- discontiguous must_perform_with_impartiality_and_objectivity/1.
:- discontiguous must_prepare_agenda/2.
:- discontiguous must_prepare_annual_report/1.
:- discontiguous must_promote_investment_and_innovation/1.
:- discontiguous must_protect_fundamental_rights/3.
:- discontiguous must_provide/2.
:- discontiguous must_provide_accreditation_certificate/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_evidence/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information/3.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_publish_assessment/3.
:- discontiguous must_register/2.
:- discontiguous must_repeal_implementing_act/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_to/2.
:- discontiguous must_request_corrective_measures/3.
:- discontiguous must_request_evidence/3.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require/2.
:- discontiguous must_require_certificate_action/3.
:- discontiguous must_require_provider_to_comply/3.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rigour_and_protection/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_set_up/2.
:- discontiguous must_specify/2.
:- discontiguous must_state_access_request_details/2.
:- discontiguous must_stop_use_if_authorisation_refused/1.
:- discontiguous must_stop_use_if_authorisation_rejected/2.
:- discontiguous must_submit_application/2.
:- discontiguous must_submit_findings/2.
:- discontiguous must_submit_proposal/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information/3.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_suspend_or_withdraw_certificate/2.
:- discontiguous must_suspend_testing/2.
:- discontiguous must_suspend_use_if_risk/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_due_account/3.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_update_documentation/1.
:- discontiguous must_update_fundamental_rights_assessment/2.
:- discontiguous must_use_simplified_form/2.
:- discontiguous must_verify_compliance/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous no_significant_risk_applies/1.
:- discontiguous non_conformity_reason/2.
:- discontiguous notified_body/1.
:- discontiguous objective_alert_systemic_risk/1.
:- discontiguous objective_assess_compliance/1.
:- discontiguous objective_develop_evaluation_tools/1.
:- discontiguous objective_ensure_compliance/1.
:- discontiguous objective_evidence_based_learning/1.
:- discontiguous objective_facilitating_market_access/1.
:- discontiguous objective_fostering_innovation/1.
:- discontiguous objective_improving_legal_certainty/1.
:- discontiguous objective_investigate_systemic_risk/1.
:- discontiguous objective_prevent_risk_via_oversight/1.
:- discontiguous objective_provide_classification_advice/1.
:- discontiguous objective_sharing_best_practices/1.
:- discontiguous objective_support_ai_office_safeguard_procedure/1.
:- discontiguous objective_support_cross_border_surveillance/1.
:- discontiguous objective_support_market_surveillance/1.
:- discontiguous offers_commitments/2.
:- discontiguous operator/1.
:- discontiguous overall_protection_decrease/1.
:- discontiguous partner_or_linked_enterprise_exists/1.
:- discontiguous penalty_up_to_15m_eur_or_3pct_turnover/1.
:- discontiguous penalty_up_to_35m_eur_or_7pct_turnover/1.
:- discontiguous penalty_up_to_7_5m_eur_or_1pct_turnover/1.
:- discontiguous perform_tasks_listed_under/2.
:- discontiguous permanent_member/2.
:- discontiguous permitted_access/2.
:- discontiguous permitted_access_exit_report/2.
:- discontiguous permitted_access_source_code/3.
:- discontiguous permitted_access_to_data_remotely/3.
:- discontiguous permitted_access_to_data_sets/2.
:- discontiguous permitted_access_to_sandbox/2.
:- discontiguous permitted_additional_tests_during_audit/2.
:- discontiguous permitted_adhere_to_codes/1.
:- discontiguous permitted_advise_international_matters/1.
:- discontiguous permitted_affix_to_packaging_or_documentation/1.
:- discontiguous permitted_amend_annex_3/2.
:- discontiguous permitted_application_of_sectoral_procedure/2.
:- discontiguous permitted_appoint_independent_expert/3.
:- discontiguous permitted_approve_code_of_practice/1.
:- discontiguous permitted_assist_ai_office_sandboxes/1.
:- discontiguous permitted_assist_expertise_development/1.
:- discontiguous permitted_authorisation/2.
:- discontiguous permitted_authorisation_of_third_country_conformity_assessment_body/1.
:- discontiguous permitted_call_upon_experts/2.
:- discontiguous permitted_certificate_extension/3.
:- discontiguous permitted_certificate_validity/1.
:- discontiguous permitted_collect_and_share_expertise/1.
:- discontiguous permitted_combination_with_other_risk_management/2.
:- discontiguous permitted_common_specifications/1.
:- discontiguous permitted_complaint_submission/2.
:- discontiguous permitted_conduct_evaluation/2.
:- discontiguous permitted_conduct_testing_by_provider/2.
:- discontiguous permitted_contribute_coordination/1.
:- discontiguous permitted_contribute_guidance_documents/1.
:- discontiguous permitted_contribute_harmonisation/1.
:- discontiguous permitted_cooperate_third_countries/1.
:- discontiguous permitted_cooperate_with_union_entities/1.
:- discontiguous permitted_designation_of_alternative_authority/2.
:- discontiguous permitted_drawing_up_codes_of_conduct/1.
:- discontiguous permitted_electronic_instructions_for_use/2.
:- discontiguous permitted_establish_ai_regulatory_sandbox_by_supervisor/1.
:- discontiguous permitted_establish_sub_groups/1.
:- discontiguous permitted_establish_subgroup/2.
:- discontiguous permitted_exchange_confidential_information/2.
:- discontiguous permitted_exemption_from_disclosure_deep_fake/2.
:- discontiguous permitted_exemption_from_disclosure_text/2.
:- discontiguous permitted_exemption_from_inform/2.
:- discontiguous permitted_exemption_from_inform_deployer/2.
:- discontiguous permitted_exemption_from_marking/2.
:- discontiguous permitted_exemption_from_technical_solution/2.
:- discontiguous permitted_exercise_power_remotely/2.
:- discontiguous permitted_exercise_powers/3.
:- discontiguous permitted_explanation_of_decision/2.
:- discontiguous permitted_extend_provisional_validity/2.
:- discontiguous permitted_extension_by_nca/2.
:- discontiguous permitted_extension_of_objection_period/1.
:- discontiguous permitted_facilitate_common_criteria/1.
:- discontiguous permitted_fine/3.
:- discontiguous permitted_free_access_for_sme/2.
:- discontiguous permitted_impose_administrative_fine/2.
:- discontiguous permitted_initiate_structured_dialogue/2.
:- discontiguous permitted_initiate_structured_dialogue/3.
:- discontiguous permitted_integrate_existing_elements/2.
:- discontiguous permitted_integration/2.
:- discontiguous permitted_invite/2.
:- discontiguous permitted_invite_experts/1.
:- discontiguous permitted_issue_recommendations/1.
:- discontiguous permitted_issue_supplement/2.
:- discontiguous permitted_limited_disclosure_for_artistic/2.
:- discontiguous permitted_lodge_complaint/2.
:- discontiguous permitted_make_commitments_binding/3.
:- discontiguous permitted_notified_body_control/2.
:- discontiguous permitted_notify_conformity_assessment_body/2.
:- discontiguous permitted_partnership_application/2.
:- discontiguous permitted_perform_appropriate_checks/1.
:- discontiguous permitted_perform_notified_body_activities/1.
:- discontiguous permitted_prepare_opinions/1.
:- discontiguous permitted_processing_special_categories/2.
:- discontiguous permitted_propose_joint_activity/2.
:- discontiguous permitted_provide_advice_implementation/1.
:- discontiguous permitted_provide_common_rules/1.
:- discontiguous permitted_provide_guidance/1.
:- discontiguous permitted_provide_opinions_qualified_alerts/1.
:- discontiguous permitted_public_release_exit_report/2.
:- discontiguous permitted_put_into_service_without_authorisation/2.
:- discontiguous permitted_qualified_alert/2.
:- discontiguous permitted_reasoned_request_testing/2.
:- discontiguous permitted_receive_opinions_qualified_alerts/1.
:- discontiguous permitted_reliance_on_codes_of_practice/1.
:- discontiguous permitted_rely_on_codes_of_practice/2.
:- discontiguous permitted_rely_on_previous_assessment/2.
:- discontiguous permitted_remove_high_risk_ai_system/2.
:- discontiguous permitted_request_access/2.
:- discontiguous permitted_request_access_documentation/2.
:- discontiguous permitted_request_documentation/3.
:- discontiguous permitted_request_exercise_powers/2.
:- discontiguous permitted_request_implement_mitigation_measures/3.
:- discontiguous permitted_request_information/3.
:- discontiguous permitted_request_restrict_market/3.
:- discontiguous permitted_request_take_appropriate_measures/2.
:- discontiguous permitted_require_further_evidence/2.
:- discontiguous permitted_require_modification/2.
:- discontiguous permitted_restrict_designation/2.
:- discontiguous permitted_revocation/2.
:- discontiguous permitted_simplified_quality_management/1.
:- discontiguous permitted_subcontracting/2.
:- discontiguous permitted_submit_reasoned_request/3.
:- discontiguous permitted_subsidiary_activity/2.
:- discontiguous permitted_support_ai_literacy/1.
:- discontiguous permitted_suspend_designation/2.
:- discontiguous permitted_suspend_testing/2.
:- discontiguous permitted_tacit_extension/1.
:- discontiguous permitted_take_action/2.
:- discontiguous permitted_testing_high_risk_ai_system/2.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_use_designation_documents/1.
:- discontiguous permitted_use_of_assessed_systems_for_operations/1.
:- discontiguous permitted_use_of_assessed_systems_for_personal_purposes/1.
:- discontiguous permitted_use_rt_rbi/3.
:- discontiguous permitted_withdraw_designation/2.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous presumed_compliant/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_applies/1.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous prohibited_affect_supervisory_powers/1.
:- discontiguous prohibited_ai_practice/1.
:- discontiguous prohibited_application_of_procedure/2.
:- discontiguous prohibited_assessment_activities_provision/1.
:- discontiguous prohibited_biometric_categorisation_ai_system/1.
:- discontiguous prohibited_commercial_consultancy/1.
:- discontiguous prohibited_conflict_of_interest/1.
:- discontiguous prohibited_considered_provider/2.
:- discontiguous prohibited_direct_involvement_in_design/1.
:- discontiguous prohibited_direct_involvement_in_development/1.
:- discontiguous prohibited_direct_involvement_in_marketing/1.
:- discontiguous prohibited_direct_involvement_in_use/1.
:- discontiguous prohibited_disclosure_without_consultation/1.
:- discontiguous prohibited_electronic_instructions_for_use/2.
:- discontiguous prohibited_emotion_inference_ai_system/1.
:- discontiguous prohibited_excess_personal_data/1.
:- discontiguous prohibited_exemption_from_other_requirements/1.
:- discontiguous prohibited_facial_recognition_database_ai_system/1.
:- discontiguous prohibited_incorrect_information_supply/1.
:- discontiguous prohibited_non_compliance_with_ai_practice/1.
:- discontiguous prohibited_non_compliance_with_operator_or_notified_body_obligation/1.
:- discontiguous prohibited_placing_on_market/2.
:- discontiguous prohibited_preclusion_of_access_to_ai_regulatory_sandbox/2.
:- discontiguous prohibited_real_time_remote_biometric_identification_system/1.
:- discontiguous prohibited_risk_assessment_ai_system/1.
:- discontiguous prohibited_social_scoring_ai_system/1.
:- discontiguous prohibited_subliminal_manipulative_ai_system/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/2.
:- discontiguous prohibited_use_unregistered_system/2.
:- discontiguous prohibited_vulnerability_exploiting_ai_system/1.
:- discontiguous protection_not_decreased_applies/1.
:- discontiguous protection_of_reporting_persons_applies/1.
:- discontiguous provenance/2.
:- discontiguous provider_of_general_purpose_ai_model/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous references/2.
:- discontiguous relevant_market_surveillance_authority/2.
:- discontiguous relevant_operator/2.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous report/1.
:- discontiguous reporting_of_infringements_applies/1.
:- discontiguous request_access/2.
:- discontiguous request_submitted/3.
:- discontiguous required_acceptable_use_policies/2.
:- discontiguous required_access_to_training_and_models/2.
:- discontiguous required_accompanying_documents/1.
:- discontiguous required_accuracy/1.
:- discontiguous required_adopt_implementing_acts/2.
:- discontiguous required_adoption_of_implementing_act/1.
:- discontiguous required_adoption_of_risk_management_measures/2.
:- discontiguous required_adversarial_testing_measures/2.
:- discontiguous required_advisory_forum/0.
:- discontiguous required_affix_visibly_legibly_indelibly/1.
:- discontiguous required_ai_system_identification/1.
:- discontiguous required_allocate_resources/1.
:- discontiguous required_allow_access_to_premises/2.
:- discontiguous required_annual_assessment_of_resources/1.
:- discontiguous required_annual_report/2.
:- discontiguous required_annual_report/3.
:- discontiguous required_annual_report_of_prohibited_practices/3.
:- discontiguous required_appeal_procedure_available/0.
:- discontiguous required_application/1.
:- discontiguous required_application_for_technical_documentation/2.
:- discontiguous required_application_from/2.
:- discontiguous required_application_includes_description_of_procedures/1.
:- discontiguous required_application_includes_list_of_ai_systems/1.
:- discontiguous required_application_includes_name_and_address/1.
:- discontiguous required_application_includes_qms_documentation_covers_art_17/1.
:- discontiguous required_application_includes_technical_documentation_per_ai_system/1.
:- discontiguous required_application_includes_written_declaration_no_other_notified_body/1.
:- discontiguous required_appoint_authorised_representative/2.
:- discontiguous required_architecture/2.
:- discontiguous required_aspect_in_quality_management_system/2.
:- discontiguous required_assess_and_mitigate_systemic_risk/2.
:- discontiguous required_assess_change_by_notified_body/2.
:- discontiguous required_assessment_of_enforcement/1.
:- discontiguous required_associate_data_protection_authority/2.
:- discontiguous required_authorisation/1.
:- discontiguous required_authorisation/2.
:- discontiguous required_authorisation_request/2.
:- discontiguous required_authorised_representative_appointment/2.
:- discontiguous required_authorised_representative_appointment_by_provider/2.
:- discontiguous required_authorised_representative_contact_information/1.
:- discontiguous required_automatic_logging/1.
:- discontiguous required_balanced_membership/1.
:- discontiguous required_based_on_post_market_monitoring_plan/2.
:- discontiguous required_binding/1.
:- discontiguous required_broad_equal_access/1.
:- discontiguous required_ce_marking_and_declaration/2.
:- discontiguous required_certificate_language/2.
:- discontiguous required_certificate_validity_period/2.
:- discontiguous required_classification_general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous required_collect_document_analyse_data/2.
:- discontiguous required_commission_communicate_decision/3.
:- discontiguous required_commission_consult_and_evaluate/4.
:- discontiguous required_commission_decide_and_propose/3.
:- discontiguous required_commission_inform_other_member_states/2.
:- discontiguous required_commission_publish_spoc_list/0.
:- discontiguous required_communicate_nca_identities/1.
:- discontiguous required_competence/1.
:- discontiguous required_compliance/1.
:- discontiguous required_compliance/2.
:- discontiguous required_composition/2.
:- discontiguous required_computational_resources/2.
:- discontiguous required_conduct_adequate_tests_by_notified_body/2.
:- discontiguous required_conduct_periodic_audits/2.
:- discontiguous required_confer_power/2.
:- discontiguous required_confidential_handling/2.
:- discontiguous required_confidentiality/1.
:- discontiguous required_confidentiality_obligation/1.
:- discontiguous required_confidentiality_procedures/1.
:- discontiguous required_conformity_assessment_procedure/2.
:- discontiguous required_conformity_assessment_procedure_by_provider/2.
:- discontiguous required_conformity_statement/1.
:- discontiguous required_consideration_of_requirements/2.
:- discontiguous required_consideration_of_vulnerable_groups/2.
:- discontiguous required_considered_provider/2.
:- discontiguous required_consistent_performance/1.
:- discontiguous required_consult_other_authorities/1.
:- discontiguous required_content_includes_annex5_information/1.
:- discontiguous required_content_meets_requirements/1.
:- discontiguous required_content_of_qualified_alert/1.
:- discontiguous required_contextual_consideration/2.
:- discontiguous required_control_adversarial_examples/1.
:- discontiguous required_control_confidentiality_attacks/1.
:- discontiguous required_control_data_poisoning/1.
:- discontiguous required_control_model_flaws/1.
:- discontiguous required_control_model_poisoning/1.
:- discontiguous required_cooperate/3.
:- discontiguous required_cooperate_and_provide_information/2.
:- discontiguous required_cooperate_with_ai_office/2.
:- discontiguous required_cooperation/1.
:- discontiguous required_coordinate/1.
:- discontiguous required_coordinate_with_authorities/1.
:- discontiguous required_coordination/2.
:- discontiguous required_copyright_policy/2.
:- discontiguous required_corrective_action/3.
:- discontiguous required_cybersecurity/1.
:- discontiguous required_cybersecurity_measures/1.
:- discontiguous required_cybersecurity_protection/2.
:- discontiguous required_cybersecurity_requirements/1.
:- discontiguous required_data_characteristic/2.
:- discontiguous required_data_governance_practice/2.
:- discontiguous required_data_protection_impact_assessment/2.
:- discontiguous required_decide_new_conformity_assessment_or_supplement/2.
:- discontiguous required_declaration_of_accuracy_metrics/1.
:- discontiguous required_declaration_signature_information/1.
:- discontiguous required_demonstrate_alternative_means/2.
:- discontiguous required_design_specifications/2.
:- discontiguous required_designate_market_surveillance_authority/1.
:- discontiguous required_designate_notifying_authority/1.
:- discontiguous required_designate_spoc_market_surveillance_authority/1.
:- discontiguous required_designation_action/2.
:- discontiguous required_designation_documents/1.
:- discontiguous required_designation_of_union_ai_testing_support_structure/2.
:- discontiguous required_detailed_description_of_elements/1.
:- discontiguous required_detect_adversarial_examples/1.
:- discontiguous required_detect_confidentiality_attacks/1.
:- discontiguous required_detect_data_poisoning/1.
:- discontiguous required_detect_model_flaws/1.
:- discontiguous required_detect_model_poisoning/1.
:- discontiguous required_determine_conditions/2.
:- discontiguous required_develop_and_maintain_information_platform/1.
:- discontiguous required_develop_interface/1.
:- discontiguous required_digital_ce_marking/1.
:- discontiguous required_disclose_deep_fake/2.
:- discontiguous required_disclose_generated_text/2.
:- discontiguous required_document_assessment/2.
:- discontiguous required_documentation/2.
:- discontiguous required_draw_up_eu_declaration_of_conformity/2.
:- discontiguous required_elimination_or_reduction_of_risks/2.
:- discontiguous required_enable_authorised_representative/2.
:- discontiguous required_encourage_and_facilitate/2.
:- discontiguous required_energy_consumption/2.
:- discontiguous required_ensure_codes_cover_obligation/2.
:- discontiguous required_ensure_cybersecurity/1.
:- discontiguous required_entry_into_force/1.
:- discontiguous required_entry_into_force/2.
:- discontiguous required_establish_additional_ai_regulatory_sandbox/1.
:- discontiguous required_establish_ai_regulatory_sandbox/1.
:- discontiguous required_establish_ai_regulatory_sandbox_joint/2.
:- discontiguous required_establish_and_document_post_market_monitoring_system/2.
:- discontiguous required_establishment/1.
:- discontiguous required_estimation_and_evaluation_of_risks/2.
:- discontiguous required_eu_declaration_of_conformity/1.
:- discontiguous required_evaluate_and_promote_best_practices_in_public_procurement/1.
:- discontiguous required_evaluation/2.
:- discontiguous required_evaluation_of_ai_office/1.
:- discontiguous required_evaluation_of_other_risks/2.
:- discontiguous required_evaluation_of_voluntary_codes/1.
:- discontiguous required_evaluation_strategies/2.
:- discontiguous required_examination_of_technical_documentation/1.
:- discontiguous required_examine_change_by_notified_body/2.
:- discontiguous required_examine_technical_documentation_by_notified_body/2.
:- discontiguous required_exclusive_power_supervise_and_enforce/1.
:- discontiguous required_expert_condition/2.
:- discontiguous required_facilitate_compliance_with_conformity_assessment/1.
:- discontiguous required_facilitate_development_of_tools/1.
:- discontiguous required_facilitate_exchange_experience/1.
:- discontiguous required_facilitate_involvement_of_actors/1.
:- discontiguous required_facilitate_participation_in_standardisation/2.
:- discontiguous required_flexibility_for_nca/2.
:- discontiguous required_free_access_for_sme/1.
:- discontiguous required_fundamental_rights_impact_assessment/2.
:- discontiguous required_general_description/1.
:- discontiguous required_general_description/2.
:- discontiguous required_general_principles_for_ce_marking/1.
:- discontiguous required_guidelines/2.
:- discontiguous required_harmonised_standard_reference/1.
:- discontiguous required_harmonised_standards_description/1.
:- discontiguous required_human_oversight_assignment/3.
:- discontiguous required_human_oversight_capability/1.
:- discontiguous required_identification_and_analysis_of_risks/2.
:- discontiguous required_identification_number/2.
:- discontiguous required_identify_public_authorities/1.
:- discontiguous required_impartiality/1.
:- discontiguous required_implementation_of_mitigation_measures/2.
:- discontiguous required_include_real_world_testing/1.
:- discontiguous required_independence_from_competitor/1.
:- discontiguous required_independence_from_operator/1.
:- discontiguous required_independence_from_provider/1.
:- discontiguous required_indicate_identification_number_in_promotional_material/1.
:- discontiguous required_indicate_other_union_law/1.
:- discontiguous required_inform_ai_office/1.
:- discontiguous required_inform_authority/2.
:- discontiguous required_inform_deployer/2.
:- discontiguous required_inform_natural_persons/2.
:- discontiguous required_inform_natural_persons_of_ai_interaction/2.
:- discontiguous required_information_accuracy_level/1.
:- discontiguous required_information_authorised_representative_contact/1.
:- discontiguous required_information_data_specifications/1.
:- discontiguous required_information_for_integrators/2.
:- discontiguous required_information_human_oversight_measures/1.
:- discontiguous required_information_intended_purpose/1.
:- discontiguous required_information_interpret_output/1.
:- discontiguous required_information_item/1.
:- discontiguous required_information_known_circumstances/1.
:- discontiguous required_information_log_mechanisms/1.
:- discontiguous required_information_performance_specific_persons/1.
:- discontiguous required_information_pre_determined_changes/1.
:- discontiguous required_information_provider_contact/1.
:- discontiguous required_information_provider_identity/1.
:- discontiguous required_information_resources_and_maintenance/1.
:- discontiguous required_information_submission_by_deployer/2.
:- discontiguous required_information_submission_by_provider/2.
:- discontiguous required_information_technical_capabilities/1.
:- discontiguous required_information_to_deployer/2.
:- discontiguous required_informed_consent/1.
:- discontiguous required_input_data_representativeness/2.
:- discontiguous required_instructions_for_use/1.
:- discontiguous required_issue_certificate_if_conformant/3.
:- discontiguous required_keep_documentation/2.
:- discontiguous required_keep_list_up_to_date/1.
:- discontiguous required_keep_technical_documentation/2.
:- discontiguous required_labeling_information/2.
:- discontiguous required_lay_down_rules_on_fines_for_public_authorities/1.
:- discontiguous required_lay_down_rules_on_penalties/1.
:- discontiguous required_legal_personality/1.
:- discontiguous required_liability_insurance/1.
:- discontiguous required_licence/2.
:- discontiguous required_logging_for_operation_monitoring/1.
:- discontiguous required_logging_for_post_market_monitoring/1.
:- discontiguous required_logging_for_situation_identification/1.
:- discontiguous required_maintain_communication_channels/1.
:- discontiguous required_maintain_qms/1.
:- discontiguous required_maintain_technical_documentation/1.
:- discontiguous required_make_public_contact_info/1.
:- discontiguous required_make_public_list/1.
:- discontiguous required_mark_output/2.
:- discontiguous required_meeting_frequency/2.
:- discontiguous required_member_state_inform_finding/3.
:- discontiguous required_minimum_logging_details/1.
:- discontiguous required_mitigation_feedback_loops/1.
:- discontiguous required_modality/2.
:- discontiguous required_model_evaluation/2.
:- discontiguous required_monitoring_information/1.
:- discontiguous required_mutual_recognition_across_union/1.
:- discontiguous required_national_registration/1.
:- discontiguous required_new_conformity_assessment/2.
:- discontiguous required_notice_before_cessation/2.
:- discontiguous required_notified_body_information/1.
:- discontiguous required_notify_change_to_ai_system/2.
:- discontiguous required_notify_change_to_qms/2.
:- discontiguous required_notify_commission_of_penalties/1.
:- discontiguous required_notify_list/1.
:- discontiguous required_objectivity_and_impartiality/1.
:- discontiguous required_observe_confidentiality/1.
:- discontiguous required_operator_take_measures/4.
:- discontiguous required_organisational_requirements/1.
:- discontiguous required_organise_awareness_raising_and_training/2.
:- discontiguous required_organise_communication_campaigns/1.
:- discontiguous required_oversight/2.
:- discontiguous required_oversight_capability_avoid_automation_bias/1.
:- discontiguous required_oversight_capability_decide_not_use/1.
:- discontiguous required_oversight_capability_interpret_output/1.
:- discontiguous required_oversight_capability_intervene/1.
:- discontiguous required_oversight_capability_understand/1.
:- discontiguous required_oversight_measure_built_in/1.
:- discontiguous required_oversight_measure_deployer_implemented/1.
:- discontiguous required_participation_in_coordination/1.
:- discontiguous required_perform_mandated_tasks/1.
:- discontiguous required_performance_metrics_description/1.
:- discontiguous required_personal_data_compliance_statement/1.
:- discontiguous required_post_market_evaluation_description/1.
:- discontiguous required_prevent_adversarial_examples/1.
:- discontiguous required_prevent_confidentiality_attacks/1.
:- discontiguous required_prevent_data_poisoning/1.
:- discontiguous required_prevent_model_flaws/1.
:- discontiguous required_prevent_model_poisoning/1.
:- discontiguous required_procedural_rights/2.
:- discontiguous required_procedure_applies/2.
:- discontiguous required_process_personal_data_accordingly/2.
:- discontiguous required_process_requirements/1.
:- discontiguous required_protection_vulnerable_subjects/1.
:- discontiguous required_provide_adequate_resources/1.
:- discontiguous required_provide_audit_report/2.
:- discontiguous required_provide_controlled_environment/1.
:- discontiguous required_provide_copy_of_mandate/2.
:- discontiguous required_provide_exit_report/2.
:- discontiguous required_provide_guidance/2.
:- discontiguous required_provide_independent_advice/2.
:- discontiguous required_provide_information/2.
:- discontiguous required_provide_information/3.
:- discontiguous required_provide_information_at_latest_first_interaction/2.
:- discontiguous required_provide_information_to_ai_office/2.
:- discontiguous required_provide_logs/2.
:- discontiguous required_provide_priority_access_to_ai_regulatory_sandbox/2.
:- discontiguous required_provide_standardised_templates/1.
:- discontiguous required_provider_changes_description/1.
:- discontiguous required_provider_contact_information/1.
:- discontiguous required_provider_or_operator_corrective_action/3.
:- discontiguous required_provider_responsibility_statement/1.
:- discontiguous required_provision_in_implementing_act/2.
:- discontiguous required_provision_of_information_and_training/2.
:- discontiguous required_provisional_measures/2.
:- discontiguous required_publicly_available_notified_body_list/1.
:- discontiguous required_publish_sandbox_list/0.
:- discontiguous required_qms_assessed_by_notified_body/2.
:- discontiguous required_quality_management_requirements/1.
:- discontiguous required_quality_management_system/2.
:- discontiguous required_quality_of_data_sets/1.
:- discontiguous required_record_keeping/2.
:- discontiguous required_reduce_fees_proportionately/2.
:- discontiguous required_refuse_certificate_if_nonconformant/3.
:- discontiguous required_registration/1.
:- discontiguous required_registration/2.
:- discontiguous required_registration_obligation/1.
:- discontiguous required_release_date/2.
:- discontiguous required_renewable_once/1.
:- discontiguous required_report/2.
:- discontiguous required_report_annual_fines/1.
:- discontiguous required_report_attention/2.
:- discontiguous required_report_resources_status/1.
:- discontiguous required_report_serious_incidents/2.
:- discontiguous required_residual_risk_acceptable/2.
:- discontiguous required_resilience/1.
:- discontiguous required_resilience_unauthorised/1.
:- discontiguous required_resolve_adversarial_examples/1.
:- discontiguous required_resolve_confidentiality_attacks/1.
:- discontiguous required_resolve_data_poisoning/1.
:- discontiguous required_resolve_model_flaws/1.
:- discontiguous required_resolve_model_poisoning/1.
:- discontiguous required_resources_requirements/1.
:- discontiguous required_respond_adversarial_examples/1.
:- discontiguous required_respond_confidentiality_attacks/1.
:- discontiguous required_respond_data_poisoning/1.
:- discontiguous required_respond_model_flaws/1.
:- discontiguous required_respond_model_poisoning/1.
:- discontiguous required_retention_period/2.
:- discontiguous required_retrain_if_data_noncompliant/1.
:- discontiguous required_reversibility/1.
:- discontiguous required_risk_management_description/1.
:- discontiguous required_risk_management_system/2.
:- discontiguous required_robustness/1.
:- discontiguous required_secure_section/1.
:- discontiguous required_separate_verification/1.
:- discontiguous required_separation_of_assessment_and_decision/1.
:- discontiguous required_share_information/2.
:- discontiguous required_simple_intelligible_procedures/1.
:- discontiguous required_single_eu_declaration/2.
:- discontiguous required_specific_requirements/1.
:- discontiguous required_specify_information/2.
:- discontiguous required_storage_transport_conditions/2.
:- discontiguous required_submit_annual_report/2.
:- discontiguous required_submit_copy_on_request/2.
:- discontiguous required_suspend_testing_process/2.
:- discontiguous required_system_architecture_description/2.
:- discontiguous required_take_into_account/1.
:- discontiguous required_take_into_account/2.
:- discontiguous required_take_into_account_sme_interests_when_setting_fees/2.
:- discontiguous required_tasks/2.
:- discontiguous required_technical_doc_application_includes_name_and_address/1.
:- discontiguous required_technical_doc_application_includes_technical_documentation/1.
:- discontiguous required_technical_doc_application_includes_written_declaration/1.
:- discontiguous required_technical_documentation/2.
:- discontiguous required_technical_documentation_by_provider/2.
:- discontiguous required_technical_documentation_contains_minimum_elements/1.
:- discontiguous required_technical_means/2.
:- discontiguous required_technical_solution_effective/2.
:- discontiguous required_term_extension_limit/2.
:- discontiguous required_term_of_office/2.
:- discontiguous required_terminate_mandate/2.
:- discontiguous required_terminate_mandate_if_contrary/2.
:- discontiguous required_testing_approval/2.
:- discontiguous required_testing_before_market/2.
:- discontiguous required_testing_duration_limit/1.
:- discontiguous required_testing_for_risk_management_measures/2.
:- discontiguous required_testing_plan_submitted/2.
:- discontiguous required_third_country_transfer_safeguards/2.
:- discontiguous required_time_limit_for_participation/1.
:- discontiguous required_training_data_information/2.
:- discontiguous required_training_summary/2.
:- discontiguous required_translation/1.
:- discontiguous required_transmit_information_to_board/1.
:- discontiguous required_transparency/1.
:- discontiguous required_transparency_information/2.
:- discontiguous required_transparency_information_item/2.
:- discontiguous required_union_established/1.
:- discontiguous required_update_guidelines/1.
:- discontiguous required_verification_of_design_and_development_process/1.
:- discontiguous required_verification_of_quality_management_system/1.
:- discontiguous required_verify_technical_documentation/2.
:- discontiguous requirement_set/1.
:- discontiguous requirements_chapter3_section2_applies/1.
:- discontiguous revoker_is_council/1.
:- discontiguous revoker_is_european_parliament/1.
:- discontiguous risk_at_least_as_high_as_existing_high_risk_applies/1.
:- discontiguous risk_harm_or_fundamental_rights_applies/1.
:- discontiguous scientific_panel/1.
:- discontiguous sectoral_group_of_notified_bodies/1.
:- discontiguous selected_by_commission/1.
:- discontiguous source_type/1.
:- discontiguous subject_to_fine/2.
:- discontiguous systemic_risk_applies/1.
:- discontiguous target_type/1.
:- discontiguous topic_type/1.
:- discontiguous union_harmonisation_legislation/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic access_necessary/1.
:- dynamic access_restriction/2.
:- dynamic accreditation_certificate/1.
:- dynamic accreditation_certificate_exists/1.
:- dynamic actively_and_systematically_collect_document_analyse_data/1.
:- dynamic acts_contrary/1.
:- dynamic adequate_and_effective_cybersecurity_measures/1.
:- dynamic adopt_delegated_act/2.
:- dynamic adopt_implementing_act/2.
:- dynamic adopting_implementing_act/2.
:- dynamic adopts_delegated_act/2.
:- dynamic affected_person/1.
:- dynamic affix_possible/1.
:- dynamic agreement_of_provider/3.
:- dynamic ai_literacy/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic aim_promoting_compliance/1.
:- dynamic annex_1_applies/1.
:- dynamic annex_3_ai_system/1.
:- dynamic annex_3_applies/1.
:- dynamic annual_basis/0.
:- dynamic another_notified_body_assumed/2.
:- dynamic appeal_procedure_available/0.
:- dynamic applicable/1.
:- dynamic applicable_requirements/1.
:- dynamic applied_common_specifications/2.
:- dynamic applied_harmonised_standards/2.
:- dynamic applying_provider/1.
:- dynamic appropriate_accuracy/1.
:- dynamic appropriate_cybersecurity/1.
:- dynamic appropriate_cybersecurity_measures/1.
:- dynamic appropriate_deadline_set_by_notified_body/2.
:- dynamic appropriate_robustness/1.
:- dynamic arguments_not_sufficiently_substantiated/2.
:- dynamic artistic_work/1.
:- dynamic authorisation_obtained/2.
:- dynamic authorisation_refused/1.
:- dynamic authorisation_rejected/2.
:- dynamic authorised_for_criminal_offence/1.
:- dynamic authorised_person_access/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_bankrupt/1.
:- dynamic authorised_representative_ceases_activity/1.
:- dynamic authority/1.
:- dynamic automatic_recording_of_events/1.
:- dynamic automatically_generated_by/2.
:- dynamic aware_of_incident/2.
:- dynamic based_on_general_purpose_ai_model/1.
:- dynamic based_on_plan/2.
:- dynamic benchmarks_applies/1.
:- dynamic bias_detection_not_fulfilled_by_other_data/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic both_informed_no_objection_before_expiry/3.
:- dynamic case_art_46_par_1_applies/2.
:- dynamic ce_marked/1.
:- dynamic ce_marking/1.
:- dynamic ce_marking_affixed_in_violation_applies/1.
:- dynamic ce_marking_not_affixed_applies/1.
:- dynamic ceased/1.
:- dynamic ceasing_conformity_assessment/1.
:- dynamic certificate/1.
:- dynamic certificate_for_system/2.
:- dynamic certificate_related_decision/1.
:- dynamic certified_under_cybersecurity_scheme/1.
:- dynamic civil_protection_authority/1.
:- dynamic code_of_conduct/1.
:- dynamic commission_considers_contrary/2.
:- dynamic commission_considers_justified/2.
:- dynamic commission_considers_unjustified/2.
:- dynamic commission_decision_equivalent/1.
:- dynamic common_specification/1.
:- dynamic competence_doubt_applies/1.
:- dynamic competent_data_protection_supervisory_authority/1.
:- dynamic compliance_concluded/2.
:- dynamic complies_with_art_31/1.
:- dynamic complies_with_regulation/1.
:- dynamic component_of_large_scale_it_system/1.
:- dynamic computation_amount_applies/1.
:- dynamic concerns/2.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic condition_a_to_d/1.
:- dynamic condition_art_51_par_1_unp_1_pnt_a_applies/1.
:- dynamic condition_c/1.
:- dynamic condition_d/2.
:- dynamic condition_e/2.
:- dynamic condition_f/1.
:- dynamic condition_g/1.
:- dynamic condition_h/1.
:- dynamic condition_i/1.
:- dynamic condition_j/1.
:- dynamic conditions_fulfilled/1.
:- dynamic confidential_exchange/1.
:- dynamic confidentiality_arrangement/2.
:- dynamic confidentiality_obligation/1.
:- dynamic confidentiality_obligation_applies/1.
:- dynamic confidentiality_procedures_in_place/1.
:- dynamic conflict_of_interest/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conforms_to/2.
:- dynamic conforms_to_accessibility_requirements/1.
:- dynamic consent_given/2.
:- dynamic consistent_performance/1.
:- dynamic context_workplace_education/1.
:- dynamic continues_learning/1.
:- dynamic control_adversarial_examples/1.
:- dynamic control_confidentiality_attacks/1.
:- dynamic control_data_poisoning/1.
:- dynamic control_model_flaws/1.
:- dynamic control_model_poisoning/1.
:- dynamic control_of_provider/1.
:- dynamic coordination_ensured/2.
:- dynamic coordination_facilitated/3.
:- dynamic corrective_action_taken/3.
:- dynamic court_of_justice/1.
:- dynamic covered_by_certificate/2.
:- dynamic covered_by_union_harmonisation_legislation/1.
:- dynamic covers_requirements/2.
:- dynamic criteria_met_applies/1.
:- dynamic criteria_set_in_annex_13_applies/1.
:- dynamic critical_infrastructure/1.
:- dynamic cybersecurity_certificate_covers/2.
:- dynamic data_listed_in_annex8_sec1_2/1.
:- dynamic data_listed_in_annex8_sec3/1.
:- dynamic data_obtained/1.
:- dynamic data_protection_authority/1.
:- dynamic data_set/1.
:- dynamic dataset_quality_applies/1.
:- dynamic deadline_2_aug_2027/1.
:- dynamic deadline_2_aug_2030/1.
:- dynamic deadline_31_dec_2030/1.
:- dynamic death_of_person/1.
:- dynamic decision/1.
:- dynamic decision_by_deployer/2.
:- dynamic decision_referred_to_art_76_par_3/1.
:- dynamic declaration/1.
:- dynamic declares_accuracy_metrics/2.
:- dynamic deep_fake/1.
:- dynamic delegated_act/1.
:- dynamic delegated_act_concerning/2.
:- dynamic delegation_of_power/1.
:- dynamic deleted_after_termination/1.
:- dynamic deletion_after_bias_correction/2.
:- dynamic demonstrates_conformity/2.
:- dynamic demonstrating_compliance/2.
:- dynamic deployer/1.
:- dynamic designated_under_other_legislation/1.
:- dynamic designation_status/2.
:- dynamic detect_adversarial_examples/1.
:- dynamic detect_confidentiality_attacks/1.
:- dynamic detect_data_poisoning/1.
:- dynamic detect_model_flaws/1.
:- dynamic detect_model_poisoning/1.
:- dynamic digital_accessible/1.
:- dynamic directly_usable_by_deployer/1.
:- dynamic distributor/1.
:- dynamic document_retention_five_years/1.
:- dynamic documentation/1.
:- dynamic documentation_insufficient/2.
:- dynamic documentation_kept/1.
:- dynamic downstream_provider/1.
:- dynamic duration_not_exceeding_limit/1.
:- dynamic edps/1.
:- dynamic element_changed/2.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic ensures_compliance/2.
:- dynamic ensures_equivalent_compliance/1.
:- dynamic equivalent_level_of_protection/1.
:- dynamic established_in_union/1.
:- dynamic established_on_territory/2.
:- dynamic eu_database/1.
:- dynamic eu_declaration_not_drawn_up_applies/1.
:- dynamic eu_declaration_not_drawn_up_correctly_applies/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic european_data_protection_supervisor/1.
:- dynamic evaluation_finds_high_risk_applies/2.
:- dynamic evaluation_finds_non_compliance/2.
:- dynamic exception_annex3_pnt2/1.
:- dynamic exception_section/1.
:- dynamic exception_system/1.
:- dynamic exceptional_reason_applies/1.
:- dynamic excluded_intended_use_area/1.
:- dynamic excluded_sme/1.
:- dynamic existing_post_market_monitoring_system/1.
:- dynamic expert_of_scientific_panel/1.
:- dynamic facilitates_post_market_monitoring/1.
:- dynamic falls_within_scope/1.
:- dynamic falsified/1.
:- dynamic falsified_documentation/1.
:- dynamic financial_institution/1.
:- dynamic financial_supervision_authority/1.
:- dynamic finding/1.
:- dynamic finding_under_art_82_par_1/1.
:- dynamic floating_point_operation/1.
:- dynamic foss_license/1.
:- dynamic free_and_open_source/1.
:- dynamic free_and_open_source_license/2.
:- dynamic fulfills_eligibility/1.
:- dynamic fulfills_eligibility_conditions/1.
:- dynamic fulfills_selection_criteria/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic generates_text_content/1.
:- dynamic grounds_to_consider_infringement/1.
:- dynamic harmonised_standard/1.
:- dynamic has_declaration_of_conformity/1.
:- dynamic has_instructions_for_use/1.
:- dynamic has_legal_personality/1.
:- dynamic has_reason_to_consider_not_conforming/2.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk/1.
:- dynamic high_risk_ai_system_annex3_a/1.
:- dynamic high_risk_ai_system_provider/1.
:- dynamic high_risk_identified/1.
:- dynamic high_risk_purpose/1.
:- dynamic identified_info/1.
:- dynamic identifies_risk_situations/1.
:- dynamic impartiality_documented/1.
:- dynamic implements_act/2.
:- dynamic importer/1.
:- dynamic importer_compliant/1.
:- dynamic inability_to_access_information/2.
:- dynamic includes_annex5_information/1.
:- dynamic includes_description_of_facts/1.
:- dynamic includes_point_of_contact/2.
:- dynamic independent_expert/1.
:- dynamic independent_of_competitor/1.
:- dynamic independent_of_operator/1.
:- dynamic independent_of_provider/1.
:- dynamic infer_emotions/1.
:- dynamic infer_sensitive_attributes/1.
:- dynamic info_insufficient_applies/1.
:- dynamic information_obtained/1.
:- dynamic information_obtained/2.
:- dynamic information_provided/2.
:- dynamic information_provided_under_art_13/1.
:- dynamic information_registered_in/2.
:- dynamic informed_board/1.
:- dynamic informed_consent/1.
:- dynamic informed_consent_obtained/1.
:- dynamic initial_provider/2.
:- dynamic input_data/1.
:- dynamic input_data_relevant_and_representative/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_detect_decision_patterns_without_replacing_human_review/1.
:- dynamic intended_for_administration_of_justice/1.
:- dynamic intended_for_biometric_verification_only/1.
:- dynamic intended_for_education/1.
:- dynamic intended_for_employment/1.
:- dynamic intended_for_essential_service/1.
:- dynamic intended_for_law_enforcement/1.
:- dynamic intended_for_migration/1.
:- dynamic intended_for_public_authorities/1.
:- dynamic intended_improve_result_human_activity/1.
:- dynamic intended_narrow_procedural_task/1.
:- dynamic intended_preparatory_task_for_assessment/1.
:- dynamic intended_purpose/1.
:- dynamic interacts_directly_with_natural_persons/1.
:- dynamic internal_control/1.
:- dynamic involved_in_application/1.
:- dynamic involved_in_design/1.
:- dynamic involved_in_development/1.
:- dynamic involved_in_marketing/1.
:- dynamic involved_in_use/1.
:- dynamic isolated_environment/1.
:- dynamic jeopardises_public_and_national_security/1.
:- dynamic joint_activity/1.
:- dynamic language_understood_by_authorities/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_or_migration_area/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic law_enforcement_use_untargeted/2.
:- dynamic liability_insurance_taken/1.
:- dynamic liable_under_law/2.
:- dynamic listed_in_annex3/1.
:- dynamic listed_in_annex3_point/2.
:- dynamic listed_in_annex_1_sec_1/1.
:- dynamic listed_in_annex_3_point_1/1.
:- dynamic listed_in_annex_3_points_2_to_8/1.
:- dynamic listed_in_anx3/1.
:- dynamic local_public_authority/1.
:- dynamic log/1.
:- dynamic log_referred_in_art_12_par_1/1.
:- dynamic logging_capability/1.
:- dynamic logs_kept_for_participation/1.
:- dynamic logs_under_control/2.
:- dynamic made_all_appropriate_efforts/2.
:- dynamic made_available_on_union_market/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate_received/2.
:- dynamic market_impact_applies/1.
:- dynamic market_surveillance_authority/1.
:- dynamic measure/1.
:- dynamic meets_conditions_art_51/1.
:- dynamic meets_cybersecurity_requirements/1.
:- dynamic meets_organisational_requirements/1.
:- dynamic meets_process_requirements/1.
:- dynamic meets_quality_management_requirements/1.
:- dynamic meets_requirements/1.
:- dynamic meets_requirements_of_art_31/1.
:- dynamic meets_resources_requirements/1.
:- dynamic member_state/1.
:- dynamic member_state_concerned/1.
:- dynamic member_state_fails_to_correct/1.
:- dynamic microenterprise/1.
:- dynamic misclassification_to_circumvent_requirements/2.
:- dynamic mitigation_feedback_loops/1.
:- dynamic modalities_applies/1.
:- dynamic modify_intended_purpose/2.
:- dynamic monitoring_mechanisms/1.
:- dynamic monitors_operation/1.
:- dynamic name_or_trademark_put_on/2.
:- dynamic national_competent_authority/1.
:- dynamic national_measure/1.
:- dynamic national_measure_justified/1.
:- dynamic national_measures/1.
:- dynamic national_public_authority/1.
:- dynamic natural_or_legal_person/1.
:- dynamic natural_person/1.
:- dynamic natural_person_affected/1.
:- dynamic necessary_and_proportionate/1.
:- dynamic necessary_and_proportionate_access/1.
:- dynamic necessary_and_proportionate_applies/1.
:- dynamic necessary_for_fulfilling_mandate/2.
:- dynamic need_timely_reporting/1.
:- dynamic no_authorised_representative_applies/1.
:- dynamic no_longer_needed_for_purpose/1.
:- dynamic no_measures_affecting_subjects/1.
:- dynamic no_objection_by/2.
:- dynamic no_objection_within/2.
:- dynamic no_objection_within_15_days/2.
:- dynamic no_objection_within_two_months/1.
:- dynamic no_objection_within_two_weeks/1.
:- dynamic non_compliance/1.
:- dynamic non_compliance_cross_border/1.
:- dynamic non_compliance_other_requirements/1.
:- dynamic non_compliance_persists/2.
:- dynamic non_compliance_prohibition_art5/1.
:- dynamic non_compliance_with_art_60_61/1.
:- dynamic non_high_risk_classified_by_provider/1.
:- dynamic non_personal_data/1.
:- dynamic not_adequate_corrective_action_within_period/2.
:- dynamic not_compliant_within_period/2.
:- dynamic not_conforming/1.
:- dynamic not_high_risk_ai_system/1.
:- dynamic not_in_conformity/1.
:- dynamic not_sensitive_operational_data_in_summary/1.
:- dynamic not_shared_outside_sandbox/1.
:- dynamic notification_sent/3.
:- dynamic notified/1.
:- dynamic notified_body_assessment/1.
:- dynamic notified_body_change_documentation/1.
:- dynamic notified_body_decision_documentation/1.
:- dynamic notified_by/2.
:- dynamic notifying_authority/1.
:- dynamic objection_in_art_60_par_4_unp_1_pnt_b/1.
:- dynamic objection_raised/2.
:- dynamic objective_develop_train_test/1.
:- dynamic objective_distort_behavior/1.
:- dynamic objective_localisation/1.
:- dynamic objective_prevent_threat/1.
:- dynamic objective_public_interest_area/2.
:- dynamic objective_targeted_search/1.
:- dynamic obtained_in_investigation/1.
:- dynamic obtained_information/1.
:- dynamic obtained_information/2.
:- dynamic obtained_under_art_21/2.
:- dynamic occurs_during_testing/2.
:- dynamic operator_fails_to_act/2.
:- dynamic other_authority/1.
:- dynamic other_designated_authority/1.
:- dynamic other_measures/1.
:- dynamic other_natural_or_legal_person/1.
:- dynamic other_relevant_national_authority/1.
:- dynamic other_union_law_applies/1.
:- dynamic over_lifetime/1.
:- dynamic oversight_by/2.
:- dynamic own_initiative/1.
:- dynamic parameters_number_applies/1.
:- dynamic part_of_documentation_under_financial_services_law/2.
:- dynamic participant_in_sandbox/2.
:- dynamic participant_in_standardisation_process/1.
:- dynamic participates_in_coordination/1.
:- dynamic participation_of_notified_bodies_in_group/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_profiling/1.
:- dynamic period_prescribed_by/2.
:- dynamic permitted_designate_systemic_risk/2.
:- dynamic permitted_lawful_dataset_labeling/1.
:- dynamic permitted_medical_or_safety_use/1.
:- dynamic permitted_present_arguments/2.
:- dynamic permitted_processing_personal_data/2.
:- dynamic permitted_support_human_assessment/1.
:- dynamic personal_data/1.
:- dynamic placed_before_2_aug_2025/1.
:- dynamic placed_before_2_aug_2026/1.
:- dynamic placed_before_2_aug_2027/1.
:- dynamic placing_on_market/1.
:- dynamic planned_cessation/1.
:- dynamic post_market_monitoring_plan/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic power/1.
:- dynamic pre_determined_change/1.
:- dynamic presenting_risk/1.
:- dynamic presents_risk/1.
:- dynamic presents_systemic_risk/1.
:- dynamic prevent_adversarial_examples/1.
:- dynamic prevent_confidentiality_attacks/1.
:- dynamic prevent_data_poisoning/1.
:- dynamic prevent_model_flaws/1.
:- dynamic prevent_model_poisoning/1.
:- dynamic previous_assessment_available/2.
:- dynamic previously_assessed/1.
:- dynamic private_entity_public_service/1.
:- dynamic procedure/1.
:- dynamic processing_personal_data/1.
:- dynamic product_contains_ai_system/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic prohibited_practice/1.
:- dynamic proportionate_to_nature_and_risk/1.
:- dynamic proportionate_to_size/1.
:- dynamic prospective_deployer/1.
:- dynamic prospective_provider/1.
:- dynamic protected_by_measures/1.
:- dynamic provided_digitally/1.
:- dynamic provider/1.
:- dynamic provider_aware_of_risk/2.
:- dynamic provider_bankrupt/1.
:- dynamic provider_ceases_activity/1.
:- dynamic provider_compliant/1.
:- dynamic provider_consents_public/1.
:- dynamic provider_considers_non_conformity/2.
:- dynamic provider_contrary_obligations/1.
:- dynamic provider_of_system/2.
:- dynamic provider_unable_to_demonstrate/2.
:- dynamic provides/2.
:- dynamic provides_model/2.
:- dynamic public_authority/1.
:- dynamic public_authority_actor/1.
:- dynamic public_interest_area/1.
:- dynamic public_interest_purpose/1.
:- dynamic public_law_body/1.
:- dynamic publicly_accessible_space/1.
:- dynamic published_in_official_journal/1.
:- dynamic purpose_assessing_matter/1.
:- dynamic purpose_law_enforcement/1.
:- dynamic pursuant_to_art_11_par_2/1.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic qualified_alert_applies/1.
:- dynamic quality_management_system/1.
:- dynamic quality_management_system_documentation/1.
:- dynamic re_assessment_conformity_procedure/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_consider/1.
:- dynamic reason_to_consider_high_risk_applies/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/1.
:- dynamic reasoned_request/2.
:- dynamic recall_of_ai_system/1.
:- dynamic recall_procedure_established/2.
:- dynamic recipient_of_report/1.
:- dynamic records_input_data_match/1.
:- dynamic records_of_processing/2.
:- dynamic records_reference_database/1.
:- dynamic records_use_period/1.
:- dynamic records_verification_persons/1.
:- dynamic reference_applies/1.
:- dynamic refers_to_requirements_chapter3_section2/1.
:- dynamic registered_end_users_applies/1.
:- dynamic registered_in_eu_database/1.
:- dynamic registration_not_carried_out_applies/1.
:- dynamic registration_number/3.
:- dynamic related_to_union_legislation/1.
:- dynamic relevant_changes_occur/1.
:- dynamic relevant_experts/1.
:- dynamic relevant_information/2.
:- dynamic relevant_legal_act_procedure/2.
:- dynamic remote/1.
:- dynamic remote_access_allowed/2.
:- dynamic report_subject/1.
:- dynamic report_to/2.
:- dynamic request_from/2.
:- dynamic request_made/2.
:- dynamic request_received/3.
:- dynamic requirement_in_art_15/1.
:- dynamic requirement_in_art_31/1.
:- dynamic requirements_chapter_3_section_2/0.
:- dynamic requirements_not_met_applies/1.
:- dynamic resilient/1.
:- dynamic resilient_against_unauthorised/1.
:- dynamic resolve_adversarial_examples/1.
:- dynamic resolve_confidentiality_attacks/1.
:- dynamic resolve_data_poisoning/1.
:- dynamic resolve_model_flaws/1.
:- dynamic resolve_model_poisoning/1.
:- dynamic respects_rigour_and_protection/2.
:- dynamic respond_adversarial_examples/1.
:- dynamic respond_confidentiality_attacks/1.
:- dynamic respond_data_poisoning/1.
:- dynamic respond_model_flaws/1.
:- dynamic respond_model_poisoning/1.
:- dynamic retention_period_at_least/2.
:- dynamic reversibility_possible/1.
:- dynamic revocation_decision/1.
:- dynamic risk/1.
:- dynamic risk_assessment_of_natural_person/1.
:- dynamic risk_management_system_considered/1.
:- dynamic risk_of_system/1.
:- dynamic risk_present/1.
:- dynamic risks_to_fundamental_rights_identified/1.
:- dynamic safety_component/1.
:- dynamic same_ai_system_type/2.
:- dynamic same_provider_developed/1.
:- dynamic sandbox_ai_system/1.
:- dynamic sandbox_plan/1.
:- dynamic sectoral_market_surveillance_authority/1.
:- dynamic security_and_privacy_measures/2.
:- dynamic sensitive_information/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic setting_functional_specifications/1.
:- dynamic share_allowed_by_union_law/2.
:- dynamic shortcomings_in_harmonised_standards/1.
:- dynamic significant_design_change/1.
:- dynamic significant_impact/2.
:- dynamic significant_risk_of_harm/1.
:- dynamic size_indicator/1.
:- dynamic small_and_medium_enterprise/1.
:- dynamic sme/1.
:- dynamic smes/1.
:- dynamic social_scoring/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic statement_of_conformity_issued/1.
:- dynamic strictly_necessary_for_risk_assessment/1.
:- dynamic subcontracting_task/2.
:- dynamic subject/1.
:- dynamic subject_to_financial_services_law/1.
:- dynamic subject_to_other_union_harmonisation_legislation/1.
:- dynamic subliminal_manipulative/1.
:- dynamic subsidiary_used/2.
:- dynamic substantial_modification/1.
:- dynamic substantial_modification_applies/1.
:- dynamic sufficient_competence/1.
:- dynamic sufficient_reason/2.
:- dynamic summary_published/1.
:- dynamic supervised_in_ai_regulatory_sandbox/1.
:- dynamic suspend_testing/2.
:- dynamic system_permitted_for_criminal_offence/1.
:- dynamic systemic_risk/1.
:- dynamic taking_into_account_intended_purpose/1.
:- dynamic taking_into_account_state_of_the_art/1.
:- dynamic technical_documentation/1.
:- dynamic technical_documentation_not_available_applies/1.
:- dynamic technical_documentation_specified/1.
:- dynamic technical_limitations_on_reuse/2.
:- dynamic ten_years_after_market_placement_applies/1.
:- dynamic testing_approved/3.
:- dynamic testing_data/1.
:- dynamic testing_exhausted/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_plan_drawn_up/2.
:- dynamic testing_plan_submitted/2.
:- dynamic third_country/1.
:- dynamic third_country_established/1.
:- dynamic third_country_provider/1.
:- dynamic third_country_regulatory_authority/1.
:- dynamic third_country_transfer_safeguards/2.
:- dynamic third_party/1.
:- dynamic third_party_supplier/1.
:- dynamic trained_and_tested_on_relevant_data/1.
:- dynamic training_computation/2.
:- dynamic training_data/1.
:- dynamic translated_for_nca/1.
:- dynamic turnover/2.
:- dynamic unable_to_conclude_investigation/2.
:- dynamic under_control_of/2.
:- dynamic under_national_law/1.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_institution/1.
:- dynamic union_law_provides_explanation/2.
:- dynamic untargeted_scraping/1.
:- dynamic updating_functional_specifications/1.
:- dynamic urgency/1.
:- dynamic urgency_applies/1.
:- dynamic use_ai_system/2.
:- dynamic use_not_restricted_to_national_territory_applies/2.
:- dynamic used_by_financial_institution/1.
:- dynamic uses_assessed_systems_for_operations/1.
:- dynamic uses_assessed_systems_for_personal_purposes/1.
:- dynamic uses_training_techniques/1.
:- dynamic using/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic vulnerability_exploiting/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_30_days/1.
:- dynamic within_48_hours/2.
:- dynamic within_reasonable_time/2.
:- dynamic within_three_months_before_end/1.
:- dynamic without_delay/1.

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
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the regulation', 'celex:32024R1689/oj#art_1').
declared(high_risk/1, 'characteristic indicating high risk', 'celex:32024R1689/oj#art_1').
declared(must_comply/2, 'obligation for an operator to comply with requirements for a high‑risk AI system', 'celex:32024R1689/oj#art_1').
declared(required_specific_requirements/1, 'specific requirements applicable to high‑risk AI systems', 'celex:32024R1689/oj#art_1').
declared(prohibited_ai_practice/1, 'AI practice prohibited by the regulation', 'celex:32024R1689/oj#art_1').
high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).
must_comply(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S).
required_specific_requirements(S) :-
    high_risk_ai_system(S).
prohibited_ai_practice(unspecified_practice).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_1').
provenance(must_comply/2, 'celex:32024R1689/oj#art_1').
provenance(required_specific_requirements/1, 'celex:32024R1689/oj#art_1').
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(required_application/1, 'entity to which the regulation applies', 'celex:32024R1689/oj#art_2').
declared(exempt_ai_system/1, 'AI system excluded from the regulation', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'person affected by the AI system', 'celex:32024R1689/oj#art_2').
required_application(Entity) :-
    provider(Entity).
required_application(Entity) :-
    deployer(Entity).
required_application(Entity) :-
    importer(Entity).
required_application(Entity) :-
    distributor(Entity).
required_application(Entity) :-
    product_manufacturer(Entity).
required_application(Entity) :-
    authorised_representative(Entity).
required_application(Person) :-
    affected_person(Person).
exempt_ai_system(System) :-
    military_purpose(System).
exempt_ai_system(System) :-
    scientific_research_purpose(System).
exempt_ai_system(System) :-
    open_source(System),
    \+ (placing_on_market(System) ; putting_into_service(System)).
provenance(required_application/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
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
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').

% ==== celex:32024R1689/oj#art_4 ====
declared(must_ensure/2, 'obligation to ensure', 'celex:32024R1689/oj#art_4').
must_ensure(Actor, ai_literacy) :-
    provider(Actor).
must_ensure(Actor, ai_literacy) :-
    deployer(Actor).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(use_ai_system/2, 'actor uses an AI system', 'celex:32024R1689/oj#art_5').
declared(prohibited_subliminal_manipulative_ai_system/1, 'AI system using subliminal or manipulative techniques that distort behaviour', 'celex:32024R1689/oj#art_5').
declared(prohibited_vulnerability_exploiting_ai_system/1, 'AI system exploiting vulnerabilities of persons', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring_ai_system/1, 'AI system performing social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_risk_assessment_ai_system/1, 'AI system assessing risk of criminal offence based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(permitted_support_human_assessment/1, 'AI system used to support human assessment based on objective facts', 'celex:32024R1689/oj#art_5').
declared(prohibited_facial_recognition_database_ai_system/1, 'AI system creating or expanding facial recognition databases by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference_ai_system/1, 'AI system inferring emotions in workplace or education, except for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(permitted_medical_or_safety_use/1, 'exception for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation_ai_system/1, 'AI system categorising persons by biometric data to infer sensitive attributes', 'celex:32024R1689/oj#art_5').
declared(permitted_lawful_dataset_labeling/1, 'exception for lawful dataset labelling in law enforcement', 'celex:32024R1689/oj#art_5').
declared(prohibited_real_time_remote_biometric_identification_system/1, 'real‑time remote biometric identification in public spaces for law enforcement, unless specific objectives are met', 'celex:32024R1689/oj#art_5').
declared(permitted_use_rt_rbi/3, 'permitted use of real‑time remote biometric identification for law enforcement objectives', 'celex:32024R1689/oj#art_5').
declared(objective_targeted_search/1, 'objective of targeted search for victims or missing persons', 'celex:32024R1689/oj#art_5').
declared(objective_prevent_threat/1, 'objective of preventing imminent threat to life or safety', 'celex:32024R1689/oj#art_5').
declared(objective_localisation/1, 'objective of locating or identifying a suspect', 'celex:32024R1689/oj#art_5').
declared(necessary_and_proportionate/1, 'use is necessary and proportionate', 'celex:32024R1689/oj#art_5').
declared(urgency/1, 'urgency justification', 'celex:32024R1689/oj#art_5').
declared(required_fundamental_rights_impact_assessment/2, 'fundamental rights impact assessment required', 'celex:32024R1689/oj#art_5').
declared(required_registration/1, 'registration in EU database required', 'celex:32024R1689/oj#art_5').
declared(required_authorisation/1, 'prior authorisation required', 'celex:32024R1689/oj#art_5').
declared(must_notify/2, 'notification to authority required', 'celex:32024R1689/oj#art_5').
declared(required_annual_report/2, 'annual report submission required', 'celex:32024R1689/oj#art_5').
declared(subliminal_manipulative/1, 'uses subliminal or manipulative techniques', 'celex:32024R1689/oj#art_5').
declared(objective_distort_behavior/1, 'objective to materially distort behaviour', 'celex:32024R1689/oj#art_5').
declared(vulnerability_exploiting/1, 'exploits vulnerabilities of persons', 'celex:32024R1689/oj#art_5').
declared(social_scoring/1, 'performs social scoring', 'celex:32024R1689/oj#art_5').
declared(risk_assessment_of_natural_person/1, 'assesses risk of criminal offence based on profiling', 'celex:32024R1689/oj#art_5').
declared(untargeted_scraping/1, 'untargeted scraping of facial images', 'celex:32024R1689/oj#art_5').
declared(infer_emotions/1, 'infers emotions', 'celex:32024R1689/oj#art_5').
declared(context_workplace_education/1, 'context is workplace or education', 'celex:32024R1689/oj#art_5').
declared(infer_sensitive_attributes/1, 'infers race, political opinion, etc.', 'celex:32024R1689/oj#art_5').
declared(data_protection_authority/1, 'national data protection authority', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulative_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    subliminal_manipulative(S),
    objective_distort_behavior(S).
prohibited_vulnerability_exploiting_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    vulnerability_exploiting(S),
    objective_distort_behavior(S).
prohibited_social_scoring_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    social_scoring(S).
prohibited_risk_assessment_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    risk_assessment_of_natural_person(S),
    \+ permitted_support_human_assessment(S).
prohibited_facial_recognition_database_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    untargeted_scraping(S).
prohibited_emotion_inference_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    infer_emotions(S),
    context_workplace_education(S),
    \+ permitted_medical_or_safety_use(S).
prohibited_biometric_categorisation_ai_system(S) :-
    (placing_on_market(S) ; putting_into_service(S) ; use_ai_system(_,S)),
    biometric_categorisation_system(S),
    infer_sensitive_attributes(S),
    \+ permitted_lawful_dataset_labeling(S).
prohibited_real_time_remote_biometric_identification_system(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(Space),
    law_enforcement_authority(Authority),
    \+ permitted_use_rt_rbi(S, Authority, Space).
permitted_use_rt_rbi(S, Authority, Space) :-
    real_time_remote_biometric_identification_system(S),
    law_enforcement_authority(Authority),
    publicly_accessible_space(Space),
    (objective_targeted_search(S) ; objective_prevent_threat(S) ; objective_localisation(S)),
    necessary_and_proportionate(S).
must_notify(market_surveillance_authority, S) :-
    prohibited_real_time_remote_biometric_identification_system(S).
must_notify(data_protection_authority, S) :-
    prohibited_real_time_remote_biometric_identification_system(S).
required_fundamental_rights_impact_assessment(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S).
required_registration(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ urgency(S).
required_authorisation(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ urgency(S).
required_annual_report(Authority, S) :-
    market_surveillance_authority(Authority),
    real_time_remote_biometric_identification_system(S).
provenance(use_ai_system/2, 'celex:32024R1689/oj#art_5').
provenance(prohibited_subliminal_manipulative_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploiting_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_support_human_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_medical_or_safety_use/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_ai_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_lawful_dataset_labeling/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_use_rt_rbi/3, 'celex:32024R1689/oj#art_5').
provenance(objective_targeted_search/1, 'celex:32024R1689/oj#art_5').
provenance(objective_prevent_threat/1, 'celex:32024R1689/oj#art_5').
provenance(objective_localisation/1, 'celex:32024R1689/oj#art_5').
provenance(necessary_and_proportionate/1, 'celex:32024R1689/oj#art_5').
provenance(urgency/1, 'celex:32024R1689/oj#art_5').
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_5').
provenance(required_registration/1, 'celex:32024R1689/oj#art_5').
provenance(required_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(required_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(subliminal_manipulative/1, 'celex:32024R1689/oj#art_5').
provenance(objective_distort_behavior/1, 'celex:32024R1689/oj#art_5').
provenance(vulnerability_exploiting/1, 'celex:32024R1689/oj#art_5').
provenance(social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(risk_assessment_of_natural_person/1, 'celex:32024R1689/oj#art_5').
provenance(untargeted_scraping/1, 'celex:32024R1689/oj#art_5').
provenance(infer_emotions/1, 'celex:32024R1689/oj#art_5').
provenance(context_workplace_education/1, 'celex:32024R1689/oj#art_5').
provenance(infer_sensitive_attributes/1, 'celex:32024R1689/oj#art_5').
provenance(data_protection_authority/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_6 ====
declared(condition_a/1, 'AI system intended as safety component of a product', 'celex:32024R1689/oj#art_6').
declared(condition_b/1, 'AI system subject to third‑party conformity assessment for market placement or service', 'celex:32024R1689/oj#art_6').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_6').
declared(annex_3_ai_system/1, 'AI system listed in annex 3', 'celex:32024R1689/oj#art_6').
declared(significant_risk_of_harm/1, 'AI system poses a significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6').
declared(derogation_applies/1, 'Derogation conditions for annex 3 AI systems are met', 'celex:32024R1689/oj#art_6').
declared(performs_profiling/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(required_document_assessment/2, 'Provider must document assessment that an annex 3 AI system is not high‑risk', 'celex:32024R1689/oj#art_6').
declared(required_registration_obligation/1, 'Provider is subject to registration obligation', 'celex:32024R1689/oj#art_6').
declared(intended_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(intended_improve_result_human_activity/1, 'AI system intended to improve result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(intended_detect_decision_patterns_without_replacing_human_review/1, 'AI system intended to detect decision‑making patterns without replacing human assessment', 'celex:32024R1689/oj#art_6').
declared(intended_preparatory_task_for_assessment/1, 'AI system intended to perform a preparatory task for an assessment relevant to annex 3 use cases', 'celex:32024R1689/oj#art_6').
condition_a(S) :-
    safety_component(S).
condition_b(S) :-
    conformity_assessment(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).
high_risk_ai_system(S) :-
    condition_a(S),
    condition_b(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    \+ derogation_applies(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    performs_profiling(S).
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    significant_risk_of_harm(S).
derogation_applies(S) :-
    annex_3_ai_system(S),
    (   intended_narrow_procedural_task(S)
    ;   intended_improve_result_human_activity(S)
    ;   intended_detect_decision_patterns_without_replacing_human_review(S)
    ;   intended_preparatory_task_for_assessment(S)
    ).
required_document_assessment(P, S) :-
    provider(P),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S).
required_registration_obligation(P) :-
    provider(P).
provenance(condition_a/1, 'celex:32024R1689/oj#art_6').
provenance(condition_b/1, 'celex:32024R1689/oj#art_6').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(annex_3_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(derogation_applies/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(required_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(required_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_result_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_patterns_without_replacing_human_review/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').

% ==== celex:32024R1689/oj#art_7 ====
declared(permitted_amend_annex_3/2, 'Commission may adopt delegated act to amend annex 3 by adding or modifying use‑cases of high‑risk AI systems', 'celex:32024R1689/oj#art_7').
declared(permitted_remove_high_risk_ai_system/2, 'Commission may adopt delegated act to remove high‑risk AI systems from annex 3', 'celex:32024R1689/oj#art_7').
declared(must_take_into_account/2, 'Commission shall take into account criteria when assessing the condition', 'celex:32024R1689/oj#art_7').
declared(intended_use_in_annex_3_applies/1, 'AI system intended to be used in an area listed in annex 3', 'celex:32024R1689/oj#art_7').
declared(risk_harm_or_fundamental_rights_applies/1, 'AI system poses a risk of harm to health and safety or an adverse impact on fundamental rights', 'celex:32024R1689/oj#art_7').
declared(risk_at_least_as_high_as_existing_high_risk_applies/1, 'Risk is equivalent to or greater than the risk of existing high‑risk AI systems', 'celex:32024R1689/oj#art_7').
declared(criterion_intended_purpose_applies/1, 'Criterion (a): intended purpose of the AI system', 'celex:32024R1689/oj#art_7').
declared(criterion_extent_of_use_applies/1, 'Criterion (b): extent to which the AI system has been used or is likely to be used', 'celex:32024R1689/oj#art_7').
declared(criterion_data_processed_applies/1, 'Criterion (c): nature and amount of data processed, especially special categories of personal data', 'celex:32024R1689/oj#art_7').
declared(criterion_autonomy_and_human_override_applies/1, 'Criterion (d): extent the AI system acts autonomously and possibility for human override', 'celex:32024R1689/oj#art_7').
declared(criterion_existing_harm_applies/1, 'Criterion (e): extent the use has already caused harm or adverse impact', 'celex:32024R1689/oj#art_7').
declared(criterion_potential_harm_extent_applies/1, 'Criterion (f): potential extent of such harm or adverse impact', 'celex:32024R1689/oj#art_7').
declared(criterion_dependency_of_harmed_persons_applies/1, 'Criterion (g): extent persons harmed are dependent on the outcome', 'celex:32024R1689/oj#art_7').
declared(criterion_imbalance_of_power_applies/1, 'Criterion (h): imbalance of power or vulnerable position of persons harmed', 'celex:32024R1689/oj#art_7').
declared(criterion_corrigibility_applies/1, 'Criterion (i): extent the outcome is easily corrigible or reversible', 'celex:32024R1689/oj#art_7').
declared(criterion_benefit_magnitude_applies/1, 'Criterion (j): magnitude and likelihood of benefit of the deployment', 'celex:32024R1689/oj#art_7').
declared(criterion_union_law_provisions_applies/1, 'Criterion (k): extent existing Union law provides effective measures of redress and risk prevention', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk_applies/1, 'AI system no longer poses any significant risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_7').
declared(protection_not_decreased_applies/1, 'Deletion does not decrease the overall level of protection of health, safety and fundamental rights', 'celex:32024R1689/oj#art_7').
declared(overall_protection_decrease/1, 'Deletion would decrease the overall level of protection', 'celex:32024R1689/oj#art_7').
permitted_amend_annex_3(_Commission, add_or_modify) :-
    intended_use_in_annex_3_applies(S),
    risk_harm_or_fundamental_rights_applies(S),
    risk_at_least_as_high_as_existing_high_risk_applies(S),
    ai_system(S).
permitted_remove_high_risk_ai_system(_Commission, removal) :-
    no_significant_risk_applies(S),
    protection_not_decreased_applies(S),
    ai_system(S).
must_take_into_account(_Commission, intended_purpose) :-
    criterion_intended_purpose_applies(S),
    ai_system(S).
must_take_into_account(_Commission, extent_of_use) :-
    criterion_extent_of_use_applies(S),
    ai_system(S).
must_take_into_account(_Commission, data_processed) :-
    criterion_data_processed_applies(S),
    ai_system(S).
must_take_into_account(_Commission, autonomy_and_human_override) :-
    criterion_autonomy_and_human_override_applies(S),
    ai_system(S).
must_take_into_account(_Commission, existing_harm) :-
    criterion_existing_harm_applies(S),
    ai_system(S).
must_take_into_account(_Commission, potential_harm_extent) :-
    criterion_potential_harm_extent_applies(S),
    ai_system(S).
must_take_into_account(_Commission, dependency_of_harmed_persons) :-
    criterion_dependency_of_harmed_persons_applies(S),
    ai_system(S).
must_take_into_account(_Commission, imbalance_of_power) :-
    criterion_imbalance_of_power_applies(S),
    ai_system(S).
must_take_into_account(_Commission, corrigibility) :-
    criterion_corrigibility_applies(S),
    ai_system(S).
must_take_into_account(_Commission, benefit_magnitude) :-
    criterion_benefit_magnitude_applies(S),
    ai_system(S).
must_take_into_account(_Commission, union_law_provisions) :-
    criterion_union_law_provisions_applies(S),
    ai_system(S).
intended_use_in_annex_3_applies(S) :-
    intended_purpose(S),
    ai_system(S).
risk_harm_or_fundamental_rights_applies(S) :-
    risk(S),
    ai_system(S).
risk_at_least_as_high_as_existing_high_risk_applies(S) :-
    risk(S),
    ai_system(S).
no_significant_risk_applies(S) :-
    \+ risk_harm_or_fundamental_rights_applies(S),
    ai_system(S).
protection_not_decreased_applies(S) :-
    \+ overall_protection_decrease(S),
    ai_system(S).
overall_protection_decrease(_S) :- false.
criterion_intended_purpose_applies(S) :-
    intended_purpose(S),
    ai_system(S).
criterion_extent_of_use_applies(S) :-
    
    usage_data(S),
    ai_system(S).
criterion_data_processed_applies(S) :-
    training_data(S),
    ai_system(S).
criterion_autonomy_and_human_override_applies(S) :-
    autonomy(S),
    human_override_possible(S),
    ai_system(S).
criterion_existing_harm_applies(S) :-
    serious_incident(S),
    ai_system(S).
criterion_potential_harm_extent_applies(S) :-
    potential_harm_intensity(S),
    ai_system(S).
criterion_dependency_of_harmed_persons_applies(S) :-
    dependency_on_outcome(S),
    ai_system(S).
criterion_imbalance_of_power_applies(S) :-
    power_imbalance(S),
    ai_system(S).
criterion_corrigibility_applies(S) :-
    corrigible(S),
    ai_system(S).
criterion_benefit_magnitude_applies(S) :-
    benefit_magnitude(S),
    ai_system(S).
criterion_union_law_provisions_applies(S) :-
    national_competent_authority(_A),
    ai_system(S).
provenance(permitted_amend_annex_3/2, 'celex:32024R1689/oj#art_7').
provenance(permitted_remove_high_risk_ai_system/2, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
provenance(intended_use_in_annex_3_applies/1, 'celex:32024R1689/oj#art_7').
provenance(risk_harm_or_fundamental_rights_applies/1, 'celex:32024R1689/oj#art_7').
provenance(risk_at_least_as_high_as_existing_high_risk_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_intended_purpose_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_extent_of_use_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_data_processed_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_autonomy_and_human_override_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_harm_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_potential_harm_extent_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_dependency_of_harmed_persons_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_imbalance_of_power_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_corrigibility_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_benefit_magnitude_applies/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_union_law_provisions_applies/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk_applies/1, 'celex:32024R1689/oj#art_7').
provenance(protection_not_decreased_applies/1, 'celex:32024R1689/oj#art_7').
provenance(overall_protection_decrease/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_8').
declared(taking_into_account_intended_purpose/1, 'considering intended purpose', 'celex:32024R1689/oj#art_8').
declared(taking_into_account_state_of_the_art/1, 'considering state of the art', 'celex:32024R1689/oj#art_8').
declared(risk_management_system_considered/1, 'risk management system taken into account', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/1, 'product contains an AI system', 'celex:32024R1689/oj#art_8').
declared(applicable_requirements/1, 'all applicable Union harmonisation requirements', 'celex:32024R1689/oj#art_8').
declared(permitted_integration/2, 'provider may integrate testing and reporting into existing documentation', 'celex:32024R1689/oj#art_8').
required_compliance(S) :-
    high_risk(S),
    taking_into_account_intended_purpose(S),
    taking_into_account_state_of_the_art(S),
    risk_management_system_considered(S).
must_ensure_compliance(P, Prod) :-
    provider(P),
    product_contains_ai_system(Prod),
    high_risk(Prod),
    applicable_requirements(Prod).
permitted_integration(P, Prod) :-
    provider(P),
    product_contains_ai_system(Prod),
    high_risk(Prod).
provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/2, 'establish, implement, document and maintain a risk management system', 'celex:32024R1689/oj#art_9').
declared(required_identification_and_analysis_of_risks/2, 'identify and analyse known and reasonably foreseeable risks', 'celex:32024R1689/oj#art_9').
declared(required_estimation_and_evaluation_of_risks/2, 'estimate and evaluate risks arising from intended use and reasonably foreseeable misuse', 'celex:32024R1689/oj#art_9').
declared(required_evaluation_of_other_risks/2, 'evaluate other risks based on post‑market monitoring data', 'celex:32024R1689/oj#art_9').
declared(required_adoption_of_risk_management_measures/2, 'adopt appropriate and targeted risk management measures', 'celex:32024R1689/oj#art_9').
declared(required_residual_risk_acceptable/2, 'ensure residual risk is judged acceptable', 'celex:32024R1689/oj#art_9').
declared(required_elimination_or_reduction_of_risks/2, 'eliminate or reduce risks where technically feasible', 'celex:32024R1689/oj#art_9').
declared(required_implementation_of_mitigation_measures/2, 'implement mitigation and control measures for risks that cannot be eliminated', 'celex:32024R1689/oj#art_9').
declared(required_provision_of_information_and_training/2, 'provide required information and training to deployers', 'celex:32024R1689/oj#art_9').
declared(required_testing_for_risk_management_measures/2, 'test AI system to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(required_testing_before_market/2, 'perform testing prior to market placement or putting into service', 'celex:32024R1689/oj#art_9').
declared(permitted_testing_in_real_world_conditions/1, 'allow testing procedures to include real‑world condition testing', 'celex:32024R1689/oj#art_9').
declared(required_consideration_of_vulnerable_groups/2, 'consider impact on persons under 18 and other vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(permitted_combination_with_other_risk_management/2, 'allow aspects to be combined with other internal risk‑management procedures', 'celex:32024R1689/oj#art_9').
required_risk_management_system(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_identification_and_analysis_of_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_estimation_and_evaluation_of_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_evaluation_of_other_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_adoption_of_risk_management_measures(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_residual_risk_acceptable(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_elimination_or_reduction_of_risks(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_implementation_of_mitigation_measures(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_provision_of_information_and_training(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_testing_for_risk_management_measures(P,S) :-
    provider(P),
    high_risk_ai_system(S).
required_testing_before_market(P,S) :-
    provider(P),
    high_risk_ai_system(S).
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S).
required_consideration_of_vulnerable_groups(P,S) :-
    provider(P),
    high_risk_ai_system(S).
permitted_combination_with_other_risk_management(P,S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(required_identification_and_analysis_of_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_estimation_and_evaluation_of_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_evaluation_of_other_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_adoption_of_risk_management_measures/2, 'celex:32024R1689/oj#art_9').
provenance(required_residual_risk_acceptable/2, 'celex:32024R1689/oj#art_9').
provenance(required_elimination_or_reduction_of_risks/2, 'celex:32024R1689/oj#art_9').
provenance(required_implementation_of_mitigation_measures/2, 'celex:32024R1689/oj#art_9').
provenance(required_provision_of_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_for_risk_management_measures/2, 'celex:32024R1689/oj#art_9').
provenance(required_testing_before_market/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination_with_other_risk_management/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').

% ==== celex:32024R1689/oj#art_10 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_10').
declared(uses_training_techniques/1, 'uses techniques involving the training of AI models with data', 'celex:32024R1689/oj#art_10').
declared(required_quality_of_data_sets/1, 'training, validation and testing data sets meet the quality criteria', 'celex:32024R1689/oj#art_10').
declared(required_data_governance_practice/2, 'data governance and management practice for data sets', 'celex:32024R1689/oj#art_10').
declared(required_data_characteristic/2, 'required characteristic of data sets', 'celex:32024R1689/oj#art_10').
declared(required_contextual_consideration/2, 'consideration of specific setting characteristics for data sets', 'celex:32024R1689/oj#art_10').
declared(permitted_processing_special_categories/2, 'provider may process special categories of personal data for bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(bias_detection_not_fulfilled_by_other_data/1, 'bias detection cannot be effectively fulfilled by processing other data', 'celex:32024R1689/oj#art_10').
declared(technical_limitations_on_reuse/2, 'technical limitations on the re‑use of special categories of personal data', 'celex:32024R1689/oj#art_10').
declared(security_and_privacy_measures/2, 'state‑of‑the‑art security and privacy‑preserving measures for special categories of personal data', 'celex:32024R1689/oj#art_10').
declared(access_restriction/2, 'special categories of personal data are not to be transmitted, transferred or otherwise accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(deletion_after_bias_correction/2, 'special categories of personal data are deleted once bias has been corrected or retention period ends', 'celex:32024R1689/oj#art_10').
declared(records_of_processing/2, 'records of processing activities include reasons for processing special categories of personal data', 'celex:32024R1689/oj#art_10').
required_quality_of_data_sets(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S),
    validation_data(S),
    testing_data(S).
required_data_governance_practice(S, design_choices) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, data_collection) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, data_preparation) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, assumption_formulation) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, availability_assessment) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, bias_examination) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, bias_detection_measures) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_governance_practice(S, data_gap_identification) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_characteristic(S, relevant) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_characteristic(S, representative) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_characteristic(S, error_free) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_characteristic(S, complete) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_data_characteristic(S, appropriate_statistical_properties) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_contextual_consideration(S, geographical) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_contextual_consideration(S, contextual) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_contextual_consideration(S, behavioural) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
required_contextual_consideration(S, functional) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data(S).
permitted_processing_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    uses_training_techniques(S),
    bias_detection_not_fulfilled_by_other_data(S),
    technical_limitations_on_reuse(P, S),
    security_and_privacy_measures(P, S),
    access_restriction(P, S),
    deletion_after_bias_correction(P, S),
    records_of_processing(P, S).
required_quality_of_data_sets(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data(S).
provenance(required_quality_of_data_sets/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_practice/2, 'celex:32024R1689/oj#art_10').
provenance(required_data_characteristic/2, 'celex:32024R1689/oj#art_10').
provenance(required_contextual_consideration/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_not_fulfilled_by_other_data/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/2, 'celex:32024R1689/oj#art_10').
provenance(security_and_privacy_measures/2, 'celex:32024R1689/oj#art_10').
provenance(access_restriction/2, 'celex:32024R1689/oj#art_10').
provenance(deletion_after_bias_correction/2, 'celex:32024R1689/oj#art_10').
provenance(records_of_processing/2, 'celex:32024R1689/oj#art_10').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'art_11').
declared(must_draw_up_technical_documentation/2, 'obligation to prepare technical documentation before market placement', 'art_11').
declared(must_keep_up_to_date_technical_documentation/2, 'obligation to keep technical documentation up‑to‑date', 'art_11').
declared(must_provide_information/3, 'obligation to supply information to a competent authority or notified body', 'art_11').
declared(required_technical_documentation_contains_minimum_elements/1, 'technical documentation must include the minimum elements set out in annex 4', 'art_11').
declared(must_establish_simplified_technical_documentation_form/1, 'Commission must create a simplified form for SMEs', 'art_11').
declared(smes/1, 'small or micro‑enterprise', 'art_11').
declared(must_use_simplified_form/2, 'SME that opts for simplification must use the simplified form', 'art_11').
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
must_keep_up_to_date_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
must_provide_information(Provider, national_competent_authority, S) :-
    provider(Provider),
    high_risk_ai_system(S).
must_provide_information(Provider, notified_body, S) :-
    provider(Provider),
    high_risk_ai_system(S).
required_technical_documentation_contains_minimum_elements(S) :-
    high_risk_ai_system(S).
must_establish_simplified_technical_documentation_form(commission).
must_use_simplified_form(SME, S) :-
    smes(SME),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_up_to_date_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(must_establish_simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(smes/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_12').
declared(high_risk_ai_system_annex3_a/1, 'high‑risk AI system referred to in annex III point 1 a', 'celex:32024R1689/oj#art_12').
declared(required_automatic_logging/1, 'must allow automatic recording of events over the system lifetime', 'celex:32024R1689/oj#art_12').
declared(automatic_recording_of_events/1, 'system automatically records events', 'celex:32024R1689/oj#art_12').
declared(over_lifetime/1, 'recording persists over the lifetime of the system', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_situation_identification/1, 'logging must enable recording of events relevant for identifying risk situations or substantial modifications', 'celex:32024R1689/oj#art_12').
declared(identifies_risk_situations/1, 'logging identifies situations that may result in a risk', 'celex:32024R1689/oj#art_12').
declared(substantial_modification_applies/1, 'logging covers substantial modifications', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_post_market_monitoring/1, 'logging must facilitate post‑market monitoring', 'celex:32024R1689/oj#art_12').
declared(facilitates_post_market_monitoring/1, 'logging facilitates post‑market monitoring', 'celex:32024R1689/oj#art_12').
declared(required_logging_for_operation_monitoring/1, 'logging must monitor the operation of high‑risk AI systems', 'celex:32024R1689/oj#art_12').
declared(monitors_operation/1, 'logging monitors system operation', 'celex:32024R1689/oj#art_12').
declared(required_minimum_logging_details/1, 'logging must provide minimum set of details', 'celex:32024R1689/oj#art_12').
declared(records_use_period/1, 'logging records start and end date‑time of each use', 'celex:32024R1689/oj#art_12').
declared(records_reference_database/1, 'logging records the reference database used for input checking', 'celex:32024R1689/oj#art_12').
declared(records_input_data_match/1, 'logging records the input data that led to a match', 'celex:32024R1689/oj#art_12').
declared(records_verification_persons/1, 'logging records the natural persons involved in verification of results', 'celex:32024R1689/oj#art_12').
declared(logging_capability/1, 'system possesses logging capability', 'celex:32024R1689/oj#art_12').
required_automatic_logging(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S),
    over_lifetime(S).
required_logging_for_situation_identification(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    (   identifies_risk_situations(S)
    ;   substantial_modification_applies(S)
    ).
required_logging_for_post_market_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    facilitates_post_market_monitoring(S).
required_logging_for_operation_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    monitors_operation(S).
required_minimum_logging_details(S) :-
    high_risk_ai_system_annex3_a(S),
    logging_capability(S),
    records_use_period(S),
    records_reference_database(S),
    records_input_data_match(S),
    records_verification_persons(S).
provenance(required_automatic_logging/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_situation_identification/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(required_minimum_logging_details/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(required_transparency/1, 'design and development ensuring sufficient transparency for deployers', 'celex:32024R1689/oj#art_13').
declared(required_instructions_for_use/1, 'accompanying instructions for use in appropriate digital format', 'celex:32024R1689/oj#art_13').
declared(required_information_provider_identity/1, 'identity of the provider', 'celex:32024R1689/oj#art_13').
declared(required_information_provider_contact/1, 'contact details of the provider', 'celex:32024R1689/oj#art_13').
declared(required_information_authorised_representative_contact/1, 'contact details of the authorised representative, where applicable', 'celex:32024R1689/oj#art_13').
declared(required_information_intended_purpose/1, 'intended purpose of the high‑risk AI system', 'celex:32024R1689/oj#art_13').
declared(required_information_accuracy_level/1, 'level of accuracy, metrics, robustness and cybersecurity', 'celex:32024R1689/oj#art_13').
declared(required_information_known_circumstances/1, 'known or foreseeable circumstances that may lead to risks', 'celex:32024R1689/oj#art_13').
declared(required_information_technical_capabilities/1, 'technical capabilities and characteristics to explain output', 'celex:32024R1689/oj#art_13').
declared(required_information_performance_specific_persons/1, 'performance regarding specific persons or groups', 'celex:32024R1689/oj#art_13').
declared(required_information_data_specifications/1, 'specifications for input data and information on training, validation and testing data sets', 'celex:32024R1689/oj#art_13').
declared(required_information_interpret_output/1, 'information enabling deployers to interpret the system output', 'celex:32024R1689/oj#art_13').
declared(required_information_pre_determined_changes/1, 'changes to the system and its performance pre‑determined at initial conformity assessment', 'celex:32024R1689/oj#art_13').
declared(required_information_human_oversight_measures/1, 'human oversight measures and technical measures facilitating output interpretation', 'celex:32024R1689/oj#art_13').
declared(required_information_resources_and_maintenance/1, 'computational and hardware resources, expected lifetime, maintenance and care measures', 'celex:32024R1689/oj#art_13').
declared(required_information_log_mechanisms/1, 'mechanisms to collect, store and interpret logs', 'celex:32024R1689/oj#art_13').
required_transparency(S) :-
    high_risk_ai_system(S).
required_instructions_for_use(S) :-
    high_risk_ai_system(S).
required_information_provider_identity(S) :-
    high_risk_ai_system(S).
required_information_provider_contact(S) :-
    high_risk_ai_system(S).
required_information_authorised_representative_contact(S) :-
    high_risk_ai_system(S).
required_information_intended_purpose(S) :-
    high_risk_ai_system(S).
required_information_accuracy_level(S) :-
    high_risk_ai_system(S).
required_information_known_circumstances(S) :-
    high_risk_ai_system(S).
required_information_technical_capabilities(S) :-
    high_risk_ai_system(S).
required_information_performance_specific_persons(S) :-
    high_risk_ai_system(S).
required_information_data_specifications(S) :-
    high_risk_ai_system(S).
required_information_interpret_output(S) :-
    high_risk_ai_system(S).
required_information_pre_determined_changes(S) :-
    high_risk_ai_system(S).
required_information_human_oversight_measures(S) :-
    high_risk_ai_system(S).
required_information_resources_and_maintenance(S) :-
    high_risk_ai_system(S).
required_information_log_mechanisms(S) :-
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(required_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_provider_contact/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_authorised_representative_contact/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_intended_purpose/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_accuracy_level/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_known_circumstances/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_technical_capabilities/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_performance_specific_persons/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_data_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_interpret_output/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_pre_determined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_resources_and_maintenance/1, 'celex:32024R1689/oj#art_13').
provenance(required_information_log_mechanisms/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(required_human_oversight_capability/1, 'high‑risk AI system must be designed to allow effective human oversight', 'celex:32024R1689/oj#art_14').
declared(objective_prevent_risk_via_oversight/1, 'human oversight shall aim to prevent or minimise risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_14').
declared(required_oversight_measure_built_in/1, 'oversight measures built into the high‑risk AI system by the provider before market placement', 'celex:32024R1689/oj#art_14').
declared(required_oversight_measure_deployer_implemented/1, 'oversight measures identified by the provider and implemented by the deployer', 'celex:32024R1689/oj#art_14').
declared(required_oversight_capability_understand/1, 'natural persons can properly understand capacities and limitations of the system', 'celex:32024R1689/oj#art_14').
declared(required_oversight_capability_avoid_automation_bias/1, 'natural persons remain aware of automation bias', 'celex:32024R1689/oj#art_14').
declared(required_oversight_capability_interpret_output/1, 'natural persons can correctly interpret the system’s output', 'celex:32024R1689/oj#art_14').
declared(required_oversight_capability_decide_not_use/1, 'natural persons can decide not to use or override the system’s output', 'celex:32024R1689/oj#art_14').
declared(required_oversight_capability_intervene/1, 'natural persons can intervene or stop the system safely', 'celex:32024R1689/oj#art_14').
declared(required_separate_verification/1, 'identifications must be verified by at least two competent natural persons', 'celex:32024R1689/oj#art_14').
declared(exempt_law_enforcement_context/1, 'exemption applies to systems used for law‑enforcement, migration, border control or asylum where disproportionate', 'celex:32024R1689/oj#art_14').
declared(annex_3_ai_system/1, 'high‑risk AI system referred to in annex III point 1', 'celex:32024R1689/oj#art_14').
declared(purpose_law_enforcement/1, 'system is used for law‑enforcement, migration, border control or asylum purposes', 'celex:32024R1689/oj#art_14').
required_human_oversight_capability(S) :-
    high_risk_ai_system(S).
provenance(required_human_oversight_capability/1, 'celex:32024R1689/oj#art_14').
objective_prevent_risk_via_oversight(S) :-
    high_risk_ai_system(S),
    ( intended_purpose(S) ; reasonably_foreseeable_misuse(S) ).
provenance(objective_prevent_risk_via_oversight/1, 'celex:32024R1689/oj#art_14').
required_oversight_measure_built_in(S) :-
    high_risk_ai_system(S).
provenance(required_oversight_measure_built_in/1, 'celex:32024R1689/oj#art_14').
required_oversight_measure_deployer_implemented(S) :-
    high_risk_ai_system(S),
    deployer(_).
provenance(required_oversight_measure_deployer_implemented/1, 'celex:32024R1689/oj#art_14').
required_oversight_capability_understand(S) :-
    high_risk_ai_system(S).
provenance(required_oversight_capability_understand/1, 'celex:32024R1689/oj#art_14').
required_oversight_capability_avoid_automation_bias(S) :-
    high_risk_ai_system(S).
provenance(required_oversight_capability_avoid_automation_bias/1, 'celex:32024R1689/oj#art_14').
required_oversight_capability_interpret_output(S) :-
    high_risk_ai_system(S).
provenance(required_oversight_capability_interpret_output/1, 'celex:32024R1689/oj#art_14').
required_oversight_capability_decide_not_use(S) :-
    high_risk_ai_system(S).
provenance(required_oversight_capability_decide_not_use/1, 'celex:32024R1689/oj#art_14').
required_oversight_capability_intervene(S) :-
    high_risk_ai_system(S).
provenance(required_oversight_capability_intervene/1, 'celex:32024R1689/oj#art_14').
required_separate_verification(S) :-
    high_risk_ai_system(S),
    annex_3_ai_system(S),
    \+ exempt_law_enforcement_context(S).
provenance(required_separate_verification/1, 'celex:32024R1689/oj#art_14').
exempt_law_enforcement_context(S) :-
    purpose_law_enforcement(S).
provenance(exempt_law_enforcement_context/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_15').
declared(appropriate_accuracy/1, 'accuracy level appropriate to the system', 'celex:32024R1689/oj#art_15').
declared(appropriate_robustness/1, 'robustness level appropriate to the system', 'celex:32024R1689/oj#art_15').
declared(appropriate_cybersecurity/1, 'cybersecurity level appropriate to the system', 'celex:32024R1689/oj#art_15').
declared(consistent_performance/1, 'consistent performance throughout the lifecycle', 'celex:32024R1689/oj#art_15').
declared(resilient/1, 'resilient to errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(resilient_against_unauthorised/1, 'resilient against unauthorised third‑party alterations', 'celex:32024R1689/oj#art_15').
declared(declares_accuracy_metrics/2, 'instructions of use declare accuracy metrics', 'celex:32024R1689/oj#art_15').
declared(continues_learning/1, 'system continues learning after market placement or putting into service', 'celex:32024R1689/oj#art_15').
declared(mitigation_feedback_loops/1, 'measures to mitigate feedback loops', 'celex:32024R1689/oj#art_15').
declared(appropriate_cybersecurity_measures/1, 'technical solutions ensuring cybersecurity', 'celex:32024R1689/oj#art_15').
declared(prevent_data_poisoning/1, 'prevent attacks that manipulate the training data set', 'celex:32024R1689/oj#art_15').
declared(detect_data_poisoning/1, 'detect attacks that manipulate the training data set', 'celex:32024R1689/oj#art_15').
declared(respond_data_poisoning/1, 'respond to attacks that manipulate the training data set', 'celex:32024R1689/oj#art_15').
declared(resolve_data_poisoning/1, 'resolve attacks that manipulate the training data set', 'celex:32024R1689/oj#art_15').
declared(control_data_poisoning/1, 'control attacks that manipulate the training data set', 'celex:32024R1689/oj#art_15').
declared(prevent_model_poisoning/1, 'prevent attacks that manipulate pre‑trained components', 'celex:32024R1689/oj#art_15').
declared(detect_model_poisoning/1, 'detect attacks that manipulate pre‑trained components', 'celex:32024R1689/oj#art_15').
declared(respond_model_poisoning/1, 'respond to attacks that manipulate pre‑trained components', 'celex:32024R1689/oj#art_15').
declared(resolve_model_poisoning/1, 'resolve attacks that manipulate pre‑trained components', 'celex:32024R1689/oj#art_15').
declared(control_model_poisoning/1, 'control attacks that manipulate pre‑trained components', 'celex:32024R1689/oj#art_15').
declared(prevent_adversarial_examples/1, 'prevent inputs designed to cause the AI model to err', 'celex:32024R1689/oj#art_15').
declared(detect_adversarial_examples/1, 'detect inputs designed to cause the AI model to err', 'celex:32024R1689/oj#art_15').
declared(respond_adversarial_examples/1, 'respond to inputs designed to cause the AI model to err', 'celex:32024R1689/oj#art_15').
declared(resolve_adversarial_examples/1, 'resolve inputs designed to cause the AI model to err', 'celex:32024R1689/oj#art_15').
declared(control_adversarial_examples/1, 'control inputs designed to cause the AI model to err', 'celex:32024R1689/oj#art_15').
declared(prevent_confidentiality_attacks/1, 'prevent attacks aiming at confidentiality', 'celex:32024R1689/oj#art_15').
declared(detect_confidentiality_attacks/1, 'detect attacks aiming at confidentiality', 'celex:32024R1689/oj#art_15').
declared(respond_confidentiality_attacks/1, 'respond to attacks aiming at confidentiality', 'celex:32024R1689/oj#art_15').
declared(resolve_confidentiality_attacks/1, 'resolve attacks aiming at confidentiality', 'celex:32024R1689/oj#art_15').
declared(control_confidentiality_attacks/1, 'control attacks aiming at confidentiality', 'celex:32024R1689/oj#art_15').
declared(prevent_model_flaws/1, 'prevent exploitation of model flaws', 'celex:32024R1689/oj#art_15').
declared(detect_model_flaws/1, 'detect exploitation of model flaws', 'celex:32024R1689/oj#art_15').
declared(respond_model_flaws/1, 'respond to exploitation of model flaws', 'celex:32024R1689/oj#art_15').
declared(resolve_model_flaws/1, 'resolve exploitation of model flaws', 'celex:32024R1689/oj#art_15').
declared(control_model_flaws/1, 'control exploitation of model flaws', 'celex:32024R1689/oj#art_15').
required_accuracy(S) :-
    high_risk_ai_system(S),
    appropriate_accuracy(S).
provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
required_robustness(S) :-
    high_risk_ai_system(S),
    appropriate_robustness(S).
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
required_cybersecurity(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity(S).
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
required_consistent_performance(S) :-
    high_risk_ai_system(S),
    consistent_performance(S).
provenance(required_consistent_performance/1, 'celex:32024R1689/oj#art_15').
required_resilience(S) :-
    high_risk_ai_system(S),
    resilient(S).
provenance(required_resilience/1, 'celex:32024R1689/oj#art_15').
required_resilience_unauthorised(S) :-
    high_risk_ai_system(S),
    resilient_against_unauthorised(S).
provenance(required_resilience_unauthorised/1, 'celex:32024R1689/oj#art_15').
required_declaration_of_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    declares_accuracy_metrics(I, S).
provenance(required_declaration_of_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
required_mitigation_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_learning(S),
    mitigation_feedback_loops(S).
provenance(required_mitigation_feedback_loops/1, 'celex:32024R1689/oj#art_15').
required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_measures(S).
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
required_prevent_data_poisoning(S) :-
    high_risk_ai_system(S),
    prevent_data_poisoning(S).
provenance(required_prevent_data_poisoning/1, 'celex:32024R1689/oj#art_15').
required_detect_data_poisoning(S) :-
    high_risk_ai_system(S),
    detect_data_poisoning(S).
provenance(required_detect_data_poisoning/1, 'celex:32024R1689/oj#art_15').
required_respond_data_poisoning(S) :-
    high_risk_ai_system(S),
    respond_data_poisoning(S).
provenance(required_respond_data_poisoning/1, 'celex:32024R1689/oj#art_15').
required_resolve_data_poisoning(S) :-
    high_risk_ai_system(S),
    resolve_data_poisoning(S).
provenance(required_resolve_data_poisoning/1, 'celex:32024R1689/oj#art_15').
required_control_data_poisoning(S) :-
    high_risk_ai_system(S),
    control_data_poisoning(S).
provenance(required_control_data_poisoning/1, 'celex:32024R1689/oj#art_15').
required_prevent_model_poisoning(S) :-
    high_risk_ai_system(S),
    prevent_model_poisoning(S).
provenance(required_prevent_model_poisoning/1, 'celex:32024R1689/oj#art_15').
required_detect_model_poisoning(S) :-
    high_risk_ai_system(S),
    detect_model_poisoning(S).
provenance(required_detect_model_poisoning/1, 'celex:32024R1689/oj#art_15').
required_respond_model_poisoning(S) :-
    high_risk_ai_system(S),
    respond_model_poisoning(S).
provenance(required_respond_model_poisoning/1, 'celex:32024R1689/oj#art_15').
required_resolve_model_poisoning(S) :-
    high_risk_ai_system(S),
    resolve_model_poisoning(S).
provenance(required_resolve_model_poisoning/1, 'celex:32024R1689/oj#art_15').
required_control_model_poisoning(S) :-
    high_risk_ai_system(S),
    control_model_poisoning(S).
provenance(required_control_model_poisoning/1, 'celex:32024R1689/oj#art_15').
required_prevent_adversarial_examples(S) :-
    high_risk_ai_system(S),
    prevent_adversarial_examples(S).
provenance(required_prevent_adversarial_examples/1, 'celex:32024R1689/oj#art_15').
required_detect_adversarial_examples(S) :-
    high_risk_ai_system(S),
    detect_adversarial_examples(S).
provenance(required_detect_adversarial_examples/1, 'celex:32024R1689/oj#art_15').
required_respond_adversarial_examples(S) :-
    high_risk_ai_system(S),
    respond_adversarial_examples(S).
provenance(required_respond_adversarial_examples/1, 'celex:32024R1689/oj#art_15').
required_resolve_adversarial_examples(S) :-
    high_risk_ai_system(S),
    resolve_adversarial_examples(S).
provenance(required_resolve_adversarial_examples/1, 'celex:32024R1689/oj#art_15').
required_control_adversarial_examples(S) :-
    high_risk_ai_system(S),
    control_adversarial_examples(S).
provenance(required_control_adversarial_examples/1, 'celex:32024R1689/oj#art_15').
required_prevent_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    prevent_confidentiality_attacks(S).
provenance(required_prevent_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').
required_detect_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    detect_confidentiality_attacks(S).
provenance(required_detect_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').
required_respond_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    respond_confidentiality_attacks(S).
provenance(required_respond_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').
required_resolve_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    resolve_confidentiality_attacks(S).
provenance(required_resolve_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').
required_control_confidentiality_attacks(S) :-
    high_risk_ai_system(S),
    control_confidentiality_attacks(S).
provenance(required_control_confidentiality_attacks/1, 'celex:32024R1689/oj#art_15').
required_prevent_model_flaws(S) :-
    high_risk_ai_system(S),
    prevent_model_flaws(S).
provenance(required_prevent_model_flaws/1, 'celex:32024R1689/oj#art_15').
required_detect_model_flaws(S) :-
    high_risk_ai_system(S),
    detect_model_flaws(S).
provenance(required_detect_model_flaws/1, 'celex:32024R1689/oj#art_15').
required_respond_model_flaws(S) :-
    high_risk_ai_system(S),
    respond_model_flaws(S).
provenance(required_respond_model_flaws/1, 'celex:32024R1689/oj#art_15').
required_resolve_model_flaws(S) :-
    high_risk_ai_system(S),
    resolve_model_flaws(S).
provenance(required_resolve_model_flaws/1, 'celex:32024R1689/oj#art_15').
required_control_model_flaws(S) :-
    high_risk_ai_system(S),
    control_model_flaws(S).
provenance(required_control_model_flaws/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_16').
declared(must_ensure_compliance/2, 'provider must ensure high‑risk AI system complies with requirements', 'celex:32024R1689/oj#art_16').
declared(must_indicate_contact_information/2, 'provider must indicate name and contact details on system or documentation', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider must have a quality management system in place', 'celex:32024R1689/oj#art_16').
declared(must_keep_documentation/2, 'provider must keep the required documentation', 'celex:32024R1689/oj#art_16').
declared(must_keep_logs/2, 'provider must keep automatically generated logs when under its control', 'celex:32024R1689/oj#art_16').
declared(must_ensure_conformity_assessment/2, 'provider must ensure relevant conformity assessment before market placement or putting into service', 'celex:32024R1689/oj#art_16').
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up an EU declaration of conformity', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider must affix the CE marking to the system or its packaging/documentation', 'celex:32024R1689/oj#art_16').
declared(must_comply_registration_obligations/2, 'provider must comply with registration obligations', 'celex:32024R1689/oj#art_16').
declared(must_take_corrective_actions/2, 'provider must take necessary corrective actions and provide information', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity/2, 'provider must demonstrate conformity on request of a national competent authority', 'celex:32024R1689/oj#art_16').
declared(must_ensure_accessibility/2, 'provider must ensure accessibility requirements are met', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_indicate_contact_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_have_quality_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_documentation(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_ensure_conformity_assessment(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_draw_up_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_affix_ce_marking(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_comply_registration_obligations(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_take_corrective_actions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_demonstrate_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_ensure_accessibility(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_information/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_registration_obligations/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_ensure_accessibility/2, 'celex:32024R1689/oj#art_16').
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
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'art_17').
declared(quality_management_system/1, 'system ensuring compliance with the Regulation', 'art_17').
declared(aspect/1, 'aspect of a quality‑management system', 'art_17').
declared(proportionate_to_size/1, 'implementation proportionate to the size of the provider', 'art_17').
declared(respects_rigour_and_protection/2, 'provider respects the degree of rigour and level of protection required', 'art_17').
declared(ensures_compliance/2, 'system ensures compliance with the referenced legal act', 'art_17').
declared(financial_institution/1, 'provider that is a financial institution subject to Union financial services law', 'art_17').
required_quality_management_system(Provider, System) :-
    provider(Provider),
    provider(Provider),                     
    high_risk_ai_system(System),
    quality_management_system(System),
    ensures_compliance(System, 'celex:32024R1689/oj'),
    proportionate_to_size(Provider),
    respects_rigour_and_protection(Provider, System).
provenance(required_quality_management_system/2, 'celex:32024R1689/oj#art_17').
aspect(regulatory_compliance_strategy).
aspect(design_control_and_verification).
aspect(development_quality_control).
aspect(examination_test_validation).
aspect(technical_specifications).
aspect(data_management_systems).
aspect(risk_management_system).
aspect(post_market_monitoring).
aspect(serious_incident_reporting).
aspect(communication_handling).
aspect(record_keeping).
aspect(resource_management).
aspect(accountability_framework).
required_aspect_in_quality_management_system(System, Aspect) :-
    quality_management_system(System),
    aspect(Aspect).
provenance(required_aspect_in_quality_management_system/2, 'celex:32024R1689/oj#art_17').
exempt_quality_management_system_aspect(Provider, Aspect) :-
    financial_institution(Provider),
    (   Aspect = risk_management_system
    ;   Aspect = post_market_monitoring
    ;   Aspect = serious_incident_reporting
    ).
provenance(exempt_quality_management_system_aspect/2, 'celex:32024R1689/oj#art_17').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_18').
declared(technical_documentation/1, 'technical documentation', 'celex:32024R1689/oj#art_18').
declared(quality_management_system_documentation/1, 'documentation concerning the quality management system', 'celex:32024R1689/oj#art_18').
declared(notified_body_change_documentation/1, 'documentation concerning the changes approved by notified bodies', 'celex:32024R1689/oj#art_18').
declared(notified_body_decision_documentation/1, 'decisions and other documents issued by the notified bodies', 'celex:32024R1689/oj#art_18').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity', 'celex:32024R1689/oj#art_18').
declared(required_keep_documentation/2, 'provider must keep documentation at disposal of national competent authorities', 'celex:32024R1689/oj#art_18').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_18').
declared(provider_bankrupt/1, 'provider has become bankrupt', 'celex:32024R1689/oj#art_18').
declared(provider_ceases_activity/1, 'provider has ceased its activity', 'celex:32024R1689/oj#art_18').
declared(authorised_representative_bankrupt/1, 'authorised representative has become bankrupt', 'celex:32024R1689/oj#art_18').
declared(authorised_representative_ceases_activity/1, 'authorised representative has ceased its activity', 'celex:32024R1689/oj#art_18').
declared(established_on_territory/2, 'entity established on the territory of a Member State', 'celex:32024R1689/oj#art_18').
declared(required_determine_conditions/2, 'Member State must determine conditions for documentation retention', 'celex:32024R1689/oj#art_18').
declared(financial_institution/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_18').
declared(subject_to_financial_services_law/1, 'entity subject to Union financial services law', 'celex:32024R1689/oj#art_18').
declared(required_maintain_technical_documentation/1, 'financial institution provider must maintain technical documentation', 'celex:32024R1689/oj#art_18').
declared(documentation_type/1, 'type of documentation referred to in Article 18', 'celex:32024R1689/oj#art_18').
documentation_type(technical_documentation).
documentation_type(quality_management_system_documentation).
documentation_type(notified_body_change_documentation).
documentation_type(notified_body_decision_documentation).
documentation_type(eu_declaration_of_conformity).
required_keep_documentation(P, technical_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
required_keep_documentation(P, quality_management_system_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
required_keep_documentation(P, notified_body_change_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
required_keep_documentation(P, notified_body_decision_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
required_keep_documentation(P, eu_declaration_of_conformity) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).
required_determine_conditions(MS, Doc) :-
    member_state(MS),
    documentation_type(Doc),
    provider(P),
    (provider_bankrupt(P) ; provider_ceases_activity(P)),
    established_on_territory(P, MS).
required_determine_conditions(MS, Doc) :-
    member_state(MS),
    documentation_type(Doc),
    authorised_representative(AR),
    (authorised_representative_bankrupt(AR) ; authorised_representative_ceases_activity(AR)),
    established_on_territory(AR, MS).
required_maintain_technical_documentation(P) :-
    provider(P),
    financial_institution(P),
    subject_to_financial_services_law(P).
provenance(required_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(required_determine_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(required_maintain_technical_documentation/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_19').
declared(log/1, 'log referred to in article 12 paragraph 1', 'celex:32024R1689/oj#art_19').
declared(log_referred_in_art_12_par_1/1, 'log referred to in article 12 paragraph 1', 'celex:32024R1689/oj#art_19').
declared(automatically_generated_by/2, 'log automatically generated by AI system', 'celex:32024R1689/oj#art_19').
declared(under_control_of/2, 'log under control of provider', 'celex:32024R1689/oj#art_19').
declared(retention_period_at_least/2, 'log must be retained for at least given period', 'celex:32024R1689/oj#art_19').
declared(required_retention_period/2, 'provider must retain log for required period', 'celex:32024R1689/oj#art_19').
declared(must_keep/2, 'provider must keep log', 'celex:32024R1689/oj#art_19').
declared(financial_institution/1, 'provider is a financial institution', 'celex:32024R1689/oj#art_19').
declared(must_maintain/2, 'provider must maintain log as part of financial services documentation', 'celex:32024R1689/oj#art_19').
declared(part_of_documentation_under_financial_services_law/2, 'log is part of documentation under financial services law', 'celex:32024R1689/oj#art_19').
must_keep(Provider, Log) :-
    provider(Provider),
    log(Log),
    log_referred_in_art_12_par_1(Log),
    automatically_generated_by(Log, System),
    high_risk_ai_system(System),
    under_control_of(Log, Provider).
required_retention_period(Provider, Log) :-
    must_keep(Provider, Log),
    retention_period_at_least(Log, six_months).
must_maintain(Provider, Log) :-
    provider(Provider),
    financial_institution(Provider),
    log(Log),
    automatically_generated_by(Log, System),
    high_risk_ai_system(System),
    under_control_of(Log, Provider),
    part_of_documentation_under_financial_services_law(Provider, Log).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_19').
provenance(log/1, 'celex:32024R1689/oj#art_19').
provenance(log_referred_in_art_12_par_1/1, 'celex:32024R1689/oj#art_19').
provenance(automatically_generated_by/2, 'celex:32024R1689/oj#art_19').
provenance(under_control_of/2, 'celex:32024R1689/oj#art_19').
provenance(retention_period_at_least/2, 'celex:32024R1689/oj#art_19').
provenance(required_retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').
provenance(part_of_documentation_under_financial_services_law/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_20').
declared(provider_considers_non_conformity/2, 'provider considers system not in conformity', 'celex:32024R1689/oj#art_20').
declared(provider_aware_of_risk/2, 'provider aware of risk presented by system', 'celex:32024R1689/oj#art_20').
declared(risk_present/1, 'risk presented by high‑risk AI system', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    provider_considers_non_conformity(P, S).
must_inform_distributor(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    distributor(D),
    D = D.
must_inform_deployer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    deployer(Dp),
    Dp = Dp.
must_inform_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    authorised_representative(AR),
    AR = AR.
must_inform_importer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    importer(I),
    I = I.
must_investigate_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S).
must_inform_market_surveillance_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S),
    market_surveillance_authority(MSA),
    MSA = MSA.
must_inform_notified_body(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S),
    notified_body(NB),
    NB = NB.
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
declared(reasoned_request/1, 'reasoned request by a competent authority', 'celex:32024R1689/oj#art_21').
declared(logs_under_control/2, 'logs of AI system under control of provider', 'celex:32024R1689/oj#art_21').
declared(obtained_under_art_21/2, 'information obtained by authority under article 21', 'celex:32024R1689/oj#art_21').
declared(confidentiality_obligation_applies/1, 'confidentiality obligations set out in article 78', 'celex:32024R1689/oj#art_21').
required_provide_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    reasoned_request(Authority),
    national_competent_authority(Authority).
required_provide_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    reasoned_request(Authority),
    national_competent_authority(Authority),
    logs_under_control(Provider, System).
required_confidential_handling(Authority, Information) :-
    national_competent_authority(Authority),
    obtained_under_art_21(Authority, Information),
    confidentiality_obligation_applies(Information).
provenance(required_provide_information/2, 'celex:32024R1689/oj#art_21').
provenance(required_provide_logs/2, 'celex:32024R1689/oj#art_21').
provenance(required_confidential_handling/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').

% ==== celex:32024R1689/oj#art_22 ====
declared(third_country_established/1, 'provider established in a third country', 'celex:32024R1689/oj#art_22').
declared(established_in_union/1, 'authorised representative established in the Union', 'celex:32024R1689/oj#art_22').
declared(high_risk_ai_system_provider/1, 'provider of a high‑risk AI system', 'celex:32024R1689/oj#art_22').
declared(mandate_received/2, 'mandate received by the authorised representative from the provider', 'celex:32024R1689/oj#art_22').
declared(acts_contrary/1, 'provider acting contrary to its obligations', 'celex:32024R1689/oj#art_22').
required_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    third_country_established(Provider),
    high_risk_ai_system_provider(Provider),
    authorised_representative(Representative),
    established_in_union(Representative).
required_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate_received(Provider, Representative).
required_perform_mandated_tasks(Representative) :-
    authorised_representative(Representative),
    mandate_received(_, Representative).
required_provide_copy_of_mandate(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).
required_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    acts_contrary(Provider).
required_inform_authority(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).
provenance(required_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(required_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(required_perform_mandated_tasks/1, 'celex:32024R1689/oj#art_22').
provenance(required_provide_copy_of_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(required_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(required_inform_authority/2, 'celex:32024R1689/oj#art_22').
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
declared(required_conformity_assessment_procedure_by_provider/2, 'importer must verify provider carried out conformity assessment', 'celex:32024R1689/oj#art_23').
declared(required_technical_documentation_by_provider/2, 'importer must verify provider drew up technical documentation', 'celex:32024R1689/oj#art_23').
declared(required_ce_marking_and_declaration/2, 'importer must verify system bears CE marking, EU declaration of conformity and instructions for use', 'celex:32024R1689/oj#art_23').
declared(required_authorised_representative_appointment_by_provider/2, 'importer must verify provider appointed an authorised representative', 'celex:32024R1689/oj#art_23').
declared(must_ensure_conformity_before_placing/2, 'importer must ensure conformity before placing high‑risk AI system on the market', 'celex:32024R1689/oj#art_23').
declared(prohibited_placing_on_market/2, 'importer prohibited from placing system on market when not in conformity', 'celex:32024R1689/oj#art_23').
declared(non_conformity_reason/2, 'importer has sufficient reason to consider system not in conformity or falsified', 'celex:32024R1689/oj#art_23').
declared(sufficient_reason/2, 'importer has sufficient reason', 'celex:32024R1689/oj#art_23').
declared(not_in_conformity/1, 'system not in conformity', 'celex:32024R1689/oj#art_23').
declared(falsified/1, 'system is falsified', 'celex:32024R1689/oj#art_23').
declared(falsified_documentation/1, 'documentation is falsified', 'celex:32024R1689/oj#art_23').
declared(risk_present/1, 'system presents a risk as defined in art 79 par 1', 'celex:32024R1689/oj#art_23').
declared(must_inform/5, 'importer shall inform provider, authorised representative and market surveillance authorities of risk', 'celex:32024R1689/oj#art_23').
declared(required_labeling_information/2, 'importer shall indicate name, trade name/mark and address on system and packaging', 'celex:32024R1689/oj#art_23').
declared(required_storage_transport_conditions/2, 'importer shall ensure storage/transport do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(required_record_keeping/2, 'importer shall keep copies of certificate, instructions for use and declaration for 10 years', 'celex:32024R1689/oj#art_23').
declared(required_provide_information/3, 'importer shall provide competent authorities with necessary information upon request', 'celex:32024R1689/oj#art_23').
declared(required_cooperate/3, 'importer shall cooperate with competent authorities', 'celex:32024R1689/oj#art_23').
must_ensure_conformity_before_placing(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    required_conformity_assessment_procedure_by_provider(Importer, System),
    required_technical_documentation_by_provider(Importer, System),
    required_ce_marking_and_declaration(Importer, System),
    required_authorised_representative_appointment_by_provider(Importer, System).
required_conformity_assessment_procedure_by_provider(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
required_technical_documentation_by_provider(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
required_ce_marking_and_declaration(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
required_authorised_representative_appointment_by_provider(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
prohibited_placing_on_market(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conformity_reason(Importer, System).
non_conformity_reason(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    sufficient_reason(Importer, System),
    (   not_in_conformity(System)
    ;   falsified(System)
    ;   falsified_documentation(System)
    ).
must_inform(Importer, Provider, Representative, Authority, System) :-
    importer(Importer),
    provider(Provider),
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    risk_present(System).
required_labeling_information(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
required_storage_transport_conditions(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
required_record_keeping(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
required_provide_information(Importer, Authority, System) :-
    importer(Importer),
    national_competent_authority(Authority),
    high_risk_ai_system(System).
required_cooperate(Importer, Authority, System) :-
    importer(Importer),
    national_competent_authority(Authority),
    high_risk_ai_system(System).
provenance(must_ensure_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(required_conformity_assessment_procedure_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_technical_documentation_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(required_authorised_representative_appointment_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(non_conformity_reason/2, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason/2, 'celex:32024R1689/oj#art_23').
provenance(not_in_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(falsified/1, 'celex:32024R1689/oj#art_23').
provenance(falsified_documentation/1, 'celex:32024R1689/oj#art_23').
provenance(risk_present/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform/5, 'celex:32024R1689/oj#art_23').
provenance(required_labeling_information/2, 'celex:32024R1689/oj#art_23').
provenance(required_storage_transport_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(required_record_keeping/2, 'celex:32024R1689/oj#art_23').
provenance(required_provide_information/3, 'celex:32024R1689/oj#art_23').
provenance(required_cooperate/3, 'celex:32024R1689/oj#art_23').
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
declared(ce_marked/1, 'system bears required CE marking', 'celex:32024R1689/oj#art_24').
declared(has_declaration_of_conformity/1, 'system accompanied by EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(has_instructions_for_use/1, 'system accompanied by instructions for use', 'celex:32024R1689/oj#art_24').
declared(provider_compliant/1, 'provider has complied with its obligations', 'celex:32024R1689/oj#art_24').
declared(importer_compliant/1, 'importer has complied with its obligations', 'celex:32024R1689/oj#art_24').
declared(not_conforming/1, 'system not in conformity with the requirements', 'celex:32024R1689/oj#art_24').
declared(has_reason_to_consider_not_conforming/2, 'distributor has reason to consider the system not in conformity', 'celex:32024R1689/oj#art_24').
declared(presents_risk/1, 'system presents a risk within the meaning of art 79 par 1', 'celex:32024R1689/oj#art_24').

% ==== celex:32024R1689/oj#art_25 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_25').
declared(third_party/1, 'any distributor, importer, deployer or other third‑party', 'celex:32024R1689/oj#art_25').
declared(name_or_trademark_put_on/2, 'actor puts its name or trademark on the AI system', 'celex:32024R1689/oj#art_25').
declared(modify_intended_purpose/2, 'actor modifies the intended purpose of the AI system', 'celex:32024R1689/oj#art_25').
declared(condition_a/2, 'actor puts name or trademark on a high‑risk AI system already placed on market or put into service', 'celex:32024R1689/oj#art_25').
declared(condition_b/2, 'actor makes a substantial modification to a high‑risk AI system already placed on market or put into service', 'celex:32024R1689/oj#art_25').
declared(condition_c/2, 'actor modifies intended purpose so that a non‑high‑risk AI system becomes high‑risk', 'celex:32024R1689/oj#art_25').
declared(required_considered_provider/2, 'actor is to be regarded as a provider of the high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(prohibited_considered_provider/2, 'initial provider is no longer regarded as provider of that AI system', 'celex:32024R1689/oj#art_25').
declared(required_cooperate_and_provide_information/2, 'initial provider must cooperate and provide technical information', 'celex:32024R1689/oj#art_25').
declared(condition_a_pm/2, 'product manufacturer puts name or trademark on high‑risk AI system placed on market', 'celex:32024R1689/oj#art_25').
declared(condition_b_pm/2, 'product manufacturer puts name or trademark on high‑risk AI system put into service after product placed on market', 'celex:32024R1689/oj#art_25').
declared(required_specify_information/2, 'provider and third‑party must specify necessary information, capabilities and technical access', 'celex:32024R1689/oj#art_25').
declared(exempt_specify_information/1, 'obligation does not apply to third‑parties providing open‑source tools, services, processes or components other than general‑purpose AI models', 'celex:32024R1689/oj#art_25').
declared(third_party_supplier/1, 'third‑party that supplies tools, services, components or processes used in a high‑risk AI system', 'celex:32024R1689/oj#art_25').
declared(free_and_open_source/1, 'third‑party makes its offering available under a free and open‑source licence', 'celex:32024R1689/oj#art_25').
declared(initial_provider/2, 'entity that initially placed the AI system on the market or put it into service', 'celex:32024R1689/oj#art_25').
condition_a(Actor, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    name_or_trademark_put_on(Actor, System).
condition_b(Actor, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    substantial_modification(System),
    high_risk_ai_system(System).
condition_c(Actor, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    modify_intended_purpose(Actor, System),
    high_risk_ai_system(System).
required_considered_provider(Actor, System) :-
    (distributor(Actor) ; importer(Actor) ; deployer(Actor) ; third_party(Actor)),
    high_risk_ai_system(System),
    (condition_a(Actor, System) ; condition_b(Actor, System) ; condition_c(Actor, System)).
prohibited_considered_provider(InitialProvider, System) :-
    initial_provider(InitialProvider, System),
    required_considered_provider(_, System).
required_cooperate_and_provide_information(InitialProvider, System) :-
    initial_provider(InitialProvider, System),
    required_considered_provider(_, System).
condition_a_pm(PM, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    name_or_trademark_put_on(PM, System).
condition_b_pm(PM, System) :-
    putting_into_service(System),
    name_or_trademark_put_on(PM, System).
required_considered_provider(PM, System) :-
    product_manufacturer(PM),
    high_risk_ai_system(System),
    (condition_a_pm(PM, System) ; condition_b_pm(PM, System)).
required_specify_information(Provider, ThirdParty) :-
    provider(Provider),
    third_party_supplier(ThirdParty),
    \+ exempt_specify_information(ThirdParty).
exempt_specify_information(ThirdParty) :-
    free_and_open_source(ThirdParty),
    \+ general_purpose_ai_model(ThirdParty).
provenance(required_considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(condition_a/2, 'celex:32024R1689/oj#art_25').
provenance(condition_b/2, 'celex:32024R1689/oj#art_25').
provenance(condition_c/2, 'celex:32024R1689/oj#art_25').
provenance(prohibited_considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(required_cooperate_and_provide_information/2, 'celex:32024R1689/oj#art_25').
provenance(condition_a_pm/2, 'celex:32024R1689/oj#art_25').
provenance(condition_b_pm/2, 'celex:32024R1689/oj#art_25').
provenance(required_specify_information/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_specify_information/1, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

% ==== celex:32024R1689/oj#art_26 ====
declared(must_take_measures/2, 'deployer must take appropriate technical and organisational measures', 'celex:32024R1689/oj#art_26').
declared(must_ensure_use_in_accordance_with_instructions/2, 'deployer must ensure use in accordance with instructions for use', 'celex:32024R1689/oj#art_26').
declared(required_human_oversight_assignment/3, 'deployer must assign human oversight to competent natural persons', 'celex:32024R1689/oj#art_26').
declared(natural_person/1, 'natural person', 'celex:32024R1689/oj#art_26').
declared(input_data_control_applies/2, 'deployer exercises control over input data', 'celex:32024R1689/oj#art_26').
declared(required_input_data_representativeness/2, 'deployer must ensure input data is relevant and sufficiently representative', 'celex:32024R1689/oj#art_26').
declared(input_data_relevant_and_representative/1, 'input data is relevant and sufficiently representative', 'celex:32024R1689/oj#art_26').
declared(must_monitor_operation/2, 'deployer must monitor operation of the system', 'celex:32024R1689/oj#art_26').
declared(must_inform_provider_if_risk/2, 'deployer must inform provider if risk is identified', 'celex:32024R1689/oj#art_26').
declared(must_suspend_use_if_risk/2, 'deployer must suspend use if risk is identified', 'celex:32024R1689/oj#art_26').
declared(must_inform_authorities_of_serious_incident/2, 'deployer must inform authorities of a serious incident', 'celex:32024R1689/oj#art_26').
declared(must_keep_logs/2, 'deployer must keep logs for at least six months', 'celex:32024R1689/oj#art_26').
declared(employer/1, 'employer', 'celex:32024R1689/oj#art_26').
declared(must_inform_workers/2, 'employer must inform workers and their representatives', 'celex:32024R1689/oj#art_26').
declared(public_authority/1, 'public authority, Union institution, body, office or agency', 'celex:32024R1689/oj#art_26').
declared(prohibited_use_unregistered_system/2, 'public authority must not use an unregistered high‑risk AI system', 'celex:32024R1689/oj#art_26').
declared(must_inform_provider_unregistered/2, 'public authority must inform provider or distributor of unregistered system', 'celex:32024R1689/oj#art_26').
declared(required_data_protection_impact_assessment/2, 'deployer must carry out a data‑protection impact assessment', 'celex:32024R1689/oj#art_26').
declared(information_provided_under_art_13/1, 'information provided under article 13', 'celex:32024R1689/oj#art_26').
declared(required_authorisation_request/2, 'deployer must request authorisation for post‑remote biometric identification', 'celex:32024R1689/oj#art_26').
declared(authorisation_obtained/2, 'authorisation has been obtained', 'celex:32024R1689/oj#art_26').
declared(within_48_hours/2, 'authorisation request made within 48 hours', 'celex:32024R1689/oj#art_26').
declared(must_stop_use_if_authorisation_rejected/2, 'deployer must stop use if authorisation is rejected', 'celex:32024R1689/oj#art_26').
declared(authorisation_rejected/2, 'authorisation request was rejected', 'celex:32024R1689/oj#art_26').
declared(prohibited_untargeted_law_enforcement_use/2, 'post‑remote biometric identification must not be used for untargeted law‑enforcement purposes', 'celex:32024R1689/oj#art_26').
declared(law_enforcement_use_untargeted/2, 'use is untargeted law‑enforcement', 'celex:32024R1689/oj#art_26').
declared(required_documentation/2, 'deployer must document each use', 'celex:32024R1689/oj#art_26').
declared(required_annual_report/2, 'deployer must submit annual reports', 'celex:32024R1689/oj#art_26').
declared(required_inform_natural_persons/2, 'deployer must inform natural persons that they are subject to the system', 'celex:32024R1689/oj#art_26').
declared(natural_person_affected/1, 'natural person affected by the system', 'celex:32024R1689/oj#art_26').
declared(must_cooperate_with_authorities/2, 'deployer must cooperate with competent authorities', 'celex:32024R1689/oj#art_26').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_26').
declared(risk_of_system/1, 'risk associated with the system', 'celex:32024R1689/oj#art_26').
declared(registered_in_eu_database/1, 'system is registered in the EU database', 'celex:32024R1689/oj#art_26').
must_take_measures(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_ensure_use_in_accordance_with_instructions(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    instructions_for_use(S).
required_human_oversight_assignment(Deployer, S, Person) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    natural_person(Person).
input_data_control_applies(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S).
required_input_data_representativeness(Deployer, S) :-
    input_data_control_applies(Deployer, S),
    input_data_relevant_and_representative(S).
must_monitor_operation(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_inform_provider_if_risk(Deployer, S) :-
    must_monitor_operation(Deployer, S),
    risk_of_system(S).
must_suspend_use_if_risk(Deployer, S) :-
    must_inform_provider_if_risk(Deployer, S).
must_inform_authorities_of_serious_incident(Deployer, S) :-
    serious_incident(S),
    deployer(Deployer).
must_keep_logs(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S).
must_inform_workers(Deployer, S) :-
    employer(Deployer),
    high_risk_ai_system(S).
prohibited_use_unregistered_system(Deployer, S) :-
    public_authority(Deployer),
    high_risk_ai_system(S),
    \+ registered_in_eu_database(S).
must_inform_provider_unregistered(Deployer, S) :-
    prohibited_use_unregistered_system(Deployer, S).
required_data_protection_impact_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    information_provided_under_art_13(S).
required_authorisation_request(Deployer, S) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(S),
    \+ authorisation_obtained(Deployer, S),
    within_48_hours(Deployer, S).
must_stop_use_if_authorisation_rejected(Deployer, S) :-
    required_authorisation_request(Deployer, S),
    authorisation_rejected(Deployer, S).
prohibited_untargeted_law_enforcement_use(Deployer, S) :-
    post_remote_biometric_identification_system(S),
    law_enforcement_use_untargeted(Deployer, S).
required_documentation(Deployer, S) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(S).
required_annual_report(Deployer, S) :-
    deployer(Deployer),
    post_remote_biometric_identification_system(S).
required_inform_natural_persons(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    natural_person_affected(S).
must_cooperate_with_authorities(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S).
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(required_human_oversight_assignment/3, 'celex:32024R1689/oj#art_26').
provenance(natural_person/1, 'celex:32024R1689/oj#art_26').
provenance(input_data_control_applies/2, 'celex:32024R1689/oj#art_26').
provenance(required_input_data_representativeness/2, 'celex:32024R1689/oj#art_26').
provenance(input_data_relevant_and_representative/1, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_if_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use_if_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_authorities_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(employer/1, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
provenance(public_authority/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_provider_unregistered/2, 'celex:32024R1689/oj#art_26').
provenance(required_data_protection_impact_assessment/2, 'celex:32024R1689/oj#art_26').
provenance(information_provided_under_art_13/1, 'celex:32024R1689/oj#art_26').
provenance(required_authorisation_request/2, 'celex:32024R1689/oj#art_26').
provenance(authorisation_obtained/2, 'celex:32024R1689/oj#art_26').
provenance(within_48_hours/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_if_authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
provenance(authorisation_rejected/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_law_enforcement_use/2, 'celex:32024R1689/oj#art_26').
provenance(law_enforcement_use_untargeted/2, 'celex:32024R1689/oj#art_26').
provenance(required_documentation/2, 'celex:32024R1689/oj#art_26').
provenance(required_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(required_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
provenance(natural_person_affected/1, 'celex:32024R1689/oj#art_26').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_26').
provenance(risk_of_system/1, 'celex:32024R1689/oj#art_26').
provenance(registered_in_eu_database/1, 'celex:32024R1689/oj#art_26').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_27').
declared(public_law_body/1, 'deployer that is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_public_service/1, 'private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(excluded_intended_use_area/1, 'high‑risk AI system intended to be used in the excluded area', 'celex:32024R1689/oj#art_27').
declared(previous_assessment_available/2, 'previous fundamental rights impact assessment is available for the deployer and system', 'celex:32024R1689/oj#art_27').
declared(element_changed/2, 'deployer considers an element of the assessment has changed or is outdated', 'celex:32024R1689/oj#art_27').
declared(case_art_46_par_1_applies/2, 'the case listed in art 46 paragraph 1 applies to the deployer and system', 'celex:32024R1689/oj#art_27').
declared(must_assess_fundamental_rights_impact/2, 'deployer must perform a fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(permitted_rely_on_previous_assessment/2, 'deployer may rely on a previously conducted assessment', 'celex:32024R1689/oj#art_27').
declared(must_update_fundamental_rights_assessment/2, 'deployer must update the fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority/2, 'deployer must notify the market surveillance authority of the assessment results', 'celex:32024R1689/oj#art_27').
declared(exempt_notify_market_surveillance_authority/2, 'deployer is exempt from the notification obligation', 'celex:32024R1689/oj#art_27').
declared(must_develop_template/2, 'AI Office must develop a template questionnaire', 'celex:32024R1689/oj#art_27').
must_assess_fundamental_rights_impact(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    (   public_law_body(Deployer)
    ;   private_entity_public_service(Deployer)
    ),
    \+ excluded_intended_use_area(System).
permitted_rely_on_previous_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    previous_assessment_available(Deployer, System).
must_update_fundamental_rights_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    element_changed(Deployer, System).
must_notify_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ exempt_notify_market_surveillance_authority(Deployer, System).
exempt_notify_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    case_art_46_par_1_applies(Deployer, System).
must_develop_template(ai_office, fundamental_rights_impact_assessment_template).
provenance(must_assess_fundamental_rights_impact/2, 'celex:32024R1689/oj#art_27').
provenance(permitted_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop_template/2, 'celex:32024R1689/oj#art_27').
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
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(must_designate_or_establish_notifying_authority/2, 'Member State must designate or establish a notifying authority', 'celex:32024R1689/oj#art_28').
declared(prohibited_conflict_of_interest/1, 'Conflict of interest must not arise for notifying authorities', 'celex:32024R1689/oj#art_28').
declared(required_objectivity_and_impartiality/1, 'Objectivity and impartiality of activities of notifying authorities must be safeguarded', 'celex:32024R1689/oj#art_28').
declared(required_separation_of_assessment_and_decision/1, 'Decisions on notification must be taken by persons different from assessors', 'celex:32024R1689/oj#art_28').
declared(prohibited_assessment_activities_provision/1, 'Notifying authorities must not provide activities performed by conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(prohibited_commercial_consultancy/1, 'Notifying authorities must not offer consultancy services on a commercial or competitive basis', 'celex:32024R1689/oj#art_28').
declared(required_confidentiality/1, 'Notifying authorities must safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(must_have_competent_personnel/1, 'Notifying authorities must have an adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
must_designate_or_establish_notifying_authority(_MemberState, Authority) :-
    notifying_authority(Authority).
prohibited_conflict_of_interest(Authority) :-
    notifying_authority(Authority).
required_objectivity_and_impartiality(Authority) :-
    notifying_authority(Authority).
required_separation_of_assessment_and_decision(Authority) :-
    notifying_authority(Authority).
prohibited_assessment_activities_provision(Authority) :-
    notifying_authority(Authority).
prohibited_commercial_consultancy(Authority) :-
    notifying_authority(Authority).
required_confidentiality(Authority) :-
    notifying_authority(Authority).
must_have_competent_personnel(Authority) :-
    notifying_authority(Authority).
provenance(must_designate_or_establish_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(required_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_assessment_and_decision/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_assessment_activities_provision/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_consultancy/1, 'celex:32024R1689/oj#art_28').
provenance(required_confidentiality/1, 'celex:32024R1689/oj#art_28').
provenance(must_have_competent_personnel/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application/2, 'conformity assessment body must submit notification application to the appropriate authority', 'celex:32024R1689/oj#art_29').
must_submit_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).
declared(required_accompanying_documents/1, 'application must be accompanied by description of activities, modules, AI system types and accreditation certificate if available', 'celex:32024R1689/oj#art_29').
required_accompanying_documents(Body) :-
    must_submit_application(Body, _Authority).
declared(accreditation_certificate_exists/1, 'accreditation certificate issued by a national accreditation body exists for the conformity assessment body', 'celex:32024R1689/oj#art_29').
declared(must_provide_accreditation_certificate/2, 'conformity assessment body must provide accreditation certificate when it exists', 'celex:32024R1689/oj#art_29').
must_provide_accreditation_certificate(Body, Authority) :-
    must_submit_application(Body, Authority),
    accreditation_certificate_exists(Body).
declared(must_provide_documentary_evidence/2, 'conformity assessment body must provide documentary evidence when accreditation certificate is not available', 'celex:32024R1689/oj#art_29').
must_provide_documentary_evidence(Body, Authority) :-
    must_submit_application(Body, Authority),
    \+ accreditation_certificate_exists(Body).
declared(required_designation_documents/1, 'application must include any valid documents related to existing designations under other Union legislation', 'celex:32024R1689/oj#art_29').
required_designation_documents(Body) :-
    must_submit_application(Body, _Authority).
declared(designated_under_other_legislation/1, 'conformity assessment body is designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(permitted_use_designation_documents/1, 'designated bodies may use documents and certificates linked to other designations to support their designation procedure', 'celex:32024R1689/oj#art_29').
permitted_use_designation_documents(Body) :-
    designated_under_other_legislation(Body).
declared(relevant_changes_occur/1, 'relevant changes occur affecting the documentation of the conformity assessment body', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/1, 'notified body shall update documentation whenever relevant changes occur', 'celex:32024R1689/oj#art_29').
must_update_documentation(Body) :-
    must_submit_application(Body, _Authority),
    relevant_changes_occur(Body).
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(required_accompanying_documents/1, 'celex:32024R1689/oj#art_29').
provenance(accreditation_certificate_exists/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_accreditation_certificate/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(required_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(relevant_changes_occur/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(permitted_notify_conformity_assessment_body/2, 'permission for a notifying authority to notify a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify_commission/2, 'obligation of a notifying authority to notify the Commission about a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify_member_state/3, 'obligation of a notifying authority to notify a Member State about a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_provide_evidence/2, 'obligation of a notifying authority to provide documentary evidence when no accreditation certificate is present', 'celex:32024R1689/oj#art_30').
declared(accreditation_certificate/1, 'accreditation certificate confirming competence of a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(no_objection_within_two_weeks/1, 'no objection raised by the Commission or Member States within two weeks', 'celex:32024R1689/oj#art_30').
declared(no_objection_within_two_months/1, 'no objection raised by the Commission or Member States within two months', 'celex:32024R1689/oj#art_30').
declared(permitted_perform_notified_body_activities/1, 'permission for a conformity assessment body to perform the activities of a notified body', 'celex:32024R1689/oj#art_30').
declared(objection_raised/2, 'objection raised by the Commission or a Member State concerning a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_consult/3, 'obligation of the Commission to consult with Member States and the conformity assessment body when an objection is raised', 'celex:32024R1689/oj#art_30').
declared(must_decide_authorisation/2, 'obligation of the Commission to decide whether authorisation is justified', 'celex:32024R1689/oj#art_30').
declared(must_address_decision/3, 'obligation of the Commission to address its decision to the concerned Member State and conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(member_state/1, 'a Member State of the Union', 'celex:32024R1689/oj#art_30').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_30').
permitted_notify_conformity_assessment_body(Authority, Body) :-
    notifying_authority(Authority),
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).
must_notify_commission(Authority, Body) :-
    notifying_authority(Authority),
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).
must_notify_member_state(Authority, MemberState, Body) :-
    notifying_authority(Authority),
    notifying_authority(Authority),
    member_state(MemberState),
    member_state(MemberState),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).
must_provide_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).
permitted_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    accreditation_certificate(Body),
    no_objection_within_two_weeks(Body).
permitted_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body),
    no_objection_within_two_months(Body).
must_consult(Commission, MemberState, Body) :-
    objection_raised(Commission, Body),
    commission(Commission),
    member_state(MemberState),
    member_state(MemberState).
must_decide_authorisation(Commission, Body) :-
    objection_raised(Commission, Body),
    commission(Commission).
must_address_decision(Commission, MemberState, Body) :-
    objection_raised(Commission, Body),
    commission(Commission),
    member_state(MemberState),
    member_state(MemberState).
provenance(permitted_notify_conformity_assessment_body/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_member_state/3, 'celex:32024R1689/oj#art_30').
provenance(must_provide_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult/3, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
provenance(must_address_decision/3, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(required_establishment/1, 'must be established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(required_legal_personality/1, 'must have legal personality', 'celex:32024R1689/oj#art_31').
declared(required_organisational_requirements/1, 'must satisfy organisational requirements', 'celex:32024R1689/oj#art_31').
declared(required_quality_management_requirements/1, 'must satisfy quality‑management requirements', 'celex:32024R1689/oj#art_31').
declared(required_resources_requirements/1, 'must satisfy resources requirements', 'celex:32024R1689/oj#art_31').
declared(required_process_requirements/1, 'must satisfy process requirements', 'celex:32024R1689/oj#art_31').
declared(required_cybersecurity_requirements/1, 'must satisfy suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(required_independence_from_provider/1, 'must be independent of the provider of a high‑risk AI system', 'celex:32024R1689/oj#art_31').
declared(required_independence_from_operator/1, 'must be independent of any other operator having an economic interest', 'celex:32024R1689/oj#art_31').
declared(required_independence_from_competitor/1, 'must be independent of any competitor of the provider', 'celex:32024R1689/oj#art_31').
declared(permitted_use_of_assessed_systems_for_operations/1, 'may use assessed high‑risk AI systems necessary for its own operations', 'celex:32024R1689/oj#art_31').
declared(permitted_use_of_assessed_systems_for_personal_purposes/1, 'may use assessed high‑risk AI systems for personal purposes', 'celex:32024R1689/oj#art_31').
declared(prohibited_direct_involvement_in_design/1, 'shall not be directly involved in design of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_direct_involvement_in_development/1, 'shall not be directly involved in development of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_direct_involvement_in_marketing/1, 'shall not be directly involved in marketing of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_direct_involvement_in_use/1, 'shall not be directly involved in use of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(prohibited_conflict_of_interest/1, 'shall not engage in any activity that might conflict with independence of judgement or integrity', 'celex:32024R1689/oj#art_31').
declared(required_impartiality/1, 'shall safeguard independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(required_confidentiality_procedures/1, 'shall have documented procedures ensuring confidentiality of information', 'celex:32024R1689/oj#art_31').
declared(required_liability_insurance/1, 'shall take out appropriate liability insurance', 'celex:32024R1689/oj#art_31').
declared(required_competence/1, 'shall have sufficient internal competences and permanent availability of qualified personnel', 'celex:32024R1689/oj#art_31').
declared(required_participation_in_coordination/1, 'shall participate in coordination activities and European standardisation organisations', 'celex:32024R1689/oj#art_31').
declared(under_national_law/1, 'established under the national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(has_legal_personality/1, 'has legal personality', 'celex:32024R1689/oj#art_31').
declared(meets_organisational_requirements/1, 'meets organisational requirements', 'celex:32024R1689/oj#art_31').
declared(meets_quality_management_requirements/1, 'meets quality‑management requirements', 'celex:32024R1689/oj#art_31').
declared(meets_resources_requirements/1, 'meets resources requirements', 'celex:32024R1689/oj#art_31').
declared(meets_process_requirements/1, 'meets process requirements', 'celex:32024R1689/oj#art_31').
declared(meets_cybersecurity_requirements/1, 'meets suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider/1, 'independent of the provider of a high‑risk AI system', 'celex:32024R1689/oj#art_31').
declared(independent_of_operator/1, 'independent of any other operator having an economic interest', 'celex:32024R1689/oj#art_31').
declared(independent_of_competitor/1, 'independent of any competitor of the provider', 'celex:32024R1689/oj#art_31').
declared(uses_assessed_systems_for_operations/1, 'uses assessed high‑risk AI systems necessary for its operations', 'celex:32024R1689/oj#art_31').
declared(uses_assessed_systems_for_personal_purposes/1, 'uses assessed high‑risk AI systems for personal purposes', 'celex:32024R1689/oj#art_31').
declared(involved_in_design/1, 'directly involved in design of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(involved_in_development/1, 'directly involved in development of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(involved_in_marketing/1, 'directly involved in marketing of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(involved_in_use/1, 'directly involved in use of high‑risk AI systems', 'celex:32024R1689/oj#art_31').
declared(conflict_of_interest/1, 'engages in activity that might conflict with independence or integrity', 'celex:32024R1689/oj#art_31').
declared(impartiality_documented/1, 'has documented structure and procedures to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(confidentiality_procedures_in_place/1, 'has documented confidentiality procedures', 'celex:32024R1689/oj#art_31').
declared(liability_insurance_taken/1, 'has taken out appropriate liability insurance', 'celex:32024R1689/oj#art_31').
declared(sufficient_competence/1, 'has sufficient internal competences and permanent qualified personnel', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination/1, 'participates in coordination activities and standardisation organisations', 'celex:32024R1689/oj#art_31').
required_establishment(NB) :-
    notified_body(NB),
    under_national_law(NB).
required_legal_personality(NB) :-
    notified_body(NB),
    has_legal_personality(NB).
required_organisational_requirements(NB) :-
    notified_body(NB),
    meets_organisational_requirements(NB).
required_quality_management_requirements(NB) :-
    notified_body(NB),
    meets_quality_management_requirements(NB).
required_resources_requirements(NB) :-
    notified_body(NB),
    meets_resources_requirements(NB).
required_process_requirements(NB) :-
    notified_body(NB),
    meets_process_requirements(NB).
required_cybersecurity_requirements(NB) :-
    notified_body(NB),
    meets_cybersecurity_requirements(NB).
required_independence_from_provider(NB) :-
    notified_body(NB),
    independent_of_provider(NB).
required_independence_from_operator(NB) :-
    notified_body(NB),
    independent_of_operator(NB).
required_independence_from_competitor(NB) :-
    notified_body(NB),
    independent_of_competitor(NB).
permitted_use_of_assessed_systems_for_operations(NB) :-
    notified_body(NB),
    uses_assessed_systems_for_operations(NB).
permitted_use_of_assessed_systems_for_personal_purposes(NB) :-
    notified_body(NB),
    uses_assessed_systems_for_personal_purposes(NB).
prohibited_direct_involvement_in_design(NB) :-
    notified_body(NB),
    involved_in_design(NB).
prohibited_direct_involvement_in_development(NB) :-
    notified_body(NB),
    involved_in_development(NB).
prohibited_direct_involvement_in_marketing(NB) :-
    notified_body(NB),
    involved_in_marketing(NB).
prohibited_direct_involvement_in_use(NB) :-
    notified_body(NB),
    involved_in_use(NB).
prohibited_conflict_of_interest(NB) :-
    notified_body(NB),
    conflict_of_interest(NB).
required_impartiality(NB) :-
    notified_body(NB),
    impartiality_documented(NB).
required_confidentiality_procedures(NB) :-
    notified_body(NB),
    confidentiality_procedures_in_place(NB).
required_liability_insurance(NB) :-
    notified_body(NB),
    liability_insurance_taken(NB).
required_competence(NB) :-
    notified_body(NB),
    sufficient_competence(NB).
required_participation_in_coordination(NB) :-
    notified_body(NB),
    participates_in_coordination(NB).
provenance(required_establishment/1, 'celex:32024R1689/oj#art_31').
provenance(required_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(required_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_resources_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_provider/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_operator/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_competitor/1, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_systems_for_operations/1, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_systems_for_personal_purposes/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_design/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_development/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_marketing/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_use/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(required_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(required_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(required_competence/1, 'celex:32024R1689/oj#art_31').
provenance(required_participation_in_coordination/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_32 ====
declared(demonstrates_conformity/2, 'conformity assessment body demonstrates its conformity with the criteria laid down in a harmonised standard', 'celex:32024R1689/oj#art_32').
declared(published_in_official_journal/1, 'harmonised standard whose references have been published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_32').
declared(covers_requirements/2, 'harmonised standard covers a requirement set out in Article 31', 'celex:32024R1689/oj#art_32').
declared(requirement_in_art_31/1, 'requirement set out in Article 31', 'celex:32024R1689/oj#art_32').
declared(presumed_compliant/1, 'conformity assessment body is presumed to comply with the requirements of Article 31', 'celex:32024R1689/oj#art_32').
presumed_compliant(CAB) :-
    conformity_assessment_body(CAB),
    demonstrates_conformity(CAB, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    covers_requirements(Standard, Requirement),
    requirement_in_art_31(Requirement).
provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity/2, 'celex:32024R1689/oj#art_32').
provenance(published_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_32').
provenance(requirement_in_art_31/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontracting_task/2, 'notified body subcontracts specific tasks connected with conformity assessment to subcontractor', 'celex:32024R1689/oj#art_33').
declared(subsidiary_used/2, 'notified body has recourse to a subsidiary', 'celex:32024R1689/oj#art_33').
declared(agreement_of_provider/3, 'provider agrees to subcontracting or subsidiary activity', 'celex:32024R1689/oj#art_33').
declared(meets_requirements_of_art_31/1, 'entity meets the requirements laid down in article 31', 'celex:32024R1689/oj#art_33').
declared(document_retention_five_years/1, 'documents kept for five years from termination of subcontracting', 'celex:32024R1689/oj#art_33').
must_ensure_requirements_met(NB, Sub) :-
    notified_body(NB),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ),
    meets_requirements_of_art_31(Sub).
must_inform(Authority, NB) :-
    notifying_authority(Authority),
    notified_body(NB),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ).
must_take_full_responsibility(NB, Sub) :-
    notified_body(NB),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ).
permitted_subcontracting(NB, Sub) :-
    provider(P),
    agreement_of_provider(P, NB, Sub),
    subcontracting_task(NB, Sub).
permitted_subsidiary_activity(NB, Sub) :-
    provider(P),
    agreement_of_provider(P, NB, Sub),
    subsidiary_used(NB, Sub).
must_make_list_publicly_available(NB) :-
    notified_body(NB).
must_keep_documents_at_disposal(Authority, Sub) :-
    notifying_authority(Authority),
    (   subcontracting_task(NB, Sub)
    ;   subsidiary_used(NB, Sub)
    ),
    document_retention_five_years(Sub).
provenance(must_ensure_requirements_met/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subsidiary_activity/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_documents_at_disposal/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(high_risk/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_34').
must_verify_conformity(NB, S) :-
    notified_body(NB),
    high_risk(S).
must_avoid_unnecessary_burdens(NB, P) :-
    notified_body(NB),
    provider(P).
must_take_due_account(NB, P, S) :-
    notified_body(NB),
    provider(P),
    high_risk(S).
must_respect_rigour_and_protection(NB, S) :-
    notified_body(NB),
    high_risk(S).
must_make_available_and_submit_documentation(NB, A, S) :-
    notified_body(NB),
    notifying_authority(A),
    high_risk(S).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account/3, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_and_submit_documentation/3, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_35').
required_identification_number(C, B) :-
    commission(C),
    notified_body(B).
required_publicly_available_notified_body_list(C) :-
    commission(C).
provenance(required_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(required_publicly_available_notified_body_list/1, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify/2, 'obligation of a notifying authority to inform about a change to the notification of a notified body', 'celex:32024R1689/oj#art_36').
declared(change_extension_of_scope/1, 'change that extends the scope of the notification of a notified body', 'celex:32024R1689/oj#art_36').
declared(change_other_than_extension/1, 'change to the notification of a notified body that is not an extension of its scope', 'celex:32024R1689/oj#art_36').
declared(required_procedure_applies/2, 'procedures that apply to a given change of notification', 'celex:32024R1689/oj#art_36').
declared(ceasing_conformity_assessment/1, 'condition that a notified body decides to cease its conformity assessment activities', 'celex:32024R1689/oj#art_36').
declared(must_inform/2, 'obligation of an actor to inform another party', 'celex:32024R1689/oj#art_36').
declared(planned_cessation/1, 'condition that a cessation of activities is planned', 'celex:32024R1689/oj#art_36').
declared(required_notice_before_cessation/2, 'required notice period before a planned cessation', 'celex:32024R1689/oj#art_36').
declared(ceased/1, 'condition that a notified body has ceased its conformity assessment activities', 'celex:32024R1689/oj#art_36').
declared(another_notified_body_assumed/2, 'another notified body has confirmed in writing that it will assume responsibilities for the high‑risk AI systems covered by the certificates', 'celex:32024R1689/oj#art_36').
declared(certificate/1, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_36').
declared(covered_by_certificate/2, 'high‑risk AI system covered by a certificate', 'celex:32024R1689/oj#art_36').
declared(permitted_certificate_validity/1, 'permission for a certificate to remain valid under specific conditions', 'celex:32024R1689/oj#art_36').
declared(reason_to_consider/1, 'sufficient reason for a notifying authority to consider that a notified body no longer meets the requirements or fails its obligations', 'celex:32024R1689/oj#art_36').
declared(must_investigate/2, 'obligation of a notifying authority to investigate a notified body', 'celex:32024R1689/oj#art_36').
declared(required_designation_action/2, 'designation action (restrict, suspend, withdraw) that a notifying authority must take', 'celex:32024R1689/oj#art_36').
declared(must_withdraw_designation/2, 'obligation of a notifying authority to withdraw the designation of a ceased notified body', 'celex:32024R1689/oj#art_36').
declared(designation_status/2, 'current status of a notified body designation', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact/1, 'obligation of a notifying authority to assess the impact on certificates', 'celex:32024R1689/oj#art_36').
declared(must_submit_report/2, 'obligation of a notifying authority to submit a report to the Commission and other Member States', 'celex:32024R1689/oj#art_36').
declared(must_require_certificate_action/3, 'obligation of a notifying authority to require a notified body to suspend or withdraw certificates', 'celex:32024R1689/oj#art_36').
declared(must_provide_information/3, 'obligation of a notifying authority to provide relevant information to the national competent authority', 'celex:32024R1689/oj#art_36').
declared(must_ensure_files_kept/2, 'obligation of a notifying authority to keep the files of a notified body', 'celex:32024R1689/oj#art_36').
declared(must_make_files_available/2, 'obligation of a notifying authority to make the files of a notified body available on request', 'celex:32024R1689/oj#art_36').
declared(permitted_extend_provisional_validity/2, 'permission to extend the provisional validity of certificates under specific circumstances', 'celex:32024R1689/oj#art_36').
must_notify(Authority, notification_change_of_notified_body(NB)) :-
    notifying_authority(Authority),
    notified_body(NB).
required_procedure_applies(Change, procedure_art_29_30) :-
    change_extension_of_scope(Change).
required_procedure_applies(Change, procedure_art_36_par_3_9) :-
    change_other_than_extension(Change).
change_extension_of_scope(notification_extension_of_scope(NB)) :-
    notified_body(NB).
change_other_than_extension(notification_other_change(NB)) :-
    notified_body(NB).
must_inform(NB, notifying_authority) :-
    notified_body(NB),
    ceasing_conformity_assessment(NB).
must_inform(NB, Provider) :-
    notified_body(NB),
    ceasing_conformity_assessment(NB),
    provider(Provider).
required_notice_before_cessation(NB, one_year) :-
    notified_body(NB),
    planned_cessation(NB).
permitted_certificate_validity(Certificate) :-
    certificate(Certificate),
    notified_body(NB),
    ceased(NB),
    another_notified_body_assumed(OtherNB, NB),
    covered_by_certificate(System, Certificate),
    high_risk_ai_system(System).
must_withdraw_designation(Authority, NB) :-
    notifying_authority(Authority),
    ceased(NB).
must_investigate(Authority, NB) :-
    notifying_authority(Authority),
    reason_to_consider(NB).
must_inform(Authority, NB) :-
    notifying_authority(Authority),
    reason_to_consider(NB).
required_designation_action(NB, restrict) :-
    notifying_authority(Authority),
    reason_to_consider(NB),
    seriousness(high).
required_designation_action(NB, suspend) :-
    notifying_authority(Authority),
    reason_to_consider(NB),
    seriousness(medium).
required_designation_action(NB, withdraw) :-
    notifying_authority(Authority),
    reason_to_consider(NB),
    seriousness(critical).
must_assess_impact(Authority) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).
must_submit_report(Authority, report_designation_change(NB)) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).
must_require_certificate_action(Authority, NB, Action) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn),
    member(Action, [suspend, withdraw]).
must_provide_information(Authority, NationalCompetentAuthority, Info) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn),
    provider(Provider),
    Info = certificate_information(NB, Provider).
must_ensure_files_kept(Authority, NB) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).
must_make_files_available(Authority, NB) :-
    notifying_authority(Authority),
    designation_status(NB, restricted_or_suspended_or_withdrawn).
permitted_extend_provisional_validity(Certificate, ExtensionPeriod) :-
    certificate(Certificate),
    designation_status(NB, withdrawn),
    ExtensionPeriod = three_months,
    total_extension_not_exceeding_twelve_months(NB).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(required_procedure_applies/2, 'celex:32024R1689/oj#art_36').
provenance(change_extension_of_scope/1, 'celex:32024R1689/oj#art_36').
provenance(change_other_than_extension/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(required_notice_before_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(permitted_certificate_validity/1, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(required_designation_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/1, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_certificate_action/3, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_files_available/2, 'celex:32024R1689/oj#art_36').
provenance(permitted_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
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
declared(competence_doubt_applies/1, 'reasons to doubt the competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(notifying_authority/1, 'national authority responsible for notifying bodies', 'celex:32024R1689/oj#art_37').
declared(request_made/2, 'request for information made by a party to another', 'celex:32024R1689/oj#art_37').
declared(relevant_information/2, 'information relating to the notification or competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(sensitive_information/1, 'information obtained in the course of investigations that is sensitive', 'celex:32024R1689/oj#art_37').
declared(obtained_in_investigation/1, 'information obtained during a Commission investigation', 'celex:32024R1689/oj#art_37').
declared(requirements_not_met_applies/1, 'a notified body does not meet or no longer meets the requirements for its notification', 'celex:32024R1689/oj#art_37').
declared(member_state_fails_to_correct/1, 'the notifying Member State fails to take the necessary corrective measures', 'celex:32024R1689/oj#art_37').
must_investigate(commission, NB) :-
    notified_body(NB),
    competence_doubt_applies(NB).
must_provide_information(NA, commission, Info) :-
    notifying_authority(NA),
    request_made(commission, NA),
    relevant_information(Info, NA).
must_treat_confidentially(commission, Info) :-
    sensitive_information(Info),
    obtained_in_investigation(Info).
must_inform(commission, member_state, NB) :-
    notified_body(NB),
    requirements_not_met_applies(NB).
must_request_corrective_measures(commission, member_state, NB) :-
    notified_body(NB),
    requirements_not_met_applies(NB).
permitted_suspend_designation(commission, NB) :-
    notified_body(NB),
    member_state_fails_to_correct(NB).
permitted_restrict_designation(commission, NB) :-
    notified_body(NB),
    member_state_fails_to_correct(NB).
permitted_withdraw_designation(commission, NB) :-
    notified_body(NB),
    member_state_fails_to_correct(NB).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_37').
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
declared(sectoral_group_of_notified_bodies/1, 'group of notified bodies for coordination', 'celex:32024R1689/oj#art_38').
declared(must_ensure/2, 'obligation to ensure', 'celex:32024R1689/oj#art_38').
declared(must_provide/2, 'obligation to provide', 'celex:32024R1689/oj#art_38').
declared(notified_by/2, 'notified body B is notified by authority A', 'celex:32024R1689/oj#art_38').
declared(participation_of_notified_bodies_in_group/1, 'participation of notified bodies in sectoral group', 'celex:32024R1689/oj#art_38').
sectoral_group_of_notified_bodies(sectoral_group).
must_ensure(commission, sectoral_group_of_notified_bodies(G)) :-
    sectoral_group_of_notified_bodies(G),
    high_risk_ai_system(_).
must_ensure(A, participation_of_notified_bodies_in_group(G)) :-
    notifying_authority(A),
    sectoral_group_of_notified_bodies(G),
    notified_body(B),
    notified_body(B),
    notified_by(A, B).
must_provide(commission, exchange_of_knowledge_and_best_practices_between_notifying_authorities) :-
    notifying_authority(_).
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(permitted_authorisation_of_third_country_conformity_assessment_body/1, 'may be authorised to carry out the activities of notified bodies', 'celex:32024R1689/oj#art_39').
declared(third_country/1, 'conformity assessment body established under the law of a third country with which the Union has concluded an agreement', 'celex:32024R1689/oj#art_39').
declared(meets_requirements/1, 'meets the requirements laid down in article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_compliance/1, 'ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
permitted_authorisation_of_third_country_conformity_assessment_body(Body) :-
    conformity_assessment_body(Body),
    third_country(Body),
    (   meets_requirements(Body)
    ;   ensures_equivalent_compliance(Body)
    ).
provenance(permitted_authorisation_of_third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(conforms_to/2, 'AI system conforms to a standard', 'celex:32024R1689/oj#art_40').
declared(published_in_official_journal/1, 'Standard reference published in Official Journal', 'celex:32024R1689/oj#art_40').
declared(presumed_conformity_applies/1, 'Presumption that a system conforms with the requirements or obligations covered by a harmonised standard', 'celex:32024R1689/oj#art_40').
declared(must_issue/2, 'Commission must issue a standardisation request', 'celex:32024R1689/oj#art_40').
declared(must_consult/2, 'Commission must consult the Board and relevant stakeholders', 'celex:32024R1689/oj#art_40').
declared(must_specify/2, 'Commission must specify the characteristics that standards have to meet', 'celex:32024R1689/oj#art_40').
declared(must_request_evidence/3, 'Commission must request evidence of best efforts to fulfil the objectives', 'celex:32024R1689/oj#art_40').
declared(participant_in_standardisation_process/1, 'Entity participating in the standardisation process', 'celex:32024R1689/oj#art_40').
declared(must_promote_investment_and_innovation/1, 'Participant must promote investment and innovation in AI', 'celex:32024R1689/oj#art_40').
presumed_conformity_applies(S) :-
    (high_risk_ai_system(S) ; general_purpose_ai_system(S)),
    conforms_to(S, Std),
    harmonised_standard(Std),
    published_in_official_journal(Std).
must_issue(commission,
           standardisation_request(
               requirements(chapter_3_section_2),
               obligations(chapter_5_section_2),
               deliverables([reporting_processes, documentation_processes, energy_efficiency])
           )).
must_consult(commission, board_and_stakeholders).
must_specify(commission,
             standards_characteristics(
                 clear,
                 consistent,
                 aligned_with_existing_harmonised_legislation(anx_1),
                 meet_requirements_and_obligations
             )).
must_request_evidence(commission,
                      european_standardisation_organisation,
                      best_efforts_objectives).
must_promote_investment_and_innovation(P) :-
    participant_in_standardisation_process(P).
provenance(presumed_conformity_applies/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence/3, 'celex:32024R1689/oj#art_40').
provenance(must_promote_investment_and_innovation/1, 'celex:32024R1689/oj#art_40').
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
declared(conditions_fulfilled/1, 'conditions for adopting common specifications', 'celex:32024R1689/oj#art_41').
declared(permitted_common_specifications/1, 'permission for Commission to adopt common specifications', 'celex:32024R1689/oj#art_41').
declared(must_consult/2, 'Commission must consult advisory forum', 'celex:32024R1689/oj#art_41').
declared(must_adopt_implementing_act/1, 'Commission must adopt implementing acts', 'celex:32024R1689/oj#art_41').
declared(must_inform_committee_before_draft/1, 'Commission must inform committee before drafting', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity/1, 'Presumption of conformity with requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(must_assess_harmonised_standard/2, 'Commission must assess harmonised standard', 'celex:32024R1689/oj#art_41').
declared(must_repeal_implementing_act/2, 'Commission must repeal implementing act', 'celex:32024R1689/oj#art_41').
declared(must_justify_non_compliance/2, 'Provider must justify non‑compliance with common specifications', 'celex:32024R1689/oj#art_41').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_41').
declared(must_inform_commission/2, 'Member State must inform Commission', 'celex:32024R1689/oj#art_41').
declared(must_assess_and_amend/2, 'Commission must assess information and amend implementing act', 'celex:32024R1689/oj#art_41').
permitted_common_specifications(Commission) :-
    commission(Commission),
    conditions_fulfilled(Commission).
must_consult(Commission, advisory_forum) :-
    commission(Commission).
must_adopt_implementing_act(Commission) :-
    commission(Commission).
must_inform_committee_before_draft(Commission) :-
    commission(Commission).
presumed_conformity(System) :-
    (high_risk_ai_system(System) ; general_purpose_ai_model(System)),
    in_conformity_with_common_specifications(System).
must_assess_harmonised_standard(Commission, Standard) :-
    commission(Commission),
    harmonised_standard(Standard).
must_repeal_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act).
must_justify_non_compliance(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; general_purpose_ai_model(System)),
    \+ in_conformity_with_common_specifications(System).
must_inform_commission(MemberState, Specification) :-
    member_state(MemberState),
    common_specification(Specification).
must_assess_and_amend(Commission, Specification) :-
    commission(Commission),
    common_specification(Specification).
provenance(permitted_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt_implementing_act/1, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_before_draft/1, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_41').
provenance(must_assess_harmonised_standard/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_and_amend/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').

% ==== celex:32024R1689/oj#art_42 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_42').
declared(trained_and_tested_on_relevant_data/1, 'trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting of intended use', 'celex:32024R1689/oj#art_42').
declared(certified_under_cybersecurity_scheme/1, 'AI system certified under a cybersecurity scheme', 'celex:32024R1689/oj#art_42').
declared(statement_of_conformity_issued/1, 'statement of conformity issued for an AI system', 'celex:32024R1689/oj#art_42').
declared(published_in_official_journal/1, 'reference published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_certificate_covers/2, 'cybersecurity certificate or statement of conformity covers a given requirement', 'celex:32024R1689/oj#art_42').
declared(requirement_in_art_15/1, 'requirement set out in Article 15', 'celex:32024R1689/oj#art_42').
declared(exempt_from_assessment/2, 'exempt from further conformity assessment for a given requirement', 'celex:32024R1689/oj#art_42').
exempt_from_assessment(S, art_10_par_4) :-
    high_risk_ai_system(S),
    trained_and_tested_on_relevant_data(S).
exempt_from_assessment(S, Requirement) :-
    high_risk_ai_system(S),
    ( certified_under_cybersecurity_scheme(S) ; statement_of_conformity_issued(S) ),
    published_in_official_journal(S),
    cybersecurity_certificate_covers(S, Requirement),
    requirement_in_art_15(Requirement).
provenance(exempt_from_assessment/2, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex_3_point_1/1, 'listed in annex 3 point 1', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex_3_points_2_to_8/1, 'listed in annex 3 points 2‑8', 'celex:32024R1689/oj#art_43').
declared(listed_in_annex_1_sec_1/1, 'listed in annex 1 section 1', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standards/2, 'provider has applied harmonised standards to system', 'celex:32024R1689/oj#art_43').
declared(applied_common_specifications/2, 'provider has applied common specifications to system', 'celex:32024R1689/oj#art_43').
declared(internal_control/1, 'internal‑control conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(notified_body_assessment/1, 'assessment with involvement of a notified body', 'celex:32024R1689/oj#art_43').
declared(demonstrating_compliance/2, 'provider demonstrates compliance of system', 'celex:32024R1689/oj#art_43').
declared(condition_a_to_d/1, 'conditions a‑d for using notified‑body procedure', 'celex:32024R1689/oj#art_43').
declared(relevant_legal_act_procedure/2, 'procedure required under relevant Union harmonisation legislation', 'celex:32024R1689/oj#art_43').
declared(previously_assessed/1, 'system has already undergone a conformity assessment', 'celex:32024R1689/oj#art_43').
declared(pre_determined_change/1, 'change pre‑determined and documented in technical documentation', 'celex:32024R1689/oj#art_43').
declared(complies_with_art_31/1, 'notified body complies with requirements of article 31', 'celex:32024R1689/oj#art_43').
declared(required_conformity_assessment_procedure/2, 'provider must follow a conformity assessment procedure for system', 'celex:32024R1689/oj#art_43').
declared(required_new_conformity_assessment/2, 'provider must conduct a new conformity assessment after substantial modification', 'celex:32024R1689/oj#art_43').
declared(permitted_notified_body_control/2, 'notified body may control conformity assessment for system', 'celex:32024R1689/oj#art_43').
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    (applied_harmonised_standards(P, S) ; applied_common_specifications(P, S)),
    internal_control(S).
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    (applied_harmonised_standards(P, S) ; applied_common_specifications(P, S)),
    notified_body_assessment(S).
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    demonstrating_compliance(P, S),
    condition_a_to_d(S),
    notified_body_assessment(S).
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_points_2_to_8(S),
    internal_control(S).
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_1_sec_1(S),
    relevant_legal_act_procedure(P, S).
permitted_notified_body_control(NB, S) :-
    notified_body(NB),
    complies_with_art_31(NB),
    high_risk_ai_system(S),
    listed_in_annex_1_sec_1(S).
required_new_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    previously_assessed(S),
    substantial_modification(S),
    \+ pre_determined_change(S).
provenance(required_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(required_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body_control/2, 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').

% ==== celex:32024R1689/oj#art_44 ====
declared(required_certificate_language/2, 'certificate must be drawn up in a language easily understood by the relevant authorities in the Member State of the notified body', 'celex:32024R1689/oj#art_44').
declared(required_certificate_validity_period/2, 'certificate validity period must not exceed the maximum years applicable to the AI system category', 'celex:32024R1689/oj#art_44').
declared(permitted_certificate_extension/3, 'provider may request extension of a certificate for a further period within the maximum years for the AI system category', 'celex:32024R1689/oj#art_44').
declared(must_suspend_or_withdraw_certificate/2, 'notified body shall suspend or withdraw a certificate when the AI system no longer meets the requirements and corrective action is not taken within the deadline', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'notified body shall give reasons for its decision concerning a certificate', 'celex:32024R1689/oj#art_44').
declared(required_appeal_procedure_available/0, 'an appeal procedure against decisions of notified bodies shall be available', 'celex:32024R1689/oj#art_44').
declared(certificate/1, 'certificate issued for an AI system', 'celex:32024R1689/oj#art_44').
declared(certificate_for_system/2, 'certificate is linked to a specific AI system', 'celex:32024R1689/oj#art_44').
declared(language_understood_by_authorities/2, 'language can be easily understood by the relevant authorities in the Member State', 'celex:32024R1689/oj#art_44').
declared(annex_1_applies/1, 'AI system is covered by annex 1', 'celex:32024R1689/oj#art_44').
declared(annex_3_applies/1, 'AI system is covered by annex 3', 'celex:32024R1689/oj#art_44').
declared(re_assessment_conformity_procedure/1, 're‑assessment in accordance with the applicable conformity assessment procedures', 'celex:32024R1689/oj#art_44').
declared(meets_requirements/1, 'AI system meets the requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_44').
declared(corrective_action_taken/3, 'provider has taken appropriate corrective action within the deadline', 'celex:32024R1689/oj#art_44').
declared(appropriate_deadline_set_by_notified_body/2, 'notified body has set an appropriate deadline for corrective action', 'celex:32024R1689/oj#art_44').
declared(decision/1, 'decision taken by a notified body concerning a certificate', 'celex:32024R1689/oj#art_44').
declared(certificate_related_decision/1, 'decision relates to a conformity certificate', 'celex:32024R1689/oj#art_44').
declared(appeal_procedure_available/0, 'appeal procedure against notified body decisions is available', 'celex:32024R1689/oj#art_44').
required_certificate_language(Body, Language) :-
    notified_body(Body),
    language_understood_by_authorities(Body, Language).
provenance(required_certificate_language/2, 'celex:32024R1689/oj#art_44').
required_certificate_validity_period(Cert, MaxYears) :-
    certificate_for_system(Cert, System),
    (   annex_1_applies(System), MaxYears =< 5
    ;   annex_3_applies(System), MaxYears =< 4
    ).
provenance(required_certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
permitted_certificate_extension(Provider, Cert, AdditionalYears) :-
    provider(Provider),
    certificate_for_system(Cert, System),
    (   annex_1_applies(System), AdditionalYears =< 5
    ;   annex_3_applies(System), AdditionalYears =< 4
    ),
    re_assessment_conformity_procedure(System).
provenance(permitted_certificate_extension/3, 'celex:32024R1689/oj#art_44').
must_suspend_or_withdraw_certificate(Body, Cert) :-
    notified_body(Body),
    certificate(Cert),
    certificate_for_system(Cert, System),
    \+ meets_requirements(System),
    provider(Provider),
    \+ corrective_action_taken(Provider, System, Deadline),
    appropriate_deadline_set_by_notified_body(Body, Deadline).
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
must_give_reasons(Body, Decision) :-
    notified_body(Body),
    decision(Decision),
    certificate_related_decision(Decision).
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
required_appeal_procedure_available :-
    appeal_procedure_available.
provenance(required_appeal_procedure_available/0, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/3, 'obligation of a notified body to inform a recipient about specific information', 'celex:32024R1689/oj#art_45').
declared(request_received/3, 'request made by a party to another for specific information', 'celex:32024R1689/oj#art_45').
declared(same_ai_system_type/2, 'two notified bodies carry out conformity assessment for the same types of AI systems', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'obligation of a notified body to keep obtained information confidential', 'celex:32024R1689/oj#art_45').
declared(obtained_information/2, 'information that a notified body has obtained', 'celex:32024R1689/oj#art_45').
must_inform(NB, NA, union_technical_documentation_assessment_certificate) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, union_technical_documentation_assessment_certificate_supplement) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, quality_management_system_approval) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, union_technical_documentation_assessment_certificate_refusal) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, quality_management_system_approval_refusal) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, circumstances_affecting_scope_or_conditions) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, request_from_market_surveillance_authority) :-
    notified_body(NB),
    notifying_authority(NA).
must_inform(NB, NA, conformity_assessment_activities) :-
    notified_body(NB),
    notifying_authority(NA),
    request_received(NA, NB, conformity_assessment_activities).
must_inform(NB, Other, quality_management_system_approval_refusal) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB.
must_inform(NB, Other, quality_management_system_approval_issued) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    request_received(Other, NB, quality_management_system_approval_issued).
must_inform(NB, Other, union_technical_documentation_assessment_certificate_refusal) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB.
must_inform(NB, Other, union_technical_documentation_assessment_certificate_issued) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    request_received(Other, NB, union_technical_documentation_assessment_certificate_issued).
must_inform(NB, Other, negative_conformity_assessment_results) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    same_ai_system_type(NB, Other).
must_inform(NB, Other, positive_conformity_assessment_results) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    same_ai_system_type(NB, Other),
    request_received(Other, NB, positive_conformity_assessment_results).
must_safeguard_confidentiality(NB, Info) :-
    notified_body(NB),
    obtained_information(NB, Info).
provenance(must_inform/3, 'celex:32024R1689/oj#art_45').
provenance(request_received/3, 'celex:32024R1689/oj#art_45').
provenance(same_ai_system_type/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
provenance(obtained_information/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(high_risk/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason_applies/1, 'exceptional reason such as public security, life and health protection, environmental protection or protection of key industrial and infrastructural assets', 'celex:32024R1689/oj#art_46').
declared(compliance_concluded/2, 'market surveillance authority concludes that the system complies with the requirements', 'celex:32024R1689/oj#art_46').
declared(authorisation_refused/1, 'authorisation request has been refused', 'celex:32024R1689/oj#art_46').
declared(urgency_applies/1, 'urgency situation for exceptional public security reasons or imminent threat to life or physical safety', 'celex:32024R1689/oj#art_46').
declared(no_objection_within_15_days/2, 'no objection raised by any Member State or the Commission within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(commission_considers_unjustified/2, 'Commission considers the authorisation unjustified', 'celex:32024R1689/oj#art_46').
declared(related_to_union_legislation/1, 'high‑risk AI system related to products covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_46').
declared(civil_protection_authority/1, 'civil protection authority', 'celex:32024R1689/oj#art_46').
permitted_authorisation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk(System),
    (placing_on_market(System) ; putting_into_service(System)),
    exceptional_reason_applies(System).
required_authorisation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk(System),
    compliance_concluded(Authority, System).
must_inform_commission_and_member_states(Authority, System) :-
    required_authorisation(Authority, System).
permitted_put_into_service_without_authorisation(Authority, System) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    high_risk(System),
    putting_into_service(System),
    urgency_applies(System).
must_stop_use_if_authorisation_refused(System) :-
    authorisation_refused(System).
must_discard_results_if_authorisation_refused(System) :-
    authorisation_refused(System).
justified_authorisation(Authority, System) :-
    no_objection_within_15_days(Authority, System).
must_withdraw_authorisation(Authority, System) :-
    commission_considers_unjustified(Authority, System).
derogation_applies_only_if_union_legislation(System) :-
    high_risk(System),
    related_to_union_legislation(System).
provenance(permitted_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(required_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_if_authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(must_discard_results_if_authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(justified_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(derogation_applies_only_if_union_legislation/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(ten_years_after_market_placement_applies/1, '10 years after the system has been placed on the market or put into service', 'celex:32024R1689/oj#art_47').
declared(refers_to_requirements_chapter3_section2/1, 'states that the system meets the requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_47').
declared(includes_annex5_information/1, 'contains the information set out in Annex 5', 'celex:32024R1689/oj#art_47').
declared(translated_for_nca/1, 'translated into a language easily understood by the national competent authorities', 'celex:32024R1689/oj#art_47').
declared(subject_to_other_union_harmonisation_legislation/1, 'subject to other Union harmonisation legislation that also requires an EU declaration of conformity', 'celex:32024R1689/oj#art_47').
required_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    ten_years_after_market_placement_applies(S).
required_submit_copy_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_assume_responsibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_content_meets_requirements(D) :-
    eu_declaration_of_conformity(D),
    refers_to_requirements_chapter3_section2(D).
required_content_includes_annex5_information(D) :-
    eu_declaration_of_conformity(D),
    includes_annex5_information(D).
required_translation(D) :-
    eu_declaration_of_conformity(D),
    translated_for_nca(D).
required_single_eu_declaration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_other_union_harmonisation_legislation(S).
provenance(required_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(required_submit_copy_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(required_content_meets_requirements/1, 'celex:32024R1689/oj#art_47').
provenance(required_content_includes_annex5_information/1, 'celex:32024R1689/oj#art_47').
provenance(required_translation/1, 'celex:32024R1689/oj#art_47').
provenance(required_single_eu_declaration/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'AI system provided digitally', 'celex:32024R1689/oj#art_48').
declared(digital_accessible/1, 'CE marking can be easily accessed via interface or machine‑readable code', 'celex:32024R1689/oj#art_48').
declared(affix_possible/1, 'CE marking can be affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(applicable/1, 'the provision on identification number applies', 'celex:32024R1689/oj#art_48').
declared(other_union_law_applies/1, 'high‑risk AI system is subject to another Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
required_general_principles_for_ce_marking(S) :-
    ce_marking(S),
    high_risk_ai_system(S).
provenance(required_general_principles_for_ce_marking/1, 'celex:32024R1689/oj#art_48').
required_digital_ce_marking(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_accessible(S).
provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
required_affix_visibly_legibly_indelibly(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    affix_possible(S).
provenance(required_affix_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
permitted_affix_to_packaging_or_documentation(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    \+ affix_possible(S).
provenance(permitted_affix_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
must_affix_identification_number(NB, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S),
    notified_body(NB).
must_affix_identification_number(P, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S),
    provider(P).
must_affix_identification_number(AR, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S),
    authorised_representative(AR).
provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
required_indicate_identification_number_in_promotional_material(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S).
provenance(required_indicate_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
required_indicate_other_union_law(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    other_union_law_applies(S).
provenance(required_indicate_other_union_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(must_register/2, 'obligation to register actor and system in EU database', 'celex:32024R1689/oj#art_49').
declared(not_high_risk_ai_system/1, 'system not classified as high‑risk under Art 6 par 3', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex3/1, 'system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(exception_annex3_pnt2/1, 'system listed in Annex III point 2, which is excepted', 'celex:32024R1689/oj#art_49').
declared(public_authority/1, 'deployer that is a public authority, Union institution, body, office or agency or acting on its behalf', 'celex:32024R1689/oj#art_49').
declared(using/1, 'system is used', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex3_point/2, 'system listed in Annex III at the given point', 'celex:32024R1689/oj#art_49').
declared(required_secure_section/1, 'registration must be in a secure non‑public section of the EU database', 'celex:32024R1689/oj#art_49').
declared(required_national_registration/1, 'high‑risk AI system listed in Annex III point 2 must be registered at national level', 'celex:32024R1689/oj#art_49').
must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    high_risk_ai_system(System),
    listed_in_annex3(System),
    \+ exception_annex3_pnt2(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    not_high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).
must_register(Actor, System) :-
    deployer(Actor),
    public_authority(Actor),
    high_risk_ai_system(System),
    listed_in_annex3(System),
    \+ exception_annex3_pnt2(System),
    (putting_into_service(System) ; using(System)).
required_secure_section(System) :-
    high_risk_ai_system(System),
    (listed_in_annex3_point(System, 1) ;
     listed_in_annex3_point(System, 6) ;
     listed_in_annex3_point(System, 7)).
required_national_registration(System) :-
    high_risk_ai_system(System),
    exception_annex3_pnt2(System).
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(not_high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex3/1, 'celex:32024R1689/oj#art_49').
provenance(exception_annex3_pnt2/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority/1, 'celex:32024R1689/oj#art_49').
provenance(using/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex3_point/2, 'celex:32024R1689/oj#art_49').
provenance(required_secure_section/1, 'celex:32024R1689/oj#art_49').
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
declared(interacts_directly_with_natural_persons/1, 'AI system designed to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(authorised_for_criminal_offence/1, 'AI system authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(permitted_exemption_from_inform/2, 'exemption from the obligation to inform natural persons of AI interaction', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/2, 'AI system generates synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(permitted_exemption_from_marking/2, 'exemption from the obligation to mark synthetic content', 'celex:32024R1689/oj#art_50').
declared(permitted_exemption_from_technical_solution/2, 'exemption from the obligation to ensure effective technical solutions for synthetic content', 'celex:32024R1689/oj#art_50').
declared(permitted_exemption_from_inform_deployer/2, 'exemption from the obligation of deployers to inform natural persons of operation of emotion or biometric systems', 'celex:32024R1689/oj#art_50').
declared(system_permitted_for_criminal_offence/1, 'AI system permitted by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(permitted_exemption_from_disclosure_deep_fake/2, 'exemption from the obligation to disclose deep‑fake content', 'celex:32024R1689/oj#art_50').
declared(artistic_work/1, 'content forms part of an artistic, creative, satirical, fictional or analogous work', 'celex:32024R1689/oj#art_50').
declared(generates_text_content/1, 'AI system generates or manipulates text content', 'celex:32024R1689/oj#art_50').
declared(public_interest_purpose/1, 'text is published with the purpose of informing the public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(permitted_exemption_from_disclosure_text/2, 'exemption from the obligation to disclose AI‑generated text', 'celex:32024R1689/oj#art_50').
declared(required_inform_natural_persons_of_ai_interaction/2, 'obligation for providers to inform natural persons they are interacting with an AI system', 'celex:32024R1689/oj#art_50').
declared(required_mark_output/2, 'obligation for providers to mark synthetic AI‑generated content in a machine‑readable way', 'celex:32024R1689/oj#art_50').
declared(required_technical_solution_effective/2, 'obligation for providers to ensure technical solutions are effective, interoperable, robust and reliable', 'celex:32024R1689/oj#art_50').
declared(required_inform_deployer/2, 'obligation for deployers of emotion or biometric categorisation systems to inform natural persons of the operation', 'celex:32024R1689/oj#art_50').
declared(required_process_personal_data_accordingly/2, 'obligation for deployers to process personal data in accordance with GDPR and related directives', 'celex:32024R1689/oj#art_50').
declared(required_disclose_deep_fake/2, 'obligation for deployers of deep‑fake AI systems to disclose artificial generation or manipulation', 'celex:32024R1689/oj#art_50').
declared(required_disclose_generated_text/2, 'obligation for deployers of AI‑generated text of public‑interest to disclose artificial generation or manipulation', 'celex:32024R1689/oj#art_50').
declared(required_provide_information_at_latest_first_interaction/2, 'obligation to provide transparency information in a clear, distinguishable and accessible manner at the latest at first interaction', 'celex:32024R1689/oj#art_50').
declared(conforms_to_accessibility_requirements/1, 'information meets applicable accessibility requirements', 'celex:32024R1689/oj#art_50').
declared(must_encourage_ai_office_codes_of_practice/0, 'AI Office shall encourage and facilitate drawing up codes of practice', 'celex:32024R1689/oj#art_50').
required_inform_natural_persons_of_ai_interaction(Provider, System) :-
    provider(Provider),
    ai_system(System),
    interacts_directly_with_natural_persons(System),
    \+ permitted_exemption_from_inform(Provider, System).
permitted_exemption_from_inform(Provider, System) :-
    provider(Provider),
    ai_system(System),
    authorised_for_criminal_offence(System).
required_mark_output(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Type),
    \+ permitted_exemption_from_marking(Provider, System).
permitted_exemption_from_marking(Provider, System) :-
    provider(Provider),
    ai_system(System),
    (assistive_editing_function(System) ; \+ substantially_alters_input_data(System) ; authorised_for_criminal_offence(System)).
required_technical_solution_effective(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Type),
    \+ permitted_exemption_from_technical_solution(Provider, System).
permitted_exemption_from_technical_solution(Provider, System) :-
    provider(Provider),
    ai_system(System),
    (assistive_editing_function(System) ; \+ substantially_alters_input_data(System) ; authorised_for_criminal_offence(System)).
required_inform_deployer(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    (emotion_recognition_system(System) ; biometric_categorisation_system(System)),
    \+ permitted_exemption_from_inform_deployer(Deployer, System).
permitted_exemption_from_inform_deployer(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    system_permitted_for_criminal_offence(System).
required_process_personal_data_accordingly(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    (emotion_recognition_system(System) ; biometric_categorisation_system(System)),
    
    true.
required_disclose_deep_fake(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    deep_fake(System),
    \+ permitted_exemption_from_disclosure_deep_fake(Deployer, System).
permitted_exemption_from_disclosure_deep_fake(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    authorised_for_criminal_offence(System).
permitted_limited_disclosure_for_artistic(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    deep_fake(System),
    artistic_work(System).
required_disclose_generated_text(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    generates_text_content(System),
    public_interest_purpose(System),
    \+ permitted_exemption_from_disclosure_text(Deployer, System).
permitted_exemption_from_disclosure_text(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    (authorised_for_criminal_offence(System) ;
     (human_review(System), editorial_responsibility(System))).
required_provide_information_at_latest_first_interaction(Actor, System) :-
    (provider(Actor) ; deployer(Actor)),
    ai_system(System),
    (   required_inform_natural_persons_of_ai_interaction(Actor, System)
    ;   required_mark_output(Actor, System)
    ;   required_technical_solution_effective(Actor, System)
    ;   required_inform_deployer(Actor, System)
    ;   required_disclose_deep_fake(Actor, System)
    ;   required_disclose_generated_text(Actor, System)
    ),
    conforms_to_accessibility_requirements(Actor).
must_encourage_ai_office_codes_of_practice :-
    ai_office(_).
provenance(required_inform_natural_persons_of_ai_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_inform/2, 'celex:32024R1689/oj#art_50').
provenance(required_mark_output/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_marking/2, 'celex:32024R1689/oj#art_50').
provenance(required_technical_solution_effective/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_technical_solution/2, 'celex:32024R1689/oj#art_50').
provenance(required_inform_deployer/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_inform_deployer/2, 'celex:32024R1689/oj#art_50').
provenance(required_process_personal_data_accordingly/2, 'celex:32024R1689/oj#art_50').
provenance(required_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_disclosure_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_limited_disclosure_for_artistic/2, 'celex:32024R1689/oj#art_50').
provenance(required_disclose_generated_text/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_exemption_from_disclosure_text/2, 'celex:32024R1689/oj#art_50').
provenance(required_provide_information_at_latest_first_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(conforms_to_accessibility_requirements/1, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_ai_office_codes_of_practice/0, 'celex:32024R1689/oj#art_50').
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
declared(required_classification_general_purpose_ai_model_with_systemic_risk/1, 'classification of a general‑purpose AI model as having systemic risk', 'celex:32024R1689/oj#art_51').
declared(commission_decision_equivalent/1, 'model has capabilities or impact equivalent to those set out based on a Commission decision', 'celex:32024R1689/oj#art_51').
declared(presumed_high_impact_capabilities/1, 'model is presumed to have high impact capabilities based on training computation', 'celex:32024R1689/oj#art_51').
declared(training_computation/2, 'cumulative floating point operations used for training a model', 'celex:32024R1689/oj#art_51').
declared(must_adopt_delegated_acts/2, 'Commission must adopt delegated acts to amend thresholds', 'celex:32024R1689/oj#art_51').
required_classification_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
required_classification_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent(M).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation(M, Ops),
    Ops > 1025.
must_adopt_delegated_acts(commission, amend_thresholds).
provenance(required_classification_general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(condition_art_51_par_1_unp_1_pnt_a_applies/1, 'condition referred to in art 51 para 1 unp 1 pnt a', 'celex:32024R1689/oj#art_52').
declared(provides_model/2, 'provider provides a general‑purpose AI model', 'celex:32024R1689/oj#art_52').
declared(must_notify/2, 'commission must be notified about a model', 'celex:32024R1689/oj#art_52').
declared(permitted_present_arguments/2, 'provider may present arguments with its notification', 'celex:32024R1689/oj#art_52').
declared(arguments_not_sufficiently_substantiated/2, 'arguments are not sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(provider_unable_to_demonstrate/2, 'provider unable to demonstrate lack of systemic risk', 'celex:32024R1689/oj#art_52').
declared(systemic_risk_applies/1, 'model is considered to present systemic risk', 'celex:32024R1689/oj#art_52').
declared(criteria_set_in_annex_13_applies/1, 'criteria set out in annex 13 apply to the model', 'celex:32024R1689/oj#art_52').
declared(permitted_designate_systemic_risk/2, 'commission may designate a model as presenting systemic risk', 'celex:32024R1689/oj#art_52').
declared(reasoned_request/2, 'provider makes a reasoned request for reassessment', 'celex:32024R1689/oj#art_52').

% ==== celex:32024R1689/oj#art_53 ====
declared(provides/2, 'provider supplies AI model', 'celex:32024R1689/oj#art_53').
declared(required_technical_documentation/2, 'provider must draw up and keep up‑to‑date technical documentation of the model', 'celex:32024R1689/oj#art_53').
declared(required_information_for_integrators/2, 'provider must draw up, keep up‑to‑date and make available information enabling integrators to understand capabilities and limitations', 'celex:32024R1689/oj#art_53').
declared(required_copyright_policy/2, 'provider must put in place a policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(required_training_summary/2, 'provider must draw up and make publicly available a detailed summary of the training data content', 'celex:32024R1689/oj#art_53').
declared(required_cooperation/1, 'provider must cooperate with the Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(permitted_reliance_on_codes_of_practice/1, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(foss_license/1, 'AI model is released under a free and open‑source licence allowing access, usage, modification and distribution', 'celex:32024R1689/oj#art_53').
declared(exempt_obligations_for_foss_provider/2, 'providers of free‑open‑source models are exempt from the obligations, unless the model has systemic risk', 'celex:32024R1689/oj#art_53').
required_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(required_technical_documentation/2, 'celex:32024R1689/oj#art_53').
required_information_for_integrators(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(required_information_for_integrators/2, 'celex:32024R1689/oj#art_53').
required_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(required_copyright_policy/2, 'celex:32024R1689/oj#art_53').
required_training_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(required_training_summary/2, 'celex:32024R1689/oj#art_53').
required_cooperation(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(required_cooperation/1, 'celex:32024R1689/oj#art_53').
permitted_reliance_on_codes_of_practice(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).
provenance(permitted_reliance_on_codes_of_practice/1, 'celex:32024R1689/oj#art_53').
exempt_obligations_for_foss_provider(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    foss_license(M),
    \+ systemic_risk(M).
provenance(exempt_obligations_for_foss_provider/2, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_54 ====
declared(third_country_provider/1, 'provider established in a third country', 'celex:32024R1689/oj#art_54').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_54').
declared(free_and_open_source_license/2, 'provider releases model under a free and open‑source licence', 'celex:32024R1689/oj#art_54').
declared(mandate_received/2, 'written mandate received from provider by authorised representative', 'celex:32024R1689/oj#art_54').
declared(general_purpose_ai_model/1, 'general‑purpose AI model', 'celex:32024R1689/oj#art_54').
declared(technical_documentation_specified/1, 'technical documentation specified in annex 11', 'celex:32024R1689/oj#art_54').
declared(provider_contrary_obligations/1, 'provider acting contrary to its obligations', 'celex:32024R1689/oj#art_54').
declared(required_authorised_representative_appointment/2, 'provider must appoint an authorised representative', 'celex:32024R1689/oj#art_54').
declared(required_enable_authorised_representative/2, 'provider must enable its authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_54').
declared(required_verify_technical_documentation/2, 'authorised representative must verify the technical documentation', 'celex:32024R1689/oj#art_54').
declared(required_keep_technical_documentation/2, 'authorised representative must keep the technical documentation for ten years', 'celex:32024R1689/oj#art_54').
declared(required_provide_information_to_ai_office/2, 'authorised representative must provide information to the AI Office upon request', 'celex:32024R1689/oj#art_54').
declared(required_cooperate_with_ai_office/2, 'authorised representative must cooperate with the AI Office and competent authorities', 'celex:32024R1689/oj#art_54').
declared(required_terminate_mandate_if_contrary/2, 'authorised representative must terminate the mandate if the provider acts contrary to its obligations', 'celex:32024R1689/oj#art_54').
declared(exempt_authorised_representative_appointment/2, 'exemption from the appointment obligation for open‑source models without systemic risk', 'celex:32024R1689/oj#art_54').
required_authorised_representative_appointment(P, M) :-
    provider(P),
    third_country_provider(P),
    general_purpose_ai_model(M),
    placing_on_market(M),
    \+ exempt_authorised_representative_appointment(P, M),
    authorised_representative(AR),
    established_in_union(AR),
    mandate_received(P, AR).
required_enable_authorised_representative(P, AR) :-
    provider(P),
    authorised_representative(AR),
    established_in_union(AR),
    mandate_received(P, AR).
required_verify_technical_documentation(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    technical_documentation_specified(M),
    mandate_received(_, AR).
required_keep_technical_documentation(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    established_in_union(AR),
    mandate_received(_, AR).
required_provide_information_to_ai_office(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    mandate_received(_, AR).
required_cooperate_with_ai_office(AR, M) :-
    authorised_representative(AR),
    general_purpose_ai_model(M),
    mandate_received(_, AR).
required_terminate_mandate_if_contrary(AR, P) :-
    authorised_representative(AR),
    provider(P),
    provider_contrary_obligations(P),
    mandate_received(P, AR).
exempt_authorised_representative_appointment(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_license(P, M),
    \+ systemic_risk(M).
provenance(required_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_54').
provenance(required_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(required_verify_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(required_keep_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(required_provide_information_to_ai_office/2, 'celex:32024R1689/oj#art_54').
provenance(required_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_54').
provenance(required_terminate_mandate_if_contrary/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(required_model_evaluation/2, 'obligation to perform model evaluation', 'celex:32024R1689/oj#art_55').
declared(required_assess_and_mitigate_systemic_risk/2, 'obligation to assess and mitigate systemic risk', 'celex:32024R1689/oj#art_55').
declared(required_report_serious_incidents/2, 'obligation to keep track, document and report serious incidents', 'celex:32024R1689/oj#art_55').
declared(required_cybersecurity_protection/2, 'obligation to ensure adequate cybersecurity protection', 'celex:32024R1689/oj#art_55').
declared(permitted_rely_on_codes_of_practice/2, 'permission to rely on codes of practice', 'celex:32024R1689/oj#art_55').
declared(required_demonstrate_alternative_means/2, 'obligation to demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
declared(required_confidentiality_obligation/1, 'obligation to treat information confidentially', 'celex:32024R1689/oj#art_55').
declared(systemic_risk_applies/1, 'condition that a model is subject to systemic risk', 'celex:32024R1689/oj#art_55').
declared(harmonised_standard_not_published_applies/0, 'condition that no harmonised standard has been published', 'celex:32024R1689/oj#art_55').
declared(info_obtained_under_art_55/1, 'information obtained pursuant to article 55', 'celex:32024R1689/oj#art_55').
systemic_risk_applies(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(_).
harmonised_standard_not_published_applies.
info_obtained_under_art_55(_Info).
required_model_evaluation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model).
required_assess_and_mitigate_systemic_risk(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model).
required_report_serious_incidents(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    serious_incident(Inc),
    serious_incident(Inc).
required_cybersecurity_protection(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model).
permitted_rely_on_codes_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    harmonised_standard_not_published_applies.
required_demonstrate_alternative_means(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    \+ permitted_rely_on_codes_of_practice(Provider, Model).
required_confidentiality_obligation(Info) :-
    info_obtained_under_art_55(Info).
provenance(required_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(required_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(required_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(required_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(required_demonstrate_alternative_means/2, 'celex:32024R1689/oj#art_55').
provenance(required_confidentiality_obligation/1, 'celex:32024R1689/oj#art_55').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_not_published_applies/0, 'celex:32024R1689/oj#art_55').
provenance(info_obtained_under_art_55/1, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(required_encourage_and_facilitate/2, 'AI Office shall encourage and facilitate drawing up of codes of practice', 'celex:32024R1689/oj#art_56').
declared(required_ensure_codes_cover_obligation/2, 'AI Office and Board shall ensure codes of practice cover specific obligations', 'celex:32024R1689/oj#art_56').
declared(permitted_invite/2, 'AI Office may invite entities to participate in the drawing‑up of codes of practice', 'celex:32024R1689/oj#art_56').
declared(permitted_adhere_to_codes/1, 'AI Office may invite providers of general‑purpose AI models to adhere to the codes of practice', 'celex:32024R1689/oj#art_56').
declared(presents_systemic_risk/1, 'Provider of a general‑purpose AI model presents systemic risks', 'celex:32024R1689/oj#art_56').
declared(must_ensure_regular_reporting/2, 'AI Office shall ensure participants report regularly on implementation', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate/3, 'AI Office and Board shall regularly monitor and evaluate achievement of objectives', 'celex:32024R1689/oj#art_56').
declared(must_publish_assessment/3, 'AI Office and Board shall publish assessment of adequacy of codes of practice', 'celex:32024R1689/oj#art_56').
declared(must_ensure_codes_ready_by/2, 'Codes of practice shall be ready by a specified date', 'celex:32024R1689/oj#art_56').
declared(codes_not_finalised_by/1, 'A code of practice has not been finalised by the given date', 'celex:32024R1689/oj#art_56').
declared(codes_deemed_inadequate/0, 'A code of practice is deemed inadequate after assessment', 'celex:32024R1689/oj#art_56').
declared(permitted_provide_common_rules/1, 'Commission may provide common rules if codes are not finalised or inadequate', 'celex:32024R1689/oj#art_56').
declared(permitted_approve_code_of_practice/1, 'Commission may approve a code of practice by implementing act', 'celex:32024R1689/oj#art_56').
declared(must_adopt_implementing_act_in_accordance_with/2, 'Implementing act shall be adopted in accordance with the examination procedure', 'celex:32024R1689/oj#art_56').
required_encourage_and_facilitate(ai_office, drawing_up_codes_of_practice).
required_ensure_codes_cover_obligation(ai_office, art_53).
required_ensure_codes_cover_obligation(ai_office, art_55).
required_ensure_codes_cover_obligation(board, art_53).
required_ensure_codes_cover_obligation(board, art_55).
permitted_invite(ai_office, providers_of_general_purpose_ai_models).
permitted_invite(ai_office, relevant_national_competent_authorities).
permitted_adhere_to_codes(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    \+ presents_systemic_risk(Provider).
must_ensure_regular_reporting(ai_office, participants_of_codes_of_practice).
must_monitor_and_evaluate(ai_office, board, codes_of_practice).
must_publish_assessment(ai_office, board, codes_of_practice).
must_ensure_codes_ready_by(ai_office, date(2025,5,2)).
codes_not_finalised_by(date(2025,8,2)).
codes_deemed_inadequate.
permitted_provide_common_rules(commission) :-
    codes_not_finalised_by(date(2025,8,2));
    codes_deemed_inadequate.
permitted_approve_code_of_practice(commission).
must_adopt_implementing_act_in_accordance_with(commission, examination_procedure).
provenance(required_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(required_ensure_codes_cover_obligation/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_adhere_to_codes/1, 'celex:32024R1689/oj#art_56').
provenance(presents_systemic_risk/1, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_regular_reporting/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/3, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/3, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_codes_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(codes_not_finalised_by/1, 'celex:32024R1689/oj#art_56').
provenance(codes_deemed_inadequate/0, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(must_adopt_implementing_act_in_accordance_with/2, 'celex:32024R1689/oj#art_56').
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
declared(required_establish_ai_regulatory_sandbox/1, 'competent authority must establish at least one AI regulatory sandbox', 'celex:32024R1689/oj#art_57').
declared(required_establish_ai_regulatory_sandbox_joint/2, 'competent authorities may jointly establish an AI regulatory sandbox', 'celex:32024R1689/oj#art_57').
declared(required_establish_additional_ai_regulatory_sandbox/1, 'competent authority may establish additional regional or local AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(permitted_establish_ai_regulatory_sandbox_by_supervisor/1, 'European Data Protection Supervisor may establish an AI regulatory sandbox for Union institutions', 'celex:32024R1689/oj#art_57').
declared(required_allocate_resources/1, 'competent authority must allocate sufficient resources for AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(required_provide_controlled_environment/1, 'AI regulatory sandbox must provide a controlled environment fostering innovation', 'celex:32024R1689/oj#art_57').
declared(required_include_real_world_testing/1, 'AI regulatory sandbox may include testing in real world conditions', 'celex:32024R1689/oj#art_57').
declared(required_provide_guidance/2, 'competent authority must provide guidance, supervision and support within the sandbox', 'celex:32024R1689/oj#art_57').
declared(required_provide_exit_report/2, 'competent authority must provide a written exit report to the provider', 'celex:32024R1689/oj#art_57').
declared(permitted_access_exit_report/2, 'Commission and Board may access exit reports', 'celex:32024R1689/oj#art_57').
declared(permitted_public_release_exit_report/2, 'Exit report may be made publicly available with explicit agreement', 'celex:32024R1689/oj#art_57').
declared(objective_improving_legal_certainty/1, 'sandbox aims to improve legal certainty', 'celex:32024R1689/oj#art_57').
declared(objective_sharing_best_practices/1, 'sandbox aims to support sharing of best practices', 'celex:32024R1689/oj#art_57').
declared(objective_fostering_innovation/1, 'sandbox aims to foster innovation and competitiveness', 'celex:32024R1689/oj#art_57').
declared(objective_evidence_based_learning/1, 'sandbox aims to contribute to evidence‑based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_facilitating_market_access/1, 'sandbox aims to facilitate and accelerate market access for AI systems', 'celex:32024R1689/oj#art_57').
declared(required_associate_data_protection_authority/2, 'national competent authority must associate data protection authority with sandbox operation', 'celex:32024R1689/oj#art_57').
declared(prohibited_affect_supervisory_powers/1, 'AI regulatory sandboxes must not affect supervisory or corrective powers of competent authorities', 'celex:32024R1689/oj#art_57').
declared(required_suspend_testing_process/2, 'competent authority may suspend testing process if no effective mitigation is possible', 'celex:32024R1689/oj#art_57').
declared(exempt_admin_fine/1, 'providers are exempt from administrative fines when complying with sandbox plan and guidance', 'celex:32024R1689/oj#art_57').
declared(required_coordinate/1, 'national competent authorities must coordinate and cooperate within the Board framework', 'celex:32024R1689/oj#art_57').
declared(required_inform_ai_office/1, 'national competent authorities must inform the AI Office and the Board of sandbox establishment', 'celex:32024R1689/oj#art_57').
declared(required_publish_sandbox_list/0, 'AI Office must make publicly available a list of planned and existing sandboxes', 'celex:32024R1689/oj#art_57').
declared(required_submit_annual_report/2, 'national competent authorities must submit annual reports to the AI Office and the Board', 'celex:32024R1689/oj#art_57').
declared(required_develop_interface/1, 'Commission must develop a single dedicated interface for AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(required_coordinate_with_authorities/1, 'Commission must proactively coordinate with national competent authorities', 'celex:32024R1689/oj#art_57').
required_establish_ai_regulatory_sandbox(Authority) :-
    member_state(Authority),
    national_competent_authority(Authority).
required_establish_ai_regulatory_sandbox_joint(Authority1, Authority2) :-
    member_state(Authority1),
    member_state(Authority2),
    national_competent_authority(Authority1),
    national_competent_authority(Authority2).
required_establish_additional_ai_regulatory_sandbox(Authority) :-
    member_state(Authority),
    national_competent_authority(Authority).
permitted_establish_ai_regulatory_sandbox_by_supervisor(Supervisor) :-
    european_data_protection_supervisor(Supervisor).
required_allocate_resources(Authority) :-
    national_competent_authority(Authority).
required_provide_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_include_real_world_testing(Sandbox) :-
    required_provide_controlled_environment(Sandbox),
    testing_in_real_world_conditions(Sandbox).
required_provide_guidance(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
required_provide_exit_report(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).
permitted_access_exit_report(Actor, Report) :-
    (commission(Actor) ; board(Actor)),
    exit_report(Report).
permitted_public_release_exit_report(Provider, Report) :-
    provider(Provider),
    exit_report(Report),
    explicit_agreement(Provider, Report).
objective_improving_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_sharing_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_fostering_innovation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_facilitating_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_associate_data_protection_authority(Authority, DataProtectionAuthority) :-
    national_competent_authority(Authority),
    data_protection_authority(DataProtectionAuthority).
prohibited_affect_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_suspend_testing_process(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    significant_risk_identified(Sandbox),
    \+ effective_mitigation_possible(Sandbox).
exempt_admin_fine(Provider) :-
    provider(Provider),
    participating_in_sandbox(Provider, Sandbox),
    follows_sandbox_plan(Provider, Sandbox),
    follows_guidance(Provider, Sandbox).
required_coordinate(Authority) :-
    national_competent_authority(Authority).
required_inform_ai_office(Authority) :-
    national_competent_authority(Authority).
required_publish_sandbox_list.
required_submit_annual_report(Authority, Report) :-
    national_competent_authority(Authority),
    annual_report(Report).
required_develop_interface(Commission) :-
    commission(Commission).
required_coordinate_with_authorities(Commission) :-
    commission(Commission).
provenance(required_establish_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(required_establish_ai_regulatory_sandbox_joint/2, 'celex:32024R1689/oj#art_57').
provenance(required_establish_additional_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(permitted_establish_ai_regulatory_sandbox_by_supervisor/1, 'celex:32024R1689/oj#art_57').
provenance(required_allocate_resources/1, 'celex:32024R1689/oj#art_57').
provenance(required_provide_controlled_environment/1, 'celex:32024R1689/oj#art_57').
provenance(required_include_real_world_testing/1, 'celex:32024R1689/oj#art_57').
provenance(required_provide_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(required_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_access_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_public_release_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_fostering_innovation/1, 'celex:32024R1689/oj#art_57').
provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').
provenance(required_associate_data_protection_authority/2, 'celex:32024R1689/oj#art_57').
provenance(prohibited_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
provenance(required_suspend_testing_process/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_admin_fine/1, 'celex:32024R1689/oj#art_57').
provenance(required_coordinate/1, 'celex:32024R1689/oj#art_57').
provenance(required_inform_ai_office/1, 'celex:32024R1689/oj#art_57').
provenance(required_publish_sandbox_list/0, 'celex:32024R1689/oj#art_57').
provenance(required_submit_annual_report/2, 'celex:32024R1689/oj#art_57').
provenance(required_develop_interface/1, 'celex:32024R1689/oj#art_57').
provenance(required_coordinate_with_authorities/1, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(ai_regulatory_sandbox/1, 'AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(implementing_act/1, 'Implementing act for AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(applying_provider/1, 'Provider applying for sandbox', 'celex:32024R1689/oj#art_58').
declared(prospective_provider/1, 'Prospective provider for sandbox', 'celex:32024R1689/oj#art_58').
declared(fulfills_eligibility/1, 'Provider fulfills eligibility and selection criteria', 'celex:32024R1689/oj#art_58').
declared(small_and_medium_enterprise/1, 'SME', 'celex:32024R1689/oj#art_58').
declared(participant_in_sandbox/2, 'Participant in sandbox', 'celex:32024R1689/oj#art_58').
required_adopt_implementing_acts(_Commission, Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
permitted_access_to_sandbox(Provider, Sandbox) :-
    (applying_provider(Provider) ; prospective_provider(Provider)),
    fulfills_eligibility(Provider),
    ai_regulatory_sandbox(Sandbox).
must_inform_applicant(NCA, Provider) :-
    national_competent_authority(NCA),
    (applying_provider(Provider) ; prospective_provider(Provider)).
required_broad_equal_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
permitted_partnership_application(Provider, Deployer) :-
    provider(Provider),
    deployer(Deployer),
    ai_regulatory_sandbox(_Sandbox).
required_flexibility_for_nca(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox).
required_free_access_for_sme(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
permitted_free_access_for_sme(SME, Sandbox) :-
    small_and_medium_enterprise(SME),
    ai_regulatory_sandbox(Sandbox).
required_facilitate_compliance_with_conformity_assessment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_facilitate_involvement_of_actors(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_simple_intelligible_procedures(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_mutual_recognition_across_union(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
required_time_limit_for_participation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
permitted_extension_by_nca(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox).
required_facilitate_development_of_tools(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_direct_to_predeployment_services(ProspectiveProvider, Sandbox) :-
    prospective_provider(ProspectiveProvider),
    ai_regulatory_sandbox(Sandbox).
must_agree_testing_terms(NCA, Participant, Sandbox) :-
    national_competent_authority(NCA),
    participant_in_sandbox(Participant, Sandbox).
must_protect_fundamental_rights(NCA, Participant, Sandbox) :-
    national_competent_authority(NCA),
    participant_in_sandbox(Participant, Sandbox).
must_cooperate_with_other_nca(NCA, OtherNCA) :-
    national_competent_authority(NCA),
    national_competent_authority(OtherNCA),
    NCA \= OtherNCA.
provenance(required_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(permitted_access_to_sandbox/2, 'celex:32024R1689/oj#art_58').
provenance(must_inform_applicant/2, 'celex:32024R1689/oj#art_58').
provenance(required_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(permitted_partnership_application/2, 'celex:32024R1689/oj#art_58').
provenance(required_flexibility_for_nca/2, 'celex:32024R1689/oj#art_58').
provenance(required_free_access_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(permitted_free_access_for_sme/2, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_compliance_with_conformity_assessment/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_involvement_of_actors/1, 'celex:32024R1689/oj#art_58').
provenance(required_simple_intelligible_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(required_mutual_recognition_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(required_time_limit_for_participation/1, 'celex:32024R1689/oj#art_58').
provenance(permitted_extension_by_nca/2, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_predeployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_testing_terms/3, 'celex:32024R1689/oj#art_58').
provenance(must_protect_fundamental_rights/3, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_with_other_nca/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(public_authority/1, 'public authority', 'celex:32024R1689/oj#art_59').
declared(sandbox_ai_system/1, 'AI system operating in the regulatory sandbox', 'celex:32024R1689/oj#art_59').
declared(objective_develop_train_test/1, 'purpose of developing, training and testing AI systems', 'celex:32024R1689/oj#art_59').
declared(objective_public_interest_area/2, 'public‑interest area in which AI system is developed', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'specific public‑interest area', 'celex:32024R1689/oj#art_59').
declared(condition_a/1, 'condition a of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_b/2, 'condition b of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_c/1, 'condition c of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_d/2, 'condition d of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_e/2, 'condition e of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_f/1, 'condition f of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_g/1, 'condition g of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_h/1, 'condition h of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_i/1, 'condition i of Article 59', 'celex:32024R1689/oj#art_59').
declared(condition_j/1, 'condition j of Article 59', 'celex:32024R1689/oj#art_59').
declared(permitted_processing_personal_data/2, 'permission to process personal data in the sandbox for AI development, training and testing', 'celex:32024R1689/oj#art_59').
declared(share_allowed_by_union_law/2, 'sharing of data is allowed by Union law', 'celex:32024R1689/oj#art_59').
declared(not_shared_outside_sandbox/1, 'personal data not shared outside the sandbox', 'celex:32024R1689/oj#art_59').
declared(monitoring_mechanisms/1, 'effective monitoring mechanisms are in place', 'celex:32024R1689/oj#art_59').
declared(high_risk_identified/1, 'high risks to data subjects may arise', 'celex:32024R1689/oj#art_59').
declared(isolated_environment/1, 'data are in an isolated processing environment', 'celex:32024R1689/oj#art_59').
declared(control_of_provider/1, 'environment under control of prospective provider', 'celex:32024R1689/oj#art_59').
declared(authorised_person_access/1, 'only authorised persons have access', 'celex:32024R1689/oj#art_59').
declared(protected_by_measures/1, 'data protected by technical and organisational measures', 'celex:32024R1689/oj#art_59').
declared(deleted_after_termination/1, 'data deleted after sandbox participation ends', 'celex:32024R1689/oj#art_59').
declared(logs_kept_for_participation/1, 'logs kept for duration of participation', 'celex:32024R1689/oj#art_59').
declared(documentation_kept/1, 'process description and rationale kept with testing results', 'celex:32024R1689/oj#art_59').
declared(summary_published/1, 'short summary published on competent authority website', 'celex:32024R1689/oj#art_59').
declared(not_sensitive_operational_data_in_summary/1, 'summary excludes sensitive operational data', 'celex:32024R1689/oj#art_59').
declared(no_measures_affecting_subjects/1, 'processing does not lead to measures affecting data subjects', 'celex:32024R1689/oj#art_59').

% ==== celex:32024R1689/oj#art_60 ====
declared(prospective_provider/1, 'entity that intends to become a provider of a high‑risk AI system', 'art_60').
declared(prospective_deployer/1, 'entity that intends to become a deployer of a high‑risk AI system', 'art_60').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'art_60').
declared(before_market_placement/1, 'the AI system has not yet been placed on the market nor put into service', 'art_60').
declared(testing_plan_drawn_up/2, 'provider or prospective provider has prepared a real‑world testing plan for the AI system', 'art_60').
declared(testing_plan_submitted/2, 'testing plan has been submitted to the market surveillance authority', 'art_60').
declared(testing_approved/3, 'market surveillance authority has approved the testing and the testing plan', 'art_60').
declared(registration_number/3, 'unique Union‑wide identification number assigned to the testing', 'art_60').
declared(established_in_union/1, 'entity is established in the Union or has a legal representative established in the Union', 'art_60').
declared(third_country_transfer_safeguards/2, 'appropriate safeguards are in place for any transfer of data to third countries', 'art_60').
declared(duration_not_exceeding_limit/1, 'testing does not last longer than six months, with a possible six‑month extension', 'art_60').
declared(vulnerable_subjects_protected/1, 'subjects belonging to vulnerable groups are appropriately protected', 'art_60').
declared(information_provided/2, 'deployer is informed of all relevant aspects of the testing and receives instructions for use', 'art_60').
declared(informed_consent_obtained/1, 'subjects have given informed consent or, where consent is impossible, safeguards ensure no negative effect and data deletion', 'art_60').
declared(oversight_by/2, 'testing is overseen by qualified persons from provider and deployer', 'art_60').
declared(reversibility_possible/1, 'predictions, recommendations or decisions of the AI system can be effectively reversed or disregarded', 'art_60').
declared(occurs_during_testing/2, 'incident occurs during the real‑world testing of the AI system', 'art_60').
declared(report_to/2, 'incident is reported to the market surveillance authority', 'art_60').
declared(suspend_testing/2, 'testing is suspended pending mitigation', 'art_60').
declared(recall_procedure_established/2, 'procedure for prompt recall of the AI system is in place', 'art_60').
declared(notification_sent/3, 'authority is notified of suspension or termination and final outcomes', 'art_60').
declared(liable_under_law/2, 'provider or prospective provider is liable for damage caused by testing', 'art_60').
permitted_testing_high_risk_ai_system(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    before_market_placement(S).
required_testing_plan_submitted(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    testing_plan_drawn_up(P, S),
    testing_plan_submitted(P, S).
required_testing_approval(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    market_surveillance_authority(MSA),
    testing_approved(P, S, MSA).
required_registration(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    registration_number(P, S, _ID).
required_union_established(P) :-
    (provider(P) ; prospective_provider(P)),
    established_in_union(P).
required_third_country_transfer_safeguards(P, S) :-
    (provider(P) ; prospective_provider(P)),
    high_risk_ai_system(S),
    third_country_transfer_safeguards(P, S).
required_testing_duration_limit(S) :-
    duration_not_exceeding_limit(S),
    duration_not_exceeding_limit(S).
required_protection_vulnerable_subjects(S) :-
    vulnerable_subjects_protected(S),
    vulnerable_subjects_protected(S).
required_information_to_deployer(P, D) :-
    (provider(P) ; prospective_provider(P)),
    deployer(D),
    information_provided(P, D).
required_informed_consent(S) :-
    informed_consent_obtained(S),
    informed_consent_obtained(S).
required_oversight(P, S) :-
    (provider(P) ; prospective_provider(P)),
    oversight_by(P, S),
    oversight_by(P, S).
required_reversibility(S) :-
    reversibility_possible(S),
    reversibility_possible(S).
must_report_serious_incident(P, S) :-
    (provider(P) ; prospective_provider(P)),
    serious_incident(I),
    occurs_during_testing(I, S),
    market_surveillance_authority(MSA),
    report_to(MSA, I).
must_suspend_testing(P, S) :-
    (provider(P) ; prospective_provider(P)),
    serious_incident(I),
    occurs_during_testing(I, S),
    suspend_testing(P, S).
must_establish_recall_procedure(P, S) :-
    (provider(P) ; prospective_provider(P)),
    recall_procedure_established(P, S),
    recall_procedure_established(P, S).
must_notify_suspension_or_termination(P, S) :-
    (provider(P) ; prospective_provider(P)),
    market_surveillance_authority(MSA),
    notification_sent(P, MSA, S),
    notification_sent(P, MSA, S).
must_be_liable(P, S) :-
    (provider(P) ; prospective_provider(P)),
    liable_under_law(P, S),
    liable_under_law(P, S).
before_market_placement(S) :-
    \+ placing_on_market(S),
    \+ putting_into_service(S).
provenance(permitted_testing_high_risk_ai_system/2, 'celex:32024R1689/oj#art_60').
provenance(required_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(required_testing_approval/2, 'celex:32024R1689/oj#art_60').
provenance(required_registration/2, 'celex:32024R1689/oj#art_60').
provenance(required_union_established/1, 'celex:32024R1689/oj#art_60').
provenance(required_third_country_transfer_safeguards/2, 'celex:32024R1689/oj#art_60').
provenance(required_testing_duration_limit/1, 'celex:32024R1689/oj#art_60').
provenance(required_protection_vulnerable_subjects/1, 'celex:32024R1689/oj#art_60').
provenance(required_information_to_deployer/2, 'celex:32024R1689/oj#art_60').
provenance(required_informed_consent/1, 'celex:32024R1689/oj#art_60').
provenance(required_oversight/2, 'celex:32024R1689/oj#art_60').
provenance(required_reversibility/1, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
provenance(must_suspend_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_suspension_or_termination/2, 'celex:32024R1689/oj#art_60').
provenance(must_be_liable/2, 'celex:32024R1689/oj#art_60').
provenance(before_market_placement/1, 'celex:32024R1689/oj#art_60').
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
declared(must_obtain_informed_consent/2, 'obtain freely‑given informed consent from subject of testing', 'celex:32024R1689/oj#art_61').
declared(must_date_and_document_consent/1, 'ensure consent is dated and documented', 'celex:32024R1689/oj#art_61').
declared(must_give_copy_of_consent/1, 'provide copy of consent to subject', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(Actor, Subject) :-
    provider(Actor),
    operator(Actor),
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ sandbox_plan(T).
must_date_and_document_consent(Subject) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ sandbox_plan(T).
must_give_copy_of_consent(Subject) :-
    subject(Subject),
    testing_in_real_world_conditions(T),
    \+ sandbox_plan(T).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_date_and_document_consent/1, 'celex:32024R1689/oj#art_61').
provenance(must_give_copy_of_consent/1, 'ce://32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_62').
declared(sme/1, 'small or medium‑sized enterprise', 'celex:32024R1689/oj#art_62').
declared(fulfills_eligibility_conditions/1, 'SME meets eligibility conditions for sandbox', 'celex:32024R1689/oj#art_62').
declared(fulfills_selection_criteria/1, 'SME meets selection criteria for sandbox', 'celex:32024R1689/oj#art_62').
declared(excluded_sme/1, 'SME excluded from priority access as per art 62 par 1', 'celex:32024R1689/oj#art_62').
declared(local_public_authority/1, 'local public authority', 'celex:32024R1689/oj#art_62').
declared(size_indicator/1, 'indicator of size for fee reduction', 'celex:32024R1689/oj#art_62').
required_provide_priority_access_to_ai_regulatory_sandbox(_MS, SME) :-
    sme(SME),
    \+ excluded_sme(SME),
    fulfills_eligibility_conditions(SME),
    fulfills_selection_criteria(SME).
prohibited_preclusion_of_access_to_ai_regulatory_sandbox(_MS, SME) :-
    sme(SME),
    \+ excluded_sme(SME),
    fulfills_eligibility_conditions(SME),
    fulfills_selection_criteria(SME).
required_organise_awareness_raising_and_training(_MS, sme) :-
    sme(_).
required_organise_awareness_raising_and_training(_MS, deployer) :-
    deployer(_).
required_organise_awareness_raising_and_training(_MS, local_public_authority) :-
    local_public_authority(_).
required_maintain_communication_channels(_MS) :-
    true.
required_facilitate_participation_in_standardisation(_MS, SME) :-
    sme(SME).
required_take_into_account_sme_interests_when_setting_fees(_MS, SME) :-
    sme(SME).
required_reduce_fees_proportionately(_MS, SME) :-
    sme(SME),
    size_indicator(SME).
required_provide_standardised_templates(Office) :-
    ai_office(Office).
required_develop_and_maintain_information_platform(Office) :-
    ai_office(Office).
required_organise_communication_campaigns(Office) :-
    ai_office(Office).
required_evaluate_and_promote_best_practices_in_public_procurement(Office) :-
    ai_office(Office).
provenance(required_provide_priority_access_to_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(prohibited_preclusion_of_access_to_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(required_organise_awareness_raising_and_training/2, 'celex:32024R1689/oj#art_62').
provenance(required_maintain_communication_channels/1, 'celex:32024R1689/oj#art_62').
provenance(required_facilitate_participation_in_standardisation/2, 'celex:32024R1689/oj#art_62').
provenance(required_take_into_account_sme_interests_when_setting_fees/2, 'celex:32024R1689/oj#art_62').
provenance(required_reduce_fees_proportionately/2, 'celex:32024R1689/oj#art_62').
provenance(required_provide_standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(required_develop_and_maintain_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(required_organise_communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(required_evaluate_and_promote_best_practices_in_public_procurement/1, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise as defined in the relevant Union recommendation', 'celex:32024R1689/oj#art_63').
declared(permitted_simplified_quality_management/1, 'permission for microenterprises to comply with elements of the quality management system in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(partner_or_linked_enterprise_exists/1, 'microenterprise has a partner or linked enterprise', 'celex:32024R1689/oj#art_63').
declared(prohibited_exemption_from_other_requirements/1, 'prohibition on exempting microenterprises from any other requirements or obligations', 'celex:32024R1689/oj#art_63').
permitted_simplified_quality_management(M) :-
    microenterprise(M),
    \+ partner_or_linked_enterprise_exists(M).
partner_or_linked_enterprise_exists(M) :-
    has_partner_enterprise(M, _).
partner_or_linked_enterprise_exists(M) :-
    has_linked_enterprise(M, _).
prohibited_exemption_from_other_requirements(M) :-
    microenterprise(M).
provenance(permitted_simplified_quality_management/1, 'celex:32024R1689/oj#art_63').
provenance(partner_or_linked_enterprise_exists/1, 'celex:32024R1689/oj#art_63').
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
declared(must_develop/2, 'Commission must develop Union expertise and capabilities in AI through the AI Office', 'celex:32024R1689/oj#art_64').
declared(must_facilitate/2, 'Member State must facilitate the tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop(_Commission, union_expertise_and_capabilities_in_ai).
must_facilitate(_MemberState, tasks_entrusted_to_ai_office).
provenance(must_develop/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(established/1, 'European Artificial Intelligence Board established', 'celex:32024R1689/oj#art_65').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(required_composition/2, 'Composition requirement for Board', 'celex:32024R1689/oj#art_65').
declared(board_representative/1, 'Representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(must_appoint_chair/2, 'Board must appoint a chair from its representatives', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'AI Office provides secretariat for Board', 'celex:32024R1689/oj#art_65').
declared(must_convene_meetings/2, 'AI Office convenes Board meetings', 'celex:32024R1689/oj#art_65').
declared(must_prepare_agenda/2, 'AI Office prepares agenda for Board', 'celex:32024R1689/oj#art_65').
declared(must_ensure_objectivity_and_impartiality/1, 'Board must safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_65').
declared(must_establish_subgroup/2, 'Board must establish standing sub‑groups', 'celex:32024R1689/oj#art_65').
declared(must_act_as_adco/1, 'Market surveillance sub‑group acts as ADCO', 'celex:32024R1689/oj#art_65').
declared(permitted_establish_subgroup/2, 'Board may establish other sub‑groups', 'celex:32024R1689/oj#art_65').
declared(appropriate/1, 'Sub‑group appropriate for examination', 'celex:32024R1689/oj#art_65').
established(eai_board).
provenance(established/1, 'celex:32024R1689/oj#art_65').
board(eai_board) :-
    established(eai_board).
provenance(board/1, 'celex:32024R1689/oj#art_65').
required_composition(eai_board, one_representative_per_member_state).
provenance(required_composition/2, 'celex:32024R1689/oj#art_65').
board_representative(_).
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
must_appoint_chair(Board, Rep) :-
    board(Board),
    board_representative(Rep).
provenance(must_appoint_chair/2, 'celex:32024R1689/oj#art_65').
must_provide_secretariat(AIOffice, Board) :-
    ai_office(AIOffice),
    board(Board).
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
must_convene_meetings(AIOffice, Board) :-
    ai_office(AIOffice),
    board(Board).
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
must_prepare_agenda(AIOffice, Board) :-
    ai_office(AIOffice),
    board(Board).
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').
must_ensure_objectivity_and_impartiality(Board) :-
    board(Board).
provenance(must_ensure_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
must_establish_subgroup(Board, market_surveillance_subgroup) :-
    board(Board).
provenance(must_establish_subgroup/2, 'celex:32024R1689/oj#art_65').
must_establish_subgroup(Board, notifying_authorities_subgroup) :-
    board(Board).
must_act_as_adco(market_surveillance_subgroup) :-
    must_establish_subgroup(_, market_surveillance_subgroup).
provenance(must_act_as_adco/1, 'celex:32024R1689/oj#art_65').
appropriate(_).
provenance(appropriate/1, 'celex:32024R1689/oj#art_65').
permitted_establish_subgroup(Board, Subgroup) :-
    board(Board),
    appropriate(Subgroup).
provenance(permitted_establish_subgroup/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'Board of the AI Regulation', 'celex:32024R1689/oj#art_66').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_66').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_66').
declared(must_advise_and_assist/1, 'Board shall advise and assist', 'celex:32024R1689/oj#art_66').
declared(permitted_contribute_coordination/1, 'Board may contribute to coordination among national competent authorities', 'celex:32024R1689/oj#art_66').
declared(permitted_collect_and_share_expertise/1, 'Board may collect and share technical and regulatory expertise', 'celex:32024R1689/oj#art_66').
declared(permitted_provide_advice_implementation/1, 'Board may provide advice on implementation of the Regulation', 'celex:32024R1689/oj#art_66').
declared(permitted_contribute_harmonisation/1, 'Board may contribute to harmonisation of administrative practices', 'celex:32024R1689/oj#art_66').
declared(permitted_issue_recommendations/1, 'Board may issue recommendations and written opinions', 'celex:32024R1689/oj#art_66').
declared(permitted_support_ai_literacy/1, 'Board may support the Commission in promoting AI literacy', 'celex:32024R1689/oj#art_66').
declared(permitted_facilitate_common_criteria/1, 'Board may facilitate development of common criteria and shared understanding', 'celex:32024R1689/oj#art_66').
declared(permitted_cooperate_with_union_entities/1, 'Board may cooperate with other Union institutions, bodies, offices and agencies', 'celex:32024R1689/oj#art_66').
declared(permitted_cooperate_third_countries/1, 'Board may cooperate with competent authorities of third countries and international organisations', 'celex:32024R1689/oj#art_66').
declared(permitted_assist_expertise_development/1, 'Board may assist national competent authorities and the Commission in developing organisational and technical expertise', 'celex:32024R1689/oj#art_66').
declared(permitted_assist_ai_office_sandboxes/1, 'Board may assist the AI Office in supporting national competent authorities in AI regulatory sandboxes', 'celex:32024R1689/oj#art_66').
declared(permitted_contribute_guidance_documents/1, 'Board may contribute to and provide advice on guidance documents', 'celex:32024R1689/oj#art_66').
declared(permitted_advise_international_matters/1, 'Board may advise the Commission on international matters on AI', 'celex:32024R1689/oj#art_66').
declared(permitted_provide_opinions_qualified_alerts/1, 'Board may provide opinions to the Commission on qualified alerts regarding general‑purpose AI models', 'celex:32024R1689/oj#art_66').
declared(permitted_receive_opinions_qualified_alerts/1, 'Board may receive opinions by Member States on qualified alerts regarding general‑purpose AI models', 'celex:32024R1689/oj#art_66').
must_advise_and_assist(Board) :-
    board(Board).
permitted_contribute_coordination(Board) :-
    board(Board).
permitted_collect_and_share_expertise(Board) :-
    board(Board).
permitted_provide_advice_implementation(Board) :-
    board(Board).
permitted_contribute_harmonisation(Board) :-
    board(Board).
permitted_issue_recommendations(Board) :-
    board(Board).
permitted_support_ai_literacy(Board) :-
    board(Board).
permitted_facilitate_common_criteria(Board) :-
    board(Board).
permitted_cooperate_with_union_entities(Board) :-
    board(Board).
permitted_cooperate_third_countries(Board) :-
    board(Board).
permitted_assist_expertise_development(Board) :-
    board(Board).
permitted_assist_ai_office_sandboxes(Board) :-
    board(Board).
permitted_contribute_guidance_documents(Board) :-
    board(Board).
permitted_advise_international_matters(Board) :-
    board(Board).
permitted_provide_opinions_qualified_alerts(Board) :-
    board(Board).
permitted_receive_opinions_qualified_alerts(Board) :-
    board(Board).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(commission/1, 'celex:32024R1689/oj#art_66').
provenance(member_state/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise_and_assist/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_advice_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_issue_recommendations/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_with_union_entities/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_third_countries/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_advise_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_opinions_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_receive_opinions_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
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
declared(required_advisory_forum/0, 'establishment of the advisory forum is required', 'celex:32024R1689/oj#art_67').
declared(required_balanced_membership/1, 'membership of the advisory forum must be balanced', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_member/1, 'member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_appoint/2, 'Commission must appoint members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(required_term_of_office/2, 'term of office for members or co‑chairs', 'celex:32024R1689/oj#art_67').
declared(required_term_extension_limit/2, 'maximum possible extension of term of office', 'celex:32024R1689/oj#art_67').
declared(permanent_member/2, 'entities that are permanent members of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(must_draw_up_rules_of_procedure/1, 'advisory forum must draw up its rules of procedure', 'celex:32024R1689/oj#art_67').
declared(must_elect_co_chair/2, 'advisory forum must elect co‑chairs', 'celex:32024R1689/oj#art_67').
declared(required_renewable_once/1, 'term of office of co‑chairs may be renewed once', 'celex:32024R1689/oj#art_67').
declared(required_meeting_frequency/2, 'advisory forum must hold meetings at least twice a year', 'celex:32024R1689/oj#art_67').
declared(permitted_invite_experts/1, 'advisory forum may invite experts and stakeholders to meetings', 'celex:32024R1689/oj#art_67').
declared(permitted_prepare_opinions/1, 'advisory forum may prepare opinions, recommendations and contributions', 'celex:32024R1689/oj#art_67').
declared(permitted_establish_sub_groups/1, 'advisory forum may establish standing or temporary sub‑groups', 'celex:32024R1689/oj#art_67').
declared(must_prepare_annual_report/1, 'advisory forum must prepare an annual report', 'celex:32024R1689/oj#art_67').
declared(report/1, 'annual report of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(annual_report_of/2, 'link between advisory forum and its annual report', 'celex:32024R1689/oj#art_67').
declared(must_make_publicly_available/1, 'annual report shall be made publicly available', 'celex:32024R1689/oj#art_67').
advisory_forum(advisory_forum).
required_advisory_forum.
advisory_forum_member(_).
report(annual_report).
required_balanced_membership(Forum) :-
    advisory_forum(Forum).
must_appoint(commission, Member) :-
    advisory_forum_member(Member).
required_term_of_office(Entity, two_years) :-
    advisory_forum_member(Entity).
required_term_extension_limit(Entity, four_years) :-
    advisory_forum_member(Entity).
permanent_member(fundamental_rights_agency, Forum) :-
    advisory_forum(Forum).
permanent_member(enisa, Forum) :-
    advisory_forum(Forum).
permanent_member(cen, Forum) :-
    advisory_forum(Forum).
permanent_member(cenelec, Forum) :-
    advisory_forum(Forum).
permanent_member(etsi, Forum) :-
    advisory_forum(Forum).
must_draw_up_rules_of_procedure(Forum) :-
    advisory_forum(Forum).
must_elect_co_chair(Forum, CoChair) :-
    advisory_forum(Forum),
    advisory_forum_member(CoChair).
required_renewable_once(CoChair) :-
    advisory_forum_member(CoChair).
required_meeting_frequency(Forum, at_least_twice_per_year) :-
    advisory_forum(Forum).
permitted_invite_experts(Forum) :-
    advisory_forum(Forum).
permitted_prepare_opinions(Forum) :-
    advisory_forum(Forum).
permitted_establish_sub_groups(Forum) :-
    advisory_forum(Forum).
must_prepare_annual_report(Forum) :-
    advisory_forum(Forum).
annual_report_of(Forum, Report) :-
    advisory_forum(Forum),
    report(Report).
must_make_publicly_available(Report) :-
    annual_report_of(_Forum, Report).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(required_advisory_forum/0, 'celex:32024R1689/oj#art_67').
provenance(required_balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(required_term_extension_limit/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chair/2, 'celex:32024R1689/oj#art_67').
provenance(required_renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(required_meeting_frequency/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite_experts/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_opinions/1, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_sub_groups/1, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(report/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_of/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/1, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'panel of independent experts established under the regulation', 'celex:32024R1689/oj#art_68').
declared(expert/1, 'member of the scientific panel', 'celex:32024R1689/oj#art_68').
declared(implementing_act/1, 'act adopted by the Commission to implement provisions', 'celex:32024R1689/oj#art_68').
must_make_provisions(commission, scientific_panel).
required_adoption_of_implementing_act(Act) :-
    implementing_act(Act).
must_determine_number_of_experts(commission).
must_ensure_fair_gender_and_geographical_representation(commission).
selected_by_commission(Expert) :-
    expert(Expert).
required_expert_condition(Expert, expertise_in_ai) :-
    expert(Expert).
required_expert_condition(Expert, independence_from_providers) :-
    expert(Expert).
required_expert_condition(Expert, diligence_and_objectivity) :-
    expert(Expert).
must_advise_and_support(scientific_panel, Office) :-
    ai_office(Office).
objective_alert_systemic_risk(scientific_panel).
objective_develop_evaluation_tools(scientific_panel).
objective_provide_classification_advice(scientific_panel).
objective_support_market_surveillance(scientific_panel).
objective_support_cross_border_surveillance(scientific_panel).
objective_support_ai_office_safeguard_procedure(scientific_panel).
must_perform_with_impartiality_and_objectivity(Expert) :-
    expert(Expert).
must_ensure_confidentiality(Expert) :-
    expert(Expert).
must_not_seek_instructions(Expert) :-
    expert(Expert).
must_draw_up_declaration_of_interests(Expert) :-
    expert(Expert).
must_establish_conflict_of_interest_management(Office) :-
    ai_office(Office).
required_provision_in_implementing_act(Act, scientific_panel_alerts_and_assistance) :-
    implementing_act(Act).
ai_office('ai_office').
scientific_panel('panel').
expert('expert_1').
expert('expert_2').
implementing_act('implementing_act_1').
provenance(must_make_provisions/2, 'celex:32024R1689/oj#art_68').
provenance(required_adoption_of_implementing_act/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number_of_experts/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_gender_and_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(required_expert_condition/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(objective_alert_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(objective_develop_evaluation_tools/1, 'celex:32024R1689/oj#art_68').
provenance(objective_provide_classification_advice/1, 'celex:32024R1689/oj#art_68').
provenance(objective_support_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(objective_support_cross_border_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(objective_support_ai_office_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(must_perform_with_impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_conflict_of_interest_management/1, 'celex:32024R1689/oj#art_68').
provenance(required_provision_in_implementing_act/2, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_68').
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
permitted_call_upon_experts(MS, E) :-
    member_state(MS),
    member_state(MS),
    expert_of_scientific_panel(E),
    expert_of_scientific_panel(E).
must_pay_fees(MS, E) :-
    member_state(MS),
    member_state(MS),
    expert_of_scientific_panel(E),
    expert_of_scientific_panel(E).
must_facilitate_access(C, MS, E) :-
    commission(C),
    commission(C),
    member_state(MS),
    member_state(MS),
    expert_of_scientific_panel(E),
    expert_of_scientific_panel(E).
provenance(permitted_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/3, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_70').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_70').
required_designate_notifying_authority(MS) :-
    member_state(MS).
provenance(required_designate_notifying_authority/1, 'celex:32024R1689/oj#art_70').
required_designate_market_surveillance_authority(MS) :-
    member_state(MS).
provenance(required_designate_market_surveillance_authority/1, 'celex:32024R1689/oj#art_70').
required_communicate_nca_identities(MS) :-
    member_state(MS).
provenance(required_communicate_nca_identities/1, 'celex:32024R1689/oj#art_70').
required_make_public_contact_info(MS) :-
    member_state(MS).
provenance(required_make_public_contact_info/1, 'celex:32024R1689/oj#art_70').
required_designate_spoc_market_surveillance_authority(MS) :-
    member_state(MS).
provenance(required_designate_spoc_market_surveillance_authority/1, 'celex:32024R1689/oj#art_70').
required_commission_publish_spoc_list.
provenance(required_commission_publish_spoc_list/0, 'celex:32024R1689/oj#art_70').
required_provide_adequate_resources(NCA) :-
    national_competent_authority(NCA).
provenance(required_provide_adequate_resources/1, 'celex:32024R1689/oj#art_70').
required_annual_assessment_of_resources(MS) :-
    member_state(MS).
provenance(required_annual_assessment_of_resources/1, 'celex:32024R1689/oj#art_70').
required_ensure_cybersecurity(NCA) :-
    national_competent_authority(NCA).
provenance(required_ensure_cybersecurity/1, 'celex:32024R1689/oj#art_70').
required_observe_confidentiality(NCA) :-
    national_competent_authority(NCA).
provenance(required_observe_confidentiality/1, 'celex:32024R1689/oj#art_70').
required_report_resources_status(MS) :-
    member_state(MS).
provenance(required_report_resources_status/1, 'celex:32024R1689/oj#art_70').
required_transmit_information_to_board(Comm) :-
    commission(Comm).
provenance(required_transmit_information_to_board/1, 'celex:32024R1689/oj#art_70').
required_facilitate_exchange_experience(Comm) :-
    commission(Comm).
provenance(required_facilitate_exchange_experience/1, 'celex:32024R1689/oj#art_70').
permitted_provide_guidance(NCA) :-
    national_competent_authority(NCA).
provenance(permitted_provide_guidance/1, 'celex:32024R1689/oj#art_70').
required_consult_other_authorities(NCA) :-
    national_competent_authority(NCA).
provenance(required_consult_other_authorities/1, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').

% ==== celex:32024R1689/oj#art_71 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_71').
declared(eu_database/1, 'EU database for high‑risk AI systems', 'celex:32024R1689/oj#art_71').
declared(setting_functional_specifications/1, 'process of setting functional specifications of the EU database', 'celex:32024R1689/oj#art_71').
declared(updating_functional_specifications/1, 'process of updating functional specifications of the EU database', 'celex:32024R1689/oj#art_71').
declared(relevant_experts/1, 'relevant experts consulted by the Commission', 'celex:32024R1689/oj#art_71').
declared(board/1, 'Board consulted by the Commission', 'celex:32024R1689/oj#art_71').
declared(data_listed_in_annex8_sec1_2/1, 'data listed in annex VIII sec 1‑2', 'celex:32024R1689/oj#art_71').
declared(data_listed_in_annex8_sec3/1, 'data listed in annex VIII sec 3', 'celex:32024R1689/oj#art_71').
declared(public_authority_actor/1, 'deployer who is or acts on behalf of a public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(information_registered_in/2, 'information registered in the EU database under a given article', 'celex:32024R1689/oj#art_71').
declared(exception_section/1, 'section excluded from public accessibility', 'celex:32024R1689/oj#art_71').
declared(consent_given/2, 'provider or prospective provider has given consent for public accessibility', 'celex:32024R1689/oj#art_71').
declared(provider_consents_public/1, 'provider has consented to public accessibility of its information', 'celex:32024R1689/oj#art_71').
must_set_up(Commission, eu_database) :-
    commission(Commission).
must_maintain(Commission, eu_database) :-
    commission(Commission).
must_consult(Commission, relevant_experts) :-
    commission(Commission),
    setting_functional_specifications(eu_database).
must_consult(Commission, board) :-
    commission(Commission),
    updating_functional_specifications(eu_database).
must_enter_data(Actor, Data) :-
    provider(Actor),
    data_listed_in_annex8_sec1_2(Data).
must_enter_data(Actor, Data) :-
    authorised_representative(Actor),
    data_listed_in_annex8_sec1_2(Data).
must_enter_data(Deployer, Data) :-
    deployer(Deployer),
    public_authority_actor(Deployer),
    data_listed_in_annex8_sec3(Data).
permitted_access(public, Information) :-
    information_registered_in(Information, art_49),
    \+ exception_section(Information).
permitted_access(market_surveillance_authority, Information) :-
    information_registered_in(Information, art_60).
permitted_access(commission, Information) :-
    information_registered_in(Information, art_60).
permitted_access(public, Information) :-
    information_registered_in(Information, art_60),
    consent_given(_Provider, public).
prohibited_excess_personal_data(EU_Database) :-
    eu_database(EU_Database).
must_be_controller(Commission, eu_database) :-
    commission(Commission).
must_make_available_support(Commission, Provider) :-
    commission(Commission),
    provider(Provider).
provenance(must_set_up/2, 'celex:32024R1689/oj#art_71').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_71').
provenance(prohibited_excess_personal_data/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_make_available_support/2, 'celex:32024R1689/oj#art_71').
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
declared(proportionate_to_nature_and_risk/1, 'proportionate to the nature of the AI technologies and the risks', 'celex:32024R1689/oj#art_72').
declared(actively_and_systematically_collect_document_analyse_data/1, 'actively and systematically collect, document and analyse relevant data', 'celex:32024R1689/oj#art_72').
declared(exempt_sensitive_operational_data/2, 'exempt from collection the sensitive operational data of deployers that are law‑enforcement authorities', 'celex:32024R1689/oj#art_72').
declared(required_establish_and_document_post_market_monitoring_system/2, 'provider must establish and document a post‑market monitoring system', 'celex:32024R1689/oj#art_72').
declared(required_collect_document_analyse_data/2, 'provider must collect, document and analyse relevant data', 'celex:32024R1689/oj#art_72').
declared(required_based_on_post_market_monitoring_plan/2, 'post‑market monitoring system must be based on a post‑market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan/1, 'post‑market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(based_on_plan/2, 'system is based on a plan', 'celex:32024R1689/oj#art_72').
declared(permitted_integrate_existing_elements/2, 'provider may integrate existing elements into system and plan', 'celex:32024R1689/oj#art_72').
declared(covered_by_union_harmonisation_legislation/1, 'high‑risk AI system covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_72').
declared(existing_post_market_monitoring_system/1, 'post‑market monitoring system already established under that legislation', 'celex:32024R1689/oj#art_72').
declared(equivalent_level_of_protection/1, 'achieves an equivalent level of protection', 'celex:32024R1689/oj#art_72').
required_establish_and_document_post_market_monitoring_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    proportionate_to_nature_and_risk(System).
required_collect_document_analyse_data(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    actively_and_systematically_collect_document_analyse_data(System),
    \+ exempt_sensitive_operational_data(Provider, System).
exempt_sensitive_operational_data(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    deployer(Deployer),
    law_enforcement_authority(Deployer),
    sensitive_operational_data(Deployer).
required_based_on_post_market_monitoring_plan(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    post_market_monitoring_plan(Plan),
    based_on_plan(System, Plan).
permitted_integrate_existing_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_by_union_harmonisation_legislation(System),
    existing_post_market_monitoring_system(System),
    equivalent_level_of_protection(System).
provenance(required_establish_and_document_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(required_collect_document_analyse_data/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data/2, 'celex:32024R1689/oj#art_72').
provenance(required_based_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integrate_existing_elements/2, 'celex:32024R1689/oj#art_72').
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
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'death of a natural person', 'celex:32024R1689/oj#art_73').
declared(aware_of_incident/2, 'entity aware of a serious incident', 'celex:32024R1689/oj#art_73').
declared(need_timely_reporting/1, 'entity needs timely reporting', 'celex:32024R1689/oj#art_73').
provenance(required_reporting_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_immediately/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_by_2_days/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_by_15_days/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_by_10_days/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_initial_incomplete_report/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_4').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_5').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_7').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_8').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').

% ==== celex:32024R1689/oj#art_74 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_74').
declared(recipient_of_report/1, 'recipient of market surveillance report', 'celex:32024R1689/oj#art_74').
declared(identified_info/1, 'information identified in market surveillance activities', 'celex:32024R1689/oj#art_74').
declared(report_subject/1, 'subject of a market surveillance report', 'celex:32024R1689/oj#art_74').
declared(prohibited_practice/1, 'practice prohibited under Union law', 'celex:32024R1689/oj#art_74').
declared(power/1, 'power referred to in Article 14(4) points (d) and (j)', 'celex:32024R1689/oj#art_74').
declared(procedure/1, 'procedure referred to in Articles 79‑83', 'celex:32024R1689/oj#art_74').
declared(covered_by_union_harmonisation_legislation/1, 'AI system falls within scope of Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_74').
declared(sectoral_market_surveillance_authority/1, 'sectoral market surveillance authority designated under Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(financial_supervision_authority/1, 'national authority responsible for financial supervision', 'celex:32024R1689/oj#art_74').
declared(used_by_financial_institution/1, 'AI system used by a financial institution', 'celex:32024R1689/oj#art_74').
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_74').
declared(authority/1, 'any authority that may be designated as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(coordination_ensured/2, 'coordination ensured between Member State and designated authority', 'celex:32024R1689/oj#art_74').
declared(competent_data_protection_supervisory_authority/1, 'competent data‑protection supervisory authority', 'celex:32024R1689/oj#art_74').
declared(other_designated_authority/1, 'any other authority designated under the same conditions', 'celex:32024R1689/oj#art_74').
declared(listed_in_anx3/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_74').
declared(law_enforcement_purpose/1, 'AI system used for law‑enforcement, border‑management or justice purposes', 'celex:32024R1689/oj#art_74').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_74').
declared(union_institution/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_74').
declared(court_of_justice/1, 'Court of Justice of the European Union acting in its judicial capacity', 'celex:32024R1689/oj#art_74').
declared(other_relevant_national_authority/1, 'other relevant national authority supervising Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(coordination_facilitated/3, 'coordination facilitated between market surveillance authority and other authority by Member State', 'celex:32024R1689/oj#art_74').
declared(joint_activity/1, 'joint activity or investigation involving market surveillance authorities and/or the Commission', 'celex:32024R1689/oj#art_74').
declared(aim_promoting_compliance/1, 'aim of promoting compliance, identifying non‑compliance, raising awareness or providing guidance', 'celex:32024R1689/oj#art_74').
declared(data_set/1, 'training, validation or testing data set used for development of an AI system', 'celex:32024R1689/oj#art_74').
declared(remote_access_allowed/2, 'remote access to data set allowed by provider', 'celex:32024R1689/oj#art_74').
declared(reasoned_request/2, 'reasoned request made by market surveillance authority for source code', 'celex:32024R1689/oj#art_74').
declared(access_necessary/1, 'access to source code necessary to assess conformity', 'celex:32024R1689/oj#art_74').
declared(testing_exhausted/1, 'testing or auditing procedures based on provided data have been exhausted or proved insufficient', 'celex:32024R1689/oj#art_74').
declared(obtained_information/1, 'information or documentation obtained by market surveillance authorities', 'celex:32024R1689/oj#art_74').
declared(confidentiality_obligation/1, 'confidentiality obligations set out in Article 78', 'celex:32024R1689/oj#art_74').
declared(required_annual_report/3, 'annual report by market surveillance authority to the Commission', 'celex:32024R1689/oj#art_74').
required_annual_report(MSA, Commission, Info) :-
    market_surveillance_authority(MSA),
    commission(Commission),
    recipient_of_report(Commission),
    identified_info(Info),
    report_subject(Info).
declared(required_annual_report_of_prohibited_practices/3, 'annual report of prohibited practices by market surveillance authority to the Commission', 'celex:32024R1689/oj#art_74').
required_annual_report_of_prohibited_practices(MSA, Commission, Practice) :-
    market_surveillance_authority(MSA),
    commission(Commission),
    prohibited_practice(Practice),
    report_subject(Practice).
declared(permitted_exercise_power_remotely/2, 'market surveillance authority may exercise powers remotely', 'celex:32024R1689/oj#art_74').
permitted_exercise_power_remotely(MSA, Power) :-
    market_surveillance_authority(MSA),
    power(Power),
    remote(Power).
declared(prohibited_application_of_procedure/2, 'procedures shall not apply to AI systems covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
prohibited_application_of_procedure(Procedure, AISystem) :-
    ai_system(AISystem),
    procedure(Procedure),
    covered_by_union_harmonisation_legislation(AISystem).
declared(permitted_application_of_sectoral_procedure/2, 'sectoral procedures shall apply instead', 'celex:32024R1689/oj#art_74').
permitted_application_of_sectoral_procedure(Procedure, AISystem) :-
    ai_system(AISystem),
    procedure(Procedure),
    covered_by_union_harmonisation_legislation(AISystem).
declared(market_surveillance_authority_for_system/2, 'designated market surveillance authority for high‑risk AI system related to Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
market_surveillance_authority_for_system(Authority, AISystem) :-
    high_risk_ai_system(AISystem),
    covered_by_union_harmonisation_legislation(AISystem),
    sectoral_market_surveillance_authority(Authority).
declared(market_surveillance_authority_for_financial_ai/2, 'market surveillance authority for high‑risk AI systems used by financial institutions', 'celex:32024R1689/oj#art_74').
market_surveillance_authority_for_financial_ai(Authority, AISystem) :-
    high_risk_ai_system(AISystem),
    (   placing_on_market(AISystem)
    ;   putting_into_service(AISystem)
    ;   used_by_financial_institution(AISystem)
    ),
    financial_supervision_authority(Authority).
declared(permitted_designation_of_alternative_authority/2, 'Member State may designate another authority as market surveillance authority', 'celex:32024R1689/oj#art_74').
permitted_designation_of_alternative_authority(MemberState, Authority) :-
    member_state(MemberState),
    authority(Authority),
    coordination_ensured(MemberState, Authority).
declared(market_surveillance_authority_for_law_enforcement_ai/2, 'designated market surveillance authority for law‑enforcement high‑risk AI systems', 'celex:32024R1689/oj#art_74').
market_surveillance_authority_for_law_enforcement_ai(Authority, AISystem) :-
    high_risk_ai_system(AISystem),
    listed_in_anx3(AISystem),
    law_enforcement_purpose(AISystem),
    (   competent_data_protection_supervisory_authority(Authority)
    ;   other_designated_authority(Authority)
    ).
declared(market_surveillance_authority_for_union_institution/2, 'European Data Protection Supervisor acts as market surveillance authority for Union institutions', 'celex:32024R1689/oj#art_74').
market_surveillance_authority_for_union_institution(EDPS, Institution) :-
    european_data_protection_supervisor(EDPS),
    union_institution(Institution),
    \+ court_of_justice(Institution).
declared(required_coordination/2, 'Member State shall facilitate coordination between market surveillance authorities and other relevant national authorities', 'celex:32024R1689/oj#art_74').
required_coordination(MemberState, OtherAuthority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    other_relevant_national_authority(OtherAuthority),
    coordination_facilitated(MemberState, Authority, OtherAuthority).
declared(permitted_propose_joint_activity/2, 'Market surveillance authorities and the Commission may propose joint investigations', 'celex:32024R1689/oj#art_74').
permitted_propose_joint_activity(Actor, Activity) :-
    (   market_surveillance_authority(Actor)
    ;   commission(Actor)
    ),
    joint_activity(Activity),
    aim_promoting_compliance(Activity).
declared(permitted_access_to_data_remotely/3, 'Market surveillance authorities may access documentation and data sets remotely', 'celex:32024R1689/oj#art_74').
permitted_access_to_data_remotely(MSA, Provider, DataSet) :-
    market_surveillance_authority(MSA),
    provider(Provider),
    data_set(DataSet),
    remote_access_allowed(Provider, DataSet).
declared(permitted_access_source_code/3, 'Market surveillance authorities may access source code upon a reasoned request and when conditions are fulfilled', 'celex:32024R1689/oj#art_74').
permitted_access_source_code(MSA, Provider, AISystem) :-
    market_surveillance_authority(MSA),
    provider(Provider),
    high_risk_ai_system(AISystem),
    reasoned_request(MSA, AISystem),
    access_necessary(AISystem),
    testing_exhausted(AISystem).
declared(must_confidentially_treat/2, 'Market surveillance authorities must treat obtained information confidentially', 'celex:32024R1689/oj#art_74').
must_confidentially_treat(MSA, Info) :-
    market_surveillance_authority(MSA),
    obtained_information(Info),
    confidentiality_obligation(Info).
provenance(required_annual_report/3, 'celex:32024R1689/oj#art_74').
provenance(required_annual_report_of_prohibited_practices/3, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_power_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(prohibited_application_of_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_application_of_sectoral_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_system/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_financial_ai/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_designation_of_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_law_enforcement_ai/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_union_institution/2, 'celex:32024R1689/oj#art_74').
provenance(required_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_propose_joint_activity/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_access_to_data_remotely/3, 'celex:32024R1689/oj#art_74').
provenance(permitted_access_source_code/3, 'celex:32024R1689/oj#art_74').
provenance(must_confidentially_treat/2, 'celex:32024R1689/oj#art_74').
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
declared(same_provider_developed/1, 'AI system and its underlying model are developed by the same provider', 'celex:32024R1689/oj#art_75').
declared(sufficient_reason/2, 'market surveillance authority has sufficient reason concerning an AI system', 'celex:32024R1689/oj#art_75').
declared(directly_usable_by_deployer/1, 'AI system can be used directly by a deployer', 'celex:32024R1689/oj#art_75').
declared(high_risk_purpose/1, 'purpose classified as high‑risk', 'celex:32024R1689/oj#art_75').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/2, 'market surveillance authority cannot conclude its investigation of an AI system', 'celex:32024R1689/oj#art_75').
declared(inability_to_access_information/2, 'authority cannot access information related to the AI model', 'celex:32024R1689/oj#art_75').
declared(made_all_appropriate_efforts/2, 'authority has made all appropriate efforts to obtain information', 'celex:32024R1689/oj#art_75').
declared(request_submitted/3, 'reasoned request submitted by a market surveillance authority to the AI Office', 'celex:32024R1689/oj#art_75').
declared(without_delay/1, 'information supplied without delay', 'celex:32024R1689/oj#art_75').
declared(within_30_days/1, 'information supplied within 30 days', 'celex:32024R1689/oj#art_75').
declared(obtained_information/2, 'information obtained by a market surveillance authority', 'celex:32024R1689/oj#art_75').
must_monitor_and_supervise(ai_office, S) :-
    general_purpose_ai_system(S),
    based_on_general_purpose_ai_model(S),
    same_provider_developed(S).
must_cooperate_with(MSA, ai_office, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    directly_usable_by_deployer(S),
    high_risk_purpose(S),
    sufficient_reason(MSA, S).
must_inform(MSA, board, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    directly_usable_by_deployer(S),
    high_risk_purpose(S),
    sufficient_reason(MSA, S).
must_inform(MSA, other_market_surveillance_authorities, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    directly_usable_by_deployer(S),
    high_risk_purpose(S),
    sufficient_reason(MSA, S).
permitted_submit_reasoned_request(MSA, ai_office, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(MSA, S),
    inability_to_access_information(MSA, S),
    made_all_appropriate_efforts(MSA, S).
request_submitted(MSA, ai_office, S) :-
    permitted_submit_reasoned_request(MSA, ai_office, S).
must_supply_information(ai_office, MSA, Info) :-
    request_submitted(MSA, ai_office, _S),
    without_delay(Info),
    within_30_days(Info).
must_safeguard_confidentiality(MSA, Info) :-
    market_surveillance_authority(MSA),
    obtained_information(MSA, Info).
provenance(must_monitor_and_supervise/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with/3, 'celex:32024R1689/oj#art_75').
provenance(must_inform/3, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/3, 'celex:32024R1689/oj#art_75').
provenance(request_submitted/3, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(prospective_provider/1, 'entity that may become a provider', 'celex:32024R1689/oj#art_76').
declared(supervised_in_ai_regulatory_sandbox/1, 'AI system that is supervised within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(non_compliance_with_art_60_61/1, 'conditions set out in articles 60 and 61 are not met', 'celex:32024R1689/oj#art_76').
declared(decision_referred_to_art_76_par_3/1, 'decision referred to in article 76 paragraph 3', 'celex:32024R1689/oj#art_76').
declared(objection_in_art_60_par_4_unp_1_pnt_b/1, 'objection within the meaning of article 60 paragraph 4 unp 1 pnt b', 'celex:32024R1689/oj#art_76').
must_have_competences_and_powers(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S).
must_verify_compliance(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).
permitted_conduct_testing_by_provider(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).
permitted_suspend_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    (   serious_incident(S)
    ;   non_compliance_with_art_60_61(S)
    ).
permitted_require_modification(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    (   serious_incident(S)
    ;   non_compliance_with_art_60_61(S)
    ).
must_indicate_grounds_and_challenge_procedure(MSA, D) :-
    market_surveillance_authority(MSA),
    (   decision_referred_to_art_76_par_3(D)
    ;   objection_in_art_60_par_4_unp_1_pnt_b(D)
    ).
must_communicate_grounds_to_other_msas(MSA, S) :-
    market_surveillance_authority(MSA),
    decision_referred_to_art_76_par_3(_D),
    testing_in_real_world_conditions(S).
provenance(must_have_competences_and_powers/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_conduct_testing_by_provider/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge_procedure/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_msas/2, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(public_authority/1, 'national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights', 'celex:32024R1689/oj#art_77').
declared(documentation/1, 'documentation created or maintained under the Regulation', 'celex:32024R1689/oj#art_77').
declared(high_risk_ai_system/1, 'high‑risk AI system referred to in annex III', 'celex:32024R1689/oj#art_77').
declared(necessary_for_fulfilling_mandate/2, 'access to documentation is necessary for effectively fulfilling the authority’s mandate', 'celex:32024R1689/oj#art_77').
declared(request_made/2, 'a request for documentation has been made by the authority', 'celex:32024R1689/oj#art_77').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_77').
declared(documentation_insufficient/2, 'the documentation is insufficient to ascertain whether an infringement has occurred', 'celex:32024R1689/oj#art_77').
declared(within_reasonable_time/2, 'testing is organised within a reasonable time following the request', 'celex:32024R1689/oj#art_77').
declared(information_obtained/2, 'information or documentation obtained by the authority', 'celex:32024R1689/oj#art_77').
declared(confidentiality_obligation/1, 'confidentiality obligations set out in article 78', 'celex:32024R1689/oj#art_77').
permitted_request_access_documentation(Authority, Documentation) :-
    public_authority(Authority),
    documentation(Documentation),
    high_risk_ai_system(Documentation),
    necessary_for_fulfilling_mandate(Authority, Documentation).
must_inform_of_request(Authority, MarketSurveillanceAuthority, Documentation) :-
    public_authority(Authority),
    market_surveillance_authority(MarketSurveillanceAuthority),
    request_made(Authority, Documentation),
    permitted_request_access_documentation(Authority, Documentation).
required_identify_public_authorities(MemberState) :-
    member_state(MemberState).
required_make_public_list(MemberState) :-
    member_state(MemberState).
required_notify_list(MemberState) :-
    member_state(MemberState).
required_keep_list_up_to_date(MemberState) :-
    member_state(MemberState).
permitted_reasoned_request_testing(Authority, System) :-
    public_authority(Authority),
    high_risk_ai_system(System),
    documentation_insufficient(Authority, System).
must_organise_testing(MarketSurveillanceAuthority, System, Authority) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    public_authority(Authority),
    permitted_reasoned_request_testing(Authority, System),
    within_reasonable_time(MarketSurveillanceAuthority, System).
must_treat_confidentially(Authority, Information) :-
    public_authority(Authority),
    information_obtained(Authority, Information),
    confidentiality_obligation(Information).
provenance(permitted_request_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_of_request/3, 'celex:32024R1689/oj#art_77').
provenance(required_identify_public_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(required_make_public_list/1, 'celex:32024R1689/oj#art_77').
provenance(required_notify_list/1, 'celex:32024R1689/oj#art_77').
provenance(required_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(permitted_reasoned_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/3, 'celex:32024R1689/oj#art_77').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_78').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_78').
declared(other_natural_or_legal_person/1, 'any other natural or legal person', 'celex:32024R1689/oj#art_78').
declared(involved_in_application/1, 'person or entity involved in the application of the Regulation', 'celex:32024R1689/oj#art_78').
declared(information_obtained/1, 'information obtained in carrying out tasks', 'celex:32024R1689/oj#art_78').
declared(data_obtained/1, 'data obtained in carrying out tasks', 'celex:32024R1689/oj#art_78').
declared(strictly_necessary_for_risk_assessment/1, 'data strictly necessary for risk assessment', 'celex:32024R1689/oj#art_78').
declared(adequate_and_effective_cybersecurity_measures/1, 'adequate and effective cybersecurity measures', 'celex:32024R1689/oj#art_78').
declared(no_longer_needed_for_purpose/1, 'data no longer needed for its original purpose', 'celex:32024R1689/oj#art_78').
declared(confidential_exchange/1, 'information exchanged on a confidential basis', 'celex:32024R1689/oj#art_78').
declared(high_risk_ai_system_used_by/1, 'high‑risk AI system used by the given authority', 'celex:32024R1689/oj#art_78').
declared(jeopardises_public_and_national_security/1, 'disclosure would jeopardise public and national security', 'celex:32024R1689/oj#art_78').
declared(exempt_sensitive_operational_data/1, 'exempted sensitive operational data', 'celex:32024R1689/oj#art_78').
declared(third_country_regulatory_authority/1, 'regulatory authority of a third country', 'celex:32024R1689/oj#art_78').
declared(confidentiality_arrangement/2, 'confidentiality arrangement between two parties', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Actor, Info) :-
    (   commission(Actor)
    ;   market_surveillance_authority(Actor)
    ;   notified_body(Actor)
    ;   other_natural_or_legal_person(Actor)
    ),
    involved_in_application(Actor),
    information_obtained(Info).
must_request_only_necessary_data(Authority, Data) :-
    involved_in_application(Authority),
    data_obtained(Data),
    strictly_necessary_for_risk_assessment(Data).
must_implement_cybersecurity_measures(Authority) :-
    involved_in_application(Authority),
    adequate_and_effective_cybersecurity_measures(Authority).
must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application(Authority),
    data_obtained(Data),
    no_longer_needed_for_purpose(Data).
prohibited_disclosure_without_consultation(Info) :-
    confidential_exchange(Info),
    high_risk_ai_system_used_by(law_enforcement_authority),
    jeopardises_public_and_national_security(Info),
    \+ exempt_sensitive_operational_data(Info).
exempt_sensitive_operational_data(Info) :-
    sensitive_operational_data(Info).
permitted_exchange_confidential_information(Actor, Recipient) :-
    (   commission(Actor)
    ;   member_state(Actor)
    ),
    third_country_regulatory_authority(Recipient),
    confidentiality_arrangement(Actor, Recipient).
high_risk_ai_system_used_by(Authority) :-
    law_enforcement_authority(Authority).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_information/2, 'celex:32024R1689/oj#art_78').
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
declared(presenting_risk/1, 'AI system presenting a risk', 'celex:32024R1689/oj#art_79').
declared(sufficient_reason/2, 'sufficient reason for authority to consider a risk', 'celex:32024R1689/oj#art_79').
declared(risks_to_fundamental_rights_identified/1, 'risk to fundamental rights identified in AI system', 'celex:32024R1689/oj#art_79').
declared(national_public_authority/1, 'relevant national public authority or body', 'celex:32024R1689/oj#art_79').
declared(relevant_operator/2, 'operator relevant to AI system', 'celex:32024R1689/oj#art_79').
declared(evaluation_finds_non_compliance/2, 'evaluation finds non‑compliance', 'celex:32024R1689/oj#art_79').
declared(required_corrective_action/3, 'authority requires corrective action, withdrawal or recall', 'celex:32024R1689/oj#art_79').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_79').
declared(member_state/1, 'Member State', 'celex:32024R1689/oj#art_79').
declared(non_compliance_cross_border/1, 'non‑compliance not restricted to national territory', 'celex:32024R1689/oj#art_79').
declared(operator_fails_to_act/2, 'operator does not take adequate corrective action', 'celex:32024R1689/oj#art_79').
declared(other_authority/1, 'market surveillance authority other than the initiating one', 'celex:32024R1689/oj#art_79').
declared(no_objection_within/2, 'no objection raised within given period', 'celex:32024R1689/oj#art_79').
declared(non_compliance/1, 'AI system is non‑compliant', 'celex:32024R1689/oj#art_79').
must_evaluate(M, S) :-
    market_surveillance_authority(M),
    presenting_risk(S),
    sufficient_reason(M, S).
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').
must_inform_and_cooperate(M, NA) :-
    market_surveillance_authority(M),
    risks_to_fundamental_rights_identified(S),
    national_public_authority(NA).
provenance(must_inform_and_cooperate/2, 'celex:32024R1689/oj#art_79').
must_cooperate(Op, M) :-
    operator(Op),
    market_surveillance_authority(M),
    relevant_operator(Op, _S).
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_79').
required_corrective_action(M, Op, S) :-
    market_surveillance_authority(M),
    evaluation_finds_non_compliance(M, S),
    relevant_operator(Op, S).
provenance(required_corrective_action/3, 'celex:32024R1689/oj#art_79').
must_inform(M, NB) :-
    market_surveillance_authority(M),
    notified_body(NB).
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').
must_inform_cross_border(M, C) :-
    market_surveillance_authority(M),
    non_compliance_cross_border(S),
    commission(C).
provenance(must_inform_cross_border/2, 'celex:32024R1689/oj#art_79').
must_inform_cross_border(M, MS) :-
    market_surveillance_authority(M),
    non_compliance_cross_border(S),
    member_state(MS).
must_ensure(Op, corrective_action(S)) :-
    operator(Op),
    making_available_on_market(S),
    relevant_operator(Op, S).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').
required_provisional_measures(M, S) :-
    market_surveillance_authority(M),
    operator_fails_to_act(Op, S).
provenance(required_provisional_measures/2, 'celex:32024R1689/oj#art_79').
must_notify(M, C) :-
    market_surveillance_authority(M),
    commission(C),
    operator_fails_to_act(Op, S).
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').
must_notify(M, MS) :-
    market_surveillance_authority(M),
    member_state(MS),
    operator_fails_to_act(Op, S).
must_inform_other(OtherM, C) :-
    other_authority(OtherM),
    commission(C),
    non_compliance(S).
provenance(must_inform_other/2, 'celex:32024R1689/oj#art_79').
must_inform_other(OtherM, MS) :-
    other_authority(OtherM),
    member_state(MS),
    non_compliance(S).
measure_deemed_justified(Meas) :-
    no_objection_within(Meas, three_months).
provenance(measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
must_ensure_restrictive_measures(M, S) :-
    market_surveillance_authority(M),
    non_compliance(S).
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').

% ==== celex:32024R1689/oj#art_80 ====
declared(non_high_risk_classified_by_provider/1, 'AI system classified by provider as non‑high‑risk', 'celex:32024R1689/oj#art_80').
declared(reason_to_consider_high_risk_applies/2, 'MSA has sufficient reason to consider the system high‑risk', 'celex:32024R1689/oj#art_80').
declared(required_evaluation/2, 'MSA must carry out an evaluation of the AI system', 'celex:32024R1689/oj#art_80').
declared(evaluation_finds_high_risk_applies/2, 'Evaluation finds the AI system to be high‑risk', 'celex:32024R1689/oj#art_80').
declared(provider_of_system/2, 'Provider that placed the AI system on the market', 'celex:32024R1689/oj#art_80').
declared(must_require_provider_to_comply/3, 'MSA shall require the provider to take all necessary actions to bring the system into compliance', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory_applies/2, 'Use of the AI system is not restricted to the national territory', 'celex:32024R1689/oj#art_80').
declared(must_inform/2, 'MSA shall inform the Commission and other Member States', 'celex:32024R1689/oj#art_80').
declared(must_ensure_compliance/2, 'Provider shall ensure the AI system is brought into compliance', 'celex:32024R1689/oj#art_80').
declared(not_compliant_within_period/2, 'Provider has not brought the AI system into compliance within the prescribed period', 'celex:32024R1689/oj#art_80').
declared(subject_to_fine/2, 'Provider is subject to fines', 'celex:32024R1689/oj#art_80').
declared(must_ensure_corrective_action/2, 'Provider shall ensure appropriate corrective action is taken', 'celex:32024R1689/oj#art_80').
declared(not_adequate_corrective_action_within_period/2, 'Provider has not taken adequate corrective action within the prescribed period', 'celex:32024R1689/oj#art_80').
declared(must_apply_art_79_par_5_to_9/2, 'Articles 79 paragraphs 5‑9 shall apply', 'celex:32024R1689/oj#art_80').
declared(misclassification_to_circumvent_requirements/2, 'AI system was misclassified to circumvent requirements', 'celex:32024R1689/oj#art_80').
declared(permitted_perform_appropriate_checks/1, 'MSA may perform appropriate checks', 'celex:32024R1689/oj#art_80').
required_evaluation(Authority, System) :-
    market_surveillance_authority(Authority),
    non_high_risk_classified_by_provider(System),
    reason_to_consider_high_risk_applies(Authority, System).
must_require_provider_to_comply(Authority, Provider, System) :-
    evaluation_finds_high_risk_applies(Authority, System),
    provider_of_system(Provider, System),
    market_surveillance_authority(Authority).
must_inform(Authority, System) :-
    use_not_restricted_to_national_territory_applies(Authority, System),
    market_surveillance_authority(Authority).
must_ensure_compliance(Provider, System) :-
    provider(Provider),
    ai_system(System),
    provider_of_system(Provider, System).
subject_to_fine(Provider, System) :-
    provider(Provider),
    ai_system(System),
    not_compliant_within_period(Provider, System).
must_ensure_corrective_action(Provider, System) :-
    provider(Provider),
    ai_system(System),
    provider_of_system(Provider, System).
must_apply_art_79_par_5_to_9(Provider, System) :-
    not_adequate_corrective_action_within_period(Provider, System),
    provider(Provider),
    ai_system(System).
subject_to_fine(Provider, System) :-
    misclassification_to_circumvent_requirements(Authority, System),
    provider_of_system(Provider, System),
    market_surveillance_authority(Authority).
permitted_perform_appropriate_checks(Authority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).
provenance(required_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_provider_to_comply/3, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fine/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_apply_art_79_par_5_to_9/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_appropriate_checks/1, 'celex:32024R1689/oj#art_80').
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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').

% ==== celex:32024R1689/oj#art_81 ====
declared(must_enter_consultation/2, 'Commission must enter into consultation with authority and operator', 'celex:32024R1689/oj#art_81').
declared(must_evaluate_national_measure/2, 'Commission must evaluate the national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide_justified/3, 'Commission must decide whether the national measure is justified', 'celex:32024R1689/oj#art_81').
declared(must_notify_decision/2, 'Commission must notify its decision to the concerned market surveillance authority', 'celex:32024R1689/oj#art_81').
declared(must_inform_other_authorities/1, 'Commission must inform all other market surveillance authorities', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member State must take appropriate restrictive measures concerning the AI system', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_measure/2, 'Member State must withdraw the national measure', 'celex:32024R1689/oj#art_81').
declared(must_inform_commission/2, 'Member State must inform the Commission', 'celex:32024R1689/oj#art_81').
declared(must_apply_procedure/2, 'Commission must apply the procedure referred to in the referenced regulation', 'celex:32024R1689/oj#art_81').
declared(commission_considers_justified/2, 'Commission considers the national measure justified', 'celex:32024R1689/oj#art_81').
declared(commission_considers_unjustified/2, 'Commission considers the national measure unjustified', 'celex:32024R1689/oj#art_81').
declared(commission_considers_contrary/2, 'Commission considers the measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(objection_raised/2, 'Objection raised by one market surveillance authority to a measure taken by another', 'celex:32024R1689/oj#art_81').
declared(national_measure/1, 'National measure taken by a Member State', 'celex:32024R1689/oj#art_81').
declared(national_measure_justified/1, 'National measure is considered justified', 'celex:32024R1689/oj#art_81').
declared(shortcomings_in_harmonised_standards/1, 'Non‑compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_81').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_81').
must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    commission(Commission),
    commission(Commission),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority),
    operator(Operator),
    operator(Operator),
    ( objection_raised(Authority, _OtherAuthority)
    ; commission_considers_contrary(Commission, _Measure)
    ).
must_evaluate_national_measure(Commission, NationalMeasure) :-
    commission(Commission),
    commission(Commission),
    national_measure(NationalMeasure),
    national_measure(NationalMeasure),
    ( objection_raised(_Authority, _OtherAuthority)
    ; commission_considers_contrary(Commission, NationalMeasure)
    ).
must_decide_justified(Commission, NationalMeasure, Justified) :-
    commission(Commission),
    commission(Commission),
    national_measure(NationalMeasure),
    national_measure(NationalMeasure),
    ( Justified = justified ; Justified = unjustified ).
must_notify_decision(Commission, Authority) :-
    commission(Commission),
    commission(Commission),
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority),
    national_measure(_NationalMeasure),
    national_measure(_NationalMeasure).
must_inform_other_authorities(Commission) :-
    commission(Commission),
    commission(Commission).
must_take_restrictive_measures(MemberState, AISystem) :-
    member_state(MemberState),
    member_state(MemberState),
    ai_system(AISystem),
    ai_system(AISystem),
    commission_considers_justified(_Commission, _Measure).
must_withdraw_measure(MemberState, Measure) :-
    member_state(MemberState),
    member_state(MemberState),
    national_measure(Measure),
    national_measure(Measure),
    commission_considers_unjustified(_Commission, Measure).
must_inform_commission(MemberState, Commission) :-
    member_state(MemberState),
    member_state(MemberState),
    commission(Commission),
    commission(Commission),
    commission_considers_justified(Commission, _Measure).
must_inform_commission(MemberState, Commission) :-
    member_state(MemberState),
    member_state(MemberState),
    commission(Commission),
    commission(Commission),
    commission_considers_unjustified(Commission, _Measure).
must_apply_procedure(Commission, procedure('celex:32012R1025/oj#art_11')) :-
    commission(Commission),
    commission(Commission),
    national_measure(NationalMeasure),
    national_measure(NationalMeasure),
    national_measure_justified(NationalMeasure),
    national_measure_justified(NationalMeasure),
    shortcomings_in_harmonised_standards(NationalMeasure),
    shortcomings_in_harmonised_standards(NationalMeasure).
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justified/3, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_other_authorities/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_justified/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_unjustified/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary/2, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(shortcomings_in_harmonised_standards/1, 'celex:32024R1689/oj#art_81').
provenance(member_state/1, 'celex:32024R1689/oj#art_81').
provenance(commission/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_82').
declared(complies_with_regulation/1, 'AI system complies with the requirements of this Regulation', 'celex:32024R1689/oj#art_82').
declared(presents_risk/1, 'AI system presents a risk to health, safety, fundamental rights or public interest', 'celex:32024R1689/oj#art_82').
declared(period_prescribed_by/2, 'Period prescribed by a market surveillance authority', 'celex:32024R1689/oj#art_82').
declared(required_operator_take_measures/4, 'Market surveillance authority requires operator to take appropriate measures to eliminate risk', 'celex:32024R1689/oj#art_82').
declared(relevant_operator/2, 'Operator relevant to a given AI system', 'celex:32024R1689/oj#art_82').
declared(made_available_on_union_market/2, 'Actor has made the AI system available on the Union market', 'celex:32024R1689/oj#art_82').
declared(required_provider_or_operator_corrective_action/3, 'Provider or operator must ensure corrective action for AI systems made available', 'celex:32024R1689/oj#art_82').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_82').
declared(member_state_concerned/1, 'Member State concerned with a finding', 'celex:32024R1689/oj#art_82').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_82').
declared(finding/1, 'Finding of a market surveillance authority under article 82 paragraph 1', 'celex:32024R1689/oj#art_82').
declared(finding_under_art_82_par_1/1, 'Finding referred to in article 82 paragraph 1', 'celex:32024R1689/oj#art_82').
declared(required_member_state_inform_finding/3, 'Member State must inform Commission and other Member States of a finding', 'celex:32024R1689/oj#art_82').
declared(national_measures/1, 'National measures taken by a Member State', 'celex:32024R1689/oj#art_82').
declared(required_commission_consult_and_evaluate/4, 'Commission must consult with Member States and operators and evaluate national measures', 'celex:32024R1689/oj#art_82').
declared(decision/1, 'Commission decision on justification of a measure', 'celex:32024R1689/oj#art_82').
declared(other_measures/1, 'Other appropriate measures proposed by the Commission', 'celex:32024R1689/oj#art_82').
declared(required_commission_decide_and_propose/3, 'Commission decides on justification and proposes other measures', 'celex:32024R1689/oj#art_82').
declared(required_commission_communicate_decision/3, 'Commission communicates its decision to Member States and operators', 'celex:32024R1689/oj#art_82').
declared(required_commission_inform_other_member_states/2, 'Commission informs other Member States', 'celex:32024R1689/oj#art_82').
relevant_operator(O, S) :-
    operator(O).
required_operator_take_measures(A, O, S, P) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    complies_with_regulation(S),
    presents_risk(S),
    relevant_operator(O, S),
    period_prescribed_by(A, P).
required_provider_or_operator_corrective_action(Actor, S, P) :-
    ( provider(Actor) ; operator(Actor) ),
    made_available_on_union_market(Actor, S),
    period_prescribed_by(A, P),
    market_surveillance_authority(A).
required_member_state_inform_finding(MS, C, F) :-
    member_state_concerned(MS),
    commission(C),
    finding(F),
    finding_under_art_82_par_1(F),
    member_state_concerned(MS),
    commission(C).
required_commission_consult_and_evaluate(C, MS, O, Measures) :-
    commission(C),
    member_state(MS),
    operator(O),
    national_measures(Measures),
    commission(C),
    member_state(MS).
required_commission_decide_and_propose(C, D, OM) :-
    commission(C),
    decision(D),
    other_measures(OM),
    commission(C).
required_commission_communicate_decision(C, MS, O) :-
    commission(C),
    member_state(MS),
    operator(O),
    commission(C),
    member_state(MS).
required_commission_inform_other_member_states(C, MS) :-
    commission(C),
    member_state(MS),
    commission(C),
    member_state(MS).
provenance(required_operator_take_measures/4, 'celex:32024R1689/oj#art_82').
provenance(relevant_operator/2, 'celex:32024R1689/oj#art_82').
provenance(required_provider_or_operator_corrective_action/3, 'celex:32024R1689/oj#art_82').
provenance(required_member_state_inform_finding/3, 'celex:32024R1689/oj#art_82').
provenance(required_commission_consult_and_evaluate/4, 'celex:32024R1689/oj#art_82').
provenance(required_commission_decide_and_propose/3, 'celex:32024R1689/oj#art_82').
provenance(required_commission_communicate_decision/3, 'celex:32024R1689/oj#art_82').
provenance(required_commission_inform_other_member_states/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(must_require/2, 'market surveillance authority requires provider to end non‑compliance', 'celex:32024R1689/oj#art_83').
declared(must_take_measures/2, 'market surveillance authority takes appropriate measures against high‑risk AI system', 'celex:32024R1689/oj#art_83').
declared(ce_marking_affixed_in_violation_applies/1, 'CE marking has been affixed in violation of the requirements', 'celex:32024R1689/oj#art_83').
declared(ce_marking_not_affixed_applies/1, 'CE marking has not been affixed', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_not_drawn_up_applies/1, 'EU declaration of conformity has not been drawn up', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_not_drawn_up_correctly_applies/1, 'EU declaration of conformity has not been drawn up correctly', 'celex:32024R1689/oj#art_83').
declared(registration_not_carried_out_applies/1, 'registration in the EU database has not been carried out', 'celex:32024R1689/oj#art_83').
declared(no_authorised_representative_applies/1, 'no authorised representative has been appointed where applicable', 'celex:32024R1689/oj#art_83').
declared(technical_documentation_not_available_applies/1, 'technical documentation is not available', 'celex:32024R1689/oj#art_83').
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_83').
declared(non_compliance_persists/2, 'non‑compliance persists despite authority’s requirement', 'celex:32024R1689/oj#art_83').
must_require(Authority, end_non_compliance(Provider, ce_marking_affixed_in_violation)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    ce_marking_affixed_in_violation_applies(Provider).
must_require(Authority, end_non_compliance(Provider, ce_marking_not_affixed)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    ce_marking_not_affixed_applies(Provider).
must_require(Authority, end_non_compliance(Provider, eu_declaration_not_drawn_up)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    eu_declaration_not_drawn_up_applies(Provider).
must_require(Authority, end_non_compliance(Provider, eu_declaration_not_drawn_up_correctly)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    eu_declaration_not_drawn_up_correctly_applies(Provider).
must_require(Authority, end_non_compliance(Provider, registration_not_carried_out)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    registration_not_carried_out_applies(Provider).
must_require(Authority, end_non_compliance(Provider, no_authorised_representative)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    no_authorised_representative_applies(Provider).
must_require(Authority, end_non_compliance(Provider, technical_documentation_not_available)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    technical_documentation_not_available_applies(Provider).
must_take_measures(Authority, high_risk_ai_system(System)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    non_compliance_persists(_, _).
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'Union AI testing support structure', 'celex:32024R1689/oj#art_84').
required_designation_of_union_ai_testing_support_structure(_Commission, S) :-
    union_ai_testing_support_structure(S),
    perform_tasks_listed_under(S, 'celex:32019R1020/oj#art_21/par_6').
required_provide_independent_advice(S, board) :-
    union_ai_testing_support_structure(S).
required_provide_independent_advice(S, commission) :-
    union_ai_testing_support_structure(S).
required_provide_independent_advice(S, market_surveillance_authority) :-
    union_ai_testing_support_structure(S).
perform_tasks_listed_under(_Structure, _Reference).
provenance(required_designation_of_union_ai_testing_support_structure/2, 'celex:32024R1689/oj#art_84').
provenance(required_provide_independent_advice/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(permitted_complaint_submission/2, 'permission to submit a complaint', 'celex:32024R1689/oj#art_85').
declared(relevant_market_surveillance_authority/2, 'market surveillance authority relevant to a person', 'celex:32024R1689/oj#art_85').
declared(natural_or_legal_person/1, 'natural or legal person', 'celex:32024R1689/oj#art_85').
declared(grounds_to_consider_infringement/1, 'person has grounds to consider an infringement', 'celex:32024R1689/oj#art_85').
permitted_complaint_submission(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person),
    relevant_market_surveillance_authority(Person, Authority).
relevant_market_surveillance_authority(Person, Authority) :-
    market_surveillance_authority(Authority),
    natural_or_legal_person(Person).
provenance(permitted_complaint_submission/2, 'celex:32024R1689/oj#art_85').
provenance(relevant_market_surveillance_authority/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#art_86').
declared(affected_person/1, 'person affected by a decision', 'celex:32024R1689/oj#art_86').
declared(decision_by_deployer/2, 'decision taken by a deployer based on AI system output', 'celex:32024R1689/oj#art_86').
declared(exception_system/1, 'high‑risk AI system excluded from the right to explanation', 'celex:32024R1689/oj#art_86').
declared(union_law_provides_explanation/2, 'Union law already provides the right to explanation', 'celex:32024R1689/oj#art_86').
declared(significant_impact/2, 'decision produces legal effects or significantly affects health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
permitted_explanation_of_decision(P, D) :-
    affected_person(P),
    decision_by_deployer(Deployer, D),
    deployer(Deployer),
    high_risk_ai_system(D),
    significant_impact(P, D),
    \+ exception_system(D),
    \+ union_law_provides_explanation(P, D).
provenance(permitted_explanation_of_decision/2, 'celex:32024R1689/oj#art_86').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate_applies/1, 'condition that a request is necessary and proportionate', 'celex:32024R1689/oj#art_88').
required_exclusive_power_supervise_and_enforce(Commission) :-
    commission(Commission).
must_entrust(Commission, AIOffice) :-
    commission(Commission),
    ai_office(AIOffice).
permitted_request_exercise_powers(MarketSurveillanceAuthority, Commission) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    commission(Commission),
    necessary_and_proportionate_applies(Commission).
provenance(required_exclusive_power_supervise_and_enforce/1, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_powers/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').

% ==== celex:32024R1689/oj#art_89 ====
permitted_take_action(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider_of_general_purpose_ai_model(Provider).
permitted_lodge_complaint(DownstreamProvider, Complaint) :-
    downstream_provider(DownstreamProvider),
    duly_reasoned_complaint(Complaint).
provider_of_general_purpose_ai_model(P) :-
    provider(P).
duly_reasoned_complaint(C) :-
    includes_point_of_contact(C),
    includes_description(C),
    includes_other_information(C).
includes_point_of_contact(_).
includes_description(_).
includes_other_information(_).
provenance(permitted_take_action/2, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_89').
provenance(duly_reasoned_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(includes_point_of_contact/1, 'celex:32024R1689/oj#art_89').
provenance(includes_description/1, 'celex:32024R1689/oj#art_89').
provenance(includes_other_information/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'entity constituting the scientific panel', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'alert issued by the scientific panel indicating a systemic risk', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'general‑purpose AI model poses a concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_art_51/1, 'general‑purpose AI model meets the conditions set out in Article 51', 'celex:32024R1689/oj#art_90').
declared(permitted_qualified_alert/2, 'the scientific panel may provide a qualified alert to the AI Office', 'celex:32024R1689/oj#art_90').
declared(required_content_of_qualified_alert/1, 'a qualified alert must contain the required information', 'celex:32024R1689/oj#art_90').
declared(includes_point_of_contact/2, 'alert includes the point of contact of the provider', 'celex:32024R1689/oj#art_90').
declared(includes_description_of_facts/1, 'alert includes a description of the relevant facts and reasons', 'celex:32024R1689/oj#art_90').
declared(includes_other_information/1, 'alert includes any other relevant information', 'celex:32024R1689/oj#art_90').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_90').
declared(board/1, 'the Board of the AI Office', 'celex:32024R1689/oj#art_90').
declared(informed_board/1, 'the Commission has informed the Board', 'celex:32024R1689/oj#art_90').
declared(permitted_exercise_powers/3, 'the Commission may exercise powers for the purpose of assessing the matter', 'celex:32024R1689/oj#art_90').
declared(purpose_assessing_matter/1, 'purpose of assessing the matter', 'celex:32024R1689/oj#art_90').
declared(must_inform_board_of_measure/2, 'the AI Office shall inform the Board of any measure', 'celex:32024R1689/oj#art_90').
declared(measure/1, 'measure referred to in Articles 91‑94', 'celex:32024R1689/oj#art_90').
permitted_qualified_alert(Panel, Office) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    (   concrete_identifiable_risk_at_union_level(Model)
    ;   meets_conditions_art_51(Model)
    ),
    qualified_alert(Alert),
    
    true.
required_content_of_qualified_alert(Alert) :-
    includes_point_of_contact(Alert, _Provider),
    includes_description_of_facts(Alert),
    includes_other_information(Alert).
permitted_exercise_powers(Commission, Office, Alert) :-
    commission(Commission),
    ai_office(Office),
    qualified_alert(Alert),
    informed_board(Commission),
    purpose_assessing_matter(Office).
must_inform_board_of_measure(Office, Measure) :-
    ai_office(Office),
    measure(Measure).
provenance(permitted_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(required_content_of_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/3, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_91').
declared(scientific_panel/1, 'Scientific panel established under the regulation', 'celex:32024R1689/oj#art_91').
declared(necessary_and_proportionate_access/1, 'condition that access to information is necessary and proportionate', 'celex:32024R1689/oj#art_91').
permitted_request_documentation(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model).
permitted_initiate_structured_dialogue(AIOffice, Provider, Model) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model(Model).
permitted_request_information(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    scientific_panel(Panel),
    necessary_and_proportionate_access(Panel).
must_supply_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_supply_information(Representative, Model) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model).
provenance(permitted_request_documentation/3, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/3, 'celex:32024R1689/oj#art_91').
provenance(permitted_request_information/3, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(permitted_conduct_evaluation/2, 'AI Office may conduct evaluations of a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(objective_assess_compliance/1, 'assessment of provider compliance with obligations', 'celex:32024R1689/oj#art_92').
declared(objective_investigate_systemic_risk/1, 'investigation of systemic risk of a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(info_insufficient_applies/1, 'information gathered pursuant to art 91 is insufficient', 'celex:32024R1689/oj#art_92').
declared(qualified_alert_applies/1, 'qualified alert from the scientific panel', 'celex:32024R1689/oj#art_92').
declared(permitted_appoint_independent_expert/3, 'Commission may appoint independent experts to carry out evaluations', 'celex:32024R1689/oj#art_92').
declared(independent_expert/1, 'person appointed as independent expert', 'celex:32024R1689/oj#art_92').
declared(criteria_met_applies/1, 'expert meets the criteria outlined in art 68 / par 2', 'celex:32024R1689/oj#art_92').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_92').
declared(permitted_request_access/2, 'Commission may request access to a general‑purpose AI model', 'celex:32024R1689/oj#art_92').
declared(request_access/2, 'request by the Commission for access to a model', 'celex:32024R1689/oj#art_92').
declared(must_state_access_request_details/2, 'Commission must state legal basis, purpose, reasons, period and fines in the access request', 'celex:32024R1689/oj#art_92').
declared(must_supply_requested_information/2, 'Provider or its representative shall supply the requested information', 'celex:32024R1689/oj#art_92').
declared(must_adopt_implementing_act/1, 'Commission shall adopt implementing acts for evaluations', 'celex:32024R1689/oj#art_92').
declared(permitted_initiate_structured_dialogue/3, 'AI Office may initiate structured dialogue with provider before access request', 'celex:32024R1689/oj#art_92').
permitted_conduct_evaluation(Office, Model) :-
    ai_office(Office),
    general_purpose_ai_model(Model),
    (   objective_assess_compliance(Model)
    ;   objective_investigate_systemic_risk(Model)
    ).
objective_assess_compliance(Model) :-
    general_purpose_ai_model(Model),
    info_insufficient_applies(Model).
objective_investigate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    qualified_alert_applies(Model).
permitted_appoint_independent_expert(Commission, Expert, Model) :-
    commission(Commission),
    independent_expert(Expert),
    general_purpose_ai_model(Model),
    criteria_met_applies(Expert).
permitted_request_access(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model).
request_access(Commission, Model) :-
    permitted_request_access(Commission, Model).
must_state_access_request_details(Commission, Model) :-
    request_access(Commission, Model),
    commission(Commission),
    general_purpose_ai_model(Model).
must_supply_requested_information(Provider, Model) :-
    request_access(_Commission, Model),
    (   provider(Provider)
    ;   authorised_representative(Provider)
    ),
    general_purpose_ai_model(Model).
permitted_initiate_structured_dialogue(Office, Provider, Model) :-
    ai_office(Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ request_access(_Commission, Model).
provenance(permitted_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(objective_assess_compliance/1, 'celex:32024R1689/oj#art_92').
provenance(objective_investigate_systemic_risk/1, 'celex:32024R1689/oj#art_92').
provenance(info_insufficient_applies/1, 'celex:32024R1689/oj#art_92').
provenance(qualified_alert_applies/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_independent_expert/3, 'celex:32024R1689/oj#art_92').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(criteria_met_applies/1, 'celex:32024R1689/oj#art_92').
provenance(commission/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_access_request_details/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_act/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/3, 'celex:32024R1689/oj#art_92').
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
declared(permitted_request_take_appropriate_measures/2, 'Commission may request provider to take appropriate measures to comply with obligations', 'celex:32024R1689/oj#art_93').
declared(permitted_request_implement_mitigation_measures/3, 'Commission may request provider to implement mitigation measures where serious systemic risk is identified', 'celex:32024R1689/oj#art_93').
declared(permitted_request_restrict_market/3, 'Commission may request provider to restrict making available, withdraw or recall the model', 'celex:32024R1689/oj#art_93').
declared(permitted_initiate_structured_dialogue/2, 'AI Office may initiate a structured dialogue with the provider before a measure is requested', 'celex:32024R1689/oj#art_93').
declared(permitted_make_commitments_binding/3, 'Commission may make provider commitments binding after structured dialogue', 'celex:32024R1689/oj#art_93').
declared(offers_commitments/2, 'Provider offers commitments to implement mitigation measures', 'celex:32024R1689/oj#art_93').
commission(commission).
permitted_request_take_appropriate_measures(Commission, Provider) :-
    commission(Commission),
    provider(Provider).
permitted_request_implement_mitigation_measures(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model).
permitted_request_restrict_market(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model).
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider).
permitted_make_commitments_binding(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    offers_commitments(Provider, Model).
offers_commitments(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
provenance(permitted_request_take_appropriate_measures/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_request_implement_mitigation_measures/3, 'celex:32024R1689/oj#art_93').
provenance(permitted_request_restrict_market/3, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/3, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments/2, 'celex:32024R1689/oj#art_93').
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
declared(member_state/1, 'state of a Member State of the Union', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct/1, 'set of rules voluntarily adopted for AI systems', 'celex:32024R1689/oj#art_95').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_95').
must_encourage_and_facilitate(Actor, draw_up_code_of_conduct(Code)) :-
    (ai_office(Actor) ; member_state(Actor)),
    (ai_office(Actor) ; member_state(Actor)),
    code_of_conduct(Code).
must_facilitate(Actor, draw_up_code_of_conduct(Code)) :-
    (ai_office(Actor) ; member_state(Actor)),
    (ai_office(Actor) ; member_state(Actor)),
    code_of_conduct(Code).
permitted_drawing_up_codes_of_conduct(Actor) :-
    provider(Actor),
    provider(Actor).
permitted_drawing_up_codes_of_conduct(Actor) :-
    deployer(Actor),
    deployer(Actor).
must_consider(Actor, smes_interests) :-
    (ai_office(Actor) ; member_state(Actor)),
    (ai_office(Actor) ; member_state(Actor)).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_consider/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(required_guidelines/2, 'Commission must develop guidelines on X', 'celex:32024R1689/oj#art_96').
declared(required_update_guidelines/1, 'Commission must update previously adopted guidelines', 'celex:32024R1689/oj#art_96').
declared(request_from/2, 'Request made by actor to the Commission', 'celex:32024R1689/oj#art_96').
declared(own_initiative/1, 'Commission acts on its own initiative', 'celex:32024R1689/oj#art_96').
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_8')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_9')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_10')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_11')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_12')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_13')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_14')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_15')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_25')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_5')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_50')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#anx_1')).
required_guidelines(commission, implementation_of('celex:32024R1689/oj#art_3/unp_1/pnt_1')).
required_guidelines(commission, implementation_of(substantial_modification)).
required_update_guidelines(commission) :- request_from(member_state, commission).
required_update_guidelines(commission) :- request_from(ai_office, commission).
required_update_guidelines(commission) :- own_initiative(commission).
provenance(required_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(required_update_guidelines/1, 'celex:32024R1689/oj#art_96').
provenance(request_from/2, 'celex:32024R1689/oj#art_96').
provenance(own_initiative/1, 'celex:32024R1689/oj#art_96').
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
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_97').
declared(european_parliament/1, 'European Parliament', 'celex:32024R1689/oj#art_97').
declared(council/1, 'Council of the European Union', 'celex:32024R1689/oj#art_97').
declared(delegated_act/1, 'act adopted under delegation of power', 'celex:32024R1689/oj#art_97').
declared(delegation_of_power/1, 'delegation of power to adopt delegated acts', 'celex:32024R1689/oj#art_97').
declared(revocation_decision/1, 'decision revoking delegation of power', 'celex:32024R1689/oj#art_97').
declared(delegated_act_adoption_power/1, 'power to adopt delegated acts', 'celex:32024R1689/oj#art_97').
declared(required_confer_power/2, 'require conferral of power', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_report/3, 'obligation to draw up report', 'celex:32024R1689/oj#art_97').
declared(permitted_tacit_extension/1, 'tacit extension of delegation of power', 'celex:32024R1689/oj#art_97').
declared(no_objection_by/2, 'no objection expressed by entity', 'celex:32024R1689/oj#art_97').
declared(within_three_months_before_end/1, 'period within three months before end of delegation', 'celex:32024R1689/oj#art_97').
declared(permitted_revocation/2, 'revocation of delegation may be performed by entity', 'celex:32024R1689/oj#art_97').
declared(revoker_is_european_parliament/1, 'entity is the European Parliament', 'celex:32024R1689/oj#art_97').
declared(revoker_is_council/1, 'entity is the Council', 'celex:32024R1689/oj#art_97').
declared(must_end_delegation/2, 'obligation to end delegation after revocation', 'celex:32024R1689/oj#art_97').
declared(effect_date_of_revocation/2, 'effect date of revocation decision', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts_before_adopting/2, 'obligation to consult experts before adopting delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/3, 'obligation to notify EP and Council of adopted delegated act', 'celex:32024R1689/oj#art_97').
declared(required_entry_into_force/1, 'conditions for delegated act to enter into force', 'celex:32024R1689/oj#art_97').
declared(both_informed_no_objection_before_expiry/3, 'both EP and Council inform no objection before expiry', 'celex:32024R1689/oj#art_97').
declared(permitted_extension_of_objection_period/1, 'extension of objection period may be initiated by entity', 'celex:32024R1689/oj#art_97').
declared(initiator_is_european_parliament/1, 'entity is the European Parliament', 'celex:32024R1689/oj#art_97').
declared(initiator_is_council/1, 'entity is the Council', 'celex:32024R1689/oj#art_97').
european_parliament(european_parliament).
council(council).
delegated_act_adoption_power(Commission) :-
    commission(Commission).
provenance(delegated_act_adoption_power/1, 'celex:32024R1689/oj#art_97').
required_confer_power(Commission, delegated_act_adoption) :-
    commission(Commission),
    delegated_act_adoption_power(Commission).
provenance(required_confer_power/2, 'celex:32024R1689/oj#art_97').
must_draw_up_report(Commission, delegation_of_power, deadline(nine_months_before_end_of_period)) :-
    commission(Commission),
    delegated_act_adoption_power(Commission).
provenance(must_draw_up_report/3, 'celex:32024R1689/oj#art_97').
permitted_tacit_extension(Delegation) :-
    delegation_of_power(Delegation),
    no_objection_by(european_parliament, Delegation),
    no_objection_by(council, Delegation),
    within_three_months_before_end(Delegation).
provenance(permitted_tacit_extension/1, 'celex:32024R1689/oj#art_97').
permitted_revocation(Delegation, Revoker) :-
    delegation_of_power(Delegation),
    ( revoker_is_european_parliament(Revoker) ; revoker_is_council(Revoker) ).
revoker_is_european_parliament(european_parliament).
revoker_is_council(council).
provenance(permitted_revocation/2, 'celex:32024R1689/oj#art_97').
must_end_delegation(RevocationDecision, Delegation) :-
    revocation_decision(RevocationDecision),
    delegation_of_power(Delegation).
provenance(must_end_delegation/2, 'celex:32024R1689/oj#art_97').
effect_date_of_revocation(RevocationDecision, day_after_publication) :-
    revocation_decision(RevocationDecision).
provenance(effect_date_of_revocation/2, 'celex:32024R1689/oj#art_97').
must_consult_experts_before_adopting(Commission, DelegatedAct) :-
    commission(Commission),
    delegated_act(DelegatedAct).
provenance(must_consult_experts_before_adopting/2, 'celex:32024R1689/oj#art_97').
must_notify(Commission, DelegatedAct, [european_parliament, council]) :-
    commission(Commission),
    delegated_act(DelegatedAct).
provenance(must_notify/3, 'celex:32024R1689/oj#art_97').
required_entry_into_force(DelegatedAct) :-
    delegated_act(DelegatedAct),
    (   no_objection_by(european_parliament, DelegatedAct),
        no_objection_by(council, DelegatedAct)
    ;   both_informed_no_objection_before_expiry(european_parliament, council, DelegatedAct)
    ).
provenance(required_entry_into_force/1, 'celex:32024R1689/oj#art_97').
permitted_extension_of_objection_period(Initiator) :-
    ( initiator_is_european_parliament(Initiator) ; initiator_is_council(Initiator) ).
initiator_is_european_parliament(european_parliament).
initiator_is_council(council).
provenance(permitted_extension_of_objection_period/1, 'celex:32024R1689/oj#art_97').
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
declared(must_assist/2, 'obligation for the Commission to be assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(committee/1, 'a committee within the meaning of the referenced act', 'celex:32024R1689/oj#art_98').
declared(reference_applies/1, 'a reference is made to the given provision', 'celex:32024R1689/oj#art_98').
declared(article_applies/1, 'the referenced article applies', 'celex:32024R1689/oj#art_98').
must_assist(commission, C) :-
    committee(C).
committee(_).
article_applies('celex:32011R0182/oj#art_5') :-
    reference_applies('celex:32024R1689/oj#art_98/par_2').
provenance(must_assist/2, 'celex:32024R1689/oj#art_98').
provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(article_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_99').
declared(required_lay_down_rules_on_penalties/1, 'Member State shall lay down rules on penalties', 'celex:32024R1689/oj#art_99').
declared(required_notify_commission_of_penalties/1, 'Member State shall notify the Commission of the rules on penalties', 'celex:32024R1689/oj#art_99').
declared(required_report_annual_fines/1, 'Member State shall report annually to the Commission the administrative fines issued', 'celex:32024R1689/oj#art_99').
declared(required_lay_down_rules_on_fines_for_public_authorities/1, 'Member State shall lay down rules on fines for public authorities', 'celex:32024R1689/oj#art_99').
declared(prohibited_non_compliance_with_ai_practice/1, 'Operator non‑compliance with the prohibition of AI practices', 'celex:32024R1689/oj#art_99').
declared(penalty_up_to_35m_eur_or_7pct_turnover/1, 'Administrative fine up to EUR 35 000 000 or 7 % of worldwide turnover', 'celex:32024R1689/oj#art_99').
declared(prohibited_non_compliance_with_operator_or_notified_body_obligation/1, 'Operator or notified body non‑compliance with specific obligations', 'celex:32024R1689/oj#art_99').
declared(penalty_up_to_15m_eur_or_3pct_turnover/1, 'Administrative fine up to EUR 15 000 000 or 3 % of worldwide turnover', 'celex:32024R1689/oj#art_99').
declared(prohibited_incorrect_information_supply/1, 'Supply of incorrect, incomplete or misleading information to notified bodies or national competent authorities', 'celex:32024R1689/oj#art_99').
declared(penalty_up_to_7_5m_eur_or_1pct_turnover/1, 'Administrative fine up to EUR 7 500 000 or 1 % of worldwide turnover', 'celex:32024R1689/oj#art_99').
required_lay_down_rules_on_penalties(MS) :-
    member_state(MS),
    member_state(MS).
required_notify_commission_of_penalties(MS) :-
    member_state(MS),
    member_state(MS).
required_report_annual_fines(MS) :-
    member_state(MS),
    member_state(MS).
required_lay_down_rules_on_fines_for_public_authorities(MS) :-
    member_state(MS),
    member_state(MS).
prohibited_non_compliance_with_ai_practice(O) :-
    operator(O),
    operator(O).
penalty_up_to_35m_eur_or_7pct_turnover(O) :-
    prohibited_non_compliance_with_ai_practice(O),
    prohibited_non_compliance_with_ai_practice(O).
prohibited_non_compliance_with_operator_or_notified_body_obligation(A) :-
    ( operator(A) ; notified_body(A) ),
    ( operator(A) ; notified_body(A) ).
penalty_up_to_15m_eur_or_3pct_turnover(A) :-
    prohibited_non_compliance_with_operator_or_notified_body_obligation(A),
    prohibited_non_compliance_with_operator_or_notified_body_obligation(A).
prohibited_incorrect_information_supply(P) :-
    provider(P),
    provider(P).
penalty_up_to_7_5m_eur_or_1pct_turnover(P) :-
    prohibited_incorrect_information_supply(P),
    prohibited_incorrect_information_supply(P).
provenance(required_lay_down_rules_on_penalties/1, 'celex:32024R1689/oj#art_99').
provenance(required_notify_commission_of_penalties/1, 'celex:32024R1689/oj#art_99').
provenance(required_report_annual_fines/1, 'celex:32024R1689/oj#art_99').
provenance(required_lay_down_rules_on_fines_for_public_authorities/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_ai_practice/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_up_to_35m_eur_or_7pct_turnover/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_operator_or_notified_body_obligation/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_up_to_15m_eur_or_3pct_turnover/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_incorrect_information_supply/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_up_to_7_5m_eur_or_1pct_turnover/1, 'celex:32024R1689/oj#art_99').
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
declared(edps/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_100').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_100').
declared(union_institution/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(falls_within_scope/1, 'Falls within the scope of the regulation', 'celex:32024R1689/oj#art_100').
declared(non_compliance_prohibition_art5/1, 'Non‑compliance with the prohibition of AI practices referred to in art 5', 'celex:32024R1689/oj#art_100').
declared(non_compliance_other_requirements/1, 'Non‑compliance with any requirements or obligations under the regulation other than those in art 5', 'celex:32024R1689/oj#art_100').
declared(annual_basis/0, 'Occurs on an annual basis', 'celex:32024R1689/oj#art_100').
declared(administrative_fine_imposed/2, 'Administrative fine imposed by EDPS on institution', 'celex:32024R1689/oj#art_100').
permitted_impose_administrative_fine(EDPS, Institution) :-
    edps(EDPS),
    union_institution(Institution),
    falls_within_scope(Institution).
provenance(permitted_impose_administrative_fine/2, 'celex:32024R1689/oj#art_100').
administrative_fine_imposed(EDPS, Institution) :-
    permitted_impose_administrative_fine(EDPS, Institution).
provenance(administrative_fine_imposed/2, 'celex:32024R1689/oj#art_100').
must_notify(EDPS, Commission) :-
    edps(EDPS),
    commission(Commission),
    annual_basis,
    administrative_fine_imposed(EDPS, _).
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').
maximum_fine_amount(Institution, up_to_1500000) :-
    union_institution(Institution),
    non_compliance_prohibition_art5(Institution).
provenance(maximum_fine_amount/2, 'celex:32024R1689/oj#art_100').
maximum_fine_amount(Institution, up_to_750000) :-
    union_institution(Institution),
    non_compliance_other_requirements(Institution).
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_101 ====
declared(provider_of_general_purpose_ai_model/1, 'provider of a general‑purpose AI model', 'celex:32024R1689/oj#art_101').
declared(infringed_relevant_provisions/1, 'provider infringed relevant provisions of the Regulation', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_request/1, 'provider failed to comply with a request for documents or information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_measure/1, 'provider failed to comply with a measure requested by the Commission', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available_model/1, 'provider failed to make the general‑purpose AI model available for evaluation', 'celex:32024R1689/oj#art_101').
declared(infringement_intentional_or_negligent/1, 'the Commission finds that the provider acted intentionally or negligently', 'celex:32024R1689/oj#art_101').
declared(permitted_fine/3, 'the Commission may impose a fine on the provider', 'celex:32024R1689/oj#art_101').
declared(fine_cap/2, 'maximum fine amount applicable to the provider', 'celex:32024R1689/oj#art_101').
declared(turnover/2, 'annual total worldwide turnover of the provider in the preceding financial year', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'the Commission shall communicate its preliminary findings to the provider', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts/1, 'the Commission shall adopt implementing acts with procedural safeguards', 'celex:32024R1689/oj#art_101').
infringed_relevant_provisions(P) :-
    provider(P).
failed_to_comply_request(P) :-
    provider(P).
failed_to_comply_measure(P) :-
    provider(P).
failed_to_make_available_model(P) :-
    provider(P).
infringement_intentional_or_negligent(P) :-
    infringed_relevant_provisions(P).
infringement_intentional_or_negligent(P) :-
    failed_to_comply_request(P).
infringement_intentional_or_negligent(P) :-
    failed_to_comply_measure(P).
infringement_intentional_or_negligent(P) :-
    failed_to_make_available_model(P).
fine_cap(P, Fine) :-
    turnover(P, Turnover),
    Percent is Turnover * 0.03,
    (   Percent >= 15000000
    ->  Fine = Percent
    ;   Fine = 15000000
    ).
permitted_fine(_Commission, P, Fine) :-
    provider_of_general_purpose_ai_model(P),
    infringement_intentional_or_negligent(P),
    fine_cap(P, Fine).
must_communicate_preliminary_findings(_Commission, P) :-
    provider_of_general_purpose_ai_model(P).
must_adopt_implementing_acts(_Commission) :-
    true.
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_101').
provenance(infringed_relevant_provisions/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_request/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_measure/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_model/1, 'celex:32024R1689/oj#art_101').
provenance(infringement_intentional_or_negligent/1, 'celex:32024R1689/oj#art_101').
provenance(permitted_fine/3, 'celex:32024R1689/oj#art_101').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_101').
provenance(turnover/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(requirements_chapter_3_section_2/0, 'requirements set out in chapter 3 section 2', 'celex:32024R1689/oj#art_102').
declared(required_take_into_account/1, 'obligation to take into account the requirements set out in chapter 3 section 2 when adopting detailed measures', 'celex:32024R1689/oj#art_102').
required_take_into_account(Measure) :-
    adopting_detailed_measures(Measure),
    requirements_chapter_3_section_2.
provenance(required_take_into_account/1, 'celex:32024R1689/oj#art_102').
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
declared(must_take_into_account/2, 'obligation to consider specific requirements when adopting delegated acts', 'celex:32024R1689/oj#art_103').
declared(adopt_delegated_act/2, 'adoption of a delegated act concerning an AI system', 'celex:32024R1689/oj#art_103').
declared(delegated_act_concerning/2, 'delegated act that concerns a particular AI system', 'celex:32024R1689/oj#art_103').
declared(requirement_set/1, 'requirements set out in chapter 3 section 2 of the AI Regulation', 'celex:32024R1689/oj#art_103').
must_take_into_account(Actor, Requirement) :-
    adopt_delegated_act(Actor, DelegatedAct),
    delegated_act_concerning(DelegatedAct, AI_System),
    safety_component(AI_System),
    requirement_set(Requirement).
requirement_set('celex:32024R1689/oj#chp_3/sec_2').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
provenance(requirement_set/1, 'celex:32024R1689/oj#art_103').
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
declared(adopt_delegated_act/2, 'adoption of a delegated act concerning an AI system', 'celex:32024R1689/oj#art_104').
declared(required_consideration_of_requirements/2, 'requirement to take into account Chapter 3 Section 2 requirements when adopting delegated acts for safety‑component AI systems', 'celex:32024R1689/oj#art_104').
declared(requirements_chapter3_section2_applies/1, 'requirements set out in Chapter 3 Section 2 apply to the AI system', 'celex:32024R1689/oj#art_104').
required_consideration_of_requirements(_Actor, AI_System) :-
    adopt_delegated_act(_Actor, AI_System),
    safety_component(AI_System),
    requirements_chapter3_section2_applies(AI_System).
requirements_chapter3_section2_applies(_).
provenance(required_consideration_of_requirements/2, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account/2, 'obligation for the Commission to take into account specified requirements', 'celex:32024R1689/oj#art_105').
declared(activity_pursuant_to_art_8_par_1_applies/1, 'the Commission is acting pursuant to article 8 paragraph 1', 'celex:32024R1689/oj#art_105').
declared(adopting_technical_specifications_art_8_par_2_3_applies/1, 'the Commission is adopting technical specifications and testing standards in accordance with article 8 paragraphs 2 and 3', 'celex:32024R1689/oj#art_105').
declared(requirement_set/1, 'requirements set out in chapter 3 section 2 of the Regulation', 'celex:32024R1689/oj#art_105').
must_take_into_account(commission, Requirement) :-
    safety_component(_),
    activity_pursuant_to_art_8_par_1_applies(commission),
    adopting_technical_specifications_art_8_par_2_3_applies(commission),
    requirement_set(Requirement).
activity_pursuant_to_art_8_par_1_applies(commission).
adopting_technical_specifications_art_8_par_2_3_applies(commission).
requirement_set(chapter_3_section_2).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_105').
provenance(activity_pursuant_to_art_8_par_1_applies/1, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_art_8_par_2_3_applies/1, 'celex:32024R1689/oj#art_105').
provenance(requirement_set/1, 'celex:32024R1689/oj#art_105').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
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
declared(adopts_delegated_act/2, 'entity adopts a delegated act', 'celex:32024R1689/oj#art_106').
declared(implements_act/2, 'entity implements an act', 'celex:32024R1689/oj#art_106').
must_take_into_account(Actor, requirements_chapter_3_section_2) :-
    (adopts_delegated_act(Actor, _Act) ; implements_act(Actor, _Act)),
    safety_component(_S),
    ai_system(_S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
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
declared(adopt_delegated_act/2, 'entity adopts delegated act concerning AI system', 'celex:32024R1689/oj#art_107').
declared(concerns/2, 'delegated act concerns AI system', 'celex:32024R1689/oj#art_107').
declared(must_take_into_account/2, 'must take into account the requirements set out in chapter 3 section 2', 'celex:32024R1689/oj#art_107').
must_take_into_account(Actor, requirement_chapter_3_section_2) :-
    adopt_delegated_act(Actor, DelegatedAct),
    adopt_delegated_act(Actor, DelegatedAct),
    concerns(DelegatedAct, S),
    safety_component(S),
    safety_component(S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_108 ====
declared(adopt_implementing_act/2, 'adopting an implementing act concerning an AI system', 'celex:32024R1689/oj#art_108').
declared(adopt_delegated_act/2, 'adopting a delegated act concerning an AI system', 'celex:32024R1689/oj#art_108').
declared(requirements_chapter_3_section_2/0, 'requirements set out in chapter 3 section 2 of the AI Regulation', 'celex:32024R1689/oj#art_108').
declared(must_take_into_account/2, 'authority must take into account the requirements of chapter 3 section 2 when adopting an act concerning a safety‑component AI system', 'celex:32024R1689/oj#art_108').
must_take_into_account(Authority, S) :-
    (   adopt_implementing_act(Authority, S)
    ;   adopt_delegated_act(Authority, S)
    ),
    safety_component(S),
    requirements_chapter_3_section_2.
provenance(adopt_implementing_act/2, 'celex:32024R1689/oj#art_108').
provenance(adopt_delegated_act/2, 'celex:32024R1689/oj#art_108').
provenance(requirements_chapter_3_section_2/0, 'celex:32024R1689/oj#art_108').
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
declared(required_take_into_account/2, 'obligation to take into account requirements', 'celex:32024R1689/oj#art_109').
declared(adopting_implementing_act/2, 'entity adopting an implementing act', 'celex:32024R1689/oj#art_109').
declared(pursuant_to_art_11_par_2/1, 'implementing act is pursuant to article 11 paragraph 2', 'celex:32024R1689/oj#art_109').
required_take_into_account(Actor, requirement_set_out_in(chapter_3_section_2)) :-
    adopting_implementing_act(Actor, Act),
    pursuant_to_art_11_par_2(Act),
    safety_component(S),
    ai_system(S).
provenance(required_take_into_account/2, 'celex:32024R1689/oj#art_109').
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
declared(component_of_large_scale_it_system/1, 'AI system that is a component of a large‑scale IT system established by listed legal acts', 'celex:32024R1689/oj#art_111').
declared(placed_before_2_aug_2027/1, 'AI system placed on the market or put into service before 2 August 2027', 'celex:32024R1689/oj#art_111').
declared(placed_before_2_aug_2026/1, 'AI system placed on the market or put into service before 2 August 2026', 'celex:32024R1689/oj#art_111').
declared(placed_before_2_aug_2025/1, 'AI system placed on the market before 2 August 2025', 'celex:32024R1689/oj#art_111').
declared(significant_design_change/1, 'AI system subject to significant changes in its design from the specified date', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system/1, 'AI system classified as high‑risk under the Regulation', 'celex:32024R1689/oj#art_111').
declared(intended_for_public_authorities/1, 'High‑risk AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(deadline_31_dec_2030/1, 'Compliance required by 31 December 2030', 'celex:32024R1689/oj#art_111').
declared(deadline_2_aug_2030/1, 'Compliance required by 2 August 2030', 'celex:32024R1689/oj#art_111').
declared(deadline_2_aug_2027/1, 'Compliance required by 2 August 2027', 'celex:32024R1689/oj#art_111').
required_compliance(Operator, S) :-
    operator(Operator),
    ai_system(S),
    component_of_large_scale_it_system(S),
    placed_before_2_aug_2027(S),
    deadline_31_dec_2030(S).
required_compliance(Operator, S) :-
    operator(Operator),
    ai_system(S),
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S),
    placed_before_2_aug_2026(S),
    significant_design_change(S).
required_compliance(Actor, S) :-
    (provider(Actor) ; deployer(Actor)),
    ai_system(S),
    high_risk_ai_system(S),
    intended_for_public_authorities(S),
    deadline_2_aug_2030(S).
required_compliance(Provider, S) :-
    provider(Provider),
    general_purpose_ai_model(S),
    placed_before_2_aug_2025(S),
    deadline_2_aug_2027(S).
provenance(required_compliance/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_112').
declared(board/1, 'Board of the AI regulatory framework', 'celex:32024R1689/oj#art_112').
declared(member_state/1, 'Member State of the Union', 'celex:32024R1689/oj#art_112').
declared(ai_office/1, 'AI Office', 'celex:32024R1689/oj#art_112').
declared(list_type/1, 'type of list referred to in the Regulation', 'celex:32024R1689/oj#art_112').
declared(topic_type/1, 'topic of evaluation or report', 'celex:32024R1689/oj#art_112').
declared(aspect_type/1, 'aspect to be included in a report', 'celex:32024R1689/oj#art_112').
declared(source_type/1, 'source whose positions must be taken into account', 'celex:32024R1689/oj#art_112').
declared(body_type/1, 'institution to which the Commission must submit a report', 'celex:32024R1689/oj#art_112').
declared(target_type/1, 'object of a proposal', 'celex:32024R1689/oj#art_112').
declared(report/1, 'report produced by the Commission', 'celex:32024R1689/oj#art_112').
must_assess_need_for_amendment(Commission, List) :-
    commission(Commission),
    list_type(List).
must_submit_findings(Commission, european_parliament) :-
    commission(Commission).
must_submit_findings(Commission, council) :-
    commission(Commission).
required_evaluation(Commission, area_headings_amendment) :-
    commission(Commission),
    topic_type(area_headings_amendment).
required_evaluation(Commission, transparency_measures_amendment) :-
    commission(Commission),
    topic_type(transparency_measures_amendment).
required_evaluation(Commission, supervision_governance_amendment) :-
    commission(Commission),
    topic_type(supervision_governance_amendment).
required_report(Commission, evaluation_review) :-
    commission(Commission),
    topic_type(evaluation_review).
must_include_assessment(Commission, enforcement_structure) :-
    commission(Commission),
    aspect_type(enforcement_structure).
must_include_assessment(Commission, union_agency_need) :-
    commission(Commission),
    aspect_type(union_agency_need).
must_include_proposal_if_appropriate(Commission, amendment_of_regulation) :-
    commission(Commission),
    target_type(amendment_of_regulation).
must_make_public(Report) :-
    report(Report).
required_report_attention(Commission, national_competent_authorities_resources) :-
    commission(Commission),
    topic_type(national_competent_authorities_resources).
required_report_attention(Commission, state_of_penalties) :-
    commission(Commission),
    topic_type(state_of_penalties).
required_report_attention(Commission, adopted_harmonised_standards) :-
    commission(Commission),
    topic_type(adopted_harmonised_standards).
required_report_attention(Commission, number_of_undertakings) :-
    commission(Commission),
    topic_type(number_of_undertakings).
required_evaluation_of_ai_office(Commission) :-
    commission(Commission).
must_submit_findings(Commission, ai_office_evaluation_report) :-
    commission(Commission).
required_report(Commission, energy_efficient_gp_ai_models_standardisation) :-
    commission(Commission),
    topic_type(energy_efficient_gp_ai_models_standardisation).
must_assess_need_for_measures(Commission) :-
    commission(Commission).
required_evaluation_of_voluntary_codes(Commission) :-
    commission(Commission).
must_provide_information(Provider, Commission) :-
    board(Provider),
    commission(Commission).
must_provide_information(Provider, Commission) :-
    member_state(Provider),
    commission(Commission).
must_provide_information(Provider, Commission) :-
    national_competent_authority(Provider),
    commission(Commission).
must_take_into_account(Commission, board) :-
    commission(Commission),
    source_type(board).
must_take_into_account(Commission, european_parliament) :-
    commission(Commission),
    source_type(european_parliament).
must_take_into_account(Commission, council) :-
    commission(Commission),
    source_type(council).
must_take_into_account(Commission, other_relevant_body) :-
    commission(Commission),
    source_type(other_relevant_body).
must_submit_proposal(Commission, amendment_of_regulation) :-
    commission(Commission),
    target_type(amendment_of_regulation).
must_develop_methodology(AIOffice) :-
    ai_office(AIOffice).
must_include_in_list(AIOffice, List) :-
    ai_office(AIOffice),
    list_type(List).
required_assessment_of_enforcement(Commission) :-
    commission(Commission).
must_report_to(Commission, european_parliament) :-
    commission(Commission),
    body_type(european_parliament).
must_report_to(Commission, council) :-
    commission(Commission),
    body_type(council).
must_report_to(Commission, european_economic_and_social_committee) :-
    commission(Commission),
    body_type(european_economic_and_social_committee).
list_type(annex_3).
list_type(prohibited_practices).
topic_type(area_headings_amendment).
topic_type(transparency_measures_amendment).
topic_type(supervision_governance_amendment).
topic_type(evaluation_review).
topic_type(energy_efficient_gp_ai_models_standardisation).
aspect_type(enforcement_structure).
aspect_type(union_agency_need).
source_type(board).
source_type(european_parliament).
source_type(council).
source_type(other_relevant_body).
body_type(european_parliament).
body_type(council).
body_type(european_economic_and_social_committee).
target_type(amendment_of_regulation).
report(evaluation_review_report).
report(ai_office_evaluation_report).
report(energy_efficient_standardisation_report).
report(enforcement_assessment_report).
provenance(must_assess_need_for_amendment/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(required_evaluation/2, 'celex:32024R1689/oj#art_112').
provenance(required_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_include_assessment/2, 'celex:32024R1689/oj#art_112').
provenance(must_include_proposal_if_appropriate/2, 'celex:32024R1689/oj#art_112').
provenance(must_make_public/1, 'celex:32024R1689/oj#art_112').
provenance(required_report_attention/2, 'celex:32024R1689/oj#art_112').
provenance(required_evaluation_of_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_need_for_measures/1, 'celex:32024R1689/oj#art_112').
provenance(required_evaluation_of_voluntary_codes/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_proposal/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(must_include_in_list/2, 'celex:32024R1689/oj#art_112').
provenance(required_assessment_of_enforcement/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_to/2, 'celex:32024R1689/oj#art_112').
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
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').

% ==== celex:32024R1689/oj#art_113 ====
declared(required_entry_into_force/2, 'date when act enters into force', 'celex:32024R1689/oj#art_113').
declared(required_application_from/2, 'date from which provision applies', 'celex:32024R1689/oj#art_113').
declared(exempt_application_from/2, 'exception to application date', 'celex:32024R1689/oj#art_113').
declared(required_binding/1, 'act is binding in its entirety and directly applicable', 'celex:32024R1689/oj#art_113').
required_entry_into_force('celex:32024R1689/oj', '20 days after publication').
required_application_from('celex:32024R1689/oj', '2 August 2026').
required_application_from('celex:32024R1689/oj#chp_1', '2 February 2025').
required_application_from('celex:32024R1689/oj#chp_2', '2 February 2025').
required_application_from('celex:32024R1689/oj#chp_3/sec_4', '2 August 2025').
required_application_from('celex:32024R1689/oj#chp_5', '2 August 2025').
required_application_from('celex:32024R1689/oj#chp_7', '2 August 2025').
required_application_from('celex:32024R1689/oj#chp_12', '2 August 2025').
required_application_from('celex:32024R1689/oj#art_78', '2 August 2025').
required_application_from('celex:32024R1689/oj#art_6/par_1', '2 August 2027').
exempt_application_from('celex:32024R1689/oj#art_101', '2 August 2025').
required_binding('celex:32024R1689/oj').
provenance(required_entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(required_application_from/2, 'celex:32024R1689/oj#art_113').
provenance(exempt_application_from/2, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation/1, 'Union harmonisation legislation referenced in Annex I', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation('celex:32006L0042/oj').
union_harmonisation_legislation('celex:31995L0016/oj').
union_harmonisation_legislation('celex:32009L0048/oj').
union_harmonisation_legislation('celex:32013L0053/oj').
union_harmonisation_legislation('celex:31994L0025/oj').
union_harmonisation_legislation('celex:32014L0033/oj').
union_harmonisation_legislation('celex:32014L0031/oj').
union_harmonisation_legislation('celex:32014L0034/oj').
union_harmonisation_legislation('celex:32014L0053/oj').
union_harmonisation_legislation('celex:31999L0005/oj').
union_harmonisation_legislation('celex:32014L0068/oj').
union_harmonisation_legislation('celex:32016R0424/oj').
union_harmonisation_legislation('celex:32000L0009/oj').
union_harmonisation_legislation('celex:32016R0425/oj').
union_harmonisation_legislation('celex:31989L0686/oj').
union_harmonisation_legislation('celex:32016R0426/oj').
union_harmonisation_legislation('celex:32009L0142/oj').
union_harmonisation_legislation('celex:32017R0745/oj').
union_harmonisation_legislation('celex:32001L0083/oj').
union_harmonisation_legislation('celex:32002R0178/oj').
union_harmonisation_legislation('celex:32009R1223/oj').
union_harmonisation_legislation('celex:31990L0385/oj').
union_harmonisation_legislation('celex:31993L0042/oj').
union_harmonisation_legislation('celex:32017R0746/oj').
union_harmonisation_legislation('celex:31998L0079/oj').
union_harmonisation_legislation('celex:32010D0227/oj').
union_harmonisation_legislation('celex:32008R0300/oj').
union_harmonisation_legislation('celex:32002R2320/oj').
union_harmonisation_legislation('celex:32013R0168/oj').
union_harmonisation_legislation('celex:32013R0167/oj').
union_harmonisation_legislation('celex:32014L0090/oj').
union_harmonisation_legislation('celex:31996L0098/oj').
union_harmonisation_legislation('celex:32016L0797/oj').
union_harmonisation_legislation('celex:32018R0858/oj').
union_harmonisation_legislation('celex:32007R0715/oj').
union_harmonisation_legislation('celex:32009R0595/oj').
union_harmonisation_legislation('celex:32007L0046/oj').
union_harmonisation_legislation('celex:32019R2144/oj').
union_harmonisation_legislation('celex:32009R0078/oj').
union_harmonisation_legislation('celex:32009R0079/oj').
union_harmonisation_legislation('celex:32009R0661/oj').
union_harmonisation_legislation('celex:32009R0631/oj').
union_harmonisation_legislation('celex:32010R0406/oj').
union_harmonisation_legislation('celex:32010R0672/oj').
union_harmonisation_legislation('celex:32010R1003/oj').
union_harmonisation_legislation('celex:32010R1005/oj').
union_harmonisation_legislation('celex:32010R1008/oj').
union_harmonisation_legislation('celex:32010R1009/oj').
union_harmonisation_legislation('celex:32011R0019/oj').
union_harmonisation_legislation('celex:32011R0109/oj').
union_harmonisation_legislation('celex:32011R0458/oj').
union_harmonisation_legislation('celex:32012R0065/oj').
union_harmonisation_legislation('celex:32012R0130/oj').
union_harmonisation_legislation('celex:32012R0347/oj').
union_harmonisation_legislation('celex:32012R0351/oj').
union_harmonisation_legislation('celex:32012R1230/oj').
union_harmonisation_legislation('celex:32015R0166/oj').
union_harmonisation_legislation('celex:32018R1139/oj').
union_harmonisation_legislation('celex:32005R2111/oj').
union_harmonisation_legislation('celex:32008R1008/oj').
union_harmonisation_legislation('celex:32010R0996/oj').
union_harmonisation_legislation('celex:32014R0376/oj').
union_harmonisation_legislation('celex:32014L0030/oj').
union_harmonisation_legislation('celex:32004R0552/oj').
union_harmonisation_legislation('celex:32008R0216/oj').
union_harmonisation_legislation('celex:31991R3922/oj').
union_harmonisation_legislation('celex:31991R3922/oj#art_2/par_1/pnt_a').
union_harmonisation_legislation('celex:31991R3922/oj#art_2/par_1/pnt_b').
provenance(union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
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
criminal_offence('trafficking in human beings').
criminal_offence('sexual exploitation of children').
criminal_offence('child pornography').
criminal_offence('illicit trafficking in narcotic drugs or psychotropic substances').
criminal_offence('illicit trafficking in weapons, munitions or explosives').
criminal_offence(murder).
criminal_offence('grievous bodily injury').
criminal_offence('illicit trade in human organs or tissue').
criminal_offence('illicit trafficking in nuclear or radioactive materials').
criminal_offence(kidnapping).
criminal_offence('illegal restraint or hostage-taking').
criminal_offence('crimes within the jurisdiction of the International Criminal Court').
criminal_offence('unlawful seizure of aircraft or ships').
criminal_offence(rape).
criminal_offence('environmental crime').
criminal_offence('organised or armed robbery').
criminal_offence(sabotage).
criminal_offence('participation in a criminal organisation involved in one or more of the offences listed above').
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III as high‑risk', 'celex:32024R1689/oj#anx_3').
declared(intended_for_biometric_verification_only/1, 'AI system intended solely for biometric verification to confirm identity', 'celex:32024R1689/oj#anx_3').
declared(critical_infrastructure_ai_system/1, 'AI system intended as safety component in critical infrastructure', 'celex:32024R1689/oj#anx_3').
declared(education_ai_system/1, 'AI system intended for use in education or vocational training', 'celex:32024R1689/oj#anx_3').
declared(employment_ai_system/1, 'AI system intended for use in employment, workers’ management or self‑employment', 'celex:32024R1689/oj#anx_3').
declared(essential_private_service_ai_system/1, 'AI system intended for use in essential private or public services and benefits', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_ai_system/1, 'AI system intended for use by law‑enforcement authorities', 'celex:32024R1689/oj#anx_3').
declared(migration_ai_system/1, 'AI system intended for use in migration, asylum or border‑control management', 'celex:32024R1689/oj#anx_3').
declared(administration_of_justice_ai_system/1, 'AI system intended for use in administration of justice or democratic processes', 'celex:32024R1689/oj#anx_3').
declared(intended_for_education/1, 'AI system intended for education‑related purposes', 'celex:32024R1689/oj#anx_3').
declared(intended_for_employment/1, 'AI system intended for employment‑related purposes', 'celex:32024R1689/oj#anx_3').
declared(intended_for_essential_service/1, 'AI system intended for essential private or public services', 'celex:32024R1689/oj#anx_3').
declared(intended_for_law_enforcement/1, 'AI system intended for law‑enforcement purposes', 'celex:32024R1689/oj#anx_3').
declared(intended_for_migration/1, 'AI system intended for migration, asylum or border‑control purposes', 'celex:32024R1689/oj#anx_3').
declared(intended_for_administration_of_justice/1, 'AI system intended for administration of justice or democratic processes', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ intended_for_biometric_verification_only(S).
high_risk_ai_system(S) :-
    biometric_categorisation_system(S).
high_risk_ai_system(S) :-
    emotion_recognition_system(S).
high_risk_ai_system(S) :-
    critical_infrastructure_ai_system(S).
high_risk_ai_system(S) :-
    education_ai_system(S).
high_risk_ai_system(S) :-
    employment_ai_system(S).
high_risk_ai_system(S) :-
    essential_private_service_ai_system(S).
high_risk_ai_system(S) :-
    law_enforcement_ai_system(S).
high_risk_ai_system(S) :-
    migration_ai_system(S).
high_risk_ai_system(S) :-
    administration_of_justice_ai_system(S).
critical_infrastructure_ai_system(S) :-
    safety_component(S),
    critical_infrastructure(_I),
    safety_component(S).
education_ai_system(S) :-
    intended_for_education(S),
    intended_for_education(S).
employment_ai_system(S) :-
    intended_for_employment(S),
    intended_for_employment(S).
essential_private_service_ai_system(S) :-
    intended_for_essential_service(S),
    intended_for_essential_service(S).
law_enforcement_ai_system(S) :-
    intended_for_law_enforcement(S),
    intended_for_law_enforcement(S).
migration_ai_system(S) :-
    intended_for_migration(S),
    intended_for_migration(S).
administration_of_justice_ai_system(S) :-
    intended_for_administration_of_justice(S),
    intended_for_administration_of_justice(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_biometric_verification_only/1, 'celex:32024R1689/oj#anx_3').
provenance(critical_infrastructure_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(essential_private_service_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(administration_of_justice_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_education/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_employment/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_essential_service/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_migration/1, 'celex:32024R1689/oj#anx_3').
provenance(intended_for_administration_of_justice/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
required_general_description(S) :-
    ai_system(S).
required_detailed_description_of_elements(S) :-
    ai_system(S).
required_monitoring_information(S) :-
    ai_system(S).
required_performance_metrics_description(S) :-
    ai_system(S).
required_risk_management_description(S) :-
    ai_system(S).
required_provider_changes_description(S) :-
    ai_system(S).
required_harmonised_standards_description(S) :-
    ai_system(S).
required_eu_declaration_of_conformity(S) :-
    ai_system(S).
required_post_market_evaluation_description(S) :-
    ai_system(S).
provenance(required_general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_detailed_description_of_elements/1, 'celex:32024R1689/oj#anx_4').
provenance(required_monitoring_information/1, 'celex:32024R1689/oj#anx_4').
provenance(required_performance_metrics_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_risk_management_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_provider_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_harmonised_standards_description/1, 'celex:32024R1689/oj#anx_4').
provenance(required_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_4').
provenance(required_post_market_evaluation_description/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(required_ai_system_identification/1, 'identification and traceability information of the AI system', 'celex:32024R1689/oj#anx_5').
required_ai_system_identification(S) :-
    ai_system(S).
declared(required_provider_contact_information/1, 'name and address of the provider', 'celex:32024R1689/oj#anx_5').
required_provider_contact_information(P) :-
    provider(P).
declared(required_authorised_representative_contact_information/1, 'name and address of the authorised representative', 'celex:32024R1689/oj#anx_5').
required_authorised_representative_contact_information(R) :-
    authorised_representative(R).
declared(required_provider_responsibility_statement/1, 'statement that the declaration is issued under the sole responsibility of the provider', 'celex:32024R1689/oj#anx_5').
required_provider_responsibility_statement(P) :-
    provider(P).
declared(required_conformity_statement/1, 'statement that the AI system is in conformity with the AI Act and other relevant Union law', 'celex:32024R1689/oj#anx_5').
required_conformity_statement(S) :-
    ai_system(S).
declared(processing_personal_data/1, 'AI system involves processing of personal data', 'celex:32024R1689/oj#anx_5').
declared(required_personal_data_compliance_statement/1, 'statement that the AI system complies with GDPR and related legislation', 'celex:32024R1689/oj#anx_5').
required_personal_data_compliance_statement(S) :-
    ai_system(S),
    processing_personal_data(S).
declared(required_harmonised_standard_reference/1, 'reference to any relevant harmonised standards or common specifications used', 'celex:32024R1689/oj#anx_5').
required_harmonised_standard_reference(S) :-
    ai_system(S).
declared(required_notified_body_information/1, 'name, identification number of the notified body and description of the conformity assessment procedure and certificate', 'celex:32024R1689/oj#anx_5').
required_notified_body_information(NB) :-
    notified_body(NB).
declared(declaration/1, 'EU declaration of conformity document', 'celex:32024R1689/oj#anx_5').
declared(required_declaration_signature_information/1, 'place, date, name, function of the signatory and indication of on whose behalf the signature is made', 'celex:32024R1689/oj#anx_5').
required_declaration_signature_information(D) :-
    declaration(D).
provenance(required_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_contact_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_authorised_representative_contact_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_personal_data_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_harmonised_standard_reference/1, 'celex:32024R1689/oj#anx_5').
provenance(required_notified_body_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_declaration_signature_information/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(required_verification_of_quality_management_system/1, 'provider must verify that the quality management system complies with the requirements of art_17', 'celex:32024R1689/oj#anx_6').
declared(required_examination_of_technical_documentation/1, 'provider must examine the technical documentation to assess AI system compliance with essential requirements', 'celex:32024R1689/oj#anx_6').
declared(required_verification_of_design_and_development_process/1, 'provider must verify that design, development and post‑market monitoring are consistent with the technical documentation', 'celex:32024R1689/oj#anx_6').
required_verification_of_quality_management_system(P) :-
    provider(P).
required_examination_of_technical_documentation(P) :-
    provider(P).
required_verification_of_design_and_development_process(P) :-
    provider(P).
provenance(required_verification_of_quality_management_system/1, 'celex:32024R1689/oj#anx_6').
provenance(required_examination_of_technical_documentation/1, 'celex:32024R1689/oj#anx_6').
provenance(required_verification_of_design_and_development_process/1, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(required_application_includes_name_and_address/1, 'application must contain name and address of provider or authorised representative', 'celex:32024R1689/oj#anx_7').
required_application_includes_name_and_address(X) :-
    (provider(X) ; authorised_representative(X)),
    (provider(X) ; authorised_representative(X)).
declared(required_application_includes_list_of_ai_systems/1, 'application must contain list of AI systems covered by the same quality management system', 'celex:32024R1689/oj#anx_7').
required_application_includes_list_of_ai_systems(P) :-
    provider(P),
    provider(P).
declared(required_application_includes_technical_documentation_per_ai_system/1, 'application must contain technical documentation for each AI system covered by the same quality management system', 'celex:32024R1689/oj#anx_7').
required_application_includes_technical_documentation_per_ai_system(P) :-
    provider(P),
    provider(P).
declared(required_application_includes_qms_documentation_covers_art_17/1, 'application must contain quality‑management‑system documentation covering aspects listed in article 17', 'celex:32024R1689/oj#anx_7').
required_application_includes_qms_documentation_covers_art_17(P) :-
    provider(P),
    provider(P).
declared(required_application_includes_description_of_procedures/1, 'application must contain description of procedures ensuring the quality management system remains adequate and effective', 'celex:32024R1689/oj#anx_7').
required_application_includes_description_of_procedures(P) :-
    provider(P),
    provider(P).
declared(required_application_includes_written_declaration_no_other_notified_body/1, 'application must contain a written declaration that the same application has not been lodged with any other notified body', 'celex:32024R1689/oj#anx_7').
required_application_includes_written_declaration_no_other_notified_body(P) :-
    provider(P),
    provider(P).
declared(required_qms_assessed_by_notified_body/2, 'quality management system shall be assessed by the notified body', 'celex:32024R1689/oj#anx_7').
required_qms_assessed_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(must_notify/2, 'the decision shall be notified to the provider or its authorised representative', 'celex:32024R1689/oj#anx_7').
must_notify(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(required_maintain_qms/1, 'provider shall continue to implement and maintain the approved quality management system so that it remains adequate and efficient', 'celex:32024R1689/oj#anx_7').
required_maintain_qms(P) :-
    provider(P),
    provider(P).
declared(required_notify_change_to_qms/2, 'provider shall bring any intended change to the approved quality management system to the attention of the notified body', 'celex:32024R1689/oj#anx_7').
required_notify_change_to_qms(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).
declared(required_examine_change_by_notified_body/2, 'notified body shall examine proposed changes to the quality management system and decide on further assessment', 'celex:32024R1689/oj#anx_7').
required_examine_change_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(required_application_for_technical_documentation/2, 'provider shall lodge an application with a notified body for assessment of the technical documentation of the AI system intended to be placed on the market or put into service', 'celex:32024R1689/oj#anx_7').
required_application_for_technical_documentation(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).
declared(required_technical_doc_application_includes_name_and_address/1, 'technical documentation application must include name and address of the provider', 'celex:32024R1689/oj#anx_7').
required_technical_doc_application_includes_name_and_address(P) :-
    provider(P),
    provider(P).
declared(required_technical_doc_application_includes_written_declaration/1, 'technical documentation application must contain a written declaration that the same application has not been lodged with any other notified body', 'celex:32024R1689/oj#anx_7').
required_technical_doc_application_includes_written_declaration(P) :-
    provider(P),
    provider(P).
declared(required_technical_doc_application_includes_technical_documentation/1, 'technical documentation application must include the technical documentation referred to in article 4', 'celex:32024R1689/oj#anx_7').
required_technical_doc_application_includes_technical_documentation(P) :-
    provider(P),
    provider(P).
declared(required_examine_technical_documentation_by_notified_body/2, 'technical documentation shall be examined by the notified body', 'celex:32024R1689/oj#anx_7').
required_examine_technical_documentation_by_notified_body(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    ai_system(S),
    ai_system(S).
declared(permitted_access_to_data_sets/2, 'notified body may be granted full access to training, validation and testing data sets, subject to security safeguards', 'celex:32024R1689/oj#anx_7').
permitted_access_to_data_sets(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    ai_system(S),
    ai_system(S).
declared(permitted_require_further_evidence/2, 'notified body may require the provider to supply further evidence or carry out further tests', 'celex:32024R1689/oj#anx_7').
permitted_require_further_evidence(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(required_conduct_adequate_tests_by_notified_body/2, 'if not satisfied with provider tests, the notified body shall directly carry out adequate tests', 'celex:32024R1689/oj#anx_7').
required_conduct_adequate_tests_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(high_risk_ai_system/1, 'high‑risk AI system', 'celex:32024R1689/oj#anx_7').
declared(required_access_to_training_and_models/2, 'notified body shall be granted access to training and trained models of a high‑risk AI system when necessary', 'celex:32024R1689/oj#anx_7').
required_access_to_training_and_models(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    high_risk_ai_system(S),
    high_risk_ai_system(S).
declared(required_issue_certificate_if_conformant/3, 'notified body shall issue a Union technical documentation assessment certificate when the AI system is in conformity', 'celex:32024R1689/oj#anx_7').
required_issue_certificate_if_conformant(NB, P, S) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P),
    ai_system(S),
    ai_system(S).
declared(required_refuse_certificate_if_nonconformant/3, 'notified body shall refuse to issue a Union technical documentation assessment certificate when the AI system is not in conformity', 'celex:32024R1689/oj#anx_7').
required_refuse_certificate_if_nonconformant(NB, P, S) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P),
    ai_system(S),
    ai_system(S).
declared(required_retrain_if_data_noncompliant/1, 'provider shall retrain the AI system if the data used to train it does not meet the requirement', 'celex:32024R1689/oj#anx_7').
required_retrain_if_data_noncompliant(S) :-
    ai_system(S),
    ai_system(S).
declared(required_notify_change_to_ai_system/2, 'provider shall inform the notified body of any change to the AI system that could affect compliance or intended purpose', 'celex:32024R1689/oj#anx_7').
required_notify_change_to_ai_system(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).
declared(required_assess_change_by_notified_body/2, 'notified body shall assess the intended change to the AI system', 'celex:32024R1689/oj#anx_7').
required_assess_change_by_notified_body(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(required_decide_new_conformity_assessment_or_supplement/2, 'notified body shall decide whether a new conformity assessment is required or a supplement to the certificate can be issued', 'celex:32024R1689/oj#anx_7').
required_decide_new_conformity_assessment_or_supplement(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(permitted_issue_supplement/2, 'notified body may issue a supplement to the Union technical documentation assessment certificate', 'celex:32024R1689/oj#anx_7').
permitted_issue_supplement(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(objective_ensure_compliance/1, 'purpose of surveillance is to ensure the provider complies with the approved quality management system', 'celex:32024R1689/oj#anx_7').
objective_ensure_compliance(P) :-
    provider(P),
    provider(P).
declared(required_allow_access_to_premises/2, 'provider shall allow the notified body access to premises where design, development and testing of AI systems take place', 'celex:32024R1689/oj#anx_7').
required_allow_access_to_premises(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).
declared(required_share_information/2, 'provider shall share all necessary information with the notified body', 'celex:32024R1689/oj#anx_7').
required_share_information(P, NB) :-
    provider(P),
    provider(P),
    notified_body(NB),
    notified_body(NB).
declared(required_conduct_periodic_audits/2, 'notified body shall carry out periodic audits to verify the provider maintains and applies the quality management system', 'celex:32024R1689/oj#anx_7').
required_conduct_periodic_audits(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(required_provide_audit_report/2, 'notified body shall provide the provider with an audit report', 'celex:32024R1689/oj#anx_7').
required_provide_audit_report(NB, P) :-
    notified_body(NB),
    notified_body(NB),
    provider(P),
    provider(P).
declared(permitted_additional_tests_during_audit/2, 'notified body may carry out additional tests of AI systems for which a Union technical documentation assessment certificate was issued', 'celex:32024R1689/oj#anx_7').
permitted_additional_tests_during_audit(NB, S) :-
    notified_body(NB),
    notified_body(NB),
    ai_system(S),
    ai_system(S).
provenance(required_application_includes_name_and_address/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_list_of_ai_systems/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_technical_documentation_per_ai_system/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_qms_documentation_covers_art_17/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_description_of_procedures/1, 'celex:32024R1689/oj#anx_7').
provenance(required_application_includes_written_declaration_no_other_notified_body/1, 'celex:32024R1689/oj#anx_7').
provenance(required_qms_assessed_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(required_maintain_qms/1, 'celex:32024R1689/oj#anx_7').
provenance(required_notify_change_to_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(required_examine_change_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(required_application_for_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes_name_and_address/1, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes_written_declaration/1, 'celex:32024R1689/oj#anx_7').
provenance(required_technical_doc_application_includes_technical_documentation/1, 'celex:32024R1689/oj#anx_7').
provenance(required_examine_technical_documentation_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_access_to_data_sets/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(required_conduct_adequate_tests_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(required_access_to_training_and_models/2, 'celex:32024R1689/oj#anx_7').
provenance(required_issue_certificate_if_conformant/3, 'celex:32024R1689/oj#anx_7').
provenance(required_refuse_certificate_if_nonconformant/3, 'celex:32024R1689/oj#anx_7').
provenance(required_retrain_if_data_noncompliant/1, 'celex:32024R1689/oj#anx_7').
provenance(required_notify_change_to_ai_system/2, 'celex:32024R1689/oj#anx_7').
provenance(required_assess_change_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(required_decide_new_conformity_assessment_or_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_issue_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(objective_ensure_compliance/1, 'celex:32024R1689/oj#anx_7').
provenance(required_allow_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(required_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(required_conduct_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(required_provide_audit_report/2, 'celex:32024R1689/oj#anx_7').
provenance(permitted_additional_tests_during_audit/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(high_risk_ai_system/1, 'high‑risk AI system as defined in the Regulation', 'celex:32024R1689/oj#anx_8').
declared(required_information_submission_by_provider/2, 'information that must be submitted by provider of high‑risk AI system', 'celex:32024R1689/oj#anx_8').
declared(required_information_submission_by_deployer/2, 'information that must be submitted by deployer of high‑risk AI system', 'celex:32024R1689/oj#anx_8').
declared(prohibited_electronic_instructions_for_use/2, 'electronic instructions for use must not be provided for certain high‑risk AI systems', 'celex:32024R1689/oj#anx_8').
declared(permitted_electronic_instructions_for_use/2, 'electronic instructions for use may be provided for high‑risk AI systems not in prohibited areas', 'celex:32024R1689/oj#anx_8').
declared(law_enforcement_or_migration_area/1, 'high‑risk AI system used in law enforcement or migration, asylum and border control management', 'celex:32024R1689/oj#anx_8').
required_information_submission_by_provider(P, S) :-
    provider(P),
    high_risk_ai_system(S).
required_information_submission_by_deployer(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
prohibited_electronic_instructions_for_use(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    law_enforcement_or_migration_area(S).
permitted_electronic_instructions_for_use(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    \+ law_enforcement_or_migration_area(S).
provenance(required_information_submission_by_provider/2, 'celex:32024R1689/oj#anx_8').
provenance(required_information_submission_by_deployer/2, 'celex:32024R1689/oj#anx_8').
provenance(prohibited_electronic_instructions_for_use/2, 'celex:32024R1689/oj#anx_8').
provenance(permitted_electronic_instructions_for_use/2, 'celex:32024R1689/oj#anx_8').
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
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').

% ==== celex:32024R1689/oj#anx_9 ====
declared(high_risk_ai_system/1, 'high‑risk AI system as defined in the Regulation', 'anx_9').
declared(required_information_item/1, 'information element that must be submitted for registration of testing in real world conditions', 'anx_9').
declared(must_provide/2, 'obligation to submit required information', 'anx_9').
declared(must_maintain_up_to_date/2, 'obligation to keep submitted information up to date', 'anx_9').
required_information_item(union_wide_unique_identification_number).
required_information_item(provider_and_deployer_contact_details).
required_information_item(brief_description_of_ai_system).
required_information_item(summary_of_testing_plan_characteristics).
required_information_item(information_on_suspension_or_termination).
must_provide(Actor, Item) :-
    provider(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).
must_provide(Actor, Item) :-
    deployer(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).
must_maintain_up_to_date(Actor, Item) :-
    provider(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).
must_maintain_up_to_date(Actor, Item) :-
    deployer(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_9').
provenance(required_information_item/1, 'celex:32024R1689/oj#anx_9').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_9').
provenance(must_maintain_up_to_date/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system_act/1, 'Union legislative act on large‑scale IT system', 'celex:32024R1689/oj#anx_10').
large_scale_it_system_act('celex:32018R1860/oj').
large_scale_it_system_act('celex:32018R1861/oj').
large_scale_it_system_act('celex:42000A0922(01)/oj').
large_scale_it_system_act('celex:32006R1987/oj').
large_scale_it_system_act('celex:32007D0533/oj').
large_scale_it_system_act('celex:32006R1986/oj').
large_scale_it_system_act('celex:32010D0261/oj').
large_scale_it_system_act('celex:32021R1133/oj').
large_scale_it_system_act('celex:32013R0603/oj').
large_scale_it_system_act('celex:32016R0794/oj').
large_scale_it_system_act('celex:32018R1862/oj').
large_scale_it_system_act('celex:32019R0816/oj').
large_scale_it_system_act('celex:32019R0818/oj').
large_scale_it_system_act('celex:32021R1134/oj').
large_scale_it_system_act('celex:32008R0767/oj').
large_scale_it_system_act('celex:32009R0810/oj').
large_scale_it_system_act('celex:32016R0399/oj').
large_scale_it_system_act('celex:32017R2226/oj').
large_scale_it_system_act('celex:32018R1240/oj').
large_scale_it_system_act('celex:32019R0817/oj').
large_scale_it_system_act('celex:32019R1896/oj').
large_scale_it_system_act('celex:32004D0512/oj').
large_scale_it_system_act('celex:32008D0633/oj').
large_scale_it_system_act('celex:32024R1358/oj').
large_scale_it_system_act('celex:32024R1315/oj').
large_scale_it_system_act('celex:32024R1350/oj').
large_scale_it_system_act('celex:32001L0055/oj').
large_scale_it_system_act('celex:32011R1077/oj').
large_scale_it_system_act('celex:32014R0515/oj').
large_scale_it_system_act('celex:32016R1624/oj').
large_scale_it_system_act('celex:32018R1241/oj').
large_scale_it_system_act('celex:32018R1726/oj').
provenance(large_scale_it_system_act/1, 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1860/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1861/oj').
references('celex:32024R1689/oj#anx_10', 'celex:42000A0922(01)/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1987/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32007D0533/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1986/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32010D0261/oj').
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
declared(required_technical_documentation/2, 'technical documentation that must be provided by providers of general‑purpose AI models', 'celex:32024R1689/oj#anx_11').
declared(required_general_description/2, 'general description of the general‑purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(required_tasks/2, 'tasks the model is intended to perform', 'celex:32024R1689/oj#anx_11').
declared(required_acceptable_use_policies/2, 'acceptable use policies applicable to the model', 'celex:32024R1689/oj#anx_11').
declared(required_release_date/2, 'date of release of the model', 'celex:32024R1689/oj#anx_11').
declared(required_architecture/2, 'architecture and number of parameters of the model', 'celex:32024R1689/oj#anx_11').
declared(required_modality/2, 'modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_11').
declared(required_licence/2, 'licence of the model', 'celex:32024R1689/oj#anx_11').
declared(required_technical_means/2, 'technical means required for integration of the model in AI systems', 'celex:32024R1689/oj#anx_11').
declared(required_design_specifications/2, 'design specifications of the model and training process', 'celex:32024R1689/oj#anx_11').
declared(required_training_data_information/2, 'information on data used for training, testing and validation', 'celex:32024R1689/oj#anx_11').
declared(required_computational_resources/2, 'computational resources used to train the model', 'celex:32024R1689/oj#anx_11').
declared(required_energy_consumption/2, 'energy consumption of the model', 'celex:32024R1689/oj#anx_11').
declared(required_evaluation_strategies/2, 'evaluation strategies and results for the model', 'celex:32024R1689/oj#anx_11').
declared(required_adversarial_testing_measures/2, 'measures for internal and/or external adversarial testing', 'celex:32024R1689/oj#anx_11').
declared(required_system_architecture_description/2, 'description of the system architecture and component integration', 'celex:32024R1689/oj#anx_11').
required_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
required_general_description(P, M) :-
    required_technical_documentation(P, M).
required_tasks(P, M) :-
    required_technical_documentation(P, M).
required_acceptable_use_policies(P, M) :-
    required_technical_documentation(P, M).
required_release_date(P, M) :-
    required_technical_documentation(P, M).
required_architecture(P, M) :-
    required_technical_documentation(P, M).
required_modality(P, M) :-
    required_technical_documentation(P, M).
required_licence(P, M) :-
    required_technical_documentation(P, M).
required_technical_means(P, M) :-
    required_technical_documentation(P, M).
required_design_specifications(P, M) :-
    required_technical_documentation(P, M).
required_training_data_information(P, M) :-
    required_technical_documentation(P, M).
required_computational_resources(P, M) :-
    required_technical_documentation(P, M).
required_energy_consumption(P, M) :-
    required_technical_documentation(P, M).
required_evaluation_strategies(P, M) :-
    required_technical_documentation(P, M).
required_adversarial_testing_measures(P, M) :-
    required_technical_documentation(P, M).
required_system_architecture_description(P, M) :-
    required_technical_documentation(P, M).
provenance(required_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(required_general_description/2, 'celex:32024R1689/oj#anx_11').
provenance(required_tasks/2, 'celex:32024R1689/oj#anx_11').
provenance(required_acceptable_use_policies/2, 'celex:32024R1689/oj#anx_11').
provenance(required_release_date/2, 'celex:32024R1689/oj#anx_11').
provenance(required_architecture/2, 'celex:32024R1689/oj#anx_11').
provenance(required_modality/2, 'celex:32024R1689/oj#anx_11').
provenance(required_licence/2, 'celex:32024R1689/oj#anx_11').
provenance(required_technical_means/2, 'celex:32024R1689/oj#anx_11').
provenance(required_design_specifications/2, 'celex:32024R1689/oj#anx_11').
provenance(required_training_data_information/2, 'celex:32024R1689/oj#anx_11').
provenance(required_computational_resources/2, 'celex:32024R1689/oj#anx_11').
provenance(required_energy_consumption/2, 'celex:32024R1689/oj#anx_11').
provenance(required_evaluation_strategies/2, 'celex:32024R1689/oj#anx_11').
provenance(required_adversarial_testing_measures/2, 'celex:32024R1689/oj#anx_11').
provenance(required_system_architecture_description/2, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_transparency_information/2, 'provider must provide transparency information for a general‑purpose AI model to downstream providers', 'celex:32024R1689/oj#anx_12').
declared(required_transparency_information_item/2, 'required item in the transparency information for a general‑purpose AI model', 'celex:32024R1689/oj#anx_12').
required_transparency_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(_Downstream).
required_transparency_information_item(Model, tasks_intended) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, acceptable_use_policies) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, release_date_and_distribution) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, hardware_software_interaction) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, software_versions) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, architecture_and_parameters) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, input_output_modality_and_format) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, licence) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, technical_means) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, input_output_modality_and_size) :-
    general_purpose_ai_model(Model).
required_transparency_information_item(Model, data_used_for_training_testing_validation) :-
    general_purpose_ai_model(Model).
provenance(required_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(required_transparency_information_item/2, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#anx_13').
declared(parameters_number_applies/1, 'criterion concerning the number of parameters of a model', 'celex:32024R1689/oj#anx_13').
declared(dataset_quality_applies/1, 'criterion concerning the quality or size of the data set used for a model', 'celex:32024R1689/oj#anx_13').
declared(computation_amount_applies/1, 'criterion concerning the amount of computation used for training a model', 'celex:32024R1689/oj#anx_13').
declared(modalities_applies/1, 'criterion concerning the input and output modalities of a model', 'celex:32024R1689/oj#anx_13').
declared(benchmarks_applies/1, 'criterion concerning the benchmarks and evaluations of a model''s capabilities', 'celex:32024R1689/oj#anx_13').
declared(market_impact_applies/1, 'criterion concerning the model''s impact on the internal market', 'celex:32024R1689/oj#anx_13').
declared(registered_end_users_applies/1, 'criterion concerning the number of registered end‑users of a model', 'celex:32024R1689/oj#anx_13').
must_take_into_account(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    parameters_number_applies(Model),
    dataset_quality_applies(Model),
    computation_amount_applies(Model),
    modalities_applies(Model),
    benchmarks_applies(Model),
    market_impact_applies(Model),
    registered_end_users_applies(Model).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

