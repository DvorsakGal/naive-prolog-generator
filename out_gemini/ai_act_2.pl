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
% There are 704 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous acting_as_notified_body/2.
:- discontiguous adco_group/1.
:- discontiguous adheres_to_approved_code/1.
:- discontiguous administrative_fine_limit/3.
:- discontiguous advisory_forum/1.
:- discontiguous ai_safety_component/1.
:- discontiguous alias/2.
:- discontiguous amends/2.
:- discontiguous annex_3_point_2_system/1.
:- discontiguous applicable_reporting_obligation/2.
:- discontiguous assisted_by_committee/2.
:- discontiguous attends_without_voting/2.
:- discontiguous biometrics_annex_3_1_a/1.
:- discontiguous biometrics_annex_3_1_b/1.
:- discontiguous biometrics_annex_3_1_c/1.
:- discontiguous board_chair/1.
:- discontiguous board_observer/1.
:- discontiguous certificate_supplement_valid/1.
:- discontiguous committee_within_meaning_of_regulation_182_2011/1.
:- discontiguous competent_authority_for/2.
:- discontiguous compliant_risk_management_system/1.
:- discontiguous compliant_technical_documentation/2.
:- discontiguous complies_with_article_13/1.
:- discontiguous complies_with_biometric_logging_minimum/1.
:- discontiguous complies_with_harmonised_standard/1.
:- discontiguous conformity_assessment_internal_control/2.
:- discontiguous contains_element/2.
:- discontiguous contains_transparency_development_elements/2.
:- discontiguous contains_transparency_general_description/2.
:- discontiguous controller_of/2.
:- discontiguous covers_union_harmonisation_legislation_annex_i/1.
:- discontiguous criminal_offence_annex_2/1.
:- discontiguous criterion_for_systemic_risk_designation/2.
:- discontiguous date_of_application/2.
:- discontiguous deadline_code_of_practice/1.
:- discontiguous deadline_decision/2.
:- discontiguous deadline_reporting/3.
:- discontiguous deemed_fulfilled_quality_management_system/2.
:- discontiguous deemed_justified/1.
:- discontiguous delegated_act_enters_into_force/1.
:- discontiguous delegated_power_active/2.
:- discontiguous delegated_power_conferred/2.
:- discontiguous designation_term_years/2.
:- discontiguous directive_2019_1937_applies/1.
:- discontiguous documentation_item_article_18/2.
:- discontiguous duly_informed/2.
:- discontiguous duly_reasoned_complaint/1.
:- discontiguous empowered_delegated_acts/2.
:- discontiguous empowered_to_adopt_delegated_acts/2.
:- discontiguous entitled_access_to_file/1.
:- discontiguous entrusted_implementation_task/2.
:- discontiguous entry_into_force/2.
:- discontiguous european_artificial_intelligence_board/1.
:- discontiguous examination_procedure_applies/1.
:- discontiguous exclusive_powers_supervise_and_enforce/2.
:- discontiguous exempt_administrative_fines/1.
:- discontiguous exempt_annex_3_high_risk/1.
:- discontiguous exempt_authorised_representative_obligation/1.
:- discontiguous exempt_deep_fake_disclosure/1.
:- discontiguous exempt_documentation_obligations/1.
:- discontiguous exempt_fees/2.
:- discontiguous exempt_from_article_46_derogation/1.
:- discontiguous exempt_from_post_market_monitoring/1.
:- discontiguous exempt_from_regulation/1.
:- discontiguous exempt_high_risk_annex_3/1.
:- discontiguous exempt_public_interest_text_disclosure/1.
:- discontiguous exempt_surveillance_procedures/1.
:- discontiguous exempt_transparency_biometric/1.
:- discontiguous exempt_transparency_interaction/1.
:- discontiguous exempt_transparency_marking/1.
:- discontiguous exempt_two_person_verification/1.
:- discontiguous finding_compliant_system_presents_risk/2.
:- discontiguous fine_infringement_condition/2.
:- discontiguous general_purpose_ai_model_transparency_information/2.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous has_liability_coverage/1.
:- discontiguous high_impact_capabilities/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_area_biometrics/1.
:- discontiguous high_risk_area_education/1.
:- discontiguous high_risk_area_employment/1.
:- discontiguous high_risk_area_essential_services/1.
:- discontiguous high_risk_area_justice_democratic/1.
:- discontiguous high_risk_area_law_enforcement/1.
:- discontiguous high_risk_area_migration/1.
:- discontiguous independent_expert/1.
:- discontiguous intended_medical_or_safety_reason/1.
:- discontiguous involved_in_application_of_regulation/1.
:- discontiguous law_enforcement_or_support_user/1.
:- discontiguous lawfully_acquired_dataset_filtering_or_law_enforcement/1.
:- discontiguous limited_scope_annex_1_system/1.
:- discontiguous mandate_empowers/2.
:- discontiguous market_surveillance_authority_for/2.
:- discontiguous maximum_fine_amount/2.
:- discontiguous migration_or_support_user/1.
:- discontiguous model_with_systemic_risk/1.
:- discontiguous must_accept/2.
:- discontiguous must_address_decision/2.
:- discontiguous must_adopt/2.
:- discontiguous must_adopt_delegated_acts/2.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_advise/2.
:- discontiguous must_agree/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_assess/2.
:- discontiguous must_assign/2.
:- discontiguous must_assist/2.
:- discontiguous must_associate_complainant/2.
:- discontiguous must_carry_out/2.
:- discontiguous must_collect_document_analyse/2.
:- discontiguous must_communicate/2.
:- discontiguous must_comply/2.
:- discontiguous must_consider/2.
:- discontiguous must_consult/2.
:- discontiguous must_convene_meetings/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_decide/2.
:- discontiguous must_delete/2.
:- discontiguous must_designate/2.
:- discontiguous must_determine_conditions/2.
:- discontiguous must_develop/2.
:- discontiguous must_direct/2.
:- discontiguous must_document/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_elect/2.
:- discontiguous must_empower/2.
:- discontiguous must_enable/2.
:- discontiguous must_encourage/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_storage_and_transport/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_establish/2.
:- discontiguous must_evaluate/2.
:- discontiguous must_examine/2.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_access/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access/2.
:- discontiguous must_handle/2.
:- discontiguous must_hold_meetings/2.
:- discontiguous must_identify/2.
:- discontiguous must_indicate_contact_info/2.
:- discontiguous must_inform/2.
:- discontiguous must_investigate/2.
:- discontiguous must_issue/2.
:- discontiguous must_issue_standardisation_request/2.
:- discontiguous must_justify/2.
:- discontiguous must_keep/2.
:- discontiguous must_keep_at_disposal/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_keep_updated/2.
:- discontiguous must_lay_down_rules/2.
:- discontiguous must_maintain/2.
:- discontiguous must_maintain_documentation/2.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_monitor_and_evaluate/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_results/3.
:- discontiguous must_obtain/2.
:- discontiguous must_organise/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_pay/2.
:- discontiguous must_perform/2.
:- discontiguous must_prepare/2.
:- discontiguous must_prepare_agenda/2.
:- discontiguous must_promote/2.
:- discontiguous must_provide/2.
:- discontiguous must_provide_access/2.
:- discontiguous must_provide_advice/2.
:- discontiguous must_provide_documentation/2.
:- discontiguous must_provide_guidelines/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_priority_access/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_publish/2.
:- discontiguous must_reduce_fees/2.
:- discontiguous must_refuse/2.
:- discontiguous must_register/2.
:- discontiguous must_repeal/2.
:- discontiguous must_report/2.
:- discontiguous must_request/2.
:- discontiguous must_require/2.
:- discontiguous must_restrict/2.
:- discontiguous must_restrict_prohibit_recall_or_withdraw/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_seek_objectives/2.
:- discontiguous must_select/2.
:- discontiguous must_set_up_and_maintain/2.
:- discontiguous must_stop/2.
:- discontiguous must_stop_use_and_discard_outputs/2.
:- discontiguous must_submit/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_support/2.
:- discontiguous must_suspend/2.
:- discontiguous must_suspend_withdraw_or_restrict/2.
:- discontiguous must_take_action/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_terminate/2.
:- discontiguous must_treat_in_accordance_with_confidentiality/2.
:- discontiguous must_update/2.
:- discontiguous must_verify/2.
:- discontiguous must_withdraw/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous national_level_registration_required/1.
:- discontiguous national_measure/2.
:- discontiguous notified_body/1.
:- discontiguous objection_raised/2.
:- discontiguous objective_internal_market_and_protection/1.
:- discontiguous objective_regulatory_sandbox/1.
:- discontiguous operator/1.
:- discontiguous permanent_member_of_advisory_forum/1.
:- discontiguous permitted_access/2.
:- discontiguous permitted_access_restricted_section/2.
:- discontiguous permitted_access_technical_documentation/2.
:- discontiguous permitted_activities_of_notified_body/1.
:- discontiguous permitted_adopt_common_specifications/2.
:- discontiguous permitted_adopt_delegated_act/2.
:- discontiguous permitted_adopt_delegated_acts/2.
:- discontiguous permitted_adopt_implementing_act/2.
:- discontiguous permitted_affix_identification_number/2.
:- discontiguous permitted_appoint_expert/2.
:- discontiguous permitted_approve_code_of_practice/2.
:- discontiguous permitted_assign_assessment_and_monitoring/2.
:- discontiguous permitted_authorisation/2.
:- discontiguous permitted_authorisation_as_notified_body/1.
:- discontiguous permitted_base_decision_only_on/2.
:- discontiguous permitted_call_upon_expert/2.
:- discontiguous permitted_ce_marking/2.
:- discontiguous permitted_combined_risk_management/2.
:- discontiguous permitted_conduct_evaluation/2.
:- discontiguous permitted_conformity_assessment_procedure/2.
:- discontiguous permitted_deployer_action_on_identification/2.
:- discontiguous permitted_derogation_sandbox_testing/2.
:- discontiguous permitted_designate_as_systemic_risk/2.
:- discontiguous permitted_develop_model_terms/2.
:- discontiguous permitted_draw_up_code_of_conduct/1.
:- discontiguous permitted_establish_subgroup/2.
:- discontiguous permitted_exchange_confidential_information/3.
:- discontiguous permitted_exercise_powers/2.
:- discontiguous permitted_extension/2.
:- discontiguous permitted_extension_of_term/2.
:- discontiguous permitted_impose_fine/2.
:- discontiguous permitted_impose_fine/3.
:- discontiguous permitted_initiate_structured_dialogue/2.
:- discontiguous permitted_integrate_post_market_monitoring/2.
:- discontiguous permitted_integrate_qms/2.
:- discontiguous permitted_integration_of_documentation_and_procedures/2.
:- discontiguous permitted_invitation_to_board/2.
:- discontiguous permitted_invite/2.
:- discontiguous permitted_invite_to_adhere/2.
:- discontiguous permitted_invite_to_participate/2.
:- discontiguous permitted_invite_to_subgroup/2.
:- discontiguous permitted_limited_adherence/2.
:- discontiguous permitted_lodge_complaint/2.
:- discontiguous permitted_make_commitments_binding/2.
:- discontiguous permitted_monitoring_action/2.
:- discontiguous permitted_notification/2.
:- discontiguous permitted_opt_out_third_party_assessment/2.
:- discontiguous permitted_perform_checks/2.
:- discontiguous permitted_prepare_contribution/2.
:- discontiguous permitted_present_arguments_not_systemic_risk/2.
:- discontiguous permitted_process_special_categories_data/2.
:- discontiguous permitted_processing/2.
:- discontiguous permitted_provide_alert/3.
:- discontiguous permitted_provide_common_rules/2.
:- discontiguous permitted_provide_guidance_and_advice/2.
:- discontiguous permitted_put_into_service_urgency/2.
:- discontiguous permitted_real_time_remote_biometric_identification/2.
:- discontiguous permitted_reassess/2.
:- discontiguous permitted_rely_on_code_of_practice/2.
:- discontiguous permitted_renew/2.
:- discontiguous permitted_request_access/2.
:- discontiguous permitted_request_and_access_documentation/2.
:- discontiguous permitted_request_documentation/2.
:- discontiguous permitted_request_exercise_of_powers/2.
:- discontiguous permitted_request_information_for_scientific_panel/2.
:- discontiguous permitted_request_measures/2.
:- discontiguous permitted_request_reassessment/2.
:- discontiguous permitted_request_testing/2.
:- discontiguous permitted_review_decision/2.
:- discontiguous permitted_right_to_explanation/2.
:- discontiguous permitted_sandbox_activity/2.
:- discontiguous permitted_simplified_compliance/2.
:- discontiguous permitted_simplified_documentation/2.
:- discontiguous permitted_subcontract_or_subsidiary_activity/3.
:- discontiguous permitted_submit_application/2.
:- discontiguous permitted_submit_complaint/2.
:- discontiguous permitted_submit_incomplete_report/2.
:- discontiguous permitted_submit_reasoned_request/2.
:- discontiguous permitted_support_process/2.
:- discontiguous permitted_suspend_testing/2.
:- discontiguous permitted_task/2.
:- discontiguous permitted_testing_decision/3.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_use/2.
:- discontiguous permitted_validity_period/2.
:- discontiguous permitted_withdraw_from_testing/2.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous powers_of_market_surveillance_authority/2.
:- discontiguous presents_risk/1.
:- discontiguous presumed_compliant_with_art_31/1.
:- discontiguous presumed_conformity/2.
:- discontiguous presumed_high_impact_on_internal_market/1.
:- discontiguous presumed_in_conformity/2.
:- discontiguous presumption_of_conformity/2.
:- discontiguous priority_access/2.
:- discontiguous procedural_rights_apply/2.
:- discontiguous procedure_applies/2.
:- discontiguous procedure_article_79_applies/1.
:- discontiguous prohibited_alteration/2.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_conformity_assessment_activities/1.
:- discontiguous prohibited_consultancy_services/1.
:- discontiguous prohibited_criminal_risk_assessment/1.
:- discontiguous prohibited_disclosure/1.
:- discontiguous prohibited_emotion_inference/1.
:- discontiguous prohibited_exploitative_vulnerability/1.
:- discontiguous prohibited_facial_recognition_database/1.
:- discontiguous prohibited_instruction_taking/1.
:- discontiguous prohibited_making_available_on_market/2.
:- discontiguous prohibited_placing_on_market/2.
:- discontiguous prohibited_practice/1.
:- discontiguous prohibited_real_time_remote_biometric_identification/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_solely_automated_adverse_decision/2.
:- discontiguous prohibited_subliminal_or_manipulative/1.
:- discontiguous prohibited_untargeted_post_remote_biometric_identification/1.
:- discontiguous provenance/2.
:- discontiguous provider/1.
:- discontiguous provider_of_system/2.
:- discontiguous provider_party/1.
:- discontiguous provisional_validity_extension/2.
:- discontiguous publicly_available/1.
:- discontiguous quality_management_system/1.
:- discontiguous reach_impact_on_internal_market/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous recipient_of_information/2.
:- discontiguous references/2.
:- discontiguous regulation_applies_to/1.
:- discontiguous regulation_applies_to_operator/2.
:- discontiguous regulation_scope_item/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous renewable_times/2.
:- discontiguous representative_actions_scope/1.
:- discontiguous requesting_authority_art_84/1.
:- discontiguous required_accuracy_and_robustness/1.
:- discontiguous required_accuracy_declaration/1.
:- discontiguous required_adequate_competent_personnel/1.
:- discontiguous required_ce_marking/2.
:- discontiguous required_ce_marking_indication/2.
:- discontiguous required_compliance/2.
:- discontiguous required_compliance_by/2.
:- discontiguous required_confidentiality_safeguard/1.
:- discontiguous required_conformity_assessment_procedure/2.
:- discontiguous required_cybersecurity_measures/1.
:- discontiguous required_data_governance/2.
:- discontiguous required_decision_content/2.
:- discontiguous required_declaration_content/2.
:- discontiguous required_eu_declaration_of_conformity/1.
:- discontiguous required_human_oversight/1.
:- discontiguous required_in_promotional_material/2.
:- discontiguous required_instructions_for_use/1.
:- discontiguous required_logging_capabilities/1.
:- discontiguous required_monitoring_plan_basis/2.
:- discontiguous required_plan_in_technical_documentation/2.
:- discontiguous required_proportionate_monitoring/1.
:- discontiguous required_qualified_alert/1.
:- discontiguous required_registration_information/2.
:- discontiguous required_retraining/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous required_robustness_measures/1.
:- discontiguous required_safeguard_objectivity_and_impartiality/1.
:- discontiguous required_separation_of_assessment_and_notification/1.
:- discontiguous required_take_into_account/2.
:- discontiguous required_technical_documentation/1.
:- discontiguous required_technical_documentation_compliant/1.
:- discontiguous required_term_of_office/2.
:- discontiguous required_transparency/1.
:- discontiguous required_two_person_verification/1.
:- discontiguous restricted_access/2.
:- discontiguous satisfies_notified_body_requirements/1.
:- discontiguous single_point_of_contact/1.
:- discontiguous single_technical_documentation/1.
:- discontiguous standardisation_request_failed/1.
:- discontiguous strictly_necessary_objective/2.
:- discontiguous subject_to_fines/2.
:- discontiguous supervisory_powers_for_real_world_testing/2.
:- discontiguous supports_human_assessment_on_objective_facts/1.
:- discontiguous system_covered_by_annex_1/1.
:- discontiguous tacitly_extended/1.
:- discontiguous takes_into_account/2.
:- discontiguous tested_for_risk_management/1.
:- discontiguous testing_conditions_met/2.
:- discontiguous triggers_union_safeguard_procedure/2.
:- discontiguous union_act_annex_x/1.
:- discontiguous union_harmonisation_legislation_annex_1/1.
:- discontiguous union_harmonisation_legislation_annex_1_section_a/1.
:- discontiguous union_harmonisation_legislation_annex_1_section_b/1.
:- discontiguous valid_certificate/1.
:- discontiguous valid_informed_consent/2.
:- discontiguous verified_conformity/2.
:- discontiguous verified_distributor_requirements/2.

% --- input slots: assert facts against these at runtime ---
:- dynamic academia/1.
:- dynamic access_controlled_and_confidential/1.
:- dynamic access_to_source_code_necessary/2.
:- dynamic accessibility_requirements_complied/1.
:- dynamic accompanied_by_declaration_of_conformity/1.
:- dynamic accompanied_by_instructions_for_use/1.
:- dynamic accurate/1.
:- dynamic achieves_equivalent_level_of_protection/1.
:- dynamic acts_contrary_to_obligations/1.
:- dynamic acts_on_behalf_of/2.
:- dynamic acts_on_behalf_of_public_entity/1.
:- dynamic adequate_corrective_action_taken/2.
:- dynamic adheres_to/2.
:- dynamic adheres_to_approved_code_of_practice/2.
:- dynamic adopted_act/1.
:- dynamic adopts_act/2.
:- dynamic affected_person/1.
:- dynamic affixing_on_system_possible_and_warranted/1.
:- dynamic agreement_of_provider/3.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic alert_target_model/2.
:- dynamic allows_effective_human_oversight/1.
:- dynamic annex_1_section_a_product/1.
:- dynamic annex_1_section_a_system/1.
:- dynamic annex_1_section_b_product_system/1.
:- dynamic annex_3_high_risk_ai_system/1.
:- dynamic annex_3_point_1_system/1.
:- dynamic annex_3_point_5_b_c_system/1.
:- dynamic annex_3_point_5_system/1.
:- dynamic annex_3_point_6_7_or_8_system/1.
:- dynamic annex_3_points_2_to_8_system/1.
:- dynamic annex_3_system/1.
:- dynamic appeal_procedure_available/1.
:- dynamic application_for_qms_assessment/2.
:- dynamic application_for_technical_documentation_assessment/2.
:- dynamic applied_harmonised_standards_or_specifications/2.
:- dynamic applies_all_harmonised_standards_annex_1/2.
:- dynamic applies_standards_or_specs_chapter_3_section_2/2.
:- dynamic appointed_authorised_representative/2.
:- dynamic appropriate_cybersecurity_measures/1.
:- dynamic approved/1.
:- dynamic area_law_enforcement/1.
:- dynamic area_migration_asylum_border/1.
:- dynamic artificial_intelligence_board/1.
:- dynamic artistic_or_creative_work/1.
:- dynamic assessment_documented/2.
:- dynamic assistive_function_for_standard_editing/1.
:- dynamic authorisation_rejected/1.
:- dynamic authorisation_rejected/2.
:- dynamic authorisation_requested_within_24_hours/1.
:- dynamic authorised_by_competent_authority/1.
:- dynamic authorised_by_law_for_criminal_investigation/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_of/2.
:- dynamic authority_of_member_state/2.
:- dynamic automatic_recording_of_events/1.
:- dynamic available_to_public_to_report_crime/1.
:- dynamic aware_of_incident/2.
:- dynamic aware_of_risk/2.
:- dynamic balanced_selection_criteria_met/1.
:- dynamic bankrupt_or_ceased_activity/1.
:- dynamic based_on/2.
:- dynamic based_on_accreditation_certificate/1.
:- dynamic based_on_specific_union_or_national_law/1.
:- dynamic based_solely_on_profiling_or_personality/1.
:- dynamic bears_ce_marking/1.
:- dynamic bilateral_confidentiality_arrangement_exists/2.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic board/1.
:- dynamic board_representative/2.
:- dynamic body_governed_by_public_law/1.
:- dynamic brought_into_compliance/2.
:- dynamic business_users_in_union/2.
:- dynamic cannot_effectively_fulfil_with_non_personal_data/2.
:- dynamic capability_benchmarks_and_evaluations/2.
:- dynamic carried_out_conformity_assessment/2.
:- dynamic carries_out_activities_diligently_accurately_objectively/1.
:- dynamic causal_link_established_or_likely/2.
:- dynamic ce_marking/1.
:- dynamic ce_marking_affixed_art_48/2.
:- dynamic certificate/1.
:- dynamic certificate_for_system/2.
:- dynamic certificate_issued_by/2.
:- dynamic certified_by_notified_body/1.
:- dynamic certified_or_statement_issued_under_cybersecurity_scheme/2.
:- dynamic civil_protection_authority/1.
:- dynamic civil_society_organisation/1.
:- dynamic cjeu_in_judicial_capacity/1.
:- dynamic classified_non_high_risk/2.
:- dynamic code_of_conduct/1.
:- dynamic code_of_practice/1.
:- dynamic code_of_practice_finalised/1.
:- dynamic commission/1.
:- dynamic commission_considers_contrary_to_union_law/2.
:- dynamic commission_considers_unjustified/2.
:- dynamic commission_decision_systemic_risk/1.
:- dynamic common_specification/1.
:- dynamic common_specification_available/1.
:- dynamic common_specification_covers/2.
:- dynamic competent_and_empowered/1.
:- dynamic competent_authority/1.
:- dynamic complaint/1.
:- dynamic compliance_ensured_by_corrective_action/2.
:- dynamic compliant_data_sharing_controls/2.
:- dynamic compliant_with_applicable_obligations/1.
:- dynamic complies_with/2.
:- dynamic complies_with_chapter_3_section_2/1.
:- dynamic complies_with_confidentiality/2.
:- dynamic complies_with_financial_internal_governance/1.
:- dynamic complies_with_harmonised_standard/2.
:- dynamic complies_with_regulation/1.
:- dynamic component_of_large_scale_it_system_annex_10/1.
:- dynamic comprises_risk_management_steps/1.
:- dynamic concerns_ai_safety_component/1.
:- dynamic concerns_security_equipment_ai/1.
:- dynamic concluded_not_high_risk/2.
:- dynamic conditions_fulfilled_article_41_1/1.
:- dynamic confidential_basis_exchange/2.
:- dynamic confidential_treatment_required/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_involves_notified_body/2.
:- dynamic conformity_assessment_undergone_art_43/1.
:- dynamic conforms_to_standard/2.
:- dynamic consent_given_for_public_access/1.
:- dynamic considered_disproportionate_by_law/1.
:- dynamic considered_not_high_risk_under_art_6_3/1.
:- dynamic considers_adverse_impact/2.
:- dynamic considers_impact_on_vulnerable_groups/2.
:- dynamic considers_non_compliant/2.
:- dynamic considers_or_reason_to_consider_non_compliant/2.
:- dynamic considers_specification_insufficient/2.
:- dynamic consulted_advisory_forum/1.
:- dynamic consulted_board/1.
:- dynamic consulted_relevant_national_authority/2.
:- dynamic contact_info_indicated/2.
:- dynamic contains_acceptable_use_policies/2.
:- dynamic contains_architecture_and_parameters/2.
:- dynamic contains_elements_annex_4/1.
:- dynamic contains_hardware_software_interaction/2.
:- dynamic contains_human_oversight_measures/1.
:- dynamic contains_information/2.
:- dynamic contains_input_output_modality_format/2.
:- dynamic contains_input_output_specifications_and_limits/2.
:- dynamic contains_integration_technical_means/2.
:- dynamic contains_intended_tasks_and_integration_types/2.
:- dynamic contains_logging_mechanisms_description/1.
:- dynamic contains_model_licence/2.
:- dynamic contains_objective_detailed_new_reasons/1.
:- dynamic contains_performance_characteristics/1.
:- dynamic contains_predetermined_changes/1.
:- dynamic contains_provider_identity/1.
:- dynamic contains_release_date_and_distribution_methods/2.
:- dynamic contains_relevant_software_versions/2.
:- dynamic contains_resource_and_maintenance_specifications/1.
:- dynamic contains_training_testing_validation_data_info/2.
:- dynamic continuous_iterative_process/1.
:- dynamic continuous_learning/1.
:- dynamic control_of_logs/2.
:- dynamic controls_input_data/2.
:- dynamic copy_provided_to_subject_or_representative/2.
:- dynamic corrective_actions_and_information_art_20/2.
:- dynamic covered_by_annex_1_section_a/1.
:- dynamic covered_by_legislation/2.
:- dynamic covered_by_medical_device_regulations/1.
:- dynamic covers_cybersecurity_requirements/2.
:- dynamic covers_data/2.
:- dynamic covers_requirements_of_art_31/1.
:- dynamic criminal_investigation_serious_offence/1.
:- dynamic critical_infrastructure/1.
:- dynamic cumulative_computation_training_flops/2.
:- dynamic cybersecurity_resilient/1.
:- dynamic data_governance_non_compliant/1.
:- dynamic data_protection_authority/1.
:- dynamic data_protection_supervisory_authority/1.
:- dynamic dataset_quality_or_size/2.
:- dynamic dated/1.
:- dynamic decision_taken_on_basis_of_output/3.
:- dynamic declaration_for_ai_system/2.
:- dynamic declared_in_instructions_for_use/2.
:- dynamic deduces_sensitive_traits/1.
:- dynamic deemed_adequate/2.
:- dynamic deemed_necessary/1.
:- dynamic deep_fake/1.
:- dynamic delegated_act/1.
:- dynamic delegated_act_pursuant_to/2.
:- dynamic delegated_act_pursuant_to_regulation_2013_168_art_22_par_5/1.
:- dynamic delegated_act_pursuant_to_regulation_2018_858_art_5_par_3/1.
:- dynamic delegated_act_under_regulation_2013_167_art_17_5/1.
:- dynamic deleted_promptly_after_correction_or_retention/1.
:- dynamic deletion_preserves_overall_protection/1.
:- dynamic demonstrates_alternative_compliance/2.
:- dynamic demonstrates_compliance_with_chapter_3_section_2/1.
:- dynamic demonstrates_conformity_upon_request/3.
:- dynamic demonstrates_conformity_with/2.
:- dynamic deployer/1.
:- dynamic deployer_cooperation_conditions_met/2.
:- dynamic deployer_of/2.
:- dynamic deploys_subliminal_or_manipulative_technique/1.
:- dynamic derogation_public_security/1.
:- dynamic designated_contact_point/2.
:- dynamic designated_other_authority/2.
:- dynamic designated_sectoral_market_surveillance_authority/2.
:- dynamic designation_pursuant_to_par_4/1.
:- dynamic direct_connection_financial_services/1.
:- dynamic distributor/1.
:- dynamic distributor_of/2.
:- dynamic documentation_insufficient/2.
:- dynamic documentation_kept_art_18/2.
:- dynamic documentation_or_information_obtained_under_art_77/2.
:- dynamic documentation_under_regulation/2.
:- dynamic documented/1.
:- dynamic documented_systematic_and_orderly/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic downstream_provider/1.
:- dynamic drawn_up_before_market_or_service/1.
:- dynamic drawn_up_technical_documentation/2.
:- dynamic duly_reasoned/1.
:- dynamic duration_compliant/1.
:- dynamic during_structured_dialogue/2.
:- dynamic easily_accessible_digitally/1.
:- dynamic editorial_responsibility_held/1.
:- dynamic edps/1.
:- dynamic effective_monitoring_and_response_mechanisms_present/1.
:- dynamic effective_with_other_data/2.
:- dynamic effectively_overseen/2.
:- dynamic elapsed_since_designation_or_reassessment/2.
:- dynamic elements_changed_or_outdated/2.
:- dynamic emotion_inference_workplace_or_education/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic empowered_coordination_and_consistency/1.
:- dynamic enables_traceability_logging/1.
:- dynamic ensures_confidence_in_performance/1.
:- dynamic ensures_equivalent_level_of_compliance/1.
:- dynamic equivalent_protection_procedure_exists/1.
:- dynamic established_in/2.
:- dynamic established_in_member_state/2.
:- dynamic established_in_third_country/1.
:- dynamic established_in_union/1.
:- dynamic established_in_union_or_has_representative/1.
:- dynamic established_under_law_of_third_country/2.
:- dynamic established_under_national_law/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic eu_declaration_of_conformity_drawn_art_47/2.
:- dynamic eu_declaration_of_conformity_for/2.
:- dynamic european_central_bank/1.
:- dynamic european_data_protection_supervisor/1.
:- dynamic evaluated_as_high_risk/2.
:- dynamic evaluated_under_article_79/2.
:- dynamic evaluates_social_behaviour_or_personality/1.
:- dynamic evaluation_art_92_systemic_risk_concern/1.
:- dynamic evaluation_prescribed_period/2.
:- dynamic examination_procedure/1.
:- dynamic examines_technical_documentation_compliance/2.
:- dynamic exceptional_derogation_reason/1.
:- dynamic excluded_change_to_high_risk/2.
:- dynamic exempt_fundamental_rights_impact_assessment/2.
:- dynamic exempt_liability_insurance/1.
:- dynamic exempt_open_source_supplier/1.
:- dynamic exempt_right_to_explanation/2.
:- dynamic existing_post_market_monitoring_regime/1.
:- dynamic explanation_provided_under_other_union_law/2.
:- dynamic explicitly_declares_interest_to_join_full_code/1.
:- dynamic exploits_vulnerabilities/1.
:- dynamic failed_to_comply_measure_requested/2.
:- dynamic failed_to_comply_request_document_or_info/2.
:- dynamic failed_to_provide_access_for_evaluation/2.
:- dynamic falls_under_article_5/1.
:- dynamic falls_under_article_50/1.
:- dynamic fee_obligation_established/1.
:- dynamic financial_institution/1.
:- dynamic financial_institution_subject_to_union_financial_law/1.
:- dynamic financial_supervisory_authority/2.
:- dynamic fine_ceiling/2.
:- dynamic fine_requirements/1.
:- dynamic floating_point_operation/1.
:- dynamic follows_guidance_in_good_faith/1.
:- dynamic formal_non_compliance/2.
:- dynamic free_and_open_source_licence/1.
:- dynamic freely_given/1.
:- dynamic fulfils_eligibility_and_selection_criteria/2.
:- dynamic fully_applied_common_specification/2.
:- dynamic fully_applied_harmonised_standard/2.
:- dynamic fundamental_rights_authority/1.
:- dynamic fundamental_rights_impact_assessment_completed/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic general_purpose_ai_system_used_directly_for_high_risk/1.
:- dynamic generates_or_manipulates_deep_fake/1.
:- dynamic generates_synthetic_content/1.
:- dynamic grounds_to_consider_infringement/2.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_covers/2.
:- dynamic harmonised_standard_exists/1.
:- dynamic harmonised_standard_published/1.
:- dynamic harmonised_standard_restricted/1.
:- dynamic has_accreditation_certificate/2.
:- dynamic has_authorised_representative/1.
:- dynamic has_human_oversight_competence/1.
:- dynamic has_legal_personality/1.
:- dynamic has_professional_integrity_and_competence/1.
:- dynamic has_proportionate_procedures/1.
:- dynamic has_registered_office_or_branch_in_union/1.
:- dynamic has_sufficient_internal_competences/1.
:- dynamic high_risk_ai_system_annex_3/1.
:- dynamic high_risk_ai_system_art_6_2/1.
:- dynamic identified_serious_incident/2.
:- dynamic implementing_act_pursuant_to/2.
:- dynamic implementing_act_pursuant_to_regulation_2019_2144_art_11_2/1.
:- dynamic importer/1.
:- dynamic importer_of/2.
:- dynamic in_conformity_with_common_specification/2.
:- dynamic in_third_country/1.
:- dynamic in_union/1.
:- dynamic incident_involves_system/2.
:- dynamic includes_accreditation_certificate/1.
:- dynamic includes_aspect/2.
:- dynamic includes_documentary_evidence/1.
:- dynamic independent_from_providers/1.
:- dynamic independent_of_conflicts/1.
:- dynamic independent_of_provider_and_operators/2.
:- dynamic indicates_contact_point/1.
:- dynamic indicates_description_of_facts_and_reasons/1.
:- dynamic indicates_provider_point_of_contact/1.
:- dynamic indicates_relevant_facts_and_infringement_reasons/1.
:- dynamic industry_stakeholder/1.
:- dynamic information_obtained_pursuant_to/2.
:- dynamic informed/2.
:- dynamic informed_consent/1.
:- dynamic informed_consent_or_law_enforcement_safeguards_met/2.
:- dynamic informed_of_serious_incident_or_non_compliance/2.
:- dynamic informed_regarding_conditions_and_duration/2.
:- dynamic informed_regarding_identification_and_contacts/2.
:- dynamic informed_regarding_nature_and_objectives/2.
:- dynamic informed_regarding_reversal_arrangements/2.
:- dynamic informed_regarding_rights_and_guarantees/2.
:- dynamic infringed_provisions/2.
:- dynamic infringement/2.
:- dynamic initial_identification_exception/1.
:- dynamic initial_provider_of_system/2.
:- dynamic input_data/1.
:- dynamic input_output_modalities/2.
:- dynamic instructions_for_use/1.
:- dynamic insufficient_information_under_art_91/1.
:- dynamic intended_deployer_authority/2.
:- dynamic intended_for_narrow_procedural_task/1.
:- dynamic intended_for_preparatory_task/1.
:- dynamic intended_for_use_by_public_authorities/1.
:- dynamic intended_in_annex_3_area/1.
:- dynamic intended_purpose/1.
:- dynamic intended_to_detect_decision_patterns/1.
:- dynamic intended_to_improve_prior_human_result/1.
:- dynamic intended_use/2.
:- dynamic intended_user/2.
:- dynamic intentionally_or_negligently/2.
:- dynamic interaction_obviously_ai/1.
:- dynamic interacts_directly_with_natural_persons/1.
:- dynamic international_organisation/1.
:- dynamic investigation_measure/1.
:- dynamic involves_notified_body/1.
:- dynamic involves_processing_of_personal_data/1.
:- dynamic isolated_protected_processing_environment/2.
:- dynamic jeopardises_public_or_national_security/1.
:- dynamic judicial_or_administrative_authority/1.
:- dynamic kept_up_to_date/1.
:- dynamic language_easily_understood_by_authorities/2.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_or_judicial_cooperation/1.
:- dynamic lawfully_collected_for_other_purposes/1.
:- dynamic leads_to_unrelated_or_disproportionate_treatment/1.
:- dynamic linked_enterprise/1.
:- dynamic logs_identifying_verifying_persons/1.
:- dynamic logs_input_data_matches/1.
:- dynamic logs_kept_art_19/2.
:- dynamic logs_period_of_use/1.
:- dynamic logs_reference_database/1.
:- dynamic made_available_on_market_by/2.
:- dynamic maintains_confidentiality_procedures/1.
:- dynamic makes_or_assists_decisions_on_persons/1.
:- dynamic makes_substantial_modification/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate_allows_addressing/2.
:- dynamic mandate_covers_tasks/2.
:- dynamic market_surveillance_authority/1.
:- dynamic market_surveillance_authority_article_74/2.
:- dynamic materially_distorts_behaviour_causing_harm/1.
:- dynamic meets_annex_13_criteria/1.
:- dynamic meets_condition_art_51_1_a/1.
:- dynamic meets_conditions_art_51/1.
:- dynamic meets_criteria_art_68_par_2/1.
:- dynamic meets_quality_criteria/1.
:- dynamic meets_requirements_of_article_31/1.
:- dynamic member_state/1.
:- dynamic member_state_failed_corrective_measures/2.
:- dynamic member_states_and_commission/1.
:- dynamic mentions_fulfils_ce_marking_requirements/1.
:- dynamic microenterprise/1.
:- dynamic military_defence_or_national_security_purpose/1.
:- dynamic misclassified_to_circumvent/2.
:- dynamic mitigates_feedback_loops/1.
:- dynamic model_and_system_developed_by_same_provider/2.
:- dynamic model_of/2.
:- dynamic model_parameters_publicly_available/1.
:- dynamic modifies_intended_purpose_to_high_risk/2.
:- dynamic national_accreditation_body/1.
:- dynamic national_authority_art_74_8/1.
:- dynamic national_competent_authority/1.
:- dynamic national_competent_authority_for/2.
:- dynamic national_competition_authority/1.
:- dynamic national_data_protection_authority/1.
:- dynamic national_measure_considered_justified/2.
:- dynamic national_measure_considered_unjustified/2.
:- dynamic national_security_competence/1.
:- dynamic natural_or_legal_person/1.
:- dynamic natural_person/1.
:- dynamic necessary_and_appropriate/1.
:- dynamic necessary_and_proportionate_for_tasks/2.
:- dynamic necessary_for_complying_requirements/2.
:- dynamic necessary_for_mandate/2.
:- dynamic no_adverse_impact_on_data_subjects_or_rights/1.
:- dynamic no_harmonised_standard_reference_published/1.
:- dynamic no_longer_poses_significant_risk/1.
:- dynamic non_compliance_cross_border/1.
:- dynamic non_compliance_prohibited_practices/1.
:- dynamic non_compliant/1.
:- dynamic non_compliant_notified_body/1.
:- dynamic non_compliant_provider/1.
:- dynamic non_objection_confirmed/1.
:- dynamic non_personal_data/1.
:- dynamic notification/2.
:- dynamic notification_details/2.
:- dynamic notified/1.
:- dynamic notified_body_involved/2.
:- dynamic notified_body_issued_certificate/2.
:- dynamic notified_by/2.
:- dynamic notified_national_measure/2.
:- dynamic notified_to_commission/1.
:- dynamic notifying_authority/1.
:- dynamic notifying_authority_of/2.
:- dynamic objection_expressed/1.
:- dynamic objection_raised_or_considered_unfounded/2.
:- dynamic objection_raised_within/3.
:- dynamic objective_law_enforcement_purpose/1.
:- dynamic objective_substantial_public_interest_area/1.
:- dynamic observes_sandbox_plan/1.
:- dynamic occurs_in/2.
:- dynamic offers_commitments/2.
:- dynamic open_source_licence/1.
:- dynamic open_source_parameters_publicly_available/1.
:- dynamic operator_for_system/2.
:- dynamic opposed_extension/1.
:- dynamic organisation_representing_providers_or_deployers/1.
:- dynamic other_non_compliance_infringement/2.
:- dynamic other_verification_insufficient_or_exhausted/2.
:- dynamic output_used_in_union/1.
:- dynamic outputs_reversible_and_disregardable/1.
:- dynamic oversight_capabilities_enabled/1.
:- dynamic oversight_measures_identified/2.
:- dynamic parameters_count/2.
:- dynamic part_of/2.
:- dynamic participates_in_coordination_and_standardisation/1.
:- dynamic participates_in_work_of/2.
:- dynamic partner_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_profiling_of_natural_persons/1.
:- dynamic permitted_use_under_law/1.
:- dynamic persists_formal_non_compliance/2.
:- dynamic personal_data/1.
:- dynamic personal_non_professional_activity/1.
:- dynamic placed_on_market/1.
:- dynamic placed_on_market/2.
:- dynamic placed_on_market_before/2.
:- dynamic placed_on_market_together_under_name/3.
:- dynamic places_on_market_in_union/2.
:- dynamic placing_on_market/1.
:- dynamic poses_equivalent_or_greater_risk/1.
:- dynamic possesses_ai_expertise/1.
:- dynamic post_market_monitoring_plan/1.
:- dynamic post_market_monitoring_plan_of/2.
:- dynamic post_market_monitoring_system/1.
:- dynamic post_market_monitoring_system_of/2.
:- dynamic predetermined_learning_change/2.
:- dynamic prescribed_compliance_period/2.
:- dynamic presents_risk_art_79_1/1.
:- dynamic presents_risk_article_79_1/1.
:- dynamic presents_risk_to_fundamental_rights/1.
:- dynamic presents_risk_to_health_or_safety/1.
:- dynamic presents_risk_to_vulnerable_groups/1.
:- dynamic presents_systemic_risk/1.
:- dynamic prevention_threat_to_life_or_terrorist_attack/1.
:- dynamic prior_consultation_conducted/2.
:- dynamic prior_to_participation/2.
:- dynamic private_entity_providing_public_services/1.
:- dynamic processing_logs_retained/1.
:- dynamic produces_legal_or_significant_effects/1.
:- dynamic product_contains_ai_system/2.
:- dynamic product_manufacturer/1.
:- dynamic product_manufacturer_of/2.
:- dynamic profiling/1.
:- dynamic prohibited_ai_practice_infringement/2.
:- dynamic prohibited_ai_practice_non_compliance/1.
:- dynamic project_summary_published_on_authority_website/1.
:- dynamic proportionate_to_technology_and_risk/2.
:- dynamic prospective_provider/1.
:- dynamic protected_from_external_access/1.
:- dynamic provided_digitally/1.
:- dynamic provider_of/2.
:- dynamic provider_of_general_purpose_ai_model/1.
:- dynamic provider_of_model/2.
:- dynamic provides_adequate_safeguards_fundamental_rights/1.
:- dynamic provides_clear_comprehensive_assessment_info/1.
:- dynamic provides_documentary_evidence/3.
:- dynamic provides_model/2.
:- dynamic public_authority/1.
:- dynamic public_authority_agency_or_body/1.
:- dynamic publicly_accessible_space/1.
:- dynamic published_in_official_journal/1.
:- dynamic published_in_oj/1.
:- dynamic publishes_text_for_public_interest_information/1.
:- dynamic purpose_law_enforcement_migration_border_asylum/1.
:- dynamic put_into_service/1.
:- dynamic put_into_service/2.
:- dynamic put_into_service_before/2.
:- dynamic put_into_service_under_name_after_product_market/3.
:- dynamic puts_into_service_in_union/2.
:- dynamic puts_name_or_trademark_on/2.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic qualified_alert_from_scientific_panel/1.
:- dynamic quality_management_system_complies_art_17/2.
:- dynamic quality_management_system_element/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_consider_high_risk/2.
:- dynamic reason_to_consider_risk/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/2.
:- dynamic reasoned_request_by/2.
:- dynamic reasons_to_doubt_competence/1.
:- dynamic reassessed_conformity/2.
:- dynamic recall_of_ai_system/1.
:- dynamic records_of_processing_justify_necessity/2.
:- dynamic reference_made_to_art_98_par_2/1.
:- dynamic registered_end_users/2.
:- dynamic registered_in_eu_database/1.
:- dynamic registration_obligations_complied_art_49/2.
:- dynamic regular_systematic_review_and_updating/1.
:- dynamic regulated_credit_institution_ssm/1.
:- dynamic relevant_changes_occurred/1.
:- dynamic relevant_documentation/2.
:- dynamic relevant_issues/2.
:- dynamic remote/1.
:- dynamic request_for_information_received/2.
:- dynamic request_from/2.
:- dynamic request_information/2.
:- dynamic request_not_accepted/1.
:- dynamic request_received/2.
:- dynamic requested_authorisation_without_undue_delay/2.
:- dynamic requested_by/2.
:- dynamic requested_documentation/2.
:- dynamic requested_extension/2.
:- dynamic requested_update/2.
:- dynamic required_data_protection_impact_assessment/1.
:- dynamic required_fee_applies/2.
:- dynamic research_testing_development_prior_to_market/1.
:- dynamic residual_risk_judged_acceptable/1.
:- dynamic resilient_against_errors_and_faults/1.
:- dynamic resilient_against_unauthorised_alteration/1.
:- dynamic revoked_delegation/1.
:- dynamic risk/1.
:- dynamic risk_management_system/1.
:- dynamic robust/1.
:- dynamic safeguards_impartiality/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of_annex_1_product/1.
:- dynamic safety_component_of_product/2.
:- dynamic sandbox_plan/1.
:- dynamic sandbox_training_testing_documented/2.
:- dynamic satisfies_article_17_requirements/1.
:- dynamic satisfies_organisational_requirements/1.
:- dynamic satisfies_requirements_art_31/1.
:- dynamic scientific_panel/1.
:- dynamic scientific_panel_expert/1.
:- dynamic scientific_research_and_development/1.
:- dynamic scope_of_act/1.
:- dynamic scrutiny_period_expired/1.
:- dynamic sectoral_group_of_notified_bodies/1.
:- dynamic security_clearance_appropriate/1.
:- dynamic sensitive_area_annex_3_registration/1.
:- dynamic sensitive_operational_data/1.
:- dynamic sensitive_security_high_risk_system/1.
:- dynamic separate_verification_confirmed/2.
:- dynamic serious_incident/1.
:- dynamic serious_incident_type/2.
:- dynamic shortcoming_in_standards_or_specifications/1.
:- dynamic similar_notified_body/2.
:- dynamic single_eu_declaration_of_conformity/1.
:- dynamic small_or_medium_enterprise/1.
:- dynamic sme/1.
:- dynamic sme_including_startup/1.
:- dynamic sole_purpose_biometric_verification/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specifically_targeted_individual/1.
:- dynamic stakeholder_with_recognised_expertise/1.
:- dynamic standard_covers/2.
:- dynamic standardisation_participant/1.
:- dynamic standards_insufficient_fundamental_rights/1.
:- dynamic standards_not_complying_with_request/1.
:- dynamic standards_not_delivered_on_time/1.
:- dynamic standing_subgroup_market_surveillance/1.
:- dynamic standing_subgroup_notifying_authorities/1.
:- dynamic storage_or_transport_jeopardises_compliance/2.
:- dynamic strictly_necessary_data/2.
:- dynamic strictly_necessary_for_bias_detection_correction/2.
:- dynamic strictly_necessary_for_objective/1.
:- dynamic subcontractor_of/2.
:- dynamic subcontracts_or_uses_subsidiary/3.
:- dynamic subject/1.
:- dynamic subject_of_proceedings/2.
:- dynamic subject_to_annex_1_legislation/1.
:- dynamic subject_to_data_governance/1.
:- dynamic subject_to_decision/2.
:- dynamic subject_to_equivalent_reporting/1.
:- dynamic subject_to_internal_governance_rules_financial_law/1.
:- dynamic subject_to_other_union_harmonisation_legislation_requiring_declaration/1.
:- dynamic subject_to_other_union_law_providing_ce_marking/2.
:- dynamic subject_to_other_union_risk_management/1.
:- dynamic subject_to_sectoral_qms/1.
:- dynamic subject_to_significant_design_change_from/2.
:- dynamic subject_to_union_financial_services_governance/1.
:- dynamic subsidiary_of/2.
:- dynamic substantial_modification/1.
:- dynamic substantial_modification_occurred/2.
:- dynamic sufficiently_substantiated_exception_arguments/2.
:- dynamic sufficiently_transparent_operation/1.
:- dynamic supervised_within_sandbox/2.
:- dynamic supplement_to_certificate/2.
:- dynamic supplies_component_for_high_risk_ai/2.
:- dynamic suspected_concrete_identifiable_risk_union_level/1.
:- dynamic suspected_non_compliant/2.
:- dynamic suspected_non_conformity/2.
:- dynamic system_covered_by_annex_1_section_a/1.
:- dynamic system_covered_by_annex_3/1.
:- dynamic system_referred_to_in_annex_3/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_model/1.
:- dynamic takes_into_account_setting_characteristics/1.
:- dynamic targeted_search_victim_or_missing/1.
:- dynamic technical_and_organisational_protection_and_deletion/1.
:- dynamic technical_documentation/1.
:- dynamic technical_documentation_of/2.
:- dynamic technical_limitations_and_privacy_measures_applied/1.
:- dynamic template_developed/2.
:- dynamic tested_against_defined_metrics/1.
:- dynamic tested_prior_to_market_or_service/1.
:- dynamic testing_concluded/2.
:- dynamic testing_data/1.
:- dynamic testing_data_set/2.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_plan_approved/3.
:- dynamic testing_plan_submitted/3.
:- dynamic testing_registered/2.
:- dynamic testing_serious_incident_occurred/2.
:- dynamic testing_suspended_or_terminated/2.
:- dynamic third_country_agreement/1.
:- dynamic third_country_transfer_safeguards_complied/1.
:- dynamic third_party_conformity_assessment_required/1.
:- dynamic trained_and_tested_on_setting_data/1.
:- dynamic trained_with_data/1.
:- dynamic training_computation/2.
:- dynamic training_data/1.
:- dynamic training_validation_testing_data_set/2.
:- dynamic unable_to_conclude_investigation_due_to_access/2.
:- dynamic under_control_of_law_enforcement/1.
:- dynamic under_responsibility/2.
:- dynamic undergoes_conformity_assessment/1.
:- dynamic undertaking/1.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_institution_body_office_agency/1.
:- dynamic untargeted_scraping_facial_images/1.
:- dynamic urgency_applies/1.
:- dynamic urgency_reason/1.
:- dynamic use_not_restricted_to_national_territory/1.
:- dynamic used_for_law_enforcement_border_justice_democracy/1.
:- dynamic uses_simplified_form_annex_4/1.
:- dynamic valid_access_request/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic verifies_consistency_with_technical_documentation/2.
:- dynamic verifies_quality_management_system/2.
:- dynamic vulnerable_groups_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_scope/1.
:- dynamic workplace_use/2.
:- dynamic written_mandate/2.

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
declared(adequate_corrective_action_taken/2, 'operator has taken adequate corrective action for the AI system', 'reconciled').
declared(annex_3_point_2_system/1, 'AI system listed in Annex III point 2 (critical infrastructure)', 'reconciled').
declared(authorised_representative_of/2, 'authorised representative for an AI system or provider', 'reconciled').
declared(biometrics_annex_3_1_a/1, 'High-risk AI system referred to in Annex III point 1(a)', 'reconciled').
declared(causal_link_established_or_likely/2, 'causal link established or reasonably likely between AI system and serious incident', 'reconciled').
declared(commission/1, 'European Commission', 'reconciled').
declared(complies_with_chapter_3_section_2/1, 'system complies with Chapter III Section 2 requirements', 'reconciled').
declared(concerns_ai_safety_component/1, 'delegated act concerns AI systems that are safety components', 'reconciled').
declared(control_of_logs/2, 'provider has control over logs of an AI system', 'reconciled').
declared(covers_union_harmonisation_legislation_annex_i/1, 'system is covered by Union harmonisation legislation listed in Annex I', 'reconciled').
declared(deemed_justified/1, 'derogation authorisation deemed justified after objection deadline', 'reconciled').
declared(formal_non_compliance/2, 'AI system exhibits formal non-compliance under Article 83(1)', 'reconciled').
declared(market_surveillance_authority_for/2, 'authority acting as market surveillance authority for an AI system or entity', 'reconciled').
declared(must_comply/2, 'actor must comply with specified obligations', 'reconciled').
declared(must_decide/2, 'The Commission must decide on the justification of the authorisation', 'reconciled').
declared(must_report/2, 'actor must report an event to an authority', 'reconciled').
declared(must_submit_annual_report/2, 'actor must submit annual report on use to recipient', 'reconciled').
declared(national_measure/2, 'Member State has taken measures regarding system presenting risk', 'reconciled').
declared(non_compliant/1, 'AI system does not comply with requirements and obligations', 'reconciled').
declared(permitted_extension/2, 'Permitted extension of certificate validity', 'reconciled').
declared(permitted_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider of general-purpose AI model', 'reconciled').
declared(permitted_testing_in_real_world_conditions/2, 'entity is permitted to conduct real-world testing of a system outside sandboxes', 'reconciled').
declared(provider_of_general_purpose_ai_model/1, 'entity is a provider of a general-purpose AI model', 'reconciled').
declared(system_covered_by_annex_1/1, 'AI system covered by Annex I', 'reconciled').
declared(technical_documentation/1, 'technical documentation of an AI system', 'reconciled').
declared(union_institution_body_office_agency/1, 'Union institution, body, office or agency', 'reconciled').
alias(takes_adequate_corrective_action/2, adequate_corrective_action_taken/2).
alias(listed_in_annex_iii_point_2/1, annex_3_point_2_system/1).
alias(authorised_representative_of_provider/2, authorised_representative_of/2).
alias(annex_3_point_1_a_system/1, biometrics_annex_3_1_a/1).
alias(causal_link_suspected_or_established/2, causal_link_established_or_likely/2).
alias(european_commission/1, commission/1).
alias(compliant_with_chapter_3_section_2/1, complies_with_chapter_3_section_2/1).
alias(concerning_ai_safety_component/1, concerns_ai_safety_component/1).
alias(logs_under_control/2, control_of_logs/2).
alias(covered_by_union_harmonisation_legislation_annex_i/1, covers_union_harmonisation_legislation_annex_i/1).
alias(deemed_justified_derogation/1, deemed_justified/1).
alias(finding_formal_non_compliance/2, formal_non_compliance/2).
alias(competent_market_surveillance_authority/2, market_surveillance_authority_for/2).
alias(must_comply_with/2, must_comply/2).
alias(must_decide_justification/2, must_decide/2).
alias(must_submit_report/2, must_report/2).
alias(must_publish_annual_report/2, must_submit_annual_report/2).
alias(national_measure_taken/2, national_measure/2).
alias(non_compliant_with_requirements/1, non_compliant/1).
alias(permitted_extension_period/2, permitted_extension/2).
alias(permitted_initiate_dialogue/2, permitted_initiate_structured_dialogue/2).
alias(authorising_testing_in_real_world_conditions/2, permitted_testing_in_real_world_conditions/2).
alias(general_purpose_ai_model_provider/1, provider_of_general_purpose_ai_model/1).
alias(covered_by_annex_1_legislation/1, system_covered_by_annex_1/1).
alias(covered_by_annex_one_legislation/1, system_covered_by_annex_1/1).
alias(required_technical_documentation/1, technical_documentation/1).
alias(union_institution_body_office_or_agency/1, union_institution_body_office_agency/1).

% ==== celex:32024R1689/oj#art_1 ====
declared(objective_internal_market_and_protection/1, 'purpose of the regulation: internal market, trustworthy AI, protection of health, safety, fundamental rights, and innovation support', 'celex:32024R1689/oj#art_1').
declared(regulation_scope_item/1, 'subject matter or scope item laid down by the regulation', 'celex:32024R1689/oj#art_1').
objective_internal_market_and_protection('celex:32024R1689/oj').
regulation_scope_item(harmonised_rules(placing_on_market_putting_into_service_and_use_of_ai_systems)).
regulation_scope_item(prohibitions(certain_ai_practices)).
regulation_scope_item(high_risk_ai_systems(requirements_and_operator_obligations)).
regulation_scope_item(harmonised_transparency_rules(certain_ai_systems)).
regulation_scope_item(harmonised_rules(placing_on_market_of_general_purpose_ai_models)).
regulation_scope_item(rules(market_monitoring_surveillance_governance_enforcement)).
regulation_scope_item(measures_supporting_innovation(focus_smes_and_startups)).
provenance(objective_internal_market_and_protection/1, 'celex:32024R1689/oj#art_1').
provenance(regulation_scope_item/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies_to/1, 'The AI Regulation applies to the specified entity or activity', 'celex:32024R1689/oj#art_2').
declared(exempt_from_regulation/1, 'Activity, system or entity is exempt from the scope of the AI Regulation', 'celex:32024R1689/oj#art_2').
declared(in_union/1, 'Located or established in the Union', 'celex:32024R1689/oj#art_2').
declared(in_third_country/1, 'Located or established in a third country', 'celex:32024R1689/oj#art_2').
declared(places_on_market_in_union/2, 'Entity places AI system or general-purpose AI model on the market in the Union', 'celex:32024R1689/oj#art_2').
declared(puts_into_service_in_union/2, 'Entity puts AI system into service in the Union', 'celex:32024R1689/oj#art_2').
declared(output_used_in_union/1, 'Output produced by the AI system is used in the Union', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'Affected person under the AI Regulation', 'celex:32024R1689/oj#art_2').
declared(military_defence_or_national_security_purpose/1, 'Used or intended exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(national_security_competence/1, 'Competence or task of a Member State concerning national security', 'celex:32024R1689/oj#art_2').
declared(public_authority/1, 'Public authority', 'celex:32024R1689/oj#art_2').
declared(international_organisation/1, 'International organisation', 'celex:32024R1689/oj#art_2').
declared(law_enforcement_or_judicial_cooperation/1, 'Use of AI system in framework of international cooperation or agreement for law enforcement or judicial cooperation', 'celex:32024R1689/oj#art_2').
declared(provides_adequate_safeguards_fundamental_rights/1, 'Third country or international organisation provides adequate safeguards for fundamental rights', 'celex:32024R1689/oj#art_2').
declared(scientific_research_and_development/1, 'Specifically developed and put into service for the sole purpose of scientific research and development', 'celex:32024R1689/oj#art_2').
declared(research_testing_development_prior_to_market/1, 'Research, testing or development activity regarding AI systems or models prior to placing on market or putting into service', 'celex:32024R1689/oj#art_2').
declared(natural_person/1, 'Natural person', 'celex:32024R1689/oj#art_2').
declared(personal_non_professional_activity/1, 'Use of AI system in the course of a purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(open_source_licence/1, 'AI system released under free and open-source licence', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_2').
declared(falls_under_article_5/1, 'AI system falls under Article 5 prohibited practices', 'celex:32024R1689/oj#art_2').
declared(falls_under_article_50/1, 'AI system falls under Article 50 transparency obligations', 'celex:32024R1689/oj#art_2').
declared(limited_scope_annex_1_system/1, 'AI system subject only to limited provisions pursuant to Article 2(2)', 'celex:32024R1689/oj#art_2').
declared(annex_1_section_b_product_system/1, 'High-risk AI system related to products covered by Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#art_2').
regulation_applies_to(P) :-
    provider(P),
    places_on_market_in_union(P, _System).
regulation_applies_to(P) :-
    provider(P),
    puts_into_service_in_union(P, _System).
regulation_applies_to(D) :-
    deployer(D),
    in_union(D).
regulation_applies_to(P) :-
    provider(P),
    in_third_country(P),
    places_on_market_in_union(P, S),
    output_used_in_union(S).
regulation_applies_to(D) :-
    deployer(D),
    in_third_country(D),
    output_used_in_union(D).
regulation_applies_to(I) :-
    importer(I).
regulation_applies_to(D) :-
    distributor(D).
regulation_applies_to(M) :-
    product_manufacturer(M),
    places_on_market_in_union(M, _System).
regulation_applies_to(M) :-
    product_manufacturer(M),
    puts_into_service_in_union(M, _System).
regulation_applies_to(R) :-
    authorised_representative(R),
    authorised_representative_of(R, P),
    provider(P),
    \+ in_union(P).
regulation_applies_to(Person) :-
    affected_person(Person),
    in_union(Person).
limited_scope_annex_1_system(S) :-
    high_risk_ai_system(S),
    annex_1_section_b_product_system(S).
exempt_from_regulation(Task) :-
    national_security_competence(Task).
exempt_from_regulation(S) :-
    ai_system(S),
    military_defence_or_national_security_purpose(S).
exempt_from_regulation(Entity) :-
    public_authority(Entity),
    in_third_country(Entity),
    law_enforcement_or_judicial_cooperation(Entity),
    provides_adequate_safeguards_fundamental_rights(Entity).
exempt_from_regulation(Entity) :-
    international_organisation(Entity),
    law_enforcement_or_judicial_cooperation(Entity),
    provides_adequate_safeguards_fundamental_rights(Entity).
exempt_from_regulation(S) :-
    ai_system(S),
    scientific_research_and_development(S).
exempt_from_regulation(M) :-
    general_purpose_ai_model(M),
    scientific_research_and_development(M).
exempt_from_regulation(Activity) :-
    research_testing_development_prior_to_market(Activity),
    \+ testing_in_real_world_conditions(Activity).
exempt_from_regulation(deployment(Deployer, _System)) :-
    deployer(Deployer),
    natural_person(Deployer),
    personal_non_professional_activity(Deployer).
exempt_from_regulation(S) :-
    ai_system(S),
    open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ falls_under_article_5(S),
    \+ falls_under_article_50(S).
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_from_regulation/1, 'celex:32024R1689/oj#art_2').
provenance(limited_scope_annex_1_system/1, 'celex:32024R1689/oj#art_2').
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
declared(provider_of/2, 'entity is a provider of an AI system', 'celex:32024R1689/oj#art_4').
declared(deployer_of/2, 'entity is a deployer of an AI system', 'celex:32024R1689/oj#art_4').
declared(must_ensure/2, 'actor must ensure an outcome or measure', 'celex:32024R1689/oj#art_4').
must_ensure(P, sufficient_ai_literacy(S)) :-
    ai_system(S),
    provider_of(P, S).
must_ensure(D, sufficient_ai_literacy(S)) :-
    ai_system(S),
    deployer_of(D, S).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').
provenance(provider_of/2, 'celex:32024R1689/oj#art_4').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_or_manipulative/1, 'AI system uses subliminal or manipulative techniques causing harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_exploitative_vulnerability/1, 'AI system exploits vulnerabilities of persons causing harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system evaluates social behavior leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment/1, 'AI system assesses criminal risk based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(prohibited_facial_recognition_database/1, 'AI system creates facial recognition database via untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference/1, 'AI system infers emotions in workplace or educational institutions', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'Biometric categorisation deducing sensitive personal traits', 'celex:32024R1689/oj#art_5').
declared(prohibited_real_time_remote_biometric_identification/1, 'Use of real-time remote biometric identification in publicly accessible space for law enforcement without exception', 'celex:32024R1689/oj#art_5').
declared(prohibited_practice/1, 'An AI practice that is prohibited under Article 5', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_identification/2, 'Permitted use of real-time remote biometric identification system for law enforcement purpose', 'celex:32024R1689/oj#art_5').
declared(deploys_subliminal_or_manipulative_technique/1, 'AI system deploys subliminal, manipulative or deceptive techniques', 'celex:32024R1689/oj#art_5').
declared(materially_distorts_behaviour_causing_harm/1, 'AI system materially distorts behavior causing significant harm', 'celex:32024R1689/oj#art_5').
declared(exploits_vulnerabilities/1, 'AI system exploits age, disability, or socio-economic vulnerability', 'celex:32024R1689/oj#art_5').
declared(evaluates_social_behaviour_or_personality/1, 'AI system evaluates or classifies natural persons based on social behaviour or traits', 'celex:32024R1689/oj#art_5').
declared(leads_to_unrelated_or_disproportionate_treatment/1, 'Social scoring leads to detrimental treatment in unrelated contexts or disproportionately', 'celex:32024R1689/oj#art_5').
declared(based_solely_on_profiling_or_personality/1, 'Risk assessment based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(supports_human_assessment_on_objective_facts/1, 'AI system supports human assessment based on objective facts linked to criminal activity', 'celex:32024R1689/oj#art_5').
declared(untargeted_scraping_facial_images/1, 'AI system creates or expands facial database through untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(emotion_inference_workplace_or_education/1, 'AI system infers emotions in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(intended_medical_or_safety_reason/1, 'AI system intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(deduces_sensitive_traits/1, 'System categorises persons to deduce race, politics, religion, sex life, etc.', 'celex:32024R1689/oj#art_5').
declared(lawfully_acquired_dataset_filtering_or_law_enforcement/1, 'Labelling of lawful biometric datasets or categorisation in law enforcement', 'celex:32024R1689/oj#art_5').
declared(strictly_necessary_objective/2, 'System use is strictly necessary for an enumerated law enforcement objective', 'celex:32024R1689/oj#art_5').
declared(targeted_search_victim_or_missing/1, 'Objective is targeted search for victims of trafficking, kidnapping, or missing persons', 'celex:32024R1689/oj#art_5').
declared(prevention_threat_to_life_or_terrorist_attack/1, 'Objective is prevention of imminent threat to life/safety or terrorist attack', 'celex:32024R1689/oj#art_5').
declared(criminal_investigation_serious_offence/1, 'Objective is localisation/identification of suspect of serious Annex II offence', 'celex:32024R1689/oj#art_5').
declared(strictly_necessary_for_objective/1, 'Use of AI system is strictly necessary for the objective', 'celex:32024R1689/oj#art_5').
declared(authorised_by_competent_authority/1, 'Use is authorised by judicial or independent administrative authority', 'celex:32024R1689/oj#art_5').
declared(urgency_applies/1, 'Duly justified situation of urgency applies', 'celex:32024R1689/oj#art_5').
declared(authorisation_requested_within_24_hours/1, 'Authorisation is requested without undue delay and at latest within 24 hours', 'celex:32024R1689/oj#art_5').
declared(fundamental_rights_impact_assessment_completed/1, 'Deployer has completed fundamental rights impact assessment', 'celex:32024R1689/oj#art_5').
declared(registered_in_eu_database/1, 'System is registered in EU database or to be registered without undue delay', 'celex:32024R1689/oj#art_5').
declared(specifically_targeted_individual/1, 'Use is only to confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(data_protection_authority/1, 'National supervisory authority for data protection', 'celex:32024R1689/oj#art_5').
declared(must_notify/2, 'Entity must notify another entity or authority of an action or event', 'celex:32024R1689/oj#art_5').
declared(must_stop/2, 'Entity must immediately cease an activity', 'celex:32024R1689/oj#art_5').
declared(must_delete/2, 'Entity must immediately discard and delete data, results, and outputs', 'celex:32024R1689/oj#art_5').
declared(must_publish/2, 'Entity must publish a report or document', 'celex:32024R1689/oj#art_5').
declared(member_state/1, 'A Member State of the European Union', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_or_manipulative(S) :-
    ai_system(S),
    deploys_subliminal_or_manipulative_technique(S),
    materially_distorts_behaviour_causing_harm(S).
prohibited_exploitative_vulnerability(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    materially_distorts_behaviour_causing_harm(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    evaluates_social_behaviour_or_personality(S),
    leads_to_unrelated_or_disproportionate_treatment(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    based_solely_on_profiling_or_personality(S),
    \+ supports_human_assessment_on_objective_facts(S).
supports_human_assessment_on_objective_facts(S) :-
    ai_system(S),
    intended_purpose(support_human_assessment_criminal_involvement).
prohibited_facial_recognition_database(S) :-
    ai_system(S),
    untargeted_scraping_facial_images(S).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    emotion_inference_workplace_or_education(S),
    \+ intended_medical_or_safety_reason(S).
intended_medical_or_safety_reason(S) :-
    ai_system(S),
    intended_purpose(medical_or_safety).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    deduces_sensitive_traits(S),
    \+ lawfully_acquired_dataset_filtering_or_law_enforcement(S).
lawfully_acquired_dataset_filtering_or_law_enforcement(S) :-
    biometric_categorisation_system(S),
    intended_purpose(filtering_or_law_enforcement).
strictly_necessary_objective(S, victim_or_missing_search) :-
    targeted_search_victim_or_missing(S).
strictly_necessary_objective(S, prevention_threat_life_or_terror) :-
    prevention_threat_to_life_or_terrorist_attack(S).
strictly_necessary_objective(S, criminal_investigation_serious_offence) :-
    criminal_investigation_serious_offence(S).
permitted_real_time_remote_biometric_identification(S, Obj) :-
    strictly_necessary_objective(S, Obj),
    strictly_necessary_for_objective(S),
    specifically_targeted_individual(S).
prohibited_real_time_remote_biometric_identification(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement(S),
    \+ permitted_real_time_remote_biometric_identification(S, _Obj).
prohibited_practice(S) :- prohibited_subliminal_or_manipulative(S).
prohibited_practice(S) :- prohibited_exploitative_vulnerability(S).
prohibited_practice(S) :- prohibited_social_scoring(S).
prohibited_practice(S) :- prohibited_criminal_risk_assessment(S).
prohibited_practice(S) :- prohibited_facial_recognition_database(S).
prohibited_practice(S) :- prohibited_emotion_inference(S).
prohibited_practice(S) :- prohibited_biometric_categorisation(S).
prohibited_practice(S) :- prohibited_real_time_remote_biometric_identification(S).
must_comply(LEA, fundamental_rights_impact_assessment(S)) :-
    law_enforcement_authority(LEA),
    deployer(LEA),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement(S).
must_comply(LEA, eu_database_registration(S)) :-
    law_enforcement_authority(LEA),
    deployer(LEA),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    law_enforcement(S),
    \+ urgency_applies(S).
must_stop(LEA, use(S)) :-
    law_enforcement_authority(LEA),
    deployer(LEA),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    authorisation_rejected(S).
must_delete(LEA, data_and_results(S)) :-
    law_enforcement_authority(LEA),
    deployer(LEA),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    authorisation_rejected(S).
declared(authorisation_rejected/1, 'Authorisation request has been rejected', 'celex:32024R1689/oj#art_5').
must_notify(LEA, notification(use(S), MSA)) :-
    law_enforcement_authority(LEA),
    deployer(LEA),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    market_surveillance_authority(MSA).
must_notify(LEA, notification(use(S), DPA)) :-
    law_enforcement_authority(LEA),
    deployer(LEA),
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(S),
    data_protection_authority(DPA).
must_notify(MS, rules(art_5_par_5, Comm)) :-
    member_state(MS),
    commission(Comm).
must_submit_annual_report(Auth, Comm) :-
    market_surveillance_authority(Auth),
    commission(Comm).
must_submit_annual_report(Auth, Comm) :-
    data_protection_authority(Auth),
    commission(Comm).
must_publish(Comm, annual_report(real_time_remote_biometric_identification)) :-
    commission(Comm).
provenance(prohibited_subliminal_or_manipulative/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitative_vulnerability/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_practice/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/2, 'celex:32024R1689/oj#art_5').
provenance(strictly_necessary_objective/2, 'celex:32024R1689/oj#art_5').
provenance(supports_human_assessment_on_objective_facts/1, 'celex:32024R1689/oj#art_5').
provenance(intended_medical_or_safety_reason/1, 'celex:32024R1689/oj#art_5').
provenance(lawfully_acquired_dataset_filtering_or_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(must_comply/2, 'celex:32024R1689/oj#art_5').
provenance(must_stop/2, 'celex:32024R1689/oj#art_5').
provenance(must_delete/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish/2, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(system_referred_to_in_annex_3/1, 'AI system referred to in Annex III', 'celex:32024R1689/oj#art_6').
declared(third_party_conformity_assessment_required/1, 'product or AI system required to undergo third-party conformity assessment under Annex I legislation', 'celex:32024R1689/oj#art_6').
declared(safety_component_of_annex_1_product/1, 'AI system intended to be used as a safety component of an Annex I product', 'celex:32024R1689/oj#art_6').
declared(exempt_annex_3_high_risk/1, 'Annex III AI system exempt from high-risk classification because it does not pose significant risk of harm', 'celex:32024R1689/oj#art_6').
declared(intended_for_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(intended_to_improve_prior_human_result/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(intended_to_detect_decision_patterns/1, 'AI system intended to detect patterns or deviations without replacing human assessment without review', 'celex:32024R1689/oj#art_6').
declared(intended_for_preparatory_task/1, 'AI system intended to perform a preparatory task for an assessment in Annex III use cases', 'celex:32024R1689/oj#art_6').
declared(performs_profiling_of_natural_persons/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(assessment_documented/2, 'provider has documented assessment of non-high-risk status before placing on market/putting into service', 'celex:32024R1689/oj#art_6').
declared(requested_documentation/2, 'national competent authority requested documentation of the assessment from provider', 'celex:32024R1689/oj#art_6').
declared(must_document_assessment/2, 'provider must document assessment before placing on market or putting into service', 'celex:32024R1689/oj#art_6').
declared(must_provide_documentation/2, 'provider must provide documentation of assessment to authority', 'celex:32024R1689/oj#art_6').
declared(must_register/2, 'provider must register the AI system pursuant to Article 49(2)', 'celex:32024R1689/oj#art_6').
declared(must_provide_guidelines/2, 'Commission must provide practical implementation guidelines', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_annex_1_product(S),
    third_party_conformity_assessment_required(S).
high_risk_ai_system(S) :-
    ai_system(S),
    system_covered_by_annex_1(S),
    third_party_conformity_assessment_required(S).
high_risk_ai_system(S) :-
    ai_system(S),
    system_referred_to_in_annex_3(S),
    performs_profiling_of_natural_persons(S).
high_risk_ai_system(S) :-
    ai_system(S),
    system_referred_to_in_annex_3(S),
    \+ performs_profiling_of_natural_persons(S),
    \+ exempt_annex_3_high_risk(S).
exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_for_narrow_procedural_task(S).
exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_to_improve_prior_human_result(S).
exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_to_detect_decision_patterns(S).
exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_for_preparatory_task(S).
must_document_assessment(P, S) :-
    provider(P),
    system_referred_to_in_annex_3(S),
    exempt_annex_3_high_risk(S),
    \+ performs_profiling_of_natural_persons(S).
must_register(P, registration(S, article_49_2)) :-
    provider(P),
    system_referred_to_in_annex_3(S),
    exempt_annex_3_high_risk(S),
    \+ performs_profiling_of_natural_persons(S).
must_provide_documentation(P, documentation(S, NCA)) :-
    provider(P),
    national_competent_authority(NCA),
    system_referred_to_in_annex_3(S),
    exempt_annex_3_high_risk(S),
    \+ performs_profiling_of_natural_persons(S),
    requested_documentation(NCA, assessment(P, S)).
must_provide_guidelines(C, guidelines(practical_implementation_art_6, deadline(date(2026, 2, 2)))) :-
    commission(C).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_annex_1_product/1, 'celex:32024R1689/oj#art_6').
provenance(third_party_conformity_assessment_required/1, 'celex:32024R1689/oj#art_6').
provenance(system_referred_to_in_annex_3/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling_of_natural_persons/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_annex_3_high_risk/1, 'celex:32024R1689/oj#art_6').
provenance(intended_for_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_improve_prior_human_result/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_detect_decision_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(intended_for_preparatory_task/1, 'celex:32024R1689/oj#art_6').
provenance(assessment_documented/2, 'celex:32024R1689/oj#art_6').
provenance(requested_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_guidelines/2, 'celex:32024R1689/oj#art_6').
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
declared(permitted_adopt_delegated_act/2, 'Commission is empowered to adopt delegated act to amend Annex III', 'celex:32024R1689/oj#art_7').
declared(intended_in_annex_3_area/1, 'AI system is intended to be used in any of the areas listed in Annex III', 'celex:32024R1689/oj#art_7').
declared(poses_equivalent_or_greater_risk/1, 'AI system poses risk equivalent to or greater than high-risk AI systems in Annex III', 'celex:32024R1689/oj#art_7').
declared(no_longer_poses_significant_risk/1, 'high-risk AI system no longer poses any significant risk to fundamental rights, health, or safety', 'celex:32024R1689/oj#art_7').
declared(deletion_preserves_overall_protection/1, 'deletion of AI system does not decrease overall level of protection under Union law', 'celex:32024R1689/oj#art_7').
permitted_adopt_delegated_act(Commission, add_or_modify_annex_3(System)) :-
    commission(Commission),
    ai_system(System),
    intended_in_annex_3_area(System),
    poses_equivalent_or_greater_risk(System).
permitted_adopt_delegated_act(Commission, remove_from_annex_3(System)) :-
    commission(Commission),
    ai_system(System),
    no_longer_poses_significant_risk(System),
    deletion_preserves_overall_protection(System).
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/2, 'product contains an AI system', 'celex:32024R1689/oj#art_8').
declared(provider_of/2, 'entity is the provider of an AI system or product', 'celex:32024R1689/oj#art_8').
declared(subject_to_annex_1_legislation/1, 'product is subject to Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_8').
declared(permitted_integration_of_documentation_and_procedures/2, 'provider is permitted to integrate testing, reporting, information and documentation into existing Union harmonisation procedures', 'celex:32024R1689/oj#art_8').
required_compliance(System, chapter_3_section_2) :-
    high_risk_ai_system(System).
must_comply(Provider, applicable_union_harmonisation_legislation(Product)) :-
    product_contains_ai_system(Product, System),
    ai_system(System),
    subject_to_annex_1_legislation(Product),
    provider_of(Provider, Product).
permitted_integration_of_documentation_and_procedures(Provider, Product) :-
    product_contains_ai_system(Product, System),
    high_risk_ai_system(System),
    subject_to_annex_1_legislation(Product),
    provider_of(Provider, Product).
provenance(required_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_documentation_and_procedures/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_9').
declared(risk_management_system/1, 'risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(required_risk_management_system/1, 'risk management system required for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(continuous_iterative_process/1, 'continuous iterative process throughout lifecycle', 'celex:32024R1689/oj#art_9').
declared(regular_systematic_review_and_updating/1, 'regular systematic review and updating of risk management system', 'celex:32024R1689/oj#art_9').
declared(comprises_risk_management_steps/1, 'comprises risk management steps pursuant to Article 9(2)', 'celex:32024R1689/oj#art_9').
declared(compliant_risk_management_system/1, 'risk management system compliant with Article 9 requirements', 'celex:32024R1689/oj#art_9').
declared(residual_risk_judged_acceptable/1, 'residual risks of high-risk AI system are judged acceptable', 'celex:32024R1689/oj#art_9').
declared(tested_for_risk_management/1, 'high-risk AI system tested to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(tested_prior_to_market_or_service/1, 'tested prior to placing on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(tested_against_defined_metrics/1, 'testing carried out against prior defined metrics and thresholds', 'celex:32024R1689/oj#art_9').
declared(permitted_testing_in_real_world_conditions/1, 'testing procedures may include real-world testing', 'celex:32024R1689/oj#art_9').
declared(considers_impact_on_vulnerable_groups/2, 'provider considers adverse impact on persons under 18 and vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(permitted_combined_risk_management/2, 'provider permitted to combine risk management with other Union law procedures', 'celex:32024R1689/oj#art_9').
declared(subject_to_other_union_risk_management/1, 'high-risk AI system subject to internal risk management under other Union law', 'celex:32024R1689/oj#art_9').
required_risk_management_system(S) :-
    high_risk_ai_system(S).
compliant_risk_management_system(RMS) :-
    risk_management_system(RMS),
    continuous_iterative_process(RMS),
    regular_systematic_review_and_updating(RMS),
    comprises_risk_management_steps(RMS).
tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    tested_prior_to_market_or_service(S),
    tested_against_defined_metrics(S).
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).
permitted_combined_risk_management(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_other_union_risk_management(S).
must_comply(P, risk_management_system(S)) :-
    provider(P),
    high_risk_ai_system(S),
    considers_impact_on_vulnerable_groups(P, S),
    residual_risk_judged_acceptable(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(regular_systematic_review_and_updating/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_management_steps/1, 'celex:32024R1689/oj#art_9').
provenance(compliant_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_judged_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(tested_prior_to_market_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(tested_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(considers_impact_on_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combined_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(subject_to_other_union_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(must_comply/2, 'celex:32024R1689/oj#art_9').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this Regulation', 'celex:32024R1689/oj#art_10').
declared(trained_with_data/1, 'AI system developed using techniques involving the training of AI models with data', 'celex:32024R1689/oj#art_10').
declared(training_validation_testing_data_set/2, 'Data set used as training, validation, or testing data set for an AI system', 'celex:32024R1689/oj#art_10').
declared(testing_data_set/2, 'Data set used as testing data set for an AI system', 'celex:32024R1689/oj#art_10').
declared(subject_to_data_governance/1, 'Data set is subject to appropriate data governance and management practices', 'celex:32024R1689/oj#art_10').
declared(meets_quality_criteria/1, 'Data set meets the relevance, representativeness, error-free, and statistical criteria', 'celex:32024R1689/oj#art_10').
declared(takes_into_account_setting_characteristics/1, 'Data set takes into account specific geographical, contextual, behavioural or functional setting characteristics', 'celex:32024R1689/oj#art_10').
declared(permitted_process_special_categories_data/2, 'Provider is permitted to process special categories of personal data for bias detection/correction', 'celex:32024R1689/oj#art_10').
declared(strictly_necessary_for_bias_detection_correction/2, 'Processing is strictly necessary to detect and correct biases in accordance with Article 10(2)', 'celex:32024R1689/oj#art_10').
declared(effective_with_other_data/2, 'Bias detection and correction can be effectively fulfilled by processing other data including synthetic or anonymised data', 'celex:32024R1689/oj#art_10').
declared(technical_limitations_and_privacy_measures_applied/1, 'Technical limitations on re-use and state-of-the-art security/privacy measures are applied', 'celex:32024R1689/oj#art_10').
declared(access_controlled_and_confidential/1, 'Measures ensure only authorised persons with confidentiality obligations have access', 'celex:32024R1689/oj#art_10').
declared(protected_from_external_access/1, 'Data is not transmitted, transferred or otherwise accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(deleted_promptly_after_correction_or_retention/1, 'Data is deleted once bias is corrected or retention period ends, whichever comes first', 'celex:32024R1689/oj#art_10').
declared(records_of_processing_justify_necessity/2, 'Records of processing activities state reasons for necessity and why other data was insufficient', 'celex:32024R1689/oj#art_10').
declared(required_data_governance/2, 'AI system requires data governance compliance for a given data set', 'celex:32024R1689/oj#art_10').
required_data_governance(System, DataSet) :-
    high_risk_ai_system(System),
    trained_with_data(System),
    training_validation_testing_data_set(System, DataSet).
required_data_governance(System, DataSet) :-
    high_risk_ai_system(System),
    \+ trained_with_data(System),
    testing_data_set(System, DataSet).
permitted_process_special_categories_data(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    strictly_necessary_for_bias_detection_correction(Provider, System),
    \+ effective_with_other_data(Provider, System),
    technical_limitations_and_privacy_measures_applied(System),
    access_controlled_and_confidential(System),
    protected_from_external_access(System),
    deleted_promptly_after_correction_or_retention(System),
    records_of_processing_justify_necessity(Provider, System).
provenance(required_data_governance/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_process_special_categories_data/2, 'celex:32024R1689/oj#art_10').
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
declared(system_covered_by_annex_1_section_a/1, 'AI system related to a product covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_11').
declared(drawn_up_before_market_or_service/1, 'technical documentation drawn up before placing on market or putting into service', 'celex:32024R1689/oj#art_11').
declared(kept_up_to_date/1, 'technical documentation is kept up to date', 'celex:32024R1689/oj#art_11').
declared(demonstrates_compliance_with_chapter_3_section_2/1, 'technical documentation demonstrates compliance with Chapter III Section 2', 'celex:32024R1689/oj#art_11').
declared(provides_clear_comprehensive_assessment_info/1, 'technical documentation provides clear and comprehensive info for compliance assessment', 'celex:32024R1689/oj#art_11').
declared(contains_elements_annex_4/1, 'technical documentation contains minimum elements set out in Annex IV', 'celex:32024R1689/oj#art_11').
declared(uses_simplified_form_annex_4/1, 'SME uses simplified technical documentation form established by Commission', 'celex:32024R1689/oj#art_11').
declared(single_technical_documentation/1, 'single set of technical documentation drawn up containing Annex IV and Annex I Section A requirements', 'celex:32024R1689/oj#art_11').
declared(required_technical_documentation_compliant/1, 'technical documentation meets requirements of Article 11', 'celex:32024R1689/oj#art_11').
declared(permitted_simplified_documentation/2, 'SME is permitted to provide technical documentation in a simplified form', 'celex:32024R1689/oj#art_11').
declared(must_accept/2, 'actor must accept a specific form or document', 'celex:32024R1689/oj#art_11').
declared(empowered_to_adopt_delegated_acts/2, 'actor is empowered to adopt delegated acts on a subject', 'celex:32024R1689/oj#art_11').
required_technical_documentation_compliant(Doc) :-
    technical_documentation(Doc),
    drawn_up_before_market_or_service(Doc),
    kept_up_to_date(Doc),
    demonstrates_compliance_with_chapter_3_section_2(Doc),
    provides_clear_comprehensive_assessment_info(Doc),
    contains_elements_annex_4(Doc).
permitted_simplified_documentation(Actor, Doc) :-
    sme(Actor),
    technical_documentation(Doc),
    uses_simplified_form_annex_4(Doc).
must_accept(Body, form(simplified_technical_documentation, Doc)) :-
    notified_body(Body),
    technical_documentation(Doc),
    uses_simplified_form_annex_4(Doc).
single_technical_documentation(Doc) :-
    technical_documentation(Doc),
    high_risk_ai_system(S),
    system_covered_by_annex_1_section_a(S),
    contains_elements_annex_4(Doc),
    covers_union_harmonisation_legislation_annex_i(Doc).
empowered_to_adopt_delegated_acts(Commission, amend_annex_4) :-
    commission(Commission).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(system_covered_by_annex_1_section_a/1, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_market_or_service/1, 'celex:32024R1689/oj#art_11').
provenance(kept_up_to_date/1, 'celex:32024R1689/oj#art_11').
provenance(demonstrates_compliance_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_11').
provenance(provides_clear_comprehensive_assessment_info/1, 'celex:32024R1689/oj#art_11').
provenance(contains_elements_annex_4/1, 'celex:32024R1689/oj#art_11').
provenance(uses_simplified_form_annex_4/1, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_compliant/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept/2, 'celex:32024R1689/oj#art_11').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_12').
declared(required_logging_capabilities/1, 'AI system is required to have logging capabilities satisfying Article 12', 'celex:32024R1689/oj#art_12').
declared(automatic_recording_of_events/1, 'AI system technically allows automatic recording of events over its lifetime', 'celex:32024R1689/oj#art_12').
declared(enables_traceability_logging/1, 'Logging capabilities enable recording of events relevant for Article 12(2) objectives', 'celex:32024R1689/oj#art_12').
declared(logs_period_of_use/1, 'Logging capabilities provide recording of the start and end date and time of each use', 'celex:32024R1689/oj#art_12').
declared(logs_reference_database/1, 'Logging capabilities record the reference database checked against input data', 'celex:32024R1689/oj#art_12').
declared(logs_input_data_matches/1, 'Logging capabilities record input data for which search led to a match', 'celex:32024R1689/oj#art_12').
declared(logs_identifying_verifying_persons/1, 'Logging capabilities record natural persons involved in verification of results', 'celex:32024R1689/oj#art_12').
declared(complies_with_biometric_logging_minimum/1, 'High-risk AI system satisfies minimum logging requirements of Article 12(3)', 'celex:32024R1689/oj#art_12').
required_logging_capabilities(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S),
    enables_traceability_logging(S).
complies_with_biometric_logging_minimum(S) :-
    biometrics_annex_3_1_a(S),
    logs_period_of_use(S),
    logs_reference_database(S),
    logs_input_data_matches(S),
    logs_identifying_verifying_persons(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(required_logging_capabilities/1, 'celex:32024R1689/oj#art_12').
provenance(automatic_recording_of_events/1, 'celex:32024R1689/oj#art_12').
provenance(enables_traceability_logging/1, 'celex:32024R1689/oj#art_12').
provenance(logs_period_of_use/1, 'celex:32024R1689/oj#art_12').
provenance(logs_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(logs_input_data_matches/1, 'celex:32024R1689/oj#art_12').
provenance(logs_identifying_verifying_persons/1, 'celex:32024R1689/oj#art_12').
provenance(complies_with_biometric_logging_minimum/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_13').
declared(sufficiently_transparent_operation/1, 'operation of AI system is sufficiently transparent to enable deployers to interpret and use output appropriately', 'celex:32024R1689/oj#art_13').
declared(accompanied_by_instructions_for_use/1, 'AI system is accompanied by instructions for use meeting statutory quality standards', 'celex:32024R1689/oj#art_13').
declared(contains_provider_identity/1, 'instructions for use contain provider identity and contact details', 'celex:32024R1689/oj#art_13').
declared(contains_performance_characteristics/1, 'instructions for use contain characteristics, capabilities and performance limitations', 'celex:32024R1689/oj#art_13').
declared(contains_predetermined_changes/1, 'instructions for use contain pre-determined changes and performance changes', 'celex:32024R1689/oj#art_13').
declared(contains_human_oversight_measures/1, 'instructions for use contain human oversight measures under Article 14', 'celex:32024R1689/oj#art_13').
declared(contains_resource_and_maintenance_specifications/1, 'instructions for use contain computational resources, lifetime, and maintenance measures', 'celex:32024R1689/oj#art_13').
declared(contains_logging_mechanisms_description/1, 'instructions for use contain description of logging mechanisms under Article 12', 'celex:32024R1689/oj#art_13').
declared(complies_with_article_13/1, 'high-risk AI system complies with transparency and information provision requirements of Article 13', 'celex:32024R1689/oj#art_13').
required_transparency(S) :-
    high_risk_ai_system(S),
    sufficiently_transparent_operation(S).
required_instructions_for_use(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S),
    instructions_for_use(S),
    contains_provider_identity(S),
    contains_performance_characteristics(S),
    contains_predetermined_changes(S),
    contains_human_oversight_measures(S),
    contains_resource_and_maintenance_specifications(S),
    contains_logging_mechanisms_description(S).
complies_with_article_13(S) :-
    high_risk_ai_system(S),
    required_transparency(S),
    required_instructions_for_use(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent_operation/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(contains_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(contains_performance_characteristics/1, 'celex:32024R1689/oj#art_13').
provenance(contains_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(contains_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(contains_resource_and_maintenance_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(contains_logging_mechanisms_description/1, 'celex:32024R1689/oj#art_13').
provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(required_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(complies_with_article_13/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_14').
declared(required_human_oversight/1, 'AI system is required to have effective human oversight design and measures', 'celex:32024R1689/oj#art_14').
declared(allows_effective_human_oversight/1, 'AI system is designed to be effectively overseen by natural persons during use', 'celex:32024R1689/oj#art_14').
declared(oversight_measures_identified/2, 'provider has identified human oversight measures for the AI system', 'celex:32024R1689/oj#art_14').
declared(oversight_capabilities_enabled/1, 'deployer oversight personnel are enabled with required understanding, monitoring and intervention capabilities', 'celex:32024R1689/oj#art_14').
declared(required_two_person_verification/1, 'deployment decision requires separate verification and confirmation by at least two natural persons', 'celex:32024R1689/oj#art_14').
declared(exempt_two_person_verification/1, 'system is exempt from two-person verification requirement under Union or national law', 'celex:32024R1689/oj#art_14').
declared(permitted_deployer_action_on_identification/2, 'deployer is permitted to take action or decision on biometric identification output', 'celex:32024R1689/oj#art_14').
declared(separate_verification_confirmed/2, 'identification has been separately verified and confirmed by at least two competent persons', 'celex:32024R1689/oj#art_14').
declared(purpose_law_enforcement_migration_border_asylum/1, 'system is used for law enforcement, migration, border control or asylum', 'celex:32024R1689/oj#art_14').
declared(considered_disproportionate_by_law/1, 'Union or national law considers two-person verification requirement disproportionate for this system', 'celex:32024R1689/oj#art_14').
required_human_oversight(S) :-
    high_risk_ai_system(S).
must_comply(P, human_oversight_design(S)) :-
    provider(P),
    high_risk_ai_system(S),
    allows_effective_human_oversight(S),
    oversight_measures_identified(P, S),
    oversight_capabilities_enabled(S).
required_two_person_verification(S) :-
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    \+ exempt_two_person_verification(S).
exempt_two_person_verification(S) :-
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    purpose_law_enforcement_migration_border_asylum(S),
    considered_disproportionate_by_law(S).
permitted_deployer_action_on_identification(D, identification(S, Person)) :-
    deployer(D),
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    separate_verification_confirmed(S, Person).
permitted_deployer_action_on_identification(D, identification(S, _Person)) :-
    deployer(D),
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    exempt_two_person_verification(S).
permitted_deployer_action_on_identification(D, identification(S, _Person)) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ biometrics_annex_3_1_a(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_14').
provenance(required_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(allows_effective_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_identified/2, 'celex:32024R1689/oj#art_14').
provenance(oversight_capabilities_enabled/1, 'celex:32024R1689/oj#art_14').
provenance(required_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(permitted_deployer_action_on_identification/2, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_confirmed/2, 'celex:32024R1689/oj#art_14').
provenance(purpose_law_enforcement_migration_border_asylum/1, 'celex:32024R1689/oj#art_14').
provenance(considered_disproportionate_by_law/1, 'celex:32024R1689/oj#art_14').
provenance(must_comply/2, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_15').
declared(accurate/1, 'achieves appropriate level of accuracy throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(robust/1, 'achieves appropriate level of robustness throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(cybersecurity_resilient/1, 'achieves appropriate level of cybersecurity throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(declared_in_instructions_for_use/2, 'information declared in instructions for use of system', 'celex:32024R1689/oj#art_15').
declared(resilient_against_errors_and_faults/1, 'system is as resilient as possible regarding errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(continuous_learning/1, 'system continues to learn after placing on market or putting into service', 'celex:32024R1689/oj#art_15').
declared(mitigates_feedback_loops/1, 'system eliminates or reduces feedback loop risks and mitigates them', 'celex:32024R1689/oj#art_15').
declared(resilient_against_unauthorised_alteration/1, 'system is resilient against unauthorised third party attempts to alter use, outputs or performance', 'celex:32024R1689/oj#art_15').
declared(appropriate_cybersecurity_measures/1, 'system employs technical cybersecurity solutions appropriate to circumstances and risks', 'celex:32024R1689/oj#art_15').
declared(must_encourage/2, 'actor must encourage an initiative or development', 'celex:32024R1689/oj#art_15').
declared(required_accuracy_and_robustness/1, 'system meets accuracy, robustness and cybersecurity design requirements', 'celex:32024R1689/oj#art_15').
required_accuracy_and_robustness(S) :-
    high_risk_ai_system(S),
    accurate(S),
    robust(S),
    cybersecurity_resilient(S).
must_encourage(Actor, development(benchmarks_and_measurement_methodologies)) :-
    commission(Actor).
required_accuracy_declaration(S) :-
    high_risk_ai_system(S),
    declared_in_instructions_for_use(S, accuracy_levels_and_metrics).
required_robustness_measures(S) :-
    high_risk_ai_system(S),
    resilient_against_errors_and_faults(S).
required_robustness_measures(S) :-
    high_risk_ai_system(S),
    continuous_learning(S),
    mitigates_feedback_loops(S).
required_cybersecurity_measures(S) :-
    high_risk_ai_system(S),
    resilient_against_unauthorised_alteration(S),
    appropriate_cybersecurity_measures(S).
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_15').
provenance(accurate/1, 'celex:32024R1689/oj#art_15').
provenance(robust/1, 'celex:32024R1689/oj#art_15').
provenance(cybersecurity_resilient/1, 'celex:32024R1689/oj#art_15').
provenance(declared_in_instructions_for_use/2, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_errors_and_faults/1, 'celex:32024R1689/oj#art_15').
provenance(continuous_learning/1, 'celex:32024R1689/oj#art_15').
provenance(mitigates_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy_and_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_accuracy_declaration/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness_measures/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_16').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_16').
declared(contact_info_indicated/2, 'provider contact information is indicated on the system, packaging, or documentation', 'celex:32024R1689/oj#art_16').
declared(quality_management_system_complies_art_17/2, 'provider has a quality management system complying with Article 17', 'celex:32024R1689/oj#art_16').
declared(documentation_kept_art_18/2, 'provider keeps the documentation referred to in Article 18', 'celex:32024R1689/oj#art_16').
declared(logs_kept_art_19/2, 'provider keeps the automatically generated logs under their control as referred to in Article 19', 'celex:32024R1689/oj#art_16').
declared(conformity_assessment_undergone_art_43/1, 'AI system has undergone the relevant conformity assessment procedure referred to in Article 43', 'celex:32024R1689/oj#art_16').
declared(eu_declaration_of_conformity_drawn_art_47/2, 'provider draws up an EU declaration of conformity in accordance with Article 47', 'celex:32024R1689/oj#art_16').
declared(ce_marking_affixed_art_48/2, 'provider has affixed the CE marking to the system, packaging, or documentation in accordance with Article 48', 'celex:32024R1689/oj#art_16').
declared(registration_obligations_complied_art_49/2, 'provider complies with registration obligations referred to in Article 49(1)', 'celex:32024R1689/oj#art_16').
declared(corrective_actions_and_information_art_20/2, 'provider takes corrective actions and provides information as required in Article 20', 'celex:32024R1689/oj#art_16').
declared(demonstrates_conformity_upon_request/3, 'provider demonstrates conformity of high-risk AI system to national competent authority upon reasoned request', 'celex:32024R1689/oj#art_16').
declared(accessibility_requirements_complied/1, 'AI system complies with applicable accessibility requirements under Directives 2016/2102 and 2019/882', 'celex:32024R1689/oj#art_16').
must_comply(Provider, compliance_chapter_3_section_2(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, indicate_contact_info(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, quality_management_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, keep_documentation(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, keep_logs(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    control_of_logs(Provider, System).
must_comply(Provider, conformity_assessment_procedure(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, affix_ce_marking(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, registration_obligations(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, corrective_actions_and_information(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_comply(Provider, demonstrate_conformity(System, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_comply(Provider, accessibility_requirements(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
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
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_17 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_17').
declared(provider_of/2, 'entity is provider of a specific AI system', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'entity is a financial institution under Union law', 'celex:32024R1689/oj#art_17').
declared(subject_to_internal_governance_rules_financial_law/1, 'entity is subject to internal governance rules under Union financial services law', 'celex:32024R1689/oj#art_17').
declared(complies_with_financial_internal_governance/1, 'entity complies with rules on internal governance under Union financial services law', 'celex:32024R1689/oj#art_17').
declared(subject_to_sectoral_qms/1, 'entity is subject to quality management system obligations under sectoral Union law', 'celex:32024R1689/oj#art_17').
declared(permitted_integrate_qms/2, 'provider is permitted to integrate Article 17(1) aspects into sectoral QMS', 'celex:32024R1689/oj#art_17').
declared(quality_management_system/1, 'system fulfilling quality management system requirements', 'celex:32024R1689/oj#art_17').
declared(includes_aspect/2, 'quality management system includes specified aspect', 'celex:32024R1689/oj#art_17').
declared(documented_systematic_and_orderly/1, 'system is documented in systematic and orderly written form', 'celex:32024R1689/oj#art_17').
declared(deemed_fulfilled_quality_management_system/2, 'provider deemed to fulfill QMS obligations except points (g), (h), and (i)', 'celex:32024R1689/oj#art_17').
must_comply(Provider, put_in_place(quality_management_system(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System).
quality_management_system(QMS) :-
    documented_systematic_and_orderly(QMS),
    includes_aspect(QMS, regulatory_compliance_strategy),
    includes_aspect(QMS, design_techniques_and_procedures),
    includes_aspect(QMS, development_and_quality_assurance),
    includes_aspect(QMS, test_and_validation_procedures),
    includes_aspect(QMS, technical_specifications_compliance),
    includes_aspect(QMS, data_management_systems),
    includes_aspect(QMS, risk_management_system),
    includes_aspect(QMS, post_market_monitoring_system),
    includes_aspect(QMS, serious_incident_reporting_procedures),
    includes_aspect(QMS, authority_communication_handling),
    includes_aspect(QMS, record_keeping_systems),
    includes_aspect(QMS, resource_management),
    includes_aspect(QMS, accountability_framework).
permitted_integrate_qms(Provider, sectoral_quality_management_system) :-
    provider(Provider),
    subject_to_sectoral_qms(Provider).
deemed_fulfilled_quality_management_system(Provider, partial_qms_compliance(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    financial_institution(Provider),
    subject_to_internal_governance_rules_financial_law(Provider),
    complies_with_financial_internal_governance(Provider).
must_comply(Provider, put_in_place(aspects_g_h_i(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    financial_institution(Provider),
    subject_to_internal_governance_rules_financial_law(Provider).
provenance(must_comply/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(permitted_integrate_qms/2, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_quality_management_system/2, 'celex:32024R1689/oj#art_17').
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
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_18').
declared(placed_on_market/1, 'AI system has been placed on the market', 'celex:32024R1689/oj#art_18').
declared(put_into_service/1, 'AI system has been put into service', 'celex:32024R1689/oj#art_18').
declared(documentation_item_article_18/2, 'documentation item required to be kept under Article 18(1) for an AI system', 'celex:32024R1689/oj#art_18').
declared(financial_institution/1, 'entity is a financial institution', 'celex:32024R1689/oj#art_18').
declared(subject_to_union_financial_services_governance/1, 'entity is subject to governance arrangements under Union financial services law', 'celex:32024R1689/oj#art_18').
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_18').
declared(bankrupt_or_ceased_activity/1, 'entity has gone bankrupt or ceased activity prior to the end of the retention period', 'celex:32024R1689/oj#art_18').
declared(established_in/2, 'entity is established in a Member State', 'celex:32024R1689/oj#art_18').
documentation_item_article_18(S, technical_documentation(art_11)) :-
    high_risk_ai_system(S).
documentation_item_article_18(S, quality_management_system_documentation(art_17)) :-
    high_risk_ai_system(S).
documentation_item_article_18(S, approved_changes(notified_body)) :-
    high_risk_ai_system(S).
documentation_item_article_18(S, decisions_and_documents(notified_body)) :-
    high_risk_ai_system(S).
documentation_item_article_18(S, eu_declaration_of_conformity(art_47)) :-
    high_risk_ai_system(S).
must_keep_at_disposal(Provider, documentation(Doc, S, national_competent_authorities, period(years(10), after(Event)))) :-
    provider_of(Provider, S),
    high_risk_ai_system(S),
    documentation_item_article_18(S, Doc),
    ( placed_on_market(S), Event = market_placement ;
      put_into_service(S), Event = putting_into_service ).
must_determine_conditions(MS, retention_of_documentation(S, Provider, national_competent_authorities, period(years(10)))) :-
    member_state(MS),
    provider_of(Provider, S),
    high_risk_ai_system(S),
    ( established_in(Provider, MS), bankrupt_or_ceased_activity(Provider) ;
      authorised_representative_of(Rep, Provider), established_in(Rep, MS), bankrupt_or_ceased_activity(Rep) ).
must_maintain_documentation(Provider, technical_documentation(S, as_part_of_financial_services_law)) :-
    provider_of(Provider, S),
    high_risk_ai_system(S),
    financial_institution(Provider),
    subject_to_union_financial_services_governance(Provider).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_18').
provenance(provider_of/2, 'celex:32024R1689/oj#art_18').
provenance(placed_on_market/1, 'celex:32024R1689/oj#art_18').
provenance(put_into_service/1, 'celex:32024R1689/oj#art_18').
provenance(documentation_item_article_18/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_18').
provenance(subject_to_union_financial_services_governance/1, 'celex:32024R1689/oj#art_18').
provenance(member_state/1, 'celex:32024R1689/oj#art_18').
provenance(bankrupt_or_ceased_activity/1, 'celex:32024R1689/oj#art_18').
provenance(established_in/2, 'celex:32024R1689/oj#art_18').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain_documentation/2, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_19').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_19').
declared(subject_to_union_financial_services_governance/1, 'provider is a financial institution subject to governance requirements under Union financial services law', 'celex:32024R1689/oj#art_19').
declared(must_keep/2, 'actor must keep specified records or logs', 'celex:32024R1689/oj#art_19').
declared(must_maintain/2, 'actor must maintain specified records or logs', 'celex:32024R1689/oj#art_19').
must_keep(Provider, logs(System, period(months(6)))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    control_of_logs(Provider, System).
must_maintain(Provider, logs(System, documentation(union_financial_services_law))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    subject_to_union_financial_services_governance(Provider).
provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_20').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_20').
declared(placed_on_market/2, 'provider placed AI system on the market', 'celex:32024R1689/oj#art_20').
declared(put_into_service/2, 'provider put AI system into service', 'celex:32024R1689/oj#art_20').
declared(considers_or_reason_to_consider_non_compliant/2, 'provider considers or has reason to consider system is non-compliant', 'celex:32024R1689/oj#art_20').
declared(presents_risk_art_79_1/1, 'AI system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_20').
declared(aware_of_risk/2, 'provider becomes aware of risk presented by AI system', 'celex:32024R1689/oj#art_20').
declared(distributor_of/2, 'entity is distributor of the AI system', 'celex:32024R1689/oj#art_20').
declared(deployer_of/2, 'entity is deployer of the AI system', 'celex:32024R1689/oj#art_20').
declared(importer_of/2, 'entity is importer of the AI system', 'celex:32024R1689/oj#art_20').
declared(notified_body_issued_certificate/2, 'notified body issued a certificate for the AI system under Article 44', 'celex:32024R1689/oj#art_20').
declared(must_take_corrective_action/2, 'provider must immediately take necessary corrective action', 'celex:32024R1689/oj#art_20').
declared(must_inform/2, 'actor must inform recipient about matter', 'celex:32024R1689/oj#art_20').
declared(must_investigate/2, 'provider must immediately investigate causes of risk', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, System) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    ( placed_on_market(Provider, System) ; put_into_service(Provider, System) ),
    considers_or_reason_to_consider_non_compliant(Provider, System).
must_inform(Provider, informed_party(Distributor, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    distributor_of(Distributor, System).
must_inform(Provider, informed_party(Deployer, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    deployer_of(Deployer, System).
must_inform(Provider, informed_party(AuthorisedRepresentative, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    authorised_representative_of(AuthorisedRepresentative, Provider).
must_inform(Provider, informed_party(Importer, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    importer_of(Importer, System).
must_investigate(Provider, causes_of_risk(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    presents_risk_art_79_1(System),
    aware_of_risk(Provider, System).
must_inform(Provider, authority(Authority, details(System, non_compliance_and_corrective_action))) :-
    must_investigate(Provider, causes_of_risk(System)),
    market_surveillance_authority_for(Authority, System).
must_inform(Provider, notified_body(Body, details(System, non_compliance_and_corrective_action))) :-
    must_investigate(Provider, causes_of_risk(System)),
    notified_body_issued_certificate(Body, System).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_20').
provenance(provider_of/2, 'celex:32024R1689/oj#art_20').
provenance(placed_on_market/2, 'celex:32024R1689/oj#art_20').
provenance(put_into_service/2, 'celex:32024R1689/oj#art_20').
provenance(considers_or_reason_to_consider_non_compliant/2, 'celex:32024R1689/oj#art_20').
provenance(presents_risk_art_79_1/1, 'celex:32024R1689/oj#art_20').
provenance(aware_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(distributor_of/2, 'celex:32024R1689/oj#art_20').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_20').
provenance(importer_of/2, 'celex:32024R1689/oj#art_20').
provenance(notified_body_issued_certificate/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_21').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_21').
declared(competent_authority/1, 'competent public authority', 'celex:32024R1689/oj#art_21').
declared(reasoned_request/2, 'reasoned request made by an authority regarding an AI system', 'celex:32024R1689/oj#art_21').
declared(must_provide/2, 'actor must provide requested item or access to an authority', 'celex:32024R1689/oj#art_21').
declared(must_treat_in_accordance_with_confidentiality/2, 'authority must treat information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_21').
must_provide(Provider, information_and_documentation(System, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, System).
must_provide(Provider, access_to_logs(System, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, System),
    control_of_logs(Provider, System).
must_treat_in_accordance_with_confidentiality(Authority, Info) :-
    competent_authority(Authority),
    reasoned_request(Authority, System),
    ( Info = information_and_documentation(System, Authority)
    ; Info = access_to_logs(System, Authority)
    ).
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_in_accordance_with_confidentiality/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_22').
declared(established_in_third_country/1, 'entity established in a third country', 'celex:32024R1689/oj#art_22').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_22').
declared(mandate_covers_tasks/2, 'mandate covers statutory tasks of authorised representative for an AI system', 'celex:32024R1689/oj#art_22').
declared(mandate_allows_addressing/2, 'mandate empowers authorised representative to be addressed by competent authorities', 'celex:32024R1689/oj#art_22').
declared(written_mandate/2, 'written mandate between provider and authorised representative', 'celex:32024R1689/oj#art_22').
declared(acts_contrary_to_obligations/1, 'entity is considered or has reason to be considered acting contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(notified_body_involved/2, 'notified body involved in conformity assessment of an AI system', 'celex:32024R1689/oj#art_22').
must_appoint(Provider, authorised_representative(Rep, System)) :-
    provider(Provider),
    established_in_third_country(Provider),
    high_risk_ai_system(System),
    authorised_representative(Rep),
    established_in_union(Rep),
    written_mandate(Provider, Rep).
must_enable(Provider, perform_tasks(Rep)) :-
    provider(Provider),
    authorised_representative_of(Rep, Provider).
must_perform(Rep, tasks(Mandate)) :-
    authorised_representative(Rep),
    written_mandate(_Provider, Rep),
    Mandate = Rep.
must_provide(Rep, copy_of_mandate(Authority)) :-
    authorised_representative(Rep),
    market_surveillance_authority(Authority).
must_empower(Provider, mandate_tasks(Rep, System)) :-
    provider(Provider),
    authorised_representative_of(Rep, Provider),
    high_risk_ai_system(System),
    mandate_covers_tasks(Rep, System),
    mandate_allows_addressing(Rep, System).
must_verify(Rep, conformity_documentation(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).
must_keep_at_disposal(Rep, compliance_documentation(System, period(years(10), after(market_placement_or_service)))) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).
must_provide(Rep, documentation_and_logs(System, Authority)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
must_cooperate(Rep, competent_authority_action(Authority, System)) :-
    authorised_representative(Rep),
    national_competent_authority(Authority),
    high_risk_ai_system(System).
must_comply(Rep, registration_obligations(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).
must_terminate(Rep, mandate(Provider)) :-
    authorised_representative_of(Rep, Provider),
    acts_contrary_to_obligations(Provider).
must_inform(Rep, termination(mandate(Provider), Authority)) :-
    authorised_representative_of(Rep, Provider),
    acts_contrary_to_obligations(Provider),
    market_surveillance_authority(Authority).
must_inform(Rep, termination(mandate(Provider), Body)) :-
    authorised_representative_of(Rep, Provider),
    acts_contrary_to_obligations(Provider),
    notified_body(Body),
    notified_body_involved(Body, Provider).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide/2, 'celex:32024R1689/oj#art_22').
provenance(must_empower/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_22').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_23').
declared(carried_out_conformity_assessment/2, 'provider has carried out conformity assessment for AI system', 'celex:32024R1689/oj#art_23').
declared(drawn_up_technical_documentation/2, 'provider has drawn up technical documentation for AI system', 'celex:32024R1689/oj#art_23').
declared(bears_ce_marking/1, 'AI system bears the CE marking', 'celex:32024R1689/oj#art_23').
declared(accompanied_by_declaration_of_conformity/1, 'AI system is accompanied by the EU declaration of conformity', 'celex:32024R1689/oj#art_23').
declared(accompanied_by_instructions_for_use/1, 'AI system is accompanied by instructions for use', 'celex:32024R1689/oj#art_23').
declared(appointed_authorised_representative/2, 'provider has appointed an authorised representative for AI system', 'celex:32024R1689/oj#art_23').
declared(verified_conformity/2, 'importer has verified that the AI system conforms before placing on the market', 'celex:32024R1689/oj#art_23').
declared(suspected_non_conformity/2, 'importer has reason to consider system non-conforming or falsified', 'celex:32024R1689/oj#art_23').
declared(prohibited_placing_on_market/2, 'actor is prohibited from placing the AI system on the market', 'celex:32024R1689/oj#art_23').
declared(presents_risk/1, 'AI system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_23').
declared(must_inform/2, 'actor must inform recipient of specified circumstances', 'celex:32024R1689/oj#art_23').
declared(must_indicate_contact_info/2, 'importer must indicate contact details on the AI system, packaging, or documentation', 'celex:32024R1689/oj#art_23').
declared(must_ensure_storage_and_transport/2, 'importer must ensure storage and transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(must_keep_documentation/2, 'importer must keep specified documentation for a period', 'celex:32024R1689/oj#art_23').
declared(must_provide_documentation/2, 'importer must provide documentation and information to competent authority', 'celex:32024R1689/oj#art_23').
declared(must_cooperate/2, 'importer must cooperate with competent authorities in their actions', 'celex:32024R1689/oj#art_23').
declared(reasoned_request/2, 'competent authority has made a reasoned request to importer', 'celex:32024R1689/oj#art_23').
declared(under_responsibility/2, 'AI system is under the responsibility of actor', 'celex:32024R1689/oj#art_23').
verified_conformity(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    provider(Provider),
    carried_out_conformity_assessment(Provider, System),
    drawn_up_technical_documentation(Provider, System),
    bears_ce_marking(System),
    accompanied_by_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    appointed_authorised_representative(Provider, System).
must_comply(Importer, verify_conformity(System)) :-
    importer(Importer),
    high_risk_ai_system(System).
prohibited_placing_on_market(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System).
must_inform(Importer, provider(System, risk(art_79_par_1))) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System),
    presents_risk(System).
must_inform(Importer, authorised_representative(System, risk(art_79_par_1))) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System),
    presents_risk(System).
must_inform(Importer, market_surveillance_authorities(System, risk(art_79_par_1))) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System),
    presents_risk(System).
must_indicate_contact_info(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).
must_ensure_storage_and_transport(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    under_responsibility(System, Importer).
must_keep_documentation(Importer, copy_documentation(System, period(years(10)))) :-
    importer(Importer),
    high_risk_ai_system(System).
must_provide_documentation(Importer, competent_authority(Authority, System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, Importer).
must_cooperate(Importer, actions(Authority, System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).
provenance(verified_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_comply/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_contact_info/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_and_transport/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_23').
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
declared(bears_ce_marking/1, 'AI system bears the required CE marking', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_declaration_of_conformity/1, 'system is accompanied by a copy of the EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_instructions_for_use/1, 'system is accompanied by instructions for use', 'celex:32024R1689/oj#art_24').
declared(compliant_with_applicable_obligations/1, 'provider and importer complied with their applicable obligations', 'celex:32024R1689/oj#art_24').
declared(verified_distributor_requirements/2, 'distributor verified markings, docs, and party compliance for system', 'celex:32024R1689/oj#art_24').
declared(considers_non_compliant/2, 'distributor considers or has reason to consider system not compliant with Chapter III Section 2', 'celex:32024R1689/oj#art_24').
declared(presents_risk_article_79_1/1, 'AI system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(under_responsibility/2, 'system is under the responsibility of an operator', 'celex:32024R1689/oj#art_24').
declared(storage_or_transport_jeopardises_compliance/2, 'storage or transport conditions jeopardise compliance of system', 'celex:32024R1689/oj#art_24').
declared(made_available_on_market_by/2, 'system has been made available on the market by a distributor', 'celex:32024R1689/oj#art_24').
declared(reasoned_request_by/2, 'reasoned request made by an authority to an operator', 'celex:32024R1689/oj#art_24').
declared(competent_authority/1, 'relevant competent authority', 'celex:32024R1689/oj#art_24').
declared(prohibited_making_available_on_market/2, 'distributor is prohibited from making system available on market', 'celex:32024R1689/oj#art_24').
declared(must_verify/2, 'distributor must verify system requirements before making available', 'celex:32024R1689/oj#art_24').
declared(must_inform/2, 'distributor must inform actor of non-compliance or risk', 'celex:32024R1689/oj#art_24').
declared(must_ensure/2, 'distributor must ensure a condition holds', 'celex:32024R1689/oj#art_24').
declared(must_take_action/2, 'distributor must take corrective action', 'celex:32024R1689/oj#art_24').
declared(must_provide/2, 'distributor must provide information and documentation to authority', 'celex:32024R1689/oj#art_24').
declared(must_cooperate/2, 'distributor must cooperate with authority', 'celex:32024R1689/oj#art_24').
must_verify(Distributor, verification(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).
verified_distributor_requirements(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    bears_ce_marking(System),
    accompanied_by_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    compliant_with_applicable_obligations(System).
prohibited_making_available_on_market(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_non_compliant(Distributor, System),
    \+ complies_with_chapter_3_section_2(System).
must_inform(Distributor, risk(System, ProviderOrImporter)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_non_compliant(Distributor, System),
    presents_risk_article_79_1(System),
    (provider(ProviderOrImporter) ; importer(ProviderOrImporter)).
must_ensure(Distributor, safe_storage_and_transport(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_responsibility(Distributor, System),
    \+ storage_or_transport_jeopardises_compliance(Distributor, System).
must_take_action(Distributor, corrective_action(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System),
    considers_non_compliant(Distributor, System).
must_inform(Distributor, risk_and_corrective_action(System, Authority)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System),
    considers_non_compliant(Distributor, System),
    presents_risk_article_79_1(System),
    competent_authority(Authority).
must_inform(Distributor, risk_and_corrective_action(System, ProviderOrImporter)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System),
    considers_non_compliant(Distributor, System),
    presents_risk_article_79_1(System),
    (provider(ProviderOrImporter) ; importer(ProviderOrImporter)).
must_provide(Distributor, information_and_documentation(System, Authority)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request_by(Authority, Distributor).
must_cooperate(Distributor, action(Authority, System)) :-
    distributor(Distributor),
    competent_authority(Authority),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System).
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(verified_distributor_requirements/2, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_available_on_market/2, 'celex:32024R1689/oj#art_24').
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
declared(provider_of_system/2, 'entity is considered a provider of an AI system', 'celex:32024R1689/oj#art_25').
declared(puts_name_or_trademark_on/2, 'entity puts their name or trademark on an AI system', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification/2, 'entity makes a substantial modification to an AI system', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose_to_high_risk/2, 'entity modifies intended purpose of an AI system such that it becomes high-risk', 'celex:32024R1689/oj#art_25').
declared(initial_provider_of_system/2, 'entity initially placed or put into service the AI system', 'celex:32024R1689/oj#art_25').
declared(excluded_change_to_high_risk/2, 'initial provider clearly specified the system is not to be changed into high-risk', 'celex:32024R1689/oj#art_25').
declared(annex_1_section_a_product/1, 'product covered by legislation in Annex I Section A', 'celex:32024R1689/oj#art_25').
declared(safety_component_of_product/2, 'AI system is a safety component of a product', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_of/2, 'entity is manufacturer of a product', 'celex:32024R1689/oj#art_25').
declared(placed_on_market_together_under_name/3, 'AI system is placed on market together with product under manufacturer name', 'celex:32024R1689/oj#art_25').
declared(put_into_service_under_name_after_product_market/3, 'AI system is put into service under manufacturer name after product placed on market', 'celex:32024R1689/oj#art_25').
declared(supplies_component_for_high_risk_ai/2, 'third party supplies tools, services, components or processes for high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(exempt_open_source_supplier/1, 'third party makes components accessible under free and open source licence', 'celex:32024R1689/oj#art_25').
declared(permitted_develop_model_terms/2, 'AI Office may develop voluntary model terms for contracts', 'celex:32024R1689/oj#art_25').
provider_of_system(Entity, System) :-
    high_risk_ai_system(System),
    puts_name_or_trademark_on(Entity, System).
provider_of_system(Entity, System) :-
    high_risk_ai_system(System),
    makes_substantial_modification(Entity, System).
provider_of_system(Entity, System) :-
    modifies_intended_purpose_to_high_risk(Entity, System).
provider(Entity) :-
    provider_of_system(Entity, System),
    high_risk_ai_system(System).
must_comply(Entity, obligations_article_16(System)) :-
    provider_of_system(Entity, System),
    high_risk_ai_system(System).
must_comply(InitialProvider, cooperate_and_provide_assistance(NewProvider, System)) :-
    initial_provider_of_system(InitialProvider, System),
    provider_of_system(NewProvider, System),
    InitialProvider \= NewProvider,
    \+ excluded_change_to_high_risk(InitialProvider, System).
provider_of_system(Manufacturer, System) :-
    high_risk_ai_system(System),
    safety_component_of_product(System, Product),
    annex_1_section_a_product(Product),
    product_manufacturer_of(Manufacturer, Product),
    placed_on_market_together_under_name(System, Product, Manufacturer).
provider_of_system(Manufacturer, System) :-
    high_risk_ai_system(System),
    safety_component_of_product(System, Product),
    annex_1_section_a_product(Product),
    product_manufacturer_of(Manufacturer, Product),
    put_into_service_under_name_after_product_market(System, Product, Manufacturer).
must_comply(Provider, specify_by_written_agreement(ThirdParty, System)) :-
    provider_of_system(Provider, System),
    high_risk_ai_system(System),
    supplies_component_for_high_risk_ai(ThirdParty, System),
    \+ exempt_open_source_supplier(ThirdParty).
must_comply(ThirdParty, specify_by_written_agreement(Provider, System)) :-
    provider_of_system(Provider, System),
    high_risk_ai_system(System),
    supplies_component_for_high_risk_ai(ThirdParty, System),
    \+ exempt_open_source_supplier(ThirdParty).
permitted_develop_model_terms(Office, model_terms_value_chain_contracts) :-
    ai_office(Office).
provenance(provider_of_system/2, 'celex:32024R1689/oj#art_25').
provenance(provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_comply/2, 'celex:32024R1689/oj#art_25').
provenance(permitted_develop_model_terms/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_26').
declared(public_authority/1, 'entity is a public authority', 'celex:32024R1689/oj#art_26').
declared(employer/1, 'entity is an employer', 'celex:32024R1689/oj#art_26').
declared(workplace_use/2, 'AI system is used or put into service at the workplace by an employer', 'celex:32024R1689/oj#art_26').
declared(registered_in_eu_database/1, 'AI system is registered in the EU database', 'celex:32024R1689/oj#art_26').
declared(judicial_or_administrative_authority/1, 'judicial authority or administrative authority whose decision is binding and subject to judicial review', 'celex:32024R1689/oj#art_26').
declared(national_data_protection_authority/1, 'national supervisory authority responsible for personal data protection', 'celex:32024R1689/oj#art_26').
declared(makes_or_assists_decisions_on_persons/1, 'AI system makes decisions or assists in making decisions related to natural persons', 'celex:32024R1689/oj#art_26').
declared(prohibited_untargeted_post_remote_biometric_identification/1, 'untargeted use of post-remote biometric identification for law enforcement is prohibited', 'celex:32024R1689/oj#art_26').
declared(prohibited_solely_automated_adverse_decision/2, 'adverse legal decision based solely on post-remote biometric identification is prohibited', 'celex:32024R1689/oj#art_26').
declared(financial_institution_subject_to_union_financial_law/1, 'deployer is a financial institution subject to governance requirements under Union financial services law', 'celex:32024R1689/oj#art_26').
declared(competent_authority/1, 'competent authority in relation to AI systems', 'celex:32024R1689/oj#art_26').
declared(natural_person/1, 'natural person', 'celex:32024R1689/oj#art_26').
declared(has_human_oversight_competence/1, 'natural person has necessary competence, training, authority and support for human oversight', 'celex:32024R1689/oj#art_26').
declared(controls_input_data/2, 'deployer exercises control over input data for AI system', 'celex:32024R1689/oj#art_26').
declared(reason_to_consider_risk/2, 'deployer has reason to consider that use in accordance with instructions may result in AI system presenting a risk', 'celex:32024R1689/oj#art_26').
declared(identified_serious_incident/2, 'deployer has identified a serious incident involving AI system', 'celex:32024R1689/oj#art_26').
declared(initial_identification_exception/1, 'use is for initial identification of potential suspect based on objective and verifiable facts directly linked to offence', 'celex:32024R1689/oj#art_26').
declared(authorisation_rejected/2, 'requested authorisation for post-remote biometric identification system has been rejected', 'celex:32024R1689/oj#art_26').
must_comply(Deployer, use_in_accordance_with_instructions(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System).
must_comply(Deployer, assign_human_oversight(System, Person)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    natural_person(Person),
    has_human_oversight_competence(Person).
must_comply(Deployer, ensure_relevant_and_representative_input_data(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    controls_input_data(Deployer, System).
must_comply(Deployer, monitor_operation(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    \+ financial_institution_subject_to_union_financial_law(Deployer).
must_comply(Deployer, monitor_operation_via_internal_governance(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    financial_institution_subject_to_union_financial_law(Deployer).
must_report(Deployer, risk_warning(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    reason_to_consider_risk(Deployer, System).
must_comply(Deployer, suspend_use(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    reason_to_consider_risk(Deployer, System).
must_report(Deployer, serious_incident(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    identified_serious_incident(Deployer, System).
must_comply(Deployer, keep_logs(System, period(months(6)))) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    control_of_logs(Deployer, System),
    \+ financial_institution_subject_to_union_financial_law(Deployer).
must_comply(Deployer, maintain_logs_financial_law(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    control_of_logs(Deployer, System),
    financial_institution_subject_to_union_financial_law(Deployer).
must_comply(Employer, inform_workers(System)) :-
    deployer(Employer),
    employer(Employer),
    high_risk_ai_system(System),
    workplace_use(Employer, System).
must_comply(Deployer, registration_obligations(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    public_authority(Deployer).
must_comply(Deployer, registration_obligations(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    union_institution_body_office_agency(Deployer).
must_comply(Deployer, refrain_from_use_and_inform(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    (public_authority(Deployer) ; union_institution_body_office_agency(Deployer)),
    \+ registered_in_eu_database(System).
must_comply(Deployer, request_authorisation(System, Authority)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    judicial_or_administrative_authority(Authority),
    \+ initial_identification_exception(System).
must_comply(Deployer, stop_use_and_delete_data(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System),
    authorisation_rejected(Deployer, System).
prohibited_untargeted_post_remote_biometric_identification(System) :-
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
prohibited_solely_automated_adverse_decision(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
must_comply(Deployer, document_in_police_file(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
must_submit_annual_report(Deployer, post_remote_biometric_identification_use(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    post_remote_biometric_identification_system(System).
must_comply(Deployer, inform_natural_persons(System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    makes_or_assists_decisions_on_persons(System).
must_comply(Deployer, cooperate(Authority, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    competent_authority(Authority).
provenance(must_comply/2, 'celex:32024R1689/oj#art_26').
provenance(must_report/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_post_remote_biometric_identification/1, 'celex:32024R1689/oj#art_26').
provenance(prohibited_solely_automated_adverse_decision/2, 'celex:32024R1689/oj#art_26').
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
declared(high_risk_ai_system_art_6_2/1, 'AI system referred to in Article 6(2)', 'celex:32024R1689/oj#art_27').
declared(body_governed_by_public_law/1, 'entity is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_providing_public_services/1, 'entity is a private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(annex_3_point_5_b_c_system/1, 'AI system referred to in Annex III point 5(b) or 5(c)', 'celex:32024R1689/oj#art_27').
declared(exempt_fundamental_rights_impact_assessment/2, 'deployer is exempt from fundamental rights impact assessment for system', 'celex:32024R1689/oj#art_27').
declared(derogation_public_security/1, 'exceptional case under Article 46(1) for public security derogation', 'celex:32024R1689/oj#art_27').
declared(must_notify_results/3, 'actor must notify authority of results of an assessment', 'celex:32024R1689/oj#art_27').
declared(must_update/2, 'actor must update an assessment', 'celex:32024R1689/oj#art_27').
declared(elements_changed_or_outdated/2, 'elements of impact assessment for system have changed or are no longer up to date', 'celex:32024R1689/oj#art_27').
declared(template_developed/2, 'entity has developed a template', 'celex:32024R1689/oj#art_27').
declared(must_develop/2, 'actor must develop a template or tool', 'celex:32024R1689/oj#art_27').
must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    high_risk_ai_system_art_6_2(System),
    \+ annex_3_point_2_system(System),
    body_governed_by_public_law(Deployer).
must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    high_risk_ai_system_art_6_2(System),
    \+ annex_3_point_2_system(System),
    private_entity_providing_public_services(Deployer).
must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    annex_3_point_5_b_c_system(System).
must_update(Deployer, fundamental_rights_impact_assessment(System)) :-
    deployer(Deployer),
    must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)),
    elements_changed_or_outdated(Deployer, System).
must_notify_results(Deployer, market_surveillance_authority, assessment_results(System)) :-
    deployer(Deployer),
    must_comply(Deployer, perform_fundamental_rights_impact_assessment(System)),
    \+ derogation_public_security(System).
must_develop(Office, questionnaire_template(fundamental_rights_impact_assessment)) :-
    ai_office(Office).
provenance(must_comply/2, 'celex:32024R1689/oj#art_27').
provenance(must_update/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_results/3, 'celex:32024R1689/oj#art_27').
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
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_28').
declared(national_accreditation_body/1, 'national accreditation body within the meaning of Regulation (EC) No 765/2008', 'celex:32024R1689/oj#art_28').
declared(must_designate/2, 'Member State must designate or establish a notifying authority', 'celex:32024R1689/oj#art_28').
declared(permitted_assign_assessment_and_monitoring/2, 'Member State may decide that assessment and monitoring be carried out by a national accreditation body', 'celex:32024R1689/oj#art_28').
declared(required_safeguard_objectivity_and_impartiality/1, 'notifying authority must be established, organised and operated without conflict of interest', 'celex:32024R1689/oj#art_28').
declared(required_separation_of_assessment_and_notification/1, 'notification decisions must be taken by competent persons different from those who carried out the assessment', 'celex:32024R1689/oj#art_28').
declared(prohibited_conformity_assessment_activities/1, 'notifying authority prohibited from performing conformity assessment body activities', 'celex:32024R1689/oj#art_28').
declared(prohibited_consultancy_services/1, 'notifying authority prohibited from offering commercial or competitive consultancy services', 'celex:32024R1689/oj#art_28').
declared(required_confidentiality_safeguard/1, 'notifying authority must safeguard confidentiality in accordance with Article 78', 'celex:32024R1689/oj#art_28').
declared(required_adequate_competent_personnel/1, 'notifying authority must have adequate competent personnel with necessary expertise', 'celex:32024R1689/oj#art_28').
must_designate(MS, notifying_authority) :-
    member_state(MS).
permitted_assign_assessment_and_monitoring(MS, NAB) :-
    member_state(MS),
    national_accreditation_body(NAB).
required_safeguard_objectivity_and_impartiality(Authority) :-
    notifying_authority(Authority).
required_separation_of_assessment_and_notification(Authority) :-
    notifying_authority(Authority).
prohibited_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority).
prohibited_consultancy_services(Authority) :-
    notifying_authority(Authority).
required_confidentiality_safeguard(Authority) :-
    notifying_authority(Authority).
required_adequate_competent_personnel(Authority) :-
    notifying_authority(Authority).
provenance(must_designate/2, 'celex:32024R1689/oj#art_28').
provenance(permitted_assign_assessment_and_monitoring/2, 'celex:32024R1689/oj#art_28').
provenance(required_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_assessment_and_notification/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(required_confidentiality_safeguard/1, 'celex:32024R1689/oj#art_28').
provenance(required_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(established_in_member_state/2, 'conformity assessment body is established in a Member State', 'celex:32024R1689/oj#art_29').
declared(notifying_authority_of/2, 'notifying authority of a Member State', 'celex:32024R1689/oj#art_29').
declared(has_accreditation_certificate/2, 'conformity assessment body has an accreditation certificate attesting compliance with Article 31', 'celex:32024R1689/oj#art_29').
declared(must_submit/2, 'actor must submit an application or document', 'celex:32024R1689/oj#art_29').
declared(must_provide/2, 'actor must provide documentary evidence or information', 'celex:32024R1689/oj#art_29').
declared(must_update/2, 'actor must update documentation upon relevant changes', 'celex:32024R1689/oj#art_29').
declared(permitted_use/2, 'actor or procedure is permitted to use specified documents', 'celex:32024R1689/oj#art_29').
declared(relevant_changes_occurred/1, 'relevant changes have occurred to the notified body or its activities', 'celex:32024R1689/oj#art_29').
must_submit(CAB, application_for_notification(Auth)) :-
    conformity_assessment_body(CAB),
    established_in_member_state(CAB, MS),
    notifying_authority(Auth),
    notifying_authority_of(Auth, MS).
must_submit(CAB, application_content(CAB, [activities, modules, ai_system_types, Cert])) :-
    conformity_assessment_body(CAB),
    has_accreditation_certificate(CAB, Cert).
must_submit(CAB, existing_designation_documents(Docs)) :-
    conformity_assessment_body(CAB),
    permitted_use(CAB, existing_designation_documents(Docs)).
must_provide(CAB, documentary_evidence_for_verification(Auth)) :-
    conformity_assessment_body(CAB),
    established_in_member_state(CAB, MS),
    notifying_authority(Auth),
    notifying_authority_of(Auth, MS),
    \+ has_accreditation_certificate(CAB, _).
permitted_use(CAB, designation_support_documents(CAB)) :-
    notified_body(CAB).
must_update(CAB, notification_documentation(CAB)) :-
    notified_body(CAB),
    relevant_changes_occurred(CAB).
provenance(must_submit/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use/2, 'celex:32024R1689/oj#art_29').
provenance(must_update/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(satisfies_requirements_art_31/1, 'Conformity assessment body satisfies requirements laid down in Article 31', 'celex:32024R1689/oj#art_30').
declared(permitted_notification/2, 'Notifying authority may notify the conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(member_state/1, 'Entity is a Member State', 'celex:32024R1689/oj#art_30').
declared(notification_details/2, 'Notification includes specified full details', 'celex:32024R1689/oj#art_30').
declared(based_on_accreditation_certificate/1, 'Notification is based on an accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(provides_documentary_evidence/3, 'Notifying authority provides documentary evidence attesting competence and regular monitoring arrangements', 'celex:32024R1689/oj#art_30').
declared(objection_raised/2, 'An objection is raised to the notification within the applicable period', 'celex:32024R1689/oj#art_30').
declared(permitted_activities_of_notified_body/1, 'Conformity assessment body may perform the activities of a notified body', 'celex:32024R1689/oj#art_30').
declared(notification/2, 'Notification of conformity assessment body by notifying authority', 'celex:32024R1689/oj#art_30').
declared(includes_accreditation_certificate/1, 'Notification includes an accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(includes_documentary_evidence/1, 'Notification includes documentary evidence', 'celex:32024R1689/oj#art_30').
declared(objection_raised_within/3, 'Objection raised to notification by entity within timeframe', 'celex:32024R1689/oj#art_30').
declared(must_consult/2, 'Actor must enter into consultations with parties', 'celex:32024R1689/oj#art_30').
declared(must_address_decision/2, 'Commission must address its decision to specified parties', 'celex:32024R1689/oj#art_30').
permitted_notification(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfies_requirements_art_31(Body).
must_notify(Authority, notification_to_commission(Body)) :-
    permitted_notification(Authority, Body).
must_notify(Authority, notification_to_member_state(MS, Body)) :-
    permitted_notification(Authority, Body),
    member_state(MS).
must_comply(Authority, notification_details(Body, details(activities, module, ai_system_types, attestation_of_competence))) :-
    permitted_notification(Authority, Body).
must_comply(Authority, provide_evidence(Body, commission)) :-
    permitted_notification(Authority, Body),
    \+ based_on_accreditation_certificate(Body),
    provides_documentary_evidence(Authority, Body, commission).
must_comply(Authority, provide_evidence(Body, ms(MS))) :-
    permitted_notification(Authority, Body),
    member_state(MS),
    \+ based_on_accreditation_certificate(Body),
    provides_documentary_evidence(Authority, Body, MS).
permitted_activities_of_notified_body(Body) :-
    conformity_assessment_body(Body),
    notification(Authority, Body),
    notifying_authority(Authority),
    \+ objection_raised(Authority, Body).
objection_raised(Authority, Body) :-
    notification(Authority, Body),
    includes_accreditation_certificate(notification(Authority, Body)),
    objection_raised_within(_Objector, notification(Authority, Body), weeks(2)).
objection_raised(Authority, Body) :-
    notification(Authority, Body),
    includes_documentary_evidence(notification(Authority, Body)),
    objection_raised_within(_Objector, notification(Authority, Body), months(2)).
must_consult(Commission, consultations(MS, Body)) :-
    commission(Commission),
    objection_raised(Authority, Body),
    notification(Authority, Body),
    member_state(MS).
must_decide(Commission, justification_of_authorisation(Body)) :-
    commission(Commission),
    objection_raised(_Authority, Body).
must_address_decision(Commission, decision(justification_of_authorisation(Body), addressees(MS, Body))) :-
    commission(Commission),
    objection_raised(_Authority, Body),
    member_state(MS).
provenance(permitted_notification/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_comply/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_activities_of_notified_body/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide/2, 'celex:32024R1689/oj#art_30').
provenance(must_address_decision/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(established_under_national_law/1, 'Body is established under the national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(has_legal_personality/1, 'Body has legal personality', 'celex:32024R1689/oj#art_31').
declared(satisfies_organisational_requirements/1, 'Notified body satisfies organisational, quality, resource, process and cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(ensures_confidence_in_performance/1, 'Structure and operation ensures confidence in performance and results', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider_and_operators/2, 'Notified body is independent of the provider, interested operators, and competitors for an AI system', 'celex:32024R1689/oj#art_31').
declared(independent_of_conflicts/1, 'Body and staff are free of conflicts with independence or involvement in assessed systems', 'celex:32024R1689/oj#art_31').
declared(safeguards_impartiality/1, 'Body documents and implements structures and procedures safeguarding impartiality', 'celex:32024R1689/oj#art_31').
declared(maintains_confidentiality_procedures/1, 'Body has procedures ensuring confidentiality and professional secrecy under Article 78', 'celex:32024R1689/oj#art_31').
declared(has_proportionate_procedures/1, 'Body has procedures taking account of provider size, sector, structure, and AI complexity', 'celex:32024R1689/oj#art_31').
declared(has_liability_coverage/1, 'Body has liability insurance or liability is assumed/held directly by the Member State', 'celex:32024R1689/oj#art_31').
declared(has_professional_integrity_and_competence/1, 'Body has capability and competence to carry out all tasks with professional integrity', 'celex:32024R1689/oj#art_31').
declared(has_sufficient_internal_competences/1, 'Body has permanent personnel with required expertise on AI systems, data and Chapter III Section 2', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination_and_standardisation/1, 'Body participates in coordination activities and European standardisation organisations or keeps up to date', 'celex:32024R1689/oj#art_31').
declared(satisfies_notified_body_requirements/1, 'Notified body meets the statutory requirements of Article 31', 'celex:32024R1689/oj#art_31').
declared(exempt_liability_insurance/1, 'Notified body is exempt from liability insurance because the Member State assumes liability or performs assessment directly', 'celex:32024R1689/oj#art_31').
satisfies_notified_body_requirements(B) :-
    notified_body(B),
    established_under_national_law(B),
    has_legal_personality(B),
    satisfies_organisational_requirements(B),
    ensures_confidence_in_performance(B),
    independent_of_conflicts(B),
    safeguards_impartiality(B),
    maintains_confidentiality_procedures(B),
    has_proportionate_procedures(B),
    has_liability_coverage(B),
    has_professional_integrity_and_competence(B),
    has_sufficient_internal_competences(B),
    participates_in_coordination_and_standardisation(B).
has_liability_coverage(B) :-
    exempt_liability_insurance(B).
must_comply(B, coordination_activities) :-
    notified_body(B).
provenance(satisfies_notified_body_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(has_liability_coverage/1, 'celex:32024R1689/oj#art_31').
provenance(must_comply/2, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(demonstrates_conformity_with/2, 'conformity assessment body demonstrates conformity with harmonised standards or parts thereof', 'celex:32024R1689/oj#art_32').
declared(published_in_oj/1, 'reference of the harmonised standard is published in the Official Journal', 'celex:32024R1689/oj#art_32').
declared(covers_requirements_of_art_31/1, 'harmonised standard covers requirements set out in Article 31', 'celex:32024R1689/oj#art_32').
declared(presumed_compliant_with_art_31/1, 'conformity assessment body is presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
presumed_compliant_with_art_31(Body) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with(Body, Standard),
    harmonised_standard(Standard),
    published_in_oj(Standard),
    covers_requirements_of_art_31(Standard).
provenance(presumed_compliant_with_art_31/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontracts_or_uses_subsidiary/3, 'notified body subcontracts specific tasks or uses a subsidiary for conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(subsidiary_of/2, 'entity is a subsidiary of a notified body', 'celex:32024R1689/oj#art_33').
declared(subcontractor_of/2, 'entity is a subcontractor of a notified body', 'celex:32024R1689/oj#art_33').
declared(agreement_of_provider/3, 'provider agrees that activities are subcontracted to or carried out by an entity', 'celex:32024R1689/oj#art_33').
declared(permitted_subcontract_or_subsidiary_activity/3, 'notified body may subcontract activity or have it carried out by subsidiary', 'celex:32024R1689/oj#art_33').
declared(must_ensure/2, 'actor must ensure a condition holds', 'celex:32024R1689/oj#art_33').
declared(must_inform/2, 'actor must inform an entity about something', 'celex:32024R1689/oj#art_33').
declared(must_take_full_responsibility/2, 'actor must take full responsibility for tasks performed by entity', 'celex:32024R1689/oj#art_33').
declared(must_make_publicly_available/2, 'actor must make information publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_at_disposal/2, 'actor must keep documents at the disposal of an authority', 'celex:32024R1689/oj#art_33').
must_ensure(Body, meets_requirements_art_31(Entity)) :-
    notified_body(Body),
    subcontracts_or_uses_subsidiary(Body, Entity, conformity_assessment_tasks).
must_inform(Body, notifying_authority(subcontractor_or_subsidiary(Entity))) :-
    notified_body(Body),
    subcontracts_or_uses_subsidiary(Body, Entity, conformity_assessment_tasks).
must_take_full_responsibility(Body, tasks_performed_by(Entity)) :-
    notified_body(Body),
    ( subcontractor_of(Entity, Body)
    ; subsidiary_of(Entity, Body)
    ).
permitted_subcontract_or_subsidiary_activity(Body, Entity, Tasks) :-
    notified_body(Body),
    ( subcontractor_of(Entity, Body)
    ; subsidiary_of(Entity, Body)
    ),
    provider(Provider),
    agreement_of_provider(Provider, Entity, Tasks).
must_make_publicly_available(Body, list_of_subsidiaries) :-
    notified_body(Body).

% ==== celex:32024R1689/oj#art_34 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_34').
declared(request_from/2, 'authority requests documentation from a notified body', 'celex:32024R1689/oj#art_34').
declared(relevant_documentation/2, 'documentation relevant for assessing notified body activities', 'celex:32024R1689/oj#art_34').
must_verify(Body, conformity(System, procedure_article_43)) :-
    notified_body(Body),
    high_risk_ai_system(System).
must_comply(Body, operational_standards(avoid_unnecessary_burdens, respect_required_protection)) :-
    notified_body(Body).
must_submit(Body, documentation(Doc, Authority)) :-
    notified_body(Body),
    notifying_authority(Authority),
    request_from(Authority, Body),
    relevant_documentation(Doc, Body).
provenance(must_verify/2, 'celex:32024R1689/oj#art_34').
provenance(must_comply/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
must_assign(Commission, identification_number(Body)) :-
    commission(Commission),
    notified_body(Body).
must_make_publicly_available(Commission, list_of_notified_bodies) :-
    commission(Commission).
must_keep_up_to_date(Commission, list_of_notified_bodies) :-
    commission(Commission).
provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
must_notify(Auth, change_to_notification(Body, tool(electronic_notification))) :-
    notifying_authority(Auth),
    notified_body(Body).
must_inform(Body, cessation(Authority, Providers)) :-
    notified_body(Body),
    cessation_decided(Body),
    notifying_authority(Authority),
    provider(Providers).
must_withdraw(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    cessation_decided(Body).
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    cessation_decided(Body),
    responsibility_assumed(OtherBody, Cert),
    notified_body(OtherBody),
    Body \= OtherBody.
must_assess(OtherBody, full_assessment(Cert, within(months(9)))) :-
    notified_body(OtherBody),
    responsibility_assumed(OtherBody, Cert),
    certificate_issued_by(Cert, Body),
    cessation_decided(Body).
must_investigate(Auth, failure_to_meet_requirements(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).
must_restrict(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).
must_suspend(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).
must_withdraw(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).
must_inform(Body, providers(change_of_designation, within(days(10)))) :-
    notified_body(Body),
    designation_suspended(Body).
must_inform(Body, providers(change_of_designation, within(days(10)))) :-
    notified_body(Body),
    designation_restricted(Body).
must_inform(Body, providers(change_of_designation, within(days(10)))) :-
    notified_body(Body),
    designation_withdrawn(Body).
must_provide(Auth, files(Body, to(market_surveillance_authorities))) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).
must_assess(Auth, impact_on_certificates(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).
must_report(Auth, findings(Body, within(months(3)))) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).
must_require(Auth, withdraw_or_suspend_undue_certificates(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).
must_provide(Auth, national_competent_authorities(undue_certificates(Body))) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    ( designation_suspended(Body) ; designation_restricted(Body) ),
    notifying_authority(Auth),
    confirmation_no_risk(Auth, Cert).
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    ( designation_suspended(Body) ; designation_restricted(Body) ),
    notifying_authority(Auth),
    confirmation_no_issuance_and_capability(Auth, Body).
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    ( designation_suspended(Body) ; designation_restricted(Body) ),
    provider(P),
    confirmation_temporary_assumption(P, Cert).
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    designation_withdrawn(Body),
    national_competent_authority(Auth),
    confirmation_no_risk(Auth, Cert),
    notified_body(OtherBody),
    Body \= OtherBody,
    responsibility_assumed(OtherBody, Cert).
provisional_validity_extension(Auth, extension(Cert, periods(months(3)), max(months(12)))) :-
    national_competent_authority(Auth),
    certificate_issued_by(Cert, Body),
    designation_withdrawn(Body),
    confirmation_no_risk(Auth, Cert),
    responsibility_assumed(_OtherBody, Cert).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict/2, 'celex:32024R1689/oj#art_36').
provenance(must_suspend/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess/2, 'celex:32024R1689/oj#art_36').
provenance(must_require/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide/2, 'celex:32024R1689/oj#art_36').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_36').
provenance(provisional_validity_extension/2, 'celex:32024R1689/oj#art_36').
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
declared(reasons_to_doubt_competence/1, 'there are reasons to doubt competence or continued fulfilment of requirements by a notified body', 'celex:32024R1689/oj#art_37').
declared(request_information/2, 'actor requests information from recipient', 'celex:32024R1689/oj#art_37').
declared(confidential_treatment_required/1, 'information obtained must be treated confidentially', 'celex:32024R1689/oj#art_37').
declared(non_compliant_notified_body/1, 'notified body does not meet or no longer meets requirements for notification', 'celex:32024R1689/oj#art_37').
declared(member_state_failed_corrective_measures/2, 'Member State failed to take necessary corrective measures regarding notified body', 'celex:32024R1689/oj#art_37').
declared(permitted_adopt_implementing_act/2, 'Commission is permitted to adopt an implementing act regarding designation of a notified body', 'celex:32024R1689/oj#art_37').
must_investigate(Comm, Body) :-
    commission(Comm),
    notified_body(Body),
    reasons_to_doubt_competence(Body).
must_provide(Auth, information(Body, Comm)) :-
    notifying_authority(Auth),
    notified_body(Body),
    commission(Comm),
    request_information(Comm, Auth).
must_ensure(Comm, confidential_treatment_required(Info)) :-
    commission(Comm),
    sensitive_operational_data(Info).
must_inform(Comm, non_compliant(Body, MemberState)) :-
    commission(Comm),
    notified_body(Body),
    non_compliant_notified_body(Body).
must_request(Comm, corrective_measures(MemberState, Body)) :-
    commission(Comm),
    notified_body(Body),
    non_compliant_notified_body(Body).
permitted_adopt_implementing_act(Comm, action(Action, Body)) :-
    commission(Comm),
    notified_body(Body),
    member_state_failed_corrective_measures(_MemberState, Body),
    member(Action, [suspend, restrict, withdraw]).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_adopt_implementing_act/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure/2, 'actor must ensure a certain condition or outcome', 'celex:32024R1689/oj#art_38').
declared(sectoral_group_of_notified_bodies/1, 'sectoral group of notified bodies established for coordination under the regulation', 'celex:32024R1689/oj#art_38').
declared(notified_by/2, 'notified body was notified by a notifying authority', 'celex:32024R1689/oj#art_38').
declared(participates_in_work_of/2, 'entity participates directly or through designated representatives in a group', 'celex:32024R1689/oj#art_38').
declared(must_provide/2, 'actor must provide for a specified activity', 'celex:32024R1689/oj#art_38').
must_ensure(Commission, coordination_and_cooperation(sectoral_group_of_notified_bodies)) :-
    commission(Commission).
must_ensure(Authority, participation(Body, Group)) :-
    notifying_authority(Authority),
    notified_body(Body),
    notified_by(Body, Authority),
    sectoral_group_of_notified_bodies(Group),
    \+ participates_in_work_of(Body, Group).
must_provide(Commission, exchange_of_knowledge_and_best_practices(notifying_authorities)) :-
    commission(Commission).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_agreement/1, 'Union has concluded an agreement with the third country under whose law the body is established', 'celex:32024R1689/oj#art_39').
declared(established_under_law_of_third_country/2, 'Body is established under the law of a third country', 'celex:32024R1689/oj#art_39').
declared(meets_requirements_of_article_31/1, 'Conformity assessment body meets the requirements laid down in Article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_level_of_compliance/1, 'Conformity assessment body ensures an equivalent level of compliance to Article 31', 'celex:32024R1689/oj#art_39').
declared(permitted_authorisation_as_notified_body/1, 'Conformity assessment body may be authorised to carry out activities of notified bodies', 'celex:32024R1689/oj#art_39').
permitted_authorisation_as_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B, Country),
    third_country_agreement(Country),
    meets_requirements_of_article_31(B).
permitted_authorisation_as_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B, Country),
    third_country_agreement(Country),
    ensures_equivalent_level_of_compliance(B).
provenance(permitted_authorisation_as_notified_body/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_40').
declared(published_in_official_journal/1, 'reference of standard published in OJ', 'celex:32024R1689/oj#art_40').
declared(conforms_to_standard/2, 'system or model conforms to harmonised standard', 'celex:32024R1689/oj#art_40').
declared(standard_covers/2, 'harmonised standard covers requirement or obligation', 'celex:32024R1689/oj#art_40').
declared(presumed_in_conformity/2, 'presumed in conformity with requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(must_issue_standardisation_request/2, 'Commission must issue standardisation request covering requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(standardisation_participant/1, 'participant in the standardisation process', 'celex:32024R1689/oj#art_40').
declared(must_seek_objectives/2, 'participant in standardisation process must seek specified statutory objectives', 'celex:32024R1689/oj#art_40').
presumed_in_conformity(System, requirements_chapter_3_section_2) :-
    high_risk_ai_system(System),
    conforms_to_standard(System, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    standard_covers(Standard, requirements_chapter_3_section_2).
presumed_in_conformity(Model, obligations_chapter_5) :-
    general_purpose_ai_model(Model),
    conforms_to_standard(Model, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    standard_covers(Standard, obligations_chapter_5).
must_issue_standardisation_request(Commission, standardisation_requests(high_risk_and_gpai)) :-
    commission(Commission).
must_seek_objectives(Participant, standardisation_objectives) :-
    standardisation_participant(Participant).
provenance(presumed_in_conformity/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(must_seek_objectives/2, 'celex:32024R1689/oj#art_40').
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
declared(permitted_adopt_common_specifications/2, 'Commission is permitted to adopt implementing act establishing common specifications for requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(standardisation_request_failed/1, 'Standardisation request conditions of Article 41(1)(a) are fulfilled', 'celex:32024R1689/oj#art_41').
declared(request_not_accepted/1, 'Request not accepted by any European standardisation organisation', 'celex:32024R1689/oj#art_41').
declared(standards_not_delivered_on_time/1, 'Harmonised standards not delivered within the deadline', 'celex:32024R1689/oj#art_41').
declared(standards_insufficient_fundamental_rights/1, 'Harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(standards_not_complying_with_request/1, 'Harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_harmonised_standard_reference_published/1, 'No reference to harmonised standard published in OJEU and none expected within reasonable period', 'celex:32024R1689/oj#art_41').
declared(consulted_advisory_forum/1, 'Commission consulted the advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(procedure_applies/2, 'An adoption procedure applies to an act', 'celex:32024R1689/oj#art_41').
declared(must_inform/2, 'Actor must inform recipient or committee about a circumstance', 'celex:32024R1689/oj#art_41').
declared(conditions_fulfilled_article_41_1/1, 'Conditions laid down in Article 41(1) are fulfilled for a subject matter', 'celex:32024R1689/oj#art_41').
declared(in_conformity_with_common_specification/2, 'AI system or model complies with common specifications', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity/2, 'Entity is presumed to conform to requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(common_specification_covers/2, 'Common specification covers requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(high_risk_ai_system/1, 'System is a high-risk AI system', 'celex:32024R1689/oj#art_41').
declared(must_repeal/2, 'Commission must repeal implementing act or parts thereof covering requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(published_in_official_journal/1, 'Harmonised standard reference has been published in OJEU', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_covers/2, 'Harmonised standard covers specific requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(must_justify/2, 'Actor must duly justify compliance via equivalent technical solutions', 'celex:32024R1689/oj#art_41').
declared(provider_of/2, 'Entity is provider of a system or model', 'celex:32024R1689/oj#art_41').
declared(member_state/1, 'Entity is a Member State', 'celex:32024R1689/oj#art_41').
declared(considers_specification_insufficient/2, 'Member State considers common specification does not meet requirements or obligations', 'celex:32024R1689/oj#art_41').
declared(must_assess/2, 'Commission must assess information provided by Member State', 'celex:32024R1689/oj#art_41').
permitted_adopt_common_specifications(Commission, Target) :-
    commission(Commission),
    standardisation_request_failed(Target),
    no_harmonised_standard_reference_published(Target),
    consulted_advisory_forum(Target).
standardisation_request_failed(Target) :-
    request_not_accepted(Target).
standardisation_request_failed(Target) :-
    standards_not_delivered_on_time(Target).
standardisation_request_failed(Target) :-
    standards_insufficient_fundamental_rights(Target).
standardisation_request_failed(Target) :-
    standards_not_complying_with_request(Target).
procedure_applies(examination_procedure, implementing_act(common_specification)).
must_inform(Commission, committee(standards, conditions_fulfilled(Target))) :-
    commission(Commission),
    conditions_fulfilled_article_41_1(Target).
presumed_conformity(System, chapter_3_section_2) :-
    high_risk_ai_system(System),
    common_specification(Spec),
    in_conformity_with_common_specification(System, Spec),
    common_specification_covers(Spec, chapter_3_section_2).
presumed_conformity(Model, chapter_5_obligations) :-
    general_purpose_ai_model(Model),
    common_specification(Spec),
    in_conformity_with_common_specification(Model, Spec),
    common_specification_covers(Spec, chapter_5_obligations).
must_repeal(Commission, implementing_act(common_specification, Target)) :-
    commission(Commission),
    harmonised_standard(HS),
    published_in_official_journal(HS),
    harmonised_standard_covers(HS, Target).
must_justify(Provider, equivalent_technical_solutions(System, chapter_3_section_2)) :-
    high_risk_ai_system(System),
    provider_of(Provider, System),
    common_specification(Spec),
    common_specification_covers(Spec, chapter_3_section_2),
    \+ in_conformity_with_common_specification(System, Spec).
must_justify(Provider, equivalent_technical_solutions(Model, chapter_5_obligations)) :-
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider),
    provider_of(Provider, Model),
    common_specification(Spec),
    common_specification_covers(Spec, chapter_5_obligations),
    \+ in_conformity_with_common_specification(Model, Spec).
must_inform(MS, commission(detailed_explanation(Spec, Target))) :-
    member_state(MS),
    common_specification(Spec),
    considers_specification_insufficient(MS, Spec, Target).
must_assess(Commission, member_state_explanation(Spec)) :-
    commission(Commission),
    common_specification(Spec).
provenance(permitted_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(standardisation_request_failed/1, 'celex:32024R1689/oj#art_41').
provenance(procedure_applies/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess/2, 'celex:32024R1689/oj#art_41').
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
declared(trained_and_tested_on_setting_data/1, 'AI system trained and tested on data reflecting its specific intended setting', 'celex:32024R1689/oj#art_42').
declared(presumed_conformity/2, 'AI system is presumed to comply with specific legal requirements', 'celex:32024R1689/oj#art_42').
declared(certified_or_statement_issued_under_cybersecurity_scheme/2, 'AI system certified or statement of conformity issued under a cybersecurity scheme pursuant to Regulation (EU) 2019/881', 'celex:32024R1689/oj#art_42').
declared(published_in_official_journal/1, 'references have been published in the Official Journal of the European Union', 'celex:32024R1689/oj#art_42').
declared(covers_cybersecurity_requirements/2, 'cybersecurity certificate or statement of conformity covers relevant cybersecurity requirements', 'celex:32024R1689/oj#art_42').
presumed_conformity(System, requirements_art_10_par_4) :-
    high_risk_ai_system(System),
    trained_and_tested_on_setting_data(System).
presumed_conformity(System, cybersecurity_requirements_art_15) :-
    high_risk_ai_system(System),
    certified_or_statement_issued_under_cybersecurity_scheme(System, SchemeCertOrStatement),
    published_in_official_journal(SchemeCertOrStatement),
    covers_cybersecurity_requirements(SchemeCertOrStatement, cybersecurity_requirements_art_15).
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_1_system/1, 'High-risk AI system listed in Annex III point 1', 'celex:32024R1689/oj#art_43').
declared(annex_3_points_2_to_8_system/1, 'High-risk AI system listed in Annex III points 2 to 8', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standards_or_specifications/2, 'Provider applied harmonised standards or common specifications for the system', 'celex:32024R1689/oj#art_43').
declared(permitted_conformity_assessment_procedure/2, 'Conformity assessment procedure permitted for system', 'celex:32024R1689/oj#art_43').
declared(required_conformity_assessment_procedure/2, 'Conformity assessment procedure required for system', 'celex:32024R1689/oj#art_43').
declared(acting_as_notified_body/2, 'Entity that acts as notified body for high-risk AI system', 'celex:32024R1689/oj#art_43').
declared(intended_deployer_authority/2, 'High-risk AI system is intended to be put into service by specific authority', 'celex:32024R1689/oj#art_43').
declared(market_surveillance_authority_article_74/2, 'Market surveillance authority referred to in Article 74(8) or (9) for system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_exists/1, 'Harmonised standard exists covering requirements for system', 'celex:32024R1689/oj#art_43').
declared(common_specification_available/1, 'Common specification is available covering requirements for system', 'celex:32024R1689/oj#art_43').
declared(fully_applied_harmonised_standard/2, 'Provider has fully applied the harmonised standard for system', 'celex:32024R1689/oj#art_43').
declared(fully_applied_common_specification/2, 'Provider has fully applied common specification for system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_restricted/1, 'Harmonised standard has been published with a restriction', 'celex:32024R1689/oj#art_43').
declared(covered_by_annex_1_section_a/1, 'High-risk AI system is covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_43').
declared(permitted_opt_out_third_party_assessment/2, 'Product manufacturer permitted to opt out from third-party conformity assessment', 'celex:32024R1689/oj#art_43').
declared(applies_all_harmonised_standards_annex_1/2, 'Product manufacturer has applied all harmonised standards covering relevant requirements under Annex I legal act', 'celex:32024R1689/oj#art_43').
declared(applies_standards_or_specs_chapter_3_section_2/2, 'Product manufacturer has applied harmonised standards or common specifications covering Chapter III Section 2', 'celex:32024R1689/oj#art_43').
declared(undergoes_conformity_assessment/1, 'System has already undergone conformity assessment', 'celex:32024R1689/oj#art_43').
declared(predetermined_learning_change/2, 'Change to system resulting from continuous learning was predetermined in technical documentation', 'celex:32024R1689/oj#art_43').
declared(substantial_modification_occurred/2, 'Substantial modification has occurred for system', 'celex:32024R1689/oj#art_43').
declared(empowered_delegated_acts/2, 'Commission is empowered to adopt delegated acts amending rules', 'celex:32024R1689/oj#art_43').
permitted_conformity_assessment_procedure(S, annex_6_internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    provider(P),
    applied_harmonised_standards_or_specifications(P, S),
    \+ required_conformity_assessment_procedure(S, annex_7_notified_body).
permitted_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S).
required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    \+ harmonised_standard_exists(S),
    \+ common_specification_available(S).
required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    provider(P),
    harmonised_standard_exists(S),
    \+ fully_applied_harmonised_standard(P, S).
required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    provider(P),
    common_specification_available(S),
    \+ fully_applied_common_specification(P, S).
required_conformity_assessment_procedure(S, annex_7_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    harmonised_standard_restricted(S).
acting_as_notified_body(Authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_authority(S, law_enforcement),
    market_surveillance_authority_article_74(Authority, S).
acting_as_notified_body(Authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_authority(S, immigration_or_asylum),
    market_surveillance_authority_article_74(Authority, S).
acting_as_notified_body(Authority, S) :-
    high_risk_ai_system(S),
    intended_deployer_authority(S, union_institution_body_office_agency),
    market_surveillance_authority_article_74(Authority, S).
required_conformity_assessment_procedure(S, annex_6_internal_control) :-
    high_risk_ai_system(S),
    annex_3_points_2_to_8_system(S).
must_comply(P, conformity_assessment(S, annex_6_internal_control)) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_points_2_to_8_system(S).
must_comply(P, conformity_assessment_procedure(annex_1_legislation, S)) :-
    provider(P),
    high_risk_ai_system(S),
    covered_by_annex_1_section_a(S).
permitted_opt_out_third_party_assessment(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    covered_by_annex_1_section_a(S),
    applies_all_harmonised_standards_annex_1(M, S),
    applies_standards_or_specs_chapter_3_section_2(M, S).
must_comply(P, new_conformity_assessment(S)) :-
    provider(P),
    high_risk_ai_system(S),
    undergoes_conformity_assessment(S),
    substantial_modification_occurred(Change, S),
    \+ predetermined_learning_change(Change, S).
empowered_delegated_acts(commission, amend(annex_6)).
empowered_delegated_acts(commission, amend(annex_7)).
empowered_delegated_acts(commission, amend(article_43_par_1)).
empowered_delegated_acts(commission, amend(article_43_par_2)).
provenance(permitted_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(required_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(acting_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(must_comply/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_opt_out_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(empowered_delegated_acts/2, 'celex:32024R1689/oj#art_43').
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
declared(certificate/1, 'conformity certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_issued_by/2, 'notified body issued the certificate', 'celex:32024R1689/oj#art_44').
declared(certificate_for_system/2, 'certificate applies to the specified AI system', 'celex:32024R1689/oj#art_44').
declared(system_covered_by_annex_3/1, 'AI system covered by Annex III', 'celex:32024R1689/oj#art_44').
declared(language_easily_understood_by_authorities/2, 'certificate is drawn up in a language easily understood by relevant authorities in Member State', 'celex:32024R1689/oj#art_44').
declared(permitted_validity_period/2, 'permitted initial validity period of a certificate for an AI system', 'celex:32024R1689/oj#art_44').
declared(requested_extension/2, 'provider requested extension of certificate validity', 'celex:32024R1689/oj#art_44').
declared(reassessed_conformity/2, 're-assessment conducted in accordance with applicable conformity assessment procedures', 'celex:32024R1689/oj#art_44').
declared(supplement_to_certificate/2, 'supplement is associated with a principal certificate', 'celex:32024R1689/oj#art_44').
declared(valid_certificate/1, 'certificate is currently valid', 'celex:32024R1689/oj#art_44').
declared(certificate_supplement_valid/1, 'supplement to a certificate remains valid', 'celex:32024R1689/oj#art_44').
declared(compliance_ensured_by_corrective_action/2, 'compliance is ensured by appropriate corrective action within deadline set by notified body', 'celex:32024R1689/oj#art_44').
declared(must_suspend_withdraw_or_restrict/2, 'notified body must suspend, withdraw, or impose restrictions on a certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'notified body must give reasons for its decision on certificate', 'celex:32024R1689/oj#art_44').
declared(appeal_procedure_available/1, 'appeal procedure is available against decisions of notified body', 'celex:32024R1689/oj#art_44').
must_comply(NotifiedBody, draw_up_language(Cert)) :-
    certificate(Cert),
    certificate_issued_by(Cert, NotifiedBody),
    notified_body(NotifiedBody),
    \+ language_easily_understood_by_authorities(Cert, NotifiedBody).
permitted_validity_period(Cert, years(5)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System).
permitted_validity_period(Cert, years(4)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System).
permitted_extension(Cert, years(5)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System),
    requested_extension(Provider, Cert),
    provider(Provider),
    reassessed_conformity(Cert, System).
permitted_extension(Cert, years(4)) :-
    certificate(Cert),
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System),
    requested_extension(Provider, Cert),
    provider(Provider),
    reassessed_conformity(Cert, System).
certificate_supplement_valid(Supplement) :-
    supplement_to_certificate(Supplement, Cert),
    valid_certificate(Cert).
must_suspend_withdraw_or_restrict(NotifiedBody, Cert) :-
    certificate(Cert),
    certificate_issued_by(Cert, NotifiedBody),
    certificate_for_system(Cert, System),
    notified_body(NotifiedBody),
    \+ complies_with_chapter_3_section_2(System),
    \+ compliance_ensured_by_corrective_action(System, NotifiedBody).
must_give_reasons(NotifiedBody, decision(Cert)) :-
    must_suspend_withdraw_or_restrict(NotifiedBody, Cert).
must_comply(NotifiedBody, appeal_procedure_available) :-
    notified_body(NotifiedBody),
    \+ appeal_procedure_available(NotifiedBody).
provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_issued_by/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_for_system/2, 'celex:32024R1689/oj#art_44').
provenance(system_covered_by_annex_3/1, 'celex:32024R1689/oj#art_44').
provenance(language_easily_understood_by_authorities/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(requested_extension/2, 'celex:32024R1689/oj#art_44').
provenance(reassessed_conformity/2, 'celex:32024R1689/oj#art_44').
provenance(supplement_to_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_supplement_valid/1, 'celex:32024R1689/oj#art_44').
provenance(compliance_ensured_by_corrective_action/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_withdraw_or_restrict/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
provenance(must_comply/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'actor must inform recipient of specified information or decision', 'celex:32024R1689/oj#art_45').
declared(notifying_authority_of/2, 'notifying authority responsible for a notified body', 'celex:32024R1689/oj#art_45').
declared(similar_notified_body/2, 'notified body carrying out similar conformity assessment activities covering the same types of AI systems', 'celex:32024R1689/oj#art_45').
declared(request_for_information_received/2, 'request for information received by an entity from an authority regarding activities', 'celex:32024R1689/oj#art_45').
declared(request_received/2, 'request received by an entity for specified information', 'celex:32024R1689/oj#art_45').
declared(must_provide_information/2, 'actor must provide information to a recipient', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'actor must safeguard the confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform(B, informing(Auth, certificate_or_approval_issued(Doc))) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        supplement_to_union_technical_documentation_assessment_certificate,
        quality_management_system_approval
    ]).
must_inform(B, informing(Auth, Decision)) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    member(Action, [refusal, restriction, suspension, withdrawal]),
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        quality_management_system_approval
    ]),
    Decision = adverse_decision(Action, Doc).
must_inform(B, informing(Auth, circumstances_affecting_notification_scope_or_conditions)) :-
    notified_body(B),
    notifying_authority_of(Auth, B).
must_inform(B, informing(Auth, request_from_market_surveillance(Req))) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    request_for_information_received(B, Req).
must_inform(B, informing(Auth, conformity_activities_performed(Activities))) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    request_received(B, request_for_activities(Activities)).
must_inform(B, informing(OtherB, adverse_decision(Action, quality_management_system_approval))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    member(Action, [refusal, suspension, withdrawal]).
must_inform(B, informing(OtherB, issued(quality_management_system_approval))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    request_received(B, request_for_issued_quality_management_system_approvals(OtherB)).
must_inform(B, informing(OtherB, adverse_decision(Action, Doc))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    member(Action, [refusal, withdrawal, suspension, restriction]),
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        supplement_to_union_technical_documentation_assessment_certificate
    ]).
must_inform(B, informing(OtherB, issued(Doc))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        supplement_to_union_technical_documentation_assessment_certificate
    ]),
    request_received(B, request_for_issued_certificates(OtherB)).
must_provide_information(B, recipient(OtherB, negative_conformity_assessment_results)) :-
    notified_body(B),
    similar_notified_body(OtherB, B).
must_provide_information(B, recipient(OtherB, positive_conformity_assessment_results)) :-
    notified_body(B),
    similar_notified_body(OtherB, B),
    request_received(B, request_for_positive_results(OtherB)).
must_safeguard_confidentiality(B, obtained_information) :-
    notified_body(B).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_46').
declared(civil_protection_authority/1, 'civil protection authority', 'celex:32024R1689/oj#art_46').
declared(exceptional_derogation_reason/1, 'exceptional reason justifying derogation from conformity assessment', 'celex:32024R1689/oj#art_46').
declared(urgency_reason/1, 'exceptional urgency reason for putting high-risk AI system into service', 'celex:32024R1689/oj#art_46').
declared(requested_authorisation_without_undue_delay/2, 'entity requested derogation authorisation during or after use without undue delay', 'celex:32024R1689/oj#art_46').
declared(permitted_authorisation/2, 'market surveillance authority may authorise derogation for placing on market or putting into service', 'celex:32024R1689/oj#art_46').
declared(permitted_put_into_service_urgency/2, 'authority may put high-risk AI system into service without prior authorisation in urgency', 'celex:32024R1689/oj#art_46').
declared(must_stop_use_and_discard_outputs/2, 'authority must stop use immediately and discard all outputs if derogation refused', 'celex:32024R1689/oj#art_46').
declared(must_inform/2, 'market surveillance authority must inform recipient of authorisation', 'celex:32024R1689/oj#art_46').
declared(objection_raised/2, 'Member State or Commission raised objection to authorisation within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(objection_raised_or_considered_unfounded/2, 'objection raised or Commission considers authorisation contrary to law or conclusion unfounded', 'celex:32024R1689/oj#art_46').
declared(must_consult/2, 'Commission must enter into consultations with relevant Member State and operators', 'celex:32024R1689/oj#art_46').
declared(must_withdraw_authorisation/2, 'market surveillance authority must withdraw authorisation if considered unjustified', 'celex:32024R1689/oj#art_46').
declared(commission_considers_unjustified/2, 'Commission considers derogation authorisation unjustified', 'celex:32024R1689/oj#art_46').
declared(annex_1_section_a_system/1, 'high-risk AI system related to products covered by Union harmonisation legislation in Annex I Section A', 'celex:32024R1689/oj#art_46').
declared(exempt_from_article_46_derogation/1, 'AI system exempt from Article 46 derogation mechanism', 'celex:32024R1689/oj#art_46').
permitted_authorisation(MSA, derogation(System, MemberState)) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(System),
    \+ exempt_from_article_46_derogation(System),
    complies_with_chapter_3_section_2(System),
    exceptional_derogation_reason(derogation(System, MemberState)).
permitted_put_into_service_urgency(Authority, System) :-
    high_risk_ai_system(System),
    ( law_enforcement_authority(Authority) ; civil_protection_authority(Authority) ),
    urgency_reason(System),
    requested_authorisation_without_undue_delay(Authority, System).
must_stop_use_and_discard_outputs(Authority, System) :-
    high_risk_ai_system(System),
    ( law_enforcement_authority(Authority) ; civil_protection_authority(Authority) ),
    \+ permitted_authorisation(_MSA, derogation(System, _MemberState)).
must_inform(MSA, commission(authorisation(System))) :-
    market_surveillance_authority(MSA),
    permitted_authorisation(MSA, derogation(System, _MemberState)).
must_inform(MSA, member_states(authorisation(System))) :-
    market_surveillance_authority(MSA),
    permitted_authorisation(MSA, derogation(System, _MemberState)).
deemed_justified(authorisation(System, MemberState)) :-
    market_surveillance_authority(MSA),
    permitted_authorisation(MSA, derogation(System, MemberState)),
    \+ objection_raised(within(days(15)), authorisation(System, MemberState)).
must_consult(Commission, consultation(MemberState, operators(System))) :-
    commission(Commission),
    objection_raised_or_considered_unfounded(within(days(15)), authorisation(System, MemberState)).
must_decide(Commission, justification(authorisation(System, MemberState))) :-
    commission(Commission),
    objection_raised_or_considered_unfounded(within(days(15)), authorisation(System, MemberState)).
must_withdraw_authorisation(MSA, authorisation(System, MemberState)) :-
    market_surveillance_authority(MSA),
    commission(Commission),
    commission_considers_unjustified(Commission, authorisation(System, MemberState)).
exempt_from_article_46_derogation(System) :-
    annex_1_section_a_system(System).
provenance(permitted_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_urgency/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_outputs/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(must_consult/2, 'celex:32024R1689/oj#art_46').
provenance(must_decide/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(exempt_from_article_46_derogation/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity for an AI system', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity_for/2, 'EU declaration of conformity drawn up for an AI system', 'celex:32024R1689/oj#art_47').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_47').
declared(subject_to_other_union_harmonisation_legislation_requiring_declaration/1, 'AI system is subject to other Union harmonisation legislation requiring an EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(single_eu_declaration_of_conformity/1, 'single EU declaration of conformity covering all applicable Union law', 'celex:32024R1689/oj#art_47').
declared(requested_by/2, 'an authority has requested an item from an actor', 'celex:32024R1689/oj#art_47').
declared(permitted_adopt_delegated_acts/2, 'actor is empowered to adopt delegated acts on a matter', 'celex:32024R1689/oj#art_47').
must_draw_up(Provider, eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_keep(Provider, at_disposal(Declaration, national_competent_authority, period(years(10), after(placed_or_put_into_service(System))))) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    eu_declaration_of_conformity_for(Declaration, System).
must_submit(Provider, copy(Declaration, Authority)) :-
    provider_of(Provider, System),
    eu_declaration_of_conformity_for(Declaration, System),
    national_competent_authority(Authority),
    requested_by(Authority, Declaration).
must_draw_up(Provider, single_eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation_requiring_declaration(System).
must_update(Provider, Declaration) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    eu_declaration_of_conformity_for(Declaration, System).
permitted_adopt_delegated_acts(Commission, amend_annex_5) :-
    commission(Commission).
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit/2, 'celex:32024R1689/oj#art_47').
provenance(must_update/2, 'celex:32024R1689/oj#art_47').
provenance(permitted_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'System is provided digitally', 'celex:32024R1689/oj#art_48').
declared(easily_accessible_digitally/1, 'CE marking is easily accessible via interface, machine-readable code, or other electronic means', 'celex:32024R1689/oj#art_48').
declared(permitted_ce_marking/2, 'Type of CE marking permitted for an AI system', 'celex:32024R1689/oj#art_48').
declared(required_ce_marking/2, 'Affixing location or manner required for the CE marking of an AI system', 'celex:32024R1689/oj#art_48').
declared(affixing_on_system_possible_and_warranted/1, 'Affixing visibly, legibly and indelibly directly on the system is possible and warranted', 'celex:32024R1689/oj#art_48').
declared(conformity_assessment_involves_notified_body/2, 'Conformity assessment under Article 43 involves the specified notified body', 'celex:32024R1689/oj#art_48').
declared(permitted_affix_identification_number/2, 'Actor permitted to affix the notified body identification number', 'celex:32024R1689/oj#art_48').
declared(required_in_promotional_material/2, 'Item required to be indicated in promotional material for an AI system', 'celex:32024R1689/oj#art_48').
declared(mentions_fulfils_ce_marking_requirements/1, 'Promotional material mentions that the system fulfils requirements for CE marking', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_union_law_providing_ce_marking/2, 'High-risk AI system is subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
declared(required_ce_marking_indication/2, 'Indication required to be made by the CE marking for a system', 'celex:32024R1689/oj#art_48').
required_ce_marking(S, general_principles_regulation_765_2008) :-
    high_risk_ai_system(S).
permitted_ce_marking(S, digital) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_digitally(S).
required_ce_marking(S, direct_visible_legible_indelible) :-
    high_risk_ai_system(S),
    affixing_on_system_possible_and_warranted(S).
required_ce_marking(S, packaging_or_accompanying_documentation) :-
    high_risk_ai_system(S),
    \+ affixing_on_system_possible_and_warranted(S).
required_ce_marking(S, followed_by_notified_body_identification_number(B)) :-
    high_risk_ai_system(S),
    conformity_assessment_involves_notified_body(S, B),
    notified_body(B).
permitted_affix_identification_number(B, identification_number(B)) :-
    notified_body(B).
permitted_affix_identification_number(P, identification_number(B)) :-
    provider(P),
    notified_body(B).
permitted_affix_identification_number(AR, identification_number(B)) :-
    authorised_representative(AR),
    notified_body(B).
required_in_promotional_material(M, identification_number(B)) :-
    mentions_fulfils_ce_marking_requirements(M),
    conformity_assessment_involves_notified_body(S, B),
    high_risk_ai_system(S).
required_ce_marking_indication(S, fulfills_requirements_of(Law)) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_providing_ce_marking(S, Law).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_48').
provenance(provided_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(easily_accessible_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(permitted_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(affixing_on_system_possible_and_warranted/1, 'celex:32024R1689/oj#art_48').
provenance(conformity_assessment_involves_notified_body/2, 'celex:32024R1689/oj#art_48').
provenance(permitted_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(required_in_promotional_material/2, 'celex:32024R1689/oj#art_48').
provenance(mentions_fulfils_ce_marking_requirements/1, 'celex:32024R1689/oj#art_48').
provenance(subject_to_other_union_law_providing_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking_indication/2, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_49').
declared(annex_3_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(concluded_not_high_risk/2, 'provider concluded that AI system is not high-risk under Art. 6(3)', 'celex:32024R1689/oj#art_49').
declared(public_authority/1, 'entity is a public authority', 'celex:32024R1689/oj#art_49').
declared(acts_on_behalf_of/2, 'person or entity acts on behalf of another entity', 'celex:32024R1689/oj#art_49').
declared(sensitive_area_annex_3_registration/1, 'high-risk system in Annex III point 1, 6, or 7 in law enforcement, migration, asylum or border control', 'celex:32024R1689/oj#art_49').
declared(permitted_access_restricted_section/2, 'actor has access to restricted section of EU database', 'celex:32024R1689/oj#art_49').
declared(national_level_registration_required/1, 'AI system is required to be registered at national level', 'celex:32024R1689/oj#art_49').
declared(national_authority_art_74_8/1, 'national authority referred to in Article 74(8)', 'celex:32024R1689/oj#art_49').
must_comply(Actor, register_in_eu_database(Actor, System)) :-
    provider(Actor),
    high_risk_ai_system(System),
    annex_3_system(System),
    \+ annex_3_point_2_system(System).
must_comply(Actor, register_in_eu_database(Actor, System)) :-
    authorised_representative_of(Actor, Provider),
    provider(Provider),
    high_risk_ai_system(System),
    annex_3_system(System),
    \+ annex_3_point_2_system(System).
must_comply(Actor, register_in_eu_database(Actor, System)) :-
    provider(Actor),
    concluded_not_high_risk(Actor, System).
must_comply(Actor, register_in_eu_database(Actor, System)) :-
    authorised_representative_of(Actor, Provider),
    provider(Provider),
    concluded_not_high_risk(Provider, System).
must_comply(Deployer, register_and_select_use_in_eu_database(Deployer, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    annex_3_system(System),
    \+ annex_3_point_2_system(System),
    ( public_authority(Deployer)
    ; union_institution_body_office_agency(Deployer)
    ; ( acts_on_behalf_of(Deployer, Body),
        ( public_authority(Body) ; union_institution_body_office_agency(Body) ) )
    ).
permitted_access_restricted_section(Actor, restricted_section(System)) :-
    sensitive_area_annex_3_registration(System),
    commission(Actor).
permitted_access_restricted_section(Actor, restricted_section(System)) :-
    sensitive_area_annex_3_registration(System),
    national_authority_art_74_8(Actor).
national_level_registration_required(System) :-
    high_risk_ai_system(System),
    annex_3_point_2_system(System).
provenance(must_comply/2, 'celex:32024R1689/oj#art_49').
provenance(permitted_access_restricted_section/2, 'celex:32024R1689/oj#art_49').
provenance(national_level_registration_required/1, 'celex:32024R1689/oj#art_49').
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
declared(interacts_directly_with_natural_persons/1, 'AI system is intended to interact directly with natural persons', 'celex:32024R1689/oj#art_50').
declared(interaction_obviously_ai/1, 'interaction with AI system is obvious to a reasonably observant person', 'celex:32024R1689/oj#art_50').
declared(authorised_by_law_for_criminal_investigation/1, 'system is authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(available_to_public_to_report_crime/1, 'system is available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generates synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(assistive_function_for_standard_editing/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(does_not_substantially_alter_input_data/1, 'AI system does not substantially alter input data or semantics', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_deep_fake/1, 'AI system generates or manipulates image, audio or video content constituting a deep fake', 'celex:32024R1689/oj#art_50').
declared(artistic_or_creative_work/1, 'content forms part of an artistic, creative, satirical or fictional work', 'celex:32024R1689/oj#art_50').
declared(publishes_text_for_public_interest_information/1, 'system generates or manipulates text published to inform the public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(editorial_responsibility_held/1, 'content has undergone human review/editorial control and a person holds editorial responsibility', 'celex:32024R1689/oj#art_50').
declared(provider_of/2, 'provider developed or placed the AI system', 'celex:32024R1689/oj#art_50').
declared(deployer_of/2, 'deployer uses the AI system', 'celex:32024R1689/oj#art_50').
declared(exempt_transparency_interaction/1, 'exemption from AI interaction disclosure obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_transparency_marking/1, 'exemption from synthetic content marking obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_transparency_biometric/1, 'exemption from biometric categorisation or emotion recognition notification', 'celex:32024R1689/oj#art_50').
declared(exempt_deep_fake_disclosure/1, 'exemption from deep fake disclosure obligation', 'celex:32024R1689/oj#art_50').
declared(exempt_public_interest_text_disclosure/1, 'exemption from public interest text disclosure obligation', 'celex:32024R1689/oj#art_50').
exempt_transparency_interaction(S) :-
    interaction_obviously_ai(S).
exempt_transparency_interaction(S) :-
    authorised_by_law_for_criminal_investigation(S),
    \+ available_to_public_to_report_crime(S).
must_comply(Provider, design_and_develop_for_interaction_disclosure(S)) :-
    provider(Provider),
    provider_of(Provider, S),
    ai_system(S),
    interacts_directly_with_natural_persons(S),
    \+ exempt_transparency_interaction(S).
exempt_transparency_marking(S) :-
    assistive_function_for_standard_editing(S).
exempt_transparency_marking(S) :-
    does_not_substantially_alter_input_data(S).
exempt_transparency_marking(S) :-
    authorised_by_law_for_criminal_investigation(S).
must_comply(Provider, mark_detectable_synthetic_content(S)) :-
    provider(Provider),
    provider_of(Provider, S),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_transparency_marking(S).
exempt_transparency_biometric(S) :-
    authorised_by_law_for_criminal_investigation(S).
must_comply(Deployer, inform_exposed_natural_persons(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    emotion_recognition_system(S),
    \+ exempt_transparency_biometric(S).
must_comply(Deployer, inform_exposed_natural_persons(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    biometric_categorisation_system(S),
    \+ exempt_transparency_biometric(S).
exempt_deep_fake_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).
must_comply(Deployer, disclose_deep_fake(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    ai_system(S),
    generates_or_manipulates_deep_fake(S),
    \+ artistic_or_creative_work(S),
    \+ exempt_deep_fake_disclosure(S).
must_comply(Deployer, disclose_artistic_deep_fake(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    ai_system(S),
    generates_or_manipulates_deep_fake(S),
    artistic_or_creative_work(S),
    \+ exempt_deep_fake_disclosure(S).
exempt_public_interest_text_disclosure(S) :-
    authorised_by_law_for_criminal_investigation(S).
exempt_public_interest_text_disclosure(S) :-
    editorial_responsibility_held(S).
must_comply(Deployer, disclose_public_interest_text(S)) :-
    deployer(Deployer),
    deployer_of(Deployer, S),
    ai_system(S),
    publishes_text_for_public_interest_information(S),
    \+ exempt_public_interest_text_disclosure(S).
must_comply(Office, facilitate_codes_of_practice(labelling_and_detection)) :-
    ai_office(Office).
provenance(interacts_directly_with_natural_persons/1, 'celex:32024R1689/oj#art_50').
provenance(interaction_obviously_ai/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_by_law_for_criminal_investigation/1, 'celex:32024R1689/oj#art_50').
provenance(available_to_public_to_report_crime/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function_for_standard_editing/1, 'celex:32024R1689/oj#art_50').
provenance(does_not_substantially_alter_input_data/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_creative_work/1, 'celex:32024R1689/oj#art_50').
provenance(publishes_text_for_public_interest_information/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
provenance(provider_of/2, 'celex:32024R1689/oj#art_50').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_marking/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_transparency_biometric/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_deep_fake_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_public_interest_text_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(must_comply/2, 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_51 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'General-purpose AI model classified as presenting systemic risk', 'celex:32024R1689/oj#art_51').
declared(commission_decision_systemic_risk/1, 'Commission decision classifying a general-purpose AI model as having equivalent capabilities/impact to high-impact capabilities', 'celex:32024R1689/oj#art_51').
declared(cumulative_computation_training_flops/2, 'Cumulative amount of computation used for training an AI model measured in floating point operations', 'celex:32024R1689/oj#art_51').
declared(must_adopt_delegated_acts/2, 'Commission must adopt delegated acts to amend thresholds or supplement benchmarks and indicators', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_systemic_risk(M).
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_computation_training_flops(M, Flops),
    Flops > 1.0e25.
must_adopt_delegated_acts(Commission, amend_thresholds_or_supplement_benchmarks(art_51)) :-
    commission(Commission).
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
declared(provider_of_model/2, 'Entity is the provider of a specific general-purpose AI model', 'celex:32024R1689/oj#art_52').
declared(presents_systemic_risk/1, 'General-purpose AI model presents systemic risks', 'celex:32024R1689/oj#art_52').
declared(notified_to_commission/1, 'General-purpose AI model has been notified to the Commission', 'celex:32024R1689/oj#art_52').
declared(permitted_designate_as_systemic_risk/2, 'Authority is permitted to designate an AI model as presenting systemic risk', 'celex:32024R1689/oj#art_52').
declared(permitted_present_arguments_not_systemic_risk/2, 'Provider may present substantiated arguments that the model does not present systemic risk', 'celex:32024R1689/oj#art_52').
declared(sufficiently_substantiated_exception_arguments/2, 'Provider submitted sufficiently substantiated arguments demonstrating model does not present systemic risks', 'celex:32024R1689/oj#art_52').
declared(qualified_alert_from_scientific_panel/1, 'Scientific panel issued a qualified alert pursuant to Article 90(1)(a) for model', 'celex:32024R1689/oj#art_52').
declared(meets_annex_13_criteria/1, 'General-purpose AI model meets criteria in Annex XIII', 'celex:32024R1689/oj#art_52').
declared(designation_pursuant_to_par_4/1, 'Model was designated as general-purpose AI model with systemic risk pursuant to paragraph 4', 'celex:32024R1689/oj#art_52').
declared(permitted_request_reassessment/2, 'Provider may request reassessment of systemic risk designation', 'celex:32024R1689/oj#art_52').
declared(elapsed_since_designation_or_reassessment/2, 'Time elapsed since the designation decision or maintenance decision', 'celex:32024R1689/oj#art_52').
declared(contains_objective_detailed_new_reasons/1, 'Reassessment request contains objective, detailed and new reasons', 'celex:32024R1689/oj#art_52').
declared(permitted_reassess/2, 'Commission may decide to reassess designation of a general-purpose AI model', 'celex:32024R1689/oj#art_52').
declared(general_purpose_ai_model_with_systemic_risk/1, 'Model is classified/considered a general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_52').
declared(must_notify/2, 'Actor must notify entity or object', 'celex:32024R1689/oj#art_52').
declared(must_publish/2, 'Actor must publish specified item', 'celex:32024R1689/oj#art_52').
must_notify(Provider, notification(commission, Model, within(weeks(2)))) :-
    general_purpose_ai_model(Model),
    provider_of_model(Provider, Model),
    meets_condition_art_51_1_a(Model).
permitted_designate_as_systemic_risk(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    presents_systemic_risk(Model),
    \+ notified_to_commission(Model).
permitted_present_arguments_not_systemic_risk(Provider, Model) :-
    general_purpose_ai_model(Model),
    provider_of_model(Provider, Model),
    meets_condition_art_51_1_a(Model).
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    \+ sufficiently_substantiated_exception_arguments(_Provider, Model).
permitted_designate_as_systemic_risk(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    meets_annex_13_criteria(Model).
permitted_designate_as_systemic_risk(Commission, Model) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    qualified_alert_from_scientific_panel(Model),
    meets_annex_13_criteria(Model).
permitted_request_reassessment(Provider, Model) :-
    provider_of_model(Provider, Model),
    designation_pursuant_to_par_4(Model),
    elapsed_since_designation_or_reassessment(Model, at_least(months(6))),
    contains_objective_detailed_new_reasons(Model).
permitted_reassess(Commission, Model) :-
    commission(Commission),
    permitted_request_reassessment(_Provider, Model).
must_publish(Commission, list_of_general_purpose_ai_models_with_systemic_risk) :-
    commission(Commission).
provenance(meets_condition_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(provider_of_model/2, 'celex:32024R1689/oj#art_52').
provenance(presents_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(notified_to_commission/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_designate_as_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(permitted_present_arguments_not_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(sufficiently_substantiated_exception_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_52').
provenance(meets_annex_13_criteria/1, 'celex:32024R1689/oj#art_52').
provenance(designation_pursuant_to_par_4/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(elapsed_since_designation_or_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(contains_objective_detailed_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(permitted_reassess/2, 'celex:32024R1689/oj#art_52').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish/2, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(provides_model/2, 'entity is the provider of an AI model', 'celex:32024R1689/oj#art_53').
declared(free_and_open_source_licence/1, 'model is released under a free and open-source licence allowing access, use, modification, and distribution', 'celex:32024R1689/oj#art_53').
declared(model_parameters_publicly_available/1, 'parameters including weights, architecture, and usage information are publicly available', 'celex:32024R1689/oj#art_53').
declared(model_with_systemic_risk/1, 'general-purpose AI model presents systemic risks', 'celex:32024R1689/oj#art_53').
declared(exempt_documentation_obligations/1, 'model is exempt from documentation obligations under Article 53(1)(a) and (b)', 'celex:32024R1689/oj#art_53').
declared(adheres_to_approved_code_of_practice/2, 'provider adheres to an approved code of practice for a model', 'celex:32024R1689/oj#art_53').
declared(complies_with_harmonised_standard/2, 'provider complies with a European harmonised standard for a model', 'celex:32024R1689/oj#art_53').
declared(demonstrates_alternative_compliance/2, 'provider demonstrates alternative adequate means of compliance for assessment by Commission', 'celex:32024R1689/oj#art_53').
declared(permitted_rely_on_code_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(presumption_of_conformity/2, 'compliance grants presumption of conformity for obligations covered', 'celex:32024R1689/oj#art_53').
declared(empowered_to_adopt_delegated_acts/2, 'institution is empowered to adopt delegated acts on a matter', 'celex:32024R1689/oj#art_53').
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
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
exempt_documentation_obligations(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    model_parameters_publicly_available(M),
    \+ model_with_systemic_risk(M).
model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_comply(P, technical_documentation(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M),
    \+ exempt_documentation_obligations(M).
must_comply(P, downstream_information_and_documentation(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M),
    \+ exempt_documentation_obligations(M).
must_comply(P, copyright_policy(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M).
must_comply(P, public_training_summary(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M).
must_comply(P, cooperation(commission, national_competent_authorities)) :-
    provider_of_general_purpose_ai_model(P).
permitted_rely_on_code_of_practice(P, M) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M).
presumption_of_conformity(P, M) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    complies_with_harmonised_standard(P, M).
must_comply(P, demonstrate_alternative_compliance(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M),
    demonstrates_alternative_compliance(P, M).
empowered_to_adopt_delegated_acts(commission, measurement_and_calculation_methodologies_annex_11).
empowered_to_adopt_delegated_acts(commission, amend_annex_11_and_12).
must_comply(Actor, confidentiality_obligations(Doc)) :-
    technical_documentation(Doc),
    operator(Actor).
provenance(exempt_documentation_obligations/1, 'celex:32024R1689/oj#art_53').
provenance(model_with_systemic_risk/1, 'celex:32024R1689/oj#art_53').
provenance(must_comply/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_53').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_53').

% ==== celex:32024R1689/oj#art_54 ====
declared(established_in_third_country/1, 'entity established in a third country', 'celex:32024R1689/oj#art_54').
declared(established_in_union/1, 'entity established in the Union', 'celex:32024R1689/oj#art_54').
declared(free_and_open_source_licence/1, 'model released under a free and open-source licence fulfilling access, usage, modification, and distribution conditions', 'celex:32024R1689/oj#art_54').
declared(open_source_parameters_publicly_available/1, 'parameters, architecture, and usage information are made publicly available', 'celex:32024R1689/oj#art_54').
declared(exempt_authorised_representative_obligation/1, 'provider is exempt from appointing an authorised representative', 'celex:32024R1689/oj#art_54').
declared(must_appoint/2, 'actor must appoint an entity via mandate', 'celex:32024R1689/oj#art_54').
declared(must_enable/2, 'actor must enable another entity to perform specified mandate tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform/2, 'actor must perform tasks in a mandate', 'celex:32024R1689/oj#art_54').
declared(must_provide/2, 'actor must provide information or document to an authority', 'celex:32024R1689/oj#art_54').
declared(must_keep/2, 'actor must keep documentation or details for a designated period', 'celex:32024R1689/oj#art_54').
declared(must_cooperate/2, 'actor must cooperate with authority on action', 'celex:32024R1689/oj#art_54').
declared(must_terminate/2, 'actor must terminate a mandate', 'celex:32024R1689/oj#art_54').
declared(must_inform/2, 'actor must inform an authority of an event', 'celex:32024R1689/oj#art_54').
declared(non_compliant_provider/1, 'provider considered to be acting contrary to obligations', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers/2, 'mandate gives power to carry out specified tasks or roles', 'celex:32024R1689/oj#art_54').
exempt_authorised_representative_obligation(Provider) :-
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    open_source_parameters_publicly_available(Model),
    \+ systemic_risk(Model).
must_appoint(Provider, authorised_representative(AR, Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    established_in_third_country(Provider),
    authorised_representative(AR),
    established_in_union(AR),
    \+ exempt_authorised_representative_obligation(Provider).
must_enable(Provider, authorised_representative(AR, tasks(Mandate))) :-
    provider_of_general_purpose_ai_model(Provider),
    authorised_representative_of(AR, Provider),
    mandate_empowers(Mandate, AR).
must_perform(AR, tasks(Mandate)) :-
    authorised_representative(AR),
    mandate_empowers(Mandate, AR).
must_provide(AR, copy_of_mandate(ai_office)) :-
    authorised_representative(AR),
    ai_office(_Office).
must_perform(AR, verify_technical_documentation(Model)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model).
must_keep(AR, documentation_and_contact_details(Model, period(years(10), after(placing_on_market)))) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model).
must_provide(AR, compliance_information(ai_office, Model)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    ai_office(_Office).
must_cooperate(AR, action(Authority, Model)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    ( ai_office(Authority) ; national_competent_authority(Authority) ).
mandate_empowers(Mandate, AR) :-
    authorised_representative(AR),
    mandate_empowers(Mandate, addressed_by_authorities(AR)).
must_terminate(AR, mandate(Provider)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    non_compliant_provider(Provider).
must_inform(AR, termination_and_reasons(ai_office, Provider)) :-
    authorised_representative_of(AR, Provider),
    provider_of_general_purpose_ai_model(Provider),
    non_compliant_provider(Provider),
    ai_office(_Office).
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_54').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_54').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(open_source_parameters_publicly_available/1, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform/2, 'celex:32024R1689/oj#art_54').
provenance(non_compliant_provider/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers/2, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

% ==== celex:32024R1689/oj#art_55 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model that presents systemic risk', 'celex:32024R1689/oj#art_55').
declared(provider_of_model/2, 'provider develops or provides the specified model', 'celex:32024R1689/oj#art_55').
declared(code_of_practice/1, 'code of practice within the meaning of Article 56', 'celex:32024R1689/oj#art_55').
declared(adheres_to/2, 'provider adheres to a code of practice', 'celex:32024R1689/oj#art_55').
declared(complies_with/2, 'entity complies with a standard or requirement', 'celex:32024R1689/oj#art_55').
declared(harmonised_standard_published/1, 'a harmonised standard has been published covering the obligations', 'celex:32024R1689/oj#art_55').
declared(presumption_of_conformity/2, 'provider enjoys presumption of conformity regarding model obligations', 'celex:32024R1689/oj#art_55').
declared(approved/1, 'code of practice is approved', 'celex:32024R1689/oj#art_55').
declared(permitted_rely_on_code_of_practice/2, 'provider may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(information_obtained_pursuant_to/2, 'information or documentation obtained pursuant to an article', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
must_comply(Provider, model_evaluation(Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model).
must_comply(Provider, assess_and_mitigate_systemic_risks(Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model).
must_report(Provider, serious_incident_information(Model, Recipient)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    ( ai_office(Recipient) ; national_competent_authority(Recipient) ).
must_comply(Provider, cybersecurity_protection(Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model).
permitted_rely_on_code_of_practice(Provider, Code) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    code_of_practice(Code),
    \+ harmonised_standard_published(Model).
presumption_of_conformity(Provider, Model) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    harmonised_standard(Standard),
    complies_with(Provider, Standard).
must_comply(Provider, demonstrate_alternative_means(Commission, Model)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    \+ adheres_to_approved_code(Provider),
    \+ complies_with_harmonised_standard(Provider).
adheres_to_approved_code(Provider) :-
    code_of_practice(Code),
    approved(Code),
    adheres_to(Provider, Code).
complies_with_harmonised_standard(Provider) :-
    harmonised_standard(Standard),
    complies_with(Provider, Standard).
must_comply(Recipient, confidentiality(Info)) :-
    information_obtained_pursuant_to(Info, 'celex:32024R1689/oj#art_55'),
    recipient_of_information(Recipient, Info).
recipient_of_information(Recipient, Info) :-
    information_obtained_pursuant_to(Info, 'celex:32024R1689/oj#art_55'),
    ( ai_office(Recipient)
    ; national_competent_authority(Recipient)
    ; commission(Recipient)
    ).
declared(recipient_of_information/2, 'entity receiving information obtained pursuant to regulation', 'celex:32024R1689/oj#art_55').
declared(adheres_to_approved_code/1, 'provider adheres to an approved code of practice', 'celex:32024R1689/oj#art_55').
declared(complies_with_harmonised_standard/1, 'provider complies with a European harmonised standard', 'celex:32024R1689/oj#art_55').
provenance(must_comply/2, 'celex:32024R1689/oj#art_55').
provenance(must_report/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_55').
provenance(adheres_to_approved_code/1, 'celex:32024R1689/oj#art_55').
provenance(complies_with_harmonised_standard/1, 'celex:32024R1689/oj#art_55').
provenance(recipient_of_information/2, 'celex:32024R1689/oj#art_55').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
provenance(provider_of_model/2, 'celex:32024R1689/oj#art_55').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(adheres_to/2, 'celex:32024R1689/oj#art_55').
provenance(complies_with/2, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_published/1, 'celex:32024R1689/oj#art_55').
provenance(approved/1, 'celex:32024R1689/oj#art_55').
provenance(information_obtained_pursuant_to/2, 'celex:32024R1689/oj#art_55').

% ==== celex:32024R1689/oj#art_56 ====
declared(code_of_practice/1, 'Code of practice drawn up at Union level', 'celex:32024R1689/oj#art_56').
declared(artificial_intelligence_board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_56').
declared(must_encourage_and_facilitate/2, 'Entity must encourage and facilitate a process or task', 'celex:32024R1689/oj#art_56').
declared(permitted_invite_to_participate/2, 'AI Office may invite entity to participate in drawing up codes of practice', 'celex:32024R1689/oj#art_56').
declared(permitted_support_process/2, 'Stakeholder may support the drawing-up of codes of practice', 'celex:32024R1689/oj#art_56').
declared(permitted_invite_to_adhere/2, 'AI Office may invite entity to adhere to codes of practice', 'celex:32024R1689/oj#art_56').
declared(permitted_limited_adherence/2, 'Provider may limit adherence to codes of practice to specific obligations', 'celex:32024R1689/oj#art_56').
declared(explicitly_declares_interest_to_join_full_code/1, 'Provider explicitly declares interest to join the full code of practice', 'celex:32024R1689/oj#art_56').
declared(presents_systemic_risk/1, 'General-purpose AI model presents systemic risk', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate/2, 'Entity must monitor and evaluate an object or achievement', 'celex:32024R1689/oj#art_56').
declared(must_assess/2, 'Entity must assess an object or compliance', 'celex:32024R1689/oj#art_56').
declared(must_publish/2, 'Entity must publish a document or assessment', 'celex:32024R1689/oj#art_56').
declared(permitted_approve_code_of_practice/2, 'Commission may approve a code of practice via implementing act', 'celex:32024R1689/oj#art_56').
declared(deadline_code_of_practice/1, 'Statutory deadline for finalising codes of practice', 'celex:32024R1689/oj#art_56').
declared(permitted_provide_common_rules/2, 'Commission may provide common rules via implementing acts', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_finalised/1, 'Code of practice has been finalised', 'celex:32024R1689/oj#art_56').
declared(deemed_adequate/2, 'Authority deems a code of practice adequate following assessment', 'celex:32024R1689/oj#art_56').
declared(civil_society_organisation/1, 'Civil society organisation', 'celex:32024R1689/oj#art_56').
declared(academia/1, 'Academic institution or body', 'celex:32024R1689/oj#art_56').
declared(industry_stakeholder/1, 'Industry stakeholder', 'celex:32024R1689/oj#art_56').
declared(independent_expert/1, 'Independent expert', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate(Office, drawing_up(codes_of_practice)) :-
    ai_office(Office).
permitted_invite_to_participate(Office, invite_to_draw_up(Actor, C)) :-
    ai_office(Office),
    code_of_practice(C),
    provider_of_general_purpose_ai_model(Actor).
permitted_invite_to_participate(Office, invite_to_draw_up(Authority, C)) :-
    ai_office(Office),
    code_of_practice(C),
    national_competent_authority(Authority).
permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    civil_society_organisation(Actor).
permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    industry_stakeholder(Actor).
permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    academia(Actor).
permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    downstream_provider(Actor).
permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    independent_expert(Actor).
must_monitor_and_evaluate(Actor, objectives(C)) :-
    code_of_practice(C),
    ( ai_office(Actor) ; artificial_intelligence_board(Actor) ).
must_assess(Actor, coverage(C, obligations(articles_53_and_55))) :-
    code_of_practice(C),
    ( ai_office(Actor) ; artificial_intelligence_board(Actor) ).
must_publish(Actor, assessment(adequacy(C))) :-
    code_of_practice(C),
    ( ai_office(Actor) ; artificial_intelligence_board(Actor) ).
permitted_approve_code_of_practice(Commission, C) :-
    commission(Commission),
    code_of_practice(C).
permitted_invite_to_adhere(Office, adhere(Provider, C)) :-
    ai_office(Office),
    code_of_practice(C),
    provider_of_general_purpose_ai_model(Provider).
permitted_limited_adherence(Provider, adherence_to(C, obligations(article_53))) :-
    code_of_practice(C),
    provider_of_general_purpose_ai_model(Provider),
    \+ presents_systemic_risk(Provider),
    \+ explicitly_declares_interest_to_join_full_code(Provider).
must_encourage_and_facilitate(Office, review_and_adaptation(codes_of_practice)) :-
    ai_office(Office).
deadline_code_of_practice(date(2025, 5, 2)).
permitted_provide_common_rules(Commission, implementing_act(obligations(articles_53_and_55))) :-
    commission(Commission),
    \+ code_of_practice_finalised(code_of_practice).
permitted_provide_common_rules(Commission, implementing_act(obligations(articles_53_and_55))) :-
    commission(Commission),
    ai_office(Office),
    \+ deemed_adequate(Office, code_of_practice).
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(artificial_intelligence_board/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_participate/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_support_process/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_adhere/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_limited_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(explicitly_declares_interest_to_join_full_code/1, 'celex:32024R1689/oj#art_56').
provenance(presents_systemic_risk/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_approve_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(deadline_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_finalised/1, 'celex:32024R1689/oj#art_56').
provenance(deemed_adequate/2, 'celex:32024R1689/oj#art_56').
provenance(civil_society_organisation/1, 'celex:32024R1689/oj#art_56').
provenance(academia/1, 'celex:32024R1689/oj#art_56').
provenance(industry_stakeholder/1, 'celex:32024R1689/oj#art_56').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_56').
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
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_57').
declared(edps/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_57').
declared(prospective_provider/1, 'entity intending to become a provider of an AI system', 'celex:32024R1689/oj#art_57').
declared(observes_sandbox_plan/1, 'provider observes the agreed sandbox plan and conditions', 'celex:32024R1689/oj#art_57').
declared(follows_guidance_in_good_faith/1, 'provider follows in good faith guidance given by the competent authority', 'celex:32024R1689/oj#art_57').
declared(exempt_administrative_fines/1, 'actor is exempt from administrative fines for infringements', 'celex:32024R1689/oj#art_57').
declared(permitted_sandbox_activity/2, 'authority or entity is permitted to carry out sandbox-related action', 'celex:32024R1689/oj#art_57').
declared(permitted_suspend_testing/2, 'authority is permitted to temporarily or permanently suspend testing in sandbox', 'celex:32024R1689/oj#art_57').
declared(objective_regulatory_sandbox/1, 'regulatory sandbox pursues designated objective', 'celex:32024R1689/oj#art_57').
must_comply(MS, establish_national_regulatory_sandbox) :-
    member_state(MS).
permitted_sandbox_activity(Supervisor, establish_sandbox_for(Institutions)) :-
    edps(Supervisor),
    union_institution_body_office_agency(Institutions).
must_comply(Auth, allocate_sufficient_resources(regulatory_sandbox)) :-
    national_competent_authority(Auth).
must_comply(Auth, provide_sandbox_guidance) :-
    national_competent_authority(Auth).
must_comply(Auth, provide_written_proof(System)) :-
    national_competent_authority(Auth),
    ai_system(System).
must_comply(Auth, provide_exit_report(System)) :-
    national_competent_authority(Auth),
    ai_system(System).
objective_regulatory_sandbox(improve_legal_certainty).
objective_regulatory_sandbox(support_best_practices).
objective_regulatory_sandbox(foster_innovation_and_competitiveness).
objective_regulatory_sandbox(contribute_evidence_based_learning).
objective_regulatory_sandbox(facilitate_market_access_smes).
permitted_suspend_testing(Auth, testing(System)) :-
    national_competent_authority(Auth),
    ai_system(System),
    risk(System),
    \+ adequate_corrective_action_taken(_Provider, System).
must_report(Auth, suspension_decision(System)) :-
    national_competent_authority(Auth),
    ai_system(System),
    permitted_suspend_testing(Auth, testing(System)).
exempt_administrative_fines(Entity) :-
    provider(Entity),
    observes_sandbox_plan(Entity),
    follows_guidance_in_good_faith(Entity).
exempt_administrative_fines(Entity) :-
    prospective_provider(Entity),
    observes_sandbox_plan(Entity),
    follows_guidance_in_good_faith(Entity).
must_report(Auth, establishment_of_sandbox(Sandbox)) :-
    national_competent_authority(Auth),
    ai_regulatory_sandbox(Sandbox).
must_report(Auth, annual_report(Sandbox)) :-
    national_competent_authority(Auth),
    ai_regulatory_sandbox(Sandbox).
must_report(Auth, final_report(Sandbox)) :-
    national_competent_authority(Auth),
    ai_regulatory_sandbox(Sandbox).
provenance(must_comply/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_sandbox_activity/2, 'celex:32024R1689/oj#art_57').
provenance(objective_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(permitted_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_report/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_administrative_fines/1, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/2, 'actor must adopt implementing acts on a matter', 'celex:32024R1689/oj#art_58').
declared(must_inform/2, 'actor must inform recipient of a decision or matter', 'celex:32024R1689/oj#art_58').
declared(permitted_submit_application/2, 'actor is permitted to submit an application for a procedure', 'celex:32024R1689/oj#art_58').
declared(prospective_provider/1, 'entity intending to become a provider of an AI system', 'celex:32024R1689/oj#art_58').
declared(small_or_medium_enterprise/1, 'small or medium-sized enterprise including start-ups', 'celex:32024R1689/oj#art_58').
declared(exempt_fees/2, 'entity is exempt from fees for participation or access', 'celex:32024R1689/oj#art_58').
declared(must_direct/2, 'actor must direct prospective provider to services', 'celex:32024R1689/oj#art_58').
declared(must_agree/2, 'actor must agree terms, conditions and safeguards with participants', 'celex:32024R1689/oj#art_58').
declared(must_cooperate/2, 'actor must cooperate with another actor for consistency', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts(C, detailed_arrangements(ai_regulatory_sandbox)) :-
    commission(C).
must_inform(Auth, decision(application(ai_regulatory_sandbox), within(months(3)))) :-
    national_competent_authority(Auth).
permitted_submit_application(P, partnership(ai_regulatory_sandbox, deployers_or_third_parties)) :-
    provider(P).
permitted_submit_application(P, partnership(ai_regulatory_sandbox, deployers_or_third_parties)) :-
    prospective_provider(P).
exempt_fees(E, access(ai_regulatory_sandbox)) :-
    small_or_medium_enterprise(E).
must_direct(Auth, prospective_provider_services(P)) :-
    national_competent_authority(Auth),
    prospective_provider(P).
must_agree(Auth, terms_and_safeguards(testing_in_real_world_conditions, participants)) :-
    national_competent_authority(Auth).
must_cooperate(Auth, other_national_competent_authorities) :-
    national_competent_authority(Auth).
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(must_inform/2, 'celex:32024R1689/oj#art_58').
provenance(permitted_submit_application/2, 'celex:32024R1689/oj#art_58').
provenance(exempt_fees/2, 'celex:32024R1689/oj#art_58').
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_processing/2, 'Entity or operation is permitted to process specified personal data for AI system development, training and testing in a sandbox', 'celex:32024R1689/oj#art_59').
declared(lawfully_collected_for_other_purposes/1, 'Personal data was lawfully collected for other purposes', 'celex:32024R1689/oj#art_59').
declared(objective_substantial_public_interest_area/1, 'AI system is developed for safeguarding substantial public interest in specified qualifying areas', 'celex:32024R1689/oj#art_59').
declared(necessary_for_complying_requirements/2, 'Processing of personal data is necessary for compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_59').
declared(cannot_effectively_fulfil_with_non_personal_data/2, 'Requirements cannot effectively be fulfilled by processing non-personal data', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_and_response_mechanisms_present/1, 'Sandbox experimentation has effective monitoring and prompt risk-mitigation response mechanisms', 'celex:32024R1689/oj#art_59').
declared(isolated_protected_processing_environment/2, 'Data in sandbox is in a functionally separate, isolated, protected environment under provider control with access restricted to authorised persons', 'celex:32024R1689/oj#art_59').
declared(compliant_data_sharing_controls/2, 'Originally collected data shared only per Union data protection law and newly created personal data not shared outside sandbox', 'celex:32024R1689/oj#art_59').
declared(no_adverse_impact_on_data_subjects_or_rights/1, 'Processing neither leads to measures or decisions affecting data subjects nor affects their data protection rights', 'celex:32024R1689/oj#art_59').
declared(technical_and_organisational_protection_and_deletion/1, 'Data protected by technical and organisational measures and deleted upon termination or retention end', 'celex:32024R1689/oj#art_59').
declared(processing_logs_retained/1, 'Logs of data processing in sandbox are kept for the duration of participation unless otherwise provided', 'celex:32024R1689/oj#art_59').
declared(sandbox_training_testing_documented/2, 'Complete and detailed description of training, testing, validation process and results kept in technical documentation', 'celex:32024R1689/oj#art_59').
declared(project_summary_published_on_authority_website/1, 'Short summary of AI sandbox project, objectives and results published on competent authority website excluding sensitive operational data', 'celex:32024R1689/oj#art_59').
declared(objective_law_enforcement_purpose/1, 'Processing is for prevention, investigation, detection, prosecution of criminal offences or execution of criminal penalties', 'celex:32024R1689/oj#art_59').
declared(based_on_specific_union_or_national_law/1, 'Processing of personal data in sandbox is based on specific Union or national law', 'celex:32024R1689/oj#art_59').
declared(under_control_of_law_enforcement/1, 'Operation is under the control and responsibility of law enforcement authorities', 'celex:32024R1689/oj#art_59').
permitted_processing(Provider, sandbox_development(System, Data)) :-
    provider(Provider),
    ai_system(System),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    objective_substantial_public_interest_area(System),
    necessary_for_complying_requirements(Data, System),
    cannot_effectively_fulfil_with_non_personal_data(Data, System),
    effective_monitoring_and_response_mechanisms_present(System),
    isolated_protected_processing_environment(Provider, Data),
    compliant_data_sharing_controls(Provider, Data),
    no_adverse_impact_on_data_subjects_or_rights(Data),
    technical_and_organisational_protection_and_deletion(Data),
    processing_logs_retained(Data),
    sandbox_training_testing_documented(Provider, System),
    project_summary_published_on_authority_website(System).
permitted_processing(Authority, sandbox_law_enforcement(System, Data)) :-
    law_enforcement_authority(Authority),
    ai_system(System),
    personal_data(Data),
    objective_law_enforcement_purpose(System),
    under_control_of_law_enforcement(Authority),
    based_on_specific_union_or_national_law(System),
    permitted_processing(_Provider, sandbox_development(System, Data)).
provenance(permitted_processing/2, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_60').
declared(annex_3_high_risk_ai_system/1, 'High-risk AI system listed in Annex III', 'celex:32024R1689/oj#art_60').
declared(prospective_provider/1, 'Entity intending to place an AI system on the market or put it into service', 'celex:32024R1689/oj#art_60').
declared(testing_conditions_met/2, 'Mandatory conditions under Article 60(4) are met for real-world testing of AI system by provider', 'celex:32024R1689/oj#art_60').
declared(testing_plan_submitted/3, 'Provider submitted testing plan for AI system to market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(testing_plan_approved/3, 'Testing plan and testing approved by market surveillance authority explicitly or tacitly', 'celex:32024R1689/oj#art_60').
declared(testing_registered/2, 'Testing in real-world conditions registered according to requirements', 'celex:32024R1689/oj#art_60').
declared(established_in_union_or_has_representative/1, 'Provider is established in Union or appointed EU legal representative', 'celex:32024R1689/oj#art_60').
declared(third_country_transfer_safeguards_complied/1, 'Appropriate Union safeguards implemented for transfer of testing data to third countries', 'celex:32024R1689/oj#art_60').
declared(duration_compliant/1, 'Testing does not exceed necessary duration and not longer than six months unless validly extended', 'celex:32024R1689/oj#art_60').
declared(vulnerable_groups_protected/1, 'Subjects belonging to vulnerable groups are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_cooperation_conditions_met/2, 'Deployer cooperation informed, instructed, and agreement concluded', 'celex:32024R1689/oj#art_60').
declared(informed_consent_or_law_enforcement_safeguards_met/2, 'Informed consent given or alternative law enforcement safeguards met', 'celex:32024R1689/oj#art_60').
declared(effectively_overseen/2, 'Testing is effectively overseen by suitably qualified personnel', 'celex:32024R1689/oj#art_60').
declared(outputs_reversible_and_disregardable/1, 'Predictions, recommendations, or decisions can be effectively reversed and disregarded', 'celex:32024R1689/oj#art_60').
declared(permitted_withdraw_from_testing/2, 'Subject or representative may withdraw from testing anytime without detriment', 'celex:32024R1689/oj#art_60').
declared(testing_serious_incident_occurred/2, 'Serious incident identified in the course of real-world testing of system', 'celex:32024R1689/oj#art_60').
declared(testing_suspended_or_terminated/2, 'Testing in real-world conditions has been suspended or terminated', 'celex:32024R1689/oj#art_60').
declared(testing_concluded/2, 'Testing in real-world conditions has concluded', 'celex:32024R1689/oj#art_60').
declared(provider_party/1, 'Entity is either provider or prospective provider', 'celex:32024R1689/oj#art_60').
provider_party(P) :- provider(P).
provider_party(P) :- prospective_provider(P).
permitted_testing_in_real_world_conditions(P, S) :-
    provider_party(P),
    annex_3_high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    testing_conditions_met(P, S).
testing_conditions_met(P, S) :-
    market_surveillance_authority_for(A, S),
    testing_plan_submitted(P, S, A),
    testing_plan_approved(P, S, A),
    testing_registered(P, S),
    established_in_union_or_has_representative(P),
    third_country_transfer_safeguards_complied(S),
    duration_compliant(S),
    vulnerable_groups_protected(S),
    deployer_cooperation_conditions_met(P, S),
    informed_consent_or_law_enforcement_safeguards_met(P, S),
    effectively_overseen(P, S),
    outputs_reversible_and_disregardable(S).
permitted_withdraw_from_testing(Subj, S) :-
    subject(Subj),
    ai_system(S).
must_report(P, incident_to_authority(S, A)) :-
    provider_party(P),
    testing_serious_incident_occurred(P, S),
    market_surveillance_authority_for(A, S).
must_comply(P, mitigation_or_suspension_or_termination(S)) :-
    provider_party(P),
    testing_serious_incident_occurred(P, S).
must_comply(P, recall_procedure(S)) :-
    provider_party(P),
    testing_suspended_or_terminated(P, S).
must_report(P, notification_status(status(S), A)) :-
    provider_party(P),
    testing_suspended_or_terminated(P, S),
    market_surveillance_authority_for(A, S).
must_report(P, notification_final_outcomes(outcomes(S), A)) :-
    provider_party(P),
    testing_concluded(P, S),
    market_surveillance_authority_for(A, S).
provenance(provider_party/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(testing_conditions_met/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_withdraw_from_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_report/2, 'celex:32024R1689/oj#art_60').
provenance(must_comply/2, 'celex:32024R1689/oj#art_60').
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
declared(valid_informed_consent/2, 'Subject has given valid informed consent for testing in real world conditions', 'celex:32024R1689/oj#art_61').
declared(duly_informed/2, 'Subject has been duly informed regarding all mandatory items prior to consent', 'celex:32024R1689/oj#art_61').
declared(informed_regarding_nature_and_objectives/2, 'Subject informed of nature, objectives, and possible inconvenience', 'celex:32024R1689/oj#art_61').
declared(informed_regarding_conditions_and_duration/2, 'Subject informed of conditions and expected duration', 'celex:32024R1689/oj#art_61').
declared(informed_regarding_rights_and_guarantees/2, 'Subject informed of rights and guarantees including refusal and withdrawal', 'celex:32024R1689/oj#art_61').
declared(informed_regarding_reversal_arrangements/2, 'Subject informed of arrangements for reversal or disregarding of AI outputs', 'celex:32024R1689/oj#art_61').
declared(informed_regarding_identification_and_contacts/2, 'Subject informed of identification number and provider contact details', 'celex:32024R1689/oj#art_61').
declared(dated/1, 'Document or consent is dated', 'celex:32024R1689/oj#art_61').
declared(documented/1, 'Consent is documented in writing or record', 'celex:32024R1689/oj#art_61').
declared(copy_provided_to_subject_or_representative/2, 'A copy of the informed consent has been given to the subject or legal representative', 'celex:32024R1689/oj#art_61').
declared(freely_given/1, 'Consent is freely given', 'celex:32024R1689/oj#art_61').
declared(prior_to_participation/2, 'Consent is obtained prior to participation of subject in testing', 'celex:32024R1689/oj#art_61').
valid_informed_consent(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed_consent(Consent),
    freely_given(Consent),
    prior_to_participation(Consent, Subject),
    duly_informed(Subject, Testing),
    dated(Consent),
    documented(Consent),
    copy_provided_to_subject_or_representative(Consent, Subject).
duly_informed(Subject, Testing) :-
    informed_regarding_nature_and_objectives(Subject, Testing),
    informed_regarding_conditions_and_duration(Subject, Testing),
    informed_regarding_rights_and_guarantees(Subject, Testing),
    informed_regarding_reversal_arrangements(Subject, Testing),
    informed_regarding_identification_and_contacts(Subject, Testing).
must_obtain(Provider, informed_consent(Subject, Testing)) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    \+ valid_informed_consent(Subject, Testing).
provenance(valid_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(must_obtain/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_62').
declared(sme_including_startup/1, 'entity is a small or medium-sized enterprise, including a start-up', 'celex:32024R1689/oj#art_62').
declared(has_registered_office_or_branch_in_union/1, 'entity has a registered office or branch in the Union', 'celex:32024R1689/oj#art_62').
declared(fulfils_eligibility_and_selection_criteria/2, 'entity fulfils eligibility conditions and selection criteria for a sandbox', 'celex:32024R1689/oj#art_62').
declared(permitted_access/2, 'entity is permitted access to a sandbox or facility', 'celex:32024R1689/oj#art_62').
declared(priority_access/2, 'entity has priority access to a sandbox', 'celex:32024R1689/oj#art_62').
declared(must_provide_priority_access/2, 'actor must provide priority access to a regulatory sandbox to an entity', 'celex:32024R1689/oj#art_62').
declared(must_organise/2, 'actor must organise specified activities or campaigns', 'celex:32024R1689/oj#art_62').
declared(must_communicate/2, 'actor must communicate advice and responses via channels', 'celex:32024R1689/oj#art_62').
declared(must_facilitate/2, 'actor must facilitate participation in standardisation or other processes', 'celex:32024R1689/oj#art_62').
declared(must_reduce_fees/2, 'actor setting fees must take into account interests and reduce fees for SME providers', 'celex:32024R1689/oj#art_62').
declared(must_provide/2, 'actor must provide specified materials or templates', 'celex:32024R1689/oj#art_62').
declared(must_maintain/2, 'actor must develop and maintain a specified platform or service', 'celex:32024R1689/oj#art_62').
declared(must_promote/2, 'actor must evaluate and promote best practices', 'celex:32024R1689/oj#art_62').
priority_access(Entity, Sandbox) :-
    sme_including_startup(Entity),
    has_registered_office_or_branch_in_union(Entity),
    ai_regulatory_sandbox(Sandbox),
    fulfils_eligibility_and_selection_criteria(Entity, Sandbox).
must_provide_priority_access(MS, access(Entity, Sandbox)) :-
    member_state(MS),
    priority_access(Entity, Sandbox).
permitted_access(Entity, Sandbox) :-
    sme_including_startup(Entity),
    ai_regulatory_sandbox(Sandbox),
    fulfils_eligibility_and_selection_criteria(Entity, Sandbox).
must_organise(MS, awareness_raising_and_training(smes_deployers_local_authorities)) :-
    member_state(MS).
must_communicate(MS, advice_and_queries(smes_deployers_innovators_local_authorities)) :-
    member_state(MS).
must_facilitate(MS, standardisation_participation(smes_and_stakeholders)) :-
    member_state(MS).
must_reduce_fees(FeeSetter, conformity_assessment_fees(Provider)) :-
    provider(Provider),
    sme_including_startup(Provider),
    conformity_assessment(FeeSetter).
must_provide(Office, standardised_templates) :-
    ai_office(Office).
must_maintain(Office, single_information_platform) :-
    ai_office(Office).
must_organise(Office, communication_campaigns(ai_act_obligations)) :-
    ai_office(Office).
must_promote(Office, best_practices_public_procurement) :-
    ai_office(Office).
provenance(priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise/2, 'celex:32024R1689/oj#art_62').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'enterprise is a microenterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(partner_enterprise/1, 'enterprise has partner enterprises within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(linked_enterprise/1, 'enterprise has linked enterprises within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(permitted_simplified_compliance/2, 'operator may comply with elements of quality management system in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(quality_management_system_element/1, 'element of the quality management system eligible for simplified compliance', 'celex:32024R1689/oj#art_63').
declared(must_develop/2, 'actor must develop specified measure or instrument', 'celex:32024R1689/oj#art_63').
permitted_simplified_compliance(Operator, quality_management_system(Element)) :-
    microenterprise(Operator),
    \+ partner_enterprise(Operator),
    \+ linked_enterprise(Operator),
    quality_management_system_element(Element).
must_develop(Commission, guidelines(simplified_compliance_quality_management_system)) :-
    commission(Commission).
must_comply(Operator, requirement(risk_management_system)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(data_and_governance)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(technical_documentation)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(record_keeping)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(transparency_and_information)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(human_oversight)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(accuracy_robustness_cybersecurity)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(post_market_monitoring)) :-
    permitted_simplified_compliance(Operator, _).
must_comply(Operator, requirement(reporting_serious_incidents)) :-
    permitted_simplified_compliance(Operator, _).
provenance(permitted_simplified_compliance/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop/2, 'celex:32024R1689/oj#art_63').
provenance(must_comply/2, 'celex:32024R1689/oj#art_63').
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
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_64').
must_develop(Commission, expertise_and_capabilities(union, ai, through(Office))) :-
    commission(Commission),
    ai_office(Office).
must_facilitate(MS, tasks_of(Office)) :-
    member_state(MS),
    ai_office(Office).
provenance(must_develop/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_artificial_intelligence_board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_65').
declared(board_representative/2, 'representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(board_observer/1, 'entity participating as observer in the Board', 'celex:32024R1689/oj#art_65').
declared(attends_without_voting/2, 'entity attends meetings of a body without taking part in votes', 'celex:32024R1689/oj#art_65').
declared(permitted_invitation_to_board/2, 'Board may invite entity to its meetings on a case by case basis', 'celex:32024R1689/oj#art_65').
declared(designation_term_years/2, 'designated term in years for a representative', 'celex:32024R1689/oj#art_65').
declared(renewable_times/2, 'number of times a mandate is renewable', 'celex:32024R1689/oj#art_65').
declared(competent_and_empowered/1, 'representative has relevant competences and powers in Member State', 'celex:32024R1689/oj#art_65').
declared(designated_contact_point/2, 'representative designated as contact point for specific scope', 'celex:32024R1689/oj#art_65').
declared(empowered_coordination_and_consistency/1, 'representative is empowered to facilitate consistency and coordination between national competent authorities', 'celex:32024R1689/oj#art_65').
declared(must_ensure/2, 'actor must ensure specified condition holds', 'celex:32024R1689/oj#art_65').
declared(must_adopt/2, 'actor must adopt specified rules or acts', 'celex:32024R1689/oj#art_65').
declared(must_establish/2, 'actor must establish a specific entity or sub-group', 'celex:32024R1689/oj#art_65').
declared(permitted_establish_subgroup/2, 'actor is permitted to establish additional sub-groups', 'celex:32024R1689/oj#art_65').
declared(permitted_invite_to_subgroup/2, 'actor may invite representatives as observers to sub-groups', 'celex:32024R1689/oj#art_65').
declared(standing_subgroup_market_surveillance/1, 'standing sub-group for market surveillance of the Board', 'celex:32024R1689/oj#art_65').
declared(standing_subgroup_notifying_authorities/1, 'standing sub-group for notifying authorities of the Board', 'celex:32024R1689/oj#art_65').
declared(adco_group/1, 'administrative cooperation group under Regulation (EU) 2019/1020', 'celex:32024R1689/oj#art_65').
declared(board_chair/1, 'chair of the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'actor must provide secretariat for an entity', 'celex:32024R1689/oj#art_65').
declared(must_convene_meetings/2, 'actor must convene meetings upon request of the chair', 'celex:32024R1689/oj#art_65').
declared(must_prepare_agenda/2, 'actor must prepare agenda for meetings of an entity', 'celex:32024R1689/oj#art_65').
declared(relevant_issues/2, 'issues discussed are relevant for the entity', 'celex:32024R1689/oj#art_65').
european_artificial_intelligence_board(board).
board_observer(edps).
attends_without_voting(ai_office, board) :-
    ai_office(ai_office),
    european_artificial_intelligence_board(board).
permitted_invitation_to_board(board, Authority) :-
    european_artificial_intelligence_board(board),
    relevant_issues(Authority, board).
designation_term_years(R, years(3)) :-
    board_representative(_MS, R).
renewable_times(R, 1) :-
    board_representative(_MS, R).
must_ensure(MS, competent_and_empowered(R)) :-
    member_state(MS),
    board_representative(MS, R).
must_ensure(MS, designated_contact_point(R, board)) :-
    member_state(MS),
    board_representative(MS, R).
must_ensure(MS, empowered_coordination_and_consistency(R)) :-
    member_state(MS),
    board_representative(MS, R).
must_adopt(representatives(board), rules_of_procedure(board, majority(two_thirds))).
must_establish(board, standing_subgroup_market_surveillance) :-
    european_artificial_intelligence_board(board).
must_establish(board, standing_subgroup_notifying_authorities) :-
    european_artificial_intelligence_board(board).
adco_group(G) :-
    standing_subgroup_market_surveillance(G).
permitted_establish_subgroup(board, Subgroup) :-
    european_artificial_intelligence_board(board),
    Subgroup \= standing_subgroup_market_surveillance,
    Subgroup \= standing_subgroup_notifying_authorities.
permitted_invite_to_subgroup(_Subgroup, advisory_forum_representative).
board_chair(R) :-
    board_representative(_MS, R).
must_provide_secretariat(O, board) :-
    ai_office(O),
    european_artificial_intelligence_board(board).
must_convene_meetings(O, upon_request(board_chair)) :-
    ai_office(O).
must_prepare_agenda(O, board) :-
    ai_office(O),
    european_artificial_intelligence_board(board).
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(attends_without_voting/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_invitation_to_board/2, 'celex:32024R1689/oj#art_65').
provenance(designation_term_years/2, 'celex:32024R1689/oj#art_65').
provenance(renewable_times/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish/2, 'celex:32024R1689/oj#art_65').
provenance(adco_group/1, 'celex:32024R1689/oj#art_65').
provenance(permitted_establish_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(permitted_invite_to_subgroup/2, 'celex:32024R1689/oj#art_65').
provenance(board_chair/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(european_artificial_intelligence_board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_66').
declared(permitted_task/2, 'An entity is permitted to perform a specific task', 'celex:32024R1689/oj#art_66').
must_advise(Board, commission) :-
    european_artificial_intelligence_board(Board).
must_advise(Board, member_states) :-
    european_artificial_intelligence_board(Board).
must_assist(Board, commission) :-
    european_artificial_intelligence_board(Board).
must_assist(Board, member_states) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, coordinate_national_competent_authorities) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, support_joint_activities(market_surveillance_authorities)) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, share_expertise_and_best_practices) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, advise_implementation(enforcement_general_purpose_ai_models)) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, harmonise_administrative_practices) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, issue_recommendations_and_opinions) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, support_promoting_ai_literacy) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, develop_common_criteria_and_benchmarks) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, cooperate_with_union_bodies) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, cooperate_internationally) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, assist_developing_expertise_and_training) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, assist_ai_office_sandboxes) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, advise_on_guidance_documents) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, advise_commission_international_matters) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, provide_opinions_on_qualified_alerts(commission)) :-
    european_artificial_intelligence_board(Board).
permitted_task(Board, receive_opinions_from_member_states) :-
    european_artificial_intelligence_board(Board).
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_66').
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
declared(permanent_member_of_advisory_forum/1, 'permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(permitted_extension_of_term/2, 'term of office permitted to be extended up to a specified maximum duration', 'celex:32024R1689/oj#art_67').
declared(permitted_renew/2, 'office or role permitted to be renewed a number of times', 'celex:32024R1689/oj#art_67').
declared(permitted_invite/2, 'entity is permitted to invite specific parties to its meetings', 'celex:32024R1689/oj#art_67').
declared(permitted_prepare_contribution/2, 'entity is permitted to prepare contributions at request', 'celex:32024R1689/oj#art_67').
declared(permitted_establish_subgroup/2, 'entity is permitted to establish standing or temporary sub-groups', 'celex:32024R1689/oj#art_67').
declared(must_appoint/2, 'actor must appoint specified entity or members', 'celex:32024R1689/oj#art_67').
declared(must_draw_up/2, 'actor must draw up a specified instrument', 'celex:32024R1689/oj#art_67').
declared(must_elect/2, 'actor must elect specified officers', 'celex:32024R1689/oj#art_67').
declared(must_hold_meetings/2, 'actor must hold meetings at specified minimum frequency', 'celex:32024R1689/oj#art_67').
declared(must_prepare/2, 'actor must prepare a specified document or deliverable', 'celex:32024R1689/oj#art_67').
declared(must_make_publicly_available/2, 'actor must make specified deliverable publicly available', 'celex:32024R1689/oj#art_67').
declared(required_term_of_office/2, 'office or role carries a specific standard term duration', 'celex:32024R1689/oj#art_67').
declared(stakeholder_with_recognised_expertise/1, 'stakeholder with recognised expertise in the field of AI', 'celex:32024R1689/oj#art_67').
declared(balanced_selection_criteria_met/1, 'selection meets balance criteria under Article 67(2)', 'celex:32024R1689/oj#art_67').
advisory_forum(advisory_forum).
must_appoint(Commission, members(advisory_forum)) :-
    commission(Commission),
    balanced_selection_criteria_met(advisory_forum).
required_term_of_office(members(advisory_forum), years(2)).
permitted_extension_of_term(members(advisory_forum), up_to(years(4))).
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).
must_draw_up(advisory_forum, rules_of_procedure).
must_elect(advisory_forum, co_chairs(2)) :-
    balanced_selection_criteria_met(co_chairs).
required_term_of_office(co_chairs(advisory_forum), years(2)).
permitted_renew(co_chairs(advisory_forum), times(1)).
must_hold_meetings(advisory_forum, minimum_frequency(per_year(2))).
permitted_invite(advisory_forum, experts_and_other_stakeholders).
permitted_prepare_contribution(advisory_forum, requested_by(board)).
permitted_prepare_contribution(advisory_forum, requested_by(Commission)) :-
    commission(Commission).
permitted_establish_subgroup(advisory_forum, standing).
permitted_establish_subgroup(advisory_forum, temporary).
must_prepare(advisory_forum, annual_report_on_activities).
must_make_publicly_available(advisory_forum, annual_report_on_activities).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(required_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_extension_of_term/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_renew/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare_contribution/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish_subgroup/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_68').
declared(independent_expert/1, 'independent expert eligible or selected for the scientific panel', 'celex:32024R1689/oj#art_68').
declared(independent_from_providers/1, 'independent from any provider of AI systems or general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(possesses_ai_expertise/1, 'possesses particular competence and scientific or technical expertise in the field of AI', 'celex:32024R1689/oj#art_68').
declared(carries_out_activities_diligently_accurately_objectively/1, 'able to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(must_establish/2, 'actor must establish a specified entity or system', 'celex:32024R1689/oj#art_68').
declared(must_select/2, 'actor must select an entity or panel members', 'celex:32024R1689/oj#art_68').
declared(must_support/2, 'actor must support another entity or task', 'celex:32024R1689/oj#art_68').
declared(must_ensure/2, 'actor must ensure a specified condition or outcome', 'celex:32024R1689/oj#art_68').
declared(must_draw_up/2, 'actor must draw up a specified document', 'celex:32024R1689/oj#art_68').
declared(prohibited_instruction_taking/1, 'expert is prohibited from seeking or taking instructions', 'celex:32024R1689/oj#art_68').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_providers/1, 'celex:32024R1689/oj#art_68').
provenance(possesses_ai_expertise/1, 'celex:32024R1689/oj#art_68').
provenance(carries_out_activities_diligently_accurately_objectively/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(must_select/2, 'celex:32024R1689/oj#art_68').
provenance(must_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_68').
provenance(prohibited_instruction_taking/1, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
must_establish(commission, scientific_panel) :-
    commission(commission).
independent_expert(E) :-
    possesses_ai_expertise(E),
    independent_from_providers(E),
    carries_out_activities_diligently_accurately_objectively(E).
must_select(Commission, panel_experts(Panel)) :-
    commission(Commission),
    scientific_panel(Panel).
must_support(Panel, ai_office(tasks)) :-
    scientific_panel(Panel).
must_support(Panel, market_surveillance_authorities(request)) :-
    scientific_panel(Panel).
must_support(Panel, cross_border_market_surveillance) :-
    scientific_panel(Panel).
must_support(Panel, union_safeguard_procedure) :-
    scientific_panel(Panel).
prohibited_instruction_taking(E) :-
    independent_expert(E).
must_ensure(E, confidentiality_of_information) :-
    independent_expert(E).
must_draw_up(E, declaration_of_interests) :-
    independent_expert(E).
must_establish(AIOffice, conflict_of_interest_management_system) :-
    ai_office(AIOffice).

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_69').
declared(scientific_panel_expert/1, 'individual is an expert of the scientific panel', 'celex:32024R1689/oj#art_69').
declared(permitted_call_upon_expert/2, 'Member State may call upon an expert to support enforcement activities', 'celex:32024R1689/oj#art_69').
declared(required_fee_applies/2, 'fee requirement applies to a Member State for advice and support by an expert', 'celex:32024R1689/oj#art_69').
declared(fee_obligation_established/1, 'fee obligation established via implementing act referred to in Article 68(1)', 'celex:32024R1689/oj#art_69').
declared(must_pay/2, 'Member State must pay fees for advice and support provided by expert', 'celex:32024R1689/oj#art_69').
declared(must_facilitate_access/2, 'Commission must facilitate timely access to experts for Member States', 'celex:32024R1689/oj#art_69').
declared(must_ensure/2, 'Commission must ensure efficient organisation of support activities', 'celex:32024R1689/oj#art_69').
permitted_call_upon_expert(MS, Expert) :-
    member_state(MS),
    scientific_panel_expert(Expert).
must_pay(MS, fees(support_from(Expert))) :-
    member_state(MS),
    scientific_panel_expert(Expert),
    fee_obligation_established(implementing_act_art_68_1),
    required_fee_applies(MS, Expert).
must_facilitate_access(Comm, access(experts, for(MS))) :-
    commission(Comm),
    member_state(MS).
must_ensure(Comm, efficient_organisation(combination(union_ai_testing_support, scientific_panel_experts))) :-
    commission(Comm).
provenance(permitted_call_upon_expert/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_70').
declared(single_point_of_contact/1, 'authority designated as the single point of contact', 'celex:32024R1689/oj#art_70').
declared(edps/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_70').
declared(competent_authority_for/2, 'authority acts as competent authority for an entity or scope', 'celex:32024R1689/oj#art_70').
declared(permitted_provide_guidance_and_advice/2, 'authority is permitted to provide guidance and advice on AI Act implementation to a target', 'celex:32024R1689/oj#art_70').
declared(scope_of_act/1, 'entity falls within the scope of the AI Act', 'celex:32024R1689/oj#art_70').
must_comply(MS, establish_or_designate(national_competent_authorities)) :-
    member_state(MS).
must_comply(Auth, independent_and_impartial_exercise_of_powers) :-
    national_competent_authority(Auth).
must_comply(MS, communicate(commission, authorities_and_tasks)) :-
    member_state(MS).
must_comply(MS, make_publicly_available(contact_information, deadline(date(2025, 8, 2)))) :-
    member_state(MS).
must_comply(MS, designate_single_point_of_contact(Auth)) :-
    member_state(MS),
    market_surveillance_authority(Auth).
single_point_of_contact(Auth) :-
    market_surveillance_authority(Auth),
    member_state(MS),
    must_comply(MS, designate_single_point_of_contact(Auth)).
must_comply(MS, notify(commission, single_point_of_contact(Auth))) :-
    member_state(MS),
    single_point_of_contact(Auth).
must_comply(Comm, make_publicly_available(list_of_single_points_of_contact)) :-
    commission(Comm).
must_comply(MS, provide_adequate_resources_and_infrastructure(Auth)) :-
    member_state(MS),
    national_competent_authority(Auth).
must_comply(MS, assess_and_update_resource_requirements(annual)) :-
    member_state(MS).
must_comply(Auth, ensure_adequate_level_of_cybersecurity) :-
    national_competent_authority(Auth).
must_comply(Auth, confidentiality_obligations) :-
    national_competent_authority(Auth).
must_report(MS, commission(status_and_adequacy_of_resources(deadline(date(2025, 8, 2)), recurrence(years(2))))) :-
    member_state(MS).
must_comply(Comm, transmit_to_board(resources_reports)) :-
    commission(Comm).
must_comply(Comm, facilitate_exchange_of_experience(national_competent_authorities)) :-
    commission(Comm).
permitted_provide_guidance_and_advice(Auth, implementation_of_ai_act) :-
    national_competent_authority(Auth).
competent_authority_for(EDPS, UnionEntity) :-
    edps(EDPS),
    union_institution_body_office_agency(UnionEntity),
    scope_of_act(UnionEntity).
provenance(must_comply/2, 'celex:32024R1689/oj#art_70').
provenance(single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_provide_guidance_and_advice/2, 'celex:32024R1689/oj#art_70').
provenance(competent_authority_for/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_set_up_and_maintain/2, 'actor must set up and maintain a system or database', 'celex:32024R1689/oj#art_71').
declared(must_enter_data/2, 'actor must enter specified data into the EU database', 'celex:32024R1689/oj#art_71').
declared(public_authority_agency_or_body/1, 'entity is a public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(acts_on_behalf_of_public_entity/1, 'entity acts on behalf of a public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(publicly_available/1, 'information in database is accessible and publicly available', 'celex:32024R1689/oj#art_71').
declared(restricted_access/2, 'information in database is accessible only to specified actors', 'celex:32024R1689/oj#art_71').
declared(consent_given_for_public_access/1, 'provider has consented to making information publicly accessible', 'celex:32024R1689/oj#art_71').
declared(controller_of/2, 'entity is the controller of a database or processing system', 'celex:32024R1689/oj#art_71').
declared(must_provide_support/2, 'actor must provide technical and administrative support to parties', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain(C, eu_database) :-
    commission(C).
must_enter_data(P, data(annex_8_section_1, S)) :-
    provider(P),
    ai_system(S).
must_enter_data(AR, data(annex_8_section_1, S)) :-
    authorised_representative(AR),
    ai_system(S).
must_enter_data(P, data(annex_8_section_2, S)) :-
    provider(P),
    ai_system(S).
must_enter_data(AR, data(annex_8_section_2, S)) :-
    authorised_representative(AR),
    ai_system(S).
must_enter_data(D, data(annex_8_section_3, S)) :-
    deployer(D),
    ai_system(S),
    public_authority_agency_or_body(D).
must_enter_data(D, data(annex_8_section_3, S)) :-
    deployer(D),
    ai_system(S),
    acts_on_behalf_of_public_entity(D).
publicly_available(registration(art_49, S)) :-
    ai_system(S).
publicly_available(registration(art_60, S)) :-
    ai_system(S),
    consent_given_for_public_access(S).
restricted_access(registration(art_60, S), authorities) :-
    ai_system(S),
    \+ consent_given_for_public_access(S).
controller_of(C, eu_database) :-
    commission(C).
must_provide_support(C, support(technical_and_administrative, operators)) :-
    commission(C).
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority_agency_or_body/1, 'celex:32024R1689/oj#art_71').
provenance(acts_on_behalf_of_public_entity/1, 'celex:32024R1689/oj#art_71').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_access/2, 'celex:32024R1689/oj#art_71').
provenance(consent_given_for_public_access/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of/2, 'celex:32024R1689/oj#art_71').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_72').
declared(provider_of/2, 'Entity is the provider of an AI system', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan/1, 'Document specifying post-market monitoring plan for AI system', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan_of/2, 'Post-market monitoring plan for an AI system', 'celex:32024R1689/oj#art_72').
declared(technical_documentation_of/2, 'Technical documentation of an AI system', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_system_of/2, 'Post-market monitoring system established for an AI system', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_technology_and_risk/2, 'Monitoring system is proportionate to the nature of AI technologies and risks', 'celex:32024R1689/oj#art_72').
declared(based_on/2, 'Entity or system is based on another specification or plan', 'celex:32024R1689/oj#art_72').
declared(part_of/2, 'Object is part of another composite entity', 'celex:32024R1689/oj#art_72').
declared(covers_data/2, 'System or plan covers specified data', 'celex:32024R1689/oj#art_72').
declared(deployer_of/2, 'Entity is the deployer of an AI system', 'celex:32024R1689/oj#art_72').
declared(financial_institution/1, 'Entity is a financial institution', 'celex:32024R1689/oj#art_72').
declared(subject_to_union_financial_services_governance/1, 'Entity is subject to Union financial services law regarding internal governance', 'celex:32024R1689/oj#art_72').
declared(annex_3_point_5_system/1, 'AI system referred to in Annex III point 5', 'celex:32024R1689/oj#art_72').
declared(permitted_integrate_post_market_monitoring/2, 'Provider may integrate post-market monitoring elements into existing systems/plans', 'celex:32024R1689/oj#art_72').
declared(existing_post_market_monitoring_regime/1, 'AI system has existing post-market monitoring system and plan under applicable legislation', 'celex:32024R1689/oj#art_72').
declared(achieves_equivalent_level_of_protection/1, 'Integration achieves an equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(must_establish/2, 'Actor must establish an object or system', 'celex:32024R1689/oj#art_72').
declared(must_document/2, 'Actor must document an object or system', 'celex:32024R1689/oj#art_72').
declared(must_collect_document_analyse/2, 'Monitoring system must actively and systematically collect, document, and analyse relevant data', 'celex:32024R1689/oj#art_72').
declared(must_adopt/2, 'Actor must adopt a legal act or measure', 'celex:32024R1689/oj#art_72').
declared(examination_procedure/1, 'Examination procedure referred to in Article 98(2)', 'celex:32024R1689/oj#art_72').
must_establish(Provider, post_market_monitoring_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
must_document(Provider, post_market_monitoring_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).
required_proportionate_monitoring(System) :-
    high_risk_ai_system(System),
    post_market_monitoring_system_of(MonitoringSystem, System),
    proportionate_to_technology_and_risk(MonitoringSystem, System).
must_collect_document_analyse(MonitoringSystem, performance_data(System)) :-
    post_market_monitoring_system_of(MonitoringSystem, System),
    high_risk_ai_system(System).
exempt_from_post_market_monitoring(sensitive_operational_data(Deployer, System)) :-
    high_risk_ai_system(System),
    deployer_of(Deployer, System),
    law_enforcement_authority(Deployer),
    sensitive_operational_data(Data),
    covers_data(sensitive_operational_data(Deployer, System), Data).
required_monitoring_plan_basis(MonitoringSystem, Plan) :-
    post_market_monitoring_system_of(MonitoringSystem, System),
    post_market_monitoring_plan_of(Plan, System),
    based_on(MonitoringSystem, Plan).
required_plan_in_technical_documentation(Plan, TechDoc) :-
    post_market_monitoring_plan_of(Plan, System),
    technical_documentation_of(TechDoc, System),
    part_of(Plan, TechDoc).
must_adopt(Commission, implementing_act(template_post_market_monitoring_plan)) :-
    commission(Commission),
    examination_procedure(proc_art_98_2).
permitted_integrate_post_market_monitoring(Provider, System) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    covers_union_harmonisation_legislation_annex_i(System),
    existing_post_market_monitoring_regime(System),
    achieves_equivalent_level_of_protection(System).
permitted_integrate_post_market_monitoring(Provider, System) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    annex_3_point_5_system(System),
    financial_institution(Provider),
    subject_to_union_financial_services_governance(Provider),
    existing_post_market_monitoring_regime(System),
    achieves_equivalent_level_of_protection(System).
provenance(must_establish/2, 'celex:32024R1689/oj#art_72').
provenance(must_document/2, 'celex:32024R1689/oj#art_72').
provenance(required_proportionate_monitoring/1, 'celex:32024R1689/oj#art_72').
provenance(must_collect_document_analyse/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_from_post_market_monitoring/1, 'celex:32024R1689/oj#art_72').
provenance(required_monitoring_plan_basis/2, 'celex:32024R1689/oj#art_72').
provenance(required_plan_in_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integrate_post_market_monitoring/2, 'celex:32024R1689/oj#art_72').
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
declared(occurs_in/2, 'incident occurs in a Member State', 'celex:32024R1689/oj#art_73').
declared(incident_involves_system/2, 'incident involves an AI system', 'celex:32024R1689/oj#art_73').
declared(serious_incident_type/2, 'incident is of a specific type (e.g., death, point_b, point_c)', 'celex:32024R1689/oj#art_73').
declared(aware_of_incident/2, 'entity becomes aware of an incident', 'celex:32024R1689/oj#art_73').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_73').
declared(deployer_of/2, 'entity is the deployer of an AI system', 'celex:32024R1689/oj#art_73').
declared(deadline_reporting/3, 'deadline for reporting a serious incident', 'celex:32024R1689/oj#art_73').
declared(permitted_submit_incomplete_report/2, 'entity is permitted to submit an initial incomplete report', 'celex:32024R1689/oj#art_73').
declared(must_investigate/2, 'actor must perform investigations in relation to an incident', 'celex:32024R1689/oj#art_73').
declared(must_cooperate/2, 'actor must cooperate with authorities during investigation', 'celex:32024R1689/oj#art_73').
declared(prohibited_alteration/2, 'investigation alteration prohibited prior to informing authorities', 'celex:32024R1689/oj#art_73').
declared(must_inform/2, 'authority must inform relevant body of incident notification', 'celex:32024R1689/oj#art_73').
declared(must_take_measures/2, 'authority must take appropriate measures within a deadline', 'celex:32024R1689/oj#art_73').
declared(subject_to_equivalent_reporting/1, 'provider is subject to equivalent Union reporting obligations', 'celex:32024R1689/oj#art_73').
declared(covered_by_medical_device_regulations/1, 'system is covered by Regulation 2017/745 or 2017/746', 'celex:32024R1689/oj#art_73').
declared(annex_3_system/1, 'AI system referred to in Annex III', 'celex:32024R1689/oj#art_73').
declared(applicable_reporting_obligation/2, 'incident reporting is applicable for AI system', 'celex:32024R1689/oj#art_73').
declared(national_competent_authority_for/2, 'national competent authority designated for an incident', 'celex:32024R1689/oj#art_73').
must_report(Provider, incident(Incident, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    placing_on_market(System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    applicable_reporting_obligation(System, Incident),
    occurs_in(Incident, MemberState),
    market_surveillance_authority_for(Authority, MemberState).
deadline_reporting(Provider, Incident, days(15)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    causal_link_established_or_likely(Provider, Incident),
    \+ serious_incident_type(Incident, widespread_infringement),
    \+ serious_incident_type(Incident, point_b),
    \+ serious_incident_type(Incident, death).
deadline_reporting(Provider, Incident, days(2)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    ( serious_incident_type(Incident, widespread_infringement)
    ; serious_incident_type(Incident, point_b)
    ).
deadline_reporting(Provider, Incident, days(10)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident),
    serious_incident_type(Incident, death).
permitted_submit_incomplete_report(Actor, Incident) :-
    ( provider_of(Actor, System) ; deployer_of(Actor, System) ),
    incident_involves_system(Incident, System),
    serious_incident(Incident).
must_investigate(Provider, incident(Incident, System)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident).
must_cooperate(Provider, investigation(Incident)) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident).
prohibited_alteration(Provider, System) :-
    provider_of(Provider, System),
    incident_involves_system(Incident, System),
    serious_incident(Incident).
must_inform(Authority, bodies_art_77_par_1(Incident)) :-
    market_surveillance_authority(Authority),
    serious_incident(Incident),
    serious_incident_type(Incident, point_c).
must_take_measures(Authority, within(days(7), Incident)) :-
    market_surveillance_authority(Authority),
    serious_incident(Incident).
applicable_reporting_obligation(System, Incident) :-
    annex_3_system(System),
    provider_of(Provider, System),
    subject_to_equivalent_reporting(Provider),
    serious_incident_type(Incident, point_c).
applicable_reporting_obligation(System, _Incident) :-
    annex_3_system(System),
    provider_of(Provider, System),
    \+ subject_to_equivalent_reporting(Provider).
applicable_reporting_obligation(System, Incident) :-
    covered_by_medical_device_regulations(System),
    serious_incident_type(Incident, point_c).
applicable_reporting_obligation(System, _Incident) :-
    \+ annex_3_system(System),
    \+ covered_by_medical_device_regulations(System).
must_report(Provider, incident(Incident, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    covered_by_medical_device_regulations(System),
    incident_involves_system(Incident, System),
    serious_incident_type(Incident, point_c),
    occurs_in(Incident, MemberState),
    national_competent_authority_for(Authority, MemberState).
must_report(Authority, commission_notification(Incident)) :-
    national_competent_authority(Authority),
    serious_incident(Incident).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(occurs_in/2, 'celex:32024R1689/oj#art_73').
provenance(incident_involves_system/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_type/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').
provenance(provider_of/2, 'celex:32024R1689/oj#art_73').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_73').
provenance(deadline_reporting/3, 'celex:32024R1689/oj#art_73').
provenance(permitted_submit_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_alteration/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_73').
provenance(subject_to_equivalent_reporting/1, 'celex:32024R1689/oj#art_73').
provenance(covered_by_medical_device_regulations/1, 'celex:32024R1689/oj#art_73').
provenance(annex_3_system/1, 'celex:32024R1689/oj#art_73').
provenance(applicable_reporting_obligation/2, 'celex:32024R1689/oj#art_73').
provenance(national_competent_authority_for/2, 'celex:32024R1689/oj#art_73').
provenance(must_report/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32019R1020/oj', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_74').
declared(financial_institution/1, 'financial institution regulated by Union financial services law', 'celex:32024R1689/oj#art_74').
declared(direct_connection_financial_services/1, 'system use or placing on market has direct connection with provision of financial services', 'celex:32024R1689/oj#art_74').
declared(financial_supervisory_authority/2, 'national authority responsible for financial supervision of institution', 'celex:32024R1689/oj#art_74').
declared(designated_other_authority/2, 'Member State designated another authority with coordination ensured', 'celex:32024R1689/oj#art_74').
declared(designated_sectoral_market_surveillance_authority/2, 'market surveillance authority designated under Annex I legislation', 'celex:32024R1689/oj#art_74').
declared(equivalent_protection_procedure_exists/1, 'sectoral legal act provides procedures ensuring equivalent protection and same objective', 'celex:32024R1689/oj#art_74').
declared(exempt_surveillance_procedures/1, 'AI system exempt from market surveillance procedures under Articles 79 to 83', 'celex:32024R1689/oj#art_74').
declared(annex_3_point_1_system/1, 'AI system listed in Annex III point 1', 'celex:32024R1689/oj#art_74').
declared(annex_3_point_6_7_or_8_system/1, 'AI system listed in Annex III point 6, 7 or 8', 'celex:32024R1689/oj#art_74').
declared(used_for_law_enforcement_border_justice_democracy/1, 'AI system used for law enforcement, border management, justice or democracy', 'celex:32024R1689/oj#art_74').
declared(data_protection_supervisory_authority/1, 'competent data protection supervisory authority or equivalent under Directive (EU) 2016/680', 'celex:32024R1689/oj#art_74').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor (EDPS)', 'celex:32024R1689/oj#art_74').
declared(cjeu_in_judicial_capacity/1, 'Court of Justice of the European Union acting in its judicial capacity', 'celex:32024R1689/oj#art_74').
declared(must_grant_access/2, 'actor must grant access to information or material to recipient', 'celex:32024R1689/oj#art_74').
declared(access_to_source_code_necessary/2, 'access to source code is necessary to assess conformity with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_74').
declared(other_verification_insufficient_or_exhausted/2, 'testing or auditing procedures based on data and documentation exhausted or insufficient', 'celex:32024R1689/oj#art_74').
declared(regulated_credit_institution_ssm/1, 'regulated credit institution participating in Single Supervisory Mechanism', 'celex:32024R1689/oj#art_74').
declared(national_competition_authority/1, 'national competition authority', 'celex:32024R1689/oj#art_74').
declared(european_central_bank/1, 'European Central Bank', 'celex:32024R1689/oj#art_74').
must_report(Authority, competition_rules_information(Info)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority_for(Authority, _System),
    commission(Commission),
    national_competition_authority(NCA),
    must_report(Authority, recipient(Commission)),
    must_report(Authority, recipient(NCA)).
must_report(Authority, prohibited_practices_use(annual)) :-
    market_surveillance_authority(Authority),
    commission(Commission),
    must_report(Authority, recipient(Commission)).
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    system_covered_by_annex_1(S),
    \+ designated_other_authority(Auth, S),
    designated_sectoral_market_surveillance_authority(Auth, S).
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    system_covered_by_annex_1(S),
    designated_other_authority(Auth, S).
exempt_surveillance_procedures(S) :-
    high_risk_ai_system(S),
    system_covered_by_annex_1(S),
    equivalent_protection_procedure_exists(S).
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    direct_connection_financial_services(S),
    operator(Inst),
    financial_institution(Inst),
    \+ designated_other_authority(Auth, S),
    financial_supervisory_authority(Auth, Inst).
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    direct_connection_financial_services(S),
    operator(Inst),
    financial_institution(Inst),
    designated_other_authority(Auth, S).
must_report(Authority, ecb_prudential_supervisory_information(Info)) :-
    market_surveillance_authority(Authority),
    operator(Inst),
    regulated_credit_institution_ssm(Inst),
    european_central_bank(ECB),
    must_report(Authority, recipient(ECB)).
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    used_for_law_enforcement_border_justice_democracy(S),
    data_protection_supervisory_authority(Auth).
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    annex_3_point_6_7_or_8_system(S),
    data_protection_supervisory_authority(Auth).
market_surveillance_authority_for(EDPS, S) :-
    ai_system(S),
    operator(Inst),
    union_institution_body_office_agency(Inst),
    \+ cjeu_in_judicial_capacity(Inst),
    european_data_protection_supervisor(EDPS).
must_grant_access(Provider, data_and_documentation(S, Auth)) :-
    provider(Provider),
    high_risk_ai_system(S),
    market_surveillance_authority(Auth),
    market_surveillance_authority_for(Auth, S).
must_grant_access(Provider, source_code(S, Auth)) :-
    provider(Provider),
    high_risk_ai_system(S),
    market_surveillance_authority(Auth),
    market_surveillance_authority_for(Auth, S),
    access_to_source_code_necessary(S, Auth),
    other_verification_insufficient_or_exhausted(S, Auth).
provenance(market_surveillance_authority_for/2, 'celex:32024R1689/oj#art_74').
provenance(exempt_surveillance_procedures/1, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_report/2, 'celex:32024R1689/oj#art_74').
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
declared(model_and_system_developed_by_same_provider/2, 'AI model and AI system are developed by the same provider', 'celex:32024R1689/oj#art_75').
declared(powers_of_market_surveillance_authority/2, 'AI Office has powers of market surveillance authority for AI system', 'celex:32024R1689/oj#art_75').
declared(general_purpose_ai_system_used_directly_for_high_risk/1, 'General-purpose AI system that can be used directly by deployers for at least one high-risk purpose', 'celex:32024R1689/oj#art_75').
declared(suspected_non_compliant/2, 'Market surveillance authority has sufficient reason to consider AI system non-compliant', 'celex:32024R1689/oj#art_75').
declared(must_cooperate/2, 'Actor must cooperate with another entity on a matter', 'celex:32024R1689/oj#art_75').
declared(must_inform/2, 'Actor must inform a recipient of a matter', 'celex:32024R1689/oj#art_75').
declared(permitted_submit_reasoned_request/2, 'Authority may submit a reasoned request to AI Office', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation_due_to_access/2, 'Authority is unable to conclude investigation because of lack of access to general-purpose AI model information', 'celex:32024R1689/oj#art_75').
declared(must_supply_information/2, 'AI Office must supply relevant information to requesting authority', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'Authority must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_75').
powers_of_market_surveillance_authority(Office, System) :-
    ai_office(Office),
    general_purpose_ai_system(System),
    general_purpose_ai_model(Model),
    model_and_system_developed_by_same_provider(Model, System).
must_cooperate(Authority, with(Office, compliance_evaluation(System))) :-
    market_surveillance_authority(Authority),
    ai_office(Office),
    general_purpose_ai_system_used_directly_for_high_risk(System),
    suspected_non_compliant(Authority, System).
must_inform(Authority, non_compliance_investigation(System, Board)) :-
    market_surveillance_authority(Authority),
    board(Board),
    general_purpose_ai_system_used_directly_for_high_risk(System),
    suspected_non_compliant(Authority, System).
must_inform(Authority, non_compliance_investigation(System, OtherAuthority)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority,
    general_purpose_ai_system_used_directly_for_high_risk(System),
    suspected_non_compliant(Authority, System).
permitted_submit_reasoned_request(Authority, request(Office, access_to_model_info(System))) :-
    market_surveillance_authority(Authority),
    ai_office(Office),
    unable_to_conclude_investigation_due_to_access(Authority, System).
must_supply_information(Office, to(Authority, within(days(30), System))) :-
    ai_office(Office),
    market_surveillance_authority(Authority),
    permitted_submit_reasoned_request(Authority, request(Office, access_to_model_info(System))).
must_safeguard_confidentiality(Authority, information_obtained(System)) :-
    market_surveillance_authority(Authority),
    permitted_submit_reasoned_request(Authority, request(_Office, access_to_model_info(System))).
provenance(powers_of_market_surveillance_authority/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(supervisory_powers_for_real_world_testing/2, 'authority has powers and competences to ensure testing in real world conditions accords with Regulation', 'celex:32024R1689/oj#art_76').
declared(supervised_within_sandbox/2, 'AI system is supervised within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(permitted_derogation_sandbox_testing/2, 'market surveillance authority may allow real-world testing in derogation from Article 60(4)(f) and (g)', 'celex:32024R1689/oj#art_76').
declared(informed_of_serious_incident_or_non_compliance/2, 'market surveillance authority is informed of a serious incident or has grounds that conditions are not met', 'celex:32024R1689/oj#art_76').
declared(permitted_testing_decision/3, 'market surveillance authority may decide to suspend/terminate testing or require modification', 'celex:32024R1689/oj#art_76').
declared(required_decision_content/2, 'decision or objection must state grounds and challenge procedures', 'celex:32024R1689/oj#art_76').
declared(must_communicate/2, 'actor must communicate information to another actor', 'celex:32024R1689/oj#art_76').
supervisory_powers_for_real_world_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing).
must_comply(Authority, verify_compliance(testing(Testing))) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, Sandbox),
    ai_regulatory_sandbox(Sandbox).
permitted_derogation_sandbox_testing(Authority, testing(Testing, Provider)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, _Sandbox),
    operator(Provider).
permitted_testing_decision(Authority, Testing, suspend_or_terminate) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident_or_non_compliance(Authority, Testing).
permitted_testing_decision(Authority, Testing, modify_aspects) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident_or_non_compliance(Authority, Testing).
required_decision_content(Decision, content(grounds, challenge_procedure)) :-
    permitted_testing_decision(_Authority, _Testing, Decision).
required_decision_content(objection(Testing), content(grounds, challenge_procedure)) :-
    testing_in_real_world_conditions(Testing).
must_communicate(Authority, grounds_to_other_authorities(Decision, OtherAuthorities, Testing)) :-
    market_surveillance_authority(Authority),
    permitted_testing_decision(Authority, Testing, Decision),
    market_surveillance_authority(OtherAuthorities),
    Authority \= OtherAuthorities.
provenance(supervisory_powers_for_real_world_testing/2, 'celex:32024R1689/oj#art_76').
provenance(must_comply/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_derogation_sandbox_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_testing_decision/3, 'celex:32024R1689/oj#art_76').
provenance(required_decision_content/2, 'celex:32024R1689/oj#art_76').
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
declared(fundamental_rights_authority/1, 'national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights', 'celex:32024R1689/oj#art_77').
declared(high_risk_ai_system_annex_3/1, 'high-risk AI system referred to in Annex III', 'celex:32024R1689/oj#art_77').
declared(documentation_under_regulation/2, 'documentation created or maintained under this Regulation for an AI system', 'celex:32024R1689/oj#art_77').
declared(necessary_for_mandate/2, 'access to documentation is necessary for effectively fulfilling authority mandate within its jurisdiction', 'celex:32024R1689/oj#art_77').
declared(permitted_request_and_access_documentation/2, 'authority has the power to request and access documentation of an AI system', 'celex:32024R1689/oj#art_77').
declared(must_inform/2, 'actor must inform another entity or authority of an action or event', 'celex:32024R1689/oj#art_77').
declared(member_state/1, 'EU Member State', 'celex:32024R1689/oj#art_77').
declared(must_identify/2, 'Member State must identify fundamental rights authorities and make the list publicly available', 'celex:32024R1689/oj#art_77').
declared(must_notify/2, 'actor must notify an object to specified recipients', 'celex:32024R1689/oj#art_77').
declared(must_keep_updated/2, 'actor must keep a list or information up to date', 'celex:32024R1689/oj#art_77').
declared(documentation_insufficient/2, 'documentation is insufficient to ascertain whether infringement of fundamental rights obligations occurred', 'celex:32024R1689/oj#art_77').
declared(permitted_request_testing/2, 'fundamental rights authority may make a reasoned request to market surveillance authority to organise technical testing', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority must organise testing with involvement of requesting authority within reasonable time', 'celex:32024R1689/oj#art_77').
declared(documentation_or_information_obtained_under_art_77/2, 'information or documentation obtained by a fundamental rights authority pursuant to Article 77', 'celex:32024R1689/oj#art_77').
declared(complies_with_confidentiality/2, 'entity complies with confidentiality obligations of Article 78 regarding obtained documentation', 'celex:32024R1689/oj#art_77').
permitted_request_and_access_documentation(Authority, Doc) :-
    fundamental_rights_authority(Authority),
    documentation_under_regulation(Doc, System),
    high_risk_ai_system_annex_3(System),
    necessary_for_mandate(Authority, Doc).
must_inform(Authority, request_documentation(Doc, MSA)) :-
    fundamental_rights_authority(Authority),
    permitted_request_and_access_documentation(Authority, Doc),
    market_surveillance_authority(MSA).
must_identify(MS, list_of_fundamental_rights_authorities) :-
    member_state(MS).
must_notify(MS, list(fundamental_rights_authorities, to(Commission, other_member_states))) :-
    member_state(MS),
    commission(Commission).
must_keep_updated(MS, list_of_fundamental_rights_authorities) :-
    member_state(MS).
permitted_request_testing(Authority, testing_request(MSA, System)) :-
    fundamental_rights_authority(Authority),
    market_surveillance_authority(MSA),
    high_risk_ai_system_annex_3(System),
    documentation_insufficient(Authority, System).
must_organise_testing(MSA, testing(System, involvement(Authority))) :-
    market_surveillance_authority(MSA),
    permitted_request_testing(Authority, testing_request(MSA, System)).
must_comply(Authority, confidentiality(Doc)) :-
    fundamental_rights_authority(Authority),
    documentation_or_information_obtained_under_art_77(Authority, Doc).
provenance(permitted_request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_updated/2, 'celex:32024R1689/oj#art_77').
provenance(permitted_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_comply/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(involved_in_application_of_regulation/1, 'entity involved in the application of the AI Regulation', 'celex:32024R1689/oj#art_78').
declared(strictly_necessary_data/2, 'data is strictly necessary for risk assessment or exercise of powers for an AI system', 'celex:32024R1689/oj#art_78').
declared(confidential_basis_exchange/2, 'information was exchanged on a confidential basis between competent authorities or Commission', 'celex:32024R1689/oj#art_78').
declared(sensitive_security_high_risk_system/1, 'high-risk AI system under Annex III points 1, 6, or 7 used or provided by sensitive authorities', 'celex:32024R1689/oj#art_78').
declared(prior_consultation_conducted/2, 'prior consultation of originating authority and deployer was conducted', 'celex:32024R1689/oj#art_78').
declared(jeopardises_public_or_national_security/1, 'disclosure of information would jeopardise public or national security interests', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure/1, 'disclosure of confidential information is prohibited', 'celex:32024R1689/oj#art_78').
declared(permitted_access_technical_documentation/2, 'person or authority is permitted to access technical documentation', 'celex:32024R1689/oj#art_78').
declared(security_clearance_appropriate/1, 'staff member holds appropriate level of security clearance', 'celex:32024R1689/oj#art_78').
declared(bilateral_confidentiality_arrangement_exists/2, 'bilateral or multilateral confidentiality arrangement exists with third country regulatory authority guaranteeing adequate confidentiality', 'celex:32024R1689/oj#art_78').
declared(permitted_exchange_confidential_information/3, 'actor is permitted to exchange confidential information with a third country authority', 'celex:32024R1689/oj#art_78').
involved_in_application_of_regulation(Entity) :-
    commission(Entity).
involved_in_application_of_regulation(Entity) :-
    market_surveillance_authority(Entity).
involved_in_application_of_regulation(Entity) :-
    notified_body(Entity).
must_comply(Entity, respect_confidentiality) :-
    involved_in_application_of_regulation(Entity).
must_comply(Authority, request_only_strictly_necessary_data(System)) :-
    market_surveillance_authority(Authority),
    ai_system(System).
must_comply(Authority, request_only_strictly_necessary_data(System)) :-
    commission(Authority),
    ai_system(System).
must_comply(Authority, implement_cybersecurity_measures) :-
    market_surveillance_authority(Authority).
must_comply(Authority, implement_cybersecurity_measures) :-
    commission(Authority).
must_comply(Authority, delete_data_when_no_longer_needed) :-
    market_surveillance_authority(Authority).
must_comply(Authority, delete_data_when_no_longer_needed) :-
    commission(Authority).
prohibited_disclosure(Info) :-
    confidential_basis_exchange(Info, System),
    sensitive_security_high_risk_system(System),
    jeopardises_public_or_national_security(Info),
    \+ prior_consultation_conducted(Info, System).
permitted_access_technical_documentation(Staff, System) :-
    market_surveillance_authority_for(Authority, System),
    sensitive_security_high_risk_system(System),
    security_clearance_appropriate(Staff).
permitted_exchange_confidential_information(commission, ThirdCountryAuthority, Info) :-
    bilateral_confidentiality_arrangement_exists(commission, ThirdCountryAuthority),
    confidential_basis_exchange(Info, _System).
permitted_exchange_confidential_information(MemberState, ThirdCountryAuthority, Info) :-
    bilateral_confidentiality_arrangement_exists(MemberState, ThirdCountryAuthority),
    confidential_basis_exchange(Info, _System).
provenance(involved_in_application_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(must_comply/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_access_technical_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_information/3, 'celex:32024R1689/oj#art_78').
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
declared(presents_risk_to_health_or_safety/1, 'AI system presents a risk to health or safety', 'celex:32024R1689/oj#art_79').
declared(presents_risk_to_fundamental_rights/1, 'AI system presents a risk to fundamental rights', 'celex:32024R1689/oj#art_79').
declared(presents_risk_to_vulnerable_groups/1, 'AI system presents a risk to vulnerable groups', 'celex:32024R1689/oj#art_79').
declared(evaluation_prescribed_period/2, 'prescribed period for corrective action on an AI system', 'celex:32024R1689/oj#art_79').
declared(non_compliance_cross_border/1, 'non-compliance of AI system is not restricted to national territory', 'celex:32024R1689/oj#art_79').
declared(notified_national_measure/2, 'notification of provisional national measure under Art 79(5)', 'celex:32024R1689/oj#art_79').
declared(objection_raised/2, 'objection raised against a provisional national measure', 'celex:32024R1689/oj#art_79').
declared(non_compliance_prohibited_practices/1, 'non-compliance is due to breach of prohibited practices under Art 5', 'celex:32024R1689/oj#art_79').
presents_risk(S) :-
    ai_system(S),
    presents_risk_to_health_or_safety(S).
presents_risk(S) :-
    ai_system(S),
    presents_risk_to_fundamental_rights(S).
must_comply(Msa, evaluation(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    presents_risk(S).
must_comply(Msa, cooperate_fundamental_rights(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    presents_risk_to_fundamental_rights(S).
must_comply(Op, cooperate(Msa)) :-
    operator(Op),
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    presents_risk(S).
must_comply(Msa, require_corrective_action(Op, S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliant(S),
    operator(Op).
must_comply(Msa, inform_notified_body(Nb, S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliant(S),
    notified_body(Nb).
must_report(Msa, non_compliance_cross_border(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliance_cross_border(S).
must_comply(Op, corrective_action_union_market(S)) :-
    operator(Op),
    non_compliant(S).
national_measure(Msa, provisional_measure(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliant(S),
    \+ adequate_corrective_action_taken(Op, S),
    operator(Op).
must_report(Msa, provisional_measure(S)) :-
    market_surveillance_authority(Msa),
    national_measure(Msa, provisional_measure(S)).
deemed_justified(Measure) :-
    notified_national_measure(Measure, S),
    non_compliance_prohibited_practices(S),
    \+ objection_raised(Measure, days(30)).
deemed_justified(Measure) :-
    notified_national_measure(Measure, S),
    \+ non_compliance_prohibited_practices(S),
    \+ objection_raised(Measure, months(3)).
must_comply(Msa, restrictive_measures(S)) :-
    market_surveillance_authority(Msa),
    deemed_justified(provisional_measure(S)).
provenance(presents_risk/1, 'celex:32024R1689/oj#art_79').
provenance(must_comply/2, 'celex:32024R1689/oj#art_79').
provenance(must_report/2, 'celex:32024R1689/oj#art_79').
provenance(national_measure/2, 'celex:32024R1689/oj#art_79').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_79').
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
declared(classified_non_high_risk/2, 'AI system classified by provider as non-high-risk', 'celex:32024R1689/oj#art_80').
declared(reason_to_consider_high_risk/2, 'market surveillance authority has sufficient reason to consider AI system is high-risk', 'celex:32024R1689/oj#art_80').
declared(evaluated_as_high_risk/2, 'market surveillance authority establishes AI system is high-risk', 'celex:32024R1689/oj#art_80').
declared(prescribed_compliance_period/2, 'period prescribed by market surveillance authority to achieve compliance', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/1, 'use of AI system is not restricted to national territory of authority', 'celex:32024R1689/oj#art_80').
declared(brought_into_compliance/2, 'provider brings AI system into compliance within prescribed period', 'celex:32024R1689/oj#art_80').
declared(subject_to_fines/2, 'provider is subject to fines under Article 99', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent/2, 'provider misclassified AI system to circumvent requirements', 'celex:32024R1689/oj#art_80').
declared(procedure_article_79_applies/1, 'procedure under Article 79(5)-(9) applies to AI system', 'celex:32024R1689/oj#art_80').
declared(member_states_and_commission/1, 'the Commission and the other Member States', 'celex:32024R1689/oj#art_80').
declared(permitted_perform_checks/2, 'market surveillance authority is permitted to perform appropriate checks', 'celex:32024R1689/oj#art_80').
must_comply(Auth, evaluate_classification(S)) :-
    market_surveillance_authority(Auth),
    classified_non_high_risk(Provider, S),
    provider(Provider),
    reason_to_consider_high_risk(Auth, S).
must_comply(Auth, require_compliance_and_corrective_action(Provider, S, Period)) :-
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    provider(Provider),
    prescribed_compliance_period(S, Period).
must_report(Auth, evaluation_results_and_actions(S, Recipients)) :-
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    use_not_restricted_to_national_territory(S),
    member_states_and_commission(Recipients).
must_comply(Provider, bring_into_compliance(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S).
subject_to_fines(Provider, non_compliance_within_period(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    \+ brought_into_compliance(Provider, S).
must_comply(Provider, take_corrective_action(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    making_available_on_market(S).
procedure_article_79_applies(S) :-
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    provider(Provider),
    \+ adequate_corrective_action_taken(Provider, S).
subject_to_fines(Provider, misclassification_to_circumvent(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    misclassified_to_circumvent(Provider, S).
permitted_perform_checks(Auth, S) :-
    market_surveillance_authority(Auth),
    ai_system(S).
provenance(must_comply/2, 'celex:32024R1689/oj#art_80').
provenance(must_report/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(procedure_article_79_applies/1, 'celex:32024R1689/oj#art_80').
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
declared(objection_raised/2, 'A market surveillance authority raises an objection to a national measure within the applicable deadline', 'celex:32024R1689/oj#art_81').
declared(commission_considers_contrary_to_union_law/2, 'The Commission considers a national measure to be contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(triggers_union_safeguard_procedure/2, 'Conditions trigger the Union safeguard procedure for a national measure', 'celex:32024R1689/oj#art_81').
declared(prohibited_ai_practice_non_compliance/1, 'Non-compliance with the prohibition of AI practices referred to in Article 5', 'celex:32024R1689/oj#art_81').
declared(deadline_decision/2, 'Applicable deadline for the Commission decision on a national measure', 'celex:32024R1689/oj#art_81').
declared(national_measure_considered_justified/2, 'The Commission decides that the national measure is justified', 'celex:32024R1689/oj#art_81').
declared(national_measure_considered_unjustified/2, 'The Commission decides that the national measure is unjustified', 'celex:32024R1689/oj#art_81').
declared(must_consult/2, 'An actor must enter into consultation regarding a national measure', 'celex:32024R1689/oj#art_81').
declared(must_evaluate/2, 'An actor must evaluate a national measure', 'celex:32024R1689/oj#art_81').
declared(must_notify/2, 'An actor must notify another entity of a decision or action', 'celex:32024R1689/oj#art_81').
declared(must_inform/2, 'An actor must inform another entity of a matter', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member States must take appropriate restrictive measures concerning an AI system', 'celex:32024R1689/oj#art_81').
declared(must_withdraw/2, 'Actor must withdraw a specified measure or system', 'celex:32024R1689/oj#art_81').
declared(must_apply_procedure/2, 'Actor must apply a specific legal procedure', 'celex:32024R1689/oj#art_81').
declared(shortcoming_in_standards_or_specifications/1, 'Non-compliance is attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
triggers_union_safeguard_procedure(Commission, Measure) :-
    commission(Commission),
    objection_raised(_Authority, Measure).
triggers_union_safeguard_procedure(Commission, Measure) :-
    commission(Commission),
    commission_considers_contrary_to_union_law(Commission, Measure).
must_consult(Commission, consultation(Measure, Authority, Operator)) :-
    triggers_union_safeguard_procedure(Commission, Measure),
    market_surveillance_authority(Authority),
    operator(Operator).
must_evaluate(Commission, Measure) :-
    triggers_union_safeguard_procedure(Commission, Measure).
must_decide(Commission, justification(Measure, within(Deadline))) :-
    triggers_union_safeguard_procedure(Commission, Measure),
    deadline_decision(Measure, Deadline).
deadline_decision(Measure, days(60)) :-
    prohibited_ai_practice_non_compliance(Measure).
deadline_decision(Measure, months(6)) :-
    \+ prohibited_ai_practice_non_compliance(Measure).
must_notify(Commission, decision(justification(Measure), Authority)) :-
    triggers_union_safeguard_procedure(Commission, Measure),
    market_surveillance_authority(Authority).
must_inform(Commission, decision(justification(Measure), other_market_surveillance_authorities)) :-
    triggers_union_safeguard_procedure(Commission, Measure).
must_take_restrictive_measures(MemberState, restrictive_measures(System)) :-
    national_measure_considered_justified(Commission, national_measure(MemberStateAuth, System)),
    commission(Commission),
    market_surveillance_authority(MemberStateAuth),
    ai_system(System).
must_inform(MemberState, commission(restrictive_measures(System))) :-
    must_take_restrictive_measures(MemberState, restrictive_measures(System)).
must_withdraw(MemberStateAuth, Measure) :-
    national_measure_considered_unjustified(Commission, Measure),
    commission(Commission),
    market_surveillance_authority(MemberStateAuth).
must_inform(MemberStateAuth, commission(withdrawal(Measure))) :-
    must_withdraw(MemberStateAuth, Measure).
must_apply_procedure(Commission, standardisation_objection_procedure(regulation_1025_2012_art_11)) :-
    commission(Commission),
    national_measure_considered_justified(Commission, Measure),
    shortcoming_in_standards_or_specifications(Measure).
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_union_law/2, 'celex:32024R1689/oj#art_81').
provenance(triggers_union_safeguard_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(prohibited_ai_practice_non_compliance/1, 'celex:32024R1689/oj#art_81').
provenance(deadline_decision/2, 'celex:32024R1689/oj#art_81').
provenance(national_measure_considered_justified/2, 'celex:32024R1689/oj#art_81').
provenance(national_measure_considered_unjustified/2, 'celex:32024R1689/oj#art_81').
provenance(must_consult/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(shortcoming_in_standards_or_specifications/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_82').
declared(evaluated_under_article_79/2, 'authority evaluated the AI system under Article 79', 'celex:32024R1689/oj#art_82').
declared(consulted_relevant_national_authority/2, 'authority consulted the relevant national authority referred to in Art 77(1)', 'celex:32024R1689/oj#art_82').
declared(complies_with_regulation/1, 'AI system complies with Regulation 2024/1689', 'celex:32024R1689/oj#art_82').
declared(presents_risk/1, 'AI system presents a risk to health, safety, fundamental rights, or public interest', 'celex:32024R1689/oj#art_82').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_82').
declared(finding_compliant_system_presents_risk/2, 'authority has made a finding that a compliant high-risk AI system presents a risk', 'celex:32024R1689/oj#art_82').
declared(must_require/2, 'authority must require operator to take measures', 'celex:32024R1689/oj#art_82').
declared(must_take_corrective_action/2, 'operator must take corrective action regarding the AI system', 'celex:32024R1689/oj#art_82').
declared(must_inform/2, 'actor must inform recipient of specified information', 'celex:32024R1689/oj#art_82').
declared(must_consult/2, 'actor must enter into consultation with entities', 'celex:32024R1689/oj#art_82').
declared(must_evaluate/2, 'actor must evaluate national measures', 'celex:32024R1689/oj#art_82').
declared(must_communicate/2, 'actor must communicate decision to specified entities', 'celex:32024R1689/oj#art_82').
declared(authority_of_member_state/2, 'authority belongs to a Member State', 'celex:32024R1689/oj#art_82').
declared(operator_for_system/2, 'operator is responsible for the AI system', 'celex:32024R1689/oj#art_82').
finding_compliant_system_presents_risk(MSA, System) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(System),
    evaluated_under_article_79(MSA, System),
    consulted_relevant_national_authority(MSA, System),
    complies_with_regulation(System),
    presents_risk(System).
must_require(MSA, take_measures_to_remove_risk(Operator, System)) :-
    finding_compliant_system_presents_risk(MSA, System),
    operator_for_system(Operator, System).
must_take_corrective_action(Operator, all_systems(System)) :-
    operator_for_system(Operator, System),
    finding_compliant_system_presents_risk(_MSA, System).
must_inform(MS, finding_compliant_system_presents_risk(System)) :-
    member_state(MS),
    authority_of_member_state(MSA, MS),
    finding_compliant_system_presents_risk(MSA, System).
must_consult(Comm, consultation_on_measures(MS, Operator, System)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    operator_for_system(Operator, System).
must_evaluate(Comm, national_measure(MS, System)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    national_measure(MS, System).
must_decide(Comm, justification_of_measure(national_measure(MS, System))) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    national_measure(MS, System).
must_communicate(Comm, decision_on_measure(national_measure(MS, System), Operator)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS),
    operator_for_system(Operator, System).
must_inform(Comm, decision_on_measure(national_measure(MS, System), other_member_states)) :-
    commission(Comm),
    finding_compliant_system_presents_risk(MSA, System),
    authority_of_member_state(MSA, MS).
provenance(finding_compliant_system_presents_risk/2, 'celex:32024R1689/oj#art_82').
provenance(must_require/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(persists_formal_non_compliance/2, 'formal non-compliance persists for the AI system', 'celex:32024R1689/oj#art_83').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_83').
declared(provider_of/2, 'entity is the provider of an AI system', 'celex:32024R1689/oj#art_83').
declared(must_require/2, 'authority must require an actor to perform an action', 'celex:32024R1689/oj#art_83').
declared(must_restrict_prohibit_recall_or_withdraw/2, 'authority must restrict, prohibit, recall or withdraw the AI system', 'celex:32024R1689/oj#art_83').
must_require(Authority, require_end_non_compliance(Provider, System, Issue)) :-
    market_surveillance_authority_for(Authority, System),
    provider_of(Provider, System),
    formal_non_compliance(System, Issue).
must_restrict_prohibit_recall_or_withdraw(Authority, System) :-
    market_surveillance_authority_for(Authority, System),
    high_risk_ai_system(System),
    persists_formal_non_compliance(System, Issue),
    formal_non_compliance(System, Issue).
provenance(must_require/2, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_prohibit_recall_or_withdraw/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'entity designated as a Union AI testing support structure', 'celex:32024R1689/oj#art_84').
declared(must_designate/2, 'actor must designate a specified structure or body', 'celex:32024R1689/oj#art_84').
declared(must_provide_advice/2, 'structure must provide advice to requesting body', 'celex:32024R1689/oj#art_84').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_84').
must_designate(Actor, union_ai_testing_support_structure(tasks(regulation_2019_1020_art_21_par_6))) :-
    commission(Actor).
must_provide_advice(Structure, independent_advice(technical_or_scientific, Requestor)) :-
    union_ai_testing_support_structure(Structure),
    requesting_authority_art_84(Requestor).
requesting_authority_art_84(Requestor) :-
    board(Requestor).
requesting_authority_art_84(Requestor) :-
    commission(Requestor).
requesting_authority_art_84(Requestor) :-
    market_surveillance_authority(Requestor).
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(board/1, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(natural_or_legal_person/1, 'entity is a natural or legal person', 'celex:32024R1689/oj#art_85').
declared(grounds_to_consider_infringement/2, 'person has grounds to consider that there has been an infringement of the regulation', 'celex:32024R1689/oj#art_85').
declared(permitted_submit_complaint/2, 'person is permitted to submit a complaint to a market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(complaint/1, 'complaint submitted regarding infringement', 'celex:32024R1689/oj#art_85').
declared(must_take_into_account/2, 'authority must take into account complaint for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(must_handle/2, 'authority must handle complaint according to dedicated procedures', 'celex:32024R1689/oj#art_85').
permitted_submit_complaint(Person, complaint_to(Authority)) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person, 'celex:32024R1689/oj'),
    market_surveillance_authority(Authority).
must_take_into_account(Authority, complaint_for_market_surveillance_activities(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).
must_handle(Authority, complaint_in_line_with_dedicated_procedures(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).
provenance(permitted_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(high_risk_ai_system_annex_3/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_86').
declared(decision_taken_on_basis_of_output/3, 'Decision is taken by deployer on the basis of AI system output', 'celex:32024R1689/oj#art_86').
declared(subject_to_decision/2, 'Person is subject to a decision', 'celex:32024R1689/oj#art_86').
declared(produces_legal_or_significant_effects/1, 'Decision produces legal effects or similarly significantly affects a person', 'celex:32024R1689/oj#art_86').
declared(considers_adverse_impact/2, 'Person considers the decision to have an adverse impact on health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(exempt_right_to_explanation/2, 'Use of AI system is exempt or restricted under Union or national law', 'celex:32024R1689/oj#art_86').
declared(explanation_provided_under_other_union_law/2, 'Right to explanation is otherwise provided for under Union law', 'celex:32024R1689/oj#art_86').
declared(permitted_right_to_explanation/2, 'Person has the right to obtain clear and meaningful explanations from the deployer', 'celex:32024R1689/oj#art_86').
declared(must_provide/2, 'Deployer must provide clear and meaningful explanations to affected person', 'celex:32024R1689/oj#art_86').
permitted_right_to_explanation(Person, explanation(Deployer, Decision, System)) :-
    subject_to_decision(Person, Decision),
    decision_taken_on_basis_of_output(Deployer, Decision, System),
    high_risk_ai_system_annex_3(System),
    \+ annex_3_point_2_system(System),
    produces_legal_or_significant_effects(Decision),
    considers_adverse_impact(Person, Decision),
    \+ exempt_right_to_explanation(Deployer, System),
    \+ explanation_provided_under_other_union_law(Person, Decision).
must_provide(Deployer, explanation(Person, Decision, System)) :-
    deployer(Deployer),
    permitted_right_to_explanation(Person, explanation(Deployer, Decision, System)).
provenance(permitted_right_to_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(must_provide/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').

% ==== celex:32024R1689/oj#art_87 ====
declared(directive_2019_1937_applies/1, 'Directive (EU) 2019/1937 applies to the reporting or protection matter', 'celex:32024R1689/oj#art_87').
directive_2019_1937_applies(reporting_of_infringements(ai_act)).
directive_2019_1937_applies(protection_of_reporting_persons(ai_act)).
provenance(directive_2019_1937_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(exclusive_powers_supervise_and_enforce/2, 'Entity has exclusive powers to supervise and enforce obligations of Chapter V', 'celex:32024R1689/oj#art_88').
declared(entrusted_implementation_task/2, 'Entity is entrusted with the implementation of enforcement tasks', 'celex:32024R1689/oj#art_88').
declared(permitted_request_exercise_of_powers/2, 'Authority may request the Commission to exercise enforcement powers under Chapter IX Section 5', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate_for_tasks/2, 'Requesting exercise of powers is necessary and proportionate to assist the fulfilment of tasks', 'celex:32024R1689/oj#art_88').
exclusive_powers_supervise_and_enforce(Entity, chapter_5) :-
    commission(Entity).
entrusted_implementation_task(Office, supervise_and_enforce(chapter_5)) :-
    ai_office(Office).
permitted_request_exercise_of_powers(Authority, Commission) :-
    market_surveillance_authority(Authority),
    commission(Commission),
    necessary_and_proportionate_for_tasks(Authority, exercise_powers(chapter_9_section_5)).
provenance(exclusive_powers_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(entrusted_implementation_task/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(permitted_monitoring_action/2, 'AI Office may take necessary actions to monitor implementation and compliance by a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_89').
declared(permitted_lodge_complaint/2, 'Downstream provider is permitted to lodge a complaint alleging infringement against a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_89').
declared(duly_reasoned_complaint/1, 'A complaint is duly reasoned and contains the required indications', 'celex:32024R1689/oj#art_89').
declared(indicates_contact_point/1, 'Complaint indicates the point of contact of the provider concerned', 'celex:32024R1689/oj#art_89').
declared(indicates_relevant_facts_and_infringement_reasons/1, 'Complaint indicates description of relevant facts, provisions concerned, and reasons for alleged infringement', 'celex:32024R1689/oj#art_89').
permitted_monitoring_action(Office, Provider) :-
    ai_office(Office),
    provider_of_general_purpose_ai_model(Provider).
permitted_lodge_complaint(DownstreamProvider, complaint(Provider, ComplaintDetails)) :-
    downstream_provider(DownstreamProvider),
    provider_of_general_purpose_ai_model(Provider),
    duly_reasoned_complaint(ComplaintDetails).
duly_reasoned_complaint(C) :-
    indicates_contact_point(C),
    indicates_relevant_facts_and_infringement_reasons(C).
provenance(permitted_monitoring_action/2, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(duly_reasoned_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(indicates_contact_point/1, 'celex:32024R1689/oj#art_89').
provenance(indicates_relevant_facts_and_infringement_reasons/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_90').
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'qualified alert by the scientific panel on systemic risk', 'celex:32024R1689/oj#art_90').
declared(alert_target_model/2, 'AI model that is the subject of a qualified alert', 'celex:32024R1689/oj#art_90').
declared(suspected_concrete_identifiable_risk_union_level/1, 'suspected to pose concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_art_51/1, 'meets the conditions referred to in Article 51', 'celex:32024R1689/oj#art_90').
declared(permitted_provide_alert/3, 'actor is permitted to provide an alert to a recipient regarding a model', 'celex:32024R1689/oj#art_90').
declared(informed/2, 'actor has informed another actor or body', 'celex:32024R1689/oj#art_90').
declared(permitted_exercise_powers/2, 'actor is permitted to exercise investigative/enforcement powers regarding a model', 'celex:32024R1689/oj#art_90').
declared(must_inform/2, 'actor must inform recipient of an event or measure', 'celex:32024R1689/oj#art_90').
declared(investigation_measure/1, 'measure taken under Articles 91 to 94', 'celex:32024R1689/oj#art_90').
declared(duly_reasoned/1, 'alert is duly reasoned', 'celex:32024R1689/oj#art_90').
declared(indicates_provider_point_of_contact/1, 'alert indicates point of contact of the provider of the model', 'celex:32024R1689/oj#art_90').
declared(indicates_description_of_facts_and_reasons/1, 'alert indicates description of relevant facts and reasons', 'celex:32024R1689/oj#art_90').
declared(required_qualified_alert/1, 'qualified alert meets the mandatory content requirements', 'celex:32024R1689/oj#art_90').
permitted_provide_alert(Panel, ai_office, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    suspected_concrete_identifiable_risk_union_level(Model).
permitted_provide_alert(Panel, ai_office, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    meets_conditions_art_51(Model).
permitted_exercise_powers(commission, powers_chapter_9_section_5(Model)) :-
    qualified_alert(Alert),
    alert_target_model(Alert, Model),
    board(Board),
    informed(commission, Board).
must_inform(ai_office, measure(Board, Measure)) :-
    board(Board),
    investigation_measure(Measure).
required_qualified_alert(Alert) :-
    qualified_alert(Alert),
    duly_reasoned(Alert),
    indicates_provider_point_of_contact(Alert),
    indicates_description_of_facts_and_reasons(Alert).
provenance(permitted_provide_alert/3, 'celex:32024R1689/oj#art_90').
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
permitted_request_documentation(Commission, Provider) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).
permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider_of_general_purpose_ai_model(Provider).
permitted_request_information_for_scientific_panel(Commission, Provider) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    substantiated_request_from_scientific_panel(Commission, Provider),
    necessary_and_proportionate_for_scientific_panel_tasks(Provider).
must_supply_requested_information(Provider, Request) :-
    provider_of_general_purpose_ai_model(Provider),
    request_for_information_states_required_elements(Request).
must_supply_requested_information(Rep, Request) :-
    representative_of_provider(Rep, Provider),
    provider_of_general_purpose_ai_model(Provider),
    request_for_information_states_required_elements(Request).
provenance(permitted_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(permitted_request_information_for_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(permitted_conduct_evaluation/2, 'AI Office may conduct evaluation of general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(consulted_board/1, 'AI Office has consulted the Board regarding evaluation of a model', 'celex:32024R1689/oj#art_92').
declared(insufficient_information_under_art_91/1, 'Information gathered under Article 91 is insufficient', 'celex:32024R1689/oj#art_92').
declared(systemic_risk_model/1, 'General-purpose AI model presents systemic risk', 'celex:32024R1689/oj#art_92').
declared(permitted_appoint_expert/2, 'Commission may decide to appoint independent expert to evaluate', 'celex:32024R1689/oj#art_92').
declared(meets_criteria_art_68_par_2/1, 'Expert meets the criteria outlined in Article 68(2)', 'celex:32024R1689/oj#art_92').
declared(permitted_request_access/2, 'Commission may request access to model through APIs or technical means', 'celex:32024R1689/oj#art_92').
declared(valid_access_request/1, 'Access request complies with Article 92(4) requirements', 'celex:32024R1689/oj#art_92').
declared(must_provide_access/2, 'Provider or representative must provide requested access', 'celex:32024R1689/oj#art_92').
declared(must_adopt_implementing_acts/2, 'Commission must adopt implementing acts setting out arrangements and conditions for evaluations', 'celex:32024R1689/oj#art_92').
permitted_conduct_evaluation(Office, evaluate(Model, assess_compliance)) :-
    ai_office(Office),
    general_purpose_ai_model(Model),
    consulted_board(Model),
    insufficient_information_under_art_91(Model).
permitted_conduct_evaluation(Office, evaluate(Model, investigate_systemic_risk)) :-
    ai_office(Office),
    general_purpose_ai_model(Model),
    consulted_board(Model),
    systemic_risk_model(Model).
permitted_appoint_expert(Comm, expert(Expert, Model)) :-
    commission(Comm),
    general_purpose_ai_model(Model),
    meets_criteria_art_68_par_2(Expert).
permitted_request_access(Comm, request_access(Model, Means)) :-
    commission(Comm),
    general_purpose_ai_model(Model),
    member(Means, [apis, technical_tools, source_code]).
must_provide_access(Provider, AccessRequest) :-
    provider_of_general_purpose_ai_model(Provider),
    valid_access_request(AccessRequest).
must_provide_access(Rep, AccessRequest) :-
    authorised_representative_of(Rep, Provider),
    provider_of_general_purpose_ai_model(Provider),
    valid_access_request(AccessRequest).
must_adopt_implementing_acts(Comm, implementing_acts(evaluations)) :-
    commission(Comm).
permitted_initiate_structured_dialogue(Office, Provider) :-
    ai_office(Office),
    provider_of_general_purpose_ai_model(Provider).
provenance(permitted_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_expert/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(permitted_request_measures/2, 'Commission may request provider to take measures', 'celex:32024R1689/oj#art_93').
declared(necessary_and_appropriate/1, 'action or measure is necessary and appropriate', 'celex:32024R1689/oj#art_93').
declared(evaluation_art_92_systemic_risk_concern/1, 'evaluation under Article 92 has given rise to serious and substantiated concern of systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model presents systemic risk', 'celex:32024R1689/oj#art_93').
declared(offers_commitments/2, 'provider offers commitments to implement mitigation measures to address systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(during_structured_dialogue/2, 'action occurs during structured dialogue between AI Office and provider', 'celex:32024R1689/oj#art_93').
declared(permitted_make_commitments_binding/2, 'Commission may by decision make commitments binding and declare no further grounds for action', 'celex:32024R1689/oj#art_93').
permitted_request_measures(Commission, request(Provider, comply_obligations_art_53_54)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    necessary_and_appropriate(request(Provider, comply_obligations_art_53_54)).
permitted_request_measures(Commission, request(Provider, implement_mitigation_measures(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    evaluation_art_92_systemic_risk_concern(Model),
    necessary_and_appropriate(request(Provider, implement_mitigation_measures(Model))).
permitted_request_measures(Commission, request(Provider, restrict_making_available(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, restrict_making_available(Model))).
permitted_request_measures(Commission, request(Provider, withdraw(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, withdraw(Model))).
permitted_request_measures(Commission, request(Provider, recall(Model))) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model(Model),
    necessary_and_appropriate(request(Provider, recall(Model))).
permitted_make_commitments_binding(Commission, commitments(Provider, Commitments)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    general_purpose_ai_model_with_systemic_risk(Model),
    during_structured_dialogue(Provider, dialogue),
    offers_commitments(Provider, Commitments).
provenance(permitted_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply/2, 'procedural rights under a specified legal act apply to an operator', 'celex:32024R1689/oj#art_94').
procedural_rights_apply(Provider, regulation_2019_1020_article_18) :-
    provider_of_general_purpose_ai_model(Provider).
provenance(procedural_rights_apply/2, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct/1, 'code of conduct for voluntary application of requirements', 'celex:32024R1689/oj#art_95').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_95').
declared(must_encourage_and_facilitate/2, 'actor must encourage and facilitate a specified activity or measure', 'celex:32024R1689/oj#art_95').
declared(must_facilitate/2, 'actor must facilitate a specified activity or measure', 'celex:32024R1689/oj#art_95').
declared(permitted_draw_up_code_of_conduct/1, 'entity is permitted to draw up a code of conduct', 'celex:32024R1689/oj#art_95').
declared(organisation_representing_providers_or_deployers/1, 'organisation representing providers, deployers, or both', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account/2, 'actor must take into account specified interests or matters in performing an action', 'celex:32024R1689/oj#art_95').
must_encourage_and_facilitate(Actor, drawing_up_codes_of_conduct(non_high_risk_systems)) :-
    ai_office(Actor).
must_encourage_and_facilitate(Actor, drawing_up_codes_of_conduct(non_high_risk_systems)) :-
    member_state(Actor).
must_facilitate(Actor, drawing_up_codes_of_conduct(all_ai_systems)) :-
    ai_office(Actor).
must_facilitate(Actor, drawing_up_codes_of_conduct(all_ai_systems)) :-
    member_state(Actor).
permitted_draw_up_code_of_conduct(Actor) :-
    provider(Actor).
permitted_draw_up_code_of_conduct(Actor) :-
    deployer(Actor).
permitted_draw_up_code_of_conduct(Actor) :-
    organisation_representing_providers_or_deployers(Actor).
must_take_into_account(Actor, needs_of_smes_and_startups(drawing_up_codes_of_conduct)) :-
    ai_office(Actor).
must_take_into_account(Actor, needs_of_smes_and_startups(drawing_up_codes_of_conduct)) :-
    member_state(Actor).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_draw_up_code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop/2, 'actor must develop a specified item or instrument', 'celex:32024R1689/oj#art_96').
declared(must_update/2, 'actor must update a specified item or instrument', 'celex:32024R1689/oj#art_96').
declared(requested_update/2, 'an entity requested an update of guidelines', 'celex:32024R1689/oj#art_96').
declared(deemed_necessary/1, 'an action or measure is deemed necessary', 'celex:32024R1689/oj#art_96').
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_96').
must_develop(C, guidelines(implementation_of_regulation)) :-
    commission(C).
must_update(C, guidelines(previously_adopted)) :-
    commission(C),
    deemed_necessary(update_guidelines),
    member_state(M),
    requested_update(M, guidelines(previously_adopted)).
must_update(C, guidelines(previously_adopted)) :-
    commission(C),
    deemed_necessary(update_guidelines),
    ai_office(Office),
    requested_update(Office, guidelines(previously_adopted)).
must_update(C, guidelines(previously_adopted)) :-
    commission(C),
    deemed_necessary(update_guidelines).
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
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
declared(delegated_power_conferred/2, 'Delegation of power is conferred on the Commission under specified article/matter', 'celex:32024R1689/oj#art_97').
declared(tacitly_extended/1, 'Delegation of power is tacitly extended for five years', 'celex:32024R1689/oj#art_97').
declared(opposed_extension/1, 'Parliament or Council opposed tacit extension of delegation', 'celex:32024R1689/oj#art_97').
declared(revoked_delegation/1, 'European Parliament or Council has decided to revoke delegation of power', 'celex:32024R1689/oj#art_97').
declared(delegated_power_active/2, 'Delegation of power to the Commission is currently active and not revoked', 'celex:32024R1689/oj#art_97').
declared(must_consult/2, 'Commission must consult designated experts before adopting delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission must notify adopted delegated act to Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(delegated_act_enters_into_force/1, 'Delegated act enters into force after notification and expiry of scrutiny period without objection', 'celex:32024R1689/oj#art_97').
declared(objection_expressed/1, 'Objection to delegated act expressed by Parliament or Council within scrutiny period', 'celex:32024R1689/oj#art_97').
declared(non_objection_confirmed/1, 'Parliament and Council both informed Commission that they will not object', 'celex:32024R1689/oj#art_97').
declared(scrutiny_period_expired/1, 'Scrutiny period for delegated act has expired', 'celex:32024R1689/oj#art_97').
declared(delegated_act/1, 'Act is an adopted delegated act under the regulation', 'celex:32024R1689/oj#art_97').
delegated_power_conferred(commission, article(6, par(6))).
delegated_power_conferred(commission, article(6, par(7))).
delegated_power_conferred(commission, article(7, par(1))).
delegated_power_conferred(commission, article(7, par(3))).
delegated_power_conferred(commission, article(11, par(3))).
delegated_power_conferred(commission, article(43, par(5))).
delegated_power_conferred(commission, article(43, par(6))).
delegated_power_conferred(commission, article(47, par(5))).
delegated_power_conferred(commission, article(51, par(3))).
delegated_power_conferred(commission, article(52, par(4))).
delegated_power_conferred(commission, article(53, par(5))).
delegated_power_conferred(commission, article(53, par(6))).
tacitly_extended(Power) :-
    delegated_power_conferred(commission, Power),
    \+ opposed_extension(Power).
must_report(commission, delegation_of_power(months(9), before_end_of_period)).
delegated_power_active(commission, Power) :-
    delegated_power_conferred(commission, Power),
    \+ revoked_delegation(Power).
must_consult(commission, experts(member_states, Act)) :-
    delegated_act(Act).
must_notify(commission, delegated_act(Act, european_parliament_and_council)) :-
    delegated_act(Act).
delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    scrutiny_period_expired(Act),
    \+ objection_expressed(Act).
delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    non_objection_confirmed(Act).
provenance(delegated_power_conferred/2, 'celex:32024R1689/oj#art_97').
provenance(tacitly_extended/1, 'celex:32024R1689/oj#art_97').
provenance(delegated_power_active/2, 'celex:32024R1689/oj#art_97').
provenance(must_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_enters_into_force/1, 'celex:32024R1689/oj#art_97').
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
declared(assisted_by_committee/2, 'Entity is assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning_of_regulation_182_2011/1, 'Committee is a committee within the meaning of Regulation (EU) No 182/2011', 'celex:32024R1689/oj#art_98').
declared(examination_procedure_applies/1, 'Article 5 of Regulation (EU) No 182/2011 applies to the adoption procedure', 'celex:32024R1689/oj#art_98').
declared(reference_made_to_art_98_par_2/1, 'Reference is made to Article 98(2) of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_98').
assisted_by_committee(Commission, committee(regulation_182_2011)) :-
    commission(Commission).
committee_within_meaning_of_regulation_182_2011(committee(regulation_182_2011)).
examination_procedure_applies(Action) :-
    reference_made_to_art_98_par_2(Action).
provenance(assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation_182_2011/1, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_99').
declared(sme_including_startup/1, 'entity is an SME, including a start-up', 'celex:32024R1689/oj#art_99').
declared(undertaking/1, 'entity is an undertaking', 'celex:32024R1689/oj#art_99').
declared(infringement/2, 'actor commits a specific legal infringement', 'celex:32024R1689/oj#art_99').
declared(administrative_fine_limit/3, 'maximum administrative fine for an actor and infringement (amount EUR, turnover percentage, comparison rule)', 'celex:32024R1689/oj#art_99').
declared(must_lay_down_rules/2, 'Member State must lay down rules on a matter', 'celex:32024R1689/oj#art_99').
declared(must_notify/2, 'actor must notify another actor of a matter', 'celex:32024R1689/oj#art_99').
must_lay_down_rules(MS, penalties_and_enforcement_measures) :-
    member_state(MS).
must_notify(MS, commission(rules_on_penalties)) :-
    member_state(MS).
must_notify(MS, commission(amendment(rules_on_penalties))) :-
    member_state(MS).
administrative_fine_limit(Actor, prohibited_ai_practices, limit(eur(35000000), percent(7), higher)) :-
    infringement(Actor, prohibited_ai_practices),
    undertaking(Actor),
    \+ sme_including_startup(Actor).
administrative_fine_limit(Actor, prohibited_ai_practices, limit(eur(35000000), percent(0), fixed)) :-
    infringement(Actor, prohibited_ai_practices),
    \+ undertaking(Actor),
    \+ sme_including_startup(Actor).
administrative_fine_limit(Actor, infringement_article_99_4, limit(eur(15000000), percent(3), higher)) :-
    infringement(Actor, infringement_article_99_4),
    undertaking(Actor),
    \+ sme_including_startup(Actor).
administrative_fine_limit(Actor, infringement_article_99_4, limit(eur(15000000), percent(0), fixed)) :-
    infringement(Actor, infringement_article_99_4),
    \+ undertaking(Actor),
    \+ sme_including_startup(Actor).
administrative_fine_limit(Actor, misleading_information, limit(eur(7500000), percent(1), higher)) :-
    infringement(Actor, misleading_information),
    undertaking(Actor),
    \+ sme_including_startup(Actor).
administrative_fine_limit(Actor, misleading_information, limit(eur(7500000), percent(0), fixed)) :-
    infringement(Actor, misleading_information),
    \+ undertaking(Actor),
    \+ sme_including_startup(Actor).
administrative_fine_limit(Actor, prohibited_ai_practices, limit(eur(35000000), percent(7), lower)) :-
    infringement(Actor, prohibited_ai_practices),
    sme_including_startup(Actor).
administrative_fine_limit(Actor, infringement_article_99_4, limit(eur(15000000), percent(3), lower)) :-
    infringement(Actor, infringement_article_99_4),
    sme_including_startup(Actor).
administrative_fine_limit(Actor, misleading_information, limit(eur(7500000), percent(1), lower)) :-
    infringement(Actor, misleading_information),
    sme_including_startup(Actor).
must_lay_down_rules(MS, fines_on_public_authorities) :-
    member_state(MS).
must_submit_annual_report(MS, commission(administrative_fines_and_litigation)) :-
    member_state(MS).
provenance(must_lay_down_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify/2, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine_limit/3, 'celex:32024R1689/oj#art_99').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_99').
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
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor (EDPS)', 'celex:32024R1689/oj#art_100').
declared(within_scope/1, 'entity falls within the scope of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_100').
declared(prohibited_ai_practice_infringement/2, 'infringement of prohibition of AI practices referred to in Article 5 by an entity', 'celex:32024R1689/oj#art_100').
declared(other_non_compliance_infringement/2, 'non-compliance with requirements or obligations other than Article 5 by an entity', 'celex:32024R1689/oj#art_100').
declared(permitted_impose_fine/3, 'authority is permitted to impose an administrative fine on an entity for an infringement', 'celex:32024R1689/oj#art_100').
declared(maximum_fine_amount/2, 'maximum fine amount applicable to a specific category of infringement', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'authority must give the subject entity opportunity of being heard before decision', 'celex:32024R1689/oj#art_100').
declared(permitted_base_decision_only_on/2, 'authority may base decision only on elements and circumstances commented on', 'celex:32024R1689/oj#art_100').
declared(must_associate_complainant/2, 'authority must associate complainants closely with the proceedings', 'celex:32024R1689/oj#art_100').
declared(entitled_access_to_file/1, 'party concerned is entitled to access the file of the supervisory authority', 'celex:32024R1689/oj#art_100').
declared(subject_of_proceedings/2, 'entity is the subject of proceedings conducted by an authority', 'celex:32024R1689/oj#art_100').
declared(must_notify/2, 'actor must notify recipient of specified matters', 'celex:32024R1689/oj#art_100').
permitted_impose_fine(Supervisor, Entity, Infringement) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    within_scope(Entity),
    prohibited_ai_practice_infringement(Entity, Infringement).
permitted_impose_fine(Supervisor, Entity, Infringement) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    within_scope(Entity),
    other_non_compliance_infringement(Entity, Infringement).
maximum_fine_amount(Infringement, eur(1500000)) :-
    prohibited_ai_practice_infringement(_Entity, Infringement).
maximum_fine_amount(Infringement, eur(750000)) :-
    other_non_compliance_infringement(_Entity, Infringement).
must_give_opportunity_to_be_heard(Supervisor, Entity) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    subject_of_proceedings(Entity, Supervisor).
permitted_base_decision_only_on(Supervisor, elements_commented_by_parties) :-
    european_data_protection_supervisor(Supervisor).
must_associate_complainant(Supervisor, proceedings) :-
    european_data_protection_supervisor(Supervisor).
entitled_access_to_file(Entity) :-
    union_institution_body_office_agency(Entity),
    subject_of_proceedings(Entity, _Supervisor).
must_notify(Supervisor, commission(annual_fines_and_litigation)) :-
    european_data_protection_supervisor(Supervisor).
provenance(permitted_impose_fine/3, 'celex:32024R1689/oj#art_100').
provenance(maximum_fine_amount/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(permitted_base_decision_only_on/2, 'celex:32024R1689/oj#art_100').
provenance(must_associate_complainant/2, 'celex:32024R1689/oj#art_100').
provenance(entitled_access_to_file/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(permitted_impose_fine/2, 'Commission may impose a fine on a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(fine_infringement_condition/2, 'Condition under which fine can be imposed on a provider of general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(intentionally_or_negligently/2, 'Entity committed an act intentionally or negligently', 'celex:32024R1689/oj#art_101').
declared(infringed_provisions/2, 'Entity infringed provisions of Regulation (EU) 2024/1689', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_request_document_or_info/2, 'Entity failed to comply with request under Article 91 or supplied incorrect info', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_measure_requested/2, 'Entity failed to comply with a measure requested under Article 93', 'celex:32024R1689/oj#art_101').
declared(failed_to_provide_access_for_evaluation/2, 'Entity failed to provide Commission access to model for evaluation under Article 92', 'celex:32024R1689/oj#art_101').
declared(fine_ceiling/2, 'Maximum fine applicable to a provider of a general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(must_communicate/2, 'Actor must communicate information or procedural step to recipient', 'celex:32024R1689/oj#art_101').
declared(must_give_opportunity_to_be_heard/2, 'Commission must give provider an opportunity to be heard before decision', 'celex:32024R1689/oj#art_101').
declared(fine_requirements/1, 'Fine is effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_101').
declared(permitted_review_decision/2, 'Court of Justice has jurisdiction to review fine decision', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts/2, 'Actor must adopt implementing acts containing procedural safeguards', 'celex:32024R1689/oj#art_101').
permitted_impose_fine(Commission, fine(Provider, Amount)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    fine_infringement_condition(Provider, Infringement),
    intentionally_or_negligently(Provider, Infringement),
    fine_ceiling(Provider, MaxAmount),
    Amount =< MaxAmount.
fine_infringement_condition(Provider, infringed_provisions) :-
    infringed_provisions(Provider, 'celex:32024R1689/oj').
fine_infringement_condition(Provider, failed_to_comply_request_document_or_info) :-
    failed_to_comply_request_document_or_info(Provider, 'celex:32024R1689/oj#art_91').
fine_infringement_condition(Provider, failed_to_comply_measure_requested) :-
    failed_to_comply_measure_requested(Provider, 'celex:32024R1689/oj#art_93').
fine_infringement_condition(Provider, failed_to_provide_access_for_evaluation) :-
    failed_to_provide_access_for_evaluation(Provider, 'celex:32024R1689/oj#art_92').
must_communicate(Commission, preliminary_findings(Provider)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).
must_give_opportunity_to_be_heard(Commission, Provider) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).
must_communicate(Commission, fine_info_to_board(Provider, Fine)) :-
    commission(Commission),
    permitted_impose_fine(Commission, fine(Provider, Fine)).
permitted_review_decision(court_of_justice, decision_fixing_fine(Commission, Provider)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).
must_adopt_implementing_acts(Commission, procedural_safeguards_article_101_1) :-
    commission(Commission).
provenance(permitted_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_infringement_condition/2, 'celex:32024R1689/oj#art_101').
provenance(intentionally_or_negligently/2, 'celex:32024R1689/oj#art_101').
provenance(infringed_provisions/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_request_document_or_info/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_measure_requested/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_provide_access_for_evaluation/2, 'celex:32024R1689/oj#art_101').
provenance(fine_ceiling/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(fine_requirements/1, 'celex:32024R1689/oj#art_101').
provenance(permitted_review_decision/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_101').
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
declared(concerns_security_equipment_ai/1, 'Measure concerns technical specifications and procedures for approval and use of security equipment concerning AI systems', 'celex:32024R1689/oj#art_102').
declared(required_take_into_account/2, 'Measure or adoption must take into account specified requirements', 'celex:32024R1689/oj#art_102').
provenance(required_take_into_account/2, 'celex:32024R1689/oj#art_102').
required_take_into_account(Measure, chapter_3_section_2_requirements) :-
    concerns_security_equipment_ai(Measure).
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
declared(delegated_act_under_regulation_2013_167_art_17_5/1, 'Delegated act adopted pursuant to Article 17(5) of Regulation (EU) No 167/2013', 'celex:32024R1689/oj#art_103').
declared(must_take_into_account/2, 'Actor must take into account specified requirements when acting', 'celex:32024R1689/oj#art_103').
must_take_into_account(Commission, chapter_3_section_2_requirements) :-
    commission(Commission),
    delegated_act_under_regulation_2013_167_art_17_5(Act),
    concerns_ai_safety_component(Act).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
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
declared(delegated_act_pursuant_to_regulation_2013_168_art_22_par_5/1, 'delegated act adopted pursuant to Article 22(5) of Regulation (EU) No 168/2013', 'celex:32024R1689/oj#art_104').
declared(must_take_into_account/2, 'actor must take into account requirements or considerations in an act', 'celex:32024R1689/oj#art_104').
must_take_into_account(Act, chapter_3_section_2_requirements) :-
    delegated_act_pursuant_to_regulation_2013_168_art_22_par_5(Act),
    concerns_ai_safety_component(Act).
provenance(delegated_act_pursuant_to_regulation_2013_168_art_22_par_5/1, 'celex:32024R1689/oj#art_104').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account/2, 'actor must take into account specified considerations in an action', 'celex:32024R1689/oj#art_105').
declared(ai_safety_component/1, 'AI system that is a safety component', 'celex:32024R1689/oj#art_105').
ai_safety_component(S) :-
    ai_system(S),
    safety_component(S).
must_take_into_account(Commission, requirements(chapter_3_section_2, for(S))) :-
    commission(Commission),
    ai_safety_component(S).
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_105').
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
declared(adopted_act/1, 'act adopted pursuant to directive 2016/797', 'celex:32024R1689/oj#art_106').
declared(takes_into_account/2, 'adoption of an act takes into account specified requirements', 'celex:32024R1689/oj#art_106').
must_comply(Act, take_into_account(chapter_3_section_2)) :-
    adopted_act(Act),
    concerns_ai_safety_component(Act).
takes_into_account(Act, chapter_3_section_2) :-
    adopted_act(Act),
    concerns_ai_safety_component(Act).
provenance(must_comply/2, 'celex:32024R1689/oj#art_106').
provenance(takes_into_account/2, 'celex:32024R1689/oj#art_106').
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
declared(delegated_act_pursuant_to_regulation_2018_858_art_5_par_3/1, 'delegated act adopted pursuant to Article 5(3) of Regulation (EU) 2018/858', 'celex:32024R1689/oj#art_107').
declared(must_take_into_account/2, 'actor must take into account specific requirements when acting', 'celex:32024R1689/oj#art_107').
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    commission(Actor),
    delegated_act_pursuant_to_regulation_2018_858_art_5_par_3(Act),
    concerns_ai_safety_component(Act).
provenance(delegated_act_pursuant_to_regulation_2018_858_art_5_par_3/1, 'celex:32024R1689/oj#art_107').
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
declared(must_take_into_account/2, 'actor adopting act must take specified requirements into account', 'celex:32024R1689/oj#art_108').
declared(implementing_act_pursuant_to/2, 'act is an implementing act adopted pursuant to specified provision', 'celex:32024R1689/oj#art_108').
declared(delegated_act_pursuant_to/2, 'act is a delegated act adopted pursuant to specified provision', 'celex:32024R1689/oj#art_108').
declared(adopts_act/2, 'actor adopts an act', 'celex:32024R1689/oj#art_108').
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    implementing_act_pursuant_to(Act, 'celex:32018R1139/oj#art_17/par_1'),
    concerns_ai_safety_component(Act).
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    ( delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_19/par_1')
    ; delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_19/par_2')
    ),
    concerns_ai_safety_component(Act).
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    implementing_act_pursuant_to(Act, 'celex:32018R1139/oj#art_43/par_1'),
    concerns_ai_safety_component(Act).
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    ( delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_47/par_1')
    ; delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_47/par_2')
    ),
    concerns_ai_safety_component(Act).
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    implementing_act_pursuant_to(Act, 'celex:32018R1139/oj#art_57'),
    concerns_ai_safety_component(Act).
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopts_act(Actor, Act),
    ( delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_58/par_1')
    ; delegated_act_pursuant_to(Act, 'celex:32018R1139/oj#art_58/par_2')
    ),
    concerns_ai_safety_component(Act).
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
declared(implementing_act_pursuant_to_regulation_2019_2144_art_11_2/1, 'implementing act adopted pursuant to Article 11(2) of Regulation (EU) 2019/2144', 'celex:32024R1689/oj#art_109').
declared(must_take_into_account/2, 'actor must take into account specified considerations or requirements', 'celex:32024R1689/oj#art_109').
must_take_into_account(Commission, requirements_chapter_3_section_2(Act)) :-
    commission(Commission),
    implementing_act_pursuant_to_regulation_2019_2144_art_11_2(Act),
    concerns_ai_safety_component(Act).
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
declared(amends/2, 'legal act amends another legal act or annex', 'celex:32024R1689/oj#art_110').
declared(representative_actions_scope/1, 'act or provision is included in the scope of Directive (EU) 2020/1828 Annex I', 'celex:32024R1689/oj#art_110').
amends('celex:32024R1689/oj', 'celex:32020L1828/oj#anx_I').
representative_actions_scope('celex:32024R1689/oj').
provenance(amends/2, 'celex:32024R1689/oj#art_110').
provenance(representative_actions_scope/1, 'celex:32024R1689/oj#art_110').
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
declared(component_of_large_scale_it_system_annex_10/1, 'AI system is a component of a large-scale IT system established by legal acts listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_before/2, 'System or model was placed on the market before a given date', 'celex:32024R1689/oj#art_111').
declared(put_into_service_before/2, 'System was put into service before a given date', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_111').
declared(subject_to_significant_design_change_from/2, 'System is subject to significant changes in its design as from a given date', 'celex:32024R1689/oj#art_111').
declared(intended_for_use_by_public_authorities/1, 'AI system is intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(regulation_applies_to_operator/2, 'Regulation applies to an operator of an AI system', 'celex:32024R1689/oj#art_111').
declared(required_compliance_by/2, 'Subject must be brought into compliance or comply by specified deadline', 'celex:32024R1689/oj#art_111').
required_compliance_by(S, date(2030, 12, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system_annex_10(S),
    placed_on_market_before(S, date(2027, 8, 2)).
required_compliance_by(S, date(2030, 12, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system_annex_10(S),
    put_into_service_before(S, date(2027, 8, 2)).
regulation_applies_to_operator(O, S) :-
    operator(O),
    high_risk_ai_system(S),
    placed_on_market_before(S, date(2026, 8, 2)),
    subject_to_significant_design_change_from(S, date(2026, 8, 2)).
regulation_applies_to_operator(O, S) :-
    operator(O),
    high_risk_ai_system(S),
    put_into_service_before(S, date(2026, 8, 2)),
    subject_to_significant_design_change_from(S, date(2026, 8, 2)).
must_comply(P, compliance_by(S, date(2030, 8, 2))) :-
    provider(P),
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).
must_comply(D, compliance_by(S, date(2030, 8, 2))) :-
    deployer(D),
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).
must_comply(P, compliance_by(M, date(2027, 8, 2))) :-
    provider_of_general_purpose_ai_model(P),
    general_purpose_ai_model(M),
    placed_on_market_before(M, date(2025, 8, 2)).
provenance(component_of_large_scale_it_system_annex_10/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
provenance(put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_change_from/2, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_operator/2, 'celex:32024R1689/oj#art_111').
provenance(required_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(must_comply/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess/2, 'actor must carry out an assessment of a specified matter', 'celex:32024R1689/oj#art_112').
declared(must_evaluate/2, 'actor must evaluate a specified subject', 'celex:32024R1689/oj#art_112').
declared(must_submit_report/2, 'actor must submit a report on a specified matter', 'celex:32024R1689/oj#art_112').
declared(must_provide_information/2, 'actor must provide information upon request to another entity', 'celex:32024R1689/oj#art_112').
declared(must_develop/2, 'actor must develop a methodology or tool', 'celex:32024R1689/oj#art_112').
declared(member_state/1, 'entity is an EU Member State', 'celex:32024R1689/oj#art_112').
declared(european_artificial_intelligence_board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_112').
must_assess(commission, need_for_amendment(annex_3_and_prohibited_practices)) :-
    commission(commission).
must_submit_report(commission, findings(assessment(annex_3_and_prohibited_practices))) :-
    commission(commission).
must_evaluate(commission, scope_amendments(annex_3_headings_and_transparency_and_governance)) :-
    commission(commission).
must_submit_report(commission, evaluation(scope_amendments(annex_3_headings_and_transparency_and_governance))) :-
    commission(commission).
must_submit_report(commission, evaluation_and_review(regulation)) :-
    commission(commission).
must_evaluate(commission, functioning_and_powers(ai_office)) :-
    commission(commission).
must_submit_report(commission, evaluation(functioning_and_powers(ai_office))) :-
    commission(commission).
must_submit_report(commission, progress_standardisation_energy_efficient(general_purpose_ai_model)) :-
    commission(commission).
must_evaluate(commission, codes_of_conduct(voluntary)) :-
    commission(commission).
must_provide_information(Entity, request(commission)) :-
    european_artificial_intelligence_board(Entity).
must_provide_information(Entity, request(commission)) :-
    member_state(Entity).
must_provide_information(Entity, request(commission)) :-
    national_competent_authority(Entity).
must_develop(ai_office, methodology(evaluation_of_risk_levels)) :-
    ai_office(ai_office).
must_assess(commission, enforcement(regulation)) :-
    commission(commission).
must_submit_report(commission, assessment_of_enforcement(regulation)) :-
    commission(commission).
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').
provenance(member_state/1, 'celex:32024R1689/oj#art_112').
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_112').
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
declared(entry_into_force/2, 'entry into force of a legal act or provision', 'celex:32024R1689/oj#art_113').
declared(date_of_application/2, 'applicable date from which a legal act or provision applies', 'celex:32024R1689/oj#art_113').
entry_into_force('celex:32024R1689/oj', days_after_publication(20)).
date_of_application('celex:32024R1689/oj', date(2026, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
date_of_application('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
date_of_application('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
date_of_application('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
provenance(entry_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(date_of_application/2, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation_annex_1_section_a/1, 'Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#anx_1').
declared(union_harmonisation_legislation_annex_1_section_b/1, 'Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#anx_1').
declared(union_harmonisation_legislation_annex_1/1, 'Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#anx_1').
declared(covered_by_legislation/2, 'System or product is covered by specified Union harmonisation legislation', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation_annex_1_section_a(directive_2006_42_ec).
union_harmonisation_legislation_annex_1_section_a(directive_2009_48_ec).
union_harmonisation_legislation_annex_1_section_a(directive_2013_53_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_33_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_34_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_53_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_68_eu).
union_harmonisation_legislation_annex_1_section_a(regulation_2016_424).
union_harmonisation_legislation_annex_1_section_a(regulation_2016_425).
union_harmonisation_legislation_annex_1_section_a(regulation_2016_426).
union_harmonisation_legislation_annex_1_section_a(regulation_2017_745).
union_harmonisation_legislation_annex_1_section_a(regulation_2017_746).
union_harmonisation_legislation_annex_1_section_b(regulation_2008_300).
union_harmonisation_legislation_annex_1_section_b(regulation_2013_168).
union_harmonisation_legislation_annex_1_section_b(regulation_2013_167).
union_harmonisation_legislation_annex_1_section_b(directive_2014_90_eu).
union_harmonisation_legislation_annex_1_section_b(directive_2016_797_eu).
union_harmonisation_legislation_annex_1_section_b(regulation_2018_858).
union_harmonisation_legislation_annex_1_section_b(regulation_2019_2144).
union_harmonisation_legislation_annex_1_section_b(regulation_2018_1139).
union_harmonisation_legislation_annex_1(Legislation) :-
    union_harmonisation_legislation_annex_1_section_a(Legislation).
union_harmonisation_legislation_annex_1(Legislation) :-
    union_harmonisation_legislation_annex_1_section_b(Legislation).
covers_union_harmonisation_legislation_annex_i(System) :-
    ai_system(System),
    covered_by_legislation(System, Legislation),
    union_harmonisation_legislation_annex_1(Legislation).
system_covered_by_annex_1(System) :-
    covers_union_harmonisation_legislation_annex_i(System).
provenance(union_harmonisation_legislation_annex_1_section_a/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_annex_1_section_b/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_annex_1/1, 'celex:32024R1689/oj#anx_1').
provenance(covers_union_harmonisation_legislation_annex_i/1, 'celex:32024R1689/oj#anx_1').
provenance(system_covered_by_annex_1/1, 'celex:32024R1689/oj#anx_1').
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
declared(criminal_offence_annex_2/1, 'criminal offence listed in Annex II', 'celex:32024R1689/oj#anx_2').
criminal_offence_annex_2(terrorism).
criminal_offence_annex_2(trafficking_in_human_beings).
criminal_offence_annex_2(sexual_exploitation_of_children_and_child_pornography).
criminal_offence_annex_2(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence_annex_2(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence_annex_2(murder).
criminal_offence_annex_2(grievous_bodily_injury).
criminal_offence_annex_2(illicit_trade_in_human_organs_or_tissue).
criminal_offence_annex_2(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence_annex_2(kidnapping_illegal_restraint_or_hostage_taking).
criminal_offence_annex_2(crimes_within_jurisdiction_of_international_criminal_court).
criminal_offence_annex_2(unlawful_seizure_of_aircraft_or_ships).
criminal_offence_annex_2(rape).
criminal_offence_annex_2(environmental_crime).
criminal_offence_annex_2(organised_or_armed_robbery).
criminal_offence_annex_2(sabotage).
criminal_offence_annex_2(participation_in_criminal_organisation(Offence)) :-
    criminal_offence_annex_2(Offence).
provenance(criminal_offence_annex_2/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system considered high-risk under Article 6(2) and Annex III', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_biometrics/1, 'AI system listed in Annex III point 1 (biometrics)', 'celex:32024R1689/oj#anx_3').
declared(biometrics_annex_3_1_b/1, 'AI system listed in Annex III point 1(b) (biometric categorisation)', 'celex:32024R1689/oj#anx_3').
declared(biometrics_annex_3_1_c/1, 'AI system listed in Annex III point 1(c) (emotion recognition)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_education/1, 'AI system listed in Annex III point 3 (education and vocational training)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_employment/1, 'AI system listed in Annex III point 4 (employment and worker management)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_essential_services/1, 'AI system listed in Annex III point 5 (essential private and public services)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_law_enforcement/1, 'AI system listed in Annex III point 6 (law enforcement)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_migration/1, 'AI system listed in Annex III point 7 (migration, asylum and border control)', 'celex:32024R1689/oj#anx_3').
declared(high_risk_area_justice_democratic/1, 'AI system listed in Annex III point 8 (administration of justice and democratic processes)', 'celex:32024R1689/oj#anx_3').
declared(intended_use/2, 'AI system has an intended use for a given purpose or context', 'celex:32024R1689/oj#anx_3').
declared(sole_purpose_biometric_verification/1, 'AI system intended solely for 1-to-1 biometric verification', 'celex:32024R1689/oj#anx_3').
declared(permitted_use_under_law/1, 'use of AI system is permitted under relevant Union or national law', 'celex:32024R1689/oj#anx_3').
declared(intended_user/2, 'AI system is intended to be used by or on behalf of a specific actor', 'celex:32024R1689/oj#anx_3').
declared(exempt_high_risk_annex_3/1, 'AI system exempted from high-risk classification under Annex III', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    ai_system(S),
    \+ exempt_high_risk_annex_3(S),
    ( high_risk_area_biometrics(S)
    ; annex_3_point_2_system(S)
    ; high_risk_area_education(S)
    ; high_risk_area_employment(S)
    ; high_risk_area_essential_services(S)
    ; high_risk_area_law_enforcement(S)
    ; high_risk_area_migration(S)
    ; high_risk_area_justice_democratic(S)
    ).
high_risk_area_biometrics(S) :-
    permitted_use_under_law(S),
    ( biometrics_annex_3_1_a(S)
    ; biometrics_annex_3_1_b(S)
    ; biometrics_annex_3_1_c(S)
    ).
biometrics_annex_3_1_a(S) :-
    remote_biometric_identification_system(S),
    \+ sole_purpose_biometric_verification(S).
biometrics_annex_3_1_b(S) :-
    intended_use(S, biometric_categorisation(sensitive_or_protected_attributes)).
biometrics_annex_3_1_c(S) :-
    intended_use(S, emotion_recognition).
annex_3_point_2_system(S) :-
    safety_component(S),
    ( intended_use(S, management_and_operation(critical_digital_infrastructure))
    ; intended_use(S, management_and_operation(road_traffic))
    ; intended_use(S, supply(water))
    ; intended_use(S, supply(gas))
    ; intended_use(S, supply(heating))
    ; intended_use(S, supply(electricity))
    ).
high_risk_area_education(S) :-
    ( intended_use(S, determine_access_or_admission(educational_institution))
    ; intended_use(S, evaluate_learning_outcomes(educational_institution))
    ; intended_use(S, assessing_appropriate_education_level(educational_institution))
    ; intended_use(S, monitoring_prohibited_behaviour_students(educational_institution))
    ).
high_risk_area_employment(S) :-
    ( intended_use(S, recruitment_or_selection)
    ; intended_use(S, decisions_affecting_terms_of_work)
    ; intended_use(S, allocate_tasks_based_on_traits)
    ; intended_use(S, monitor_and_evaluate_work_performance)
    ).
high_risk_area_essential_services(S) :-
    ( ( intended_user(S, public_authority), intended_use(S, evaluate_eligibility_essential_public_services) )
    ; intended_use(S, evaluate_creditworthiness_or_score)
    ; intended_use(S, risk_assessment_and_pricing(insurance))
    ; intended_use(S, evaluate_and_classify_emergency_calls)
    ; intended_use(S, dispatch_emergency_services)
    ; intended_use(S, emergency_patient_triage)
    ).
high_risk_area_law_enforcement(S) :-
    permitted_use_under_law(S),
    law_enforcement_or_support_user(S),
    ( intended_use(S, assess_victim_risk)
    ; intended_use(S, polygraph_or_similar)
    ; intended_use(S, evaluate_evidence_reliability)
    ; intended_use(S, assess_offending_risk)
    ; intended_use(S, assess_personality_traits_or_criminal_behaviour)
    ; intended_use(S, profiling_in_criminal_proceedings)
    ).
high_risk_area_migration(S) :-
    permitted_use_under_law(S),
    migration_or_support_user(S),
    ( intended_use(S, polygraph_or_similar)
    ; intended_use(S, assess_migration_or_security_risk)
    ; intended_use(S, assist_examination_asylum_visa_residence)
    ; intended_use(S, detect_recognise_identify_in_migration)
    ).
high_risk_area_justice_democratic(S) :-
    ( intended_user(S, judicial_authority), intended_use(S, assist_research_and_interpretation_of_law)
    ; intended_use(S, alternative_dispute_resolution)
    ; intended_use(S, influence_election_or_referendum)
    ).
exempt_high_risk_annex_3(S) :-
    intended_use(S, evaluate_creditworthiness_or_score),
    intended_use(S, detect_financial_fraud).
exempt_high_risk_annex_3(S) :-
    intended_use(S, detect_recognise_identify_in_migration),
    intended_use(S, verify_travel_documents).
exempt_high_risk_annex_3(S) :-
    intended_use(S, influence_election_or_referendum),
    intended_use(S, purely_administrative_or_logistical_campaign_tool).
law_enforcement_or_support_user(S) :-
    intended_user(S, law_enforcement_authority).
law_enforcement_or_support_user(S) :-
    intended_user(S, on_behalf_of(law_enforcement_authority)).
law_enforcement_or_support_user(S) :-
    union_institution_body_office_agency(U),
    intended_user(S, support_of(law_enforcement_authority, U)).
migration_or_support_user(S) :-
    intended_user(S, competent_public_authority).
migration_or_support_user(S) :-
    intended_user(S, on_behalf_of(competent_public_authority)).
migration_or_support_user(S) :-
    union_institution_body_office_agency(U),
    intended_user(S, U).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_biometrics/1, 'celex:32024R1689/oj#anx_3').
provenance(biometrics_annex_3_1_a/1, 'celex:32024R1689/oj#anx_3').
provenance(biometrics_annex_3_1_b/1, 'celex:32024R1689/oj#anx_3').
provenance(biometrics_annex_3_1_c/1, 'celex:32024R1689/oj#anx_3').
provenance(annex_3_point_2_system/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_education/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_employment/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_essential_services/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_migration/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_area_justice_democratic/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_high_risk_annex_3/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(contains_element/2, 'technical documentation contains the specified element or information', 'celex:32024R1689/oj#anx_4').
declared(compliant_technical_documentation/2, 'technical documentation meets the Annex IV requirements for the AI system', 'celex:32024R1689/oj#anx_4').
compliant_technical_documentation(Doc, System) :-
    technical_documentation(Doc),
    ai_system(System),
    contains_element(Doc, general_description(System)),
    contains_element(Doc, development_process_and_elements(System)),
    contains_element(Doc, monitoring_functioning_and_control(System)),
    contains_element(Doc, appropriateness_of_performance_metrics(System)),
    contains_element(Doc, risk_management_system_description(System)),
    contains_element(Doc, lifecycle_changes_description(System)),
    contains_element(Doc, standards_and_specifications(System)),
    contains_element(Doc, eu_declaration_of_conformity(System)),
    contains_element(Doc, post_market_monitoring_system_description(System)).
contains_element(Doc, general_description(System)) :-
    contains_element(Doc, intended_purpose_provider_and_version(System)),
    contains_element(Doc, system_interaction_description(System)),
    contains_element(Doc, software_firmware_versions_and_update_requirements(System)),
    contains_element(Doc, market_placement_forms_description(System)),
    contains_element(Doc, hardware_requirements_description(System)),
    contains_element(Doc, product_component_markings_and_layout(System)),
    contains_element(Doc, user_interface_description(System)),
    contains_element(Doc, instructions_for_use(System)).
contains_element(Doc, development_process_and_elements(System)) :-
    contains_element(Doc, development_methods_and_steps(System)),
    contains_element(Doc, design_specifications(System)),
    contains_element(Doc, architecture_and_computational_resources(System)),
    contains_element(Doc, data_requirements_and_datasheets(System)),
    contains_element(Doc, human_oversight_measures_assessment(System)),
    contains_element(Doc, predetermined_changes_description(System)),
    contains_element(Doc, validation_and_testing_procedures(System)),
    contains_element(Doc, cybersecurity_measures(System)).
provenance(compliant_technical_documentation/2, 'celex:32024R1689/oj#anx_4').
provenance(contains_element/2, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity referred to in Article 47', 'celex:32024R1689/oj#anx_5').
declared(declaration_for_ai_system/2, 'EU declaration of conformity relates to an AI system', 'celex:32024R1689/oj#anx_5').
declared(involves_processing_of_personal_data/1, 'AI system involves the processing of personal data', 'celex:32024R1689/oj#anx_5').
declared(involves_notified_body/1, 'conformity assessment of AI system involves a notified body', 'celex:32024R1689/oj#anx_5').
declared(required_declaration_content/2, 'declaration of conformity is required to contain specified content item', 'celex:32024R1689/oj#anx_5').
declared(required_eu_declaration_of_conformity/1, 'EU declaration of conformity satisfies all mandated information requirements', 'celex:32024R1689/oj#anx_5').
required_declaration_content(D, identification_and_traceability(S)) :-
    declaration_for_ai_system(D, S).
required_declaration_content(D, provider_or_authorised_representative_details(S)) :-
    declaration_for_ai_system(D, S).
required_declaration_content(D, statement_sole_responsibility_provider(S)) :-
    declaration_for_ai_system(D, S).
required_declaration_content(D, statement_conformity_union_law(S)) :-
    declaration_for_ai_system(D, S).
required_declaration_content(D, statement_data_protection_compliance(S)) :-
    declaration_for_ai_system(D, S),
    involves_processing_of_personal_data(S).
required_declaration_content(D, references_harmonised_standards_or_common_specifications(S)) :-
    declaration_for_ai_system(D, S).
required_declaration_content(D, notified_body_intervention_details(S)) :-
    declaration_for_ai_system(D, S),
    involves_notified_body(S).
required_declaration_content(D, signatory_details_and_signature(S)) :-
    declaration_for_ai_system(D, S).
required_eu_declaration_of_conformity(D) :-
    eu_declaration_of_conformity(D),
    declaration_for_ai_system(D, S),
    required_declaration_content(D, identification_and_traceability(S)),
    required_declaration_content(D, provider_or_authorised_representative_details(S)),
    required_declaration_content(D, statement_sole_responsibility_provider(S)),
    required_declaration_content(D, statement_conformity_union_law(S)),
    required_declaration_content(D, references_harmonised_standards_or_common_specifications(S)),
    required_declaration_content(D, signatory_details_and_signature(S)).
provenance(required_declaration_content/2, 'celex:32024R1689/oj#anx_5').
provenance(required_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32018R1725/oj', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_internal_control/2, 'Conformity assessment procedure based on internal control carried out by provider for an AI system', 'celex:32024R1689/oj#anx_6').
declared(verifies_quality_management_system/2, 'Provider verifies that the established quality management system complies with Article 17', 'celex:32024R1689/oj#anx_6').
declared(examines_technical_documentation_compliance/2, 'Provider examines technical documentation to assess compliance with Chapter III Section 2', 'celex:32024R1689/oj#anx_6').
declared(verifies_consistency_with_technical_documentation/2, 'Provider verifies design, development, and post-market monitoring are consistent with technical documentation', 'celex:32024R1689/oj#anx_6').
conformity_assessment_internal_control(Provider, System) :-
    conformity_assessment(System),
    provider(Provider),
    verifies_quality_management_system(Provider, System),
    examines_technical_documentation_compliance(Provider, System),
    verifies_consistency_with_technical_documentation(Provider, System).
must_verify(Provider, quality_management_system_compliance(System)) :-
    provider(Provider),
    ai_system(System).
must_examine(Provider, technical_documentation_compliance(System)) :-
    provider(Provider),
    ai_system(System),
    technical_documentation(System).
must_verify(Provider, consistency_with_technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    technical_documentation(System).
provenance(conformity_assessment_internal_control/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(quality_management_system/1, 'quality management system of an AI provider', 'celex:32024R1689/oj#anx_7').
declared(satisfies_article_17_requirements/1, 'system satisfies requirements of Article 17', 'celex:32024R1689/oj#anx_7').
declared(application_for_qms_assessment/2, 'application by provider for quality management system assessment', 'celex:32024R1689/oj#anx_7').
declared(application_for_technical_documentation_assessment/2, 'application by provider for technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(must_maintain/2, 'actor must maintain a system or process', 'celex:32024R1689/oj#anx_7').
declared(must_notify/2, 'actor must notify another entity of an event or decision', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access/2, 'actor must grant access to another entity', 'celex:32024R1689/oj#anx_7').
declared(must_issue/2, 'actor must issue a certificate or document', 'celex:32024R1689/oj#anx_7').
declared(must_refuse/2, 'actor must refuse to issue a certificate or approval', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out/2, 'actor must carry out an action, test or audit', 'celex:32024R1689/oj#anx_7').
declared(required_retraining/1, 'AI system requires retraining before reapplying for conformity assessment', 'celex:32024R1689/oj#anx_7').
declared(data_governance_non_compliant/1, 'AI system fails to meet training data requirements', 'celex:32024R1689/oj#anx_7').
must_notify(NotifiedBody, decision(assessment_of_qms(QMS), Provider)) :-
    notified_body(NotifiedBody),
    application_for_qms_assessment(Provider, QMS),
    satisfies_article_17_requirements(QMS).
must_notify(NotifiedBody, refusal(assessment_of_qms(QMS), Provider)) :-
    notified_body(NotifiedBody),
    application_for_qms_assessment(Provider, QMS),
    \+ satisfies_article_17_requirements(QMS).
must_maintain(Provider, quality_management_system(QMS)) :-
    provider(Provider),
    quality_management_system(QMS).
must_notify(Provider, change(QMS, NotifiedBody)) :-
    provider(Provider),
    quality_management_system(QMS),
    notified_body(NotifiedBody).
must_grant_access(Provider, access_to_datasets(System, NotifiedBody)) :-
    provider(Provider),
    ai_system(System),
    notified_body(NotifiedBody),
    application_for_technical_documentation_assessment(Provider, System).
must_grant_access(Provider, access_to_models(System, NotifiedBody)) :-
    provider(Provider),
    ai_system(System),
    notified_body(NotifiedBody),
    application_for_technical_documentation_assessment(Provider, System).
must_issue(NotifiedBody, union_technical_documentation_assessment_certificate(System, Provider)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(System),
    application_for_technical_documentation_assessment(Provider, System),
    complies_with_chapter_3_section_2(System).
must_refuse(NotifiedBody, union_technical_documentation_assessment_certificate(System, Provider)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(System),
    application_for_technical_documentation_assessment(Provider, System),
    non_compliant(System).
required_retraining(System) :-
    ai_system(System),
    non_compliant(System),
    data_governance_non_compliant(System).
must_notify(Provider, change(System, NotifiedBody)) :-
    provider(Provider),
    ai_system(System),
    notified_body(NotifiedBody).
must_grant_access(Provider, access_to_premises(NotifiedBody)) :-
    provider(Provider),
    notified_body(NotifiedBody).
must_carry_out(NotifiedBody, periodic_audits(Provider, QMS)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    quality_management_system(QMS).
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse/2, 'celex:32024R1689/oj#anx_7').
provenance(required_retraining/1, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out/2, 'celex:32024R1689/oj#anx_7').
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
declared(required_registration_information/2, 'information required to be submitted for registration of an AI system', 'celex:32024R1689/oj#anx_8').
declared(has_authorised_representative/1, 'AI system or provider has an authorised representative', 'celex:32024R1689/oj#anx_8').
declared(certified_by_notified_body/1, 'AI system has been certified by a notified body', 'celex:32024R1689/oj#anx_8').
declared(area_law_enforcement/1, 'AI system is in the area of law enforcement', 'celex:32024R1689/oj#anx_8').
declared(area_migration_asylum_border/1, 'AI system is in the area of migration, asylum and border control management', 'celex:32024R1689/oj#anx_8').
declared(considered_not_high_risk_under_art_6_3/1, 'AI system considered not high-risk pursuant to Article 6(3)', 'celex:32024R1689/oj#anx_8').
declared(required_data_protection_impact_assessment/1, 'data protection impact assessment required for the deployment', 'celex:32024R1689/oj#anx_8').
required_registration_information(S, section_a(provider_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(submitter_on_behalf_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(authorised_representative_contact_details)) :-
    high_risk_ai_system(S),
    has_authorised_representative(S).
required_registration_information(S, section_a(system_trade_name_and_traceability_reference)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(intended_purpose_and_components_functions)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(used_information_and_operating_logic)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(system_status)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(certificate_details)) :-
    high_risk_ai_system(S),
    certified_by_notified_body(S).
required_registration_information(S, section_a(certificate_copy)) :-
    high_risk_ai_system(S),
    certified_by_notified_body(S).
required_registration_information(S, section_a(member_states_placed_or_serviced)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(eu_declaration_of_conformity)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(electronic_instructions_for_use)) :-
    high_risk_ai_system(S),
    \+ area_law_enforcement(S),
    \+ area_migration_asylum_border(S).
required_registration_information(S, section_b(provider_contact_details)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(submitter_on_behalf_contact_details)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(authorised_representative_contact_details)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S),
    has_authorised_representative(S).
required_registration_information(S, section_b(system_trade_name_and_traceability_reference)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(intended_purpose)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(art_6_3_conditions)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(summary_grounds_not_high_risk)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(system_status)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(member_states_placed_or_serviced)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_c(deployer_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(submitter_on_behalf_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(eu_database_system_url)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(fundamental_rights_impact_assessment_summary)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(data_protection_impact_assessment_summary)) :-
    high_risk_ai_system(S),
    required_data_protection_impact_assessment(S).
must_comply(Provider, registration(high_risk_ai_system(S), section_a)) :-
    provider(Provider),
    high_risk_ai_system(S).
must_comply(Provider, registration(not_high_risk_ai_system(S), section_b)) :-
    provider(Provider),
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
must_comply(Deployer, registration(high_risk_ai_system(S), section_c)) :-
    deployer(Deployer),
    high_risk_ai_system(S).
provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_comply/2, 'celex:32024R1689/oj#anx_8').
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
references('celex:32016R0679/oj#art_35', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').

% ==== celex:32024R1689/oj#anx_9 ====
declared(required_registration_information/2, 'Information required to be provided and kept up to date for real-world testing registration', 'celex:32024R1689/oj#anx_9').
declared(annex_3_high_risk_ai_system/1, 'AI system listed as high-risk under Annex III', 'celex:32024R1689/oj#anx_9').
provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(annex_3_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
required_registration_information(Testing, union_wide_unique_single_identification_number) :-
    testing_in_real_world_conditions(Testing).
required_registration_information(Testing, contact_details(provider_or_prospective_provider)) :-
    testing_in_real_world_conditions(Testing).
required_registration_information(Testing, contact_details(involved_deployers)) :-
    testing_in_real_world_conditions(Testing).
required_registration_information(Testing, description_and_identification(System)) :-
    testing_in_real_world_conditions(Testing),
    ai_system(System).
required_registration_information(Testing, summary_of_plan(Plan)) :-
    testing_in_real_world_conditions(Testing),
    real_world_testing_plan(Plan).
required_registration_information(Testing, suspension_or_termination_info) :-
    testing_in_real_world_conditions(Testing).

% ==== celex:32024R1689/oj#anx_10 ====
declared(union_act_annex_x/1, 'Union legislative act on large-scale IT systems listed in Annex X', 'celex:32024R1689/oj#anx_10').
union_act_annex_x('celex:32018R1860/oj').
union_act_annex_x('celex:32018R1861/oj').
union_act_annex_x('celex:32018R1862/oj').
union_act_annex_x('celex:32021R1133/oj').
union_act_annex_x('celex:32021R1134/oj').
union_act_annex_x('celex:32024R1358/oj').
union_act_annex_x('celex:32017R2226/oj').
union_act_annex_x('celex:32018R1240/oj').
union_act_annex_x('celex:32018R1241/oj').
union_act_annex_x('celex:32019R0816/oj').
union_act_annex_x('celex:32019R0817/oj').
union_act_annex_x('celex:32019R0818/oj').
provenance(union_act_annex_x/1, 'celex:32024R1689/oj#anx_10').
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
declared(model_of/2, 'AI model associated with a provider or system', 'celex:32024R1689/oj#anx_11').
declared(contains_information/2, 'document contains specified information', 'celex:32024R1689/oj#anx_11').
declared(model_with_systemic_risk/1, 'general-purpose AI model presenting systemic risk', 'celex:32024R1689/oj#anx_11').
must_comply(Provider, technical_documentation(Model, section_1)) :-
    provider_of_general_purpose_ai_model(Provider),
    model_of(Provider, Model),
    general_purpose_ai_model(Model).
required_technical_documentation(technical_documentation(Model, section_1)) :-
    general_purpose_ai_model(Model),
    contains_information(Model, general_description),
    contains_information(Model, integration_tasks_and_systems),
    contains_information(Model, acceptable_use_policies),
    contains_information(Model, release_date_and_distribution),
    contains_information(Model, architecture_and_parameters),
    contains_information(Model, modality_and_format_inputs_outputs),
    contains_information(Model, licence),
    contains_information(Model, integration_technical_means),
    contains_information(Model, design_specifications_and_training),
    contains_information(Model, training_testing_validation_data),
    contains_information(Model, computational_resources),
    contains_information(Model, energy_consumption).
must_comply(Provider, technical_documentation(Model, section_2)) :-
    provider_of_general_purpose_ai_model(Provider),
    model_of(Provider, Model),
    general_purpose_ai_model(Model),
    model_with_systemic_risk(Model).
required_technical_documentation(technical_documentation(Model, section_2)) :-
    general_purpose_ai_model(Model),
    model_with_systemic_risk(Model),
    contains_information(Model, evaluation_strategies_and_results),
    contains_information(Model, adversarial_testing_measures),
    contains_information(Model, system_architecture_explanation).
provenance(must_comply/2, 'celex:32024R1689/oj#anx_11').
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_11').
provenance(model_of/2, 'celex:32024R1689/oj#anx_11').
provenance(contains_information/2, 'celex:32024R1689/oj#anx_11').
provenance(model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(general_purpose_ai_model_transparency_information/2, 'transparency information provided to downstream providers contains the elements required by Annex XII for a general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(contains_transparency_general_description/2, 'information contains the general description of the model pursuant to Annex XII point 1', 'celex:32024R1689/oj#anx_12').
declared(contains_transparency_development_elements/2, 'information contains the description of elements and development process pursuant to Annex XII point 2', 'celex:32024R1689/oj#anx_12').
general_purpose_ai_model_transparency_information(Info, Model) :-
    general_purpose_ai_model(Model),
    contains_transparency_general_description(Info, Model),
    contains_transparency_development_elements(Info, Model).
contains_transparency_general_description(Info, Model) :-
    general_purpose_ai_model(Model),
    contains_intended_tasks_and_integration_types(Info, Model),
    contains_acceptable_use_policies(Info, Model),
    contains_release_date_and_distribution_methods(Info, Model),
    contains_hardware_software_interaction(Info, Model),
    contains_relevant_software_versions(Info, Model),
    contains_architecture_and_parameters(Info, Model),
    contains_input_output_modality_format(Info, Model),
    contains_model_licence(Info, Model).
contains_transparency_development_elements(Info, Model) :-
    general_purpose_ai_model(Model),
    contains_integration_technical_means(Info, Model),
    contains_input_output_specifications_and_limits(Info, Model),
    contains_training_testing_validation_data_info(Info, Model).
declared(contains_intended_tasks_and_integration_types/2, 'contains tasks model is intended to perform and type/nature of AI systems for integration', 'celex:32024R1689/oj#anx_12').
declared(contains_acceptable_use_policies/2, 'contains applicable acceptable use policies', 'celex:32024R1689/oj#anx_12').
declared(contains_release_date_and_distribution_methods/2, 'contains release date and methods of distribution', 'celex:32024R1689/oj#anx_12').
declared(contains_hardware_software_interaction/2, 'contains interaction with external hardware or software where applicable', 'celex:32024R1689/oj#anx_12').
declared(contains_relevant_software_versions/2, 'contains versions of relevant software where applicable', 'celex:32024R1689/oj#anx_12').
declared(contains_architecture_and_parameters/2, 'contains architecture and number of parameters', 'celex:32024R1689/oj#anx_12').
declared(contains_input_output_modality_format/2, 'contains modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(contains_model_licence/2, 'contains licence for the model', 'celex:32024R1689/oj#anx_12').
declared(contains_integration_technical_means/2, 'contains technical means required for integration into AI systems', 'celex:32024R1689/oj#anx_12').
declared(contains_input_output_specifications_and_limits/2, 'contains input and output modality, format, and maximum size', 'celex:32024R1689/oj#anx_12').
declared(contains_training_testing_validation_data_info/2, 'contains info on data used for training, testing and validation where applicable', 'celex:32024R1689/oj#anx_12').
provenance(general_purpose_ai_model_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(contains_transparency_general_description/2, 'celex:32024R1689/oj#anx_12').
provenance(contains_transparency_development_elements/2, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(criterion_for_systemic_risk_designation/2, 'criterion that the Commission must take into account for designating a general-purpose AI model with systemic risk', 'celex:32024R1689/oj#anx_13').
declared(presumed_high_impact_on_internal_market/1, 'model is presumed to have high impact on the internal market due to reach', 'celex:32024R1689/oj#anx_13').
declared(business_users_in_union/2, 'number of registered business users established in the Union to which the model has been made available', 'celex:32024R1689/oj#anx_13').
declared(registered_end_users/2, 'number of registered end-users of the model', 'celex:32024R1689/oj#anx_13').
declared(parameters_count/2, 'number of parameters of the general-purpose AI model', 'celex:32024R1689/oj#anx_13').
declared(dataset_quality_or_size/2, 'quality or size of the data set of the model, e.g. tokens', 'celex:32024R1689/oj#anx_13').
declared(training_computation/2, 'amount of computation used for training the model', 'celex:32024R1689/oj#anx_13').
declared(input_output_modalities/2, 'input and output modalities of the model and specific types', 'celex:32024R1689/oj#anx_13').
declared(capability_benchmarks_and_evaluations/2, 'benchmarks and evaluations of capabilities of the model', 'celex:32024R1689/oj#anx_13').
declared(reach_impact_on_internal_market/2, 'impact on the internal market due to reach of the model', 'celex:32024R1689/oj#anx_13').
declared(must_consider/2, 'actor must take into account an object/criterion', 'celex:32024R1689/oj#anx_13').
must_consider(Commission, criterion_for_systemic_risk_designation(Model, Criterion)) :-
    commission(Commission),
    general_purpose_ai_model(Model),
    criterion_for_systemic_risk_designation(Model, Criterion).
criterion_for_systemic_risk_designation(Model, number_of_parameters(N)) :-
    parameters_count(Model, N).
criterion_for_systemic_risk_designation(Model, dataset_quality_or_size(D)) :-
    dataset_quality_or_size(Model, D).
criterion_for_systemic_risk_designation(Model, computation_used_for_training(C)) :-
    training_computation(Model, C).
criterion_for_systemic_risk_designation(Model, input_output_modalities(M)) :-
    input_output_modalities(Model, M).
criterion_for_systemic_risk_designation(Model, benchmarks_and_evaluations(B)) :-
    capability_benchmarks_and_evaluations(Model, B).
criterion_for_systemic_risk_designation(Model, high_impact_on_internal_market(I)) :-
    reach_impact_on_internal_market(Model, I).
presumed_high_impact_on_internal_market(Model) :-
    general_purpose_ai_model(Model),
    business_users_in_union(Model, Count),
    Count >= 10000.
reach_impact_on_internal_market(Model, presumed_high_impact) :-
    presumed_high_impact_on_internal_market(Model).
criterion_for_systemic_risk_designation(Model, number_of_registered_end_users(U)) :-
    registered_end_users(Model, U).
provenance(criterion_for_systemic_risk_designation/2, 'celex:32024R1689/oj#anx_13').
provenance(presumed_high_impact_on_internal_market/1, 'celex:32024R1689/oj#anx_13').
provenance(reach_impact_on_internal_market/2, 'celex:32024R1689/oj#anx_13').
provenance(must_consider/2, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

