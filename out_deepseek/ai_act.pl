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
% There are 386 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous ability_to_carry_out_activities_diligently/1.
:- discontiguous access_to_sandbox/1.
:- discontiguous accompanied_by_instructions/2.
:- discontiguous acts_as_adco/1.
:- discontiguous acts_as_competent_authority/2.
:- discontiguous adopting_act/2.
:- discontiguous adopting_delegated_act/2.
:- discontiguous adopting_delegated_acts/2.
:- discontiguous adopting_detailed_measures/2.
:- discontiguous adopting_implementing_acts/2.
:- discontiguous adverse_impact_on_vulnerable_groups_considered/1.
:- discontiguous adverse_legal_effect_decision/1.
:- discontiguous advising_on_classification_models_and_systems/1.
:- discontiguous advising_on_classification_systemic_risk/1.
:- discontiguous ai_office_has_supervisory_powers/1.
:- discontiguous ai_system_presenting_risk/1.
:- discontiguous alerting_possible_systemic_risks/1.
:- discontiguous amendment_added/2.
:- discontiguous appeal_available/1.
:- discontiguous application_accompanied_by/2.
:- discontiguous application_includes/2.
:- discontiguous applies_from/2.
:- discontiguous applies_harmonised_standards_or_common_specifications/2.
:- discontiguous appropriate_for_purpose/2.
:- discontiguous assessment_consists_of_required_elements/2.
:- discontiguous attends_without_vote/1.
:- discontiguous authorisation_limited_period/1.
:- discontiguous authorised_representative_appointed/1.
:- discontiguous authorised_to_access_exit_reports/2.
:- discontiguous authorised_to_supply_information/2.
:- discontiguous authority_involved_in_application/1.
:- discontiguous balanced_membership_applies/1.
:- discontiguous becomes_aware_of_risk/2.
:- discontiguous biometric_categorisation_system_sensitive/1.
:- discontiguous biometric_verification_system/1.
:- discontiguous board/1.
:- discontiguous board_composed_of/2.
:- discontiguous board_established/1.
:- discontiguous can_fulfill_with_non_personal_data/1.
:- discontiguous cannot_fulfill_with_non_personal_data/1.
:- discontiguous causes_or_likely_causes_significant_harm/1.
:- discontiguous ce_marking_affixed_to_packaging/1.
:- discontiguous ce_marking_affixed_visibly/1.
:- discontiguous ce_marking_indicates_other_law_compliance/1.
:- discontiguous ce_marking_subject_to_general_principles/1.
:- discontiguous certificate_extension/2.
:- discontiguous certificate_validity_period/2.
:- discontiguous certificates_remain_valid_under_suspension_or_restriction/1.
:- discontiguous certificates_remain_valid_under_withdrawal/1.
:- discontiguous certified_under_cybersecurity_scheme/1.
:- discontiguous chaired_by/1.
:- discontiguous cjeu_jurisdiction/1.
:- discontiguous commission_decision_equivalent_capabilities/1.
:- discontiguous commission_empowered_to_adopt_delegated_acts/2.
:- discontiguous commission_is_controller/1.
:- discontiguous committee_within_meaning/1.
:- discontiguous common_specification_adoption_conditions_fulfilled/1.
:- discontiguous complaint_reasoned/1.
:- discontiguous complete_description_of_training_testing_validation_kept/1.
:- discontiguous comprises_post_market_risk_evaluation/1.
:- discontiguous comprises_risk_estimation/1.
:- discontiguous comprises_risk_identification/1.
:- discontiguous comprises_risk_management_measures/1.
:- discontiguous concerning_ai_safety_components/1.
:- discontiguous concerns_ai_safety_component/1.
:- discontiguous condition_data_necessity/1.
:- discontiguous condition_documentation_kept/1.
:- discontiguous condition_effective_monitoring/1.
:- discontiguous condition_for_adding_high_risk_fulfilled/1.
:- discontiguous condition_for_removing_high_risk_fulfilled/1.
:- discontiguous condition_isolated_environment/1.
:- discontiguous condition_logs_kept/1.
:- discontiguous condition_no_adverse_effects/1.
:- discontiguous condition_protection_and_deletion/1.
:- discontiguous condition_sharing_restrictions/1.
:- discontiguous condition_substantial_public_interest/1.
:- discontiguous condition_summary_published/1.
:- discontiguous conformity_assessment_carried_out/1.
:- discontiguous conformity_assessment_procedure_based_on_internal_control/1.
:- discontiguous considered_provider/2.
:- discontiguous considered_systemic_risk/1.
:- discontiguous considers_or_has_reason_to_consider_nonconformity/2.
:- discontiguous contextual_factors_for_ai_literacy/1.
:- discontiguous contributing_to_tools_and_methodologies/1.
:- discontiguous contributing_to_tools_and_templates/1.
:- discontiguous corrective_action_required/2.
:- discontiguous covers/2.
:- discontiguous criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii/1.
:- discontiguous data_governance_practices_applies/1.
:- discontiguous deemed_justified_authorisation/1.
:- discontiguous delegation_of_power/1.
:- discontiguous delegation_period/1.
:- discontiguous deleted_after_participation_or_retention_end/1.
:- discontiguous demonstrates_conformity_with_harmonised_standards/1.
:- discontiguous deploys_subliminal_manipulative_or_deceptive_techniques/1.
:- discontiguous derogation_authorisation/1.
:- discontiguous derogation_condition_met/1.
:- discontiguous derogation_only_under_harmonisation_legislation/1.
:- discontiguous designated_representative/2.
:- discontiguous designation_period/2.
:- discontiguous designed_for_human_oversight/1.
:- discontiguous developed_by_public_or_legal_person/1.
:- discontiguous development_description/1.
:- discontiguous digital_ce_marking_used/1.
:- discontiguous documentation_kept_under_financial_services_law/1.
:- discontiguous documentation_necessary_for_mandate/1.
:- discontiguous doubt_competence_or_fulfilment/1.
:- discontiguous drawn_up_before_placing_or_service/2.
:- discontiguous drawn_up_by/2.
:- discontiguous edps_acts_as_market_surveillance_authority/1.
:- discontiguous effect_of_revocation/1.
:- discontiguous effective_monitoring_mechanisms_exist/1.
:- discontiguous emotion_recognition_system_high_risk/1.
:- discontiguous empowered_for_consistency/1.
:- discontiguous ensures_equivalent_compliance/1.
:- discontiguous entry_into_force/1.
:- discontiguous entry_into_force_of_delegated_act/1.
:- discontiguous established_under_third_country_law/1.
:- discontiguous eu_database_contains_personal_data/1.
:- discontiguous eu_database_publicly_accessible/1.
:- discontiguous eu_database_restricted_access/1.
:- discontiguous eu_declaration_of_conformity_accompanies/1.
:- discontiguous exempt_from_dual_verification/1.
:- discontiguous exempt_from_high_risk/1.
:- discontiguous exempt_from_notification/2.
:- discontiguous exempt_liability_insurance/1.
:- discontiguous exempt_open_source_model/1.
:- discontiguous expert_on_scientific_panel/1.
:- discontiguous expertise_in_ai/1.
:- discontiguous exploits_vulnerability/1.
:- discontiguous extended_term_of_office/2.
:- discontiguous extension_of_objection_period/2.
:- discontiguous extension_of_scope_applies/1.
:- discontiguous financial_institution_ai_system/1.
:- discontiguous finding_under_paragraph_1/2.
:- discontiguous finds_risk_after_evaluation/2.
:- discontiguous fine_amount_cap/2.
:- discontiguous fine_cap/2.
:- discontiguous fine_characteristics/1.
:- discontiguous fine_decision_factors/1.
:- discontiguous fine_infringement/2.
:- discontiguous for_substantial_public_interest/1.
:- discontiguous formal_noncompliance_finding/1.
:- discontiguous free_and_open_source_exception/1.
:- discontiguous fundamental_rights_impact_assessment_complements_data_protection_impact_assessment/2.
:- discontiguous general_description/1.
:- discontiguous grounds_to_consider_conditions_not_met/2.
:- discontiguous harmonised_standards_cover_article_31_requirements/0.
:- discontiguous has_power_to_request_documentation/1.
:- discontiguous has_relevant_competences/1.
:- discontiguous high_impact_capabilities_presumed/1.
:- discontiguous high_internal_market_impact/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_or_general_purpose_ai_model/1.
:- discontiguous high_risk_ai_system_used_by_sensitive_authorities/1.
:- discontiguous human_oversight_aims_to_prevent_risks/1.
:- discontiguous human_oversight_assigned/1.
:- discontiguous human_oversight_capability/2.
:- discontiguous in_conformity_with_harmonised_standard/1.
:- discontiguous in_specified_area/1.
:- discontiguous independent_from_providers/1.
:- discontiguous informed_about_conditions_and_duration/2.
:- discontiguous informed_about_identification_and_contact/2.
:- discontiguous informed_about_nature_and_objectives/2.
:- discontiguous informed_about_reversal_arrangements/2.
:- discontiguous informed_about_rights_and_guarantees/2.
:- discontiguous informed_consent_documented/1.
:- discontiguous informed_of_serious_incident/2.
:- discontiguous initial_provider_excluded/2.
:- discontiguous input_data_relevant_and_representative/1.
:- discontiguous instructions_contain/2.
:- discontiguous instructions_for_use_accompanies/1.
:- discontiguous insufficient_information/1.
:- discontiguous involved_in_application/1.
:- discontiguous kept_for_duration_of_participation/1.
:- discontiguous large_scale_it_system/1.
:- discontiguous law_enforcement_related_high_risk_ai_system/1.
:- discontiguous lawfully_collected_for_other_purposes/1.
:- discontiguous lays_down/1.
:- discontiguous liable_for_damage/2.
:- discontiguous limited_articles_apply/1.
:- discontiguous logging_capabilities_enable_recording/2.
:- discontiguous logging_capabilities_provide_minimum/2.
:- discontiguous makes_substantial_modification/2.
:- discontiguous market_surveillance_authority_for_ai/2.
:- discontiguous materially_distorts_behaviour/1.
:- discontiguous may_advise_on_international_matters/1.
:- discontiguous may_allow_testing_in_derogation/2.
:- discontiguous may_appoint_independent_experts/1.
:- discontiguous may_approve/2.
:- discontiguous may_assist_ai_office_sandboxes/1.
:- discontiguous may_assist_developing_expertise/1.
:- discontiguous may_authorise_derogation/2.
:- discontiguous may_be_authorised_as_notified_body/1.
:- discontiguous may_be_invited/1.
:- discontiguous may_call_upon_experts/1.
:- discontiguous may_collect_and_share_expertise/1.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_conduct_testing_in_real_world_conditions/2.
:- discontiguous may_contribute_to_coordination/2.
:- discontiguous may_contribute_to_guidance/1.
:- discontiguous may_contribute_to_harmonisation/1.
:- discontiguous may_cooperate_with_third_countries/1.
:- discontiguous may_cooperate_with_union_bodies/1.
:- discontiguous may_designate_alternative_authority/2.
:- discontiguous may_designate_systemic_risk/1.
:- discontiguous may_establish_additional_sandbox/2.
:- discontiguous may_establish_edps_sandbox/1.
:- discontiguous may_establish_joint_sandbox/2.
:- discontiguous may_establish_other_subgroups/1.
:- discontiguous may_establish_sub_groups/2.
:- discontiguous may_exercise_powers/2.
:- discontiguous may_exercise_powers_remotely/2.
:- discontiguous may_extend_validity/2.
:- discontiguous may_facilitate_common_criteria/1.
:- discontiguous may_fulfil_obligation_by_participation/2.
:- discontiguous may_impose_fine/2.
:- discontiguous may_initiate_dialogue/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_integrate_documentation/2.
:- discontiguous may_integrate_existing_system/2.
:- discontiguous may_invite/2.
:- discontiguous may_invite_adherence/2.
:- discontiguous may_issue_recommendations/2.
:- discontiguous may_lodge_complaint/2.
:- discontiguous may_make_commitments_binding/2.
:- discontiguous may_make_exit_report_public/1.
:- discontiguous may_notify/2.
:- discontiguous may_perform_checks/2.
:- discontiguous may_perform_notified_body_activities/1.
:- discontiguous may_prepare/2.
:- discontiguous may_present_arguments/2.
:- discontiguous may_propose_joint_activities/2.
:- discontiguous may_provide_advice_on_implementation/1.
:- discontiguous may_provide_common_rules/2.
:- discontiguous may_provide_guidance/2.
:- discontiguous may_provide_opinions_on_alerts/2.
:- discontiguous may_provide_qualified_alert/2.
:- discontiguous may_provide_simplified_elements/2.
:- discontiguous may_put_into_service_without_authorisation/2.
:- discontiguous may_receive_opinions_on_alerts/2.
:- discontiguous may_rely_on_code_of_practice/2.
:- discontiguous may_remain_valid/2.
:- discontiguous may_request_access/2.
:- discontiguous may_request_access_to_information/2.
:- discontiguous may_request_documentation/2.
:- discontiguous may_request_information/2.
:- discontiguous may_request_reassessment/2.
:- discontiguous may_request_testing/2.
:- discontiguous may_require/2.
:- discontiguous may_require_modification/2.
:- discontiguous may_submit_complaint/2.
:- discontiguous may_submit_incomplete_report/2.
:- discontiguous may_support/2.
:- discontiguous may_support_joint_activities/2.
:- discontiguous may_support_promoting_ai_literacy/1.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous may_suspend_restrict_withdraw/2.
:- discontiguous may_suspend_testing/2.
:- discontiguous may_use_designation_documents/2.
:- discontiguous may_use_documentation_for_compliance/2.
:- discontiguous may_use_national_accreditation_body/2.
:- discontiguous may_withdraw_from_testing/2.
:- discontiguous meets_requirements_art_31/1.
:- discontiguous modifies_intended_purpose_to_high_risk/2.
:- discontiguous must_accept_simplified_form/2.
:- discontiguous must_achieve_accuracy_robustness_cybersecurity/2.
:- discontiguous must_act_as_notified_body/2.
:- discontiguous must_act_with_confidentiality/1.
:- discontiguous must_address_decision/2.
:- discontiguous must_address_decision_to_operators/2.
:- discontiguous must_address_feedback_loops/2.
:- discontiguous must_adopt_delegated_acts/2.
:- discontiguous must_adopt_implementing_acts/1.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_adopt_mitigation_or_suspend/2.
:- discontiguous must_adopt_rules_of_procedure/2.
:- discontiguous must_advise/2.
:- discontiguous must_advise_and_assist/2.
:- discontiguous must_advise_and_support/2.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_affix_notified_body_number/2.
:- discontiguous must_agree_terms_for_testing/2.
:- discontiguous must_aim_to_cover/2.
:- discontiguous must_aim_to_cover_issue/2.
:- discontiguous must_aim_to_ensure/2.
:- discontiguous must_aim_to_ensure_reporting/2.
:- discontiguous must_allocate_resources/2.
:- discontiguous must_allow_access/2.
:- discontiguous must_apply_directive/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_appoint_members/2.
:- discontiguous must_assess/2.
:- discontiguous must_assess_amendment_need/2.
:- discontiguous must_assess_coverage/2.
:- discontiguous must_assess_impact/1.
:- discontiguous must_assess_resource_requirements/2.
:- discontiguous must_assess_systemic_risks/2.
:- discontiguous must_assign/2.
:- discontiguous must_assign_human_oversight/1.
:- discontiguous must_assist_in_assessment_of_standards/1.
:- discontiguous must_associate_data_protection_authorities/2.
:- discontiguous must_assume_responsibility/2.
:- discontiguous must_assume_responsibility_for_compliance/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_on_post_market_monitoring_plan/2.
:- discontiguous must_be_addressable/2.
:- discontiguous must_be_assisted/2.
:- discontiguous must_be_authorised/2.
:- discontiguous must_be_cybersecure/2.
:- discontiguous must_be_effectively_overseen/2.
:- discontiguous must_be_established_under_national_law/2.
:- discontiguous must_be_free_of_conflict_of_interest/1.
:- discontiguous must_be_independent_of_competitor/2.
:- discontiguous must_be_independent_of_operator/2.
:- discontiguous must_be_independent_of_provider/2.
:- discontiguous must_be_organised_for_objectivity/1.
:- discontiguous must_be_proportionate/2.
:- discontiguous must_be_ready_by/2.
:- discontiguous must_be_resilient/2.
:- discontiguous must_bring_into_compliance/2.
:- discontiguous must_carry_out/2.
:- discontiguous must_carry_out_audits/2.
:- discontiguous must_carry_out_enforcement_assessment/1.
:- discontiguous must_carry_out_evaluation/2.
:- discontiguous must_cease/1.
:- discontiguous must_collect_and_analyse_data/2.
:- discontiguous must_communicate_decision/2.
:- discontiguous must_communicate_fine_information/2.
:- discontiguous must_communicate_grounds/2.
:- discontiguous must_communicate_identity/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_complete_assessment/2.
:- discontiguous must_complete_conformity_assessment_without_undue_delay/1.
:- discontiguous must_comply/2.
:- discontiguous must_comply_registration/1.
:- discontiguous must_comply_with_registration/2.
:- discontiguous must_comply_with_registration_obligations/2.
:- discontiguous must_comply_with_safeguards/2.
:- discontiguous must_comply_with_section_2/1.
:- discontiguous must_confer_powers_on_market_surveillance/2.
:- discontiguous must_confirm/2.
:- discontiguous must_confirm_identity/2.
:- discontiguous must_consider_circumstances/2.
:- discontiguous must_consider_deployer_context/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult_experts/2.
:- discontiguous must_consult_operators/2.
:- discontiguous must_consult_other_authorities/2.
:- discontiguous must_contain/2.
:- discontiguous must_contain_information_in_eu_declaration_of_conformity/2.
:- discontiguous must_contribute_to_tasks/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_cooperate_during_investigations/2.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_coordinate_within_board/2.
:- discontiguous must_decide_authorisation/2.
:- discontiguous must_decide_justification/1.
:- discontiguous must_decide_justification/2.
:- discontiguous must_declare_accuracy_levels/2.
:- discontiguous must_delete_data/2.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_delete_personal_data_on_withdrawal/3.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_conformity/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_authority_for_law_enforcement_systems/2.
:- discontiguous must_designate_or_establish_notifying_authority/2.
:- discontiguous must_designate_single_point_of_contact/2.
:- discontiguous must_determine_number_of_experts/2.
:- discontiguous must_develop_expertise_and_capabilities/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_methodology/2.
:- discontiguous must_develop_on_quality_data_sets/2.
:- discontiguous must_develop_procedures_cooperatively/1.
:- discontiguous must_develop_single_interface/1.
:- discontiguous must_direct_to_pre_deployment_services/2.
:- discontiguous must_discard_results_immediately/1.
:- discontiguous must_disclose/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_document_impartiality_structure/1.
:- discontiguous must_document_use/2.
:- discontiguous must_draw_up_certificate_in_language/2.
:- discontiguous must_draw_up_declaration_of_interests/1.
:- discontiguous must_draw_up_eu_declaration_of_conformity/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_rules_of_procedure/1.
:- discontiguous must_draw_up_single_eu_declaration_of_conformity/2.
:- discontiguous must_draw_up_single_technical_documentation/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_elect_co_chairs/1.
:- discontiguous must_enable_authorised_representative/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_encourage_and_facilitate_review/2.
:- discontiguous must_encourage_codes_of_practice/2.
:- discontiguous must_end_noncompliance/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_accessibility_compliance/2.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidence_in_performance/1.
:- discontiguous must_ensure_confidence_in_results/1.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_confidentiality/2.
:- discontiguous must_ensure_conformity/2.
:- discontiguous must_ensure_cooperation_between_sandboxes/2.
:- discontiguous must_ensure_coordination/2.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_cybersecurity/2.
:- discontiguous must_ensure_fair_representation/2.
:- discontiguous must_ensure_full_compliance/2.
:- discontiguous must_ensure_input_data/2.
:- discontiguous must_ensure_kept_up_to_date/2.
:- discontiguous must_ensure_market_surveillance_access/2.
:- discontiguous must_ensure_mitigation_for_uneliminated_risks/2.
:- discontiguous must_ensure_participation/2.
:- discontiguous must_ensure_resources/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_ensure_risk_elimination_or_reduction/2.
:- discontiguous must_ensure_storage_conditions/2.
:- discontiguous must_ensure_storage_transport_compliance/2.
:- discontiguous must_ensure_subcontractor_requirements/2.
:- discontiguous must_ensure_testing_compliance/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_enter_consultation/1.
:- discontiguous must_enter_consultation/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_enter_data_deployer/2.
:- discontiguous must_enter_into_consultations/2.
:- discontiguous must_entrust_implementation/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_or_designate/2.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_sandbox/2.
:- discontiguous must_establish_standing_subgroups/1.
:- discontiguous must_establish_systems_to_manage_conflicts/1.
:- discontiguous must_evaluate/2.
:- discontiguous must_evaluate_and_report/3.
:- discontiguous must_evaluate_functioning/2.
:- discontiguous must_evaluate_impact/2.
:- discontiguous must_evaluate_national_measures/1.
:- discontiguous must_examine/2.
:- discontiguous must_examine_technical_documentation/1.
:- discontiguous must_facilitate/2.
:- discontiguous must_facilitate_access/2.
:- discontiguous must_facilitate_coordination/2.
:- discontiguous must_facilitate_cross_border_cooperation/1.
:- discontiguous must_facilitate_exchange/2.
:- discontiguous must_facilitate_tasks/2.
:- discontiguous must_follow_conformity_assessment_procedure/2.
:- discontiguous must_give_access_to_logs/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access/3.
:- discontiguous must_grant_full_access/3.
:- discontiguous must_grant_source_code_access/3.
:- discontiguous must_handle_complaint/2.
:- discontiguous must_have_adequate_competent_personnel/1.
:- discontiguous must_have_confidentiality_procedures/1.
:- discontiguous must_have_legal_personality/1.
:- discontiguous must_have_market_surveillance_powers/1.
:- discontiguous must_have_necessary_expertise/1.
:- discontiguous must_have_permanent_availability_of_personnel/1.
:- discontiguous must_have_professional_integrity/1.
:- discontiguous must_have_proportionate_procedures/1.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_have_requisite_competence/1.
:- discontiguous must_have_sufficient_internal_competences/1.
:- discontiguous must_hold_meetings/2.
:- discontiguous must_identify/2.
:- discontiguous must_immediately_inform/2.
:- discontiguous must_implement/2.
:- discontiguous must_implement_cybersecurity_measures/2.
:- discontiguous must_implement_impartiality_structure/1.
:- discontiguous must_implement_mitigation/2.
:- discontiguous must_impose_restrictions/2.
:- discontiguous must_include_additional_in_documentation/2.
:- discontiguous must_include_ai_specific_security_measures/2.
:- discontiguous must_include_in_documentation/2.
:- discontiguous must_include_provisions_on_conditions/2.
:- discontiguous must_indicate_grounds_and_challenge/2.
:- discontiguous must_indicate_identity/2.
:- discontiguous must_indicate_non_compliance_reason/2.
:- discontiguous must_inform/2.
:- discontiguous must_inform_ai_office_of_suspension/2.
:- discontiguous must_inform_and_cooperate/2.
:- discontiguous must_inform_authorities/2.
:- discontiguous must_inform_board/2.
:- discontiguous must_inform_board_and_authorities/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_commission_and_member_states_of_measures/2.
:- discontiguous must_inform_market_surveillance/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_of_establishment/2.
:- discontiguous must_inform_of_objections/2.
:- discontiguous must_inform_of_required_suspension_or_withdrawal/1.
:- discontiguous must_inform_other_bodies/2.
:- discontiguous must_inform_public_authorities/2.
:- discontiguous must_inform_supply_chain/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_investigate/1.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_and_inform/2.
:- discontiguous must_issue/2.
:- discontiguous must_issue_standardisation_request/1.
:- discontiguous must_justify_technical_solutions/2.
:- discontiguous must_keep_at_disposal/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_documents_available/2.
:- discontiguous must_keep_eu_declaration_of_conformity/2.
:- discontiguous must_keep_eu_declaration_of_conformity_up_to_date/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_registration_info_up_to_date/2.
:- discontiguous must_keep_technical_documentation_on_premises/2.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_lay_down_penalty_rules/2.
:- discontiguous must_lay_down_public_authority_fine_rules/1.
:- discontiguous must_lodge/2.
:- discontiguous must_maintain_logs_as_documentation/2.
:- discontiguous must_maintain_sandbox_list/1.
:- discontiguous must_make_available_documentation/2.
:- discontiguous must_make_available_information/2.
:- discontiguous must_make_declaration_publicly_available/2.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_make_publicly_available_summary/2.
:- discontiguous must_make_reports_public/2.
:- discontiguous must_make_subsidiary_list_available/1.
:- discontiguous must_mark_outputs/2.
:- discontiguous must_minimise_burdens_for_smes/2.
:- discontiguous must_mitigate_significant_risks/2.
:- discontiguous must_mitigate_systemic_risks/2.
:- discontiguous must_monitor/2.
:- discontiguous must_monitor_and_evaluate/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_be_directly_involved/2.
:- discontiguous must_not_cover_sensitive_operational_data/2.
:- discontiguous must_not_engage_in_conflicting_activity/2.
:- discontiguous must_not_make_available/2.
:- discontiguous must_not_offer_conformity_assessment_activities/1.
:- discontiguous must_not_offer_consultancy_services/1.
:- discontiguous must_not_place_on_market/2.
:- discontiguous must_not_represent_parties/2.
:- discontiguous must_not_seek_instructions/1.
:- discontiguous must_not_use_unregistered/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_amendments/2.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_commission_and_member_states/2.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_penalty_rules/2.
:- discontiguous must_notify_single_point_of_contact/2.
:- discontiguous must_notify_suspension_termination_outcomes/2.
:- discontiguous must_notify_use/2.
:- discontiguous must_observe_professional_secrecy/1.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_obtain_provider_agreement/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_outline_timeline/1.
:- discontiguous must_participate_in_coordination_activities/1.
:- discontiguous must_participate_in_standardisation/1.
:- discontiguous must_pay_fees/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_investigations/2.
:- discontiguous must_perform_mandate_tasks/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_tasks_with_impartiality/1.
:- discontiguous must_prepare_annual_report/1.
:- discontiguous must_provide/2.
:- discontiguous must_provide_advice/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_documentation/2.
:- discontiguous must_provide_exchange/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information_and_documentation/3.
:- discontiguous must_provide_information_and_training/2.
:- discontiguous must_provide_instructions/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_regulatory_guidance/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_provide_technical_expertise/2.
:- discontiguous must_provide_written_proof/3.
:- discontiguous must_publish_annual_report/1.
:- discontiguous must_publish_assessment/2.
:- discontiguous must_publish_list/0.
:- discontiguous must_put_in_place/2.
:- discontiguous must_put_in_place_copyright_policy/2.
:- discontiguous must_reflect_differences_in_size_and_capacity/1.
:- discontiguous must_refuse/2.
:- discontiguous must_register_self_and_system/2.
:- discontiguous must_register_self_and_use/2.
:- discontiguous must_reject_arguments/1.
:- discontiguous must_report_annually/2.
:- discontiguous must_report_competition_info/2.
:- discontiguous must_report_corrective_measures/2.
:- discontiguous must_report_fines/2.
:- discontiguous must_report_measures_taken/2.
:- discontiguous must_report_prohibited_practices/2.
:- discontiguous must_report_resources/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_serious_incident_immediately/2.
:- discontiguous must_report_serious_incident_within_days/3.
:- discontiguous must_report_serious_incidents/2.
:- discontiguous must_report_to_ecb/2.
:- discontiguous must_request_authorisation/2.
:- discontiguous must_request_authorisation_without_undue_delay/2.
:- discontiguous must_request_only_strictly_necessary_data/2.
:- discontiguous must_require_compliance/2.
:- discontiguous must_require_corrective_action/2.
:- discontiguous must_require_suspension_or_withdrawal/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rights_of_defence/1.
:- discontiguous must_respect_rigour/2.
:- discontiguous must_restrict_designation/1.
:- discontiguous must_restrict_or_prohibit/2.
:- discontiguous must_restrict_withdraw_recall/2.
:- discontiguous must_safeguard_confidentiality/1.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_safeguard_impartiality/1.
:- discontiguous must_safeguard_independence/1.
:- discontiguous must_safeguard_objectivity/1.
:- discontiguous must_safeguard_objectivity_and_impartiality/1.
:- discontiguous must_satisfy_cybersecurity_requirements/1.
:- discontiguous must_satisfy_organisational_requirements/1.
:- discontiguous must_satisfy_process_requirements/1.
:- discontiguous must_satisfy_quality_management_requirements/1.
:- discontiguous must_satisfy_resources_requirements/1.
:- discontiguous must_separate_decision_makers/1.
:- discontiguous must_set_up_and_maintain_eu_database/2.
:- discontiguous must_share/2.
:- discontiguous must_specify_by_agreement/3.
:- discontiguous must_state_capability/2.
:- discontiguous must_state_compliance_in_eu_declaration_of_conformity/2.
:- discontiguous must_stop_use/2.
:- discontiguous must_stop_use_immediately/1.
:- discontiguous must_subject_to_data_governance/2.
:- discontiguous must_submit_amendment_proposals/1.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_reports/2.
:- discontiguous must_submit_application/2.
:- discontiguous must_submit_copy_of_eu_declaration_of_conformity/2.
:- discontiguous must_submit_findings/2.
:- discontiguous must_submit_on_request/3.
:- discontiguous must_submit_registration_info/2.
:- discontiguous must_submit_report/1.
:- discontiguous must_submit_report/3.
:- discontiguous must_submit_review_report/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_suspend_certificate/2.
:- discontiguous must_suspend_designation/1.
:- discontiguous must_suspend_use/2.
:- discontiguous must_take_account_of_complexity/2.
:- discontiguous must_take_account_of_sector/2.
:- discontiguous must_take_account_of_size/2.
:- discontiguous must_take_account_of_structure/2.
:- discontiguous must_take_appropriate_measures/1.
:- discontiguous must_take_appropriate_measures/2.
:- discontiguous must_take_complaint_into_account/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_cybersecurity_measures/1.
:- discontiguous must_take_documentation_positively/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_elements/2.
:- discontiguous must_take_into_account_sectoral_specificities/1.
:- discontiguous must_take_into_account_sme_interests/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_necessary_steps/2.
:- discontiguous must_take_out_liability_insurance/1.
:- discontiguous must_take_provisional_measures/2.
:- discontiguous must_take_steps/1.
:- discontiguous must_technically_allow_logging/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_test_before_placing_on_market_or_putting_into_service/2.
:- discontiguous must_translate_eu_declaration_of_conformity/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_undergo_conformity_assessment/2.
:- discontiguous must_undergo_new_conformity_assessment/1.
:- discontiguous must_undertake_action/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_fundamental_rights_impact_assessment/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_use_information/2.
:- discontiguous must_use_simplified_form/2.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_compliance/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_design_consistency/1.
:- discontiguous must_verify_documentation/2.
:- discontiguous must_verify_identification/2.
:- discontiguous must_verify_qms_compliance/1.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_certificate/2.
:- discontiguous must_withdraw_designation/1.
:- discontiguous must_withdraw_measure/2.
:- discontiguous necessary_for_chapter_3_section_2_requirements/1.
:- discontiguous no_effect_on_data_subject_rights/1.
:- discontiguous no_longer_provider/2.
:- discontiguous no_measures_or_decisions_affecting_data_subjects/1.
:- discontiguous notification_includes/2.
:- discontiguous notification_must_include/2.
:- discontiguous notified_body/1.
:- discontiguous notified_body_number_follows_ce_marking/1.
:- discontiguous notified_body_number_in_promotional_material/1.
:- discontiguous notified_commission_of_systemic_risk/1.
:- discontiguous obligation_met_through_data_protection_impact_assessment/2.
:- discontiguous observer/1.
:- discontiguous obvious_interaction/1.
:- discontiguous offers_mitigation_commitments/2.
:- discontiguous only_authorised_persons_have_access/1.
:- discontiguous open_source_exception_applies/1.
:- discontiguous operator/1.
:- discontiguous opt_out_from_third_party_assessment/2.
:- discontiguous originally_collected_data_shared_per_union_law/1.
:- discontiguous other_change_applies/1.
:- discontiguous other_grounds_for_noncompliance/2.
:- discontiguous oversight_aims_to_prevent_or_minimise_risks/1.
:- discontiguous oversight_measure_type_a/1.
:- discontiguous oversight_measure_type_b/1.
:- discontiguous oversight_measures_commensurate/1.
:- discontiguous parameters_made_publicly_available/1.
:- discontiguous particular_expertise_and_competence/1.
:- discontiguous permanent_member/1.
:- discontiguous permitted_biometric_categorisation/1.
:- discontiguous permitted_disclosure_exception/1.
:- discontiguous permitted_emotion_inference/1.
:- discontiguous permitted_exchange_with_third_country_authorities/1.
:- discontiguous permitted_inclusion/2.
:- discontiguous permitted_informing_exception/1.
:- discontiguous permitted_limited_adherence/2.
:- discontiguous permitted_limited_disclosure/1.
:- discontiguous permitted_marking_exception/1.
:- discontiguous permitted_objective/1.
:- discontiguous permitted_processing_in_sandbox/1.
:- discontiguous permitted_real_time_remote_biometric_identification/2.
:- discontiguous permitted_risk_assessment_support/1.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_text_disclosure_exception/1.
:- discontiguous permitted_use_of_assessed_system/2.
:- discontiguous placed_on_market_or_put_into_service/2.
:- discontiguous placed_on_market_together/2.
:- discontiguous plan_summary/2.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous power_to_adopt_delegated_acts_conferred/1.
:- discontiguous presumed_compliance_with_cybersecurity_requirements/1.
:- discontiguous presumed_compliance_with_data_requirements/1.
:- discontiguous presumed_compliance_with_notified_body_requirements/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_with_requirements/1.
:- discontiguous presumption_of_conformity/2.
:- discontiguous previously_conducted_assessment_applies/2.
:- discontiguous priority_access_to_sandbox/1.
:- discontiguous procedural_rights_apply/1.
:- discontiguous processed_for_sandbox_ai_development/1.
:- discontiguous processing_in_environment/2.
:- discontiguous processing_in_sandbox/2.
:- discontiguous product_manufacturer_considered_provider/2.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_disclosure_without_consultation/1.
:- discontiguous prohibited_emotion_inference/1.
:- discontiguous prohibited_exploitation_of_vulnerability/1.
:- discontiguous prohibited_facial_recognition_database_creation/1.
:- discontiguous prohibited_real_time_remote_biometric_identification/1.
:- discontiguous prohibited_risk_assessment_of_natural_person/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_solely_output_based_decision/1.
:- discontiguous prohibited_subliminal_technique/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/1.
:- discontiguous protected_by_appropriate_measures/1.
:- discontiguous provenance/2.
:- discontiguous provider_and_deployer_details/2.
:- discontiguous provider_fails_corrective_action/2.
:- discontiguous provider_of/2.
:- discontiguous provisional_measure_deemed_justified/1.
:- discontiguous published_on_competent_authority_website/1.
:- discontiguous purpose_is_developing_training_testing_ai/1.
:- discontiguous purpose_of_regulation/1.
:- discontiguous put_into_service_under_name/2.
:- discontiguous puts_name_or_trademark/2.
:- discontiguous quality_criteria_met/1.
:- discontiguous quality_management_system/1.
:- discontiguous quality_management_system_aspect/1.
:- discontiguous quality_management_system_assessed/2.
:- discontiguous quality_management_system_deemed_fulfilled/1.
:- discontiguous quality_management_system_simplified_compliance/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous real_world_testing_approved/2.
:- discontiguous real_world_testing_registered/2.
:- discontiguous reason_to_suspect/2.
:- discontiguous reasons_to_doubt/1.
:- discontiguous references/2.
:- discontiguous registration_at_national_level/1.
:- discontiguous registration_in_secure_section/1.
:- discontiguous registration_info/3.
:- discontiguous registration_info_section_a/2.
:- discontiguous registration_info_section_b/2.
:- discontiguous registration_info_section_c/2.
:- discontiguous regulation_applies_to/1.
:- discontiguous regulation_does_not_apply_to/1.
:- discontiguous regulation_does_not_apply_to_activity/1.
:- discontiguous regulation_does_not_apply_to_system/1.
:- discontiguous released_under_free_open_source_licence/1.
:- discontiguous remain_liable/2.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous renewable_term/2.
:- discontiguous report_must_pay_attention/2.
:- discontiguous request_for_information/1.
:- discontiguous request_from_scientific_panel/1.
:- discontiguous required_qualified_alert_content/2.
:- discontiguous requires_third_party_conformity_assessment/1.
:- discontiguous residual_risk_acceptable/1.
:- discontiguous response_mechanisms_exist/1.
:- discontiguous revocation_of_delegation/1.
:- discontiguous right_to_explanation/2.
:- discontiguous risk_assessment_of_criminal_offence/1.
:- discontiguous risk_management_may_be_part_of_existing_procedures/2.
:- discontiguous risk_management_measure/1.
:- discontiguous risk_management_measure_concerns_reasonably_mitigable_risk/1.
:- discontiguous risk_management_measure_due_consideration/1.
:- discontiguous risk_management_system/1.
:- discontiguous risks_to_health_safety_or_fundamental_rights/1.
:- discontiguous safety_component_critical_infrastructure/1.
:- discontiguous safety_component_or_product_covered/1.
:- discontiguous safety_components/1.
:- discontiguous sandbox_access_free_for/2.
:- discontiguous sandbox_conditions_met/1.
:- discontiguous sandbox_created_data_not_shared_outside/1.
:- discontiguous sandbox_may_include_real_world_testing/1.
:- discontiguous sandbox_not_affect_supervisory_powers/1.
:- discontiguous sandbox_objective/1.
:- discontiguous sandbox_open_to/2.
:- discontiguous sandbox_operational_by/2.
:- discontiguous sandbox_participation_limited_period/1.
:- discontiguous sandbox_provides_controlled_environment/1.
:- discontiguous scientific_panel/1.
:- discontiguous sectoral_procedures_apply/1.
:- discontiguous selected_by_commission/1.
:- discontiguous sensitive_operational_data/1.
:- discontiguous serious_incident_notification_limited/1.
:- discontiguous single_contact_point/1.
:- discontiguous sme_fine_cap/2.
:- discontiguous social_score_leads_to_detrimental_treatment/1.
:- discontiguous social_scoring_system/1.
:- discontiguous source_code_access_conditions_fulfilled/1.
:- discontiguous special_category_data_processing_permitted/2.
:- discontiguous staff_or_other_person_dealing_with_ai/2.
:- discontiguous standard_covers_requirements/1.
:- discontiguous standardisation_participants_seek/1.
:- discontiguous standing_subgroup_for_market_surveillance/1.
:- discontiguous standing_subgroup_for_notifying_authorities/1.
:- discontiguous status_information/2.
:- discontiguous subject_to_fine/2.
:- discontiguous subject_to_fines/2.
:- discontiguous subject_to_fines_misclassification/2.
:- discontiguous subjects_gave_informed_consent_or_law_enforcement_exception/1.
:- discontiguous substantial_modification_applies/1.
:- discontiguous substantial_public_interest_area/1.
:- discontiguous sufficiently_transparent/1.
:- discontiguous supplement_valid/1.
:- discontiguous surveillance_purpose/2.
:- discontiguous system_description/2.
:- discontiguous systemic_risk_classification_applies/1.
:- discontiguous systemic_risk_concern/1.
:- discontiguous systemic_risk_exception_applies/1.
:- discontiguous systemic_risk_model/1.
:- discontiguous tacit_extension/1.
:- discontiguous takes_effect/2.
:- discontiguous task_supporting_cross_border_activities/1.
:- discontiguous task_supporting_implementation_and_enforcement/1.
:- discontiguous task_supporting_market_surveillance/1.
:- discontiguous task_supporting_safeguard_procedure/1.
:- discontiguous technical_documentation/1.
:- discontiguous technical_documentation_contains_minimum_elements/1.
:- discontiguous technical_documentation_demonstrates_compliance/2.
:- discontiguous technical_documentation_drawn_up/1.
:- discontiguous technical_documentation_provides_assessment_information/2.
:- discontiguous term_of_office/2.
:- discontiguous tested_for_risk_management/1.
:- discontiguous testing_duration_within_limits/1.
:- discontiguous testing_may_include_real_world_conditions/1.
:- discontiguous testing_results_kept/1.
:- discontiguous trained_and_tested_on_relevant_data/1.
:- discontiguous transparency_information/1.
:- discontiguous under_control_of_prospective_provider/1.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous union_has_agreement_with_third_country/1.
:- discontiguous union_wide_unique_single_identification_number/2.
:- discontiguous unjustified_authorisation/1.
:- discontiguous validity_of_existing_acts_unaffected/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic access_controls_and_documentation/1.
:- dynamic access_requested/2.
:- dynamic accompanied_by_eu_declaration_of_conformity/1.
:- dynamic accompanied_by_instructions_for_use/1.
:- dynamic achieves_equivalent_level_of_protection/1.
:- dynamic acts_on_behalf_of_public_authority/2.
:- dynamic adequate_safeguards_fundamental_rights/1.
:- dynamic adversarial_testing/1.
:- dynamic adverse_impact_on_fundamental_rights/1.
:- dynamic advisory_forum/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic allows_evaluation_of_continuous_compliance/2.
:- dynamic alternative_compliance_means/1.
:- dynamic annex_3_high_risk_ai_system/1.
:- dynamic annex_3_point_1_6_7_system/1.
:- dynamic annex_3_point_1_a_system/1.
:- dynamic annex_3_point_2_system/1.
:- dynamic annex_3_system/1.
:- dynamic annex_iii_system/1.
:- dynamic applies_harmonisation_legislation/2.
:- dynamic applies_regulation/2.
:- dynamic appropriate_statistical_properties/1.
:- dynamic appropriate_traceability/2.
:- dynamic artistic_work/1.
:- dynamic assistive_function/1.
:- dynamic assumptions_formulated/1.
:- dynamic authorisation_granted/1.
:- dynamic authorisation_requested_without_undue_delay/1.
:- dynamic authorised_for_criminal_offences/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_to_represent/2.
:- dynamic availability_assessed/1.
:- dynamic awareness_raising_activities/1.
:- dynamic bears_ce_marking/1.
:- dynamic becomes_aware_of_serious_incident/2.
:- dynamic bias_examination_conducted/1.
:- dynamic bias_examination_required/1.
:- dynamic bias_mitigation_measures_identified/1.
:- dynamic bias_mitigation_measures_required/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic cannot_fulfill_with_other_data/1.
:- dynamic causal_link_established/2.
:- dynamic ce_marking/1.
:- dynamic certificate/1.
:- dynamic certificate_language/2.
:- dynamic classified_non_high_risk/2.
:- dynamic co_chair/1.
:- dynamic code_of_conduct_applies/1.
:- dynamic code_of_practice/1.
:- dynamic code_of_practice_deemed_inadequate/0.
:- dynamic code_of_practice_finalised_by/1.
:- dynamic code_of_practice_participant/1.
:- dynamic commission/1.
:- dynamic committee/1.
:- dynamic common_specification/1.
:- dynamic communication_campaign/1.
:- dynamic competent_authority/1.
:- dynamic complaint_indicates_contact/2.
:- dynamic complaint_indicates_facts/2.
:- dynamic complaint_indicates_reason/2.
:- dynamic complete_in_view_of_purpose/1.
:- dynamic component_of/2.
:- dynamic concerns_performance_throughout_lifetime/2.
:- dynamic concluded_not_high_risk/2.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_fee/1.
:- dynamic conformity_assessment_procedure/1.
:- dynamic conformity_with_common_specification/1.
:- dynamic conformity_with_section_2_requirements/1.
:- dynamic consent_given_for_public_access/1.
:- dynamic consultation_of_experts/1.
:- dynamic consulted_board/1.
:- dynamic contains_element_description/1.
:- dynamic contains_eu_declaration_of_conformity/1.
:- dynamic contains_general_description/1.
:- dynamic contains_harmonised_standards_list/1.
:- dynamic contains_information/2.
:- dynamic contains_lifecycle_changes_description/1.
:- dynamic contains_monitoring_information/1.
:- dynamic contains_performance_metrics_description/1.
:- dynamic contains_post_market_evaluation_description/1.
:- dynamic contains_risk_management_description/1.
:- dynamic corrective_action/1.
:- dynamic corrective_action_taken/2.
:- dynamic corrective_actions_taken/2.
:- dynamic corrective_measure/1.
:- dynamic covered_by_union_harmonisation_legislation_annex_i_section_a/1.
:- dynamic creditworthiness_evaluation_system/1.
:- dynamic critical_infrastructure/1.
:- dynamic cumulative_training_computation/2.
:- dynamic cybersecurity_protection/1.
:- dynamic data_collection_processes_documented/1.
:- dynamic data_gaps_addressed/1.
:- dynamic data_gaps_identified/1.
:- dynamic data_origin_documented/1.
:- dynamic data_preparation_operations_documented/1.
:- dynamic data_set_quality_or_size/2.
:- dynamic data_transfer_safeguards_implemented/1.
:- dynamic death_of_person/1.
:- dynamic decision_produces_adverse_impact/1.
:- dynamic declared_interest_in_full_code/1.
:- dynamic dedicated_communication_channel/1.
:- dynamic deep_fake/1.
:- dynamic deep_fake_content/1.
:- dynamic deletion_does_not_decrease_protection/1.
:- dynamic deletion_upon_bias_correction_or_retention_end/1.
:- dynamic deployer/1.
:- dynamic deployer_informed_and_agreement_concluded/2.
:- dynamic design_choices_relevant/2.
:- dynamic detects_decision_patterns/1.
:- dynamic device_covered_by_regulations/1.
:- dynamic distributor/1.
:- dynamic does_not_substantially_alter/1.
:- dynamic downstream_provider/1.
:- dynamic editorial_responsibility/2.
:- dynamic education_access_system/1.
:- dynamic education_level_assessment_system/1.
:- dynamic election_influence_system/1.
:- dynamic emergency_response_system/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employment_decision_system/1.
:- dynamic employment_recruitment_system/1.
:- dynamic established_in_union_or_has_legal_rep/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic evaluation_finds_high_risk/2.
:- dynamic exception_from_explanation_applies/1.
:- dynamic exceptional_costs_recovered/2.
:- dynamic exceptional_reason/1.
:- dynamic exclusively_military_defence_national_security_purpose/1.
:- dynamic exempt_from_administrative_fines/2.
:- dynamic existing_post_market_monitoring_system/1.
:- dynamic financial_institution/1.
:- dynamic floating_point_operation/1.
:- dynamic free_and_open_source_licence/1.
:- dynamic free_of_errors_to_best_extent/1.
:- dynamic fulfils_eligibility_and_selection_criteria/2.
:- dynamic fulfils_eligibility_conditions/1.
:- dynamic fulfils_selection_criteria/1.
:- dynamic fundamental_rights_impact_assessment_completed/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_model_placed_on_market_before/2.
:- dynamic general_purpose_ai_model_with_systemic_risk/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_does_not_comply_with_request/1.
:- dynamic harmonised_standard_insufficiently_addresses_fundamental_rights/1.
:- dynamic harmonised_standard_not_delivered_on_time/1.
:- dynamic harmonised_standard_reference_expected/1.
:- dynamic harmonised_standard_reference_published/1.
:- dynamic harmonised_standard_request_not_accepted/1.
:- dynamic has_legal_personality/1.
:- dynamic has_other_grounds/2.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk_ai_system_listed_in_annex_3/1.
:- dynamic human_review/1.
:- dynamic identification_information/2.
:- dynamic identification_number/2.
:- dynamic importer/1.
:- dynamic importer_complied_with_obligations/1.
:- dynamic improves_previous_human_activity/1.
:- dynamic information_gathered_under_art_91/2.
:- dynamic information_referred_to_in_art_49_par_4/1.
:- dynamic information_referred_to_in_art_60_par_4_c/1.
:- dynamic informed_by/3.
:- dynamic informed_consent/1.
:- dynamic input_data/1.
:- dynamic input_output_modalities/2.
:- dynamic instructions_for_use/1.
:- dynamic insufficient/1.
:- dynamic insurance_risk_assessment_system/1.
:- dynamic intended_for_area_in_annex_3/1.
:- dynamic intended_for_use_by_public_authorities/1.
:- dynamic intended_purpose/1.
:- dynamic internal_governance_compliant/1.
:- dynamic international_cooperation_law_enforcement_judicial/1.
:- dynamic involved_deployers/2.
:- dynamic involved_provider/3.
:- dynamic involves_system/2.
:- dynamic issued_objection/2.
:- dynamic judicial_assistance_system/1.
:- dynamic large_scale_it_system_component/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_evidence_reliability_system/1.
:- dynamic law_enforcement_migration_asylum_border_system/1.
:- dynamic law_enforcement_offending_risk_system/1.
:- dynamic law_enforcement_polygraph_system/1.
:- dynamic law_enforcement_profiling_system/1.
:- dynamic law_enforcement_victim_risk_system/1.
:- dynamic learning_outcome_evaluation_system/1.
:- dynamic linked_enterprise/1.
:- dynamic local_public_authority/1.
:- dynamic logs/1.
:- dynamic main_characteristics/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate/1.
:- dynamic market_surveillance_authority/1.
:- dynamic measure_justified/1.
:- dynamic measure_unjustified/1.
:- dynamic microenterprise/1.
:- dynamic migration_application_examination_system/1.
:- dynamic migration_identification_system/1.
:- dynamic migration_polygraph_system/1.
:- dynamic migration_risk_assessment_system/1.
:- dynamic misclassified_to_circumvent/2.
:- dynamic model_benchmarks_and_evaluations/2.
:- dynamic model_evaluation/1.
:- dynamic model_parameter_count/2.
:- dynamic must_agree_terms/2.
:- dynamic must_undergo_new_conformity_assessment/2.
:- dynamic narrow_procedural_task/1.
:- dynamic national_competent_authority/1.
:- dynamic necessary_for_collecting_and_processing_information/2.
:- dynamic no_significant_risk_to_fundamental_rights_health_safety/1.
:- dynamic no_transmission_to_other_parties/1.
:- dynamic non_compliance_attributed_to_shortcomings/2.
:- dynamic non_compliance_reason/1.
:- dynamic non_personal_data/1.
:- dynamic notification_of_delegated_act/1.
:- dynamic notified/1.
:- dynamic notifying_authority/1.
:- dynamic objection_raised/1.
:- dynamic objection_raised/2.
:- dynamic only_authorised_persons_access/1.
:- dynamic outputs_reversible_and_disregardable/1.
:- dynamic part_of_technical_documentation/1.
:- dynamic partner_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic period_appropriate_to_project/1.
:- dynamic personal_data/1.
:- dynamic personal_non_professional_activity/1.
:- dynamic placed_on_market_or_put_into_service/1.
:- dynamic placed_on_market_or_put_into_service_before/2.
:- dynamic placed_on_union_market/1.
:- dynamic placing_on_market/1.
:- dynamic post_market_monitoring_plan/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic pre_determined_change/1.
:- dynamic preparatory_task/1.
:- dynamic presents_risk/1.
:- dynamic presumption_of_conformity/1.
:- dynamic product_contains_ai_system/1.
:- dynamic product_covered_by_annex_i/1.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic profiling_of_natural_persons/1.
:- dynamic proportionate_to_nature_and_risks/1.
:- dynamic prospective_provider/1.
:- dynamic provided_by_deployers_or_other_sources/1.
:- dynamic provider/1.
:- dynamic provider_complied_with_obligations/1.
:- dynamic provider_fails_compliance/2.
:- dynamic provider_of_model/2.
:- dynamic provisional_measure/1.
:- dynamic pseudonymisation_applied/1.
:- dynamic public_authority/1.
:- dynamic public_authority_deployer/1.
:- dynamic public_benefit_evaluation_system/1.
:- dynamic public_interest_text/1.
:- dynamic public_procurement_procedure/1.
:- dynamic publicly_accessible_space/1.
:- dynamic publicly_available_for_reporting/1.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic qualified_alert_from_scientific_panel/1.
:- dynamic quality_management_system_documented/1.
:- dynamic quality_management_system_includes/2.
:- dynamic quantity_assessed/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic real_world_testing_plan_submitted/2.
:- dynamic reasonable_likelihood_of_causal_link/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/2.
:- dynamic recall_of_ai_system/1.
:- dynamic records_include_necessity_reasoning/1.
:- dynamic registered_end_user_count/2.
:- dynamic registered_in_accordance_with_art_49/1.
:- dynamic registered_in_accordance_with_art_60/1.
:- dynamic registered_in_eu_database/1.
:- dynamic registration_completed_without_undue_delay/1.
:- dynamic registration_obligations/1.
:- dynamic relates_to/2.
:- dynamic relevant/1.
:- dynamic relevant_data/1.
:- dynamic remote/1.
:- dynamic report_on_delegation/1.
:- dynamic request_indicates_fines/1.
:- dynamic request_sets_period/1.
:- dynamic request_specifies_information/1.
:- dynamic request_states_legal_basis/1.
:- dynamic request_states_purpose/1.
:- dynamic requested_by_competent_authority/2.
:- dynamic requires_conformity_assessment/1.
:- dynamic right_otherwise_provided/1.
:- dynamic risk/1.
:- dynamic risk_equivalent_or_greater_than_existing/1.
:- dynamic risk_management_system_taken_into_account/1.
:- dynamic risk_of_harm_to_health_and_safety/1.
:- dynamic risk_presenting_system/1.
:- dynamic rules_of_procedure/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of_device/1.
:- dynamic sandbox_data_processing_environment/1.
:- dynamic sandbox_personal_data_logs/1.
:- dynamic sandbox_plan/1.
:- dynamic sandbox_project_summary/1.
:- dynamic scientific_research_and_development_purpose/1.
:- dynamic sensitive_operational_data_of_law_enforcement_deployers/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_c/1.
:- dynamic serious_incident_report/1.
:- dynamic significant_risk_of_harm/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic single_information_platform/1.
:- dynamic sme/1.
:- dynamic sme_or_startup/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specific_requirements_code/1.
:- dynamic stakeholder/1.
:- dynamic standardisation_development_process/1.
:- dynamic standardisation_request_asks_deliverables/2.
:- dynamic standardisation_request_covers/2.
:- dynamic standardisation_request_issued/1.
:- dynamic standardisation_request_specifies/2.
:- dynamic standardised_template/1.
:- dynamic start_up/1.
:- dynamic state_of_art_acknowledged/1.
:- dynamic state_of_the_art_security_measures/1.
:- dynamic storage_or_transport_conditions_jeopardise_compliance/2.
:- dynamic strictly_necessary_for_bias_detection_and_correction/1.
:- dynamic student_monitoring_system/1.
:- dynamic sub_group/1.
:- dynamic subject/1.
:- dynamic subject_to_equivalent_reporting_obligations/1.
:- dynamic subject_to_significant_design_changes_after/2.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason/2.
:- dynamic sufficiently_representative/1.
:- dynamic suitability_assessed/1.
:- dynamic supervised_within/2.
:- dynamic supervised_within_sandbox/2.
:- dynamic suspension_or_termination/2.
:- dynamic synthetic_content/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_assessment/1.
:- dynamic systemic_risk_at_union_level/1.
:- dynamic systemic_risk_mitigation/1.
:- dynamic takes_into_account_contextual_characteristics/1.
:- dynamic technical_limitations_on_reuse/1.
:- dynamic tested_in_other_member_states/1.
:- dynamic testing_data/1.
:- dynamic testing_effectively_overseen/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_in_real_world_conditions_outside_sandbox/1.
:- dynamic testing_in_real_world_conditions_registration/1.
:- dynamic third_country_provider/1.
:- dynamic training_activities/1.
:- dynamic training_computation_amount/2.
:- dynamic training_data/1.
:- dynamic two_thirds_majority/1.
:- dynamic under_distributor_responsibility/2.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic urgency_applies/1.
:- dynamic urgency_situation/1.
:- dynamic use_not_restricted_to_national_territory/1.
:- dynamic uses_model_training/1.
:- dynamic uses_testing_data/2.
:- dynamic uses_training_data/2.
:- dynamic uses_validation_data/2.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic voluntary_application_code/1.
:- dynamic vulnerable_group/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic widespread_infringement_or_serious_incident_b/1.
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
declared(purpose_of_regulation/1, 'purpose of the AI Act', 'celex:32024R1689/oj#art_1').
declared(lays_down/1, 'what the regulation establishes', 'celex:32024R1689/oj#art_1').
purpose_of_regulation(purpose(improve_internal_market_functioning, promote_uptake(human_centric_ai, trustworthy_ai), ensure_high_level_protection(health, safety, fundamental_rights, democracy, rule_of_law, environmental_protection), support_innovation)).
lays_down(rules(placing_on_market, putting_into_service, use_of_ai_systems)).
lays_down(prohibitions(certain_ai_practices)).
lays_down(requirements(high_risk_ai_systems)).
lays_down(obligations(operators_of_high_risk_ai_systems)).
lays_down(transparency_rules(certain_ai_systems)).
lays_down(rules(placing_on_market_of_general_purpose_ai_models)).
lays_down(rules(market_monitoring, market_surveillance, governance, enforcement)).
lays_down(measures(support_innovation, focus_on_smes_including_startups)).
provenance(purpose_of_regulation/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies_to/1, 'entity to which the regulation applies', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to/1, 'entity or system to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to_system/1, 'AI system to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to_activity/1, 'activity to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(limited_articles_apply/1, 'AI system for which only limited articles apply', 'celex:32024R1689/oj#art_2').
declared(exclusively_military_defence_national_security_purpose/1, 'purpose exclusively military, defence or national security', 'celex:32024R1689/oj#art_2').
declared(scientific_research_and_development_purpose/1, 'sole purpose of scientific research and development', 'celex:32024R1689/oj#art_2').
declared(personal_non_professional_activity/1, 'purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(free_and_open_source_licence/1, 'released under free and open-source licence', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_6/par_1').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#anx_1/sec_2').
declared(international_cooperation_law_enforcement_judicial/1, 'international cooperation or agreement for law enforcement and judicial cooperation', 'celex:32024R1689/oj#art_2').
declared(adequate_safeguards_fundamental_rights/1, 'provides adequate safeguards for protection of fundamental rights and freedoms', 'celex:32024R1689/oj#art_2').
regulation_applies_to(Provider) :-
    provider(Provider),
    ( placing_on_market(Provider) ; putting_into_service(Provider) ).
regulation_applies_to(Provider) :-
    provider(Provider),
    placing_on_market(Provider),
    general_purpose_ai_model(_M).
regulation_applies_to(Deployer) :-
    deployer(Deployer),
    ( established_in_union(Deployer) ; located_in_union(Deployer) ).
regulation_applies_to(Entity) :-
    ( provider(Entity) ; deployer(Entity) ),
    ( established_in_third_country(Entity) ; located_in_third_country(Entity) ),
    output_used_in_union(Entity).
regulation_applies_to(Entity) :-
    importer(Entity),
    ai_system(_S).
regulation_applies_to(Entity) :-
    distributor(Entity),
    ai_system(_S).
regulation_applies_to(Manufacturer) :-
    product_manufacturer(Manufacturer),
    ( placing_on_market(Manufacturer) ; putting_into_service(Manufacturer) ),
    ai_system(_S),
    under_own_name_or_trademark(Manufacturer, _S).
regulation_applies_to(Representative) :-
    authorised_representative(Representative),
    provider(_P),
    \+ established_in_union(_P).
regulation_applies_to(Person) :-
    affected_person(Person),
    located_in_union(Person).
limited_articles_apply(S) :-
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(S).
regulation_does_not_apply_to(area_outside_union_law).
regulation_does_not_apply_to(national_security_competence).
regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ; used(S) ),
    exclusively_military_defence_national_security_purpose(S).
regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    \+ ( placing_on_market(S) ; putting_into_service(S) ),
    output_used_in_union(S),
    exclusively_military_defence_national_security_purpose(S).
regulation_does_not_apply_to(Authority) :-
    public_authority_third_country(Authority),
    international_cooperation_law_enforcement_judicial(Authority),
    adequate_safeguards_fundamental_rights(Authority).
regulation_does_not_apply_to(Organisation) :-
    international_organisation(Organisation),
    international_cooperation_law_enforcement_judicial(Organisation),
    adequate_safeguards_fundamental_rights(Organisation).
regulation_does_not_apply_to(liability_of_intermediary_services).
regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    scientific_research_and_development_purpose(S).
regulation_does_not_apply_to_system(M) :-
    ai_model(M),
    scientific_research_and_development_purpose(M).
regulation_does_not_apply_to(data_protection_law).
regulation_does_not_apply_to_activity(research_testing_development_prior_to_market).
regulation_does_not_apply_to(consumer_protection_product_safety_law).
regulation_does_not_apply_to(Deployer) :-
    deployer(Deployer),
    natural_person(Deployer),
    personal_non_professional_activity(Deployer).
regulation_does_not_apply_to(more_favourable_worker_protection).
regulation_does_not_apply_to_system(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_ai_system(S),
    \+ transparency_obligation_system(S).
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_system/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_activity/1, 'celex:32024R1689/oj#art_2').
provenance(limited_articles_apply/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_and_development_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_judicial/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
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
declared(must_ensure_ai_literacy/2, 'entity must ensure sufficient AI literacy of relevant persons', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Entity, ai_literacy(Staff)) :-
    ( provider(Entity) ; deployer(Entity) ),
    staff_or_other_person_dealing_with_ai(Entity, Staff).
staff_or_other_person_dealing_with_ai(Entity, Person) :-
    staff_of(Entity, Person).
staff_or_other_person_dealing_with_ai(Entity, Person) :-
    other_person_dealing_with_operation_and_use_on_behalf(Entity, Person).
declared(contextual_factors_for_ai_literacy/1, 'factors to consider when ensuring AI literacy', 'celex:32024R1689/oj#art_4').
contextual_factors_for_ai_literacy(factors(technical_knowledge, experience, education, training, context_of_use, persons_or_groups_affected)).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(staff_or_other_person_dealing_with_ai/2, 'celex:32024R1689/oj#art_4').
provenance(contextual_factors_for_ai_literacy/1, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_technique/1, 'AI system deploying subliminal, manipulative or deceptive techniques', 'celex:32024R1689/oj#art_5').
declared(prohibited_exploitation_of_vulnerability/1, 'AI system exploiting vulnerabilities due to age, disability or situation', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system for social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_risk_assessment_of_natural_person/1, 'AI system for predicting criminal offence risk based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(prohibited_facial_recognition_database_creation/1, 'AI system creating or expanding facial recognition databases by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference/1, 'AI system inferring emotions in workplace or education', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'biometric categorisation system deducing protected characteristics', 'celex:32024R1689/oj#art_5').
declared(permitted_emotion_inference/1, 'emotion inference permitted for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_categorisation/1, 'biometric categorisation permitted for labelling or law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_identification/2, 'permitted use of real-time remote biometric ID for law enforcement objective', 'celex:32024R1689/oj#art_5').
declared(must_confirm_identity/2, 'use must confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(must_take_into_account_elements/2, 'use must take into account nature of situation and consequences', 'celex:32024R1689/oj#art_5').
declared(must_comply_with_safeguards/2, 'use must comply with necessary and proportionate safeguards', 'celex:32024R1689/oj#art_5').
declared(must_be_authorised/2, 'use must be authorised by judicial or independent administrative authority', 'celex:32024R1689/oj#art_5').
declared(must_notify_use/2, 'use must be notified to market surveillance and data protection authorities', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'authority must submit annual report on use', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/1, 'Commission must publish annual report on use', 'celex:32024R1689/oj#art_5').
declared(urgency_applies/1, 'duly justified case of urgency', 'celex:32024R1689/oj#art_5').
declared(fundamental_rights_impact_assessment_completed/1, 'law enforcement authority completed fundamental rights impact assessment', 'celex:32024R1689/oj#art_5').
declared(registered_in_eu_database/1, 'system registered in EU database', 'celex:32024R1689/oj#art_5').
declared(authorisation_granted/1, 'prior authorisation granted by competent authority', 'celex:32024R1689/oj#art_5').
declared(authorisation_requested_without_undue_delay/1, 'authorisation requested without undue delay in urgency', 'celex:32024R1689/oj#art_5').
declared(registration_completed_without_undue_delay/1, 'registration completed without undue delay in urgency', 'celex:32024R1689/oj#art_5').
declared(adverse_legal_effect_decision/1, 'decision producing adverse legal effect based solely on system output', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_technique(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    deploys_subliminal_manipulative_or_deceptive_techniques(S),
    materially_distorts_behaviour(S),
    causes_or_likely_causes_significant_harm(S).
deploys_subliminal_manipulative_or_deceptive_techniques(S) :-
    ai_system(S),
    (   subliminal_techniques(S)
    ;   purposefully_manipulative_techniques(S)
    ;   deceptive_techniques(S)
    ).
materially_distorts_behaviour(S) :-
    ai_system(S),
    impairs_informed_decision(S),
    causes_decision_not_otherwise_taken(S).
causes_or_likely_causes_significant_harm(S) :-
    ai_system(S),
    (   causes_significant_harm(S)
    ;   reasonably_likely_to_cause_significant_harm(S)
    ).
prohibited_exploitation_of_vulnerability(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    exploits_vulnerability(S),
    materially_distorts_behaviour(S),
    causes_or_likely_causes_significant_harm(S).
exploits_vulnerability(S) :-
    ai_system(S),
    vulnerability_due_to_age_disability_or_situation(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    social_scoring_system(S),
    social_score_leads_to_detrimental_treatment(S).
social_scoring_system(S) :-
    ai_system(S),
    evaluates_or_classifies_over_period(S),
    based_on_social_behaviour_or_personality_characteristics(S).
social_score_leads_to_detrimental_treatment(S) :-
    ai_system(S),
    (   detrimental_treatment_unrelated_context(S)
    ;   detrimental_treatment_unjustified_or_disproportionate(S)
    ).
prohibited_risk_assessment_of_natural_person(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    risk_assessment_of_criminal_offence(S),
    based_solely_on_profiling_or_personality_traits(S),
    \+ permitted_risk_assessment_support(S).
permitted_risk_assessment_support(S) :-
    ai_system(S),
    supports_human_assessment_of_criminal_activity(S),
    based_on_objective_verifiable_facts(S).
risk_assessment_of_criminal_offence(S) :-
    ai_system(S),
    assesses_or_predicts_risk_of_criminal_offence(S).
prohibited_facial_recognition_database_creation(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping_of_facial_images(S).
prohibited_emotion_inference(S) :-
    ai_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    emotion_recognition_system(S),
    infers_emotions_in_workplace_or_education(S),
    \+ permitted_emotion_inference(S).
permitted_emotion_inference(S) :-
    ai_system(S),
    emotion_recognition_system(S),
    intended_for_medical_or_safety_reasons(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ;   deployer(_D), use(S)
    ),
    deduces_or_infers_protected_characteristics(S),
    \+ permitted_biometric_categorisation(S).
permitted_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    (   labelling_or_filtering_lawfully_acquired_datasets(S)
    ;   categorising_in_law_enforcement(S)
    ).
prohibited_real_time_remote_biometric_identification(Use) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S),
    \+ permitted_real_time_remote_biometric_identification(Use, _Objective).
permitted_real_time_remote_biometric_identification(Use, Objective) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S),
    strictly_necessary_for_objective(Use, Objective),
    permitted_objective(Objective).
permitted_objective(targeted_search_for_victims).
permitted_objective(prevention_of_imminent_threat).
permitted_objective(localisation_of_suspect_for_offence_referred_in_annex_2).
must_confirm_identity(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    use_confirms_identity_of_targeted_individual(Use, S).
must_take_into_account_elements(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    takes_into_account_nature_of_situation(Use),
    takes_into_account_consequences(Use).
must_comply_with_safeguards(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    complies_with_necessary_and_proportionate_safeguards(Use),
    complies_with_national_law_authorising_use(Use).
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    fundamental_rights_impact_assessment_completed(Use),
    registered_in_eu_database(S),
    authorisation_granted(Use).
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    urgency_applies(Use),
    fundamental_rights_impact_assessment_completed(Use),
    \+ registered_in_eu_database(S),
    registration_completed_without_undue_delay(S),
    authorisation_granted(Use).
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    prior_authorisation_by_judicial_or_independent_authority(Use).
must_be_authorised(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    urgency_applies(Use),
    \+ prior_authorisation_by_judicial_or_independent_authority(Use),
    authorisation_requested_without_undue_delay(Use),
    authorisation_granted(Use).
adverse_legal_effect_decision(Decision) :-
    real_time_remote_biometric_identification_system(S),
    decision_based_solely_on_output(Decision, S),
    produces_adverse_legal_effect(Decision).
must_notify_use(Use, S) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    real_time_remote_biometric_identification_system(S),
    notified_to_market_surveillance_authority(Use),
    notified_to_national_data_protection_authority(Use).
must_submit_annual_report(Authority, Use) :-
    market_surveillance_authority(Authority),
    notified_of_use(Authority, Use),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S).
must_submit_annual_report(Authority, Use) :-
    national_data_protection_authority(Authority),
    notified_of_use(Authority, Use),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space_for_law_enforcement(Use, S).
must_publish_annual_report(Commission) :-
    ai_office(Commission),
    based_on_aggregated_data_from_member_states(Commission).
provenance(prohibited_subliminal_technique/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerability/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_of_natural_person/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/2, 'celex:32024R1689/oj#art_5').
provenance(must_confirm_identity/2, 'celex:32024R1689/oj#art_5').
provenance(must_take_into_account_elements/2, 'celex:32024R1689/oj#art_5').
provenance(must_comply_with_safeguards/2, 'celex:32024R1689/oj#art_5').
provenance(must_be_authorised/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/1, 'celex:32024R1689/oj#art_5').
provenance(adverse_legal_effect_decision/1, 'celex:32024R1689/oj#art_5').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(significant_risk_of_harm/1, 'poses significant risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6/par_3').
declared(profiling_of_natural_persons/1, 'performs profiling of natural persons', 'celex:32024R1689/oj#art_6/par_3/unp_3').
declared(narrow_procedural_task/1, 'intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
declared(improves_previous_human_activity/1, 'intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
declared(detects_decision_patterns/1, 'intended to detect decision-making patterns or deviations without replacing human assessment', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
declared(preparatory_task/1, 'intended to perform a preparatory task to an assessment for Annex III use cases', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
declared(must_document_assessment/2, 'provider must document assessment that Annex III system is not high-risk', 'celex:32024R1689/oj#art_6/par_4').
declared(must_provide_documentation/2, 'provider must provide documentation of assessment on request', 'celex:32024R1689/oj#art_6/par_4').
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_or_product_covered(S),
    requires_third_party_conformity_assessment(S).
safety_component_or_product_covered(S) :-
    safety_component(S),
    product_covered_by_annex_i(S).
safety_component_or_product_covered(S) :-
    ai_system(S),
    product_covered_by_annex_i(S).
requires_third_party_conformity_assessment(S) :-
    safety_component(S),
    product_covered_by_annex_i(P),
    component_of(S, P),
    requires_conformity_assessment(P).
requires_third_party_conformity_assessment(S) :-
    ai_system(S),
    product_covered_by_annex_i(S),
    requires_conformity_assessment(S).
high_risk_ai_system(S) :-
    ai_system(S),
    annex_iii_system(S).
high_risk_ai_system(S) :-
    annex_iii_system(S),
    profiling_of_natural_persons(S).
exempt_from_high_risk(S) :-
    annex_iii_system(S),
    \+ profiling_of_natural_persons(S),
    \+ significant_risk_of_harm(S),
    derogation_condition_met(S).
derogation_condition_met(S) :-
    narrow_procedural_task(S).
derogation_condition_met(S) :-
    improves_previous_human_activity(S).
derogation_condition_met(S) :-
    detects_decision_patterns(S).
derogation_condition_met(S) :-
    preparatory_task(S).
must_document_assessment(Provider, S) :-
    provider(Provider),
    annex_iii_system(S),
    exempt_from_high_risk(S),
    \+ placed_on_market_or_put_into_service(S).
must_provide_documentation(Provider, S) :-
    provider(Provider),
    annex_iii_system(S),
    exempt_from_high_risk(S),
    requested_by_competent_authority(Provider, S).
declared(product_covered_by_annex_i/1, 'product covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
declared(requires_conformity_assessment/1, 'required to undergo third-party conformity assessment', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
declared(component_of/2, 'first is a safety component of the second', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
declared(annex_iii_system/1, 'AI system referred to in Annex III', 'celex:32024R1689/oj#art_6/par_2').
declared(placed_on_market_or_put_into_service/1, 'system has been placed on the market or put into service', 'celex:32024R1689/oj#art_6/par_4').
declared(requested_by_competent_authority/2, 'national competent authority has requested documentation', 'celex:32024R1689/oj#art_6/par_4').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_or_product_covered/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
provenance(exempt_from_high_risk/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(derogation_condition_met/1, 'celex:32024R1689/oj#art_6/par_3/unp_2').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(product_covered_by_annex_i/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(requires_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
provenance(component_of/2, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(annex_iii_system/1, 'celex:32024R1689/oj#art_6/par_2').
provenance(placed_on_market_or_put_into_service/1, 'celex:32024R1689/oj#art_6/par_4').
provenance(requested_by_competent_authority/2, 'celex:32024R1689/oj#art_6/par_4').
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
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_7 ====
declared(must_take_into_account/2, 'actor must consider criteria when assessing', 'celex:32024R1689/oj#art_7').
declared(risk_of_harm_to_health_and_safety/1, 'AI system poses risk of harm to health and safety', 'celex:32024R1689/oj#art_7').
declared(adverse_impact_on_fundamental_rights/1, 'AI system poses adverse impact on fundamental rights', 'celex:32024R1689/oj#art_7').
declared(risk_equivalent_or_greater_than_existing/1, 'risk is equivalent to or greater than existing high-risk AI systems', 'celex:32024R1689/oj#art_7').
declared(intended_for_area_in_annex_3/1, 'AI system intended for use in areas listed in Annex III', 'celex:32024R1689/oj#art_7').
declared(condition_for_adding_high_risk_fulfilled/1, 'both conditions for adding high-risk use-case are fulfilled', 'celex:32024R1689/oj#art_7').
declared(condition_for_removing_high_risk_fulfilled/1, 'both conditions for removing high-risk use-case are fulfilled', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk_to_fundamental_rights_health_safety/1, 'AI system no longer poses significant risks', 'celex:32024R1689/oj#art_7').
declared(deletion_does_not_decrease_protection/1, 'deletion does not decrease overall level of protection', 'celex:32024R1689/oj#art_7').
condition_for_adding_high_risk_fulfilled(S) :-
    intended_for_area_in_annex_3(S),
    risk_of_harm_to_health_and_safety(S),
    adverse_impact_on_fundamental_rights(S),
    risk_equivalent_or_greater_than_existing(S).
condition_for_removing_high_risk_fulfilled(S) :-
    no_significant_risk_to_fundamental_rights_health_safety(S),
    deletion_does_not_decrease_protection(S).
must_take_into_account(Commission, criteria(S)) :-
    condition_for_adding_high_risk_fulfilled(S).
provenance(condition_for_adding_high_risk_fulfilled/1, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_high_risk_fulfilled/1, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(must_comply/2, 'entity must comply with requirements', 'celex:32024R1689/oj#art_8').
declared(must_ensure_full_compliance/2, 'provider must ensure product fully complies', 'celex:32024R1689/oj#art_8').
declared(may_integrate_documentation/2, 'provider may integrate documentation', 'celex:32024R1689/oj#art_8').
must_comply(S, requirements(chp_3_sec_2)) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    state_of_art_acknowledged(S),
    risk_management_system_taken_into_account(S).
must_ensure_full_compliance(Provider, Product) :-
    provider(Provider),
    product_contains_ai_system(Product),
    applies_regulation(Product, 'celex:32024R1689/oj'),
    applies_harmonisation_legislation(Product, 'celex:32024R1689/oj#anx_1/sec_1').
may_integrate_documentation(Provider, Product) :-
    provider(Provider),
    must_comply(Product, requirements(chp_3_sec_2)),
    applies_harmonisation_legislation(Product, 'celex:32024R1689/oj#anx_1/sec_1').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_8').
declared(state_of_art_acknowledged/1, 'generally acknowledged state of the art on AI', 'celex:32024R1689/oj#art_8').
declared(risk_management_system_taken_into_account/1, 'risk management system referred to in Article 9', 'celex:32024R1689/oj#art_8').
declared(product_contains_ai_system/1, 'product contains an AI system', 'celex:32024R1689/oj#art_8').
declared(applies_regulation/2, 'regulation applies to product', 'celex:32024R1689/oj#art_8').
declared(applies_harmonisation_legislation/2, 'harmonisation legislation applies to product', 'celex:32024R1689/oj#art_8').
provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_full_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_documentation/2, 'celex:32024R1689/oj#art_8').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(state_of_art_acknowledged/1, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_taken_into_account/1, 'celex:32024R1689/oj#art_8').
provenance(product_contains_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(applies_regulation/2, 'celex:32024R1689/oj#art_8').
provenance(applies_harmonisation_legislation/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(risk_management_system/1, 'risk management system for high-risk AI systems', 'celex:32024R1689/oj#art_9').
declared(risk_management_measure/1, 'targeted measure to address identified risks', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
declared(residual_risk_acceptable/1, 'residual risk judged acceptable', 'celex:32024R1689/oj#art_9/par_5').
declared(tested_for_risk_management/1, 'tested to identify risk management measures', 'celex:32024R1689/oj#art_9/par_6').
declared(adverse_impact_on_vulnerable_groups_considered/1, 'consideration given to adverse impact on persons under 18 and other vulnerable groups', 'celex:32024R1689/oj#art_9/par_9').
must_establish_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
risk_management_system(S) :-
    high_risk_ai_system(S),
    continuous_iterative_process(S),
    planned_throughout_lifecycle(S),
    regular_systematic_review(S),
    comprises_risk_identification(S),
    comprises_risk_estimation(S),
    comprises_post_market_risk_evaluation(S),
    comprises_risk_management_measures(S).
comprises_risk_identification(S) :-
    high_risk_ai_system(S),
    identification_and_analysis_of_known_and_foreseeable_risks(S).
comprises_risk_estimation(S) :-
    high_risk_ai_system(S),
    estimation_and_evaluation_of_risks_intended_and_misuse(S).
comprises_post_market_risk_evaluation(S) :-
    high_risk_ai_system(S),
    evaluation_of_risks_from_post_market_data(S).
comprises_risk_management_measures(S) :-
    high_risk_ai_system(S),
    adoption_of_targeted_risk_management_measures(S).
risk_management_measure(M) :-
    risk_management_system(S),
    measure_adopted(S, M).
risk_management_measure_concerns_reasonably_mitigable_risk(M) :-
    risk_management_measure(M),
    risk_reasonably_mitigable_or_eliminable(M).
risk_management_measure_due_consideration(M) :-
    risk_management_measure(M),
    due_consideration_to_combined_requirements(M).
residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    residual_risk_per_hazard_acceptable(S),
    overall_residual_risk_acceptable(S).
must_ensure_risk_elimination_or_reduction(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    elimination_or_reduction_technically_feasible(S).
must_ensure_mitigation_for_uneliminated_risks(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    risk_cannot_be_eliminated(M),
    mitigation_control_measures_implemented(M).
must_provide_information_and_training(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    provision_of_required_information(S),
    provision_of_training_to_deployers(S).
must_consider_deployer_context(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    risk_management_measure(M),
    measure_adopted(S, M),
    due_consideration_to_deployer_knowledge_and_context(S).
tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    tested_to_identify_risk_management_measures(S),
    tested_for_consistent_performance(S),
    tested_for_compliance_with_section_2(S).
testing_may_include_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).
must_test_before_placing_on_market_or_putting_into_service(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    tested_throughout_development(S),
    tested_prior_to_placing_on_market_or_putting_into_service(S),
    tested_against_prior_defined_metrics(S).
adverse_impact_on_vulnerable_groups_considered(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    consideration_given_to_adverse_impact_on_under_18(S),
    consideration_given_to_adverse_impact_on_other_vulnerable_groups(S).
risk_management_may_be_part_of_existing_procedures(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    subject_to_internal_risk_management_under_other_union_law(Provider),
    risk_management_system(S).
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_identification/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_estimation/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_post_market_risk_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(comprises_risk_management_measures/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_concerns_reasonably_mitigable_risk/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_due_consideration/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_risk_elimination_or_reduction/2, 'celex:32024R1689/oj#art_9').
provenance(must_ensure_mitigation_for_uneliminated_risks/2, 'celex:32024R1689/oj#art_9').
provenance(must_provide_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(must_consider_deployer_context/2, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_may_include_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_before_placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_9').
provenance(adverse_impact_on_vulnerable_groups_considered/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_may_be_part_of_existing_procedures/2, 'celex:32024R1689/oj#art_9').
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
declared(data_governance_practices_applies/1, 'data governance and management practices apply to the data set', 'celex:32024R1689/oj#art_10/par_2').
declared(quality_criteria_met/1, 'data set meets the quality criteria of paragraphs 2-5', 'celex:32024R1689/oj#art_10/par_1').
declared(bias_examination_required/1, 'examination for possible biases is required', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
declared(bias_mitigation_measures_required/1, 'measures to detect, prevent and mitigate biases are required', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
declared(special_category_data_processing_permitted/2, 'provider may process special categories of personal data for bias detection and correction', 'celex:32024R1689/oj#art_10/par_5').
must_develop_on_quality_data_sets(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System),
    uses_model_training(System),
    uses_training_data(System, TrainingData),
    quality_criteria_met(TrainingData),
    uses_validation_data(System, ValidationData),
    quality_criteria_met(ValidationData),
    uses_testing_data(System, TestingData),
    quality_criteria_met(TestingData).
data_governance_practices_applies(DataSet) :-
    training_data(DataSet).
data_governance_practices_applies(DataSet) :-
    validation_data(DataSet).
data_governance_practices_applies(DataSet) :-
    testing_data(DataSet).
must_subject_to_data_governance(Provider, DataSet) :-
    provider(Provider),
    data_governance_practices_applies(DataSet),
    intended_purpose(Purpose),
    appropriate_for_purpose(DataSet, Purpose).
appropriate_for_purpose(DataSet, Purpose) :-
    design_choices_relevant(DataSet, Purpose),
    data_collection_processes_documented(DataSet),
    data_origin_documented(DataSet),
    data_preparation_operations_documented(DataSet),
    assumptions_formulated(DataSet),
    availability_assessed(DataSet),
    quantity_assessed(DataSet),
    suitability_assessed(DataSet),
    bias_examination_conducted(DataSet),
    bias_mitigation_measures_identified(DataSet),
    data_gaps_identified(DataSet),
    data_gaps_addressed(DataSet).
quality_criteria_met(DataSet) :-
    relevant(DataSet),
    sufficiently_representative(DataSet),
    free_of_errors_to_best_extent(DataSet),
    complete_in_view_of_purpose(DataSet),
    appropriate_statistical_properties(DataSet).
quality_criteria_met(DataSet) :-
    takes_into_account_contextual_characteristics(DataSet).
special_category_data_processing_permitted(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    strictly_necessary_for_bias_detection_and_correction(System),
    cannot_fulfill_with_other_data(System),
    technical_limitations_on_reuse(System),
    state_of_the_art_security_measures(System),
    pseudonymisation_applied(System),
    access_controls_and_documentation(System),
    only_authorised_persons_access(System),
    no_transmission_to_other_parties(System),
    deletion_upon_bias_correction_or_retention_end(System),
    records_include_necessity_reasoning(System).
must_develop_on_quality_data_sets(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System),
    \+ uses_model_training(System),
    uses_testing_data(System, TestingData),
    quality_criteria_met(TestingData).
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_10').
declared(uses_model_training/1, 'AI system uses techniques involving training of AI models', 'celex:32024R1689/oj#art_10/par_1').
declared(uses_training_data/2, 'AI system uses the given training data set', 'celex:32024R1689/oj#art_10/par_1').
declared(uses_validation_data/2, 'AI system uses the given validation data set', 'celex:32024R1689/oj#art_10/par_1').
declared(uses_testing_data/2, 'AI system uses the given testing data set', 'celex:32024R1689/oj#art_10/par_1').
declared(appropriate_for_purpose/2, 'data set is appropriate for the intended purpose', 'celex:32024R1689/oj#art_10/par_2').
declared(design_choices_relevant/2, 'design choices are relevant to the intended purpose', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_a').
declared(data_collection_processes_documented/1, 'data collection processes are documented', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_b').
declared(data_origin_documented/1, 'origin of data is documented', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_b').
declared(data_preparation_operations_documented/1, 'data preparation processing operations are documented', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_c').
declared(assumptions_formulated/1, 'assumptions about data are formulated', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_d').
declared(availability_assessed/1, 'availability of data sets is assessed', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_e').
declared(quantity_assessed/1, 'quantity of data sets is assessed', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_e').
declared(suitability_assessed/1, 'suitability of data sets is assessed', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_e').
declared(bias_examination_conducted/1, 'examination for possible biases is conducted', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f').
declared(bias_mitigation_measures_identified/1, 'measures to detect, prevent and mitigate biases are identified', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g').
declared(data_gaps_identified/1, 'relevant data gaps or shortcomings are identified', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_h').
declared(data_gaps_addressed/1, 'how data gaps and shortcomings can be addressed is identified', 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_h').
declared(relevant/1, 'data set is relevant', 'celex:32024R1689/oj#art_10/par_3').
declared(sufficiently_representative/1, 'data set is sufficiently representative', 'celex:32024R1689/oj#art_10/par_3').
declared(free_of_errors_to_best_extent/1, 'data set is free of errors to the best extent possible', 'celex:32024R1689/oj#art_10/par_3').
declared(complete_in_view_of_purpose/1, 'data set is complete in view of the intended purpose', 'celex:32024R1689/oj#art_10/par_3').
declared(appropriate_statistical_properties/1, 'data set has appropriate statistical properties', 'celex:32024R1689/oj#art_10/par_3').
declared(takes_into_account_contextual_characteristics/1, 'data set takes into account contextual characteristics', 'celex:32024R1689/oj#art_10/par_4').
declared(strictly_necessary_for_bias_detection_and_correction/1, 'processing is strictly necessary for bias detection and correction', 'celex:32024R1689/oj#art_10/par_5').
declared(cannot_fulfill_with_other_data/1, 'bias detection and correction cannot be fulfilled with other data', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_a').
declared(technical_limitations_on_reuse/1, 'special categories of personal data are subject to technical limitations on reuse', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(state_of_the_art_security_measures/1, 'state-of-the-art security and privacy-preserving measures are applied', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(pseudonymisation_applied/1, 'pseudonymisation is applied', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(access_controls_and_documentation/1, 'strict controls and documentation of access are in place', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(only_authorised_persons_access/1, 'only authorised persons have access with confidentiality obligations', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(no_transmission_to_other_parties/1, 'data is not transmitted, transferred or accessed by other parties', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
declared(deletion_upon_bias_correction_or_retention_end/1, 'data is deleted upon bias correction or end of retention period', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_e').
declared(records_include_necessity_reasoning/1, 'records include reasons for necessity of processing special categories', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
provenance(must_develop_on_quality_data_sets/2, 'celex:32024R1689/oj#art_10/par_1').
provenance(data_governance_practices_applies/1, 'celex:32024R1689/oj#art_10/par_2').
provenance(must_subject_to_data_governance/2, 'celex:32024R1689/oj#art_10/par_2').
provenance(appropriate_for_purpose/2, 'celex:32024R1689/oj#art_10/par_2').
provenance(quality_criteria_met/1, 'celex:32024R1689/oj#art_10/par_3').
provenance(quality_criteria_met/1, 'celex:32024R1689/oj#art_10/par_4').
provenance(special_category_data_processing_permitted/2, 'celex:32024R1689/oj#art_10/par_5').
provenance(must_develop_on_quality_data_sets/2, 'celex:32024R1689/oj#art_10/par_6').
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
declared(technical_documentation/1, 'documentation demonstrating compliance of a high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(sme/1, 'small or medium-sized enterprise, including start-ups', 'celex:32024R1689/oj#art_11').
declared(simplified_technical_documentation_form/1, 'simplified form for technical documentation targeted at small and microenterprises', 'celex:32024R1689/oj#art_11').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    ai_system(S),
    high_risk_ai_system(S),
    technical_documentation(D),
    drawn_up_before_placing_or_service(D, S),
    kept_up_to_date(D).
drawn_up_before_placing_or_service(D, S) :-
    placing_on_market(S);
    putting_into_service(S).
technical_documentation_demonstrates_compliance(D, S) :-
    technical_documentation(D),
    high_risk_ai_system(S),
    complies_with_requirements(S, 'celex:32024R1689/oj#chp_3/sec_2').
technical_documentation_provides_assessment_information(D, S) :-
    technical_documentation(D),
    high_risk_ai_system(S),
    provides_information_to(D, national_competent_authority),
    provides_information_to(D, notified_body),
    clear_and_comprehensive(D).
technical_documentation_contains_minimum_elements(D) :-
    technical_documentation(D),
    contains_elements_from(D, 'celex:32024R1689/oj#anx_4').
may_provide_simplified_elements(SME, D) :-
    sme(SME),
    technical_documentation(D),
    contains_elements_from(D, 'celex:32024R1689/oj#anx_4'),
    simplified_manner(D).
must_use_simplified_form(SME, D) :-
    sme(SME),
    technical_documentation(D),
    opts_for_simplified_manner(SME, D),
    simplified_technical_documentation_form(F),
    uses_form(D, F).
must_accept_simplified_form(Body, D) :-
    notified_body(Body),
    technical_documentation(D),
    simplified_technical_documentation_form(F),
    uses_form(D, F),
    conformity_assessment(CA),
    for_purposes_of(D, CA).
must_draw_up_single_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(P),
    related_to(S, P),
    (placing_on_market(S); putting_into_service(S)),
    technical_documentation(D),
    contains_all_information(D, 'celex:32024R1689/oj#art_11/par_1'),
    contains_information_required_under(D, P).
commission_empowered_to_adopt_delegated_acts(Commission, 'celex:32024R1689/oj#anx_4') :-
    ai_office(Commission),
    in_accordance_with('celex:32024R1689/oj#art_97').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_placing_or_service/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_assessment_information/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(may_provide_simplified_elements/2, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_single_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(must_technically_allow_logging/2, 'high-risk AI system must technically allow automatic recording of events', 'celex:32024R1689/oj#art_12').
declared(logging_capabilities_enable_recording/2, 'logging capabilities must enable recording of events relevant for specified purposes', 'celex:32024R1689/oj#art_12').
declared(logging_capabilities_provide_minimum/2, 'logging capabilities must provide at least specified recordings for certain high-risk AI systems', 'celex:32024R1689/oj#art_12').
must_technically_allow_logging(S, automatic_recording_of_events) :-
    ai_system(S),
    high_risk_ai_system(S).
logging_capabilities_enable_recording(S, events_relevant_for(identifying_risk_situations)) :-
    high_risk_ai_system(S),
    intended_purpose(P),
    appropriate_traceability(S, P).
logging_capabilities_enable_recording(S, events_relevant_for(facilitating_post_market_monitoring)) :-
    high_risk_ai_system(S),
    intended_purpose(P),
    appropriate_traceability(S, P).
logging_capabilities_enable_recording(S, events_relevant_for(monitoring_operation)) :-
    high_risk_ai_system(S),
    intended_purpose(P),
    appropriate_traceability(S, P).
logging_capabilities_provide_minimum(S, recording(period_of_each_use)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).
logging_capabilities_provide_minimum(S, recording(reference_database)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).
logging_capabilities_provide_minimum(S, recording(input_data_leading_to_match)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).
logging_capabilities_provide_minimum(S, recording(identification_of_natural_persons_verifying_results)) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S).
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_12').
declared(appropriate_traceability/2, 'level of traceability appropriate to the intended purpose', 'celex:32024R1689/oj#art_12').
declared(annex_3_point_1_a_system/1, 'high-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_12').
provenance(must_technically_allow_logging/2, 'celex:32024R1689/oj#art_12').
provenance(logging_capabilities_enable_recording/2, 'celex:32024R1689/oj#art_12').
provenance(logging_capabilities_provide_minimum/2, 'celex:32024R1689/oj#art_12').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(appropriate_traceability/2, 'celex:32024R1689/oj#art_12').
provenance(annex_3_point_1_a_system/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_13').
declared(sufficiently_transparent/1, 'operation is sufficiently transparent', 'celex:32024R1689/oj#art_13').
declared(accompanied_by_instructions/2, 'system accompanied by instructions for use', 'celex:32024R1689/oj#art_13').
declared(instructions_contain/2, 'instructions contain specified information', 'celex:32024R1689/oj#art_13').
must_ensure_transparency(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    sufficiently_transparent(S).
sufficiently_transparent(S) :-
    high_risk_ai_system(S),
    enables_interpretation_of_output(S),
    enables_appropriate_use(S).
must_provide_instructions(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    accompanied_by_instructions(S, instructions(concise, complete, correct, clear, relevant, accessible, comprehensible)).
accompanied_by_instructions(S, I) :-
    high_risk_ai_system(S),
    instructions_for_use(I).
instructions_contain(I, identity_and_contact(Provider)) :-
    instructions_for_use(I),
    provider(Provider).
instructions_contain(I, identity_and_contact(Representative)) :-
    instructions_for_use(I),
    authorised_representative(Representative).
instructions_contain(I, characteristics_capabilities_limitations(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    intended_purpose(Purpose),
    accuracy_robustness_cybersecurity_info(S),
    foreseeable_risk_circumstances(S),
    output_explanation_capabilities(S),
    performance_on_specific_groups(S),
    input_data_specifications(S),
    output_interpretation_info(S).
instructions_contain(I, predetermined_changes(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).
instructions_contain(I, human_oversight_measures(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).
instructions_contain(I, computational_resources_and_maintenance(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).
instructions_contain(I, log_mechanisms_description(S)) :-
    instructions_for_use(I),
    high_risk_ai_system(S).
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent/1, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain/2, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(must_be_effectively_overseen/2, 'high-risk AI system must be overseen by natural persons', 'celex:32024R1689/oj#art_14/par_1').
declared(human_oversight_aims_to_prevent_risks/1, 'human oversight aims to prevent or minimise risks', 'celex:32024R1689/oj#art_14/par_2').
declared(oversight_measures_commensurate/1, 'oversight measures commensurate with risks, autonomy and context', 'celex:32024R1689/oj#art_14/par_3').
declared(oversight_measure_type_a/1, 'oversight measure built into the system by the provider', 'celex:32024R1689/oj#art_14/par_3/pnt_a').
declared(oversight_measure_type_b/1, 'oversight measure identified by the provider for the deployer', 'celex:32024R1689/oj#art_14/par_3/pnt_b').
declared(human_oversight_capability/2, 'natural person assigned oversight has a required capability', 'celex:32024R1689/oj#art_14/par_4').
declared(must_verify_identification/2, 'deployer must have identification verified by two persons', 'celex:32024R1689/oj#art_14/par_5').
declared(exempt_from_dual_verification/1, 'system exempt from two-person verification requirement', 'celex:32024R1689/oj#art_14/par_5').
must_be_effectively_overseen(S, natural_persons) :-
    high_risk_ai_system(S),
    designed_for_human_oversight(S).
designed_for_human_oversight(S) :-
    high_risk_ai_system(S),
    appropriate_human_machine_interface_tools(S).
human_oversight_aims_to_prevent_risks(S) :-
    high_risk_ai_system(S),
    oversight_aims_to_prevent_or_minimise_risks(S).
oversight_aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    risks_to_health_safety_or_fundamental_rights(S).
risks_to_health_safety_or_fundamental_rights(S) :-
    high_risk_ai_system(S),
    (   used_in_accordance_with_intended_purpose(S)
    ;   used_under_reasonably_foreseeable_misuse(S)
    ),
    risks_persist_despite_other_requirements(S).
oversight_measures_commensurate(S) :-
    high_risk_ai_system(S),
    commensurate_with_risks_autonomy_and_context(S),
    (   oversight_measure_type_a(S)
    ;   oversight_measure_type_b(S)
    ).
oversight_measure_type_a(S) :-
    high_risk_ai_system(S),
    technically_feasible(S),
    built_into_system_by_provider(S),
    before_placing_on_market_or_putting_into_service(S).
oversight_measure_type_b(S) :-
    high_risk_ai_system(S),
    identified_by_provider(S),
    appropriate_for_deployer_implementation(S),
    before_placing_on_market_or_putting_into_service(S).
human_oversight_capability(S, understand_capacities_and_limitations) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).
human_oversight_capability(S, monitor_operation) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).
human_oversight_capability(S, remain_aware_of_automation_bias) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).
human_oversight_capability(S, correctly_interpret_output) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).
human_oversight_capability(S, decide_not_to_use_or_override_output) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).
human_oversight_capability(S, intervene_or_interrupt) :-
    high_risk_ai_system(S),
    provided_to_deployer_for_oversight(S).
must_verify_identification(S, at_least_two_natural_persons) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3_point_1_a(S),
    \+ exempt_from_dual_verification(S).
exempt_from_dual_verification(S) :-
    high_risk_ai_system(S),
    used_for_purposes(law_enforcement, migration, border_control, asylum),
    disproportionate_under_union_or_national_law(dual_verification_requirement).
provenance(must_be_effectively_overseen/2, 'celex:32024R1689/oj#art_14/par_1').
provenance(human_oversight_aims_to_prevent_risks/1, 'celex:32024R1689/oj#art_14/par_2').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14/par_3').
provenance(oversight_measure_type_a/1, 'celex:32024R1689/oj#art_14/par_3/pnt_a').
provenance(oversight_measure_type_b/1, 'celex:32024R1689/oj#art_14/par_3/pnt_b').
provenance(human_oversight_capability/2, 'celex:32024R1689/oj#art_14/par_4').
provenance(must_verify_identification/2, 'celex:32024R1689/oj#art_14/par_5').
provenance(exempt_from_dual_verification/1, 'celex:32024R1689/oj#art_14/par_5').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(must_achieve_accuracy_robustness_cybersecurity/2, 'high-risk AI system must achieve appropriate accuracy, robustness and cybersecurity', 'celex:32024R1689/oj#art_15/par_1').
declared(must_declare_accuracy_levels/2, 'provider must declare accuracy levels in instructions for use', 'celex:32024R1689/oj#art_15/par_3').
declared(must_be_resilient/2, 'high-risk AI system must be resilient to errors, faults and inconsistencies', 'celex:32024R1689/oj#art_15/par_4').
declared(must_address_feedback_loops/2, 'provider must address feedback loops in continuously learning systems', 'celex:32024R1689/oj#art_15/par_4').
declared(must_be_cybersecure/2, 'high-risk AI system must be resilient to unauthorised exploitation', 'celex:32024R1689/oj#art_15/par_5').
declared(must_include_ai_specific_security_measures/2, 'provider must include measures against AI-specific vulnerabilities', 'celex:32024R1689/oj#art_15/par_5').
must_achieve_accuracy_robustness_cybersecurity(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_achieve_accuracy_robustness_cybersecurity(_, S).
must_declare_accuracy_levels(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_declare_accuracy_levels(_, S).
must_be_resilient(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_be_resilient(_, S).
must_address_feedback_loops(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_address_feedback_loops(_, S).
must_be_cybersecure(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_be_cybersecure(_, S).
must_include_ai_specific_security_measures(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_include_ai_specific_security_measures(_, S).
provenance(must_achieve_accuracy_robustness_cybersecurity/2, 'celex:32024R1689/oj#art_15/par_1').
provenance(must_declare_accuracy_levels/2, 'celex:32024R1689/oj#art_15/par_3').
provenance(must_be_resilient/2, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_address_feedback_loops/2, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_be_cybersecure/2, 'celex:32024R1689/oj#art_15/par_5').
provenance(must_include_ai_specific_security_measures/2, 'celex:32024R1689/oj#art_15/par_5').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(must_ensure_compliance/2, 'provider must ensure high-risk AI system complies with requirements', 'celex:32024R1689/oj#art_16').
declared(must_indicate_identity/2, 'provider must indicate name, trade name, trade mark and contact address', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider must have a quality management system in place', 'celex:32024R1689/oj#art_16').
declared(must_keep_documentation/2, 'provider must keep the documentation', 'celex:32024R1689/oj#art_16').
declared(must_keep_logs/2, 'provider must keep automatically generated logs while under their control', 'celex:32024R1689/oj#art_16').
declared(must_undergo_conformity_assessment/2, 'provider must ensure high-risk AI system undergoes conformity assessment before placement or putting into service', 'celex:32024R1689/oj#art_16').
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider must draw up an EU declaration of conformity', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider must affix CE marking to the high-risk AI system, its packaging or accompanying documentation', 'celex:32024R1689/oj#art_16').
declared(must_comply_with_registration_obligations/2, 'provider must comply with registration obligations', 'celex:32024R1689/oj#art_16').
declared(must_take_corrective_actions/2, 'provider must take necessary corrective actions and provide information', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity/2, 'provider must demonstrate conformity upon reasoned request of a national competent authority', 'celex:32024R1689/oj#art_16').
declared(must_ensure_accessibility_compliance/2, 'provider must ensure high-risk AI system complies with accessibility requirements', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_indicate_identity(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_have_quality_management_system(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_keep_documentation(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_keep_logs(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_undergo_conformity_assessment(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_draw_up_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_affix_ce_marking(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_comply_with_registration_obligations(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_take_corrective_actions(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_demonstrate_conformity(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
must_ensure_accessibility_compliance(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_16').
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
declared(quality_management_system/1, 'quality management system for high-risk AI systems', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_documented/1, 'quality management system documented in systematic and orderly manner', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_includes/2, 'quality management system includes a required aspect', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_aspect/1, 'required aspect of a quality management system', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'financial institution subject to internal governance requirements', 'celex:32024R1689/oj#art_17').
declared(internal_governance_compliant/1, 'entity complying with internal governance rules under financial services law', 'celex:32024R1689/oj#art_17').
must_put_in_place(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S).
must_put_in_place(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    puts_into_service(Provider, S).
quality_management_system(Q) :-
    quality_management_system_documented(Q),
    quality_management_system_includes(Q, regulatory_compliance_strategy),
    quality_management_system_includes(Q, design_control_techniques),
    quality_management_system_includes(Q, development_quality_control),
    quality_management_system_includes(Q, examination_test_validation_procedures),
    quality_management_system_includes(Q, technical_specifications),
    quality_management_system_includes(Q, data_management_systems),
    quality_management_system_includes(Q, risk_management_system),
    quality_management_system_includes(Q, post_market_monitoring_system),
    quality_management_system_includes(Q, serious_incident_reporting_procedures),
    quality_management_system_includes(Q, communication_handling),
    quality_management_system_includes(Q, record_keeping_systems),
    quality_management_system_includes(Q, resource_management),
    quality_management_system_includes(Q, accountability_framework).
quality_management_system_aspect(regulatory_compliance_strategy).
quality_management_system_aspect(design_control_techniques).
quality_management_system_aspect(development_quality_control).
quality_management_system_aspect(examination_test_validation_procedures).
quality_management_system_aspect(technical_specifications).
quality_management_system_aspect(data_management_systems).
quality_management_system_aspect(risk_management_system).
quality_management_system_aspect(post_market_monitoring_system).
quality_management_system_aspect(serious_incident_reporting_procedures).
quality_management_system_aspect(communication_handling).
quality_management_system_aspect(record_keeping_systems).
quality_management_system_aspect(resource_management).
quality_management_system_aspect(accountability_framework).
must_be_proportionate(Implementation, Provider) :-
    quality_management_system_aspect(Aspect),
    implementation_of(Implementation, Aspect),
    provider(Provider).
must_respect_rigour(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S).
must_respect_rigour(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    puts_into_service(Provider, S).
permitted_inclusion(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    places_on_market(Provider, S),
    subject_to_sectoral_qms_obligations(Provider).
permitted_inclusion(Provider, quality_management_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    puts_into_service(Provider, S),
    subject_to_sectoral_qms_obligations(Provider).
quality_management_system_deemed_fulfilled(Provider) :-
    financial_institution(Provider),
    internal_governance_compliant(Provider).
quality_management_system_deemed_fulfilled(Provider) :-
    financial_institution(Provider),
    internal_governance_compliant(Provider),
    quality_management_system_includes(_, risk_management_system),
    quality_management_system_includes(_, post_market_monitoring_system),
    quality_management_system_includes(_, serious_incident_reporting_procedures).
provenance(must_put_in_place/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_aspect/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(must_be_proportionate/2, 'celex:32024R1689/oj#art_17').
provenance(must_respect_rigour/2, 'celex:32024R1689/oj#art_17').
provenance(permitted_inclusion/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_deemed_fulfilled/1, 'celex:32024R1689/oj#art_17').
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
declared(must_keep_at_disposal/2, 'provider must keep documentation at disposal of national competent authorities', 'celex:32024R1689/oj#art_18').
declared(documentation_kept_under_financial_services_law/1, 'provider maintains technical documentation under financial services law', 'celex:32024R1689/oj#art_18').
must_keep_at_disposal(Provider, documentation(period(years(10), after(Event)), Docs)) :-
    provider(Provider),
    (   placing_on_market(Event)
    ;   putting_into_service(Event)
    ),
    Docs = [technical_documentation,
            quality_management_system_documentation,
            changes_approved_by_notified_bodies,
            decisions_and_documents_from_notified_bodies,
            eu_declaration_of_conformity].
documentation_kept_under_financial_services_law(Provider) :-
    provider(Provider),
    financial_institution(Provider),
    subject_to_financial_services_governance_requirements(Provider).
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_kept_under_financial_services_law/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(must_keep_logs/2, 'provider must keep automatically generated logs', 'celex:32024R1689/oj#art_19').
declared(must_maintain_logs_as_documentation/2, 'financial institution provider must maintain logs as part of financial services documentation', 'celex:32024R1689/oj#art_19').
must_keep_logs(Provider, logs(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System),
    kept_for_period(Provider, System, period(at_least(months(6)), appropriate_to(intended_purpose(System)))).
must_maintain_logs_as_documentation(Provider, logs(System)) :-
    provider(Provider),
    financial_institution(Provider),
    subject_to_internal_governance_requirements(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_as_documentation/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(corrective_action/1, 'action to bring system into conformity, withdraw, disable or recall', 'celex:32024R1689/oj#art_20').
declared(risk_presenting_system/1, 'high-risk AI system presenting a risk under Article 79(1)', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_market_or_put_into_service(Provider, System),
    considers_or_has_reason_to_consider_nonconformity(Provider, System).
must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    distributor_of(Distributor, System),
    must_inform(Provider, Distributor).
must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    deployer_of(Deployer, System),
    must_inform(Provider, Deployer).
must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    authorised_representative_of(Rep, System),
    must_inform(Provider, Rep).
must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    importer_of(Importer, System),
    must_inform(Provider, Importer).
must_investigate_and_inform(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presenting_system(System),
    becomes_aware_of_risk(Provider, System).
must_inform_market_surveillance(Provider, System) :-
    must_investigate_and_inform(Provider, System),
    market_surveillance_authority(Authority),
    competent_for(Authority, System),
    must_inform(Provider, Authority).
must_inform_notified_body(Provider, System) :-
    must_investigate_and_inform(Provider, System),
    notified_body(Body),
    issued_certificate_for(Body, System),
    must_inform(Provider, Body).
considers_or_has_reason_to_consider_nonconformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
placed_on_market_or_put_into_service(Provider, System) :-
    placing_on_market(System).
placed_on_market_or_put_into_service(Provider, System) :-
    putting_into_service(System).
becomes_aware_of_risk(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
provenance(corrective_action/1, 'celex:32024R1689/oj#art_20').
provenance(risk_presenting_system/1, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_supply_chain/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_and_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(must_provide_information/2, 'provider must provide information and documentation to competent authority', 'celex:32024R1689/oj#art_21').
declared(must_give_access_to_logs/2, 'provider must give access to automatically generated logs to competent authority', 'celex:32024R1689/oj#art_21').
must_provide_information(Provider, information_request(Authority, System)) :-
    provider(Provider),
    competent_authority(Authority),
    high_risk_ai_system(System),
    reasoned_request(Authority, information_request(Authority, System)),
    information_demonstrates_conformity(information_request(Authority, System), System),
    language_easily_understood(information_request(Authority, System), Authority).
must_give_access_to_logs(Provider, log_access_request(Authority, System)) :-
    provider(Provider),
    competent_authority(Authority),
    high_risk_ai_system(System),
    reasoned_request(Authority, log_access_request(Authority, System)),
    logs_under_control(Provider, System).
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access_to_logs/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(must_appoint_authorised_representative/2, 'provider must appoint an authorised representative', 'celex:32024R1689/oj#art_22').
declared(must_enable_authorised_representative/2, 'provider must enable its authorised representative', 'celex:32024R1689/oj#art_22').
declared(must_perform_mandate_tasks/2, 'authorised representative must perform mandate tasks', 'celex:32024R1689/oj#art_22').
declared(must_provide_mandate_copy/2, 'authorised representative must provide mandate copy on request', 'celex:32024R1689/oj#art_22').
declared(must_verify_documentation/2, 'authorised representative must verify documentation', 'celex:32024R1689/oj#art_22').
declared(must_keep_documentation/2, 'authorised representative must keep documentation', 'celex:32024R1689/oj#art_22').
declared(must_provide_information/2, 'authorised representative must provide information on request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate/2, 'authorised representative must cooperate with authorities', 'celex:32024R1689/oj#art_22').
declared(must_comply_with_registration/2, 'authorised representative must comply with registration obligations', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary', 'celex:32024R1689/oj#art_22').
declared(must_inform_termination/2, 'authorised representative must inform authorities of mandate termination', 'celex:32024R1689/oj#art_22').
declared(third_country_provider/1, 'provider established in a third country', 'celex:32024R1689/oj#art_22').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_22').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity', 'celex:32024R1689/oj#art_22').
declared(technical_documentation/1, 'technical documentation', 'celex:32024R1689/oj#art_22').
declared(conformity_assessment_procedure/1, 'appropriate conformity assessment procedure', 'celex:32024R1689/oj#art_22').
declared(certificate/1, 'certificate issued by notified body', 'celex:32024R1689/oj#art_22').
declared(logs/1, 'automatically generated logs', 'celex:32024R1689/oj#art_22').
declared(registration_obligations/1, 'registration obligations', 'celex:32024R1689/oj#art_22').
declared(mandate/1, 'written mandate appointing authorised representative', 'celex:32024R1689/oj#art_22').
must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    third_country_provider(Provider),
    authorised_representative(Representative),
    high_risk_ai_system(S),
    placing_on_market(S),
    \+ making_available_on_market(S).
must_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate(M),
    must_perform_mandate_tasks(Representative, M).
must_perform_mandate_tasks(Representative, Mandate) :-
    authorised_representative(Representative),
    mandate(Mandate).
must_provide_mandate_copy(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    mandate(M),
    must_perform_mandate_tasks(Representative, M).
must_verify_documentation(Representative, System) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    conformity_assessment_procedure(C).
must_keep_documentation(Representative, System) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    provider(Provider),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    certificate(Cert).
must_provide_information(Representative, Authority) :-
    authorised_representative(Representative),
    national_competent_authority(Authority),
    high_risk_ai_system(System),
    logs(L).
must_cooperate(Representative, Authority) :-
    authorised_representative(Representative),
    national_competent_authority(Authority),
    high_risk_ai_system(System).
must_comply_with_registration(Representative, System) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    registration_obligations(R).
must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    mandate(M),
    must_perform_mandate_tasks(Representative, M).
must_inform_termination(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    mandate(M),
    must_terminate_mandate(Representative, _Provider).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandate_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').

% ==== celex:32024R1689/oj#art_23 ====
declared(must_ensure_conformity/2, 'importer must ensure high-risk AI system is in conformity before placing on market', 'celex:32024R1689/oj#art_23').
declared(must_not_place_on_market/2, 'importer must not place non-conforming high-risk AI system on market', 'celex:32024R1689/oj#art_23').
declared(must_inform/2, 'importer must inform provider, authorised representative and market surveillance authorities of risk', 'celex:32024R1689/oj#art_23').
declared(must_indicate_identity/2, 'importer must indicate name, trade name or mark and contact address on system', 'celex:32024R1689/oj#art_23').
declared(must_ensure_storage_conditions/2, 'importer must ensure storage and transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(must_keep_documentation/2, 'importer must keep certificate, instructions and EU declaration of conformity for 10 years', 'celex:32024R1689/oj#art_23').
declared(must_provide_information/2, 'importer must provide information and documentation to competent authorities on reasoned request', 'celex:32024R1689/oj#art_23').
declared(must_cooperate/2, 'importer must cooperate with competent authorities on actions relating to high-risk AI system', 'celex:32024R1689/oj#art_23').
must_ensure_conformity(I, S) :-
    importer(I),
    ai_system(S),
    placing_on_market(S),
    conformity_assessment_carried_out(S),
    technical_documentation_drawn_up(S),
    ce_marking(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use_accompanies(S),
    authorised_representative_appointed(S).
conformity_assessment_carried_out(S) :-
    conformity_assessment(A),
    provider(P),
    carried_out_by(P, A, S).
technical_documentation_drawn_up(S) :-
    provider(P),
    drawn_up(P, technical_documentation(S)).
eu_declaration_of_conformity_accompanies(S) :-
    accompanied_by(S, eu_declaration_of_conformity).
instructions_for_use_accompanies(S) :-
    accompanied_by(S, instructions_for_use).
authorised_representative_appointed(S) :-
    provider(P),
    authorised_representative(R),
    appointed(P, R, S).
must_not_place_on_market(I, S) :-
    importer(I),
    ai_system(S),
    sufficient_reason_to_consider_nonconformity(I, S),
    \+ brought_into_conformity(S).
must_inform(I, risk(S)) :-
    importer(I),
    ai_system(S),
    risk(S),
    provider(P),
    authorised_representative(R),
    market_surveillance_authority(M),
    inform(I, P, risk(S)),
    inform(I, R, risk(S)),
    inform(I, M, risk(S)).
must_indicate_identity(I, S) :-
    importer(I),
    ai_system(S),
    indicate_on(I, S, identity(I)),
    indicate_on(I, packaging(S), identity(I)),
    indicate_on(I, accompanying_documentation(S), identity(I)).
must_ensure_storage_conditions(I, S) :-
    importer(I),
    ai_system(S),
    under_responsibility(I, S),
    storage_or_transport_conditions_do_not_jeopardise_compliance(S).
must_keep_documentation(I, S) :-
    importer(I),
    ai_system(S),
    keep_for(I, documentation(S), period(years(10), after(placing_on_market_or_putting_into_service(S)))).
must_provide_information(I, S) :-
    importer(I),
    ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, information(S)),
    provide(I, A, information_and_documentation(S)),
    ensure_technical_documentation_available(I, A, S).
must_cooperate(I, S) :-
    importer(I),
    ai_system(S),
    national_competent_authority(A),
    action_relating_to(A, S),
    cooperate(I, A, action_relating_to(A, S)).
provenance(must_ensure_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_23').
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
declared(bears_ce_marking/1, 'system bears the required CE marking', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_eu_declaration_of_conformity/1, 'system accompanied by a copy of the EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_instructions_for_use/1, 'system accompanied by instructions for use', 'celex:32024R1689/oj#art_24').
declared(provider_complied_with_obligations/1, 'provider complied with obligations under art_16(1)(b) and (c)', 'celex:32024R1689/oj#art_24').
declared(importer_complied_with_obligations/1, 'importer complied with obligations under art_23(3)', 'celex:32024R1689/oj#art_24').
declared(conformity_with_section_2_requirements/1, 'system conforms with requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_24').
declared(presents_risk/1, 'system presents a risk within the meaning of art_79(1)', 'celex:32024R1689/oj#art_24').
declared(under_distributor_responsibility/2, 'system is under the responsibility of the distributor', 'celex:32024R1689/oj#art_24').
declared(storage_or_transport_conditions_jeopardise_compliance/2, 'storage or transport conditions jeopardise compliance of the system', 'celex:32024R1689/oj#art_24').
declared(corrective_actions_taken/2, 'distributor has taken corrective actions for the system', 'celex:32024R1689/oj#art_24').
declared(competent_authority/1, 'authority competent for the high-risk AI system', 'celex:32024R1689/oj#art_24').
declared(reasoned_request/2, 'competent authority has made a reasoned request to the distributor', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    bears_ce_marking(System),
    accompanied_by_eu_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    provider_complied_with_obligations(System),
    importer_complied_with_obligations(System).
must_not_make_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    \+ conformity_with_section_2_requirements(System).
must_inform(Distributor, nonconformity_risk(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk(System).
must_ensure_storage_transport_compliance(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_distributor_responsibility(Distributor, System),
    \+ storage_or_transport_conditions_jeopardise_compliance(Distributor, System).
must_take_corrective_actions(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    \+ conformity_with_section_2_requirements(System),
    \+ corrective_actions_taken(Distributor, System).
must_immediately_inform(Distributor, risk_details(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk(System).
must_provide_information_and_documentation(Distributor, Authority, System) :-
    distributor(Distributor),
    competent_authority(Authority),
    high_risk_ai_system(System),
    reasoned_request(Authority, Distributor).
must_cooperate(Distributor, Authority) :-
    distributor(Distributor),
    competent_authority(Authority).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/3, 'celex:32024R1689/oj#art_24').
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
declared(considered_provider/2, 'entity considered a provider of a high-risk AI system under Article 25', 'celex:32024R1689/oj#art_25').
declared(no_longer_provider/2, 'initial provider no longer considered provider of a specific AI system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate/2, 'initial provider must cooperate with new provider', 'celex:32024R1689/oj#art_25').
declared(must_specify_by_agreement/3, 'provider and third party must specify information and assistance by written agreement', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_considered_provider/2, 'product manufacturer considered provider of high-risk AI safety component', 'celex:32024R1689/oj#art_25').
considered_provider(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    high_risk_ai_system(S),
    ( puts_name_or_trademark(Entity, S)
    ; makes_substantial_modification(Entity, S)
    ; modifies_intended_purpose_to_high_risk(Entity, S)
    ).
puts_name_or_trademark(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    high_risk_ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ),
    name_or_trademark_placed(Entity, S).
makes_substantial_modification(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    high_risk_ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ),
    substantial_modification(S),
    remains_high_risk(S).
modifies_intended_purpose_to_high_risk(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    ai_system(S),
    \+ high_risk_ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ),
    modifies_intended_purpose(Entity, S),
    becomes_high_risk(S).
no_longer_provider(InitialProvider, S) :-
    provider(InitialProvider),
    high_risk_ai_system(S),
    considered_provider(_NewProvider, S),
    initially_placed_or_put_into_service(InitialProvider, S).
must_cooperate(InitialProvider, NewProvider) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_or_put_into_service(InitialProvider, S),
    \+ initial_provider_excluded(InitialProvider, S).
initial_provider_excluded(InitialProvider, S) :-
    provider(InitialProvider),
    high_risk_ai_system(S),
    specified_not_to_be_changed_to_high_risk(InitialProvider, S).
product_manufacturer_considered_provider(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    product_covered_by_annex_1_section_1(S),
    ( placed_on_market_together(Manufacturer, S)
    ; put_into_service_under_name(Manufacturer, S)
    ).
placed_on_market_together(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    placing_on_market(S),
    name_or_trademark_placed(Manufacturer, S).
put_into_service_under_name(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    putting_into_service(S),
    name_or_trademark_placed(Manufacturer, S).
must_specify_by_agreement(Provider, ThirdParty, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_to_high_risk(ThirdParty, S),
    \+ free_and_open_source_exception(ThirdParty).
free_and_open_source_exception(ThirdParty) :-
    third_party(ThirdParty),
    makes_publicly_accessible(ThirdParty, tools_services_processes_components),
    free_and_open_source_licence(ThirdParty),
    \+ general_purpose_ai_model(ThirdParty).
provenance(considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(no_longer_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_agreement/3, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

% ==== celex:32024R1689/oj#art_26 ====
declared(must_take_measures/2, 'deployer must take technical and organisational measures', 'celex:32024R1689/oj#art_26/par_1').
declared(must_assign_human_oversight/1, 'deployer must assign human oversight to competent natural persons', 'celex:32024R1689/oj#art_26/par_2').
declared(must_ensure_input_data/2, 'deployer must ensure input data is relevant and representative', 'celex:32024R1689/oj#art_26/par_4').
declared(must_monitor_operation/2, 'deployer must monitor operation of high-risk AI system', 'celex:32024R1689/oj#art_26/par_5').
declared(must_inform/2, 'deployer must inform provider or authority', 'celex:32024R1689/oj#art_26/par_5').
declared(must_suspend_use/2, 'deployer must suspend use of high-risk AI system', 'celex:32024R1689/oj#art_26/par_5').
declared(must_keep_logs/2, 'deployer must keep automatically generated logs', 'celex:32024R1689/oj#art_26/par_6').
declared(must_inform_workers/2, 'employer deployer must inform workers about high-risk AI system use', 'celex:32024R1689/oj#art_26/par_7').
declared(must_comply_registration/1, 'public authority deployer must comply with registration obligations', 'celex:32024R1689/oj#art_26/par_8').
declared(must_not_use_unregistered/2, 'deployer must not use unregistered high-risk AI system', 'celex:32024R1689/oj#art_26/par_8').
declared(must_use_information/2, 'deployer must use information for data protection impact assessment', 'celex:32024R1689/oj#art_26/par_9').
declared(must_request_authorisation/2, 'deployer must request authorisation for post-remote biometric identification', 'celex:32024R1689/oj#art_26/par_10').
declared(must_stop_use/2, 'deployer must stop use if authorisation rejected', 'celex:32024R1689/oj#art_26/par_10').
declared(must_delete_data/2, 'deployer must delete personal data if authorisation rejected', 'celex:32024R1689/oj#art_26/par_10').
declared(must_document_use/2, 'deployer must document each use of post-remote biometric identification', 'celex:32024R1689/oj#art_26/par_10').
declared(must_submit_annual_reports/2, 'deployer must submit annual reports on post-remote biometric identification use', 'celex:32024R1689/oj#art_26/par_10').
declared(must_inform_natural_persons/2, 'deployer must inform natural persons about high-risk AI system use', 'celex:32024R1689/oj#art_26/par_11').
declared(must_cooperate/2, 'deployer must cooperate with competent authorities', 'celex:32024R1689/oj#art_26/par_12').
must_take_measures(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanying(I, S).
must_assign_human_oversight(D) :-
    deployer(D),
    human_oversight_assigned(D).
human_oversight_assigned(D) :-
    natural_person(P),
    has_competence(P),
    has_training(P),
    has_authority(P),
    has_support(P),
    assigned_to(P, D).
must_ensure_input_data(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    exercises_control_over_input_data(D, S),
    input_data_relevant_and_representative(S).
input_data_relevant_and_representative(S) :-
    input_data(Data),
    intended_purpose(S, Purpose),
    relevant(Data, Purpose),
    sufficiently_representative(Data, Purpose).
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanying(I, S).
must_inform(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S),
    (   provider(P) -> inform_without_delay(D, P)
    ;   distributor(Dist) -> inform_without_delay(D, Dist)
    ),
    market_surveillance_authority(A),
    inform_without_delay(D, A).
must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S).
must_inform(D, serious_incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    identified_serious_incident(D, S),
    provider(P),
    immediately_inform(D, P),
    (   importer(Imp) -> immediately_inform(D, Imp)
    ;   distributor(Dist) -> immediately_inform(D, Dist)
    ),
    market_surveillance_authority(A),
    immediately_inform(D, A).
must_inform(D, _) :-
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(Data),
    \+ disclose(Data).
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_control(D, S),
    period(months(6), minimum).
must_inform_workers(D, S) :-
    deployer(D),
    employer(D),
    high_risk_ai_system(S),
    workers_representatives(R),
    affected_workers(W),
    inform_subject_to_use(D, R, S),
    inform_subject_to_use(D, W, S).
must_comply_registration(D) :-
    deployer(D),
    public_authority_or_union_body(D).
must_not_use_unregistered(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ registered_in_eu_database(S),
    (   provider(P) -> inform(D, P)
    ;   distributor(Dist) -> inform(D, Dist)
    ).
must_use_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    information_provided_under_art_13(Info, S),
    data_protection_impact_assessment_required(D).
must_request_authorisation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    targeted_search_of_person(S),
    criminal_offence(O),
    suspected_or_convicted(Person, O),
    \+ initial_identification_based_on_facts(S).
must_stop_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S).
must_delete_data(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S),
    personal_data_linked_to_use(Data, S).
prohibited_untargeted_law_enforcement_use(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    law_enforcement(Purpose),
    untargeted(S),
    \+ link_to_criminal_offence(S),
    \+ link_to_criminal_proceeding(S),
    \+ genuine_threat_of_criminal_offence(S),
    \+ search_for_specific_missing_person(S).
prohibited_solely_output_based_decision(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    law_enforcement_authority(A),
    decision_adverse_legal_effect(Decision, Person),
    based_solely_on_output(Decision, S).
must_document_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    documented_in_police_file(S).
must_submit_annual_reports(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    market_surveillance_authority(A),
    national_data_protection_authority(DPA),
    submit_annual_report(D, A, S),
    submit_annual_report(D, DPA, S).
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    annex_iii_system(S),
    makes_or_assists_decisions_about_natural_persons(S),
    natural_person(P),
    inform_subject_to_use(D, P, S).
must_cooperate(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    national_competent_authority(A),
    action_taken_by_authority(A, S).
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_26/par_1').
provenance(must_assign_human_oversight/1, 'celex:32024R1689/oj#art_26/par_2').
provenance(must_ensure_input_data/2, 'celex:32024R1689/oj#art_26/par_4').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26/par_7').
provenance(must_comply_registration/1, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_not_use_unregistered/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_use_information/2, 'celex:32024R1689/oj#art_26/par_9').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_delete_data/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_solely_output_based_decision/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26/par_11').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_26/par_12').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform a fundamental rights impact assessment for a high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority/2, 'deployer must notify the market surveillance authority of the results of the fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(exempt_from_notification/2, 'deployer is exempt from the obligation to notify the market surveillance authority', 'celex:32024R1689/oj#art_27').
declared(must_update_fundamental_rights_impact_assessment/2, 'deployer must update the fundamental rights impact assessment when elements change', 'celex:32024R1689/oj#art_27').
declared(fundamental_rights_impact_assessment_complements_data_protection_impact_assessment/2, 'the fundamental rights impact assessment complements the data protection impact assessment', 'celex:32024R1689/oj#art_27').
must_perform_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    referred_to_in_art_6_par_2(System),
    \+ intended_for_area_in_anx_3_pnt_2(System),
    (   body_governed_by_public_law(Deployer)
    ;   private_entity_providing_public_services(Deployer)
    ;   deployer_of_system_referred_to_in_anx_3_pnt_5_b_c(Deployer, System)
    ),
    assessment_consists_of_required_elements(Deployer, System).
assessment_consists_of_required_elements(Deployer, System) :-
    description_of_deployer_processes(Deployer, System),
    description_of_period_and_frequency_of_use(Deployer, System),
    categories_of_affected_persons(Deployer, System),
    specific_risks_of_harm(Deployer, System),
    description_of_human_oversight_measures(Deployer, System),
    measures_in_case_of_materialisation_of_risks(Deployer, System).
must_perform_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    first_use(System),
    \+ previously_conducted_assessment_applies(Deployer, System).
previously_conducted_assessment_applies(Deployer, System) :-
    similar_case(System),
    (   previously_conducted_fundamental_rights_impact_assessment(Deployer, System)
    ;   existing_impact_assessment_by_provider(Deployer, System)
    ).
must_update_fundamental_rights_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    during_use(System),
    element_of_paragraph_1_changed_or_outdated(Deployer, System).
must_notify_market_surveillance_authority(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    must_perform_fundamental_rights_impact_assessment(Deployer, System),
    assessment_performed(Deployer, System),
    \+ exempt_from_notification(Deployer, System).
exempt_from_notification(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    case_referred_to_in_art_46_par_1(Deployer, System).
fundamental_rights_impact_assessment_complements_data_protection_impact_assessment(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    obligation_met_through_data_protection_impact_assessment(Deployer, System),
    must_perform_fundamental_rights_impact_assessment(Deployer, System).
obligation_met_through_data_protection_impact_assessment(Deployer, System) :-
    data_protection_impact_assessment_conducted_pursuant_to_art_35_gdpr(Deployer, System).
obligation_met_through_data_protection_impact_assessment(Deployer, System) :-
    data_protection_impact_assessment_conducted_pursuant_to_art_27_led(Deployer, System).
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_complements_data_protection_impact_assessment/2, 'celex:32024R1689/oj#art_27').
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
declared(must_designate_or_establish_notifying_authority/2, 'Member State must designate or establish at least one notifying authority', 'celex:32024R1689/oj#art_28/par_1').
declared(must_develop_procedures_cooperatively/1, 'procedures for assessment, designation, notification and monitoring must be developed in cooperation between notifying authorities', 'celex:32024R1689/oj#art_28/par_1').
declared(may_use_national_accreditation_body/2, 'Member State may decide that assessment and monitoring is carried out by a national accreditation body', 'celex:32024R1689/oj#art_28/par_2').
declared(must_be_free_of_conflict_of_interest/1, 'notifying authority must be established, organised and operated without conflict of interest with conformity assessment bodies', 'celex:32024R1689/oj#art_28/par_3').
declared(must_safeguard_objectivity_and_impartiality/1, 'notifying authority must safeguard objectivity and impartiality of its activities', 'celex:32024R1689/oj#art_28/par_3').
declared(must_separate_decision_makers/1, 'notifying authority must ensure notification decisions are taken by persons different from those who carried out the assessment', 'celex:32024R1689/oj#art_28/par_4').
declared(must_not_offer_conformity_assessment_activities/1, 'notifying authority must not offer or provide activities that conformity assessment bodies perform', 'celex:32024R1689/oj#art_28/par_5').
declared(must_not_offer_consultancy_services/1, 'notifying authority must not offer or provide consultancy services on a commercial or competitive basis', 'celex:32024R1689/oj#art_28/par_5').
declared(must_safeguard_confidentiality/1, 'notifying authority must safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28/par_6').
declared(must_have_adequate_competent_personnel/1, 'notifying authority must have an adequate number of competent personnel', 'celex:32024R1689/oj#art_28/par_7').
declared(must_have_necessary_expertise/1, 'competent personnel must have necessary expertise in IT, AI, law and fundamental rights supervision', 'celex:32024R1689/oj#art_28/par_7').
must_designate_or_establish_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    \+ (notifying_authority(A2), A2 \= Authority, same_member_state(A2, MemberState)).
must_develop_procedures_cooperatively(Procedures) :-
    notifying_authority(_),
    procedures_for_assessment_designation_notification_monitoring(Procedures).
may_use_national_accreditation_body(MemberState, Body) :-
    national_accreditation_body(Body),
    carries_out_assessment_and_monitoring(Body).
must_be_free_of_conflict_of_interest(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_with_conformity_assessment_body(Authority).
must_safeguard_objectivity_and_impartiality(Authority) :-
    notifying_authority(Authority).
must_separate_decision_makers(Authority) :-
    notifying_authority(Authority),
    notification_decisions_taken_by_competent_persons(Authority),
    assessment_carried_out_by_different_persons(Authority).
must_not_offer_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority),
    \+ offers_conformity_assessment_activities(Authority).
must_not_offer_consultancy_services(Authority) :-
    notifying_authority(Authority),
    \+ offers_consultancy_services(Authority).
must_safeguard_confidentiality(Authority) :-
    notifying_authority(Authority),
    safeguards_confidentiality_of_information_obtained(Authority).
must_have_adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    has_adequate_number_of_competent_personnel(Authority).
must_have_necessary_expertise(Personnel) :-
    competent_personnel(Personnel),
    has_expertise_in(Personnel, information_technologies),
    has_expertise_in(Personnel, ai),
    has_expertise_in(Personnel, law),
    has_expertise_in(Personnel, supervision_of_fundamental_rights).
provenance(must_designate_or_establish_notifying_authority/2, 'celex:32024R1689/oj#art_28/par_1').
provenance(must_develop_procedures_cooperatively/1, 'celex:32024R1689/oj#art_28/par_1').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28/par_2').
provenance(must_be_free_of_conflict_of_interest/1, 'celex:32024R1689/oj#art_28/par_3').
provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28/par_3').
provenance(must_separate_decision_makers/1, 'celex:32024R1689/oj#art_28/par_4').
provenance(must_not_offer_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28/par_5').
provenance(must_not_offer_consultancy_services/1, 'celex:32024R1689/oj#art_28/par_5').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_28/par_6').
provenance(must_have_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28/par_7').
provenance(must_have_necessary_expertise/1, 'celex:32024R1689/oj#art_28/par_7').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application/2, 'conformity assessment body must submit application for notification to notifying authority', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by/2, 'application for notification must be accompanied by specified documentation', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'body without accreditation certificate must provide documentary evidence', 'celex:32024R1689/oj#art_29').
declared(may_use_designation_documents/2, 'notified body may use documents from other designations', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/2, 'notified body must update documentation on relevant changes', 'celex:32024R1689/oj#art_29').
must_submit_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority).
application_accompanied_by(Application, Documentation) :-
    description_of_conformity_assessment_activities(Documentation),
    conformity_assessment_module(Documentation),
    types_of_ai_systems(Documentation),
    (   accreditation_certificate(Documentation)
    ;   true
    ),
    (   valid_document_existing_designations(Documentation)
    ;   true
    ).
must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ accreditation_certificate_provided(Body).
may_use_designation_documents(Body, Documents) :-
    notified_body(Body),
    designated_under_other_legislation(Body),
    documents_linked_to_designations(Documents).
must_update_documentation(Body, Documentation) :-
    notified_body(Body),
    relevant_changes_occurred(Body),
    documentation_referred_to(Documentation).
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_designation_documents/2, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(must_notify/2, 'notifying authority must notify Commission and Member States of conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(notification_includes/2, 'notification includes specified details', 'celex:32024R1689/oj#art_30').
declared(may_perform_notified_body_activities/1, 'conformity assessment body may perform notified body activities', 'celex:32024R1689/oj#art_30').
declared(objection_raised/1, 'objection raised by Commission or Member State', 'celex:32024R1689/oj#art_30').
declared(must_consult/2, 'Commission must consult Member States and body when objections raised', 'celex:32024R1689/oj#art_30').
declared(must_decide_authorisation/2, 'Commission must decide whether authorisation is justified', 'celex:32024R1689/oj#art_30').
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfied_requirements(Body, 'celex:32024R1689/oj#art_31').
must_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body).
notification_includes(notification(Body), details(Activities, Modules, Types, Attestation)) :-
    conformity_assessment_body(Body),
    conformity_assessment(Activities),
    conformity_assessment_module(Modules),
    ai_system_type(Types),
    attestation_of_competence(Attestation).
must_provide_documentary_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ notification_based_on_accreditation(Authority, Body).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification_includes_accreditation(Body),
    \+ objection_raised_within(Body, weeks(2)).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification_includes_documentary_evidence(Body),
    \+ objection_raised_within(Body, months(2)).
must_consult(Commission, consultation(MemberStates, Body)) :-
    objection_raised(Body),
    conformity_assessment_body(Body).
must_decide_authorisation(Commission, decision(MemberState, Body)) :-
    must_consult(Commission, consultation(_, Body)),
    conformity_assessment_body(Body).
provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(must_be_established_under_national_law/2, 'notified body must be established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(must_have_legal_personality/1, 'notified body must have legal personality', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_organisational_requirements/1, 'notified body must satisfy organisational requirements', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_quality_management_requirements/1, 'notified body must satisfy quality management requirements', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_resources_requirements/1, 'notified body must satisfy resources requirements', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_process_requirements/1, 'notified body must satisfy process requirements', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_cybersecurity_requirements/1, 'notified body must satisfy suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(must_ensure_confidence_in_performance/1, 'notified body must ensure confidence in its performance', 'celex:32024R1689/oj#art_31').
declared(must_ensure_confidence_in_results/1, 'notified body must ensure confidence in the results of its conformity assessment activities', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of_provider/2, 'notified body must be independent of the provider of a high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of_operator/2, 'notified body must be independent of any other operator with an economic interest', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of_competitor/2, 'notified body must be independent of any competitor of the provider', 'celex:32024R1689/oj#art_31').
declared(permitted_use_of_assessed_system/2, 'use of assessed high-risk AI systems necessary for operations or personal purposes is not precluded', 'celex:32024R1689/oj#art_31').
declared(must_not_be_directly_involved/2, 'conformity assessment body and its personnel must not be directly involved in design, development, marketing or use', 'celex:32024R1689/oj#art_31').
declared(must_not_represent_parties/2, 'conformity assessment body and its personnel must not represent parties engaged in those activities', 'celex:32024R1689/oj#art_31').
declared(must_not_engage_in_conflicting_activity/2, 'conformity assessment body and its personnel must not engage in activity conflicting with independence or integrity', 'celex:32024R1689/oj#art_31').
declared(must_safeguard_independence/1, 'notified body must safeguard independence of its activities', 'celex:32024R1689/oj#art_31').
declared(must_safeguard_objectivity/1, 'notified body must safeguard objectivity of its activities', 'celex:32024R1689/oj#art_31').
declared(must_safeguard_impartiality/1, 'notified body must safeguard impartiality of its activities', 'celex:32024R1689/oj#art_31').
declared(must_document_impartiality_structure/1, 'notified body must document a structure to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(must_implement_impartiality_structure/1, 'notified body must implement a structure to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(must_have_confidentiality_procedures/1, 'notified body must have documented procedures ensuring confidentiality', 'celex:32024R1689/oj#art_31').
declared(must_observe_professional_secrecy/1, 'staff of notified bodies must observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(must_have_proportionate_procedures/1, 'notified body must have procedures taking due account of provider size, sector, structure and AI system complexity', 'celex:32024R1689/oj#art_31').
declared(must_take_out_liability_insurance/1, 'notified body must take out appropriate liability insurance', 'celex:32024R1689/oj#art_31').
declared(exempt_liability_insurance/1, 'notified body exempt from liability insurance if Member State assumes liability or is directly responsible', 'celex:32024R1689/oj#art_31').
declared(must_have_professional_integrity/1, 'notified body must carry out tasks with highest degree of professional integrity', 'celex:32024R1689/oj#art_31').
declared(must_have_requisite_competence/1, 'notified body must have requisite competence in the specific field', 'celex:32024R1689/oj#art_31').
declared(must_have_sufficient_internal_competences/1, 'notified body must have sufficient internal competences to evaluate tasks conducted by external parties', 'celex:32024R1689/oj#art_31').
declared(must_have_permanent_availability_of_personnel/1, 'notified body must have permanent availability of sufficient administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(must_participate_in_coordination_activities/1, 'notified body must participate in coordination activities', 'celex:32024R1689/oj#art_31').
declared(must_participate_in_standardisation/1, 'notified body must take part in or be represented in European standardisation organisations or ensure awareness of relevant standards', 'celex:32024R1689/oj#art_31').
must_be_established_under_national_law(B, MemberState) :-
    notified_body(B),
    member_state(MemberState).
must_have_legal_personality(B) :-
    notified_body(B).
must_satisfy_organisational_requirements(B) :-
    notified_body(B).
must_satisfy_quality_management_requirements(B) :-
    notified_body(B).
must_satisfy_resources_requirements(B) :-
    notified_body(B).
must_satisfy_process_requirements(B) :-
    notified_body(B).
must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B).
must_ensure_confidence_in_performance(B) :-
    notified_body(B).
must_ensure_confidence_in_results(B) :-
    notified_body(B).
must_be_independent_of_provider(B, Provider) :-
    notified_body(B),
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S).
must_be_independent_of_operator(B, Operator) :-
    notified_body(B),
    operator(Operator),
    economic_interest_in_high_risk_ai_systems(Operator),
    \+ provider(Operator).
must_be_independent_of_competitor(B, Competitor) :-
    notified_body(B),
    competitor_of_provider(Competitor, Provider),
    provider(Provider).
permitted_use_of_assessed_system(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    ( necessary_for_operations(B, S)
    ; personal_purpose(B, S)
    ).
must_not_be_directly_involved(B, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    ( design(B, S)
    ; development(B, S)
    ; marketing(B, S)
    ; use(B, S)
    ).
must_not_represent_parties(B, Party) :-
    conformity_assessment_body(B),
    party_engaged_in_design_development_marketing_or_use(Party, S),
    high_risk_ai_system(S).
must_not_engage_in_conflicting_activity(B, Activity) :-
    conformity_assessment_body(B),
    activity_conflicting_with_independence_or_integrity(Activity, B).
must_safeguard_independence(B) :-
    notified_body(B).
must_safeguard_objectivity(B) :-
    notified_body(B).
must_safeguard_impartiality(B) :-
    notified_body(B).
must_document_impartiality_structure(B) :-
    notified_body(B).
must_implement_impartiality_structure(B) :-
    notified_body(B).
must_have_confidentiality_procedures(B) :-
    notified_body(B).
must_observe_professional_secrecy(Staff) :-
    staff_of_notified_body(Staff, B),
    notified_body(B).
must_have_proportionate_procedures(B) :-
    notified_body(B).
must_take_out_liability_insurance(B) :-
    notified_body(B),
    \+ exempt_liability_insurance(B).
exempt_liability_insurance(B) :-
    notified_body(B),
    member_state_assumes_liability(B, MemberState).
exempt_liability_insurance(B) :-
    notified_body(B),
    member_state_directly_responsible(B, MemberState).
must_have_professional_integrity(B) :-
    notified_body(B).
must_have_requisite_competence(B) :-
    notified_body(B).
must_have_sufficient_internal_competences(B) :-
    notified_body(B).
must_have_permanent_availability_of_personnel(B) :-
    notified_body(B).
must_participate_in_coordination_activities(B) :-
    notified_body(B).
must_participate_in_standardisation(B) :-
    notified_body(B).
provenance(must_be_established_under_national_law/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_resources_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_results/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_operator/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_system/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_objectivity/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_implement_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_proportionate_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_out_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_requisite_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_compliance_with_notified_body_requirements/1, 'conformity assessment body presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
presumed_compliance_with_notified_body_requirements(Body) :-
    conformity_assessment_body(Body),
    demonstrates_conformity_with_harmonised_standards(Body),
    harmonised_standards_cover_article_31_requirements.
demonstrates_conformity_with_harmonised_standards(Body) :-
    conformity_assessment_body(Body),
    harmonised_standard(Standard),
    conforms_to(Body, Standard).
harmonised_standards_cover_article_31_requirements :-
    harmonised_standard(Standard),
    covers_requirements(Standard, 'celex:32024R1689/oj#art_31').
provenance(presumed_compliance_with_notified_body_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standards_cover_article_31_requirements/0, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(must_ensure_subcontractor_requirements/2, 'notified body ensures subcontractor meets requirements', 'celex:32024R1689/oj#art_33').
declared(must_inform_notifying_authority/2, 'notified body informs notifying authority of subcontracting', 'celex:32024R1689/oj#art_33').
declared(must_take_full_responsibility/2, 'notified body takes full responsibility for subcontractor tasks', 'celex:32024R1689/oj#art_33').
declared(must_obtain_provider_agreement/2, 'notified body obtains provider agreement for subcontracting', 'celex:32024R1689/oj#art_33').
declared(must_make_subsidiary_list_available/1, 'notified body makes subsidiary list publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_documents_available/2, 'notified body keeps subcontractor documents at disposal of notifying authority', 'celex:32024R1689/oj#art_33').
must_ensure_subcontractor_requirements(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontracts_conformity_assessment_tasks(Body, Subcontractor)
    ;   has_recourse_to_subsidiary(Body, Subcontractor)
    ),
    meets_requirements(Subcontractor, 'celex:32024R1689/oj#art_31').
must_inform_notifying_authority(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontracts_conformity_assessment_tasks(Body, Subcontractor)
    ;   has_recourse_to_subsidiary(Body, Subcontractor)
    ),
    notifying_authority(Authority),
    must_inform(Body, subcontracting(Subcontractor, Authority)).
must_take_full_responsibility(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontractor(Subcontractor)
    ;   subsidiary(Subcontractor)
    ),
    performs_tasks_for(Subcontractor, Body).
must_obtain_provider_agreement(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontractor(Subcontractor)
    ;   subsidiary(Subcontractor)
    ),
    provider(Provider),
    agreement(Provider, subcontracting(Subcontractor)).
must_make_subsidiary_list_available(Body) :-
    notified_body(Body),
    must_make_publicly_available(Body, subsidiary_list).
must_keep_documents_available(Body, Subcontractor) :-
    notified_body(Body),
    (   subcontractor(Subcontractor)
    ;   subsidiary(Subcontractor)
    ),
    notifying_authority(Authority),
    must_keep_at_disposal(Body, documents(assessment(qualifications(Subcontractor)), work(Subcontractor)), Authority, period(years(5), after(termination(subcontracting)))).
provenance(must_ensure_subcontractor_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(must_obtain_provider_agreement/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiary_list_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_documents_available/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body must verify conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'notified body must avoid unnecessary burdens for provider', 'celex:32024R1689/oj#art_34').
declared(must_respect_rigour/2, 'notified body must respect degree of rigour and level of protection', 'celex:32024R1689/oj#art_34').
declared(must_make_available_documentation/2, 'notified body must make available documentation to notifying authority', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment(assessment(System, art_43)).
must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    must_take_account_of_size(Body, Provider),
    must_take_account_of_sector(Body, Provider),
    must_take_account_of_structure(Body, Provider),
    must_take_account_of_complexity(Body, Provider),
    must_minimise_burdens_for_smes(Body, Provider).
must_take_account_of_size(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_take_account_of_sector(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_take_account_of_structure(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_take_account_of_complexity(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_minimise_burdens_for_smes(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    micro_or_small_enterprise(Provider).
must_respect_rigour(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    required_rigour_and_protection(System).
must_make_available_documentation(Body, documentation(System)) :-
    notified_body(Body),
    high_risk_ai_system(System),
    notifying_authority(Authority),
    must_submit_on_request(Body, documentation(System), Authority).
must_submit_on_request(Body, documentation(System), Authority) :-
    notified_body(Body),
    high_risk_ai_system(System),
    notifying_authority(Authority).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign/2, 'entity obliged to assign something to another entity', 'celex:32024R1689/oj#art_35').
declared(must_make_publicly_available/2, 'entity obliged to make something publicly available', 'celex:32024R1689/oj#art_35').
declared(must_ensure_kept_up_to_date/2, 'entity obliged to ensure something is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign(Commission, identification_number(Body)) :-
    notified_body(Body).
must_make_publicly_available(Commission, list_of_notified_bodies) :-
    notified_body(_).
must_ensure_kept_up_to_date(Commission, list_of_notified_bodies).
provenance(must_assign/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_kept_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify/2, 'entity must notify another entity of something', 'celex:32024R1689/oj#art_36').
declared(must_inform/2, 'entity must inform another entity of something', 'celex:32024R1689/oj#art_36').
declared(must_cease/1, 'entity must cease its activities', 'celex:32024R1689/oj#art_36').
declared(must_investigate/1, 'entity must investigate a matter', 'celex:32024R1689/oj#art_36').
declared(must_restrict_designation/1, 'entity must restrict a designation', 'celex:32024R1689/oj#art_36').
declared(must_suspend_designation/1, 'entity must suspend a designation', 'celex:32024R1689/oj#art_36').
declared(must_withdraw_designation/1, 'entity must withdraw a designation', 'celex:32024R1689/oj#art_36').
declared(must_take_steps/1, 'entity must take appropriate steps', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact/1, 'entity must assess the impact on certificates', 'celex:32024R1689/oj#art_36').
declared(must_submit_report/1, 'entity must submit a report', 'celex:32024R1689/oj#art_36').
declared(must_require_suspension_or_withdrawal/2, 'entity must require another to suspend or withdraw certificates', 'celex:32024R1689/oj#art_36').
declared(must_inform_of_required_suspension_or_withdrawal/1, 'entity must inform about required suspension or withdrawal', 'celex:32024R1689/oj#art_36').
declared(must_provide_information/2, 'entity must provide information to another', 'celex:32024R1689/oj#art_36').
declared(must_take_appropriate_measures/1, 'entity must take appropriate measures', 'celex:32024R1689/oj#art_36').
declared(must_confirm/2, 'entity must confirm something', 'celex:32024R1689/oj#art_36').
declared(must_outline_timeline/1, 'entity must outline a timeline for actions', 'celex:32024R1689/oj#art_36').
declared(must_state_capability/2, 'entity must state capability of another', 'celex:32024R1689/oj#art_36').
declared(must_assume_responsibility/2, 'entity must assume responsibility for certificates', 'celex:32024R1689/oj#art_36').
declared(must_complete_assessment/2, 'entity must complete assessment of systems', 'celex:32024R1689/oj#art_36').
declared(may_remain_valid/2, 'certificates may remain valid under conditions', 'celex:32024R1689/oj#art_36').
declared(may_extend_validity/2, 'authority may extend validity of certificates', 'celex:32024R1689/oj#art_36').
declared(must_immediately_inform/2, 'entity must immediately inform others', 'celex:32024R1689/oj#art_36').
must_notify(Authority, relevant_change(notification(Body))) :-
    notifying_authority(Authority),
    notified_body(Body).
extension_of_scope_applies(Change) :-
    extension_of_scope(Change).
other_change_applies(Change) :-
    \+ extension_of_scope(Change).
must_inform(Body, cessation(planned)) :-
    notified_body(Body),
    planned_cessation(Body).
must_inform(Body, cessation(unplanned)) :-
    notified_body(Body),
    \+ planned_cessation(Body).
must_inform(Body, providers_concerned) :-
    notified_body(Body),
    must_cease(Body).
must_cease(Body) :-
    notified_body(Body),
    decides_to_cease(Body).
may_remain_valid(Certificate, period(months(9), after(cessation(Body)))) :-
    certificate_of(Certificate, Body),
    notified_body(Body),
    must_cease(Body),
    another_body_assumes_responsibility(OtherBody, Certificate),
    confirmed_in_writing(OtherBody, assume_responsibility(Certificate)).
must_complete_assessment(OtherBody, systems_affected(Body)) :-
    another_body_assumes_responsibility(OtherBody, _),
    notified_body(Body),
    must_cease(Body).
must_withdraw_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activity(Body).
must_investigate(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider(Authority, Body, no_longer_meets_requirements_or_failing_obligations).
must_inform(Authority, objections_raised(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_investigate(Authority).
must_restrict_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_no_longer_meets_or_failing(Authority, Body),
    restriction_appropriate(Authority, Body).
must_suspend_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_no_longer_meets_or_failing(Authority, Body),
    suspension_appropriate(Authority, Body).
must_withdraw_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_no_longer_meets_or_failing(Authority, Body),
    withdrawal_appropriate(Authority, Body).
must_immediately_inform(Authority, commission_and_member_states(designation_change(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    ( must_restrict_designation(Authority)
    ; must_suspend_designation(Authority)
    ; must_withdraw_designation(Authority) ).
must_inform(Body, providers_concerned(designation_change)) :-
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body).
must_take_steps(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
must_assess_impact(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
must_submit_report(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
must_require_suspension_or_withdrawal(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body),
    unduly_issued_certificates_exist(Body).
must_inform_of_required_suspension_or_withdrawal(Authority) :-
    notifying_authority(Authority),
    must_require_suspension_or_withdrawal(Authority, _).
must_provide_information(Authority, national_competent_authorities(ProviderState)) :-
    notifying_authority(Authority),
    must_require_suspension_or_withdrawal(Authority, _),
    provider_registered_in(Provider, ProviderState),
    provider(Provider).
must_take_appropriate_measures(NationalAuthority) :-
    national_competent_authority(NationalAuthority),
    must_provide_information(_, national_competent_authorities(NationalAuthority)).
certificates_remain_valid_under_suspension_or_restriction(Certificate) :-
    designation_suspended_or_restricted(_),
    \+ unduly_issued(Certificate),
    ( confirmed_no_risk_and_timeline_outlined(_)
    ; confirmed_no_new_certificates_and_capability_stated(_) ).
must_confirm(Authority, no_risk_to_health_safety_or_fundamental_rights) :-
    notifying_authority(Authority),
    designation_suspended_or_restricted(Authority),
    confirmed_no_risk_and_timeline_outlined(Authority).
must_outline_timeline(Authority) :-
    notifying_authority(Authority),
    confirmed_no_risk_and_timeline_outlined(Authority).
must_confirm(Authority, no_certificates_relevant_to_suspension) :-
    notifying_authority(Authority),
    designation_suspended_or_restricted(Authority),
    confirmed_no_new_certificates_and_capability_stated(Authority).
must_state_capability(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    confirmed_no_new_certificates_and_capability_stated(Authority).
must_confirm(Provider, another_qualified_body_assumes_functions(Body)) :-
    provider(Provider),
    notified_body(Body),
    notifying_authority_determines_no_capability(_, Body).
certificates_remain_valid_under_withdrawal(Certificate) :-
    designation_withdrawn(_),
    \+ unduly_issued(Certificate),
    confirmed_no_risk_by_national_authority(_),
    another_body_confirms_immediate_responsibility(_).
must_confirm(NationalAuthority, no_risk_to_health_safety_or_fundamental_rights) :-
    national_competent_authority(NationalAuthority),
    designation_withdrawn(_),
    provider_registered_in(_, NationalAuthority).
must_assume_responsibility(OtherBody, immediate(ai_systems_affected(Body))) :-
    notified_body(OtherBody),
    notified_body(Body),
    designation_withdrawn(Body).
must_complete_assessment(OtherBody, ai_systems_affected(Body)) :-
    notified_body(OtherBody),
    notified_body(Body),
    designation_withdrawn(Body),
    must_assume_responsibility(OtherBody, immediate(ai_systems_affected(Body))).
may_extend_validity(NationalAuthority, period(months(3), additional)) :-
    national_competent_authority(NationalAuthority),
    certificates_remain_valid_under_withdrawal(_).
must_immediately_inform(Entity, commission_member_states_and_other_bodies(change_of_designation)) :-
    ( national_competent_authority(Entity)
    ; notified_body(Entity) ),
    designation_change_affected(Entity).
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_cease/1, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/1, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_designation/1, 'celex:32024R1689/oj#art_36').
provenance(must_suspend_designation/1, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/1, 'celex:32024R1689/oj#art_36').
provenance(must_take_steps/1, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/1, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/1, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_required_suspension_or_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_36').
provenance(must_take_appropriate_measures/1, 'celex:32024R1689/oj#art_36').
provenance(must_confirm/2, 'celex:32024R1689/oj#art_36').
provenance(must_outline_timeline/1, 'celex:32024R1689/oj#art_36').
provenance(must_state_capability/2, 'celex:32024R1689/oj#art_36').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(may_remain_valid/2, 'celex:32024R1689/oj#art_36').
provenance(may_extend_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_36').
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
declared(must_investigate/2, 'Commission investigates doubts about notified body competence', 'celex:32024R1689/oj#art_37').
declared(must_provide_information/2, 'notifying authority provides information to Commission', 'celex:32024R1689/oj#art_37').
declared(must_ensure_confidentiality/2, 'Commission ensures confidentiality of investigation information', 'celex:32024R1689/oj#art_37').
declared(must_inform/2, 'Commission informs Member State of non-compliance', 'celex:32024R1689/oj#art_37').
declared(may_suspend_restrict_withdraw/2, 'Commission may suspend, restrict or withdraw designation', 'celex:32024R1689/oj#art_37').
must_investigate(Commission, Body) :-
    notified_body(Body),
    doubt_competence_or_fulfilment(Body).
doubt_competence_or_fulfilment(Body) :-
    notified_body(Body),
    reasons_to_doubt(Body).
reasons_to_doubt(Body) :-
    notified_body(Body),
    \+ meets_requirements(Body).
reasons_to_doubt(Body) :-
    notified_body(Body),
    \+ continued_fulfilment(Body).
must_provide_information(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    commission_requested_information(Body).
must_ensure_confidentiality(Commission, Information) :-
    sensitive_information(Information),
    obtained_during_investigation(Information).
must_inform(Commission, noncompliance(Body)) :-
    notified_body(Body),
    \+ meets_requirements(Body).
must_inform(Commission, noncompliance(Body)) :-
    notified_body(Body),
    \+ continued_fulfilment(Body).
may_suspend_restrict_withdraw(Commission, designation(Body)) :-
    notified_body(Body),
    member_state_failed_corrective_measures(Body).
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure_confidentiality/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination/2, 'Commission ensures coordination and cooperation between notified bodies', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation/2, 'notifying authority ensures its notified bodies participate in sectoral group', 'celex:32024R1689/oj#art_38').
declared(must_provide_exchange/2, 'Commission provides exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
must_ensure_coordination(Commission, coordination(notified_bodies, high_risk_ai_systems)) :-
    ai_office(Commission),
    high_risk_ai_system(_S).
must_ensure_participation(NotifyingAuthority, participation(NotifiedBody, sectoral_group)) :-
    notifying_authority(NotifyingAuthority),
    notified_body(NotifiedBody),
    notified_by(NotifiedBody, NotifyingAuthority).
must_provide_exchange(Commission, exchange(knowledge_and_best_practices, notifying_authorities)) :-
    ai_office(Commission).
provenance(must_ensure_coordination/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(may_be_authorised_as_notified_body/1, 'conformity assessment body of a third country authorised to carry out notified body activities', 'celex:32024R1689/oj#art_39').
may_be_authorised_as_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_third_country_law(B),
    union_has_agreement_with_third_country(B),
    ( meets_requirements_art_31(B)
    ; ensures_equivalent_compliance(B)
    ).
established_under_third_country_law(B) :-
    conformity_assessment_body(B).
union_has_agreement_with_third_country(B) :-
    conformity_assessment_body(B).
meets_requirements_art_31(B) :-
    conformity_assessment_body(B).
ensures_equivalent_compliance(B) :-
    conformity_assessment_body(B).
provenance(may_be_authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').
provenance(established_under_third_country_law/1, 'celex:32024R1689/oj#art_39').
provenance(union_has_agreement_with_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(presumed_conformity/1, 'system or model presumed to conform to requirements', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_issued/1, 'Commission has issued a standardisation request', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_covers/2, 'request covers a set of requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_asks_deliverables/2, 'request asks for deliverables on a topic', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_specifies/2, 'request specifies a requirement for standards', 'celex:32024R1689/oj#art_40').
declared(standardisation_participants_seek/1, 'participants seek to promote an objective', 'celex:32024R1689/oj#art_40').
presumed_conformity(X) :-
    ( high_risk_ai_system(X) ; general_purpose_ai_model(X) ),
    in_conformity_with_harmonised_standard(X),
    standard_covers_requirements(X).
in_conformity_with_harmonised_standard(X) :-
    harmonised_standard(S),
    reference_published_in_oj(S),
    conforms_to(X, S).
standard_covers_requirements(X) :-
    harmonised_standard(S),
    conforms_to(X, S),
    ( covers_requirements(S, 'celex:32024R1689/oj#chp_3/sec_2')
    ; covers_obligations(S, 'celex:32024R1689/oj#chp_5/sec_2')
    ; covers_obligations(S, 'celex:32024R1689/oj#chp_5/sec_3')
    ).
must_issue_standardisation_request(Commission) :-
    standardisation_request_issued(R),
    standardisation_request_covers(R, 'celex:32024R1689/oj#chp_3/sec_2'),
    standardisation_request_covers(R, 'celex:32024R1689/oj#chp_5/sec_2'),
    standardisation_request_covers(R, 'celex:32024R1689/oj#chp_5/sec_3'),
    standardisation_request_asks_deliverables(R, reporting_and_documentation(resource_performance)),
    standardisation_request_asks_deliverables(R, energy_efficient_development(general_purpose_ai_model)),
    standardisation_request_specifies(R, clear_consistent_standards),
    standardisation_request_specifies(R, meet_requirements('celex:32024R1689/oj')),
    consulted_board(Commission),
    consulted_relevant_stakeholders(Commission),
    requested_evidence_of_best_efforts(Commission).
standardisation_participants_seek(promote_investment_and_innovation).
standardisation_participants_seek(increase_legal_certainty).
standardisation_participants_seek(competitiveness_and_growth).
standardisation_participants_seek(strengthen_global_cooperation).
standardisation_participants_seek(take_into_account_international_standards).
standardisation_participants_seek(enhance_multistakeholder_governance).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(in_conformity_with_harmonised_standard/1, 'celex:32024R1689/oj#art_40').
provenance(standard_covers_requirements/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/1, 'celex:32024R1689/oj#art_40').
provenance(standardisation_participants_seek/1, 'celex:32024R1689/oj#art_40').
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
declared(common_specification/1, 'common specification adopted by the Commission', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_request_not_accepted/1, 'request for harmonised standard not accepted by any European standardisation organisation', 'celex:32024R1689/oj#art_41/par_1/a/i').
declared(harmonised_standard_not_delivered_on_time/1, 'harmonised standard not delivered within deadline', 'celex:32024R1689/oj#art_41/par_1/a/ii').
declared(harmonised_standard_insufficiently_addresses_fundamental_rights/1, 'harmonised standard insufficiently addresses fundamental rights concerns', 'celex:32024R1689/oj#art_41/par_1/a/iii').
declared(harmonised_standard_does_not_comply_with_request/1, 'harmonised standard does not comply with the request', 'celex:32024R1689/oj#art_41/par_1/a/iv').
declared(harmonised_standard_reference_published/1, 'reference to harmonised standard published in OJEU', 'celex:32024R1689/oj#art_41/par_1/b').
declared(harmonised_standard_reference_expected/1, 'reference to harmonised standard expected within reasonable period', 'celex:32024R1689/oj#art_41/par_1/b').
declared(conformity_with_common_specification/1, 'high-risk AI system or general-purpose AI model in conformity with common specifications', 'celex:32024R1689/oj#art_41/par_3').
declared(presumed_conformity_with_requirements/1, 'presumed to be in conformity with requirements or obligations', 'celex:32024R1689/oj#art_41/par_3').
common_specification_adoption_conditions_fulfilled(Requirements) :-
    harmonised_standard_request_made(Requirements),
    (
        harmonised_standard_request_not_accepted(Requirements)
    ;
        harmonised_standard_not_delivered_on_time(Requirements)
    ;
        harmonised_standard_insufficiently_addresses_fundamental_rights(Requirements)
    ;
        harmonised_standard_does_not_comply_with_request(Requirements)
    ),
    \+ harmonised_standard_reference_published(Requirements),
    \+ harmonised_standard_reference_expected(Requirements).
presumed_conformity_with_requirements(System) :-
    high_risk_ai_system_or_general_purpose_ai_model(System),
    conformity_with_common_specification(System).
high_risk_ai_system_or_general_purpose_ai_model(S) :-
    ai_system(S),
    high_risk(S).
high_risk_ai_system_or_general_purpose_ai_model(M) :-
    general_purpose_ai_model(M).
must_justify_technical_solutions(Provider, Spec) :-
    provider(Provider),
    common_specification(Spec),
    \+ conformity_with_common_specification(System),
    ai_system(System),
    provider_of(Provider, System).
provider_of(Provider, System) :-
    provider(Provider),
    ai_system(System).
provenance(common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_request_not_accepted/1, 'celex:32024R1689/oj#art_41/par_1/a/i').
provenance(harmonised_standard_not_delivered_on_time/1, 'celex:32024R1689/oj#art_41/par_1/a/ii').
provenance(harmonised_standard_insufficiently_addresses_fundamental_rights/1, 'celex:32024R1689/oj#art_41/par_1/a/iii').
provenance(harmonised_standard_does_not_comply_with_request/1, 'celex:32024R1689/oj#art_41/par_1/a/iv').
provenance(harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41/par_1/b').
provenance(harmonised_standard_reference_expected/1, 'celex:32024R1689/oj#art_41/par_1/b').
provenance(must_consult_advisory_forum/2, 'celex:32024R1689/oj#art_41/par_1/unp_2').
provenance(must_inform_committee/2, 'celex:32024R1689/oj#art_41/par_2').
provenance(conformity_with_common_specification/1, 'celex:32024R1689/oj#art_41/par_3').
provenance(presumed_conformity_with_requirements/1, 'celex:32024R1689/oj#art_41/par_3').
provenance(must_repeal_implementing_acts/2, 'celex:32024R1689/oj#art_41/par_4').
provenance(must_justify_technical_solutions/2, 'celex:32024R1689/oj#art_41/par_5').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_41/par_6').
provenance(common_specification_adoption_conditions_fulfilled/1, 'celex:32024R1689/oj#art_41/par_1').
provenance(high_risk_ai_system_or_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_41/par_3').
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
declared(trained_and_tested_on_relevant_data/1, 'high-risk AI system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting within which it is intended to be used', 'celex:32024R1689/oj#art_42').
declared(certified_under_cybersecurity_scheme/1, 'high-risk AI system certified or with a statement of conformity under a cybersecurity scheme pursuant to Regulation (EU) 2019/881', 'celex:32024R1689/oj#art_42').
trained_and_tested_on_relevant_data(S) :-
    ai_system(S),
    training_data(S),
    testing_data(S),
    intended_purpose(S).
certified_under_cybersecurity_scheme(S) :-
    ai_system(S),
    
    true.
presumed_compliance_with_data_requirements(S) :-
    trained_and_tested_on_relevant_data(S).
presumed_compliance_with_cybersecurity_requirements(S) :-
    certified_under_cybersecurity_scheme(S).
provenance(trained_and_tested_on_relevant_data/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliance_with_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliance_with_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(must_follow_conformity_assessment_procedure/2, 'provider must follow a specific conformity assessment procedure for a high-risk AI system', 'celex:32024R1689/oj#art_43').
declared(must_undergo_new_conformity_assessment/2, 'high-risk AI system must undergo a new conformity assessment procedure after substantial modification', 'celex:32024R1689/oj#art_43').
declared(substantial_modification_applies/1, 'change constitutes a substantial modification requiring new conformity assessment', 'celex:32024R1689/oj#art_43').
declared(pre_determined_change/1, 'change pre-determined by the provider and documented in technical documentation', 'celex:32024R1689/oj#art_43').
declared(opt_out_from_third_party_assessment/2, 'product manufacturer may opt out from third-party conformity assessment under specific conditions', 'celex:32024R1689/oj#art_43').
must_follow_conformity_assessment_procedure(Provider, annex_vi) :-
    provider(Provider),
    high_risk_ai_system(S),
    applies_harmonised_standards_or_common_specifications(Provider, S),
    opts_for_internal_control(Provider).
must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    applies_harmonised_standards_or_common_specifications(Provider, S),
    opts_for_notified_body_assessment(Provider).
applies_harmonised_standards_or_common_specifications(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    (   applied_harmonised_standard(Provider, S)
    ;   applied_common_specification(Provider, S)
    ).
must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ applies_harmonised_standards_or_common_specifications(Provider, S).
must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    applied_partial_harmonised_standard(Provider, S).
must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    common_specification_exists_but_not_applied(Provider, S).
must_follow_conformity_assessment_procedure(Provider, annex_vii) :-
    provider(Provider),
    high_risk_ai_system(S),
    harmonised_standard_published_with_restriction_and_restricted_part_applied(Provider, S).
must_act_as_notified_body(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    intended_for_law_enforcement_or_immigration_or_asylum_or_union_institution(S).
must_follow_conformity_assessment_procedure(Provider, annex_vi) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_iii_point_2_to_8(S).
must_follow_conformity_assessment_procedure(Provider, sectoral_legislation) :-
    provider(Provider),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation_annex_i_section_a(S).
opt_out_from_third_party_assessment(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation_annex_i_section_a(S),
    applied_all_harmonised_standards_for_sectoral_requirements(Manufacturer, S),
    applied_all_harmonised_standards_or_common_specifications_for_ai_requirements(Manufacturer, S).
must_undergo_new_conformity_assessment(S) :-
    high_risk_ai_system(S),
    substantial_modification_applies(S).
substantial_modification_applies(S) :-
    high_risk_ai_system(S),
    substantial_modification(S),
    \+ pre_determined_change(S).
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_undergo_new_conformity_assessment/1, 'celex:32024R1689/oj#art_43').
provenance(substantial_modification_applies/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_change/1, 'celex:32024R1689/oj#art_43').
provenance(opt_out_from_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(must_act_as_notified_body/2, 'celex:32024R1689/oj#art_43').
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a').

% ==== celex:32024R1689/oj#art_44 ====
declared(certificate/1, 'certificate issued by a notified body', 'celex:32024R1689/oj#art_44').
declared(certificate_language/2, 'certificate drawn up in a language understandable by authorities', 'celex:32024R1689/oj#art_44').
declared(certificate_validity_period/2, 'certificate valid for a period', 'celex:32024R1689/oj#art_44').
declared(certificate_extension/2, 'certificate validity extended for a period', 'celex:32024R1689/oj#art_44').
declared(supplement_valid/1, 'supplement to a certificate remains valid', 'celex:32024R1689/oj#art_44').
declared(must_suspend_certificate/2, 'notified body must suspend certificate', 'celex:32024R1689/oj#art_44').
declared(must_withdraw_certificate/2, 'notified body must withdraw certificate', 'celex:32024R1689/oj#art_44').
declared(must_impose_restrictions/2, 'notified body must impose restrictions on certificate', 'celex:32024R1689/oj#art_44').
declared(corrective_action_taken/2, 'provider takes corrective action within deadline', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'notified body must give reasons for decision', 'celex:32024R1689/oj#art_44').
declared(appeal_available/1, 'appeal procedure available against notified body decisions', 'celex:32024R1689/oj#art_44').
must_draw_up_certificate_in_language(Body, C) :-
    notified_body(Body),
    certificate(C),
    issued_in_accordance_with(C, 'celex:32024R1689/oj#anx_7'),
    certificate_language(C, Language),
    easily_understood_by_authorities(Language, Body).
certificate_validity_period(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_1'),
    Max = 5.
certificate_validity_period(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_3'),
    Max = 4.
certificate_extension(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_1'),
    Max = 5,
    requested_by_provider(C),
    reassessment_conducted(C).
certificate_extension(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_3'),
    Max = 4,
    requested_by_provider(C),
    reassessment_conducted(C).
supplement_valid(Supplement) :-
    supplement(Supplement),
    supplements(Supplement, Certificate),
    certificate(Certificate),
    certificate_valid(Certificate).
must_suspend_certificate(Body, C) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).
must_withdraw_certificate(Body, C) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).
must_impose_restrictions(Body, C) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).
must_give_reasons(Body, decision(suspend_or_withdraw_or_restrict(C))) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).
appeal_available(decision(notified_body(Body), _)) :-
    notified_body(Body).
provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_language/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension/2, 'celex:32024R1689/oj#art_44').
provenance(supplement_valid/1, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_impose_restrictions/2, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'notified body must inform authority of a matter', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_bodies/2, 'notified body must inform other notified bodies of a matter', 'celex:32024R1689/oj#art_45').
declared(must_provide_information/2, 'notified body must provide information to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/1, 'notified body must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform(Body, issued_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).
must_inform(Body, issued_supplement(Supp)) :-
    notified_body(Body),
    supplement_to_certificate(Supp),
    issued_in_accordance_with_annex_vii(Supp).
must_inform(Body, issued_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).
must_inform(Body, refused_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).
must_inform(Body, restricted_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).
must_inform(Body, suspended_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).
must_inform(Body, withdrawn_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).
must_inform(Body, refused_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).
must_inform(Body, restricted_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).
must_inform(Body, suspended_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).
must_inform(Body, withdrawn_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).
must_inform(Body, circumstances_affecting_scope) :-
    notified_body(Body).
must_inform(Body, circumstances_affecting_conditions) :-
    notified_body(Body).
must_inform(Body, request_from_market_surveillance_authority(Request)) :-
    notified_body(Body),
    market_surveillance_authority(_Authority),
    request_for_information(Request),
    concerns_conformity_assessment_activities(Request).
must_inform(Body, conformity_assessment_activities_performed(Activities)) :-
    notified_body(Body),
    on_request(conformity_assessment_activities_performed).
must_inform(Body, other_activity_performed(Activity)) :-
    notified_body(Body),
    on_request(other_activity_performed).
must_inform_other_bodies(Body, refused_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval).
must_inform_other_bodies(Body, suspended_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval).
must_inform_other_bodies(Body, withdrawn_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval).
must_inform_other_bodies(Body, issued_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    on_request(issued_qms_approval).
must_inform_other_bodies(Body, refused_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).
must_inform_other_bodies(Body, withdrawn_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).
must_inform_other_bodies(Body, suspended_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).
must_inform_other_bodies(Body, restricted_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).
must_inform_other_bodies(Body, issued_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    on_request(issued_certificate).
must_inform_other_bodies(Body, issued_supplement(Supp)) :-
    notified_body(Body),
    supplement_to_certificate(Supp),
    on_request(issued_supplement).
must_provide_information(Body, negative_results(Info)) :-
    notified_body(Body),
    relevant_information(Info),
    concerns_negative_conformity_assessment_results(Info).
must_provide_information(Body, positive_results(Info)) :-
    notified_body(Body),
    relevant_information(Info),
    concerns_positive_conformity_assessment_results(Info),
    on_request(positive_results).
must_safeguard_confidentiality(Body) :-
    notified_body(Body).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(derogation_authorisation/1, 'authorisation for derogation from conformity assessment', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional reason of public security, protection of life/health, environment, or key assets', 'celex:32024R1689/oj#art_46').
declared(urgency_situation/1, 'duly justified situation of urgency', 'celex:32024R1689/oj#art_46').
declared(objection_raised/1, 'objection raised by Member State or Commission', 'celex:32024R1689/oj#art_46').
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(public_security).
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(protection_of_life_and_health).
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(environmental_protection).
may_authorise_derogation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).
derogation_authorisation(A) :-
    may_authorise_derogation(_, _),
    authorisation(A).
authorisation_limited_period(A) :-
    derogation_authorisation(A).
must_complete_conformity_assessment_without_undue_delay(System) :-
    derogation_authorisation(_),
    high_risk_ai_system(System).
may_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(public_security).
may_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(threat_to_life_or_physical_safety).
may_put_into_service_without_authorisation(Authority, System) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(public_security).
may_put_into_service_without_authorisation(Authority, System) :-
    civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(threat_to_life_or_physical_safety).
must_request_authorisation_without_undue_delay(Authority, System) :-
    may_put_into_service_without_authorisation(Authority, System).
must_stop_use_immediately(System) :-
    may_put_into_service_without_authorisation(_, System),
    \+ derogation_authorisation(_).
must_discard_results_immediately(System) :-
    must_stop_use_immediately(System).
must_comply_with_section_2(System) :-
    derogation_authorisation(_),
    high_risk_ai_system(System).
must_inform_commission_and_member_states(Authority, authorisation(A)) :-
    market_surveillance_authority(Authority),
    derogation_authorisation(A).
must_not_cover_sensitive_operational_data(Authority, authorisation(A)) :-
    must_inform_commission_and_member_states(Authority, authorisation(A)),
    law_enforcement_authority(_).
deemed_justified_authorisation(A) :-
    derogation_authorisation(A),
    \+ objection_raised(A).
must_enter_into_consultations(commission, MemberState) :-
    objection_raised(A),
    derogation_authorisation(A),
    issued_by(A, MemberState).
must_consult_operators(commission, Operators) :-
    must_enter_into_consultations(commission, _),
    operator(Operators).
must_decide_justification(commission, A) :-
    must_enter_into_consultations(commission, _),
    derogation_authorisation(A).
must_address_decision(commission, MemberState) :-
    must_decide_justification(commission, _),
    issued_by(_, MemberState).
must_address_decision_to_operators(commission, Operators) :-
    must_decide_justification(commission, _),
    operator(Operators).
must_withdraw_authorisation(Authority, A) :-
    market_surveillance_authority(Authority),
    derogation_authorisation(A),
    unjustified_authorisation(A).
unjustified_authorisation(A) :-
    derogation_authorisation(A),
    \+ deemed_justified_authorisation(A).
derogation_only_under_harmonisation_legislation(System) :-
    high_risk_ai_system(System),
    product_covered_by_annex_i_section_a(System).
provenance(derogation_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_46').
provenance(may_authorise_derogation/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_limited_period/1, 'celex:32024R1689/oj#art_46').
provenance(must_complete_conformity_assessment_without_undue_delay/1, 'celex:32024R1689/oj#art_46').
provenance(may_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_immediately/1, 'celex:32024R1689/oj#art_46').
provenance(must_discard_results_immediately/1, 'celex:32024R1689/oj#art_46').
provenance(must_comply_with_section_2/1, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(must_not_cover_sensitive_operational_data/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_enter_into_consultations/2, 'celex:32024R1689/oj#art_46').
provenance(must_consult_operators/2, 'celex:32024R1689/oj#art_46').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_46').
provenance(must_address_decision/2, 'celex:32024R1689/oj#art_46').
provenance(must_address_decision_to_operators/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(unjustified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(derogation_only_under_harmonisation_legislation/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_eu_declaration_of_conformity/2, 'provider must keep EU declaration of conformity at disposal of authorities', 'celex:32024R1689/oj#art_47').
declared(must_submit_copy_of_eu_declaration_of_conformity/2, 'provider must submit copy of EU declaration of conformity upon request', 'celex:32024R1689/oj#art_47').
declared(must_state_compliance_in_eu_declaration_of_conformity/2, 'EU declaration of conformity must state compliance with Section 2 requirements', 'celex:32024R1689/oj#art_47').
declared(must_contain_information_in_eu_declaration_of_conformity/2, 'EU declaration of conformity must contain Annex V information', 'celex:32024R1689/oj#art_47').
declared(must_translate_eu_declaration_of_conformity/2, 'EU declaration of conformity must be translated for relevant authorities', 'celex:32024R1689/oj#art_47').
declared(must_draw_up_single_eu_declaration_of_conformity/2, 'single EU declaration of conformity for multiple Union legislation', 'celex:32024R1689/oj#art_47').
declared(must_assume_responsibility_for_compliance/2, 'provider assumes responsibility for compliance by drawing up declaration', 'celex:32024R1689/oj#art_47').
declared(must_keep_eu_declaration_of_conformity_up_to_date/2, 'provider must keep EU declaration of conformity up-to-date', 'celex:32024R1689/oj#art_47').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_47').
must_draw_up_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_submit_copy_of_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System),
    national_competent_authority(Authority),
    request(Authority, copy_of_eu_declaration_of_conformity(System)).
must_state_compliance_in_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_contain_information_in_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_translate_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System),
    national_competent_authority(Authority),
    placed_on_market_or_made_available_in(System, MemberState),
    authority_of(Authority, MemberState).
must_draw_up_single_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System).
must_assume_responsibility_for_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_keep_eu_declaration_of_conformity_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_of_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_state_compliance_in_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_contain_information_in_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_translate_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_single_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity_up_to_date/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(ce_marking_subject_to_general_principles/1, 'CE marking subject to general principles of Regulation 765/2008', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking_used/1, 'digital CE marking used for digitally provided high-risk AI systems', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_visibly/1, 'CE marking affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_to_packaging/1, 'CE marking affixed to packaging or accompanying documentation', 'celex:32024R1689/oj#art_48').
declared(notified_body_number_follows_ce_marking/1, 'identification number of notified body follows CE marking', 'celex:32024R1689/oj#art_48').
declared(notified_body_number_in_promotional_material/1, 'notified body number indicated in promotional material', 'celex:32024R1689/oj#art_48').
ce_marking_subject_to_general_principles(ce_marking) :-
    true.
digital_ce_marking_used(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_interface(S).
digital_ce_marking_used(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_machine_readable_code(S).
digital_ce_marking_used(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_electronic_means(S).
ce_marking_affixed_visibly(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixed_to_packaging(S).
ce_marking_affixed_to_packaging(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixed_visibly(S).
notified_body_number_follows_ce_marking(S) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure_applies(S, art_43).
must_affix_notified_body_number(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    notified_body_number_follows_ce_marking(S).
must_affix_notified_body_number(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    notified_body_number_follows_ce_marking(S),
    under_instructions_of(Provider, Body),
    notified_body(Body).
must_affix_notified_body_number(Representative, S) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    notified_body_number_follows_ce_marking(S),
    under_instructions_of(Representative, Body),
    notified_body(Body).
notified_body_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    promotional_material_mentions_ce_marking(S).
ce_marking_indicates_other_law_compliance(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_ce_marking(S).
provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking_used/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_visibly/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_to_packaging/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_follows_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_notified_body_number/2, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_law_compliance/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(must_register_self_and_system/2, 'provider or authorised representative must register themselves and their system in the EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_self_and_use/2, 'deployer must register themselves and the use of the system in the EU database', 'celex:32024R1689/oj#art_49').
declared(registration_in_secure_section/1, 'registration must be in a secure non-public section of the EU database', 'celex:32024R1689/oj#art_49').
declared(registration_at_national_level/1, 'system must be registered at national level', 'celex:32024R1689/oj#art_49').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_6').
declared(annex_3_system/1, 'high-risk AI system listed in Annex III', 'celex:32024R1689/oj#anx_3').
declared(annex_3_point_2_system/1, 'high-risk AI system listed in Annex III point 2', 'celex:32024R1689/oj#anx_3/pnt_2').
declared(annex_3_point_1_6_7_system/1, 'high-risk AI system listed in Annex III points 1, 6 or 7', 'celex:32024R1689/oj#anx_3/pnt_1').
declared(law_enforcement_migration_asylum_border_system/1, 'system in areas of law enforcement, migration, asylum and border control management', 'celex:32024R1689/oj#art_49/par_4').
declared(public_authority_deployer/1, 'deployer that is a public authority, Union institution, body, office, agency or person acting on their behalf', 'celex:32024R1689/oj#art_49/par_3').
declared(concluded_not_high_risk/2, 'provider concluded system is not high-risk under Article 6(3)', 'celex:32024R1689/oj#art_6/par_3').
must_register_self_and_system(Actor, System) :-
    annex_3_system(System),
    \+ annex_3_point_2_system(System),
    ( provider(Actor) ; authorised_representative(Actor) ),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register_self_and_system(Actor, System) :-
    concluded_not_high_risk(Actor, System),
    ( provider(Actor) ; authorised_representative(Actor) ),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register_self_and_use(Deployer, System) :-
    annex_3_system(System),
    \+ annex_3_point_2_system(System),
    public_authority_deployer(Deployer),
    deployer(Deployer),
    putting_into_service(System).
registration_in_secure_section(System) :-
    annex_3_point_1_6_7_system(System),
    law_enforcement_migration_asylum_border_system(System).
registration_at_national_level(System) :-
    annex_3_point_2_system(System).
provenance(must_register_self_and_system/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_self_and_use/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_section/1, 'celex:32024R1689/oj#art_49').
provenance(registration_at_national_level/1, 'celex:32024R1689/oj#art_49').
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
declared(must_inform/2, 'obligation to inform natural persons', 'celex:32024R1689/oj#art_50').
declared(must_disclose/2, 'obligation to disclose content as artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(must_mark_outputs/2, 'obligation to mark outputs as artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(must_encourage_codes_of_practice/2, 'obligation to encourage codes of practice', 'celex:32024R1689/oj#art_50').
declared(permitted_informing_exception/1, 'circumstance where informing obligation does not apply', 'celex:32024R1689/oj#art_50').
declared(permitted_marking_exception/1, 'circumstance where marking obligation does not apply', 'celex:32024R1689/oj#art_50').
declared(permitted_disclosure_exception/1, 'circumstance where disclosure obligation does not apply', 'celex:32024R1689/oj#art_50').
declared(permitted_limited_disclosure/1, 'circumstance where limited disclosure applies', 'celex:32024R1689/oj#art_50').
declared(permitted_text_disclosure_exception/1, 'circumstance where text disclosure obligation does not apply', 'celex:32024R1689/oj#art_50').
declared(deep_fake_content/1, 'content constituting a deep fake', 'celex:32024R1689/oj#art_50').
declared(synthetic_content/1, 'synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(artistic_work/1, 'evidently artistic, creative, satirical, fictional or analogous work', 'celex:32024R1689/oj#art_50').
declared(public_interest_text/1, 'text published to inform the public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(human_review/1, 'content has undergone human review or editorial control', 'celex:32024R1689/oj#art_50').
declared(editorial_responsibility/2, 'natural or legal person holds editorial responsibility for publication', 'celex:32024R1689/oj#art_50').
declared(authorised_for_criminal_offences/1, 'use authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(assistive_function/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(does_not_substantially_alter/1, 'AI system does not substantially alter input data or semantics', 'celex:32024R1689/oj#art_50').
declared(publicly_available_for_reporting/1, 'AI system available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
must_inform(Provider, interaction(System)) :-
    provider(Provider),
    ai_system(System),
    intended_purpose(System, interact_directly_with_natural_persons),
    \+ obvious_interaction(System),
    \+ permitted_informing_exception(System).
permitted_informing_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System),
    \+ publicly_available_for_reporting(System).
obvious_interaction(System) :-
    ai_system(System),
    
    true.
must_mark_outputs(Provider, System) :-
    provider(Provider),
    ai_system(System),
    synthetic_content(System),
    \+ permitted_marking_exception(System).
permitted_marking_exception(System) :-
    ai_system(System),
    assistive_function(System).
permitted_marking_exception(System) :-
    ai_system(System),
    does_not_substantially_alter(System).
permitted_marking_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System).
must_inform(Deployer, operation(System)) :-
    deployer(Deployer),
    emotion_recognition_system(System),
    \+ permitted_informing_exception(System).
must_inform(Deployer, operation(System)) :-
    deployer(Deployer),
    biometric_categorisation_system(System),
    \+ permitted_informing_exception(System).
permitted_informing_exception(System) :-
    ( emotion_recognition_system(System) ; biometric_categorisation_system(System) ),
    authorised_for_criminal_offences(System).
must_disclose(Deployer, deep_fake(System)) :-
    deployer(Deployer),
    ai_system(System),
    deep_fake_content(System),
    \+ permitted_disclosure_exception(System),
    \+ permitted_limited_disclosure(System).
permitted_disclosure_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System).
permitted_limited_disclosure(System) :-
    ai_system(System),
    artistic_work(System).
must_disclose(Deployer, public_interest_text(System)) :-
    deployer(Deployer),
    ai_system(System),
    public_interest_text(System),
    \+ permitted_text_disclosure_exception(System).
permitted_text_disclosure_exception(System) :-
    ai_system(System),
    authorised_for_criminal_offences(System).
permitted_text_disclosure_exception(System) :-
    ai_system(System),
    human_review(System),
    editorial_responsibility(_Person, System).
must_encourage_codes_of_practice(ai_office, codes_of_practice(detection_and_labelling)) :-
    ai_office(AI_Office).
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_outputs/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_codes_of_practice/2, 'celex:32024R1689/oj#art_50').
provenance(permitted_informing_exception/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_marking_exception/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_disclosure_exception/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_limited_disclosure/1, 'celex:32024R1689/oj#art_50').
provenance(permitted_text_disclosure_exception/1, 'celex:32024R1689/oj#art_50').
provenance(deep_fake_content/1, 'celex:32024R1689/oj#art_50').
provenance(synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_work/1, 'celex:32024R1689/oj#art_50').
provenance(public_interest_text/1, 'celex:32024R1689/oj#art_50').
provenance(human_review/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility/2, 'celex:32024R1689/oj#art_50').
provenance(authorised_for_criminal_offences/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function/1, 'celex:32024R1689/oj#art_50').
provenance(does_not_substantially_alter/1, 'celex:32024R1689/oj#art_50').
provenance(publicly_available_for_reporting/1, 'celex:32024R1689/oj#art_50').
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
declared(systemic_risk_classification_applies/1, 'general-purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_51').
systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent_capabilities(M).
declared(commission_decision_equivalent_capabilities/1, 'Commission decision that model has equivalent capabilities or impact', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_b').
commission_decision_equivalent_capabilities(M) :-
    general_purpose_ai_model(M),
    
    
    true.
declared(high_impact_capabilities_presumed/1, 'presumed high impact capabilities based on computation threshold', 'celex:32024R1689/oj#art_51/par_2').
high_impact_capabilities_presumed(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation(M, C),
    C > 1.0e25.
declared(cumulative_training_computation/2, 'cumulative amount of computation used for training measured in floating point operations', 'celex:32024R1689/oj#art_51/par_2').
declared(must_adopt_delegated_acts/2, 'Commission must adopt delegated acts to amend thresholds and supplement benchmarks', 'celex:32024R1689/oj#art_51/par_3').
must_adopt_delegated_acts(Commission, delegated_acts(amend(thresholds, benchmarks, indicators))) :-
    true.
provenance(systemic_risk_classification_applies/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_b').
provenance(high_impact_capabilities_presumed/1, 'celex:32024R1689/oj#art_51/par_2').
provenance(cumulative_training_computation/2, 'celex:32024R1689/oj#art_51/par_2').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51/par_3').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_52 ====
declared(must_notify_commission/2, 'provider must notify Commission of model meeting systemic risk condition', 'celex:32024R1689/oj#art_52').
declared(may_designate_systemic_risk/1, 'Commission may designate model as presenting systemic risk', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments/2, 'provider may present arguments against systemic risk classification', 'celex:32024R1689/oj#art_52').
declared(must_reject_arguments/1, 'Commission must reject insufficiently substantiated arguments', 'celex:32024R1689/oj#art_52').
declared(considered_systemic_risk/1, 'model considered to have systemic risk after rejection', 'celex:32024R1689/oj#art_52').
declared(may_request_reassessment/2, 'provider may request reassessment of systemic risk designation', 'celex:32024R1689/oj#art_52').
declared(must_publish_list/0, 'Commission must publish and maintain list of systemic risk models', 'celex:32024R1689/oj#art_52').
must_notify_commission(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    within_two_weeks_of_condition_met_or_known(Model).
may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    \+ notified_commission_of_systemic_risk(Model).
notified_commission_of_systemic_risk(Model) :-
    must_notify_commission(_, Model).
may_present_arguments(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    presents_arguments_against_systemic_risk(Provider, Model).
must_reject_arguments(arguments(Provider, Model)) :-
    may_present_arguments(Provider, Model),
    \+ sufficiently_substantiated(arguments(Provider, Model)),
    \+ demonstrated_no_systemic_risk(Provider, Model).
considered_systemic_risk(Model) :-
    must_reject_arguments(arguments(_, Model)).
may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    ex_officio_or_qualified_alert(Model),
    meets_annex_13_criteria(Model).
may_request_reassessment(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    designated_systemic_risk_under_par_4(Model),
    reasoned_request(Provider, Model),
    new_reasons_since_designation(Provider, Model),
    at_least_six_months_since_designation(Model).
must_publish_list :-
    true.
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(must_reject_arguments/1, 'celex:32024R1689/oj#art_52').
provenance(considered_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_request_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list/0, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up and keep up-to-date technical documentation of the model', 'celex:32024R1689/oj#art_53').
declared(must_make_available_information/2, 'provider must make available information and documentation to downstream providers', 'celex:32024R1689/oj#art_53').
declared(must_put_in_place_copyright_policy/2, 'provider must put in place a policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(must_make_publicly_available_summary/2, 'provider must make publicly available a summary of training content', 'celex:32024R1689/oj#art_53').
declared(must_cooperate/2, 'provider must cooperate with Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(may_rely_on_code_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(must_demonstrate_alternative_compliance/2, 'provider must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_53').
declared(open_source_exception_applies/1, 'exception for free and open-source models applies', 'celex:32024R1689/oj#art_53').
declared(systemic_risk_exception_applies/1, 'exception does not apply to models with systemic risks', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_make_available_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_put_in_place_copyright_policy(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_make_publicly_available_summary(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_cooperate(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
may_rely_on_code_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_demonstrate_alternative_compliance(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ may_rely_on_code_of_practice(Provider, Model).
open_source_exception_applies(Model) :-
    general_purpose_ai_model(Model),
    released_under_free_open_source_licence(Model),
    parameters_made_publicly_available(Model),
    \+ systemic_risk_exception_applies(Model).
systemic_risk_exception_applies(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).
released_under_free_open_source_licence(Model) :-
    general_purpose_ai_model(Model).
parameters_made_publicly_available(Model) :-
    general_purpose_ai_model(Model).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(open_source_exception_applies/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_exception_applies/1, 'celex:32024R1689/oj#art_53').
provenance(released_under_free_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(parameters_made_publicly_available/1, 'celex:32024R1689/oj#art_53').
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
declared(must_appoint_authorised_representative/2, 'provider must appoint authorised representative', 'celex:32024R1689/oj#art_54').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform_mandate_tasks/2, 'authorised representative must perform mandate tasks', 'celex:32024R1689/oj#art_54').
declared(must_provide_mandate_copy/2, 'authorised representative must provide mandate copy to AI Office', 'celex:32024R1689/oj#art_54').
declared(must_verify_documentation/2, 'authorised representative must verify technical documentation and obligations', 'celex:32024R1689/oj#art_54').
declared(must_keep_documentation/2, 'authorised representative must keep technical documentation and contact details', 'celex:32024R1689/oj#art_54').
declared(must_provide_information/2, 'authorised representative must provide information and documentation', 'celex:32024R1689/oj#art_54').
declared(must_cooperate/2, 'authorised representative must cooperate with authorities', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform_termination/2, 'authorised representative must inform AI Office of mandate termination', 'celex:32024R1689/oj#art_54').
declared(exempt_open_source_model/1, 'general-purpose AI model exempt from authorised representative obligation', 'celex:32024R1689/oj#art_54').
must_appoint_authorised_representative(Provider, authorised_representative(Representative)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    placing_on_market(Model),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    established_in_union(Representative),
    \+ exempt_open_source_model(Model).
must_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    appointed_by(Representative, Provider).
must_perform_mandate_tasks(Representative, mandate_tasks(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider).
must_provide_mandate_copy(Representative, mandate_copy(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    ai_office(AO).
must_verify_documentation(Representative, verification(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider).
must_keep_documentation(Representative, keep(documentation(Provider))) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    general_purpose_ai_model(Model),
    placed_on_market(Model).
must_provide_information(Representative, provide(information(Provider))) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    ai_office(AO).
must_cooperate(Representative, cooperate(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    ai_office(AO).
must_be_addressable(Representative, addressable(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider).
must_terminate_mandate(Representative, terminate(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    acting_contrary_to_obligations(Provider).
must_inform_termination(Representative, inform_termination(Provider)) :-
    authorised_representative(Representative),
    appointed_by(Representative, Provider),
    terminated_mandate(Representative, Provider),
    ai_office(AO).
exempt_open_source_model(Model) :-
    general_purpose_ai_model(Model),
    released_under_free_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ presents_systemic_risks(Model).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandate_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(must_be_addressable/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_open_source_model/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(model_evaluation/1, 'evaluation of a general-purpose AI model', 'celex:32024R1689/oj#art_55').
declared(adversarial_testing/1, 'testing of a model to identify and mitigate systemic risks', 'celex:32024R1689/oj#art_55').
declared(systemic_risk_assessment/1, 'assessment of possible systemic risks', 'celex:32024R1689/oj#art_55').
declared(systemic_risk_mitigation/1, 'mitigation of possible systemic risks', 'celex:32024R1689/oj#art_55').
declared(serious_incident_report/1, 'report of relevant information about serious incidents', 'celex:32024R1689/oj#art_55').
declared(corrective_measure/1, 'possible corrective measure to address serious incidents', 'celex:32024R1689/oj#art_55').
declared(cybersecurity_protection/1, 'adequate level of cybersecurity protection', 'celex:32024R1689/oj#art_55').
declared(code_of_practice/1, 'code of practice within the meaning of Article 56', 'celex:32024R1689/oj#art_55').
declared(presumption_of_conformity/1, 'presumption of conformity granted by compliance with harmonised standards', 'celex:32024R1689/oj#art_55').
declared(alternative_compliance_means/1, 'alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    model_evaluation(M),
    adversarial_testing(M).
must_assess_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    systemic_risk_assessment(M).
must_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    systemic_risk_mitigation(M).
must_report_serious_incidents(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    serious_incident_report(M).
must_report_corrective_measures(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    corrective_measure(M).
must_ensure_cybersecurity(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    cybersecurity_protection(M).
may_rely_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    code_of_practice(M).
presumption_of_conformity(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    harmonised_standard(M).
must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ code_of_practice(M),
    \+ harmonised_standard(M),
    alternative_compliance_means(M).
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_corrective_measures/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity/2, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(code_of_practice/1, 'code of practice drawn up under Article 56', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_participant/1, 'entity participating in a code of practice', 'celex:32024R1689/oj#art_56').
declared(systemic_risk_at_union_level/1, 'systemic risk identified at Union level', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate(ai_office, drawing_up_of_codes_of_practice) :-
    code_of_practice(_).
must_aim_to_cover(ai_office, obligations(art_53)) :-
    code_of_practice(_).
must_aim_to_cover(ai_office, obligations(art_55)) :-
    code_of_practice(_).
must_aim_to_cover(board, obligations(art_53)) :-
    code_of_practice(_).
must_aim_to_cover(board, obligations(art_55)) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, information_kept_up_to_date) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, adequate_detail_for_training_content_summary) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, identification_of_systemic_risks) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, measures_for_systemic_risk_management) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, information_kept_up_to_date) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, adequate_detail_for_training_content_summary) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, identification_of_systemic_risks) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, measures_for_systemic_risk_management) :-
    code_of_practice(_).
may_invite(ai_office, provider_of_general_purpose_ai_model(P)) :-
    provider(P),
    general_purpose_ai_model(_M).
may_invite(ai_office, national_competent_authority(A)) :-
    national_competent_authority(A).
may_support(civil_society_organisation, drawing_up_of_codes_of_practice).
may_support(industry, drawing_up_of_codes_of_practice).
may_support(academia, drawing_up_of_codes_of_practice).
may_support(downstream_provider, drawing_up_of_codes_of_practice).
may_support(independent_expert, drawing_up_of_codes_of_practice).
must_aim_to_ensure(ai_office, clear_objectives_and_commitments(C)) :-
    code_of_practice(C).
must_aim_to_ensure(board, clear_objectives_and_commitments(C)) :-
    code_of_practice(C).
must_aim_to_ensure_reporting(ai_office, C) :-
    code_of_practice(C).
must_reflect_differences_in_size_and_capacity(C) :-
    code_of_practice(C).
must_monitor_and_evaluate(ai_office, achievement_of_objectives(C)) :-
    code_of_practice(C).
must_monitor_and_evaluate(board, achievement_of_objectives(C)) :-
    code_of_practice(C).
must_assess_coverage(ai_office, C) :-
    code_of_practice(C).
must_assess_coverage(board, C) :-
    code_of_practice(C).
must_publish_assessment(ai_office, adequacy(C)) :-
    code_of_practice(C).
must_publish_assessment(board, adequacy(C)) :-
    code_of_practice(C).
may_approve(commission, code_of_practice(C)) :-
    code_of_practice(C).
may_invite_adherence(ai_office, provider_of_general_purpose_ai_model(P)) :-
    provider(P),
    general_purpose_ai_model(_M).
permitted_limited_adherence(P, obligations(art_53)) :-
    provider(P),
    general_purpose_ai_model(_M),
    \+ systemic_risk(_M),
    \+ declared_interest_in_full_code(P).
must_encourage_and_facilitate_review(ai_office, C) :-
    code_of_practice(C).
must_assist_in_assessment_of_standards(ai_office).
must_be_ready_by(C, date(2025, 5, 2)) :-
    code_of_practice(C).
must_take_necessary_steps(ai_office, inviting_providers).
may_provide_common_rules(commission, obligations(art_53)) :-
    \+ code_of_practice_finalised_by(date(2025, 8, 2)).
may_provide_common_rules(commission, obligations(art_55)) :-
    \+ code_of_practice_finalised_by(date(2025, 8, 2)).
may_provide_common_rules(commission, obligations(art_53)) :-
    code_of_practice_deemed_inadequate.
may_provide_common_rules(commission, obligations(art_55)) :-
    code_of_practice_deemed_inadequate.
declared(code_of_practice_finalised_by/1, 'a code of practice has been finalised by the given date', 'celex:32024R1689/oj#art_56').
declared(code_of_practice_deemed_inadequate/0, 'the AI Office deems the code of practice inadequate', 'celex:32024R1689/oj#art_56').
declared(declared_interest_in_full_code/1, 'provider explicitly declares interest in joining the full code', 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_cover/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_cover_issue/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite/2, 'celex:32024R1689/oj#art_56').
provenance(may_support/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_reporting/2, 'celex:32024R1689/oj#art_56').
provenance(must_reflect_differences_in_size_and_capacity/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(may_approve/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_limited_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate_review/2, 'celex:32024R1689/oj#art_56').
provenance(must_assist_in_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(must_be_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_participant/1, 'celex:32024R1689/oj#art_56').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_finalised_by/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_deemed_inadequate/0, 'celex:32024R1689/oj#art_56').
provenance(declared_interest_in_full_code/1, 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').

% ==== celex:32024R1689/oj#art_57 ====
declared(must_establish_sandbox/2, 'Member State must ensure competent authority establishes AI regulatory sandbox', 'celex:32024R1689/oj#art_57/par_1').
declared(sandbox_operational_by/2, 'sandbox must be operational by given date', 'celex:32024R1689/oj#art_57/par_1').
declared(may_establish_joint_sandbox/2, 'sandbox may be established jointly with other Member States', 'celex:32024R1689/oj#art_57/par_1').
declared(may_fulfil_obligation_by_participation/2, 'obligation may be fulfilled by participating in existing sandbox', 'celex:32024R1689/oj#art_57/par_1/unp_2').
declared(may_establish_additional_sandbox/2, 'additional sandboxes at regional/local level or jointly', 'celex:32024R1689/oj#art_57/par_2').
declared(may_establish_edps_sandbox/1, 'EDPS may establish sandbox for Union institutions', 'celex:32024R1689/oj#art_57/par_3').
declared(must_allocate_resources/2, 'Member State must ensure competent authorities allocate sufficient resources', 'celex:32024R1689/oj#art_57/par_4').
declared(must_cooperate_with_authorities/2, 'competent authorities shall cooperate with other relevant authorities', 'celex:32024R1689/oj#art_57/par_4').
declared(must_ensure_cooperation_between_sandboxes/2, 'Member State must ensure cooperation between sandbox authorities', 'celex:32024R1689/oj#art_57/par_4').
declared(sandbox_provides_controlled_environment/1, 'sandbox provides controlled environment for innovation', 'celex:32024R1689/oj#art_57/par_5').
declared(sandbox_may_include_real_world_testing/1, 'sandbox may include testing in real world conditions', 'celex:32024R1689/oj#art_57/par_5').
declared(must_provide_guidance/2, 'competent authority must provide guidance, supervision and support', 'celex:32024R1689/oj#art_57/par_6').
declared(must_provide_regulatory_guidance/2, 'competent authority must provide guidance on regulatory expectations', 'celex:32024R1689/oj#art_57/par_7').
declared(must_provide_written_proof/3, 'competent authority must provide written proof on request', 'celex:32024R1689/oj#art_57/par_7').
declared(must_provide_exit_report/2, 'competent authority must provide exit report', 'celex:32024R1689/oj#art_57/par_7').
declared(may_use_documentation_for_compliance/2, 'provider may use documentation to demonstrate compliance', 'celex:32024R1689/oj#art_57/par_7').
declared(must_take_documentation_positively/2, 'market surveillance authorities and notified bodies must take documentation positively', 'celex:32024R1689/oj#art_57/par_7').
declared(authorised_to_access_exit_reports/2, 'Commission and Board authorised to access exit reports', 'celex:32024R1689/oj#art_57/par_8').
declared(may_make_exit_report_public/1, 'exit report may be made publicly available', 'celex:32024R1689/oj#art_57/par_8').
declared(sandbox_objective/1, 'objective of AI regulatory sandbox', 'celex:32024R1689/oj#art_57/par_9').
declared(must_associate_data_protection_authorities/2, 'competent authority must associate data protection authorities', 'celex:32024R1689/oj#art_57/par_10').
declared(sandbox_not_affect_supervisory_powers/1, 'sandbox does not affect supervisory powers', 'celex:32024R1689/oj#art_57/par_11').
declared(must_mitigate_significant_risks/2, 'significant risks must result in adequate mitigation', 'celex:32024R1689/oj#art_57/par_11').
declared(may_suspend_testing/2, 'competent authority may suspend testing or participation', 'celex:32024R1689/oj#art_57/par_11').
declared(must_inform_ai_office_of_suspension/2, 'competent authority must inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57/par_11').
declared(remain_liable/2, 'providers remain liable for damage under applicable law', 'celex:32024R1689/oj#art_57/par_12').
declared(exempt_from_administrative_fines/2, 'exempt from administrative fines under conditions', 'celex:32024R1689/oj#art_57/par_12').
declared(must_facilitate_cross_border_cooperation/1, 'sandbox must facilitate cross-border cooperation', 'celex:32024R1689/oj#art_57/par_13').
declared(must_coordinate_within_board/2, 'competent authorities must coordinate within the Board', 'celex:32024R1689/oj#art_57/par_14').
declared(must_inform_of_establishment/2, 'competent authority must inform AI Office and Board of sandbox establishment', 'celex:32024R1689/oj#art_57/par_15').
declared(must_maintain_sandbox_list/1, 'AI Office must maintain public list of sandboxes', 'celex:32024R1689/oj#art_57/par_15').
declared(must_submit_annual_reports/2, 'competent authority must submit annual reports', 'celex:32024R1689/oj#art_57/par_16').
declared(must_make_reports_public/2, 'competent authority must make annual reports public', 'celex:32024R1689/oj#art_57/par_16').
declared(must_develop_single_interface/1, 'Commission must develop single interface for sandboxes', 'celex:32024R1689/oj#art_57/par_17').
must_establish_sandbox(MemberState, sandbox(national)) :-
    member_state(MemberState).
sandbox_operational_by(sandbox(national), date(2026, 8, 2)).
may_establish_joint_sandbox(MemberState, sandbox(joint(OtherStates))) :-
    member_state(MemberState),
    member_states(OtherStates).
may_fulfil_obligation_by_participation(MemberState, existing_sandbox(S)) :-
    member_state(MemberState),
    ai_regulatory_sandbox(S),
    participation_provides_equivalent_coverage(S, MemberState).
may_establish_additional_sandbox(MemberState, sandbox(regional)) :-
    member_state(MemberState).
may_establish_additional_sandbox(MemberState, sandbox(local)) :-
    member_state(MemberState).
may_establish_additional_sandbox(MemberState, sandbox(joint(OtherStates))) :-
    member_state(MemberState),
    member_states(OtherStates).
may_establish_edps_sandbox(sandbox(edps)) :-
    edps(edps).
must_allocate_resources(MemberState, sandbox_authorities) :-
    member_state(MemberState).
must_cooperate_with_authorities(Authority, other_relevant_authorities) :-
    national_competent_authority(Authority).
must_ensure_cooperation_between_sandboxes(MemberState, sandbox_authorities) :-
    member_state(MemberState).
sandbox_provides_controlled_environment(S) :-
    ai_regulatory_sandbox(S).
sandbox_may_include_real_world_testing(S) :-
    ai_regulatory_sandbox(S).
must_provide_guidance(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
must_provide_regulatory_guidance(Authority, participants(Provider)) :-
    national_competent_authority(Authority),
    provider(Provider).
must_provide_written_proof(Authority, Provider, activities(S)) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_regulatory_sandbox(S).
must_provide_exit_report(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
may_use_documentation_for_compliance(Provider, documentation(exit_report, written_proof)) :-
    provider(Provider).
must_take_documentation_positively(Authority, documentation(exit_report, written_proof)) :-
    market_surveillance_authority(Authority).
must_take_documentation_positively(Body, documentation(exit_report, written_proof)) :-
    notified_body(Body).
authorised_to_access_exit_reports(commission_and_board, exit_reports) :-
    true.
may_make_exit_report_public(exit_report) :-
    true.
sandbox_objective(improving_legal_certainty).
sandbox_objective(sharing_best_practices).
sandbox_objective(fostering_innovation).
sandbox_objective(evidence_based_regulatory_learning).
sandbox_objective(facilitating_market_access).
must_associate_data_protection_authorities(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
sandbox_not_affect_supervisory_powers(S) :-
    ai_regulatory_sandbox(S).
must_mitigate_significant_risks(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
may_suspend_testing(Authority, testing_process) :-
    national_competent_authority(Authority).
may_suspend_testing(Authority, participation_in_sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
must_inform_ai_office_of_suspension(Authority, decision(suspension)) :-
    national_competent_authority(Authority).
remain_liable(Provider, damage_to_third_parties) :-
    provider(Provider).
must_facilitate_cross_border_cooperation(S) :-
    ai_regulatory_sandbox(S).
must_coordinate_within_board(Authority, board) :-
    national_competent_authority(Authority).
must_inform_of_establishment(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
must_maintain_sandbox_list(ai_office) :-
    true.
must_submit_annual_reports(Authority, sandbox(S)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(S).
must_make_reports_public(Authority, annual_reports) :-
    national_competent_authority(Authority).
must_develop_single_interface(commission) :-
    true.
provenance(must_establish_sandbox/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(sandbox_operational_by/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(may_establish_joint_sandbox/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(may_fulfil_obligation_by_participation/2, 'celex:32024R1689/oj#art_57/par_1/unp_2').
provenance(may_establish_additional_sandbox/2, 'celex:32024R1689/oj#art_57/par_2').
provenance(may_establish_edps_sandbox/1, 'celex:32024R1689/oj#art_57/par_3').
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(must_ensure_cooperation_between_sandboxes/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(sandbox_provides_controlled_environment/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(sandbox_may_include_real_world_testing/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(must_provide_guidance/2, 'celex:32024R1689/oj#art_57/par_6').
provenance(must_provide_regulatory_guidance/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_provide_written_proof/3, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(may_use_documentation_for_compliance/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_take_documentation_positively/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(authorised_to_access_exit_reports/2, 'celex:32024R1689/oj#art_57/par_8').
provenance(may_make_exit_report_public/1, 'celex:32024R1689/oj#art_57/par_8').
provenance(sandbox_objective/1, 'celex:32024R1689/oj#art_57/par_9').
provenance(must_associate_data_protection_authorities/2, 'celex:32024R1689/oj#art_57/par_10').
provenance(sandbox_not_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57/par_11').
provenance(must_mitigate_significant_risks/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(may_suspend_testing/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(remain_liable/2, 'celex:32024R1689/oj#art_57/par_12').
provenance(exempt_from_administrative_fines/2, 'celex:32024R1689/oj#art_57/par_12').
provenance(must_facilitate_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57/par_13').
provenance(must_coordinate_within_board/2, 'celex:32024R1689/oj#art_57/par_14').
provenance(must_inform_of_establishment/2, 'celex:32024R1689/oj#art_57/par_15').
provenance(must_maintain_sandbox_list/1, 'celex:32024R1689/oj#art_57/par_15').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_57/par_16').
provenance(must_make_reports_public/2, 'celex:32024R1689/oj#art_57/par_16').
provenance(must_develop_single_interface/1, 'celex:32024R1689/oj#art_57/par_17').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts specifying detailed arrangements for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(sandbox_open_to/2, 'AI regulatory sandbox is open to an applicant', 'celex:32024R1689/oj#art_58').
declared(sandbox_access_free_for/2, 'access to AI regulatory sandbox is free of charge for an entity', 'celex:32024R1689/oj#art_58').
declared(sandbox_participation_limited_period/1, 'participation in AI regulatory sandbox is limited to an appropriate period', 'celex:32024R1689/oj#art_58').
declared(must_direct_to_pre_deployment_services/2, 'prospective providers shall be directed to pre-deployment services', 'celex:32024R1689/oj#art_58').
declared(must_agree_terms_for_testing/2, 'national competent authorities shall agree terms and conditions for testing in real world conditions within sandbox', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts(Commission, ai_regulatory_sandbox) :-
    ai_office(Commission).
sandbox_open_to(Sandbox, Applicant) :-
    ai_regulatory_sandbox(Sandbox),
    ( provider(Applicant) ; prospective_provider(Applicant) ),
    fulfils_eligibility_and_selection_criteria(Applicant, Sandbox).
sandbox_access_free_for(Sandbox, Entity) :-
    ai_regulatory_sandbox(Sandbox),
    sme(Entity),
    \+ exceptional_costs_recovered(Entity, Sandbox).
sandbox_participation_limited_period(Participation) :-
    period_appropriate_to_project(Participation).
must_direct_to_pre_deployment_services(Authority, ProspectiveProvider) :-
    national_competent_authority(Authority),
    prospective_provider(ProspectiveProvider),
    sme_or_startup(ProspectiveProvider).
must_agree_terms_for_testing(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    must_agree_terms(Authority, terms(Testing, Participant)).
declared(prospective_provider/1, 'entity that intends to become a provider of an AI system', 'celex:32024R1689/oj#art_58').
declared(fulfils_eligibility_and_selection_criteria/2, 'applicant fulfils eligibility and selection criteria for sandbox', 'celex:32024R1689/oj#art_58').
declared(sme/1, 'small or medium-sized enterprise, including start-ups', 'celex:32024R1689/oj#art_58').
declared(exceptional_costs_recovered/2, 'exceptional costs recovered by national competent authority', 'celex:32024R1689/oj#art_58').
declared(period_appropriate_to_project/1, 'period appropriate to complexity and scale of the project', 'celex:32024R1689/oj#art_58').
declared(sme_or_startup/1, 'SME or start-up', 'celex:32024R1689/oj#art_58').
declared(supervised_within_sandbox/2, 'testing supervised within the framework of an AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(must_agree_terms/2, 'authority shall agree terms and conditions with participants', 'celex:32024R1689/oj#art_58').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_open_to/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_access_free_for/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_participation_limited_period/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_terms_for_testing/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_processing_in_sandbox/1, 'processing of personal data in AI regulatory sandbox under Article 59', 'celex:32024R1689/oj#art_59').
declared(substantial_public_interest_area/1, 'area of substantial public interest for sandbox AI development', 'celex:32024R1689/oj#art_59/par_1/a').
declared(sandbox_data_processing_environment/1, 'functionally separate, isolated and protected data processing environment', 'celex:32024R1689/oj#art_59/par_1/d').
declared(sandbox_personal_data_logs/1, 'logs of processing of personal data in sandbox context', 'celex:32024R1689/oj#art_59/par_1/h').
declared(sandbox_project_summary/1, 'short summary of AI project developed in sandbox', 'celex:32024R1689/oj#art_59/par_1/j').
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

% ==== celex:32024R1689/oj#art_60 ====
declared(testing_in_real_world_conditions_outside_sandbox/1, 'testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_plan_submitted/2, 'provider submitted real-world testing plan to authority', 'celex:32024R1689/oj#art_60/par_4/pnt_a').
declared(real_world_testing_approved/2, 'authority approved testing and plan', 'celex:32024R1689/oj#art_60/par_4/pnt_b').
declared(real_world_testing_registered/2, 'testing registered with unique identification number', 'celex:32024R1689/oj#art_60/par_4/pnt_c').
declared(established_in_union_or_has_legal_rep/1, 'provider established in Union or has appointed legal representative', 'celex:32024R1689/oj#art_60/par_4/pnt_d').
declared(data_transfer_safeguards_implemented/1, 'appropriate safeguards for third-country data transfer', 'celex:32024R1689/oj#art_60/par_4/pnt_e').
declared(testing_duration_within_limits/1, 'testing does not exceed permitted duration', 'celex:32024R1689/oj#art_60/par_4/pnt_f').
declared(vulnerable_subjects_protected/1, 'subjects from vulnerable groups appropriately protected', 'celex:32024R1689/oj#art_60/par_4/pnt_g').
declared(deployer_informed_and_agreement_concluded/2, 'deployer informed and agreement concluded', 'celex:32024R1689/oj#art_60/par_4/pnt_h').
declared(subjects_gave_informed_consent_or_law_enforcement_exception/1, 'informed consent given or law enforcement exception applies', 'celex:32024R1689/oj#art_60/par_4/pnt_i').
declared(testing_effectively_overseen/1, 'testing overseen by qualified persons', 'celex:32024R1689/oj#art_60/par_4/pnt_j').
declared(outputs_reversible_and_disregardable/1, 'predictions, recommendations or decisions can be reversed and disregarded', 'celex:32024R1689/oj#art_60/par_4/pnt_k').
declared(must_report_serious_incident/2, 'provider must report serious incident to market surveillance authority', 'celex:32024R1689/oj#art_60/par_7').
declared(must_adopt_mitigation_or_suspend/2, 'provider must adopt mitigation or suspend testing', 'celex:32024R1689/oj#art_60/par_7').
declared(must_establish_recall_procedure/2, 'provider must establish procedure for prompt recall', 'celex:32024R1689/oj#art_60/par_7').
declared(must_notify_suspension_termination_outcomes/2, 'provider must notify suspension, termination and final outcomes', 'celex:32024R1689/oj#art_60/par_8').
may_conduct_testing_in_real_world_conditions(P, S) :-
    ( provider(P) ; prospective_provider(P) ),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    testing_in_real_world_conditions_outside_sandbox(S),
    real_world_testing_plan_submitted(P, S),
    real_world_testing_approved(P, S),
    \+ prohibited_under_art_5(S).
may_conduct_testing_in_real_world_conditions(P, S) :-
    ( provider(P) ; prospective_provider(P) ),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).
may_conduct_testing_in_real_world_conditions(P, S) :-
    ( provider(P) ; prospective_provider(P) ),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    in_partnership_with_deployer(P, S).
permitted_testing_in_real_world_conditions(P, S) :-
    may_conduct_testing_in_real_world_conditions(P, S),
    real_world_testing_plan_submitted(P, S),
    real_world_testing_approved(P, S),
    real_world_testing_registered(P, S),
    established_in_union_or_has_legal_rep(P),
    data_transfer_safeguards_implemented(S),
    testing_duration_within_limits(S),
    vulnerable_subjects_protected(S),
    deployer_informed_and_agreement_concluded(P, S),
    subjects_gave_informed_consent_or_law_enforcement_exception(S),
    testing_effectively_overseen(S),
    outputs_reversible_and_disregardable(S).
real_world_testing_approved(P, S) :-
    market_surveillance_authority(A),
    submitted_to_authority(P, S, A),
    no_answer_within_days(A, 30).
real_world_testing_approved(P, S) :-
    market_surveillance_authority(A),
    submitted_to_authority(P, S, A),
    explicit_approval(A, S).
real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 1),
    law_enforcement_migration_asylum_border(S),
    registered_in_eu_database_secure_section(P, S).
real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 6),
    law_enforcement_migration_asylum_border(S),
    registered_in_eu_database_secure_section(P, S).
real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 7),
    law_enforcement_migration_asylum_border(S),
    registered_in_eu_database_secure_section(P, S).
real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, 2),
    registered_under_art_49_par_5(P, S).
real_world_testing_registered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point(S, _),
    \+ law_enforcement_migration_asylum_border(S),
    \+ listed_in_annex_3_point(S, 2),
    registered_under_art_71_par_4(P, S).
testing_duration_within_limits(S) :-
    testing_duration(S, D),
    D =< months(6).
testing_duration_within_limits(S) :-
    testing_duration(S, D),
    D =< months(12),
    prior_notification_of_extension(P, S),
    explanation_of_need(P, S).
subjects_gave_informed_consent_or_law_enforcement_exception(S) :-
    subjects_gave_informed_consent(S).
subjects_gave_informed_consent_or_law_enforcement_exception(S) :-
    law_enforcement(S),
    seeking_consent_would_prevent_testing(S),
    no_negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).
may_withdraw_from_testing(Subject, S) :-
    subject(Subject),
    testing_in_real_world_conditions_outside_sandbox(S),
    subjects_gave_informed_consent(S).
must_delete_personal_data_on_withdrawal(P, Subject, S) :-
    may_withdraw_from_testing(Subject, S),
    provider(P),
    withdrawal_requested(Subject, S).
must_confer_powers_on_market_surveillance(MemberState, Authority) :-
    market_surveillance_authority(Authority),
    power_to_require_information(Authority),
    power_to_carry_out_inspections(Authority),
    power_to_perform_checks(Authority).
must_report_serious_incident(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    serious_incident_identified(S).
must_adopt_mitigation_or_suspend(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    serious_incident_identified(S),
    \+ mitigation_measures_adopted(P, S).
must_establish_recall_procedure(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    testing_terminated(S).
must_notify_suspension_termination_outcomes(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    ( testing_suspended(S) ; testing_terminated(S) ; final_outcomes_available(S) ).
liable_for_damage(P, S) :-
    provider(P),
    testing_in_real_world_conditions_outside_sandbox(S),
    damage_caused_in_course_of_testing(P, S).
provenance(testing_in_real_world_conditions_outside_sandbox/1, 'celex:32024R1689/oj#art_60').
provenance(may_conduct_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60/par_1').
provenance(may_conduct_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60/par_2').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(real_world_testing_approved/2, 'celex:32024R1689/oj#art_60/par_4/pnt_b').
provenance(real_world_testing_registered/2, 'celex:32024R1689/oj#art_60/par_4/pnt_c').
provenance(testing_duration_within_limits/1, 'celex:32024R1689/oj#art_60/par_4/pnt_f').
provenance(subjects_gave_informed_consent_or_law_enforcement_exception/1, 'celex:32024R1689/oj#art_60/par_4/pnt_i').
provenance(may_withdraw_from_testing/2, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_delete_personal_data_on_withdrawal/3, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_confer_powers_on_market_surveillance/2, 'celex:32024R1689/oj#art_60/par_6').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_adopt_mitigation_or_suspend/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_notify_suspension_termination_outcomes/2, 'celex:32024R1689/oj#art_60/par_8').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60/par_9').
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
declared(must_obtain_informed_consent/2, 'provider or legal representative must obtain informed consent from subject', 'celex:32024R1689/oj#art_61').
declared(informed_consent_documented/1, 'informed consent is dated, documented and a copy given', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(Provider, Subject) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(T),
    informed_consent(Subject),
    informed_about_nature_and_objectives(Subject, T),
    informed_about_conditions_and_duration(Subject, T),
    informed_about_rights_and_guarantees(Subject, T),
    informed_about_reversal_arrangements(Subject, T),
    informed_about_identification_and_contact(Subject, T).
informed_about_nature_and_objectives(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, nature_and_objectives(Testing)).
informed_about_conditions_and_duration(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, conditions_and_duration(Testing)).
informed_about_rights_and_guarantees(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, rights_and_guarantees(Testing)).
informed_about_reversal_arrangements(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, reversal_arrangements(Testing)).
informed_about_identification_and_contact(Subject, Testing) :-
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed(Subject, identification_and_contact(Testing)).
informed_consent_documented(Consent) :-
    informed_consent(Consent),
    dated(Consent),
    documented(Consent),
    copy_given_to_subject_or_representative(Consent).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_nature_and_objectives/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_conditions_and_duration/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_rights_and_guarantees/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_reversal_arrangements/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_identification_and_contact/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(must_undertake_action/2, 'Member State must undertake a specific action', 'celex:32024R1689/oj#art_62').
declared(must_undertake_action/2, 'AI Office must undertake a specific action', 'celex:32024R1689/oj#art_62').
declared(must_take_into_account/2, 'interests and needs must be taken into account when setting fees', 'celex:32024R1689/oj#art_62').
declared(sme/1, 'small or medium-sized enterprise', 'celex:32024R1689/oj#art_62').
declared(start_up/1, 'start-up enterprise', 'celex:32024R1689/oj#art_62').
declared(local_public_authority/1, 'local public authority', 'celex:32024R1689/oj#art_62').
declared(fulfils_eligibility_conditions/1, 'entity fulfils eligibility conditions for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(fulfils_selection_criteria/1, 'entity fulfils selection criteria for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(priority_access_to_sandbox/1, 'entity has priority access to AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(access_to_sandbox/1, 'entity has access to AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(awareness_raising_activities/1, 'awareness raising activities on the application of the regulation', 'celex:32024R1689/oj#art_62').
declared(training_activities/1, 'training activities on the application of the regulation', 'celex:32024R1689/oj#art_62').
declared(dedicated_communication_channel/1, 'dedicated channel for communication about the regulation', 'celex:32024R1689/oj#art_62').
declared(standardisation_development_process/1, 'standardisation development process', 'celex:32024R1689/oj#art_62').
declared(conformity_assessment_fee/1, 'fee for conformity assessment', 'celex:32024R1689/oj#art_62').
declared(standardised_template/1, 'standardised template for areas covered by the regulation', 'celex:32024R1689/oj#art_62').
declared(single_information_platform/1, 'single information platform for operators', 'celex:32024R1689/oj#art_62').
declared(communication_campaign/1, 'communication campaign about obligations', 'celex:32024R1689/oj#art_62').
declared(public_procurement_procedure/1, 'public procurement procedure in relation to AI systems', 'celex:32024R1689/oj#art_62').
must_undertake_action(MS, provide_priority_access_to_sandbox) :-
    member_state(MS).
must_undertake_action(MS, organise_awareness_and_training) :-
    member_state(MS).
must_undertake_action(MS, utilise_dedicated_channels) :-
    member_state(MS).
must_undertake_action(MS, facilitate_participation_in_standardisation) :-
    member_state(MS).
must_undertake_action(AIO, provide_standardised_templates) :-
    ai_office(AIO).
must_undertake_action(AIO, develop_single_information_platform) :-
    ai_office(AIO).
must_undertake_action(AIO, organise_communication_campaigns) :-
    ai_office(AIO).
must_undertake_action(AIO, evaluate_best_practices_in_procurement) :-
    ai_office(AIO).
must_take_into_account(sme_provider_interests, conformity_assessment_fee) :-
    provider(P),
    sme(P).
priority_access_to_sandbox(E) :-
    sme(E),
    start_up(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E).
access_to_sandbox(E) :-
    sme(E),
    start_up(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E),
    \+ priority_access_to_sandbox(E).
provenance(must_undertake_action/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(partner_enterprise/1, 'partner enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(linked_enterprise/1, 'linked enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(quality_management_system_simplified_compliance/1, 'simplified compliance with certain elements of the quality management system', 'celex:32024R1689/oj#art_63').
quality_management_system_simplified_compliance(M) :-
    microenterprise(M),
    \+ partner_enterprise(M),
    \+ linked_enterprise(M).
provenance(quality_management_system_simplified_compliance/1, 'celex:32024R1689/oj#art_63').
references('celex:32024R1689/oj#art_63', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_63/par_1').
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
declared(must_develop_expertise_and_capabilities/2, 'entity obliged to develop Union expertise and capabilities in AI', 'celex:32024R1689/oj#art_64').
declared(must_facilitate_tasks/2, 'entity obliged to facilitate tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop_expertise_and_capabilities(Commission, ai_office(AI_Office)) :-
    ai_office(AI_Office).
must_facilitate_tasks(Member_State, ai_office(AI_Office)) :-
    ai_office(AI_Office).
provenance(must_develop_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(board_established/1, 'European Artificial Intelligence Board is established', 'celex:32024R1689/oj#art_65').
declared(board_composed_of/2, 'Board composed of representative per Member State', 'celex:32024R1689/oj#art_65').
declared(observer/1, 'entity participating as observer', 'celex:32024R1689/oj#art_65').
declared(attends_without_vote/1, 'entity attending without taking part in votes', 'celex:32024R1689/oj#art_65').
declared(may_be_invited/1, 'entity that may be invited to meetings', 'celex:32024R1689/oj#art_65').
declared(designated_representative/2, 'representative designated by Member State', 'celex:32024R1689/oj#art_65').
declared(designation_period/2, 'period of designation for a representative', 'celex:32024R1689/oj#art_65').
declared(must_ensure/2, 'Member State must ensure conditions for its representative', 'celex:32024R1689/oj#art_65').
declared(has_relevant_competences/1, 'representative has relevant competences and powers', 'celex:32024R1689/oj#art_65').
declared(single_contact_point/1, 'representative designated as single contact point', 'celex:32024R1689/oj#art_65').
declared(empowered_for_consistency/1, 'representative empowered to facilitate consistency', 'celex:32024R1689/oj#art_65').
declared(must_adopt_rules_of_procedure/2, 'representatives must adopt rules of procedure', 'celex:32024R1689/oj#art_65').
declared(two_thirds_majority/1, 'adoption by two-thirds majority', 'celex:32024R1689/oj#art_65').
declared(rules_of_procedure/1, 'Board rules of procedure', 'celex:32024R1689/oj#art_65').
declared(must_establish_standing_subgroups/1, 'Board must establish standing sub-groups', 'celex:32024R1689/oj#art_65').
declared(standing_subgroup_for_market_surveillance/1, 'sub-group for market surveillance authorities', 'celex:32024R1689/oj#art_65').
declared(standing_subgroup_for_notifying_authorities/1, 'sub-group for notifying authorities', 'celex:32024R1689/oj#art_65').
declared(acts_as_adco/1, 'sub-group acts as ADCO', 'celex:32024R1689/oj#art_65').
declared(may_establish_other_subgroups/1, 'Board may establish other sub-groups', 'celex:32024R1689/oj#art_65').
declared(must_be_organised_for_objectivity/1, 'Board must be organised to safeguard objectivity', 'celex:32024R1689/oj#art_65').
declared(chaired_by/1, 'Board chaired by a Member State representative', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'AI Office must provide secretariat for Board', 'celex:32024R1689/oj#art_65').
board_established(european_artificial_intelligence_board).
board_composed_of(european_artificial_intelligence_board, representative_per_member_state).
observer(european_data_protection_supervisor).
attends_without_vote(ai_office).
may_be_invited(Entity) :-
    (   national_competent_authority(Entity)
    ;   union_authority(Entity)
    ;   union_body(Entity)
    ;   expert(Entity)
    ),
    issues_discussed_relevant(Entity).
designated_representative(Representative, MemberState) :-
    representative(Representative),
    member_state(MemberState).
designation_period(Representative, period(years(3), renewable(once))) :-
    designated_representative(Representative, _).
must_ensure(MemberState, Representative) :-
    designated_representative(Representative, MemberState).
has_relevant_competences(Representative) :-
    designated_representative(Representative, MemberState),
    competences_and_powers_in(Representative, MemberState),
    contributes_to_board_tasks(Representative).
single_contact_point(Representative) :-
    designated_representative(Representative, _),
    contact_point_for_board(Representative),
    contact_point_for_stakeholders(Representative).
empowered_for_consistency(Representative) :-
    designated_representative(Representative, MemberState),
    facilitates_consistency(Representative, MemberState),
    collects_relevant_data(Representative).
must_adopt_rules_of_procedure(Representatives, rules_of_procedure) :-
    designated_representatives_of_member_states(Representatives),
    two_thirds_majority(Representatives).
must_establish_standing_subgroups(european_artificial_intelligence_board) :-
    standing_subgroup_for_market_surveillance(subgroup(market_surveillance)),
    standing_subgroup_for_notifying_authorities(subgroup(notifying_authorities)).
standing_subgroup_for_market_surveillance(Subgroup) :-
    platform_for_cooperation(Subgroup, market_surveillance_authority).
standing_subgroup_for_notifying_authorities(Subgroup) :-
    platform_for_cooperation(Subgroup, notifying_authority).
acts_as_adco(Subgroup) :-
    standing_subgroup_for_market_surveillance(Subgroup).
may_establish_other_subgroups(european_artificial_intelligence_board) :-
    specific_issues_examined.
must_be_organised_for_objectivity(european_artificial_intelligence_board) :-
    safeguards_objectivity,
    safeguards_impartiality.
chaired_by(representative_of_member_state).
must_provide_secretariat(ai_office, european_artificial_intelligence_board) :-
    convenes_meetings(ai_office),
    prepares_agenda(ai_office).
provenance(board_established/1, 'celex:32024R1689/oj#art_65').
provenance(board_composed_of/2, 'celex:32024R1689/oj#art_65').
provenance(observer/1, 'celex:32024R1689/oj#art_65').
provenance(attends_without_vote/1, 'celex:32024R1689/oj#art_65').
provenance(may_be_invited/1, 'celex:32024R1689/oj#art_65').
provenance(designated_representative/2, 'celex:32024R1689/oj#art_65').
provenance(designation_period/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_65').
provenance(has_relevant_competences/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_for_consistency/1, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish_standing_subgroups/1, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup_for_market_surveillance/1, 'celex:32024R1689/oj#art_65').
provenance(standing_subgroup_for_notifying_authorities/1, 'celex:32024R1689/oj#art_65').
provenance(acts_as_adco/1, 'celex:32024R1689/oj#art_65').
provenance(may_establish_other_subgroups/1, 'celex:32024R1689/oj#art_65').
provenance(must_be_organised_for_objectivity/1, 'celex:32024R1689/oj#art_65').
provenance(chaired_by/1, 'celex:32024R1689/oj#art_65').
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_66').
declared(must_advise_and_assist/2, 'Board advises and assists Commission and Member States', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_coordination/2, 'Board may contribute to coordination among national competent authorities', 'celex:32024R1689/oj#art_66').
declared(may_support_joint_activities/2, 'Board may support joint activities of market surveillance authorities', 'celex:32024R1689/oj#art_66').
declared(may_collect_and_share_expertise/1, 'Board may collect and share technical and regulatory expertise', 'celex:32024R1689/oj#art_66').
declared(may_provide_advice_on_implementation/1, 'Board may provide advice on implementation of the regulation', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_harmonisation/1, 'Board may contribute to harmonisation of administrative practices', 'celex:32024R1689/oj#art_66').
declared(may_issue_recommendations/2, 'Board may issue recommendations and written opinions', 'celex:32024R1689/oj#art_66').
declared(may_support_promoting_ai_literacy/1, 'Board may support Commission in promoting AI literacy', 'celex:32024R1689/oj#art_66').
declared(may_facilitate_common_criteria/1, 'Board may facilitate development of common criteria', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_union_bodies/1, 'Board may cooperate with other Union institutions', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_third_countries/1, 'Board may cooperate with competent authorities of third countries', 'celex:32024R1689/oj#art_66').
declared(may_assist_developing_expertise/1, 'Board may assist in developing organisational and technical expertise', 'celex:32024R1689/oj#art_66').
declared(may_assist_ai_office_sandboxes/1, 'Board may assist AI Office in supporting sandboxes', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_guidance/1, 'Board may contribute to development of guidance documents', 'celex:32024R1689/oj#art_66').
declared(may_advise_on_international_matters/1, 'Board may advise Commission on international AI matters', 'celex:32024R1689/oj#art_66').
declared(may_provide_opinions_on_alerts/2, 'Board may provide opinions on qualified alerts regarding general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_receive_opinions_on_alerts/2, 'Board may receive opinions from Member States on qualified alerts', 'celex:32024R1689/oj#art_66').
board(B) :- board(B).
must_advise_and_assist(B, commission) :-
    board(B).
must_advise_and_assist(B, member_states) :-
    board(B).
may_contribute_to_coordination(B, national_competent_authorities) :-
    board(B).
may_support_joint_activities(B, market_surveillance_authorities) :-
    board(B).
may_collect_and_share_expertise(B) :-
    board(B).
may_provide_advice_on_implementation(B) :-
    board(B).
may_contribute_to_harmonisation(B) :-
    board(B).
may_issue_recommendations(B, recommendations) :-
    board(B).
may_issue_recommendations(B, written_opinions) :-
    board(B).
may_support_promoting_ai_literacy(B) :-
    board(B).
may_facilitate_common_criteria(B) :-
    board(B).
may_cooperate_with_union_bodies(B) :-
    board(B).
may_cooperate_with_third_countries(B) :-
    board(B).
may_assist_developing_expertise(B) :-
    board(B).
may_assist_ai_office_sandboxes(B) :-
    board(B).
may_contribute_to_guidance(B) :-
    board(B).
may_advise_on_international_matters(B) :-
    board(B).
may_provide_opinions_on_alerts(B, qualified_alerts(general_purpose_ai_models)) :-
    board(B).
may_receive_opinions_on_alerts(B, qualified_alerts(general_purpose_ai_models)) :-
    board(B).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_promoting_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_third_countries/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_developing_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/2, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions_on_alerts/2, 'celex:32024R1689/oj#art_66').
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
declared(board/1, 'the AI Board', 'celex:32024R1689/oj#art_67').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_67').
declared(stakeholder/1, 'stakeholder with recognised expertise in AI', 'celex:32024R1689/oj#art_67').
declared(permanent_member/1, 'permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(co_chair/1, 'co-chair of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(sub_group/1, 'standing or temporary sub-group of the advisory forum', 'celex:32024R1689/oj#art_67').
must_provide_technical_expertise(advisory_forum, board).
must_provide_technical_expertise(advisory_forum, commission).
must_advise(advisory_forum, board).
must_advise(advisory_forum, commission).
must_contribute_to_tasks(advisory_forum, board).
must_contribute_to_tasks(advisory_forum, commission).
balanced_membership_applies(advisory_forum).
must_appoint_members(commission, advisory_forum).
term_of_office(member(advisory_forum), years(2)).
extended_term_of_office(member(advisory_forum), up_to(years(4))).
permanent_member(fundamental_rights_agency).
permanent_member(enisa).
permanent_member(cen).
permanent_member(cenelec).
permanent_member(etsi).
must_draw_up_rules_of_procedure(advisory_forum).
must_elect_co_chairs(advisory_forum).
term_of_office(co_chair(advisory_forum), years(2)).
renewable_term(co_chair(advisory_forum), once).
must_hold_meetings(advisory_forum, at_least(twice_per_year)).
may_invite(advisory_forum, experts).
may_invite(advisory_forum, stakeholders).
may_prepare(advisory_forum, opinions).
may_prepare(advisory_forum, recommendations).
may_prepare(advisory_forum, written_contributions).
may_establish_sub_groups(advisory_forum, sub_group).
must_prepare_annual_report(advisory_forum).
must_make_publicly_available(advisory_forum, annual_report).
provenance(must_provide_technical_expertise/2, 'celex:32024R1689/oj#art_67').
provenance(must_advise/2, 'celex:32024R1689/oj#art_67').
provenance(must_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(balanced_membership_applies/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_members/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(extended_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chairs/1, 'celex:32024R1689/oj#art_67').
provenance(renewable_term/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite/2, 'celex:32024R1689/oj#art_67').
provenance(may_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(may_establish_sub_groups/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_68').
declared(expert_on_scientific_panel/1, 'expert selected for the scientific panel', 'celex:32024R1689/oj#art_68').
declared(systemic_risk_at_union_level/1, 'possible systemic risk at Union level', 'celex:32024R1689/oj#art_68').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_68').
must_establish(Commission, scientific_panel) :-
    ai_office(_).
scientific_panel(P) :-
    expert_on_scientific_panel(E),
    member(E, P).
expert_on_scientific_panel(E) :-
    selected_by_commission(E),
    expertise_in_ai(E),
    particular_expertise_and_competence(E),
    independent_from_providers(E),
    ability_to_carry_out_activities_diligently(E).
selected_by_commission(E) :-
    expert_on_scientific_panel(E).
expertise_in_ai(E) :-
    expert_on_scientific_panel(E).
particular_expertise_and_competence(E) :-
    expert_on_scientific_panel(E).
independent_from_providers(E) :-
    expert_on_scientific_panel(E),
    \+ provider_of_ai_systems_or_models(E).
ability_to_carry_out_activities_diligently(E) :-
    expert_on_scientific_panel(E).
must_determine_number_of_experts(Commission, scientific_panel) :-
    consultation_with_board(Commission).
must_ensure_fair_representation(Commission, scientific_panel) :-
    gender_representation(scientific_panel),
    geographical_representation(scientific_panel).
must_advise_and_support(scientific_panel, ai_office) :-
    task_supporting_implementation_and_enforcement(scientific_panel),
    task_supporting_market_surveillance(scientific_panel),
    task_supporting_cross_border_activities(scientific_panel),
    task_supporting_safeguard_procedure(scientific_panel).
task_supporting_implementation_and_enforcement(P) :-
    scientific_panel(P),
    alerting_possible_systemic_risks(P),
    contributing_to_tools_and_methodologies(P),
    advising_on_classification_systemic_risk(P),
    advising_on_classification_models_and_systems(P),
    contributing_to_tools_and_templates(P).
alerting_possible_systemic_risks(P) :-
    scientific_panel(P),
    systemic_risk_at_union_level(R),
    general_purpose_ai_model(M),
    alerts(P, ai_office, systemic_risk(M, R)).
contributing_to_tools_and_methodologies(P) :-
    scientific_panel(P),
    general_purpose_ai_model(M),
    contributes_to(P, tools_and_methodologies(evaluating_capabilities(M))).
advising_on_classification_systemic_risk(P) :-
    scientific_panel(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_advice_on(P, classification(M)).
advising_on_classification_models_and_systems(P) :-
    scientific_panel(P),
    general_purpose_ai_model(M),
    general_purpose_ai_system(S),
    provides_advice_on(P, classification(M, S)).
contributing_to_tools_and_templates(P) :-
    scientific_panel(P),
    contributes_to(P, tools_and_templates).
task_supporting_market_surveillance(P) :-
    scientific_panel(P),
    market_surveillance_authority(A),
    supports(P, A).
task_supporting_cross_border_activities(P) :-
    scientific_panel(P),
    cross_border_market_surveillance(A),
    supports(P, A).
task_supporting_safeguard_procedure(P) :-
    scientific_panel(P),
    union_safeguard_procedure(U),
    supports(P, ai_office, U).
must_perform_tasks_with_impartiality(E) :-
    expert_on_scientific_panel(E).
must_ensure_confidentiality(E) :-
    expert_on_scientific_panel(E).
must_not_seek_instructions(E) :-
    expert_on_scientific_panel(E).
must_draw_up_declaration_of_interests(E) :-
    expert_on_scientific_panel(E).
must_make_declaration_publicly_available(ai_office, declaration_of_interests(E)) :-
    expert_on_scientific_panel(E).
must_establish_systems_to_manage_conflicts(ai_office) :-
    scientific_panel(_).
must_include_provisions_on_conditions(implementing_act, scientific_panel) :-
    scientific_panel(P),
    alerts(P, _, _),
    requests_assistance(P, ai_office).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert_on_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_68').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number_of_experts/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_representation/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_with_impartiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_make_declaration_publicly_available/2, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems_to_manage_conflicts/1, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions_on_conditions/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(must_pay_fees/2, 'Member State may be required to pay fees for expert advice and support', 'celex:32024R1689/oj#art_69').
declared(must_facilitate_access/2, 'Commission shall facilitate timely access to experts', 'celex:32024R1689/oj#art_69').
may_call_upon_experts(MemberState) :-
    member_state(MemberState).
must_pay_fees(MemberState, expert_advice_and_support) :-
    member_state(MemberState).
must_facilitate_access(Commission, MemberState) :-
    member_state(MemberState).
provenance(may_call_upon_experts/1, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_establish_or_designate/2, 'Member State must establish or designate a national competent authority', 'celex:32024R1689/oj#art_70').
declared(must_communicate_identity/2, 'Member State must communicate identity of authority to Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_publicly_available/2, 'Member State must make contact information publicly available', 'celex:32024R1689/oj#art_70').
declared(must_designate_single_point_of_contact/2, 'Member State must designate a market surveillance authority as single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_notify_single_point_of_contact/2, 'Member State must notify Commission of single point of contact identity', 'celex:32024R1689/oj#art_70').
declared(must_ensure_resources/2, 'Member State must ensure adequate resources for national competent authorities', 'celex:32024R1689/oj#art_70').
declared(must_assess_resource_requirements/2, 'Member State must assess and update resource requirements annually', 'celex:32024R1689/oj#art_70').
declared(must_take_cybersecurity_measures/1, 'National competent authority must ensure adequate cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_act_with_confidentiality/1, 'National competent authority must observe confidentiality obligations', 'celex:32024R1689/oj#art_70').
declared(must_report_resources/2, 'Member State must report on resources to Commission', 'celex:32024R1689/oj#art_70').
declared(must_facilitate_exchange/2, 'Commission must facilitate exchange of experience between authorities', 'celex:32024R1689/oj#art_70').
declared(may_provide_guidance/2, 'National competent authority may provide guidance on implementation', 'celex:32024R1689/oj#art_70').
declared(must_consult_other_authorities/2, 'National competent authority must consult other authorities when guidance covers other Union law', 'celex:32024R1689/oj#art_70').
declared(acts_as_competent_authority/2, 'European Data Protection Supervisor acts as competent authority for Union institutions', 'celex:32024R1689/oj#art_70').
must_establish_or_designate(MemberState, notifying_authority) :-
    member_state(MemberState).
must_establish_or_designate(MemberState, market_surveillance_authority) :-
    member_state(MemberState).
must_communicate_identity(MemberState, notifying_authority) :-
    member_state(MemberState).
must_communicate_identity(MemberState, market_surveillance_authority) :-
    member_state(MemberState).
must_make_publicly_available(MemberState, contact_information) :-
    member_state(MemberState).
must_designate_single_point_of_contact(MemberState, Authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority).
must_notify_single_point_of_contact(MemberState, Authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority).
must_ensure_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority).
must_assess_resource_requirements(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority).
must_take_cybersecurity_measures(Authority) :-
    national_competent_authority(Authority).
must_act_with_confidentiality(Authority) :-
    national_competent_authority(Authority).
must_report_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority).
must_facilitate_exchange(Commission, Authority) :-
    ai_office(Commission),
    national_competent_authority(Authority).
may_provide_guidance(Authority, implementation(Regulation)) :-
    national_competent_authority(Authority).
must_consult_other_authorities(Authority, ai_system_in_other_law_area(System)) :-
    national_competent_authority(Authority),
    ai_system(System).
acts_as_competent_authority(edps, union_institution(UnionBody)) :-
    union_institution_body_office_or_agency(UnionBody).
provenance(must_establish_or_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_resource_requirements/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_cybersecurity_measures/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_with_confidentiality/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange/2, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(acts_as_competent_authority/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_set_up_and_maintain_eu_database/2, 'entity obliged to set up and maintain the EU database, what they must maintain', 'celex:32024R1689/oj#art_71/par_1').
declared(must_enter_data/2, 'entity obliged to enter data into the EU database, what data', 'celex:32024R1689/oj#art_71/par_2').
declared(must_enter_data_deployer/2, 'deployer obliged to enter data into the EU database, what data', 'celex:32024R1689/oj#art_71/par_3').
declared(eu_database_publicly_accessible/1, 'information in the EU database that is publicly accessible', 'celex:32024R1689/oj#art_71/par_4').
declared(eu_database_restricted_access/1, 'information in the EU database with restricted access', 'celex:32024R1689/oj#art_71/par_4').
declared(eu_database_contains_personal_data/1, 'personal data contained in the EU database', 'celex:32024R1689/oj#art_71/par_5').
declared(commission_is_controller/1, 'entity that is the controller of the EU database', 'celex:32024R1689/oj#art_71/par_6').
declared(must_provide_support/2, 'entity obliged to provide support, to whom', 'celex:32024R1689/oj#art_71/par_6').
must_set_up_and_maintain_eu_database(Commission, eu_database) :-
    ai_office(Commission).
must_enter_data(Entity, data(annex_8_sections_1_and_2)) :-
    provider(Entity).
must_enter_data(Entity, data(annex_8_sections_1_and_2)) :-
    authorised_representative(Entity).
must_enter_data_deployer(Deployer, data(annex_8_section_3)) :-
    deployer(Deployer),
    (   public_authority(Deployer)
    ;   acts_on_behalf_of_public_authority(Deployer, _Authority)
    ).
eu_database_publicly_accessible(Information) :-
    registered_in_accordance_with_art_49(Information),
    \+ information_referred_to_in_art_49_par_4(Information),
    \+ information_referred_to_in_art_60_par_4_c(Information).
eu_database_restricted_access(Information) :-
    registered_in_accordance_with_art_60(Information),
    \+ consent_given_for_public_access(Information).
eu_database_contains_personal_data(Data) :-
    personal_data(Data),
    necessary_for_collecting_and_processing_information(Data, eu_database).
commission_is_controller(Commission) :-
    ai_office(Commission).
must_provide_support(Commission, Support) :-
    ai_office(Commission),
    (   provider(Support)
    ;   prospective_provider(Support)
    ;   deployer(Support)
    ).
declared(public_authority/1, 'entity that is a public authority, agency or body', 'celex:32024R1689/oj#art_71/par_3').
declared(acts_on_behalf_of_public_authority/2, 'entity acting on behalf of a public authority', 'celex:32024R1689/oj#art_71/par_3').
declared(registered_in_accordance_with_art_49/1, 'information registered in accordance with Article 49', 'celex:32024R1689/oj#art_71/par_4').
declared(registered_in_accordance_with_art_60/1, 'information registered in accordance with Article 60', 'celex:32024R1689/oj#art_71/par_4').
declared(information_referred_to_in_art_49_par_4/1, 'information referred to in Article 49(4)', 'celex:32024R1689/oj#art_71/par_4').
declared(information_referred_to_in_art_60_par_4_c/1, 'information referred to in Article 60(4)(c)', 'celex:32024R1689/oj#art_71/par_4').
declared(consent_given_for_public_access/1, 'consent given for making information publicly accessible', 'celex:32024R1689/oj#art_71/par_4').
declared(necessary_for_collecting_and_processing_information/2, 'data necessary for collecting and processing information', 'celex:32024R1689/oj#art_71/par_5').
declared(prospective_provider/1, 'entity intending to become a provider', 'celex:32024R1689/oj#art_71/par_6').
provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71/par_1').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71/par_2').
provenance(must_enter_data_deployer/2, 'celex:32024R1689/oj#art_71/par_3').
provenance(eu_database_publicly_accessible/1, 'celex:32024R1689/oj#art_71/par_4').
provenance(eu_database_restricted_access/1, 'celex:32024R1689/oj#art_71/par_4').
provenance(eu_database_contains_personal_data/1, 'celex:32024R1689/oj#art_71/par_5').
provenance(commission_is_controller/1, 'celex:32024R1689/oj#art_71/par_6').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71/par_6').
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
declared(must_establish_post_market_monitoring_system/2, 'provider must establish and document a post-market monitoring system', 'celex:32024R1689/oj#art_72/par_1').
declared(must_collect_and_analyse_data/2, 'post-market monitoring system must actively and systematically collect, document and analyse relevant data', 'celex:32024R1689/oj#art_72/par_2').
declared(must_base_on_post_market_monitoring_plan/2, 'post-market monitoring system must be based on a post-market monitoring plan', 'celex:32024R1689/oj#art_72/par_3').
declared(may_integrate_existing_system/2, 'provider may integrate elements into existing post-market monitoring system under harmonisation legislation', 'celex:32024R1689/oj#art_72/par_4').
must_establish_post_market_monitoring_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    post_market_monitoring_system(System),
    proportionate_to_nature_and_risks(System).
must_collect_and_analyse_data(System, Data) :-
    post_market_monitoring_system(System),
    relevant_data(Data),
    provided_by_deployers_or_other_sources(Data),
    concerns_performance_throughout_lifetime(Data, System),
    allows_evaluation_of_continuous_compliance(Data, System),
    \+ sensitive_operational_data_of_law_enforcement_deployers(Data).
must_base_on_post_market_monitoring_plan(System, Plan) :-
    post_market_monitoring_system(System),
    post_market_monitoring_plan(Plan),
    part_of_technical_documentation(Plan).
may_integrate_existing_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_by_union_harmonisation_legislation_annex_i_section_a(System),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_nature_and_risks/1, 'system is proportionate to the nature of the AI technologies and the risks', 'celex:32024R1689/oj#art_72/par_1').
declared(relevant_data/1, 'data relevant to the performance of high-risk AI systems', 'celex:32024R1689/oj#art_72/par_2').
declared(provided_by_deployers_or_other_sources/1, 'data provided by deployers or collected through other sources', 'celex:32024R1689/oj#art_72/par_2').
declared(concerns_performance_throughout_lifetime/2, 'data concerns the performance of the AI system throughout its lifetime', 'celex:32024R1689/oj#art_72/par_2').
declared(allows_evaluation_of_continuous_compliance/2, 'data allows the provider to evaluate continuous compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_72/par_2').
declared(sensitive_operational_data_of_law_enforcement_deployers/1, 'data is sensitive operational data of deployers which are law-enforcement authorities', 'celex:32024R1689/oj#art_72/par_2').
declared(post_market_monitoring_plan/1, 'plan for post-market monitoring', 'celex:32024R1689/oj#art_72/par_3').
declared(part_of_technical_documentation/1, 'plan is part of the technical documentation referred to in Annex IV', 'celex:32024R1689/oj#art_72/par_3').
declared(covered_by_union_harmonisation_legislation_annex_i_section_a/1, 'system covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_72/par_4').
declared(existing_post_market_monitoring_system/1, 'post-market monitoring system and plan already established under that legislation', 'celex:32024R1689/oj#art_72/par_4').
declared(achieves_equivalent_level_of_protection/1, 'integration achieves an equivalent level of protection', 'celex:32024R1689/oj#art_72/par_4').
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72/par_1').
provenance(must_collect_and_analyse_data/2, 'celex:32024R1689/oj#art_72/par_2').
provenance(must_base_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72/par_3').
provenance(may_integrate_existing_system/2, 'celex:32024R1689/oj#art_72/par_4').
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
declared(must_report_serious_incident/2, 'provider must report serious incident to market surveillance authority', 'celex:32024R1689/oj#art_73').
declared(must_report_serious_incident_immediately/2, 'provider must report serious incident immediately after causal link established', 'celex:32024R1689/oj#art_73').
declared(must_report_serious_incident_within_days/3, 'provider must report serious incident within specified days', 'celex:32024R1689/oj#art_73').
declared(must_perform_investigations/2, 'provider must perform investigations after reporting serious incident', 'celex:32024R1689/oj#art_73').
declared(must_cooperate_during_investigations/2, 'provider must cooperate with competent authorities during investigations', 'celex:32024R1689/oj#art_73').
declared(must_notify_commission/2, 'national competent authority must notify Commission of serious incident', 'celex:32024R1689/oj#art_73').
declared(must_inform_public_authorities/2, 'market surveillance authority must inform national public authorities', 'celex:32024R1689/oj#art_73').
declared(must_take_appropriate_measures/2, 'market surveillance authority must take appropriate measures within seven days', 'celex:32024R1689/oj#art_73').
declared(may_submit_incomplete_report/2, 'provider or deployer may submit incomplete initial report', 'celex:32024R1689/oj#art_73').
declared(serious_incident_notification_limited/1, 'notification of serious incidents limited to those in point (c)', 'celex:32024R1689/oj#art_73').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_73').
declared(placed_on_union_market/1, 'AI system placed on the Union market', 'celex:32024R1689/oj#art_73').
declared(causal_link_established/2, 'causal link established between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(reasonable_likelihood_of_causal_link/2, 'reasonable likelihood of causal link between AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(becomes_aware_of_serious_incident/2, 'entity becomes aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(widespread_infringement_or_serious_incident_b/1, 'widespread infringement or serious incident as defined in point (b)', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'serious incident involving death of a person', 'celex:32024R1689/oj#art_73').
declared(serious_incident_c/1, 'serious incident as defined in point (c)', 'celex:32024R1689/oj#art_73').
declared(safety_component_of_device/1, 'AI system that is a safety component of a device', 'celex:32024R1689/oj#art_73').
declared(device_covered_by_regulations/1, 'device covered by Regulations 2017/745 or 2017/746', 'celex:32024R1689/oj#art_73').
declared(annex_3_high_risk_ai_system/1, 'high-risk AI system referred to in Annex III', 'celex:32024R1689/oj#art_73').
declared(subject_to_equivalent_reporting_obligations/1, 'provider subject to equivalent reporting obligations under Union law', 'celex:32024R1689/oj#art_73').
must_report_serious_incident(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority).
must_report_serious_incident_within_days(Provider, incident(System, Incident, Authority), days(15)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    ( causal_link_established(Provider, incident(System, Incident))
    ; reasonable_likelihood_of_causal_link(Provider, incident(System, Incident))
    ),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).
must_report_serious_incident_immediately(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    ( causal_link_established(Provider, incident(System, Incident))
    ; reasonable_likelihood_of_causal_link(Provider, incident(System, Incident))
    ),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).
must_report_serious_incident_within_days(Provider, incident(System, Incident, Authority), days(2)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    widespread_infringement_or_serious_incident_b(Incident),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).
must_report_serious_incident_immediately(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    widespread_infringement_or_serious_incident_b(Incident),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).
must_report_serious_incident_within_days(Provider, incident(System, Incident, Authority), days(10)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    death_of_person(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).
must_report_serious_incident_immediately(Provider, incident(System, Incident, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_union_market(System),
    serious_incident(Incident),
    death_of_person(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority),
    ( causal_link_established(Provider, incident(System, Incident))
    ; suspects_causal_relationship(Provider, incident(System, Incident))
    ),
    becomes_aware_of_serious_incident(AwareEntity, Incident),
    ( AwareEntity = Provider ; AwareEntity = deployer ).
may_submit_incomplete_report(Reporter, incident(System, Incident, Authority)) :-
    ( provider(Reporter) ; deployer(Reporter) ),
    high_risk_ai_system(System),
    serious_incident(Incident),
    market_surveillance_authority(Authority),
    occurred_in_member_state(Incident, Authority).
must_perform_investigations(Provider, incident(System, Incident)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(Incident),
    reported_serious_incident(Provider, incident(System, Incident, _Authority)).
must_cooperate_during_investigations(Provider, incident(System, Incident)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(Incident),
    reported_serious_incident(Provider, incident(System, Incident, _Authority)).
must_inform_public_authorities(Authority, incident(System, Incident)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    serious_incident_c(Incident),
    received_notification(Authority, incident(System, Incident)).
must_take_appropriate_measures(Authority, incident(System, Incident)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    serious_incident(Incident),
    received_notification(Authority, incident(System, Incident)).
serious_incident_notification_limited(incident(System, Incident)) :-
    annex_3_high_risk_ai_system(System),
    ( placed_on_union_market(System) ; putting_into_service(System) ),
    provider(Provider),
    subject_to_equivalent_reporting_obligations(Provider),
    serious_incident_c(Incident).
serious_incident_notification_limited(incident(System, Incident)) :-
    high_risk_ai_system(System),
    ( safety_component_of_device(System) ; device_covered_by_regulations(System) ),
    serious_incident_c(Incident).
must_notify_commission(Authority, incident(System, Incident)) :-
    national_competent_authority(Authority),
    high_risk_ai_system(System),
    serious_incident(Incident).
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident_immediately/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigations/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigations/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_public_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_73').
provenance(may_submit_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_notification_limited/1, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
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
declared(market_surveillance_authority_for_ai/2, 'authority designated as market surveillance authority for AI systems under this Regulation', 'celex:32024R1689/oj#art_74').
declared(must_report_annually/2, 'obligation to report annually to the Commission', 'celex:32024R1689/oj#art_74').
declared(must_report_competition_info/2, 'obligation to report competition-relevant information', 'celex:32024R1689/oj#art_74').
declared(must_report_prohibited_practices/2, 'obligation to report use of prohibited practices', 'celex:32024R1689/oj#art_74').
declared(must_report_measures_taken/2, 'obligation to report measures taken', 'celex:32024R1689/oj#art_74').
declared(must_grant_full_access/3, 'obligation to grant full access to documentation and data sets', 'celex:32024R1689/oj#art_74').
declared(must_grant_source_code_access/3, 'obligation to grant access to source code', 'celex:32024R1689/oj#art_74').
declared(source_code_access_conditions_fulfilled/1, 'conditions for source code access are met', 'celex:32024R1689/oj#art_74').
declared(must_treat_confidentially/2, 'obligation to treat information confidentially', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/2, 'obligation to facilitate coordination between authorities', 'celex:32024R1689/oj#art_74').
declared(may_exercise_powers_remotely/2, 'authority may exercise powers remotely', 'celex:32024R1689/oj#art_74').
declared(may_propose_joint_activities/2, 'authority may propose joint activities', 'celex:32024R1689/oj#art_74').
declared(may_designate_alternative_authority/2, 'Member State may designate alternative market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(must_designate_authority_for_law_enforcement_systems/2, 'Member State must designate market surveillance authority for certain high-risk AI systems', 'celex:32024R1689/oj#art_74').
declared(edps_acts_as_market_surveillance_authority/1, 'European Data Protection Supervisor acts as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(must_report_to_ecb/2, 'obligation to report to the European Central Bank', 'celex:32024R1689/oj#art_74').
declared(sectoral_procedures_apply/1, 'sectoral procedures apply instead of Regulation procedures', 'celex:32024R1689/oj#art_74').
declared(financial_institution_ai_system/1, 'high-risk AI system placed on market, put into service or used by financial institution', 'celex:32024R1689/oj#art_74').
declared(law_enforcement_related_high_risk_ai_system/1, 'high-risk AI system used for law enforcement, border management, justice and democracy', 'celex:32024R1689/oj#art_74').
must_report_annually(Authority, Commission) :-
    market_surveillance_authority(Authority).
must_report_competition_info(Authority, Commission) :-
    market_surveillance_authority(Authority).
must_report_prohibited_practices(Authority, Commission) :-
    market_surveillance_authority(Authority).
must_report_measures_taken(Authority, Commission) :-
    market_surveillance_authority(Authority).
market_surveillance_authority_for_ai(Authority, System) :-
    high_risk_ai_system(System),
    product_covered_by_annex_1_section_1(System),
    market_surveillance_authority(Authority),
    designated_under_harmonisation_legislation(Authority, System).
may_designate_alternative_authority(MemberState, Authority) :-
    market_surveillance_authority_for_ai(_, _),
    coordination_ensured(Authority).
sectoral_procedures_apply(System) :-
    high_risk_ai_system(System),
    product_covered_by_annex_1_section_1(System),
    equivalent_procedures_exist(System).
may_exercise_powers_remotely(Authority, _) :-
    market_surveillance_authority(Authority).
market_surveillance_authority_for_ai(Authority, System) :-
    financial_institution_ai_system(System),
    national_financial_supervisory_authority(Authority),
    direct_connection_to_financial_services(System).
financial_institution_ai_system(System) :-
    high_risk_ai_system(System),
    placed_on_market_put_into_service_or_used_by_financial_institution(System).
may_designate_alternative_authority(MemberState, Authority) :-
    financial_institution_ai_system(_),
    coordination_ensured(Authority).
must_report_to_ecb(Authority, ecb) :-
    market_surveillance_authority(Authority),
    supervising_credit_institution(Authority),
    participating_in_ssm(Authority).
must_designate_authority_for_law_enforcement_systems(MemberState, Authority) :-
    law_enforcement_related_high_risk_ai_system(_),
    (   competent_data_protection_authority(Authority)
    ;   designated_under_led_conditions(Authority)
    ).
law_enforcement_related_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    used_for_law_enforcement_border_justice_democracy(System).
law_enforcement_related_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    listed_in_annex_3_point_6_7_or_8(System).
edps_acts_as_market_surveillance_authority(edps) :-
    union_institution_body_office_or_agency(_).
must_facilitate_coordination(MemberState, _) :-
    market_surveillance_authority_for_ai(_, _).
may_propose_joint_activities(Authority, Commission) :-
    market_surveillance_authority(Authority).
may_propose_joint_activities(Commission, Commission).
must_grant_full_access(Provider, Authority, System) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_ai_system(System).
must_grant_source_code_access(Provider, Authority, System) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_ai_system(System),
    source_code_access_conditions_fulfilled(System).
source_code_access_conditions_fulfilled(System) :-
    high_risk_ai_system(System),
    source_code_access_necessary_for_conformity_assessment(System),
    testing_and_verification_exhausted_or_insufficient(System).
must_treat_confidentially(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_by_market_surveillance(Information, Authority).
provenance(market_surveillance_authority_for_ai/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_competition_info/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_measures_taken/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access/3, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/3, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_conditions_fulfilled/1, 'celex:32024R1689/oj#art_74').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_designate_authority_for_law_enforcement_systems/2, 'celex:32024R1689/oj#art_74').
provenance(edps_acts_as_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(financial_institution_ai_system/1, 'celex:32024R1689/oj#art_74').
provenance(law_enforcement_related_high_risk_ai_system/1, 'celex:32024R1689/oj#art_74').
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
declared(must_cooperate_with_ai_office/2, 'market surveillance authority must cooperate with AI Office for compliance evaluations', 'celex:32024R1689/oj#art_75').
declared(must_inform_board_and_authorities/2, 'market surveillance authority must inform Board and other authorities of cooperation', 'celex:32024R1689/oj#art_75').
declared(may_request_access_to_information/2, 'market surveillance authority may request AI Office to enforce access to information', 'celex:32024R1689/oj#art_75').
declared(must_supply_information/2, 'AI Office must supply relevant information to requesting authority', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'market surveillance authority must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
ai_office_has_supervisory_powers(S) :-
    ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M),
    provider(P),
    develops(P, S),
    develops(P, M).
must_have_market_surveillance_powers(AI_Office) :-
    ai_office(AI_Office),
    market_surveillance_authority(MSA),
    powers_of(MSA, Powers),
    has_powers(AI_Office, Powers).
must_cooperate_with_ai_office(MSA, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    can_be_used_directly_by_deployers(S),
    purpose_classified_as_high_risk(S),
    sufficient_reason_to_consider_non_compliant(MSA, S).
must_inform_board_and_authorities(MSA, S) :-
    must_cooperate_with_ai_office(MSA, S).
may_request_access_to_information(MSA, M) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    investigation_of(MSA, S),
    unable_to_conclude_investigation(MSA, S),
    general_purpose_ai_model(M),
    information_relates_to(M, Info),
    unable_to_access(MSA, Info),
    made_all_appropriate_efforts(MSA, Info).
must_supply_information(AI_Office, request(MSA, Info)) :-
    ai_office(AI_Office),
    may_request_access_to_information(MSA, M),
    information_relates_to(M, Info),
    relevant_to_non_compliance(Info, S),
    high_risk_ai_system(S),
    within_days(30).
must_safeguard_confidentiality(MSA, Info) :-
    market_surveillance_authority(MSA),
    obtains_information(MSA, Info).
provenance(ai_office_has_supervisory_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_have_market_surveillance_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_access_to_information/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_verify_compliance/2, 'market surveillance authority must verify compliance with art_60 for sandbox-supervised testing', 'celex:32024R1689/oj#art_76').
declared(may_allow_testing_in_derogation/2, 'market surveillance authority may allow testing in derogation from art_60 conditions', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/2, 'market surveillance authority may suspend or terminate testing', 'celex:32024R1689/oj#art_76').
declared(may_require_modification/2, 'market surveillance authority may require modification of testing', 'celex:32024R1689/oj#art_76').
declared(must_indicate_grounds_and_challenge/2, 'decision or objection must indicate grounds and how to challenge', 'celex:32024R1689/oj#art_76').
declared(must_communicate_grounds/2, 'market surveillance authority must communicate grounds to other Member States', 'celex:32024R1689/oj#art_76').
must_ensure_testing_compliance(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority).
must_verify_compliance(Authority, sandbox_supervised_testing(System)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(System, Sandbox).
may_allow_testing_in_derogation(Authority, testing(System, Provider)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(System, Sandbox),
    (provider(Provider); prospective_provider(Provider)).
may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions(System)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    grounds_to_consider_conditions_not_met(Authority, System).
may_require_modification(Authority, testing_in_real_world_conditions(System)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    grounds_to_consider_conditions_not_met(Authority, System).
grounds_to_consider_conditions_not_met(Authority, System) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    (   informed_of_serious_incident(Authority, System)
    ;   other_grounds_for_noncompliance(Authority, System)
    ).
informed_of_serious_incident(Authority, System) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    serious_incident(Incident),
    relates_to(Incident, System),
    informed_by(Authority, Incident, _Party).
other_grounds_for_noncompliance(Authority, System) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    has_other_grounds(Authority, System).
must_indicate_grounds_and_challenge(Authority, decision_or_objection(Decision, System)) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions(System))
    ;   may_require_modification(Authority, testing_in_real_world_conditions(System))
    ;   issued_objection(Authority, System)
    ),
    Decision = decision_or_objection(_, _).
must_communicate_grounds(Authority, decision(Decision, System)) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions(System))
    ;   may_require_modification(Authority, testing_in_real_world_conditions(System))
    ),
    tested_in_other_member_states(System).
declared(prospective_provider/1, 'entity intending to place an AI system on the market', 'celex:32024R1689/oj#art_76').
declared(supervised_within/2, 'testing is supervised within a sandbox', 'celex:32024R1689/oj#art_76').
declared(informed_by/3, 'authority informed by party of incident', 'celex:32024R1689/oj#art_76').
declared(relates_to/2, 'incident relates to testing', 'celex:32024R1689/oj#art_76').
declared(has_other_grounds/2, 'authority has other grounds for noncompliance', 'celex:32024R1689/oj#art_76').
declared(issued_objection/2, 'authority issued objection under art_60', 'celex:32024R1689/oj#art_76').
declared(tested_in_other_member_states/1, 'system tested in other Member States', 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_testing_in_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_to_consider_conditions_not_met/2, 'celex:32024R1689/oj#art_76').
provenance(informed_of_serious_incident/2, 'celex:32024R1689/oj#art_76').
provenance(other_grounds_for_noncompliance/2, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(must_inform/2, 'inform the market surveillance authority of a request', 'celex:32024R1689/oj#art_77/par_1').
declared(must_identify/2, 'identify the public authorities or bodies', 'celex:32024R1689/oj#art_77/par_2').
declared(must_notify/2, 'notify the list to the Commission and other Member States', 'celex:32024R1689/oj#art_77/par_2').
declared(must_keep_up_to_date/2, 'keep the list up to date', 'celex:32024R1689/oj#art_77/par_2').
declared(may_request_testing/2, 'make a reasoned request to organise testing', 'celex:32024R1689/oj#art_77/par_3').
declared(must_organise_testing/2, 'organise testing of the high-risk AI system', 'celex:32024R1689/oj#art_77/par_3').
declared(must_treat_confidentially/2, 'treat information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_77/par_4').
must_inform(Authority, request(RequestingAuthority)) :-
    national_public_authority_or_body(RequestingAuthority),
    market_surveillance_authority(Authority),
    member_state_of(Authority, MemberState),
    member_state_of(RequestingAuthority, MemberState),
    has_power_to_request_documentation(RequestingAuthority).
has_power_to_request_documentation(Authority) :-
    national_public_authority_or_body(Authority),
    supervises_or_enforces_fundamental_rights(Authority),
    documentation_necessary_for_mandate(Authority).
documentation_necessary_for_mandate(Authority) :-
    documentation_created_or_maintained_under_regulation(Doc),
    access_necessary_for_fulfilling_mandate(Authority, Doc).
must_identify(MemberState, authorities_list) :-
    member_state(MemberState).
must_notify(MemberState, list(Authorities)) :-
    member_state(MemberState),
    identified_authorities(MemberState, Authorities).
must_keep_up_to_date(MemberState, list(Authorities)) :-
    member_state(MemberState),
    identified_authorities(MemberState, Authorities).
may_request_testing(Authority, request(testing(System), Reason)) :-
    national_public_authority_or_body(Authority),
    high_risk_ai_system(System),
    documentation_insufficient_to_ascertain_infringement(Authority, System),
    market_surveillance_authority(MSA),
    member_state_of(Authority, MemberState),
    member_state_of(MSA, MemberState).
must_organise_testing(MSA, testing(System, RequestingAuthority)) :-
    market_surveillance_authority(MSA),
    national_public_authority_or_body(RequestingAuthority),
    high_risk_ai_system(System),
    may_request_testing(RequestingAuthority, request(testing(System), _)),
    within_reasonable_time(MSA, testing(System, RequestingAuthority)).
must_treat_confidentially(Authority, information_obtained_under_art_77) :-
    national_public_authority_or_body(Authority),
    information_obtained_pursuant_to_art_77(Authority).
provenance(must_inform/2, 'celex:32024R1689/oj#art_77/par_1').
provenance(has_power_to_request_documentation/1, 'celex:32024R1689/oj#art_77/par_1').
provenance(documentation_necessary_for_mandate/1, 'celex:32024R1689/oj#art_77/par_1').
provenance(must_identify/2, 'celex:32024R1689/oj#art_77/par_2').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77/par_2').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_77/par_2').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77/par_3').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77/par_3').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77/par_4').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'entity must respect confidentiality of information and data obtained', 'celex:32024R1689/oj#art_78').
declared(must_request_only_strictly_necessary_data/2, 'authority must request only data strictly necessary for risk assessment and powers', 'celex:32024R1689/oj#art_78').
declared(must_implement_cybersecurity_measures/2, 'authority must implement adequate cybersecurity measures to protect information', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/2, 'authority must delete collected data when no longer needed', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure_without_consultation/1, 'disclosure prohibited without prior consultation of originating authority and deployer', 'celex:32024R1689/oj#art_78').
declared(must_keep_technical_documentation_on_premises/2, 'law enforcement, immigration or asylum authority provider must keep technical documentation on premises', 'celex:32024R1689/oj#art_78').
declared(must_ensure_market_surveillance_access/2, 'authority must ensure market surveillance authorities can access documentation', 'celex:32024R1689/oj#art_78').
declared(permitted_exchange_with_third_country_authorities/1, 'exchange of confidential information with third country authorities permitted under conditions', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Entity, information_and_data) :-
    (   Entity = commission
    ;   market_surveillance_authority(Entity)
    ;   notified_body(Entity)
    ;   involved_in_application(Entity)
    ),
    obtained_in_carrying_out_tasks(Entity, information_and_data).
must_request_only_strictly_necessary_data(Authority, data) :-
    authority_involved_in_application(Authority),
    strictly_necessary_for_risk_assessment_or_powers(Authority, data).
must_implement_cybersecurity_measures(Authority, information_and_data) :-
    authority_involved_in_application(Authority),
    obtained_in_carrying_out_tasks(Authority, information_and_data).
must_delete_data_when_no_longer_needed(Authority, data) :-
    authority_involved_in_application(Authority),
    collected_by(Authority, data),
    \+ needed_for_purpose(data).
prohibited_disclosure_without_consultation(disclosure(Information, OriginatingAuthority, Deployer)) :-
    confidential_information(Information),
    exchanged_between_competent_authorities_or_with_commission(Information),
    high_risk_ai_system_used_by_sensitive_authorities(Deployer),
    would_jeopardise_public_or_national_security(disclosure(Information)),
    \+ prior_consultation(OriginatingAuthority),
    \+ prior_consultation(Deployer).
must_keep_technical_documentation_on_premises(Authority, technical_documentation) :-
    (   law_enforcement_authority(Authority)
    ;   immigration_authority(Authority)
    ;   asylum_authority(Authority)
    ),
    provider(Authority),
    high_risk_ai_system_referred_to_in_annex_iii_points_1_6_7(_S).
must_ensure_market_surveillance_access(Authority, technical_documentation) :-
    must_keep_technical_documentation_on_premises(Authority, technical_documentation),
    market_surveillance_authority_referred_to_in_art_74_par_8_or_9(MSA),
    can_access_or_obtain_copy(MSA, technical_documentation),
    staff_with_appropriate_security_clearance(MSA).
permitted_exchange_with_third_country_authorities(exchange(CommissionOrMemberState, ThirdCountryAuthority, confidential_information)) :-
    (   CommissionOrMemberState = commission
    ;   member_state(CommissionOrMemberState)
    ),
    regulatory_authority_of_third_country(ThirdCountryAuthority),
    confidentiality_arrangement_exists(CommissionOrMemberState, ThirdCountryAuthority),
    adequate_level_of_confidentiality(ThirdCountryAuthority).
involved_in_application(Entity) :-
    natural_or_legal_person(Entity),
    involved_in_application_of_regulation(Entity).
authority_involved_in_application(Authority) :-
    involved_in_application(Authority),
    (   market_surveillance_authority(Authority)
    ;   notified_body(Authority)
    ;   national_competent_authority(Authority)
    ;   Authority = commission
    ).
high_risk_ai_system_used_by_sensitive_authorities(Deployer) :-
    deployer(Deployer),
    (   law_enforcement_authority(Deployer)
    ;   border_control_authority(Deployer)
    ;   immigration_authority(Deployer)
    ;   asylum_authority(Deployer)
    ),
    high_risk_ai_system_referred_to_in_annex_iii_points_1_6_7(_S).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_strictly_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(must_keep_technical_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_market_surveillance_access/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country_authorities/1, 'celex:32024R1689/oj#art_78').
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
declared(ai_system_presenting_risk/1, 'AI system presenting a risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_79').
declared(vulnerable_group/1, 'group of persons at heightened risk', 'celex:32024R1689/oj#art_79').
declared(corrective_action/1, 'action to bring an AI system into compliance', 'celex:32024R1689/oj#art_79').
declared(provisional_measure/1, 'provisional measure to prohibit, restrict, withdraw or recall', 'celex:32024R1689/oj#art_79').
declared(non_compliance_reason/1, 'reason for non-compliance under Article 79(6)', 'celex:32024R1689/oj#art_79').
ai_system_presenting_risk(S) :-
    ai_system(S),
    ( risk_to_health_or_safety(S)
    ; risk_to_fundamental_rights(S)
    ).
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    has_sufficient_reason(Authority, S).
must_inform_and_cooperate(Authority, relevant_authorities(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    risk_to_fundamental_rights(S).
must_cooperate(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(_S).
must_require_corrective_action(Authority, Operator) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system_presenting_risk(S),
    finds_non_compliance(Authority, S).
must_inform_notified_body(Authority, Body) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    ai_system_presenting_risk(_S),
    finds_non_compliance(Authority, _S).
must_inform_commission_and_member_states(Authority, evaluation_and_actions(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    non_compliance_not_restricted_to_national_territory(Authority, S).
must_ensure_corrective_action(Operator, S) :-
    operator(Operator),
    ai_system_presenting_risk(S),
    made_available_on_union_market(Operator, S).
must_take_provisional_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    operator(Operator),
    \+ adequate_corrective_action_taken(Operator, S, _Period).
must_notify_commission_and_member_states(Authority, provisional_measures(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    must_take_provisional_measures(Authority, S).
notification_must_include(Notification, details(S)) :-
    notification(Notification),
    ai_system_presenting_risk(S).
must_indicate_non_compliance_reason(Authority, Reason) :-
    market_surveillance_authority(Authority),
    non_compliance_reason(Reason).
must_inform_commission_and_member_states_of_measures(Authority, measures_and_information(S)) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S),
    \+ initiating_authority(Authority).
must_inform_of_objections(Authority, objections(Measure)) :-
    market_surveillance_authority(Authority),
    provisional_measure(Measure),
    disagrees_with_measure(Authority, Measure).
provisional_measure_deemed_justified(Measure) :-
    provisional_measure(Measure),
    notification_period_elapsed(Measure, months(3)),
    \+ objection_raised(Measure).
provisional_measure_deemed_justified(Measure) :-
    provisional_measure(Measure),
    notification_period_elapsed(Measure, days(30)),
    non_compliance_with_art_5(Measure).
must_ensure_restrictive_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system_presenting_risk(S).
provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(notification_must_include/2, 'celex:32024R1689/oj#art_79').
provenance(must_indicate_non_compliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states_of_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_objections/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').
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
declared(must_carry_out_evaluation/2, 'market surveillance authority must evaluate AI system classification', 'celex:32024R1689/oj#art_80').
declared(must_require_compliance/2, 'market surveillance authority must require provider to bring AI system into compliance', 'celex:32024R1689/oj#art_80').
declared(must_inform/2, 'market surveillance authority must inform Commission and Member States', 'celex:32024R1689/oj#art_80').
declared(must_ensure_compliance/2, 'provider must ensure AI system brought into compliance', 'celex:32024R1689/oj#art_80').
declared(must_ensure_corrective_action/2, 'provider must ensure corrective action for all AI systems on market', 'celex:32024R1689/oj#art_80').
declared(subject_to_fines/2, 'provider subject to fines for non-compliance', 'celex:32024R1689/oj#art_80').
declared(subject_to_fines_misclassification/2, 'provider subject to fines for deliberate misclassification', 'celex:32024R1689/oj#art_80').
declared(may_perform_checks/2, 'market surveillance authority may perform checks', 'celex:32024R1689/oj#art_80').
declared(classified_non_high_risk/2, 'AI system classified by provider as non-high-risk', 'celex:32024R1689/oj#art_80').
declared(sufficient_reason/2, 'market surveillance authority has sufficient reason to consider misclassification', 'celex:32024R1689/oj#art_80').
declared(evaluation_finds_high_risk/2, 'evaluation finds AI system is high-risk', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/1, 'AI system use not restricted to national territory', 'celex:32024R1689/oj#art_80').
declared(provider_fails_compliance/2, 'provider fails to bring AI system into compliance within period', 'celex:32024R1689/oj#art_80').
declared(provider_fails_corrective_action/2, 'provider fails to take adequate corrective action within period', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent/2, 'AI system misclassified as non-high-risk to circumvent requirements', 'celex:32024R1689/oj#art_80').
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_non_high_risk(S, _Provider),
    sufficient_reason(Authority, S).
must_require_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_high_risk(Authority, S).
must_inform(Authority, evaluation_results(S, Actions)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    use_not_restricted_to_national_territory(S),
    evaluation_finds_high_risk(Authority, S),
    must_require_compliance(Authority, S).
must_ensure_compliance(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_require_compliance(_Authority, S).
subject_to_fines(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_ensure_compliance(Provider, S),
    provider_fails_compliance(Provider, S).
must_ensure_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_require_compliance(_Authority, S).
provider_fails_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_ensure_corrective_action(Provider, S),
    \+ adequate_corrective_action_taken(Provider, S).
subject_to_fines_misclassification(Provider, S) :-
    provider(Provider),
    ai_system(S),
    misclassified_to_circumvent(Provider, S).
may_perform_checks(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(provider_fails_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines_misclassification/2, 'celex:32024R1689/oj#art_80').
provenance(may_perform_checks/2, 'celex:32024R1689/oj#art_80').
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

% ==== celex:32024R1689/oj#art_81 ====
declared(objection_raised/2, 'market surveillance authority raises objection to measure', 'celex:32024R1689/oj#art_81').
declared(measure_justified/1, 'national measure is justified', 'celex:32024R1689/oj#art_81').
declared(measure_unjustified/1, 'national measure is unjustified', 'celex:32024R1689/oj#art_81').
declared(non_compliance_attributed_to_shortcomings/2, 'non-compliance attributed to shortcomings in standards or specifications', 'celex:32024R1689/oj#art_81').
must_enter_consultation(Commission, objection(Authority, Measure)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    objection_raised(OtherAuthority, Measure),
    taken_by(Measure, Authority),
    within_period(objection(Measure), months(3), notification(art_79_par_5)).
must_enter_consultation(Commission, objection(Authority, Measure)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    objection_raised(OtherAuthority, Measure),
    taken_by(Measure, Authority),
    non_compliance_with_prohibition(Measure, art_5),
    within_period(objection(Measure), days(30), notification(art_79_par_5)).
must_enter_consultation(Commission, commission_objection(Measure)) :-
    market_surveillance_authority(Authority),
    taken_by(Measure, Authority),
    contrary_to_union_law(Measure).
must_evaluate(Commission, Measure) :-
    must_enter_consultation(Commission, _).
must_decide_justification(Commission, Measure) :-
    must_evaluate(Commission, Measure),
    within_period(decision(Measure), months(6), notification(art_79_par_5)).
must_decide_justification(Commission, Measure) :-
    must_evaluate(Commission, Measure),
    non_compliance_with_prohibition(Measure, art_5),
    within_period(decision(Measure), days(60), notification(art_79_par_5)).
must_notify_decision(Commission, decision(Measure, justified)) :-
    must_decide_justification(Commission, Measure),
    measure_justified(Measure).
must_notify_decision(Commission, decision(Measure, unjustified)) :-
    must_decide_justification(Commission, Measure),
    measure_unjustified(Measure).
must_inform_authorities(Commission, decision(Measure, _)) :-
    must_notify_decision(Commission, decision(Measure, _)).
must_ensure_restrictive_measures(MemberState, System) :-
    measure_justified(Measure),
    concerns(Measure, System),
    member_state(MemberState).
must_inform_commission(MemberState, restrictive_measures(System)) :-
    must_ensure_restrictive_measures(MemberState, System).
must_withdraw_measure(MemberState, Measure) :-
    measure_unjustified(Measure),
    taken_by(Measure, MemberState).
must_inform_commission(MemberState, withdrawal(Measure)) :-
    must_withdraw_measure(MemberState, Measure).
must_apply_procedure(Commission, art_11_procedure) :-
    measure_justified(Measure),
    concerns(Measure, System),
    non_compliance_attributed_to_shortcomings(System, harmonised_standards),
    non_compliance_attributed_to_shortcomings(System, common_specifications).
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_authorities/2, 'celex:32024R1689/oj#art_81').
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
declared(must_take_appropriate_measures/2, 'operator must take measures to eliminate risk', 'celex:32024R1689/oj#art_82').
declared(must_ensure_corrective_action/2, 'provider or operator must ensure corrective action', 'celex:32024R1689/oj#art_82').
declared(must_inform_commission_and_member_states/2, 'Member State must inform Commission and other Member States', 'celex:32024R1689/oj#art_82').
declared(must_enter_consultation/1, 'Commission must enter consultation', 'celex:32024R1689/oj#art_82').
declared(must_evaluate_national_measures/1, 'Commission must evaluate national measures', 'celex:32024R1689/oj#art_82').
declared(must_decide_justification/1, 'Commission must decide whether measure is justified', 'celex:32024R1689/oj#art_82').
declared(must_communicate_decision/2, 'Commission must communicate decision', 'celex:32024R1689/oj#art_82').
must_take_appropriate_measures(Authority, Operator) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    finds_risk_after_evaluation(Authority, Operator).
must_ensure_corrective_action(Operator, System) :-
    operator(Operator),
    ai_system(System),
    corrective_action_required(Operator, System).
must_inform_commission_and_member_states(MemberState, finding(System)) :-
    member_state(MemberState),
    ai_system(System),
    finding_under_paragraph_1(MemberState, System).
must_enter_consultation(Commission) :-
    ai_office(Commission).
must_evaluate_national_measures(Commission) :-
    ai_office(Commission).
must_decide_justification(Commission) :-
    ai_office(Commission).
must_communicate_decision(Commission, decision(Decision)) :-
    ai_office(Commission),
    decision_reached(Decision).
finds_risk_after_evaluation(Authority, Operator) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    high_risk_ai_system(System),
    complies_with_regulation(System),
    presents_risk(System),
    consulted_authority(Authority, _NationalAuthority).
corrective_action_required(Operator, System) :-
    operator(Operator),
    ai_system(System),
    made_available_on_union_market(Operator, System),
    timeline_prescribed(Authority, System),
    market_surveillance_authority(Authority).
finding_under_paragraph_1(MemberState, System) :-
    member_state(MemberState),
    ai_system(System),
    finds_risk_after_evaluation(_Authority, _Operator).
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(must_enter_consultation/1, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measures/1, 'celex:32024R1689/oj#art_82').
provenance(must_decide_justification/1, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(must_end_noncompliance/2, 'market surveillance authority requires provider to end non-compliance', 'celex:32024R1689/oj#art_83').
declared(formal_noncompliance_finding/1, 'finding of formal non-compliance by market surveillance authority', 'celex:32024R1689/oj#art_83').
declared(must_restrict_or_prohibit/2, 'market surveillance authority must restrict or prohibit high-risk AI system', 'celex:32024R1689/oj#art_83').
formal_noncompliance_finding(ce_marking_affixed_in_violation) :-
    ce_marking(_).
formal_noncompliance_finding(ce_marking_not_affixed).
formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up).
formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up_correctly).
formal_noncompliance_finding(registration_not_carried_out).
formal_noncompliance_finding(no_authorised_representative_appointed).
formal_noncompliance_finding(technical_documentation_not_available).
must_end_noncompliance(Authority, Provider) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_noncompliance_finding(_).
must_restrict_or_prohibit(Authority, System) :-
    market_surveillance_authority(Authority),
    formal_noncompliance_finding(_),
    making_available_on_market(System).
provenance(must_end_noncompliance/2, 'celex:32024R1689/oj#art_83').
provenance(formal_noncompliance_finding/1, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(must_designate/2, 'entity must designate another entity', 'celex:32024R1689/oj#art_84').
declared(must_provide_advice/2, 'entity must provide independent technical or scientific advice', 'celex:32024R1689/oj#art_84').
declared(union_ai_testing_support_structure/1, 'entity designated by the Commission to perform AI testing support tasks', 'celex:32024R1689/oj#art_84').
must_designate(Commission, union_ai_testing_support_structure(S)) :-
    union_ai_testing_support_structure(S).
must_provide_advice(S, advice(Request)) :-
    union_ai_testing_support_structure(S),
    (   Request = board_request
    ;   Request = commission_request
    ;   Request = market_surveillance_authority_request
    ).
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(may_submit_complaint/2, 'natural or legal person may submit complaint to market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(must_take_complaint_into_account/2, 'market surveillance authority must take complaint into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(must_handle_complaint/2, 'market surveillance authority must handle complaint in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
may_submit_complaint(Person, Authority) :-
    (   natural_person(Person)
    ;   legal_person(Person)
    ),
    has_grounds_to_consider_infringement(Person),
    market_surveillance_authority(Authority).
must_take_complaint_into_account(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint),
    market_surveillance_activities(Activities),
    purpose(Complaint, Activities).
must_handle_complaint(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint),
    dedicated_procedures(Procedures),
    established_by(Procedures, Authority),
    in_line_with(Complaint, Procedures).
provenance(may_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_complaint_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(right_to_explanation/2, 'affected person has right to explanation from deployer', 'celex:32024R1689/oj#art_86').
declared(decision_produces_adverse_impact/1, 'decision produces legal effects or similarly significantly affects person adversely', 'celex:32024R1689/oj#art_86').
declared(exception_from_explanation_applies/1, 'exception or restriction from explanation obligation follows from Union or national law', 'celex:32024R1689/oj#art_86').
declared(right_otherwise_provided/1, 'right to explanation is otherwise provided for under Union law', 'celex:32024R1689/oj#art_86').
right_to_explanation(Person, Deployer) :-
    affected_person(Person),
    deployer(Deployer),
    decision_by_deployer(Decision, Deployer, Person),
    based_on_output_of_high_risk_ai_system(Decision, System),
    high_risk_ai_system_listed_in_annex_3(System),
    \+ system_listed_under_point_2_of_annex_3(System),
    decision_produces_adverse_impact(Decision),
    \+ exception_from_explanation_applies(Decision),
    \+ right_otherwise_provided(Decision).
must_provide_explanation(Deployer, explanation(Person, Decision)) :-
    right_to_explanation(Person, Deployer),
    decision_by_deployer(Decision, Deployer, Person).
provenance(right_to_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(decision_produces_adverse_impact/1, 'celex:32024R1689/oj#art_86').
provenance(exception_from_explanation_applies/1, 'celex:32024R1689/oj#art_86').
provenance(right_otherwise_provided/1, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').

% ==== celex:32024R1689/oj#art_87 ====
declared(must_apply_directive/2, 'directive that must apply to reporting and protection', 'celex:32024R1689/oj#art_87').
must_apply_directive(Directive, Subject) :-
    Directive = 'celex:32019L1937/oj',
    Subject = reporting_and_protection(infringements_of('celex:32024R1689/oj')).
provenance(must_apply_directive/2, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(must_entrust_implementation/2, 'Commission must entrust implementation of supervision and enforcement to AI Office', 'celex:32024R1689/oj#art_88').
must_entrust_implementation(Commission, ai_office) :-
    provider(Commission),
    ai_office(AI_Office).
provenance(must_entrust_implementation/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(must_monitor/2, 'entity must monitor effective implementation and compliance', 'celex:32024R1689/oj#art_89').
declared(may_lodge_complaint/2, 'downstream provider may lodge a complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(complaint_reasoned/1, 'complaint is duly reasoned', 'celex:32024R1689/oj#art_89').
declared(complaint_indicates_contact/2, 'complaint indicates point of contact of provider', 'celex:32024R1689/oj#art_89').
declared(complaint_indicates_facts/2, 'complaint indicates relevant facts and provisions', 'celex:32024R1689/oj#art_89').
declared(complaint_indicates_reason/2, 'complaint indicates reason for alleged infringement', 'celex:32024R1689/oj#art_89').
must_monitor(AI_Office, effective_implementation_and_compliance(providers_of_general_purpose_ai_models)) :-
    ai_office(AI_Office).
may_lodge_complaint(DownstreamProvider, complaint(ProviderOfGeneralPurposeAIModel)) :-
    downstream_provider(DownstreamProvider),
    general_purpose_ai_model(ProviderOfGeneralPurposeAIModel).
complaint_reasoned(Complaint) :-
    complaint_indicates_contact(Complaint, _),
    complaint_indicates_facts(Complaint, _),
    complaint_indicates_reason(Complaint, _).
provenance(must_monitor/2, 'celex:32024R1689/oj#art_89').
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_contact/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_facts/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_reason/2, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'duly reasoned alert by the scientific panel', 'celex:32024R1689/oj#art_90').
declared(board/1, 'the AI Board', 'celex:32024R1689/oj#art_90').
may_provide_qualified_alert(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    reason_to_suspect(ScientificPanel, Alert).
reason_to_suspect(ScientificPanel, Alert) :-
    general_purpose_ai_model(Model),
    poses_concrete_identifiable_risk_at_union_level(Model).
reason_to_suspect(ScientificPanel, Alert) :-
    general_purpose_ai_model(Model),
    meets_conditions_art_51(Model).
may_exercise_powers(Commission, Alert) :-
    qualified_alert(Alert),
    informed_board(Commission).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_91).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_92).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_93).
must_inform_board(AiOffice, measure(Measure)) :-
    ai_office(AiOffice),
    board(Board),
    measure_according_to(Measure, art_94).
required_qualified_alert_content(Alert, point_of_contact(Provider)) :-
    qualified_alert(Alert),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Risk),
    concerned(Model, Risk).
required_qualified_alert_content(Alert, description(Facts, Reasons)) :-
    qualified_alert(Alert),
    relevant_facts(Facts),
    reasons_for_alert(Reasons).
required_qualified_alert_content(Alert, other_information(Info)) :-
    qualified_alert(Alert),
    scientific_panel(Panel),
    considers_relevant(Panel, Info).
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert_content/2, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(must_supply_information/2, 'entity obliged to supply requested information, what is supplied', 'celex:32024R1689/oj#art_91').
declared(may_request_documentation/2, 'entity that may request documentation, provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(may_request_information/2, 'entity that may request information, provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'entity that may initiate dialogue, provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(request_for_information/1, 'request for information under Article 91', 'celex:32024R1689/oj#art_91').
declared(request_states_legal_basis/1, 'request states its legal basis', 'celex:32024R1689/oj#art_91').
declared(request_states_purpose/1, 'request states its purpose', 'celex:32024R1689/oj#art_91').
declared(request_specifies_information/1, 'request specifies what information is required', 'celex:32024R1689/oj#art_91').
declared(request_sets_period/1, 'request sets a period for providing information', 'celex:32024R1689/oj#art_91').
declared(request_indicates_fines/1, 'request indicates fines for incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_91').
declared(authorised_to_supply_information/2, 'person authorised to supply information on behalf of provider', 'celex:32024R1689/oj#art_91').
may_request_documentation(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
may_request_information(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
may_initiate_structured_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
may_request_information(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_from_scientific_panel(Provider).
request_from_scientific_panel(Provider) :-
    
    
    
    duly_substantiated_request(scientific_panel, Provider),
    necessary_for_scientific_panel_tasks(Provider),
    proportionate_for_scientific_panel_tasks(Provider).
request_for_information(R) :-
    request_states_legal_basis(R),
    request_states_purpose(R),
    request_specifies_information(R),
    request_sets_period(R),
    request_indicates_fines(R).
must_supply_information(Provider, information_requested) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
must_supply_information(Representative, information_requested) :-
    authorised_representative(Representative),
    represents(Representative, Provider),
    provider(Provider),
    general_purpose_ai_model(Provider).
must_supply_information(Person, information_requested) :-
    authorised_to_supply_information(Person, Provider),
    provider(Provider),
    general_purpose_ai_model(Provider).
authorised_to_supply_information(Person, Provider) :-
    legal_person_representative(Person, Provider).
authorised_to_supply_information(Lawyer, Provider) :-
    lawyer_duly_authorised(Lawyer, Provider).
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(authorised_to_supply_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(may_conduct_evaluation/2, 'AI Office may conduct evaluation of general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(may_appoint_independent_experts/1, 'Commission may appoint independent experts for evaluations', 'celex:32024R1689/oj#art_92').
declared(may_request_access/2, 'Commission may request access to general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(must_supply_information/2, 'provider must supply information or access requested', 'celex:32024R1689/oj#art_92').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(AI_Office, Model) :-
    ai_office(AI_Office),
    general_purpose_ai_model(Model),
    consulted_board(AI_Office),
    (   insufficient_information(Model)
    ;   systemic_risk(Model),
        qualified_alert_from_scientific_panel(Model)
    ).
insufficient_information(Model) :-
    general_purpose_ai_model(Model),
    information_gathered_under_art_91(Model, Info),
    insufficient(Info).
may_appoint_independent_experts(Commission) :-
    may_conduct_evaluation(ai_office, _Model).
may_request_access(Commission, Model) :-
    general_purpose_ai_model(Model),
    may_conduct_evaluation(ai_office, Model).
must_supply_information(Provider, request(access, Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    may_request_access(commission, Model).
must_supply_information(Representative, request(access, Model)) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model),
    may_request_access(commission, Model).
must_supply_information(AuthorisedPerson, request(access, Model)) :-
    general_purpose_ai_model(Model),
    may_request_access(commission, Model),
    provider_of_model(Provider, Model),
    \+ has_legal_personality(Provider),
    authorised_to_represent(AuthorisedPerson, Provider).
may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of_model(Provider, Model),
    \+ access_requested(commission, Model).
declared(consulted_board/1, 'AI Office has consulted the Board', 'celex:32024R1689/oj#art_92').
declared(insufficient_information/1, 'information gathered under Article 91 is insufficient', 'celex:32024R1689/oj#art_92').
declared(information_gathered_under_art_91/2, 'information gathered pursuant to Article 91', 'celex:32024R1689/oj#art_92').
declared(insufficient/1, 'information is insufficient', 'celex:32024R1689/oj#art_92').
declared(qualified_alert_from_scientific_panel/1, 'qualified alert from scientific panel under Article 90(1)(a)', 'celex:32024R1689/oj#art_92').
declared(provider_of_model/2, 'provider of a general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(has_legal_personality/1, 'entity has legal personality', 'celex:32024R1689/oj#art_92').
declared(authorised_to_represent/2, 'person authorised to represent a legal entity', 'celex:32024R1689/oj#art_92').
declared(access_requested/2, 'Commission has requested access to model', 'celex:32024R1689/oj#art_92').
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_experts/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
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
declared(must_take_measures/2, 'provider must take measures to comply with obligations', 'celex:32024R1689/oj#art_93').
declared(must_implement_mitigation/2, 'provider must implement mitigation measures for systemic risk', 'celex:32024R1689/oj#art_93').
declared(must_restrict_withdraw_recall/2, 'provider must restrict, withdraw or recall the model', 'celex:32024R1689/oj#art_93').
declared(may_initiate_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_93').
declared(may_make_commitments_binding/2, 'Commission may make provider commitments binding', 'celex:32024R1689/oj#art_93').
declared(systemic_risk_concern/1, 'evaluation gave rise to serious and substantiated concern of systemic risk', 'celex:32024R1689/oj#art_93').
declared(offers_mitigation_commitments/2, 'provider offers commitments to implement mitigation measures', 'celex:32024R1689/oj#art_93').
must_take_measures(Provider, comply_with_obligations) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    
    true.
must_implement_mitigation(Provider, mitigation_measures) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_concern(Model).
must_restrict_withdraw_recall(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
may_initiate_dialogue(ai_office, Provider) :-
    ai_office(ai_office),
    provider(Provider),
    general_purpose_ai_model(Model).
may_make_commitments_binding(commission, commitments(Provider)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    offers_mitigation_commitments(Provider, Model).
systemic_risk_concern(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).
offers_mitigation_commitments(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model).
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_withdraw_recall/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_concern/1, 'celex:32024R1689/oj#art_93').
provenance(offers_mitigation_commitments/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply/1, 'procedural rights of economic operators apply', 'celex:32024R1689/oj#art_94').
procedural_rights_apply(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_model(Provider, Model).
provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(must_encourage_and_facilitate/2, 'entity obliged to encourage and facilitate drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(must_facilitate/2, 'entity obliged to facilitate drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct_applies/1, 'code of conduct drawn up under Article 95', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_code/1, 'code of conduct for voluntary application of requirements', 'celex:32024R1689/oj#art_95').
declared(specific_requirements_code/1, 'code of conduct concerning voluntary application of specific requirements', 'celex:32024R1689/oj#art_95').
declared(drawn_up_by/2, 'code of conduct drawn up by an entity', 'celex:32024R1689/oj#art_95').
declared(covers/2, 'code of conduct covers an AI system', 'celex:32024R1689/oj#art_95').
declared(sme/1, 'small or medium-sized enterprise including start-ups', 'celex:32024R1689/oj#art_95').
must_encourage_and_facilitate(Entity, voluntary_application_code(Code)) :-
    (   ai_office(Entity)
    ;   member_state(Entity)
    ),
    code_of_conduct_applies(Code),
    voluntary_application_code(Code),
    \+ high_risk_ai_system(System),
    covers(Code, System).
must_facilitate(Entity, specific_requirements_code(Code)) :-
    (   ai_office(Entity)
    ;   member_state(Entity)
    ),
    code_of_conduct_applies(Code),
    specific_requirements_code(Code).
drawn_up_by(Code, Entity) :-
    code_of_conduct_applies(Code),
    (   provider(Entity)
    ;   deployer(Entity)
    ;   representative_organisation(Entity, provider)
    ;   representative_organisation(Entity, deployer)
    ).
covers(Code, System) :-
    code_of_conduct_applies(Code),
    ai_system(System),
    intended_purpose(System, Purpose),
    covers_by_purpose(Code, Purpose).
must_take_into_account_sme_interests(Entity, Code) :-
    (   ai_office(Entity)
    ;   member_state(Entity)
    ),
    code_of_conduct_applies(Code),
    sme(Sme),
    interested_in(Sme, Code).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(covers/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'entity obliged to develop guidelines on a topic', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'entity obliged to update guidelines on a topic', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(Commission, practical_implementation(Regulation)) :-
    Commission = 'Commission',
    Regulation = 'celex:32024R1689/oj'.
must_develop_guidelines(Commission, application_of_requirements_and_obligations) :-
    Commission = 'Commission'.
must_develop_guidelines(Commission, prohibited_practices) :-
    Commission = 'Commission'.
must_develop_guidelines(Commission, substantial_modification) :-
    Commission = 'Commission'.
must_develop_guidelines(Commission, transparency_obligations) :-
    Commission = 'Commission'.
must_develop_guidelines(Commission, relationship_with_union_law) :-
    Commission = 'Commission'.
must_develop_guidelines(Commission, definition_of_ai_system) :-
    Commission = 'Commission'.
must_update_guidelines(Commission, _Topic) :-
    Commission = 'Commission'.
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
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
declared(power_to_adopt_delegated_acts_conferred/1, 'power to adopt delegated acts is conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(delegation_of_power/1, 'delegation of power for a specific purpose', 'celex:32024R1689/oj#art_97').
declared(delegation_period/1, 'period for which delegation of power is conferred', 'celex:32024R1689/oj#art_97').
declared(report_on_delegation/1, 'report drawn up in respect of the delegation of power', 'celex:32024R1689/oj#art_97').
declared(tacit_extension/1, 'tacit extension of delegation of power', 'celex:32024R1689/oj#art_97').
declared(revocation_of_delegation/1, 'revocation of delegation of power', 'celex:32024R1689/oj#art_97').
declared(consultation_of_experts/1, 'consultation of experts before adopting a delegated act', 'celex:32024R1689/oj#art_97').
declared(notification_of_delegated_act/1, 'notification of a delegated act to Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(entry_into_force_of_delegated_act/1, 'conditions for entry into force of a delegated act', 'celex:32024R1689/oj#art_97').
power_to_adopt_delegated_acts_conferred(Commission) :-
    
    
    true.
delegation_of_power(power(Articles)) :-
    member(Article, [
        'celex:32024R1689/oj#art_6/par_6',
        'celex:32024R1689/oj#art_6/par_7',
        'celex:32024R1689/oj#art_7/par_1',
        'celex:32024R1689/oj#art_7/par_3',
        'celex:32024R1689/oj#art_11/par_3',
        'celex:32024R1689/oj#art_43/par_5',
        'celex:32024R1689/oj#art_43/par_6',
        'celex:32024R1689/oj#art_47/par_5',
        'celex:32024R1689/oj#art_51/par_3',
        'celex:32024R1689/oj#art_52/par_4',
        'celex:32024R1689/oj#art_53/par_5',
        'celex:32024R1689/oj#art_53/par_6'
    ]),
    Articles = Article.
delegation_period(period(years(5), from(date(2024, 8, 1)))) :-
    true.
must_draw_up_report(Commission, delegation_of_power) :-
    delegation_period(period(years(5), from(_))),
    deadline(months(9), before_end_of(period(years(5)))).
tacit_extension(period(identical_duration)) :-
    delegation_period(period(years(5), _)),
    \+ objection_to_extension(European_Parliament, period(identical_duration)),
    \+ objection_to_extension(Council, period(identical_duration)),
    deadline_for_objection(months(3), before_end_of(period(years(5)))).
revocation_of_delegation(power(Articles)) :-
    delegation_of_power(power(Articles)),
    (   revoked_by(European_Parliament)
    ;   revoked_by(Council)
    ).
effect_of_revocation(Decision) :-
    revocation_of_delegation(power(_)),
    decision_of_revocation(Decision),
    ends_delegation(Decision).
takes_effect(Decision, day_following_publication) :-
    decision_of_revocation(Decision),
    published_in_official_journal(Decision).
takes_effect(Decision, later_date_specified(Decision)) :-
    decision_of_revocation(Decision),
    later_date_specified_in_decision(Decision).
validity_of_existing_acts_unaffected(Decision) :-
    decision_of_revocation(Decision),
    delegated_acts_in_force(Acts),
    unaffected_by(Acts, Decision).
must_consult_experts(Commission, before_adopting(delegated_act)) :-
    power_to_adopt_delegated_acts_conferred(Commission),
    experts_designated_by_member_states(Experts),
    principles_of_interinstitutional_agreement(agreement('13 April 2016', 'Better Law-Making')).
must_notify(Commission, delegated_act(Act)) :-
    adopts_delegated_act(Commission, Act),
    simultaneously_notify(Commission, Act, European_Parliament),
    simultaneously_notify(Commission, Act, Council).
entry_into_force_of_delegated_act(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, power(Articles)),
    delegation_of_power(power(Articles)),
    notification_of_delegated_act(Act),
    period_of_three_months_elapsed(Act),
    \+ objection_expressed(European_Parliament, Act),
    \+ objection_expressed(Council, Act).
entry_into_force_of_delegated_act(Act) :-
    delegated_act(Act),
    adopted_pursuant_to(Act, power(Articles)),
    delegation_of_power(power(Articles)),
    notification_of_delegated_act(Act),
    before_expiry_of_period(Act, months(3)),
    both_informed_no_objection(European_Parliament, Council, Commission, Act).
extension_of_objection_period(Act, months(3)) :-
    delegated_act(Act),
    (   initiative_of(European_Parliament)
    ;   initiative_of(Council)
    ).
provenance(power_to_adopt_delegated_acts_conferred/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(revocation_of_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(effect_of_revocation/1, 'celex:32024R1689/oj#art_97').
provenance(takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(validity_of_existing_acts_unaffected/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(entry_into_force_of_delegated_act/1, 'celex:32024R1689/oj#art_97').
provenance(extension_of_objection_period/2, 'celex:32024R1689/oj#art_97').
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
declared(committee/1, 'committee assisting the Commission under the AI Act', 'celex:32024R1689/oj#art_98').
must_be_assisted(Commission, Committee) :-
    committee(Committee).
committee_within_meaning(Committee) :-
    committee(Committee).
provenance(must_be_assisted/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(must_lay_down_penalty_rules/2, 'Member State must lay down rules on penalties and enforcement measures', 'celex:32024R1689/oj#art_99').
declared(must_notify_penalty_rules/2, 'Member State must notify the Commission of penalty rules', 'celex:32024R1689/oj#art_99').
declared(must_notify_amendments/2, 'Member State must notify the Commission of amendments to penalty rules', 'celex:32024R1689/oj#art_99').
declared(subject_to_fine/2, 'infringement subject to administrative fine', 'celex:32024R1689/oj#art_99').
declared(fine_cap/2, 'maximum fine for an infringement', 'celex:32024R1689/oj#art_99').
declared(sme_fine_cap/2, 'maximum fine for SMEs', 'celex:32024R1689/oj#art_99').
declared(must_report_fines/2, 'Member State must report annually on fines issued', 'celex:32024R1689/oj#art_99').
declared(must_lay_down_public_authority_fine_rules/1, 'Member State must lay down rules on fines for public authorities', 'celex:32024R1689/oj#art_99').
declared(fine_decision_factors/1, 'factors to consider when deciding on a fine', 'celex:32024R1689/oj#art_99').
must_lay_down_penalty_rules(MemberState, infringement(operators)) :-
    member_state(MemberState).
must_notify_penalty_rules(MemberState, penalty_rules) :-
    member_state(MemberState).
must_notify_amendments(MemberState, penalty_rules) :-
    member_state(MemberState).
subject_to_fine(infringement(art_5), fine(eur(35000000), percent(7))).
subject_to_fine(infringement(art_16), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_22), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_23), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_24), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_26), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_31), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_33_par_1), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_33_par_3), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_33_par_4), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_34), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(art_50), fine(eur(15000000), percent(3))).
subject_to_fine(infringement(misleading_information), fine(eur(7500000), percent(1))).
fine_cap(infringement(art_5), fine(eur(35000000), percent(7))).
fine_cap(infringement(art_16), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_22), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_23), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_24), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_26), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_31), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_33_par_1), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_33_par_3), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_33_par_4), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_34), fine(eur(15000000), percent(3))).
fine_cap(infringement(art_50), fine(eur(15000000), percent(3))).
fine_cap(infringement(misleading_information), fine(eur(7500000), percent(1))).
sme_fine_cap(infringement(I), fine(Amount, Percent)) :-
    fine_cap(infringement(I), fine(Amount, Percent)).
must_report_fines(MemberState, annual_report) :-
    member_state(MemberState).
must_lay_down_public_authority_fine_rules(MemberState) :-
    member_state(MemberState).
fine_decision_factors([
    nature_gravity_duration_consequences,
    prior_fines_by_market_surveillance_authorities,
    prior_fines_by_other_authorities,
    size_turnover_market_share,
    aggravating_or_mitigating_factors,
    degree_of_cooperation,
    degree_of_responsibility,
    manner_infringement_became_known,
    intentional_or_negligent_character,
    action_to_mitigate_harm
]).
provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_amendments/2, 'celex:32024R1689/oj#art_99').
provenance(subject_to_fine/2, 'celex:32024R1689/oj#art_99').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(sme_fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_fines/2, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_public_authority_fine_rules/1, 'celex:32024R1689/oj#art_99').
provenance(fine_decision_factors/1, 'celex:32024R1689/oj#art_99').
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
declared(must_consider_circumstances/2, 'European Data Protection Supervisor must consider circumstances when deciding on administrative fines', 'celex:32024R1689/oj#art_100').
declared(subject_to_fine/2, 'infringement subject to administrative fine of up to amount', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'European Data Protection Supervisor must give opportunity to be heard before decision', 'celex:32024R1689/oj#art_100').
declared(must_respect_rights_of_defence/1, 'rights of defence must be respected in proceedings', 'celex:32024R1689/oj#art_100').
declared(must_notify_commission/2, 'European Data Protection Supervisor must notify Commission of fines and proceedings', 'celex:32024R1689/oj#art_100').
must_consider_circumstances(EuropeanDataProtectionSupervisor, fine_decision(UnionInstitution)) :-
    deciding_fine(EuropeanDataProtectionSupervisor, UnionInstitution),
    must_consider(EuropeanDataProtectionSupervisor, nature_gravity_duration(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, purpose_of_ai_system(System)),
    must_consider(EuropeanDataProtectionSupervisor, affected_persons(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, damage_suffered(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, degree_of_responsibility(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, mitigation_actions(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, cooperation_with_supervisor(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, previous_infringements(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, manner_infringement_became_known(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, annual_budget(UnionInstitution)).
subject_to_fine(non_compliance(art_5_prohibition), eur(1500000)).
subject_to_fine(non_compliance(other_requirements), eur(750000)).
must_give_opportunity_to_be_heard(EuropeanDataProtectionSupervisor, UnionInstitution) :-
    proceedings_conducted(EuropeanDataProtectionSupervisor, UnionInstitution),
    decision_based_on_commentable_elements(EuropeanDataProtectionSupervisor),
    complainants_associated(EuropeanDataProtectionSupervisor).
must_respect_rights_of_defence(UnionInstitution) :-
    proceedings_conducted(_Supervisor, UnionInstitution),
    access_to_file(UnionInstitution, file_of(EuropeanDataProtectionSupervisor)),
    subject_to_legitimate_interest(UnionInstitution, personal_data),
    subject_to_legitimate_interest(UnionInstitution, business_secrets).
must_notify_commission(EuropeanDataProtectionSupervisor, annual_report) :-
    must_report(EuropeanDataProtectionSupervisor, administrative_fines_imposed),
    must_report(EuropeanDataProtectionSupervisor, litigation_initiated),
    must_report(EuropeanDataProtectionSupervisor, judicial_proceedings_initiated).
provenance(must_consider_circumstances/2, 'celex:32024R1689/oj#art_100').
provenance(subject_to_fine/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_101 ====
declared(may_impose_fine/2, 'Commission may impose fine on provider of general-purpose AI model', 'celex:32024R1689/oj#art_101').
declared(fine_infringement/2, 'infringement ground for fine under Article 101', 'celex:32024R1689/oj#art_101').
declared(fine_amount_cap/2, 'maximum fine amount for provider', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'Commission must communicate preliminary findings before decision', 'celex:32024R1689/oj#art_101').
declared(fine_characteristics/1, 'fines must be effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_101').
declared(must_communicate_fine_information/2, 'information on fines must be communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(cjeu_jurisdiction/1, 'CJEU has unlimited jurisdiction to review fine decisions', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts/1, 'Commission must adopt implementing acts for proceedings', 'celex:32024R1689/oj#art_101').
may_impose_fine(Commission, fine(Provider, Amount)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    intentionally_or_negligently(Provider, Infringement),
    fine_infringement(Infringement, Provider),
    fine_amount_cap(Provider, Cap),
    Amount =< Cap.
fine_infringement(infringed_relevant_provisions, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    infringed(Provider, relevant_provisions).
fine_infringement(failed_document_request(art_91), Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    failed_to_comply_with_document_request(Provider, art_91).
fine_infringement(supplied_incorrect_incomplete_misleading_information, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    supplied_incorrect_incomplete_misleading_information(Provider).
fine_infringement(failed_measure_art_93, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    failed_to_comply_with_measure(Provider, art_93).
fine_infringement(failed_access_art_92, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    failed_to_make_available_access(Provider, Model, art_92).
fine_amount_cap(Provider, Cap) :-
    provider(Provider),
    annual_total_worldwide_turnover(Provider, preceding_financial_year, Turnover),
    Cap is max(0.03 * Turnover, 15000000).
must_communicate_preliminary_findings(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    before_adopting_decision(Commission, art_101_par_1).
fine_characteristics(effective).
fine_characteristics(proportionate).
fine_characteristics(dissuasive).
must_communicate_fine_information(Commission, Board) :-
    fine_imposed(Commission, _Provider, _Amount),
    as_appropriate(Board).
cjeu_jurisdiction(review_fine_decision(Commission, Provider, Amount)) :-
    fine_imposed(Commission, Provider, Amount).
must_adopt_implementing_acts(Commission) :-
    implementing_acts(Commission, proceedings_arrangements_safeguards, art_101_par_1).
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_infringement/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount_cap/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(fine_characteristics/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information/2, 'celex:32024R1689/oj#art_101').
provenance(cjeu_jurisdiction/1, 'celex:32024R1689/oj#art_101').
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
declared(must_take_into_account/2, 'actor must take into account the requirements', 'celex:32024R1689/oj#art_102').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_detailed_measures(Commission, security_equipment(ai_systems)).
adopting_detailed_measures(Commission, security_equipment(ai_systems)) :-
    
    
    true.
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_102').
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
declared(must_take_into_account/2, 'actor must take into account the requirements', 'celex:32024R1689/oj#art_103').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_act(Commission, artificial_intelligence_systems),
    safety_component(artificial_intelligence_systems).
adopting_delegated_act(Commission, artificial_intelligence_systems) :-
    
    
    true.
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_104 ====
declared(must_take_into_account/2, 'entity adopting delegated acts must take into account AI requirements', 'celex:32024R1689/oj#art_104').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_acts(Commission, safety_components_ai_systems).
adopting_delegated_acts(Commission, safety_components_ai_systems) :-
    delegated_acts_pursuant_to(Commission, 'celex:32013R0168/oj#art_22/par_5/unp_1'),
    safety_component(S),
    ai_system(S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_acts/2, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account/2, 'entity must consider specified requirements', 'celex:32024R1689/oj#art_105').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    ai_system(S),
    safety_component(S),
    (   carrying_out_activities(Commission, article_8_paragraph_1)
    ;   adopting_technical_specifications(Commission, article_8_paragraph_2)
    ;   adopting_testing_standards(Commission, article_8_paragraph_3)
    ).
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
declared(must_take_into_account/2, 'actor must take into account requirements when adopting acts', 'celex:32024R1689/oj#art_106').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_act(Commission, art_5_par_1),
    concerning_ai_safety_components(art_5_par_1).
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_implementing_act(Commission, art_5_par_11),
    concerning_ai_safety_components(art_5_par_11).
concerning_ai_safety_components(Act) :-
    ai_system(S),
    safety_component(S),
    act_concerns(Act, S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_106').
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
declared(must_take_into_account/2, 'actor must take into account the requirements', 'celex:32024R1689/oj#art_107').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_acts(Commission, artificial_intelligence_systems),
    safety_component(artificial_intelligence_systems).
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
declared(must_take_into_account/2, 'actor must take into account requirements when adopting acts concerning AI safety components', 'celex:32024R1689/oj#art_108').
must_take_into_account(Actor, requirements(chapter_3_section_2)) :-
    adopting_act(Actor, Act),
    concerns_ai_safety_component(Act).
adopting_act(Actor, implementing_act(Article)) :-
    member(Article, [art_17, art_43, art_57]),
    Actor = commission.
adopting_act(Actor, delegated_act(Article)) :-
    member(Article, [art_19, art_47, art_58]),
    Actor = commission.
concerns_ai_safety_component(Act) :-
    Act = implementing_act(_).
concerns_ai_safety_component(Act) :-
    Act = delegated_act(_).
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
declared(must_take_into_account/2, 'entity must take into account requirements when adopting implementing acts', 'celex:32024R1689/oj#art_109').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    adopting_implementing_acts(Commission, artificial_intelligence_systems),
    safety_components(artificial_intelligence_systems).
adopting_implementing_acts(Commission, artificial_intelligence_systems) :-
    
    true.
safety_components(artificial_intelligence_systems) :-
    
    true.
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
declared(amendment_added/2, 'amendment added to a directive by this regulation', 'celex:32024R1689/oj#art_110').
amendment_added('celex:32020L1828/oj', 'celex:32024R1689/oj').
provenance(amendment_added/2, 'celex:32024R1689/oj#art_110').
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
declared(must_bring_into_compliance/2, 'entity obliged to bring AI system into compliance', 'celex:32024R1689/oj#art_111').
declared(must_take_necessary_steps/2, 'entity obliged to take necessary steps for compliance', 'celex:32024R1689/oj#art_111').
declared(large_scale_it_system_component/1, 'AI system that is a component of a large-scale IT system listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_or_put_into_service_before/2, 'AI system placed on market or put into service before a given date', 'celex:32024R1689/oj#art_111').
declared(subject_to_significant_design_changes_after/2, 'AI system subject to significant design changes after a given date', 'celex:32024R1689/oj#art_111').
declared(intended_for_use_by_public_authorities/1, 'high-risk AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(general_purpose_ai_model_placed_on_market_before/2, 'general-purpose AI model placed on market before a given date', 'celex:32024R1689/oj#art_111').
must_bring_into_compliance(_Operator, S) :-
    large_scale_it_system_component(S),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)),
    ai_system(S).
must_take_necessary_steps(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    subject_to_significant_design_changes_after(S, date(2026, 8, 2)),
    \+ large_scale_it_system_component(S).
must_take_necessary_steps(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S),
    ( provider(Operator) ; deployer(Operator) ).
must_take_necessary_steps(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    general_purpose_ai_model_placed_on_market_before(M, date(2025, 8, 2)).
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system_component/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_changes_after/2, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_on_market_before/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess_amendment_need/2, 'Commission must assess need for amendment of a list', 'celex:32024R1689/oj#art_112').
declared(must_submit_findings/2, 'Commission must submit findings of assessment', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_and_report/3, 'Commission must evaluate and report on a topic by a deadline', 'celex:32024R1689/oj#art_112').
declared(must_submit_report/3, 'Commission must submit a report on evaluation and review', 'celex:32024R1689/oj#art_112').
declared(report_must_pay_attention/2, 'Report must pay specific attention to a topic', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_functioning/2, 'Commission must evaluate functioning of an entity', 'celex:32024R1689/oj#art_112').
declared(must_submit_review_report/2, 'Commission must submit a report on review of progress', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_impact/2, 'Commission must evaluate impact and effectiveness', 'celex:32024R1689/oj#art_112').
declared(must_provide_information/2, 'Entity must provide information to the Commission upon request', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account/2, 'Commission must take into account positions and findings', 'celex:32024R1689/oj#art_112').
declared(must_submit_amendment_proposals/1, 'Commission must submit appropriate proposals to amend the regulation', 'celex:32024R1689/oj#art_112').
declared(must_develop_methodology/2, 'AI Office must develop methodology for evaluation of risk levels', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account_sectoral_specificities/1, 'Amendment must take into account regulatory specificities of each sector', 'celex:32024R1689/oj#art_112').
declared(must_carry_out_enforcement_assessment/1, 'Commission must carry out assessment of enforcement', 'celex:32024R1689/oj#art_112').
must_assess_amendment_need(Commission, list(annex_iii)) :-
    commission(Commission).
must_assess_amendment_need(Commission, list(prohibited_practices)) :-
    commission(Commission).
must_submit_findings(Commission, assessment(amendment_need)) :-
    commission(Commission).
must_evaluate_and_report(Commission, topic(extending_or_adding_area_headings(annex_iii)), deadline(date(2028, 8, 2))) :-
    commission(Commission).
must_evaluate_and_report(Commission, topic(amendments_to_transparency_list(art_50)), deadline(date(2028, 8, 2))) :-
    commission(Commission).
must_evaluate_and_report(Commission, topic(enhancing_supervision_and_governance), deadline(date(2028, 8, 2))) :-
    commission(Commission).
must_submit_report(Commission, report(evaluation_and_review(regulation)), deadline(date(2029, 8, 2))) :-
    commission(Commission).
report_must_pay_attention(report(paragraph_2), topic(status_of_resources(national_competent_authorities))).
report_must_pay_attention(report(paragraph_2), topic(state_of_penalties(administrative_fines))).
report_must_pay_attention(report(paragraph_2), topic(adopted_harmonised_standards_and_common_specifications)).
report_must_pay_attention(report(paragraph_2), topic(number_of_undertakings_entering_market)).
must_evaluate_functioning(Commission, entity(ai_office)) :-
    commission(Commission).
must_submit_report(Commission, report(evaluation(ai_office)), deadline(date(2028, 8, 2))) :-
    commission(Commission).
must_submit_review_report(Commission, report(progress_on_energy_efficient_development(general_purpose_ai_models))) :-
    commission(Commission).
must_evaluate_impact(Commission, impact(voluntary_codes_of_conduct)) :-
    commission(Commission).
must_provide_information(Entity, Commission) :-
    (   board(Entity)
    ;   member_state(Entity)
    ;   national_competent_authority(Entity)
    ),
    commission(Commission).
must_take_into_account(Commission, positions_and_findings) :-
    commission(Commission).
must_submit_amendment_proposals(Commission) :-
    commission(Commission).
must_develop_methodology(ai_office, methodology(evaluation_of_risk_levels)) :-
    ai_office(ai_office).
must_take_into_account_sectoral_specificities(amendment(regulation)) :-
    true.
must_carry_out_enforcement_assessment(Commission) :-
    commission(Commission).
must_submit_report(Commission, report(enforcement_assessment), deadline(date(2031, 8, 2))) :-
    commission(Commission).
provenance(must_assess_amendment_need/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/3, 'celex:32024R1689/oj#art_112').
provenance(report_must_pay_attention/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_review_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_impact/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_amendment_proposals/1, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account_sectoral_specificities/1, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_enforcement_assessment/1, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
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
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% ==== celex:32024R1689/oj#art_113 ====
declared(entry_into_force/1, 'date on which the regulation enters into force', 'celex:32024R1689/oj#art_113').
declared(applies_from/2, 'provision applies from a given date', 'celex:32024R1689/oj#art_113').
entry_into_force(date(2024, 7, 12)).
applies_from('celex:32024R1689/oj', date(2026, 8, 2)).
applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
applies_from('celex:32024R1689/oj', date(2027, 8, 2)) :-
    applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
provenance(entry_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation/1, 'legislation listed in Annex I', 'celex:32024R1689/oj#anx_1').
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
declared(criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii/1, 'criminal offence listed in Annex II', 'celex:32024R1689/oj#anx_2').
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(terrorism).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(trafficking_in_human_beings).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(sexual_exploitation_of_children).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(child_pornography).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(murder).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(grievous_bodily_injury).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(illicit_trade_in_human_organs_or_tissue).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(kidnapping_illegal_restraint_or_hostage_taking).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(crimes_within_the_jurisdiction_of_the_international_criminal_court).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(unlawful_seizure_of_aircraft_or_ships).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(rape).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(environmental_crime).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(organised_or_armed_robbery).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(sabotage).
criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii(participation_in_a_criminal_organisation_involved_in_one_or_more_of_the_offences_listed_above).
provenance(criminal_offence_referred_to_in_art_5_par_1_unp_1_pnt_h_pnt_iii/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#anx_3').
declared(biometric_verification_system/1, 'AI system for biometric verification', 'celex:32024R1689/oj#anx_3').
declared(biometric_categorisation_system_sensitive/1, 'AI system for biometric categorisation by sensitive attributes', 'celex:32024R1689/oj#anx_3').
declared(emotion_recognition_system_high_risk/1, 'AI system for emotion recognition under Annex III', 'celex:32024R1689/oj#anx_3').
declared(safety_component_critical_infrastructure/1, 'AI system as safety component in critical infrastructure', 'celex:32024R1689/oj#anx_3').
declared(education_access_system/1, 'AI system for determining access to education', 'celex:32024R1689/oj#anx_3').
declared(learning_outcome_evaluation_system/1, 'AI system for evaluating learning outcomes', 'celex:32024R1689/oj#anx_3').
declared(education_level_assessment_system/1, 'AI system for assessing appropriate education level', 'celex:32024R1689/oj#anx_3').
declared(student_monitoring_system/1, 'AI system for monitoring prohibited student behaviour', 'celex:32024R1689/oj#anx_3').
declared(employment_recruitment_system/1, 'AI system for recruitment or selection', 'celex:32024R1689/oj#anx_3').
declared(employment_decision_system/1, 'AI system for decisions affecting work relationships', 'celex:32024R1689/oj#anx_3').
declared(public_benefit_evaluation_system/1, 'AI system for evaluating eligibility for public benefits', 'celex:32024R1689/oj#anx_3').
declared(creditworthiness_evaluation_system/1, 'AI system for evaluating creditworthiness', 'celex:32024R1689/oj#anx_3').
declared(insurance_risk_assessment_system/1, 'AI system for risk assessment in life and health insurance', 'celex:32024R1689/oj#anx_3').
declared(emergency_response_system/1, 'AI system for emergency call classification and dispatch', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_victim_risk_system/1, 'AI system for assessing risk of becoming victim', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_polygraph_system/1, 'AI system used as polygraph by law enforcement', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_evidence_reliability_system/1, 'AI system for evaluating reliability of evidence', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_offending_risk_system/1, 'AI system for assessing risk of offending', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_profiling_system/1, 'AI system for profiling in criminal investigations', 'celex:32024R1689/oj#anx_3').
declared(migration_polygraph_system/1, 'AI system used as polygraph in migration context', 'celex:32024R1689/oj#anx_3').
declared(migration_risk_assessment_system/1, 'AI system for assessing risk in migration context', 'celex:32024R1689/oj#anx_3').
declared(migration_application_examination_system/1, 'AI system for examining asylum or visa applications', 'celex:32024R1689/oj#anx_3').
declared(migration_identification_system/1, 'AI system for detecting or identifying persons in migration context', 'celex:32024R1689/oj#anx_3').
declared(judicial_assistance_system/1, 'AI system for assisting judicial authorities', 'celex:32024R1689/oj#anx_3').
declared(election_influence_system/1, 'AI system for influencing elections or referenda', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_system(S).
biometric_verification_system(S) :-
    ai_system(S),
    biometric_verification(S).
high_risk_ai_system(S) :-
    biometric_categorisation_system_sensitive(S).
biometric_categorisation_system_sensitive(S) :-
    biometric_categorisation_system(S).
high_risk_ai_system(S) :-
    emotion_recognition_system_high_risk(S).
emotion_recognition_system_high_risk(S) :-
    emotion_recognition_system(S).
high_risk_ai_system(S) :-
    safety_component_critical_infrastructure(S).
safety_component_critical_infrastructure(S) :-
    ai_system(S),
    safety_component(S).
high_risk_ai_system(S) :-
    education_access_system(S).
high_risk_ai_system(S) :-
    learning_outcome_evaluation_system(S).
high_risk_ai_system(S) :-
    education_level_assessment_system(S).
high_risk_ai_system(S) :-
    student_monitoring_system(S).
high_risk_ai_system(S) :-
    employment_recruitment_system(S).
high_risk_ai_system(S) :-
    employment_decision_system(S).
high_risk_ai_system(S) :-
    public_benefit_evaluation_system(S).
high_risk_ai_system(S) :-
    creditworthiness_evaluation_system(S).
high_risk_ai_system(S) :-
    insurance_risk_assessment_system(S).
high_risk_ai_system(S) :-
    emergency_response_system(S).
high_risk_ai_system(S) :-
    law_enforcement_victim_risk_system(S).
high_risk_ai_system(S) :-
    law_enforcement_polygraph_system(S).
high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_system(S).
high_risk_ai_system(S) :-
    law_enforcement_offending_risk_system(S).
high_risk_ai_system(S) :-
    law_enforcement_profiling_system(S).
high_risk_ai_system(S) :-
    migration_polygraph_system(S).
high_risk_ai_system(S) :-
    migration_risk_assessment_system(S).
high_risk_ai_system(S) :-
    migration_application_examination_system(S).
high_risk_ai_system(S) :-
    migration_identification_system(S).
high_risk_ai_system(S) :-
    judicial_assistance_system(S).
high_risk_ai_system(S) :-
    election_influence_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_categorisation_system_sensitive/1, 'celex:32024R1689/oj#anx_3').
provenance(emotion_recognition_system_high_risk/1, 'celex:32024R1689/oj#anx_3').
provenance(safety_component_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_system/1, 'celex:32024R1689/oj#anx_3').
provenance(learning_outcome_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_level_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(student_monitoring_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_recruitment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_decision_system/1, 'celex:32024R1689/oj#anx_3').
provenance(public_benefit_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(creditworthiness_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(insurance_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(emergency_response_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_victim_risk_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_evidence_reliability_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_offending_risk_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_application_examination_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(judicial_assistance_system/1, 'celex:32024R1689/oj#anx_3').
provenance(election_influence_system/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(technical_documentation/1, 'documentation containing required information for an AI system', 'celex:32024R1689/oj#anx_4').
declared(contains_general_description/1, 'documentation includes a general description of the AI system', 'celex:32024R1689/oj#anx_4').
declared(contains_element_description/1, 'documentation includes a detailed description of elements and development process', 'celex:32024R1689/oj#anx_4').
declared(contains_monitoring_information/1, 'documentation includes detailed monitoring, functioning and control information', 'celex:32024R1689/oj#anx_4').
declared(contains_performance_metrics_description/1, 'documentation includes description of appropriateness of performance metrics', 'celex:32024R1689/oj#anx_4').
declared(contains_risk_management_description/1, 'documentation includes detailed description of the risk management system', 'celex:32024R1689/oj#anx_4').
declared(contains_lifecycle_changes_description/1, 'documentation includes description of relevant changes through lifecycle', 'celex:32024R1689/oj#anx_4').
declared(contains_harmonised_standards_list/1, 'documentation includes list of harmonised standards applied', 'celex:32024R1689/oj#anx_4').
declared(contains_eu_declaration_of_conformity/1, 'documentation includes a copy of the EU declaration of conformity', 'celex:32024R1689/oj#anx_4').
declared(contains_post_market_evaluation_description/1, 'documentation includes description of post-market performance evaluation system', 'celex:32024R1689/oj#anx_4').
technical_documentation(D) :-
    contains_general_description(D),
    contains_element_description(D),
    contains_monitoring_information(D),
    contains_performance_metrics_description(D),
    contains_risk_management_description(D),
    contains_lifecycle_changes_description(D),
    contains_harmonised_standards_list(D),
    contains_eu_declaration_of_conformity(D),
    contains_post_market_evaluation_description(D).
provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_element_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_monitoring_information/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_performance_metrics_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_risk_management_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_post_market_evaluation_description/1, 'celex:32024R1689/oj#anx_4').
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
declared(contains_information/2, 'declaration contains required information item', 'celex:32024R1689/oj#anx_5').
must_contain(D, ai_system_identification) :-
    eu_declaration_of_conformity(D).
must_contain(D, provider_identification) :-
    eu_declaration_of_conformity(D).
must_contain(D, sole_responsibility_statement) :-
    eu_declaration_of_conformity(D).
must_contain(D, conformity_statement) :-
    eu_declaration_of_conformity(D).
must_contain(D, data_protection_statement) :-
    eu_declaration_of_conformity(D),
    involves_processing_of_personal_data(D).
must_contain(D, harmonised_standards_references) :-
    eu_declaration_of_conformity(D).
must_contain(D, notified_body_details) :-
    eu_declaration_of_conformity(D),
    applicable_notified_body(D, _Body).
must_contain(D, issue_details) :-
    eu_declaration_of_conformity(D).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_information/2, 'celex:32024R1689/oj#anx_5').
provenance(must_contain/2, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_procedure_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
conformity_assessment_procedure_based_on_internal_control(P) :-
    provider(P),
    must_verify_qms_compliance(P),
    must_examine_technical_documentation(P),
    must_verify_design_consistency(P).
must_verify_qms_compliance(P) :-
    provider(P),
    quality_management_system_established(P).
must_examine_technical_documentation(P) :-
    provider(P),
    technical_documentation_contains_information(P).
must_verify_design_consistency(P) :-
    provider(P),
    design_and_development_process_consistent_with_technical_documentation(P),
    post_market_monitoring_consistent_with_technical_documentation(P).
provenance(conformity_assessment_procedure_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_qms_compliance/1, 'celex:32024R1689/oj#anx_6/pnt_2').
provenance(must_examine_technical_documentation/1, 'celex:32024R1689/oj#anx_6/pnt_3').
provenance(must_verify_design_consistency/1, 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(application_includes/2, 'application includes specified item', 'celex:32024R1689/oj#anx_7').
declared(quality_management_system_assessed/2, 'notified body assesses quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_notify/2, 'entity must notify another entity', 'celex:32024R1689/oj#anx_7').
declared(must_implement/2, 'entity must implement and maintain something', 'celex:32024R1689/oj#anx_7').
declared(must_inform/2, 'entity must inform another entity of something', 'celex:32024R1689/oj#anx_7').
declared(must_examine/2, 'entity must examine something', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access/3, 'entity must grant access to something for purpose', 'celex:32024R1689/oj#anx_7').
declared(may_require/2, 'entity may require something', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out/2, 'entity must carry out tests', 'celex:32024R1689/oj#anx_7').
declared(must_issue/2, 'entity must issue certificate', 'celex:32024R1689/oj#anx_7').
declared(must_refuse/2, 'entity must refuse to issue certificate', 'celex:32024R1689/oj#anx_7').
declared(must_assess/2, 'entity must assess changes', 'celex:32024R1689/oj#anx_7').
declared(must_allow_access/2, 'entity must allow access to premises', 'celex:32024R1689/oj#anx_7').
declared(must_share/2, 'entity must share information', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out_audits/2, 'entity must carry out periodic audits', 'celex:32024R1689/oj#anx_7').
declared(must_provide/2, 'entity must provide audit report', 'celex:32024R1689/oj#anx_7').
application_includes(application(Provider), name_and_address(Provider)) :-
    provider(Provider).
application_includes(application(Provider), name_and_address(Representative)) :-
    authorised_representative(Representative),
    lodged_by(application(Provider), Representative).
application_includes(application(Provider), list_of_ai_systems(Systems)) :-
    provider(Provider),
    covered_by_same_qms(Systems).
application_includes(application(Provider), technical_documentation(System)) :-
    provider(Provider),
    covered_by_same_qms(System).
application_includes(application(Provider), qms_documentation(Doc)) :-
    provider(Provider),
    covers_all_aspects(Doc, 'celex:32024R1689/oj#art_17').
application_includes(application(Provider), procedures_ensuring_qms_adequacy(Procs)) :-
    provider(Provider).
application_includes(application(Provider), declaration_no_other_body) :-
    provider(Provider).
quality_management_system_assessed(NotifiedBody, QMS) :-
    notified_body(NotifiedBody),
    satisfies_requirements(QMS, 'celex:32024R1689/oj#art_17').
must_notify(NotifiedBody, decision(assessment(QMS), Conclusions, ReasonedDecision)) :-
    notified_body(NotifiedBody),
    quality_management_system_assessed(NotifiedBody, QMS),
    provider_or_representative(Recipient),
    must_notify(NotifiedBody, Recipient).
must_implement(Provider, quality_management_system(QMS)) :-
    provider(Provider),
    quality_management_system_assessed(_, QMS).
must_inform(Provider, intended_change(Change)) :-
    provider(Provider),
    intended_change_to_qms(Change).
must_examine(NotifiedBody, proposed_changes(Changes)) :-
    notified_body(NotifiedBody),
    proposed_changes(Changes).
must_notify(NotifiedBody, decision(changes(Changes), Conclusions, ReasonedDecision)) :-
    notified_body(NotifiedBody),
    must_examine(NotifiedBody, proposed_changes(Changes)).
must_lodge(Provider, application(technical_documentation(System))) :-
    provider(Provider),
    intends_to_place_or_put_into_service(Provider, System),
    covered_by_qms(System).
application_includes(application(technical_documentation(System)), name_and_address(Provider)) :-
    provider(Provider).
application_includes(application(technical_documentation(System)), declaration_no_other_body) :-
    provider(Provider).
application_includes(application(technical_documentation(System)), technical_documentation_annex_iv(Doc)) :-
    provider(Provider),
    technical_documentation_referred_to(Doc, 'celex:32024R1689/oj#anx_4').
must_examine(NotifiedBody, technical_documentation(System)) :-
    notified_body(NotifiedBody),
    technical_documentation(System).
must_grant_access(Provider, NotifiedBody, training_validation_testing_data(System)) :-
    notified_body(NotifiedBody),
    must_examine(NotifiedBody, technical_documentation(System)),
    provider(Provider).
may_require(NotifiedBody, further_evidence_or_tests(Provider)) :-
    notified_body(NotifiedBody),
    examining_technical_documentation(NotifiedBody, System).
must_carry_out(NotifiedBody, adequate_tests(System)) :-
    notified_body(NotifiedBody),
    not_satisfied_with_tests(NotifiedBody, Provider).
must_grant_access(Provider, NotifiedBody, training_and_trained_models(System)) :-
    notified_body(NotifiedBody),
    necessary_to_assess_conformity(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    exhausted_other_means(System),
    reasoned_request(NotifiedBody).
must_notify(NotifiedBody, decision(technical_documentation(System), Conclusions, ReasonedDecision)) :-
    notified_body(NotifiedBody),
    must_examine(NotifiedBody, technical_documentation(System)).
must_issue(NotifiedBody, union_technical_documentation_assessment_certificate(System, Provider, Conclusions, Conditions, IdentificationData)) :-
    notified_body(NotifiedBody),
    in_conformity_with(System, 'celex:32024R1689/oj#chp_3/sec_2').
must_refuse(NotifiedBody, union_technical_documentation_assessment_certificate(System)) :-
    notified_body(NotifiedBody),
    \+ in_conformity_with(System, 'celex:32024R1689/oj#chp_3/sec_2').
must_inform(NotifiedBody, refusal_reasons(Applicant, detailed_reasons)) :-
    must_refuse(NotifiedBody, union_technical_documentation_assessment_certificate(System)).
must_inform(Provider, intended_change_to_ai_system(Change)) :-
    provider(Provider),
    change_affecting_compliance_or_purpose(Change).
must_assess(NotifiedBody, intended_changes(Changes)) :-
    notified_body(NotifiedBody),
    issued_certificate(NotifiedBody, System).
must_notify(NotifiedBody, decision(changes(Changes), require_new_assessment_or_supplement)) :-
    must_assess(NotifiedBody, intended_changes(Changes)).
must_issue(NotifiedBody, supplement_to_certificate(System, Changes)) :-
    notified_body(NotifiedBody),
    changes_approved(NotifiedBody, Changes).
surveillance_purpose(NotifiedBody, ensure_compliance(Provider, qms_terms_and_conditions)) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_allow_access(Provider, premises(design_development_testing)) :-
    provider(Provider),
    surveillance_purpose(NotifiedBody, _).
must_share(Provider, all_necessary_information) :-
    provider(Provider),
    surveillance_purpose(NotifiedBody, _).
must_carry_out_audits(NotifiedBody, periodic_audits(Provider)) :-
    notified_body(NotifiedBody),
    provider(Provider).
must_provide(NotifiedBody, audit_report(Provider)) :-
    must_carry_out_audits(NotifiedBody, periodic_audits(Provider)).
provenance(application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_assessed/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_implement/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access/3, 'celex:32024R1689/oj#anx_7').
provenance(may_require/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(must_submit_registration_info/2, 'Actor must submit registration information for a high-risk AI system', 'celex:32024R1689/oj#anx_8').
declared(must_keep_registration_info_up_to_date/2, 'Actor must keep registration information up to date for a high-risk AI system', 'celex:32024R1689/oj#anx_8').
declared(registration_info_section_a/2, 'Information required under Section A for a high-risk AI system', 'celex:32024R1689/oj#anx_8/sec_A').
declared(registration_info_section_b/2, 'Information required under Section B for a high-risk AI system', 'celex:32024R1689/oj#anx_8/sec_B').
declared(registration_info_section_c/2, 'Information required under Section C for a high-risk AI system', 'celex:32024R1689/oj#anx_8/sec_C').
must_submit_registration_info(Provider, registration_info_section_a(System)) :-
    provider(Provider),
    registration_info_section_a(Provider, System).
must_keep_registration_info_up_to_date(Provider, registration_info_section_a(System)) :-
    provider(Provider),
    registration_info_section_a(Provider, System).
registration_info_section_a(Provider, System) :-
    provider(Provider),
    ai_system(System),
    
    
    
    
    high_risk_ai_system(System),
    
    
    
    
    
    
    
    
    
    
    
    
    
    true.
must_submit_registration_info(Provider, registration_info_section_b(System)) :-
    provider(Provider),
    registration_info_section_b(Provider, System).
must_keep_registration_info_up_to_date(Provider, registration_info_section_b(System)) :-
    provider(Provider),
    registration_info_section_b(Provider, System).
registration_info_section_b(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System),
    
    
    
    
    
    
    
    
    
    true.
must_submit_registration_info(Deployer, registration_info_section_c(System)) :-
    deployer(Deployer),
    registration_info_section_c(Deployer, System).
must_keep_registration_info_up_to_date(Deployer, registration_info_section_c(System)) :-
    deployer(Deployer),
    registration_info_section_c(Deployer, System).
registration_info_section_c(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    high_risk_ai_system(System),
    
    
    
    
    
    true.
provenance(must_submit_registration_info/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_info_up_to_date/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_info_section_a/2, 'celex:32024R1689/oj#anx_8/sec_A').
provenance(registration_info_section_b/2, 'celex:32024R1689/oj#anx_8/sec_B').
provenance(registration_info_section_c/2, 'celex:32024R1689/oj#anx_8/sec_C').
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
declared(must_provide_information/2, 'entity must provide specified information for registration', 'celex:32024R1689/oj#anx_9').
declared(must_keep_up_to_date/2, 'entity must keep specified information up to date', 'celex:32024R1689/oj#anx_9').
declared(testing_in_real_world_conditions_registration/1, 'information required for registration of testing in real world conditions', 'celex:32024R1689/oj#anx_9').
must_provide_information(Provider, testing_in_real_world_conditions_registration(Info)) :-
    ( provider(Provider) ; prospective_provider(Provider) ),
    testing_in_real_world_conditions(Testing),
    involves_system(Testing, System),
    high_risk_ai_system_listed_in_annex_3(System),
    registration_info(Info, Testing, System).
must_keep_up_to_date(Provider, testing_in_real_world_conditions_registration(Info)) :-
    must_provide_information(Provider, testing_in_real_world_conditions_registration(Info)).
registration_info(info(Id, ProviderDetails, SystemDescription, PlanSummary, StatusInfo), Testing, System) :-
    union_wide_unique_single_identification_number(Id, Testing),
    provider_and_deployer_details(ProviderDetails, Testing),
    system_description(SystemDescription, System),
    plan_summary(PlanSummary, Testing),
    status_information(StatusInfo, Testing).
union_wide_unique_single_identification_number(Id, Testing) :-
    testing_in_real_world_conditions(Testing),
    identification_number(Id, Testing).
provider_and_deployer_details(details(ProviderName, ProviderContact, Deployers), Testing) :-
    testing_in_real_world_conditions(Testing),
    involved_provider(ProviderName, ProviderContact, Testing),
    involved_deployers(Deployers, Testing).
system_description(description(Purpose, IdentificationInfo), System) :-
    ai_system(System),
    intended_purpose(Purpose),
    identification_information(IdentificationInfo, System).
plan_summary(Summary, Testing) :-
    testing_in_real_world_conditions(Testing),
    real_world_testing_plan(Plan),
    main_characteristics(Summary, Plan).
status_information(Status, Testing) :-
    testing_in_real_world_conditions(Testing),
    suspension_or_termination(Status, Testing).
declared(prospective_provider/1, 'entity intending to become a provider', 'celex:32024R1689/oj#anx_9').
declared(involves_system/2, 'testing involves a specific AI system', 'celex:32024R1689/oj#anx_9').
declared(high_risk_ai_system_listed_in_annex_3/1, 'high-risk AI system listed in Annex III', 'celex:32024R1689/oj#anx_9').
declared(identification_number/2, 'unique identification number for testing', 'celex:32024R1689/oj#anx_9').
declared(involved_provider/3, 'provider involved in testing', 'celex:32024R1689/oj#anx_9').
declared(involved_deployers/2, 'deployers involved in testing', 'celex:32024R1689/oj#anx_9').
declared(identification_information/2, 'information necessary for system identification', 'celex:32024R1689/oj#anx_9').
declared(main_characteristics/2, 'summary of main characteristics of a plan', 'celex:32024R1689/oj#anx_9').
declared(suspension_or_termination/2, 'information on suspension or termination of testing', 'celex:32024R1689/oj#anx_9').
provenance(must_provide_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(testing_in_real_world_conditions_registration/1, 'celex:32024R1689/oj#anx_9').
provenance(prospective_provider/1, 'celex:32024R1689/oj#anx_9').
provenance(involves_system/2, 'celex:32024R1689/oj#anx_9').
provenance(high_risk_ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#anx_9').
provenance(identification_number/2, 'celex:32024R1689/oj#anx_9').
provenance(involved_provider/3, 'celex:32024R1689/oj#anx_9').
provenance(involved_deployers/2, 'celex:32024R1689/oj#anx_9').
provenance(identification_information/2, 'celex:32024R1689/oj#anx_9').
provenance(main_characteristics/2, 'celex:32024R1689/oj#anx_9').
provenance(suspension_or_termination/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system/1, 'large-scale IT system in the area of Freedom, Security and Justice', 'celex:32024R1689/oj#anx_10').
large_scale_it_system(schengen_information_system).
large_scale_it_system(visa_information_system).
large_scale_it_system(eurodac).
large_scale_it_system(entry_exit_system).
large_scale_it_system(european_travel_information_and_authorisation_system).
large_scale_it_system(european_criminal_records_information_system_on_third_country_nationals_and_stateless_persons).
large_scale_it_system(interoperability).
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#anx_10').
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
declared(general_purpose_ai_model/1, 'AI model capable of a wide range of tasks', 'celex:32024R1689/oj#anx_11').
declared(systemic_risk_model/1, 'general-purpose AI model with systemic risk', 'celex:32024R1689/oj#anx_11').
declared(technical_documentation/1, 'documentation required under Annex XI', 'celex:32024R1689/oj#anx_11').
declared(must_include_in_documentation/2, 'provider must include information in technical documentation', 'celex:32024R1689/oj#anx_11').
declared(must_include_additional_in_documentation/2, 'provider of systemic risk model must include additional information', 'celex:32024R1689/oj#anx_11').
systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_include_in_documentation(Provider, general_description(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, detailed_description(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, tasks_and_integration(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, acceptable_use_policies(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, release_and_distribution(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, architecture_and_parameters(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, modality_and_format(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, licence(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, technical_means_for_integration(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, design_specifications_and_training(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, data_information(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, computational_resources(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_in_documentation(Provider, energy_consumption(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_include_additional_in_documentation(Provider, evaluation_strategies(Model)) :-
    provider(Provider),
    systemic_risk_model(Model).
must_include_additional_in_documentation(Provider, adversarial_testing_measures(Model)) :-
    provider(Provider),
    systemic_risk_model(Model).
must_include_additional_in_documentation(Provider, system_architecture(Model)) :-
    provider(Provider),
    systemic_risk_model(Model).
provenance(systemic_risk_model/1, 'celex:32024R1689/oj#anx_11').
provenance(must_include_in_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(must_include_additional_in_documentation/2, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(transparency_information/1, 'transparency information for general-purpose AI models', 'celex:32024R1689/oj#anx_12').
declared(general_description/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(development_description/1, 'description of model elements and development process', 'celex:32024R1689/oj#anx_12').
transparency_information(Info) :-
    general_description(Info),
    development_description(Info).
general_description(Info) :-
    intended_tasks(Info, Tasks),
    acceptable_use_policies(Info, Policies),
    release_date(Info, Date),
    distribution_methods(Info, Methods),
    hardware_software_interaction(Info, Interaction),
    relevant_software_versions(Info, Versions),
    architecture_and_parameters(Info, ArchParams),
    input_output_modality_format(Info, ModalityFormat),
    licence(Info, Licence).
development_description(Info) :-
    technical_means_for_integration(Info, Means),
    input_output_specification(Info, Spec),
    training_testing_validation_data_info(Info, DataInfo).
provenance(transparency_information/1, 'celex:32024R1689/oj#anx_12').
provenance(general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(development_description/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(model_parameter_count/2, 'number of parameters of the model', 'celex:32024R1689/oj#anx_13').
declared(data_set_quality_or_size/2, 'quality or size of the data set', 'celex:32024R1689/oj#anx_13').
declared(training_computation_amount/2, 'amount of computation used for training', 'celex:32024R1689/oj#anx_13').
declared(input_output_modalities/2, 'input and output modalities of the model', 'celex:32024R1689/oj#anx_13').
declared(model_benchmarks_and_evaluations/2, 'benchmarks and evaluations of capabilities', 'celex:32024R1689/oj#anx_13').
declared(high_internal_market_impact/1, 'high impact on the internal market due to reach', 'celex:32024R1689/oj#anx_13').
declared(registered_end_user_count/2, 'number of registered end-users', 'celex:32024R1689/oj#anx_13').
must_take_into_account(Commission, criteria(Model)) :-
    general_purpose_ai_model(Model),
    model_parameter_count(Model, _),
    data_set_quality_or_size(Model, _),
    training_computation_amount(Model, _),
    input_output_modalities(Model, _),
    model_benchmarks_and_evaluations(Model, _),
    high_internal_market_impact(Model),
    registered_end_user_count(Model, _).
high_internal_market_impact(Model) :-
    general_purpose_ai_model(Model),
    made_available_to_business_users(Model, Users),
    Users >= 10000,
    established_in_union(Users).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
provenance(high_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

