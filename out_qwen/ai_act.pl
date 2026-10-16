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
% There are 274 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous able_to_carry_out_activities_diligently/1.
:- discontiguous acceptable_residual_risk/1.
:- discontiguous acts_as_competent_authority_for_union_bodies/1.
:- discontiguous administrative_campaign_tool/1.
:- discontiguous administrative_fine/1.
:- discontiguous administrative_fine_applies/2.
:- discontiguous adopting_act_concerning_ai_safety_component/2.
:- discontiguous adopting_delegated_act_concerning_safety_component_ai_system/2.
:- discontiguous adopting_technical_specifications_and_testing_standards/1.
:- discontiguous adverse_impact_considered/1.
:- discontiguous advisory_forum/1.
:- discontiguous agreed_sandbox_plan/2.
:- discontiguous ai_literacy_objective/1.
:- discontiguous ai_office_has_powers/1.
:- discontiguous ai_output_reversible/1.
:- discontiguous ai_safety_component/1.
:- discontiguous ai_system_presenting_risk/1.
:- discontiguous ai_system_safety_component/1.
:- discontiguous annual_report/1.
:- discontiguous annual_report_on_fines_and_litigation/1.
:- discontiguous anonymised_or_synthetic_data_insufficient/1.
:- discontiguous appeal_procedure_available_against_decision/2.
:- discontiguous application_accompanied_by_accreditation_certificate/1.
:- discontiguous application_accompanied_by_description/1.
:- discontiguous appropriate_protection_and_deletion/1.
:- discontiguous appropriate_retention_period/2.
:- discontiguous assessment_carried_out_by_national_accreditation_body/1.
:- discontiguous assessment_criteria_considered/1.
:- discontiguous assists_commission/1.
:- discontiguous assumes_responsibility_for_compliance/2.
:- discontiguous authorised_as_notified_body/1.
:- discontiguous before_placing_on_market_or_putting_into_service/1.
:- discontiguous before_placing_on_market_or_service/1.
:- discontiguous biometric_identification_system_for_law_enforcement/1.
:- discontiguous biometric_verification_only/1.
:- discontiguous built_in_oversight_measure/1.
:- discontiguous certificate_negative_action/2.
:- discontiguous certificate_remains_valid_after_cessation/1.
:- discontiguous certificate_remains_valid_after_withdrawal/1.
:- discontiguous certificate_remains_valid_during_suspension_or_restriction/1.
:- discontiguous code_ready_deadline/1.
:- discontiguous commission_activity_pursuant_to_art_8_par_1/1.
:- discontiguous commission_empowered_to_add_high_risk_use_case/1.
:- discontiguous commission_empowered_to_remove_high_risk_use_case/1.
:- discontiguous commission_may_designate_systemic_risk_model/1.
:- discontiguous committee/1.
:- discontiguous committee_within_meaning_of_regulation/2.
:- discontiguous common_specification/1.
:- discontiguous compliant_but_risky_ai_system/1.
:- discontiguous component_of_large_scale_it_system/1.
:- discontiguous concerns_ai_system_as_safety_component/1.
:- discontiguous concerns_ai_system_which_is_safety_component/1.
:- discontiguous conditions_for_adding_high_risk_use_case/1.
:- discontiguous conditions_for_removing_high_risk_use_case/1.
:- discontiguous conformity_assessment_based_on_internal_control/1.
:- discontiguous conformity_assessment_procedure_annex_vii/1.
:- discontiguous consent_documented_and_provided/2.
:- discontiguous considered_provider_of_high_risk_ai_system/1.
:- discontiguous contains_annex_v_information/2.
:- discontiguous contains_development_description/1.
:- discontiguous contains_general_description/1.
:- discontiguous controller_of_eu_database/1.
:- discontiguous data_transfer_safeguards_implemented/1.
:- discontiguous decision_based_on_high_risk_ai_system/3.
:- discontiguous decision_on_administrative_fine/1.
:- discontiguous decision_or_objection/1.
:- discontiguous decision_taken_on_testing/2.
:- discontiguous deemed_justified_authorisation/1.
:- discontiguous delegated_act_concerning_ai_safety_component/1.
:- discontiguous delegated_act_pursuant_to_art_17_par_5_unp_1/1.
:- discontiguous delegated_power_conferred_on_commission/1.
:- discontiguous delegation_period_applies/1.
:- discontiguous delegation_revocable_by_body/2.
:- discontiguous deletion_does_not_decrease_protection/1.
:- discontiguous demonstrates_conformity_with_criteria/2.
:- discontiguous demonstrates_conformity_with_harmonised_standard/1.
:- discontiguous deployer_implemented_oversight_measure/1.
:- discontiguous deployer_informed_and_agreed/2.
:- discontiguous deployer_subject_to_art_27/1.
:- discontiguous derogation_authorisation/1.
:- discontiguous describes_facts_and_reasons/1.
:- discontiguous designated_as_single_contact_point/1.
:- discontiguous designated_representatives/1.
:- discontiguous designation_criterion_applies/1.
:- discontiguous detailed_measure/1.
:- discontiguous developed_for_substantial_public_interest/1.
:- discontiguous documentation_retention_period_years/1.
:- discontiguous drawn_up_by_deployer/1.
:- discontiguous drawn_up_by_provider/1.
:- discontiguous drawn_up_by_representative_organisation/1.
:- discontiguous edps/1.
:- discontiguous effective_mitigation_possible/1.
:- discontiguous effective_monitoring_mechanisms_in_place/1.
:- discontiguous element_changed_or_outdated/1.
:- discontiguous empowered_to_facilitate_consistency/2.
:- discontiguous enables_recording_for_operation_monitoring/1.
:- discontiguous enables_recording_for_post_market_monitoring/1.
:- discontiguous enables_recording_for_risk_identification/1.
:- discontiguous enters_into_force/2.
:- discontiguous entry_into_force_condition_applies/1.
:- discontiguous environmental_sustainability_objective/1.
:- discontiguous equivalent_national_coverage/2.
:- discontiguous established_in_third_country/1.
:- discontiguous established_or_represented_in_union/1.
:- discontiguous ethical_guidelines_element/1.
:- discontiguous eu_database_contains_info_on_non_high_risk_system/1.
:- discontiguous eu_database_contains_info_on_registered_high_risk_system/1.
:- discontiguous eu_database_info_publicly_accessible/1.
:- discontiguous eu_database_info_restricted_access/1.
:- discontiguous eu_declaration_of_conformity/1.
:- discontiguous european_ai_board/1.
:- discontiguous evaluation_of_classification/1.
:- discontiguous examination_procedure_applies/1.
:- discontiguous exceptional_reason_applies/1.
:- discontiguous exempt_authorised_representative_obligation/1.
:- discontiguous exempt_biometric_categorisation/1.
:- discontiguous exempt_criminal_risk_assessment/1.
:- discontiguous exempt_editorial_content/1.
:- discontiguous exempt_emotion_inference/1.
:- discontiguous exempt_emotion_or_categorisation/1.
:- discontiguous exempt_free_open_source/1.
:- discontiguous exempt_from_administrative_fines/2.
:- discontiguous exempt_from_explanation_right/1.
:- discontiguous exempt_from_high_risk_classification/1.
:- discontiguous exempt_from_two_person_verification/1.
:- discontiguous exempt_instructions_for_use/1.
:- discontiguous exempt_interaction/1.
:- discontiguous exempt_military_defence_national_security/1.
:- discontiguous exempt_open_source_model/1.
:- discontiguous exempt_open_source_third_party/1.
:- discontiguous exempt_personal_non_professional_activity/1.
:- discontiguous exempt_pre_market_research_testing_development/1.
:- discontiguous exempt_procedure/2.
:- discontiguous exempt_scientific_research_and_development/1.
:- discontiguous exempt_sensitive_operational_data/2.
:- discontiguous exempt_substantial_modification/1.
:- discontiguous exempt_synthetic_marking/1.
:- discontiguous explanation_right_provided_under_union_law/1.
:- discontiguous extension_of_scope_applies/1.
:- discontiguous financial_fraud_detection_purpose/1.
:- discontiguous fineable_infringement_by_gpai_provider/2.
:- discontiguous follows_guidance_in_good_faith/2.
:- discontiguous formal_non_compliance/1.
:- discontiguous found_high_risk/1.
:- discontiguous free_of_charge_for_sme/1.
:- discontiguous fundamental_rights_authority/1.
:- discontiguous general_purpose_ai_model_provider/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous grounds_for_non_compliance_exist/2.
:- discontiguous has_adequate_competent_personnel/1.
:- discontiguous has_ai_expertise/1.
:- discontiguous has_high_impact_capabilities/1.
:- discontiguous has_power_to_suspend_testing/2.
:- discontiguous has_recourse_to_subsidiary/2.
:- discontiguous has_right_to_lodge_complaint/1.
:- discontiguous has_systemic_risk_equivalence/1.
:- discontiguous high_internal_market_impact/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_annex_iii/1.
:- discontiguous high_risk_ai_system_listed_in_annex_3/1.
:- discontiguous high_risk_ai_system_listed_in_annex_iii/1.
:- discontiguous high_risk_ai_system_related_to_product/1.
:- discontiguous human_oversight_measure/1.
:- discontiguous implementing_act_concerning_ai_safety_component/1.
:- discontiguous implementing_act_concerns_ai_safety_component/1.
:- discontiguous imposes_administrative_fine/3.
:- discontiguous in_scope_of_art_27/1.
:- discontiguous inclusive_design_objective/1.
:- discontiguous incorrect_information_infringement/1.
:- discontiguous independent_advice_requester/1.
:- discontiguous independent_from_providers/1.
:- discontiguous indicates_provider_contact/1.
:- discontiguous informed_consent_meets_requirements/2.
:- discontiguous informed_of_serious_incident/2.
:- discontiguous initial_provider_exemption_applies/1.
:- discontiguous instructions_contain_characteristics_and_limitations/1.
:- discontiguous instructions_contain_human_oversight_measures/1.
:- discontiguous instructions_contain_log_mechanism_description/1.
:- discontiguous instructions_contain_predetermined_changes/1.
:- discontiguous instructions_contain_provider_identity/1.
:- discontiguous instructions_contain_resource_and_maintenance_info/1.
:- discontiguous intended_for_annex_iii_area/1.
:- discontiguous intended_for_public_authority_use/1.
:- discontiguous international_cooperation_law_enforcement_exemption_applies/1.
:- discontiguous involved_in_application_of_regulation/1.
:- discontiguous involves_personal_data_processing/1.
:- discontiguous isolated_data_environment/1.
:- discontiguous large_scale_it_system/1.
:- discontiguous law_enforcement_sandbox_basis/1.
:- discontiguous lays_down_harmonised_rules_for_placing_on_market/0.
:- discontiguous lays_down_innovation_support_measures/0.
:- discontiguous lays_down_market_monitoring_and_enforcement_rules/0.
:- discontiguous lays_down_prohibitions_of_certain_ai_practices/0.
:- discontiguous lays_down_requirements_for_high_risk_ai_systems/0.
:- discontiguous lays_down_rules_for_general_purpose_ai_models/0.
:- discontiguous lays_down_transparency_rules_for_certain_ai_systems/0.
:- discontiguous liable_for_testing_damage/2.
:- discontiguous limited_adherence_applies/2.
:- discontiguous limited_reporting_applies/1.
:- discontiguous listed_criminal_offence/1.
:- discontiguous mandate_empowers_addressing/2.
:- discontiguous market_surveillance_authority_for_financial_sector/2.
:- discontiguous market_surveillance_authority_for_law_enforcement/2.
:- discontiguous market_surveillance_authority_for_product_sector/2.
:- discontiguous market_surveillance_authority_for_union_body/2.
:- discontiguous max_fine_for_other_requirement/1.
:- discontiguous max_fine_for_prohibited_practice/1.
:- discontiguous max_validity_period_years/2.
:- discontiguous may_advise_on_international_matters/2.
:- discontiguous may_allow_derogation_from_art_60_conditions/2.
:- discontiguous may_approve_code/2.
:- discontiguous may_assist_development_of_expertise/2.
:- discontiguous may_assist_sandbox_establishment/2.
:- discontiguous may_collect_and_share_expertise/2.
:- discontiguous may_contribute_to_coordination/2.
:- discontiguous may_contribute_to_guidance/2.
:- discontiguous may_contribute_to_harmonisation/2.
:- discontiguous may_contribute_to_international_cooperation/2.
:- discontiguous may_cooperate_with_union_bodies/2.
:- discontiguous may_extend_provisional_validity/2.
:- discontiguous may_facilitate_common_criteria/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_invite_adherence/2.
:- discontiguous may_issue_recommendations/2.
:- discontiguous may_issue_request_for_scientific_panel/2.
:- discontiguous may_make_commitments_binding/2.
:- discontiguous may_monitor_compliance/1.
:- discontiguous may_present_arguments_against_systemic_risk_classification/2.
:- discontiguous may_provide_advice_on_implementation/2.
:- discontiguous may_provide_guidance/2.
:- discontiguous may_provide_opinions_on_alerts/2.
:- discontiguous may_provide_qualified_alert/2.
:- discontiguous may_receive_opinions_from_member_states/2.
:- discontiguous may_request_documentation/2.
:- discontiguous may_request_exercise_of_powers/2.
:- discontiguous may_request_information_enforcement/2.
:- discontiguous may_request_measure/2.
:- discontiguous may_request_reassessment_of_systemic_risk_designation/2.
:- discontiguous may_request_testing/2.
:- discontiguous may_require_modification_of_testing/2.
:- discontiguous may_support_ai_literacy_promotion/2.
:- discontiguous may_support_joint_activities/2.
:- discontiguous may_suspend_designation/2.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous may_use_existing_documents/1.
:- discontiguous meets_conditions_of_art_51/1.
:- discontiguous minimum_logging_requirements/1.
:- discontiguous minimum_period_before_reassessment_request/2.
:- discontiguous misclassified_to_circumvent_requirements/1.
:- discontiguous mitigatable_risk/1.
:- discontiguous months_elapsed_since_notification/2.
:- discontiguous must_accept_simplified_form/2.
:- discontiguous must_account_for_provider_size/1.
:- discontiguous must_account_for_provider_structure/1.
:- discontiguous must_account_for_sector/1.
:- discontiguous must_account_for_setting/2.
:- discontiguous must_account_for_system_complexity/1.
:- discontiguous must_achieve_accuracy_robustness_cybersecurity/2.
:- discontiguous must_act_confidentially/1.
:- discontiguous must_act_with_professional_integrity/1.
:- discontiguous must_adopt_implementing_acts_for_proceedings/1.
:- discontiguous must_adopt_implementing_acts_for_sandbox/2.
:- discontiguous must_adopt_rules_of_procedure/1.
:- discontiguous must_advise_and_assist/2.
:- discontiguous must_advise_and_support/2.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_affix_ce_marking_to_packaging_or_documentation/1.
:- discontiguous must_affix_ce_marking_visibly_legibly_indelibly/1.
:- discontiguous must_affix_identification_number/2.
:- discontiguous must_affix_identification_number_under_instructions/3.
:- discontiguous must_agree_testing_terms_and_safeguards/3.
:- discontiguous must_allocate_sufficient_resources/2.
:- discontiguous must_allow_access_to_documentation/2.
:- discontiguous must_allow_automatic_recording/2.
:- discontiguous must_allow_surveillance_access/2.
:- discontiguous must_analyze_interaction_with_other_ai_systems/2.
:- discontiguous must_apply_data_governance/2.
:- discontiguous must_apply_for_qms_assessment/2.
:- discontiguous must_apply_for_technical_documentation_assessment/2.
:- discontiguous must_apply_requirements_to_testing_data_only/2.
:- discontiguous must_apply_standard_procedure/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_appoint_members/2.
:- discontiguous must_assess_and_mitigate_systemic_risk/2.
:- discontiguous must_assess_annex_three_and_prohibited_practices/2.
:- discontiguous must_assess_competence_requirements_annually/2.
:- discontiguous must_assess_enforcement_by_2031/2.
:- discontiguous must_assess_impact_on_certificates/2.
:- discontiguous must_assess_quality_management_system/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assign_identification_number/2.
:- discontiguous must_associate_data_protection_authority/2.
:- discontiguous must_avoid_unnecessary_burden/2.
:- discontiguous must_base_decision_on_commented_elements/2.
:- discontiguous must_base_system_on_plan/2.
:- discontiguous must_be_addressable_by_authorities/2.
:- discontiguous must_be_duly_reasoned/1.
:- discontiguous must_be_established_under_national_law/1.
:- discontiguous must_be_independent_of_competitor/2.
:- discontiguous must_be_independent_of_operator_with_economic_interest/2.
:- discontiguous must_be_independent_of_provider/2.
:- discontiguous must_bring_into_compliance/2.
:- discontiguous must_bring_into_compliance_by/2.
:- discontiguous must_carry_out_periodic_audits/2.
:- discontiguous must_chair_board/2.
:- discontiguous must_collect_performance_data/2.
:- discontiguous must_communicate_authority_identity/2.
:- discontiguous must_communicate_decision/2.
:- discontiguous must_communicate_fine_information/2.
:- discontiguous must_communicate_grounds_to_other_authorities/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_complement_data_protection_impact_assessment/2.
:- discontiguous must_complete_assessment_before_new_certificate/2.
:- discontiguous must_complete_fria_before_use/2.
:- discontiguous must_comply_with_copyright_policy/2.
:- discontiguous must_comply_with_registration/2.
:- discontiguous must_comply_with_registration_obligations/2.
:- discontiguous must_comply_with_requirements/2.
:- discontiguous must_confirm_targeted_identity/2.
:- discontiguous must_consider_needs/2.
:- discontiguous must_consider_vulnerable_groups/2.
:- discontiguous must_consult_advisory_forum/2.
:- discontiguous must_consult_experts_before_adoption/2.
:- discontiguous must_consult_on_standardisation_request/2.
:- discontiguous must_consult_other_authorities/2.
:- discontiguous must_contain_information/2.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_authority/2.
:- discontiguous must_cooperate_with_competent_authorities/2.
:- discontiguous must_cooperate_with_competent_authority/3.
:- discontiguous must_cooperate_with_new_provider/2.
:- discontiguous must_cooperate_with_other_authorities/2.
:- discontiguous must_decide_authorisation_justified/2.
:- discontiguous must_decide_justification/2.
:- discontiguous must_declare_accuracy_metrics/2.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_conformity_upon_request/3.
:- discontiguous must_design_for_human_oversight/2.
:- discontiguous must_designate_national_competent_authorities/2.
:- discontiguous must_designate_notifying_authority/2.
:- discontiguous must_designate_representative/2.
:- discontiguous must_designate_single_point_of_contact/2.
:- discontiguous must_designate_union_ai_testing_support_structure/2.
:- discontiguous must_develop_evaluation_methodology/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_single_interface/2.
:- discontiguous must_develop_union_expertise/2.
:- discontiguous must_develop_with_quality_data_sets/2.
:- discontiguous must_direct_to_pre_deployment_services/2.
:- discontiguous must_discard_results/2.
:- discontiguous must_disclose_ai_text/2.
:- discontiguous must_disclose_deep_fake/2.
:- discontiguous must_document_impartiality_procedures/1.
:- discontiguous must_document_non_high_risk_assessment/2.
:- discontiguous must_document_post_rbi_use/2.
:- discontiguous must_draw_up_declaration_of_interests/2.
:- discontiguous must_draw_up_delegation_report/2.
:- discontiguous must_draw_up_eu_declaration_of_conformity/2.
:- discontiguous must_draw_up_in_understandable_language/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_enable_authorised_representative/2.
:- discontiguous must_enable_oversight_capability/2.
:- discontiguous must_encourage_code_of_conduct/2.
:- discontiguous must_encourage_code_of_practice/2.
:- discontiguous must_encourage_review/2.
:- discontiguous must_end_non_compliance/2.
:- discontiguous must_ensure_accessibility_compliance/2.
:- discontiguous must_ensure_adequate_resources/2.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_code_coverage/2.
:- discontiguous must_ensure_code_objectives/2.
:- discontiguous must_ensure_compliance_with_requirements/2.
:- discontiguous must_ensure_confidence_in_performance/1.
:- discontiguous must_ensure_confidentiality/2.
:- discontiguous must_ensure_coordination_empowerment/2.
:- discontiguous must_ensure_coordination_of_notified_bodies/2.
:- discontiguous must_ensure_cybersecurity/1.
:- discontiguous must_ensure_cybersecurity_protection/2.
:- discontiguous must_ensure_cybersecurity_resilience/2.
:- discontiguous must_ensure_data_relevance/2.
:- discontiguous must_ensure_efficient_organisation/2.
:- discontiguous must_ensure_input_data_relevance/2.
:- discontiguous must_ensure_participation_in_sectoral_group/2.
:- discontiguous must_ensure_product_compliance/2.
:- discontiguous must_ensure_reporting/2.
:- discontiguous must_ensure_representative_competence/2.
:- discontiguous must_ensure_restrictive_measure/2.
:- discontiguous must_ensure_single_contact_point/2.
:- discontiguous must_ensure_storage_transport_compliance/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_enter_consultation/2.
:- discontiguous must_enter_consultations/2.
:- discontiguous must_enter_data_into_eu_database/2.
:- discontiguous must_establish_ai_regulatory_sandbox/2.
:- discontiguous must_establish_conflict_management_systems/2.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_standing_subgroup/2.
:- discontiguous must_evaluate_ai_office/2.
:- discontiguous must_evaluate_classification/2.
:- discontiguous must_evaluate_compliance/2.
:- discontiguous must_evaluate_national_measure/2.
:- discontiguous must_evaluate_national_measures/2.
:- discontiguous must_evaluate_regulation/2.
:- discontiguous must_evaluate_voluntary_codes_of_conduct/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_facilitate_access/2.
:- discontiguous must_facilitate_ai_office_tasks/2.
:- discontiguous must_facilitate_code_of_conduct/2.
:- discontiguous must_facilitate_coordination/1.
:- discontiguous must_facilitate_exchange_of_experience/1.
:- discontiguous must_follow_ce_marking_with_notified_body_number/1.
:- discontiguous must_follow_conformity_assessment_procedure/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons_for_decision/2.
:- discontiguous must_grant_access_to_data_sets/2.
:- discontiguous must_grant_access_to_datasets/2.
:- discontiguous must_grant_access_to_documentation/2.
:- discontiguous must_grant_source_code_access/3.
:- discontiguous must_handle_complaint_according_to_procedures/2.
:- discontiguous must_have_internal_competences_for_evaluation/1.
:- discontiguous must_have_legal_personality/1.
:- discontiguous must_have_liability_coverage/1.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_have_requisite_competence/1.
:- discontiguous must_have_sufficient_personnel/1.
:- discontiguous must_identify_fundamental_rights_authorities/1.
:- discontiguous must_immediately_inform_authorities_of_risk/2.
:- discontiguous must_implement_ai_specific_cybersecurity_measures/2.
:- discontiguous must_implement_cybersecurity_measures/2.
:- discontiguous must_implement_resilience_measures/2.
:- discontiguous must_indicate_grounds_and_challenge_procedure/2.
:- discontiguous must_indicate_identification_details/2.
:- discontiguous must_indicate_identification_number_in_promotional_material/1.
:- discontiguous must_indicate_importer_details/2.
:- discontiguous must_indicate_other_law_compliance_in_ce_marking/1.
:- discontiguous must_inform/2.
:- discontiguous must_inform_about_assumption_of_functions/2.
:- discontiguous must_inform_about_required_certificate_actions/2.
:- discontiguous must_inform_about_termination/2.
:- discontiguous must_inform_ai_office_of_suspension/2.
:- discontiguous must_inform_applicant_of_decision/3.
:- discontiguous must_inform_authorities/2.
:- discontiguous must_inform_board/2.
:- discontiguous must_inform_board_and_authorities/2.
:- discontiguous must_inform_cessation/2.
:- discontiguous must_inform_commission_about_specification/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_committee/2.
:- discontiguous must_inform_cross_border_noncompliance/2.
:- discontiguous must_inform_exposure/2.
:- discontiguous must_inform_fundamental_rights_body/2.
:- discontiguous must_inform_interaction/2.
:- discontiguous must_inform_msa_of_request/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_of_risk/2.
:- discontiguous must_inform_of_sandbox_establishment/2.
:- discontiguous must_inform_of_serious_incident/2.
:- discontiguous must_inform_of_system_changes/2.
:- discontiguous must_inform_other_authorities/2.
:- discontiguous must_inform_other_notified_bodies/2.
:- discontiguous must_inform_provider_or_importer_of_risk/2.
:- discontiguous must_inform_providers_of_designation_change/2.
:- discontiguous must_inform_public_authorities/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_investigate_causes/2.
:- discontiguous must_investigate_competence/2.
:- discontiguous must_investigate_non_compliance/2.
:- discontiguous must_investigate_serious_incident/2.
:- discontiguous must_issue_standardisation_request/2.
:- discontiguous must_issue_technical_documentation_certificate/2.
:- discontiguous must_justify_technical_solution/2.
:- discontiguous must_keep_assessment_documents/2.
:- discontiguous must_keep_authority_list_updated/1.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_documents/2.
:- discontiguous must_keep_eu_declaration_of_conformity/2.
:- discontiguous must_keep_files_on_designation_change/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_technical_documentation/2.
:- discontiguous must_keep_technical_documentation_on_premises/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_keep_up_to_date_registration_information/2.
:- discontiguous must_lay_down_penalty_rules/2.
:- discontiguous must_maintain_approved_quality_management_system/2.
:- discontiguous must_maintain_confidentiality/1.
:- discontiguous must_maintain_information_platform/2.
:- discontiguous must_maintain_logs_as_financial_documentation/2.
:- discontiguous must_make_contact_info_public/1.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_make_report_public/2.
:- discontiguous must_make_subsidiaries_list_public/1.
:- discontiguous must_mark_synthetic_content/2.
:- discontiguous must_mitigate_feedback_loops/2.
:- discontiguous must_mitigate_or_suspend_testing/2.
:- discontiguous must_mitigate_significant_risk/2.
:- discontiguous must_monitor_and_evaluate_code/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_alter_system_before_notification/2.
:- discontiguous must_not_be_involved_in_design/1.
:- discontiguous must_not_be_involved_in_development/1.
:- discontiguous must_not_be_involved_in_marketing/1.
:- discontiguous must_not_be_involved_in_use/1.
:- discontiguous must_not_engage_in_conflicting_activity/1.
:- discontiguous must_not_make_available_if_non_conforming/2.
:- discontiguous must_not_place_on_market_if_nonconformity_suspected/2.
:- discontiguous must_not_represent_parties/1.
:- discontiguous must_not_seek_instructions/2.
:- discontiguous must_not_use_unregistered_system/2.
:- discontiguous must_notify_authority/2.
:- discontiguous must_notify_authority_list/2.
:- discontiguous must_notify_changes_to_notification/2.
:- discontiguous must_notify_commission_annually/2.
:- discontiguous must_notify_commission_of_serious_incident/2.
:- discontiguous must_notify_commission_of_systemic_risk_condition/2.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_delegated_act/2.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_penalty_rules/2.
:- discontiguous must_notify_provisional_measure/2.
:- discontiguous must_notify_qms_changes/2.
:- discontiguous must_notify_qms_decision/2.
:- discontiguous must_notify_rbi_use/2.
:- discontiguous must_notify_single_point_of_contact/2.
:- discontiguous must_notify_testing_outcome/2.
:- discontiguous must_observe_professional_secrecy/1.
:- discontiguous must_obtain_informed_consent_for_testing/2.
:- discontiguous must_obtain_prior_authorisation/2.
:- discontiguous must_organise_communication_campaign/2.
:- discontiguous must_organise_sme_training/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_participate_in_coordination_activities/1.
:- discontiguous must_participate_in_standardisation/1.
:- discontiguous must_pay_fees/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_mandated_tasks/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_tasks_impartially/2.
:- discontiguous must_prepare_annual_report/2.
:- discontiguous must_promote_procurement_convergence/2.
:- discontiguous must_provide_access_to_logs/2.
:- discontiguous must_provide_access_to_model/2.
:- discontiguous must_provide_assessment_documentation/2.
:- discontiguous must_provide_communication_channel/2.
:- discontiguous must_provide_compliance_information/2.
:- discontiguous must_provide_conformity_information/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_exchange_of_knowledge/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance_and_supervision/2.
:- discontiguous must_provide_independent_advice/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information_on_request/2.
:- discontiguous must_provide_information_to_authority/2.
:- discontiguous must_provide_information_to_commission/2.
:- discontiguous must_provide_information_to_competent_authority/3.
:- discontiguous must_provide_information_to_national_authority/2.
:- discontiguous must_provide_instructions_for_use/2.
:- discontiguous must_provide_integration_information/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_minimum_logging/2.
:- discontiguous must_provide_priority_sandbox_access/2.
:- discontiguous must_provide_registration_information/2.
:- discontiguous must_provide_regulatory_guidance/2.
:- discontiguous must_provide_relevant_information_to_similar_bodies/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_standardised_templates/2.
:- discontiguous must_provide_technical_and_administrative_support/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_adequacy_assessment/2.
:- discontiguous must_publish_annual_report/1.
:- discontiguous must_publish_authority_list/1.
:- discontiguous must_publish_list_of_systemic_risk_models/1.
:- discontiguous must_publish_training_content_summary/2.
:- discontiguous must_put_in_place_quality_management_system/2.
:- discontiguous must_recall_or_withdraw/2.
:- discontiguous must_reduce_conformity_assessment_fees/2.
:- discontiguous must_refuse_technical_documentation_certificate/2.
:- discontiguous must_register_at_national_level/2.
:- discontiguous must_register_in_eu_database/2.
:- discontiguous must_register_in_secure_non_public_section/2.
:- discontiguous must_register_system/2.
:- discontiguous must_register_testing/2.
:- discontiguous must_register_use_in_eu_database/2.
:- discontiguous must_repeal_implementing_act/2.
:- discontiguous must_report_annual_fines/2.
:- discontiguous must_report_competition_info/2.
:- discontiguous must_report_measures_taken/2.
:- discontiguous must_report_prohibited_practices/2.
:- discontiguous must_report_resource_status/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_request_authorisation_for_post_rbi/2.
:- discontiguous must_request_corrective_measures/2.
:- discontiguous must_request_derogation_authorisation/2.
:- discontiguous must_request_documentation/2.
:- discontiguous must_request_evidence_of_best_efforts/2.
:- discontiguous must_request_only_necessary_data/2.
:- discontiguous must_require_compliance_action/2.
:- discontiguous must_require_corrective_action/2.
:- discontiguous must_require_risk_mitigation_measures/2.
:- discontiguous must_require_suspension_or_withdrawal_of_undue_certificates/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rights_of_defence/2.
:- discontiguous must_restrict_or_prohibit/2.
:- discontiguous must_restrict_suspend_or_withdraw_designation/2.
:- discontiguous must_review_energy_efficiency_standardisation/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_safeguard_impartiality/1.
:- discontiguous must_safeguard_objectivity_and_impartiality/1.
:- discontiguous must_satisfy_cybersecurity_requirements/1.
:- discontiguous must_satisfy_organisational_requirements/1.
:- discontiguous must_satisfy_process_requirements/1.
:- discontiguous must_satisfy_quality_management_requirements/1.
:- discontiguous must_satisfy_resource_requirements/1.
:- discontiguous must_select_expert/2.
:- discontiguous must_set_up_and_maintain_eu_database/2.
:- discontiguous must_specify_assistance_by_written_agreement/2.
:- discontiguous must_specify_clarity_and_consistency/2.
:- discontiguous must_stop_use/2.
:- discontiguous must_stop_use_on_authorisation_rejection/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_report_on_post_rbi/2.
:- discontiguous must_submit_application_for_notification/2.
:- discontiguous must_submit_documentation/2.
:- discontiguous must_submit_eu_declaration_of_conformity/2.
:- discontiguous must_submit_real_world_testing_plan/2.
:- discontiguous must_submit_registration_info_section_a/2.
:- discontiguous must_submit_registration_info_section_b/2.
:- discontiguous must_submit_registration_info_section_c/2.
:- discontiguous must_submit_report_on_findings/2.
:- discontiguous must_supervise_and_enforce_chapter_v/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information/3.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_suspend_or_withdraw_certificate/2.
:- discontiguous must_take_account_of/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_action_for_non_conforming_system/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_into_account_designation_criteria/2.
:- discontiguous must_take_into_account_for_market_surveillance/2.
:- discontiguous must_take_into_account_intended_purpose/1.
:- discontiguous must_take_into_account_requirements/1.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_into_account_risk_management_system/1.
:- discontiguous must_take_into_account_state_of_the_art/1.
:- discontiguous must_take_measures_within_days/3.
:- discontiguous must_take_provisional_measure/2.
:- discontiguous must_take_responsibility_for_tasks/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_take_steps_to_comply_by/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_test_for_risk_management/2.
:- discontiguous must_treat_as_confidential/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_treat_information_confidentially/2.
:- discontiguous must_undergo_conformity_assessment/2.
:- discontiguous must_undergo_new_conformity_assessment/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_eu_declaration_of_conformity/2.
:- discontiguous must_update_fundamental_rights_impact_assessment/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_use_digital_ce_marking/1.
:- discontiguous must_use_in_accordance_with_instructions/2.
:- discontiguous must_use_info_for_dpi_a/2.
:- discontiguous must_use_simplified_form/2.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_compliance/2.
:- discontiguous must_verify_compliance_with_art_60/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_conformity_before_placing_on_market/2.
:- discontiguous must_verify_conformity_documentation/2.
:- discontiguous must_verify_design_and_development_consistency/2.
:- discontiguous must_verify_identification_by_two_persons/2.
:- discontiguous must_verify_quality_management_system_compliance/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation_on_cessation/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous necessary_and_proportionate_to_assist/1.
:- discontiguous necessary_for_compliance_with_requirements/1.
:- discontiguous new_legislative_framework_legislation/1.
:- discontiguous no_conflict_of_interest_with_conformity_assessment_bodies/1.
:- discontiguous no_decisions_affecting_data_subjects/1.
:- discontiguous no_longer_poses_significant_risk/1.
:- discontiguous noncompliance_reason/2.
:- discontiguous notification/1.
:- discontiguous notification_deadline_for_systemic_risk/2.
:- discontiguous notification_decisions_by_competent_persons_different_from_assessors/1.
:- discontiguous notification_includes/2.
:- discontiguous notification_period_expired/1.
:- discontiguous notified_body/1.
:- discontiguous notified_by/2.
:- discontiguous objectivity_and_impartiality_safeguarded/1.
:- discontiguous observes_sandbox_plan/2.
:- discontiguous operational_by_date/2.
:- discontiguous operator/1.
:- discontiguous operator_obligation_infringement/1.
:- discontiguous other_grounds_for_non_compliance/2.
:- discontiguous other_union_harmonisation_legislation/1.
:- discontiguous oversight_capability/1.
:- discontiguous part_of_technical_documentation/2.
:- discontiguous party_concerned/1.
:- discontiguous permanent_member_of_advisory_forum/1.
:- discontiguous permitted_call_upon_experts/2.
:- discontiguous permitted_evaluation_purpose/1.
:- discontiguous permitted_exchange_with_third_country_authority/1.
:- discontiguous permitted_further_processing_in_sandbox/1.
:- discontiguous permitted_integration_into_existing_system/2.
:- discontiguous permitted_integration_of_documentation/2.
:- discontiguous permitted_joint_activity/1.
:- discontiguous permitted_law_enforcement_rbi/1.
:- discontiguous permitted_lodge_complaint/2.
:- discontiguous permitted_processing_special_categories/2.
:- discontiguous permitted_reliance_on_code_of_practice/2.
:- discontiguous permitted_remote_power_exercise/2.
:- discontiguous permitted_simplified_documentation/1.
:- discontiguous permitted_simplified_quality_management_compliance/1.
:- discontiguous permitted_subcontracting/2.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_to_perform_notified_body_activities/1.
:- discontiguous permitted_use_of_assessed_system/2.
:- discontiguous permitted_use_of_subsidiary/2.
:- discontiguous personnel_have_necessary_expertise/1.
:- discontiguous placed_on_market_or_put_into_service/1.
:- discontiguous placed_on_market_or_put_into_service_before/2.
:- discontiguous planned_cessation/1.
:- discontiguous poses_equivalent_or_greater_risk/1.
:- discontiguous post_market_risk_evaluation_step/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous presumed_compliant_with_art_31_requirements/1.
:- discontiguous presumed_compliant_with_cybersecurity_requirements/1.
:- discontiguous presumed_compliant_with_data_requirements/1.
:- discontiguous presumed_conformity_with_requirements/1.
:- discontiguous presumed_conformity_with_requirements/2.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous presumption_of_conformity_applies/2.
:- discontiguous procedural_rights_apply/1.
:- discontiguous procedures_developed_in_cooperation/1.
:- discontiguous processing_logs_kept/1.
:- discontiguous produces_legal_effects_or_significantly_affects/2.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_commercial_activities_for_notifying_authority/1.
:- discontiguous prohibited_criminal_risk_assessment/1.
:- discontiguous prohibited_disclosure_of_confidential_exchange/1.
:- discontiguous prohibited_emotion_inference/1.
:- discontiguous prohibited_exploitation_of_vulnerabilities/1.
:- discontiguous prohibited_practice_infringement/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_subliminal_manipulation/1.
:- discontiguous prohibited_untargeted_facial_scraping/1.
:- discontiguous prohibited_untargeted_post_rbi_use/1.
:- discontiguous project_summary_published/1.
:- discontiguous provenance/2.
:- discontiguous provider/2.
:- discontiguous provides_controlled_environment/2.
:- discontiguous provisional_measure_deemed_justified/1.
:- discontiguous public_authority_deployer/1.
:- discontiguous public_interest_area/2.
:- discontiguous purpose_of_regulation/1.
:- discontiguous qms_negative_action/2.
:- discontiguous quality_management_system_covers_aspect/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous reason_to_suspect_risk/2.
:- discontiguous reference_published_in_official_journal/1.
:- discontiguous references/2.
:- discontiguous regulation_applies_from/2.
:- discontiguous regulation_applies_to_high_risk_system/1.
:- discontiguous relevant_competences_and_powers/2.
:- discontiguous relevant_person_for_ai_system/2.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous reporting_deadline/2.
:- discontiguous reporting_of_infringements_applies/1.
:- discontiguous request_for_information_applies/1.
:- discontiguous required_logging_capability/1.
:- discontiguous required_qualified_alert_content/1.
:- discontiguous required_registration_field_section_a/1.
:- discontiguous required_registration_field_section_b/1.
:- discontiguous required_registration_field_section_c/1.
:- discontiguous required_registration_information/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous required_systemic_risk_documentation_content/1.
:- discontiguous required_technical_documentation_content/1.
:- discontiguous required_technical_documentation_content/2.
:- discontiguous required_technical_documentation_elements/1.
:- discontiguous required_transparency_information/1.
:- discontiguous requirements_of_chapter_3_section_2/1.
:- discontiguous responsible_for_assessment_and_notification/1.
:- discontiguous responsible_for_monitoring_conformity_assessment_bodies/1.
:- discontiguous restricted_access_by_security_clearance/2.
:- discontiguous restricted_access_to_authorised_persons/1.
:- discontiguous risk_estimation_step/1.
:- discontiguous risk_identification_step/1.
:- discontiguous risk_management_measure_adoption_step/1.
:- discontiguous sandbox_fulfilled_by_participation/2.
:- discontiguous sandbox_procedures_apply/1.
:- discontiguous satisfies_article_31_requirements/1.
:- discontiguous satisfies_criterion/2.
:- discontiguous scientific_panel/1.
:- discontiguous scope_applies_to_authorised_representative/1.
:- discontiguous scope_applies_to_deployer/1.
:- discontiguous scope_applies_to_distributor/1.
:- discontiguous scope_applies_to_importer/1.
:- discontiguous scope_applies_to_product_manufacturer/1.
:- discontiguous scope_applies_to_provider/1.
:- discontiguous sectoral_group_of_notified_bodies/1.
:- discontiguous sensitive_high_risk_ai_system/1.
:- discontiguous sensitive_operational_data_excluded_from_exchange/1.
:- discontiguous significant_risk_to_health_safety_or_rights/1.
:- discontiguous single_declaration_for_multiple_legislation/1.
:- discontiguous single_documentation_required/1.
:- discontiguous single_interface/1.
:- discontiguous sme/1.
:- discontiguous sme_deployer/1.
:- discontiguous sme_interests_considered/1.
:- discontiguous sme_provider/1.
:- discontiguous stakeholder_involvement/1.
:- discontiguous states_compliance_with_section_2_requirements/2.
:- discontiguous subcontracts_tasks/2.
:- discontiguous subject_consent_or_law_enforcement_exception/2.
:- discontiguous subject_duly_informed/2.
:- discontiguous subject_of_delegated_act/2.
:- discontiguous subject_of_proceedings/1.
:- discontiguous subject_to_significant_design_change_after/2.
:- discontiguous supervised_in_ai_regulatory_sandbox/1.
:- discontiguous suspension_decision/1.
:- discontiguous system_subject_to_art_27_regardless_of_deployer/1.
:- discontiguous task_under_art_68_par_3/1.
:- discontiguous technical_documentation_applies/1.
:- discontiguous technical_documentation_complete/1.
:- discontiguous technical_documentation_demonstrates_compliance/1.
:- discontiguous technical_documentation_provides_information/1.
:- discontiguous tested_in_other_member_state/2.
:- discontiguous testing_approved_by_authority/2.
:- discontiguous testing_before_placing_on_market/1.
:- discontiguous testing_duration_compliant/1.
:- discontiguous testing_effectively_overseen/1.
:- discontiguous traceability_appropriate_to_intended_purpose/1.
:- discontiguous translated_for_member_state/2.
:- discontiguous travel_document_verification_purpose/1.
:- discontiguous undertaking/1.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous union_institution_body_office_or_agency/1.
:- discontiguous union_safeguard_procedure_applies/1.
:- discontiguous urgency_situation_applies/1.
:- discontiguous valid_request_for_access/1.
:- discontiguous voluntary_application_of_requirements/1.
:- discontiguous voluntary_application_of_specific_requirements/1.
:- discontiguous vulnerable_persons_impact_objective/1.
:- discontiguous vulnerable_subjects_protected/1.
:- discontiguous weeks_elapsed_since_notification/2.
:- discontiguous within_retention_period/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic access_controls_and_documentation/1.
:- dynamic accounts_for_provider_size/1.
:- dynamic accounts_for_provider_structure/1.
:- dynamic accounts_for_sector/1.
:- dynamic accounts_for_setting_characteristics/1.
:- dynamic accounts_for_system_complexity/1.
:- dynamic affected_person/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic ai_system_assessed_as_not_high_risk/1.
:- dynamic annex_3_point_1_system/1.
:- dynamic annex_3_point_6_8_system/1.
:- dynamic annex_iii_system/1.
:- dynamic applied_common_specification/2.
:- dynamic applied_harmonised_standard/2.
:- dynamic authorisation_rejected/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_not_appointed/1.
:- dynamic aware_of_incident/2.
:- dynamic based_on_accreditation_certificate/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_identification_system_annex_3_1_a/1.
:- dynamic biometric_verification/1.
:- dynamic board/1.
:- dynamic board_representative/2.
:- dynamic body_governed_by_public_law/1.
:- dynamic bound_by_professional_secrecy/1.
:- dynamic cannot_use_alternative_data/1.
:- dynamic capable_with_professional_integrity/1.
:- dynamic causal_link_established/2.
:- dynamic ce_marking/1.
:- dynamic ce_marking_affixed_in_violation/1.
:- dynamic ce_marking_affixed_visibly_legibly_indelibly/1.
:- dynamic ce_marking_indicates_compliance_with_other_law/1.
:- dynamic ce_marking_not_affixed/1.
:- dynamic ce_marking_on_packaging_or_documentation/1.
:- dynamic certificate/1.
:- dynamic certificate_covers_cybersecurity_requirements/1.
:- dynamic certificate_issued_for/2.
:- dynamic certified_under_published_cybersecurity_scheme/1.
:- dynamic change_predetermined_in_technical_documentation/2.
:- dynamic classified_as_non_high_risk/1.
:- dynamic code_of_conduct/1.
:- dynamic code_of_practice/1.
:- dynamic commission_considers_contrary_to_law/1.
:- dynamic common_specification_available_for_requirements/1.
:- dynamic concerns_ai_system/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic continues_to_learn_after_deployment/1.
:- dynamic continues_to_learn_after_market_placement/1.
:- dynamic controls_input_data/1.
:- dynamic court_of_justice_acting_judicially/1.
:- dynamic covered_by_annex_i_legislation/1.
:- dynamic covered_by_union_harmonisation_legislation/1.
:- dynamic critical_infrastructure/1.
:- dynamic cumulative_training_computation/2.
:- dynamic data_protection_impact_assessment_conducted/1.
:- dynamic data_protection_supervisory_authority/1.
:- dynamic data_set_meets_quality_criteria/1.
:- dynamic deep_fake/1.
:- dynamic deletion_after_correction_or_retention/1.
:- dynamic deployer/1.
:- dynamic designated_under_other_union_legislation/1.
:- dynamic detects_decision_patterns/1.
:- dynamic digital_ce_marking/1.
:- dynamic disproportionate_verification_requirement/1.
:- dynamic distributor/1.
:- dynamic documents_impartiality_procedures/1.
:- dynamic does_not_represent_parties/1.
:- dynamic downstream_provider/1.
:- dynamic easily_accessible_digital_marking/1.
:- dynamic eligible_for_sandbox/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic enforcement_activity/1.
:- dynamic ensures_confidence_in_performance/1.
:- dynamic ensures_equivalent_compliance/1.
:- dynamic established_under_national_law/1.
:- dynamic eu_declaration_of_conformity_not_drawn_up/1.
:- dynamic eu_declaration_of_conformity_not_drawn_up_correctly/1.
:- dynamic european_data_protection_supervisor/1.
:- dynamic exempt_from_notification_obligation/1.
:- dynamic existing_post_market_monitoring_under_sector_law/1.
:- dynamic failure_to_meet_requirements/1.
:- dynamic financial_institution/1.
:- dynamic financial_institution_deployer/1.
:- dynamic financial_institution_subject_to_governance_requirements/1.
:- dynamic floating_point_operation/1.
:- dynamic fundamental_rights_impact_assessment_performed/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_covers_requirement/2.
:- dynamic harmonised_standard_exists_for_requirements/1.
:- dynamic has_accreditation_certificate/1.
:- dynamic has_equivalent_capabilities_or_impact/1.
:- dynamic has_grounds_to_consider_infringement/1.
:- dynamic has_internal_competences_for_evaluation/1.
:- dynamic has_legal_personality/1.
:- dynamic has_liability_insurance/1.
:- dynamic has_partner_or_linked_enterprise/1.
:- dynamic has_requisite_competence/1.
:- dynamic has_sufficient_personnel/1.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk_ai_system_annex_3_point_1/1.
:- dynamic high_risk_ai_system_annex_3_points_2_to_8/1.
:- dynamic high_risk_ai_system_referred_to_in_annex_3_point_2/1.
:- dynamic high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c/1.
:- dynamic high_risk_ai_system_referred_to_in_art_6_par_2/1.
:- dynamic identification_number_affixed_by_notified_body/2.
:- dynamic identification_number_affixed_under_instructions/3.
:- dynamic identification_number_in_promotional_material/1.
:- dynamic identifies_system/2.
:- dynamic importer/1.
:- dynamic improves_human_activity_result/1.
:- dynamic independent_of_competitor/2.
:- dynamic independent_of_operator_with_economic_interest/2.
:- dynamic independent_of_provider/2.
:- dynamic informed_consent/1.
:- dynamic infringement_of_other_requirement/1.
:- dynamic infringement_of_prohibited_ai_practice/1.
:- dynamic initial_identification_exemption_applies/1.
:- dynamic input_data/1.
:- dynamic instructions_for_use/1.
:- dynamic intended_for_annex_3_point_2/1.
:- dynamic intended_for_law_enforcement_or_asylum/1.
:- dynamic intended_purpose/1.
:- dynamic internal_governance_compliance/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic liability_assumed_by_member_state/1.
:- dynamic linked_to_criminal_offence_or_threat/1.
:- dynamic logging_capability/1.
:- dynamic logs_under_control/2.
:- dynamic maintains_confidentiality/1.
:- dynamic makes_decisions_about_natural_persons/1.
:- dynamic making_available_on_market/1.
:- dynamic market_surveillance_authority/1.
:- dynamic measure_justified/1.
:- dynamic measure_unjustified/1.
:- dynamic meets_article_31_requirements/1.
:- dynamic meets_requirements_of_art_31/1.
:- dynamic member_of_scientific_panel/2.
:- dynamic member_state/1.
:- dynamic member_state_directly_responsible/1.
:- dynamic microenterprise/1.
:- dynamic narrow_procedural_task/1.
:- dynamic national_competent_authority/1.
:- dynamic nature_precludes_direct_affixing/1.
:- dynamic necessary_and_appropriate/1.
:- dynamic no_conflicting_activity/1.
:- dynamic no_transmission_to_third_parties/1.
:- dynamic non_compliance_persists/1.
:- dynamic non_compliance_with_art_5/1.
:- dynamic non_conformity_applies/1.
:- dynamic non_conformity_with_section_2_requirements/1.
:- dynamic non_personal_data/1.
:- dynamic not_involved_in_design/1.
:- dynamic not_involved_in_development/1.
:- dynamic not_involved_in_marketing/1.
:- dynamic not_involved_in_use/1.
:- dynamic notified/1.
:- dynamic notified_body_identification_number_required/1.
:- dynamic notifying_authority/1.
:- dynamic objection_issued/2.
:- dynamic objection_raised/1.
:- dynamic offers_commitments_to_implement_mitigation_measures/2.
:- dynamic participates_in_coordination_activities/1.
:- dynamic participates_in_standardisation/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_profiling/1.
:- dynamic permitted_use_for_operations/2.
:- dynamic permitted_use_for_personal_purposes/2.
:- dynamic personal_data/1.
:- dynamic placing_on_market/1.
:- dynamic poses_significant_risk/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic preparatory_task_for_annex_iii/1.
:- dynamic presents_risk/1.
:- dynamic presents_risk/2.
:- dynamic private_entity_providing_public_services/1.
:- dynamic processing_records_include_justification/1.
:- dynamic product_containing_ai_system/1.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic proportionate_to_nature_and_risks/2.
:- dynamic provided_digitally/1.
:- dynamic provider/1.
:- dynamic provider_agreement_obtained/2.
:- dynamic provides_general_purpose_ai_model/2.
:- dynamic publicly_accessible_space/1.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_consider_risk/1.
:- dynamic reason_to_doubt_competence/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic recall_of_ai_system/1.
:- dynamic referred_to_in_annex_3_point_5/1.
:- dynamic referred_to_in_annex_iii/1.
:- dynamic registered_in_eu_database/1.
:- dynamic registration_in_eu_database_not_carried_out/1.
:- dynamic relevant_and_representative/1.
:- dynamic relevant_market_surveillance_authority/2.
:- dynamic remote/1.
:- dynamic reporting_deadline/3.
:- dynamic request_for_access_applies/1.
:- dynamic requires_third_party_conformity_assessment/1.
:- dynamic risk/1.
:- dynamic risk_presents/1.
:- dynamic safeguards_impartiality/1.
:- dynamic safety_component/1.
:- dynamic sandbox_eligibility_criteria_applies/1.
:- dynamic sandbox_plan/1.
:- dynamic sandbox_terms_and_conditions_apply/1.
:- dynamic satisfies_cybersecurity_requirements/1.
:- dynamic satisfies_organisational_requirements/1.
:- dynamic satisfies_process_requirements/1.
:- dynamic satisfies_quality_management_requirements/1.
:- dynamic satisfies_resource_requirements/1.
:- dynamic scientific_panel_expert/1.
:- dynamic security_and_privacy_measures/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_and_substantiated_concern_of_systemic_risk_at_union_level/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_identified/1.
:- dynamic serious_risk_across_member_states/1.
:- dynamic shortcoming_in_standards/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic single_point_of_contact/1.
:- dynamic source_code_access_necessary/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic storage_or_transport_conditions_jeopardise_compliance/1.
:- dynamic strictly_necessary_for_bias_correction/1.
:- dynamic subject/1.
:- dynamic subject_to_data_governance/1.
:- dynamic subject_to_other_union_law_with_ce_marking/1.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason_to_consider_high_risk/1.
:- dynamic sufficient_reason_to_consider_nonconformity/2.
:- dynamic systemic_risk/1.
:- dynamic targeted_search_of_suspect/1.
:- dynamic technical_documentation_not_available/1.
:- dynamic technical_limitations_on_reuse/1.
:- dynamic testing_data/1.
:- dynamic testing_exhausted_or_insufficient/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic third_country_conformity_assessment_body/1.
:- dynamic trained_and_tested_on_setting_specific_data/1.
:- dynamic training_data/1.
:- dynamic union_agreement_exists/1.
:- dynamic union_ai_testing_support/1.
:- dynamic union_ai_testing_support_structure/1.
:- dynamic union_body/1.
:- dynamic union_established_sme/1.
:- dynamic union_harmonisation_legislation_applies/1.
:- dynamic union_harmonisation_legislation_product/1.
:- dynamic union_institution_or_body/1.
:- dynamic urgency_applies/1.
:- dynamic use_not_restricted_to_national_territory/1.
:- dynamic uses_training_techniques/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
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
declared(purpose_of_regulation/1, 'objective the regulation pursues', 'celex:32024R1689/oj#art_1').
declared(lays_down_harmonised_rules_for_placing_on_market/0, 'regulation establishes harmonised rules for placing AI systems on the market', 'celex:32024R1689/oj#art_1').
declared(lays_down_prohibitions_of_certain_ai_practices/0, 'regulation prohibits certain AI practices', 'celex:32024R1689/oj#art_1').
declared(lays_down_requirements_for_high_risk_ai_systems/0, 'regulation sets specific requirements for high-risk AI systems and operator obligations', 'celex:32024R1689/oj#art_1').
declared(lays_down_transparency_rules_for_certain_ai_systems/0, 'regulation establishes harmonised transparency rules for certain AI systems', 'celex:32024R1689/oj#art_1').
declared(lays_down_rules_for_general_purpose_ai_models/0, 'regulation establishes harmonised rules for placing general-purpose AI models on the market', 'celex:32024R1689/oj#art_1').
declared(lays_down_market_monitoring_and_enforcement_rules/0, 'regulation establishes rules on market monitoring, surveillance, governance and enforcement', 'celex:32024R1689/oj#art_1').
declared(lays_down_innovation_support_measures/0, 'regulation establishes measures to support innovation with focus on SMEs and start-ups', 'celex:32024R1689/oj#art_1').
purpose_of_regulation(improve_functioning_of_internal_market).
purpose_of_regulation(promote_uptake_of_human_centric_trustworthy_ai).
purpose_of_regulation(ensure_high_level_of_protection_of_health).
purpose_of_regulation(ensure_high_level_of_protection_of_safety).
purpose_of_regulation(ensure_high_level_of_protection_of_fundamental_rights).
purpose_of_regulation(support_innovation).
lays_down_harmonised_rules_for_placing_on_market.
lays_down_prohibitions_of_certain_ai_practices.
lays_down_requirements_for_high_risk_ai_systems.
lays_down_transparency_rules_for_certain_ai_systems.
lays_down_rules_for_general_purpose_ai_models.
lays_down_market_monitoring_and_enforcement_rules.
lays_down_innovation_support_measures.
provenance(purpose_of_regulation/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_harmonised_rules_for_placing_on_market/0, 'celex:32024R1689/oj#art_1').
provenance(lays_down_prohibitions_of_certain_ai_practices/0, 'celex:32024R1689/oj#art_1').
provenance(lays_down_requirements_for_high_risk_ai_systems/0, 'celex:32024R1689/oj#art_1').
provenance(lays_down_transparency_rules_for_certain_ai_systems/0, 'celex:32024R1689/oj#art_1').
provenance(lays_down_rules_for_general_purpose_ai_models/0, 'celex:32024R1689/oj#art_1').
provenance(lays_down_market_monitoring_and_enforcement_rules/0, 'celex:32024R1689/oj#art_1').
provenance(lays_down_innovation_support_measures/0, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(scope_applies_to_provider/1, 'provider within scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(scope_applies_to_deployer/1, 'deployer within scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(scope_applies_to_importer/1, 'importer within scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(scope_applies_to_distributor/1, 'distributor within scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(scope_applies_to_product_manufacturer/1, 'product manufacturer within scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(scope_applies_to_authorised_representative/1, 'authorised representative within scope of the regulation', 'celex:32024R1689/oj#art_2').
declared(exempt_military_defence_national_security/1, 'AI system excluded for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(exempt_scientific_research_and_development/1, 'AI system excluded for sole purpose of scientific R&D', 'celex:32024R1689/oj#art_2').
declared(exempt_pre_market_research_testing_development/1, 'activity excluded prior to placing on market or putting into service', 'celex:32024R1689/oj#art_2').
declared(exempt_personal_non_professional_activity/1, 'deployer obligation excluded for purely personal non-professional use', 'celex:32024R1689/oj#art_2').
declared(exempt_free_open_source/1, 'AI system released under free and open-source licence excluded', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system_related_to_product/1, 'high-risk AI system related to products covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_2').
declared(international_cooperation_law_enforcement_exemption_applies/1, 'exemption for third country public authorities or international organisations in law enforcement cooperation', 'celex:32024R1689/oj#art_2').
scope_applies_to_provider(P) :-
    provider(P),
    placing_on_market(S),
    ai_system(S).
scope_applies_to_provider(P) :-
    provider(P),
    putting_into_service(S),
    ai_system(S).
scope_applies_to_provider(P) :-
    provider(P),
    placing_on_market(M),
    general_purpose_ai_model(M).
scope_applies_to_deployer(D) :-
    deployer(D).
scope_applies_to_importer(I) :-
    importer(I).
scope_applies_to_distributor(D) :-
    distributor(D).
scope_applies_to_product_manufacturer(M) :-
    product_manufacturer(M),
    placing_on_market(S),
    ai_system(S).
scope_applies_to_product_manufacturer(M) :-
    product_manufacturer(M),
    putting_into_service(S),
    ai_system(S).
scope_applies_to_authorised_representative(R) :-
    authorised_representative(R).
exempt_military_defence_national_security(S) :-
    ai_system(S),
    exclusively_military_defence_national_security_purpose(S).
exempt_scientific_research_and_development(S) :-
    ai_system(S),
    sole_purpose_scientific_research_and_development(S).
exempt_pre_market_research_testing_development(A) :-
    research_testing_development_activity(A),
    prior_to_placing_on_market_or_putting_into_service(A),
    \+ testing_in_real_world_conditions(A).
exempt_personal_non_professional_activity(D) :-
    deployer(D),
    natural_person(D),
    purely_personal_non_professional_use(D).
exempt_free_open_source(S) :-
    ai_system(S),
    released_under_free_open_source_licence(S),
    \+ placed_on_market_as_high_risk(S),
    \+ falls_under_art_5_or_art_50(S).
high_risk_ai_system_related_to_product(S) :-
    ai_system(S),
    classified_as_high_risk(S),
    related_to_product_covered_by_union_harmonisation_legislation(S).
international_cooperation_law_enforcement_exemption_applies(E) :-
    public_authority_in_third_country_or_international_organisation(E),
    uses_ai_system_in_framework_of_international_cooperation(E),
    law_enforcement_or_judicial_cooperation_with_union_or_member_state(E),
    provides_adequate_safeguards_for_fundamental_rights(E).
provenance(scope_applies_to_provider/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_deployer/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_importer/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_distributor/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_product_manufacturer/1, 'celex:32024R1689/oj#art_2').
provenance(scope_applies_to_authorised_representative/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_scientific_research_and_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_pre_market_research_testing_development/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_free_open_source/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_related_to_product/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_exemption_applies/1, 'celex:32024R1689/oj#art_2').
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
declared(must_ensure_ai_literacy/2, 'obligation to ensure sufficient AI literacy for relevant persons', 'celex:32024R1689/oj#art_4').
declared(relevant_person_for_ai_system/2, 'staff or other person dealing with operation or use of an AI system on behalf of an operator', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Provider, S) :-
    provider(Provider),
    ai_system(S),
    relevant_person_for_ai_system(S, _Person).
must_ensure_ai_literacy(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    relevant_person_for_ai_system(S, _Person).
relevant_person_for_ai_system(S, Person) :-
    ai_system(S),
    staff_dealing_with_operation_or_use(S, Person).
relevant_person_for_ai_system(S, Person) :-
    ai_system(S),
    other_person_dealing_with_operation_or_use_on_behalf(S, Person).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(relevant_person_for_ai_system/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulation/1, 'AI system using subliminal or manipulative techniques causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_exploitation_of_vulnerabilities/1, 'AI system exploiting vulnerabilities causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system for social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment/1, 'AI system assessing criminal risk based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(prohibited_untargeted_facial_scraping/1, 'AI system creating facial recognition databases via untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference/1, 'AI system inferring emotions in workplace or education', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'AI system categorising persons by sensitive attributes via biometrics', 'celex:32024R1689/oj#art_5').
declared(permitted_law_enforcement_rbi/1, 'Real-time remote biometric ID for specific law enforcement objectives', 'celex:32024R1689/oj#art_5').
declared(must_confirm_targeted_identity/2, 'Deployer must use RBI only to confirm identity of targeted individual', 'celex:32024R1689/oj#art_5').
declared(must_complete_fria_before_use/2, 'Authority must complete fundamental rights impact assessment before RBI use', 'celex:32024R1689/oj#art_5').
declared(must_register_in_eu_database/2, 'Authority must register RBI system in EU database', 'celex:32024R1689/oj#art_5').
declared(must_obtain_prior_authorisation/2, 'Authority must obtain prior authorisation for RBI use', 'celex:32024R1689/oj#art_5').
declared(must_notify_rbi_use/2, 'Authority must notify market surveillance and DPA of RBI use', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'National authority must submit annual report on RBI use to Commission', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/1, 'Commission must publish annual report on RBI use', 'celex:32024R1689/oj#art_5').
declared(exempt_criminal_risk_assessment/1, 'Criminal risk AI supporting human assessment based on objective facts', 'celex:32024R1689/oj#art_5').
declared(exempt_emotion_inference/1, 'Emotion inference intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(exempt_biometric_categorisation/1, 'Labelling or filtering of lawfully acquired biometric datasets for law enforcement', 'celex:32024R1689/oj#art_5').
declared(urgency_applies/1, 'Duly justified case of urgency permitting deferred registration or authorisation', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deploys_subliminal_or_manipulative_techniques(S),
    materially_distorts_behaviour(S),
    causes_significant_harm(S).
prohibited_exploitation_of_vulnerabilities(S) :-
    ai_system(S),
    exploits_vulnerability(S),
    materially_distorts_behaviour(S),
    causes_significant_harm(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    evaluates_social_behaviour_or_characteristics(S),
    leads_to_detrimental_treatment(S).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    assesses_criminal_offence_risk(S),
    based_solely_on_profiling_or_personality(S),
    \+ exempt_criminal_risk_assessment(S).
exempt_criminal_risk_assessment(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_verifiable_facts(S).
prohibited_untargeted_facial_scraping(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping(S).
prohibited_emotion_inference(S) :-
    ai_system(S),
    infers_emotions(S),
    used_in_workplace_or_education(S),
    \+ exempt_emotion_inference(S).
exempt_emotion_inference(S) :-
    ai_system(S),
    intended_for_medical_or_safety_reasons(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    deduces_sensitive_attribute(S),
    \+ exempt_biometric_categorisation(S).
exempt_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    labelling_or_filtering_lawful_dataset(S),
    law_enforcement_context(S).
permitted_law_enforcement_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    law_enforcement_purpose(S),
    strictly_necessary_objective(S).
must_confirm_targeted_identity(D, S) :-
    deployer(D),
    permitted_law_enforcement_rbi(S),
    deployment(S, confirm_identity(_Target)).
must_complete_fria_before_use(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S),
    \+ urgency_applies(S).
must_register_in_eu_database(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S),
    \+ urgency_applies(S).
must_obtain_prior_authorisation(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S),
    \+ urgency_applies(S).
must_notify_rbi_use(A, S) :-
    law_enforcement_authority(A),
    permitted_law_enforcement_rbi(S).
must_submit_annual_report(NationalAuthority, commission) :-
    national_competent_authority(NationalAuthority),
    notified_of_rbi_use(NationalAuthority, _S).
must_publish_annual_report(commission) :-
    true.
provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerabilities/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_scraping/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rbi/1, 'celex:32024R1689/oj#art_5').
provenance(must_confirm_targeted_identity/2, 'celex:32024R1689/oj#art_5').
provenance(must_complete_fria_before_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_5').
provenance(must_obtain_prior_authorisation/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_rbi_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(exempt_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(urgency_applies/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(covered_by_annex_i_legislation/1, 'product or AI system covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_6').
declared(requires_third_party_conformity_assessment/1, 'product required to undergo third-party conformity assessment pursuant to Annex I legislation', 'celex:32024R1689/oj#art_6').
declared(referred_to_in_annex_iii/1, 'AI system falling within the categories listed in Annex III', 'celex:32024R1689/oj#art_6').
declared(poses_significant_risk/1, 'poses a significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6').
declared(performs_profiling/1, 'performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(narrow_procedural_task/1, 'intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(improves_human_activity_result/1, 'intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(detects_decision_patterns/1, 'intended to detect decision-making patterns without replacing human assessment', 'celex:32024R1689/oj#art_6').
declared(preparatory_task_for_annex_iii/1, 'intended to perform a preparatory task for an Annex III use case assessment', 'celex:32024R1689/oj#art_6').
declared(must_document_non_high_risk_assessment/2, 'provider must document assessment that Annex III system is not high-risk', 'celex:32024R1689/oj#art_6').
declared(must_provide_assessment_documentation/2, 'provider must provide documentation of non-high-risk assessment upon request', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    covered_by_annex_i_legislation(S),
    requires_third_party_conformity_assessment(S).
high_risk_ai_system(S) :-
    referred_to_in_annex_iii(S),
    \+ exempt_from_high_risk_classification(S).
exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    narrow_procedural_task(S).
exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    improves_human_activity_result(S).
exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    detects_decision_patterns(S).
exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    preparatory_task_for_annex_iii(S).
must_document_non_high_risk_assessment(P, S) :-
    provider(P),
    referred_to_in_annex_iii(S),
    \+ high_risk_ai_system(S),
    before_placing_on_market_or_service(S).
must_provide_assessment_documentation(P, S) :-
    provider(P),
    referred_to_in_annex_iii(S),
    \+ high_risk_ai_system(S),
    requested_by_national_competent_authority(S).
before_placing_on_market_or_service(S) :-
    \+ placing_on_market(S).
before_placing_on_market_or_service(S) :-
    \+ putting_into_service(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(covered_by_annex_i_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(referred_to_in_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(poses_significant_risk/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improves_human_activity_result/1, 'celex:32024R1689/oj#art_6').
provenance(detects_decision_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(preparatory_task_for_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_non_high_risk_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

% ==== celex:32024R1689/oj#art_7 ====
declared(commission_empowered_to_add_high_risk_use_case/1, 'commission may amend annex 3 to add a high-risk ai system use case', 'celex:32024R1689/oj#art_7').
declared(commission_empowered_to_remove_high_risk_use_case/1, 'commission may amend annex 3 to remove a high-risk ai system use case', 'celex:32024R1689/oj#art_7').
declared(conditions_for_adding_high_risk_use_case/1, 'both area and equivalent risk conditions are fulfilled for adding a use case', 'celex:32024R1689/oj#art_7').
declared(conditions_for_removing_high_risk_use_case/1, 'both no significant risk and no decrease in protection conditions are fulfilled for removing a use case', 'celex:32024R1689/oj#art_7').
declared(intended_for_annex_iii_area/1, 'ai system is intended to be used in an area listed in annex iii', 'celex:32024R1689/oj#art_7').
declared(poses_equivalent_or_greater_risk/1, 'ai system poses risk of harm or adverse impact equivalent to or greater than existing high-risk systems', 'celex:32024R1689/oj#art_7').
declared(no_longer_poses_significant_risk/1, 'high-risk ai system no longer poses significant risks to fundamental rights health or safety', 'celex:32024R1689/oj#art_7').
declared(deletion_does_not_decrease_protection/1, 'deletion of use case does not decrease overall level of protection under union law', 'celex:32024R1689/oj#art_7').
declared(assessment_criteria_considered/1, 'commission takes into account criteria when assessing equivalent risk condition', 'celex:32024R1689/oj#art_7').
provenance(commission_empowered_to_add_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(commission_empowered_to_remove_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(conditions_for_adding_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(conditions_for_removing_high_risk_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(intended_for_annex_iii_area/1, 'celex:32024R1689/oj#art_7').
provenance(poses_equivalent_or_greater_risk/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
provenance(assessment_criteria_considered/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').
commission_empowered_to_add_high_risk_use_case(S) :-
    conditions_for_adding_high_risk_use_case(S).
commission_empowered_to_remove_high_risk_use_case(S) :-
    conditions_for_removing_high_risk_use_case(S).
conditions_for_adding_high_risk_use_case(S) :-
    ai_system(S),
    intended_for_annex_iii_area(S),
    poses_equivalent_or_greater_risk(S).
conditions_for_removing_high_risk_use_case(S) :-
    ai_system(S),
    no_longer_poses_significant_risk(S),
    deletion_does_not_decrease_protection(S).
intended_for_annex_iii_area(S) :-
    intended_purpose(S).
poses_equivalent_or_greater_risk(S) :-
    risk(S),
    assessment_criteria_considered(S).
no_longer_poses_significant_risk(S) :-
    \+ poses_equivalent_or_greater_risk(S),
    assessment_criteria_considered(S).
deletion_does_not_decrease_protection(_S).
assessment_criteria_considered(S) :-
    ai_system(S).

% ==== celex:32024R1689/oj#art_8 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_8').
declared(product_containing_ai_system/1, 'product that contains an AI system', 'celex:32024R1689/oj#art_8').
declared(union_harmonisation_legislation_applies/1, 'Union harmonisation legislation listed in Annex I Section 1 applies to the product', 'celex:32024R1689/oj#art_8').
must_comply_with_requirements(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S).
must_take_into_account_intended_purpose(S) :-
    high_risk_ai_system(S).
must_take_into_account_state_of_the_art(S) :-
    high_risk_ai_system(S).
must_take_into_account_risk_management_system(S) :-
    high_risk_ai_system(S).
must_ensure_product_compliance(P, Product) :-
    provider(P),
    product_containing_ai_system(Product),
    union_harmonisation_legislation_applies(Product).
permitted_integration_of_documentation(P, Product) :-
    provider(P),
    product_containing_ai_system(Product),
    high_risk_ai_system(Product),
    union_harmonisation_legislation_applies(Product).
provenance(must_comply_with_requirements/2, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_intended_purpose/1, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_state_of_the_art/1, 'celex:32024R1689/oj#art_8').
provenance(must_take_into_account_risk_management_system/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_product_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_documentation/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(required_risk_management_system/1, 'high-risk AI system must have a risk management system', 'celex:32024R1689/oj#art_9').
declared(must_establish_risk_management_system/2, 'provider must establish risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(risk_identification_step/1, 'risk management system includes identification and analysis of known and foreseeable risks', 'celex:32024R1689/oj#art_9').
declared(risk_estimation_step/1, 'risk management system includes estimation and evaluation of risks under intended use and foreseeable misuse', 'celex:32024R1689/oj#art_9').
declared(post_market_risk_evaluation_step/1, 'risk management system includes evaluation of risks from post-market monitoring data', 'celex:32024R1689/oj#art_9').
declared(risk_management_measure_adoption_step/1, 'risk management system includes adoption of targeted measures to address identified risks', 'celex:32024R1689/oj#art_9').
declared(mitigatable_risk/1, 'risk that can be reasonably mitigated or eliminated through design or technical information', 'celex:32024R1689/oj#art_9').
declared(acceptable_residual_risk/1, 'residual risk judged acceptable after risk management measures', 'celex:32024R1689/oj#art_9').
declared(must_test_for_risk_management/2, 'provider must test high-risk AI system to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(testing_before_placing_on_market/1, 'testing performed prior to placing on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(must_consider_vulnerable_groups/2, 'provider must consider adverse impact on children and vulnerable groups', 'celex:32024R1689/oj#art_9').
required_risk_management_system(S) :-
    ai_system(S),
    high_risk_ai_system(S).
must_establish_risk_management_system(P, S) :-
    provider(P),
    required_risk_management_system(S),
    risk_identification_step(S),
    risk_estimation_step(S),
    post_market_risk_evaluation_step(S),
    risk_management_measure_adoption_step(S).
risk_identification_step(S) :-
    required_risk_management_system(S),
    intended_purpose(S),
    \+ risk_analysis_missing(S).
risk_estimation_step(S) :-
    required_risk_management_system(S),
    intended_purpose(S),
    reasonably_foreseeable_misuse(S).
post_market_risk_evaluation_step(S) :-
    required_risk_management_system(S),
    post_market_monitoring_system(S).
risk_management_measure_adoption_step(S) :-
    required_risk_management_system(S),
    risk_identification_step(S),
    acceptable_residual_risk(S).
mitigatable_risk(S) :-
    required_risk_management_system(S),
    risk(S).
acceptable_residual_risk(S) :-
    required_risk_management_system(S),
    risk_management_measure_adoption_step(S).
must_test_for_risk_management(P, S) :-
    provider(P),
    required_risk_management_system(S),
    testing_before_placing_on_market(S).
testing_before_placing_on_market(S) :-
    required_risk_management_system(S),
    placing_on_market(S).
testing_before_placing_on_market(S) :-
    required_risk_management_system(S),
    putting_into_service(S).
must_consider_vulnerable_groups(P, S) :-
    provider(P),
    required_risk_management_system(S),
    intended_purpose(S).
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_step/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_step/1, 'celex:32024R1689/oj#art_9').
provenance(post_market_risk_evaluation_step/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_adoption_step/1, 'celex:32024R1689/oj#art_9').
provenance(mitigatable_risk/1, 'celex:32024R1689/oj#art_9').
provenance(acceptable_residual_risk/1, 'celex:32024R1689/oj#art_9').
provenance(must_test_for_risk_management/2, 'celex:32024R1689/oj#art_9').
provenance(testing_before_placing_on_market/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
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
declared(uses_training_techniques/1, 'AI system developed using techniques involving training with data', 'celex:32024R1689/oj#art_10').
declared(data_set_meets_quality_criteria/1, 'data set satisfies requirements of Article 10(2)-(5)', 'celex:32024R1689/oj#art_10').
declared(subject_to_data_governance/1, 'data set governed by practices appropriate for intended purpose', 'celex:32024R1689/oj#art_10').
declared(relevant_and_representative/1, 'data set is relevant, representative, error-free and complete for intended purpose', 'celex:32024R1689/oj#art_10').
declared(accounts_for_setting_characteristics/1, 'data set accounts for geographical, contextual, behavioural or functional setting', 'celex:32024R1689/oj#art_10').
declared(permitted_processing_special_categories/2, 'exceptional processing of special categories of personal data for bias detection', 'celex:32024R1689/oj#art_10').
declared(strictly_necessary_for_bias_correction/1, 'processing strictly necessary for bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(cannot_use_alternative_data/1, 'bias detection cannot be fulfilled by other data including synthetic or anonymised', 'celex:32024R1689/oj#art_10').
declared(technical_limitations_on_reuse/1, 'special category data subject to technical limitations on re-use', 'celex:32024R1689/oj#art_10').
declared(security_and_privacy_measures/1, 'state-of-the-art security and privacy-preserving measures applied', 'celex:32024R1689/oj#art_10').
declared(access_controls_and_documentation/1, 'strict controls and documentation of access to prevent misuse', 'celex:32024R1689/oj#art_10').
declared(no_transmission_to_third_parties/1, 'data not transmitted, transferred or accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(deletion_after_correction_or_retention/1, 'data deleted once bias corrected or retention period ends', 'celex:32024R1689/oj#art_10').
declared(processing_records_include_justification/1, 'records include reasons why processing was strictly necessary', 'celex:32024R1689/oj#art_10').
must_develop_with_quality_data_sets(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    uses_training_techniques(S),
    data_set_meets_quality_criteria(S).
must_apply_data_governance(_P, S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    subject_to_data_governance(S).
must_ensure_data_relevance(_P, S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    relevant_and_representative(S).
must_account_for_setting(_P, S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    accounts_for_setting_characteristics(S).
permitted_processing_special_categories(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    strictly_necessary_for_bias_correction(S),
    cannot_use_alternative_data(S),
    technical_limitations_on_reuse(S),
    security_and_privacy_measures(S),
    access_controls_and_documentation(S),
    no_transmission_to_third_parties(S),
    deletion_after_correction_or_retention(S),
    processing_records_include_justification(S).
must_apply_requirements_to_testing_data_only(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    data_set_meets_quality_criteria(S).
provenance(must_develop_with_quality_data_sets/2, 'celex:32024R1689/oj#art_10').
provenance(must_apply_data_governance/2, 'celex:32024R1689/oj#art_10').
provenance(must_ensure_data_relevance/2, 'celex:32024R1689/oj#art_10').
provenance(must_account_for_setting/2, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories/2, 'celex:32024R1689/oj#art_10').
provenance(must_apply_requirements_to_testing_data_only/2, 'celex:32024R1689/oj#art_10').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_11').
declared(sme/1, 'small or medium-sized enterprise including start-ups', 'celex:32024R1689/oj#art_11').
declared(simplified_technical_documentation_form/1, 'form established by Commission for SMEs', 'celex:32024R1689/oj#art_11').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).
must_keep_technical_documentation_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).
technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    complies_with_section_2_requirements(S).
technical_documentation_provides_information(S) :-
    high_risk_ai_system(S),
    clear_and_comprehensive_form(S).
required_technical_documentation_elements(S) :-
    high_risk_ai_system(S),
    contains_annex_iv_elements(S).
permitted_simplified_documentation(S) :-
    high_risk_ai_system(S),
    sme(Provider),
    provider(Provider, S),
    uses_simplified_form(S).
must_use_simplified_form(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    sme(P),
    opts_for_simplified_manner(S).
must_accept_simplified_form(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    uses_simplified_form(S),
    conformity_assessment_purpose(S).
single_documentation_required(S) :-
    high_risk_ai_system(S),
    related_to_product(S),
    product_covered_by_union_harmonisation_legislation(Product),
    placed_on_market_or_put_into_service(S).
before_placing_on_market_or_putting_into_service(S) :-
    \+ placing_on_market(S).
before_placing_on_market_or_putting_into_service(S) :-
    \+ putting_into_service(S).
provider(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_information/1, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_elements/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(single_documentation_required/1, 'celex:32024R1689/oj#art_11').
provenance(before_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_11').
provenance(provider/2, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_12').
declared(logging_capability/1, 'technical capability to record events automatically', 'celex:32024R1689/oj#art_12').
declared(biometric_identification_system_annex_3_1_a/1, 'high-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_12').
must_allow_automatic_recording(S, logs) :-
    high_risk_ai_system(S).
required_logging_capability(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    traceability_appropriate_to_intended_purpose(S).
traceability_appropriate_to_intended_purpose(S) :-
    enables_recording_for_risk_identification(S).
traceability_appropriate_to_intended_purpose(S) :-
    enables_recording_for_post_market_monitoring(S).
traceability_appropriate_to_intended_purpose(S) :-
    enables_recording_for_operation_monitoring(S).
enables_recording_for_risk_identification(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    records_events_relevant_for(risk_or_substantial_modification).
enables_recording_for_post_market_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    records_events_relevant_for(post_market_monitoring).
enables_recording_for_operation_monitoring(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    records_events_relevant_for(operation_monitoring).
must_provide_minimum_logging(S, Requirements) :-
    biometric_identification_system_annex_3_1_a(S),
    minimum_logging_requirements(Requirements).
minimum_logging_requirements([
    recording_of_use_period,
    reference_database_checked,
    input_data_leading_to_match,
    identification_of_verifying_persons
]).
provenance(must_allow_automatic_recording/2, 'celex:32024R1689/oj#art_12').
provenance(required_logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(traceability_appropriate_to_intended_purpose/1, 'celex:32024R1689/oj#art_12').
provenance(enables_recording_for_risk_identification/1, 'celex:32024R1689/oj#art_12').
provenance(enables_recording_for_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(enables_recording_for_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(must_provide_minimum_logging/2, 'celex:32024R1689/oj#art_12').
provenance(minimum_logging_requirements/1, 'celex:32024R1689/oj#art_12').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(biometric_identification_system_annex_3_1_a/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
must_ensure_transparency(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system_applies(S).
must_provide_instructions_for_use(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system_applies(S).
instructions_contain_provider_identity(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).
instructions_contain_characteristics_and_limitations(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).
instructions_contain_predetermined_changes(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).
instructions_contain_human_oversight_measures(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).
instructions_contain_resource_and_maintenance_info(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).
instructions_contain_log_mechanism_description(S) :-
    ai_system(S),
    high_risk_ai_system_applies(S).
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics_and_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_resource_and_maintenance_info/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_mechanism_description/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_14').
declared(human_oversight_measure/1, 'measure ensuring effective human oversight of an AI system', 'celex:32024R1689/oj#art_14').
declared(built_in_oversight_measure/1, 'oversight measure built into the system by the provider', 'celex:32024R1689/oj#art_14').
declared(deployer_implemented_oversight_measure/1, 'oversight measure identified by provider for implementation by deployer', 'celex:32024R1689/oj#art_14').
declared(biometric_identification_system_for_law_enforcement/1, 'high-risk AI system for biometric ID used in law enforcement, migration, border control or asylum', 'celex:32024R1689/oj#art_14').
declared(disproportionate_verification_requirement/1, 'situation where separate verification by two persons is considered disproportionate under Union or national law', 'celex:32024R1689/oj#art_14').
must_design_for_human_oversight(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    human_oversight_measure(System).
human_oversight_measure(System) :-
    high_risk_ai_system(System),
    commensurate_with_risks_and_autonomy(System),
    (built_in_oversight_measure(System) ; deployer_implemented_oversight_measure(System)).
built_in_oversight_measure(System) :-
    high_risk_ai_system(System),
    technically_feasible_to_build_in(System),
    before_placing_on_market_or_service(System).
deployer_implemented_oversight_measure(System) :-
    high_risk_ai_system(System),
    appropriate_for_deployer_implementation(System),
    before_placing_on_market_or_service(System).
must_enable_oversight_capability(System, Capability) :-
    high_risk_ai_system(System),
    oversight_capability(Capability),
    appropriate_and_proportionate(System, Capability).
oversight_capability(understand_capacities_and_limitations).
oversight_capability(monitor_operation).
oversight_capability(aware_of_automation_bias).
oversight_capability(interpret_output).
oversight_capability(decide_not_to_use_or_override).
oversight_capability(intervene_or_interrupt_safely).
must_verify_identification_by_two_persons(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    biometric_identification_system(System),
    \+ exempt_from_two_person_verification(System).
exempt_from_two_person_verification(System) :-
    biometric_identification_system_for_law_enforcement(System),
    disproportionate_verification_requirement(System).
biometric_identification_system_for_law_enforcement(System) :-
    high_risk_ai_system(System),
    biometric_identification(System),
    (law_enforcement_purpose(System) ; migration_purpose(System) ; border_control_purpose(System) ; asylum_purpose(System)).
provenance(must_design_for_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(must_enable_oversight_capability/2, 'celex:32024R1689/oj#art_14').
provenance(oversight_capability/1, 'celex:32024R1689/oj#art_14').
provenance(must_verify_identification_by_two_persons/2, 'celex:32024R1689/oj#art_14').
provenance(exempt_from_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(biometric_identification_system_for_law_enforcement/1, 'celex:32024R1689/oj#art_14').
provenance(disproportionate_verification_requirement/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_15').
declared(continues_to_learn_after_deployment/1, 'system continues learning after being placed on market or put into service', 'celex:32024R1689/oj#art_15').
must_achieve_accuracy_robustness_cybersecurity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_declare_accuracy_metrics(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_implement_resilience_measures(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_mitigate_feedback_loops(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    continues_to_learn_after_deployment(S).
must_ensure_cybersecurity_resilience(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_implement_ai_specific_cybersecurity_measures(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_achieve_accuracy_robustness_cybersecurity/2, 'celex:32024R1689/oj#art_15').
provenance(must_declare_accuracy_metrics/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_resilience_measures/2, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn_after_deployment/1, 'celex:32024R1689/oj#art_15').
provenance(must_mitigate_feedback_loops/2, 'celex:32024R1689/oj#art_15').
provenance(must_ensure_cybersecurity_resilience/2, 'celex:32024R1689/oj#art_15').
provenance(must_implement_ai_specific_cybersecurity_measures/2, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Chapter III', 'celex:32024R1689/oj#art_16').
must_ensure_compliance_with_requirements(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_indicate_identification_details(P, S) :-
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
    high_risk_ai_system(S).
must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_comply_with_registration_obligations(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_demonstrate_conformity_upon_request(P, A, S) :-
    provider(P),
    national_competent_authority(A),
    high_risk_ai_system(S).
must_ensure_accessibility_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_ensure_compliance_with_requirements/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identification_details/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity_upon_request/3, 'celex:32024R1689/oj#art_16').
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
declared(must_put_in_place_quality_management_system/2, 'provider must establish a QMS for a high-risk AI system', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_covers_aspect/2, 'QMS includes a specific required aspect', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'provider that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_17').
declared(internal_governance_compliance/1, 'compliance with rules on internal governance under Union financial services law', 'celex:32024R1689/oj#art_17').
must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    \+ financial_institution(P).
must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    financial_institution(P),
    internal_governance_compliance(P).
quality_management_system_covers_aspect(S, regulatory_compliance_strategy) :-
    ai_system(S).
quality_management_system_covers_aspect(S, design_control_procedures) :-
    ai_system(S).
quality_management_system_covers_aspect(S, development_quality_assurance) :-
    ai_system(S).
quality_management_system_covers_aspect(S, examination_test_validation_procedures) :-
    ai_system(S).
quality_management_system_covers_aspect(S, technical_specifications_application) :-
    ai_system(S).
quality_management_system_covers_aspect(S, data_management_systems) :-
    ai_system(S).
quality_management_system_covers_aspect(S, risk_management_system) :-
    ai_system(S).
quality_management_system_covers_aspect(S, post_market_monitoring_system) :-
    ai_system(S).
quality_management_system_covers_aspect(S, serious_incident_reporting_procedures) :-
    ai_system(S).
quality_management_system_covers_aspect(S, communication_handling) :-
    ai_system(S).
quality_management_system_covers_aspect(S, record_keeping_systems) :-
    ai_system(S).
quality_management_system_covers_aspect(S, resource_management) :-
    ai_system(S).
quality_management_system_covers_aspect(S, accountability_framework) :-
    ai_system(S).
provenance(must_put_in_place_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_covers_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_17').
provenance(internal_governance_compliance/1, 'celex:32024R1689/oj#art_17').
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
documentation_retention_period_years(10).
must_keep_documentation(P, technical_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S).
must_keep_documentation(P, quality_management_system_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S).
must_keep_documentation(P, changes_approved_by_notified_bodies(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S),
    changes_approved_by_notified_body_applies(S).
must_keep_documentation(P, notified_body_decisions(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S),
    notified_body_decision_exists(S).
must_keep_documentation(P, eu_declaration_of_conformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S).
within_retention_period(S) :-
    documentation_retention_period_years(Years),
    time_since_market_event(S, Elapsed),
    Elapsed =< Years.
placed_on_market_or_put_into_service(S) :-
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).
must_keep_documentation(P, technical_documentation_under_financial_law(S)) :-
    financial_institution_provider(P),
    high_risk_ai_system(S).
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_retention_period_years/1, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_19').
declared(financial_institution/1, 'provider subject to Union financial services law governance requirements', 'celex:32024R1689/oj#art_19').
declared(logs_under_control/2, 'logs automatically generated by a system that are under the control of a provider', 'celex:32024R1689/oj#art_19').
declared(appropriate_retention_period/2, 'period appropriate to intended purpose and at least six months unless otherwise provided', 'celex:32024R1689/oj#art_19').
must_keep_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System),
    \+ financial_institution(Provider),
    appropriate_retention_period(System, _Period).
must_maintain_logs_as_financial_documentation(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    financial_institution(Provider),
    logs_under_control(Provider, System).
appropriate_retention_period(System, months(6)) :-
    high_risk_ai_system(System),
    intended_purpose(System).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_as_financial_documentation/2, 'celex:32024R1689/oj#art_19').
provenance(appropriate_retention_period/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_20').
declared(non_conformity_applies/1, 'system is not in conformity with the regulation', 'celex:32024R1689/oj#art_20').
declared(risk_presents/1, 'system presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_20').
declared(certificate_issued_for/2, 'notified body issued a certificate for the system', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    non_conformity_applies(System).
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    putting_into_service(System),
    non_conformity_applies(System).
must_inform(Provider, distributors(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System).
must_inform(Provider, deployers(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System),
    deployer(_D).
must_inform(Provider, authorised_representative(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System),
    authorised_representative(_R).
must_inform(Provider, importers(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System),
    importer(_I).
must_investigate_causes(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presents(System).
must_inform(Provider, market_surveillance_authority(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presents(System).
must_inform(Provider, notified_body(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presents(System),
    certificate_issued_for(_Body, System).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_20').
provenance(non_conformity_applies/1, 'celex:32024R1689/oj#art_20').
provenance(risk_presents/1, 'celex:32024R1689/oj#art_20').
provenance(certificate_issued_for/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
must_provide_conformity_information(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request_by_competent_authority(S).
must_provide_access_to_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request_by_competent_authority(S),
    logs_under_control(P, S).
provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(established_in_third_country/1, 'provider established outside the Union', 'celex:32024R1689/oj#art_22').
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Chapter III', 'celex:32024R1689/oj#art_22').
declared(written_mandate/1, 'written mandate appointing an authorised representative', 'celex:32024R1689/oj#art_22').
declared(must_appoint_authorised_representative/2, 'provider must appoint an authorised representative by written mandate', 'celex:32024R1689/oj#art_22').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_22').
declared(must_perform_mandated_tasks/2, 'authorised representative must perform tasks specified in mandate', 'celex:32024R1689/oj#art_22').
declared(must_provide_mandate_copy/2, 'authorised representative must provide copy of mandate to authority upon request', 'celex:32024R1689/oj#art_22').
declared(must_verify_conformity_documentation/2, 'authorised representative must verify EU declaration and technical documentation', 'celex:32024R1689/oj#art_22').
declared(must_keep_documentation/2, 'authorised representative must keep documentation at disposal of authorities for specified period', 'celex:32024R1689/oj#art_22').
declared(must_provide_information_on_request/2, 'authorised representative must provide information to demonstrate conformity upon reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate_with_authorities/2, 'authorised representative must cooperate with competent authorities on risk mitigation', 'celex:32024R1689/oj#art_22').
declared(must_comply_with_registration/2, 'authorised representative must comply with registration obligations or ensure correctness', 'celex:32024R1689/oj#art_22').
declared(must_be_addressable_by_authorities/2, 'mandate must empower authorised representative to be addressed by authorities', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(must_inform_about_termination/2, 'authorised representative must inform authority and notified body about mandate termination', 'celex:32024R1689/oj#art_22').
established_in_third_country(P) :-
    provider(P),
    \+ established_in_union(P).
must_appoint_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    established_in_third_country(P),
    before_making_available_on_market(S).
must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    written_mandate(M),
    mandates(P, M, R).
must_perform_mandated_tasks(R, M) :-
    authorised_representative(R),
    written_mandate(M),
    mandates(_P, M, R).
must_provide_mandate_copy(R, A) :-
    authorised_representative(R),
    market_surveillance_authority(A),
    requested(A, copy_of_mandate(R)).
must_verify_conformity_documentation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    drawn_up_by_provider(S, D),
    drawn_up_by_provider(S, T),
    conformity_assessment_carried_out(S).
must_keep_documentation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    period(years(10), after(placing_on_market_or_putting_into_service(S))).
must_provide_information_on_request(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    competent_authority(A),
    reasoned_request(A, conformity_demonstration(S)).
must_cooperate_with_authorities(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    competent_authority(A),
    reasoned_request(A, risk_mitigation_action(S)).
must_comply_with_registration(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    registration_obligation_applies(S).
must_be_addressable_by_authorities(R, M) :-
    authorised_representative(R),
    written_mandate(M),
    mandates(_P, M, R).
must_terminate_mandate(R, P) :-
    authorised_representative(R),
    provider(P),
    acts_contrary_to_obligations(P).
must_inform_about_termination(R, termination(M, Reason)) :-
    authorised_representative(R),
    written_mandate(M),
    terminated(R, M, Reason),
    relevant_market_surveillance_authority(A),
    relevant_notified_body(B).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_22').
provenance(must_be_addressable_by_authorities/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_about_termination/2, 'celex:32024R1689/oj#art_22').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_22').
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
declared(must_verify_conformity_before_placing_on_market/2, 'importer must verify specific conformity elements before placing high-risk AI system on market', 'celex:32024R1689/oj#art_23').
declared(must_not_place_on_market_if_nonconformity_suspected/2, 'importer must not place system on market if non-conformity or falsification suspected', 'celex:32024R1689/oj#art_23').
declared(must_inform_of_risk/2, 'importer must inform provider, representative and authorities if system presents risk', 'celex:32024R1689/oj#art_23').
declared(must_indicate_importer_details/2, 'importer must indicate name and contact details on system or packaging', 'celex:32024R1689/oj#art_23').
declared(must_ensure_storage_transport_compliance/2, 'importer must ensure storage and transport do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(must_keep_documents/2, 'importer must keep certificate, instructions and declaration for 10 years', 'celex:32024R1689/oj#art_23').
declared(must_provide_information_to_authority/2, 'importer must provide information and documentation to demonstrate conformity upon request', 'celex:32024R1689/oj#art_23').
declared(must_cooperate_with_authority/2, 'importer must cooperate with competent authorities to reduce risks', 'celex:32024R1689/oj#art_23').
declared(sufficient_reason_to_consider_nonconformity/2, 'importer has reason to believe system is non-compliant or falsified', 'celex:32024R1689/oj#art_23').
declared(presents_risk/2, 'high-risk AI system presents a risk within meaning of Article 79(1)', 'celex:32024R1689/oj#art_23').
must_verify_conformity_before_placing_on_market(I, S) :-
    importer(I),
    placing_on_market(S),
    conformity_assessment_carried_out_by_provider(S),
    technical_documentation_drawn_up(S),
    ce_marking_and_declaration_present(S),
    authorised_representative_appointed(S).
must_not_place_on_market_if_nonconformity_suspected(I, S) :-
    importer(I),
    sufficient_reason_to_consider_nonconformity(I, S).
must_inform_of_risk(I, S) :-
    importer(I),
    presents_risk(S, _RiskType).
must_indicate_importer_details(I, S) :-
    importer(I),
    placing_on_market(S).
must_ensure_storage_transport_compliance(I, S) :-
    importer(I),
    placing_on_market(S).
must_keep_documents(I, S) :-
    importer(I),
    placing_on_market(S).
must_provide_information_to_authority(I, S) :-
    importer(I),
    placing_on_market(S).
must_cooperate_with_authority(I, S) :-
    importer(I),
    placing_on_market(S).
provenance(must_verify_conformity_before_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market_if_nonconformity_suspected/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_importer_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documents/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_to_authority/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason_to_consider_nonconformity/2, 'celex:32024R1689/oj#art_23').
provenance(presents_risk/2, 'celex:32024R1689/oj#art_23').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Chapter III Section 2', 'celex:32024R1689/oj#art_24').
declared(eu_declaration_of_conformity/1, 'declaration referred to in Article 47', 'celex:32024R1689/oj#art_24').
declared(presents_risk/1, 'presents a risk within the meaning of Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(non_conformity_with_section_2_requirements/1, 'not in conformity with requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_24').
declared(storage_or_transport_conditions_jeopardise_compliance/1, 'storage or transport conditions jeopardise compliance with Section 2 requirements', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S),
    ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    instructions_for_use(S),
    provider_complied_with_obligations(S),
    importer_complied_with_obligations(S).
must_not_make_available_if_non_conforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity_with_section_2_requirements(S).
must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    \+ made_available_on_market_by_distributor(D, S).
must_ensure_storage_transport_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility(D, S),
    \+ storage_or_transport_conditions_jeopardise_compliance(S).
must_take_corrective_action_for_non_conforming_system(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(D, S),
    non_conformity_with_section_2_requirements(S).
must_immediately_inform_authorities_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(D, S),
    presents_risk(S).
must_provide_information_to_competent_authority(D, A, S) :-
    distributor(D),
    national_competent_authority(A),
    high_risk_ai_system(S),
    reasoned_request(A, S).
must_cooperate_with_competent_authority(D, A, S) :-
    distributor(D),
    national_competent_authority(A),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(D, S).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_if_non_conforming/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action_for_non_conforming_system/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_authorities_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_to_competent_authority/3, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_competent_authority/3, 'celex:32024R1689/oj#art_24').
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
declared(considered_provider_of_high_risk_ai_system/1, 'entity treated as provider of a high-risk AI system under Article 25', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_provider/2, 'initial provider must cooperate with new provider', 'celex:32024R1689/oj#art_25').
declared(must_specify_assistance_by_written_agreement/2, 'provider and third party supplier must specify assistance by written agreement', 'celex:32024R1689/oj#art_25').
declared(exempt_open_source_third_party/1, 'third party making tools available under free and open-source licence', 'celex:32024R1689/oj#art_25').
declared(initial_provider_exemption_applies/1, 'initial provider specified system not to be changed into high-risk AI system', 'celex:32024R1689/oj#art_25').
considered_provider_of_high_risk_ai_system(P) :-
    distributor(P),
    high_risk_ai_system(S),
    places_name_or_trademark(P, S),
    already_on_market_or_in_service(S).
considered_provider_of_high_risk_ai_system(P) :-
    importer(P),
    high_risk_ai_system(S),
    places_name_or_trademark(P, S),
    already_on_market_or_in_service(S).
considered_provider_of_high_risk_ai_system(P) :-
    deployer(P),
    high_risk_ai_system(S),
    places_name_or_trademark(P, S),
    already_on_market_or_in_service(S).
considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    high_risk_ai_system(S),
    substantial_modification(S),
    remains_high_risk_after_modification(S),
    already_on_market_or_in_service(S).
considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    ai_system(S),
    modifies_intended_purpose(P, S),
    becomes_high_risk_due_to_purpose_change(S),
    already_on_market_or_in_service(S).
must_cooperate_with_new_provider(InitialProvider, NewProvider) :-
    considered_provider_of_high_risk_ai_system(NewProvider),
    initially_placed_on_market_or_in_service(InitialProvider, _S),
    \+ initial_provider_exemption_applies(InitialProvider).
must_specify_assistance_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_component_for_high_risk_system(ThirdParty, S),
    \+ exempt_open_source_third_party(ThirdParty).
exempt_open_source_third_party(T) :-
    makes_accessible_under_free_and_open_source_licence(T),
    \+ supplies_general_purpose_ai_model(T).
initial_provider_exemption_applies(P) :-
    clearly_specified_not_to_be_changed_into_high_risk(P).
provenance(considered_provider_of_high_risk_ai_system/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_assistance_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_open_source_third_party/1, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_exemption_applies/1, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_26').
declared(controls_input_data/1, 'deployer exercises control over input data', 'celex:32024R1689/oj#art_26').
declared(employer/1, 'deployer who is an employer', 'celex:32024R1689/oj#art_26').
declared(public_authority_deployer/1, 'deployer that is a public authority or EU institution/body', 'celex:32024R1689/oj#art_26').
declared(financial_institution_deployer/1, 'deployer that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_26').
declared(annex_iii_system/1, 'high-risk AI system referred to in Annex III', 'celex:32024R1689/oj#art_26').
declared(makes_decisions_about_natural_persons/1, 'system makes or assists in decisions related to natural persons', 'celex:32024R1689/oj#art_26').
declared(registered_in_eu_database/1, 'system is registered in the EU database referred to in Article 71', 'celex:32024R1689/oj#art_26').
declared(reason_to_consider_risk/1, 'deployer has reason to consider use may result in risk under Article 79(1)', 'celex:32024R1689/oj#art_26').
declared(serious_incident_identified/1, 'deployer has identified a serious incident', 'celex:32024R1689/oj#art_26').
declared(targeted_search_of_suspect/1, 'use is for targeted search of person suspected or convicted of criminal offence', 'celex:32024R1689/oj#art_26').
declared(initial_identification_exemption_applies/1, 'use is for initial identification based on objective verifiable facts directly linked to offence', 'celex:32024R1689/oj#art_26').
declared(authorisation_rejected/1, 'requested authorisation for post-RBI use was rejected', 'celex:32024R1689/oj#art_26').
declared(linked_to_criminal_offence_or_threat/1, 'use is linked to criminal offence, proceeding, genuine threat, or missing person search', 'celex:32024R1689/oj#art_26').
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
    controls_input_data(D),
    intended_purpose(S).
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S),
    \+ financial_institution_deployer(D).
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution_deployer(D).
must_inform_of_risk(D, recipient(provider_or_distributor_and_msa)) :-
    deployer(D),
    high_risk_ai_system(_S),
    reason_to_consider_risk(D).
must_inform_of_serious_incident(D, recipient(provider_then_importer_or_distributor_and_msa)) :-
    deployer(D),
    high_risk_ai_system(_S),
    serious_incident_identified(D).
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ financial_institution_deployer(D).
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution_deployer(D).
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    putting_into_service(S).
must_register_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D).
must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D),
    \+ registered_in_eu_database(S).
must_use_info_for_dpi_a(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_request_authorisation_for_post_rbi(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    targeted_search_of_suspect(D),
    \+ initial_identification_exemption_applies(D).
must_stop_use_on_authorisation_rejection(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D).
prohibited_untargeted_post_rbi_use(S) :-
    post_remote_biometric_identification_system(S),
    \+ linked_to_criminal_offence_or_threat(S).
must_document_post_rbi_use(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
must_submit_annual_report_on_post_rbi(D, market_surveillance_authority) :-
    deployer(D),
    post_remote_biometric_identification_system(_S).
must_submit_annual_report_on_post_rbi(D, national_data_protection_authority) :-
    deployer(D),
    post_remote_biometric_identification_system(_S).
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    annex_iii_system(S),
    makes_decisions_about_natural_persons(S),
    \+ law_enforcement_purpose(S).
must_cooperate_with_competent_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_input_data_relevance/2, 'celex:32024R1689/oj#art_26').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_of_serious_incident/2, 'celex:32024R1689/oj#art_26').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
provenance(must_register_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26').
provenance(must_use_info_for_dpi_a/2, 'celex:32024R1689/oj#art_26').
provenance(must_request_authorisation_for_post_rbi/2, 'celex:32024R1689/oj#art_26').
provenance(must_stop_use_on_authorisation_rejection/2, 'celex:32024R1689/oj#art_26').
provenance(prohibited_untargeted_post_rbi_use/1, 'celex:32024R1689/oj#art_26').
provenance(must_document_post_rbi_use/2, 'celex:32024R1689/oj#art_26').
provenance(must_submit_annual_report_on_post_rbi/2, 'celex:32024R1689/oj#art_26').
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
declared(high_risk_ai_system_referred_to_in_art_6_par_2/1, 'high-risk AI system referred to in Article 6(2)', 'celex:32024R1689/oj#art_27').
declared(intended_for_annex_3_point_2/1, 'AI system intended for use in area listed in Annex III point 2', 'celex:32024R1689/oj#art_27').
declared(body_governed_by_public_law/1, 'deployer that is a body governed by public law', 'celex:32024R1689/oj#art_27').
declared(private_entity_providing_public_services/1, 'private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c/1, 'high-risk AI system referred to in Annex III point 5(b) or 5(c)', 'celex:32024R1689/oj#art_27').
declared(fundamental_rights_impact_assessment_performed/1, 'fundamental rights impact assessment has been performed for the system', 'celex:32024R1689/oj#art_27').
declared(exempt_from_notification_obligation/1, 'deployer exempt from obligation to notify market surveillance authority', 'celex:32024R1689/oj#art_27').
declared(data_protection_impact_assessment_conducted/1, 'data protection impact assessment conducted pursuant to GDPR or LED', 'celex:32024R1689/oj#art_27').
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform FRIA for high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority/2, 'deployer must notify MSA of FRIA results', 'celex:32024R1689/oj#art_27').
declared(must_update_fundamental_rights_impact_assessment/2, 'deployer must update FRIA when elements change', 'celex:32024R1689/oj#art_27').
declared(must_complement_data_protection_impact_assessment/2, 'FRIA must complement existing DPIA', 'celex:32024R1689/oj#art_27').
in_scope_of_art_27(S) :-
    high_risk_ai_system_referred_to_in_art_6_par_2(S),
    \+ intended_for_annex_3_point_2(S).
deployer_subject_to_art_27(D) :-
    deployer(D),
    body_governed_by_public_law(D).
deployer_subject_to_art_27(D) :-
    deployer(D),
    private_entity_providing_public_services(D).
system_subject_to_art_27_regardless_of_deployer(S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c(S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    in_scope_of_art_27(S),
    deployer_subject_to_art_27(D).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    system_subject_to_art_27_regardless_of_deployer(S).
must_notify_market_surveillance_authority(D, results(fundamental_rights_impact_assessment(S))) :-
    deployer(D),
    fundamental_rights_impact_assessment_performed(S),
    \+ exempt_from_notification_obligation(D).
must_update_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    fundamental_rights_impact_assessment_performed(S),
    element_changed_or_outdated(S).
must_complement_data_protection_impact_assessment(D, S) :-
    deployer(D),
    data_protection_impact_assessment_conducted(S),
    must_perform_fundamental_rights_impact_assessment(D, S).
element_changed_or_outdated(_S) :- fail.
provenance(high_risk_ai_system_referred_to_in_art_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(intended_for_annex_3_point_2/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_referred_to_in_annex_3_point_5_b_or_c/1, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_performed/1, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification_obligation/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_complement_data_protection_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(in_scope_of_art_27/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_subject_to_art_27/1, 'celex:32024R1689/oj#art_27').
provenance(system_subject_to_art_27_regardless_of_deployer/1, 'celex:32024R1689/oj#art_27').
provenance(element_changed_or_outdated/1, 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(must_designate_notifying_authority/2, 'Member State obligation to designate or establish notifying authority', 'celex:32024R1689/oj#art_28').
declared(responsible_for_assessment_and_notification/1, 'notifying authority responsible for assessment, designation and notification procedures', 'celex:32024R1689/oj#art_28').
declared(responsible_for_monitoring_conformity_assessment_bodies/1, 'notifying authority responsible for monitoring conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(procedures_developed_in_cooperation/1, 'procedures developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(assessment_carried_out_by_national_accreditation_body/1, 'assessment and monitoring carried out by national accreditation body', 'celex:32024R1689/oj#art_28').
declared(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'no conflict of interest arises with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(objectivity_and_impartiality_safeguarded/1, 'objectivity and impartiality of activities safeguarded', 'celex:32024R1689/oj#art_28').
declared(notification_decisions_by_competent_persons_different_from_assessors/1, 'decisions relating to notification taken by competent persons different from assessors', 'celex:32024R1689/oj#art_28').
declared(prohibited_commercial_activities_for_notifying_authority/1, 'activities that conformity assessment bodies perform or consultancy services on commercial basis', 'celex:32024R1689/oj#art_28').
declared(must_safeguard_confidentiality/2, 'obligation to safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(has_adequate_competent_personnel/1, 'notifying authority has adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
declared(personnel_have_necessary_expertise/1, 'competent personnel have necessary expertise for their function', 'celex:32024R1689/oj#art_28').
must_designate_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    responsible_for_assessment_and_notification(Authority),
    responsible_for_monitoring_conformity_assessment_bodies(Authority).
responsible_for_assessment_and_notification(Authority) :-
    notifying_authority(Authority).
responsible_for_monitoring_conformity_assessment_bodies(Authority) :-
    notifying_authority(Authority).
procedures_developed_in_cooperation(Procedures) :-
    responsible_for_assessment_and_notification(_Authority),
    procedures_developed_in_cooperation_between_member_states(Procedures).
assessment_carried_out_by_national_accreditation_body(Assessment) :-
    member_state_decides_national_accreditation_body(Assessment).
no_conflict_of_interest_with_conformity_assessment_bodies(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_exists(Authority).
objectivity_and_impartiality_safeguarded(Authority) :-
    notifying_authority(Authority),
    organised_to_safeguard_objectivity_and_impartiality(Authority).
notification_decisions_by_competent_persons_different_from_assessors(Authority) :-
    notifying_authority(Authority),
    decisions_taken_by_different_persons(Authority).
prohibited_commercial_activities_for_notifying_authority(Activity) :-
    notifying_authority(_Authority),
    commercial_or_competitive_basis(Activity).
must_safeguard_confidentiality(Authority, Information) :-
    notifying_authority(Authority),
    information_obtained_by_authority(Authority, Information).
has_adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    adequate_number_of_personnel(Authority).
personnel_have_necessary_expertise(Personnel) :-
    has_adequate_competent_personnel(_Authority),
    necessary_expertise_for_function(Personnel).
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(responsible_for_assessment_and_notification/1, 'celex:32024R1689/oj#art_28').
provenance(responsible_for_monitoring_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_carried_out_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_competent_persons_different_from_assessors/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_activities_for_notifying_authority/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(has_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_have_necessary_expertise/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application_for_notification/2, 'conformity assessment body submits application to notifying authority', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by_description/1, 'application includes description of activities, modules and AI system types', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by_accreditation_certificate/1, 'application includes accreditation certificate attesting compliance with Article 31', 'celex:32024R1689/oj#art_29').
declared(has_accreditation_certificate/1, 'conformity assessment body possesses an accreditation certificate', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'body provides evidence for verification when no accreditation certificate exists', 'celex:32024R1689/oj#art_29').
declared(designated_under_other_union_legislation/1, 'notified body designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(may_use_existing_documents/1, 'documents from other designations may support designation procedure', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/2, 'notified body updates documentation when relevant changes occur', 'celex:32024R1689/oj#art_29').
must_submit_application_for_notification(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).
application_accompanied_by_description(Application) :-
    describes_conformity_assessment_activities(Application),
    describes_conformity_assessment_modules(Application),
    describes_ai_system_types(Application).
application_accompanied_by_accreditation_certificate(Application) :-
    has_accreditation_certificate(Application),
    issued_by_national_accreditation_body(Application),
    attests_compliance_with_article_31(Application).
must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ has_accreditation_certificate(Body),
    evidence_necessary_for_verification(Body, Authority).
may_use_existing_documents(Body) :-
    notified_body(Body),
    designated_under_other_union_legislation(Body).
must_update_documentation(Body, Documentation) :-
    notified_body(Body),
    designated_under_other_union_legislation(Body),
    relevant_changes_occurred(Documentation),
    enables_continuous_compliance_monitoring(Documentation).
provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_description/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(has_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_union_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_30 ====
declared(must_notify_authority/2, 'notifying authority is obliged to notify object', 'celex:32024R1689/oj#art_30').
declared(notification_includes/2, 'notification contains required details', 'celex:32024R1689/oj#art_30').
declared(based_on_accreditation_certificate/1, 'notification relies on accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(objection_raised/1, 'objection raised against notification', 'celex:32024R1689/oj#art_30').
declared(permitted_to_perform_notified_body_activities/1, 'conformity assessment body may act as notified body', 'celex:32024R1689/oj#art_30').
declared(must_provide_documentary_evidence/2, 'authority must provide evidence when no accreditation', 'celex:32024R1689/oj#art_30').
declared(must_enter_consultations/2, 'commission must consult regarding objections', 'celex:32024R1689/oj#art_30').
declared(must_decide_authorisation_justified/2, 'commission must decide on authorisation', 'celex:32024R1689/oj#art_30').
must_notify_authority(A, conformity_assessment_body(B)) :-
    notifying_authority(A),
    conformity_assessment_body(B),
    satisfies_article_31_requirements(B).
satisfies_article_31_requirements(B) :-
    conformity_assessment_body(B).
must_notify_authority(A, notification(commission_and_member_states, B)) :-
    notifying_authority(A),
    conformity_assessment_body(B),
    satisfies_article_31_requirements(B).
notification_includes(N, full_details(conformity_assessment_activities)) :-
    notification(N).
notification_includes(N, conformity_assessment_modules) :-
    notification(N).
notification_includes(N, types_of_ai_systems_concerned) :-
    notification(N).
notification_includes(N, attestation_of_competence) :-
    notification(N).
must_provide_documentary_evidence(A, competence_and_monitoring_arrangements(B)) :-
    notifying_authority(A),
    conformity_assessment_body(B),
    notification(N),
    \+ based_on_accreditation_certificate(N).
permitted_to_perform_notified_body_activities(B) :-
    conformity_assessment_body(B),
    notification(N),
    \+ objection_raised(N),
    notification_period_expired(N).
notification_period_expired(N) :-
    based_on_accreditation_certificate(N),
    weeks_elapsed_since_notification(N, 2).
notification_period_expired(N) :-
    \+ based_on_accreditation_certificate(N),
    months_elapsed_since_notification(N, 2).
weeks_elapsed_since_notification(_, _).
months_elapsed_since_notification(_, _).
notification(_).
must_enter_consultations(commission, member_state_and_body(MS, B)) :-
    objection_raised(N),
    notification(N),
    member_state(MS),
    conformity_assessment_body(B).
must_decide_authorisation_justified(commission, authorisation(B)) :-
    objection_raised(N),
    notification(N),
    conformity_assessment_body(B).
provenance(must_notify_authority/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_30').
provenance(permitted_to_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(must_enter_consultations/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation_justified/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(established_under_national_law/1, 'notified body established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(has_legal_personality/1, 'notified body possesses legal personality', 'celex:32024R1689/oj#art_31').
declared(satisfies_organisational_requirements/1, 'notified body satisfies organisational requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_quality_management_requirements/1, 'notified body satisfies quality management requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_resource_requirements/1, 'notified body satisfies resource requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_process_requirements/1, 'notified body satisfies process requirements', 'celex:32024R1689/oj#art_31').
declared(satisfies_cybersecurity_requirements/1, 'notified body satisfies suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(ensures_confidence_in_performance/1, 'organisational structure ensures confidence in performance and conformity assessment results', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider/2, 'notified body is independent of the provider of the assessed system', 'celex:32024R1689/oj#art_31').
declared(independent_of_operator_with_economic_interest/2, 'notified body is independent of operators with economic interest in assessed systems', 'celex:32024R1689/oj#art_31').
declared(independent_of_competitor/2, 'notified body is independent of competitors of the provider', 'celex:32024R1689/oj#art_31').
declared(permitted_use_for_operations/2, 'use of assessed high-risk AI system necessary for conformity assessment body operations', 'celex:32024R1689/oj#art_31').
declared(permitted_use_for_personal_purposes/2, 'use of assessed high-risk AI system for personal purposes', 'celex:32024R1689/oj#art_31').
declared(not_involved_in_design/1, 'body or personnel not directly involved in design of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_involved_in_development/1, 'body or personnel not directly involved in development of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_involved_in_marketing/1, 'body or personnel not directly involved in marketing of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_involved_in_use/1, 'body or personnel not directly involved in use of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(does_not_represent_parties/1, 'body or personnel do not represent parties engaged in design, development, marketing or use', 'celex:32024R1689/oj#art_31').
declared(no_conflicting_activity/1, 'body or personnel do not engage in activities conflicting with independence or integrity', 'celex:32024R1689/oj#art_31').
declared(safeguards_impartiality/1, 'notified body safeguards independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(documents_impartiality_procedures/1, 'notified body documents and implements structure and procedures for impartiality', 'celex:32024R1689/oj#art_31').
declared(maintains_confidentiality/1, 'notified body has procedures ensuring confidentiality of information', 'celex:32024R1689/oj#art_31').
declared(bound_by_professional_secrecy/1, 'staff of notified body observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(accounts_for_provider_size/1, 'procedures take due account of size of provider', 'celex:32024R1689/oj#art_31').
declared(accounts_for_sector/1, 'procedures take due account of sector in which provider operates', 'celex:32024R1689/oj#art_31').
declared(accounts_for_provider_structure/1, 'procedures take due account of structure of provider', 'celex:32024R1689/oj#art_31').
declared(accounts_for_system_complexity/1, 'procedures take due account of degree of complexity of AI system', 'celex:32024R1689/oj#art_31').
declared(has_liability_insurance/1, 'notified body has appropriate liability insurance for conformity assessment', 'celex:32024R1689/oj#art_31').
declared(liability_assumed_by_member_state/1, 'liability for conformity assessment assumed by Member State', 'celex:32024R1689/oj#art_31').
declared(member_state_directly_responsible/1, 'Member State directly responsible for conformity assessment', 'celex:32024R1689/oj#art_31').
declared(capable_with_professional_integrity/1, 'notified body capable of carrying out tasks with highest degree of professional integrity', 'celex:32024R1689/oj#art_31').
declared(has_requisite_competence/1, 'notified body has requisite competence in specific field', 'celex:32024R1689/oj#art_31').
declared(has_internal_competences_for_evaluation/1, 'notified body has sufficient internal competences to evaluate external tasks', 'celex:32024R1689/oj#art_31').
declared(has_sufficient_personnel/1, 'notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination_activities/1, 'notified body participates in coordination activities referred to in Article 38', 'celex:32024R1689/oj#art_31').
declared(participates_in_standardisation/1, 'notified body takes part in or is represented in European standardisation organisations or is aware of relevant standards', 'celex:32024R1689/oj#art_31').
must_be_established_under_national_law(B) :-
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
    ensures_confidence_in_performance(B).
must_be_independent_of_provider(B, S) :-
    notified_body(B),
    ai_system(S),
    independent_of_provider(B, S).
must_be_independent_of_operator_with_economic_interest(B, S) :-
    notified_body(B),
    ai_system(S),
    independent_of_operator_with_economic_interest(B, S).
must_be_independent_of_competitor(B, P) :-
    notified_body(B),
    provider(P),
    independent_of_competitor(B, P).
permitted_use_of_assessed_system(B, S) :-
    notified_body(B),
    ai_system(S),
    permitted_use_for_operations(B, S).
permitted_use_of_assessed_system(B, S) :-
    notified_body(B),
    ai_system(S),
    permitted_use_for_personal_purposes(B, S).
must_not_be_involved_in_design(B) :-
    notified_body(B),
    not_involved_in_design(B).
must_not_be_involved_in_development(B) :-
    notified_body(B),
    not_involved_in_development(B).
must_not_be_involved_in_marketing(B) :-
    notified_body(B),
    not_involved_in_marketing(B).
must_not_be_involved_in_use(B) :-
    notified_body(B),
    not_involved_in_use(B).
must_not_represent_parties(B) :-
    notified_body(B),
    does_not_represent_parties(B).
must_not_engage_in_conflicting_activity(B) :-
    notified_body(B),
    no_conflicting_activity(B).
must_safeguard_impartiality(B) :-
    notified_body(B),
    safeguards_impartiality(B).
must_document_impartiality_procedures(B) :-
    notified_body(B),
    documents_impartiality_procedures(B).
must_maintain_confidentiality(B) :-
    notified_body(B),
    maintains_confidentiality(B).
must_observe_professional_secrecy(B) :-
    notified_body(B),
    bound_by_professional_secrecy(B).
must_account_for_provider_size(B) :-
    notified_body(B),
    accounts_for_provider_size(B).
must_account_for_sector(B) :-
    notified_body(B),
    accounts_for_sector(B).
must_account_for_provider_structure(B) :-
    notified_body(B),
    accounts_for_provider_structure(B).
must_account_for_system_complexity(B) :-
    notified_body(B),
    accounts_for_system_complexity(B).
must_have_liability_coverage(B) :-
    notified_body(B),
    has_liability_insurance(B).
must_have_liability_coverage(B) :-
    notified_body(B),
    liability_assumed_by_member_state(B).
must_have_liability_coverage(B) :-
    notified_body(B),
    member_state_directly_responsible(B).
must_act_with_professional_integrity(B) :-
    notified_body(B),
    capable_with_professional_integrity(B).
must_have_requisite_competence(B) :-
    notified_body(B),
    has_requisite_competence(B).
must_have_internal_competences_for_evaluation(B) :-
    notified_body(B),
    has_internal_competences_for_evaluation(B).
must_have_sufficient_personnel(B) :-
    notified_body(B),
    has_sufficient_personnel(B).
must_participate_in_coordination_activities(B) :-
    notified_body(B),
    participates_in_coordination_activities(B).
must_participate_in_standardisation(B) :-
    notified_body(B),
    participates_in_standardisation(B).
provenance(must_be_established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_resource_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_operator_with_economic_interest/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_system/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_design/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_development/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_marketing/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_involved_in_use/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_provider_size/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_sector/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_provider_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_account_for_system_complexity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_liability_coverage/1, 'celex:32024R1689/oj#art_31').
provenance(must_act_with_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_requisite_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_internal_competences_for_evaluation/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_compliant_with_art_31_requirements/1, 'conformity assessment body presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
declared(demonstrates_conformity_with_harmonised_standard/1, 'body demonstrates conformity with published harmonised standard criteria', 'celex:32024R1689/oj#art_32').
declared(harmonised_standard_covers_requirement/2, 'harmonised standard covers a specific requirement', 'celex:32024R1689/oj#art_32').
presumed_compliant_with_art_31_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standard(B).
demonstrates_conformity_with_harmonised_standard(B) :-
    conformity_assessment_body(B),
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    demonstrates_conformity_with_criteria(B, H).
reference_published_in_official_journal(_H).
demonstrates_conformity_with_criteria(_B, _H).
provenance(presumed_compliant_with_art_31_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standard/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standard_covers_requirement/2, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontracts_tasks/2, 'notified body subtasks conformity assessment to another entity', 'celex:32024R1689/oj#art_33').
declared(has_recourse_to_subsidiary/2, 'notified body uses a subsidiary for conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(meets_requirements_of_art_31/1, 'entity satisfies requirements laid down in Article 31', 'celex:32024R1689/oj#art_33').
declared(must_inform_notifying_authority/2, 'notified body must inform notifying authority about subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(must_take_responsibility_for_tasks/2, 'notified body takes full responsibility for tasks performed by subcontractor or subsidiary', 'celex:32024R1689/oj#art_33').
declared(provider_agreement_obtained/2, 'provider has agreed to subcontracting or use of subsidiary', 'celex:32024R1689/oj#art_33').
declared(must_make_subsidiaries_list_public/1, 'notified body makes list of subsidiaries publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_assessment_documents/2, 'notified body keeps assessment documents at disposal of notifying authority', 'celex:32024R1689/oj#art_33').
subcontracts_tasks(B, S) :-
    notified_body(B),
    ai_system(S).
has_recourse_to_subsidiary(B, S) :-
    notified_body(B),
    ai_system(S).
must_inform_notifying_authority(B, subcontractor_or_subsidiary(S)) :-
    notified_body(B),
    subcontracts_tasks(B, S),
    meets_requirements_of_art_31(S).
must_inform_notifying_authority(B, subcontractor_or_subsidiary(Sub)) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub),
    meets_requirements_of_art_31(Sub).
must_take_responsibility_for_tasks(B, tasks(Sub)) :-
    notified_body(B),
    subcontracts_tasks(B, Sub).
must_take_responsibility_for_tasks(B, tasks(Sub)) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub).
permitted_subcontracting(B, S) :-
    notified_body(B),
    ai_system(S),
    provider_agreement_obtained(S, B).
permitted_use_of_subsidiary(B, Sub) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub),
    provider_agreement_obtained(Sub, B).
must_make_subsidiaries_list_public(B) :-
    notified_body(B).
must_keep_assessment_documents(B, period(years(5), after(termination(Sub)))) :-
    notified_body(B),
    subcontracts_tasks(B, Sub).
must_keep_assessment_documents(B, period(years(5), after(termination(Sub)))) :-
    notified_body(B),
    has_recourse_to_subsidiary(B, Sub).
provenance(subcontracts_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(has_recourse_to_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(meets_requirements_of_art_31/1, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_responsibility_for_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agreement_obtained/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiaries_list_public/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_assessment_documents/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body verifies conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burden/2, 'notified body avoids unnecessary burden for provider', 'celex:32024R1689/oj#art_34').
declared(must_submit_documentation/2, 'notified body submits documentation to notifying authority', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, System) :-
    notified_body(Body),
    conformity_assessment(System).
must_avoid_unnecessary_burden(Body, Provider) :-
    notified_body(Body),
    provider(Provider).
must_submit_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burden/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
must_assign_identification_number(commission, Body) :-
    notified_body(Body).
must_make_publicly_available(commission, list_of_notified_bodies) :-
    true.
must_keep_up_to_date(commission, list_of_notified_bodies) :-
    true.
provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
must_notify_changes_to_notification(A, C) :-
    notifying_authority(A),
    relevant_change_to_notification(C).
extension_of_scope_applies(C) :-
    relevant_change_to_notification(C),
    extends_scope(C).
must_inform_cessation(B, R) :-
    notified_body(B),
    decides_to_cease_conformity_assessment_activities(B),
    (   notifying_authority(R)
    ;   provider(R)
    ).
planned_cessation(C) :-
    decides_to_cease_conformity_assessment_activities(_B),
    planned(C).
certificate_remains_valid_after_cessation(Cert) :-
    issued_by_notified_body(Cert, B),
    ceased_activities(B),
    another_notified_body_confirmed_assumption(Cert),
    within_months_after_cessation(Cert, 9).
must_complete_assessment_before_new_certificate(B, S) :-
    notified_body(B),
    assumes_responsibility_for_system(S),
    high_risk_ai_system(S),
    before_issuing_new_certificate(B, S).
must_withdraw_designation_on_cessation(A, B) :-
    notifying_authority(A),
    notified_body(B),
    ceased_activities(B).
must_investigate_non_compliance(A, B) :-
    notifying_authority(A),
    notified_body(B),
    sufficient_reason_to_consider_non_compliance(A, B).
must_restrict_suspend_or_withdraw_designation(A, B) :-
    notifying_authority(A),
    notified_body(B),
    concludes_non_compliance(A, B).
must_inform_providers_of_designation_change(B, P) :-
    notified_body(B),
    designation_changed(B),
    provider(P),
    concerned_provider(P, B).
must_keep_files_on_designation_change(A, B) :-
    notifying_authority(A),
    notified_body(B),
    designation_restricted_suspended_or_withdrawn(B).
must_assess_impact_on_certificates(A, B) :-
    notifying_authority(A),
    notified_body(B),
    designation_restricted_suspended_or_withdrawn(B).
must_submit_report_on_findings(A, F) :-
    notifying_authority(A),
    findings_on_designation_change(F),
    within_months_of_notification(F, 3).
must_require_suspension_or_withdrawal_of_undue_certificates(A, B) :-
    notifying_authority(A),
    notified_body(B),
    unduly_issued_certificate_exists(B).
must_inform_about_required_certificate_actions(A, C) :-
    notifying_authority(A),
    required_suspension_or_withdrawal(C).
must_provide_information_to_national_authority(A, I) :-
    notifying_authority(A),
    relevant_certificate_information(I),
    required_suspension_or_withdrawal(_C).
certificate_remains_valid_during_suspension_or_restriction(Cert) :-
    issued_by_notified_body(Cert, _B),
    designation_suspended_or_restricted(_B),
    \+ unduly_issued(Cert),
    (   no_risk_confirmed_within_one_month(Cert)
    ;   no_new_certificates_and_capability_confirmed(Cert)
    ;   no_new_certificates_and_provider_confirmation_obtained(Cert)
    ).
certificate_remains_valid_after_withdrawal(Cert) :-
    issued_by_notified_body(Cert, _B),
    designation_withdrawn(_B),
    \+ unduly_issued(Cert),
    no_risk_confirmed_by_national_authority(Cert),
    another_notified_body_assumes_immediate_responsibility(Cert),
    assessment_completed_within_months(Cert, 12).
may_extend_provisional_validity(NCA, Cert) :-
    national_competent_authority(NCA),
    certificate_remains_valid_after_withdrawal(Cert),
    total_extension_does_not_exceed_months(Cert, 12).
must_inform_about_assumption_of_functions(E, Chg) :-
    assumes_functions_of_notified_body(E, _B),
    designation_change(Chg).
provenance(must_notify_changes_to_notification/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_applies/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(planned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment_before_new_certificate/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation_on_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_non_compliance/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_of_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files_on_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_on_findings/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal_of_undue_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_required_certificate_actions/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information_to_national_authority/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_during_suspension_or_restriction/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_assumption_of_functions/2, 'celex:32024R1689/oj#art_36').
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
declared(reason_to_doubt_competence/1, 'reasons exist to doubt the competence of a notified body', 'celex:32024R1689/oj#art_37').
declared(failure_to_meet_requirements/1, 'notified body does not meet or no longer meets requirements for notification', 'celex:32024R1689/oj#art_37').
must_investigate_competence(commission, notified_body(B)) :-
    notified_body(B),
    reason_to_doubt_competence(B).
must_provide_information(Authority, information(notification_or_competence(B))) :-
    notifying_authority(Authority),
    notified_body(B),
    requested_by(commission, Authority, information(notification_or_competence(B))).
must_treat_confidentially(commission, sensitive_information(investigation(art_37))) :-
    obtained_during_investigation(commission, art_37).
must_request_corrective_measures(commission, member_state(MS)) :-
    notified_body(B),
    failure_to_meet_requirements(B),
    notifying_member_state(MS, B).
may_suspend_designation(commission, designation(B)) :-
    notified_body(B),
    failure_to_meet_requirements(B),
    \+ corrective_measures_taken(member_state(_MS), B).
provenance(must_investigate_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_designation/2, 'celex:32024R1689/oj#art_37').
provenance(reason_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(failure_to_meet_requirements/1, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination_of_notified_bodies/2, 'Commission ensures coordination between notified bodies for high-risk AI systems', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation_in_sectoral_group/2, 'Notifying authority ensures its notified bodies participate in the sectoral group', 'celex:32024R1689/oj#art_38').
declared(must_provide_exchange_of_knowledge/2, 'Commission provides for exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
declared(sectoral_group_of_notified_bodies/1, 'group for coordination and cooperation between notified bodies', 'celex:32024R1689/oj#art_38').
must_ensure_coordination_of_notified_bodies(commission, sectoral_group_of_notified_bodies).
must_ensure_participation_in_sectoral_group(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    notified_by(Body, Authority).
must_provide_exchange_of_knowledge(commission, notifying_authorities).
sectoral_group_of_notified_bodies(sectoral_group).
notified_by(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).
provenance(must_ensure_coordination_of_notified_bodies/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation_in_sectoral_group/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange_of_knowledge/2, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country', 'celex:32024R1689/oj#art_39').
declared(union_agreement_exists/1, 'union has concluded an agreement with the third country where the body is established', 'celex:32024R1689/oj#art_39').
declared(meets_article_31_requirements/1, 'body meets the requirements laid down in Article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_compliance/1, 'body ensures an equivalent level of compliance to Article 31 requirements', 'celex:32024R1689/oj#art_39').
declared(authorised_as_notified_body/1, 'authorised to carry out activities of notified bodies under this regulation', 'celex:32024R1689/oj#art_39').
authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_exists(B),
    meets_article_31_requirements(B).
authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_exists(B),
    ensures_equivalent_compliance(B).
provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_exists/1, 'celex:32024R1689/oj#art_39').
provenance(meets_article_31_requirements/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
presumed_conformity_with_requirements(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S),
    in_conformity_with_harmonised_standards(S).
presumed_conformity_with_requirements(M, obligations(chapter_5_section_2)) :-
    general_purpose_ai_model(M),
    in_conformity_with_harmonised_standards(M).
presumed_conformity_with_requirements(M, obligations(chapter_5_section_3)) :-
    general_purpose_ai_model(M),
    in_conformity_with_harmonised_standards(M).
must_issue_standardisation_request(commission, standardisation_request(requirements(chapter_3_section_2))).
must_issue_standardisation_request(commission, standardisation_request(obligations(chapter_5_section_2))).
must_issue_standardisation_request(commission, standardisation_request(obligations(chapter_5_section_3))).
must_consult_on_standardisation_request(commission, board).
must_consult_on_standardisation_request(commission, advisory_forum).
must_consult_on_standardisation_request(commission, relevant_stakeholders).
must_specify_clarity_and_consistency(commission, standardisation_request(_)).
must_request_evidence_of_best_efforts(commission, european_standardisation_organisations).
provenance(presumed_conformity_with_requirements/2, 'celex:32024R1689/oj#art_40').
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
declared(common_specification/1, 'technical specification established by implementing act', 'celex:32024R1689/oj#art_41').
common_specification(S) :-
    established_by_implementing_act(S).
must_consult_advisory_forum(commission, drafting(common_specification(_S))) :-
    true.
must_inform_committee(commission, conditions_fulfilled(art_41_par_1)) :-
    before_preparing_draft_implementing_act.
presumed_conformity_with_requirements(X) :-
    high_risk_ai_system(X),
    in_conformity_with_common_specification(X).
presumed_conformity_with_requirements(X) :-
    general_purpose_ai_model(X),
    in_conformity_with_common_specification(X).
must_repeal_implementing_act(commission, implementing_act(A)) :-
    reference_to_harmonised_standard_published_in_official_journal(A),
    covers_same_requirements_or_obligations(A).
must_justify_technical_solution(P, requirements_or_obligations(R)) :-
    provider(P),
    high_risk_ai_system(S),
    \+ complies_with_common_specification(P, S),
    adopted_technical_solution(P, R).
must_justify_technical_solution(P, requirements_or_obligations(R)) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ complies_with_common_specification(P, M),
    adopted_technical_solution(P, R).
must_inform_commission_about_specification(member_state, detailed_explanation(E)) :-
    considers_specification_insufficient(member_state, E).
provenance(common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_requirements/1, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_technical_solution/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission_about_specification/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').

% ==== celex:32024R1689/oj#art_42 ====
declared(presumed_compliant_with_data_requirements/1, 'high-risk AI system presumed to comply with Article 10(4) requirements', 'celex:32024R1689/oj#art_42').
declared(presumed_compliant_with_cybersecurity_requirements/1, 'high-risk AI system presumed to comply with Article 15 cybersecurity requirements', 'celex:32024R1689/oj#art_42').
declared(trained_and_tested_on_setting_specific_data/1, 'trained and tested on data reflecting specific geographical, behavioural, contextual or functional setting', 'celex:32024R1689/oj#art_42').
declared(certified_under_published_cybersecurity_scheme/1, 'certified or statement of conformity issued under cybersecurity scheme published in OJEU', 'celex:32024R1689/oj#art_42').
declared(certificate_covers_cybersecurity_requirements/1, 'cybersecurity certificate or statement covers Article 15 requirements', 'celex:32024R1689/oj#art_42').
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
declared(high_risk_ai_system_annex_3_point_1/1, 'high-risk AI system listed in Annex III point 1', 'celex:32024R1689/oj#art_43').
declared(high_risk_ai_system_annex_3_points_2_to_8/1, 'high-risk AI system referred to in Annex III points 2 to 8', 'celex:32024R1689/oj#art_43').
declared(covered_by_union_harmonisation_legislation/1, 'high-risk AI system covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standard/2, 'provider has applied a harmonised standard for the system', 'celex:32024R1689/oj#art_43').
declared(applied_common_specification/2, 'provider has applied a common specification for the system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_exists_for_requirements/1, 'harmonised standards exist for demonstrating compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_43').
declared(common_specification_available_for_requirements/1, 'common specifications are available for demonstrating compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement_or_asylum/1, 'system intended to be put into service by law enforcement, immigration or asylum authorities or Union institutions', 'celex:32024R1689/oj#art_43').
declared(continues_to_learn_after_market_placement/1, 'AI system that continues to learn after being placed on the market or put into service', 'celex:32024R1689/oj#art_43').
declared(change_predetermined_in_technical_documentation/2, 'change to system performance was predetermined by provider at initial conformity assessment and documented in technical documentation', 'celex:32024R1689/oj#art_43').
declared(must_follow_conformity_assessment_procedure/2, 'provider must follow a specific conformity assessment procedure for a system', 'celex:32024R1689/oj#art_43').
declared(must_undergo_new_conformity_assessment/2, 'system must undergo new conformity assessment due to substantial modification', 'celex:32024R1689/oj#art_43').
must_follow_conformity_assessment_procedure(P, internal_control(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    (applied_harmonised_standard(P, S) ; applied_common_specification(P, S)).
must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    (applied_harmonised_standard(P, S) ; applied_common_specification(P, S)).
must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    \+ harmonised_standard_exists_for_requirements(S),
    \+ common_specification_available_for_requirements(S).
must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    \+ applied_harmonised_standard(P, S),
    \+ applied_common_specification(P, S).
must_follow_conformity_assessment_procedure(P, quality_management_and_technical_documentation_with_notified_body(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    common_specification_available_for_requirements(S),
    \+ applied_common_specification(P, S).
must_follow_conformity_assessment_procedure(P, internal_control(S)) :-
    provider(P),
    high_risk_ai_system_annex_3_points_2_to_8(S).
must_follow_conformity_assessment_procedure(P, relevant_union_harmonisation_procedure(S)) :-
    provider(P),
    covered_by_union_harmonisation_legislation(S).
must_undergo_new_conformity_assessment(S, substantial_modification) :-
    high_risk_ai_system_annex_3_point_1(S),
    substantial_modification(S).
must_undergo_new_conformity_assessment(S, substantial_modification) :-
    high_risk_ai_system_annex_3_points_2_to_8(S),
    substantial_modification(S).
must_undergo_new_conformity_assessment(S, substantial_modification) :-
    covered_by_union_harmonisation_legislation(S),
    substantial_modification(S).
exempt_substantial_modification(S) :-
    continues_to_learn_after_market_placement(S),
    change_predetermined_in_technical_documentation(S, _Change).
provenance(high_risk_ai_system_annex_3_point_1/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_points_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standard/2, 'celex:32024R1689/oj#art_43').
provenance(applied_common_specification/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_exists_for_requirements/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_available_for_requirements/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_or_asylum/1, 'celex:32024R1689/oj#art_43').
provenance(continues_to_learn_after_market_placement/1, 'celex:32024R1689/oj#art_43').
provenance(change_predetermined_in_technical_documentation/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_undergo_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
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
must_draw_up_in_understandable_language(Body, C) :-
    notified_body(Body),
    certificate(C),
    established_in_member_state(Body, _MS).
max_validity_period_years(S, 5) :-
    ai_system(S),
    covered_by_annex_i(S).
max_validity_period_years(S, 4) :-
    ai_system(S),
    covered_by_annex_iii(S).
must_suspend_or_withdraw_certificate(Body, C) :-
    notified_body(Body),
    certificate(C),
    covers_ai_system(C, S),
    \+ meets_chapter_3_section_2_requirements(S),
    \+ corrective_action_taken_within_deadline(_P, S).
must_give_reasons_for_decision(Body, decision(suspend_or_withdraw_certificate(C))) :-
    notified_body(Body),
    certificate(C),
    must_suspend_or_withdraw_certificate(Body, C).
appeal_procedure_available_against_decision(Body, Decision) :-
    notified_body(Body),
    decision_on_certificate(Decision).
provenance(must_draw_up_in_understandable_language/2, 'celex:32024R1689/oj#art_44').
provenance(max_validity_period_years/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons_for_decision/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available_against_decision/2, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform_notifying_authority/2, 'notified body must inform notifying authority of specific matters', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_notified_bodies/2, 'notified body must inform other notified bodies of specific matters', 'celex:32024R1689/oj#art_45').
declared(must_provide_relevant_information_to_similar_bodies/2, 'notified body must provide relevant information to similar notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'notified body must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform_notifying_authority(Body, issued_certificate(C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(C).
must_inform_notifying_authority(Body, issued_supplement(S)) :-
    notified_body(Body),
    supplement_to_certificate(S).
must_inform_notifying_authority(Body, issued_approval(A)) :-
    notified_body(Body),
    quality_management_system_approval(A).
must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(refusal, C).
must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(restriction, C).
must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(suspension, C).
must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(withdrawal, C).
must_inform_notifying_authority(Body, circumstances_affecting_notification(C)) :-
    notified_body(Body),
    affects_scope_or_conditions_of_notification(C).
must_inform_notifying_authority(Body, request_from_msa(R)) :-
    notified_body(Body),
    market_surveillance_authority_request(R).
must_inform_notifying_authority(Body, conformity_assessment_activities(A)) :-
    notified_body(Body),
    on_request,
    within_scope_of_notification(A).
must_inform_other_notified_bodies(Body, qms_action(Action, A)) :-
    notified_body(Body),
    quality_management_system_approval(A),
    qms_negative_action(Action, A).
must_inform_other_notified_bodies(Body, issued_qms_approval(A)) :-
    notified_body(Body),
    quality_management_system_approval(A),
    on_request.
must_inform_other_notified_bodies(Body, certificate_action(Action, C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(C),
    certificate_negative_action(Action, C).
must_inform_other_notified_bodies(Body, issued_certificate(C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(C),
    on_request.
must_provide_relevant_information_to_similar_bodies(Body, negative_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_activity(Body),
    negative_conformity_assessment_result(I).
must_provide_relevant_information_to_similar_bodies(Body, positive_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_activity(Body),
    positive_conformity_assessment_result(I),
    on_request.
must_safeguard_confidentiality(Body, obtained_information(I)) :-
    notified_body(Body),
    information_obtained_by_notified_body(I).
qms_negative_action(refusal, _).
qms_negative_action(suspension, _).
qms_negative_action(withdrawal, _).
certificate_negative_action(refusal, _).
certificate_negative_action(withdrawal, _).
certificate_negative_action(suspension, _).
certificate_negative_action(restriction, _).
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_relevant_information_to_similar_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(derogation_authorisation/1, 'authorisation to place on market or put into service without full conformity assessment', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason_applies/1, 'public security, life/health protection, environmental protection or key asset protection', 'celex:32024R1689/oj#art_46').
declared(urgency_situation_applies/1, 'duly justified situation of urgency for public security or imminent threat to life/safety', 'celex:32024R1689/oj#art_46').
declared(must_request_derogation_authorisation/2, 'authority must request authorisation during or after urgent use', 'celex:32024R1689/oj#art_46').
declared(must_stop_use/2, 'authority must stop use if authorisation refused', 'celex:32024R1689/oj#art_46').
declared(must_discard_results/2, 'authority must discard results if authorisation refused', 'celex:32024R1689/oj#art_46').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and Member States of authorisation', 'celex:32024R1689/oj#art_46').
declared(deemed_justified_authorisation/1, 'authorisation deemed justified if no objection within 15 days', 'celex:32024R1689/oj#art_46').
declared(must_withdraw_authorisation/2, 'market surveillance authority must withdraw unjustified authorisation', 'celex:32024R1689/oj#art_46').
derogation_authorisation(A) :-
    market_surveillance_authority(_MSA),
    exceptional_reason_applies(A).
exceptional_reason_applies(public_security).
exceptional_reason_applies(protection_of_life_and_health).
exceptional_reason_applies(environmental_protection).
exceptional_reason_applies(protection_of_key_industrial_and_infrastructural_assets).
urgency_situation_applies(S) :-
    exceptional_reason_applies(public_security),
    duly_justified_urgency(S).
urgency_situation_applies(S) :-
    substantial_imminent_threat_to_life_or_safety(S).
must_request_derogation_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    urgency_situation_applies(S),
    putting_into_service(Authority, S).
must_request_derogation_authorisation(Authority, S) :-
    civil_protection_authority(Authority),
    urgency_situation_applies(S),
    putting_into_service(Authority, S).
must_stop_use(Authority, S) :-
    putting_into_service(Authority, S),
    derogation_authorisation_refused(S).
must_discard_results(Authority, S) :-
    putting_into_service(Authority, S),
    derogation_authorisation_refused(S).
must_inform_commission_and_member_states(MSA, A) :-
    market_surveillance_authority(MSA),
    derogation_authorisation(A),
    \+ sensitive_law_enforcement_data(A).
deemed_justified_authorisation(A) :-
    derogation_authorisation(A),
    \+ objection_raised_within_days(15, A).
must_withdraw_authorisation(MSA, A) :-
    market_surveillance_authority(MSA),
    derogation_authorisation(A),
    commission_considers_unjustified(A).
provenance(derogation_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason_applies/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation_applies/1, 'celex:32024R1689/oj#art_46').
provenance(must_request_derogation_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_46').
provenance(must_discard_results/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity/1, 'written declaration drawn up by provider for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider obligation to create declaration for system', 'celex:32024R1689/oj#art_47').
declared(must_keep_eu_declaration_of_conformity/2, 'provider obligation to retain declaration for period', 'celex:32024R1689/oj#art_47').
declared(must_submit_eu_declaration_of_conformity/2, 'provider obligation to provide copy to authority upon request', 'celex:32024R1689/oj#art_47').
declared(must_update_eu_declaration_of_conformity/2, 'provider obligation to keep declaration current', 'celex:32024R1689/oj#art_47').
declared(identifies_system/2, 'declaration identifies the specific high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(states_compliance_with_section_2_requirements/2, 'declaration states system meets chapter 3 section 2 requirements', 'celex:32024R1689/oj#art_47').
declared(contains_annex_v_information/2, 'declaration contains information set out in annex v', 'celex:32024R1689/oj#art_47').
declared(translated_for_member_state/2, 'declaration translated into language understood by member state authorities', 'celex:32024R1689/oj#art_47').
declared(single_declaration_for_multiple_legislation/1, 'single declaration covers all applicable union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(assumes_responsibility_for_compliance/2, 'provider assumes responsibility for compliance by drawing up declaration', 'celex:32024R1689/oj#art_47').
must_draw_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(D),
    identifies_system(D, S).
must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    years(10).
must_keep_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    years(10).
must_submit_eu_declaration_of_conformity(P, A) :-
    provider(P),
    national_competent_authority(A),
    eu_declaration_of_conformity(_D).
must_update_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(_D).
states_compliance_with_section_2_requirements(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).
contains_annex_v_information(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S).
translated_for_member_state(D, S) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(S),
    making_available_on_market(S).
single_declaration_for_multiple_legislation(D) :-
    eu_declaration_of_conformity(D),
    high_risk_ai_system(_S).
assumes_responsibility_for_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration_of_conformity(P, S).
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_update_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(states_compliance_with_section_2_requirements/2, 'celex:32024R1689/oj#art_47').
provenance(contains_annex_v_information/2, 'celex:32024R1689/oj#art_47').
provenance(translated_for_member_state/2, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this regulation', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking/1, 'CE marking in digital form', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'AI system supplied in digital form', 'celex:32024R1689/oj#art_48').
declared(easily_accessible_digital_marking/1, 'digital CE marking accessible via interface or machine-readable code', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_visibly_legibly_indelibly/1, 'CE marking affixed in visible, legible and indelible manner', 'celex:32024R1689/oj#art_48').
declared(nature_precludes_direct_affixing/1, 'nature of system makes direct affixing impossible or unwarranted', 'celex:32024R1689/oj#art_48').
declared(ce_marking_on_packaging_or_documentation/1, 'CE marking affixed to packaging or accompanying documentation', 'celex:32024R1689/oj#art_48').
declared(notified_body_identification_number_required/1, 'CE marking must be followed by notified body identification number', 'celex:32024R1689/oj#art_48').
declared(identification_number_affixed_by_notified_body/2, 'notified body affixes its own identification number', 'celex:32024R1689/oj#art_48').
declared(identification_number_affixed_under_instructions/3, 'provider or representative affixes number under notified body instructions', 'celex:32024R1689/oj#art_48').
declared(identification_number_in_promotional_material/1, 'notified body number indicated in promotional material mentioning CE compliance', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_union_law_with_ce_marking/1, 'high-risk AI system also subject to other Union law requiring CE marking', 'celex:32024R1689/oj#art_48').
declared(ce_marking_indicates_compliance_with_other_law/1, 'CE marking indicates fulfilment of other Union law requirements', 'celex:32024R1689/oj#art_48').
must_use_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_digital_marking(S).
must_affix_ce_marking_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ nature_precludes_direct_affixing(S).
must_affix_ce_marking_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    nature_precludes_direct_affixing(S).
must_follow_ce_marking_with_notified_body_number(S) :-
    high_risk_ai_system(S),
    notified_body_identification_number_required(S).
must_affix_identification_number(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    notified_body_identification_number_required(S),
    identification_number_affixed_by_notified_body(B, S).
must_affix_identification_number_under_instructions(A, B, S) :-
    high_risk_ai_system(S),
    notified_body(B),
    notified_body_identification_number_required(S),
    (provider(A) ; authorised_representative(A)),
    identification_number_affixed_under_instructions(A, B, S).
must_indicate_identification_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    notified_body_identification_number_required(S),
    identification_number_in_promotional_material(S).
must_indicate_other_law_compliance_in_ce_marking(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_with_ce_marking(S),
    ce_marking_indicates_compliance_with_other_law(S).
provenance(must_use_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(must_follow_ce_marking_with_notified_body_number/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(must_affix_identification_number_under_instructions/3, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_other_law_compliance_in_ce_marking/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(high_risk_ai_system_listed_in_annex_3/1, 'high-risk AI system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(high_risk_ai_system_referred_to_in_annex_3_point_2/1, 'high-risk AI system referred to in Annex III point 2', 'celex:32024R1689/oj#art_49').
declared(ai_system_assessed_as_not_high_risk/1, 'AI system for which provider concluded it is not high-risk per Art 6(3)', 'celex:32024R1689/oj#art_49').
declared(public_authority_deployer/1, 'deployer that is a public authority or Union institution body office agency or person acting on their behalf', 'celex:32024R1689/oj#art_49').
declared(sensitive_high_risk_ai_system/1, 'high-risk AI system in law enforcement migration asylum or border control referred to in Annex III points 1 6 or 7', 'celex:32024R1689/oj#art_49').
declared(must_register_in_eu_database/2, 'obligation to register self and system in EU database before placing on market or putting into service', 'celex:32024R1689/oj#art_49').
declared(must_register_use_in_eu_database/2, 'obligation for public deployer to register self and use of system in EU database before putting into service or using', 'celex:32024R1689/oj#art_49').
declared(must_register_in_secure_non_public_section/2, 'obligation to register in secure non-public section of EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_at_national_level/2, 'obligation to register high-risk AI system at national level', 'celex:32024R1689/oj#art_49').
high_risk_ai_system_listed_in_annex_3(S) :-
    ai_system(S),
    \+ high_risk_ai_system_referred_to_in_annex_3_point_2(S).
sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    law_enforcement_area_applies(S).
sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    migration_area_applies(S).
sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    asylum_area_applies(S).
sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    border_control_management_area_applies(S).
must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    high_risk_ai_system_listed_in_annex_3(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    high_risk_ai_system_listed_in_annex_3(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    ai_system_assessed_as_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    ai_system_assessed_as_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_use_in_eu_database(Deployer, S) :-
    public_authority_deployer(Deployer),
    high_risk_ai_system_listed_in_annex_3(S),
    before_putting_into_service_or_using(S).
must_register_in_secure_non_public_section(Actor, S) :-
    must_register_in_eu_database(Actor, S),
    sensitive_high_risk_ai_system(S).
must_register_in_secure_non_public_section(Deployer, S) :-
    must_register_use_in_eu_database(Deployer, S),
    sensitive_high_risk_ai_system(S).
must_register_at_national_level(_Actor, S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_2(S).
provenance(high_risk_ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#art_49').
provenance(high_risk_ai_system_referred_to_in_annex_3_point_2/1, 'celex:32024R1689/oj#art_49').
provenance(ai_system_assessed_as_not_high_risk/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_49').
provenance(sensitive_high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_in_secure_non_public_section/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_at_national_level/2, 'celex:32024R1689/oj#art_49').
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
must_inform_interaction(P, S) :-
    provider(P),
    ai_system(S),
    intended_purpose(S),
    \+ interaction_obvious(S),
    \+ exempt_interaction(S).
exempt_interaction(S) :-
    authorised_for_criminal_offences(S),
    \+ available_to_report_criminal_offence(S).
must_mark_synthetic_content(P, S) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_synthetic_marking(S).
exempt_synthetic_marking(S) :-
    assistive_editing_function(S).
exempt_synthetic_marking(S) :-
    \+ substantially_alters_input(S).
exempt_synthetic_marking(S) :-
    authorised_for_criminal_offences(S).
must_inform_exposure(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ exempt_emotion_or_categorisation(S).
must_inform_exposure(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ exempt_emotion_or_categorisation(S).
exempt_emotion_or_categorisation(S) :-
    authorised_for_criminal_offences(S).
must_disclose_deep_fake(D, C) :-
    deployer(D),
    ai_system(S),
    deep_fake_content(C),
    \+ authorised_for_criminal_offences(S).
must_disclose_ai_text(D, C) :-
    deployer(D),
    ai_system(S),
    informs_public_on_matters_of_public_interest(C),
    \+ authorised_for_criminal_offences(S),
    \+ exempt_editorial_content(C).
exempt_editorial_content(C) :-
    human_reviewed_content(C),
    editorial_responsibility_held(C).
provenance(must_inform_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_synthetic_content/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_exposure/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_ai_text/2, 'celex:32024R1689/oj#art_50').
provenance(interaction_obvious/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_for_criminal_offences/1, 'celex:32024R1689/oj#art_50').
provenance(available_to_report_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_editing_function/1, 'celex:32024R1689/oj#art_50').
provenance(substantially_alters_input/1, 'celex:32024R1689/oj#art_50').
provenance(deep_fake_content/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_analogous_work/1, 'celex:32024R1689/oj#art_50').
provenance(informs_public_on_matters_of_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(human_reviewed_content/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
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
declared(has_high_impact_capabilities/1, 'model possesses high impact capabilities evaluated by appropriate tools', 'celex:32024R1689/oj#art_51').
declared(has_equivalent_capabilities_or_impact/1, 'model has capabilities or impact equivalent to high impact capabilities per Commission decision', 'celex:32024R1689/oj#art_51').
declared(presumed_high_impact_capabilities/1, 'model presumed to have high impact capabilities based on computation threshold', 'celex:32024R1689/oj#art_51').
declared(cumulative_training_computation/2, 'cumulative amount of computation used for training measured in floating point operations', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    has_high_impact_capabilities(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    has_equivalent_capabilities_or_impact(M).
has_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    presumed_high_impact_capabilities(M).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation(M, Ops),
    Ops > 1025.
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(has_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(has_equivalent_capabilities_or_impact/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_training_computation/2, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_52 ====
declared(must_notify_commission_of_systemic_risk_condition/2, 'provider must notify Commission when general-purpose AI model meets systemic risk condition', 'celex:32024R1689/oj#art_52').
declared(notification_deadline_for_systemic_risk/2, 'deadline for notifying Commission of systemic risk condition', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments_against_systemic_risk_classification/2, 'provider may present arguments that model does not present systemic risks', 'celex:32024R1689/oj#art_52').
declared(commission_may_designate_systemic_risk_model/1, 'Commission may designate a general-purpose AI model as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(must_publish_list_of_systemic_risk_models/1, 'Commission must publish and maintain list of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_52').
declared(may_request_reassessment_of_systemic_risk_designation/2, 'provider may request reassessment of systemic risk designation', 'celex:32024R1689/oj#art_52').
declared(minimum_period_before_reassessment_request/2, 'minimum period after designation before reassessment can be requested', 'celex:32024R1689/oj#art_52').
must_notify_commission_of_systemic_risk_condition(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    meets_systemic_risk_condition_a(M).
notification_deadline_for_systemic_risk(M, weeks(2)) :-
    general_purpose_ai_model(M),
    meets_systemic_risk_condition_a(M).
may_present_arguments_against_systemic_risk_classification(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    meets_systemic_risk_condition_a(M).
commission_may_designate_systemic_risk_model(M) :-
    general_purpose_ai_model(M).
must_publish_list_of_systemic_risk_models(commission) :-
    true.
may_request_reassessment_of_systemic_risk_designation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    designated_as_systemic_risk_model(M).
minimum_period_before_reassessment_request(M, months(6)) :-
    general_purpose_ai_model(M),
    designated_as_systemic_risk_model(M).
provenance(must_notify_commission_of_systemic_risk_condition/2, 'celex:32024R1689/oj#art_52').
provenance(notification_deadline_for_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments_against_systemic_risk_classification/2, 'celex:32024R1689/oj#art_52').
provenance(commission_may_designate_systemic_risk_model/1, 'celex:32024R1689/oj#art_52').
provenance(must_publish_list_of_systemic_risk_models/1, 'celex:32024R1689/oj#art_52').
provenance(may_request_reassessment_of_systemic_risk_designation/2, 'celex:32024R1689/oj#art_52').
provenance(minimum_period_before_reassessment_request/2, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up and keep up-to-date technical documentation of a general-purpose AI model', 'celex:32024R1689/oj#art_53').
declared(must_provide_integration_information/2, 'provider must make available information to downstream providers integrating the model', 'celex:32024R1689/oj#art_53').
declared(must_comply_with_copyright_policy/2, 'provider must put in place a policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(must_publish_training_content_summary/2, 'provider must make publicly available a summary of training content', 'celex:32024R1689/oj#art_53').
declared(exempt_open_source_model/1, 'general-purpose AI model released under free and open-source licence with public parameters', 'celex:32024R1689/oj#art_53').
declared(must_cooperate_with_authorities/2, 'provider must cooperate with Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ exempt_open_source_model(M).
must_provide_integration_information(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ exempt_open_source_model(M).
must_comply_with_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
must_publish_training_content_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
exempt_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    publicly_available_parameters(M),
    \+ systemic_risk(M).
must_cooperate_with_authorities(P, commission) :-
    provider(P),
    general_purpose_ai_model(_M).
must_cooperate_with_authorities(P, A) :-
    provider(P),
    general_purpose_ai_model(_M),
    national_competent_authority(A).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply_with_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_publish_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
must_appoint_authorised_representative(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    established_in_third_country(P),
    \+ exempt_authorised_representative_obligation(M),
    before_placing_on_market(M).
must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    general_purpose_ai_model(_M).
must_perform_mandated_tasks(R, P) :-
    authorised_representative(R),
    provider(P).
must_provide_mandate_copy(R, O) :-
    authorised_representative(R),
    ai_office(O).
must_verify_compliance(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M).
must_keep_technical_documentation(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    after_placing_on_market(M, years(10)).
must_provide_compliance_information(R, O) :-
    authorised_representative(R),
    ai_office(O).
must_cooperate_with_authorities(R, A) :-
    authorised_representative(R),
    national_competent_authority(A).
must_cooperate_with_authorities(R, A) :-
    authorised_representative(R),
    ai_office(A).
mandate_empowers_addressing(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M).
must_inform_termination(R, O) :-
    authorised_representative(R),
    ai_office(O).
exempt_authorised_representative_obligation(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk(M).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_compliance_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressing/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_54').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_54').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_perform_model_evaluation/2, 'provider must evaluate model with standardised protocols and adversarial testing', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risk/2, 'provider must assess and mitigate systemic risks at Union level', 'celex:32024R1689/oj#art_55').
declared(must_report_serious_incident/2, 'provider must report serious incidents and corrective measures to AI Office and authorities', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_protection/2, 'provider must ensure cybersecurity for model and infrastructure', 'celex:32024R1689/oj#art_55').
declared(permitted_reliance_on_code_of_practice/2, 'provider may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(presumption_of_conformity_applies/2, 'compliance with harmonised standard grants presumption of conformity', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/2, 'provider not using code or standard must demonstrate alternative means', 'celex:32024R1689/oj#art_55').
declared(must_treat_information_confidentially/2, 'information obtained under article must be treated confidentially', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_assess_and_mitigate_systemic_risk(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_report_serious_incident(P, incident(I, M)) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    serious_incident(I).
must_ensure_cybersecurity_protection(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
permitted_reliance_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ harmonised_standard_published_for_obligations(M).
presumption_of_conformity_applies(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    complies_with_harmonised_standard(P, M).
must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).
must_treat_information_confidentially(_Actor, information_obtained_under_art_55).
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_reliance_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity_applies/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(code_of_practice/1, 'code of practice at Union level for general-purpose AI models', 'celex:32024R1689/oj#art_56').
declared(must_encourage_code_of_practice/2, 'AI Office encourages and facilitates drawing up of codes', 'celex:32024R1689/oj#art_56').
declared(must_ensure_code_coverage/2, 'AI Office and Board ensure code covers obligations', 'celex:32024R1689/oj#art_56').
declared(must_ensure_code_objectives/2, 'AI Office and Board ensure code sets out objectives and measures', 'celex:32024R1689/oj#art_56').
declared(must_ensure_reporting/2, 'AI Office ensures participants report on implementation', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate_code/2, 'AI Office and Board monitor and evaluate code achievement', 'celex:32024R1689/oj#art_56').
declared(must_publish_adequacy_assessment/2, 'AI Office and Board publish assessment of code adequacy', 'celex:32024R1689/oj#art_56').
declared(may_approve_code/2, 'Commission may approve code by implementing act', 'celex:32024R1689/oj#art_56').
declared(may_invite_adherence/2, 'AI Office may invite providers to adhere to code', 'celex:32024R1689/oj#art_56').
declared(limited_adherence_applies/2, 'adherence limited to Article 53 obligations for non-systemic risk providers', 'celex:32024R1689/oj#art_56').
declared(must_encourage_review/2, 'AI Office encourages review and adaptation of codes', 'celex:32024R1689/oj#art_56').
declared(code_ready_deadline/1, 'deadline by which codes of practice must be ready', 'celex:32024R1689/oj#art_56').
must_encourage_code_of_practice(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
must_ensure_code_coverage(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
must_ensure_code_coverage(board, code_of_practice(C)) :-
    code_of_practice(C).
must_ensure_code_objectives(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
must_ensure_code_objectives(board, code_of_practice(C)) :-
    code_of_practice(C).
must_ensure_reporting(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
must_monitor_and_evaluate_code(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
must_monitor_and_evaluate_code(board, code_of_practice(C)) :-
    code_of_practice(C).
must_publish_adequacy_assessment(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
must_publish_adequacy_assessment(board, code_of_practice(C)) :-
    code_of_practice(C).
may_approve_code(commission, code_of_practice(C)) :-
    code_of_practice(C).
may_invite_adherence(ai_office, provider(P)) :-
    provider(P),
    general_purpose_ai_model(_M).
limited_adherence_applies(provider(P), code_of_practice(C)) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ systemic_risk(M),
    code_of_practice(C).
must_encourage_review(ai_office, code_of_practice(C)) :-
    code_of_practice(C).
code_ready_deadline(date(2025, 5, 2)).
provenance(must_encourage_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_code_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_code_objectives/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_reporting/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_code/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_adequacy_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(limited_adherence_applies/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review/2, 'celex:32024R1689/oj#art_56').
provenance(code_ready_deadline/1, 'celex:32024R1689/oj#art_56').
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
declared(must_establish_ai_regulatory_sandbox/2, 'Member State obligation to establish at least one national sandbox', 'celex:32024R1689/oj#art_57').
declared(operational_by_date/2, 'sandbox is operational by a specific date', 'celex:32024R1689/oj#art_57').
declared(sandbox_fulfilled_by_participation/2, 'obligation met by participating in existing sandbox with equivalent coverage', 'celex:32024R1689/oj#art_57').
declared(must_allocate_sufficient_resources/2, 'competent authority obligation to allocate resources for sandbox compliance', 'celex:32024R1689/oj#art_57').
declared(provides_controlled_environment/2, 'sandbox provides environment fostering innovation and testing', 'celex:32024R1689/oj#art_57').
declared(agreed_sandbox_plan/2, 'plan agreed between provider and competent authority', 'celex:32024R1689/oj#art_57').
declared(must_provide_guidance_and_supervision/2, 'competent authority obligation to guide and supervise within sandbox', 'celex:32024R1689/oj#art_57').
declared(must_provide_regulatory_guidance/2, 'competent authority obligation to provide guidance on regulatory expectations', 'celex:32024R1689/oj#art_57').
declared(must_provide_written_proof/2, 'competent authority obligation to provide proof of successful activities upon request', 'celex:32024R1689/oj#art_57').
declared(must_provide_exit_report/2, 'competent authority obligation to provide exit report detailing results', 'celex:32024R1689/oj#art_57').
declared(must_associate_data_protection_authority/2, 'obligation to involve DPA when personal data processing is involved', 'celex:32024R1689/oj#art_57').
declared(must_mitigate_significant_risk/2, 'obligation to adequately mitigate significant risks identified in sandbox', 'celex:32024R1689/oj#art_57').
declared(has_power_to_suspend_testing/2, 'authority power to suspend testing or participation if mitigation impossible', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_of_suspension/2, 'obligation to inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57').
declared(exempt_from_administrative_fines/2, 'exemption from fines for participants observing plan and guidance in good faith', 'celex:32024R1689/oj#art_57').
declared(must_submit_annual_report/2, 'obligation to submit annual reports to AI Office and Board', 'celex:32024R1689/oj#art_57').
declared(must_make_report_public/2, 'obligation to make annual reports or abstracts available online', 'celex:32024R1689/oj#art_57').
declared(must_develop_single_interface/2, 'Commission obligation to develop dedicated interface for sandboxes', 'celex:32024R1689/oj#art_57').
declared(must_inform_of_sandbox_establishment/2, 'obligation to inform AI Office and Board of sandbox establishment', 'celex:32024R1689/oj#art_57').
must_establish_ai_regulatory_sandbox(MemberState, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    operational_by_date(Sandbox, date(2026, 8, 2)).
sandbox_fulfilled_by_participation(MemberState, ExistingSandbox) :-
    ai_regulatory_sandbox(ExistingSandbox),
    equivalent_national_coverage(ExistingSandbox, MemberState).
operational_by_date(Sandbox, Date) :-
    ai_regulatory_sandbox(Sandbox),
    Date = date(2026, 8, 2).
must_allocate_sufficient_resources(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
provides_controlled_environment(Sandbox, Plan) :-
    ai_regulatory_sandbox(Sandbox),
    agreed_sandbox_plan(Sandbox, Plan).
agreed_sandbox_plan(Sandbox, Plan) :-
    ai_regulatory_sandbox(Sandbox),
    sandbox_plan(Plan).
must_provide_guidance_and_supervision(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
must_provide_regulatory_guidance(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).
must_provide_written_proof(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).
must_provide_exit_report(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider).
must_associate_data_protection_authority(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    involves_personal_data_processing(Sandbox).
must_mitigate_significant_risk(Authority, Risk) :-
    national_competent_authority(Authority),
    risk(Risk),
    significant_risk_to_health_safety_or_rights(Risk).
has_power_to_suspend_testing(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    \+ effective_mitigation_possible(Sandbox).
must_inform_ai_office_of_suspension(Authority, Decision) :-
    national_competent_authority(Authority),
    suspension_decision(Decision).
exempt_from_administrative_fines(Provider, Sandbox) :-
    provider(Provider),
    ai_regulatory_sandbox(Sandbox),
    observes_sandbox_plan(Provider, Sandbox),
    follows_guidance_in_good_faith(Provider, Sandbox).
must_submit_annual_report(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
must_make_report_public(Authority, Report) :-
    national_competent_authority(Authority),
    annual_report(Report).
must_develop_single_interface(commission, Interface) :-
    single_interface(Interface).
must_inform_of_sandbox_establishment(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
involves_personal_data_processing(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
significant_risk_to_health_safety_or_rights(Risk) :-
    risk(Risk).
effective_mitigation_possible(_Sandbox) :-
    fail.
observes_sandbox_plan(_Provider, _Sandbox).
follows_guidance_in_good_faith(_Provider, _Sandbox).
suspension_decision(_Decision).
annual_report(_Report).
single_interface(_Interface).
equivalent_national_coverage(_Sandbox, _MemberState).
provenance(must_establish_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(operational_by_date/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_fulfilled_by_participation/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57').
provenance(provides_controlled_environment/2, 'celex:32024R1689/oj#art_57').
provenance(agreed_sandbox_plan/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_and_supervision/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_regulatory_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(must_associate_data_protection_authority/2, 'celex:32024R1689/oj#art_57').
provenance(must_mitigate_significant_risk/2, 'celex:32024R1689/oj#art_57').
provenance(has_power_to_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_from_administrative_fines/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_57').
provenance(must_make_report_public/2, 'celex:32024R1689/oj#art_57').
provenance(must_develop_single_interface/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_of_sandbox_establishment/2, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts_for_sandbox/2, 'Commission obligation to adopt implementing acts for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(sandbox_eligibility_criteria_applies/1, 'eligibility and selection criteria for participation in the AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(sandbox_procedures_apply/1, 'procedures for application, participation, monitoring, exiting and termination of the AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(sandbox_terms_and_conditions_apply/1, 'terms and conditions applicable to participants in the AI regulatory sandbox', 'celex:32024R1689/oj#art_58').
declared(must_inform_applicant_of_decision/3, 'national competent authority obligation to inform applicant of decision within time limit', 'celex:32024R1689/oj#art_58').
declared(free_of_charge_for_sme/1, 'access to AI regulatory sandbox is free of charge for SMEs', 'celex:32024R1689/oj#art_58').
declared(must_direct_to_pre_deployment_services/2, 'obligation to direct prospective providers to pre-deployment services', 'celex:32024R1689/oj#art_58').
declared(must_agree_testing_terms_and_safeguards/3, 'obligation to agree terms and safeguards for testing in real world conditions within sandbox', 'celex:32024R1689/oj#art_58').
declared(must_cooperate_with_other_authorities/2, 'obligation to cooperate with other national competent authorities for consistent practices', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts_for_sandbox(commission, ai_regulatory_sandbox) :-
    ai_regulatory_sandbox(S),
    sandbox_eligibility_criteria_applies(S),
    sandbox_procedures_apply(S),
    sandbox_terms_and_conditions_apply(S).
sandbox_procedures_apply(S) :-
    ai_regulatory_sandbox(S),
    sandbox_plan(S),
    exit_report(S).
must_inform_applicant_of_decision(Authority, Applicant, Decision) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(_S),
    within(months(3), application(Applicant)).
free_of_charge_for_sme(S) :-
    ai_regulatory_sandbox(S),
    sme(Participant),
    access(S, Participant).
must_direct_to_pre_deployment_services(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_regulatory_sandbox(_S),
    relevant(pre_deployment_services).
must_agree_testing_terms_and_safeguards(Authority, Participant, Testing) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Testing),
    ai_regulatory_sandbox(_S),
    participant(Participant),
    safeguards(fundamental_rights, health, safety).
must_cooperate_with_other_authorities(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    national_competent_authority(OtherAuthority),
    Authority \= OtherAuthority,
    consistent_practices_across_union.
provenance(must_adopt_implementing_acts_for_sandbox/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_eligibility_criteria_applies/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_procedures_apply/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_terms_and_conditions_apply/1, 'celex:32024R1689/oj#art_58').
provenance(must_inform_applicant_of_decision/3, 'celex:32024R1689/oj#art_58').
provenance(free_of_charge_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_testing_terms_and_safeguards/3, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_with_other_authorities/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_further_processing_in_sandbox/1, 'processing of personal data in AI regulatory sandbox meeting Article 59 conditions', 'celex:32024R1689/oj#art_59').
declared(developed_for_substantial_public_interest/1, 'AI system developed for safeguarding substantial public interest', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/2, 'area of substantial public interest applicable to an AI system', 'celex:32024R1689/oj#art_59').
declared(necessary_for_compliance_with_requirements/1, 'data necessary for complying with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_59').
declared(anonymised_or_synthetic_data_insufficient/1, 'requirements cannot be fulfilled by anonymised synthetic or non-personal data', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_mechanisms_in_place/1, 'mechanisms to identify and mitigate high risks to data subjects', 'celex:32024R1689/oj#art_59').
declared(isolated_data_environment/1, 'functionally separate isolated and protected data processing environment', 'celex:32024R1689/oj#art_59').
declared(restricted_access_to_authorised_persons/1, 'only authorised persons have access to personal data in sandbox', 'celex:32024R1689/oj#art_59').
declared(no_decisions_affecting_data_subjects/1, 'processing does not lead to measures or decisions affecting data subjects', 'celex:32024R1689/oj#art_59').
declared(appropriate_protection_and_deletion/1, 'personal data protected by technical organisational measures and deleted after participation', 'celex:32024R1689/oj#art_59').
declared(processing_logs_kept/1, 'logs of processing kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(technical_documentation_complete/1, 'complete description of training testing validation process and results kept', 'celex:32024R1689/oj#art_59').
declared(project_summary_published/1, 'short summary of AI project published on competent authority website', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_sandbox_basis/1, 'processing based on specific Union or national law for criminal offences', 'celex:32024R1689/oj#art_59').
permitted_further_processing_in_sandbox(S) :-
    ai_system(S),
    developed_for_substantial_public_interest(S),
    necessary_for_compliance_with_requirements(S),
    anonymised_or_synthetic_data_insufficient(S),
    effective_monitoring_mechanisms_in_place(S),
    isolated_data_environment(S),
    restricted_access_to_authorised_persons(S),
    no_decisions_affecting_data_subjects(S),
    appropriate_protection_and_deletion(S),
    processing_logs_kept(S),
    technical_documentation_complete(S),
    project_summary_published(S).
developed_for_substantial_public_interest(S) :-
    ai_system(S),
    public_interest_area(S, _Area).
public_interest_area(S, public_safety_and_health) :-
    ai_system(S),
    objective_public_safety_and_health(S).
public_interest_area(S, environmental_protection) :-
    ai_system(S),
    objective_environmental_protection(S).
public_interest_area(S, energy_sustainability) :-
    ai_system(S),
    objective_energy_sustainability(S).
public_interest_area(S, transport_safety_and_resilience) :-
    ai_system(S),
    objective_transport_safety_and_resilience(S).
public_interest_area(S, public_administration_efficiency) :-
    ai_system(S),
    objective_public_administration_efficiency(S).
necessary_for_compliance_with_requirements(S) :-
    ai_system(S),
    required_compliance_with_chapter_iii_section_2(S).
anonymised_or_synthetic_data_insufficient(S) :-
    ai_system(S),
    \+ requirements_fulfillable_by_non_personal_data(S).
effective_monitoring_mechanisms_in_place(S) :-
    ai_system(S),
    has_risk_identification_mechanism(S),
    has_risk_mitigation_mechanism(S).
isolated_data_environment(S) :-
    ai_system(S),
    functionally_separate_environment(S),
    protected_environment(S).
restricted_access_to_authorised_persons(S) :-
    ai_system(S),
    access_controlled(S).
no_decisions_affecting_data_subjects(S) :-
    ai_system(S),
    \+ leads_to_measures_affecting_subjects(S),
    \+ affects_data_subject_rights(S).
appropriate_protection_and_deletion(S) :-
    ai_system(S),
    technical_organisational_measures_applied(S),
    deletion_upon_termination(S).
processing_logs_kept(S) :-
    ai_system(S),
    logs_retained_during_participation(S).
technical_documentation_complete(S) :-
    ai_system(S),
    training_testing_validation_described(S),
    testing_results_included(S).
project_summary_published(S) :-
    ai_system(S),
    summary_on_authority_website(S),
    \+ contains_sensitive_operational_data(S).
law_enforcement_sandbox_basis(S) :-
    ai_system(S),
    law_enforcement_authority(_Authority),
    specific_legal_basis_exists(S).
provenance(permitted_further_processing_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(developed_for_substantial_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/2, 'celex:32024R1689/oj#art_59').
provenance(necessary_for_compliance_with_requirements/1, 'celex:32024R1689/oj#art_59').
provenance(anonymised_or_synthetic_data_insufficient/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms_in_place/1, 'celex:32024R1689/oj#art_59').
provenance(isolated_data_environment/1, 'celex:32024R1689/oj#art_59').
provenance(restricted_access_to_authorised_persons/1, 'celex:32024R1689/oj#art_59').
provenance(no_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(appropriate_protection_and_deletion/1, 'celex:32024R1689/oj#art_59').
provenance(processing_logs_kept/1, 'celex:32024R1689/oj#art_59').
provenance(technical_documentation_complete/1, 'celex:32024R1689/oj#art_59').
provenance(project_summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_basis/1, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').

% ==== celex:32024R1689/oj#art_60 ====
declared(permitted_testing_in_real_world_conditions/1, 'testing of high-risk AI systems outside sandboxes is permitted', 'celex:32024R1689/oj#art_60').
declared(must_submit_real_world_testing_plan/2, 'provider must submit testing plan to authority', 'celex:32024R1689/oj#art_60').
declared(testing_approved_by_authority/2, 'authority has approved the testing and plan', 'celex:32024R1689/oj#art_60').
declared(must_register_testing/2, 'provider must register testing in database', 'celex:32024R1689/oj#art_60').
declared(established_or_represented_in_union/1, 'provider is established in Union or has representative', 'celex:32024R1689/oj#art_60').
declared(data_transfer_safeguards_implemented/1, 'safeguards for third country data transfer are in place', 'celex:32024R1689/oj#art_60').
declared(testing_duration_compliant/1, 'testing duration does not exceed limits', 'celex:32024R1689/oj#art_60').
declared(vulnerable_subjects_protected/1, 'vulnerable subjects are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_informed_and_agreed/2, 'deployer informed and agreement concluded', 'celex:32024R1689/oj#art_60').
declared(subject_consent_or_law_enforcement_exception/2, 'informed consent obtained or law enforcement exception applies', 'celex:32024R1689/oj#art_60').
declared(testing_effectively_overseen/1, 'testing overseen by qualified persons', 'celex:32024R1689/oj#art_60').
declared(ai_output_reversible/1, 'predictions recommendations or decisions can be reversed', 'celex:32024R1689/oj#art_60').
declared(must_report_serious_incident/2, 'provider must report serious incident to authority', 'celex:32024R1689/oj#art_60').
declared(must_mitigate_or_suspend_testing/2, 'provider must mitigate or suspend testing after incident', 'celex:32024R1689/oj#art_60').
declared(must_notify_testing_outcome/2, 'provider must notify suspension termination or outcomes', 'celex:32024R1689/oj#art_60').
declared(liable_for_testing_damage/2, 'provider liable for damage caused during testing', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions(S) :-
    testing_in_real_world_conditions(S),
    \+ prohibited_ai_practice(S),
    must_submit_real_world_testing_plan(_P, S),
    testing_approved_by_authority(_A, S),
    must_register_testing(_P, S),
    established_or_represented_in_union(_P),
    data_transfer_safeguards_implemented(S),
    testing_duration_compliant(S),
    vulnerable_subjects_protected(S),
    subject_consent_or_law_enforcement_exception(S, _Subj),
    testing_effectively_overseen(S),
    ai_output_reversible(S).
must_submit_real_world_testing_plan(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    real_world_testing_plan(Plan),
    submitted_to_market_surveillance_authority(P, Plan, S).
testing_approved_by_authority(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    explicit_approval(A, S).
testing_approved_by_authority(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    tacit_approval_applies(A, S).
must_register_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    \+ exempt_from_public_registration(S),
    registered_in_eu_database(P, S).
must_register_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    exempt_from_public_registration(S),
    registered_in_secure_non_public_section(P, S).
established_or_represented_in_union(P) :-
    provider(P),
    established_in_union(P).
established_or_represented_in_union(P) :-
    provider(P),
    appointed_legal_representative_in_union(P).
data_transfer_safeguards_implemented(S) :-
    testing_in_real_world_conditions(S),
    appropriate_safeguards_for_third_country_transfer(S).
testing_duration_compliant(S) :-
    testing_in_real_world_conditions(S),
    duration_not_exceeding_necessary(S),
    duration_within_limit(S).
vulnerable_subjects_protected(S) :-
    testing_in_real_world_conditions(S),
    subject(S, Subj),
    vulnerable_group(Subj),
    appropriate_protection(Subj).
deployer_informed_and_agreed(P, D) :-
    provider(P),
    deployer(D),
    testing_in_real_world_conditions(S),
    cooperation_with_deployer(P, D, S),
    informed_of_relevant_aspects(D, S),
    instructions_for_use_provided(P, D, S),
    agreement_on_roles_and_responsibilities(P, D, S).
subject_consent_or_law_enforcement_exception(S, Subj) :-
    testing_in_real_world_conditions(S),
    subject(S, Subj),
    informed_consent(Subj, S).
subject_consent_or_law_enforcement_exception(S, Subj) :-
    testing_in_real_world_conditions(S),
    subject(S, Subj),
    law_enforcement_testing(S),
    consent_would_prevent_testing(S),
    no_negative_effect_on_subject(Subj, S),
    personal_data_deleted_after_test(Subj, S).
testing_effectively_overseen(S) :-
    testing_in_real_world_conditions(S),
    oversight_by_provider_or_deployer(S),
    suitably_qualified_personnel(S).
ai_output_reversible(S) :-
    testing_in_real_world_conditions(S),
    predictions_reversible(S),
    recommendations_reversible(S),
    decisions_reversible(S).
must_report_serious_incident(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    occurred_during_testing(I, S),
    reported_to_national_market_surveillance_authority(P, I).
must_mitigate_or_suspend_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    occurred_during_testing(I, S),
    immediate_mitigation_adopted(P, I).
must_mitigate_or_suspend_testing(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    occurred_during_testing(I, S),
    \+ immediate_mitigation_adopted(P, I),
    suspended_until_mitigation(P, S).
must_notify_testing_outcome(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    suspension_or_termination(S),
    notified_to_market_surveillance_authority(P, S).
must_notify_testing_outcome(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    final_outcomes(O),
    notified_to_market_surveillance_authority(P, O).
liable_for_testing_damage(P, S) :-
    provider(P),
    testing_in_real_world_conditions(S),
    damage_caused_during_testing(S).
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(must_submit_real_world_testing_plan/2, 'celex:32024R1689/oj#art_60').
provenance(testing_approved_by_authority/2, 'celex:32024R1689/oj#art_60').
provenance(must_register_testing/2, 'celex:32024R1689/oj#art_60').
provenance(established_or_represented_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_compliant/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_and_agreed/2, 'celex:32024R1689/oj#art_60').
provenance(subject_consent_or_law_enforcement_exception/2, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(ai_output_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
provenance(must_mitigate_or_suspend_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_testing_outcome/2, 'celex:32024R1689/oj#art_60').
provenance(liability_for_testing_damage/2, 'celex:32024R1689/oj#art_60').
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
declared(must_obtain_informed_consent_for_testing/2, 'provider must obtain informed consent from subject for real world testing', 'celex:32024R1689/oj#art_61').
declared(informed_consent_meets_requirements/2, 'informed consent satisfies content and procedural requirements', 'celex:32024R1689/oj#art_61').
declared(subject_duly_informed/2, 'subject has received required information prior to consent', 'celex:32024R1689/oj#art_61').
declared(consent_documented_and_provided/2, 'consent is dated, documented and copy given to subject', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent_for_testing(Provider, Testing) :-
    provider(Provider),
    testing_in_real_world_conditions(Testing),
    \+ ai_regulatory_sandbox(Testing),
    subject(S),
    participates_in_testing(S, Testing),
    informed_consent_meets_requirements(S, Testing).
informed_consent_meets_requirements(S, Testing) :-
    subject_duly_informed(S, Testing),
    consent_documented_and_provided(S, Testing).
subject_duly_informed(S, Testing) :-
    subject(S),
    testing_in_real_world_conditions(Testing),
    information_provided(S, nature_and_objectives(Testing)),
    information_provided(S, possible_inconvenience(Testing)),
    information_provided(S, conditions_of_testing(Testing)),
    information_provided(S, expected_duration(S, Testing)),
    information_provided(S, rights_and_guarantees(S)),
    information_provided(S, right_to_refuse_without_detriment(S)),
    information_provided(S, right_to_withdraw_without_detriment(S)),
    information_provided(S, reversal_arrangements(Testing)),
    information_provided(S, unique_identification_number(Testing)),
    information_provided(S, contact_details(Testing)).
consent_documented_and_provided(S, _Testing) :-
    subject(S),
    consent_is_dated(S),
    consent_is_documented(S),
    copy_given_to_subject_or_representative(S).
provenance(must_obtain_informed_consent_for_testing/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_meets_requirements/2, 'celex:32024R1689/oj#art_61').
provenance(subject_duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(consent_documented_and_provided/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(sme_provider/1, 'SME including start-up that is a provider', 'celex:32024R1689/oj#art_62').
declared(sme_deployer/1, 'SME including start-up that is a deployer', 'celex:32024R1689/oj#art_62').
declared(union_established_sme/1, 'SME with registered office or branch in the Union', 'celex:32024R1689/oj#art_62').
declared(eligible_for_sandbox/1, 'fulfils eligibility conditions and selection criteria for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
sme_provider(P) :-
    provider(P).
sme_deployer(D) :-
    deployer(D).
must_provide_priority_sandbox_access(MS, Sme) :-
    union_established_sme(Sme),
    eligible_for_sandbox(Sme).
must_organise_sme_training(MS, sme_provider(_)).
must_organise_sme_training(MS, sme_deployer(_)).
must_organise_sme_training(MS, local_public_authority).
must_provide_communication_channel(MS, sme_provider(_)).
must_provide_communication_channel(MS, sme_deployer(_)).
must_provide_communication_channel(MS, other_innovator).
must_provide_communication_channel(MS, local_public_authority).
must_reduce_conformity_assessment_fees(_Authority, P) :-
    sme_provider(P).
must_provide_standardised_templates(ai_office, area_covered_by_regulation).
must_maintain_information_platform(ai_office, single_information_platform).
must_organise_communication_campaign(ai_office, obligation_awareness_campaign).
must_promote_procurement_convergence(ai_office, public_procurement_best_practice).
provenance(sme_provider/1, 'celex:32024R1689/oj#art_62').
provenance(sme_deployer/1, 'celex:32024R1689/oj#art_62').
provenance(union_established_sme/1, 'celex:32024R1689/oj#art_62').
provenance(eligible_for_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_sandbox_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_sme_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_communication_channel/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_conformity_assessment_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaign/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote_procurement_convergence/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Recommendation 2003/361', 'celex:32024R1689/oj#art_63').
declared(has_partner_or_linked_enterprise/1, 'has partner enterprises or linked enterprises within the meaning of Recommendation 2003/361', 'celex:32024R1689/oj#art_63').
declared(permitted_simplified_quality_management_compliance/1, 'compliance with certain elements of quality management system in a simplified manner', 'celex:32024R1689/oj#art_63').
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
must_develop_union_expertise(commission, ai).
must_facilitate_ai_office_tasks(member_states, tasks(ai_office)).
provenance(must_develop_union_expertise/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_ai_office_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_ai_board/1, 'the European Artificial Intelligence Board established by Article 65', 'celex:32024R1689/oj#art_65').
declared(board_representative/2, 'representative designated by a Member State to the Board', 'celex:32024R1689/oj#art_65').
declared(must_designate_representative/2, 'Member State obligation to designate a representative to the Board', 'celex:32024R1689/oj#art_65').
declared(must_ensure_representative_competence/2, 'Member State obligation regarding representative competence', 'celex:32024R1689/oj#art_65').
declared(must_ensure_single_contact_point/2, 'Member State obligation regarding single contact point designation', 'celex:32024R1689/oj#art_65').
declared(must_ensure_coordination_empowerment/2, 'Member State obligation to empower representative for coordination', 'celex:32024R1689/oj#art_65').
declared(must_adopt_rules_of_procedure/1, 'obligation of representatives to adopt Board rules of procedure', 'celex:32024R1689/oj#art_65').
declared(must_establish_standing_subgroup/2, 'Board obligation to establish specific standing sub-groups', 'celex:32024R1689/oj#art_65').
declared(must_safeguard_objectivity_and_impartiality/1, 'Board obligation regarding organisation and operation', 'celex:32024R1689/oj#art_65').
declared(must_chair_board/2, 'obligation that the Board be chaired by a Member State representative', 'celex:32024R1689/oj#art_65').
declared(must_provide_secretariat/2, 'AI Office obligation to provide secretariat for the Board', 'celex:32024R1689/oj#art_65').
european_ai_board(board).
provenance(european_ai_board/1, 'celex:32024R1689/oj#art_65').
must_designate_representative(MemberState, Representative) :-
    board_representative(Representative, MemberState).
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
must_ensure_representative_competence(MemberState, Representative) :-
    board_representative(Representative, MemberState),
    relevant_competences_and_powers(Representative, MemberState).
relevant_competences_and_powers(_Representative, _MemberState).
provenance(must_ensure_representative_competence/2, 'celex:32024R1689/oj#art_65').
must_ensure_single_contact_point(MemberState, Representative) :-
    board_representative(Representative, MemberState),
    designated_as_single_contact_point(Representative).
designated_as_single_contact_point(_Representative).
provenance(must_ensure_single_contact_point/2, 'celex:32024R1689/oj#art_65').
must_ensure_coordination_empowerment(MemberState, Representative) :-
    board_representative(Representative, MemberState),
    empowered_to_facilitate_consistency(Representative, MemberState).
empowered_to_facilitate_consistency(_Representative, _MemberState).
provenance(must_ensure_coordination_empowerment/2, 'celex:32024R1689/oj#art_65').
must_adopt_rules_of_procedure(Representatives) :-
    european_ai_board(_Board),
    designated_representatives(Representatives).
designated_representatives(_Representatives).
provenance(must_adopt_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
must_establish_standing_subgroup(Board, market_surveillance_authorities) :-
    european_ai_board(Board).
must_establish_standing_subgroup(Board, notifying_authorities) :-
    european_ai_board(Board).
provenance(must_establish_standing_subgroup/2, 'celex:32024R1689/oj#art_65').
must_safeguard_objectivity_and_impartiality(Board) :-
    european_ai_board(Board).
provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
must_chair_board(Board, Representative) :-
    european_ai_board(Board),
    board_representative(Representative, _MemberState).
provenance(must_chair_board/2, 'celex:32024R1689/oj#art_65').
must_provide_secretariat(AIOffice, Board) :-
    ai_office(AIOffice),
    european_ai_board(Board).
provenance(must_provide_secretariat/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_66').
must_advise_and_assist(board, commission).
must_advise_and_assist(board, member_states).
may_contribute_to_coordination(board, national_competent_authorities).
may_support_joint_activities(board, joint_activities(market_surveillance_authorities)) :-
    agreement(market_surveillance_authorities).
may_collect_and_share_expertise(board, technical_and_regulatory_expertise).
may_collect_and_share_expertise(board, best_practices).
may_provide_advice_on_implementation(board, enforcement(general_purpose_ai_models)).
may_contribute_to_harmonisation(board, administrative_practices).
may_contribute_to_harmonisation(board, derogation(conformity_assessment_procedures)).
may_contribute_to_harmonisation(board, functioning(ai_regulatory_sandboxes)).
may_contribute_to_harmonisation(board, testing_in_real_world_conditions).
may_issue_recommendations(board, relevant_matters(implementation)).
may_issue_recommendations(board, codes_of_conduct).
may_issue_recommendations(board, codes_of_practice).
may_issue_recommendations(board, commission_guidelines).
may_issue_recommendations(board, evaluation_and_review).
may_issue_recommendations(board, serious_incident_reports).
may_issue_recommendations(board, functioning(eu_database)).
may_issue_recommendations(board, preparation(delegated_or_implementing_acts)).
may_issue_recommendations(board, alignment(union_harmonisation_legislation)).
may_issue_recommendations(board, technical_specifications).
may_issue_recommendations(board, existing_standards).
may_issue_recommendations(board, use(harmonised_standards)).
may_issue_recommendations(board, use(common_specifications)).
may_issue_recommendations(board, trends(european_global_competitiveness)).
may_issue_recommendations(board, trends(uptake_of_ai)).
may_issue_recommendations(board, trends(development_of_digital_skills)).
may_issue_recommendations(board, trends(evolution_of_ai_value_chains)).
may_issue_recommendations(board, implications(accountability)).
may_issue_recommendations(board, amendment(annex_3)).
may_issue_recommendations(board, revision(article_5)).
may_support_ai_literacy_promotion(board, ai_literacy).
may_support_ai_literacy_promotion(board, public_awareness).
may_facilitate_common_criteria(board, relevant_concepts).
may_facilitate_common_criteria(board, benchmarks).
may_cooperate_with_union_bodies(board, union_institutions).
may_cooperate_with_union_bodies(board, union_bodies).
may_cooperate_with_union_bodies(board, union_offices).
may_cooperate_with_union_bodies(board, union_agencies).
may_cooperate_with_union_bodies(board, union_expert_groups).
may_cooperate_with_union_bodies(board, union_networks).
may_contribute_to_international_cooperation(board, competent_authorities(third_countries)).
may_contribute_to_international_cooperation(board, international_organisations).
may_assist_development_of_expertise(board, national_competent_authorities).
may_assist_development_of_expertise(board, commission).
may_assist_development_of_expertise(board, assessment(training_needs)).
may_assist_sandbox_establishment(board, ai_office).
may_assist_sandbox_establishment(board, establishment(ai_regulatory_sandboxes)).
may_assist_sandbox_establishment(board, development(ai_regulatory_sandboxes)).
may_assist_sandbox_establishment(board, cooperation(among_ai_regulatory_sandboxes)).
may_assist_sandbox_establishment(board, information_sharing(among_ai_regulatory_sandboxes)).
may_contribute_to_guidance(board, guidance_documents).
may_advise_on_international_matters(board, commission).
may_provide_opinions_on_alerts(board, qualified_alerts(general_purpose_ai_models)).
may_receive_opinions_from_member_states(board, opinions_on_qualified_alerts).
may_receive_opinions_from_member_states(board, national_experiences(monitoring_and_enforcement)).
provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/2, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy_promotion/2, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/2, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_development_of_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_sandbox_establishment/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/2, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/2, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions_from_member_states/2, 'celex:32024R1689/oj#art_66').
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
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_3').

% ==== celex:32024R1689/oj#art_67 ====
declared(advisory_forum/1, 'advisory forum established under Article 67', 'celex:32024R1689/oj#art_67').
declared(permanent_member_of_advisory_forum/1, 'entity that is a permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
advisory_forum(advisory_forum).
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).
must_appoint_members(commission, members(advisory_forum)).
must_prepare_annual_report(advisory_forum, annual_report(activities(advisory_forum))).
must_make_publicly_available(advisory_forum, annual_report(activities(advisory_forum))).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_members/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'panel of independent experts established by the Commission', 'celex:32024R1689/oj#art_68').
declared(member_of_scientific_panel/2, 'expert is a member of the scientific panel', 'celex:32024R1689/oj#art_68').
scientific_panel(P) :-
    must_select_expert(commission, _E),
    member_of_scientific_panel(_E, P).
must_select_expert(commission, E) :-
    has_ai_expertise(E),
    independent_from_providers(E),
    able_to_carry_out_activities_diligently(E).
has_ai_expertise(E) :-
    scientific_or_technical_expertise_in_ai(E).
independent_from_providers(E) :-
    \+ provider(E),
    \+ affiliated_with_provider(E).
able_to_carry_out_activities_diligently(E) :-
    diligent(E),
    accurate(E),
    objective(E).
must_advise_and_support(scientific_panel, ai_office) :-
    scientific_panel(_P).
must_advise_and_support(scientific_panel, alert(systemic_risk(M))) :-
    scientific_panel(_P),
    general_purpose_ai_model(M),
    systemic_risk(R),
    possible_systemic_risk_at_union_level(M, R).
must_advise_and_support(scientific_panel, development(tools_and_methodologies(evaluation))) :-
    scientific_panel(_P).
must_advise_and_support(scientific_panel, advice(classification(model_with_systemic_risk))) :-
    scientific_panel(_P).
must_advise_and_support(scientific_panel, advice(classification(general_purpose_ai_models_and_systems))) :-
    scientific_panel(_P).
must_advise_and_support(scientific_panel, development(tools_and_templates)) :-
    scientific_panel(_P).
must_advise_and_support(scientific_panel, support(market_surveillance_authority(A))) :-
    scientific_panel(_P),
    market_surveillance_authority(A),
    requested_support(A).
must_advise_and_support(scientific_panel, support(cross_border_market_surveillance)) :-
    scientific_panel(_P).
must_advise_and_support(scientific_panel, support(ai_office, union_safeguard_procedure)) :-
    scientific_panel(_P).
must_perform_tasks_impartially(E, T) :-
    member_of_scientific_panel(E, _P),
    task_under_art_68_par_3(T).
must_ensure_confidentiality(E, I) :-
    member_of_scientific_panel(E, _P),
    information_obtained_in_tasks(I).
must_not_seek_instructions(E, T) :-
    member_of_scientific_panel(E, _P),
    task_under_art_68_par_3(T).
must_draw_up_declaration_of_interests(E, declaration_of_interests(E)) :-
    member_of_scientific_panel(E, _P).
must_establish_conflict_management_systems(ai_office, systems_and_procedures(conflicts_of_interest)) :-
    scientific_panel(_P).
task_under_art_68_par_3(alert(systemic_risk(_))).
task_under_art_68_par_3(development(tools_and_methodologies(evaluation))).
task_under_art_68_par_3(advice(classification(model_with_systemic_risk))).
task_under_art_68_par_3(advice(classification(general_purpose_ai_models_and_systems))).
task_under_art_68_par_3(development(tools_and_templates)).
task_under_art_68_par_3(support(market_surveillance_authority(_))).
task_under_art_68_par_3(support(cross_border_market_surveillance)).
task_under_art_68_par_3(support(ai_office, union_safeguard_procedure)).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(member_of_scientific_panel/2, 'celex:32024R1689/oj#art_68').
provenance(must_select_expert/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_impartially/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/2, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/2, 'celex:32024R1689/oj#art_68').
provenance(must_establish_conflict_management_systems/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(member_state/1, 'member state of the European Union', 'celex:32024R1689/oj#art_69').
declared(scientific_panel_expert/1, 'expert belonging to the scientific panel', 'celex:32024R1689/oj#art_69').
declared(enforcement_activity/1, 'activity carried out for enforcement under this regulation', 'celex:32024R1689/oj#art_69').
declared(union_ai_testing_support/1, 'AI testing support provided at Union level pursuant to Article 84', 'celex:32024R1689/oj#art_69').
permitted_call_upon_experts(MS, E) :-
    member_state(MS),
    scientific_panel_expert(E),
    enforcement_activity(A),
    supports_enforcement(E, A).
must_pay_fees(MS, advice_and_support(E)) :-
    member_state(MS),
    scientific_panel_expert(E),
    fees_required_for_advice_and_support(E).
must_facilitate_access(commission, experts_for_member_states(MS)) :-
    member_state(MS),
    access_needed(MS).
must_ensure_efficient_organisation(commission, combined_support_activities) :-
    union_ai_testing_support(T),
    scientific_panel_expert(E),
    combined_support(T, E).
provenance(permitted_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(member_state/1, 'member state of the European Union', 'celex:32024R1689/oj#art_70').
declared(single_point_of_contact/1, 'market surveillance authority designated as contact point', 'celex:32024R1689/oj#art_70').
declared(union_institution_or_body/1, 'union institution body office or agency', 'celex:32024R1689/oj#art_70').
declared(european_data_protection_supervisor/1, 'supervisor for union institutions and bodies', 'celex:32024R1689/oj#art_70').
must_designate_national_competent_authorities(MS, authorities(notifying(NA), market_surveillance(MSA))) :-
    member_state(MS),
    notifying_authority(NA),
    market_surveillance_authority(MSA).
must_communicate_authority_identity(MS, commission) :-
    member_state(MS),
    must_designate_national_competent_authorities(MS, _).
must_make_contact_info_public(MS) :-
    member_state(MS),
    by_date(date(2025, 8, 2)).
must_designate_single_point_of_contact(MS, SPC) :-
    member_state(MS),
    market_surveillance_authority(SPC),
    single_point_of_contact(SPC).
must_notify_single_point_of_contact(MS, commission) :-
    member_state(MS),
    must_designate_single_point_of_contact(MS, _SPC).
must_ensure_adequate_resources(MS, A) :-
    member_state(MS),
    national_competent_authority(A),
    operator(A).
must_assess_competence_requirements_annually(MS, A) :-
    member_state(MS),
    national_competent_authority(A),
    operator(A).
must_ensure_cybersecurity(A) :-
    national_competent_authority(A),
    operator(A).
must_act_confidentially(A) :-
    national_competent_authority(A),
    operator(A).
must_report_resource_status(MS, commission) :-
    member_state(MS),
    must_designate_national_competent_authorities(MS, _).
must_facilitate_exchange_of_experience(commission).
may_provide_guidance(A, Recipient) :-
    national_competent_authority(A),
    operator(A).
must_consult_other_authorities(A, OA) :-
    national_competent_authority(A),
    national_competent_authority(OA),
    A \= OA.
acts_as_competent_authority_for_union_bodies(edps) :-
    european_data_protection_supervisor(edps).
provenance(must_designate_national_competent_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authority_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_info_public/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_competence_requirements_annually/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_confidentially/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resource_status/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange_of_experience/1, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(acts_as_competent_authority_for_union_bodies/1, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_set_up_and_maintain_eu_database/2, 'obligation to establish and maintain the EU database for high-risk AI systems', 'celex:32024R1689/oj#art_71').
declared(eu_database_contains_info_on_registered_high_risk_system/1, 'EU database includes information on high-risk AI systems registered under Article 49 or 60', 'celex:32024R1689/oj#art_71').
declared(eu_database_contains_info_on_non_high_risk_system/1, 'EU database includes information on AI systems not considered high-risk but registered under Article 6(4) and 49', 'celex:32024R1689/oj#art_71').
declared(must_enter_data_into_eu_database/2, 'obligation to enter specified data into the EU database', 'celex:32024R1689/oj#art_71').
declared(public_authority_deployer/1, 'deployer that is or acts on behalf of a public authority, agency or body', 'celex:32024R1689/oj#art_71').
declared(eu_database_info_publicly_accessible/1, 'information in the EU database registered under Article 49 is publicly accessible', 'celex:32024R1689/oj#art_71').
declared(eu_database_info_restricted_access/1, 'information in the EU database registered under Article 60 is restricted to authorities unless consent given', 'celex:32024R1689/oj#art_71').
declared(controller_of_eu_database/1, 'entity designated as controller of the EU database', 'celex:32024R1689/oj#art_71').
declared(must_provide_technical_and_administrative_support/2, 'obligation to provide technical and administrative support for the EU database', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain_eu_database(commission, member_states).
eu_database_contains_info_on_registered_high_risk_system(S) :-
    high_risk_ai_system(S),
    registered_in_accordance_with_art_49_or_60(S).
eu_database_contains_info_on_non_high_risk_system(S) :-
    ai_system(S),
    \+ high_risk_ai_system(S),
    registered_in_accordance_with_art_6_par_4_and_art_49(S).
must_enter_data_into_eu_database(provider, data_listed_in_annex_viii_sec_1_and_2).
must_enter_data_into_eu_database(authorised_representative, data_listed_in_annex_viii_sec_1_and_2).
must_enter_data_into_eu_database(D, data_listed_in_annex_viii_sec_3) :-
    deployer(D),
    public_authority_deployer(D).
public_authority_deployer(D) :-
    deployer(D),
    acts_on_behalf_of_public_authority(D).
eu_database_info_publicly_accessible(info_registered_under_art_49).
eu_database_info_restricted_access(info_registered_under_art_60).
controller_of_eu_database(commission).
must_provide_technical_and_administrative_support(commission, providers).
must_provide_technical_and_administrative_support(commission, prospective_providers).
must_provide_technical_and_administrative_support(commission, deployers).
provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_info_on_registered_high_risk_system/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_info_on_non_high_risk_system/1, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_info_publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_info_restricted_access/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_technical_and_administrative_support/2, 'celex:32024R1689/oj#art_71').
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
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_72').
declared(must_establish_post_market_monitoring_system/2, 'provider obligation to establish and document a post-market monitoring system', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_nature_and_risks/2, 'system is proportionate to AI technologies and risks of the system', 'celex:32024R1689/oj#art_72').
declared(must_collect_performance_data/2, 'post-market monitoring system actively collects relevant performance data', 'celex:32024R1689/oj#art_72').
declared(must_analyze_interaction_with_other_ai_systems/2, 'post-market monitoring includes analysis of interaction with other AI systems where relevant', 'celex:32024R1689/oj#art_72').
declared(exempt_sensitive_operational_data/2, 'obligation does not cover sensitive operational data of law enforcement deployers', 'celex:32024R1689/oj#art_72').
declared(must_base_system_on_plan/2, 'post-market monitoring system must be based on a post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(part_of_technical_documentation/2, 'plan is part of technical documentation referred to in Annex IV', 'celex:32024R1689/oj#art_72').
declared(covered_by_union_harmonisation_legislation/1, 'high-risk AI system covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_72').
declared(existing_post_market_monitoring_under_sector_law/1, 'post-market monitoring system and plan already established under sector legislation', 'celex:32024R1689/oj#art_72').
declared(permitted_integration_into_existing_system/2, 'provider may integrate necessary elements into existing sector-law systems if equivalent protection achieved', 'celex:32024R1689/oj#art_72').
declared(financial_institution_subject_to_governance_requirements/1, 'financial institution subject to Union financial services law internal governance requirements', 'celex:32024R1689/oj#art_72').
declared(referred_to_in_annex_3_point_5/1, 'high-risk AI system referred to in Annex III point 5', 'celex:32024R1689/oj#art_72').
must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    proportionate_to_nature_and_risks(S, _System).
must_collect_performance_data(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    \+ exempt_sensitive_operational_data(System, S).
exempt_sensitive_operational_data(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(_Data).
must_analyze_interaction_with_other_ai_systems(System, S) :-
    post_market_monitoring_system(System),
    high_risk_ai_system(S),
    interaction_relevant(S).
must_base_system_on_plan(System, Plan) :-
    post_market_monitoring_system(System),
    post_market_monitoring_plan(Plan).
part_of_technical_documentation(Plan, S) :-
    post_market_monitoring_plan(Plan),
    high_risk_ai_system(S).
permitted_integration_into_existing_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    existing_post_market_monitoring_under_sector_law(S),
    equivalent_level_of_protection(S).
permitted_integration_into_existing_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    referred_to_in_annex_3_point_5(S),
    financial_institution_subject_to_governance_requirements(P),
    equivalent_level_of_protection(S).
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect_performance_data/2, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data/2, 'celex:32024R1689/oj#art_72').
provenance(must_analyze_interaction_with_other_ai_systems/2, 'celex:32024R1689/oj#art_72').
provenance(must_base_system_on_plan/2, 'celex:32024R1689/oj#art_72').
provenance(part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(permitted_integration_into_existing_system/2, 'celex:32024R1689/oj#art_72').
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
declared(must_report_serious_incident/2, 'provider must report serious incident to authority', 'celex:32024R1689/oj#art_73').
declared(reporting_deadline/3, 'deadline for reporting based on incident type', 'celex:32024R1689/oj#art_73').
declared(must_investigate_serious_incident/2, 'provider must investigate serious incident', 'celex:32024R1689/oj#art_73').
declared(must_cooperate_with_authority/2, 'provider must cooperate during investigation', 'celex:32024R1689/oj#art_73').
declared(must_not_alter_system_before_notification/2, 'provider must not alter system before informing authority', 'celex:32024R1689/oj#art_73').
declared(must_inform_public_authorities/2, 'market surveillance authority must inform public bodies', 'celex:32024R1689/oj#art_73').
declared(must_take_measures_within_days/3, 'authority must take measures within specified days', 'celex:32024R1689/oj#art_73').
declared(must_notify_commission_of_serious_incident/2, 'national competent authority must notify commission', 'celex:32024R1689/oj#art_73').
declared(limited_reporting_applies/1, 'reporting limited to specific serious incidents', 'celex:32024R1689/oj#art_73').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_73').
declared(causal_link_established/2, 'causal link established between system and incident', 'celex:32024R1689/oj#art_73').
declared(aware_of_incident/2, 'operator became aware of serious incident', 'celex:32024R1689/oj#art_73').
must_report_serious_incident(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(S).
reporting_deadline(S, days(15)) :-
    serious_incident(S),
    \+ widespread_infringement(S),
    \+ death_involved(S),
    \+ critical_disruption(S).
reporting_deadline(S, days(2)) :-
    serious_incident(S),
    widespread_infringement(S).
reporting_deadline(S, days(2)) :-
    serious_incident(S),
    critical_disruption(S).
reporting_deadline(S, days(10)) :-
    serious_incident(S),
    death_involved(S).
must_investigate_serious_incident(P, S) :-
    provider(P),
    serious_incident(S),
    high_risk_ai_system(S).
must_cooperate_with_authority(P, A) :-
    provider(P),
    national_competent_authority(A),
    serious_incident(_S).
must_not_alter_system_before_notification(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(S).
must_inform_public_authorities(A, S) :-
    market_surveillance_authority(A),
    serious_incident(S),
    critical_disruption(S).
must_take_measures_within_days(A, S, 7) :-
    market_surveillance_authority(A),
    serious_incident(S).
must_notify_commission_of_serious_incident(A, S) :-
    national_competent_authority(A),
    serious_incident(S).
limited_reporting_applies(S) :-
    high_risk_ai_system(S),
    safety_component(S).
limited_reporting_applies(S) :-
    high_risk_ai_system(S),
    medical_device(S).
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(reporting_deadline/3, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_system_before_notification/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_public_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission_of_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(limited_reporting_applies/1, 'celex:32024R1689/oj#art_73').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_74').
declared(financial_institution/1, 'institution regulated by Union financial services law', 'celex:32024R1689/oj#art_74').
declared(union_harmonisation_legislation_product/1, 'product covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_74').
declared(law_enforcement_purpose/1, 'use for law enforcement, border management, justice or democracy', 'celex:32024R1689/oj#art_74').
declared(annex_3_point_1_system/1, 'high-risk AI system listed in Annex III point 1', 'celex:32024R1689/oj#art_74').
declared(annex_3_point_6_8_system/1, 'high-risk AI system listed in Annex III points 6, 7 or 8', 'celex:32024R1689/oj#art_74').
declared(data_protection_supervisory_authority/1, 'competent data protection supervisory authority under GDPR or LED', 'celex:32024R1689/oj#art_74').
declared(european_data_protection_supervisor/1, 'EDPS acting as market surveillance authority for Union bodies', 'celex:32024R1689/oj#art_74').
declared(union_body/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_74').
declared(court_of_justice_acting_judicially/1, 'Court of Justice of the EU acting in judicial capacity', 'celex:32024R1689/oj#art_74').
declared(serious_risk_across_member_states/1, 'serious risk presented across two or more Member States', 'celex:32024R1689/oj#art_74').
declared(source_code_access_necessary/1, 'access to source code is necessary to assess conformity', 'celex:32024R1689/oj#art_74').
declared(testing_exhausted_or_insufficient/1, 'testing and auditing based on provided data have been exhausted or proved insufficient', 'celex:32024R1689/oj#art_74').
must_report_competition_info(Authority, Commission) :-
    market_surveillance_authority(Authority),
    information_identified_during_surveillance(Info),
    potential_interest_for_competition_law(Info).
must_report_prohibited_practices(Authority, Commission) :-
    market_surveillance_authority(Authority),
    prohibited_practice_occurred_during_year(_Practice).
must_report_measures_taken(Authority, Commission) :-
    market_surveillance_authority(Authority),
    measure_taken_during_year(_Measure).
market_surveillance_authority_for_product_sector(Authority, S) :-
    high_risk_ai_system(S),
    related_to_product(S, P),
    union_harmonisation_legislation_product(P),
    designated_under_sectoral_legislation(Authority, P).
exempt_procedure(S, Procedure) :-
    high_risk_ai_system(S),
    related_to_product(S, P),
    union_harmonisation_legislation_product(P),
    equivalent_protection_procedure_exists(P, Procedure).
permitted_remote_power_exercise(Authority, Power) :-
    market_surveillance_authority(Authority),
    remote_power(Power),
    appropriate_for_remote_exercise(Power).
market_surveillance_authority_for_financial_sector(Authority, S) :-
    high_risk_ai_system(S),
    financial_institution_context(S, Institution),
    financial_institution(Institution),
    national_financial_supervisory_authority(Authority, Institution),
    direct_connection_to_financial_services(S).
market_surveillance_authority_for_law_enforcement(Authority, S) :-
    high_risk_ai_system(S),
    law_enforcement_purpose(S),
    (annex_3_point_1_system(S) ; annex_3_point_6_8_system(S)),
    data_protection_supervisory_authority(Authority).
market_surveillance_authority_for_union_body(Authority, Body) :-
    union_body(Body),
    \+ court_of_justice_acting_judicially(Body),
    european_data_protection_supervisor(Authority).
must_facilitate_coordination(MemberState) :-
    member_state(MemberState),
    market_surveillance_authority_designated(_Authority).
permitted_joint_activity(Activity) :-
    joint_investigation(Activity),
    serious_risk_across_member_states(_Category),
    aim_of_activity(Activity, Aim),
    valid_joint_activity_aim(Aim).
must_grant_access_to_documentation(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    relevant_for_tasks(Authority, S).
must_grant_access_to_datasets(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    dataset_used_for_development(S, _Dataset).
must_grant_source_code_access(Provider, Authority, S) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    reasoned_request_made(Authority, S),
    source_code_access_necessary(S),
    testing_exhausted_or_insufficient(S).
must_treat_as_confidential(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_during_surveillance(Authority, Information).
provenance(must_report_competition_info/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_measures_taken/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_product_sector/2, 'celex:32024R1689/oj#art_74').
provenance(exempt_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_remote_power_exercise/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_financial_sector/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_law_enforcement/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_union_body/2, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_joint_activity/1, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_datasets/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/3, 'celex:32024R1689/oj#art_74').
provenance(must_treat_as_confidential/2, 'celex:32024R1689/oj#art_74').
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
declared(ai_office_has_powers/1, 'AI Office has monitoring and supervision powers for the system', 'celex:32024R1689/oj#art_75').
declared(must_cooperate_with_ai_office/2, 'market surveillance authority must cooperate with AI Office on compliance evaluation', 'celex:32024R1689/oj#art_75').
declared(must_inform_board_and_authorities/2, 'market surveillance authority must inform Board and other authorities of non-compliance consideration', 'celex:32024R1689/oj#art_75').
declared(may_request_information_enforcement/2, 'market surveillance authority may request AI Office to enforce access to information', 'celex:32024R1689/oj#art_75').
declared(must_supply_information/3, 'AI Office must supply relevant information to requesting authority within deadline', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'market surveillance authority must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
ai_office_has_powers(S) :-
    general_purpose_ai_system(S),
    based_on_model(S, M),
    provider(P),
    develops(P, M),
    develops(P, S).
must_cooperate_with_ai_office(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system(S),
    usable_directly_by_deployer_for_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(A, S).
must_inform_board_and_authorities(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).
may_request_information_enforcement(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    unable_to_conclude_investigation_due_to_information_access(A, S),
    made_all_appropriate_efforts_to_obtain_information(A, S).
must_supply_information(AiOffice, A, info_request(S)) :-
    ai_office(AiOffice),
    market_surveillance_authority(A),
    may_request_information_enforcement(A, S),
    within(days(30)).
must_safeguard_confidentiality(A, I) :-
    market_surveillance_authority(A),
    obtained_from_ai_office(I).
provenance(ai_office_has_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_enforcement/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(supervised_in_ai_regulatory_sandbox/1, 'testing conducted within an AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(grounds_for_non_compliance_exist/2, 'authority has grounds to consider conditions are not met', 'celex:32024R1689/oj#art_76').
declared(decision_taken_on_testing/2, 'authority has taken a decision regarding testing', 'celex:32024R1689/oj#art_76').
declared(objection_issued/2, 'authority has issued an objection regarding testing', 'celex:32024R1689/oj#art_76').
declared(must_verify_compliance_with_art_60/2, 'verify compliance as part of sandbox supervision', 'celex:32024R1689/oj#art_76').
declared(may_allow_derogation_from_art_60_conditions/2, 'allow testing in derogation from specific conditions', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/2, 'suspend or terminate testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(may_require_modification_of_testing/2, 'require modification of testing aspects', 'celex:32024R1689/oj#art_76').
declared(must_indicate_grounds_and_challenge_procedure/2, 'indicate grounds and challenge procedure for decision or objection', 'celex:32024R1689/oj#art_76').
declared(must_communicate_grounds_to_other_authorities/2, 'communicate grounds to authorities in other member states', 'celex:32024R1689/oj#art_76').
supervised_in_ai_regulatory_sandbox(S) :-
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(_Sandbox).
grounds_for_non_compliance_exist(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    informed_of_serious_incident(A, S).
grounds_for_non_compliance_exist(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    other_grounds_for_non_compliance(A, S).
decision_taken_on_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    may_suspend_or_terminate_testing(A, S).
decision_taken_on_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    may_require_modification_of_testing(A, S).
must_verify_compliance_with_art_60(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).
may_allow_derogation_from_art_60_conditions(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).
may_suspend_or_terminate_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_non_compliance_exist(A, S).
may_require_modification_of_testing(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    grounds_for_non_compliance_exist(A, S).
must_indicate_grounds_and_challenge_procedure(A, DecisionOrObjection) :-
    market_surveillance_authority(A),
    ( decision_taken_on_testing(A, _S) ; objection_issued(A, _S) ),
    decision_or_objection(DecisionOrObjection).
must_communicate_grounds_to_other_authorities(A, S) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    decision_taken_on_testing(A, S),
    tested_in_other_member_state(S, _OtherState).
informed_of_serious_incident(_A, _S).
other_grounds_for_non_compliance(_A, _S).
decision_or_objection(_D).
tested_in_other_member_state(_S, _State).
provenance(supervised_in_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_non_compliance_exist/2, 'celex:32024R1689/oj#art_76').
provenance(decision_taken_on_testing/2, 'celex:32024R1689/oj#art_76').
provenance(objection_issued/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance_with_art_60/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_derogation_from_art_60_conditions/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification_of_testing/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge_procedure/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_authorities/2, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(fundamental_rights_authority/1, 'national public authority supervising fundamental rights obligations', 'celex:32024R1689/oj#art_77').
declared(high_risk_ai_system_annex_iii/1, 'high-risk AI system referred to in Annex III', 'celex:32024R1689/oj#art_77').
declared(must_request_documentation/2, 'authority requests documentation under the regulation', 'celex:32024R1689/oj#art_77').
declared(must_inform_msa_of_request/2, 'authority informs market surveillance authority of documentation request', 'celex:32024R1689/oj#art_77').
declared(must_identify_fundamental_rights_authorities/1, 'Member State identifies relevant authorities', 'celex:32024R1689/oj#art_77').
declared(must_publish_authority_list/1, 'Member State makes list of authorities publicly available', 'celex:32024R1689/oj#art_77').
declared(must_notify_authority_list/2, 'Member State notifies list to recipient', 'celex:32024R1689/oj#art_77').
declared(must_keep_authority_list_updated/1, 'Member State keeps list up to date', 'celex:32024R1689/oj#art_77').
declared(may_request_testing/2, 'authority requests testing through technical means', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority organises testing', 'celex:32024R1689/oj#art_77').
declared(must_treat_information_confidentially/2, 'authority treats obtained information according to confidentiality obligations', 'celex:32024R1689/oj#art_77').
fundamental_rights_authority(A) :-
    national_competent_authority(A).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S).
must_request_documentation(A, S) :-
    fundamental_rights_authority(A),
    high_risk_ai_system_annex_iii(S),
    access_necessary_for_mandate(A, S).
must_inform_msa_of_request(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    must_request_documentation(A, _S).
must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).
must_publish_authority_list(MS) :-
    member_state(MS).
must_notify_authority_list(MS, Recipient) :-
    member_state(MS),
    (Recipient = commission ; member_state(Recipient)).
must_keep_authority_list_updated(MS) :-
    member_state(MS).
may_request_testing(A, S) :-
    fundamental_rights_authority(A),
    high_risk_ai_system_annex_iii(S),
    documentation_insufficient_to_ascertain_infringement(A, S).
must_organise_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system_annex_iii(S),
    may_request_testing(_A, S).
must_treat_information_confidentially(A, Info) :-
    fundamental_rights_authority(A),
    obtained_pursuant_to_art_77(A, Info).
provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(high_risk_ai_system_annex_iii/1, 'celex:32024R1689/oj#art_77').
provenance(must_request_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_msa_of_request/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_publish_authority_list/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_authority_list/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_authority_list_updated/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'obligation to protect confidential information obtained during tasks', 'celex:32024R1689/oj#art_78').
declared(must_request_only_necessary_data/2, 'obligation to limit data requests to what is strictly necessary', 'celex:32024R1689/oj#art_78').
declared(must_implement_cybersecurity_measures/2, 'obligation to protect security and confidentiality of obtained data', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/2, 'obligation to delete collected data once purpose is fulfilled', 'celex:32024R1689/oj#art_78').
declared(prohibited_disclosure_of_confidential_exchange/1, 'prohibition on disclosing confidential exchanges without consultation under specific conditions', 'celex:32024R1689/oj#art_78').
declared(sensitive_operational_data_excluded_from_exchange/1, 'exclusion of sensitive operational data from confidential exchanges', 'celex:32024R1689/oj#art_78').
declared(must_keep_technical_documentation_on_premises/2, 'obligation for LEA providers to keep technical documentation within their premises', 'celex:32024R1689/oj#art_78').
declared(must_allow_access_to_documentation/2, 'obligation to grant immediate access to technical documentation upon request', 'celex:32024R1689/oj#art_78').
declared(restricted_access_by_security_clearance/2, 'restriction of documentation access to staff with appropriate clearance', 'celex:32024R1689/oj#art_78').
declared(permitted_exchange_with_third_country_authority/1, 'permission to exchange confidential info with third countries under arrangements', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Entity, Information) :-
    involved_in_application_of_regulation(Entity),
    obtained_during_tasks(Entity, Information).
involved_in_application_of_regulation(commission).
involved_in_application_of_regulation(E) :- market_surveillance_authority(E).
involved_in_application_of_regulation(E) :- notified_body(E).
involved_in_application_of_regulation(E) :- natural_or_legal_person_involved(E).
must_request_only_necessary_data(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    strictly_necessary_for_risk_assessment(Data),
    strictly_necessary_for_exercise_of_powers(Data).
must_implement_cybersecurity_measures(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    obtained_during_tasks(Authority, Data),
    adequate_and_effective(Measure).
must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    collected_data(Authority, Data),
    no_longer_needed_for_purpose(Data).
prohibited_disclosure_of_confidential_exchange(Exchange) :-
    confidential_exchange_between_competent_authorities(Exchange),
    involves_high_risk_ai_system_for_law_enforcement(Exchange),
    disclosure_would_jeopardise_public_and_national_security(Exchange),
    \+ prior_consultation_held(Exchange).
sensitive_operational_data_excluded_from_exchange(Exchange) :-
    confidential_exchange_between_competent_authorities(Exchange),
    relates_to_law_enforcement_activities(Exchange),
    contains_sensitive_operational_data(Exchange).
must_keep_technical_documentation_on_premises(Authority, Documentation) :-
    law_enforcement_immigration_or_asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system_for_specific_use(S),
    technical_documentation(Documentation, S).
must_allow_access_to_documentation(Authority, Documentation) :-
    must_keep_technical_documentation_on_premises(Authority, Documentation),
    market_surveillance_authority(MSA),
    upon_request(MSA, Documentation).
restricted_access_by_security_clearance(Staff, Documentation) :-
    must_allow_access_to_documentation(_Authority, Documentation),
    staff_of_market_surveillance_authority(Staff),
    holds_appropriate_security_clearance(Staff).
permitted_exchange_with_third_country_authority(Exchange) :-
    commission_or_member_state(Sender),
    regulatory_authority_of_third_country(Recipient),
    bilateral_or_multilateral_confidentiality_arrangement(Sender, Recipient),
    guarantees_adequate_level_of_confidentiality(Arrangement).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_of_confidential_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(sensitive_operational_data_excluded_from_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(must_keep_technical_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_allow_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(restricted_access_by_security_clearance/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country_authority/1, 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').

% ==== celex:32024R1689/oj#art_79 ====
declared(ai_system_presenting_risk/1, 'AI system presenting risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_79').
declared(noncompliance_reason/2, 'reason for non-compliance of an AI system', 'celex:32024R1689/oj#art_79').
ai_system_presenting_risk(S) :-
    ai_system(S),
    risk(R),
    presents_risk_to_health_or_safety_or_fundamental_rights(S, R).
must_evaluate_compliance(A, S) :-
    market_surveillance_authority(A),
    ai_system_presenting_risk(S),
    sufficient_reason_to_consider_risk(A, S).
must_inform_fundamental_rights_body(A, S) :-
    market_surveillance_authority(A),
    ai_system_presenting_risk(S),
    fundamental_rights_risk_identified(S).
must_cooperate_with_authority(O, A) :-
    operator(O),
    market_surveillance_authority(A),
    evaluation_ongoing(A, _S).
must_require_corrective_action(A, O) :-
    market_surveillance_authority(A),
    operator(O),
    ai_system(S),
    non_compliance_found(A, S).
must_inform_notified_body(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    corrective_action_required(A, S).
must_inform_cross_border_noncompliance(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    non_compliance_not_restricted_to_national_territory(A, S).
must_take_corrective_action(O, S) :-
    operator(O),
    ai_system(S),
    making_available_on_market(S),
    corrective_action_required(_A, S).
must_take_provisional_measure(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    \+ adequate_corrective_action_taken(_O, S),
    period_expired(A, S).
must_notify_provisional_measure(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    provisional_measure_taken(A, S).
noncompliance_reason(S, prohibited_ai_practice) :-
    ai_system(S),
    non_compliance_found(_A, S).
noncompliance_reason(S, high_risk_requirement_failure) :-
    ai_system(S),
    non_compliance_found(_A, S).
noncompliance_reason(S, harmonised_standard_shortcoming) :-
    ai_system(S),
    non_compliance_found(_A, S).
noncompliance_reason(S, transparency_obligation_noncompliance) :-
    ai_system(S),
    non_compliance_found(_A, S).
must_inform_other_authorities(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    \+ initiating_authority(A, S).
provisional_measure_deemed_justified(S) :-
    ai_system(S),
    provisional_measure_taken(_A, S),
    \+ objection_raised_within_period(S).
must_ensure_restrictive_measure(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    non_compliance_found(_B, S).
provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_fundamental_rights_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_cross_border_noncompliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measure/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_provisional_measure/2, 'celex:32024R1689/oj#art_79').
provenance(noncompliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_other_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measure/2, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').

% ==== celex:32024R1689/oj#art_80 ====
declared(classified_as_non_high_risk/1, 'AI system classified by provider as non-high-risk', 'celex:32024R1689/oj#art_80').
declared(sufficient_reason_to_consider_high_risk/1, 'market surveillance authority has sufficient reason to consider AI system is high-risk', 'celex:32024R1689/oj#art_80').
declared(evaluation_of_classification/1, 'evaluation of AI system classification as high-risk', 'celex:32024R1689/oj#art_80').
declared(found_high_risk/1, 'AI system found to be high-risk during evaluation', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/1, 'use of AI system is not restricted to national territory', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent_requirements/1, 'AI system misclassified as non-high-risk to circumvent requirements', 'celex:32024R1689/oj#art_80').
declared(must_evaluate_classification/2, 'market surveillance authority must evaluate AI system classification', 'celex:32024R1689/oj#art_80').
declared(must_require_compliance_action/2, 'market surveillance authority must require provider to take compliance action', 'celex:32024R1689/oj#art_80').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and Member States', 'celex:32024R1689/oj#art_80').
declared(must_bring_into_compliance/2, 'provider must bring AI system into compliance', 'celex:32024R1689/oj#art_80').
declared(must_take_corrective_action/2, 'provider must take corrective action for AI systems on market', 'celex:32024R1689/oj#art_80').
provenance(classified_as_non_high_risk/1, 'celex:32024R1689/oj#art_80').
provenance(sufficient_reason_to_consider_high_risk/1, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/1, 'celex:32024R1689/oj#art_80').
provenance(found_high_risk/1, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/1, 'celex:32024R1689/oj#art_80').
provenance(must_evaluate_classification/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_80').
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
    classified_as_non_high_risk(S),
    sufficient_reason_to_consider_high_risk(S).
evaluation_of_classification(S) :-
    ai_system(S),
    classified_as_non_high_risk(S),
    sufficient_reason_to_consider_high_risk(S).
must_require_compliance_action(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    found_high_risk(S).
found_high_risk(S) :-
    ai_system(S),
    evaluation_of_classification(S).
must_inform_commission_and_member_states(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    found_high_risk(S),
    use_not_restricted_to_national_territory(S).
must_bring_into_compliance(P, S) :-
    provider(P),
    ai_system(S),
    found_high_risk(S).
must_take_corrective_action(P, S) :-
    provider(P),
    ai_system(S),
    found_high_risk(S),
    making_available_on_market(S).
misclassified_to_circumvent_requirements(S) :-
    ai_system(S),
    classified_as_non_high_risk(S),
    evaluation_of_classification(S).

% ==== celex:32024R1689/oj#art_81 ====
declared(union_safeguard_procedure_applies/1, 'circumstance triggering the Union safeguard procedure', 'celex:32024R1689/oj#art_81').
declared(must_enter_consultation/2, 'Commission obligation to consult on a national measure', 'celex:32024R1689/oj#art_81').
declared(must_evaluate_national_measure/2, 'Commission obligation to evaluate a national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide_justification/2, 'Commission obligation to decide if a national measure is justified', 'celex:32024R1689/oj#art_81').
declared(must_notify_decision/2, 'Commission obligation to notify its decision to an authority', 'celex:32024R1689/oj#art_81').
declared(must_inform_authorities/2, 'Commission obligation to inform other authorities of a decision', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member State obligation to take restrictive measures on an AI system', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_measure/2, 'Member State obligation to withdraw an unjustified measure', 'celex:32024R1689/oj#art_81').
declared(must_apply_standard_procedure/2, 'Commission obligation to apply procedure for standard shortcomings', 'celex:32024R1689/oj#art_81').
declared(objection_raised/1, 'market surveillance authority raised objection to a measure', 'celex:32024R1689/oj#art_81').
declared(commission_considers_contrary_to_law/1, 'Commission considers a measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(non_compliance_with_art_5/1, 'non-compliance concerns prohibition in Article 5', 'celex:32024R1689/oj#art_81').
declared(measure_justified/1, 'Commission considers the national measure justified', 'celex:32024R1689/oj#art_81').
declared(measure_unjustified/1, 'Commission considers the national measure unjustified', 'celex:32024R1689/oj#art_81').
declared(shortcoming_in_standards/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
union_safeguard_procedure_applies(M) :-
    objection_raised(M).
union_safeguard_procedure_applies(M) :-
    commission_considers_contrary_to_law(M).
must_enter_consultation(commission, M) :-
    union_safeguard_procedure_applies(M),
    market_surveillance_authority(A),
    operator(O).
must_evaluate_national_measure(commission, M) :-
    union_safeguard_procedure_applies(M).
must_decide_justification(commission, M) :-
    union_safeguard_procedure_applies(M).
must_notify_decision(commission, M) :-
    union_safeguard_procedure_applies(M),
    market_surveillance_authority(A).
must_inform_authorities(commission, M) :-
    union_safeguard_procedure_applies(M).
must_take_restrictive_measures(member_state, S) :-
    measure_justified(M),
    ai_system(S).
must_withdraw_measure(member_state, M) :-
    measure_unjustified(M).
must_apply_standard_procedure(commission, M) :-
    measure_justified(M),
    shortcoming_in_standards(M).
provenance(union_safeguard_procedure_applies/1, 'celex:32024R1689/oj#art_81').
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_standard_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_art_5/1, 'celex:32024R1689/oj#art_81').
provenance(measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(shortcoming_in_standards/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(compliant_but_risky_ai_system/1, 'high-risk AI system that complies with the regulation but presents a risk', 'celex:32024R1689/oj#art_82').
declared(must_require_risk_mitigation_measures/2, 'market surveillance authority requires operator to take measures for compliant but risky system', 'celex:32024R1689/oj#art_82').
declared(must_take_corrective_action/2, 'operator ensures corrective action for compliant but risky system', 'celex:32024R1689/oj#art_82').
declared(must_inform_commission_and_member_states/2, 'member state informs commission and other member states of finding', 'celex:32024R1689/oj#art_82').
declared(must_evaluate_national_measures/2, 'commission evaluates national measures taken for compliant but risky system', 'celex:32024R1689/oj#art_82').
declared(must_communicate_decision/2, 'commission communicates decision on national measures', 'celex:32024R1689/oj#art_82').
compliant_but_risky_ai_system(S) :-
    ai_system(S),
    high_risk_ai_system(S),
    presents_risk_to_health_or_safety_or_fundamental_rights_or_public_interest(S).
must_require_risk_mitigation_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    compliant_but_risky_ai_system(S),
    evaluation_performed_under_art_79(Authority, S),
    consultation_with_national_public_authority(Authority, S).
must_take_corrective_action(Operator, S) :-
    operator(Operator),
    compliant_but_risky_ai_system(S),
    made_available_on_union_market(Operator, S),
    timeline_prescribed_by_authority(S).
must_inform_commission_and_member_states(MemberState, Finding) :-
    finding_of_compliant_but_risky_system(Finding),
    member_state_concerned(MemberState, Finding).
must_evaluate_national_measures(Commission, Measures) :-
    ai_office(Commission),
    national_measures_taken(Measures),
    consultation_with_member_states_and_operators(Commission, Measures).
must_communicate_decision(Commission, Decision) :-
    ai_office(Commission),
    decision_on_national_measures(Decision).
provenance(compliant_but_risky_ai_system/1, 'celex:32024R1689/oj#art_82').
provenance(must_require_risk_mitigation_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(formal_non_compliance/1, 'finding of formal non-compliance under Article 83(1)', 'celex:32024R1689/oj#art_83').
declared(ce_marking_affixed_in_violation/1, 'CE marking affixed in violation of Article 48', 'celex:32024R1689/oj#art_83').
declared(ce_marking_not_affixed/1, 'CE marking has not been affixed', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_of_conformity_not_drawn_up/1, 'EU declaration of conformity has not been drawn up', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'EU declaration of conformity has not been drawn up correctly', 'celex:32024R1689/oj#art_83').
declared(registration_in_eu_database_not_carried_out/1, 'registration in the EU database has not been carried out', 'celex:32024R1689/oj#art_83').
declared(authorised_representative_not_appointed/1, 'no authorised representative has been appointed where applicable', 'celex:32024R1689/oj#art_83').
declared(technical_documentation_not_available/1, 'technical documentation is not available', 'celex:32024R1689/oj#art_83').
declared(must_end_non_compliance/2, 'market surveillance authority requires provider to end non-compliance', 'celex:32024R1689/oj#art_83').
declared(non_compliance_persists/1, 'formal non-compliance persists after prescribed period', 'celex:32024R1689/oj#art_83').
declared(must_restrict_or_prohibit/2, 'market surveillance authority must restrict or prohibit making available on market', 'celex:32024R1689/oj#art_83').
declared(must_recall_or_withdraw/2, 'market surveillance authority must ensure recall or withdrawal from market', 'celex:32024R1689/oj#art_83').
formal_non_compliance(S) :-
    ce_marking_affixed_in_violation(S).
formal_non_compliance(S) :-
    ce_marking_not_affixed(S).
formal_non_compliance(S) :-
    eu_declaration_of_conformity_not_drawn_up(S).
formal_non_compliance(S) :-
    eu_declaration_of_conformity_not_drawn_up_correctly(S).
formal_non_compliance(S) :-
    registration_in_eu_database_not_carried_out(S).
formal_non_compliance(S) :-
    authorised_representative_not_appointed(S).
formal_non_compliance(S) :-
    technical_documentation_not_available(S).
must_end_non_compliance(A, S) :-
    market_surveillance_authority(A),
    provider(_P),
    formal_non_compliance(S).
must_restrict_or_prohibit(A, S) :-
    market_surveillance_authority(A),
    non_compliance_persists(S).
must_recall_or_withdraw(A, S) :-
    market_surveillance_authority(A),
    non_compliance_persists(S).
provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_of_conformity_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_in_eu_database_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(authorised_representative_not_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(non_compliance_persists/1, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit/2, 'celex:32024R1689/oj#art_83').
provenance(must_recall_or_withdraw/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'structure designated by the Commission to perform testing support tasks', 'celex:32024R1689/oj#art_84').
declared(must_designate_union_ai_testing_support_structure/2, 'Commission obligation to designate testing support structures', 'celex:32024R1689/oj#art_84').
declared(must_provide_independent_advice/2, 'obligation of testing support structures to provide advice on request', 'celex:32024R1689/oj#art_84').
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
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(has_grounds_to_consider_infringement/1, 'person having grounds to consider infringement of this regulation', 'celex:32024R1689/oj#art_85').
declared(relevant_market_surveillance_authority/2, 'market surveillance authority relevant to a complaint', 'celex:32024R1689/oj#art_85').
declared(must_take_into_account_for_market_surveillance/2, 'authority must take complaint into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(must_handle_complaint_according_to_procedures/2, 'authority must handle complaint in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
permitted_lodge_complaint(Person, Authority) :-
    has_grounds_to_consider_infringement(Person),
    relevant_market_surveillance_authority(Authority, Person).
must_take_into_account_for_market_surveillance(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    permitted_lodge_complaint(_Person, Authority),
    complaint(Complaint).
must_handle_complaint_according_to_procedures(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    permitted_lodge_complaint(_Person, Authority),
    complaint(Complaint).
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account_for_market_surveillance/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint_according_to_procedures/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(affected_person/1, 'natural person subject to a decision with adverse impact', 'celex:32024R1689/oj#art_86').
declared(high_risk_ai_system_listed_in_annex_iii/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#art_86').
declared(exempt_from_explanation_right/1, 'AI system exempt from explanation right under Union or national law', 'celex:32024R1689/oj#art_86').
declared(explanation_right_provided_under_union_law/1, 'right to explanation already provided under Union law', 'celex:32024R1689/oj#art_86').
high_risk_ai_system_listed_in_annex_iii(S) :-
    ai_system(S).
exempt_from_explanation_right(S) :-
    high_risk_ai_system_listed_in_annex_iii(S),
    exception_from_obligation_applies(S).
explanation_right_provided_under_union_law(_P) :-
    right_provided_under_union_law(_P).
must_provide_explanation(D, P) :-
    deployer(D),
    affected_person(P),
    decision_based_on_high_risk_ai_system(D, P, S),
    high_risk_ai_system_listed_in_annex_iii(S),
    \+ exempt_from_explanation_right(S),
    \+ explanation_right_provided_under_union_law(P),
    produces_legal_effects_or_significantly_affects(P, S),
    adverse_impact_considered(P).
decision_based_on_high_risk_ai_system(D, P, S) :-
    deployer(D),
    affected_person(P),
    ai_system(S),
    decision_taken_by_deployer(D, P, S).
produces_legal_effects_or_significantly_affects(P, S) :-
    affected_person(P),
    ai_system(S),
    legal_effects_or_significant_effect(P, S).
adverse_impact_considered(P) :-
    affected_person(P).
provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(high_risk_ai_system_listed_in_annex_iii/1, 'celex:32024R1689/oj#art_86').
provenance(exempt_from_explanation_right/1, 'celex:32024R1689/oj#art_86').
provenance(explanation_right_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_high_risk_ai_system/3, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects_or_significantly_affects/2, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_considered/1, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').

% ==== celex:32024R1689/oj#art_87 ====
declared(reporting_of_infringements_applies/1, 'reporting of infringements and protection of reporting persons under Directive 2019/1937 applies', 'celex:32024R1689/oj#art_87').
reporting_of_infringements_applies(infringement_of_regulation).
provenance(reporting_of_infringements_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
must_supervise_and_enforce_chapter_v(commission, obligations(providers_of_general_purpose_ai_models)).
may_request_exercise_of_powers(Authority, powers(section_5)) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate_to_assist(request(Authority, powers(section_5))).
necessary_and_proportionate_to_assist(request(Authority, powers(section_5))) :-
    market_surveillance_authority(Authority).
provenance(must_supervise_and_enforce_chapter_v/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').
provenance(necessary_and_proportionate_to_assist/1, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').

% ==== celex:32024R1689/oj#art_89 ====
declared(may_monitor_compliance/1, 'AI Office may take actions to monitor compliance', 'celex:32024R1689/oj#art_89').
declared(has_right_to_lodge_complaint/1, 'downstream provider has right to lodge complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(must_be_duly_reasoned/1, 'complaint must be duly reasoned and indicate required information', 'celex:32024R1689/oj#art_89').
may_monitor_compliance(ai_office).
has_right_to_lodge_complaint(D) :-
    downstream_provider(D).
must_be_duly_reasoned(complaint(D, infringement(Model))) :-
    downstream_provider(D),
    general_purpose_ai_model(Model),
    indicates_point_of_contact(complaint(D, infringement(Model)), Model),
    describes_relevant_facts(complaint(D, infringement(Model))),
    identifies_provisions_concerned(complaint(D, infringement(Model))),
    states_reason_for_infringement(complaint(D, infringement(Model))).
provenance(may_monitor_compliance/1, 'celex:32024R1689/oj#art_89').
provenance(has_right_to_lodge_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(must_be_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'independent expert panel advising on general-purpose AI models', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'formal alert issued by the scientific panel regarding systemic risks', 'celex:32024R1689/oj#art_90').
declared(board/1, 'AI Board established under this Regulation', 'celex:32024R1689/oj#art_90').
may_provide_qualified_alert(Panel, Alert) :-
    scientific_panel(Panel),
    qualified_alert(Alert),
    reason_to_suspect_risk(Panel, Alert).
reason_to_suspect_risk(_Panel, Alert) :-
    qualified_alert(Alert),
    general_purpose_ai_model(M),
    poses_concrete_identifiable_risk_at_union_level(M).
reason_to_suspect_risk(_Panel, Alert) :-
    qualified_alert(Alert),
    general_purpose_ai_model(M),
    meets_conditions_of_art_51(M).
meets_conditions_of_art_51(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_inform_board(AIOffice, measure(Measure)) :-
    ai_office(AIOffice),
    qualified_alert(_Alert),
    exercise_powers_for_assessment(AIOffice, _Alert),
    measure_taken(Measure).
required_qualified_alert_content(Alert) :-
    qualified_alert(Alert),
    duly_reasoned(Alert),
    indicates_provider_contact(Alert),
    describes_facts_and_reasons(Alert).
indicates_provider_contact(Alert) :-
    qualified_alert(Alert),
    general_purpose_ai_model(M),
    provider(P),
    provides_model(P, M),
    point_of_contact(P, _Contact).
describes_facts_and_reasons(Alert) :-
    qualified_alert(Alert),
    relevant_facts_described(Alert),
    reasons_for_alert_stated(Alert).
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect_risk/2, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_of_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert_content/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_provider_contact/1, 'celex:32024R1689/oj#art_90').
provenance(describes_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(may_request_documentation/2, 'Commission may request provider to provide documentation or information', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before requesting information', 'celex:32024R1689/oj#art_91').
declared(may_issue_request_for_scientific_panel/2, 'Commission may issue request for information upon substantiated request from scientific panel', 'celex:32024R1689/oj#art_91').
declared(must_supply_information/2, 'Provider or representative must supply requested information', 'celex:32024R1689/oj#art_91').
declared(request_for_information_applies/1, 'Request for information meets formal requirements of Article 91(4)', 'celex:32024R1689/oj#art_91').
may_request_documentation(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M).
may_initiate_structured_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M).
may_issue_request_for_scientific_panel(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M),
    duly_substantiated_request_from_scientific_panel,
    access_necessary_and_proportionate_for_scientific_panel_tasks.
request_for_information_applies(Request) :-
    states_legal_basis(Request),
    states_purpose(Request),
    specifies_required_information(Request),
    sets_period_for_provision(Request),
    indicates_fines_for_incorrect_information(Request).
must_supply_information(Provider, Request) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M),
    request_for_information_applies(Request).
must_supply_information(Representative, Request) :-
    authorised_representative(Representative),
    provider(_P),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(_P, _M),
    represents(Representative, _P),
    request_for_information_applies(Request).
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information_applies/1, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(permitted_evaluation_purpose/1, 'purpose for which the AI Office may conduct an evaluation', 'celex:32024R1689/oj#art_92').
declared(request_for_access_applies/1, 'request for access to a general-purpose AI model for evaluation', 'celex:32024R1689/oj#art_92').
declared(valid_request_for_access/1, 'request for access that states legal basis, purpose, reasons, period and fines', 'celex:32024R1689/oj#art_92').
permitted_evaluation_purpose(assess_compliance(M)) :-
    general_purpose_ai_model(M),
    information_gathered_insufficient(M).
permitted_evaluation_purpose(investigate_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_supply_requested_information(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    request_for_access_applies(M).
must_supply_requested_information(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    request_for_access_applies(M).
must_provide_access_to_model(A, M) :-
    general_purpose_ai_model(M),
    request_for_access_applies(M),
    authorised_to_represent_provider(A, M).
valid_request_for_access(R) :-
    request_for_access_applies(R),
    states_legal_basis(R),
    states_purpose(R),
    states_reasons(R),
    sets_period(R),
    states_fines_for_failure(R).
provenance(permitted_evaluation_purpose/1, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access_to_model/2, 'celex:32024R1689/oj#art_92').
provenance(request_for_access_applies/1, 'celex:32024R1689/oj#art_92').
provenance(valid_request_for_access/1, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(may_request_measure/2, 'Commission may request a provider to take a specific measure', 'celex:32024R1689/oj#art_93').
declared(necessary_and_appropriate/1, 'condition for Commission to request measures', 'celex:32024R1689/oj#art_93').
declared(serious_and_substantiated_concern_of_systemic_risk_at_union_level/1, 'concern arising from evaluation under Article 92', 'celex:32024R1689/oj#art_93').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before requesting measure', 'celex:32024R1689/oj#art_93').
declared(may_make_commitments_binding/2, 'Commission may make provider commitments binding by decision', 'celex:32024R1689/oj#art_93').
declared(offers_commitments_to_implement_mitigation_measures/2, 'provider offers commitments during structured dialogue to address systemic risk', 'celex:32024R1689/oj#art_93').
may_request_measure(commission, compliance(P, obligations(art_53, art_54))) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).
may_request_measure(commission, implement_mitigation_measures(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    serious_and_substantiated_concern_of_systemic_risk_at_union_level(evaluation(art_92)).
may_request_measure(commission, restrict_making_available_on_market(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).
may_request_measure(commission, withdraw(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).
may_request_measure(commission, recall(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).
may_initiate_structured_dialogue(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(_M).
may_make_commitments_binding(commission, commitments(P, mitigation_measures(systemic_risk_at_union_level))) :-
    provider(P),
    general_purpose_ai_model(_M),
    offers_commitments_to_implement_mitigation_measures(P, systemic_risk_at_union_level).
provenance(may_request_measure/2, 'celex:32024R1689/oj#art_93').
provenance(necessary_and_appropriate/1, 'celex:32024R1689/oj#art_93').
provenance(serious_and_substantiated_concern_of_systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments_to_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply/1, 'procedural rights under Regulation 2019/1020 Article 18 apply', 'celex:32024R1689/oj#art_94').
procedural_rights_apply(P) :-
    provider(P),
    general_purpose_ai_model_provider(P).
general_purpose_ai_model_provider(P) :-
    provider(P),
    provides_general_purpose_ai_model(P, _M).
declared(provides_general_purpose_ai_model/2, 'provider develops or places a general-purpose AI model on the market', 'celex:32024R1689/oj#art_94').
provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_94').
provenance(provides_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(code_of_conduct/1, 'voluntary code of conduct for AI systems', 'celex:32024R1689/oj#art_95').
declared(must_encourage_code_of_conduct/2, 'obligation to encourage drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(must_facilitate_code_of_conduct/2, 'obligation to facilitate drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_of_requirements/1, 'voluntary application of Chapter 3 Section 2 requirements to non-high-risk AI systems', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_of_specific_requirements/1, 'voluntary application of specific requirements to all AI systems based on objectives and KPIs', 'celex:32024R1689/oj#art_95').
declared(environmental_sustainability_objective/1, 'code objective regarding environmental sustainability and energy efficiency', 'celex:32024R1689/oj#art_95').
declared(ai_literacy_objective/1, 'code objective regarding promotion of AI literacy', 'celex:32024R1689/oj#art_95').
declared(inclusive_design_objective/1, 'code objective regarding inclusive and diverse design of AI systems', 'celex:32024R1689/oj#art_95').
declared(vulnerable_persons_impact_objective/1, 'code objective regarding impact on vulnerable persons, accessibility and gender equality', 'celex:32024R1689/oj#art_95').
declared(ethical_guidelines_element/1, 'code element based on Union ethical guidelines for trustworthy AI', 'celex:32024R1689/oj#art_95').
declared(drawn_up_by_provider/1, 'code drawn up by individual provider', 'celex:32024R1689/oj#art_95').
declared(drawn_up_by_deployer/1, 'code drawn up by individual deployer', 'celex:32024R1689/oj#art_95').
declared(drawn_up_by_representative_organisation/1, 'code drawn up by organisation representing providers or deployers', 'celex:32024R1689/oj#art_95').
declared(stakeholder_involvement/1, 'involvement of interested stakeholders including civil society and academia in code drafting', 'celex:32024R1689/oj#art_95').
declared(sme_interests_considered/1, 'specific interests and needs of SMEs and start-ups taken into account', 'celex:32024R1689/oj#art_95').
must_encourage_code_of_conduct(ai_office, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).
must_encourage_code_of_conduct(member_states, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).
must_facilitate_code_of_conduct(ai_office, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).
must_facilitate_code_of_conduct(member_states, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).
must_facilitate_code_of_conduct(ai_office, voluntary_application_of_specific_requirements(C)) :-
    code_of_conduct(C).
must_facilitate_code_of_conduct(member_states, voluntary_application_of_specific_requirements(C)) :-
    code_of_conduct(C).
voluntary_application_of_requirements(C) :-
    code_of_conduct(C),
    \+ high_risk_ai_system(_S),
    intended_for_non_high_risk_systems(C).
voluntary_application_of_specific_requirements(C) :-
    code_of_conduct(C),
    has_clear_objectives(C),
    has_key_performance_indicators(C).
environmental_sustainability_objective(C) :-
    code_of_conduct(C),
    addresses_energy_efficient_programming(C).
ai_literacy_objective(C) :-
    code_of_conduct(C),
    promotes_ai_literacy(C).
inclusive_design_objective(C) :-
    code_of_conduct(C),
    promotes_inclusive_development_teams(C).
vulnerable_persons_impact_objective(C) :-
    code_of_conduct(C),
    assesses_impact_on_vulnerable_persons(C).
ethical_guidelines_element(C) :-
    code_of_conduct(C),
    incorporates_union_ethical_guidelines(C).
drawn_up_by_provider(C) :-
    code_of_conduct(C),
    provider(P),
    drafted_by(P, C).
drawn_up_by_deployer(C) :-
    code_of_conduct(C),
    deployer(D),
    drafted_by(D, C).
drawn_up_by_representative_organisation(C) :-
    code_of_conduct(C),
    representative_organisation(O),
    drafted_by(O, C).
stakeholder_involvement(C) :-
    code_of_conduct(C),
    involves_civil_society(C).
stakeholder_involvement(C) :-
    code_of_conduct(C),
    involves_academia(C).
sme_interests_considered(C) :-
    code_of_conduct(C),
    considers_sme_needs(C).
provenance(code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_encourage_code_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_code_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_specific_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(environmental_sustainability_objective/1, 'celex:32024R1689/oj#art_95').
provenance(ai_literacy_objective/1, 'celex:32024R1689/oj#art_95').
provenance(inclusive_design_objective/1, 'celex:32024R1689/oj#art_95').
provenance(vulnerable_persons_impact_objective/1, 'celex:32024R1689/oj#art_95').
provenance(ethical_guidelines_element/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by_provider/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by_deployer/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by_representative_organisation/1, 'celex:32024R1689/oj#art_95').
provenance(stakeholder_involvement/1, 'celex:32024R1689/oj#art_95').
provenance(sme_interests_considered/1, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'Commission obligation to develop guidelines on specific topic', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'Commission obligation to update previously adopted guidelines', 'celex:32024R1689/oj#art_96').
declared(must_consider_needs/2, 'Commission obligation to pay attention to needs of specific entities when issuing guidelines', 'celex:32024R1689/oj#art_96').
declared(must_take_account_of/2, 'Commission obligation to consider state of art or standards in guidelines', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(commission, practical_implementation(regulation)).
must_develop_guidelines(commission, application(requirements_and_obligations(articles([8,9,10,11,12,13,14,15,25])))).
must_develop_guidelines(commission, prohibited_practices(art_5)).
must_develop_guidelines(commission, practical_implementation(substantial_modification)).
must_develop_guidelines(commission, practical_implementation(transparency_obligations(art_50))).
must_develop_guidelines(commission, relationship_with_union_harmonisation_legislation(annex_i)).
must_develop_guidelines(commission, relationship_with_other_union_law).
must_develop_guidelines(commission, application(definition(ai_system))).
must_consider_needs(commission, smes_including_startups).
must_consider_needs(commission, local_public_authorities).
must_consider_needs(commission, sectors_most_likely_affected).
must_take_account_of(commission, generally_acknowledged_state_of_the_art(ai)).
must_take_account_of(commission, harmonised_standards(arts_40_41)).
must_take_account_of(commission, common_specifications(arts_40_41)).
must_take_account_of(commission, union_harmonisation_technical_specifications).
must_update_guidelines(commission, request(member_states)).
must_update_guidelines(commission, request(ai_office)).
must_update_guidelines(commission, own_initiative).
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider_needs/2, 'celex:32024R1689/oj#art_96').
provenance(must_take_account_of/2, 'celex:32024R1689/oj#art_96').
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
declared(delegation_period_applies/1, 'delegation of power has a defined duration and extension mechanism', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_delegation_report/2, 'Commission must report on delegation of power before period ends', 'celex:32024R1689/oj#art_97').
declared(delegation_revocable_by_body/2, 'delegation of power may be revoked by a specified body', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts_before_adoption/2, 'Commission must consult Member State experts before adopting delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify_delegated_act/2, 'Commission must notify adopted delegated act to specified bodies', 'celex:32024R1689/oj#art_97').
declared(entry_into_force_condition_applies/1, 'conditions for entry into force of delegated act apply', 'celex:32024R1689/oj#art_97').
delegated_power_conferred_on_commission(delegated_acts).
delegation_period_applies(delegated_acts).
must_draw_up_delegation_report(commission, delegation_of_power) :-
    delegation_period_applies(delegated_acts).
delegation_revocable_by_body(european_parliament, delegation_of_power).
delegation_revocable_by_body(council, delegation_of_power).
must_consult_experts_before_adoption(commission, experts_designated_by_member_states) :-
    delegated_power_conferred_on_commission(delegated_acts).
must_notify_delegated_act(commission, simultaneous_notification(european_parliament, council)) :-
    delegated_power_conferred_on_commission(delegated_acts).
entry_into_force_condition_applies(delegated_act) :-
    delegated_power_conferred_on_commission(delegated_acts).
provenance(delegated_power_conferred_on_commission/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_applies/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_delegation_report/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_revocable_by_body/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts_before_adoption/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(entry_into_force_condition_applies/1, 'celex:32024R1689/oj#art_97').
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
declared(committee/1, 'committee assisting the Commission under Article 98', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning_of_regulation/2, 'committee within the meaning of a specified regulation', 'celex:32024R1689/oj#art_98').
declared(examination_procedure_applies/1, 'examination procedure under Regulation 182/2011 Article 5 applies to the reference', 'celex:32024R1689/oj#art_98').
committee(C) :-
    assists_commission(C).
assists_commission(C) :-
    committee(C).
committee_within_meaning_of_regulation(C, 'celex:32011R0182/oj') :-
    committee(C).
examination_procedure_applies(reference(art_98_par_2)).
provenance(committee/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/2, 'celex:32024R1689/oj#art_98').
provenance(examination_procedure_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
must_lay_down_penalty_rules(MemberState, infringement(Regulation)) :-
    member_state(MemberState),
    regulation(Regulation).
must_notify_penalty_rules(MemberState, commission) :-
    member_state(MemberState).
must_report_annual_fines(MemberState, commission) :-
    member_state(MemberState).
administrative_fine_applies(Infringement, tier(percent(7), eur(35000000))) :-
    prohibited_practice_infringement(Infringement).
administrative_fine_applies(Infringement, tier(percent(3), eur(15000000))) :-
    operator_obligation_infringement(Infringement).
administrative_fine_applies(Infringement, tier(percent(1), eur(7500000))) :-
    incorrect_information_infringement(Infringement).
prohibited_practice_infringement(non_compliance(Article)) :-
    Article = 'celex:32024R1689/oj#art_5'.
operator_obligation_infringement(non_compliance(Article)) :-
    member(Article, [
        'celex:32024R1689/oj#art_16',
        'celex:32024R1689/oj#art_22',
        'celex:32024R1689/oj#art_23',
        'celex:32024R1689/oj#art_24',
        'celex:32024R1689/oj#art_26',
        'celex:32024R1689/oj#art_31',
        'celex:32024R1689/oj#art_33/par_1',
        'celex:32024R1689/oj#art_33/par_3',
        'celex:32024R1689/oj#art_33/par_4',
        'celex:32024R1689/oj#art_34',
        'celex:32024R1689/oj#art_50'
    ]).
incorrect_information_infringement(supply_of_information(Status, Recipient)) :-
    member(Status, [incorrect, incomplete, misleading]),
    member(Recipient, [notified_body, national_competent_authority]).
sme(Operator) :-
    operator(Operator),
    small_or_medium_enterprise(Operator).
undertaking(Offender) :-
    legal_entity(Offender),
    economic_activity(Offender).
provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine_applies/2, 'celex:32024R1689/oj#art_99').
provenance(prohibited_practice_infringement/1, 'celex:32024R1689/oj#art_99').
provenance(operator_obligation_infringement/1, 'celex:32024R1689/oj#art_99').
provenance(incorrect_information_infringement/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
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
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency falling within the scope of this Regulation', 'celex:32024R1689/oj#art_100').
declared(edps/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_100').
declared(administrative_fine/1, 'administrative fine imposed under Article 100', 'celex:32024R1689/oj#art_100').
declared(infringement_of_prohibited_ai_practice/1, 'non-compliance with prohibition in Article 5', 'celex:32024R1689/oj#art_100').
declared(infringement_of_other_requirement/1, 'non-compliance with requirement or obligation other than Article 5', 'celex:32024R1689/oj#art_100').
edps(edps).
union_institution_body_office_or_agency(E) :-
    operator(E).
administrative_fine(fine(Entity, Amount)) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    imposes_administrative_fine(EDPS, Entity, Amount).
imposes_administrative_fine(EDPS, Entity, Amount) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    infringement_of_prohibited_ai_practice(infringement(Entity)),
    max_fine_for_prohibited_practice(Max),
    Amount =< Max.
imposes_administrative_fine(EDPS, Entity, Amount) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    infringement_of_other_requirement(infringement(Entity)),
    max_fine_for_other_requirement(Max),
    Amount =< Max.
max_fine_for_prohibited_practice(eur(1500000)).
max_fine_for_other_requirement(eur(750000)).
must_give_opportunity_to_be_heard(EDPS, Entity) :-
    edps(EDPS),
    union_institution_body_office_or_agency(Entity),
    subject_of_proceedings(Entity).
must_base_decision_on_commented_elements(EDPS, Decision) :-
    edps(EDPS),
    decision_on_administrative_fine(Decision).
must_respect_rights_of_defence(EDPS, Party) :-
    edps(EDPS),
    party_concerned(Party).
must_notify_commission_annually(EDPS, Report) :-
    edps(EDPS),
    annual_report_on_fines_and_litigation(Report).
subject_of_proceedings(Entity) :-
    union_institution_body_office_or_agency(Entity).
party_concerned(Party) :-
    union_institution_body_office_or_agency(Party).
decision_on_administrative_fine(decision(_)).
annual_report_on_fines_and_litigation(report(_)).
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(edps/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine/1, 'celex:32024R1689/oj#art_100').
provenance(infringement_of_prohibited_ai_practice/1, 'celex:32024R1689/oj#art_100').
provenance(infringement_of_other_requirement/1, 'celex:32024R1689/oj#art_100').
provenance(imposes_administrative_fine/3, 'celex:32024R1689/oj#art_100').
provenance(max_fine_for_prohibited_practice/1, 'celex:32024R1689/oj#art_100').
provenance(max_fine_for_other_requirement/1, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commented_elements/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').
provenance(subject_of_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(party_concerned/1, 'celex:32024R1689/oj#art_100').
provenance(decision_on_administrative_fine/1, 'celex:32024R1689/oj#art_100').
provenance(annual_report_on_fines_and_litigation/1, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_101 ====
declared(fineable_infringement_by_gpai_provider/2, 'infringement by provider of general-purpose AI model justifying a fine', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'obligation to communicate preliminary findings before adopting decision', 'celex:32024R1689/oj#art_101').
declared(must_communicate_fine_information/2, 'obligation to communicate information on fines imposed', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts_for_proceedings/1, 'obligation to adopt implementing acts for proceedings regarding fines', 'celex:32024R1689/oj#art_101').
fineable_infringement_by_gpai_provider(P, infringement_of_relevant_provisions) :-
    provider(P),
    general_purpose_ai_model(_M),
    intentionally_or_negligently_infringed(P).
fineable_infringement_by_gpai_provider(P, failure_to_comply_with_information_request) :-
    provider(P),
    general_purpose_ai_model(_M),
    failed_to_comply_with_request(P, document_or_information).
fineable_infringement_by_gpai_provider(P, supply_of_incorrect_information) :-
    provider(P),
    general_purpose_ai_model(_M),
    supplied_incorrect_or_misleading_information(P).
fineable_infringement_by_gpai_provider(P, failure_to_comply_with_measure) :-
    provider(P),
    general_purpose_ai_model(_M),
    failed_to_comply_with_requested_measure(P).
fineable_infringement_by_gpai_provider(P, failure_to_provide_access_for_evaluation) :-
    provider(P),
    general_purpose_ai_model(M),
    failed_to_make_available_access(P, M, evaluation).
must_communicate_preliminary_findings(commission, P) :-
    provider(P),
    general_purpose_ai_model(_M),
    fineable_infringement_by_gpai_provider(P, _Infringement).
must_communicate_fine_information(commission, board) :-
    fineable_infringement_by_gpai_provider(_P, _Infringement).
must_adopt_implementing_acts_for_proceedings(commission).
provenance(fineable_infringement_by_gpai_provider/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information/2, 'celex:32024R1689/oj#art_101').
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
declared(detailed_measure/1, 'measure related to technical specifications and procedures for approval and use of security equipment', 'celex:32024R1689/oj#art_102').
declared(concerns_ai_system/1, 'relates to Artificial Intelligence systems within the meaning of this Regulation', 'celex:32024R1689/oj#art_102').
declared(must_take_into_account_requirements/1, 'obligation to consider requirements set out in Chapter III Section 2 when adopting measures', 'celex:32024R1689/oj#art_102').
detailed_measure(M) :-
    concerns_ai_system(M).
must_take_into_account_requirements(M) :-
    detailed_measure(M).
provenance(detailed_measure/1, 'celex:32024R1689/oj#art_102').
provenance(concerns_ai_system/1, 'celex:32024R1689/oj#art_102').
provenance(must_take_into_account_requirements/1, 'celex:32024R1689/oj#art_102').
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
must_take_into_account_requirements(commission, delegated_act_concerning_ai_safety_component(A)) :-
    delegated_act_pursuant_to_art_17_par_5_unp_1(A),
    concerns_ai_system_which_is_safety_component(A).
delegated_act_pursuant_to_art_17_par_5_unp_1(_A).
concerns_ai_system_which_is_safety_component(A) :-
    ai_system(S),
    safety_component(S),
    subject_of_delegated_act(A, S).
subject_of_delegated_act(_A, _S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
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
declared(must_take_into_account_requirements/2, 'obligation to consider requirements when adopting delegated acts', 'celex:32024R1689/oj#art_104').
declared(adopting_delegated_act_concerning_safety_component_ai_system/2, 'adoption of delegated act concerning AI system that is a safety component', 'celex:32024R1689/oj#art_104').
must_take_into_account_requirements(Actor, requirements(chapter_3_section_2)) :-
    adopting_delegated_act_concerning_safety_component_ai_system(Actor, S),
    ai_system(S),
    safety_component(S).
adopting_delegated_act_concerning_safety_component_ai_system(_Actor, _S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_act_concerning_safety_component_ai_system/2, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account_requirements/2, 'Commission shall take into account requirements when carrying out activities or adopting standards', 'celex:32024R1689/oj#art_105').
declared(ai_system_safety_component/1, 'AI system which is a safety component within the meaning of this Regulation', 'celex:32024R1689/oj#art_105').
declared(commission_activity_pursuant_to_art_8_par_1/1, 'activity carried out by the Commission pursuant to Article 8(1) of Directive 2014/90/EU', 'celex:32024R1689/oj#art_105').
declared(adopting_technical_specifications_and_testing_standards/1, 'adopting technical specifications and testing standards in accordance with Article 8(2) and (3) of Directive 2014/90/EU', 'celex:32024R1689/oj#art_105').
ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).
commission_activity_pursuant_to_art_8_par_1(A) :-
    ai_system_safety_component(_S),
    activity_pursuant_to_directive_2014_90_art_8_par_1(A).
adopting_technical_specifications_and_testing_standards(A) :-
    ai_system_safety_component(_S),
    adoption_of_technical_specifications_or_testing_standards_under_directive_2014_90_art_8(A).
must_take_into_account_requirements(commission, requirements_of_chapter_3_section_2) :-
    commission_activity_pursuant_to_art_8_par_1(_A).
must_take_into_account_requirements(commission, requirements_of_chapter_3_section_2) :-
    adopting_technical_specifications_and_testing_standards(_A).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_105').
provenance(commission_activity_pursuant_to_art_8_par_1/1, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_and_testing_standards/1, 'celex:32024R1689/oj#art_105').
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
declared(must_take_into_account_requirements/2, 'obligation to consider requirements when adopting acts concerning AI safety components', 'celex:32024R1689/oj#art_106').
declared(delegated_act_concerning_ai_safety_component/1, 'delegated act pursuant to Directive 2016/797 Art 5(1) concerning AI systems that are safety components', 'celex:32024R1689/oj#art_106').
declared(implementing_act_concerning_ai_safety_component/1, 'implementing act pursuant to Directive 2016/797 Art 5(11) concerning AI systems that are safety components', 'celex:32024R1689/oj#art_106').
must_take_into_account_requirements(commission, Act) :-
    delegated_act_concerning_ai_safety_component(Act).
must_take_into_account_requirements(commission, Act) :-
    implementing_act_concerning_ai_safety_component(Act).
delegated_act_concerning_ai_safety_component(Act) :-
    ai_system(S),
    safety_component(S).
implementing_act_concerning_ai_safety_component(Act) :-
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(delegated_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_106').
provenance(implementing_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_106').
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
declared(must_take_into_account_requirements/2, 'Commission must consider requirements when adopting delegated acts', 'celex:32024R1689/oj#art_107').
declared(delegated_act_concerning_ai_safety_component/1, 'delegated act pursuant to Regulation 2018/858 Art 5(3) concerning AI safety components', 'celex:32024R1689/oj#art_107').
must_take_into_account_requirements(commission, delegated_act_concerning_ai_safety_component(A)) :-
    delegated_act_concerning_ai_safety_component(A).
delegated_act_concerning_ai_safety_component(A) :-
    adopted_pursuant_to_art_5_par_3_of_2018_858(A),
    concerns_ai_system_as_safety_component(A).
concerns_ai_system_as_safety_component(A) :-
    ai_system(S),
    safety_component(S),
    subject_matter(A, S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').
provenance(delegated_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_107').
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
declared(must_take_into_account_requirements/2, 'obligation to consider requirements when adopting acts concerning AI safety components', 'celex:32024R1689/oj#art_108').
declared(adopting_act_concerning_ai_safety_component/2, 'adoption of an act concerning an AI system that is a safety component', 'celex:32024R1689/oj#art_108').
declared(ai_safety_component/1, 'AI system which is a safety component within the meaning of this Regulation', 'celex:32024R1689/oj#art_108').
declared(requirements_of_chapter_3_section_2/1, 'requirements set out in Chapter III Section 2 of this Regulation', 'celex:32024R1689/oj#art_108').
ai_safety_component(S) :-
    ai_system(S),
    safety_component(S).
requirements_of_chapter_3_section_2(req_ch3_sec2).
adopting_act_concerning_ai_safety_component(Act, S) :-
    ai_safety_component(S),
    atom(Act).
must_take_into_account_requirements(_Actor, Act) :-
    adopting_act_concerning_ai_safety_component(Act, _S),
    requirements_of_chapter_3_section_2(_Req).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_act_concerning_ai_safety_component/2, 'celex:32024R1689/oj#art_108').
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_108').
provenance(requirements_of_chapter_3_section_2/1, 'celex:32024R1689/oj#art_108').
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
declared(must_take_into_account_requirements/2, 'Commission must consider Chapter III Section 2 requirements when adopting implementing acts for AI safety components', 'celex:32024R1689/oj#art_109').
declared(implementing_act_concerns_ai_safety_component/1, 'Implementing act under Regulation 2019/2144 Art 11(2) concerns an AI system that is a safety component', 'celex:32024R1689/oj#art_109').
must_take_into_account_requirements(commission, implementing_act(A)) :-
    implementing_act_concerns_ai_safety_component(A).
implementing_act_concerns_ai_safety_component(A) :-
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(implementing_act_concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_109').
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
references('celex:32024R1689/oj#art_110', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_110', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_110', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_110', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_110', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_110', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_110', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_110', 'celex:32016L0797/oj').

% ==== celex:32024R1689/oj#art_111 ====
declared(component_of_large_scale_it_system/1, 'AI system that is a component of a large-scale IT system listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_or_put_into_service_before/2, 'system placed on market or put into service before a given date', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system/1, 'AI system classified as high-risk under this Regulation', 'celex:32024R1689/oj#art_111').
declared(intended_for_public_authority_use/1, 'AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(general_purpose_ai_model/1, 'AI model capable of a wide range of tasks', 'celex:32024R1689/oj#art_111').
declared(subject_to_significant_design_change_after/2, 'system subject to significant changes in design after a given date', 'celex:32024R1689/oj#art_111').
declared(must_bring_into_compliance_by/2, 'obligation to bring system into compliance with this Regulation by a deadline', 'celex:32024R1689/oj#art_111').
declared(must_take_steps_to_comply_by/2, 'obligation for operator to take necessary steps to comply by a deadline', 'celex:32024R1689/oj#art_111').
component_of_large_scale_it_system(S) :-
    ai_system(S),
    large_scale_it_system_component(S).
placed_on_market_or_put_into_service_before(S, Date) :-
    placing_on_market(S),
    before_date(Date).
placed_on_market_or_put_into_service_before(S, Date) :-
    putting_into_service(S),
    before_date(Date).
high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).
intended_for_public_authority_use(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    public_authority_use(Purpose).
subject_to_significant_design_change_after(S, Date) :-
    ai_system(S),
    significant_design_change(S),
    after_date(Date).
must_bring_into_compliance_by(S, date(2030, 12, 31)) :-
    component_of_large_scale_it_system(S),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)).
regulation_applies_to_high_risk_system(S) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    \+ component_of_large_scale_it_system(S),
    subject_to_significant_design_change_after(S, date(2026, 8, 2)).
must_take_steps_to_comply_by(O, date(2030, 8, 2)) :-
    operator(O),
    high_risk_ai_system(S),
    intended_for_public_authority_use(S),
    (provider(O) ; deployer(O)),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    \+ component_of_large_scale_it_system(S).
must_take_steps_to_comply_by(P, date(2027, 8, 2)) :-
    provider(P),
    general_purpose_ai_model(M),
    placed_on_market_or_put_into_service_before(M, date(2025, 8, 2)).
provenance(component_of_large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_public_authority_use/1, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_change_after/2, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by/2, 'celex:32024R1689/oj#art_111').
provenance(regulation_applies_to_high_risk_system/1, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').

% ==== celex:32024R1689/oj#art_112 ====
must_assess_annex_three_and_prohibited_practices(commission, annually) :-
    true.
must_evaluate_regulation(commission, date(2028, 8, 2)) :-
    true.
must_evaluate_regulation(commission, every_four_years_after(date(2028, 8, 2))) :-
    true.
must_evaluate_ai_office(commission, date(2028, 8, 2)) :-
    true.
must_review_energy_efficiency_standardisation(commission, date(2028, 8, 2)) :-
    true.
must_review_energy_efficiency_standardisation(commission, every_four_years_after(date(2028, 8, 2))) :-
    true.
must_evaluate_voluntary_codes_of_conduct(commission, date(2028, 8, 2)) :-
    true.
must_evaluate_voluntary_codes_of_conduct(commission, every_three_years_after(date(2028, 8, 2))) :-
    true.
must_provide_information_to_commission(board, upon_request(commission)).
must_provide_information_to_commission(member_states, upon_request(commission)).
must_provide_information_to_commission(national_competent_authority, upon_request(commission)).
must_develop_evaluation_methodology(ai_office, methodology(risk_levels, objective_and_participative)).
must_assess_enforcement_by_2031(commission, date(2031, 8, 2)) :-
    true.
provenance(must_assess_annex_three_and_prohibited_practices/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_regulation/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_ai_office/2, 'celex:32024R1689/oj#art_112').
provenance(must_review_energy_efficiency_standardisation/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_voluntary_codes_of_conduct/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information_to_commission/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop_evaluation_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(must_assess_enforcement_by_2031/2, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% ==== celex:32024R1689/oj#art_113 ====
declared(regulation_applies_from/2, 'date from which a provision or the regulation applies', 'celex:32024R1689/oj#art_113').
declared(enters_into_force/2, 'date on which the regulation enters into force', 'celex:32024R1689/oj#art_113').
enters_into_force('celex:32024R1689/oj', days(20, after(publication))).
regulation_applies_from('celex:32024R1689/oj', date(2026, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
regulation_applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
provenance(enters_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(regulation_applies_from/2, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation/1, 'legislation listed in Annex I of the AI Act', 'celex:32024R1689/oj#anx_1').
declared(new_legislative_framework_legislation/1, 'Union harmonisation legislation based on the New Legislative Framework', 'celex:32024R1689/oj#anx_1').
declared(other_union_harmonisation_legislation/1, 'Union harmonisation legislation not based on the New Legislative Framework', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation(L) :-
    new_legislative_framework_legislation(L).
union_harmonisation_legislation(L) :-
    other_union_harmonisation_legislation(L).
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
declared(listed_criminal_offence/1, 'criminal offence listed in Annex II', 'celex:32024R1689/oj#anx_2').
listed_criminal_offence(terrorism).
listed_criminal_offence(trafficking_in_human_beings).
listed_criminal_offence(sexual_exploitation_of_children).
listed_criminal_offence(child_pornography).
listed_criminal_offence(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
listed_criminal_offence(illicit_trafficking_in_weapons_munitions_or_explosives).
listed_criminal_offence(murder).
listed_criminal_offence(grievous_bodily_injury).
listed_criminal_offence(illicit_trade_in_human_organs_or_tissue).
listed_criminal_offence(illicit_trafficking_in_nuclear_or_radioactive_materials).
listed_criminal_offence(kidnapping).
listed_criminal_offence(illegal_restraint).
listed_criminal_offence(hostage_taking).
listed_criminal_offence(crimes_within_jurisdiction_of_international_criminal_court).
listed_criminal_offence(unlawful_seizure_of_aircraft_or_ships).
listed_criminal_offence(rape).
listed_criminal_offence(environmental_crime).
listed_criminal_offence(organised_or_armed_robbery).
listed_criminal_offence(sabotage).
listed_criminal_offence(participation_in_criminal_organisation_involved_in_listed_offence).
provenance(listed_criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system_annex_iii/1, 'AI system listed in Annex III as high-risk', 'celex:32024R1689/oj#anx_3').
declared(biometric_verification_only/1, 'system intended solely to confirm a specific person is who they claim to be', 'celex:32024R1689/oj#anx_3').
declared(financial_fraud_detection_purpose/1, 'purpose of detecting financial fraud', 'celex:32024R1689/oj#anx_3').
declared(travel_document_verification_purpose/1, 'purpose of verifying travel documents', 'celex:32024R1689/oj#anx_3').
declared(administrative_campaign_tool/1, 'tool used to organise or structure political campaigns administratively or logistically without direct exposure to voters', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system_annex_iii(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_only(S).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    biometric_categorisation(Purpose),
    sensitive_attribute_inference(Purpose).
high_risk_ai_system_annex_iii(S) :-
    emotion_recognition_system(S).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    safety_component(S),
    critical_infrastructure_management(S).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_access_determination(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    learning_outcome_evaluation(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    education_level_assessment(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    student_prohibited_behaviour_monitoring(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    recruitment_or_selection(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    work_relationship_decision(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    public_benefit_eligibility_evaluation(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    creditworthiness_evaluation(Purpose),
    \+ financial_fraud_detection_purpose(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    life_health_insurance_risk_assessment(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    emergency_call_dispatch_or_triage(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    law_enforcement_victim_risk_assessment(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    law_enforcement_polygraph(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    evidence_reliability_evaluation(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    offending_risk_assessment(Purpose),
    \+ solely_profiling_based(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    law_enforcement_profiling(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    migration_polygraph(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    migration_risk_assessment(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    asylum_visa_examination_assistance(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    migration_person_identification(Purpose),
    \+ travel_document_verification_purpose(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    judicial_assistance(Purpose).
high_risk_ai_system_annex_iii(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    election_influence(Purpose),
    \+ administrative_campaign_tool(S).
biometric_verification_only(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    biometric_verification(Purpose),
    sole_purpose_confirm_identity(Purpose).
financial_fraud_detection_purpose(P) :-
    intended_purpose(_, P),
    purpose_is_financial_fraud_detection(P).
travel_document_verification_purpose(P) :-
    intended_purpose(_, P),
    purpose_is_travel_document_verification(P).
administrative_campaign_tool(S) :-
    ai_system(S),
    intended_purpose(S, Purpose),
    campaign_administrative_logistics(Purpose),
    \+ direct_voter_exposure(S).
provenance(high_risk_ai_system_annex_iii/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_only/1, 'celex:32024R1689/oj#anx_3').
provenance(financial_fraud_detection_purpose/1, 'celex:32024R1689/oj#anx_3').
provenance(travel_document_verification_purpose/1, 'celex:32024R1689/oj#anx_3').
provenance(administrative_campaign_tool/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(required_technical_documentation_content/2, 'specific information element required in technical documentation for an AI system', 'celex:32024R1689/oj#anx_4').
declared(technical_documentation_applies/1, 'AI system for which technical documentation is required', 'celex:32024R1689/oj#anx_4').
technical_documentation_applies(S) :-
    ai_system(S).
required_technical_documentation_content(S, general_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, intended_purpose_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, provider_name_and_version) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, interaction_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, software_firmware_versions) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, market_placement_forms) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, hardware_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, product_component_visuals) :-
    technical_documentation_applies(S),
    safety_component(S).
required_technical_documentation_content(S, user_interface_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, instructions_for_use) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, development_methods) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, design_specifications) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, system_architecture) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, data_requirements) :-
    technical_documentation_applies(S),
    training_data(_D).
required_technical_documentation_content(S, human_oversight_assessment) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, predetermined_changes) :-
    technical_documentation_applies(S),
    substantial_modification(S).
required_technical_documentation_content(S, validation_testing_procedures) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, cybersecurity_measures) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, monitoring_functioning_control) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, performance_metrics_appropriateness) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, risk_management_system_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, lifecycle_changes_description) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, harmonised_standards_list) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, eu_declaration_of_conformity) :-
    technical_documentation_applies(S).
required_technical_documentation_content(S, post_market_monitoring_system) :-
    technical_documentation_applies(S).
provenance(required_technical_documentation_content/2, 'celex:32024R1689/oj#anx_4').
provenance(technical_documentation_applies/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity/1, 'document declaring conformity of an AI system', 'celex:32024R1689/oj#anx_5').
eu_declaration_of_conformity(D) :-
    must_contain_information(D, ai_system_identification(_)),
    must_contain_information(D, provider_details(_)),
    must_contain_information(D, sole_responsibility_statement),
    must_contain_information(D, conformity_statement),
    must_contain_information(D, harmonised_standard_reference(_)),
    must_contain_information(D, place_and_date_of_issue(_)),
    must_contain_information(D, signatory_details(_)).
must_contain_information(D, personal_data_compliance_statement) :-
    eu_declaration_of_conformity(D),
    involves_personal_data_processing(D).
must_contain_information(D, notified_body_details(_)) :-
    eu_declaration_of_conformity(D),
    notified_body_involved(D).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(must_contain_information/2, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
declared(must_verify_quality_management_system_compliance/2, 'provider verifies quality management system complies with Article 17', 'celex:32024R1689/oj#anx_6').
declared(must_examine_technical_documentation/2, 'provider examines technical documentation to assess compliance with essential requirements', 'celex:32024R1689/oj#anx_6').
declared(must_verify_design_and_development_consistency/2, 'provider verifies design and development process and post-market monitoring are consistent with technical documentation', 'celex:32024R1689/oj#anx_6').
conformity_assessment_based_on_internal_control(S) :-
    ai_system(S),
    must_verify_quality_management_system_compliance(_P, S),
    must_examine_technical_documentation(_P, S),
    must_verify_design_and_development_consistency(_P, S).
must_verify_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S).
must_examine_technical_documentation(P, S) :-
    provider(P),
    ai_system(S).
must_verify_design_and_development_consistency(P, S) :-
    provider(P),
    ai_system(S).
provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_and_development_consistency/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(conformity_assessment_procedure_annex_vii/1, 'conformity assessment based on quality management system and technical documentation', 'celex:32024R1689/oj#anx_7').
conformity_assessment_procedure_annex_vii(S) :-
    ai_system(S).
must_apply_for_qms_assessment(P, B) :-
    provider(P),
    notified_body(B).
must_apply_for_technical_documentation_assessment(P, B) :-
    provider(P),
    notified_body(B).
must_assess_quality_management_system(B, P) :-
    notified_body(B),
    provider(P),
    must_apply_for_qms_assessment(P, B).
must_examine_technical_documentation(B, S) :-
    notified_body(B),
    ai_system(S),
    must_apply_for_technical_documentation_assessment(_P, B).
must_notify_qms_decision(B, R) :-
    notified_body(B),
    (provider(R) ; authorised_representative(R)),
    must_assess_quality_management_system(B, _P).
must_maintain_approved_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    must_assess_quality_management_system(_B, P).
must_notify_qms_changes(P, B) :-
    provider(P),
    notified_body(B),
    must_maintain_approved_quality_management_system(P, _S).
must_grant_access_to_data_sets(P, B) :-
    provider(P),
    notified_body(B),
    must_examine_technical_documentation(B, _S).
must_issue_technical_documentation_certificate(B, S) :-
    notified_body(B),
    ai_system(S),
    must_examine_technical_documentation(B, S).
must_refuse_technical_documentation_certificate(B, S) :-
    notified_body(B),
    ai_system(S),
    must_examine_technical_documentation(B, S),
    \+ must_issue_technical_documentation_certificate(B, S).
must_inform_of_system_changes(P, B) :-
    provider(P),
    notified_body(B),
    must_issue_technical_documentation_certificate(B, _S).
must_allow_surveillance_access(P, B) :-
    provider(P),
    notified_body(B),
    must_maintain_approved_quality_management_system(P, _S).
must_carry_out_periodic_audits(B, P) :-
    notified_body(B),
    provider(P),
    must_maintain_approved_quality_management_system(P, _S).
provenance(conformity_assessment_procedure_annex_vii/1, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_qms_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_apply_for_technical_documentation_assessment/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_qms_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_approved_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data_sets/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_technical_documentation_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_technical_documentation_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_system_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_surveillance_access/2, 'celex:32024R1689/oj#anx_7').
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
must_submit_registration_info_section_a(Provider, System) :-
    provider(Provider),
    intended_purpose(System),
    required_registration_field_section_a(provider_details),
    required_registration_field_section_a(system_identification),
    required_registration_field_section_a(intended_purpose_description),
    required_registration_field_section_a(operating_logic_description),
    required_registration_field_section_a(system_status),
    required_registration_field_section_a(market_presence).
must_submit_registration_info_section_b(Provider, System) :-
    provider(Provider),
    intended_purpose(System),
    required_registration_field_section_b(provider_details),
    required_registration_field_section_b(system_identification),
    required_registration_field_section_b(intended_purpose_description),
    required_registration_field_section_b(not_high_risk_condition),
    required_registration_field_section_b(not_high_risk_grounds),
    required_registration_field_section_b(system_status),
    required_registration_field_section_b(market_presence).
must_submit_registration_info_section_c(Deployer, System) :-
    deployer(Deployer),
    required_registration_field_section_c(deployer_details),
    required_registration_field_section_c(submitter_details),
    required_registration_field_section_c(database_entry_url),
    required_registration_field_section_c(fundamental_rights_impact_assessment_summary).
required_registration_field_section_a(authorised_representative_details).
required_registration_field_section_a(notified_body_certificate).
required_registration_field_section_a(eu_declaration_of_conformity).
required_registration_field_section_a(additional_information_url).
required_registration_field_section_a(electronic_instructions_for_use) :-
    \+ exempt_instructions_for_use(_System).
required_registration_field_section_b(authorised_representative_details).
required_registration_field_section_c(data_protection_impact_assessment_summary).
exempt_instructions_for_use(System) :-
    law_enforcement(System).
provenance(must_submit_registration_info_section_a/2, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_info_section_b/2, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_info_section_c/2, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_field_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_field_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_field_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(exempt_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
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
declared(required_registration_information/1, 'information item required for registration of testing in real world conditions', 'celex:32024R1689/oj#anx_9').
required_registration_information(unique_identification_number).
required_registration_information(provider_and_deployer_details).
required_registration_information(ai_system_description).
required_registration_information(testing_plan_summary).
required_registration_information(suspension_or_termination_info).
must_provide_registration_information(Actor, Info) :-
    operator(Actor),
    testing_in_real_world_conditions(_T),
    required_registration_information(Info).
must_keep_up_to_date_registration_information(Actor, Info) :-
    operator(Actor),
    testing_in_real_world_conditions(_T),
    required_registration_information(Info).
provenance(required_registration_information/1, 'celex:32024R1689/oj#anx_9').
provenance(must_provide_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date_registration_information/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system/1, 'large-scale IT system in the area of Freedom, Security and Justice listed in Annex X', 'celex:32024R1689/oj#anx_10').
large_scale_it_system(schengen_information_system).
large_scale_it_system(visa_information_system).
large_scale_it_system(eurodac).
large_scale_it_system(entry_exit_system).
large_scale_it_system(european_travel_information_and_authorisation_system).
large_scale_it_system(ecris_tcn).
large_scale_it_system(interoperability_framework_borders_visa).
large_scale_it_system(interoperability_framework_police_judicial_asylum_migration).
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
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(required_technical_documentation_content/1, 'content requirements for technical documentation of general-purpose AI models', 'celex:32024R1689/oj#anx_11').
declared(required_systemic_risk_documentation_content/1, 'additional content requirements for technical documentation of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_11').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model presenting systemic risk', 'celex:32024R1689/oj#anx_11').
required_technical_documentation_content(M) :-
    general_purpose_ai_model(M).
required_systemic_risk_documentation_content(M) :-
    general_purpose_ai_model_with_systemic_risk(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
provenance(required_technical_documentation_content/1, 'celex:32024R1689/oj#anx_11').
provenance(required_systemic_risk_documentation_content/1, 'celex:32024R1689/oj#anx_11').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_transparency_information/1, 'technical documentation for general-purpose AI models to downstream providers', 'celex:32024R1689/oj#anx_12').
declared(contains_general_description/1, 'documentation includes general description of the model', 'celex:32024R1689/oj#anx_12').
declared(contains_development_description/1, 'documentation includes description of model elements and development process', 'celex:32024R1689/oj#anx_12').
required_transparency_information(I) :-
    contains_general_description(I),
    contains_development_description(I).
contains_general_description(I) :-
    describes_intended_tasks(I),
    describes_acceptable_use_policies(I),
    describes_release_and_distribution(I),
    describes_interaction_capabilities(I),
    describes_software_versions(I),
    describes_architecture_and_parameters(I),
    describes_input_output_modality(I),
    describes_model_licence(I).
contains_development_description(I) :-
    describes_integration_technical_means(I),
    describes_input_output_specifications(I),
    describes_training_testing_validation_data(I).
provenance(required_transparency_information/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_development_description/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(designation_criterion_applies/1, 'criterion relevant for designating general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_13').
declared(must_take_into_account_designation_criteria/2, 'Commission obligation to consider criteria when determining systemic risk', 'celex:32024R1689/oj#anx_13').
declared(has_systemic_risk_equivalence/1, 'general-purpose AI model has capabilities or impact equivalent to high-impact thresholds', 'celex:32024R1689/oj#anx_13').
must_take_into_account_designation_criteria(commission, M) :-
    general_purpose_ai_model(M),
    has_systemic_risk_equivalence(M).
has_systemic_risk_equivalence(M) :-
    general_purpose_ai_model(M),
    designation_criterion_applies(C),
    satisfies_criterion(M, C).
designation_criterion_applies(number_of_parameters).
designation_criterion_applies(dataset_quality_or_size).
designation_criterion_applies(training_computation_amount).
designation_criterion_applies(input_output_modalities).
designation_criterion_applies(capability_benchmarks_and_evaluations).
designation_criterion_applies(internal_market_impact).
designation_criterion_applies(number_of_registered_end_users).
satisfies_criterion(M, number_of_parameters) :-
    general_purpose_ai_model(M),
    parameter_count(M, _Count).
satisfies_criterion(M, dataset_quality_or_size) :-
    general_purpose_ai_model(M),
    dataset_measure(M, _Measure).
satisfies_criterion(M, training_computation_amount) :-
    general_purpose_ai_model(M),
    training_computation(M, _Amount).
satisfies_criterion(M, input_output_modalities) :-
    general_purpose_ai_model(M),
    modality_profile(M, _Profile).
satisfies_criterion(M, capability_benchmarks_and_evaluations) :-
    general_purpose_ai_model(M),
    capability_evaluation(M, _Evaluation).
satisfies_criterion(M, internal_market_impact) :-
    general_purpose_ai_model(M),
    high_internal_market_impact(M).
satisfies_criterion(M, number_of_registered_end_users) :-
    general_purpose_ai_model(M),
    registered_end_user_count(M, _Count).
high_internal_market_impact(M) :-
    general_purpose_ai_model(M),
    made_available_to_business_users(M, N),
    N >= 10000.
provenance(designation_criterion_applies/1, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account_designation_criteria/2, 'celex:32024R1689/oj#anx_13').
provenance(has_systemic_risk_equivalence/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

