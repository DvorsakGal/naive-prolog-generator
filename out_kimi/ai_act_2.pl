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
% There are 427 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous access_limited_necessary/2.
:- discontiguous access_necessary_for_conformity_assessment/1.
:- discontiguous accessible_only_to_authorities/1.
:- discontiguous accreditation_certificate_notification/2.
:- discontiguous achieves_equivalent_level_of_protection/2.
:- discontiguous actor_adopting_delegated_act/2.
:- discontiguous actor_adopting_implementing_act/2.
:- discontiguous acts_as_adco/2.
:- discontiguous acts_contrary_to_obligations/1.
:- discontiguous added_to_annex/2.
:- discontiguous additional_information_url/2.
:- discontiguous adequate/1.
:- discontiguous adequate_competent_personnel/1.
:- discontiguous adequate_corrective_action_taken/3.
:- discontiguous adopting_detailed_measures/2.
:- discontiguous adopting_technical_specifications_and_testing_standards/2.
:- discontiguous adopts_rules_of_procedure/2.
:- discontiguous adversarial_example_prevention/1.
:- discontiguous adverse_impact_on_health_safety_or_fundamental_rights/2.
:- discontiguous advisory_forum/1.
:- discontiguous affects_compliance/2.
:- discontiguous affects_intended_purpose/2.
:- discontiguous affixed_by_or_under_instructions/3.
:- discontiguous agree_terms_and_conditions/2.
:- discontiguous ai_system_for_biometric_categorisation/1.
:- discontiguous alias/2.
:- discontiguous allows_continuous_compliance_evaluation/2.
:- discontiguous alternative_authority_for_financial_institution/2.
:- discontiguous alternative_market_surveillance_authority_designated/2.
:- discontiguous amending_directive/1.
:- discontiguous amendment_constraint/1.
:- discontiguous annex_3_point_8_applies/1.
:- discontiguous annex_of_directive/1.
:- discontiguous appeal_procedure_available/1.
:- discontiguous applicable_elements_trustworthy_ai/1.
:- discontiguous application_accompanied_by/2.
:- discontiguous application_includes/2.
:- discontiguous applies_from/2.
:- discontiguous applies_only_to_testing_data/1.
:- discontiguous applies_to/1.
:- discontiguous applies_to_all_ai_systems/1.
:- discontiguous applies_to_other_than_high_risk/1.
:- discontiguous applies_to_reporting/2.
:- discontiguous applies_to_system/1.
:- discontiguous applies_with_limitation/2.
:- discontiguous appropriate_circumstances/0.
:- discontiguous appropriate_cybersecurity_technical_solutions/1.
:- discontiguous appropriate_level_of_accuracy/1.
:- discontiguous appropriate_level_of_cybersecurity/1.
:- discontiguous appropriate_level_of_robustness/1.
:- discontiguous appropriate_mitigation_measures_for_feedback_loops/1.
:- discontiguous appropriate_safeguards_agreed/2.
:- discontiguous appropriate_statistical_properties/1.
:- discontiguous approval_and_use_of_security_equipment/1.
:- discontiguous approved_changes_documentation/1.
:- discontiguous article_5_applies/1.
:- discontiguous assess_criteria/1.
:- discontiguous assess_minimise_environmental_sustainability_impact/1.
:- discontiguous assess_prevent_negative_impact_vulnerable/1.
:- discontiguous assessed_by_notified_body/2.
:- discontiguous assessment_and_monitoring_carried_out_by/1.
:- discontiguous assessment_conclusions/2.
:- discontiguous assessors_different_from_decision_makers/1.
:- discontiguous assisted_by_committee/2.
:- discontiguous attends_without_voting/2.
:- discontiguous authorisation_issued/1.
:- discontiguous authorisation_required/1.
:- discontiguous authorised_as_notified_body/1.
:- discontiguous authorised_representative_appointed/1.
:- discontiguous authorised_representative_details/2.
:- discontiguous authorised_representative_for/2.
:- discontiguous autonomy_and_override_criterion/1.
:- discontiguous available_electronic_format/2.
:- discontiguous aware_of_incident/2.
:- discontiguous aware_of_relevant_standards/1.
:- discontiguous aware_of_risk/2.
:- discontiguous balanced_commercial_interests/1.
:- discontiguous balanced_membership/1.
:- discontiguous balanced_sme_interests/1.
:- discontiguous bankruptcy_or_ceases_activity/1.
:- discontiguous based_on_post_market_monitoring_plan/2.
:- discontiguous becomes_high_risk_after_modification/1.
:- discontiguous benefit_of_deployment_criterion/1.
:- discontiguous bias_detection_correction_necessary/1.
:- discontiguous biometric_verification_system/1.
:- discontiguous built_in_oversight_measures/1.
:- discontiguous carries_out/2.
:- discontiguous carrying_out_activities_pursuant_art_8_par_1/1.
:- discontiguous ce_marking_affixed_to_packaging_or_documentation/1.
:- discontiguous ce_marking_affixed_visibly_legibly_indelibly/1.
:- discontiguous ce_marking_applies/1.
:- discontiguous ce_marking_indicates_other_union_law_requirements/2.
:- discontiguous ce_marking_with_identification_number/2.
:- discontiguous certificate_allows_conformity_evaluation/1.
:- discontiguous certificate_allows_control_in_use/1.
:- discontiguous certificate_copy/2.
:- discontiguous certificate_details/2.
:- discontiguous certificate_extension/2.
:- discontiguous certificate_extension_maximum/2.
:- discontiguous certificate_indicates/4.
:- discontiguous certificate_language_understandable/1.
:- discontiguous certificate_maximum_validity/2.
:- discontiguous certificate_validity_period/2.
:- discontiguous certificates_remain_valid/1.
:- discontiguous certificates_remain_valid_nine_months/1.
:- discontiguous chaired_by/2.
:- discontiguous change_assessment_required/2.
:- discontiguous change_to_qms_list/2.
:- discontiguous changes_approved/2.
:- discontiguous clearly_specified_not_to_change_into_high_risk/2.
:- discontiguous codes_of_practice_cover_obligations/1.
:- discontiguous codes_of_practice_deadline/1.
:- discontiguous codes_of_practice_set_objectives/1.
:- discontiguous collects_performance_data/2.
:- discontiguous combined_risk_management_procedures/1.
:- discontiguous commission/1.
:- discontiguous commission_adopts_implementing_act_template/1.
:- discontiguous commission_decides/2.
:- discontiguous commission_decides_authorisation_justified/2.
:- discontiguous commission_decision_systemic_risk/1.
:- discontiguous commission_empowered_to_amend_annex_5/0.
:- discontiguous commission_entrusts_ai_office/1.
:- discontiguous commission_exclusive_supervision_enforcement/1.
:- discontiguous commission_may_consider_reports/2.
:- discontiguous commission_objection/1.
:- discontiguous commission_shall_assess_and_amend_if_appropriate/0.
:- discontiguous committee_within_meaning/2.
:- discontiguous common_specifications_cover_all_requirements/1.
:- discontiguous competent_persons_take_notification_decisions/1.
:- discontiguous complainant_associated_with_proceedings/1.
:- discontiguous complaint_duly_reasoned/1.
:- discontiguous complaint_handled_per_procedures/1.
:- discontiguous complaint_taken_into_account/1.
:- discontiguous complements_data_protection_impact_assessment/1.
:- discontiguous complies_with_harmonised_standard/2.
:- discontiguous complies_with_requirements/1.
:- discontiguous component_of/2.
:- discontiguous comprises_risk_management_steps/1.
:- discontiguous concerning_ai_system/1.
:- discontiguous concerns/2.
:- discontiguous concludes_compliance_with_chapter_3_section_2/2.
:- discontiguous condition_add_anx_3/2.
:- discontiguous condition_for_testing/2.
:- discontiguous condition_remove_anx_3/2.
:- discontiguous conditions_fulfilled_for_common_specifications/0.
:- discontiguous confidential_information_not_disclosed_without_consultation/1.
:- discontiguous confidentiality_attack_prevention/1.
:- discontiguous confidentiality_obligations_apply/0.
:- discontiguous confidentiality_obligations_apply/1.
:- discontiguous confidentiality_procedures/1.
:- discontiguous conformity_assessment_carried_out_by_provider/1.
:- discontiguous conformity_assessment_procedure_annex_7/1.
:- discontiguous conformity_assessment_procedure_internal_control/1.
:- discontiguous conformity_verified/2.
:- discontiguous conforms_accessibility_requirements/1.
:- discontiguous considered_provider/2.
:- discontiguous consistent_performance/1.
:- discontiguous consulted_relevant_authority/1.
:- discontiguous continued_fulfilment_of_requirements/1.
:- discontiguous continues_to_learn_after_placement/1.
:- discontiguous continues_to_satisfy/1.
:- discontiguous contractual_arrangement_obligations_allocated/2.
:- discontiguous controller_of_database/1.
:- discontiguous convenes_meetings/2.
:- discontiguous cooperate_for_consistent_practices/2.
:- discontiguous coordination_ensured/2.
:- discontiguous corrective_action/2.
:- discontiguous corrective_action_ensures_compliance/2.
:- discontiguous corrective_action_required_for/1.
:- discontiguous corrective_measures_required/2.
:- discontiguous corrigibility_criterion/1.
:- discontiguous court_of_justice_acting_in_judicial_capacity/1.
:- discontiguous covered_by_medical_device_regulation/1.
:- discontiguous covered_by_qms/2.
:- discontiguous covers_requirements/2.
:- discontiguous covers_similar_intended_purpose/3.
:- discontiguous covers_system/2.
:- discontiguous creditworthiness_system/1.
:- discontiguous criminal_offence/1.
:- discontiguous criteria_for_systemic_risk_designation/1.
:- discontiguous criteria_listed_in_par_2_considered/1.
:- discontiguous critical_infrastructure_management/1.
:- discontiguous cybersecurity_certificate_or_statement_issued/1.
:- discontiguous data_deletion_on_termination/1.
:- discontiguous data_governance_practices/1.
:- discontiguous data_poisoning_prevention/1.
:- discontiguous data_processed_criterion/1.
:- discontiguous data_protection_impact_summary/3.
:- discontiguous data_protection_supervisory_authority/2.
:- discontiguous data_sharing_restrictions/1.
:- discontiguous data_training_requirement_not_met/1.
:- discontiguous death_occurred/1.
:- discontiguous decides_change_assessment/3.
:- discontiguous decision_based_on_high_risk_ai_output/2.
:- discontiguous decision_grounds_indicated/1.
:- discontiguous declaration_contains_annex_5_information/1.
:- discontiguous declaration_contains_harmonisation_legislation_identification/1.
:- discontiguous declaration_of_conformity_copy/2.
:- discontiguous declaration_of_conformity_identifies_system/2.
:- discontiguous declaration_of_interests/1.
:- discontiguous declaration_states_compliance_with_chapter_3_section_2/1.
:- discontiguous declaration_translated_for_member_states/1.
:- discontiguous declared_accuracy_metrics/1.
:- discontiguous deemed_fulfilled_by_financial_governance/1.
:- discontiguous deemed_justified/1.
:- discontiguous delegated_act/1.
:- discontiguous delegated_act/2.
:- discontiguous delegation_period/2.
:- discontiguous delegation_period_start/1.
:- discontiguous deleted_after_bias_corrected_or_retention/1.
:- discontiguous deletion_does_not_decrease_protection/1.
:- discontiguous demonstrates_conformity_with/2.
:- discontiguous demonstrates_conformity_with_harmonised_standards/1.
:- discontiguous dependency_on_outcome_criterion/1.
:- discontiguous deployer_can_interpret_output/1.
:- discontiguous deployer_can_use_appropriately/1.
:- discontiguous deployer_details/2.
:- discontiguous deployer_implemented_oversight_measures/1.
:- discontiguous deployer_information_training/1.
:- discontiguous deployer_subject_to_fria/1.
:- discontiguous designated_for_period/3.
:- discontiguous designated_under_conditions/2.
:- discontiguous detailed_description_elements/1.
:- discontiguous determine_number_of_experts/2.
:- discontiguous determines_satisfaction/3.
:- discontiguous developed_by_public_authority_or_person/1.
:- discontiguous digital_ce_marking/1.
:- discontiguous direct_connection_with_financial_services/1.
:- discontiguous directed_to_pre_deployment_services/2.
:- discontiguous disclosure_required_by_law/1.
:- discontiguous documentary_evidence_notification/1.
:- discontiguous documentary_evidence_required/2.
:- discontiguous documentation_at_disposal/2.
:- discontiguous documentation_for_art_18/2.
:- discontiguous documented_impartiality_procedures/1.
:- discontiguous does_not_affect/1.
:- discontiguous does_not_apply_to/1.
:- discontiguous does_not_preclude/1.
:- discontiguous drawn_up_by/2.
:- discontiguous easily_accessible_via_interface/1.
:- discontiguous ecris_tcn_act/1.
:- discontiguous education_access_system/1.
:- discontiguous education_evaluation_system/1.
:- discontiguous education_level_assessment_system/1.
:- discontiguous education_monitoring_system/1.
:- discontiguous effective_enforcement_required/0.
:- discontiguous effective_monitoring_mechanisms/1.
:- discontiguous efficient/1.
:- discontiguous election_influence_system/1.
:- discontiguous emergency_call_system/1.
:- discontiguous emotion_recognition_system/1.
:- discontiguous employment_management_system/1.
:- discontiguous empowered_to_facilitate_coordination/2.
:- discontiguous enables_awareness_automation_bias/1.
:- discontiguous enables_correct_interpretation/1.
:- discontiguous enables_decision_not_to_use_or_override/1.
:- discontiguous enables_intervention_or_interruption/1.
:- discontiguous enables_understand_capacity_and_limitations/1.
:- discontiguous energy_consumption/1.
:- discontiguous ensure_confidentiality/1.
:- discontiguous ensures_confidence/1.
:- discontiguous entitled_to_access_file/2.
:- discontiguous entry_exit_system_act/1.
:- discontiguous environmental_protection/1.
:- discontiguous equivalent_protection_procedures_exist/1.
:- discontiguous established_in_third_country/1.
:- discontiguous established_notified_body/1.
:- discontiguous established_or_located_in_union_or_third_country/1.
:- discontiguous established_under_third_country_law/1.
:- discontiguous etias_act/1.
:- discontiguous eu_declaration_of_conformity_accompanies/1.
:- discontiguous eu_declaration_of_conformity_content/2.
:- discontiguous eu_declaration_of_conformity_referred_in_art_47/1.
:- discontiguous eurodac_act/1.
:- discontiguous european_ai_board/1.
:- discontiguous european_data_protection_supervisor/1.
:- discontiguous evaluation_finds_high_risk/2.
:- discontiguous evaluation_in_progress/2.
:- discontiguous evaluation_in_progress_with_cooperation/3.
:- discontiguous evaluation_required/2.
:- discontiguous examined_by_notified_body/2.
:- discontiguous exception_applies/2.
:- discontiguous exception_for_notifying_authority/1.
:- discontiguous exception_or_restriction_under_union_or_national_law/1.
:- discontiguous exception_post_market_monitoring/1.
:- discontiguous exception_risk_management_system/1.
:- discontiguous exception_serious_incident_reporting/1.
:- discontiguous exceptional_costs_recoverable/2.
:- discontiguous exceptional_reason/1.
:- discontiguous exempt_election_administrative_tool/1.
:- discontiguous exempt_free_open_source/1.
:- discontiguous exempt_free_open_source_model/1.
:- discontiguous exempt_from_art_53_1_a/1.
:- discontiguous exempt_from_art_53_1_b/1.
:- discontiguous exempt_from_notification/1.
:- discontiguous exempt_from_standard_registration/1.
:- discontiguous exempt_sensitive_operational_data_law_enforcement/2.
:- discontiguous exercise_powers_within_law/2.
:- discontiguous existing_post_market_monitoring_system_under_legislation/1.
:- discontiguous existing_union_law_prevention_criterion/1.
:- discontiguous existing_union_law_redress_criterion/1.
:- discontiguous exit_report_taken_into_account/1.
:- discontiguous expert/1.
:- discontiguous extension_period/2.
:- discontiguous extent_of_use_criterion/1.
:- discontiguous facilitates_cross_border_cooperation/1.
:- discontiguous fair_gender_and_geographical_representation/1.
:- discontiguous falls_under_art_50/1.
:- discontiguous falls_under_art_5_or_50/1.
:- discontiguous feedback_loop_risk_addressed/1.
:- discontiguous fees_proportionate_to_sme_size/0.
:- discontiguous fees_required/1.
:- discontiguous field_relevant_for_function/1.
:- discontiguous financial_institution_subject_to_internal_governance_requirements/1.
:- discontiguous financial_supervision_authority/2.
:- discontiguous financial_supervisory_authority/2.
:- discontiguous fine_amount/2.
:- discontiguous fine_amount/3.
:- discontiguous fine_amount_euros/2.
:- discontiguous fine_cap/2.
:- discontiguous fine_communicated_to_board/1.
:- discontiguous fine_consideration/2.
:- discontiguous fine_consideration_factor/2.
:- discontiguous fine_does_not_affect_operation/2.
:- discontiguous fine_effective_proportionate_dissuasive/1.
:- discontiguous fine_imposed_by_court_or_body/1.
:- discontiguous fine_imposed_on_public_authority/1.
:- discontiguous formal_non_compliance/1.
:- discontiguous fosters_voluntary_application/2.
:- discontiguous fundamental_rights_impact_summary/3.
:- discontiguous funds_contribute_to_union_budget/1.
:- discontiguous general_description/1.
:- discontiguous general_purpose_ai_model_provider/2.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous geographical_contextual_behavioural_functional_characteristics/1.
:- discontiguous granted_access/2.
:- discontiguous grounds_for_intervention/1.
:- discontiguous harm_or_concerns_criterion/1.
:- discontiguous harmonised_standard_complied_with/1.
:- discontiguous harmonised_standard_published_for/1.
:- discontiguous harmonised_standards_cover_all_requirements/1.
:- discontiguous has_monitoring_and_supervision_powers/2.
:- discontiguous high_impact_capabilities/1.
:- discontiguous high_impact_capabilities_evaluated/1.
:- discontiguous high_impact_on_internal_market/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_used_by_sensitive_authority/1.
:- discontiguous human_oversight_effective/1.
:- discontiguous human_oversight_prevents_or_minimises_risks/1.
:- discontiguous identification_number_in_promotional_material/2.
:- discontiguous imbalance_of_power_criterion/1.
:- discontiguous impartiality_and_objectivity/1.
:- discontiguous implemented/1.
:- discontiguous implementing_act_issues/1.
:- discontiguous implementing_act_scientific_panel/1.
:- discontiguous inadequate_corrective_action/2.
:- discontiguous includes_interaction_analysis/2.
:- discontiguous inclusive_diverse_design/1.
:- discontiguous independent_of_interested_operators/1.
:- discontiguous independent_of_provider/2.
:- discontiguous information_of_prudential_interest/1.
:- discontiguous informed_consent_documented/1.
:- discontiguous informed_consent_valid/1.
:- discontiguous informs_applicant/3.
:- discontiguous informs_board/2.
:- discontiguous infringement_category/2.
:- discontiguous initially_placed_on_market_or_put_into_service/2.
:- discontiguous instructions_for_use/2.
:- discontiguous instructions_for_use_accompany/1.
:- discontiguous instructions_for_use_appropriate_format/1.
:- discontiguous instructions_for_use_contain/2.
:- discontiguous insurance_risk_pricing_system/1.
:- discontiguous integration_choice_for_existing_systems/2.
:- discontiguous intended_change_to_qms/2.
:- discontiguous intended_for_placing_on_market_or_putting_into_service/1.
:- discontiguous intended_for_sensitive_authority/1.
:- discontiguous intended_purpose_criterion/1.
:- discontiguous intended_purpose_description/2.
:- discontiguous intended_use_in_annex_3_area/1.
:- discontiguous internal_competences_for_external_evaluation/1.
:- discontiguous international_organisation/1.
:- discontiguous interoperability_framework_act/1.
:- discontiguous invited_to_meetings/2.
:- discontiguous invited_to_sub_group/2.
:- discontiguous involves_stakeholders/2.
:- discontiguous issued_certificate/2.
:- discontiguous issued_to_provider/3.
:- discontiguous issues_certificate_or_refusal/2.
:- discontiguous issues_union_technical_documentation_certificate/2.
:- discontiguous judicial_assistance_system/1.
:- discontiguous law_enforcement_evidence_reliability_system/1.
:- discontiguous law_enforcement_polygraph_system/1.
:- discontiguous law_enforcement_profiling_system/1.
:- discontiguous law_enforcement_reoffending_risk_system/1.
:- discontiguous law_enforcement_sandbox_processing/1.
:- discontiguous law_enforcement_testing_no_negative_effect/1.
:- discontiguous law_enforcement_victim_assessment_system/1.
:- discontiguous liability_insurance/1.
:- discontiguous liable_for_testing_damage/2.
:- discontiguous limited_adherence_for_non_systemic_risk_providers/1.
:- discontiguous limited_notification_criteria/2.
:- discontiguous limited_to_necessary_tasks/1.
:- discontiguous logging_enables_recording_of/2.
:- discontiguous logging_event_operation_monitoring/1.
:- discontiguous logging_event_post_market_monitoring/1.
:- discontiguous logging_event_risk_or_modification/1.
:- discontiguous made_publicly_available/1.
:- discontiguous maintain_technical_documentation_under_financial_law/1.
:- discontiguous maintained/1.
:- discontiguous maintains_as_financial_documentation/2.
:- discontiguous manage_conflicts_of_interest/1.
:- discontiguous mandate_empowers_addressed/1.
:- discontiguous market_surveillance_access_to_documentation/2.
:- discontiguous market_surveillance_authority_as_notified_body/1.
:- discontiguous market_surveillance_authority_for_harmonised_product/2.
:- discontiguous market_surveillance_authority_may_request_commission/2.
:- discontiguous market_surveillance_authority_requests/3.
:- discontiguous may_access_exit_reports/2.
:- discontiguous may_adopt_common_specifications/1.
:- discontiguous may_adopt_implementing_act_approval/2.
:- discontiguous may_adopt_implementing_act_common_rules/2.
:- discontiguous may_advise_and_assist/2.
:- discontiguous may_advise_international_matters/1.
:- discontiguous may_allow_derogation/2.
:- discontiguous may_appoint_independent_experts/2.
:- discontiguous may_approve_code_of_practice/1.
:- discontiguous may_ask_support_guidance/2.
:- discontiguous may_assist_expertise_development/1.
:- discontiguous may_assist_sandboxes/1.
:- discontiguous may_authorise_derogation/2.
:- discontiguous may_call_upon_experts/2.
:- discontiguous may_cancel_fine/1.
:- discontiguous may_carry_out_additional_tests/2.
:- discontiguous may_carry_out_tests_directly/2.
:- discontiguous may_collect_and_share_expertise/1.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_contribute_to_coordination/1.
:- discontiguous may_contribute_to_guidance/1.
:- discontiguous may_contribute_to_harmonisation/1.
:- discontiguous may_contribute_to_international_cooperation/1.
:- discontiguous may_cooperate_and_involve_actors/2.
:- discontiguous may_cooperate_with_union_bodies/1.
:- discontiguous may_designate_systemic_risk/2.
:- discontiguous may_develop_voluntary_model_terms/1.
:- discontiguous may_establish/2.
:- discontiguous may_establish_additional_sandbox/2.
:- discontiguous may_establish_sub_groups/2.
:- discontiguous may_establish_union_sandbox/2.
:- discontiguous may_exchange_confidential_information_with_third_countries/2.
:- discontiguous may_exercise_powers/2.
:- discontiguous may_exercise_powers_remotely/2.
:- discontiguous may_extend_provisional_validity/2.
:- discontiguous may_extend_term/2.
:- discontiguous may_facilitate_common_criteria/1.
:- discontiguous may_impose_fine/2.
:- discontiguous may_impose_fine_on_union_institution/2.
:- discontiguous may_include_aspects_in_sectoral_system/1.
:- discontiguous may_include_real_world_testing/1.
:- discontiguous may_increase_fine/1.
:- discontiguous may_initiate_dialogue/2.
:- discontiguous may_initiate_dialogue_before_request/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_integrate_existing_documentation/1.
:- discontiguous may_invite/2.
:- discontiguous may_invite_adherence/2.
:- discontiguous may_invite_participation/2.
:- discontiguous may_issue_recommendations/1.
:- discontiguous may_issue_request_for_information/2.
:- discontiguous may_lodge_complaint/2.
:- discontiguous may_make_commitments_binding/2.
:- discontiguous may_make_exit_report_public/2.
:- discontiguous may_monitor_compliance/2.
:- discontiguous may_notify/2.
:- discontiguous may_opt_out_third_party_assessment/2.
:- discontiguous may_perform_checks/2.
:- discontiguous may_perform_notified_body_activities/1.
:- discontiguous may_prepare/2.
:- discontiguous may_present_arguments/2.
:- discontiguous may_process_special_categories/1.
:- discontiguous may_propose_joint_investigation/2.
:- discontiguous may_provide_advice_on_implementation/1.
:- discontiguous may_provide_common_rules/1.
:- discontiguous may_provide_guidance/2.
:- discontiguous may_provide_opinions_on_alerts/1.
:- discontiguous may_provide_qualified_alert/2.
:- discontiguous may_provide_technical_support/2.
:- discontiguous may_raise_enquiries/2.
:- discontiguous may_reassess_systemic_risk/2.
:- discontiguous may_receive_opinions/1.
:- discontiguous may_reduce_fine/1.
:- discontiguous may_rely_on_code_of_practice/1.
:- discontiguous may_rely_on_code_of_practice/2.
:- discontiguous may_rely_on_previous_assessment/2.
:- discontiguous may_rely_on_provider_assessment/2.
:- discontiguous may_request_access/2.
:- discontiguous may_request_additional_information/2.
:- discontiguous may_request_documentation/2.
:- discontiguous may_request_measures/2.
:- discontiguous may_request_model_access/2.
:- discontiguous may_request_testing/2.
:- discontiguous may_require_further_evidence/3.
:- discontiguous may_require_further_tests/3.
:- discontiguous may_require_modification/2.
:- discontiguous may_seek_non_binding_guidance/2.
:- discontiguous may_submit_reasoned_request/2.
:- discontiguous may_support_ai_literacy/1.
:- discontiguous may_support_joint_activities/1.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous may_suspend_restrict_withdraw_designation/2.
:- discontiguous may_suspend_testing/2.
:- discontiguous may_use_documentation_for_compliance/2.
:- discontiguous may_use_existing_documents/2.
:- discontiguous may_use_national_accreditation_body/2.
:- discontiguous may_withdraw_consent/1.
:- discontiguous measures/1.
:- discontiguous measures_taken/2.
:- discontiguous meets_criteria/2.
:- discontiguous meets_quality_criteria/1.
:- discontiguous member_state/1.
:- discontiguous member_state_designates/1.
:- discontiguous member_state_determines_conditions/2.
:- discontiguous member_state_fails_corrective_measures/2.
:- discontiguous member_state_identifies/1.
:- discontiguous member_state_liability_assumption/1.
:- discontiguous member_state_may_authorise_real_time_remote_biometric/1.
:- discontiguous member_state_may_challenge_common_specification/0.
:- discontiguous member_state_may_introduce_more_restrictive_laws/1.
:- discontiguous member_state_representative/2.
:- discontiguous member_states_market/2.
:- discontiguous methodology_for_evaluation_of_risk_levels/1.
:- discontiguous migration_asylum_application_system/1.
:- discontiguous migration_identification_system/1.
:- discontiguous migration_polygraph_system/1.
:- discontiguous migration_risk_assessment_system/1.
:- discontiguous minimum_logging_for_annex_3_point_1_a/1.
:- discontiguous misclassified_to_circumvent/2.
:- discontiguous mitigation_control_measures/1.
:- discontiguous model_flaw_prevention/1.
:- discontiguous model_poisoning_prevention/1.
:- discontiguous modifies_intended_purpose/2.
:- discontiguous monitor_evaluate_codes_of_practice/1.
:- discontiguous must_adapt_thresholds/2.
:- discontiguous must_adopt_delegated_act/2.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_adopt_implementing_acts_evaluations/2.
:- discontiguous must_adopt_mitigation_measures/2.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_allocate_resources/2.
:- discontiguous must_apply_procedural_rights/1.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_appoint_authorised_representative/1.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_assess_and_mitigate_systemic_risks/1.
:- discontiguous must_assess_impact_on_certificates/2.
:- discontiguous must_assess_need_for_amendment/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assign_identification_number/2.
:- discontiguous must_associate_data_protection_authorities/2.
:- discontiguous must_associate_other_relevant_authorities/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_decision_on_commented_elements/2.
:- discontiguous must_bring_into_compliance/2.
:- discontiguous must_carry_out_assessment_of_enforcement/2.
:- discontiguous must_communicate_authority_identity/2.
:- discontiguous must_communicate_to_other_authorities/2.
:- discontiguous must_complete_full_assessment/2.
:- discontiguous must_comply_by_date/2.
:- discontiguous must_comply_registration/2.
:- discontiguous must_comply_with_registration_obligations/1.
:- discontiguous must_comply_with_registration_obligations/2.
:- discontiguous must_comply_with_requirements/1.
:- discontiguous must_comply_with_requirements/2.
:- discontiguous must_consult_advisory_forum/0.
:- discontiguous must_consult_experts/2.
:- discontiguous must_consult_for_standardisation_request/2.
:- discontiguous must_contribute_to_tasks/2.
:- discontiguous must_cooperate_during_investigation/2.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_competent_authorities/2.
:- discontiguous must_cooperate_with_new_provider/2.
:- discontiguous must_coordinate_with_authorities/2.
:- discontiguous must_coordinate_within_board/2.
:- discontiguous must_delete_data_when_no_longer_needed/1.
:- discontiguous must_demonstrate_alternative_compliance/1.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_conformity/2.
:- discontiguous must_designate_competent_authorities/1.
:- discontiguous must_designate_notifying_authority/2.
:- discontiguous must_designate_single_point_of_contact/2.
:- discontiguous must_develop_expertise/2.
:- discontiguous must_develop_guidance/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_procedures_in_cooperation/0.
:- discontiguous must_develop_single_interface/2.
:- discontiguous must_develop_template/2.
:- discontiguous must_disclose_ai_generated_text/2.
:- discontiguous must_disclose_deep_fake/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_document_use/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_draw_up_declaration_of_conformity/2.
:- discontiguous must_draw_up_integration_documentation/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_draw_up_training_summary/2.
:- discontiguous must_elect/2.
:- discontiguous must_enable_authorised_representative/2.
:- discontiguous must_enable_tasks/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_encourage_and_facilitate_codes_of_practice/2.
:- discontiguous must_encourage_codes_of_practice/2.
:- discontiguous must_encourage_review_adaptation/2.
:- discontiguous must_end_non_compliance/3.
:- discontiguous must_ensure_access/2.
:- discontiguous must_ensure_accessibility/2.
:- discontiguous must_ensure_accuracy_robustness_cybersecurity/2.
:- discontiguous must_ensure_adequate_resources/1.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_confidentiality_of_investigation/2.
:- discontiguous must_ensure_conformity_before_placing/2.
:- discontiguous must_ensure_cooperation_sandbox_authorities/2.
:- discontiguous must_ensure_coordination/1.
:- discontiguous must_ensure_corrective_action_all_systems/2.
:- discontiguous must_ensure_cybersecurity/1.
:- discontiguous must_ensure_cybersecurity_protection/1.
:- discontiguous must_ensure_files_kept/2.
:- discontiguous must_ensure_full_compliance/2.
:- discontiguous must_ensure_human_oversight/2.
:- discontiguous must_ensure_input_data_relevance/2.
:- discontiguous must_ensure_interaction_disclosure/2.
:- discontiguous must_ensure_list_up_to_date/2.
:- discontiguous must_ensure_output_marking/2.
:- discontiguous must_ensure_oversight_measures/2.
:- discontiguous must_ensure_participation/1.
:- discontiguous must_ensure_provider_importer_or_operator_takes_corrective_action/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_ensure_storage_transport_compliance/2.
:- discontiguous must_ensure_subcontractor_meets_requirements/2.
:- discontiguous must_ensure_technical_documentation_available/2.
:- discontiguous must_enter_data/2.
:- discontiguous must_enter_data_deployer/2.
:- discontiguous must_establish_penalty_rules/1.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_sandbox/2.
:- discontiguous must_evaluate_and_report/3.
:- discontiguous must_evaluate_compliance/2.
:- discontiguous must_evaluate_functioning/2.
:- discontiguous must_evaluate_impact_and_effectiveness/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_facilitate_access/2.
:- discontiguous must_facilitate_coordination/2.
:- discontiguous must_facilitate_tasks/2.
:- discontiguous must_follow_conformity_assessment_procedure/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_full_access/2.
:- discontiguous must_grant_source_code_access/2.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_hold_meetings/2.
:- discontiguous must_identify_and_publish_authorities/1.
:- discontiguous must_immediately_inform_parties/2.
:- discontiguous must_immediately_inform_provider_importer_and_authorities/2.
:- discontiguous must_implement_cybersecurity_measures/1.
:- discontiguous must_indicate_contact_details/2.
:- discontiguous must_inform_about_required_suspension_withdrawal/2.
:- discontiguous must_inform_ai_office_suspension/2.
:- discontiguous must_inform_authorised_representative/2.
:- discontiguous must_inform_authorities_of_termination/3.
:- discontiguous must_inform_ceasing_activities/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_commission_and_member_states_of_authorisation/2.
:- discontiguous must_inform_committee_before_draft/0.
:- discontiguous must_inform_deployers/2.
:- discontiguous must_inform_distributors/2.
:- discontiguous must_inform_importers/2.
:- discontiguous must_inform_market_surveillance_authorities/2.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_national_authorities/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_of_objections/2.
:- discontiguous must_inform_of_risk/2.
:- discontiguous must_inform_of_system_operation/2.
:- discontiguous must_inform_other_notified_bodies/2.
:- discontiguous must_inform_provider_or_importer_of_risk/2.
:- discontiguous must_inform_provider_risk/2.
:- discontiguous must_inform_providers_within_days/3.
:- discontiguous must_inform_relevant_authorities/2.
:- discontiguous must_inform_serious_incident/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_investigate_doubted_competence/2.
:- discontiguous must_investigate_risk_causes/2.
:- discontiguous must_investigate_without_delay/2.
:- discontiguous must_issue_standardisation_request/2.
:- discontiguous must_justify_non_compliance_with_technical_solutions/1.
:- discontiguous must_keep_authority_list_up_to_date/1.
:- discontiguous must_keep_declaration_of_conformity/2.
:- discontiguous must_keep_declaration_up_to_date/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_documents_available/2.
:- discontiguous must_keep_list_up_to_date/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_records_available/1.
:- discontiguous must_keep_sandbox_list_updated/2.
:- discontiguous must_keep_technical_documentation/2.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_lay_down_national_rules/2.
:- discontiguous must_lodge_application/2.
:- discontiguous must_maintain_risk_management_system/2.
:- discontiguous must_make_available_documentation/2.
:- discontiguous must_make_contact_information_public/1.
:- discontiguous must_make_files_available/2.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_make_reports_public/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_alter_system_before_informing/2.
:- discontiguous must_not_make_available_until_conformity/2.
:- discontiguous must_not_place_non_conforming/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_authorities/2.
:- discontiguous must_notify_changes/2.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_commission_and_member_states/2.
:- discontiguous must_notify_commission_of_fines/2.
:- discontiguous must_notify_commission_rules/2.
:- discontiguous must_notify_extension/2.
:- discontiguous must_notify_list_to_commission_and_states/1.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_outcomes/2.
:- discontiguous must_notify_penalty_rule_amendments/2.
:- discontiguous must_notify_penalty_rules/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_pay_attention_to/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_investigation/2.
:- discontiguous must_perform_mandate_tasks/1.
:- discontiguous must_perform_model_evaluation/1.
:- discontiguous must_perform_tasks/2.
:- discontiguous must_prepare/2.
:- discontiguous must_provide_assessment_documentation/2.
:- discontiguous must_provide_certificate_information/2.
:- discontiguous must_provide_conformity_assessment_information/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_for_deployer_capabilities/2.
:- discontiguous must_provide_guidance_supervision_support/2.
:- discontiguous must_provide_guidelines/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information_and_documentation/2.
:- discontiguous must_provide_information_clearly/2.
:- discontiguous must_provide_information_on_request/2.
:- discontiguous must_provide_information_to_authorities/2.
:- discontiguous must_provide_information_upon_request/2.
:- discontiguous must_provide_knowledge_exchange/1.
:- discontiguous must_provide_logs_access/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_provide_technical_documentation/3.
:- discontiguous must_provide_technical_expertise/2.
:- discontiguous must_provide_template/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_annual_report/2.
:- discontiguous must_publish_sandbox_list/2.
:- discontiguous must_publish_systemic_risk_list/1.
:- discontiguous must_put_copyright_policy/1.
:- discontiguous must_register_information/2.
:- discontiguous must_repeal_implementing_acts/0.
:- discontiguous must_report_fines_annual/2.
:- discontiguous must_report_prohibited_practices/2.
:- discontiguous must_report_resources/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_serious_incident_to_authority/3.
:- discontiguous must_report_serious_incidents/1.
:- discontiguous must_report_to_ecb/2.
:- discontiguous must_request_authorisation/2.
:- discontiguous must_request_authorisation_without_undue_delay/2.
:- discontiguous must_request_evidence_best_efforts/2.
:- discontiguous must_request_necessary_data_only/1.
:- discontiguous must_require_corrective_action/2.
:- discontiguous must_require_suspend_withdraw_unduly_issued/2.
:- discontiguous must_respect_required_rigour_and_protection/2.
:- discontiguous must_restrict_suspend_withdraw_designation/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_set_up_and_maintain/2.
:- discontiguous must_specify_by_written_agreement/2.
:- discontiguous must_stop_and_delete/2.
:- discontiguous must_stop_use_and_discard/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_report_post_remote/2.
:- discontiguous must_submit_annual_reports_sandbox/2.
:- discontiguous must_submit_declaration_on_request/2.
:- discontiguous must_submit_evaluation_report/3.
:- discontiguous must_submit_final_report_sandbox/2.
:- discontiguous must_submit_findings/3.
:- discontiguous must_submit_notification_application/2.
:- discontiguous must_submit_proposals_to_amend/2.
:- discontiguous must_submit_report/3.
:- discontiguous must_submit_report_on_review/3.
:- discontiguous must_submit_report_within_months/3.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information/3.
:- discontiguous must_suspend_use/2.
:- discontiguous must_suspend_withdraw_or_restrict_certificate/2.
:- discontiguous must_take_account_of_provider_characteristics/2.
:- discontiguous must_take_appropriate_measures/2.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_action/3.
:- discontiguous must_take_corrective_action_all_systems/2.
:- discontiguous must_take_corrective_action_withdraw_or_recall/2.
:- discontiguous must_take_corrective_measures_for_notification/2.
:- discontiguous must_take_full_responsibility/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_ai_act_chapter_3_section_2/1.
:- discontiguous must_take_into_account_ai_safety_component_requirements/2.
:- discontiguous must_take_into_account_ai_safety_requirements/1.
:- discontiguous must_take_into_account_amended_requirements/2.
:- discontiguous must_take_into_account_chapter_3_section_2/1.
:- discontiguous must_take_into_account_contractual_requirements/2.
:- discontiguous must_take_into_account_criteria/2.
:- discontiguous must_take_into_account_positions/2.
:- discontiguous must_take_into_account_regulatory_specificities/1.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_into_account_sme_needs/2.
:- discontiguous must_take_measures_within_seven_days/2.
:- discontiguous must_take_restriction_measures/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_treat_information_confidentially/2.
:- discontiguous must_undergo_conformity_assessment/2.
:- discontiguous must_undertake/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_fundamental_rights_impact_assessment/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_use_annex_7_procedure/1.
:- discontiguous must_use_information_for_dpia/2.
:- discontiguous must_use_simplified_technical_documentation_form/1.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_conformity_documentation/1.
:- discontiguous must_verify_design_development_consistency/2.
:- discontiguous must_verify_quality_management_system/2.
:- discontiguous must_verify_technical_documentation/2.
:- discontiguous must_withdraw_ai_system/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous national_law_of_member_state/2.
:- discontiguous necessary_for_timely_reporting/2.
:- discontiguous new_conformity_assessment_required/1.
:- discontiguous new_conformity_assessment_required/3.
:- discontiguous no_adverse_measures_or_decisions/1.
:- discontiguous no_commercial_activities/1.
:- discontiguous no_conflict_of_interest/1.
:- discontiguous no_consultancy_conflict/1.
:- discontiguous no_external_instructions/1.
:- discontiguous no_fines_for_infringements/2.
:- discontiguous no_fines_for_other_law/2.
:- discontiguous no_longer_provider/1.
:- discontiguous no_significant_risk/1.
:- discontiguous non_compliance_art_5_reason/1.
:- discontiguous non_compliance_found/2.
:- discontiguous non_compliance_not_restricted_nationally/2.
:- discontiguous non_compliance_reason/2.
:- discontiguous non_conforming/1.
:- discontiguous non_conforming_or_falsified/1.
:- discontiguous non_personal_data_insufficient/1.
:- discontiguous not_high_risk_conditions/2.
:- discontiguous not_high_risk_grounds_summary/2.
:- discontiguous not_high_risk_under_art_6_par_3/1.
:- discontiguous not_possible_or_not_warranted/1.
:- discontiguous not_substantial_modification/1.
:- discontiguous not_transmitted_transferred_accessed/1.
:- discontiguous notification_contains/3.
:- discontiguous notification_decisions_by_different_persons/1.
:- discontiguous notification_details/1.
:- discontiguous notification_details/2.
:- discontiguous notified_body/1.
:- discontiguous notified_body_accepts_simplified_form/0.
:- discontiguous notified_body_decides_continued_satisfaction/2.
:- discontiguous notified_body_decisions_documentation/1.
:- discontiguous notified_body_issued_certificate/2.
:- discontiguous notified_body_may_control_conformity/2.
:- discontiguous notified_decision/4.
:- discontiguous notifies_provider/3.
:- discontiguous notifies_provider_of_decision/3.
:- discontiguous objection_period/2.
:- discontiguous objection_raised/1.
:- discontiguous objection_raised/3.
:- discontiguous objective_evidence_based_learning/1.
:- discontiguous objective_facilitate_market_access_sme/1.
:- discontiguous objective_foster_innovation_competitiveness/1.
:- discontiguous objective_legal_certainty/1.
:- discontiguous objective_share_best_practices/1.
:- discontiguous objectivity_and_impartiality_safeguarded/1.
:- discontiguous observer/2.
:- discontiguous obtained_by_market_surveillance_authority/1.
:- discontiguous offers_conformity_assessment_activities/1.
:- discontiguous only_authorised_persons_access/1.
:- discontiguous only_cleared_staff_access_documentation/1.
:- discontiguous operator/1.
:- discontiguous opportunity_to_be_heard/1.
:- discontiguous opposition_expressed/2.
:- discontiguous other_authority/1.
:- discontiguous other_member_state_objection/1.
:- discontiguous other_third_party/1.
:- discontiguous oversight_measures_commensurate/1.
:- discontiguous parameters_publicly_available/1.
:- discontiguous part_of_technical_documentation/2.
:- discontiguous participants_report_implementation/1.
:- discontiguous participates_in_coordination/1.
:- discontiguous participates_in_single_supervisory_mechanism/1.
:- discontiguous participates_in_standardisation/1.
:- discontiguous participates_in_work/2.
:- discontiguous particular_attention_to_needs/2.
:- discontiguous period_for_objection/2.
:- discontiguous period_referred_in_par_2/1.
:- discontiguous periodic_audits_conducted/2.
:- discontiguous permanent_member_of_advisory_forum/1.
:- discontiguous permitted_biometric_categorisation_law_enforcement/1.
:- discontiguous permitted_biometric_categorisation_lawful_dataset_labelling/1.
:- discontiguous permitted_criminal_risk_assessment_support/1.
:- discontiguous permitted_deployment_confirm_identity/1.
:- discontiguous permitted_emotion_inference_medical_safety/1.
:- discontiguous permitted_further_processing_of_personal_data/1.
:- discontiguous permitted_incomplete_initial_report/2.
:- discontiguous permitted_real_time_remote_biometric_objective/2.
:- discontiguous permitted_subcontracting_or_subsidiary/2.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_under_relevant_law/1.
:- discontiguous permitted_use_of_assessed_system/1.
:- discontiguous personnel_expertise/2.
:- discontiguous placed_on_market_or_put_into_service/1.
:- discontiguous placed_on_market_together_with_product/3.
:- discontiguous placing_on_market_or_putting_into_service/2.
:- discontiguous post_market_monitoring_system_established/2.
:- discontiguous post_market_risk_evaluation/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous potential_extent_of_harm_criterion/1.
:- discontiguous power_to_adopt_delegated_acts/1.
:- discontiguous power_to_adopt_delegated_acts_amend_annex_4/0.
:- discontiguous power_to_adopt_delegated_acts_amend_annexes/0.
:- discontiguous power_to_adopt_delegated_acts_amend_annexes/1.
:- discontiguous power_to_adopt_delegated_acts_measurement/1.
:- discontiguous power_to_adopt_delegated_acts_subject_to_annex_7/0.
:- discontiguous preliminary_findings_communicated/1.
:- discontiguous prepares_agenda/2.
:- discontiguous prescribed_period/2.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_cybersecurity_requirements/1.
:- discontiguous presumed_conformity_data_requirements/1.
:- discontiguous presumed_conformity_notified_body/1.
:- discontiguous presumed_conformity_with_common_specifications/1.
:- discontiguous presumption_of_conformity/1.
:- discontiguous priority_access_to_sandbox/1.
:- discontiguous procedural_safeguards_apply/1.
:- discontiguous procedures_apply/2.
:- discontiguous produces_legal_effects_or_similarly_significantly_affects/2.
:- discontiguous product_manufacturer_considered_provider/2.
:- discontiguous product_placed_on_market/1.
:- discontiguous professional_integrity_and_competence/1.
:- discontiguous professional_secrecy_obligation/1.
:- discontiguous prohibited_adverse_decision_solely_on_output/1.
:- discontiguous prohibited_biometric_categorisation_sensitive_characteristics/1.
:- discontiguous prohibited_criminal_risk_assessment_system/1.
:- discontiguous prohibited_emotion_inference_system/1.
:- discontiguous prohibited_practice_art_5/1.
:- discontiguous prohibited_real_time_remote_biometric_identification_law_enforcement/1.
:- discontiguous prohibited_social_scoring_system/1.
:- discontiguous prohibited_subliminal_manipulative_deceptive_system/1.
:- discontiguous prohibited_untargeted_scraping_facial_recognition/1.
:- discontiguous prohibited_vulnerability_exploitation_system/1.
:- discontiguous promote_ai_literacy/1.
:- discontiguous promotional_material_mentions_ce_marking_fulfilled/1.
:- discontiguous proportionate_procedures/1.
:- discontiguous proportionate_to_nature_and_risks/2.
:- discontiguous proportionate_to_provider_size/1.
:- discontiguous proposed_changes_examined/2.
:- discontiguous protection_of_key_industrial_and_infrastructural_assets/1.
:- discontiguous protection_of_life_and_health/1.
:- discontiguous provenance/2.
:- discontiguous provider_allows_premises_access/2.
:- discontiguous provider_assumes_responsibility_for_compliance/2.
:- discontiguous provider_database_url/2.
:- discontiguous provider_details/2.
:- discontiguous provider_informs_notified_body/3.
:- discontiguous provider_notifies_change_to_notified_body/2.
:- discontiguous provider_of/2.
:- discontiguous provider_of_system/2.
:- discontiguous provider_shares_information/3.
:- discontiguous provides_audit_report/3.
:- discontiguous provides_consultancy_services_commercially/1.
:- discontiguous provides_controlled_environment/1.
:- discontiguous provides_independent_technical_or_scientific_advice/2.
:- discontiguous provides_secretariat/2.
:- discontiguous public_authority_third_country/1.
:- discontiguous public_benefits_eligibility_system/1.
:- discontiguous public_interest_development/1.
:- discontiguous public_security_reason/1.
:- discontiguous publicly_accessible_database_information/1.
:- discontiguous published_free_of_charge/2.
:- discontiguous purpose_protect_health_safety_rights/1.
:- discontiguous purpose_support_enforcement/1.
:- discontiguous put_into_service_under_name_or_trademark/2.
:- discontiguous puts_into_service_without_authorisation/2.
:- discontiguous puts_name_or_trademark_on/2.
:- discontiguous qms_implemented_and_maintained/2.
:- discontiguous qualified_alert_duly_reasoned/1.
:- discontiguous quality_management_documentation_referred_in_art_17/1.
:- discontiguous quality_management_system_aspect/2.
:- discontiguous quality_management_system_assessment/1.
:- discontiguous quality_management_system_documented/1.
:- discontiguous re_assessment_conducted/1.
:- discontiguous re_training_needed/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous reason_to_suspect/2.
:- discontiguous reasoned_assessment_decision/2.
:- discontiguous reasoned_decision_includes/4.
:- discontiguous reasoned_request/3.
:- discontiguous reasons_to_doubt_competence/1.
:- discontiguous reassessment_necessary/1.
:- discontiguous records_include_reasons/1.
:- discontiguous recruitment_system/1.
:- discontiguous references/2.
:- discontiguous refuses_certificate/3.
:- discontiguous regulated_by_union_financial_services_law/1.
:- discontiguous regulated_under/2.
:- discontiguous relevant_changes_occur/1.
:- discontiguous relevant_competences_and_powers/2.
:- discontiguous relevant_experience_and_knowledge/1.
:- discontiguous relevant_interaction_with_other_systems/1.
:- discontiguous relevant_representative_complete/1.
:- discontiguous relevant_staff_factors/2.
:- discontiguous remains_fully_responsible/2.
:- discontiguous remains_high_risk_after_modification/1.
:- discontiguous remains_liable/2.
:- discontiguous remote_access_possible/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous renewable_once/1.
:- discontiguous report_annually/1.
:- discontiguous report_deadline/3.
:- discontiguous report_made_public/1.
:- discontiguous report_period/3.
:- discontiguous request_and_access_documentation/2.
:- discontiguous request_for_access/2.
:- discontiguous request_for_information_specified/1.
:- discontiguous requested_by_board_or_commission/1.
:- discontiguous required_authorisation_limited_scope/1.
:- discontiguous required_authorisation_necessary_proportionate/1.
:- discontiguous required_ce_marking_present/1.
:- discontiguous required_fundamental_rights_impact_assessment/1.
:- discontiguous required_logging_capabilities/1.
:- discontiguous required_operator_actions/3.
:- discontiguous required_prior_authorisation/1.
:- discontiguous required_registration_eu_database/1.
:- discontiguous required_safeguards_conditions/1.
:- discontiguous required_stop_and_delete_on_rejection/1.
:- discontiguous required_technical_documentation/1.
:- discontiguous required_technical_documentation_for_downstream_provider/1.
:- discontiguous required_use_elements_consideration/1.
:- discontiguous requirement_art_31/1.
:- discontiguous requires_union_representative/1.
:- discontiguous residual_risk_acceptable/1.
:- discontiguous resilient_to_errors/1.
:- discontiguous resilient_to_unauthorised_alteration/1.
:- discontiguous respects_required_rigour/1.
:- discontiguous response_mechanisms/1.
:- discontiguous responsible_for/2.
:- discontiguous responsible_notifying_member_state/2.
:- discontiguous retention_period_documentation/2.
:- discontiguous revoked/1.
:- discontiguous right_otherwise_provided_under_union_law/1.
:- discontiguous right_to_explanation/1.
:- discontiguous rights_of_defence_respected/1.
:- discontiguous risk_elimination_reduction/1.
:- discontiguous risk_equivalent_or_greater_than_existing_high_risk/1.
:- discontiguous risk_estimation_evaluation/1.
:- discontiguous risk_identification_analysis/1.
:- discontiguous risk_management_system/1.
:- discontiguous risk_to_fundamental_rights_identified/2.
:- discontiguous risk_to_health_safety_or_rights/1.
:- discontiguous risk_to_vulnerable_groups/1.
:- discontiguous risk_within_art_79_1/1.
:- discontiguous rules_of_procedure/1.
:- discontiguous safeguards_impartiality/1.
:- discontiguous safeguards_objectivity_impartiality/1.
:- discontiguous safety_component_critical_infrastructure/1.
:- discontiguous same_objective_procedures_exist/1.
:- discontiguous sandbox_data_environment/1.
:- discontiguous sandbox_ensures/1.
:- discontiguous sandbox_fulfilment_by_participation/2.
:- discontiguous sandbox_logs_retained/1.
:- discontiguous sandbox_operational_deadline/2.
:- discontiguous sandbox_partnership_permitted/1.
:- discontiguous sandbox_summary_published/1.
:- discontiguous satisfies_requirements/1.
:- discontiguous satisfies_requirements/2.
:- discontiguous schengen_information_system_act/1.
:- discontiguous scientific_panel/1.
:- discontiguous section_1_information/1.
:- discontiguous section_2_information/1.
:- discontiguous section_a_information/3.
:- discontiguous section_b_information/3.
:- discontiguous section_c_information/3.
:- discontiguous sectoral_procedures_apply/1.
:- discontiguous secured_protected_suitable_safeguards/1.
:- discontiguous security_equipment_ai_measures/1.
:- discontiguous security_safeguards_apply/0.
:- discontiguous sensitive_characteristics_inferred/1.
:- discontiguous sensitive_operational_data_excluded/1.
:- discontiguous separate_verification_by_two_persons_required/1.
:- discontiguous separate_verification_exempt/1.
:- discontiguous serious_incident_type_b/1.
:- discontiguous serious_risk_across_member_states/1.
:- discontiguous shall_not_use_unregistered/2.
:- discontiguous shall_reject_arguments/2.
:- discontiguous shall_undertake_to_develop/2.
:- discontiguous significant_risk_requires_mitigation/1.
:- discontiguous simplified_quality_management_system_applies/1.
:- discontiguous simplified_technical_documentation_applies/1.
:- discontiguous single_contact_point/2.
:- discontiguous single_contact_point_for_stakeholders/2.
:- discontiguous single_declaration_for_multiple_legislation/1.
:- discontiguous single_technical_documentation_for_harmonised_product/1.
:- discontiguous specific_category/1.
:- discontiguous specific_substantial_imminent_threat_to_life_or_physical_safety/1.
:- discontiguous stakeholders_may_support_codes_of_practice/1.
:- discontiguous standard_must_be/2.
:- discontiguous standardisation_process_objective/1.
:- discontiguous standardisation_request_covers/1.
:- discontiguous standing_sub_group_market_surveillance/1.
:- discontiguous standing_sub_group_notifying_authorities/1.
:- discontiguous state_of_the_art_security_privacy/1.
:- discontiguous subject_informed_of/2.
:- discontiguous submitted_by_another_person/2.
:- discontiguous submitted_by_another_person_deployer/2.
:- discontiguous substantial_modification_to_high_risk/1.
:- discontiguous sufficient_personnel/1.
:- discontiguous sufficient_reason_to_consider_non_compliance/2.
:- discontiguous sufficient_reason_to_consider_risk/2.
:- discontiguous supervises_credit_institution/2.
:- discontiguous supervises_harmonisation_legislation/1.
:- discontiguous supplement_to_certificate_issued/3.
:- discontiguous supplement_valid/1.
:- discontiguous supplies_for_high_risk_system/2.
:- discontiguous supply_of_incorrect_information/1.
:- discontiguous surveillance_applies/1.
:- discontiguous suspension_of_notification_required/1.
:- discontiguous system_data_description/2.
:- discontiguous system_identification/2.
:- discontiguous system_of_non_compliance/2.
:- discontiguous system_status/2.
:- discontiguous systemic_risk_model/1.
:- discontiguous tacit_approval_applies/1.
:- discontiguous tacit_extension_applies/1.
:- discontiguous take_due_account/2.
:- discontiguous takes_effect/1.
:- discontiguous takes_effect/2.
:- discontiguous taking_into_account/2.
:- discontiguous targeted_risk_management_measures/1.
:- discontiguous task_support_ai_office/2.
:- discontiguous task_support_cross_border/2.
:- discontiguous task_support_market_surveillance/2.
:- discontiguous task_support_safeguard_procedure/2.
:- discontiguous technical_documentation_assessment/1.
:- discontiguous technical_documentation_contains/2.
:- discontiguous technical_documentation_contains_annex_4_elements/1.
:- discontiguous technical_documentation_demonstrates_compliance/1.
:- discontiguous technical_documentation_drawn_up/1.
:- discontiguous technical_documentation_gpai/1.
:- discontiguous technical_documentation_kept_up_to_date/1.
:- discontiguous technical_documentation_provides_assessment_information/1.
:- discontiguous technical_documentation_referred_in_art_11/1.
:- discontiguous technical_documentation_remains_on_premises/1.
:- discontiguous technical_documentation_sandbox/1.
:- discontiguous technical_limitations_reuse/1.
:- discontiguous technical_organisational_measures/1.
:- discontiguous technical_organisational_measures_for_robustness/1.
:- discontiguous technical_redundancy_solutions/1.
:- discontiguous technical_specifications_and_procedures/1.
:- discontiguous term_of_office/2.
:- discontiguous testing_duration_limit/2.
:- discontiguous testing_for_risk_management/1.
:- discontiguous testing_in_real_world_conditions_supervised/2.
:- discontiguous testing_or_auditing_exhausted_or_insufficient/1.
:- discontiguous testing_prior_to_market/1.
:- discontiguous testing_real_world_conditions/1.
:- discontiguous testing_under_sandbox_plan/2.
:- discontiguous third_country_conformity_assessment_body/1.
:- discontiguous trade_secrets_protection_applies/0.
:- discontiguous trained_and_tested_on_appropriate_data/1.
:- discontiguous training_computation/1.
:- discontiguous training_computation_exceeds_threshold/1.
:- discontiguous unaffected_other_sandboxes/1.
:- discontiguous unaffected_supervisory_powers/1.
:- discontiguous under_own_name_or_trademark/2.
:- discontiguous union_agreement_with_third_country/1.
:- discontiguous union_ai_testing_support_structure/1.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous union_harmonisation_legislation_derogation_applies/1.
:- discontiguous union_harmonisation_legislation_new_framework/1.
:- discontiguous union_harmonisation_legislation_other/1.
:- discontiguous union_law_intellectual_property_protection_applies/0.
:- discontiguous union_legislative_act_on_large_scale_it_system/1.
:- discontiguous unlimited_jurisdiction_to_review/1.
:- discontiguous urgency_exception_authorisation/1.
:- discontiguous urgency_exception_registration/1.
:- discontiguous urgency_situation/1.
:- discontiguous used_by_or_on_behalf_of_competent_public_authority_or_union_institution/1.
:- discontiguous used_by_or_on_behalf_of_law_enforcement_or_union_institution/1.
:- discontiguous used_by_or_on_behalf_of_public_authority/1.
:- discontiguous used_for_purpose/2.
:- discontiguous used_or_integrated_in/2.
:- discontiguous validity_preserved/1.
:- discontiguous verifies_sandbox_compliance/2.
:- discontiguous visa_information_system_act/1.
:- discontiguous voluntary_application_by_deployers/1.
:- discontiguous vulnerable_group/1.
:- discontiguous vulnerable_groups_consideration/1.
:- discontiguous widespread_infringement_applies/1.
:- discontiguous withdrawal_does_not_affect_activities_already_carried_out/1.
:- discontiguous withdrawal_of_notification_required/1.
:- discontiguous without_prejudice_exclusion/1.
:- discontiguous without_prejudice_other_legal_basis/1.
:- discontiguous without_prejudice_to/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic academia/1.
:- dynamic accessibility_disability/1.
:- dynamic accompanied_by_eu_declaration_of_conformity/1.
:- dynamic accompanied_by_instructions_for_use/1.
:- dynamic accreditation_certificate_attesting_compliance/2.
:- dynamic action_taken/2.
:- dynamic actions_pursuant_to_article_24_paragraphs/1.
:- dynamic additional_periods_of_months/2.
:- dynamic adequate_safeguards_fundamental_rights/1.
:- dynamic adversarial_testing_measures/1.
:- dynamic advise_classification_general/2.
:- dynamic advise_classification_systemic_risk/2.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_safety_component/1.
:- dynamic ai_system/1.
:- dynamic alert_systemic_risk/2.
:- dynamic all_appropriate_efforts_made/2.
:- dynamic annex_3_point_1_applies/1.
:- dynamic annex_3_point_6_applies/1.
:- dynamic annex_3_point_7_applies/1.
:- dynamic annual_report_of_advisory_forum/1.
:- dynamic another_body_assumes_immediate_responsibility/2.
:- dynamic another_notified_body_assumes_responsibility/2.
:- dynamic appropriate_deadline_set/2.
:- dynamic appropriate_participation_period/2.
:- dynamic appropriate_safeguards/1.
:- dynamic approved_code_of_practice_adhered_to/1.
:- dynamic approved_quality_management_system/1.
:- dynamic article_46_par_1_applies/1.
:- dynamic artistic_creative_satirical_fictional_work/1.
:- dynamic assistive_standard_editing/1.
:- dynamic at_least_one_year_before/1.
:- dynamic authorisation_refused/1.
:- dynamic authorised_for_criminal_offence_detection/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_by_law_or_statutes/2.
:- dynamic authority_responsible_for_notified_bodies/1.
:- dynamic authority_supervises_fundamental_rights/1.
:- dynamic automatically_generated_logs/1.
:- dynamic available_for_public_crime_reporting/1.
:- dynamic awareness_campaigns_organised/0.
:- dynamic based_solely_on_profiling/1.
:- dynamic bears_required_ce_marking/1.
:- dynamic before/1.
:- dynamic before_placing_on_market_or_putting_into_service/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic broad_and_equal_access/1.
:- dynamic capabilities_equivalent_to_high_impact/1.
:- dynamic capability_benchmarks/1.
:- dynamic capability_to_monitor_existing_certificates/2.
:- dynamic carried_out_by/2.
:- dynamic ce_marking/1.
:- dynamic certificate_covers_cybersecurity_requirements/1.
:- dynamic certificate_supplement/1.
:- dynamic certificate_supplemented/2.
:- dynamic change_other_than_extension/1.
:- dynamic chapter_3_section_2/1.
:- dynamic civil_society_organisation/1.
:- dynamic co_chair_of_advisory_forum/1.
:- dynamic code_inadequate/1.
:- dynamic code_of_conduct/1.
:- dynamic code_of_conduct_governance_mechanism/1.
:- dynamic commitments_offered/2.
:- dynamic common_specification/1.
:- dynamic common_specifications_applied/1.
:- dynamic common_specifications_not_applied/1.
:- dynamic common_specifications_not_available/1.
:- dynamic communication_channels_for_smes/1.
:- dynamic competent_authority_for_system/2.
:- dynamic competent_authority_indicated_language/2.
:- dynamic completes_assessment_within_months/2.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic concrete_reliable_evidence_necessary_for_protection/0.
:- dynamic confidentiality_obligations/1.
:- dynamic confirmed_no_relevant_certificates_during_suspension/2.
:- dynamic confirmed_no_risk_within_month/2.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_activity/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_fees/0.
:- dynamic conformity_assessment_procedure/1.
:- dynamic conformity_assessment_procedure_option/2.
:- dynamic continuous_iterative_process/1.
:- dynamic contribute_evaluation_tools/2.
:- dynamic contribute_tools_templates/2.
:- dynamic corrective_action_necessary/1.
:- dynamic corrective_actions_taken/1.
:- dynamic covers_sensitive_operational_data/1.
:- dynamic critical_infrastructure/1.
:- dynamic data_protection_authority/1.
:- dynamic data_protection_impact_assessment_conducted/1.
:- dynamic data_training_requirement_met/1.
:- dynamic dataset_quality_or_size/1.
:- dynamic days/1.
:- dynamic decision_within_three_months/2.
:- dynamic deep_fake/1.
:- dynamic deep_fake_content/1.
:- dynamic deployer/1.
:- dynamic deployer_informed/2.
:- dynamic deployer_instructions_for_use_applicable/1.
:- dynamic deployer_public_authority/1.
:- dynamic deploys_annex_3_point_5_b_or_c_system/1.
:- dynamic description_of_conformity_assessment_activities/1.
:- dynamic designated_by_commission/1.
:- dynamic designated_under_other_union_harmonisation_legislation/1.
:- dynamic detects_decision_patterns/1.
:- dynamic diligence_accuracy_objectivity/1.
:- dynamic distributor/1.
:- dynamic documentary_evidence_for_verification/2.
:- dynamic documentation_access_necessary_for_mandate/3.
:- dynamic documentation_insufficient_for_infringement_ascertainment/1.
:- dynamic documented_in_technical_documentation/1.
:- dynamic does_not_substantially_alter_input/1.
:- dynamic downstream_provider/1.
:- dynamic drawn_up/1.
:- dynamic duration_of_infringement/1.
:- dynamic easily_understood_language/1.
:- dynamic editorial_responsibility/2.
:- dynamic effectively_overseen/1.
:- dynamic element_changed_or_no_longer_up_to_date/2.
:- dynamic eligibility_and_selection_criteria/1.
:- dynamic eligible_for_sandbox/1.
:- dynamic energy_efficient_programming/1.
:- dynamic energy_sustainability_area/1.
:- dynamic ensures_equivalent_level_of_compliance/1.
:- dynamic enters_into_force/2.
:- dynamic environment_protection_area/1.
:- dynamic established_in_union/1.
:- dynamic established_under_national_law/1.
:- dynamic eu_database/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic evaluation_art_92/1.
:- dynamic evaluation_strategies/1.
:- dynamic exception_unduly_issued/1.
:- dynamic exclusively_for_military_defence_national_security/1.
:- dynamic exempt_military_defence_national_security_output/1.
:- dynamic existing_impact_assessment_by_provider/1.
:- dynamic experience_and_knowledge_of/2.
:- dynamic extension_of_scope/1.
:- dynamic facilitate_standardisation_participation/0.
:- dynamic facilitates_conformity_assessment/1.
:- dynamic facilitates_ecosystem_involvement/1.
:- dynamic facilitates_testing_tools/1.
:- dynamic facilitates_voluntary_codes_of_conduct/1.
:- dynamic failed_to_comply_with_document_request/1.
:- dynamic failed_to_comply_with_measure/1.
:- dynamic failed_to_make_available_for_evaluation/1.
:- dynamic fair_gender_representation/1.
:- dynamic fair_geographical_representation/1.
:- dynamic financial_institution/1.
:- dynamic financial_institution_provider/1.
:- dynamic first_use_of_high_risk_ai_system/2.
:- dynamic flexibility_for_national_authorities/1.
:- dynamic floating_point_operation/1.
:- dynamic free_and_open_source_licence/1.
:- dynamic free_of_charge_for_smes/1.
:- dynamic fundamental_rights_impact_assessment/2.
:- dynamic gender_equality/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_model_placed_before/2.
:- dynamic general_purpose_ai_model_provider/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic general_purpose_ai_system_based_on_same_provider_model/1.
:- dynamic gravity_of_infringement/1.
:- dynamic grounds_to_consider_infringement/2.
:- dynamic guideline_subject/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_for_quality_management/1.
:- dynamic harmonised_standard_not_fully_applied/1.
:- dynamic harmonised_standard_published/0.
:- dynamic harmonised_standard_with_restriction/1.
:- dynamic harmonised_standards_applied/1.
:- dynamic harmonised_standards_do_not_comply_with_request/0.
:- dynamic harmonised_standards_do_not_exist/1.
:- dynamic harmonised_standards_insufficiently_address_fundamental_rights/0.
:- dynamic harmonised_standards_not_delivered_in_time/0.
:- dynamic high_risk_ai_system_referred_in_annex_3/1.
:- dynamic high_risk_ai_system_referred_in_annex_3_point_2/1.
:- dynamic high_risk_under_art_6_par_1/1.
:- dynamic human_oversight_measures_technical/1.
:- dynamic human_review_editorial_control/1.
:- dynamic identification_number_of_notified_body/2.
:- dynamic implementing_act/1.
:- dynamic implementing_acts/2.
:- dynamic importer/1.
:- dynamic importer_complied_with_obligations/1.
:- dynamic improves_prior_human_activity/1.
:- dynamic in_course_of_testing/2.
:- dynamic inclusive_diverse_development_teams/1.
:- dynamic independence_from_provider/1.
:- dynamic inform_parties/2.
:- dynamic information_and_documentation_for_conformity/1.
:- dynamic information_relevant_to_non_compliance/2.
:- dynamic informed_consent/1.
:- dynamic informed_consent_obtained/1.
:- dynamic infringement_by_provider/2.
:- dynamic infringement_of_provisions/1.
:- dynamic initiated_litigation_or_judicial_proceedings/1.
:- dynamic input_data/1.
:- dynamic input_output_modality/1.
:- dynamic input_output_modality_of_model/1.
:- dynamic instructions_for_use/1.
:- dynamic integration_technical_means/1.
:- dynamic intended_purpose/1.
:- dynamic interested_stakeholder/1.
:- dynamic international_cooperation_law_enforcement_judicial/1.
:- dynamic isolated_data_processing_environment/1.
:- dynamic jeopardises_compliance_with_chapter_3_section_2/1.
:- dynamic judicial_proceedings/2.
:- dynamic large_scale_it_system/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_immigration_asylum_authority/1.
:- dynamic law_enforcement_migration_asylum_border_control_area/1.
:- dynamic lawyer_duly_authorised/2.
:- dynamic logs_under_control/2.
:- dynamic logs_under_control_of_provider/2.
:- dynamic made_available_on_market/2.
:- dynamic made_available_on_market_by_distributor/2.
:- dynamic making_available_on_market/1.
:- dynamic mandate/2.
:- dynamic market_surveillance_authority/1.
:- dynamic may_initiate_structured_dialogue_before_request/2.
:- dynamic may_provide_technical_support/3.
:- dynamic measures_adopted/2.
:- dynamic meets_conditions_art_51/1.
:- dynamic meets_requirements/2.
:- dynamic meets_requirements_art_31/1.
:- dynamic member_of_advisory_forum/1.
:- dynamic microenterprise/1.
:- dynamic more_favourable_worker_protection/1.
:- dynamic must_inform_providers_within_days/2.
:- dynamic must_register_testing/2.
:- dynamic must_report/2.
:- dynamic must_submit_report_within_months/2.
:- dynamic mutual_recognition_across_union/1.
:- dynamic narrow_procedural_task/1.
:- dynamic national_competent_authority/1.
:- dynamic national_competent_authority_confirmed_no_risk/2.
:- dynamic national_law_provides_otherwise/1.
:- dynamic national_public_authority_or_body/1.
:- dynamic natural_person/1.
:- dynamic nature_of_infringement/1.
:- dynamic necessary_and_appropriate/0.
:- dynamic necessary_and_proportionate/1.
:- dynamic necessary_to_demonstrate_conformity/1.
:- dynamic new_conformity_assessment_needed/2.
:- dynamic no_longer_meets_requirements/1.
:- dynamic no_reference_published_or_expected/0.
:- dynamic non_compliance_art_5/1.
:- dynamic non_compliance_art_50/1.
:- dynamic non_compliance_details/1.
:- dynamic non_compliance_harmonised_standards/1.
:- dynamic non_personal_data/1.
:- dynamic not_in_conformity_with_chapter_3_section_2/1.
:- dynamic not_replaces_or_influences_prior_assessment/1.
:- dynamic notified/1.
:- dynamic notified_body_for_assessment/2.
:- dynamic notifying_authority/1.
:- dynamic notifying_authority_established/1.
:- dynamic objection_period_long/1.
:- dynamic objection_period_short/1.
:- dynamic obligation_met_through_dpia/1.
:- dynamic obtained_under_article_21/1.
:- dynamic obvious_from_context/1.
:- dynamic official_language_of_union_institutions/1.
:- dynamic other_market_surveillance_authority/1.
:- dynamic outlined_timeline_for_remedy/2.
:- dynamic output_used_exclusively_for_military_defence_national_security/1.
:- dynamic parameter_count/1.
:- dynamic particular_expertise_ai/1.
:- dynamic partner_or_linked_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_tasks_listed/2.
:- dynamic personal_data/1.
:- dynamic placed_or_put_into_service_before/2.
:- dynamic placed_or_put_into_service_by/2.
:- dynamic placing_on_market/1.
:- dynamic planned_cessation/1.
:- dynamic point_of_contact/2.
:- dynamic post_market_monitoring/2.
:- dynamic post_market_monitoring_plan/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic predetermined_change/1.
:- dynamic predictions_reversible/1.
:- dynamic preparatory_task_to_annex_3_assessment/1.
:- dynamic private_entity_providing_public_services/1.
:- dynamic procedures_developed_in_cooperation/0.
:- dynamic product_covered_by_harmonisation_legislation/1.
:- dynamic product_covered_by_union_harmonisation_legislation_annex_1_sec_2/1.
:- dynamic product_manufacturer/1.
:- dynamic product_manufacturer_considered_provider/1.
:- dynamic profiling/1.
:- dynamic promote_procurement_convergence/0.
:- dynamic proper_human_review/1.
:- dynamic proportionality_applies/1.
:- dynamic prospective_provider/1.
:- dynamic provider/1.
:- dynamic provider_acts_contrary_to_obligations/1.
:- dynamic provider_complied_with_obligations/1.
:- dynamic provider_confirms_another_body_assumes_functions/2.
:- dynamic public_administration_area/1.
:- dynamic public_interest_text/1.
:- dynamic public_safety_and_health_area/1.
:- dynamic publicly_accessible_space/1.
:- dynamic publicly_available/1.
:- dynamic purely_personal_non_professional_activity/1.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic qualified_alert_scientific_panel/1.
:- dynamic quality_management_system/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reasonable_means_exhausted/2.
:- dynamic reasonable_period_determined_by_authority/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/2.
:- dynamic reasoned_request_from_authority/2.
:- dynamic reasoned_request_made/2.
:- dynamic recall_of_ai_system/1.
:- dynamic records_input_data_match/1.
:- dynamic records_period_of_each_use/1.
:- dynamic records_reference_database/1.
:- dynamic records_verification_persons/1.
:- dynamic reference_published_in_official_journal/1.
:- dynamic referred_to_in_annex_3/1.
:- dynamic registered_business_users/2.
:- dynamic registered_end_users/1.
:- dynamic registered_office_or_branch_in_union/1.
:- dynamic registered_place_of_business/2.
:- dynamic registered_with_information_specified/1.
:- dynamic relevant_authority/1.
:- dynamic relevant_change_to_notification/1.
:- dynamic relevant_market_surveillance_authority/1.
:- dynamic relevant_notified_body/2.
:- dynamic remote/1.
:- dynamic report_deadline/2.
:- dynamic representative_of_provider/2.
:- dynamic request_by/3.
:- dynamic request_not_accepted/0.
:- dynamic requirements_in_chapter_3_section_2/1.
:- dynamic requirements_integrated_in_union_harmonisation_legislation/1.
:- dynamic requirements_of_art_31/1.
:- dynamic research_testing_development_prior_to_market/1.
:- dynamic retention_period/2.
:- dynamic risk/1.
:- dynamic safety_component/1.
:- dynamic sandbox_plan/1.
:- dynamic sandbox_procedures/1.
:- dynamic scientific_research_and_development/1.
:- dynamic sectoral_quality_management_system_applies/1.
:- dynamic sensitive_operational_data/1.
:- dynamic sensitive_operational_data_exemption/1.
:- dynamic sensitive_operational_data_law_enforcement/1.
:- dynamic serious_incident/1.
:- dynamic seriousness_of_failure/1.
:- dynamic significant_change_in_design/1.
:- dynamic significant_risk_fundamental_rights/1.
:- dynamic significant_risk_health/1.
:- dynamic similar_case/2.
:- dynamic similar_intended_purpose/2.
:- dynamic simple_procedures/1.
:- dynamic single_information_platform_maintained/0.
:- dynamic sme_or_start_up/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic specific_awareness_raising_and_training/1.
:- dynamic specific_union_or_national_law_basis/1.
:- dynamic stakeholders_participation/1.
:- dynamic standardised_templates_provided/0.
:- dynamic statement_of_conformity/1.
:- dynamic storage_or_transport_conditions_applicable/1.
:- dynamic streamlined_across_union/1.
:- dynamic sub_group/1.
:- dynamic sub_group_of_advisory_forum/1.
:- dynamic subcontracting_agreement/1.
:- dynamic subcontractor/1.
:- dynamic subject/1.
:- dynamic subject_to_financial_services_governance/1.
:- dynamic subject_to_financial_services_law/1.
:- dynamic subject_to_union_financial_services_law/1.
:- dynamic subsidiary/1.
:- dynamic substantial_modification/1.
:- dynamic sufficient_reason_to_consider_non_compliant/2.
:- dynamic supervised_within/2.
:- dynamic supervising_sandbox/2.
:- dynamic supplied_incorrect_information/1.
:- dynamic synthetic_content/1.
:- dynamic system_architecture_description/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_at_union_level/1.
:- dynamic systemic_risk_present/1.
:- dynamic tasks_specified_in_mandate/2.
:- dynamic technical_documentation/1.
:- dynamic termination_date/1.
:- dynamic terms_and_conditions_participants/1.
:- dynamic testing_agreement_concluded/2.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic tests_satisfactory/2.
:- dynamic total_worldwide_annual_turnover/2.
:- dynamic training_data/1.
:- dynamic training_data_information/1.
:- dynamic transparency_obligations/1.
:- dynamic transparent_and_fair_criteria/1.
:- dynamic transport_infrastructure_area/1.
:- dynamic unable_to_access_information/2.
:- dynamic unable_to_conclude_investigation/2.
:- dynamic under_provider_control/1.
:- dynamic under_responsibility/2.
:- dynamic under_responsibility_of_distributor/2.
:- dynamic undertaking/1.
:- dynamic unduly_issued/1.
:- dynamic union_institution/1.
:- dynamic used_by_public_authority/1.
:- dynamic valid_document_related_to_designation/2.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic via_electronic_notification_tool/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_three_months_of_suspension/1.

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
declared(action_taken/2, 'action taken', 'reconciled').
declared(ai_safety_component/1, 'AI system that is a safety component within the meaning of the AI Act', 'reconciled').
declared(annex_3_point_1_applies/1, 'system listed in Annex III point 1', 'reconciled').
declared(annex_3_point_6_applies/1, 'system listed in Annex III point 6', 'reconciled').
declared(annex_3_point_7_applies/1, 'system listed in Annex III point 7', 'reconciled').
declared(appropriate_safeguards/1, 'appropriate and applicable safeguards under Union law are implemented', 'reconciled').
declared(approved_quality_management_system/1, 'approval of a quality management system', 'reconciled').
declared(based_solely_on_profiling/1, 'based solely on profiling', 'reconciled').
declared(before_placing_on_market_or_putting_into_service/1, 'before placing on market or putting into service', 'reconciled').
declared(carried_out_by/2, 'tasks carried out by specified party', 'reconciled').
declared(certificate_supplement/1, 'supplement to a certificate', 'reconciled').
declared(chapter_3_section_2/1, 'chapter 3 section 2', 'reconciled').
declared(commission_decides/2, 'Commission decides whether authorisation is justified', 'reconciled').
declared(commission_objection/1, 'commission objection', 'reconciled').
declared(condition_add_anx_3/2, 'conditions for adding or modifying use-cases in Annex 3', 'reconciled').
declared(confidentiality_obligations/1, 'appropriate confidentiality obligations in place', 'reconciled').
declared(conformity_assessment_activity/1, 'activity performed under conformity assessment', 'reconciled').
declared(conformity_assessment_fees/0, 'conformity assessment fees', 'reconciled').
declared(conformity_assessment_procedure/1, 'conformity assessment procedure carried out by provider', 'reconciled').
declared(corrective_action/2, 'corrective action taken by operator for AI systems made available', 'reconciled').
declared(covers_sensitive_operational_data/1, 'covers sensitive operational data', 'reconciled').
declared(criminal_offence/1, 'offence listed in Annex II of the AI Act', 'reconciled').
declared(data_protection_authority/1, 'data protection authority', 'reconciled').
declared(data_training_requirement_met/1, 'data training requirement met', 'reconciled').
declared(deemed_justified/1, 'authorisation deemed justified after no objection period', 'reconciled').
declared(delegated_act/1, 'act adopted under delegated powers', 'reconciled').
declared(delegated_act/2, 'delegated act concerning specified subject matter', 'reconciled').
declared(deployer_can_interpret_output/1, 'deployer can interpret output', 'reconciled').
declared(deployer_can_use_appropriately/1, 'deployer can use appropriately', 'reconciled').
declared(deployer_instructions_for_use_applicable/1, 'instructions for use for the deployer', 'reconciled').
declared(deployer_public_authority/1, 'deployer that is or acts on behalf of a public authority', 'reconciled').
declared(drawn_up/1, 'drawn up', 'reconciled').
declared(duration_of_infringement/1, 'duration of the infringement for fine calculation', 'reconciled').
declared(energy_consumption/1, 'known or estimated energy consumption of the model', 'reconciled').
declared(established_in_union/1, 'established in the Union', 'reconciled').
declared(established_under_national_law/1, 'entity established under national law of a Member State', 'reconciled').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity for an AI system', 'reconciled').
declared(exempt_military_defence_national_security_output/1, 'exempt military defence national security output', 'reconciled').
declared(experience_and_knowledge_of/2, 'experience and knowledge relating to specified matters', 'reconciled').
declared(free_and_open_source_licence/1, 'made available under free and open-source licence', 'reconciled').
declared(general_purpose_ai_model_provider/1, 'third party supplies general-purpose AI model', 'reconciled').
declared(gravity_of_infringement/1, 'gravity of the infringement for fine calculation', 'reconciled').
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'reconciled').
declared(high_risk_ai_system_referred_in_annex_3_point_2/1, 'high-risk AI system intended for use in area listed in Annex III point 2', 'reconciled').
declared(human_oversight_measures_technical/1, 'human oversight measures and technical measures to facilitate output interpretation', 'reconciled').
declared(implementing_act/1, 'implementing act concerning AI safety components', 'reconciled').
declared(implementing_acts/2, 'implementing acts', 'reconciled').
declared(in_course_of_testing/2, 'in course of testing', 'reconciled').
declared(inform_parties/2, 'provider must inform relevant parties about corrective action', 'reconciled').
declared(input_output_modality/1, 'modality and format of inputs and outputs', 'reconciled').
declared(integration_technical_means/1, 'technical means required for model integration into AI systems', 'reconciled').
declared(isolated_data_processing_environment/1, 'isolated data processing environment', 'reconciled').
declared(issued_certificate/2, 'issued certificate', 'reconciled').
declared(judicial_proceedings/2, 'judicial proceedings', 'reconciled').
declared(law_enforcement_immigration_asylum_authority/1, 'authority using high-risk AI systems in sensitive domains', 'reconciled').
declared(law_enforcement_migration_asylum_border_control_area/1, 'system used in areas of law enforcement, migration, asylum and border control management', 'reconciled').
declared(logs_under_control/2, 'logs of high-risk AI system are under provider control', 'reconciled').
declared(made_available_on_market/2, 'made available on market', 'reconciled').
declared(may_impose_fine/2, 'Commission may impose a fine on a provider', 'reconciled').
declared(may_initiate_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'reconciled').
declared(may_invite/2, 'permission to invite participation', 'reconciled').
declared(may_rely_on_code_of_practice/2, 'provider may rely on code of practice to demonstrate compliance', 'reconciled').
declared(may_request_access/2, 'authority may request access to model', 'reconciled').
declared(measures_adopted/2, 'measures adopted', 'reconciled').
declared(measures_taken/2, 'measures taken', 'reconciled').
declared(meets_requirements/2, 'meets requirements', 'reconciled').
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts specifying detailed arrangements', 'reconciled').
declared(must_cooperate_with_authorities/2, 'distributor must cooperate with competent authorities', 'reconciled').
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity', 'reconciled').
declared(must_encourage_and_facilitate/2, 'obligation to encourage and facilitate an activity', 'reconciled').
declared(must_ensure_confidentiality/1, 'ensure confidentiality of information and data', 'reconciled').
declared(must_have_quality_management_system/2, 'provider must have quality management system complying with Article 17', 'reconciled').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority shall inform Commission and other Member States of non-compliance beyond national territory', 'reconciled').
declared(must_keep_list_up_to_date/2, 'Commission shall ensure the list is kept up to date', 'reconciled').
declared(must_keep_up_to_date/2, 'obligation to maintain current information after registration', 'reconciled').
declared(must_lodge_application/2, 'provider must lodge application with notified body', 'reconciled').
declared(must_maintain_risk_management_system/2, 'provider must maintain risk management system for high-risk AI system', 'reconciled').
declared(must_make_publicly_available/2, 'notified body must make list publicly available', 'reconciled').
declared(must_provide_information/2, 'obligation to provide information upon request', 'reconciled').
declared(must_register_information/2, 'provider or deployer must submit and keep up to date specified information upon registration', 'reconciled').
declared(must_report/2, 'Member State shall report to Commission', 'reconciled').
declared(must_report_serious_incident/2, 'provider or prospective provider must report serious incident to market surveillance authority', 'reconciled').
declared(must_submit_annual_report/2, 'authority must submit annual report to Commission', 'reconciled').
declared(must_take_corrective_action/2, 'provider must take corrective action for non-conforming high-risk AI system', 'reconciled').
declared(must_take_into_account/2, 'obligation to consider specified requirements when adopting delegated acts', 'reconciled').
declared(must_take_into_account_sme_needs/2, 'obligation to take into account specific interests and needs of SME providers', 'reconciled').
declared(must_take_restriction_measures/2, 'market surveillance authority must take measures to restrict or prohibit', 'reconciled').
declared(national_law_provides_otherwise/1, 'national law provides otherwise', 'reconciled').
declared(national_public_authority_or_body/1, 'national public authority or body', 'reconciled').
declared(natural_person/1, 'natural person', 'reconciled').
declared(nature_of_infringement/1, 'nature of the infringement for fine calculation', 'reconciled').
declared(new_conformity_assessment_needed/2, 'new conformity assessment needed', 'reconciled').
declared(non_compliance_art_5/1, 'non-compliance with prohibition of AI practices in Article 5', 'reconciled').
declared(non_compliance_art_50/1, 'non-compliance with Article 50', 'reconciled').
declared(non_compliance_harmonised_standards/1, 'shortcomings in harmonised standards or common specifications conferring presumption of conformity', 'reconciled').
declared(not_high_risk_under_art_6_par_3/1, 'provider concluded not high-risk under Article 6(3)', 'reconciled').
declared(notified_body_for_assessment/2, 'notified body is responsible for conformity assessment procedures', 'reconciled').
declared(only_authorised_persons_access/1, 'only authorised persons have access', 'reconciled').
declared(other_authority/1, 'other authority', 'reconciled').
declared(other_market_surveillance_authority/1, 'other market surveillance authority', 'reconciled').
declared(permitted_testing_in_real_world_conditions/1, 'testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes is permitted', 'reconciled').
declared(placed_or_put_into_service_by/2, 'initial provider placed AI system on market or put it into service', 'reconciled').
declared(planned_cessation/1, 'cessation is planned rather than immediate', 'reconciled').
declared(point_of_contact/2, 'point of contact of the provider of the general-purpose AI model', 'reconciled').
declared(post_market_monitoring/2, 'post market monitoring', 'reconciled').
declared(post_market_monitoring_plan/1, 'post-market monitoring system shall be based on a post-market monitoring plan', 'reconciled').
declared(power_to_adopt_delegated_acts/1, 'authority to adopt delegated acts conferred on the Commission', 'reconciled').
declared(product_covered_by_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I Section 1', 'reconciled').
declared(prospective_provider/1, 'entity intending to place an AI system on the market', 'reconciled').
declared(publicly_available/1, 'made accessible to the public', 'reconciled').
declared(purpose_protect_health_safety_rights/1, 'ensure high level of protection of health, safety, fundamental rights, democracy, rule of law and environmental protection', 'reconciled').
declared(qualified_alert/1, 'alert from the scientific panel to the AI Office', 'reconciled').
declared(quality_management_system/1, 'quality management system', 'reconciled').
declared(reasonable_means_exhausted/2, 'reasonable means exhausted', 'reconciled').
declared(reasoned_request/2, 'reasoned request', 'reconciled').
declared(reference_published_in_official_journal/1, 'references of harmonised standards published in Official Journal', 'reconciled').
declared(referred_to_in_annex_3/1, 'system referred to in Annex 3', 'reconciled').
declared(registered_with_information_specified/1, 'registered with information specified', 'reconciled').
declared(relevant_authority/1, 'market surveillance authority consulted relevant national public authority', 'reconciled').
declared(requirements_in_chapter_3_section_2/1, 'high-risk AI system complies with Chapter III Section 2 requirements', 'reconciled').
declared(retention_period/2, 'period for which logs must be kept', 'reconciled').
declared(risk_to_health_safety_or_rights/1, 'presents risk to health, safety, persons, fundamental rights or public interest', 'reconciled').
declared(risk_within_art_79_1/1, 'high-risk AI system presents a risk within meaning of Article 79(1)', 'reconciled').
declared(sensitive_operational_data_law_enforcement/1, 'sensitive operational data law enforcement', 'reconciled').
declared(significant_risk_fundamental_rights/1, 'significant risk fundamental rights', 'reconciled').
declared(significant_risk_health/1, 'significant risk health', 'reconciled').
declared(simplified_quality_management_system_applies/1, 'quality management system complied with in a simplified manner', 'reconciled').
declared(sme_or_start_up/1, 'sme or start up', 'reconciled').
declared(statement_of_conformity/1, 'statement of conformity', 'reconciled').
declared(sub_group/1, 'sub-group of the Board', 'reconciled').
declared(supervised_within/2, 'testing is supervised within a sandbox', 'reconciled').
declared(supervising_sandbox/2, 'supervising sandbox', 'reconciled').
declared(systemic_risk_present/1, 'general-purpose AI model presents systemic risks', 'reconciled').
declared(tacit_extension_applies/1, 'automatic extension of delegation period', 'reconciled').
declared(targeted_risk_management_measures/1, 'targeted risk management measures', 'reconciled').
declared(technical_documentation/1, 'technical documentation of AI system', 'reconciled').
declared(tests_satisfactory/2, 'tests satisfactory', 'reconciled').
declared(training_data_information/1, 'information on data used for training, testing and validation', 'reconciled').
declared(under_responsibility/2, 'system under responsibility of distributor', 'reconciled').
declared(union_harmonisation_legislation/1, 'instrument of Union harmonisation legislation listed in Annex I', 'reconciled').
declared(union_institution/1, 'Union institution body office or agency', 'reconciled').
alias(action_taken_by/2, action_taken/2).
alias(safety_component_of_ai_system/1, ai_safety_component/1).
alias(concerning_ai_safety_component/1, ai_safety_component/1).
alias(listed_in_annex_3_point_1/1, annex_3_point_1_applies/1).
alias(listed_in_annex_3_point_6/1, annex_3_point_6_applies/1).
alias(listed_in_annex_3_point_7/1, annex_3_point_7_applies/1).
alias(appropriate_safeguards_implemented/1, appropriate_safeguards/1).
alias(quality_management_system_approval/1, approved_quality_management_system/1).
alias(solely_based_on_profiling/1, based_solely_on_profiling/1).
alias(before_putting_into_service/1, before_placing_on_market_or_putting_into_service/1).
alias(prior_to_placing_on_market_or_putting_into_service/1, before_placing_on_market_or_putting_into_service/1).
alias(tasks_carried_out_by/2, carried_out_by/2).
alias(supplement_to_certificate/1, certificate_supplement/1).
alias(requirements_chapter_3_section_2_met/1, chapter_3_section_2/1).
alias(requirements_in_chapter_3_section_2_apply/1, chapter_3_section_2/1).
alias(commission_decides_authorisation/2, commission_decides/2).
alias(objection_raised_by_commission/1, commission_objection/1).
alias(condition_remove_anx_3/2, condition_add_anx_3/2).
alias(confidentiality_obligations_apply/1, confidentiality_obligations/1).
alias(conformity_assessment_body_activity/1, conformity_assessment_activity/1).
alias(fees_for_conformity_assessment/0, conformity_assessment_fees/0).
alias(conformity_assessment_procedure_carried_out/1, conformity_assessment_procedure/1).
alias(corrective_action_taken/2, corrective_action/2).
alias(corrective_action_required/2, corrective_action/2).
alias(corrective_action_required_for_system/2, corrective_action/2).
alias(sensitive_operational_data_included/1, covers_sensitive_operational_data/1).
alias(serious_criminal_offence/1, criminal_offence/1).
alias(national_data_protection_authority/1, data_protection_authority/1).
alias(training_data_requirement_met/1, data_training_requirement_met/1).
alias(measure_deemed_justified/1, deemed_justified/1).
alias(delegated_act_concerning/1, delegated_act/1).
alias(adopting_delegated_act/2, delegated_act/2).
alias(delegated_act_concerning/2, delegated_act/2).
alias(enables_deployer_to_interpret_output/1, deployer_can_interpret_output/1).
alias(enables_deployer_to_use_appropriately/1, deployer_can_use_appropriately/1).
alias(deployer_instructions_for_use/1, deployer_instructions_for_use_applicable/1).
alias(public_authority_deployer/1, deployer_public_authority/1).
alias(drawn_up_correctly/1, drawn_up/1).
alias(infringement_duration/1, duration_of_infringement/1).
alias(known_energy_consumption/1, energy_consumption/1).
alias(estimated_energy_consumption/1, energy_consumption/1).
alias(located_in_union/1, established_in_union/1).
alias(established_or_located_in_union/1, established_in_union/1).
alias(must_be_established_under_national_law/1, established_under_national_law/1).
alias(declaration_of_conformity/1, eu_declaration_of_conformity/1).
alias(output_used_for_military_defence_national_security/1, exempt_military_defence_national_security_output/1).
alias(experience_and_knowledge_required/2, experience_and_knowledge_of/2).
alias(free_open_source_licence/1, free_and_open_source_licence/1).
alias(released_under_free_and_open_source_licence/1, free_and_open_source_licence/1).
alias(general_purpose_ai_model_supplied/1, general_purpose_ai_model_provider/1).
alias(provider_of_general_purpose_ai_model/1, general_purpose_ai_model_provider/1).
alias(infringement_gravity/1, gravity_of_infringement/1).
alias(high_risk_ai_systems/1, high_risk_ai_system/1).
alias(high_risk_ai_system_intended_for_use_in_annex_3_point_2/1, high_risk_ai_system_referred_in_annex_3_point_2/1).
alias(human_oversight_measures_assessment/1, human_oversight_measures_technical/1).
alias(implementing_act_concerning/1, implementing_act/1).
alias(adopting_implementing_acts/2, implementing_acts/2).
alias(identified_in_course_of_testing/2, in_course_of_testing/2).
alias(must_inform_parties/2, inform_parties/2).
alias(input_output_modality_format/1, input_output_modality/1).
alias(technical_integration_means/1, integration_technical_means/1).
alias(protected_data_processing_environment/1, isolated_data_processing_environment/1).
alias(certificate_issued_by/2, issued_certificate/2).
alias(initiated_judicial_proceedings/2, judicial_proceedings/2).
alias(used_by_law_enforcement_border_immigration_asylum_authority/1, law_enforcement_immigration_asylum_authority/1).
alias(law_enforcement_border_immigration_asylum_authority/1, law_enforcement_immigration_asylum_authority/1).
alias(used_for_purposes_of_law_enforcement_migration_border_control_or_asylum/1, law_enforcement_migration_asylum_border_control_area/1).
alias(under_control/2, logs_under_control/2).
alias(made_available_on_union_market/2, made_available_on_market/2).
alias(may_impose_administrative_fine/2, may_impose_fine/2).
alias(may_initiate_structured_dialogue/2, may_initiate_dialogue/2).
alias(may_invite_to_adhere/2, may_invite/2).
alias(may_rely_on_codes_of_practice/2, may_rely_on_code_of_practice/2).
alias(request_for_access/2, may_request_access/2).
alias(mitigation_measures_adopted/2, measures_adopted/2).
alias(corrective_measures_taken/2, measures_taken/2).
alias(entirely_meets_requirements/2, meets_requirements/2).
alias(shall_adopt_implementing_acts/2, must_adopt_implementing_acts/2).
alias(must_cooperate/2, must_cooperate_with_authorities/2).
alias(must_cooperate_with_authority/2, must_cooperate_with_authorities/2).
alias(must_draw_up_declaration/2, must_draw_up_declaration_of_conformity/2).
alias(must_encourage_and_facilitate_codes/2, must_encourage_and_facilitate/2).
alias(ensure_confidentiality/1, must_ensure_confidentiality/1).
alias(must_maintain_quality_management_system/2, must_have_quality_management_system/2).
alias(must_comply_with_quality_management_system/2, must_have_quality_management_system/2).
alias(must_inform_commission_and_states/2, must_inform_commission_and_member_states/2).
alias(must_ensure_list_up_to_date/2, must_keep_list_up_to_date/2).
alias(shall_keep_up_to_date/2, must_keep_up_to_date/2).
alias(must_lodge_technical_documentation_application/2, must_lodge_application/2).
alias(must_establish_risk_management_system/2, must_maintain_risk_management_system/2).
alias(must_implement_risk_management_system/2, must_maintain_risk_management_system/2).
alias(shall_make_publicly_available/2, must_make_publicly_available/2).
alias(shall_make_available_to_public/2, must_make_publicly_available/2).
alias(must_provide_information_on_request/2, must_provide_information/2).
alias(must_provide_certificate_information/2, must_provide_information/2).
alias(must_register_with_information/2, must_register_information/2).
alias(must_submit_report/2, must_report/2).
alias(must_report_serious_incidents/2, must_report_serious_incident/2).
alias(must_publish_annual_report/2, must_submit_annual_report/2).
alias(must_take_corrective_actions/2, must_take_corrective_action/2).
alias(shall_take_into_account/2, must_take_into_account/2).
alias(must_take_into_account_sme_interests/2, must_take_into_account_sme_needs/2).
alias(must_take_restrictive_measures/2, must_take_restriction_measures/2).
alias(must_ensure_restrictive_measures/2, must_take_restriction_measures/2).
alias(applicable_union_or_national_law_provides_otherwise/1, national_law_provides_otherwise/1).
alias(relevant_national_public_authority/1, national_public_authority_or_body/1).
alias(natural_or_legal_person/1, natural_person/1).
alias(infringement_nature/1, nature_of_infringement/1).
alias(new_conformity_assessment_required/2, new_conformity_assessment_needed/2).
alias(non_compliance_due_to_art_5/1, non_compliance_art_5/1).
alias(non_compliance_prohibited_practices/1, non_compliance_art_5/1).
alias(non_compliance_with_prohibited_ai_practices/1, non_compliance_art_5/1).
alias(non_compliance_with_art_50/1, non_compliance_art_50/1).
alias(harmonised_standards_non_compliant/1, non_compliance_harmonised_standards/1).
alias(not_high_risk_under_article_6_par_3/1, not_high_risk_under_art_6_par_3/1).
alias(notified_body_responsible_for_conformity_assessment/2, notified_body_for_assessment/2).
alias(only_authorised_persons_have_access/1, only_authorised_persons_access/1).
alias(other_competent_authority/1, other_authority/1).
alias(relevant_market_surveillance_authority/1, other_market_surveillance_authority/1).
alias(testing_in_real_world_conditions_permitted/1, permitted_testing_in_real_world_conditions/1).
alias(initially_placed_on_market_or_put_into_service/2, placed_or_put_into_service_by/2).
alias(planned_cessation_activity/1, planned_cessation/1).
alias(point_of_contact_of_provider/2, point_of_contact/2).
alias(post_market_monitoring_relevant/2, post_market_monitoring/2).
alias(must_base_on_post_market_monitoring_plan/1, post_market_monitoring_plan/1).
alias(empowered_to_adopt_delegated_acts/1, power_to_adopt_delegated_acts/1).
alias(product_covered_by_union_harmonisation_legislation/1, product_covered_by_harmonisation_legislation/1).
alias(provider_or_prospective_provider/1, prospective_provider/1).
alias(applying_provider_or_prospective_provider/1, prospective_provider/1).
alias(made_publicly_available/1, publicly_available/1).
alias(protect_fundamental_rights_health_safety/1, purpose_protect_health_safety_rights/1).
alias(required_qualified_alert/1, qualified_alert/1).
alias(quality_management_system_satisfies_requirements/1, quality_management_system/1).
alias(all_other_reasonable_means_exhausted/2, reasonable_means_exhausted/2).
alias(reasoned_request_made/2, reasoned_request/2).
alias(harmonised_standard_references_published/1, reference_published_in_official_journal/1).
alias(references_published_in_official_journal/1, reference_published_in_official_journal/1).
alias(referred_in_annex_3_point_5/1, referred_to_in_annex_3/1).
alias(referred_in_annex_3_point_1_a/1, referred_to_in_annex_3/1).
alias(registered_with_information_specified_in_annex_9/1, registered_with_information_specified/1).
alias(consulted_relevant_authority/1, relevant_authority/1).
alias(chapter_3_section_2_requirements/1, requirements_in_chapter_3_section_2/1).
alias(complies_with_chapter_3_section_2/1, requirements_in_chapter_3_section_2/1).
alias(requirements_chapter_iii_section_2/1, requirements_in_chapter_3_section_2/1).
alias(compliance_with_chapter_3_section_2/1, requirements_in_chapter_3_section_2/1).
alias(other_requirements_of_chapter_3_section_2_applied/1, requirements_in_chapter_3_section_2/1).
alias(requirements_chapter_3_section_2/1, requirements_in_chapter_3_section_2/1).
alias(requirements_of_chapter_3_section_2/1, requirements_in_chapter_3_section_2/1).
alias(law_retention_period/2, retention_period/2).
alias(risk_to_health_safety_or_fundamental_rights/1, risk_to_health_safety_or_rights/1).
alias(presents_risk_within_meaning_art_79_1/1, risk_within_art_79_1/1).
alias(sensitive_operational_data_in_relation_to_law_enforcement/1, sensitive_operational_data_law_enforcement/1).
alias(significant_risk_to_fundamental_rights/1, significant_risk_fundamental_rights/1).
alias(significant_risk_safety/1, significant_risk_health/1).
alias(significant_risk_to_health_and_safety/1, significant_risk_health/1).
alias(simplified_quality_management_system/1, simplified_quality_management_system_applies/1).
alias(sme_including_start_up/1, sme_or_start_up/1).
alias(statement_of_conformity_issued/1, statement_of_conformity/1).
alias(standing_sub_group/1, sub_group/1).
alias(supervised_within_sandbox/2, supervised_within/2).
alias(authority_supervising_sandbox/2, supervising_sandbox/2).
alias(systemic_risk_presents/1, systemic_risk_present/1).
alias(tacit_extension/1, tacit_extension_applies/1).
alias(appropriate_risk_management_measures/1, targeted_risk_management_measures/1).
alias(required_technical_documentation/1, technical_documentation/1).
alias(required_technical_documentation_section_1/1, technical_documentation/1).
alias(required_technical_documentation_for_downstream_provider/1, technical_documentation/1).
alias(provider_tests_satisfactory/2, tests_satisfactory/2).
alias(training_testing_validation_information/1, training_data_information/1).
alias(under_responsibility_of_distributor/2, under_responsibility/2).
alias(union_harmonisation_legislation_period/1, union_harmonisation_legislation/1).
alias(union_institution_body_office_agency/1, union_institution/1).
alias(union_institution_body_office_or_agency/1, union_institution/1).

% ==== celex:32024R1689/oj#art_1 ====
declared(purpose_protect_health_safety_rights/1, 'ensure high level of protection of health, safety, fundamental rights, democracy, rule of law and environmental protection', 'celex:32024R1689/oj#art_1').
purpose_protect_health_safety_rights(celex_32024R1689).
provenance(purpose_protect_health_safety_rights/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(applies_to/1, 'the AI Act applies to the entity or activity', 'celex:32024R1689/oj#art_2').
declared(does_not_apply_to/1, 'the AI Act does not apply to the entity or activity', 'celex:32024R1689/oj#art_2').
declared(applies_with_limitation/2, 'the AI Act applies with specified limitation', 'celex:32024R1689/oj#art_2').
declared(does_not_affect/1, 'the AI Act does not affect the specified provision', 'celex:32024R1689/oj#art_2').
declared(without_prejudice_to/1, 'the AI Act is without prejudice to the specified provision', 'celex:32024R1689/oj#art_2').
declared(exclusively_for_military_defence_national_security/1, 'AI system used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(output_used_exclusively_for_military_defence_national_security/1, 'output of AI system used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(scientific_research_and_development/1, 'AI system or model developed and put into service for sole purpose of scientific research and development', 'celex:32024R1689/oj#art_2').
declared(research_testing_development_prior_to_market/1, 'research, testing or development activity prior to being placed on market or put into service', 'celex:32024R1689/oj#art_2').
declared(purely_personal_non_professional_activity/1, 'natural person using AI system in purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(more_favourable_worker_protection/1, 'law or collective agreement more favourable to workers regarding AI use by employers', 'celex:32024R1689/oj#art_2').
declared(international_cooperation_law_enforcement_judicial/1, 'use of AI systems in framework of international cooperation or agreements for law enforcement and judicial cooperation', 'celex:32024R1689/oj#art_2').
declared(adequate_safeguards_fundamental_rights/1, 'third country or international organisation provides adequate safeguards for fundamental rights and freedoms', 'celex:32024R1689/oj#art_2').
declared(high_risk_under_art_6_par_1/1, 'AI system classified as high-risk in accordance with Article 6(1)', 'celex:32024R1689/oj#art_2').
declared(product_covered_by_union_harmonisation_legislation_annex_1_sec_2/1, 'product covered by Union harmonisation legislation listed in Annex I Section 2', 'celex:32024R1689/oj#art_2').
declared(requirements_integrated_in_union_harmonisation_legislation/1, 'requirements for high-risk AI systems integrated in Union harmonisation legislation', 'celex:32024R1689/oj#art_2').
applies_to(provider_placing_on_market_or_putting_into_service(P, S)) :-
    provider(P),
    (ai_system(S); general_purpose_ai_model(S)),
    placing_on_market_or_putting_into_service(P, S),
    established_or_located_in_union_or_third_country(P).
placing_on_market_or_putting_into_service(P, S) :-
    (placing_on_market(S); putting_into_service(S)),
    provider(P).
established_or_located_in_union_or_third_country(P) :-
    established_in_union(P).
established_or_located_in_union_or_third_country(P) :-
    \+ established_in_union(P).
applies_to(deployer_in_union(D)) :-
    deployer(D),
    established_in_union(D).
applies_to(provider_or_deployer_third_country_output_in_union(P, S)) :-
    (provider(P); deployer(P)),
    \+ established_in_union(P),
    ai_system(S),
    output_used_in_union(S).
applies_to(importer_or_distributor(I)) :-
    importer(I).
applies_to(importer_or_distributor(D)) :-
    distributor(D).
applies_to(product_manufacturer_with_ai_system(M, S)) :-
    product_manufacturer(M),
    ai_system(S),
    placing_on_market_or_putting_into_service(M, S),
    under_own_name_or_trademark(M, S).
under_own_name_or_trademark(M, S).
applies_to(authorised_representative_not_in_union(R)) :-
    authorised_representative(R),
    \+ established_in_union(R).
applies_to(affected_person_in_union(P)) :-
    affected_person(P),
    established_in_union(P).
applies_with_limitation(high_risk_ai_system_annex_1_sec_2(S), limited_provisions_apply) :-
    high_risk_under_art_6_par_1(S),
    product_covered_by_union_harmonisation_legislation_annex_1_sec_2(S).
applies_with_limitation(high_risk_ai_system_annex_1_sec_2(S), art_57_conditional) :-
    high_risk_under_art_6_par_1(S),
    product_covered_by_union_harmonisation_legislation_annex_1_sec_2(S),
    requirements_integrated_in_union_harmonisation_legislation(S).
does_not_apply_to(area_outside_union_law).
does_not_apply_to(national_security_competence).
does_not_apply_to(ai_system_military_defence_national_security(S)) :-
    ai_system(S),
    exclusively_for_military_defence_national_security(S).
does_not_apply_to(ai_system_output_military_defence_national_security(S)) :-
    ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    output_used_exclusively_for_military_defence_national_security(S).
does_not_apply_to(third_country_authority_international_organisation_cooperation(A)) :-
    (public_authority_third_country(A); international_organisation(A)),
    international_cooperation_law_enforcement_judicial(A),
    adequate_safeguards_fundamental_rights(A).
public_authority_third_country(A).
international_organisation(A).
does_not_affect(liability_intermediary_services).
does_not_apply_to(scientific_research_development(S)) :-
    (ai_system(S); general_purpose_ai_model(S)),
    scientific_research_and_development(S).
without_prejudice_to(data_protection_law).
does_not_apply_to(research_testing_development_activity(A)) :-
    research_testing_development_prior_to_market(A),
    \+ testing_in_real_world_conditions(A).
without_prejudice_to(consumer_protection_product_safety).
does_not_apply_to(natural_person_purely_personal_non_professional(D)) :-
    deployer(D),
    natural_person(D),
    purely_personal_non_professional_activity(D).
does_not_preclude(more_favourable_worker_protection(L)) :-
    more_favourable_worker_protection(L).
does_not_apply_to(free_open_source_not_high_risk_or_prohibited(S)) :-
    (ai_system(S); general_purpose_ai_model(S)),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ falls_under_art_5_or_50(S).
falls_under_art_5_or_50(S) :-
    ai_system(S),
    (prohibited_practice_art_5(S); falls_under_art_50(S)).
prohibited_practice_art_5(S).
falls_under_art_50(S).
provenance(applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(applies_with_limitation/2, 'celex:32024R1689/oj#art_2').
provenance(does_not_affect/1, 'celex:32024R1689/oj#art_2').
provenance(without_prejudice_to/1, 'celex:32024R1689/oj#art_2').
provenance(does_not_preclude/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_for_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_exclusively_for_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_and_development/1, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_prior_to_market/1, 'celex:32024R1689/oj#art_2').
provenance(purely_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(more_favourable_worker_protection/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_judicial/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_under_art_6_par_1/1, 'celex:32024R1689/oj#art_2').
provenance(product_covered_by_union_harmonisation_legislation_annex_1_sec_2/1, 'celex:32024R1689/oj#art_2').
provenance(requirements_integrated_in_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_2').
provenance(placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_2').
provenance(established_or_located_in_union_or_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(provider_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_2').
provenance(deployer_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(provider_or_deployer_third_country_output_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(importer_or_distributor/1, 'celex:32024R1689/oj#art_2').
provenance(product_manufacturer_with_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(under_own_name_or_trademark/2, 'celex:32024R1689/oj#art_2').
provenance(authorised_representative_not_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(limited_provisions_apply/0, 'celex:32024R1689/oj#art_2').
provenance(art_57_conditional/0, 'celex:32024R1689/oj#art_2').
provenance(area_outside_union_law/0, 'celex:32024R1689/oj#art_2').
provenance(national_security_competence/0, 'celex:32024R1689/oj#art_2').
provenance(ai_system_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(ai_system_output_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(third_country_authority_international_organisation_cooperation/1, 'celex:32024R1689/oj#art_2').
provenance(public_authority_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(international_organisation/1, 'celex:32024R1689/oj#art_2').
provenance(liability_intermediary_services/0, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_development/1, 'celex:32024R1689/oj#art_2').
provenance(data_protection_law/0, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_activity/1, 'celex:32024R1689/oj#art_2').
provenance(consumer_protection_product_safety/0, 'celex:32024R1689/oj#art_2').
provenance(natural_person_purely_personal_non_professional/1, 'celex:32024R1689/oj#art_2').
provenance(free_open_source_not_high_risk_or_prohibited/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_5_or_50/1, 'celex:32024R1689/oj#art_2').
provenance(prohibited_practice_art_5/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_50/1, 'celex:32024R1689/oj#art_2').
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
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32022R2065/oj#chp_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').

% ==== celex:32024R1689/oj#art_4 ====
declared(must_ensure_ai_literacy/2, 'provider or deployer shall take measures to ensure sufficient AI literacy', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Actor, Staff) :-
    ( provider(Actor) ; deployer(Actor) ),
    staff_or_representative(Actor, Staff),
    deals_with_operation_or_use(Staff, S),
    ai_system(S),
    under_authority(Actor, Staff).
relevant_staff_factors(Staff, S) :-
    technical_knowledge(Staff),
    experience(Staff),
    education(Staff),
    training(Staff),
    context_of_use(S, Context),
    target_persons(S, Target).
taking_into_account(Staff, S) :-
    relevant_staff_factors(Staff, S).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(relevant_staff_factors/2, 'celex:32024R1689/oj#art_4').
provenance(taking_into_account/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulative_deceptive_system/1, 'AI system using subliminal or manipulative/deceptive techniques to distort behaviour causing harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_vulnerability_exploitation_system/1, 'AI system exploiting vulnerabilities of natural persons or specific groups causing harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring_system/1, 'AI system for social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment_system/1, 'AI system assessing criminal offence risk based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(permitted_criminal_risk_assessment_support/1, 'AI system supporting human assessment of criminal activity based on objective verifiable facts', 'celex:32024R1689/oj#art_5').
declared(prohibited_untargeted_scraping_facial_recognition/1, 'AI system creating facial recognition databases through untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference_system/1, 'AI system inferring emotions in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(permitted_emotion_inference_medical_safety/1, 'AI system inferring emotions intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation_sensitive_characteristics/1, 'biometric categorisation system deducing sensitive characteristics from biometric data', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_categorisation_lawful_dataset_labelling/1, 'labelling or filtering lawfully acquired biometric datasets based on biometric data', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_categorisation_law_enforcement/1, 'categorizing biometric data in the area of law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_objective/2, 'permitted objective for real-time remote biometric identification in law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_deployment_confirm_identity/1, 'real-time remote biometric identification deployed only to confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(required_use_elements_consideration/1, 'required elements for consideration when using real-time remote biometric identification', 'celex:32024R1689/oj#art_5').
declared(required_safeguards_conditions/1, 'necessary and proportionate safeguards and conditions for real-time remote biometric identification', 'celex:32024R1689/oj#art_5').
declared(required_fundamental_rights_impact_assessment/1, 'fundamental rights impact assessment required before use of real-time remote biometric identification', 'celex:32024R1689/oj#art_5').
declared(required_registration_eu_database/1, 'registration in EU database required before use of real-time remote biometric identification', 'celex:32024R1689/oj#art_5').
declared(urgency_exception_registration/1, 'urgency allows commencement without registration provided completed without undue delay', 'celex:32024R1689/oj#art_5').
declared(required_prior_authorisation/1, 'prior authorisation required for real-time remote biometric identification use', 'celex:32024R1689/oj#art_5').
declared(urgency_exception_authorisation/1, 'urgency allows commencement without authorisation provided requested within 24 hours', 'celex:32024R1689/oj#art_5').
declared(required_stop_and_delete_on_rejection/1, 'stop use and delete data if authorisation rejected', 'celex:32024R1689/oj#art_5').
declared(required_authorisation_necessary_proportionate/1, 'authorisation granted only if necessary and proportionate', 'celex:32024R1689/oj#art_5').
declared(required_authorisation_limited_scope/1, 'authorisation limited to strictly necessary time, geographic and personal scope', 'celex:32024R1689/oj#art_5').
declared(prohibited_adverse_decision_solely_on_output/1, 'no adverse legal effect based solely on output of real-time remote biometric identification', 'celex:32024R1689/oj#art_5').
declared(must_notify_authorities/2, 'notify market surveillance and data protection authorities of real-time remote biometric identification use', 'celex:32024R1689/oj#art_5').
declared(member_state_may_authorise_real_time_remote_biometric/1, 'Member State may authorise real-time remote biometric identification under specified conditions', 'celex:32024R1689/oj#art_5').
declared(must_lay_down_national_rules/2, 'Member State shall lay down detailed national rules for authorisations', 'celex:32024R1689/oj#art_5').
declared(must_notify_commission_rules/2, 'Member State shall notify Commission of national rules within 30 days', 'celex:32024R1689/oj#art_5').
declared(member_state_may_introduce_more_restrictive_laws/1, 'Member State may introduce more restrictive laws on remote biometric identification', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'national authorities shall submit annual reports to Commission on real-time remote biometric identification use', 'celex:32024R1689/oj#art_5').
declared(must_provide_template/2, 'Commission shall provide template for annual reports', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/2, 'Commission shall publish annual reports on real-time remote biometric identification use', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulative_deceptive_system(S) :-
    ai_system(S),
    deploys_subliminal_techniques(S),
    beyond_consciousness(S),
    objective_or_effect_distort_behaviour(S),
    appreciably_impair_informed_decision(S),
    causes_significant_harm(S).
prohibited_subliminal_manipulative_deceptive_system(S) :-
    ai_system(S),
    purposefully_manipulative_or_deceptive_techniques(S),
    objective_or_effect_distort_behaviour(S),
    appreciably_impair_informed_decision(S),
    causes_significant_harm(S).
prohibited_vulnerability_exploitation_system(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    vulnerability_due_to_age_disability_or_social_economic_situation(S),
    objective_or_effect_distort_behaviour(S),
    causes_significant_harm(S).
prohibited_social_scoring_system(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_or_groups(S),
    based_on_social_behaviour_or_characteristics(S),
    social_score_leads_to_detrimental_treatment_unrelated_context(S).
prohibited_social_scoring_system(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_or_groups(S),
    based_on_social_behaviour_or_characteristics(S),
    social_score_leads_to_unjustified_or_disproportionate_treatment(S).
prohibited_criminal_risk_assessment_system(S) :-
    ai_system(S),
    risk_assessment_criminal_offence(S),
    based_solely_on_profiling(S).
prohibited_criminal_risk_assessment_system(S) :-
    ai_system(S),
    risk_assessment_criminal_offence(S),
    based_on_assessing_personality_traits_and_characteristics(S).
permitted_criminal_risk_assessment_support(S) :-
    ai_system(S),
    supports_human_assessment_criminal_activity(S),
    based_on_objective_verifiable_facts(S),
    directly_linked_to_criminal_activity(S).
prohibited_untargeted_scraping_facial_recognition(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_databases(S),
    untargeted_scraping_facial_images(S),
    from_internet_or_cctv_footage(S).
prohibited_emotion_inference_system(S) :-
    ai_system(S),
    infers_emotions(S),
    used_in_workplace_or_education_institutions(S).
permitted_emotion_inference_medical_safety(S) :-
    ai_system(S),
    infers_emotions(S),
    intended_for_medical_or_safety_reasons(S).
prohibited_biometric_categorisation_sensitive_characteristics(S) :-
    biometric_categorisation_system(S),
    categorises_individually_natural_persons(S),
    based_on_biometric_data(S),
    deduces_or_infers_sensitive_characteristics(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_race(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_political_opinions(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_trade_union_membership(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_religious_or_philosophical_beliefs(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_sex_life(S).
sensitive_characteristics_inferred(S) :-
    deduces_or_infers_sexual_orientation(S).
prohibited_biometric_categorisation_sensitive_characteristics(S) :-
    biometric_categorisation_system(S),
    categorises_individually_natural_persons(S),
    based_on_biometric_data(S),
    sensitive_characteristics_inferred(S).
permitted_biometric_categorisation_lawful_dataset_labelling(S) :-
    biometric_categorisation_system(S),
    labelling_or_filtering_lawfully_acquired_biometric_datasets(S).
permitted_biometric_categorisation_law_enforcement(S) :-
    biometric_categorisation_system(S),
    categorizing_biometric_data(S),
    in_area_of_law_enforcement(S).
prohibited_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    \+ permitted_real_time_remote_biometric_objective(S, _).
permitted_real_time_remote_biometric_objective(S, targeted_search_victims_abduction_trafficking_sexual_exploitation) :-
    real_time_remote_biometric_identification_system(S),
    targeted_search_specific_victims(S),
    victim_of_abduction_trafficking_sexual_exploitation(S).
permitted_real_time_remote_biometric_objective(S, targeted_search_victims_abduction_trafficking_sexual_exploitation) :-
    real_time_remote_biometric_identification_system(S),
    search_for_missing_persons(S).
permitted_real_time_remote_biometric_objective(S, prevention_threat_life_safety) :-
    real_time_remote_biometric_identification_system(S),
    prevention_specific_substantial_imminent_threat_life_physical_safety(S).
permitted_real_time_remote_biometric_objective(S, prevention_terrorist_attack) :-
    real_time_remote_biometric_identification_system(S),
    genuine_present_or_foreseeable_threat_terrorist_attack(S).
permitted_real_time_remote_biometric_objective(S, localisation_identification_suspected_offender) :-
    real_time_remote_biometric_identification_system(S),
    localisation_or_identification_suspected_criminal_offence(S),
    purpose_criminal_investigation_prosecution_or_executing_penalty(S),
    offence_referred_in_annex_2(S),
    punishable_by_custodial_sentence_or_detention_order(S),
    maximum_period_at_least_four_years(S).
permitted_deployment_confirm_identity(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    deployed_to_confirm_identity(S),
    specifically_targeted_individual(S).
required_use_elements_consideration(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    considers_nature_of_situation(S),
    considers_seriousity_probability_scale_of_harm(S),
    considers_consequences_for_rights_and_freedoms(S),
    considers_seriousity_probability_scale_of_consequences(S).
required_safeguards_conditions(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    complies_with_necessary_proportionate_safeguards(S),
    temporal_limitations(S),
    geographic_limitations(S),
    personal_limitations(S),
    authorised_under_national_law(S).
required_fundamental_rights_impact_assessment(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    fundamental_rights_impact_assessment_completed(S).
required_registration_eu_database(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    registered_in_eu_database(S).
urgency_exception_registration(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    duly_justified_case_of_urgency(S),
    commenced_without_registration(S),
    registration_completed_without_undue_delay(S).
required_prior_authorisation(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    prior_authorisation_granted(S),
    by_judicial_or_independent_administrative_authority(S),
    binding_decision(S),
    in_member_state_of_use(S),
    upon_reasoned_request(S),
    in_accordance_with_national_law(S).
urgency_exception_authorisation(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    permitted_real_time_remote_biometric_objective(S, _),
    duly_justified_situation_of_urgency(S),
    commenced_without_authorisation(S),
    authorisation_requested_without_undue_delay(S),
    requested_within_24_hours(S).
required_stop_and_delete_on_rejection(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    commenced_without_authorisation(S),
    authorisation_rejected(S),
    use_stopped_with_immediate_effect(S),
    data_discarded_and_deleted(S),
    results_and_outputs_discarded_and_deleted(S).
required_authorisation_necessary_proportionate(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_requested(S),
    authority_satisfied_necessary_for_objective(S),
    authority_satisfied_proportionate_to_objective(S),
    objective_specified_in_request(S),
    permitted_real_time_remote_biometric_objective(S, Objective),
    objective_specified_in_request(Objective).
required_authorisation_limited_scope(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_granted(S),
    limited_to_strictly_necessary_period(S),
    limited_to_strictly_necessary_geographic_scope(S),
    limited_to_strictly_necessary_personal_scope(S).
prohibited_adverse_decision_solely_on_output(S) :-
    real_time_remote_biometric_identification_system(S),
    adverse_legal_effect_on_person(Decision),
    based_solely_on_output(S, Decision).
must_notify_authorities(Authority, use(S)) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    market_surveillance_authority(Authority).
must_notify_authorities(Authority, use(S)) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    data_protection_authority(Authority).
member_state_may_authorise_real_time_remote_biometric(MemberState) :-
    member_state(MemberState),
    may_provide_for_authorisation(MemberState),
    use_of_real_time_remote_biometric_identification_systems(S),
    in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S),
    within_limits_and_conditions_of_paragraph_1_h(S),
    within_limits_and_conditions_of_paragraph_2(S),
    within_limits_and_conditions_of_paragraph_3(S).
must_lay_down_national_rules(MemberState, authorisation_rules) :-
    member_state(MemberState),
    lays_down_detailed_rules(MemberState),
    request_for_authorisation(MemberState),
    issuance_of_authorisation(MemberState),
    exercise_of_authorisation(MemberState),
    supervision_of_authorisation(MemberState),
    reporting_on_authorisation(MemberState).
must_notify_commission_rules(MemberState, national_rules) :-
    member_state(MemberState),
    adopted_national_rules(MemberState),
    notifies_commission(MemberState),
    within(days(30), adoption(MemberState)).
member_state_may_introduce_more_restrictive_laws(MemberState) :-
    member_state(MemberState),
    introduces_more_restrictive_laws(MemberState),
    on_use_of_remote_biometric_identification_systems(S),
    in_accordance_with_union_law(MemberState).
must_submit_annual_report(Authority, use_of_real_time_remote_biometric(S)) :-
    market_surveillance_authority(Authority),
    notified_of_use(S),
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S).
must_submit_annual_report(Authority, use_of_real_time_remote_biometric(S)) :-
    data_protection_authority(Authority),
    notified_of_use(S),
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_spaces(S),
    for_law_enforcement_purposes(S).
must_provide_template(commission, annual_report_template) :-
    commission(commission),
    provides_template(commission),
    to_member_states(commission),
    to_national_market_surveillance_authorities(commission),
    to_national_data_protection_authorities(commission),
    includes_information_on_decisions(commission),
    by_competent_judicial_authorities(commission),
    by_independent_administrative_authorities(commission),
    upon_requests_for_authorisations(commission),
    and_their_result(commission).
must_publish_annual_report(commission, aggregated_data_on_use(S)) :-
    commission(commission),
    publishes_annual_report(commission),
    based_on_aggregated_data(commission),
    from_member_states(commission),
    on_basis_of_annual_reports_referred_in_paragraph_6(commission),
    \+ includes_sensitive_operational_data(commission).
provenance(prohibited_subliminal_manipulative_deceptive_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploitation_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_criminal_risk_assessment_support/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_scraping_facial_recognition/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference_system/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference_medical_safety/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation_sensitive_characteristics/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation_lawful_dataset_labelling/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_categorisation_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_objective/2, 'celex:32024R1689/oj#art_5').
provenance(permitted_deployment_confirm_identity/1, 'celex:32024R1689/oj#art_5').
provenance(required_use_elements_consideration/1, 'celex:32024R1689/oj#art_5').
provenance(required_safeguards_conditions/1, 'celex:32024R1689/oj#art_5').
provenance(required_fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(required_registration_eu_database/1, 'celex:32024R1689/oj#art_5').
provenance(urgency_exception_registration/1, 'celex:32024R1689/oj#art_5').
provenance(required_prior_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(urgency_exception_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(required_stop_and_delete_on_rejection/1, 'celex:32024R1689/oj#art_5').
provenance(required_authorisation_necessary_proportionate/1, 'celex:32024R1689/oj#art_5').
provenance(required_authorisation_limited_scope/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_adverse_decision_solely_on_output/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify_authorities/2, 'celex:32024R1689/oj#art_5').
provenance(member_state_may_authorise_real_time_remote_biometric/1, 'celex:32024R1689/oj#art_5').
provenance(must_lay_down_national_rules/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_commission_rules/2, 'celex:32024R1689/oj#art_5').
provenance(member_state_may_introduce_more_restrictive_laws/1, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide_template/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(S),
    conformity_assessment_procedure(S).
high_risk_ai_system(S) :-
    ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    \+ ai_safety_component(S),
    conformity_assessment_procedure(S).
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S).
not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    narrow_procedural_task(S).
not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    improves_prior_human_activity(S).
not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    detects_decision_patterns(S),
    not_replaces_or_influences_prior_assessment(S),
    proper_human_review(S).
not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    preparatory_task_to_annex_3_assessment(S).
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    profiling(S).
must_document_assessment(P, S) :-
    provider(P),
    ai_system(S),
    referred_to_in_annex_3(S),
    not_high_risk_under_art_6_par_3(S),
    before_placing_on_market_or_putting_into_service(S).
must_provide_assessment_documentation(P, S) :-
    provider(P),
    ai_system(S),
    not_high_risk_under_art_6_par_3(S),
    request_by(national_competent_authority(_), P, S).
declared(narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
declared(improves_prior_human_activity/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
declared(detects_decision_patterns/1, 'AI system intended to detect decision-making patterns or deviations', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
declared(not_replaces_or_influences_prior_assessment/1, 'not meant to replace or influence the previously completed human assessment', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
declared(proper_human_review/1, 'proper human review is in place', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
declared(preparatory_task_to_annex_3_assessment/1, 'AI system intended to perform a preparatory task to an assessment relevant for Annex III use cases', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
declared(significant_risk_health/1, 'significant risk of harm to health or safety', 'celex:32024R1689/oj#art_6/par_3').
declared(significant_risk_fundamental_rights/1, 'significant risk of harm to fundamental rights', 'celex:32024R1689/oj#art_6/par_3').
declared(request_by/3, 'request made by authority to provider for assessment documentation', 'celex:32024R1689/oj#art_6/par_4').
must_provide_guidelines(commission, art_6_guidelines) :-
    before(date(2026, 2, 2)).
declared(before/1, 'condition that a date is before specified deadline', 'celex:32024R1689/oj#art_6/par_5').
power_to_adopt_delegated_acts(commission).
must_adopt_delegated_act(commission, delete_condition(art_6_par_3_unp_2)) :-
    concrete_reliable_evidence_necessary_for_protection.
declared(concrete_reliable_evidence_necessary_for_protection/0, 'concrete and reliable evidence that deletion is necessary to maintain protection level', 'celex:32024R1689/oj#art_6/par_7').
amendment_constraint(no_decrease_protection).
amendment_constraint(consistency_with_art_7).
amendment_constraint(consider_market_technological_developments).
declared(amendment_constraint/1, 'constraint applicable to amendments under Article 6(6)-(7)', 'celex:32024R1689/oj#art_6/par_8').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(not_high_risk_under_art_6_par_3/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_guidelines/2, 'celex:32024R1689/oj#art_6/par_5').
provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_6/par_6').
provenance(must_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6/par_7').
provenance(amendment_constraint/1, 'celex:32024R1689/oj#art_6/par_8').
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

% ==== celex:32024R1689/oj#art_7 ====
declared(condition_add_anx_3/2, 'conditions for adding or modifying use-cases in Annex 3', 'celex:32024R1689/oj#art_7').
declared(condition_remove_anx_3/2, 'conditions for removing use-cases from Annex 3', 'celex:32024R1689/oj#art_7').
declared(intended_purpose_criterion/1, 'intended purpose criterion for assessment', 'celex:32024R1689/oj#art_7').
declared(extent_of_use_criterion/1, 'extent of use criterion for assessment', 'celex:32024R1689/oj#art_7').
declared(data_processed_criterion/1, 'nature and amount of data processed criterion', 'celex:32024R1689/oj#art_7').
declared(autonomy_and_override_criterion/1, 'autonomy and human override criterion', 'celex:32024R1689/oj#art_7').
declared(harm_or_concerns_criterion/1, 'existing harm or concerns criterion', 'celex:32024R1689/oj#art_7').
declared(potential_extent_of_harm_criterion/1, 'potential extent of harm criterion', 'celex:32024R1689/oj#art_7').
declared(dependency_on_outcome_criterion/1, 'dependency on outcome criterion', 'celex:32024R1689/oj#art_7').
declared(imbalance_of_power_criterion/1, 'imbalance of power or vulnerable position criterion', 'celex:32024R1689/oj#art_7').
declared(corrigibility_criterion/1, 'corrigibility or reversibility criterion', 'celex:32024R1689/oj#art_7').
declared(benefit_of_deployment_criterion/1, 'magnitude and likelihood of benefit criterion', 'celex:32024R1689/oj#art_7').
declared(existing_union_law_redress_criterion/1, 'existing Union law redress measures criterion', 'celex:32024R1689/oj#art_7').
declared(existing_union_law_prevention_criterion/1, 'existing Union law prevention measures criterion', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk/1, 'high-risk AI system no longer poses significant risks', 'celex:32024R1689/oj#art_7').
declared(deletion_does_not_decrease_protection/1, 'deletion does not decrease overall level of protection', 'celex:32024R1689/oj#art_7').
declared(assess_criteria/1, 'Commission shall assess criteria', 'celex:32024R1689/oj#art_7').
condition_add_anx_3(S, commission) :-
    high_risk_ai_system(S),
    intended_use_in_annex_3_area(S),
    risk_equivalent_or_greater_than_existing_high_risk(S).
intended_use_in_annex_3_area(S) :-
    intended_purpose(S),
    referred_to_in_annex_3(S).
risk_equivalent_or_greater_than_existing_high_risk(S) :-
    risk_to_health_safety_or_rights(S),
    equivalent_or_greater_risk(S, existing_high_risk).
assess_criteria(commission) :-
    condition_add_anx_3(_S, commission).
condition_remove_anx_3(S, commission) :-
    high_risk_ai_system(S),
    no_significant_risk(S),
    deletion_does_not_decrease_protection(S).
no_significant_risk(S) :-
    \+ significant_risk_fundamental_rights(S),
    \+ significant_risk_health(S),
    criteria_listed_in_par_2_considered(S).
deletion_does_not_decrease_protection(S) :-
    \+ decreases_overall_protection_health_safety_rights(S, deletion(S)).
criteria_listed_in_par_2_considered(S) :-
    intended_purpose_criterion(S),
    extent_of_use_criterion(S),
    data_processed_criterion(S),
    autonomy_and_override_criterion(S),
    harm_or_concerns_criterion(S),
    potential_extent_of_harm_criterion(S),
    dependency_on_outcome_criterion(S),
    imbalance_of_power_criterion(S),
    corrigibility_criterion(S),
    benefit_of_deployment_criterion(S),
    existing_union_law_redress_criterion(S),
    existing_union_law_prevention_criterion(S).
intended_purpose_criterion(S) :-
    intended_purpose(S).
extent_of_use_criterion(S) :-
    used_or_likely_to_be_used(S).
data_processed_criterion(S) :-
    data_processed_and_used(S, Data),
    (special_categories_of_personal_data(Data) ; \+ special_categories_of_personal_data(Data)).
autonomy_and_override_criterion(S) :-
    acts_autonomously(S, Extent),
    human_override_possible(S, Override),
    potential_harm_from_decision(S, Harm).
harm_or_concerns_criterion(S) :-
    caused_harm_to_health_safety(S, Harm);
    adverse_impact_on_fundamental_rights(S, Impact);
    significant_concerns_likelihood_of_harm(S, Concerns),
    demonstrated_by_reports_or_allegations(Concerns).
potential_extent_of_harm_criterion(S) :-
    potential_extent_of_harm(S, Extent),
    intensity_of_harm(Extent, Intensity),
    (affects_multiple_persons(Extent) ; disproportionately_affects_group(Extent)).
dependency_on_outcome_criterion(S) :-
    persons_dependent_on_outcome(S, Persons),
    not_reasonably_possible_to_opt_out(Persons, practical_or_legal_reasons).
imbalance_of_power_criterion(S) :-
    imbalance_of_power(S, deployer);
    persons_in_vulnerable_position(S, Persons),
    vulnerable_due_to(Persons, status_or_authority_or_knowledge_or_economic_or_social_or_age).
corrigibility_criterion(S) :-
    outcome_easily_corrigible_or_reversible(S, Outcome),
    technical_solutions_available(Outcome);
    adverse_impact_on_health_safety_or_fundamental_rights(Outcome),
    \+ easily_corrigible_or_reversible(Outcome).
benefit_of_deployment_criterion(S) :-
    magnitude_and_likelihood_of_benefit(S, Benefit),
    benefit_for_individuals_or_groups_or_society(Benefit);
    possible_improvements_in_product_safety(S).
existing_union_law_redress_criterion(S) :-
    existing_union_law_provides(S, redress_measures),
    effective_measures(Redress),
    \+ claims_for_damages(Redress).
existing_union_law_prevention_criterion(S) :-
    existing_union_law_provides(S, prevention_measures),
    effective_measures(Prevention),
    prevents_or_substantially_minimises_risks(Prevention, S).
must_take_into_account(commission, criteria_for_assessment) :-
    condition_add_anx_3(_S, commission).
provenance(condition_add_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(condition_remove_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(assess_criteria/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
provenance(criteria_listed_in_par_2_considered/1, 'celex:32024R1689/oj#art_7').
provenance(intended_purpose_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(extent_of_use_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(data_processed_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(autonomy_and_override_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(harm_or_concerns_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(potential_extent_of_harm_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(dependency_on_outcome_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(imbalance_of_power_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(corrigibility_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(benefit_of_deployment_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_union_law_redress_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_union_law_prevention_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(must_comply_with_requirements/1, 'high-risk AI system must comply with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_8').
declared(must_ensure_full_compliance/2, 'provider must ensure product is fully compliant with all applicable requirements', 'celex:32024R1689/oj#art_8').
declared(may_integrate_existing_documentation/1, 'provider may integrate testing and reporting into existing documentation', 'celex:32024R1689/oj#art_8').
must_comply_with_requirements(S) :-
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    intended_purpose(P),
    applies_to(S, P).
must_ensure_full_compliance(Provider, Product) :-
    provider(Provider),
    product_covered_by_harmonisation_legislation(Product),
    ai_system_in_product(AiSystem, Product),
    requirements_in_chapter_3_section_2(AiSystem),
    union_harmonisation_legislation(Legislation),
    applies_to(Product, Legislation).
may_integrate_existing_documentation(Provider) :-
    provider(Provider),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    union_harmonisation_legislation(Legislation),
    existing_documentation_and_procedures(Provider, Legislation).
provenance(must_comply_with_requirements/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_full_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_existing_documentation/1, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(risk_management_system/1, 'risk management system established, implemented, documented and maintained', 'celex:32024R1689/oj#art_9').
declared(continuous_iterative_process/1, 'continuous iterative process throughout entire lifecycle', 'celex:32024R1689/oj#art_9').
declared(risk_identification_analysis/1, 'identification and analysis of known and reasonably foreseeable risks', 'celex:32024R1689/oj#art_9').
declared(risk_estimation_evaluation/1, 'estimation and evaluation of risks under intended purpose and foreseeable misuse', 'celex:32024R1689/oj#art_9').
declared(post_market_risk_evaluation/1, 'evaluation of other risks from post-market monitoring data', 'celex:32024R1689/oj#art_9').
declared(targeted_risk_management_measures/1, 'appropriate and targeted risk management measures', 'celex:32024R1689/oj#art_9').
declared(residual_risk_acceptable/1, 'residual risk judged to be acceptable', 'celex:32024R1689/oj#art_9').
declared(risk_elimination_reduction/1, 'elimination or reduction of risks through design and development', 'celex:32024R1689/oj#art_9').
declared(mitigation_control_measures/1, 'mitigation and control measures for remaining risks', 'celex:32024R1689/oj#art_9').
declared(deployer_information_training/1, 'information and training provided to deployers', 'celex:32024R1689/oj#art_9').
declared(testing_for_risk_management/1, 'testing to identify appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(testing_real_world_conditions/1, 'testing in real-world conditions permitted', 'celex:32024R1689/oj#art_9').
declared(testing_prior_to_market/1, 'testing prior to placing on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(vulnerable_groups_consideration/1, 'consideration of impact on persons under 18 and vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(combined_risk_management_procedures/1, 'aspects may be combined with other Union law risk management procedures', 'celex:32024R1689/oj#art_9').
must_maintain_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_system(S) :-
    high_risk_ai_system(S),
    continuous_iterative_process(S),
    comprises_risk_management_steps(S).
comprises_risk_management_steps(S) :-
    high_risk_ai_system(S),
    risk_identification_analysis(S),
    risk_estimation_evaluation(S),
    post_market_risk_evaluation(S),
    targeted_risk_management_measures(S).
risk_identification_analysis(S) :-
    high_risk_ai_system(S),
    risk(R),
    affects_health_safety_or_rights(R),
    intended_purpose_use(S).
risk_estimation_evaluation(S) :-
    high_risk_ai_system(S),
    risk(R),
    intended_purpose_use(S),
    reasonably_foreseeable_misuse_use(S).
post_market_risk_evaluation(S) :-
    high_risk_ai_system(S),
    post_market_monitoring_system(S).
targeted_risk_management_measures(S) :-
    high_risk_ai_system(S),
    risk_identification_analysis(S),
    risk_elimination_reduction(S),
    mitigation_control_measures(S),
    deployer_information_training(S),
    residual_risk_acceptable(S).
risk_elimination_reduction(S) :-
    high_risk_ai_system(S),
    technically_feasible(S).
mitigation_control_measures(S) :-
    high_risk_ai_system(S),
    \+ risk_eliminated(S).
deployer_information_training(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).
residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    acceptable_per_hazard(S),
    acceptable_overall(S).
testing_for_risk_management(S) :-
    high_risk_ai_system(S),
    consistent_performance(S),
    requirements_in_chapter_3_section_2(S).
testing_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).
testing_prior_to_market(S) :-
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    defined_metrics(S),
    probabilistic_thresholds(S).
vulnerable_groups_consideration(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    adverse_impact_minors(S).
combined_risk_management_procedures(S) :-
    high_risk_ai_system(S),
    internal_risk_management_other_union_law(S).
provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(post_market_risk_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(targeted_risk_management_measures/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_elimination_reduction/1, 'celex:32024R1689/oj#art_9').
provenance(mitigation_control_measures/1, 'celex:32024R1689/oj#art_9').
provenance(deployer_information_training/1, 'celex:32024R1689/oj#art_9').
provenance(testing_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(testing_prior_to_market/1, 'celex:32024R1689/oj#art_9').
provenance(vulnerable_groups_consideration/1, 'celex:32024R1689/oj#art_9').
provenance(combined_risk_management_procedures/1, 'celex:32024R1689/oj#art_9').
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
declared(data_governance_practices/1, 'data governance and management practices appropriate for the intended purpose', 'celex:32024R1689/oj#art_10').
declared(meets_quality_criteria/1, 'training, validation and testing data sets meet quality criteria', 'celex:32024R1689/oj#art_10').
declared(relevant_representative_complete/1, 'data sets are relevant, sufficiently representative, free of errors and complete', 'celex:32024R1689/oj#art_10').
declared(appropriate_statistical_properties/1, 'data sets have appropriate statistical properties', 'celex:32024R1689/oj#art_10').
declared(geographical_contextual_behavioural_functional_characteristics/1, 'data sets take into account characteristics of the specific setting', 'celex:32024R1689/oj#art_10').
declared(may_process_special_categories/1, 'provider may exceptionally process special categories of personal data for bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(bias_detection_correction_necessary/1, 'bias detection and correction cannot be effectively fulfilled by other data', 'celex:32024R1689/oj#art_10').
declared(technical_limitations_reuse/1, 'special categories subject to technical limitations on re-use', 'celex:32024R1689/oj#art_10').
declared(state_of_the_art_security_privacy/1, 'state-of-the-art security and privacy-preserving measures applied', 'celex:32024R1689/oj#art_10').
declared(secured_protected_suitable_safeguards/1, 'personal data secured with suitable safeguards and strict controls', 'celex:32024R1689/oj#art_10').
declared(not_transmitted_transferred_accessed/1, 'special categories not transmitted, transferred or accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(deleted_after_bias_corrected_or_retention/1, 'special categories deleted once bias corrected or retention period ended', 'celex:32024R1689/oj#art_10').
declared(records_include_reasons/1, 'records of processing include reasons for necessity of special categories', 'celex:32024R1689/oj#art_10').
declared(applies_only_to_testing_data/1, 'paragraphs 2-5 apply only to testing data for non-training systems', 'celex:32024R1689/oj#art_10').
meets_quality_criteria(S) :-
    high_risk_ai_system(S),
    training_data(T),
    validation_data(V),
    testing_data_set(Te),
    data_governance_practices(S).
data_governance_practices(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    design_choices_appropriate(S),
    data_collection_processes_appropriate(S),
    data_preparation_operations_appropriate(S),
    assumptions_formulated(S),
    data_availability_quantity_suitability_assessed(S),
    bias_examination_conducted(S),
    bias_mitigation_measures(S),
    data_gaps_identified_and_addressed(S).
relevant_representative_complete(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    training_data(T),
    validation_data(V),
    testing_data_set(Te),
    relevant(T),
    sufficiently_representative(T),
    sufficiently_representative(V),
    sufficiently_representative(Te),
    free_of_errors(T),
    free_of_errors(V),
    free_of_errors(Te),
    complete(T),
    complete(V),
    complete(Te).
appropriate_statistical_properties(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    training_data(T),
    validation_data(V),
    testing_data_set(Te),
    statistical_properties_appropriate(T),
    statistical_properties_appropriate(V),
    statistical_properties_appropriate(Te).
geographical_contextual_behavioural_functional_characteristics(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    data_sets_account_for_setting(S).
may_process_special_categories(P) :-
    provider(P),
    high_risk_ai_system(S),
    developed_by(P, S),
    strictly_necessary_for_bias_detection_correction(S),
    appropriate_safeguards(S),
    bias_detection_correction_necessary(S),
    technical_limitations_reuse(S),
    state_of_the_art_security_privacy(S),
    secured_protected_suitable_safeguards(S),
    not_transmitted_transferred_accessed(S),
    deleted_after_bias_corrected_or_retention(S),
    records_include_reasons(S).
bias_detection_correction_necessary(S) :-
    high_risk_ai_system(S),
    \+ bias_detection_fulfilled_by_other_data(S).
technical_limitations_reuse(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    technical_limitations_on_reuse(D),
    pseudonymisation_applied(D).
state_of_the_art_security_privacy(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    security_measures_state_of_the_art(D),
    privacy_preserving_measures_state_of_the_art(D).
secured_protected_suitable_safeguards(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    secured(D),
    protected(D),
    suitable_safeguards(D),
    strict_controls_access(D),
    documentation_access(D),
    only_authorised_persons_access(D),
    confidentiality_obligations(D).
not_transmitted_transferred_accessed(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    \+ transmitted(D),
    \+ transferred(D),
    \+ accessed_by_other_parties(D).
deleted_after_bias_corrected_or_retention(S) :-
    high_risk_ai_system(S),
    special_categories_of_personal_data(D),
    (bias_corrected(S, D); retention_period_ended(D)),
    deleted(D).
records_include_reasons(S) :-
    high_risk_ai_system(S),
    records_of_processing_activities(R),
    includes_reasons(R, necessity_strict_for_bias_detection),
    includes_reasons(R, other_data_could_not_achieve_objective).
applies_only_to_testing_data(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(Te),
    data_governance_practices(S),
    relevant_representative_complete(S),
    appropriate_statistical_properties(S),
    geographical_contextual_behavioural_functional_characteristics(S).
provenance(meets_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(relevant_representative_complete/1, 'celex:32024R1689/oj#art_10').
provenance(appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(geographical_contextual_behavioural_functional_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(may_process_special_categories/1, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_correction_necessary/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(state_of_the_art_security_privacy/1, 'celex:32024R1689/oj#art_10').
provenance(secured_protected_suitable_safeguards/1, 'celex:32024R1689/oj#art_10').
provenance(not_transmitted_transferred_accessed/1, 'celex:32024R1689/oj#art_10').
provenance(deleted_after_bias_corrected_or_retention/1, 'celex:32024R1689/oj#art_10').
provenance(records_include_reasons/1, 'celex:32024R1689/oj#art_10').
provenance(applies_only_to_testing_data/1, 'celex:32024R1689/oj#art_10').
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
declared(must_draw_up_technical_documentation/2, 'provider must draw up technical documentation before placing on market or putting into service', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_kept_up_to_date/1, 'technical documentation must be kept up to date', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_demonstrates_compliance/1, 'technical documentation demonstrates compliance with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_provides_assessment_information/1, 'technical documentation provides national competent authorities and notified bodies with necessary information in clear and comprehensive form', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_contains_annex_4_elements/1, 'technical documentation contains at minimum elements set out in Annex 4', 'celex:32024R1689/oj#art_11').
declared(simplified_technical_documentation_applies/1, 'SME including start-up may provide technical documentation elements in simplified manner', 'celex:32024R1689/oj#art_11').
declared(must_use_simplified_technical_documentation_form/1, 'SME including start-up opting for simplified manner must use Commission form', 'celex:32024R1689/oj#art_11').
declared(notified_body_accepts_simplified_form/0, 'notified bodies shall accept simplified technical documentation form for conformity assessment', 'celex:32024R1689/oj#art_11').
declared(single_technical_documentation_for_harmonised_product/1, 'single set of technical documentation for high-risk AI system related to product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_11').
declared(power_to_adopt_delegated_acts_amend_annex_4/0, 'Commission empowered to adopt delegated acts to amend Annex 4', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).
technical_documentation_kept_up_to_date(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).
technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).
technical_documentation_provides_assessment_information(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).
technical_documentation_contains_annex_4_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).
simplified_technical_documentation_applies(S) :-
    high_risk_ai_system(S),
    sme_or_start_up(_P),
    technical_documentation(S).
must_use_simplified_technical_documentation_form(S) :-
    high_risk_ai_system(S),
    sme_or_start_up(_P),
    simplified_technical_documentation_applies(S).
notified_body_accepts_simplified_form :-
    simplified_technical_documentation_applies(_S).
single_technical_documentation_for_harmonised_product(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    technical_documentation(S).
power_to_adopt_delegated_acts_amend_annex_4 :-
    power_to_adopt_delegated_acts(commission).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_kept_up_to_date/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_assessment_information/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_annex_4_elements/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_applies/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form/0, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation_for_harmonised_product/1, 'celex:32024R1689/oj#art_11').
provenance(power_to_adopt_delegated_acts_amend_annex_4/0, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(required_logging_capabilities/1, 'high-risk AI system must technically allow automatic recording of events over its lifetime', 'celex:32024R1689/oj#art_12').
declared(logging_enables_recording_of/2, 'logging capabilities enable recording of specific events', 'celex:32024R1689/oj#art_12').
declared(logging_event_risk_or_modification/1, 'event relevant for identifying risk situations or substantial modification', 'celex:32024R1689/oj#art_12').
declared(logging_event_post_market_monitoring/1, 'event relevant for facilitating post-market monitoring', 'celex:32024R1689/oj#art_12').
declared(logging_event_operation_monitoring/1, 'event relevant for monitoring operation of high-risk AI systems', 'celex:32024R1689/oj#art_12').
declared(minimum_logging_for_annex_3_point_1_a/1, 'minimum logging requirements for high-risk AI systems referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_12').
declared(records_period_of_each_use/1, 'logging records period of each use with start and end date/time', 'celex:32024R1689/oj#art_12').
declared(records_reference_database/1, 'logging records reference database against which input data was checked', 'celex:32024R1689/oj#art_12').
declared(records_input_data_match/1, 'logging records input data for which search led to a match', 'celex:32024R1689/oj#art_12').
declared(records_verification_persons/1, 'logging records identification of natural persons verifying results', 'celex:32024R1689/oj#art_12').
required_logging_capabilities(S) :-
    high_risk_ai_system(S).
logging_enables_recording_of(S, risk_or_modification) :-
    high_risk_ai_system(S),
    logging_event_risk_or_modification(S).
logging_enables_recording_of(S, post_market_monitoring) :-
    high_risk_ai_system(S),
    logging_event_post_market_monitoring(S).
logging_enables_recording_of(S, operation_monitoring) :-
    high_risk_ai_system(S),
    logging_event_operation_monitoring(S).
logging_event_risk_or_modification(S) :-
    high_risk_ai_system(S),
    risk_within_art_79_1(S).
logging_event_risk_or_modification(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).
logging_event_post_market_monitoring(S) :-
    high_risk_ai_system(S),
    post_market_monitoring(S, _).
logging_event_operation_monitoring(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    deployer_public_authority(_D).
minimum_logging_for_annex_3_point_1_a(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    records_period_of_each_use(S),
    records_reference_database(S),
    records_input_data_match(S),
    records_verification_persons(S).
provenance(required_logging_capabilities/1, 'celex:32024R1689/oj#art_12').
provenance(logging_enables_recording_of/2, 'celex:32024R1689/oj#art_12').
provenance(logging_event_risk_or_modification/1, 'celex:32024R1689/oj#art_12').
provenance(logging_event_post_market_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(logging_event_operation_monitoring/1, 'celex:32024R1689/oj#art_12').
provenance(minimum_logging_for_annex_3_point_1_a/1, 'celex:32024R1689/oj#art_12').
provenance(records_period_of_each_use/1, 'celex:32024R1689/oj#art_12').
provenance(records_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(records_input_data_match/1, 'celex:32024R1689/oj#art_12').
provenance(records_verification_persons/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(deployer_can_interpret_output/1, 'deployer can interpret output of high-risk AI system', 'celex:32024R1689/oj#art_13').
declared(deployer_can_use_appropriately/1, 'deployer can use high-risk AI system appropriately', 'celex:32024R1689/oj#art_13').
declared(instructions_for_use_accompany/1, 'instructions for use accompany high-risk AI system', 'celex:32024R1689/oj#art_13').
declared(instructions_for_use_appropriate_format/1, 'instructions for use in appropriate digital or other format', 'celex:32024R1689/oj#art_13').
declared(instructions_for_use_contain/2, 'instructions for use contain specified information', 'celex:32024R1689/oj#art_13').
deployer_can_interpret_output(S) :-
    high_risk_ai_system(S),
    designed_and_developed(S, transparency_for_interpretation).
deployer_can_use_appropriately(S) :-
    high_risk_ai_system(S),
    designed_and_developed(S, transparency_for_appropriate_use).
instructions_for_use_accompany(S) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(_)).
instructions_for_use_appropriate_format(S) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    appropriate_format(I).
instructions_for_use_contain(S, identity_and_contact_details(Provider, Representative)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    identity_and_contact_details(I, Provider, Representative).
instructions_for_use_contain(S, characteristics_capabilities_limitations(Characteristics)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    characteristics_capabilities_limitations(I, Characteristics).
instructions_for_use_contain(S, intended_purpose(P)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    intended_purpose_information(I, P).
instructions_for_use_contain(S, accuracy_robustness_cybersecurity(Metrics)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    accuracy_robustness_cybersecurity_info(I, Metrics).
instructions_for_use_contain(S, known_foreseeable_circumstances_risks(Circumstances)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    known_foreseeable_circumstances(I, Circumstances).
instructions_for_use_contain(S, technical_capabilities_explain_output(Capabilities)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    technical_capabilities_explain_output(I, Capabilities).
instructions_for_use_contain(S, performance_specific_persons_groups(Performance)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    performance_specific_persons_groups(I, Performance).
instructions_for_use_contain(S, input_data_specifications(DataInfo)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    input_data_specifications(I, DataInfo).
instructions_for_use_contain(S, predetermined_changes(Changes)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    predetermined_changes(I, Changes).
instructions_for_use_contain(S, human_oversight_measures_technical(Measures)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    human_oversight_measures_technical_info(I, Measures).
instructions_for_use_contain(S, computational_hardware_resources(Resources)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    computational_hardware_resources(I, Resources).
instructions_for_use_contain(S, log_mechanisms_description(Mechanisms)) :-
    high_risk_ai_system(S),
    accompanied_by(S, instructions_for_use(I)),
    log_mechanisms_description(I, Mechanisms).
provenance(deployer_can_interpret_output/1, 'celex:32024R1689/oj#art_13').
provenance(deployer_can_use_appropriately/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_accompany/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_appropriate_format/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_contain/2, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(human_oversight_effective/1, 'high-risk AI system can be effectively overseen by natural persons', 'celex:32024R1689/oj#art_14').
declared(human_oversight_prevents_or_minimises_risks/1, 'human oversight aims to prevent or minimise risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_14').
declared(oversight_measures_commensurate/1, 'oversight measures are commensurate with risks, autonomy and context', 'celex:32024R1689/oj#art_14').
declared(built_in_oversight_measures/1, 'measures identified and built into the system by provider before placing on market', 'celex:32024R1689/oj#art_14').
declared(deployer_implemented_oversight_measures/1, 'measures appropriate to be implemented by deployer', 'celex:32024R1689/oj#art_14').
declared(enables_understand_capacity_and_limitations/1, 'natural persons enabled to understand capacities and limitations and monitor operation', 'celex:32024R1689/oj#art_14').
declared(enables_awareness_automation_bias/1, 'natural persons enabled to remain aware of automation bias tendency', 'celex:32024R1689/oj#art_14').
declared(enables_correct_interpretation/1, 'natural persons enabled to correctly interpret output', 'celex:32024R1689/oj#art_14').
declared(enables_decision_not_to_use_or_override/1, 'natural persons enabled to decide not to use or to disregard, override or reverse output', 'celex:32024R1689/oj#art_14').
declared(enables_intervention_or_interruption/1, 'natural persons enabled to intervene or interrupt system through stop button', 'celex:32024R1689/oj#art_14').
declared(separate_verification_by_two_persons_required/1, 'separate verification by at least two natural persons required', 'celex:32024R1689/oj#art_14').
declared(separate_verification_exempt/1, 'separate verification requirement does not apply', 'celex:32024R1689/oj#art_14').
human_oversight_effective(S) :-
    high_risk_ai_system(S),
    designed_and_developed_with_human_machine_interface(S).
human_oversight_prevents_or_minimises_risks(S) :-
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose_or_foreseeable_misuse(S),
    risk_to_health_safety_or_rights_persists_despite_other_requirements(S).
oversight_measures_commensurate(S) :-
    high_risk_ai_system(S),
    oversight_measures(Measures),
    commensurate_with(Measures, risk_level(S)),
    commensurate_with(Measures, level_of_autonomy(S)),
    commensurate_with(Measures, context_of_use(S)).
built_in_oversight_measures(S) :-
    high_risk_ai_system(S),
    measures_identified_and_built_into_system_by_provider(S),
    technically_feasible(S),
    before_placing_on_market_or_putting_into_service(S).
deployer_implemented_oversight_measures(S) :-
    high_risk_ai_system(S),
    measures_identified_by_provider(S),
    appropriate_for_deployer_implementation(S),
    before_placing_on_market_or_putting_into_service(S).
enables_understand_capacity_and_limitations(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, understand_capacities_and_limitations(S)),
    enabled_to(NP, monitor_operation(S)),
    enabled_to(NP, detect_and_address_anomalies(S)).
enables_awareness_automation_bias(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, remain_aware_of_automation_bias),
    used_to_provide_information_or_recommendations_for_decisions(S).
enables_correct_interpretation(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, interpret_output_correctly),
    interpretation_tools_and_methods_available(S).
enables_decision_not_to_use_or_override(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, decide_not_to_use(S)),
    enabled_to(NP, disregard_output(S)),
    enabled_to(NP, override_output(S)),
    enabled_to(NP, reverse_output(S)).
enables_intervention_or_interruption(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_oversight(NP),
    enabled_to(NP, intervene_in_operation(S)),
    enabled_to(NP, interrupt_system(S)),
    stop_button_or_similar_procedure(S),
    allows_safe_halt(S).
separate_verification_by_two_persons_required(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    action_or_decision_based_on_identification(S),
    \+ separate_verification_exempt(S).
separate_verification_exempt(S) :-
    high_risk_ai_system(S),
    used_for_law_enforcement_migration_border_control_asylum(S),
    union_or_national_law_considers_requirement_disproportionate(S).
must_ensure_human_oversight(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    designed_and_developed(Provider, S),
    human_machine_interface_tools_appropriate(S).
must_ensure_oversight_measures(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    (built_in_oversight_measures(S); deployer_implemented_oversight_measures(S)).
must_provide_for_deployer_capabilities(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    provided_to_deployer(Provider, S),
    enables_understand_capacity_and_limitations(S),
    enables_awareness_automation_bias(S),
    enables_correct_interpretation(S),
    enables_decision_not_to_use_or_override(S),
    enables_intervention_or_interruption(S).
provenance(human_oversight_effective/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_prevents_or_minimises_risks/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(enables_understand_capacity_and_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(enables_awareness_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(enables_correct_interpretation/1, 'celex:32024R1689/oj#art_14').
provenance(enables_decision_not_to_use_or_override/1, 'celex:32024R1689/oj#art_14').
provenance(enables_intervention_or_interruption/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_by_two_persons_required/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_exempt/1, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_oversight_measures/2, 'celex:32024R1689/oj#art_14').
provenance(must_provide_for_deployer_capabilities/2, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(appropriate_level_of_accuracy/1, 'appropriate level of accuracy for high-risk AI system', 'celex:32024R1689/oj#art_15').
declared(appropriate_level_of_robustness/1, 'appropriate level of robustness for high-risk AI system', 'celex:32024R1689/oj#art_15').
declared(appropriate_level_of_cybersecurity/1, 'appropriate level of cybersecurity for high-risk AI system', 'celex:32024R1689/oj#art_15').
declared(consistent_performance/1, 'consistent performance throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(declared_accuracy_metrics/1, 'accuracy metrics declared in instructions for use', 'celex:32024R1689/oj#art_15').
declared(resilient_to_errors/1, 'resilient to errors faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(technical_organisational_measures_for_robustness/1, 'technical and organisational measures for robustness', 'celex:32024R1689/oj#art_15').
declared(technical_redundancy_solutions/1, 'technical redundancy solutions for robustness', 'celex:32024R1689/oj#art_15').
declared(continues_to_learn_after_placement/1, 'continues to learn after being placed on market or put into service', 'celex:32024R1689/oj#art_15').
declared(feedback_loop_risk_addressed/1, 'feedback loop risk eliminated or reduced', 'celex:32024R1689/oj#art_15').
declared(appropriate_mitigation_measures_for_feedback_loops/1, 'appropriate mitigation measures for feedback loops', 'celex:32024R1689/oj#art_15').
declared(resilient_to_unauthorised_alteration/1, 'resilient against unauthorised third party alteration', 'celex:32024R1689/oj#art_15').
declared(appropriate_cybersecurity_technical_solutions/1, 'appropriate technical solutions for cybersecurity', 'celex:32024R1689/oj#art_15').
declared(data_poisoning_prevention/1, 'measures against data poisoning', 'celex:32024R1689/oj#art_15').
declared(model_poisoning_prevention/1, 'measures against model poisoning', 'celex:32024R1689/oj#art_15').
declared(adversarial_example_prevention/1, 'measures against adversarial examples or model evasion', 'celex:32024R1689/oj#art_15').
declared(confidentiality_attack_prevention/1, 'measures against confidentiality attacks', 'celex:32024R1689/oj#art_15').
declared(model_flaw_prevention/1, 'measures against model flaws', 'celex:32024R1689/oj#art_15').
appropriate_level_of_accuracy(S) :-
    high_risk_ai_system(S).
appropriate_level_of_robustness(S) :-
    high_risk_ai_system(S).
appropriate_level_of_cybersecurity(S) :-
    high_risk_ai_system(S).
consistent_performance(S) :-
    high_risk_ai_system(S).
must_ensure_accuracy_robustness_cybersecurity(_P, S) :-
    high_risk_ai_system(S),
    appropriate_level_of_accuracy(S),
    appropriate_level_of_robustness(S),
    appropriate_level_of_cybersecurity(S),
    consistent_performance(S).
must_encourage_and_facilitate(commission, development_of_benchmarks_and_measurement_methodologies) :-
    appropriate_level_of_accuracy(_S),
    appropriate_level_of_robustness(_S2).
declared_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).
resilient_to_errors(S) :-
    high_risk_ai_system(S).
technical_organisational_measures_for_robustness(S) :-
    high_risk_ai_system(S),
    resilient_to_errors(S).
technical_redundancy_solutions(S) :-
    high_risk_ai_system(S),
    resilient_to_errors(S).
continues_to_learn_after_placement(S) :-
    high_risk_ai_system(S).
feedback_loop_risk_addressed(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S).
appropriate_mitigation_measures_for_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    feedback_loop_risk_addressed(S).
resilient_to_unauthorised_alteration(S) :-
    high_risk_ai_system(S).
appropriate_cybersecurity_technical_solutions(S) :-
    high_risk_ai_system(S),
    resilient_to_unauthorised_alteration(S).
data_poisoning_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).
model_poisoning_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).
adversarial_example_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).
confidentiality_attack_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).
model_flaw_prevention(S) :-
    high_risk_ai_system(S),
    appropriate_cybersecurity_technical_solutions(S).
provenance(appropriate_level_of_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_level_of_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_level_of_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(consistent_performance/1, 'celex:32024R1689/oj#art_15').
provenance(must_ensure_accuracy_robustness_cybersecurity/2, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_15').
provenance(declared_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
provenance(resilient_to_errors/1, 'celex:32024R1689/oj#art_15').
provenance(technical_organisational_measures_for_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(technical_redundancy_solutions/1, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn_after_placement/1, 'celex:32024R1689/oj#art_15').
provenance(feedback_loop_risk_addressed/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_mitigation_measures_for_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(resilient_to_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_cybersecurity_technical_solutions/1, 'celex:32024R1689/oj#art_15').
provenance(data_poisoning_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(model_poisoning_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(adversarial_example_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(confidentiality_attack_prevention/1, 'celex:32024R1689/oj#art_15').
provenance(model_flaw_prevention/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(must_comply_with_requirements/2, 'provider must ensure high-risk AI system complies with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_16').
declared(must_indicate_contact_details/2, 'provider must indicate name, trade name, trade mark and address on system or packaging or documentation', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider must have quality management system complying with Article 17', 'celex:32024R1689/oj#art_16').
declared(must_keep_documentation/2, 'provider must keep documentation referred to in Article 18', 'celex:32024R1689/oj#art_16').
declared(must_keep_logs/2, 'provider must keep logs automatically generated by high-risk AI system when under their control', 'celex:32024R1689/oj#art_16').
declared(must_undergo_conformity_assessment/2, 'provider must ensure high-risk AI system undergoes relevant conformity assessment procedure before placing on market or putting into service', 'celex:32024R1689/oj#art_16').
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity in accordance with Article 47', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider must affix CE marking to system or packaging or documentation', 'celex:32024R1689/oj#art_16').
declared(must_comply_with_registration_obligations/2, 'provider must comply with registration obligations referred to in Article 49(1)', 'celex:32024R1689/oj#art_16').
declared(must_take_corrective_action/2, 'provider must take necessary corrective actions and provide information as required in Article 20', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity/2, 'provider must demonstrate conformity of high-risk AI system with Chapter III Section 2 requirements upon reasoned request', 'celex:32024R1689/oj#art_16').
declared(must_ensure_accessibility/2, 'provider must ensure high-risk AI system complies with accessibility requirements', 'celex:32024R1689/oj#art_16').
must_comply_with_requirements(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).
must_indicate_contact_details(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    technical_documentation(S).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).
must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S),
    before_placing_on_market_or_putting_into_service(S).
must_draw_up_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    eu_declaration_of_conformity(S).
must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    ce_marking(S).
must_comply_with_registration_obligations(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    registered_with_information_specified(S).
must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    corrective_action(P, S).
must_demonstrate_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request(Authority, S),
    national_competent_authority(Authority),
    requirements_in_chapter_3_section_2(S).
must_ensure_accessibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_comply_with_requirements/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration_obligations/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_16').
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
declared(must_have_quality_management_system/2, 'provider must have quality management system complying with Article 17', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_documented/1, 'quality management system is documented in systematic and orderly manner', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_aspect/2, 'quality management system includes specific aspect', 'celex:32024R1689/oj#art_17').
declared(proportionate_to_provider_size/1, 'implementation is proportionate to size of provider organisation', 'celex:32024R1689/oj#art_17').
declared(respects_required_rigour/1, 'provider respects degree of rigour and level of protection required', 'celex:32024R1689/oj#art_17').
declared(sectoral_quality_management_system_applies/1, 'provider subject to quality management under sectoral Union law', 'celex:32024R1689/oj#art_17').
declared(may_include_aspects_in_sectoral_system/1, 'provider may include Article 17 aspects in sectoral quality management system', 'celex:32024R1689/oj#art_17').
declared(financial_institution/1, 'provider is a financial institution', 'celex:32024R1689/oj#art_17').
declared(subject_to_financial_services_governance/1, 'subject to internal governance requirements under Union financial services law', 'celex:32024R1689/oj#art_17').
declared(deemed_fulfilled_by_financial_governance/1, 'quality management obligation deemed fulfilled by financial governance compliance', 'celex:32024R1689/oj#art_17').
declared(exception_risk_management_system/1, 'exception for risk management system aspect', 'celex:32024R1689/oj#art_17').
declared(exception_post_market_monitoring/1, 'exception for post-market monitoring aspect', 'celex:32024R1689/oj#art_17').
declared(exception_serious_incident_reporting/1, 'exception for serious incident reporting aspect', 'celex:32024R1689/oj#art_17').
declared(harmonised_standard_for_quality_management/1, 'harmonised standard referred to in Article 40 for quality management', 'celex:32024R1689/oj#art_17').
quality_management_system_documented(S) :-
    must_have_quality_management_system(_P, S),
    quality_management_system(S).
quality_management_system_aspect(S, regulatory_compliance_strategy) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, design_control_and_verification) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, development_quality_control_and_assurance) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, examination_test_validation_procedures) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, technical_specifications_and_standards) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, data_management_systems) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, risk_management_system) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, post_market_monitoring_system) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, serious_incident_reporting_procedures) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, communication_handling_procedures) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, record_keeping_systems) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, resource_management) :-
    high_risk_ai_system(S).
quality_management_system_aspect(S, accountability_framework) :-
    high_risk_ai_system(S).
proportionate_to_provider_size(S) :-
    must_have_quality_management_system(_P, S),
    quality_management_system(S).
respects_required_rigour(S) :-
    must_have_quality_management_system(_P, S),
    high_risk_ai_system(S).
may_include_aspects_in_sectoral_system(P) :-
    provider(P),
    high_risk_ai_system(S),
    sectoral_quality_management_system_applies(P),
    must_have_quality_management_system(P, S).
deemed_fulfilled_by_financial_governance(P) :-
    provider(P),
    high_risk_ai_system(S),
    financial_institution(P),
    subject_to_financial_services_governance(P),
    must_have_quality_management_system(P, S),
    \+ exception_risk_management_system(S),
    \+ exception_post_market_monitoring(S),
    \+ exception_serious_incident_reporting(S).
exception_risk_management_system(S) :-
    high_risk_ai_system(S).
exception_post_market_monitoring(S) :-
    high_risk_ai_system(S).
exception_serious_incident_reporting(S) :-
    high_risk_ai_system(S).
must_take_into_account(P, harmonised_standard_for_quality_management(S)) :-
    provider(P),
    deemed_fulfilled_by_financial_governance(P),
    harmonised_standard_for_quality_management(S).
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(proportionate_to_provider_size/1, 'celex:32024R1689/oj#art_17').
provenance(respects_required_rigour/1, 'celex:32024R1689/oj#art_17').
provenance(may_include_aspects_in_sectoral_system/1, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_by_financial_governance/1, 'celex:32024R1689/oj#art_17').
provenance(exception_risk_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(exception_post_market_monitoring/1, 'celex:32024R1689/oj#art_17').
provenance(exception_serious_incident_reporting/1, 'celex:32024R1689/oj#art_17').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_17').
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
declared(retention_period_documentation/2, 'period for which documentation must be kept', 'celex:32024R1689/oj#art_18').
declared(documentation_at_disposal/2, 'documentation kept at disposal of specified authority', 'celex:32024R1689/oj#art_18').
declared(technical_documentation_referred_in_art_11/1, 'technical documentation referred to in Article 11', 'celex:32024R1689/oj#art_18').
declared(quality_management_documentation_referred_in_art_17/1, 'documentation concerning quality management system referred to in Article 17', 'celex:32024R1689/oj#art_18').
declared(approved_changes_documentation/1, 'documentation concerning changes approved by notified bodies', 'celex:32024R1689/oj#art_18').
declared(notified_body_decisions_documentation/1, 'decisions and other documents issued by notified bodies', 'celex:32024R1689/oj#art_18').
declared(eu_declaration_of_conformity_referred_in_art_47/1, 'EU declaration of conformity referred to in Article 47', 'celex:32024R1689/oj#art_18').
declared(member_state_determines_conditions/2, 'Member State determines conditions for documentation retention in specific cases', 'celex:32024R1689/oj#art_18').
declared(bankruptcy_or_ceases_activity/1, 'provider or authorised representative goes bankrupt or ceases activity', 'celex:32024R1689/oj#art_18').
declared(financial_institution_provider/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_18').
declared(subject_to_union_financial_services_law/1, 'subject to requirements regarding internal governance under Union financial services law', 'celex:32024R1689/oj#art_18').
declared(maintain_technical_documentation_under_financial_law/1, 'maintain technical documentation as part of documentation under Union financial services law', 'celex:32024R1689/oj#art_18').
must_keep_documentation(P, D) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    documentation_for_art_18(D, S),
    retention_period_documentation(years(10), after_placing_or_putting_into_service(S)).
retention_period_documentation(years(10), after_placing_or_putting_into_service(S)) :-
    high_risk_ai_system(S).
documentation_at_disposal(D, national_competent_authority) :-
    must_keep_documentation(_P, D).
technical_documentation_referred_in_art_11(D) :-
    technical_documentation(D).
quality_management_documentation_referred_in_art_17(D) :-
    quality_management_system(Q),
    documentation_of(Q, D).
approved_changes_documentation(D) :-
    substantial_modification(M),
    approved_by(M, notified_body),
    documentation_of(M, D).
notified_body_decisions_documentation(D) :-
    decision_or_document_issued_by(notified_body, D).
eu_declaration_of_conformity_referred_in_art_47(D) :-
    eu_declaration_of_conformity(D).
documentation_for_art_18(D, S) :-
    technical_documentation_referred_in_art_11(D),
    technical_documentation_of(D, S).
documentation_for_art_18(D, S) :-
    quality_management_documentation_referred_in_art_17(D),
    quality_management_system_for(D, S).
documentation_for_art_18(D, S) :-
    approved_changes_documentation(D),
    modification_of(D, S).
documentation_for_art_18(D, S) :-
    notified_body_decisions_documentation(D),
    decision_concerning(D, S).
documentation_for_art_18(D, S) :-
    eu_declaration_of_conformity_referred_in_art_47(D),
    declaration_for(D, S).
member_state_determines_conditions(MemberState, Conditions) :-
    national_competent_authority(MemberState),
    bankruptcy_or_ceases_activity(Entity),
    (provider(Entity); authorised_representative(Entity)),
    established_in_union(Entity),
    retention_period_documentation(years(10), after_placing_or_putting_into_service(_S)).
bankruptcy_or_ceases_activity(Entity) :-
    (provider(Entity); authorised_representative(Entity)),
    goes_bankrupt(Entity).
bankruptcy_or_ceases_activity(Entity) :-
    (provider(Entity); authorised_representative(Entity)),
    ceases_activity(Entity).
maintain_technical_documentation_under_financial_law(P) :-
    financial_institution_provider(P),
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    subject_to_union_financial_services_law(P),
    technical_documentation(D),
    technical_documentation_of(D, S),
    documentation_kept_under_financial_law(D, P).
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(retention_period_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(technical_documentation_referred_in_art_11/1, 'celex:32024R1689/oj#art_18').
provenance(quality_management_documentation_referred_in_art_17/1, 'celex:32024R1689/oj#art_18').
provenance(approved_changes_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(notified_body_decisions_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(eu_declaration_of_conformity_referred_in_art_47/1, 'celex:32024R1689/oj#art_18').
provenance(documentation_for_art_18/2, 'celex:32024R1689/oj#art_18').
provenance(member_state_determines_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(bankruptcy_or_ceases_activity/1, 'celex:32024R1689/oj#art_18').
provenance(maintain_technical_documentation_under_financial_law/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(must_keep_logs/2, 'provider must keep automatically generated logs', 'celex:32024R1689/oj#art_19').
declared(logs_under_control/2, 'logs of high-risk AI system are under provider control', 'celex:32024R1689/oj#art_19').
declared(retention_period/2, 'period for which logs must be kept', 'celex:32024R1689/oj#art_19').
declared(financial_institution/1, 'entity subject to Union financial services law', 'celex:32024R1689/oj#art_19').
declared(subject_to_financial_services_law/1, 'subject to requirements under Union financial services law', 'celex:32024R1689/oj#art_19').
declared(maintains_as_financial_documentation/2, 'maintains logs as part of financial services documentation', 'celex:32024R1689/oj#art_19').
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    retention_period(S, Period),
    Period >= months(6),
    \+ national_law_provides_otherwise(S).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    national_law_provides_otherwise(S),
    applicable_law_specifies_period(S, _Period).
maintains_as_financial_documentation(P, S) :-
    provider(P),
    financial_institution(P),
    subject_to_financial_services_law(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(maintains_as_financial_documentation/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_19').
provenance(subject_to_financial_services_law/1, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(must_take_corrective_action/2, 'provider must take corrective action for non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform_distributors/2, 'provider must inform distributors of non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform_deployers/2, 'provider must inform deployers of non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform_authorised_representative/2, 'provider must inform authorised representative of non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform_importers/2, 'provider must inform importers of non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_investigate_risk_causes/2, 'provider must investigate causes of risk with reporting deployer', 'celex:32024R1689/oj#art_20').
declared(must_inform_market_surveillance_authorities/2, 'provider must inform market surveillance authorities of risk and corrective action', 'celex:32024R1689/oj#art_20').
declared(must_inform_notified_body/2, 'provider must inform notified body that issued certificate of risk and corrective action', 'celex:32024R1689/oj#art_20').
must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).
must_inform_distributors(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).
must_inform_deployers(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).
must_inform_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S),
    authorised_representative(R).
must_inform_importers(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).
must_investigate_risk_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    aware_of_risk(P, S).
must_inform_market_surveillance_authorities(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    aware_of_risk(P, S).
must_inform_notified_body(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    aware_of_risk(P, S),
    issued_certificate(B, S),
    notified_body(B).
non_conforming(S) :-
    high_risk_ai_system(S),
    \+ meets_requirements(S, chapter_3_section_2).
aware_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributors/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployers/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importers/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_risk_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').
provenance(non_conforming/1, 'celex:32024R1689/oj#art_20').
provenance(aware_of_risk/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(must_provide_information_and_documentation/2, 'provider must provide information and documentation to competent authority upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(must_provide_logs_access/2, 'provider must give competent authority access to automatically generated logs', 'celex:32024R1689/oj#art_21').
declared(must_treat_information_confidentially/2, 'competent authority must treat obtained information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_21').
declared(reasoned_request/2, 'reasoned request made by competent authority', 'celex:32024R1689/oj#art_21').
declared(information_and_documentation_for_conformity/1, 'information and documentation necessary to demonstrate conformity with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_21').
declared(easily_understood_language/1, 'language easily understood by authority in official language of Union institutions', 'celex:32024R1689/oj#art_21').
declared(automatically_generated_logs/1, 'automatically generated logs of high-risk AI system referred to in Article 12(1)', 'celex:32024R1689/oj#art_21').
declared(under_provider_control/1, 'logs are under control of provider', 'celex:32024R1689/oj#art_21').
declared(obtained_under_article_21/1, 'information obtained by competent authority pursuant to Article 21', 'celex:32024R1689/oj#art_21').
must_provide_information_and_documentation(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(Provider, S),
    market_surveillance_authority(Authority),
    reasoned_request(Authority, Provider),
    information_and_documentation_for_conformity(S),
    easily_understood_language(Language).
must_provide_logs_access(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(Provider, S),
    market_surveillance_authority(Authority),
    reasoned_request(Authority, Provider),
    automatically_generated_logs(S),
    under_provider_control(Logs).
must_treat_information_confidentially(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_under_article_21(Information),
    confidentiality_obligations(Information).
provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_logs_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_21').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_21').
provenance(information_and_documentation_for_conformity/1, 'celex:32024R1689/oj#art_21').
provenance(easily_understood_language/1, 'celex:32024R1689/oj#art_21').
provenance(automatically_generated_logs/1, 'celex:32024R1689/oj#art_21').
provenance(under_provider_control/1, 'celex:32024R1689/oj#art_21').
provenance(obtained_under_article_21/1, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(must_appoint_authorised_representative/1, 'provider established in third country must appoint authorised representative before making high-risk AI system available on Union market', 'celex:32024R1689/oj#art_22').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_22').
declared(must_perform_mandate_tasks/1, 'authorised representative must perform tasks specified in mandate', 'celex:32024R1689/oj#art_22').
declared(must_provide_mandate_copy/2, 'authorised representative must provide copy of mandate to market surveillance authority upon request', 'celex:32024R1689/oj#art_22').
declared(must_verify_conformity_documentation/1, 'authorised representative must verify EU declaration of conformity and technical documentation drawn up and conformity assessment carried out', 'celex:32024R1689/oj#art_22').
declared(must_keep_records_available/1, 'authorised representative must keep records available for 10 years after placement or putting into service', 'celex:32024R1689/oj#art_22').
declared(must_provide_information_upon_request/2, 'authorised representative must provide information and documentation upon reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate_with_competent_authorities/2, 'authorised representative must cooperate with competent authorities upon reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_comply_with_registration_obligations/1, 'authorised representative must comply with registration obligations or ensure information correctness', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(must_inform_authorities_of_termination/3, 'authorised representative must inform market surveillance authority and notified body of termination and reasons', 'celex:32024R1689/oj#art_22').
declared(established_in_third_country/1, 'provider not established in the Union', 'celex:32024R1689/oj#art_22').
declared(mandate/2, 'written mandate from provider to authorised representative', 'celex:32024R1689/oj#art_22').
declared(tasks_specified_in_mandate/2, 'tasks specified in the mandate received from provider', 'celex:32024R1689/oj#art_22').
declared(official_language_of_union_institutions/1, 'one of the official languages of the institutions of the Union', 'celex:32024R1689/oj#art_22').
declared(competent_authority_indicated_language/2, 'competent authority indicated the official language', 'celex:32024R1689/oj#art_22').
declared(placed_on_market_or_put_into_service/1, 'high-risk AI system has been placed on market or put into service', 'celex:32024R1689/oj#art_22').
declared(reasoned_request_made/2, 'competent authority made a reasoned request', 'celex:32024R1689/oj#art_22').
declared(logs_under_control_of_provider/2, 'logs are under the control of the provider', 'celex:32024R1689/oj#art_22').
declared(provider_acts_contrary_to_obligations/1, 'provider is acting contrary to its obligations under the regulation', 'celex:32024R1689/oj#art_22').
declared(relevant_notified_body/2, 'notified body relevant to the high-risk AI system', 'celex:32024R1689/oj#art_22').
must_appoint_authorised_representative(P) :-
    provider(P),
    established_in_third_country(P),
    high_risk_ai_system(S),
    making_available_on_market(S),
    \+ authorised_representative(_R),
    mandate(P, _R).
must_enable_authorised_representative(P, R) :-
    provider(P),
    authorised_representative(R),
    mandate(P, R),
    tasks_specified_in_mandate(R, _Tasks).
must_perform_mandate_tasks(R) :-
    authorised_representative(R),
    mandate(_P, R),
    tasks_specified_in_mandate(R, _Tasks).
must_provide_mandate_copy(R, Authority) :-
    authorised_representative(R),
    market_surveillance_authority(Authority),
    mandate(_P, R),
    official_language_of_union_institutions(Lang),
    competent_authority_indicated_language(Authority, Lang).
must_verify_conformity_documentation(R) :-
    authorised_representative(R),
    mandate(_P, R),
    eu_declaration_of_conformity(_S),
    drawn_up(_S),
    technical_documentation(_S),
    drawn_up(_S),
    conformity_assessment_procedure(_S).
must_keep_records_available(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    retention_period(years(10), after(placed_on_market_or_put_into_service(S))),
    contact_details(P, _Details),
    eu_declaration_of_conformity(S),
    technical_documentation(S),
    issued_certificate(_Body, S).
must_keep_records_available(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    retention_period(years(10), after(placed_on_market_or_put_into_service(S))),
    contact_details(P, _Details),
    eu_declaration_of_conformity(S),
    technical_documentation(S),
    \+ issued_certificate(_Body, S).
must_provide_information_upon_request(R, Authority) :-
    authorised_representative(R),
    competent_authority(Authority),
    reasoned_request(Authority, R),
    high_risk_ai_system(S),
    mandate(P, R),
    information_and_documentation(S, _Info),
    logs_under_control(P, S),
    access_to_logs(S, _Logs).
must_cooperate_with_competent_authorities(R, Authority) :-
    authorised_representative(R),
    competent_authority(Authority),
    reasoned_request(Authority, R),
    high_risk_ai_system(S),
    mandate(_P, R),
    action_taken(Authority, S).
must_comply_with_registration_obligations(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    \+ must_register_information(P, S),
    must_register_information(R, S).
must_comply_with_registration_obligations(R) :-
    authorised_representative(R),
    mandate(P, R),
    high_risk_ai_system(S),
    must_register_information(P, S),
    registered_with_information_specified(S),
    correct_information(S, annex_8_section_1_point_3).
must_terminate_mandate(R, P) :-
    authorised_representative(R),
    mandate(P, R),
    provider(P),
    provider_acts_contrary_to_obligations(P).
must_inform_authorities_of_termination(R, Authority, Body) :-
    must_terminate_mandate(R, _P),
    market_surveillance_authority(Authority),
    relevant_notified_body(_S, Body),
    immediately(R),
    inform(R, Authority, termination(mandate(R, _P), reasons)).
must_inform_authorities_of_termination(R, Authority, _Body) :-
    must_terminate_mandate(R, _P),
    market_surveillance_authority(Authority),
    \+ relevant_notified_body(_S, _Body),
    immediately(R),
    inform(R, Authority, termination(mandate(R, _P), reasons)).
provenance(must_appoint_authorised_representative/1, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandate_tasks/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/1, 'celex:32024R1689/oj#art_22').
provenance(must_keep_records_available/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_upon_request/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration_obligations/1, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_authorities_of_termination/3, 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').

% ==== celex:32024R1689/oj#art_23 ====
declared(must_ensure_conformity_before_placing/2, 'importer must ensure high-risk AI system is in conformity before placing on market', 'celex:32024R1689/oj#art_23/par_1').
declared(conformity_assessment_carried_out_by_provider/1, 'conformity assessment procedure carried out by provider', 'celex:32024R1689/oj#art_23/par_1_a').
declared(technical_documentation_drawn_up/1, 'technical documentation drawn up by provider', 'celex:32024R1689/oj#art_23/par_1_b').
declared(required_ce_marking_present/1, 'system bears required CE marking', 'celex:32024R1689/oj#art_23/par_1_c').
declared(eu_declaration_of_conformity_accompanies/1, 'EU declaration of conformity accompanies system', 'celex:32024R1689/oj#art_23/par_1_c').
declared(instructions_for_use_accompany/1, 'instructions for use accompany system', 'celex:32024R1689/oj#art_23/par_1_c').
declared(authorised_representative_appointed/1, 'provider has appointed authorised representative', 'celex:32024R1689/oj#art_23/par_1_d').
declared(must_not_place_non_conforming/2, 'importer must not place non-conforming or falsified system on market', 'celex:32024R1689/oj#art_23/par_2').
declared(non_conforming_or_falsified/1, 'system is non-conforming, falsified, or accompanied by falsified documentation', 'celex:32024R1689/oj#art_23/par_2').
declared(must_inform_of_risk/2, 'importer must inform parties when system presents risk', 'celex:32024R1689/oj#art_23/par_2').
declared(must_indicate_contact_details/2, 'importer must indicate contact details on system and packaging', 'celex:32024R1689/oj#art_23/par_3').
declared(must_ensure_storage_transport_compliance/2, 'importer must ensure storage or transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_23/par_4').
declared(must_keep_documentation/2, 'importer must keep documentation for 10 years', 'celex:32024R1689/oj#art_23/par_5').
declared(must_provide_information_to_authorities/2, 'importer must provide information to competent authorities upon request', 'celex:32024R1689/oj#art_23/par_6').
declared(must_ensure_technical_documentation_available/2, 'importer must ensure technical documentation available to authorities', 'celex:32024R1689/oj#art_23/par_6').
declared(must_cooperate_with_authorities/2, 'importer must cooperate with competent authorities', 'celex:32024R1689/oj#art_23/par_7').
must_ensure_conformity_before_placing(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    before_placing_on_market(S),
    conformity_assessment_carried_out_by_provider(S),
    technical_documentation_drawn_up(S),
    required_ce_marking_present(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use_accompany(S),
    authorised_representative_appointed(S).
conformity_assessment_carried_out_by_provider(S) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure(S),
    provider(P),
    carried_out_by(P, S).
technical_documentation_drawn_up(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    provider(P),
    drawn_up(P, S).
required_ce_marking_present(S) :-
    high_risk_ai_system(S),
    ce_marking(S).
eu_declaration_of_conformity_accompanies(S) :-
    high_risk_ai_system(S),
    eu_declaration_of_conformity(S).
instructions_for_use_accompany(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).
authorised_representative_appointed(S) :-
    high_risk_ai_system(S),
    authorised_representative(R),
    appointed_for(R, S).
must_not_place_non_conforming(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    non_conforming_or_falsified(S),
    \+ must_ensure_conformity_before_placing(I, S).
non_conforming_or_falsified(S) :-
    high_risk_ai_system(S),
    (\+ meets_requirements(S, 'celex:32024R1689/oj#chp_3/sec_2');
     falsified(S);
     falsified_documentation(S)).
must_not_place_non_conforming(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    \+ brought_into_conformity(S).
must_inform_of_risk(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    provider_of(S, P),
    authorised_representative_for(S, R),
    market_surveillance_authority(A),
    must_inform(I, risk_present(S, P, R, A)).
provider_of(S, P) :-
    high_risk_ai_system(S),
    provider(P),
    placed_or_put_into_service_by(S, P).
authorised_representative_for(S, R) :-
    high_risk_ai_system(S),
    authorised_representative(R),
    appointed_for(R, S).
must_indicate_contact_details(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    (on_system(S, contact_details(I));
     on_packaging(S, contact_details(I));
     on_accompanying_documentation(S, contact_details(I))).
must_ensure_storage_transport_compliance(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    under_responsibility(I, S),
    storage_or_transport_conditions_apply(S),
    \+ jeopardises_compliance(S, 'celex:32024R1689/oj#chp_3/sec_2').
must_keep_documentation(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    retention_period(years(10), after_placed_or_put_into_service(S)),
    (certificate_issued_by(notified_body(B), S);
     instructions_for_use(S);
     eu_declaration_of_conformity(S)).
must_provide_information_to_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    reasoned_request(A, S),
    competent_authority(A),
    must_provide_information(I, documentation_for_conformity(S, 'celex:32024R1689/oj#chp_3/sec_2', A)).
must_ensure_technical_documentation_available(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    competent_authority(A),
    must_ensure(I, technical_documentation_available_to(A, S)).
must_cooperate_with_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placed_on_market_by(I, S),
    competent_authority(A),
    action_taken(A, S),
    must_cooperate_with_authorities(I, A).
provenance(must_ensure_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(conformity_assessment_carried_out_by_provider/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_drawn_up/1, 'celex:32024R1689/oj#art_23').
provenance(required_ce_marking_present/1, 'celex:32024R1689/oj#art_23').
provenance(eu_declaration_of_conformity_accompanies/1, 'celex:32024R1689/oj#art_23').
provenance(instructions_for_use_accompany/1, 'celex:32024R1689/oj#art_23').
provenance(authorised_representative_appointed/1, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_non_conforming/2, 'celex:32024R1689/oj#art_23').
provenance(non_conforming_or_falsified/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_to_authorities/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_technical_documentation_available/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_23').
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
declared(must_verify_before_making_available/2, 'distributor must verify specified conditions before making high-risk AI system available on market', 'celex:32024R1689/oj#art_24').
declared(bears_required_ce_marking/1, 'high-risk AI system bears required CE marking', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_eu_declaration_of_conformity/1, 'high-risk AI system accompanied by copy of EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_instructions_for_use/1, 'high-risk AI system accompanied by instructions for use', 'celex:32024R1689/oj#art_24').
declared(provider_complied_with_obligations/1, 'provider complied with obligations under Article 16(1)(b) and (c)', 'celex:32024R1689/oj#art_24').
declared(importer_complied_with_obligations/1, 'importer complied with obligations under Article 23(3)', 'celex:32024R1689/oj#art_24').
declared(must_not_make_available_until_conformity/2, 'distributor shall not make high-risk AI system available until brought into conformity', 'celex:32024R1689/oj#art_24').
declared(not_in_conformity_with_chapter_3_section_2/1, 'high-risk AI system not in conformity with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_24').
declared(must_inform_provider_or_importer_of_risk/2, 'distributor shall inform provider or importer of risk within meaning of Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(must_ensure_storage_transport_compliance/2, 'distributor shall ensure storage or transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_24').
declared(under_responsibility_of_distributor/2, 'high-risk AI system under responsibility of distributor', 'celex:32024R1689/oj#art_24').
declared(storage_or_transport_conditions_applicable/1, 'storage or transport conditions applicable to high-risk AI system', 'celex:32024R1689/oj#art_24').
declared(jeopardises_compliance_with_chapter_3_section_2/1, 'conditions jeopardise compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_24').
declared(must_take_corrective_action_withdraw_or_recall/2, 'distributor shall take corrective action, withdraw or recall non-conforming high-risk AI system', 'celex:32024R1689/oj#art_24').
declared(made_available_on_market_by_distributor/2, 'high-risk AI system made available on market by distributor', 'celex:32024R1689/oj#art_24').
declared(corrective_action_necessary/1, 'corrective action necessary to bring system into conformity', 'celex:32024R1689/oj#art_24').
declared(must_ensure_provider_importer_or_operator_takes_corrective_action/2, 'distributor shall ensure provider, importer or relevant operator takes corrective action', 'celex:32024R1689/oj#art_24').
declared(must_immediately_inform_provider_importer_and_authorities/2, 'distributor shall immediately inform provider, importer and competent authorities of risk and corrective actions', 'celex:32024R1689/oj#art_24').
declared(competent_authority_for_system/2, 'authority competent for the high-risk AI system concerned', 'celex:32024R1689/oj#art_24').
declared(non_compliance_details/1, 'details of non-compliance', 'celex:32024R1689/oj#art_24').
declared(corrective_actions_taken/1, 'corrective actions taken', 'celex:32024R1689/oj#art_24').
declared(must_provide_information_and_documentation/2, 'distributor shall provide authority with information and documentation', 'celex:32024R1689/oj#art_24').
declared(reasoned_request_from_authority/2, 'reasoned request from relevant competent authority', 'celex:32024R1689/oj#art_24').
declared(actions_pursuant_to_article_24_paragraphs/1, 'actions pursuant to Article 24(1)-(4)', 'celex:32024R1689/oj#art_24').
declared(necessary_to_demonstrate_conformity/1, 'information necessary to demonstrate conformity with Chapter III Section 2', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    bears_required_ce_marking(System),
    accompanied_by_eu_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    provider_complied_with_obligations(System),
    importer_complied_with_obligations(System).
must_not_make_available_until_conformity(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    not_in_conformity_with_chapter_3_section_2(System),
    \+ brought_into_conformity(System).
must_inform_provider_or_importer_of_risk(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_within_art_79_1(System),
    (provider(P), responsible_for_system(P, System); importer(I), responsible_for_system(I, System)).
must_ensure_storage_transport_compliance(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_responsibility(Distributor, System),
    storage_or_transport_conditions_applicable(System),
    \+ jeopardises_compliance_with_chapter_3_section_2(System).
must_take_corrective_action_withdraw_or_recall(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by_distributor(Distributor, System),
    not_in_conformity_with_chapter_3_section_2(System),
    corrective_action_necessary(System).
must_ensure_provider_importer_or_operator_takes_corrective_action(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by_distributor(Distributor, System),
    not_in_conformity_with_chapter_3_section_2(System),
    (provider(P), responsible_for_system(P, System);
     importer(I), responsible_for_system(I, System);
     operator(O), relevant_operator(O, System)).
must_immediately_inform_provider_importer_and_authorities(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_within_art_79_1(System),
    made_available_on_market_by_distributor(Distributor, System),
    (provider(P), responsible_for_system(P, System); importer(I), responsible_for_system(I, System)),
    competent_authority_for_system(Authority, System),
    non_compliance_details(System),
    corrective_actions_taken(System).
must_provide_information_and_documentation(Distributor, Authority) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by_distributor(Distributor, System),
    reasoned_request_from_authority(Authority, Distributor),
    actions_pursuant_to_article_24_paragraphs(System),
    necessary_to_demonstrate_conformity(System).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action_withdraw_or_recall/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_provider_importer_or_operator_takes_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_provider_importer_and_authorities/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_24').
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
declared(considered_provider/2, 'party considered to be provider of high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(no_longer_provider/1, 'initial provider no longer considered provider of specific AI system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_provider/2, 'initial provider must cooperate with new provider and provide information and assistance', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_considered_provider/1, 'product manufacturer considered provider of high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(must_specify_by_written_agreement/2, 'provider and third party must specify information and assistance by written agreement', 'celex:32024R1689/oj#art_25').
declared(may_develop_voluntary_model_terms/1, 'AI Office may develop and recommend voluntary model terms for contracts', 'celex:32024R1689/oj#art_25').
declared(must_take_into_account_contractual_requirements/2, 'AI Office must take into account possible contractual requirements in specific sectors or business cases', 'celex:32024R1689/oj#art_25').
considered_provider(T, S) :-
    (distributor(T); importer(T); deployer(T); other_third_party(T)),
    high_risk_ai_system(S),
    puts_name_or_trademark_on(T, S),
    placed_on_market_or_put_into_service(S),
    \+ contractual_arrangement_obligations_allocated(T, S).
considered_provider(T, S) :-
    (distributor(T); importer(T); deployer(T); other_third_party(T)),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    substantial_modification_to_high_risk(S),
    remains_high_risk_after_modification(S).
considered_provider(T, S) :-
    (distributor(T); importer(T); deployer(T); other_third_party(T)),
    ai_system(S),
    general_purpose_ai_system(S),
    placed_on_market_or_put_into_service(S),
    \+ high_risk_ai_system(S),
    modifies_intended_purpose(T, S),
    becomes_high_risk_after_modification(S).
no_longer_provider(P) :-
    initially_placed_on_market_or_put_into_service(P, S),
    considered_provider(_T, S).
must_cooperate_with_new_provider(P, S) :-
    initially_placed_on_market_or_put_into_service(P, S),
    considered_provider(_T, S),
    \+ clearly_specified_not_to_change_into_high_risk(P, S).
product_manufacturer_considered_provider(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(P),
    component_of(S, P),
    placed_on_market_together_with_product(S, P, M).
product_manufacturer_considered_provider(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(P),
    component_of(S, P),
    product_placed_on_market(P),
    put_into_service_under_name_or_trademark(S, M).
must_specify_by_written_agreement(P, T) :-
    provider(P),
    high_risk_ai_system(S),
    supplies_for_high_risk_system(T, S),
    \+ free_and_open_source_licence(T),
    \+ general_purpose_ai_model(T).
supplies_for_high_risk_system(T, S) :-
    (supplies_ai_system(T, S); supplies_tools(T, S); supplies_services(T, S); supplies_components(T, S); supplies_processes(T, S)),
    used_or_integrated_in(T, S),
    high_risk_ai_system(S).
may_develop_voluntary_model_terms(ai_office) :-
    ai_office(ai_office).
must_take_into_account_contractual_requirements(ai_office, Sector) :-
    may_develop_voluntary_model_terms(ai_office),
    specific_sector(Sector).
must_take_into_account_contractual_requirements(ai_office, BusinessCase) :-
    may_develop_voluntary_model_terms(ai_office),
    business_case(BusinessCase).
published_free_of_charge(ai_office, voluntary_model_terms) :-
    may_develop_voluntary_model_terms(ai_office).
available_electronic_format(ai_office, voluntary_model_terms) :-
    may_develop_voluntary_model_terms(ai_office).
other_third_party(T) :-
    \+ provider(T),
    \+ distributor(T),
    \+ importer(T),
    \+ deployer(T),
    operator(T).
puts_name_or_trademark_on(T, S) :-
    placed_or_put_into_service_by(_P, S).
placed_on_market_or_put_into_service(S) :-
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).
contractual_arrangement_obligations_allocated(T, S) :-
    contract(T, _P, S),
    obligations_allocated(T, S).
substantial_modification_to_high_risk(S) :-
    substantial_modification(S),
    high_risk_ai_system(S).
remains_high_risk_after_modification(S) :-
    high_risk_ai_system(S).
modifies_intended_purpose(T, S) :-
    deployer(T),
    intended_purpose_changed(S).
modifies_intended_purpose(T, S) :-
    distributor(T),
    intended_purpose_changed(S).
modifies_intended_purpose(T, S) :-
    importer(T),
    intended_purpose_changed(S).
modifies_intended_purpose(T, S) :-
    other_third_party(T),
    intended_purpose_changed(S).
becomes_high_risk_after_modification(S) :-
    high_risk_ai_system(S).
initially_placed_on_market_or_put_into_service(P, S) :-
    provider(P),
    placed_or_put_into_service_by(P, S).
clearly_specified_not_to_change_into_high_risk(P, S) :-
    provider(P),
    specification(P, S, not_high_risk).
component_of(S, P) :-
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(P).
placed_on_market_together_with_product(S, P, M) :-
    placing_on_market(S),
    placing_on_market(P),
    product_manufacturer(M),
    under_name_or_trademark(P, M).
put_into_service_under_name_or_trademark(S, M) :-
    putting_into_service(S),
    product_manufacturer(M),
    under_name_or_trademark(S, M).
product_placed_on_market(P) :-
    placing_on_market(P).
used_or_integrated_in(T, S) :-
    high_risk_ai_system(S),
    (ai_system(T); tools(T); services(T); components(T); processes(T)),
    integrated_in(T, S).
provenance(considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(no_longer_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(may_develop_voluntary_model_terms/1, 'celex:32024R1689/oj#art_25').
provenance(must_take_into_account_contractual_requirements/2, 'celex:32024R1689/oj#art_25').
provenance(published_free_of_charge/2, 'celex:32024R1689/oj#art_25').
provenance(available_electronic_format/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

% ==== celex:32024R1689/oj#art_26 ====
declared(must_take_appropriate_measures/2, 'deployer must take appropriate technical and organisational measures', 'celex:32024R1689/oj#art_26').
declared(must_assign_human_oversight/2, 'deployer must assign human oversight to competent natural persons', 'celex:32024R1689/oj#art_26').
declared(must_ensure_input_data_relevance/2, 'deployer must ensure input data is relevant and sufficiently representative', 'celex:32024R1689/oj#art_26').
declared(must_monitor_operation/2, 'deployer must monitor operation of high-risk AI system', 'celex:32024R1689/oj#art_26').
declared(must_inform_provider_risk/2, 'deployer must inform provider or distributor and authority of risk', 'celex:32024R1689/oj#art_26').
declared(must_suspend_use/2, 'deployer must suspend use of system presenting risk', 'celex:32024R1689/oj#art_26').
declared(must_inform_serious_incident/2, 'deployer must inform parties of serious incident', 'celex:32024R1689/oj#art_26').
declared(must_keep_logs/2, 'deployer must keep automatically generated logs', 'celex:32024R1689/oj#art_26').
declared(must_inform_workers/2, 'employer deployer must inform workers and representatives', 'celex:32024R1689/oj#art_26').
declared(must_comply_registration/2, 'public authority deployer must comply with registration obligations', 'celex:32024R1689/oj#art_26').
declared(shall_not_use_unregistered/2, 'deployer shall not use unregistered high-risk AI system', 'celex:32024R1689/oj#art_26').
declared(must_use_information_for_dpia/2, 'deployer must use Article 13 information for data protection impact assessment', 'celex:32024R1689/oj#art_26').
declared(must_request_authorisation/2, 'deployer must request authorisation for post-remote biometric identification', 'celex:32024R1689/oj#art_26').
declared(must_stop_and_delete/2, 'deployer must stop use and delete data if authorisation rejected', 'celex:32024R1689/oj#art_26').
declared(must_document_use/2, 'deployer must document each use in police file', 'celex:32024R1689/oj#art_26').
declared(must_submit_annual_report_post_remote/2, 'deployer must submit annual reports on post-remote biometric identification use', 'celex:32024R1689/oj#art_26').
declared(must_inform_natural_persons/2, 'deployer must inform natural persons subject to high-risk AI system', 'celex:32024R1689/oj#art_26').
declared(must_cooperate_with_authorities/2, 'deployer must cooperate with competent authorities', 'celex:32024R1689/oj#art_26').
must_take_appropriate_measures(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_26').
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26').
must_ensure_input_data_relevance(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    input_data(I),
    exercises_control_over(D, I).
provenance(must_ensure_input_data_relevance/2, 'celex:32024R1689/oj#art_26').
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26').
must_inform_provider_risk(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_within_art_79_1(S).
must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_within_art_79_1(S).
provenance(must_inform_provider_risk/2, 'celex:32024R1689/oj#art_26').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26').
must_inform_serious_incident(D, serious_incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident(S).
provenance(must_inform_serious_incident/2, 'celex:32024R1689/oj#art_26').
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_control(D, S),
    \+ national_law_provides_otherwise(S).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26').
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    before_putting_into_service_or_using(S, workplace).
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26').
must_comply_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    deployer_public_authority(D).
must_comply_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    union_institution(D).
shall_not_use_unregistered(D, S) :-
    deployer(D),
    deployer_public_authority(D),
    high_risk_ai_system(S),
    \+ registered_with_information_specified(S).
shall_not_use_unregistered(D, S) :-
    deployer(D),
    union_institution(D),
    high_risk_ai_system(S),
    \+ registered_with_information_specified(S).
provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_26').
provenance(shall_not_use_unregistered/2, 'celex:32024R1689/oj#art_26').
must_use_information_for_dpia(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(must_use_information_for_dpia/2, 'celex:32024R1689/oj#art_26').
must_request_authorisation(D, use(S, targeted_search(Person))) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    investigation(targeted_search(Person)),
    suspected_or_convicted(Person, criminal_offence(_)),
    \+ initial_identification_exception(S, Person).
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26').
must_stop_and_delete(D, use(S, targeted_search(Person))) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(use(S, targeted_search(Person))).
provenance(must_stop_and_delete/2, 'celex:32024R1689/oj#art_26').
must_document_use(D, use(S, _Purpose)) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26').
must_submit_annual_report_post_remote(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
provenance(must_submit_annual_report_post_remote/2, 'celex:32024R1689/oj#art_26').
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    makes_decisions_or_assists(S, natural_person(_)).
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26').
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
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
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment before deploying high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(fundamental_rights_impact_assessment/2, 'fundamental rights impact assessment for deployment of high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(deployer_subject_to_fria/1, 'deployer that is required to perform fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(first_use_of_high_risk_ai_system/2, 'first deployment of high-risk AI system by deployer', 'celex:32024R1689/oj#art_27').
declared(may_rely_on_previous_assessment/2, 'deployer may rely on previously conducted impact assessment', 'celex:32024R1689/oj#art_27').
declared(must_update_fundamental_rights_impact_assessment/2, 'deployer must update fundamental rights impact assessment when elements change', 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority/2, 'deployer must notify market surveillance authority of assessment results', 'celex:32024R1689/oj#art_27').
declared(exempt_from_notification/1, 'deployer exempt from notification obligation', 'celex:32024R1689/oj#art_27').
declared(complements_data_protection_impact_assessment/1, 'fundamental rights impact assessment complements data protection impact assessment', 'celex:32024R1689/oj#art_27').
declared(must_develop_template/2, 'AI Office must develop template for fundamental rights impact assessment questionnaire', 'celex:32024R1689/oj#art_27').
must_perform_fundamental_rights_impact_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(S),
    deployer_subject_to_fria(Deployer),
    first_use_of_high_risk_ai_system(Deployer, S).
deployer_subject_to_fria(Deployer) :-
    deployer(Deployer),
    deployer_public_authority(Deployer).
deployer_subject_to_fria(Deployer) :-
    deployer(Deployer),
    private_entity_providing_public_services(Deployer).
deployer_subject_to_fria(Deployer) :-
    deployer(Deployer),
    deploys_annex_3_point_5_b_or_c_system(Deployer).
declared(private_entity_providing_public_services/1, 'private entity providing public services', 'celex:32024R1689/oj#art_27').
declared(deploys_annex_3_point_5_b_or_c_system/1, 'deployer of high-risk AI system referred to in Annex III point 5(b) or 5(c)', 'celex:32024R1689/oj#art_27').
may_rely_on_previous_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(Deployer, S),
    similar_case(Deployer, S).
may_rely_on_provider_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    existing_impact_assessment_by_provider(S).
declared(similar_case/2, 'similar case to previous deployment', 'celex:32024R1689/oj#art_27').
declared(existing_impact_assessment_by_provider/1, 'existing impact assessment carried out by provider', 'celex:32024R1689/oj#art_27').
must_update_fundamental_rights_impact_assessment(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(Deployer, S),
    element_changed_or_no_longer_up_to_date(Deployer, S).
declared(element_changed_or_no_longer_up_to_date/2, 'element listed in Article 27(1) has changed or is no longer up to date', 'celex:32024R1689/oj#art_27').
must_notify_market_surveillance_authority(Deployer, results(fundamental_rights_impact_assessment(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    fundamental_rights_impact_assessment(Deployer, S),
    \+ exempt_from_notification(Deployer).
exempt_from_notification(Deployer) :-
    deployer(Deployer),
    article_46_par_1_applies(Deployer).
declared(article_46_par_1_applies/1, 'case referred to in Article 46(1)', 'celex:32024R1689/oj#art_27').
complements_data_protection_impact_assessment(S) :-
    high_risk_ai_system(S),
    data_protection_impact_assessment_conducted(S),
    obligation_met_through_dpia(S).
declared(data_protection_impact_assessment_conducted/1, 'data protection impact assessment conducted pursuant to GDPR Article 35 or Directive 2016/680 Article 27', 'celex:32024R1689/oj#art_27').
declared(obligation_met_through_dpia/1, 'obligation in Article 27 already met through data protection impact assessment', 'celex:32024R1689/oj#art_27').
must_develop_template(ai_office, questionnaire_template(fundamental_rights_impact_assessment)) :-
    ai_office(AI_Office).
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(deployer_subject_to_fria/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(deploys_annex_3_point_5_b_or_c_system/1, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(existing_impact_assessment_by_provider/1, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(element_changed_or_no_longer_up_to_date/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/1, 'celex:32024R1689/oj#art_27').
provenance(article_46_par_1_applies/1, 'celex:32024R1689/oj#art_27').
provenance(complements_data_protection_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
provenance(obligation_met_through_dpia/1, 'celex:32024R1689/oj#art_27').
provenance(must_develop_template/2, 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').

% ==== celex:32024R1689/oj#art_28 ====
declared(notifying_authority_established/1, 'Member State has designated or established a notifying authority', 'celex:32024R1689/oj#art_28').
declared(procedures_developed_in_cooperation/0, 'procedures developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(no_conflict_of_interest/1, 'no conflict of interest with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(objectivity_and_impartiality_safeguarded/1, 'objectivity and impartiality of activities are safeguarded', 'celex:32024R1689/oj#art_28').
declared(notification_decisions_by_different_persons/1, 'notification decisions taken by competent persons different from assessors', 'celex:32024R1689/oj#art_28').
declared(no_commercial_activities/1, 'notifying authority does not offer conformity assessment activities or consultancy services on commercial or competitive basis', 'celex:32024R1689/oj#art_28').
declared(adequate_competent_personnel/1, 'notifying authority has adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
declared(personnel_expertise/2, 'personnel has necessary expertise in specified fields', 'celex:32024R1689/oj#art_28').
must_designate_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    established_under_national_law(Authority),
    responsible_for(Authority, assessment_designation_notification_monitoring).
responsible_for(Authority, assessment_designation_notification_monitoring) :-
    notifying_authority(Authority),
    carries_out(Authority, assessment_of_conformity_assessment_bodies),
    carries_out(Authority, designation_of_conformity_assessment_bodies),
    carries_out(Authority, notification_of_conformity_assessment_bodies),
    carries_out(Authority, monitoring_of_conformity_assessment_bodies).
carries_out(Authority, assessment_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).
carries_out(Authority, designation_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).
carries_out(Authority, notification_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).
carries_out(Authority, monitoring_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).
must_develop_procedures_in_cooperation :-
    notifying_authority(Authority1),
    notifying_authority(Authority2),
    Authority1 \= Authority2,
    procedures_developed_in_cooperation.
may_use_national_accreditation_body(MemberState, Body) :-
    national_accreditation_body(Body),
    established_under_national_law(Body),
    conformity_assessment_body(Body),
    assessment_and_monitoring_carried_out_by(Body).
assessment_and_monitoring_carried_out_by(Body) :-
    conformity_assessment_body(Body),
    carries_out(Body, assessment_of_conformity_assessment_bodies),
    carries_out(Body, monitoring_of_conformity_assessment_bodies).
no_conflict_of_interest(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_with_conformity_assessment_bodies(Authority).
objectivity_and_impartiality_safeguarded(Authority) :-
    notifying_authority(Authority),
    no_conflict_of_interest(Authority).
notification_decisions_by_different_persons(Authority) :-
    notifying_authority(Authority),
    competent_persons_take_notification_decisions(Authority),
    assessors_different_from_decision_makers(Authority).
competent_persons_take_notification_decisions(Authority) :-
    notifying_authority(Authority).
assessors_different_from_decision_makers(Authority) :-
    notifying_authority(Authority).
no_commercial_activities(Authority) :-
    notifying_authority(Authority),
    \+ offers_conformity_assessment_activities(Authority),
    \+ provides_consultancy_services_commercially(Authority).
offers_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority),
    conformity_assessment_activity(Activity),
    offers_or_provides(Authority, Activity).
provides_consultancy_services_commercially(Authority) :-
    notifying_authority(Authority),
    consultancy_service(Service),
    offers_or_provides(Authority, Service),
    on_commercial_or_competitive_basis(Authority, Service).
must_ensure_confidentiality(Authority) :-
    notifying_authority(Authority),
    information_obtained(Authority, Information),
    confidentiality_obligations(Information).
adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    adequate_number_of_personnel(Authority),
    competent_personnel(Person),
    at_disposal_of(Person, Authority).
personnel_expertise(Person, Field) :-
    competent_personnel(Person),
    necessary_expertise(Person, Field),
    field_relevant_for_function(Field).
field_relevant_for_function(information_technologies).
field_relevant_for_function(ai).
field_relevant_for_function(law).
field_relevant_for_function(supervision_of_fundamental_rights).
provenance(notifying_authority_established/1, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/0, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(no_commercial_activities/1, 'celex:32024R1689/oj#art_28').
provenance(adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_expertise/2, 'celex:32024R1689/oj#art_28').
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(responsible_for/2, 'celex:32024R1689/oj#art_28').
provenance(carries_out/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop_procedures_in_cooperation/0, 'celex:32024R1689/oj#art_28').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(assessment_and_monitoring_carried_out_by/1, 'celex:32024R1689/oj#art_28').
provenance(competent_persons_take_notification_decisions/1, 'celex:32024R1689/oj#art_28').
provenance(assessors_different_from_decision_makers/1, 'celex:32024R1689/oj#art_28').
provenance(offers_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(provides_consultancy_services_commercially/1, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_28').
provenance(field_relevant_for_function/1, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_notification_application/2, 'conformity assessment body must submit application for notification to notifying authority', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by/2, 'application accompanied by specified documentation', 'celex:32024R1689/oj#art_29').
declared(description_of_conformity_assessment_activities/1, 'description of conformity assessment activities, modules, and AI system types', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate_attesting_compliance/2, 'accreditation certificate attesting compliance with Article 31 requirements', 'celex:32024R1689/oj#art_29').
declared(valid_document_related_to_designation/2, 'valid document related to existing designation under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'conformity assessment body must provide documentary evidence for verification of compliance', 'celex:32024R1689/oj#art_29').
declared(documentary_evidence_for_verification/2, 'documentary evidence necessary for verification, recognition and regular monitoring of compliance', 'celex:32024R1689/oj#art_29').
declared(designated_under_other_union_harmonisation_legislation/1, 'notified body designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(may_use_existing_documents/2, 'notified body may use existing documents and certificates to support designation procedure', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/2, 'notified body must update documentation when relevant changes occur', 'celex:32024R1689/oj#art_29').
declared(authority_responsible_for_notified_bodies/1, 'authority responsible for notified bodies', 'celex:32024R1689/oj#art_29').
must_submit_notification_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_under_national_law(Body).
application_accompanied_by(Body, description_of_conformity_assessment_activities) :-
    must_submit_notification_application(Body, _Authority).
application_accompanied_by(Body, accreditation_certificate_attesting_compliance(Body, Certificate)) :-
    must_submit_notification_application(Body, _Authority),
    accreditation_certificate_attesting_compliance(Body, Certificate).
application_accompanied_by(Body, valid_document_related_to_designation(Body, Document)) :-
    must_submit_notification_application(Body, _Authority),
    valid_document_related_to_designation(Body, Document).
must_provide_documentary_evidence(Body, documentary_evidence_for_verification(Body, Evidence)) :-
    must_submit_notification_application(Body, _Authority),
    \+ accreditation_certificate_attesting_compliance(Body, _).
may_use_existing_documents(Body, Documents) :-
    notified_body(Body),
    designated_under_other_union_harmonisation_legislation(Body),
    valid_document_related_to_designation(Body, Documents).
must_update_documentation(Body, documentation_for_monitoring) :-
    notified_body(Body),
    relevant_changes_occur(Body),
    authority_responsible_for_notified_bodies(_Authority).
relevant_changes_occur(_Body).
provenance(must_submit_notification_application/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_documents/2, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
provenance(relevant_changes_occur/1, 'celex:32024R1689/oj#art_29').
provenance(authority_responsible_for_notified_bodies/1, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(may_notify/2, 'notifying authority may notify conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify_commission_and_member_states/2, 'notifying authority shall notify Commission and other Member States of conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(notification_details/2, 'notification includes full details of conformity assessment activities', 'celex:32024R1689/oj#art_30').
declared(documentary_evidence_required/2, 'notifying authority shall provide documentary evidence of competence and monitoring arrangements', 'celex:32024R1689/oj#art_30').
declared(may_perform_notified_body_activities/1, 'conformity assessment body may perform activities of notified body', 'celex:32024R1689/oj#art_30').
declared(objection_period_short/1, 'two week objection period for accreditation certificate notifications', 'celex:32024R1689/oj#art_30').
declared(objection_period_long/1, 'two month objection period for documentary evidence notifications', 'celex:32024R1689/oj#art_30').
declared(commission_decides_authorisation_justified/2, 'Commission decides whether authorisation is justified after objections', 'celex:32024R1689/oj#art_30').
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements(Body, art_31).
must_notify_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    notification_details(Body, Details),
    Details = notification(activities(A), modules(M), types(T), attestation(C)).
notification_details(Body, notification(activities(A), modules(M), types(T), attestation(C))) :-
    conformity_assessment_body(Body),
    conformity_assessment_activity(A),
    conformity_assessment_procedure(M),
    ai_system(T),
    attestation_of_competence(C).
documentary_evidence_required(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    must_notify_commission_and_member_states(Authority, Body),
    \+ accreditation_certificate_notification(Body, art_29_par_2),
    attestation_of_competence(Body),
    monitoring_arrangements(Body).
accreditation_certificate_notification(Body, art_29_par_2) :-
    conformity_assessment_body(Body),
    issued_certificate(Body, art_29_par_2).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notified(Body),
    \+ commission_objection(Body),
    \+ other_member_state_objection(Body).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    accreditation_certificate_notification(Body, art_29_par_2),
    objection_period_short_expired(Body),
    \+ commission_objection(Body),
    \+ other_member_state_objection(Body).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    documentary_evidence_notification(Body),
    objection_period_long_expired(Body),
    \+ commission_objection(Body),
    \+ other_member_state_objection(Body).
documentary_evidence_notification(Body) :-
    conformity_assessment_body(Body),
    documentary_evidence_required(_Authority, Body).
commission_objection(Body) :-
    conformity_assessment_body(Body),
    commission_objection_period(Body).
other_member_state_objection(Body) :-
    conformity_assessment_body(Body),
    other_member_state_objection_period(Body).
commission_decides_authorisation_justified(Body, Decision) :-
    conformity_assessment_body(Body),
    (commission_objection(Body); other_member_state_objection(Body)),
    commission_decides(Body, Decision).
provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_30').
provenance(notification_details/2, 'celex:32024R1689/oj#art_30').
provenance(documentary_evidence_required/2, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(commission_decides_authorisation_justified/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(established_notified_body/1, 'notified body established under national law with legal personality', 'celex:32024R1689/oj#art_31').
declared(satisfies_requirements/1, 'notified body satisfies organisational, quality management, resources, process and cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(ensures_confidence/1, 'notified body structure ensures confidence in performance and results', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider/2, 'notified body is independent of provider for assessed system', 'celex:32024R1689/oj#art_31').
declared(independent_of_interested_operators/1, 'notified body is independent of operators with economic interest or competitors', 'celex:32024R1689/oj#art_31').
declared(permitted_use_of_assessed_system/1, 'notified body may use assessed systems for operations or personal purposes', 'celex:32024R1689/oj#art_31').
declared(no_conflict_of_interest/1, 'no direct involvement in design, development, marketing or use of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(no_consultancy_conflict/1, 'no consultancy services that conflict with independence', 'celex:32024R1689/oj#art_31').
declared(safeguards_impartiality/1, 'notified body safeguards independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(documented_impartiality_procedures/1, 'notified body documents and implements impartiality structure and procedures', 'celex:32024R1689/oj#art_31').
declared(confidentiality_procedures/1, 'notified body has documented confidentiality procedures', 'celex:32024R1689/oj#art_31').
declared(professional_secrecy_obligation/1, 'staff bound to professional secrecy', 'celex:32024R1689/oj#art_31').
declared(disclosure_required_by_law/1, 'confidentiality exception when disclosure required by law', 'celex:32024R1689/oj#art_31').
declared(exception_for_notifying_authority/1, 'professional secrecy exception for notifying authorities', 'celex:32024R1689/oj#art_31').
declared(proportionate_procedures/1, 'procedures take account of provider size, sector, structure and system complexity', 'celex:32024R1689/oj#art_31').
declared(liability_insurance/1, 'notified body has appropriate liability insurance', 'celex:32024R1689/oj#art_31').
declared(member_state_liability_assumption/1, 'Member State assumes liability or is directly responsible', 'celex:32024R1689/oj#art_31').
declared(professional_integrity_and_competence/1, 'notified body carries out tasks with highest professional integrity and requisite competence', 'celex:32024R1689/oj#art_31').
declared(internal_competences_for_external_evaluation/1, 'notified body has sufficient internal competences to evaluate external tasks', 'celex:32024R1689/oj#art_31').
declared(sufficient_personnel/1, 'notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(relevant_experience_and_knowledge/1, 'personnel possess experience and knowledge relating to relevant AI systems, data, computing and requirements', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination/1, 'notified body participates in coordination activities under Article 38', 'celex:32024R1689/oj#art_31').
declared(participates_in_standardisation/1, 'notified body participates in European standardisation organisations', 'celex:32024R1689/oj#art_31').
declared(aware_of_relevant_standards/1, 'notified body ensures awareness and up-to-date knowledge of relevant standards', 'celex:32024R1689/oj#art_31').
established_notified_body(B) :-
    notified_body(B),
    established_under_national_law(B).
satisfies_requirements(B) :-
    notified_body(B),
    organisational_requirements_met(B),
    quality_management_requirements_met(B),
    resources_requirements_met(B),
    process_requirements_met(B),
    suitable_cybersecurity_requirements_met(B).
ensures_confidence(B) :-
    notified_body(B),
    organisational_structure_ensures_confidence(B),
    allocation_of_responsibilities_ensures_confidence(B),
    reporting_lines_ensure_confidence(B),
    operation_ensures_confidence(B).
independent_of_provider(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activity(A),
    carried_out_by(B, A),
    \+ economic_interest_in(B, S).
independent_of_interested_operators(B) :-
    notified_body(B),
    \+ (operator(O), economic_interest_in(O, S), high_risk_ai_system(S), assessed_by(B, S), O \= B),
    \+ (provider(P), high_risk_ai_system(S), assessed_by(B, S), competitor_of(P, C), C = B).
permitted_use_of_assessed_system(B) :-
    notified_body(B),
    high_risk_ai_system(S),
    assessed_by(B, S),
    necessary_for_operations(S, B).
permitted_use_of_assessed_system(B) :-
    notified_body(B),
    high_risk_ai_system(S),
    assessed_by(B, S),
    used_for_personal_purposes(S, _Person).
no_conflict_of_interest(B) :-
    notified_body(B),
    \+ directly_involved_in_design(B, _S),
    \+ directly_involved_in_development(B, _S),
    \+ directly_involved_in_marketing(B, _S),
    \+ directly_involved_in_use(B, _S),
    \+ represents_parties_engaged_in_activities(B, _S).
no_consultancy_conflict(B) :-
    notified_body(B),
    \+ (activity(A), conflicts_with_independence(A, B), consultancy_service(A)).
safeguards_impartiality(B) :-
    notified_body(B),
    organised_for_independence(B),
    operated_for_objectivity(B),
    operated_for_impartiality(B).
documented_impartiality_procedures(B) :-
    notified_body(B),
    documented_structure_for_impartiality(B),
    documented_procedures_for_impartiality(B),
    promotes_impartiality(B),
    applies_impartiality_principles(B, organisation),
    applies_impartiality_principles(B, personnel),
    applies_impartiality_principles(B, assessment_activities).
confidentiality_procedures(B) :-
    notified_body(B),
    documented_procedures(B, confidentiality),
    personnel_maintain_confidentiality(B),
    committees_maintain_confidentiality(B),
    subsidiaries_maintain_confidentiality(B),
    subcontractors_maintain_confidentiality(B),
    associated_bodies_maintain_confidentiality(B),
    external_bodies_personnel_maintain_confidentiality(B),
    must_ensure_confidentiality(B).
professional_secrecy_obligation(B) :-
    notified_body(B),
    staff_bound_by_professional_secrecy(B),
    information_obtained_under_regulation(B, _Info).
disclosure_required_by_law(_Info).
exception_for_notifying_authority(B) :-
    notified_body(B),
    notifying_authority(A),
    activities_carried_out_in_member_state(B, MS),
    notifying_authority_of(A, MS).
proportionate_procedures(B) :-
    notified_body(B),
    documented_procedures(B, performance_of_activities),
    takes_account_of(B, size_of_provider),
    takes_account_of(B, sector_of_provider),
    takes_account_of(B, structure_of_provider),
    takes_account_of(B, complexity_of_ai_system).
liability_insurance(B) :-
    notified_body(B),
    appropriate_liability_insurance(B, conformity_assessment_activities).
member_state_liability_assumption(B) :-
    notified_body(B),
    established_in_member_state(B, MS),
    liability_assumed_by_state(MS, B).
member_state_liability_assumption(B) :-
    notified_body(B),
    established_in_member_state(B, MS),
    member_state_directly_responsible(MS, conformity_assessment).
professional_integrity_and_competence(B) :-
    notified_body(B),
    capable_of_carrying_out_tasks(B),
    highest_degree_of_professional_integrity(B),
    requisite_competence(B, specific_field),
    tasks_carried_out_by(B, _A).
professional_integrity_and_competence(B) :-
    notified_body(B),
    capable_of_carrying_out_tasks(B),
    highest_degree_of_professional_integrity(B),
    requisite_competence(B, specific_field),
    tasks_carried_out_on_behalf_of(B, _A),
    under_responsibility(B, _A).
internal_competences_for_external_evaluation(B) :-
    notified_body(B),
    sufficient_internal_competences(B),
    effectively_evaluate_external_tasks(B, _A).
sufficient_personnel(B) :-
    notified_body(B),
    permanent_availability(B, administrative_personnel),
    permanent_availability(B, technical_personnel),
    permanent_availability(B, legal_personnel),
    permanent_availability(B, scientific_personnel),
    sufficient_quantity(B, administrative_personnel),
    sufficient_quantity(B, technical_personnel),
    sufficient_quantity(B, legal_personnel),
    sufficient_quantity(B, scientific_personnel).
relevant_experience_and_knowledge(B) :-
    notified_body(B),
    personnel_experience_and_knowledge_of(B, ai_systems),
    personnel_experience_and_knowledge_of(B, data),
    personnel_experience_and_knowledge_of(B, data_computing),
    personnel_experience_and_knowledge_of(B, requirements_chapter_3_section_2).
participates_in_coordination(B) :-
    notified_body(B),
    coordination_activities(A),
    referred_to_in(A, 'celex:32024R1689/oj#art_38'),
    participates_in(B, A).
participates_in_standardisation(B) :-
    notified_body(B),
    european_standardisation_organisation(O),
    (participates_directly(B, O); represented_in(B, O)).
aware_of_relevant_standards(B) :-
    notified_body(B),
    ensures_awareness(B, relevant_standards),
    ensures_up_to_date(B, relevant_standards).
provenance(established_notified_body/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(ensures_confidence/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_interested_operators/1, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_system/1, 'celex:32024R1689/oj#art_31').
provenance(no_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(no_consultancy_conflict/1, 'celex:32024R1689/oj#art_31').
provenance(safeguards_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(documented_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(professional_secrecy_obligation/1, 'celex:32024R1689/oj#art_31').
provenance(disclosure_required_by_law/1, 'celex:32024R1689/oj#art_31').
provenance(exception_for_notifying_authority/1, 'celex:32024R1689/oj#art_31').
provenance(proportionate_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(member_state_liability_assumption/1, 'celex:32024R1689/oj#art_31').
provenance(professional_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(internal_competences_for_external_evaluation/1, 'celex:32024R1689/oj#art_31').
provenance(sufficient_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(relevant_experience_and_knowledge/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').
provenance(aware_of_relevant_standards/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_conformity_notified_body/1, 'conformity assessment body presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
presumed_conformity_notified_body(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B).
demonstrates_conformity_with_harmonised_standards(B) :-
    conformity_assessment_body(B),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    demonstrates_conformity_with(B, S).
demonstrates_conformity_with(B, S) :-
    conformity_assessment_body(B),
    harmonised_standard(S).
covers_requirements(S, R) :-
    harmonised_standard(S),
    requirement(R).
presumed_conformity_notified_body(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    covers_requirements(S, R),
    requirement_art_31(R).
requirement_art_31(R) :-
    requirement(R).
provenance(presumed_conformity_notified_body/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with/2, 'celex:32024R1689/oj#art_32').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_32').
provenance(requirement_art_31/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontractor/1, 'entity performing subcontracted conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(subsidiary/1, 'subsidiary of a notified body', 'celex:32024R1689/oj#art_33').
declared(subcontracting_agreement/1, 'agreement for subcontracting conformity assessment tasks', 'celex:32024R1689/oj#art_33').
declared(termination_date/1, 'date of termination of subcontracting arrangement', 'celex:32024R1689/oj#art_33').
must_ensure_subcontractor_meets_requirements(B, S) :-
    notified_body(B),
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A),
    must_inform(B, notifying_authority(N)),
    notifying_authority(N).
provenance(must_ensure_subcontractor_meets_requirements/2, 'celex:32024R1689/oj#art_33').
must_take_full_responsibility(B, S) :-
    notified_body(B),
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A).
provenance(must_take_full_responsibility/2, 'celex:32024R1689/oj#art_33').
permitted_subcontracting_or_subsidiary(S, A) :-
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A),
    agreement_of_provider(A, _P).
provenance(permitted_subcontracting_or_subsidiary/2, 'celex:32024R1689/oj#art_33').
must_make_publicly_available(B, list(subsidiaries)) :-
    notified_body(B).
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
must_keep_documents_available(B, assessment_documents(S, A)) :-
    notified_body(B),
    (subcontractor(S) ; subsidiary(S)),
    conformity_assessment_activity(A),
    carried_out_by(S, A),
    experience_and_knowledge_of(S, assessment_qualifications),
    termination_date(T),
    period(years(5), after(T)).
provenance(must_keep_documents_available/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body shall verify conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'notified body shall avoid unnecessary burdens for provider', 'celex:32024R1689/oj#art_34').
declared(must_take_account_of_provider_characteristics/2, 'notified body shall take account of provider size, sector, structure and system complexity', 'celex:32024R1689/oj#art_34').
declared(must_respect_required_rigour_and_protection/2, 'notified body shall respect degree of rigour and level of protection required', 'celex:32024R1689/oj#art_34').
declared(must_make_available_documentation/2, 'notified body shall make available and submit all relevant documentation', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    conformity_assessment_procedure(Proc),
    carried_out_by(Proc, Body).
must_avoid_unnecessary_burdens(Body, P) :-
    notified_body(Body),
    provider(P),
    conformity_assessment_activity(Activity),
    carried_out_by(Activity, Body).
must_take_account_of_provider_characteristics(Body, P) :-
    notified_body(Body),
    provider(P),
    conformity_assessment_activity(Activity),
    carried_out_by(Activity, Body),
    size_of_provider(P, _Size),
    sector_of_provider(P, _Sector),
    structure_of_provider(P, _Structure),
    high_risk_ai_system(S),
    complexity_of_system(S, _Complexity),
    minimises_burden_for(P, micro_or_small_enterprise).
must_respect_required_rigour_and_protection(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    conformity_assessment_activity(Activity),
    carried_out_by(Activity, Body).
must_make_available_documentation(Body, documentation_set(Docs, Authority)) :-
    notified_body(Body),
    relevant_documentation(Docs),
    notifying_authority(Authority),
    assessment_designation_notification_monitoring(Authority).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_account_of_provider_characteristics/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_required_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign_identification_number/2, 'Commission shall assign a single identification number to each notified body', 'celex:32024R1689/oj#art_35').
declared(must_make_publicly_available/2, 'Commission shall make publicly available the list of notified bodies', 'celex:32024R1689/oj#art_35').
declared(must_ensure_list_up_to_date/2, 'Commission shall ensure the list is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign_identification_number(Commission, Body) :-
    notified_body(Body),
    commission(Commission).
must_make_publicly_available(Commission, list(notified_bodies)) :-
    commission(Commission).
must_ensure_list_up_to_date(Commission, list(notified_bodies)) :-
    commission(Commission).
provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_list_up_to_date/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify_changes/2, 'notifying authority must notify Commission and other Member States of changes to notification', 'celex:32024R1689/oj#art_36').
declared(relevant_change_to_notification/1, 'relevant change to the notification of a notified body', 'celex:32024R1689/oj#art_36').
declared(via_electronic_notification_tool/1, 'via the electronic notification tool referred to in Article 30(2)', 'celex:32024R1689/oj#art_36').
declared(procedures_apply/2, 'procedures laid down in specified articles apply to specified matter', 'celex:32024R1689/oj#art_36').
declared(extension_of_scope/1, 'extension of the scope of the notification', 'celex:32024R1689/oj#art_36').
declared(change_other_than_extension/1, 'change to the notification other than extension of scope', 'celex:32024R1689/oj#art_36').
declared(must_inform_ceasing_activities/2, 'notified body must inform notifying authority and providers concerned of ceasing activities', 'celex:32024R1689/oj#art_36').
declared(planned_cessation/1, 'cessation is planned rather than immediate', 'celex:32024R1689/oj#art_36').
declared(at_least_one_year_before/1, 'at least one year before ceasing activities', 'celex:32024R1689/oj#art_36').
declared(certificate_validity_period/2, 'certificates remain valid for specified period after cessation', 'celex:32024R1689/oj#art_36').
declared(another_notified_body_assumes_responsibility/2, 'another notified body confirms in writing it will assume responsibilities for high-risk AI systems covered by certificates', 'celex:32024R1689/oj#art_36').
declared(must_complete_full_assessment/2, 'notified body must complete full assessment of high-risk AI systems before issuing new certificates', 'celex:32024R1689/oj#art_36').
declared(must_withdraw_designation/2, 'notifying authority must withdraw designation of ceased notified body', 'celex:32024R1689/oj#art_36').
declared(sufficient_reason_to_consider_non_compliance/2, 'notifying authority has sufficient reason to consider notified body no longer meets requirements or fails obligations', 'celex:32024R1689/oj#art_36').
declared(requirements_of_art_31/1, 'requirements laid down in Article 31', 'celex:32024R1689/oj#art_36').
declared(must_investigate_without_delay/2, 'notifying authority must investigate matter without delay with utmost diligence', 'celex:32024R1689/oj#art_36').
declared(must_inform_of_objections/2, 'notifying authority must inform notified body of objections and give possibility to make views known', 'celex:32024R1689/oj#art_36').
declared(must_restrict_suspend_withdraw_designation/2, 'notifying authority must restrict, suspend or withdraw designation as appropriate', 'celex:32024R1689/oj#art_36').
declared(seriousness_of_failure/1, 'seriousness of failure to meet requirements or fulfil obligations', 'celex:32024R1689/oj#art_36').
declared(must_inform_commission_and_member_states/2, 'notifying authority must immediately inform Commission and other Member States', 'celex:32024R1689/oj#art_36').
declared(must_inform_providers_within_days/2, 'notified body must inform providers concerned within specified days', 'celex:32024R1689/oj#art_36').
declared(days/1, 'number of days', 'celex:32024R1689/oj#art_36').
declared(must_ensure_files_kept/2, 'notifying authority must take steps to ensure files of notified body are kept', 'celex:32024R1689/oj#art_36').
declared(must_make_files_available/2, 'notifying authority must make files available to other notifying authorities and market surveillance authorities', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact_on_certificates/2, 'notifying authority must assess impact on certificates issued by notified body', 'celex:32024R1689/oj#art_36').
declared(must_submit_report_within_months/2, 'notifying authority must submit report on findings within specified months', 'celex:32024R1689/oj#art_36').
declared(must_require_suspend_withdraw_unduly_issued/2, 'notifying authority must require notified body to suspend or withdraw unduly issued certificates', 'celex:32024R1689/oj#art_36').
declared(reasonable_period_determined_by_authority/1, 'reasonable period of time determined by the authority', 'celex:32024R1689/oj#art_36').
declared(unduly_issued/1, 'certificates which were unduly issued', 'celex:32024R1689/oj#art_36').
declared(must_inform_about_required_suspension_withdrawal/2, 'notifying authority must inform Commission and Member States about certificates whose suspension or withdrawal it required', 'celex:32024R1689/oj#art_36').
declared(must_provide_certificate_information/2, 'notifying authority must provide relevant certificate information to national competent authorities', 'celex:32024R1689/oj#art_36').
declared(registered_place_of_business/2, 'registered place of business of provider in Member State', 'celex:32024R1689/oj#art_36').
declared(must_take_appropriate_measures/2, 'national competent authority must take appropriate measures to avoid potential risk', 'celex:32024R1689/oj#art_36').
declared(certificates_remain_valid/1, 'certificates remain valid despite suspension or restriction of designation', 'celex:32024R1689/oj#art_36').
declared(exception_unduly_issued/1, 'exception for certificates unduly issued', 'celex:32024R1689/oj#art_36').
declared(confirmed_no_risk_within_month/2, 'notifying authority confirmed no risk within one month of suspension or restriction', 'celex:32024R1689/oj#art_36').
declared(outlined_timeline_for_remedy/2, 'notifying authority outlined timeline for actions to remedy suspension or restriction', 'celex:32024R1689/oj#art_36').
declared(confirmed_no_relevant_certificates_during_suspension/2, 'notifying authority confirmed no certificates relevant to suspension will be issued amended or re-issued during suspension', 'celex:32024R1689/oj#art_36').
declared(capability_to_monitor_existing_certificates/2, 'notified body has capability of continuing to monitor and remain responsible for existing certificates', 'celex:32024R1689/oj#art_36').
declared(provider_confirms_another_body_assumes_functions/2, 'provider confirms in writing another qualified notified body temporarily assumes functions', 'celex:32024R1689/oj#art_36').
declared(within_three_months_of_suspension/1, 'within three months of the suspension or restriction', 'celex:32024R1689/oj#art_36').
declared(certificates_remain_valid_nine_months/1, 'certificates remain valid for nine months after withdrawal of designation', 'celex:32024R1689/oj#art_36').
declared(national_competent_authority_confirmed_no_risk/2, 'national competent authority confirmed no risk to health safety or fundamental rights', 'celex:32024R1689/oj#art_36').
declared(another_body_assumes_immediate_responsibility/2, 'another notified body confirmed in writing it will assume immediate responsibility', 'celex:32024R1689/oj#art_36').
declared(completes_assessment_within_months/2, 'notified body completes assessment within 12 months of withdrawal', 'celex:32024R1689/oj#art_36').
declared(may_extend_provisional_validity/2, 'national competent authority may extend provisional validity of certificates', 'celex:32024R1689/oj#art_36').
declared(additional_periods_of_months/2, 'additional periods of three months not exceeding 12 months in total', 'celex:32024R1689/oj#art_36').
declared(must_immediately_inform_parties/2, 'national competent authority or assuming notified body must immediately inform Commission other Member States and other notified bodies', 'celex:32024R1689/oj#art_36').
must_notify_changes(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    relevant_change_to_notification(Body),
    must_notify_commission_and_member_states(Authority, change_to_notification(Body)),
    via_electronic_notification_tool(change_to_notification(Body)).
procedures_apply(extensions_of_scope, Body) :-
    notified_body(Body),
    extension_of_scope(Body).
procedures_apply(changes_other_than_extension, Body) :-
    notified_body(Body),
    change_other_than_extension(Body).
must_inform_ceasing_activities(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    decides_to_cease_conformity_assessment_activities(Body),
    must_inform(Authority, ceasing_activities(Body)),
    must_inform_providers(Body, ceasing_activities(Body)).
must_inform_ceasing_activities(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    planned_cessation(Body),
    at_least_one_year_before(cessation(Body)),
    must_inform(Authority, planned_cessation(Body)),
    must_inform_providers(Body, planned_cessation(Body)).
certificate_validity_period(Certificate, months(9)) :-
    certificate_issued_by(Certificate, Body),
    notified_body(Body),
    ceased_activities(Body),
    another_notified_body_assumes_responsibility(AnotherBody, systems_covered_by(Certificate)),
    AnotherBody \= Body.
must_complete_full_assessment(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    affected_by_cessation(System, _OriginalBody),
    before_issuing_new_certificates(Body, System),
    \+ completed_full_assessment(Body, System).
must_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activities(Body).
sufficient_reason_to_consider_non_compliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    (\+ meets_requirements(Body, requirements_of_art_31)
    ; failing_to_fulfil_obligations(Body)).
must_investigate_without_delay(Authority, Body) :-
    sufficient_reason_to_consider_non_compliance(Authority, Body),
    notifying_authority(Authority),
    notified_body(Body).
must_inform_of_objections(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    objections_raised(Authority, Body),
    give_possibility_to_make_views_known(Body).
must_restrict_suspend_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    conclusion_no_longer_meets_requirements(Authority, Body),
    seriousness_of_failure(Failure),
    appropriate_measure(restrict, suspend, withdraw, Failure).
must_restrict_suspend_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    conclusion_failing_obligations(Authority, Body),
    seriousness_of_failure(Failure),
    appropriate_measure(restrict, suspend, withdraw, Failure).
must_inform_commission_and_member_states(Authority, designation_change(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    (restricted_designation(Body)
    ; suspended_designation(Body)
    ; withdrawn_designation(Body)).
must_inform_providers_within_days(Body, Providers, days(10)) :-
    notified_body(Body),
    (suspended_designation(Body)
    ; restricted_designation(Body)
    ; withdrawn_designation(Body)),
    provider_of_system_under_certificate(Providers, Body).
must_ensure_files_kept(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    (restricted_designation(Body)
    ; suspended_designation(Body)
    ; withdrawn_designation(Body)).
must_make_files_available(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    (restricted_designation(Body)
    ; suspended_designation(Body)
    ; withdrawn_designation(Body)),
    (request_from_notifying_authority(_OtherAuthority)
    ; request_from_market_surveillance_authority(_Msa)).
must_assess_impact_on_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    (restricted_designation(Body)
    ; suspended_designation(Body)
    ; withdrawn_designation(Body)).
must_submit_report_within_months(Authority, findings(Body), months(3)) :-
    notifying_authority(Authority),
    notified_body(Body),
    (restricted_designation(Body)
    ; suspended_designation(Body)
    ; withdrawn_designation(Body)),
    notified_changes_to_designation(Authority, Body).
must_require_suspend_withdraw_unduly_issued(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    unduly_issued(Certificate),
    certificate_issued_by(Certificate, Body),
    reasonable_period_determined_by_authority(Period),
    must_suspend_or_withdraw(Body, Certificate, Period).
must_inform_about_required_suspension_withdrawal(Authority, Certificate) :-
    notifying_authority(Authority),
    unduly_issued(Certificate),
    required_suspension_or_withdrawal(Authority, Certificate).
must_provide_certificate_information(Authority, Certificate) :-
    notifying_authority(Authority),
    required_suspension_or_withdrawal(Authority, Certificate),
    certificate_issued_by(Certificate, Body),
    provider_of_system_under_certificate(Provider, Certificate),
    registered_place_of_business(Provider, MemberState),
    national_competent_authority(CompetentAuthority, MemberState),
    must_provide_information(Authority, certificate_details(Certificate, CompetentAuthority)).
must_take_appropriate_measures(CompetentAuthority, risk_to_avoid) :-
    national_competent_authority(CompetentAuthority),
    received_certificate_information(CompetentAuthority, Certificate),
    potential_risk_to_health_safety_or_rights(Certificate),
    necessary_to_avoid_risk(Certificate).
certificates_remain_valid(Certificate) :-
    exception_unduly_issued(Certificate),
    \+ unduly_issued(Certificate),
    (suspended_designation(Body)
    ; restricted_designation(Body)),
    certificate_issued_by(Certificate, Body),
    confirmed_no_risk_within_month(Authority, Body),
    outlined_timeline_for_remedy(Authority, Body).
certificates_remain_valid(Certificate) :-
    exception_unduly_issued(Certificate),
    \+ unduly_issued(Certificate),
    (suspended_designation(Body)
    ; restricted_designation(Body)),
    certificate_issued_by(Certificate, Body),
    confirmed_no_relevant_certificates_during_suspension(Authority, Body),
    (capability_to_monitor_existing_certificates(Body, Authority)
    ; provider_confirms_another_body_assumes_functions(Provider, Body),
      within_three_months_of_suspension(suspension(Body)),
      provider_of_system_under_certificate(Provider, Certificate)).
certificates_remain_valid_nine_months(Certificate) :-
    exception_unduly_issued(Certificate),
    \+ unduly_issued(Certificate),
    withdrawn_designation(Body),
    certificate_issued_by(Certificate, Body),
    national_competent_authority_confirmed_no_risk(CompetentAuthority, systems_covered_by(Certificate)),
    another_body_assumes_immediate_responsibility(AnotherBody, systems_covered_by(Certificate)),
    completes_assessment_within_months(AnotherBody, months(12)).
may_extend_provisional_validity(CompetentAuthority, Certificate) :-
    national_competent_authority(CompetentAuthority),
    certificates_remain_valid_nine_months(Certificate),
    additional_periods_of_months(Period, months(3)),
    total_not_exceed_months(Period, months(12)).
must_immediately_inform_parties(AuthorityOrBody, change_of_designation(Body)) :-
    (national_competent_authority(AuthorityOrBody)
    ; notified_body(AuthorityOrBody)),
    assumes_functions_of(AuthorityOrBody, Body),
    (restricted_designation(Body)
    ; suspended_designation(Body)
    ; withdrawn_designation(Body)),
    must_inform(AuthorityOrBody, commission),
    must_inform(AuthorityOrBody, other_member_states),
    must_inform(AuthorityOrBody, other_notified_bodies).
provenance(must_notify_changes/2, 'celex:32024R1689/oj#art_36').
provenance(procedures_apply/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_ceasing_activities/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_full_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason_to_consider_non_compliance/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_without_delay/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_objections/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_within_days/3, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_files_available/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_within_months/3, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspend_withdraw_unduly_issued/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_required_suspension_withdrawal/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_certificate_information/2, 'celex:32024R1689/oj#art_36').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid/1, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid_nine_months/1, 'celex:32024R1689/oj#art_36').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_immediately_inform_parties/2, 'celex:32024R1689/oj#art_36').
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
declared(must_investigate_doubted_competence/2, 'Commission shall investigate cases where there are reasons to doubt competence of notified body', 'celex:32024R1689/oj#art_37').
declared(must_provide_information_on_request/2, 'notifying authority shall provide Commission with relevant information on request', 'celex:32024R1689/oj#art_37').
declared(must_ensure_confidentiality_of_investigation/2, 'Commission shall ensure sensitive information from investigations is treated confidentially', 'celex:32024R1689/oj#art_37').
declared(must_take_corrective_measures_for_notification/2, 'notifying Member State shall take necessary corrective measures including suspension or withdrawal of notification', 'celex:32024R1689/oj#art_37').
declared(may_suspend_restrict_withdraw_designation/2, 'Commission may by implementing act suspend, restrict or withdraw the designation', 'celex:32024R1689/oj#art_37').
must_investigate_doubted_competence(commission, Body) :-
    notified_body(Body),
    reasons_to_doubt_competence(Body).
must_investigate_doubted_competence(commission, Body) :-
    notified_body(Body),
    \+ continued_fulfilment_of_requirements(Body).
continued_fulfilment_of_requirements(Body) :-
    notified_body(Body),
    meets_requirements(Body, notification_requirements).
reasons_to_doubt_competence(Body) :-
    notified_body(Body).
must_provide_information_on_request(NotifyingAuthority, commission) :-
    notifying_authority(NotifyingAuthority),
    relevant_information_for_notification(NotifyingAuthority, _Body).
must_ensure_confidentiality_of_investigation(commission, Information) :-
    sensitive_information(Information),
    obtained_in_course_of_investigation(Information, art_37).
may_suspend_restrict_withdraw_designation(commission, Body) :-
    notified_body(Body),
    \+ meets_requirements(Body, notification_requirements),
    member_state_fails_corrective_measures(MemberState, Body).
member_state_fails_corrective_measures(MemberState, Body) :-
    notified_body(Body),
    responsible_notifying_member_state(MemberState, Body),
    \+ must_take_corrective_measures_for_notification(MemberState, Body).
must_take_corrective_measures_for_notification(MemberState, Body) :-
    member_state(MemberState),
    notified_body(Body),
    responsible_notifying_member_state(MemberState, Body),
    \+ meets_requirements(Body, notification_requirements),
    corrective_measures_required(MemberState, Body).
corrective_measures_required(MemberState, Body) :-
    member_state(MemberState),
    notified_body(Body),
    responsible_notifying_member_state(MemberState, Body),
    (suspension_of_notification_required(Body); withdrawal_of_notification_required(Body)).
suspension_of_notification_required(Body) :-
    notified_body(Body),
    \+ meets_requirements(Body, notification_requirements).
withdrawal_of_notification_required(Body) :-
    notified_body(Body),
    \+ meets_requirements(Body, notification_requirements).
responsible_notifying_member_state(MemberState, Body) :-
    notifying_authority(Authority),
    established_under_national_law(Authority),
    national_law_of_member_state(Authority, MemberState),
    notified_body_for_assessment(Body, Authority).
member_state(MemberState) :-
    national_public_authority_or_body(MemberState).
national_law_of_member_state(Authority, MemberState) :-
    established_under_national_law(Authority).
provenance(must_investigate_doubted_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure_confidentiality_of_investigation/2, 'celex:32024R1689/oj#art_37').
provenance(must_take_corrective_measures_for_notification/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw_designation/2, 'celex:32024R1689/oj#art_37').
provenance(continued_fulfilment_of_requirements/1, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(member_state_fails_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(corrective_measures_required/2, 'celex:32024R1689/oj#art_37').
provenance(suspension_of_notification_required/1, 'celex:32024R1689/oj#art_37').
provenance(withdrawal_of_notification_required/1, 'celex:32024R1689/oj#art_37').
provenance(responsible_notifying_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(member_state/1, 'celex:32024R1689/oj#art_37').
provenance(national_law_of_member_state/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination/1, 'Commission shall ensure coordination and cooperation between notified bodies', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation/1, 'notifying authority shall ensure bodies notified by it participate in group work', 'celex:32024R1689/oj#art_38').
declared(must_provide_knowledge_exchange/1, 'Commission shall provide for exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
must_ensure_coordination(Commission) :-
    commission(Commission),
    high_risk_ai_system(S),
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    conformity_assessment_procedure(B1),
    conformity_assessment_procedure(B2),
    appropriate_coordination_between(B1, B2),
    cooperation_between(B1, B2),
    sectoral_group_of_notified_bodies(G),
    operated_properly(G).
must_ensure_participation(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority),
    notified_body(B),
    notified_by(B, NotifyingAuthority),
    sectoral_group_of_notified_bodies(G),
    participates_in_work(B, G).
participates_in_work(B, G) :-
    participates_directly(B, G).
participates_in_work(B, G) :-
    designated_representative(B, R),
    participates_directly(R, G).
must_provide_knowledge_exchange(Commission) :-
    commission(Commission),
    notifying_authority(A1),
    notifying_authority(A2),
    A1 \= A2,
    exchange_of_knowledge_and_best_practices(A1, A2).
provenance(must_ensure_coordination/1, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/1, 'celex:32024R1689/oj#art_38').
provenance(must_provide_knowledge_exchange/1, 'celex:32024R1689/oj#art_38').
provenance(participates_in_work/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country', 'celex:32024R1689/oj#art_39').
declared(union_agreement_with_third_country/1, 'the Union has concluded an agreement with the third country', 'celex:32024R1689/oj#art_39').
declared(authorised_as_notified_body/1, 'authorised to carry out activities of notified bodies', 'celex:32024R1689/oj#art_39').
declared(meets_requirements_art_31/1, 'meets requirements laid down in Article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_level_of_compliance/1, 'ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
third_country_conformity_assessment_body(B) :-
    conformity_assessment_body(B),
    established_under_third_country_law(B).
established_under_third_country_law(B) :-
    third_country_conformity_assessment_body(B).
union_agreement_with_third_country(B) :-
    third_country_conformity_assessment_body(B),
    established_under_national_law(B),
    \+ established_in_union(B).
authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_with_third_country(B),
    meets_requirements_art_31(B).
authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_with_third_country(B),
    ensures_equivalent_level_of_compliance(B).
provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(established_under_third_country_law/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_with_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_level_of_compliance/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(presumed_conformity/1, 'presumed to be in conformity with requirements or obligations', 'celex:32024R1689/oj#art_40').
presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard(Std),
    reference_published_in_official_journal(Std),
    covers(Std, requirements_in_chapter_3_section_2(S)).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(Std),
    reference_published_in_official_journal(Std),
    covers(Std, obligations_chapter_5_section_2(M)).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(Std),
    reference_published_in_official_journal(Std),
    covers(Std, obligations_chapter_5_section_3(M)).
declared(must_issue_standardisation_request/2, 'Commission shall issue standardisation requests', 'celex:32024R1689/oj#art_40').
must_issue_standardisation_request(commission, requirements_chapter_3_section_2).
must_issue_standardisation_request(commission, obligations_chapter_5_section_2).
must_issue_standardisation_request(commission, obligations_chapter_5_section_3).
declared(standardisation_request_covers/1, 'standardisation request covers resource performance and energy efficiency', 'celex:32024R1689/oj#art_40').
standardisation_request_covers(resource_performance_reporting_documentation).
standardisation_request_covers(energy_consumption_reduction).
standardisation_request_covers(energy_efficient_development_general_purpose_ai_models).
declared(must_consult_for_standardisation_request/2, 'Commission shall consult specified parties when preparing standardisation request', 'celex:32024R1689/oj#art_40').
must_consult_for_standardisation_request(commission, board).
must_consult_for_standardisation_request(commission, advisory_forum).
declared(standard_must_be/2, 'standards must have specified characteristics', 'celex:32024R1689/oj#art_40').
standard_must_be(Std, clear) :-
    harmonised_standard(Std).
standard_must_be(Std, consistent) :-
    harmonised_standard(Std).
standard_must_be(Std, consistent_with_sector_standards) :-
    harmonised_standard(Std),
    product_covered_by_harmonisation_legislation(Prod),
    union_harmonisation_legislation(Prod).
standard_must_be(Std, ensure_relevant_requirements_met) :-
    harmonised_standard(Std).
declared(must_request_evidence_best_efforts/2, 'Commission shall request evidence of best efforts from standardisation organisations', 'celex:32024R1689/oj#art_40').
must_request_evidence_best_efforts(commission, european_standardisation_organisations).
declared(standardisation_process_objective/1, 'objective to be promoted by standardisation process participants', 'celex:32024R1689/oj#art_40').
standardisation_process_objective(promote_investment_innovation_ai).
standardisation_process_objective(increase_legal_certainty).
standardisation_process_objective(enhance_competitiveness_growth_union_market).
standardisation_process_objective(strengthen_global_cooperation_standardisation).
standardisation_process_objective(take_into_account_international_standards).
standardisation_process_objective(enhance_multi_stakeholder_governance).
standardisation_process_objective(balanced_representation_interests).
standardisation_process_objective(effective_participation_relevant_stakeholders).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_covers/1, 'celex:32024R1689/oj#art_40').
provenance(must_consult_for_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(standard_must_be/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_best_efforts/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_process_objective/1, 'celex:32024R1689/oj#art_40').
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
declared(may_adopt_common_specifications/1, 'Commission may adopt implementing acts establishing common specifications', 'celex:32024R1689/oj#art_41').
declared(conditions_fulfilled_for_common_specifications/0, 'conditions for adopting common specifications have been fulfilled', 'celex:32024R1689/oj#art_41').
declared(request_not_accepted/0, 'request to European standardisation organisations not accepted', 'celex:32024R1689/oj#art_41').
declared(harmonised_standards_not_delivered_in_time/0, 'harmonised standards not delivered within deadline', 'celex:32024R1689/oj#art_41').
declared(harmonised_standards_insufficiently_address_fundamental_rights/0, 'harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(harmonised_standards_do_not_comply_with_request/0, 'harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_reference_published_or_expected/0, 'no reference to harmonised standards published or expected within reasonable period', 'celex:32024R1689/oj#art_41').
declared(must_consult_advisory_forum/0, 'Commission shall consult advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(must_inform_committee_before_draft/0, 'Commission shall inform committee before preparing draft implementing act', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity_with_common_specifications/1, 'conformity with common specifications gives presumption of conformity', 'celex:32024R1689/oj#art_41').
declared(must_repeal_implementing_acts/0, 'Commission shall repeal implementing acts when harmonised standard published', 'celex:32024R1689/oj#art_41').
declared(must_justify_non_compliance_with_technical_solutions/1, 'providers must justify technical solutions meeting equivalent requirements', 'celex:32024R1689/oj#art_41').
declared(member_state_may_challenge_common_specification/0, 'Member State may inform Commission that common specification does not entirely meet requirements', 'celex:32024R1689/oj#art_41').
declared(commission_shall_assess_and_amend_if_appropriate/0, 'Commission shall assess and amend implementing act if appropriate', 'celex:32024R1689/oj#art_41').
may_adopt_common_specifications(Spec) :-
    implementing_act(Spec),
    common_specification(Spec),
    conditions_fulfilled_for_common_specifications.
conditions_fulfilled_for_common_specifications :-
    request_not_accepted,
    no_reference_published_or_expected.
conditions_fulfilled_for_common_specifications :-
    harmonised_standards_not_delivered_in_time,
    no_reference_published_or_expected.
conditions_fulfilled_for_common_specifications :-
    harmonised_standards_insufficiently_address_fundamental_rights,
    no_reference_published_or_expected.
conditions_fulfilled_for_common_specifications :-
    harmonised_standards_do_not_comply_with_request,
    no_reference_published_or_expected.
must_consult_advisory_forum :-
    drafting_common_specifications(_Spec).
must_inform_committee_before_draft :-
    preparing_draft_implementing_act(_Spec).
presumed_conformity_with_common_specifications(Sys) :-
    high_risk_ai_system(Sys),
    conforms_to_common_specifications(Sys).
presumed_conformity_with_common_specifications(Model) :-
    general_purpose_ai_model(Model),
    conforms_to_common_specifications(Model).
must_repeal_implementing_acts :-
    harmonised_standard_proposed_for_publication(Std),
    reference_published_in_official_journal(Std).
must_justify_non_compliance_with_technical_solutions(Sys) :-
    high_risk_ai_system(Sys),
    \+ conforms_to_common_specifications(Sys).
must_justify_non_compliance_with_technical_solutions(Model) :-
    general_purpose_ai_model(Model),
    \+ conforms_to_common_specifications(Model).
member_state_may_challenge_common_specification :-
    common_specification(Spec),
    \+ entirely_meets_requirements(Spec, requirements_chapter_3_section_2).
member_state_may_challenge_common_specification :-
    common_specification(Spec),
    \+ entirely_meets_requirements(Spec, obligations_chapter_5_section_2).
member_state_may_challenge_common_specification :-
    common_specification(Spec),
    \+ entirely_meets_requirements(Spec, obligations_chapter_5_section_3).
commission_shall_assess_and_amend_if_appropriate :-
    member_state_informed_commission(Spec, _Explanation),
    common_specification(Spec),
    appropriate_to_amend(Spec).
provenance(may_adopt_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(conditions_fulfilled_for_common_specifications/0, 'celex:32024R1689/oj#art_41').
provenance(request_not_accepted/0, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_not_delivered_in_time/0, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_insufficiently_address_fundamental_rights/0, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_do_not_comply_with_request/0, 'celex:32024R1689/oj#art_41').
provenance(no_reference_published_or_expected/0, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/0, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_before_draft/0, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_acts/0, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance_with_technical_solutions/1, 'celex:32024R1689/oj#art_41').
provenance(member_state_may_challenge_common_specification/0, 'celex:32024R1689/oj#art_41').
provenance(commission_shall_assess_and_amend_if_appropriate/0, 'celex:32024R1689/oj#art_41').
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
declared(presumed_conformity_data_requirements/1, 'high-risk AI system presumed to comply with Article 10(4) data requirements', 'celex:32024R1689/oj#art_42').
declared(presumed_conformity_cybersecurity_requirements/1, 'high-risk AI system presumed to comply with Article 15 cybersecurity requirements', 'celex:32024R1689/oj#art_42').
declared(trained_and_tested_on_appropriate_data/1, 'trained and tested on data reflecting intended use setting', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_certificate_or_statement_issued/1, 'cybersecurity certificate or statement of conformity issued under relevant scheme', 'celex:32024R1689/oj#art_42').
declared(certificate_covers_cybersecurity_requirements/1, 'cybersecurity certificate or statement covers Article 15 requirements', 'celex:32024R1689/oj#art_42').
presumed_conformity_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_appropriate_data(S).
trained_and_tested_on_appropriate_data(S) :-
    training_data_information(S),
    testing_data(S),
    data_training_requirement_met(S).
presumed_conformity_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    cybersecurity_certificate_or_statement_issued(S),
    reference_published_in_official_journal(S),
    certificate_covers_cybersecurity_requirements(S).
cybersecurity_certificate_or_statement_issued(S) :-
    statement_of_conformity(S).
provenance(presumed_conformity_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_conformity_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_appropriate_data/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certificate_or_statement_issued/1, 'celex:32024R1689/oj#art_42').
provenance(certificate_covers_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(must_follow_conformity_assessment_procedure/2, 'provider must follow specified conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_procedure_option/2, 'available conformity assessment procedure option for provider', 'celex:32024R1689/oj#art_43').
declared(must_use_annex_7_procedure/1, 'provider must use Annex VII conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_applied/1, 'provider has applied harmonised standards', 'celex:32024R1689/oj#art_43').
declared(common_specifications_applied/1, 'provider has applied common specifications', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_do_not_exist/1, 'harmonised standards do not exist for high-risk AI system', 'celex:32024R1689/oj#art_43').
declared(common_specifications_not_available/1, 'common specifications are not available for high-risk AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_not_fully_applied/1, 'provider has not applied or has applied only part of harmonised standard', 'celex:32024R1689/oj#art_43').
declared(common_specifications_not_applied/1, 'common specifications exist but provider has not applied them', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_with_restriction/1, 'harmonised standard published with restriction', 'celex:32024R1689/oj#art_43').
declared(market_surveillance_authority_as_notified_body/1, 'market surveillance authority shall act as notified body', 'celex:32024R1689/oj#art_43').
declared(intended_for_sensitive_authority/1, 'high-risk AI system intended for law enforcement, immigration, asylum, or Union institutions', 'celex:32024R1689/oj#art_43').
declared(new_conformity_assessment_required/1, 'new conformity assessment required due to substantial modification', 'celex:32024R1689/oj#art_43').
declared(not_substantial_modification/1, 'change does not constitute substantial modification', 'celex:32024R1689/oj#art_43').
declared(predetermined_change/1, 'change was pre-determined by provider at initial conformity assessment', 'celex:32024R1689/oj#art_43').
declared(documented_in_technical_documentation/1, 'change is part of information in technical documentation', 'celex:32024R1689/oj#art_43').
declared(power_to_adopt_delegated_acts_amend_annexes/0, 'Commission empowered to adopt delegated acts to amend Annexes VI and VII', 'celex:32024R1689/oj#art_43').
declared(power_to_adopt_delegated_acts_subject_to_annex_7/0, 'Commission empowered to adopt delegated acts to subject certain systems to Annex VII procedure', 'celex:32024R1689/oj#art_43').
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    (harmonised_standards_applied(S); common_specifications_applied(S)),
    conformity_assessment_procedure_option(S, annex_6).
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    (harmonised_standards_applied(S); common_specifications_applied(S)),
    conformity_assessment_procedure_option(S, annex_7).
must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    harmonised_standards_do_not_exist(S),
    common_specifications_not_available(S).
must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    harmonised_standard_not_fully_applied(S).
must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    common_specifications_not_applied(S).
must_use_annex_7_procedure(S) :-
    high_risk_ai_system(S),
    harmonised_standard_with_restriction(S).
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_use_annex_7_procedure(S),
    conformity_assessment_procedure_option(S, annex_7).
market_surveillance_authority_as_notified_body(S) :-
    high_risk_ai_system(S),
    intended_for_sensitive_authority(S).
intended_for_sensitive_authority(S) :-
    high_risk_ai_system(S),
    law_enforcement_immigration_asylum_authority(S).
intended_for_sensitive_authority(S) :-
    high_risk_ai_system(S),
    union_institution(S).
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    \+ annex_3_point_1_applies(S),
    conformity_assessment_procedure_option(S, annex_6).
must_follow_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    union_harmonisation_legislation(L),
    conformity_assessment_procedure_under_legislation(S, L).
notified_body_may_control_conformity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    notified_under_legislation(B, L),
    union_harmonisation_legislation(L),
    compliance_with_notification_requirements(B).
may_opt_out_third_party_assessment(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    legal_act_allows_opt_out(L),
    union_harmonisation_legislation(L),
    harmonised_standards_cover_all_requirements(S),
    common_specifications_cover_all_requirements(S).
harmonised_standards_cover_all_requirements(S) :-
    high_risk_ai_system(S),
    harmonised_standards_applied(S),
    covers_all_chapter_3_section_2_requirements(S).
common_specifications_cover_all_requirements(S) :-
    high_risk_ai_system(S),
    common_specifications_applied(S),
    covers_all_chapter_3_section_2_requirements(S).
new_conformity_assessment_required(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).
not_substantial_modification(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    predetermined_change(S),
    documented_in_technical_documentation(S).
power_to_adopt_delegated_acts_amend_annexes.
power_to_adopt_delegated_acts_subject_to_annex_7.
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_procedure_option/2, 'celex:32024R1689/oj#art_43').
provenance(must_use_annex_7_procedure/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_applied/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_applied/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_do_not_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_not_available/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_not_fully_applied/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_not_applied/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_as_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_sensitive_authority/1, 'celex:32024R1689/oj#art_43').
provenance(new_conformity_assessment_required/1, 'celex:32024R1689/oj#art_43').
provenance(not_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(predetermined_change/1, 'celex:32024R1689/oj#art_43').
provenance(documented_in_technical_documentation/1, 'celex:32024R1689/oj#art_43').
provenance(power_to_adopt_delegated_acts_amend_annexes/0, 'celex:32024R1689/oj#art_43').
provenance(power_to_adopt_delegated_acts_subject_to_annex_7/0, 'celex:32024R1689/oj#art_43').
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

% ==== celex:32024R1689/oj#art_44 ====
declared(certificate_language_understandable/1, 'certificate drawn up in language easily understood by relevant authorities', 'celex:32024R1689/oj#art_44').
declared(certificate_validity_period/2, 'certificate valid for specified period not exceeding maximum', 'celex:32024R1689/oj#art_44').
declared(certificate_maximum_validity/2, 'maximum validity period for certificate based on annex coverage', 'celex:32024R1689/oj#art_44').
declared(certificate_extension/2, 'certificate validity extended at provider request', 'celex:32024R1689/oj#art_44').
declared(certificate_extension_maximum/2, 'maximum extension period based on annex coverage', 'celex:32024R1689/oj#art_44').
declared(re_assessment_conducted/1, 're-assessment conducted in accordance with applicable conformity assessment procedures', 'celex:32024R1689/oj#art_44').
declared(supplement_valid/1, 'certificate supplement remains valid', 'celex:32024R1689/oj#art_44').
declared(certificate_supplemented/2, 'supplement supplements a certificate', 'celex:32024R1689/oj#art_44').
declared(must_suspend_withdraw_or_restrict_certificate/2, 'notified body must suspend withdraw or restrict certificate', 'celex:32024R1689/oj#art_44').
declared(no_longer_meets_requirements/1, 'AI system no longer meets requirements', 'celex:32024R1689/oj#art_44').
declared(proportionality_applies/1, 'principle of proportionality applies', 'celex:32024R1689/oj#art_44').
declared(corrective_action_ensures_compliance/2, 'corrective action taken by provider ensures compliance within deadline', 'celex:32024R1689/oj#art_44').
declared(appropriate_deadline_set/2, 'appropriate deadline set by notified body', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'notified body must give reasons for decision', 'celex:32024R1689/oj#art_44').
declared(appeal_procedure_available/1, 'appeal procedure against notified body decisions available', 'celex:32024R1689/oj#art_44').
certificate_language_understandable(C) :-
    issued_certificate(C, B),
    notified_body(B),
    established_under_national_law(B),
    drawn_up(C),
    language_easily_understood_by_relevant_authorities(C, B).
certificate_validity_period(C, Period) :-
    issued_certificate(C, _B),
    validity_indicated(C, Period),
    certificate_maximum_validity(C, Max),
    Period =< Max.
certificate_maximum_validity(C, years(5)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_1').
certificate_maximum_validity(C, years(4)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_3').
certificate_extension(C, NewPeriod) :-
    issued_certificate(C, B),
    provider(P),
    extension_requested(P, C),
    re_assessment_conducted(C),
    certificate_extension_maximum(C, Max),
    NewPeriod =< Max.
certificate_extension_maximum(C, years(5)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_1').
certificate_extension_maximum(C, years(4)) :-
    issued_certificate(C, _B),
    certificate_covers_annex(C, 'celex:32024R1689/oj#anx_3').
re_assessment_conducted(C) :-
    issued_certificate(C, _B),
    conformity_assessment_procedure(C).
supplement_valid(S) :-
    certificate_supplement(S),
    certificate_supplemented(S, C),
    certificate_valid(C).
must_suspend_withdraw_or_restrict_certificate(B, C) :-
    notified_body(B),
    issued_certificate(C, B),
    no_longer_meets_requirements(C),
    proportionality_applies(C),
    \+ corrective_action_ensures_compliance(C, _P).
must_suspend_withdraw_or_restrict_certificate(B, C) :-
    notified_body(B),
    issued_certificate(C, B),
    no_longer_meets_requirements(C),
    proportionality_applies(C),
    corrective_action_ensures_compliance(C, P),
    provider(P),
    \+ appropriate_deadline_set(B, C).
corrective_action_ensures_compliance(C, P) :-
    corrective_action(P, C),
    no_longer_meets_requirements(C),
    appropriate_deadline_set(_B, C).
must_give_reasons(B, Decision) :-
    notified_body(B),
    decision_on_certificate(B, Decision).
appeal_procedure_available(B) :-
    notified_body(B).
provenance(certificate_language_understandable/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_maximum_validity/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_maximum/2, 'celex:32024R1689/oj#art_44').
provenance(re_assessment_conducted/1, 'celex:32024R1689/oj#art_44').
provenance(supplement_valid/1, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_withdraw_or_restrict_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_ensures_compliance/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform_notifying_authority/2, 'notified body must inform notifying authority of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_notified_bodies/2, 'notified body must inform other notified bodies of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_provide_conformity_assessment_information/2, 'notified body must provide information on conformity assessment results to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'notified body must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform_notifying_authority(B, issued(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    issued_certificate(B, C).
must_inform_notifying_authority(B, issued(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    approved_quality_management_system(Q).
must_inform_notifying_authority(B, refused(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, refused(C)).
must_inform_notifying_authority(B, restricted(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, restricted(C)).
must_inform_notifying_authority(B, suspended(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, suspended(C)).
must_inform_notifying_authority(B, withdrawn(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, withdrawn(C)).
must_inform_notifying_authority(B, refused(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, refused(Q)).
must_inform_notifying_authority(B, restricted(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, restricted(Q)).
must_inform_notifying_authority(B, suspended(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, suspended(Q)).
must_inform_notifying_authority(B, withdrawn(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, withdrawn(Q)).
must_inform_notifying_authority(B, circumstances_affecting_notification) :-
    notified_body(B),
    circumstances_affecting_notification(B).
must_inform_notifying_authority(B, request_for_information(Authority, conformity_assessment_activity(A))) :-
    notified_body(B),
    market_surveillance_authority(Authority),
    reasoned_request(Authority, B),
    conformity_assessment_activity(A).
must_inform_notifying_authority(B, conformity_assessment_performed(A)) :-
    notified_body(B),
    request(B, notifying_authority),
    conformity_assessment_activity(A),
    within_scope_of_notification(A, B).
must_inform_notifying_authority(B, other_activity_performed(A)) :-
    notified_body(B),
    request(B, notifying_authority),
    activity(A),
    \+ conformity_assessment_activity(A),
    carried_out_by(B, A).
must_inform_other_notified_bodies(B, refused(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, refused(Q)).
must_inform_other_notified_bodies(B, suspended(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, suspended(Q)).
must_inform_other_notified_bodies(B, withdrawn(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, withdrawn(Q)).
must_inform_other_notified_bodies(B, issued(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    approved_quality_management_system(Q),
    request(B, other_notified_body).
must_inform_other_notified_bodies(B, refused(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, refused(C)).
must_inform_other_notified_bodies(B, withdrawn(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, withdrawn(C)).
must_inform_other_notified_bodies(B, suspended(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, suspended(C)).
must_inform_other_notified_bodies(B, restricted(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, restricted(C)).
must_inform_other_notified_bodies(B, issued(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    issued_certificate(B, C),
    request(B, other_notified_body).
must_provide_conformity_assessment_information(B, negative_result(Issue)) :-
    notified_body(B),
    other_notified_body(Other),
    similar_conformity_assessment(B, Other),
    same_types_of_ai_systems(B, Other),
    issue(Issue),
    negative_conformity_assessment_result(B, Issue).
must_provide_conformity_assessment_information(B, positive_result(Issue)) :-
    notified_body(B),
    other_notified_body(Other),
    similar_conformity_assessment(B, Other),
    same_types_of_ai_systems(B, Other),
    issue(Issue),
    positive_conformity_assessment_result(B, Issue),
    request(Other, B).
must_safeguard_confidentiality(B, Information) :-
    notified_body(B),
    obtained_information(B, Information).
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_conformity_assessment_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(may_authorise_derogation/2, 'market surveillance authority may authorise placing on market or putting into service of specific high-risk AI system', 'celex:32024R1689/oj#art_46/par_1').
declared(urgency_situation/1, 'duly justified situation of urgency for exceptional reasons', 'celex:32024R1689/oj#art_46/par_2').
declared(puts_into_service_without_authorisation/2, 'authority puts high-risk AI system into service without prior authorisation', 'celex:32024R1689/oj#art_46/par_2').
declared(must_stop_use_and_discard/2, 'use must be stopped and results discarded', 'celex:32024R1689/oj#art_46/par_2').
declared(authorisation_refused/1, 'authorisation referred to in paragraph 1 is refused', 'celex:32024R1689/oj#art_46/par_2').
declared(authorisation_issued/1, 'authorisation is issued', 'celex:32024R1689/oj#art_46/par_3').
declared(must_inform_commission_and_member_states_of_authorisation/2, 'market surveillance authority shall inform Commission and other Member States of authorisation', 'celex:32024R1689/oj#art_46/par_3').
declared(deemed_justified/1, 'authorisation deemed justified after no objection period', 'celex:32024R1689/oj#art_46/par_4').
declared(objection_raised/1, 'objection raised by Member State or Commission', 'celex:32024R1689/oj#art_46/par_5').
declared(commission_decides/2, 'Commission decides whether authorisation is justified', 'celex:32024R1689/oj#art_46/par_5').
declared(must_withdraw_authorisation/2, 'market surveillance authority shall withdraw authorisation', 'celex:32024R1689/oj#art_46/par_6').
declared(union_harmonisation_legislation_derogation_applies/1, 'only derogations from Union harmonisation legislation apply', 'celex:32024R1689/oj#art_46/par_7').
exceptional_reason(A) :-
    public_security_reason(A).
exceptional_reason(A) :-
    protection_of_life_and_health(A).
exceptional_reason(A) :-
    environmental_protection(A).
exceptional_reason(A) :-
    protection_of_key_industrial_and_infrastructural_assets(A).
public_security_reason(public_security).
protection_of_life_and_health(protection_of_life_and_health).
environmental_protection(environmental_protection).
protection_of_key_industrial_and_infrastructural_assets(protection_of_key_industrial_and_infrastructural_assets).
urgency_situation(S) :-
    high_risk_ai_system(S),
    exceptional_reason(public_security),
    duly_justified(S).
urgency_situation(S) :-
    high_risk_ai_system(S),
    specific_substantial_imminent_threat_to_life_or_physical_safety(S).
specific_substantial_imminent_threat_to_life_or_physical_safety(S) :-
    high_risk_ai_system(S),
    threat_to_life_or_physical_safety(S),
    specific_threat(S),
    substantial_threat(S),
    imminent_threat(S).
may_authorise_derogation(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    duly_justified_request(S),
    exceptional_reason(_R),
    placing_on_market_or_putting_into_service(S).
puts_into_service_without_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    urgency_situation(S),
    high_risk_ai_system(S),
    puts_into_service(Authority, S).
puts_into_service_without_authorisation(Authority, S) :-
    civil_protection_authority(Authority),
    urgency_situation(S),
    high_risk_ai_system(S),
    puts_into_service(Authority, S).
must_request_authorisation_without_undue_delay(Authority, S) :-
    puts_into_service_without_authorisation(Authority, S).
must_stop_use_and_discard(Authority, S) :-
    puts_into_service_without_authorisation(Authority, S),
    authorisation_refused(S).
authorisation_issued(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(Authority),
    concludes_compliance_with_chapter_3_section_2(Authority, S),
    may_authorise_derogation(Authority, S).
concludes_compliance_with_chapter_3_section_2(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).
must_inform_commission_and_member_states_of_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    authorisation_issued(S),
    \+ covers_sensitive_operational_data_law_enforcement(S).
must_inform_commission_and_member_states_of_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    puts_into_service_without_authorisation(Authority, S),
    \+ covers_sensitive_operational_data_law_enforcement(S).
deemed_justified(S) :-
    authorisation_issued(S),
    \+ objection_raised(S),
    within_15_calendar_days_of_receipt(_Info).
objection_raised(S) :-
    member_state_objection(S).
objection_raised(S) :-
    commission_objection(S).
commission_decides(justified, S) :-
    objection_raised(S),
    commission_consults_relevant_member_state(S),
    operators_consulted_and_presented_views(S),
    commission_considers_authorisation_justified(S).
commission_decides(unjustified, S) :-
    objection_raised(S),
    commission_consults_relevant_member_state(S),
    operators_consulted_and_presented_views(S),
    commission_considers_authorisation_unjustified(S).
must_withdraw_authorisation(Authority, S) :-
    market_surveillance_authority(Authority),
    commission_decides(unjustified, S),
    authorisation_issued(S).
union_harmonisation_legislation_derogation_applies(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S).
provenance(may_authorise_derogation/2, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(puts_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_issued/1, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states_of_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_46').
provenance(commission_decides/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(union_harmonisation_legislation_derogation_applies/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(public_security_reason/1, 'celex:32024R1689/oj#art_46').
provenance(protection_of_life_and_health/1, 'celex:32024R1689/oj#art_46').
provenance(environmental_protection/1, 'celex:32024R1689/oj#art_46').
provenance(protection_of_key_industrial_and_infrastructural_assets/1, 'celex:32024R1689/oj#art_46').
provenance(specific_substantial_imminent_threat_to_life_or_physical_safety/1, 'celex:32024R1689/oj#art_46').
provenance(concludes_compliance_with_chapter_3_section_2/2, 'celex:32024R1689/oj#art_46').
provenance(member_state_objection/1, 'celex:32024R1689/oj#art_46').
provenance(commission_considers_authorisation_justified/1, 'celex:32024R1689/oj#art_46').
provenance(commission_considers_authorisation_unjustified/1, 'celex:32024R1689/oj#art_46').
provenance(commission_consults_relevant_member_state/1, 'celex:32024R1689/oj#art_46').
provenance(operators_consulted_and_presented_views/1, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_46').
provenance(duly_justified_request/1, 'celex:32024R1689/oj#art_46').
provenance(threat_to_life_or_physical_safety/1, 'celex:32024R1689/oj#art_46').
provenance(specific_threat/1, 'celex:32024R1689/oj#art_46').
provenance(substantial_threat/1, 'celex:32024R1689/oj#art_46').
provenance(imminent_threat/1, 'celex:32024R1689/oj#art_46').
provenance(covers_sensitive_operational_data_law_enforcement/1, 'celex:32024R1689/oj#art_46').
provenance(civil_protection_authority/1, 'celex:32024R1689/oj#art_46').
provenance(puts_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(within_15_calendar_days_of_receipt/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_of_conformity/2, 'provider must keep EU declaration of conformity at disposal of national competent authorities', 'celex:32024R1689/oj#art_47').
declared(declaration_of_conformity_identifies_system/2, 'EU declaration of conformity identifies the high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_submit_declaration_on_request/2, 'provider must submit copy of EU declaration of conformity to national competent authorities upon request', 'celex:32024R1689/oj#art_47').
declared(declaration_states_compliance_with_chapter_3_section_2/1, 'EU declaration of conformity states high-risk AI system meets Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_47').
declared(declaration_contains_annex_5_information/1, 'EU declaration of conformity contains information set out in Annex V', 'celex:32024R1689/oj#art_47').
declared(declaration_translated_for_member_states/1, 'EU declaration of conformity translated into language understood by national competent authorities of Member States where system is placed on market or made available', 'celex:32024R1689/oj#art_47').
declared(single_declaration_for_multiple_legislation/1, 'single EU declaration of conformity drawn up for high-risk AI system subject to other Union harmonisation legislation also requiring declaration', 'celex:32024R1689/oj#art_47').
declared(declaration_contains_harmonisation_legislation_identification/1, 'EU declaration of conformity contains information to identify applicable Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(provider_assumes_responsibility_for_compliance/2, 'provider assumes responsibility for compliance with Chapter III Section 2 requirements by drawing up declaration', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_up_to_date/2, 'provider must keep EU declaration of conformity up-to-date as appropriate', 'celex:32024R1689/oj#art_47').
declared(commission_empowered_to_amend_annex_5/0, 'Commission empowered to adopt delegated acts to amend Annex V updating declaration content', 'celex:32024R1689/oj#art_47').
must_draw_up_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)),
    retention_period(years(10), after(S)).
declaration_of_conformity_identifies_system(S, Declaration) :-
    eu_declaration_of_conformity(Declaration),
    high_risk_ai_system(S).
must_submit_declaration_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, S).
declaration_states_compliance_with_chapter_3_section_2(S) :-
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).
declaration_contains_annex_5_information(S) :-
    high_risk_ai_system(S).
declaration_translated_for_member_states(S) :-
    high_risk_ai_system(S),
    (placing_on_market(S); making_available_on_market(S)).
single_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    union_harmonisation_legislation(L1),
    union_harmonisation_legislation(L2),
    L1 \= L2.
declaration_contains_harmonisation_legislation_identification(S) :-
    single_declaration_for_multiple_legislation(S).
provider_assumes_responsibility_for_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S).
must_keep_declaration_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S).
commission_empowered_to_amend_annex_5 :-
    power_to_adopt_delegated_acts(commission).
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_of_conformity_identifies_system/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_declaration_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_states_compliance_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_annex_5_information/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_translated_for_member_states/1, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_harmonisation_legislation_identification/1, 'celex:32024R1689/oj#art_47').
provenance(provider_assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_5/0, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(ce_marking_applies/1, 'CE marking applies to high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking/1, 'digital CE marking for digitally provided high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_visibly_legibly_indelibly/1, 'CE marking affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_to_packaging_or_documentation/1, 'CE marking affixed to packaging or accompanying documentation', 'celex:32024R1689/oj#art_48').
declared(identification_number_of_notified_body/2, 'identification number of notified body responsible for conformity assessment', 'celex:32024R1689/oj#art_48').
declared(ce_marking_with_identification_number/2, 'CE marking followed by identification number of notified body', 'celex:32024R1689/oj#art_48').
declared(affixed_by_or_under_instructions/3, 'identification number affixed by body itself or under its instructions by provider or authorised representative', 'celex:32024R1689/oj#art_48').
declared(identification_number_in_promotional_material/2, 'identification number indicated in promotional material mentioning CE marking requirements fulfilled', 'celex:32024R1689/oj#art_48').
declared(ce_marking_indicates_other_union_law_requirements/2, 'CE marking indicates high-risk AI system fulfils requirements of other Union law', 'celex:32024R1689/oj#art_48').
ce_marking_applies(S) :-
    high_risk_ai_system(S).
digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_interface(S).
easily_accessible_via_interface(S) :-
    digital_ce_marking(S).
easily_accessible_via_interface(S) :-
    machine_readable_code_accessible(S).
easily_accessible_via_interface(S) :-
    other_electronic_means_accessible(S).
ce_marking_affixed_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixed_to_packaging_or_documentation(S).
ce_marking_affixed_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    not_possible_or_not_warranted(S).
not_possible_or_not_warranted(S) :-
    nature_of_system_precludes_ce_marking(S).
ce_marking_with_identification_number(S, B) :-
    high_risk_ai_system(S),
    notified_body_for_assessment(B, S),
    identification_number_of_notified_body(B, S).
affixed_by_or_under_instructions(B, S, B) :-
    ce_marking_with_identification_number(S, B),
    notified_body(B).
affixed_by_or_under_instructions(B, S, P) :-
    ce_marking_with_identification_number(S, B),
    provider(P),
    under_instructions(B, P).
affixed_by_or_under_instructions(B, S, R) :-
    ce_marking_with_identification_number(S, B),
    authorised_representative(R),
    under_instructions(B, R).
identification_number_in_promotional_material(B, S) :-
    ce_marking_with_identification_number(S, B),
    promotional_material_mentions_ce_marking_fulfilled(S).
promotional_material_mentions_ce_marking_fulfilled(S) :-
    high_risk_ai_system(S).
ce_marking_indicates_other_union_law_requirements(S, L) :-
    high_risk_ai_system(S),
    subject_to_other_union_law(S, L),
    other_union_law_provides_ce_marking(L).
provenance(ce_marking_applies/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_with_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(affixed_by_or_under_instructions/3, 'celex:32024R1689/oj#art_48').
provenance(identification_number_in_promotional_material/2, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_union_law_requirements/2, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(must_register_information/2, 'provider or deployer must submit and keep up to date specified information upon registration', 'celex:32024R1689/oj#art_49').
must_register_information(Provider, registration(System, eu_database)) :-
    provider(Provider),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Representative, registration(System, eu_database)) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Provider, registration(System, eu_database)) :-
    provider(Provider),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Representative, registration(System, eu_database)) :-
    authorised_representative(Representative),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Deployer, registration_use(System, eu_database)) :-
    deployer(Deployer),
    deployer_public_authority(Deployer),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Deployer, registration_use(System, eu_database)) :-
    deployer(Deployer),
    union_institution(Deployer),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Deployer, registration_use(System, eu_database)) :-
    deployer(Deployer),
    acting_on_behalf_of(Deployer, Authority),
    (deployer_public_authority(Authority); union_institution(Authority)),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).
must_register_information(Party, registration_restricted(System, eu_database, secure_section)) :-
    (provider(Party); authorised_representative(Party); deployer(Party)),
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System); annex_3_point_6_applies(System); annex_3_point_7_applies(System)),
    law_enforcement_migration_asylum_border_control_area(System),
    (must_register_information(Party, registration(System, eu_database)); must_register_information(Party, registration_use(System, eu_database))).
only_authorised_persons_access(secure_section(eu_database, System)) :-
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System); annex_3_point_6_applies(System); annex_3_point_7_applies(System)),
    law_enforcement_migration_asylum_border_control_area(System).
must_register_information(Party, registration(System, national_register)) :-
    (provider(Party); authorised_representative(Party)),
    high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).
provenance(must_register_information/2, 'celex:32024R1689/oj#art_49').
provenance(only_authorised_persons_access/1, 'celex:32024R1689/oj#art_49').
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
declared(must_ensure_interaction_disclosure/2, 'provider must ensure natural persons are informed they interact with an AI system', 'celex:32024R1689/oj#art_50/par_1').
declared(obvious_from_context/1, 'interaction with AI system is obvious to reasonably well-informed observant and circumspect natural person', 'celex:32024R1689/oj#art_50/par_1').
declared(authorised_for_criminal_offence_detection/1, 'AI system authorised by law to detect prevent investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50/par_1').
declared(available_for_public_crime_reporting/1, 'AI system available for public to report criminal offence', 'celex:32024R1689/oj#art_50/par_1').
declared(must_ensure_output_marking/2, 'provider must ensure AI system outputs are marked as artificially generated or manipulated', 'celex:32024R1689/oj#art_50/par_2').
declared(synthetic_content/1, 'AI system generates synthetic audio image video or text content', 'celex:32024R1689/oj#art_50/par_2').
declared(assistive_standard_editing/1, 'AI system performs assistive function for standard editing', 'celex:32024R1689/oj#art_50/par_2').
declared(does_not_substantially_alter_input/1, 'AI system does not substantially alter input data or semantics', 'celex:32024R1689/oj#art_50/par_2').
declared(must_inform_of_system_operation/2, 'deployer must inform natural persons exposed of system operation', 'celex:32024R1689/oj#art_50/par_3').
declared(must_disclose_deep_fake/2, 'deployer must disclose content has been artificially generated or manipulated', 'celex:32024R1689/oj#art_50/par_4').
declared(deep_fake_content/1, 'AI system generates or manipulates image audio or video content constituting deep fake', 'celex:32024R1689/oj#art_50/par_4').
declared(artistic_creative_satirical_fictional_work/1, 'content forms part of evidently artistic creative satirical fictional or analogous work or programme', 'celex:32024R1689/oj#art_50/par_4').
declared(must_disclose_ai_generated_text/2, 'deployer must disclose text has been artificially generated or manipulated', 'celex:32024R1689/oj#art_50/par_4').
declared(public_interest_text/1, 'text published with purpose of informing public on matters of public interest', 'celex:32024R1689/oj#art_50/par_4').
declared(human_review_editorial_control/1, 'AI-generated content underwent human review or editorial control', 'celex:32024R1689/oj#art_50/par_4').
declared(editorial_responsibility/2, 'natural or legal person holds editorial responsibility for publication', 'celex:32024R1689/oj#art_50/par_4').
declared(must_provide_information_clearly/2, 'information must be provided clearly and distinguishably at latest at first interaction or exposure', 'celex:32024R1689/oj#art_50/par_5').
declared(conforms_accessibility_requirements/1, 'information conforms to applicable accessibility requirements', 'celex:32024R1689/oj#art_50/par_5').
declared(transparency_obligations/1, 'transparency obligations under Article 50 apply', 'celex:32024R1689/oj#art_50').
declared(must_encourage_codes_of_practice/2, 'AI Office shall encourage and facilitate drawing up codes of practice', 'celex:32024R1689/oj#art_50/par_7').
declared(may_adopt_implementing_act_approval/2, 'Commission may adopt implementing act to approve code of practice', 'celex:32024R1689/oj#art_50/par_7').
declared(may_adopt_implementing_act_common_rules/2, 'Commission may adopt implementing act specifying common rules', 'celex:32024R1689/oj#art_50/par_7').
declared(code_inadequate/1, 'Commission deems code of practice not adequate', 'celex:32024R1689/oj#art_50/par_7').
must_ensure_interaction_disclosure(P, S) :-
    provider(P),
    ai_system(S),
    intended_to_interact_with_natural_persons(S),
    \+ obvious_from_context(S),
    \+ authorised_for_criminal_offence_detection(S),
    \+ available_for_public_crime_reporting(S).
must_ensure_interaction_disclosure(P, S) :-
    provider(P),
    ai_system(S),
    intended_to_interact_with_natural_persons(S),
    \+ obvious_from_context(S),
    authorised_for_criminal_offence_detection(S),
    appropriate_safeguards(S),
    \+ available_for_public_crime_reporting(S).
must_ensure_output_marking(P, S) :-
    provider(P),
    ai_system(S),
    synthetic_content(S),
    \+ assistive_standard_editing(S),
    \+ does_not_substantially_alter_input(S),
    \+ authorised_for_criminal_offence_detection(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ authorised_for_criminal_offence_detection(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ authorised_for_criminal_offence_detection(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    authorised_for_criminal_offence_detection(S),
    appropriate_safeguards(S).
must_inform_of_system_operation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    authorised_for_criminal_offence_detection(S),
    appropriate_safeguards(S).
must_disclose_deep_fake(D, S) :-
    deployer(D),
    deep_fake_content(S),
    \+ authorised_for_criminal_offence_detection(S),
    \+ artistic_creative_satirical_fictional_work(S).
must_disclose_deep_fake(D, S) :-
    deployer(D),
    deep_fake_content(S),
    \+ authorised_for_criminal_offence_detection(S),
    artistic_creative_satirical_fictional_work(S).
must_disclose_ai_generated_text(D, S) :-
    deployer(D),
    ai_system(S),
    synthetic_text(S),
    public_interest_text(S),
    \+ authorised_for_criminal_offence_detection(S),
    \+ human_review_editorial_control(S).
must_disclose_ai_generated_text(D, S) :-
    deployer(D),
    ai_system(S),
    synthetic_text(S),
    public_interest_text(S),
    \+ authorised_for_criminal_offence_detection(S),
    human_review_editorial_control(S),
    \+ editorial_responsibility(_Person, S).
must_provide_information_clearly(_ProviderOrDeployer, S) :-
    transparency_obligations(S).
conforms_accessibility_requirements(S) :-
    transparency_obligations(S).
must_encourage_codes_of_practice(Office, detection_labelling_obligations) :-
    ai_office(Office).
may_adopt_implementing_act_approval(Commission, Code) :-
    commission(Commission),
    code_of_practice(Code),
    detection_labelling_obligations(Code).
may_adopt_implementing_act_common_rules(Commission, detection_labelling_obligations) :-
    commission(Commission),
    code_of_practice(Code),
    detection_labelling_obligations(Code),
    code_inadequate(Code).
provenance(must_ensure_interaction_disclosure/2, 'celex:32024R1689/oj#art_50/par_1').
provenance(obvious_from_context/1, 'celex:32024R1689/oj#art_50/par_1').
provenance(authorised_for_criminal_offence_detection/1, 'celex:32024R1689/oj#art_50/par_1').
provenance(available_for_public_crime_reporting/1, 'celex:32024R1689/oj#art_50/par_1').
provenance(must_ensure_output_marking/2, 'celex:32024R1689/oj#art_50/par_2').
provenance(synthetic_content/1, 'celex:32024R1689/oj#art_50/par_2').
provenance(assistive_standard_editing/1, 'celex:32024R1689/oj#art_50/par_2').
provenance(does_not_substantially_alter_input/1, 'celex:32024R1689/oj#art_50/par_2').
provenance(must_inform_of_system_operation/2, 'celex:32024R1689/oj#art_50/par_3').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(deep_fake_content/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(artistic_creative_satirical_fictional_work/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_disclose_ai_generated_text/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(public_interest_text/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(human_review_editorial_control/1, 'celex:32024R1689/oj#art_50/par_4').
provenance(editorial_responsibility/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_provide_information_clearly/2, 'celex:32024R1689/oj#art_50/par_5').
provenance(conforms_accessibility_requirements/1, 'celex:32024R1689/oj#art_50/par_5').
provenance(transparency_obligations/1, 'celex:32024R1689/oj#art_50').
provenance(must_encourage_codes_of_practice/2, 'celex:32024R1689/oj#art_50/par_7').
provenance(may_adopt_implementing_act_approval/2, 'celex:32024R1689/oj#art_50/par_7').
provenance(may_adopt_implementing_act_common_rules/2, 'celex:32024R1689/oj#art_50/par_7').
provenance(code_inadequate/1, 'celex:32024R1689/oj#art_50/par_7').
references('celex:32024R1689/oj#art_50/par_3', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50/par_3', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50/par_3', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50/par_4', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50/par_5', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50/par_6', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50/par_7', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50/par_7', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_51 ====
declared(systemic_risk_model/1, 'general-purpose AI model classified as having systemic risk', 'celex:32024R1689/oj#art_51').
declared(high_impact_capabilities_evaluated/1, 'high impact capabilities evaluated using appropriate technical tools and methodologies', 'celex:32024R1689/oj#art_51').
declared(commission_decision_systemic_risk/1, 'Commission decision classifying model as systemic risk', 'celex:32024R1689/oj#art_51').
declared(qualified_alert_scientific_panel/1, 'qualified alert from the scientific panel', 'celex:32024R1689/oj#art_51').
declared(capabilities_equivalent_to_high_impact/1, 'capabilities or impact equivalent to high impact capabilities', 'celex:32024R1689/art_51').
declared(training_computation_exceeds_threshold/1, 'cumulative training computation exceeds 10^25 FLOPs', 'celex:32024R1689/oj#art_51').
declared(must_adapt_thresholds/2, 'Commission shall adopt delegated acts to amend thresholds', 'celex:32024R1689/oj#art_51').
systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).
systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    commission_decision_systemic_risk(M).
high_impact_capabilities_evaluated(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    evaluated_with_appropriate_tools(M).
commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decides(systemic_risk(M), justified),
    qualified_alert_scientific_panel(Alert),
    capabilities_equivalent_to_high_impact(M),
    criteria_annex_13_applies(M).
commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decides(systemic_risk(M), justified),
    \+ qualified_alert_scientific_panel(_),
    capabilities_equivalent_to_high_impact(M),
    criteria_annex_13_applies(M).
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_exceeds_threshold(M).
training_computation_exceeds_threshold(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(F),
    training_computation(M, F),
    cumulative_amount(F, Amount),
    Amount > 1025.
must_adapt_thresholds(commission, thresholds(art_51)) :-
    necessary_to_reflect_state_of_the_art.
must_adapt_thresholds(commission, benchmarks_and_indicators(art_51)) :-
    necessary_to_reflect_state_of_the_art.
provenance(systemic_risk_model/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(training_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
provenance(must_adapt_thresholds/2, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(must_notify_commission/2, 'provider must notify Commission within two weeks of meeting systemic risk threshold', 'celex:32024R1689/oj#art_52').
declared(may_designate_systemic_risk/2, 'Commission may designate general-purpose AI model as presenting systemic risk', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments/2, 'provider may present arguments against systemic risk classification', 'celex:32024R1689/oj#art_52').
declared(shall_reject_arguments/2, 'Commission shall reject insufficiently substantiated arguments', 'celex:32024R1689/oj#art_52').
declared(may_reassess_systemic_risk/2, 'Commission may reassess systemic risk designation upon provider request', 'celex:32024R1689/oj#art_52').
declared(must_publish_systemic_risk_list/1, 'Commission shall publish and keep up to date list of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_52').
must_notify_commission(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    \+ notified_commission(P, M).
may_designate_systemic_risk(commission, M) :-
    general_purpose_ai_model(M),
    systemic_risk_present(M),
    \+ notified_commission(_P, M).
may_present_arguments(P, arguments_against_systemic_risk(M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    notified_commission(P, M).
shall_reject_arguments(commission, arguments_against_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    arguments_submitted(P, arguments_against_systemic_risk(M)),
    \+ sufficiently_substantiated(arguments_against_systemic_risk(M)),
    \+ demonstrated_no_systemic_risk(P, M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    arguments_submitted(P, arguments_against_systemic_risk(M)),
    shall_reject_arguments(commission, arguments_against_systemic_risk(M)).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    may_designate_systemic_risk(commission, M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    qualified_alert(_A),
    commission_designated(M, systemic_risk).
may_reassess_systemic_risk(commission, reassessment_request(P, M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    reasoned_request(P, reassessment_request(P, M)),
    objective_detailed_new_reasons(reassessment_request(P, M)),
    earliest_six_months_after_designation(M).
must_take_into_account(commission, reassessment_request(P, M)) :-
    may_reassess_systemic_risk(commission, reassessment_request(P, M)).
may_reassess_systemic_risk(commission, reassessment_request(P, M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    reasoned_request(P, reassessment_request(P, M)),
    objective_detailed_new_reasons(reassessment_request(P, M)),
    earliest_six_months_after_maintained_designation(M).
must_publish_systemic_risk_list(commission).
must_keep_list_up_to_date(commission, list(general_purpose_ai_model_with_systemic_risk)).
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(shall_reject_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_reassess_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_systemic_risk_list/1, 'celex:32024R1689/oj#art_52').
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up and keep up-to-date technical documentation', 'celex:32024R1689/oj#art_53').
declared(must_provide_technical_documentation/3, 'provider must provide technical documentation upon request to authorities', 'celex:32024R1689/oj#art_53').
declared(must_draw_up_integration_documentation/2, 'provider must draw up, keep up-to-date and make available documentation for downstream providers', 'celex:32024R1689/oj#art_53').
declared(must_put_copyright_policy/1, 'provider must put in place policy to comply with copyright law', 'celex:32024R1689/oj#art_53').
declared(must_draw_up_training_summary/2, 'provider must draw up and make publicly available summary about training content', 'celex:32024R1689/oj#art_53').
declared(exempt_free_open_source_model/1, 'free and open-source model exempt from obligations in paragraphs 1(a) and 1(b)', 'celex:32024R1689/oj#art_53').
declared(exempt_from_art_53_1_a/1, 'model exempt from technical documentation obligation', 'celex:32024R1689/oj#art_53').
declared(exempt_from_art_53_1_b/1, 'model exempt from integration documentation obligation', 'celex:32024R1689/oj#art_53').
declared(must_cooperate_with_authorities/2, 'provider must cooperate with Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(may_rely_on_code_of_practice/2, 'provider may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(must_demonstrate_alternative_compliance/2, 'provider must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_53').
declared(power_to_adopt_delegated_acts_measurement/1, 'Commission empowered to adopt delegated acts on measurement methodologies', 'celex:32024R1689/oj#art_53').
declared(power_to_adopt_delegated_acts_amend_annexes/1, 'Commission empowered to adopt delegated acts to amend Annexes 11 and 12', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ exempt_from_art_53_1_a(M).
must_provide_technical_documentation(P, M, Requester) :-
    must_draw_up_technical_documentation(P, M),
    (ai_office(Requester) ; national_competent_authority(Requester)).
must_draw_up_integration_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ exempt_from_art_53_1_b(M).
must_put_copyright_policy(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_draw_up_training_summary(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
exempt_free_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk_present(M).
exempt_from_art_53_1_a(M) :-
    exempt_free_open_source_model(M).
exempt_from_art_53_1_b(M) :-
    exempt_free_open_source_model(M).
must_cooperate_with_authorities(P, Authority) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    (commission(Authority) ; national_competent_authority(Authority)).
may_rely_on_code_of_practice(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ harmonised_standard_published_for(M).
must_demonstrate_alternative_compliance(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ may_rely_on_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).
power_to_adopt_delegated_acts_measurement(commission) :-
    true.
power_to_adopt_delegated_acts_amend_annexes(commission) :-
    true.
declared(parameters_publicly_available/1, 'model parameters including weights, architecture and usage information are made publicly available', 'celex:32024R1689/oj#art_53').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_53').
declared(harmonised_standard_published_for/1, 'harmonised standard published covering the obligations', 'celex:32024R1689/oj#art_53').
declared(complies_with_harmonised_standard/2, 'provider complies with harmonised standard for model', 'celex:32024R1689/oj#art_53').
parameters_publicly_available(M) :-
    general_purpose_ai_model(M).
commission(commission).
harmonised_standard_published_for(M) :-
    general_purpose_ai_model(M).
complies_with_harmonised_standard(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_technical_documentation/3, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_integration_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_free_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_art_53_1_a/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_art_53_1_b/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(power_to_adopt_delegated_acts_measurement/1, 'celex:32024R1689/oj#art_53').
provenance(power_to_adopt_delegated_acts_amend_annexes/1, 'celex:32024R1689/oj#art_53').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_53').
provenance(commission/1, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published_for/1, 'celex:32024R1689/oj#art_53').
provenance(complies_with_harmonised_standard/2, 'celex:32024R1689/oj#art_53').
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

% ==== celex:32024R1689/oj#art_54 ====
declared(must_appoint_authorised_representative/2, 'provider established in third country must appoint authorised representative in Union before placing general-purpose AI model on market', 'celex:32024R1689/oj#art_54').
declared(must_enable_tasks/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform_tasks/2, 'authorised representative must perform tasks specified in mandate', 'celex:32024R1689/oj#art_54').
declared(must_provide_mandate_copy/2, 'authorised representative must provide copy of mandate to AI Office upon request', 'celex:32024R1689/oj#art_54').
declared(must_verify_technical_documentation/2, 'authorised representative must verify technical documentation drawn up and obligations fulfilled', 'celex:32024R1689/oj#art_54').
declared(must_keep_technical_documentation/2, 'authorised representative must keep copy of technical documentation for 10 years', 'celex:32024R1689/oj#art_54').
declared(must_provide_information/2, 'authorised representative must provide information and documentation upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(must_cooperate_with_authorities/2, 'authorised representative must cooperate with AI Office and competent authorities upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_addressed/1, 'mandate empowers authorised representative to be addressed by AI Office or competent authorities', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform_termination/2, 'authorised representative must inform AI Office of termination and reasons', 'celex:32024R1689/oj#art_54').
declared(exempt_free_open_source/1, 'general-purpose AI model released under free and open-source licence with publicly available parameters exempt from authorised representative obligation', 'celex:32024R1689/oj#art_54').
established_in_third_country(P) :-
    provider(P),
    \+ established_in_union(P).
general_purpose_ai_model_provider(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
must_appoint_authorised_representative(P, R) :-
    general_purpose_ai_model_provider(P, M),
    established_in_third_country(P),
    \+ exempt_free_open_source(M),
    before_placing_on_market(M),
    authorised_representative(R),
    established_in_union(R).
must_enable_tasks(P, R) :-
    general_purpose_ai_model_provider(P, M),
    authorised_representative(R),
    \+ exempt_free_open_source(M).
must_perform_tasks(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M).
must_provide_mandate_copy(R, ai_office) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M).
must_verify_technical_documentation(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    technical_documentation(M),
    drawn_up(M).
must_keep_technical_documentation(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    technical_documentation(M),
    retention_period(years(10), after(placing_on_market(M))).
must_provide_information(R, information_and_documentation(M)) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    reasoned_request(_, M).
must_cooperate_with_authorities(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M),
    reasoned_request(_, M).
mandate_empowers_addressed(R) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    \+ exempt_free_open_source(M).
must_terminate_mandate(R, P) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P, M),
    \+ exempt_free_open_source(M),
    acts_contrary_to_obligations(P).
must_inform_termination(R, ai_office) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P, M),
    \+ exempt_free_open_source(M),
    acts_contrary_to_obligations(P).
exempt_free_open_source(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    publicly_available(parameters(M)),
    \+ systemic_risk_present(M).
acts_contrary_to_obligations(P) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ meets_requirements(P, M).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressed/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_free_open_source/1, 'celex:32024R1689/oj#art_54').
provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_54').
provenance(general_purpose_ai_model_provider/2, 'celex:32024R1689/oj#art_54').
provenance(acts_contrary_to_obligations/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_perform_model_evaluation/1, 'provider must perform model evaluation for systemic risk', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risks/1, 'provider must assess and mitigate systemic risks at Union level', 'celex:32024R1689/oj#art_55').
declared(must_report_serious_incidents/1, 'provider must report serious incidents and corrective measures', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity_protection/1, 'provider must ensure adequate cybersecurity protection', 'celex:32024R1689/oj#art_55').
declared(may_rely_on_code_of_practice/1, 'provider may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/1, 'provider must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
declared(harmonised_standard_published/0, 'harmonised standard has been published', 'celex:32024R1689/oj#art_55').
declared(approved_code_of_practice_adhered_to/1, 'provider adheres to approved code of practice', 'celex:32024R1689/oj#art_55').
declared(harmonised_standard_complied_with/1, 'provider complies with European harmonised standard', 'celex:32024R1689/oj#art_55').
declared(confidentiality_obligations_apply/0, 'confidentiality obligations apply to information obtained', 'celex:32024R1689/oj#art_55').
must_perform_model_evaluation(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    model_evaluation_protocols_reflect_state_of_the_art.
must_assess_and_mitigate_systemic_risks(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M).
must_report_serious_incidents(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    serious_incident(I),
    incident_related_to_model(I, M),
    corrective_measure_for_incident(C, I).
must_ensure_cybersecurity_protection(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M).
may_rely_on_code_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    \+ harmonised_standard_published,
    code_of_practice(C),
    approved_code_of_practice(C).
must_demonstrate_alternative_compliance(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    \+ approved_code_of_practice_adhered_to(P),
    \+ harmonised_standard_complied_with(P).
harmonised_standard_complied_with(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    harmonised_standard_published,
    harmonised_standard(S),
    covers_obligations_art_55_par_1(S).
presumption_of_conformity(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    harmonised_standard_complied_with(P).
confidentiality_obligations_apply :-
    information_obtained_under_art_55(_I).
provenance(must_perform_model_evaluation/1, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/1, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents/1, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/1, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_published/0, 'celex:32024R1689/oj#art_55').
provenance(approved_code_of_practice_adhered_to/1, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_complied_with/1, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/1, 'celex:32024R1689/oj#art_55').
provenance(confidentiality_obligations_apply/0, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(must_encourage_and_facilitate_codes_of_practice/2, 'AI Office shall encourage and facilitate drawing up of codes of practice', 'celex:32024R1689/oj#art_56/par_1').
declared(codes_of_practice_cover_obligations/1, 'codes of practice cover obligations in Articles 53 and 55', 'celex:32024R1689/oj#art_56/par_2').
declared(may_invite_participation/2, 'AI Office may invite participation in drawing-up codes of practice', 'celex:32024R1689/oj#art_56/par_3').
declared(stakeholders_may_support_codes_of_practice/1, 'stakeholders may support codes of practice process', 'celex:32024R1689/art_56/par_3').
declared(codes_of_practice_set_objectives/1, 'codes of practice clearly set out specific objectives with commitments and KPIs', 'celex:32024R1689/oj#art_56/par_4').
declared(participants_report_implementation/1, 'participants report regularly on implementation of commitments', 'celex:32024R1689/oj#art_56/par_5').
declared(monitor_evaluate_codes_of_practice/1, 'AI Office and Board monitor and evaluate codes of practice', 'celex:32024R1689/oj#art_56/par_6').
declared(may_approve_code_of_practice/1, 'Commission may approve code of practice by implementing act', 'celex:32024R1689/oj#art_56/par_6').
declared(may_invite_adherence/2, 'AI Office may invite providers to adhere to codes of practice', 'celex:32024R1689/oj#art_56/par_7').
declared(limited_adherence_for_non_systemic_risk_providers/1, 'non-systemic risk providers may adhere only to Article 53 obligations', 'celex:32024R1689/oj#art_56/par_7').
declared(must_encourage_review_adaptation/2, 'AI Office shall encourage and facilitate review and adaptation of codes of practice', 'celex:32024R1689/oj#art_56/par_8').
declared(codes_of_practice_deadline/1, 'codes of practice shall be ready by 2 May 2025', 'celex:32024R1689/oj#art_56/par_9').
declared(may_provide_common_rules/1, 'Commission may provide common rules by implementing acts if code inadequate', 'celex:32024R1689/oj#art_56/par_9').
must_encourage_and_facilitate_codes_of_practice(AI_Office, Code) :-
    ai_office(AI_Office),
    codes_of_practice(Code),
    contributes_to_proper_application(Code).
codes_of_practice_cover_obligations(Code) :-
    codes_of_practice(Code),
    covers_article_53_obligations(Code),
    covers_article_55_obligations(Code),
    ensures_information_kept_up_to_date(Code),
    adequate_training_summary_detail(Code),
    identifies_systemic_risks_union_level(Code),
    measures_for_systemic_risk_assessment_management(Code).
may_invite_participation(AI_Office, Provider) :-
    ai_office(AI_Office),
    general_purpose_ai_model_provider(Provider).
may_invite_participation(AI_Office, Authority) :-
    ai_office(AI_Office),
    national_competent_authority(Authority).
stakeholders_may_support_codes_of_practice(Code) :-
    codes_of_practice(Code).
codes_of_practice_set_objectives(Code) :-
    codes_of_practice(Code),
    specific_objectives(Code),
    commitments_or_measures(Code),
    key_performance_indicators(Code),
    due_account_of_needs_and_interests(Code).
participants_report_implementation(Participant) :-
    participant_codes_of_practice(Participant),
    reports_regularly(Participant, AI_Office),
    implementation_commitments(Participant),
    measures_taken(Participant),
    outcomes(Participant),
    measured_against_kpis(Participant).
monitor_evaluate_codes_of_practice(Code) :-
    codes_of_practice(Code),
    monitored(Code),
    evaluated(Code),
    covers_article_53_obligations(Code),
    covers_article_55_obligations(Code),
    objectives_achieved(Code),
    assessment_published(Code).
may_approve_code_of_practice(Code) :-
    codes_of_practice(Code),
    commission_approves(Code),
    implementing_act(Code),
    general_validity_union(Code).
may_invite_adherence(AI_Office, Provider) :-
    ai_office(AI_Office),
    general_purpose_ai_model_provider(Provider).
limited_adherence_for_non_systemic_risk_providers(Provider) :-
    general_purpose_ai_model_provider(Provider),
    \+ systemic_risk_present(Provider),
    adheres_to_article_53_only(Provider),
    \+ explicit_interest_full_code(Provider).
must_encourage_review_adaptation(AI_Office, Code) :-
    ai_office(AI_Office),
    codes_of_practice(Code),
    emerging_standards(Code).
codes_of_practice_deadline(Code) :-
    codes_of_practice(Code),
    ready_by(Code, date(2025, 5, 2)).
may_provide_common_rules(Code) :-
    codes_of_practice(Code),
    \+ finalised_by(Code, date(2025, 8, 2)),
    implementing_act(Common_Rules),
    covers_article_53_obligations(Common_Rules),
    covers_article_55_obligations(Common_Rules),
    includes_issues_par_2(Common_Rules).
may_provide_common_rules(Code) :-
    codes_of_practice(Code),
    inadequate_assessment(Code),
    implementing_act(Common_Rules),
    covers_article_53_obligations(Common_Rules),
    covers_article_55_obligations(Common_Rules),
    includes_issues_par_2(Common_Rules).
provenance(must_encourage_and_facilitate_codes_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_cover_obligations/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_participation/2, 'celex:32024R1689/oj#art_56').
provenance(stakeholders_may_support_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_set_objectives/1, 'celex:32024R1689/oj#art_56').
provenance(participants_report_implementation/1, 'celex:32024R1689/oj#art_56').
provenance(monitor_evaluate_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(limited_adherence_for_non_systemic_risk_providers/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review_adaptation/2, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_deadline/1, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

% ==== celex:32024R1689/oj#art_57 ====
declared(must_establish_sandbox/2, 'Member State shall ensure competent authority establishes AI regulatory sandbox', 'celex:32024R1689/oj#art_57').
declared(sandbox_operational_deadline/2, 'sandbox must be operational by specified date', 'celex:32024R1689/oj#art_57').
declared(may_provide_technical_support/3, 'Commission may provide technical support for sandbox', 'celex:32024R1689/oj#art_57').
declared(sandbox_fulfilment_by_participation/2, 'obligation fulfilled by participating in existing sandbox', 'celex:32024R1689/oj#art_57').
declared(may_establish_additional_sandbox/2, 'additional sandboxes may be established at regional or local level or jointly', 'celex:32024R1689/oj#art_57').
declared(may_establish_union_sandbox/2, 'European Data Protection Supervisor may establish sandbox for Union institutions', 'celex:32024R1689/oj#art_57').
declared(must_allocate_resources/2, 'competent authority must allocate sufficient resources for sandbox', 'celex:32024R1689/oj#art_57').
declared(may_cooperate_and_involve_actors/2, 'national competent authorities may cooperate and involve other actors', 'celex:32024R1689/oj#art_57').
declared(unaffected_other_sandboxes/1, 'sandbox establishment does not affect other regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(must_ensure_cooperation_sandbox_authorities/2, 'Member State must ensure cooperation between sandbox supervising authorities and national competent authorities', 'celex:32024R1689/oj#art_57').
declared(provides_controlled_environment/1, 'sandbox provides controlled environment for AI system development and testing', 'celex:32024R1689/oj#art_57').
declared(testing_under_sandbox_plan/2, 'testing pursuant to specific sandbox plan agreed between provider and competent authority', 'celex:32024R1689/oj#art_57').
declared(may_include_real_world_testing/1, 'sandbox may include testing in real world conditions supervised therein', 'celex:32024R1689/oj#art_57').
declared(must_provide_guidance_supervision_support/2, 'competent authority shall provide guidance, supervision and support in sandbox', 'celex:32024R1689/oj#art_57').
declared(must_provide_written_proof/2, 'competent authority shall provide written proof of successful sandbox activities', 'celex:32024R1689/oj#art_57').
declared(must_provide_exit_report/2, 'competent authority shall provide exit report detailing activities and results', 'celex:32024R1689/oj#art_57').
declared(may_use_documentation_for_compliance/2, 'provider may use documentation to demonstrate compliance', 'celex:32024R1689/oj#art_57').
declared(exit_report_taken_into_account/1, 'exit reports and written proof taken positively into account for conformity assessment', 'celex:32024R1689/oj#art_57').
declared(may_access_exit_reports/2, 'Commission and Board authorised to access exit reports with agreement', 'celex:32024R1689/oj#art_57').
declared(may_make_exit_report_public/2, 'exit report may be made publicly available with explicit agreement', 'celex:32024R1689/oj#art_57').
declared(objective_legal_certainty/1, 'sandbox aims to improve legal certainty for regulatory compliance', 'celex:32024R1689/oj#art_57').
declared(objective_share_best_practices/1, 'sandbox aims to support sharing of best practices', 'celex:32024R1689/oj#art_57').
declared(objective_foster_innovation_competitiveness/1, 'sandbox aims to foster innovation and competitiveness', 'celex:32024R1689/oj#art_57').
declared(objective_evidence_based_learning/1, 'sandbox aims to contribute to evidence-based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_facilitate_market_access_sme/1, 'sandbox aims to facilitate market access for AI systems from SMEs including start-ups', 'celex:32024R1689/oj#art_57').
declared(must_associate_data_protection_authorities/2, 'national data protection authorities must be associated with sandbox operation', 'celex:32024R1689/oj#art_57').
declared(must_associate_other_relevant_authorities/2, 'other relevant national authorities must be associated with sandbox operation', 'celex:32024R1689/oj#art_57').
declared(unaffected_supervisory_powers/1, 'sandbox does not affect supervisory or corrective powers of competent authorities', 'celex:32024R1689/oj#art_57').
declared(significant_risk_requires_mitigation/1, 'significant risks identified during testing require adequate mitigation', 'celex:32024R1689/oj#art_57').
declared(may_suspend_testing/2, 'national competent authority may suspend testing or participation if no effective mitigation possible', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_suspension/2, 'national competent authority must inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57').
declared(exercise_powers_within_law/2, 'national competent authorities exercise supervisory powers within limits of relevant law', 'celex:32024R1689/oj#art_57').
declared(remains_liable/2, 'providers and prospective providers remain liable for damage to third parties', 'celex:32024R1689/oj#art_57').
declared(no_fines_for_infringements/2, 'no administrative fines imposed for infringements of this Regulation under conditions', 'celex:32024R1689/oj#art_57').
declared(no_fines_for_other_law/2, 'no administrative fines imposed regarding other Union and national law under conditions', 'celex:32024R1689/oj#art_57').
declared(facilitates_cross_border_cooperation/1, 'sandboxes designed to facilitate cross-border cooperation between authorities', 'celex:32024R1689/oj#art_57').
declared(must_coordinate_within_board/2, 'national competent authorities shall coordinate activities within framework of Board', 'celex:32024R1689/oj#art_57').
declared(may_ask_support_guidance/2, 'national competent authority may ask AI Office and Board for support and guidance', 'celex:32024R1689/oj#art_57').
declared(must_publish_sandbox_list/2, 'AI Office shall make publicly available list of planned and existing sandboxes', 'celex:32024R1689/oj#art_57').
declared(must_keep_sandbox_list_updated/2, 'AI Office shall keep sandbox list up to date', 'celex:32024R1689/oj#art_57').
declared(must_submit_annual_reports_sandbox/2, 'national competent authority must submit annual reports on sandbox', 'celex:32024R1689/oj#art_57').
declared(must_submit_final_report_sandbox/2, 'national competent authority must submit final report on sandbox', 'celex:32024R1689/oj#art_57').
declared(must_make_reports_public/2, 'national competent authority must make annual reports or abstracts available to public', 'celex:32024R1689/oj#art_57').
declared(commission_may_consider_reports/2, 'Commission may take annual reports into account when exercising tasks', 'celex:32024R1689/oj#art_57').
declared(must_develop_single_interface/2, 'Commission shall develop single dedicated interface for sandbox information', 'celex:32024R1689/oj#art_57').
declared(may_raise_enquiries/2, 'stakeholders may raise enquiries with competent authorities through interface', 'celex:32024R1689/oj#art_57').
declared(may_seek_non_binding_guidance/2, 'stakeholders may seek non-binding guidance on conformity through interface', 'celex:32024R1689/oj#art_57').
declared(must_coordinate_with_authorities/2, 'Commission shall proactively coordinate with national competent authorities', 'celex:32024R1689/oj#art_57').
must_establish_sandbox(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    national_level(Sandbox).
sandbox_operational_deadline(Sandbox, date(2026, 8, 2)) :-
    ai_regulatory_sandbox(Sandbox),
    must_establish_sandbox(_MemberState, _Authority).
may_establish_additional_sandbox(MemberStates, Sandbox) :-
    member_states(MemberStates),
    ai_regulatory_sandbox(Sandbox),
    jointly_established(Sandbox).
may_provide_technical_support(commission, establishment(Sandbox)) :-
    ai_regulatory_sandbox(Sandbox).
may_provide_technical_support(commission, operation(Sandbox)) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_fulfilment_by_participation(MemberState, ExistingSandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(ExistingSandbox),
    existing_sandbox(ExistingSandbox),
    equivalent_national_coverage(ExistingSandbox, MemberState).
may_establish_additional_sandbox(Authorities, Sandbox) :-
    authorities(Authorities),
    ai_regulatory_sandbox(Sandbox),
    regional_or_local_level(Sandbox).
may_establish_union_sandbox(edps, UnionInstitutions) :-
    union_institution(UnionInstitutions).
must_allocate_resources(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    referred_to_in_art_57_par_1_or_2(Authority).
may_cooperate_and_involve_actors(Authority, OtherActors) :-
    national_competent_authority(Authority),
    other_actors(OtherActors),
    ai_ecosystem(OtherActors).
unaffected_other_sandboxes(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    other_regulatory_sandbox(OtherSandbox),
    established_under_union_or_national_law(OtherSandbox).
must_ensure_cooperation_sandbox_authorities(MemberState, Cooperation) :-
    member_state(MemberState),
    cooperation_between(authorities_supervising_other_sandboxes, national_competent_authorities, Cooperation).
provides_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under_art_57_par_1(Sandbox).
testing_under_sandbox_plan(Provider, Sandbox) :-
    provider_or_prospective_provider(Provider),
    ai_regulatory_sandbox(Sandbox),
    sandbox_plan(Plan),
    agreed_between(Plan, Provider, Authority),
    national_competent_authority(Authority),
    limited_time(Testing),
    before_placing_on_market_or_putting_into_service(System),
    innovative_ai_system(System).
may_include_real_world_testing(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, Sandbox).
must_provide_guidance_supervision_support(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    appropriate_provision(Authority, Sandbox).
must_provide_written_proof(Authority, provider_or_prospective_provider(Provider)) :-
    national_competent_authority(Authority),
    provider_or_prospective_provider(Provider),
    upon_request(Provider),
    activities_successfully_carried_out(Provider, Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_provide_exit_report(Authority, provider_or_prospective_provider(Provider)) :-
    national_competent_authority(Authority),
    provider_or_prospective_provider(Provider),
    ai_regulatory_sandbox(Sandbox),
    activities_carried_out(Provider, Sandbox),
    related_results(Results),
    learning_outcomes(Outcomes).
may_use_documentation_for_compliance(Provider, documentation(Docs)) :-
    provider_or_prospective_provider(Provider),
    written_proof(Proof),
    exit_report(Report),
    Docs = [Proof, Report],
    demonstrate_compliance(Provider, celex_32024R1689).
exit_report_taken_into_account(Documentation) :-
    exit_report(Documentation);
    written_proof(Documentation),
    market_surveillance_authority(_Authority),
    notified_body(_Body).
may_access_exit_reports(commission, ExitReport) :-
    exit_report(ExitReport),
    confidentiality_provisions_respected,
    agreement(provider_or_prospective_provider(_), access).
may_access_exit_reports(board, ExitReport) :-
    exit_report(ExitReport),
    confidentiality_provisions_respected,
    agreement(provider_or_prospective_provider(_), access).
may_make_exit_report_public(ExitReport, platform) :-
    exit_report(ExitReport),
    explicit_agreement(provider_or_prospective_provider(_), national_competent_authority(_)),
    single_information_platform(Platform).
objective_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_share_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_foster_innovation_competitiveness(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_facilitate_market_access_sme(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_associate_data_protection_authorities(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    innovative_ai_system(System),
    involves_processing_of_personal_data(System).
must_associate_other_relevant_authorities(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    innovative_ai_system(System),
    falls_under_supervisory_remit(System, OtherAuthority),
    national_authority_or_competent_authority(OtherAuthority).
unaffected_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    regional_or_local_level(Sandbox).
significant_risk_requires_mitigation(System) :-
    innovative_ai_system(System),
    significant_risk_to_health_and_safety(System);
    significant_risk_to_fundamental_rights(System),
    identified_during(development, System);
    identified_during(testing, System).
may_suspend_testing(Authority, System) :-
    national_competent_authority(Authority),
    innovative_ai_system(System),
    \+ effective_mitigation_possible(System),
    testing_process(Testing);
    participation_in_sandbox(Participation).
must_inform_ai_office_suspension(Authority, Decision) :-
    national_competent_authority(Authority),
    suspension_decision(Decision),
    may_suspend_testing(Authority, _System).
exercise_powers_within_law(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    limits_of_relevant_law(Limits),
    discretionary_powers(Authority).
remains_liable(Provider, damage(ThirdParties)) :-
    provider_or_prospective_provider(Provider),
    participating_in_sandbox(Provider, Sandbox),
    damage_inflicted(ThirdParties, experimentation).
no_fines_for_infringements(Provider, celex_32024R1689) :-
    provider_or_prospective_provider(Provider),
    prospective_provider(Provider),
    observes_specific_plan(Provider, Sandbox),
    observes_terms_and_conditions(Provider, Sandbox),
    follows_guidance_in_good_faith(Provider, Authority),
    national_competent_authority(Authority).
no_fines_for_other_law(Provider, OtherLaw) :-
    provider_or_prospective_provider(Provider),
    other_competent_authority(OtherAuthority),
    actively_involved_in_supervision(OtherAuthority, System),
    provided_guidance_for_compliance(OtherAuthority, OtherLaw).
facilitates_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    relevant(Sandbox).
must_coordinate_within_board(Authority, board) :-
    national_competent_authority(Authority).
may_ask_support_guidance(Authority, ai_office) :-
    national_competent_authority(Authority).
may_ask_support_guidance(Authority, board) :-
    national_competent_authority(Authority).
must_publish_sandbox_list(ai_office, Sandboxes) :-
    planned_sandbox(Sandboxes);
    existing_sandbox(Sandboxes).
must_keep_sandbox_list_updated(ai_office, List) :-
    sandbox_list(List).
must_submit_annual_reports_sandbox(Authority, ai_office) :-
    national_competent_authority(Authority),
    one_year_after_establishment(Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_submit_annual_reports_sandbox(Authority, board) :-
    national_competent_authority(Authority),
    one_year_after_establishment(Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_submit_final_report_sandbox(Authority, ai_office) :-
    national_competent_authority(Authority),
    termination_of_sandbox(Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_submit_final_report_sandbox(Authority, board) :-
    national_competent_authority(Authority),
    termination_of_sandbox(Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_make_reports_public(Authority, report(AnnualReport)) :-
    national_competent_authority(Authority),
    annual_report(AnnualReport).
must_make_reports_public(Authority, abstract(Abstract)) :-
    national_competent_authority(Authority),
    abstract_of_report(Abstract).
commission_may_consider_reports(commission, AnnualReport) :-
    annual_report(AnnualReport),
    appropriate(AnnualReport).
must_develop_single_interface(commission, Interface) :-
    single_dedicated_interface(Interface),
    relevant_information(Interface, ai_regulatory_sandbox).
may_raise_enquiries(Stakeholder, Authority) :-
    stakeholder(Stakeholder),
    competent_authority(Authority),
    through_interface(Interface).
may_seek_non_binding_guidance(Stakeholder, conformity(InnovativeProduct)) :-
    stakeholder(Stakeholder),
    innovative_product(InnovativeProduct),
    embedding_ai_technologies(InnovativeProduct),
    through_interface(Interface).
must_coordinate_with_authorities(commission, NationalAuthority) :-
    national_competent_authority(NationalAuthority),
    relevant(NationalAuthority).
provenance(must_establish_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_operational_deadline/2, 'celex:32024R1689/oj#art_57').
provenance(may_provide_technical_support/3, 'celex:32024R1689/oj#art_57').
provenance(sandbox_fulfilment_by_participation/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_additional_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_union_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57').
provenance(may_cooperate_and_involve_actors/2, 'celex:32024R1689/oj#art_57').
provenance(unaffected_other_sandboxes/1, 'celex:32024R1689/oj#art_57').
provenance(must_ensure_cooperation_sandbox_authorities/2, 'celex:32024R1689/oj#art_57').
provenance(provides_controlled_environment/1, 'celex:32024R1689/oj#art_57').
provenance(testing_under_sandbox_plan/2, 'celex:32024R1689/oj#art_57').
provenance(may_include_real_world_testing/1, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_supervision_support/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(may_use_documentation_for_compliance/2, 'celex:32024R1689/oj#art_57').
provenance(exit_report_taken_into_account/1, 'celex:32024R1689/oj#art_57').
provenance(may_access_exit_reports/2, 'celex:32024R1689/oj#art_57').
provenance(may_make_exit_report_public/2, 'celex:32024R1689/oj#art_57').
provenance(objective_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_share_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_foster_innovation_competitiveness/1, 'celex:32024R1689/oj#art_57').
provenance(objective_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_facilitate_market_access_sme/1, 'celex:32024R1689/oj#art_57').
provenance(must_associate_data_protection_authorities/2, 'celex:32024R1689/oj#art_57').
provenance(must_associate_other_relevant_authorities/2, 'celex:32024R1689/oj#art_57').
provenance(unaffected_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
provenance(significant_risk_requires_mitigation/1, 'celex:32024R1689/oj#art_57').
provenance(may_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_suspension/2, 'celex:32024R1689/oj#art_57').
provenance(exercise_powers_within_law/2, 'celex:32024R1689/oj#art_57').
provenance(remains_liable/2, 'celex:32024R1689/oj#art_57').
provenance(no_fines_for_infringements/2, 'celex:32024R1689/oj#art_57').
provenance(no_fines_for_other_law/2, 'celex:32024R1689/oj#art_57').
provenance(facilitates_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
provenance(must_coordinate_within_board/2, 'celex:32024R1689/oj#art_57').
provenance(may_ask_support_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(must_publish_sandbox_list/2, 'celex:32024R1689/oj#art_57').
provenance(must_keep_sandbox_list_updated/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_reports_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit_final_report_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(must_make_reports_public/2, 'celex:32024R1689/oj#art_57').
provenance(commission_may_consider_reports/2, 'celex:32024R1689/oj#art_57').
provenance(must_develop_single_interface/2, 'celex:32024R1689/oj#art_57').
provenance(may_raise_enquiries/2, 'celex:32024R1689/oj#art_57').
provenance(may_seek_non_binding_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(must_coordinate_with_authorities/2, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts specifying detailed arrangements', 'celex:32024R1689/oj#art_58/par_1').
declared(implementing_act_issues/1, 'common principles covered by implementing acts', 'celex:32024R1689/oj#art_58/par_1').
declared(eligibility_and_selection_criteria/1, 'criteria for participation in AI regulatory sandbox', 'celex:32024R1689/oj#art_58/par_1_a').
declared(sandbox_procedures/1, 'procedures for application, participation, monitoring, exiting and termination', 'celex:32024R1689/oj#art_58/par_1_b').
declared(terms_and_conditions_participants/1, 'terms and conditions applicable to participants', 'celex:32024R1689/oj#art_58/par_1_c').
declared(sandbox_ensures/1, 'requirement that implementing acts ensure specified outcome', 'celex:32024R1689/oj#art_58/par_2').
declared(transparent_and_fair_criteria/1, 'eligibility and selection criteria are transparent and fair', 'celex:32024R1689/oj#art_58/par_2_a').
declared(decision_within_three_months/2, 'authority informs applicant of decision within three months', 'celex:32024R1689/oj#art_58/par_2_a').
declared(broad_and_equal_access/1, 'AI regulatory sandboxes allow broad and equal access', 'celex:32024R1689/oj#art_58/par_2_b').
declared(flexibility_for_national_authorities/1, 'support flexibility for national competent authorities', 'celex:32024R1689/oj#art_58/par_2_c').
declared(free_of_charge_for_smes/1, 'access free of charge for SMEs including start-ups', 'celex:32024R1689/oj#art_58/par_2_d').
declared(exceptional_costs_recoverable/2, 'exceptional costs may be recovered fairly and proportionately', 'celex:32024R1689/oj#art_58/par_2_d').
declared(facilitates_conformity_assessment/1, 'facilitates compliance with conformity assessment obligations', 'celex:32024R1689/oj#art_58/par_2_e').
declared(facilitates_voluntary_codes_of_conduct/1, 'facilitates voluntary application of codes of conduct', 'celex:32024R1689/oj#art_58/par_2_e').
declared(facilitates_ecosystem_involvement/1, 'facilitates involvement of other relevant actors in AI ecosystem', 'celex:32024R1689/oj#art_58/par_2_f').
declared(simple_procedures/1, 'procedures are simple, easily intelligible and clearly communicated', 'celex:32024R1689/oj#art_58/par_2_g').
declared(streamlined_across_union/1, 'procedures streamlined across the Union', 'celex:32024R1689/oj#art_58/par_2_g').
declared(mutual_recognition_across_union/1, 'participation mutually and uniformly recognised across the Union', 'celex:32024R1689/oj#art_58/par_2_g').
declared(appropriate_participation_period/2, 'participation limited to appropriate period extendable by authority', 'celex:32024R1689/oj#art_58/par_2_h').
declared(facilitates_testing_tools/1, 'facilitates development of tools and infrastructure for testing', 'celex:32024R1689/oj#art_58/par_2_i').
declared(directed_to_pre_deployment_services/2, 'prospective providers directed to pre-deployment services', 'celex:32024R1689/oj#art_58/par_3').
declared(testing_in_real_world_conditions_supervised/2, 'testing in real world conditions supervised within sandbox framework', 'celex:32024R1689/oj#art_58/par_4').
declared(agree_terms_and_conditions/2, 'authority specifically agrees terms and conditions with participants', 'celex:32024R1689/oj#art_58/par_4').
declared(appropriate_safeguards_agreed/2, 'appropriate safeguards agreed with participants', 'celex:32024R1689/oj#art_58/par_4').
declared(cooperate_for_consistent_practices/2, 'authority cooperates with other authorities for consistent practices', 'celex:32024R1689/oj#art_58/par_4').
must_adopt_implementing_acts(commission, detailed_arrangements(ai_regulatory_sandbox)).
implementing_act_issues(eligibility_and_selection_criteria(_)).
implementing_act_issues(sandbox_procedures(_)).
implementing_act_issues(terms_and_conditions_participants(_)).
sandbox_ensures(open_to_any_fulfilling_criteria(P)) :-
    applying_provider_or_prospective_provider(P),
    fulfils_eligibility_and_selection_criteria(P),
    transparent_and_fair_criteria(ai_regulatory_sandbox),
    decision_within_three_months(_Authority, P).
sandbox_ensures(broad_and_equal_access(ai_regulatory_sandbox)).
sandbox_partnership_permitted(P) :-
    provider(P).
sandbox_partnership_permitted(P) :-
    prospective_provider(P).
sandbox_ensures(flexibility_for_national_authorities(ai_regulatory_sandbox)).
sandbox_ensures(free_of_charge_for_smes(P)) :-
    sme_or_start_up(P),
    participating_in(ai_regulatory_sandbox, P).
exceptional_costs_recoverable(Authority, Costs) :-
    national_competent_authority(Authority),
    fair_and_proportionate(Costs).
sandbox_ensures(facilitates_conformity_assessment(P)) :-
    provider(P).
sandbox_ensures(facilitates_conformity_assessment(P)) :-
    prospective_provider(P).
sandbox_ensures(facilitates_voluntary_codes_of_conduct(P)) :-
    provider(P).
sandbox_ensures(facilitates_voluntary_codes_of_conduct(P)) :-
    prospective_provider(P).
sandbox_ensures(facilitates_ecosystem_involvement(ai_regulatory_sandbox)).
sandbox_ensures(simple_procedures(ai_regulatory_sandbox)).
sandbox_ensures(streamlined_across_union(ai_regulatory_sandbox)).
sandbox_ensures(mutual_recognition_across_union(ai_regulatory_sandbox)).
sandbox_ensures(appropriate_participation_period(P, Period)) :-
    participating_in(ai_regulatory_sandbox, P),
    appropriate_to_complexity_and_scale(Period, P),
    extendable_by_authority(Period, _Authority).
sandbox_ensures(facilitates_testing_tools(ai_regulatory_sandbox)).
directed_to_pre_deployment_services(P, guidance) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).
directed_to_pre_deployment_services(P, standardisation_help) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).
directed_to_pre_deployment_services(P, testing_facilities) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).
directed_to_pre_deployment_services(P, digital_innovation_hubs) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).
directed_to_pre_deployment_services(P, centres_of_excellence) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).
testing_in_real_world_conditions_supervised(Authority, Testing) :-
    national_competent_authority(Authority),
    authorising(Authority, Testing),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, ai_regulatory_sandbox).
agree_terms_and_conditions(Authority, Participants) :-
    testing_in_real_world_conditions_supervised(Authority, Testing),
    participants(Testing, Participants).
appropriate_safeguards_agreed(Authority, Participants) :-
    agree_terms_and_conditions(Authority, Participants),
    purpose(protection(fundamental_rights_health_safety)).
cooperate_for_consistent_practices(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    national_competent_authority(OtherAuthority),
    Authority \= OtherAuthority,
    testing_in_real_world_conditions_supervised(Authority, _Testing).
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(implementing_act_issues/1, 'celex:32024R1689/oj#art_58/par_1').
provenance(eligibility_and_selection_criteria/1, 'celex:32024R1689/oj#art_58/par_1_a').
provenance(sandbox_procedures/1, 'celex:32024R1689/oj#art_58/par_1_b').
provenance(terms_and_conditions_participants/1, 'celex:32024R1689/oj#art_58/par_1_c').
provenance(sandbox_ensures/1, 'celex:32024R1689/oj#art_58/par_2').
provenance(transparent_and_fair_criteria/1, 'celex:32024R1689/oj#art_58/par_2_a').
provenance(decision_within_three_months/2, 'celex:32024R1689/oj#art_58/par_2_a').
provenance(broad_and_equal_access/1, 'celex:32024R1689/oj#art_58/par_2_b').
provenance(sandbox_partnership_permitted/1, 'celex:32024R1689/oj#art_58/par_2_b').
provenance(flexibility_for_national_authorities/1, 'celex:32024R1689/oj#art_58/par_2_c').
provenance(free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58/par_2_d').
provenance(exceptional_costs_recoverable/2, 'celex:32024R1689/oj#art_58/par_2_d').
provenance(facilitates_conformity_assessment/1, 'celex:32024R1689/oj#art_58/par_2_e').
provenance(facilitates_voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_58/par_2_e').
provenance(facilitates_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58/par_2_f').
provenance(simple_procedures/1, 'celex:32024R1689/oj#art_58/par_2_g').
provenance(streamlined_across_union/1, 'celex:32024R1689/oj#art_58/par_2_g').
provenance(mutual_recognition_across_union/1, 'celex:32024R1689/oj#art_58/par_2_g').
provenance(appropriate_participation_period/2, 'celex:32024R1689/oj#art_58/par_2_h').
provenance(facilitates_testing_tools/1, 'celex:32024R1689/oj#art_58/par_2_i').
provenance(directed_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58/par_3').
provenance(testing_in_real_world_conditions_supervised/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(agree_terms_and_conditions/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(appropriate_safeguards_agreed/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(cooperate_for_consistent_practices/2, 'celex:32024R1689/oj#art_58/par_4').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_further_processing_of_personal_data/1, 'further processing of personal data for developing certain AI systems in the AI regulatory sandbox is permitted', 'celex:32024R1689/oj#art_59').
declared(public_interest_development/1, 'AI system developed for safeguarding substantial public interest', 'celex:32024R1689/oj#art_59').
declared(public_safety_and_health_area/1, 'public safety and public health area', 'celex:32024R1689/oj#art_59').
declared(environment_protection_area/1, 'high level of protection and improvement of the quality of the environment area', 'celex:32024R1689/oj#art_59').
declared(energy_sustainability_area/1, 'energy sustainability area', 'celex:32024R1689/oj#art_59').
declared(transport_infrastructure_area/1, 'safety and resilience of transport systems and mobility, critical infrastructure and networks area', 'celex:32024R1689/oj#art_59').
declared(public_administration_area/1, 'efficiency and quality of public administration and public services area', 'celex:32024R1689/oj#art_59').
declared(non_personal_data_insufficient/1, 'requirements cannot effectively be fulfilled by processing anonymised, synthetic or other non-personal data', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_mechanisms/1, 'effective monitoring mechanisms to identify high risks to rights and freedoms of data subjects', 'celex:32024R1689/oj#art_59').
declared(response_mechanisms/1, 'response mechanisms to promptly mitigate risks and stop processing', 'celex:32024R1689/oj#art_59').
declared(sandbox_data_environment/1, 'personal data in functionally separate, isolated and protected data processing environment under control of prospective provider', 'celex:32024R1689/oj#art_59').
declared(data_sharing_restrictions/1, 'restrictions on sharing personal data created in sandbox', 'celex:32024R1689/oj#art_59').
declared(no_adverse_measures_or_decisions/1, 'processing neither leads to measures or decisions affecting data subjects nor affects their rights', 'celex:32024R1689/oj#art_59').
declared(technical_organisational_measures/1, 'appropriate technical and organisational measures protecting personal data', 'celex:32024R1689/oj#art_59').
declared(data_deletion_on_termination/1, 'personal data deleted once sandbox participation terminated or retention period ended', 'celex:32024R1689/oj#art_59').
declared(sandbox_logs_retained/1, 'logs of processing of personal data kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(technical_documentation_sandbox/1, 'complete and detailed description of training, testing and validation process kept as part of technical documentation', 'celex:32024R1689/oj#art_59').
declared(sandbox_summary_published/1, 'short summary of AI project published on website of competent authorities', 'celex:32024R1689/oj#art_59').
declared(sensitive_operational_data_exemption/1, 'sensitive operational data in relation to law enforcement, border control, immigration or asylum authorities exempt from publication', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_sandbox_processing/1, 'processing of personal data in AI regulatory sandboxes under control and responsibility of law enforcement authorities', 'celex:32024R1689/oj#art_59').
declared(specific_union_or_national_law_basis/1, 'processing based on specific Union or national law', 'celex:32024R1689/oj#art_59').
declared(without_prejudice_exclusion/1, 'without prejudice to law excluding processing for other purposes', 'celex:32024R1689/oj#art_59').
declared(without_prejudice_other_legal_basis/1, 'without prejudice to other legal basis for processing', 'celex:32024R1689/oj#art_59').
permitted_further_processing_of_personal_data(S) :-
    ai_regulatory_sandbox(Sandbox),
    in_sandbox(S, Sandbox),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    purpose_developing_training_testing_ai_system(S),
    public_interest_development(S),
    non_personal_data_insufficient(S),
    effective_monitoring_mechanisms(S),
    response_mechanisms(S),
    sandbox_data_environment(S),
    data_sharing_restrictions(S),
    no_adverse_measures_or_decisions(S),
    technical_organisational_measures(S),
    data_deletion_on_termination(S),
    sandbox_logs_retained(S),
    technical_documentation_sandbox(S),
    sandbox_summary_published(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    public_safety_and_health_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    environment_protection_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    energy_sustainability_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    transport_infrastructure_area(S).
public_interest_development(S) :-
    developed_by_public_authority_or_person(S),
    public_administration_area(S).
developed_by_public_authority_or_person(S) :-
    public_authority_or_body(Authority),
    developed_for(Authority, S).
developed_by_public_authority_or_person(S) :-
    natural_person(Person),
    developed_for(Person, S).
developed_by_public_authority_or_person(S) :-
    legal_person(Person),
    developed_for(Person, S).
non_personal_data_insufficient(S) :-
    data_processed_necessary_for_requirements(S, Requirements),
    requirements_in_chapter_3_section_2(Requirements),
    \+ effectively_fulfilled_by_anonymised_synthetic_or_non_personal_data(S).
effective_monitoring_mechanisms(S) :-
    monitoring_mechanisms_identify_high_risks(S),
    high_risks_to_rights_and_freedoms(S).
response_mechanisms(S) :-
    response_mechanisms_mitigate_risks(S),
    stop_processing_available(S).
sandbox_data_environment(S) :-
    functionally_separate_isolated_protected_environment(S),
    under_control(prospective_provider, S),
    only_authorised_persons_access(S).
data_sharing_restrictions(S) :-
    further_share_only_under_union_data_protection_law(S),
    personal_data_created_in_sandbox_not_shared_outside(S).
no_adverse_measures_or_decisions(S) :-
    \+ leads_to_measures_or_decisions_affecting_data_subjects(S),
    \+ affects_data_subject_rights_under_union_law(S).
technical_organisational_measures(S) :-
    appropriate_technical_organisational_measures(S).
data_deletion_on_termination(S) :-
    personal_data_deleted(once_participation_terminated(S)).
data_deletion_on_termination(S) :-
    personal_data_deleted(once_retention_period_ended(S)).
sandbox_logs_retained(S) :-
    logs_kept_for(duration_of_participation(S)),
    \+ national_law_provides_otherwise(S).
technical_documentation_sandbox(S) :-
    complete_detailed_description_kept(S),
    testing_results_kept(S),
    part_of_technical_documentation(S).
sandbox_summary_published(S) :-
    short_summary_published(S),
    published_on_website(competent_authorities),
    \+ sensitive_operational_data_law_enforcement(S).
law_enforcement_sandbox_processing(S) :-
    purpose_prevention_investigation_detection_prosecution_criminal_offences(S),
    purpose_execution_criminal_penalties(S),
    purpose_safeguarding_against_preventing_threats_public_security(S),
    under_control(law_enforcement_authority, S),
    under_responsibility(law_enforcement_authority, S),
    specific_union_or_national_law_basis(S),
    permitted_further_processing_of_personal_data(S).
without_prejudice_exclusion(S) :-
    union_or_national_law_excludes_processing_for_other_purposes(S).
without_prejudice_other_legal_basis(S) :-
    union_or_national_law_legal_basis_for_developing_testing_training(S).
provenance(permitted_further_processing_of_personal_data/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_development/1, 'celex:32024R1689/oj#art_59').
provenance(public_safety_and_health_area/1, 'celex:32024R1689/oj#art_59').
provenance(environment_protection_area/1, 'celex:32024R1689/oj#art_59').
provenance(energy_sustainability_area/1, 'celex:32024R1689/oj#art_59').
provenance(transport_infrastructure_area/1, 'celex:32024R1689/oj#art_59').
provenance(public_administration_area/1, 'celex:32024R1689/oj#art_59').
provenance(non_personal_data_insufficient/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(response_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_data_environment/1, 'celex:32024R1689/oj#art_59').
provenance(data_sharing_restrictions/1, 'celex:32024R1689/oj#art_59').
provenance(no_adverse_measures_or_decisions/1, 'celex:32024R1689/oj#art_59').
provenance(technical_organisational_measures/1, 'celex:32024R1689/oj#art_59').
provenance(data_deletion_on_termination/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_logs_retained/1, 'celex:32024R1689/oj#art_59').
provenance(technical_documentation_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_summary_published/1, 'celex:32024R1689/oj#art_59').
provenance(sensitive_operational_data_exemption/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_processing/1, 'celex:32024R1689/oj#art_59').
provenance(specific_union_or_national_law_basis/1, 'celex:32024R1689/oj#art_59').
provenance(without_prejudice_exclusion/1, 'celex:32024R1689/oj#art_59').
provenance(without_prejudice_other_legal_basis/1, 'celex:32024R1689/oj#art_59').
provenance(developed_by_public_authority_or_person/1, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(permitted_testing_in_real_world_conditions/1, 'testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes is permitted', 'celex:32024R1689/oj#art_60').
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts specifying detailed elements', 'celex:32024R1689/oj#art_60/par_1').
declared(condition_for_testing/2, 'condition that must be met for testing in real world conditions', 'celex:32024R1689/oj#art_60/par_4').
declared(tacit_approval_applies/1, 'testing approved after 30 days without response', 'celex:32024R1689/oj#art_60/par_4').
declared(authorisation_required/1, 'testing remains subject to authorisation where national law does not provide tacit approval', 'celex:32024R1689/oj#art_60/par_4').
declared(must_register_testing/2, 'provider must register testing in real world conditions', 'celex:32024R1689/oj#art_60/par_4').
declared(testing_duration_limit/2, 'maximum duration of testing with possible extension', 'celex:32024R1689/oj#art_60/par_4').
declared(must_notify_extension/2, 'provider must notify market surveillance authority of extension', 'celex:32024R1689/oj#art_60/par_4').
declared(vulnerable_subjects_protected/1, 'subjects from vulnerable groups are appropriately protected', 'celex:32024R1689/oj#art_60/par_4').
declared(deployer_informed/2, 'deployer has been informed of relevant aspects of testing', 'celex:32024R1689/oj#art_60/par_4').
declared(testing_agreement_concluded/2, 'provider and deployer have concluded agreement specifying roles and responsibilities', 'celex:32024R1689/oj#art_60/par_4').
declared(informed_consent_obtained/1, 'subjects have given informed consent for testing', 'celex:32024R1689/oj#art_60/par_4').
declared(law_enforcement_testing_no_negative_effect/1, 'law enforcement testing has no negative effect on subjects and personal data deleted after test', 'celex:32024R1689/oj#art_60/par_4').
declared(effectively_overseen/1, 'testing is effectively overseen by qualified persons', 'celex:32024R1689/oj#art_60/par_4').
declared(predictions_reversible/1, 'predictions, recommendations or decisions of AI system can be effectively reversed and disregarded', 'celex:32024R1689/oj#art_60/par_4').
declared(may_withdraw_consent/1, 'subject may withdraw from testing and request deletion of personal data', 'celex:32024R1689/oj#art_60/par_5').
declared(must_report_serious_incident/2, 'serious incident must be reported to national market surveillance authority', 'celex:32024R1689/oj#art_60/par_7').
declared(must_adopt_mitigation_measures/2, 'provider must adopt immediate mitigation measures or suspend/terminate testing', 'celex:32024R1689/oj#art_60/par_7').
declared(must_establish_recall_procedure/2, 'provider must establish procedure for prompt recall of AI system upon termination', 'celex:32024R1689/oj#art_60/par_7').
declared(must_notify_outcomes/2, 'provider must notify market surveillance authority of suspension, termination and final outcomes', 'celex:32024R1689/oj#art_60/par_8').
declared(liable_for_testing_damage/2, 'provider is liable for damage caused in course of testing', 'celex:32024R1689/oj#art_60/par_9').
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    (provider(P); prospective_provider(P)),
    listed_in_annex_3(S),
    \+ prohibited_practice(S).
must_adopt_implementing_acts(commission, detailed_elements_of_real_world_testing_plan).
condition_for_testing(drawn_up_plan_submitted(P, S, A), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    real_world_testing_plan(Plan),
    drawn_up(Plan),
    market_surveillance_authority(A),
    submitted_to(Plan, A).
condition_for_testing(approved_by_authority_or_tacit(S, A), S) :-
    market_surveillance_authority(A),
    (approved_testing(S, A); tacit_approval_applies(S)).
tacit_approval_applies(S) :-
    testing_in_real_world_conditions(S),
    \+ response_received_within_days(S, 30),
    \+ national_law_provides_otherwise(tacit_approval).
authorisation_required(S) :-
    testing_in_real_world_conditions(S),
    national_law_provides_otherwise(tacit_approval).
condition_for_testing(registered_testing(P, S), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    \+ exempt_from_standard_registration(S),
    registered_with_information_specified(S),
    union_wide_unique_single_identification_number(S).
condition_for_testing(registered_testing_secure(P, S), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    (annex_3_point_1_applies(S); annex_3_point_6_applies(S); annex_3_point_7_applies(S)),
    law_enforcement_migration_asylum_border_control_area(S),
    registered_in_secure_non_public_section(S),
    union_wide_unique_single_identification_number(S).
condition_for_testing(registered_testing_art_49_5(P, S), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system_referred_in_annex_3_point_2(S),
    registered_under_article_49_par_5(S).
exempt_from_standard_registration(S) :-
    (annex_3_point_1_applies(S); annex_3_point_6_applies(S); annex_3_point_7_applies(S)),
    law_enforcement_migration_asylum_border_control_area(S).
exempt_from_standard_registration(S) :-
    high_risk_ai_system_referred_in_annex_3_point_2(S).
condition_for_testing(established_or_represented_in_union(P), S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    (established_in_union(P); has_legal_representative_established_in_union(P)).
condition_for_testing(data_transfer_safeguards(S), S) :-
    testing_in_real_world_conditions(S),
    appropriate_safeguards(data_transfer_to_third_countries).
condition_for_testing(duration_limit(S), S) :-
    testing_in_real_world_conditions(S),
    testing_duration_limit(S, Duration),
    Duration = months(6, possible_extension(months(6))).
testing_duration_limit(S, months(6, possible_extension(months(6)))) :-
    testing_in_real_world_conditions(S),
    \+ extension_approved(S).
must_notify_extension(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    extension_requested(S),
    notified(P, market_surveillance_authority),
    explanation_of_need_provided(S).
condition_for_testing(vulnerable_groups_protected(S), S) :-
    testing_in_real_world_conditions(S),
    subject(Belonging),
    vulnerable_group(Belonging),
    appropriately_protected(Belonging).
vulnerable_group(age).
vulnerable_group(disability).
condition_for_testing(deployer_cooperation_agreement(P, D, S), S) :-
    (provider(P); prospective_provider(P)),
    (deployer(D); prospective_deployer(D)),
    testing_in_real_world_conditions(S),
    deployer_informed(D, relevant_aspects_of_testing(S)),
    instructions_for_use_applicable(S),
    testing_agreement_concluded(P, D),
    roles_and_responsibilities_specified(P, D).
condition_for_testing(informed_consent_or_law_enforcement_safeguard(S), S) :-
    testing_in_real_world_conditions(S),
    (informed_consent_obtained(S); law_enforcement_testing_no_negative_effect(S)).
law_enforcement_testing_no_negative_effect(S) :-
    testing_in_real_world_conditions(S),
    law_enforcement(S),
    seeking_consent_would_prevent_testing(S),
    \+ negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).
condition_for_testing(effective_oversight(S), S) :-
    testing_in_real_world_conditions(S),
    effectively_overseen(S),
    overseer_qualified(S),
    overseer_has_capacity_training_authority(S).
condition_for_testing(predictions_reversible(S), S) :-
    testing_in_real_world_conditions(S),
    predictions_reversible(S).
may_withdraw_consent(Subject) :-
    subject(Subject),
    testing_in_real_world_conditions(S),
    participates_in(Subject, S),
    \+ resulting_detriment(withdrawal(Subject)),
    \+ justification_required(withdrawal(Subject)),
    may_revoke_informed_consent(Subject, S),
    may_request_deletion(Subject, personal_data).
withdrawal_does_not_affect_activities_already_carried_out(S) :-
    testing_in_real_world_conditions(S),
    withdrawal_occurred(Subject, S).
must_report_serious_incident(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    identified_in_course_of_testing(I, S),
    reported_to(I, national_market_surveillance_authority).
must_adopt_mitigation_measures(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    serious_incident(I),
    identified_in_course_of_testing(I, S),
    (adopts_immediate_mitigation_measures(P, S); suspends_testing(P, S); terminates_testing(P, S)).
must_establish_recall_procedure(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    termination_of_testing(S),
    procedure_for_prompt_recall(S).
must_notify_outcomes(P, A) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    market_surveillance_authority(A),
    (suspension_of_testing(S); termination_of_testing(S)),
    final_outcomes(S),
    notified(P, A).
liable_for_testing_damage(P, S) :-
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(S),
    damage_caused(D),
    in_course_of_testing(D, S).
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_60').
provenance(condition_for_testing/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(authorisation_required/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(must_register_testing/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(testing_duration_limit/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(must_notify_extension/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(deployer_informed/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(testing_agreement_concluded/2, 'celex:32024R1689/oj#art_60/par_4').
provenance(informed_consent_obtained/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(law_enforcement_testing_no_negative_effect/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(effectively_overseen/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(predictions_reversible/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(may_withdraw_consent/1, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_adopt_mitigation_measures/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_notify_outcomes/2, 'celex:32024R1689/oj#art_60/par_8').
provenance(liable_for_testing_damage/2, 'celex:32024R1689/oj#art_60/par_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60/par_1', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60/par_1', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60/par_4', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60/par_6', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60/par_7', 'celex:32024R1689/oj#art_73').

% ==== celex:32024R1689/oj#art_61 ====
declared(must_obtain_informed_consent/2, 'provider must obtain informed consent from subjects before testing in real world conditions outside sandboxes', 'celex:32024R1689/oj#art_61').
declared(informed_consent_valid/1, 'informed consent meets Article 61 requirements', 'celex:32024R1689/oj#art_61').
declared(informed_consent_documented/1, 'informed consent is dated and documented with copy given', 'celex:32024R1689/oj#art_61').
declared(subject_informed_of/2, 'subject is informed of specified information', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(P, testing_in_real_world_conditions(T)) :-
    provider(P),
    testing_in_real_world_conditions(T),
    \+ supervised_within(T, _Sandbox),
    subject(S),
    in_course_of_testing(S, T),
    informed_consent_valid(consent(S, T)).
informed_consent_valid(Consent) :-
    consent_given(Consent),
    freely_given(Consent),
    obtained_prior_to_participation(Consent),
    subject_informed_of(Consent, nature_and_objectives),
    subject_informed_of(Consent, possible_inconvenience),
    subject_informed_of(Consent, conditions_of_testing),
    subject_informed_of(Consent, expected_duration),
    subject_informed_of(Consent, right_to_refuse),
    subject_informed_of(Consent, right_to_withdraw),
    subject_informed_of(Consent, no_detriment_on_withdrawal),
    subject_informed_of(Consent, no_justification_required),
    subject_informed_of(Consent, reversal_arrangements),
    subject_informed_of(Consent, unique_identification_number),
    subject_informed_of(Consent, provider_contact_details).
subject_informed_of(Consent, nature_and_objectives) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, nature_and_objectives(T)),
    clear_information(S, nature_and_objectives(T)),
    relevant_information(S, nature_and_objectives(T)),
    understandable_information(S, nature_and_objectives(T)),
    possible_inconvenience_linked_to_participation(S, T).
subject_informed_of(Consent, conditions_of_testing) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, conditions(T)),
    clear_information(S, conditions(T)),
    relevant_information(S, conditions(T)),
    understandable_information(S, conditions(T)),
    expected_duration(S, T).
subject_informed_of(Consent, right_to_refuse) :-
    consent_subject(Consent, S),
    concise_information(S, right_to_refuse(S, T)),
    clear_information(S, right_to_refuse(S, T)),
    relevant_information(S, right_to_refuse(S, T)),
    understandable_information(S, right_to_refuse(S, T)).
subject_informed_of(Consent, right_to_withdraw) :-
    consent_subject(Consent, S),
    concise_information(S, right_to_withdraw(S, T)),
    clear_information(S, right_to_withdraw(S, T)),
    relevant_information(S, right_to_withdraw(S, T)),
    understandable_information(S, right_to_withdraw(S, T)).
subject_informed_of(Consent, no_detriment_on_withdrawal) :-
    consent_subject(Consent, S),
    concise_information(S, no_detriment(S, T)),
    clear_information(S, no_detriment(S, T)),
    relevant_information(S, no_detriment(S, T)),
    understandable_information(S, no_detriment(S, T)).
subject_informed_of(Consent, no_justification_required) :-
    consent_subject(Consent, S),
    concise_information(S, no_justification_required(S, T)),
    clear_information(S, no_justification_required(S, T)),
    relevant_information(S, no_justification_required(S, T)),
    understandable_information(S, no_justification_required(S, T)).
subject_informed_of(Consent, reversal_arrangements) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, reversal_arrangements(T)),
    clear_information(S, reversal_arrangements(T)),
    relevant_information(S, reversal_arrangements(T)),
    understandable_information(S, reversal_arrangements(T)).
subject_informed_of(Consent, unique_identification_number) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, unique_identification_number(T)),
    clear_information(S, unique_identification_number(T)),
    relevant_information(S, unique_identification_number(T)),
    understandable_information(S, unique_identification_number(T)),
    union_wide_unique_single_identification_number(T).
subject_informed_of(Consent, provider_contact_details) :-
    consent_subject(Consent, S),
    consent_testing(Consent, T),
    concise_information(S, contact_details(provider_of(T))),
    clear_information(S, contact_details(provider_of(T))),
    relevant_information(S, contact_details(provider_of(T))),
    understandable_information(S, contact_details(provider_of(T))),
    legal_representative_contact_available(provider_of(T)).
informed_consent_documented(Consent) :-
    consent_given(Consent),
    dated(Consent),
    documented(Consent),
    copy_given_to(Consent, SubjectOrRepresentative),
    (subject(SubjectOrRepresentative), consent_subject(Consent, SubjectOrRepresentative)
    ; legal_representative(SubjectOrRepresentative), consent_subject(Consent, Subject)).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_valid/1, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
provenance(subject_informed_of/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(priority_access_to_sandbox/1, 'SMEs including start-ups with priority access to AI regulatory sandboxes', 'celex:32024R1689/oj#art_62').
declared(eligible_for_sandbox/1, 'fulfils eligibility conditions and selection criteria for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(registered_office_or_branch_in_union/1, 'has registered office or branch in the Union', 'celex:32024R1689/oj#art_62').
declared(specific_awareness_raising_and_training/1, 'specific awareness raising and training activities on AI Act application', 'celex:32024R1689/oj#art_62').
declared(communication_channels_for_smes/1, 'dedicated channels for communication with SMEs and innovators', 'celex:32024R1689/oj#art_62').
declared(facilitate_standardisation_participation/0, 'facilitate participation of SMEs and stakeholders in standardisation development', 'celex:32024R1689/oj#art_62').
declared(fees_proportionate_to_sme_size/0, 'conformity assessment fees reduced proportionately to SME size and market size', 'celex:32024R1689/oj#art_62').
declared(standardised_templates_provided/0, 'standardised templates for areas covered by AI Act', 'celex:32024R1689/oj#art_62').
declared(single_information_platform_maintained/0, 'single information platform providing easy to use information for all operators', 'celex:32024R1689/oj#art_62').
declared(awareness_campaigns_organised/0, 'communication campaigns to raise awareness about AI Act obligations', 'celex:32024R1689/oj#art_62').
declared(promote_procurement_convergence/0, 'evaluate and promote convergence of best practices in public procurement for AI systems', 'celex:32024R1689/oj#art_62').
priority_access_to_sandbox(Sme) :-
    sme_or_start_up(Sme),
    registered_office_or_branch_in_union(Sme),
    eligible_for_sandbox(Sme).
must_ensure_access(Sme, ai_regulatory_sandbox(Sandbox)) :-
    sme_or_start_up(Sme),
    eligible_for_sandbox(Sme),
    \+ registered_office_or_branch_in_union(Sme).
must_undertake(member_states, awareness_raising_and_training) :-
    specific_awareness_raising_and_training(_).
must_undertake(member_states, communication_channels) :-
    communication_channels_for_smes(_).
must_undertake(member_states, facilitate_standardisation_participation).
must_take_into_account_sme_needs(setting_fees, conformity_assessment_fees).
fees_proportionate_to_sme_size.
must_undertake(ai_office, standardised_templates).
must_undertake(ai_office, single_information_platform).
must_undertake(ai_office, awareness_campaigns).
must_undertake(ai_office, promote_procurement_convergence).
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_ensure_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_undertake/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_62').
provenance(fees_proportionate_to_sme_size/0, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Commission Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(partner_or_linked_enterprise/1, 'partner enterprise or linked enterprise within the meaning of Commission Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(simplified_quality_management_system_applies/1, 'quality management system may be complied with in a simplified manner', 'celex:32024R1689/oj#art_63').
simplified_quality_management_system_applies(M) :-
    microenterprise(M),
    \+ partner_or_linked_enterprise(M).
must_adopt_implementing_acts(commission, guidelines(simplified_quality_management_system_elements, microenterprise_needs)) :-
    true.
provenance(simplified_quality_management_system_applies/1, 'celex:32024R1689/oj#art_63').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_63').
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
declared(must_develop_expertise/2, 'Commission shall develop Union expertise and capabilities in the field of AI through the AI Office', 'celex:32024R1689/oj#art_64').
declared(must_facilitate_tasks/2, 'Member States shall facilitate the tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop_expertise(commission, expertise(ai, through(ai_office))).
must_facilitate_tasks(member_states, tasks(entrusted_to(ai_office))).
provenance(must_develop_expertise/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_ai_board/1, 'the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(member_state_representative/2, 'representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(observer/2, 'entity participating as observer in Board meetings', 'celex:32024R1689/oj#art_65').
declared(attends_without_voting/2, 'entity attending Board meetings without taking part in votes', 'celex:32024R1689/oj#art_65').
declared(invited_to_meetings/2, 'entity invited to Board meetings on a case by case basis', 'celex:32024R1689/oj#art_65').
declared(designated_for_period/3, 'representative designated for a period with possible renewal', 'celex:32024R1689/oj#art_65').
declared(relevant_competences_and_powers/2, 'representative has relevant competences and powers in Member State', 'celex:32024R1689/oj#art_65').
declared(single_contact_point/2, 'representative is single contact point vis-à-vis the Board', 'celex:32024R1689/oj#art_65').
declared(single_contact_point_for_stakeholders/2, 'representative is single contact point for stakeholders', 'celex:32024R1689/oj#art_65').
declared(empowered_to_facilitate_coordination/2, 'representative empowered to facilitate consistency and coordination between national competent authorities', 'celex:32024R1689/oj#art_65').
declared(adopts_rules_of_procedure/2, 'Board adopts rules of procedure by specified majority', 'celex:32024R1689/oj#art_65').
declared(rules_of_procedure/1, 'rules of procedure of the Board', 'celex:32024R1689/oj#art_65').
declared(standing_sub_group_market_surveillance/1, 'standing sub-group for market surveillance authorities', 'celex:32024R1689/oj#art_65').
declared(standing_sub_group_notifying_authorities/1, 'standing sub-group for notifying authorities', 'celex:32024R1689/oj#art_65').
declared(acts_as_adco/2, 'sub-group acts as administrative cooperation group for specified regulation', 'celex:32024R1689/oj#art_65').
declared(may_establish_sub_groups/2, 'Board may establish sub-groups for examining specific issues', 'celex:32024R1689/oj#art_65').
declared(invited_to_sub_group/2, 'entity invited to sub-group or specific meeting as observer', 'celex:32024R1689/oj#art_65').
declared(safeguards_objectivity_impartiality/1, 'Board safeguards objectivity and impartiality of its activities', 'celex:32024R1689/oj#art_65').
declared(chaired_by/2, 'Board chaired by a representative of the Member States', 'celex:32024R1689/oj#art_65').
declared(provides_secretariat/2, 'entity provides secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(convenes_meetings/2, 'entity convenes meetings upon request of the Chair', 'celex:32024R1689/oj#art_65').
declared(prepares_agenda/2, 'entity prepares agenda in accordance with tasks and rules of procedure', 'celex:32024R1689/oj#art_65').
european_ai_board(board).
member_state_representative(board, R) :-
    member_state(M),
    designated_representative(M, R, board).
observer(board, edps) :-
    european_data_protection_supervisor(edps).
attends_without_voting(board, ai_office) :-
    ai_office(ai_office).
invited_to_meetings(board, E) :-
    national_authority(E).
invited_to_meetings(board, E) :-
    union_authority(E).
invited_to_meetings(board, E) :-
    body(E).
invited_to_meetings(board, E) :-
    expert(E).
designated_for_period(R, years(3), renewable_once) :-
    member_state_representative(board, R).
relevant_competences_and_powers(R, M) :-
    member_state_representative(board, R),
    member_state(M),
    designated_by(M, R),
    has_competences_and_powers(R, M),
    contributes_to_tasks(R, board_tasks).
single_contact_point(R, board) :-
    member_state_representative(board, R).
single_contact_point_for_stakeholders(R, stakeholders) :-
    member_state_representative(board, R),
    member_states_needs_appropriate(M).
empowered_to_facilitate_coordination(R, M) :-
    member_state_representative(board, R),
    member_state(M),
    designated_by(M, R),
    facilitates_consistency_and_coordination(R, national_competent_authorities(M)),
    collects_relevant_data_and_information(R, purpose(fulfilling_tasks_on_board)).
adopts_rules_of_procedure(board, two_thirds_majority) :-
    designated_representatives_member_states(board, Representatives),
    adopts_by_majority(Representatives, rules_of_procedure(board), two_thirds).
rules_of_procedure(board) :-
    adopts_rules_of_procedure(board, _).
standing_sub_group_market_surveillance(sub_group_market_surveillance).
standing_sub_group_notifying_authorities(sub_group_notifying_authorities).
acts_as_adco(sub_group_market_surveillance, regulation('celex:32024R1689/oj')) :-
    standing_sub_group_market_surveillance(sub_group_market_surveillance),
    meaning(administrative_cooperation_group, 'celex:32019R1020/oj#art_30').
may_establish_sub_groups(board, S) :-
    standing(S),
    sub_group(S),
    purpose(examining_specific_issues, S).
may_establish_sub_groups(board, S) :-
    temporary(S),
    sub_group(S),
    purpose(examining_specific_issues, S).
invited_to_sub_group(S, advisory_forum_representatives) :-
    may_establish_sub_groups(board, S),
    advisory_forum(advisory_forum),
    referred_to_in('celex:32024R1689/oj#art_67', advisory_forum),
    invited_as_observers(advisory_forum_representatives, S).
safeguards_objectivity_impartiality(board).
chaired_by(board, R) :-
    member_state_representative(board, R).
provides_secretariat(board, ai_office) :-
    ai_office(ai_office).
convenes_meetings(board, ai_office) :-
    ai_office(ai_office),
    request_of(chair, convene).
prepares_agenda(board, ai_office) :-
    ai_office(ai_office),
    accordance_with(tasks(board, 'celex:32024R1689/oj'), agenda),
    rules_of_procedure(board).
provenance(european_ai_board/1, 'celex:32024R1689/oj#art_65').
provenance(member_state_representative/2, 'celex:32024R1689/oj#art_65').
provenance(observer/2, 'celex:32024R1689/oj#art_65').
provenance(attends_without_voting/2, 'celex:32024R1689/oj#art_65').
provenance(invited_to_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(designated_for_period/3, 'celex:32024R1689/oj#art_65').
provenance(relevant_competences_and_powers/2, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point/2, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point_for_stakeholders/2, 'celex:32024R1689/oj#art_65').
provenance(empowered_to_facilitate_coordination/2, 'celex:32024R1689/oj#art_65').
provenance(adopts_rules_of_procedure/2, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(standing_sub_group_market_surveillance/1, 'celex:32024R1689/oj#art_65').
provenance(standing_sub_group_notifying_authorities/1, 'celex:32024R1689/oj#art_65').
provenance(acts_as_adco/2, 'celex:32024R1689/oj#art_65').
provenance(may_establish_sub_groups/2, 'celex:32024R1689/oj#art_65').
provenance(invited_to_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(safeguards_objectivity_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(chaired_by/2, 'celex:32024R1689/oj#art_65').
provenance(provides_secretariat/2, 'celex:32024R1689/oj#art_65').
provenance(convenes_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(prepares_agenda/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(may_advise_and_assist/2, 'Board may advise and assist specified entities', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_coordination/1, 'Board may contribute to coordination among national competent authorities', 'celex:32024R1689/oj#art_66').
declared(may_support_joint_activities/1, 'Board may support joint activities of market surveillance authorities', 'celex:32024R1689/oj#art_66').
declared(may_collect_and_share_expertise/1, 'Board may collect and share technical and regulatory expertise and best practices', 'celex:32024R1689/oj#art_66').
declared(may_provide_advice_on_implementation/1, 'Board may provide advice on implementation of the regulation', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_harmonisation/1, 'Board may contribute to harmonisation of administrative practices', 'celex:32024R1689/oj#art_66').
declared(may_issue_recommendations/1, 'Board may issue recommendations and written opinions', 'celex:32024R1689/oj#art_66').
declared(may_support_ai_literacy/1, 'Board may support Commission in promoting AI literacy', 'celex:32024R1689/oj#art_66').
declared(may_facilitate_common_criteria/1, 'Board may facilitate development of common criteria', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_union_bodies/1, 'Board may cooperate with other Union institutions, bodies, offices and agencies', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_international_cooperation/1, 'Board may contribute to effective cooperation with third countries and international organisations', 'celex:32024R1689/oj#art_66').
declared(may_assist_expertise_development/1, 'Board may assist in developing organisational and technical expertise', 'celex:32024R1689/oj#art_66').
declared(may_assist_sandboxes/1, 'Board may assist AI Office in supporting national competent authorities on AI regulatory sandboxes', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_guidance/1, 'Board may contribute to and provide advice on development of guidance documents', 'celex:32024R1689/oj#art_66').
declared(may_advise_international_matters/1, 'Board may advise Commission on international matters on AI', 'celex:32024R1689/oj#art_66').
declared(may_provide_opinions_on_alerts/1, 'Board may provide opinions on qualified alerts regarding general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_receive_opinions/1, 'Board may receive opinions by Member States on qualified alerts and national experiences', 'celex:32024R1689/oj#art_66').
may_advise_and_assist(board, commission).
may_advise_and_assist(board, member_states).
may_contribute_to_coordination(board) :-
    national_competent_authority(_),
    responsible_for_application(_).
may_support_joint_activities(board) :-
    market_surveillance_authority(_),
    cooperation_agreement(_),
    subject_to_agreement(_).
may_collect_and_share_expertise(board).
may_provide_advice_on_implementation(board) :-
    enforcement_rules_general_purpose_ai_models(_).
may_contribute_to_harmonisation(board) :-
    derogation_from_conformity_assessment_procedures(_),
    functioning_of_ai_regulatory_sandboxes(_),
    testing_in_real_world_conditions(_).
may_issue_recommendations(board) :-
    request(commission, board);
    own_initiative(board).
may_support_ai_literacy(board) :-
    ai_literacy(_),
    public_awareness(_).
may_facilitate_common_criteria(board) :-
    market_operator(_),
    competent_authority(_),
    relevant_concepts(_).
may_cooperate_with_union_bodies(board) :-
    union_institution(_),
    union_body(_),
    union_office(_),
    union_agency(_).
may_contribute_to_international_cooperation(board) :-
    competent_authority_third_country(_),
    international_organisation(_).
may_assist_expertise_development(board) :-
    national_competent_authority(_),
    commission(_),
    training_needs_assessment(_).
may_assist_sandboxes(board) :-
    ai_office(_),
    national_competent_authority(_),
    ai_regulatory_sandbox(_).
may_contribute_to_guidance(board).
may_advise_international_matters(board) :-
    commission(_),
    international_matters(ai).
may_provide_opinions_on_alerts(board) :-
    qualified_alert(_),
    general_purpose_ai_model(_).
may_receive_opinions(board) :-
    member_state(_),
    qualified_alert(_),
    general_purpose_ai_model(_),
    national_experiences(_),
    monitoring_and_enforcement(_),
    ai_system(_),
    integrates_general_purpose_ai_model(_).
provenance(may_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/1, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions/1, 'celex:32024R1689/oj#art_66').
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
declared(member_of_advisory_forum/1, 'member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(co_chair_of_advisory_forum/1, 'co-chair of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(permanent_member_of_advisory_forum/1, 'permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(sub_group_of_advisory_forum/1, 'sub-group established by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(annual_report_of_advisory_forum/1, 'annual report prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
advisory_forum(advisory_forum).
must_provide_technical_expertise(advisory_forum, board_and_commission).
must_provide_technical_expertise(advisory_forum, tasks_under_regulation).
must_contribute_to_tasks(advisory_forum, board).
must_contribute_to_tasks(advisory_forum, commission).
balanced_membership(advisory_forum) :-
    represents_stakeholders(advisory_forum, industry),
    represents_stakeholders(advisory_forum, start_ups),
    represents_stakeholders(advisory_forum, smes),
    represents_stakeholders(advisory_forum, civil_society),
    represents_stakeholders(advisory_forum, academia).
balanced_commercial_interests(advisory_forum) :-
    commercial_interests_represented(advisory_forum),
    non_commercial_interests_represented(advisory_forum).
balanced_sme_interests(advisory_forum) :-
    commercial_interests_represented(advisory_forum),
    smes_represented(advisory_forum),
    other_undertakings_represented(advisory_forum).
must_appoint(commission, member_of_advisory_forum(M)) :-
    stakeholder(M),
    recognised_expertise(M, field_of_ai).
term_of_office(member_of_advisory_forum(M), years(2)) :-
    member_of_advisory_forum(M).
may_extend_term(member_of_advisory_forum(M), years(Extension)) :-
    member_of_advisory_forum(M),
    Extension =< 4.
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).
must_draw_up(advisory_forum, rules_of_procedure(advisory_forum)).
must_elect(advisory_forum, co_chair_of_advisory_forum(C)) :-
    member_of_advisory_forum(C),
    balanced_membership(advisory_forum).
term_of_office(co_chair_of_advisory_forum(C), years(2)) :-
    co_chair_of_advisory_forum(C).
renewable_once(co_chair_of_advisory_forum(C)) :-
    co_chair_of_advisory_forum(C).
must_hold_meetings(advisory_forum, at_least(twice_per_year)).
may_invite(advisory_forum, expert(E)) :-
    expert(E).
may_invite(advisory_forum, stakeholder(S)) :-
    stakeholder(S).
may_prepare(advisory_forum, opinion(O)) :-
    requested_by_board_or_commission(advisory_forum).
may_prepare(advisory_forum, recommendation(R)) :-
    requested_by_board_or_commission(advisory_forum).
may_prepare(advisory_forum, written_contribution(W)) :-
    requested_by_board_or_commission(advisory_forum).
requested_by_board_or_commission(advisory_forum) :-
    requested_by(board, advisory_forum).
requested_by_board_or_commission(advisory_forum) :-
    requested_by(commission, advisory_forum).
may_establish(advisory_forum, sub_group_of_advisory_forum(G)) :-
    appropriate_for_examining_questions(G),
    related_to_objectives(G, regulation).
must_prepare(advisory_forum, annual_report_of_advisory_forum(R)) :-
    annual_report_of_advisory_forum(R).
must_make_publicly_available(advisory_forum, annual_report_of_advisory_forum(R)) :-
    annual_report_of_advisory_forum(R).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_provide_technical_expertise/2, 'celex:32024R1689/oj#art_67').
provenance(must_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(balanced_membership/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_commercial_interests/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_sme_interests/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(may_extend_term/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite/2, 'celex:32024R1689/oj#art_67').
provenance(may_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(requested_by_board_or_commission/1, 'celex:32024R1689/oj#art_67').
provenance(may_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').
references('celex:32024R1689/oj#art_67/par_2', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_68').
declared(expert/1, 'expert on the scientific panel', 'celex:32024R1689/oj#art_68').
declared(task_support_ai_office/2, 'task supporting the AI Office', 'celex:32024R1689/oj#art_68').
declared(task_support_market_surveillance/2, 'task supporting market surveillance authorities', 'celex:32024R1689/oj#art_68').
declared(task_support_cross_border/2, 'task supporting cross-border market surveillance activities', 'celex:32024R1689/oj#art_68').
declared(task_support_safeguard_procedure/2, 'task supporting Union safeguard procedure', 'celex:32024R1689/oj#art_68').
declared(alert_systemic_risk/2, 'alert regarding possible systemic risks of general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(contribute_evaluation_tools/2, 'contribute to development of evaluation tools and methodologies', 'celex:32024R1689/oj#art_68').
declared(advise_classification_systemic_risk/2, 'provide advice on classification of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_68').
declared(advise_classification_general/2, 'provide advice on classification of various general-purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(contribute_tools_templates/2, 'contribute to development of tools and templates', 'celex:32024R1689/oj#art_68').
declared(independence_from_provider/1, 'independence from any provider of AI systems or general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(diligence_accuracy_objectivity/1, 'ability to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(particular_expertise_ai/1, 'particular expertise and competence in the field of AI', 'celex:32024R1689/oj#art_68').
declared(impartiality_and_objectivity/1, 'perform tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(ensure_confidentiality/1, 'ensure confidentiality of information and data', 'celex:32024R1689/oj#art_68').
declared(no_external_instructions/1, 'neither seek nor take instructions from anyone', 'celex:32024R1689/oj#art_68').
declared(declaration_of_interests/1, 'declaration of interests drawn up by expert', 'celex:32024R1689/oj#art_68').
declared(made_publicly_available/1, 'made publicly available', 'celex:32024R1689/oj#art_68').
declared(manage_conflicts_of_interest/1, 'systems and procedures to manage and prevent potential conflicts of interest', 'celex:32024R1689/oj#art_68').
declared(fair_gender_representation/1, 'fair gender representation', 'celex:32024R1689/oj#art_68').
declared(fair_geographical_representation/1, 'fair geographical representation', 'celex:32024R1689/oj#art_68').
declared(implementing_act_scientific_panel/1, 'implementing act establishing scientific panel', 'celex:32024R1689/oj#art_68').
must_adopt_implementing_acts(commission, establishment_of(scientific_panel)) :-
    purpose_support_enforcement(scientific_panel).
purpose_support_enforcement(scientific_panel).
scientific_panel(S) :-
    implementing_act_scientific_panel(S).
expert(E) :-
    scientific_panel(S),
    selected_by(E, commission),
    up_to_date_scientific_technical_expertise(E, ai),
    particular_expertise_ai(E),
    independence_from_provider(E),
    diligence_accuracy_objectivity(E).
fair_gender_and_geographical_representation(S) :-
    scientific_panel(S),
    fair_gender_representation(S),
    fair_geographical_representation(S).
determine_number_of_experts(commission, S) :-
    scientific_panel(S),
    in_consultation_with(commission, board).
task_support_ai_office(S, alert_systemic_risk(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M),
    alert_systemic_risk(S, M).
task_support_ai_office(S, contribute_evaluation_tools(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M).
task_support_ai_office(S, advise_classification_systemic_risk(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M),
    systemic_risk_present(M).
task_support_ai_office(S, advise_classification_general(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M).
task_support_ai_office(S, contribute_tools_templates) :-
    scientific_panel(S).
task_support_market_surveillance(S, Authority) :-
    scientific_panel(S),
    market_surveillance_authority(Authority),
    at_request(Authority).
task_support_cross_border(S, Activity) :-
    scientific_panel(S),
    cross_border_market_surveillance(Activity).
task_support_safeguard_procedure(S, Procedure) :-
    scientific_panel(S),
    union_safeguard_procedure(Procedure).
impartiality_and_objectivity(E) :-
    expert(E).
ensure_confidentiality(E) :-
    expert(E).
no_external_instructions(E) :-
    expert(E).
declaration_of_interests(E) :-
    expert(E).
made_publicly_available(declaration_of_interests(E)) :-
    expert(E).
manage_conflicts_of_interest(ai_office) :-
    scientific_panel(_S).
implementing_act_scientific_panel(S) :-
    scientific_panel(S),
    includes_provisions_on(S, conditions_for_alerts),
    includes_provisions_on(S, procedures_for_alerts),
    includes_provisions_on(S, detailed_arrangements_for_alerts),
    includes_provisions_on(S, request_assistance_ai_office).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(task_support_ai_office/2, 'celex:32024R1689/oj#art_68').
provenance(task_support_market_surveillance/2, 'celex:32024R1689/oj#art_68').
provenance(task_support_cross_border/2, 'celex:32024R1689/oj#art_68').
provenance(task_support_safeguard_procedure/2, 'celex:32024R1689/oj#art_68').
provenance(alert_systemic_risk/2, 'celex:32024R1689/oj#art_68').
provenance(contribute_evaluation_tools/2, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_systemic_risk/2, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_general/2, 'celex:32024R1689/oj#art_68').
provenance(contribute_tools_templates/2, 'celex:32024R1689/oj#art_68').
provenance(independence_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(diligence_accuracy_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_ai/1, 'celex:32024R1689/oj#art_68').
provenance(impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(no_external_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(made_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(manage_conflicts_of_interest/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_and_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_representation/1, 'celex:32024R1689/oj#art_68').
provenance(fair_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_68').
provenance(purpose_support_enforcement/1, 'celex:32024R1689/oj#art_68').
provenance(determine_number_of_experts/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(may_call_upon_experts/2, 'Member States may call upon experts of the scientific panel', 'celex:32024R1689/oj#art_69').
declared(fees_required/1, 'Member States may be required to pay fees for expert advice', 'celex:32024R1689/oj#art_69').
declared(must_facilitate_access/2, 'Commission shall facilitate timely access to experts by Member States', 'celex:32024R1689/oj#art_69').
may_call_upon_experts(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).
fees_required(MemberState) :-
    may_call_upon_experts(MemberState, _Expert).
must_facilitate_access(commission, MemberState) :-
    member_state(MemberState),
    may_call_upon_experts(MemberState, _Expert).
provenance(may_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(fees_required/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_designate_competent_authorities/1, 'Member State shall establish or designate national competent authorities', 'celex:32024R1689/oj#art_70').
declared(must_communicate_authority_identity/2, 'Member State shall communicate identity and tasks of authorities to Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_contact_information_public/1, 'Member State shall make publicly available information on how competent authorities and single points of contact can be contacted', 'celex:32024R1689/oj#art_70').
declared(must_designate_single_point_of_contact/2, 'Member State shall designate a market surveillance authority to act as single point of contact and notify Commission', 'celex:32024R1689/oj#art_70').
declared(must_ensure_adequate_resources/1, 'Member State shall ensure national competent authorities are provided with adequate resources', 'celex:32024R1689/oj#art_70').
declared(must_ensure_cybersecurity/1, 'national competent authorities shall take appropriate measures to ensure adequate cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_report_resources/2, 'Member State shall report to Commission on status of financial and human resources', 'celex:32024R1689/oj#art_70').
declared(may_provide_guidance/2, 'national competent authorities may provide guidance and advice on implementation', 'celex:32024R1689/oj#art_70').
must_designate_competent_authorities(MemberState) :-
    member_state(MemberState),
    at_least_one_notifying_authority_designated(MemberState),
    at_least_one_market_surveillance_authority_designated(MemberState).
must_communicate_authority_identity(MemberState, Commission) :-
    member_state(MemberState),
    union_institution(Commission),
    notifying_authority_designated(MemberState, Authority),
    market_surveillance_authority_designated(MemberState, Authority2),
    (tasks_of_authority(Authority, Tasks); tasks_of_authority(Authority2, Tasks)),
    (subsequent_changes_to_authority(Authority); subsequent_changes_to_authority(Authority2)).
must_make_contact_information_public(MemberState) :-
    member_state(MemberState),
    contact_information(competent_authorities_and_single_points_of_contact, Info),
    electronic_communication_means(Info),
    deadline(Info, date(2025, 8, 2)).
must_designate_single_point_of_contact(MemberState, Commission) :-
    member_state(MemberState),
    union_institution(Commission),
    market_surveillance_authority_designated(MemberState, Authority),
    single_point_of_contact_for(Authority, 'celex:32024R1689/oj'),
    must_notify(Commission, identity(single_point_of_contact(Authority))).
must_ensure_adequate_resources(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    under_authority_of(MemberState, Authority),
    adequate_technical_resources(Authority),
    adequate_financial_resources(Authority),
    adequate_human_resources(Authority),
    adequate_infrastructure(Authority),
    sufficient_personnel_permanently_available(Authority),
    competences_include(Authority, understanding(ai_technologies)),
    competences_include(Authority, understanding(data_computing)),
    competences_include(Authority, understanding(personal_data_protection)),
    competences_include(Authority, understanding(cybersecurity)),
    competences_include(Authority, understanding(fundamental_rights)),
    competences_include(Authority, understanding(health_and_safety_risks)),
    competences_include(Authority, knowledge(existing_standards)),
    competences_include(Authority, knowledge(legal_requirements)).
must_ensure_cybersecurity(Authority) :-
    national_competent_authority(Authority),
    appropriate_measures_taken(Authority, cybersecurity).
must_report_resources(MemberState, Commission) :-
    member_state(MemberState),
    union_institution(Commission),
    report_content(resources_status(financial_and_human)),
    assessment_of_adequacy_included,
    deadline(report, date(2025, 8, 2)),
    frequency(every_two_years).
may_provide_guidance(Authority, Target) :-
    national_competent_authority(Authority),
    sme_or_start_up(Target),
    guidance_on(implementation_of('celex:32024R1689/oj')).
provenance(must_designate_competent_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authority_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_public/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_resources/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resources/2, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_set_up_and_maintain/2, 'Commission shall set up and maintain EU database', 'celex:32024R1689/oj#art_71').
declared(eu_database/1, 'EU database for high-risk AI systems', 'celex:32024R1689/oj#art_71').
declared(registered_with_information_specified/1, 'registered with information specified', 'celex:32024R1689/oj#art_71').
declared(must_enter_data/2, 'provider or authorised representative shall enter data into EU database', 'celex:32024R1689/oj#art_71').
declared(must_enter_data_deployer/2, 'deployer shall enter data into EU database', 'celex:32024R1689/oj#art_71').
declared(publicly_accessible_database_information/1, 'information in EU database shall be publicly accessible', 'celex:32024R1689/oj#art_71').
declared(accessible_only_to_authorities/1, 'information accessible only to market surveillance authorities and Commission', 'celex:32024R1689/oj#art_71').
declared(controller_of_database/1, 'controller of EU database', 'celex:32024R1689/oj#art_71').
declared(must_provide_support/2, 'Commission shall provide technical and administrative support', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain(commission, eu_database_for_high_risk_ai_systems) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
must_enter_data(Provider, data_for_high_risk_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    registered_with_information_specified(S).
must_enter_data(AuthorisedRepresentative, data_for_high_risk_system(S)) :-
    authorised_representative(AuthorisedRepresentative),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    registered_with_information_specified(S).
must_enter_data_deployer(Deployer, data_for_deployer_system(S)) :-
    deployer(Deployer),
    deployer_public_authority(Deployer),
    high_risk_ai_system(S),
    registered_with_information_specified(S).
publicly_accessible_database_information(S) :-
    high_risk_ai_system(S),
    registered_with_information_specified(S),
    \+ registered_under_art_49_par_4(S),
    \+ registered_under_art_60_par_4_c(S).
accessible_only_to_authorities(S) :-
    high_risk_ai_system(S),
    registered_with_information_specified(S),
    (registered_under_art_60(S) ; registered_under_art_49_par_4(S) ; registered_under_art_60_par_4_c(S)),
    \+ provider_consent_public(S).
accessible_only_to_authorities(S) :-
    high_risk_ai_system(S),
    registered_with_information_specified(S),
    registered_under_art_60(S),
    provider_consent_public(S).
controller_of_database(commission).
must_provide_support(commission, Provider) :-
    provider(Provider).
must_provide_support(commission, ProspectiveProvider) :-
    prospective_provider(ProspectiveProvider).
must_provide_support(commission, Deployer) :-
    deployer(Deployer).
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_deployer/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_database_information/1, 'celex:32024R1689/oj#art_71').
provenance(accessible_only_to_authorities/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of_database/1, 'celex:32024R1689/oj#art_71').
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
declared(must_establish_post_market_monitoring_system/2, 'provider must establish and document post-market monitoring system', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_system_established/2, 'post-market monitoring system established by provider for high-risk AI system', 'celex:32024R1689/oj#art_72').
declared(proportionate_to_nature_and_risks/2, 'post-market monitoring system proportionate to nature of AI technologies and risks', 'celex:32024R1689/oj#art_72').
declared(collects_performance_data/2, 'post-market monitoring system actively and systematically collects relevant data on performance', 'celex:32024R1689/oj#art_72').
declared(allows_continuous_compliance_evaluation/2, 'post-market monitoring system allows provider to evaluate continuous compliance with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_72').
declared(includes_interaction_analysis/2, 'post-market monitoring includes analysis of interaction with other AI systems where relevant', 'celex:32024R1689/oj#art_72').
declared(exempt_sensitive_operational_data_law_enforcement/2, 'obligation does not cover sensitive operational data of law enforcement deployers', 'celex:32024R1689/oj#art_72').
declared(based_on_post_market_monitoring_plan/2, 'post-market monitoring system based on post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(part_of_technical_documentation/2, 'post-market monitoring plan is part of technical documentation', 'celex:32024R1689/oj#art_72').
declared(commission_adopts_implementing_act_template/1, 'Commission shall adopt implementing act establishing template for post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(integration_choice_for_existing_systems/2, 'provider may integrate elements into existing post-market monitoring systems under Union harmonisation legislation', 'celex:32024R1689/oj#art_72').
declared(achieves_equivalent_level_of_protection/2, 'integration achieves equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(financial_institution_subject_to_internal_governance_requirements/1, 'financial institution subject to Union financial services law internal governance requirements', 'celex:32024R1689/oj#art_72').
must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
post_market_monitoring_system_established(P, S) :-
    must_establish_post_market_monitoring_system(P, S),
    proportionate_to_nature_and_risks(P, S).
proportionate_to_nature_and_risks(_P, S) :-
    high_risk_ai_system(S).
collects_performance_data(P, S) :-
    post_market_monitoring_system_established(P, S),
    high_risk_ai_system(S).
allows_continuous_compliance_evaluation(P, S) :-
    post_market_monitoring_system_established(P, S),
    requirements_in_chapter_3_section_2(S).
includes_interaction_analysis(P, S) :-
    post_market_monitoring_system_established(P, S),
    relevant_interaction_with_other_systems(S).
relevant_interaction_with_other_systems(_S).
exempt_sensitive_operational_data_law_enforcement(P, S) :-
    post_market_monitoring_system_established(P, S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data_law_enforcement(D).
based_on_post_market_monitoring_plan(P, S) :-
    post_market_monitoring_system_established(P, S).
part_of_technical_documentation(P, S) :-
    based_on_post_market_monitoring_plan(P, S),
    technical_documentation(S).
commission_adopts_implementing_act_template(commission) :-
    ai_office(commission).
integration_choice_for_existing_systems(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    existing_post_market_monitoring_system_under_legislation(S),
    achieves_equivalent_level_of_protection(P, S).
achieves_equivalent_level_of_protection(_P, _S).
integration_choice_for_existing_systems(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    financial_institution_subject_to_internal_governance_requirements(P),
    existing_post_market_monitoring_system_under_legislation(S),
    achieves_equivalent_level_of_protection(P, S).
existing_post_market_monitoring_system_under_legislation(_S).
financial_institution_subject_to_internal_governance_requirements(P) :-
    provider(P).
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_established/2, 'celex:32024R1689/oj#art_72').
provenance(proportionate_to_nature_and_risks/2, 'celex:32024R1689/oj#art_72').
provenance(collects_performance_data/2, 'celex:32024R1689/oj#art_72').
provenance(allows_continuous_compliance_evaluation/2, 'celex:32024R1689/oj#art_72').
provenance(includes_interaction_analysis/2, 'celex:32024R1689/oj#art_72').
provenance(relevant_interaction_with_other_systems/1, 'celex:32024R1689/oj#art_72').
provenance(exempt_sensitive_operational_data_law_enforcement/2, 'celex:32024R1689/oj#art_72').
provenance(based_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72').
provenance(part_of_technical_documentation/2, 'celex:32024R1689/oj#art_72').
provenance(commission_adopts_implementing_act_template/1, 'celex:32024R1689/oj#art_72').
provenance(integration_choice_for_existing_systems/2, 'celex:32024R1689/oj#art_72').
provenance(achieves_equivalent_level_of_protection/2, 'celex:32024R1689/oj#art_72').
provenance(existing_post_market_monitoring_system_under_legislation/1, 'celex:32024R1689/oj#art_72').
provenance(financial_institution_subject_to_internal_governance_requirements/1, 'celex:32024R1689/oj#art_72').
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
declared(must_report_serious_incident_to_authority/3, 'provider must report serious incident to market surveillance authority of Member State where incident occurred', 'celex:32024R1689/oj#art_73').
declared(report_deadline/3, 'deadline for reporting serious incident', 'celex:32024R1689/oj#art_73').
declared(report_period/3, 'period for reporting taking account of severity', 'celex:32024R1689/oj#art_73').
declared(must_perform_investigation/2, 'provider must perform investigation after reporting serious incident', 'celex:32024R1689/oj#art_73').
declared(must_cooperate_during_investigation/2, 'provider must cooperate with competent authorities during investigation', 'celex:32024R1689/art_73').
declared(must_not_alter_system_before_informing/2, 'provider must not alter AI system before informing competent authorities', 'celex:32024R1689/oj#art_73').
declared(must_inform_national_authorities/2, 'market surveillance authority must inform national public authorities or bodies', 'celex:32024R1689/oj#art_73').
declared(must_develop_guidance/2, 'Commission must develop dedicated guidance for compliance', 'celex:32024R1689/oj#art_73').
declared(must_take_measures_within_seven_days/2, 'market surveillance authority must take measures within seven days of notification', 'celex:32024R1689/oj#art_73').
declared(limited_notification_criteria/2, 'notification limited to serious incidents defined in Article 3 point 49(c)', 'celex:32024R1689/oj#art_73').
declared(must_notify_commission/2, 'national competent authority must notify Commission of serious incident', 'celex:32024R1689/oj#art_73').
must_report_serious_incident_to_authority(P, S, A) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(I),
    market_surveillance_authority(A).
must_report_serious_incident(P, S) :-
    must_report_serious_incident_to_authority(P, S, _A).
report_deadline(P, S, days(15)) :-
    must_report_serious_incident(P, S),
    \+ widespread_infringement_applies(S),
    \+ death_occurred(S),
    aware_of_incident(P, S).
report_period(P, S, I) :-
    report_deadline(P, S, _D),
    serious_incident(I),
    severity_of_incident(I, _).
report_deadline(P, S, days(2)) :-
    must_report_serious_incident(P, S),
    (widespread_infringement_applies(S) ; serious_incident_type_b(S)),
    aware_of_incident(P, S).
widespread_infringement_applies(S) :-
    high_risk_ai_system(S),
    widespread_infringement(S).
serious_incident_type_b(S) :-
    high_risk_ai_system(S),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
report_deadline(P, S, days(10)) :-
    must_report_serious_incident(P, S),
    death_occurred(S),
    aware_of_incident(P, S).
death_occurred(S) :-
    high_risk_ai_system(S),
    serious_incident(I),
    incident_involves_death(I).
permitted_incomplete_initial_report(P, S) :-
    must_report_serious_incident(P, S),
    necessary_for_timely_reporting(P, S).
necessary_for_timely_reporting(P, S) :-
    must_report_serious_incident(P, S),
    \+ complete_report_ready(P, S).
must_perform_investigation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reported_serious_incident(P, S).
must_perform_investigation(P, S) :-
    must_perform_investigation(P, S),
    risk_assessment_of_incident(P, S),
    corrective_action(P, S).
must_cooperate_during_investigation(P, S) :-
    must_perform_investigation(P, S),
    competent_authority(A),
    cooperate_with(P, A).
must_not_alter_system_before_informing(P, S) :-
    must_perform_investigation(P, S),
    ai_system(S),
    \+ informed_competent_authorities_of_alteration(P, S).
must_inform_national_authorities(A, I) :-
    market_surveillance_authority(A),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c'),
    received_notification(A, I).
must_develop_guidance(commission, serious_incident_reporting) :-
    deadline_for_guidance(years(2025), months(8), days(2)).
must_take_measures_within_seven_days(A, I) :-
    market_surveillance_authority(A),
    serious_incident(I),
    received_notification(A, I).
limited_notification_criteria(S, I) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    placed_on_market_or_put_into_service(S),
    subject_to_equivalent_reporting_obligations(S),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
limited_notification_criteria(S, I) :-
    high_risk_ai_system(S),
    ai_safety_component(S),
    covered_by_medical_device_regulation(S),
    serious_incident(I),
    incident_type(I, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
covered_by_medical_device_regulation(S) :-
    product_covered_by_harmonisation_legislation(S).
must_notify_commission(A, I) :-
    national_competent_authority(A),
    serious_incident(I),
    received_notification(A, I).
aware_of_incident(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(I),
    (established_causal_link(P, S, I) ; reasonable_likelihood_of_causal_link(P, S, I)).
aware_of_incident(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident(I),
    deployer_becomes_aware(D, S, I).
provenance(must_report_serious_incident_to_authority/3, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(report_deadline/3, 'celex:32024R1689/oj#art_73').
provenance(report_period/3, 'celex:32024R1689/oj#art_73').
provenance(widespread_infringement_applies/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_type_b/1, 'celex:32024R1689/oj#art_73').
provenance(death_occurred/1, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(necessary_for_timely_reporting/2, 'celex:32024R1689/oj#art_73').
provenance(must_perform_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_during_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_system_before_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_national_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_measures_within_seven_days/2, 'celex:32024R1689/oj#art_73').
provenance(limited_notification_criteria/2, 'celex:32024R1689/oj#art_73').
provenance(covered_by_medical_device_regulation/1, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_73').
provenance(aware_of_incident/2, 'celex:32024R1689/oj#art_73').
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
declared(must_submit_annual_report/2, 'authority must submit annual report to Commission', 'celex:32024R1689/oj#art_74').
declared(must_report_prohibited_practices/2, 'authority must report prohibited practices and measures taken', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_authority_for_harmonised_product/2, 'market surveillance authority for high-risk AI system under harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(alternative_market_surveillance_authority_designated/2, 'Member State may designate alternative authority as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(sectoral_procedures_apply/1, 'sectoral procedures apply instead of Articles 79-83', 'celex:32024R1689/oj#art_74').
declared(may_exercise_powers_remotely/2, 'market surveillance authority may exercise powers remotely', 'celex:32024R1689/oj#art_74').
declared(financial_supervisory_authority/2, 'financial supervisory authority acts as market surveillance authority for financial institutions', 'celex:32024R1689/oj#art_74').
declared(alternative_authority_for_financial_institution/2, 'alternative authority may be designated for financial institution', 'celex:32024R1689/oj#art_74').
declared(must_report_to_ecb/2, 'national authority must report to European Central Bank', 'celex:32024R1689/oj#art_74').
declared(data_protection_supervisory_authority/2, 'data protection supervisory authority or other designated authority as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor acts as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/2, 'Member States shall facilitate coordination between authorities', 'celex:32024R1689/oj#art_74').
declared(may_propose_joint_investigation/2, 'authority or Commission may propose joint investigation', 'celex:32024R1689/oj#art_74').
declared(must_grant_full_access/2, 'provider must grant full access to documentation and data sets', 'celex:32024R1689/oj#art_74').
declared(must_grant_source_code_access/2, 'provider must grant access to source code upon reasoned request', 'celex:32024R1689/oj#art_74').
declared(confidentiality_obligations_apply/1, 'confidentiality obligations apply to information obtained', 'celex:32024R1689/oj#art_74').
must_submit_annual_report(Authority, competition_information) :-
    market_surveillance_authority(Authority),
    report_annually(Authority).
must_report_prohibited_practices(Authority, prohibited_practices_and_measures) :-
    market_surveillance_authority(Authority),
    report_annually(Authority).
market_surveillance_authority_for_harmonised_product(S, Authority) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    market_surveillance_authority_designated(S, Authority).
alternative_market_surveillance_authority_designated(S, AlternativeAuthority) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    member_state_designates(AlternativeAuthority),
    coordination_ensured(AlternativeAuthority, SectoralAuthority),
    market_surveillance_authority_designated(S, SectoralAuthority).
sectoral_procedures_apply(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    equivalent_protection_procedures_exist(S),
    same_objective_procedures_exist(S).
may_exercise_powers_remotely(Authority, powers(article_14_4_d_j)) :-
    market_surveillance_authority(Authority),
    effective_enforcement_required.
financial_supervisory_authority(S, FinancialAuthority) :-
    high_risk_ai_system(S),
    placed_or_put_into_service_by(_P, S),
    used_by(S, FinancialInstitution),
    regulated_by_union_financial_services_law(FinancialInstitution),
    financial_supervision_authority(FinancialInstitution, FinancialAuthority),
    direct_connection_with_financial_services(S).
alternative_authority_for_financial_institution(S, AlternativeAuthority) :-
    high_risk_ai_system(S),
    financial_supervisory_authority(S, _FinancialAuthority),
    member_state_identifies(AlternativeAuthority),
    appropriate_circumstances,
    coordination_ensured(AlternativeAuthority, FinancialAuthority).
must_report_to_ecb(Authority, prudential_information) :-
    market_surveillance_authority(Authority),
    supervises_credit_institution(Authority, Institution),
    regulated_under(Institution, 'celex:32013L0036/oj'),
    participates_in_single_supervisory_mechanism(Institution),
    information_of_prudential_interest(Information).
data_protection_supervisory_authority(S, Authority) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    used_for_purpose(S, law_enforcement_border_management_justice_democracy),
    data_protection_authority(Authority).
data_protection_supervisory_authority(S, Authority) :-
    high_risk_ai_system(S),
    (annex_3_point_6_applies(S); annex_3_point_7_applies(S); annex_3_point_8_applies(S)),
    designated_under_conditions(Authority, 'celex:32016L0680/oj#art_41-44').
european_data_protection_supervisor(UnionEntity) :-
    union_institution(UnionEntity),
    \+ court_of_justice_acting_in_judicial_capacity(UnionEntity).
must_facilitate_coordination(MemberState, coordination_between(Authority, OtherAuthority)) :-
    market_surveillance_authority(Authority),
    other_authority(OtherAuthority),
    supervises_harmonisation_legislation(OtherAuthority).
may_propose_joint_investigation(Proposer, joint_investigation(S)) :-
    (market_surveillance_authority(Proposer); Proposer = commission),
    high_risk_ai_system(S),
    serious_risk_across_member_states(S),
    specific_category(S).
must_grant_full_access(Provider, access_to(documentation_and_datasets(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    market_surveillance_authority_requests(Authority, Provider, S),
    limited_to_necessary_tasks(Authority).
must_grant_source_code_access(Provider, access_to(source_code(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    reasoned_request(Authority, Provider, source_code(S)),
    access_necessary_for_conformity_assessment(S),
    testing_or_auditing_exhausted_or_insufficient(S).
confidentiality_obligations_apply(Information) :-
    obtained_by_market_surveillance_authority(Information).
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_harmonised_product/2, 'celex:32024R1689/oj#art_74').
provenance(alternative_market_surveillance_authority_designated/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(financial_supervisory_authority/2, 'celex:32024R1689/oj#art_74').
provenance(alternative_authority_for_financial_institution/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(data_protection_supervisory_authority/2, 'celex:32024R1689/oj#art_74').
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_investigation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/2, 'celex:32024R1689/oj#art_74').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_74').
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
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
report_annually(_Authority).
appropriate_circumstances.
member_state_designates(_AlternativeAuthority).
member_state_identifies(_AlternativeAuthority).
coordination_ensured(_AlternativeAuthority, _SectoralAuthority).
equivalent_protection_procedures_exist(_S).
same_objective_procedures_exist(_S).
effective_enforcement_required.
regulated_by_union_financial_services_law(_FinancialInstitution).
financial_supervision_authority(_FinancialInstitution, _FinancialAuthority).
direct_connection_with_financial_services(_S).
supervises_credit_institution(_Authority, _Institution).
regulated_under(_Institution, _Legislation).
participates_in_single_supervisory_mechanism(_Institution).
information_of_prudential_interest(_Information).
used_for_purpose(_S, _Purpose).
designated_under_conditions(_Authority, _Legislation).
court_of_justice_acting_in_judicial_capacity(_UnionEntity).
other_authority(_OtherAuthority).
supervises_harmonisation_legislation(_OtherAuthority).
serious_risk_across_member_states(_S).
specific_category(_S).
market_surveillance_authority_requests(_Authority, _Provider, _S).
limited_to_necessary_tasks(_Authority).
reasoned_request(_Authority, _Provider, source_code(_S)).
access_necessary_for_conformity_assessment(_S).
testing_or_auditing_exhausted_or_insufficient(_S).
obtained_by_market_surveillance_authority(_Information).
annex_3_point_8_applies(_S).

% ==== celex:32024R1689/oj#art_75 ====
declared(must_cooperate_with_ai_office/2, 'market surveillance authority must cooperate with AI Office for compliance evaluation', 'celex:32024R1689/oj#art_75').
declared(may_submit_reasoned_request/2, 'market surveillance authority may submit reasoned request to AI Office for information access', 'celex:32024R1689/oj#art_75').
declared(must_supply_information/3, 'AI Office must supply relevant information to requesting authority within deadline', 'celex:32024R1689/oj#art_75').
declared(has_monitoring_and_supervision_powers/2, 'AI Office has monitoring and supervision powers over AI system', 'celex:32024R1689/oj#art_75').
declared(general_purpose_ai_system_based_on_same_provider_model/1, 'AI system based on general-purpose AI model developed by same provider', 'celex:32024R1689/oj#art_75').
declared(sufficient_reason_to_consider_non_compliant/2, 'market surveillance authority has sufficient reason to consider system non-compliant', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/2, 'market surveillance authority unable to conclude investigation due to information access failure', 'celex:32024R1689/oj#art_75').
declared(unable_to_access_information/2, 'market surveillance authority unable to access information related to general-purpose AI model', 'celex:32024R1689/oj#art_75').
declared(all_appropriate_efforts_made/2, 'market surveillance authority has made all appropriate efforts to obtain information', 'celex:32024R1689/oj#art_75').
declared(information_relevant_to_non_compliance/2, 'information relevant to establishing whether high-risk AI system is non-compliant', 'celex:32024R1689/oj#art_75').
has_monitoring_and_supervision_powers(ai_office, S) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M),
    provider(P),
    developed_by(P, S),
    developed_by(P, M).
must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    deployer_can_use_directly(_D, S),
    purpose_classified_as_high_risk(Purpose),
    used_for_at_least_one_purpose(S, Purpose),
    sufficient_reason_to_consider_non_compliant(Authority, S),
    requirements_laid_down_in_act(Requirements),
    non_compliant_with(S, Requirements).
must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(Authority, S).
may_submit_reasoned_request(Authority, ai_office) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(Authority, S),
    unable_to_access_information(Authority, Info),
    related_to_general_purpose_ai_model(Info, M),
    all_appropriate_efforts_made(Authority, Info).
must_supply_information(ai_office, Authority, Info) :-
    may_submit_reasoned_request(Authority, ai_office),
    information_relevant_to_non_compliance(Info, S),
    high_risk_ai_system(S),
    within_deadline(days(30)).
must_safeguard_confidentiality(Authority, Info) :-
    market_surveillance_authority(Authority),
    obtains(Authority, Info),
    information_related_to_investigation(Info).
provenance(has_monitoring_and_supervision_powers/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(may_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_ensure_compliance/2, 'market surveillance authority must ensure testing complies with conditions', 'celex:32024R1689/oj#art_76').
declared(verifies_sandbox_compliance/2, 'market surveillance authority verifies compliance with Article 60 for sandbox testing', 'celex:32024R1689/oj#art_76').
declared(may_allow_derogation/2, 'authority may allow derogation from Article 60(4)(f) and (g) conditions', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/2, 'authority may suspend or terminate real-world testing', 'celex:32024R1689/oj#art_76').
declared(may_require_modification/2, 'authority may require modification of testing conditions', 'celex:32024R1689/oj#art_76').
declared(grounds_for_intervention/1, 'grounds for authority intervention in testing', 'celex:32024R1689/oj#art_76').
declared(decision_grounds_indicated/1, 'decision or objection indicates grounds and challenge procedure', 'celex:32024R1689/oj#art_76').
declared(must_communicate_to_other_authorities/2, 'authority must communicate grounds to other Member State authorities', 'celex:32024R1689/oj#art_76').
must_ensure_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing).
verifies_sandbox_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, Sandbox),
    ai_regulatory_sandbox(Sandbox).
may_allow_derogation(Authority, Testing) :-
    verifies_sandbox_compliance(Authority, Testing).
grounds_for_intervention(Testing) :-
    testing_in_real_world_conditions(Testing),
    serious_incident(Incident),
    informed_of(Authority, Testing, Incident),
    market_surveillance_authority(Authority).
grounds_for_intervention(Testing) :-
    testing_in_real_world_conditions(Testing),
    \+ conditions_met(Testing, art_60).
grounds_for_intervention(Testing) :-
    testing_in_real_world_conditions(Testing),
    \+ conditions_met(Testing, art_61).
may_suspend_or_terminate_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    grounds_for_intervention(Testing).
may_require_modification(Authority, Testing) :-
    market_surveillance_authority(Authority),
    grounds_for_intervention(Testing).
decision_grounds_indicated(Decision) :-
    may_suspend_or_terminate_testing(_Authority, Testing),
    decision(Decision, Testing).
decision_grounds_indicated(Objection) :-
    commission_objection(Objection).
must_communicate_to_other_authorities(Authority, Testing) :-
    may_suspend_or_terminate_testing(Authority, Testing),
    tested_in_other_member_states(Testing, OtherAuthority),
    market_surveillance_authority(OtherAuthority),
    OtherAuthority \= Authority.
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(verifies_sandbox_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_intervention/1, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(decision_grounds_indicated/1, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_to_other_authorities/2, 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(must_inform_market_surveillance_authority/2, 'authority must inform market surveillance authority of request for documentation', 'celex:32024R1689/oj#art_77').
declared(must_identify_and_publish_authorities/1, 'Member State must identify authorities and publish list', 'celex:32024R1689/oj#art_77').
declared(must_notify_list_to_commission_and_states/1, 'Member State must notify list to Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(must_keep_authority_list_up_to_date/1, 'Member State must keep list of authorities up to date', 'celex:32024R1689/oj#art_77').
declared(may_request_testing/2, 'public authority may request market surveillance authority to organise testing', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority must organise testing with involvement of requesting authority', 'celex:32024R1689/oj#art_77').
declared(documentation_access_necessary_for_mandate/3, 'access to documentation is necessary for authority to fulfil its mandate', 'celex:32024R1689/oj#art_77').
declared(documentation_insufficient_for_infringement_ascertainment/1, 'documentation is insufficient to ascertain whether infringement occurred', 'celex:32024R1689/oj#art_77').
declared(request_and_access_documentation/2, 'authority requests and accesses documentation', 'celex:32024R1689/oj#art_77').
declared(authority_supervises_fundamental_rights/1, 'authority supervises or enforces fundamental rights obligations', 'celex:32024R1689/oj#art_77').
declared(high_risk_ai_system_referred_in_annex_3/1, 'high-risk AI system referred to in Annex III', 'celex:32024R1689/oj#art_77').
request_and_access_documentation(Authority, Documentation) :-
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    high_risk_ai_system_referred_in_annex_3(S),
    documentation_created_or_maintained_under_regulation(Documentation),
    accessible_language_and_format(Documentation),
    documentation_access_necessary_for_mandate(Authority, Documentation, Jurisdiction),
    within_limits_of_jurisdiction(Authority, Jurisdiction).
must_inform_market_surveillance_authority(Authority, Request) :-
    request_and_access_documentation(Authority, Documentation),
    request(Request),
    market_surveillance_authority(Msa),
    member_state_concerned(Msa, MemberState),
    jurisdiction_of(Authority, MemberState).
must_identify_and_publish_authorities(MemberState) :-
    member_state(MemberState),
    deadline_passed(days_after(date(2024, 11, 2))),
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    publicly_available(List),
    list_of_authorities(List, MemberState).
must_notify_list_to_commission_and_states(MemberState) :-
    must_identify_and_publish_authorities(MemberState),
    list_of_authorities(List, MemberState),
    commission(C),
    other_member_state(Other),
    notified(List, C),
    notified(List, Other).
must_keep_authority_list_up_to_date(MemberState) :-
    must_identify_and_publish_authorities(MemberState),
    list_of_authorities(List, MemberState).
may_request_testing(Authority, Msa) :-
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    documentation_insufficient_for_infringement_ascertainment(Documentation),
    high_risk_ai_system_referred_in_annex_3(S),
    market_surveillance_authority(Msa),
    reasoned_request(Authority, testing(S)).
must_organise_testing(Msa, Request) :-
    may_request_testing(Authority, Msa),
    reasoned_request(Authority, testing(S)),
    high_risk_ai_system_referred_in_annex_3(S),
    technical_means(TechnicalMeans),
    testing_organised(Msa, S, TechnicalMeans),
    close_involvement_of(Authority, testing_organised(Msa, S, TechnicalMeans)),
    reasonable_time_following_request(Request, testing_organised(Msa, S, TechnicalMeans)).
confidentiality_obligations_apply(Documentation) :-
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    documentation_created_or_maintained_under_regulation(Documentation),
    obtained_by(Authority, Documentation),
    article_78_confidentiality_applies(Documentation).
provenance(request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_and_publish_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_list_to_commission_and_states/1, 'celex:32024R1689/oj#art_77').
provenance(must_keep_authority_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_ensure_confidentiality/1, 'ensure confidentiality of information and data', 'celex:32024R1689/oj#art_78/par_1').
declared(must_request_necessary_data_only/1, 'request only data strictly necessary for risk assessment and exercise of powers', 'celex:32024R1689/oj#art_78/par_2').
declared(must_implement_cybersecurity_measures/1, 'put in place adequate and effective cybersecurity measures', 'celex:32024R1689/oj#art_78/par_2').
declared(must_delete_data_when_no_longer_needed/1, 'delete data collected as soon as no longer needed', 'celex:32024R1689/oj#art_78/par_2').
declared(confidential_information_not_disclosed_without_consultation/1, 'confidential information not disclosed without prior consultation', 'celex:32024R1689/oj#art_78/par_3').
declared(technical_documentation_remains_on_premises/1, 'technical documentation remains within premises of authorities', 'celex:32024R1689/oj#art_78/par_3').
declared(market_surveillance_access_to_documentation/2, 'market surveillance authorities can access documentation upon request', 'celex:32024R1689/oj#art_78/par_3').
declared(only_cleared_staff_access_documentation/1, 'only staff with appropriate security clearance allowed access', 'celex:32024R1689/oj#art_78/par_3').
declared(may_exchange_confidential_information_with_third_countries/2, 'may exchange confidential information with third country regulatory authorities', 'celex:32024R1689/oj#art_78/par_5').
must_ensure_confidentiality(Party) :-
    (commission(Party) ; market_surveillance_authority(Party) ; notified_body(Party) ; natural_person(Party) ; legal_person(Party)),
    involved_in_application(Party, 'celex:32024R1689/oj').
must_request_necessary_data_only(Authority) :-
    authority_involved_in_application(Authority),
    data_requested(Authority, Data),
    necessary_for_risk_assessment(Data),
    necessary_for_exercise_of_powers(Data).
must_implement_cybersecurity_measures(Authority) :-
    authority_involved_in_application(Authority).
must_delete_data_when_no_longer_needed(Authority) :-
    authority_involved_in_application(Authority),
    data_collected(Authority, Data),
    \+ still_needed_for_purpose(Data).
confidential_information_not_disclosed_without_consultation(Information) :-
    exchanged_confidentially_between_national_competent_authorities(Information),
    high_risk_ai_system_used_by_sensitive_authority(System),
    disclosure_would_jeopardise_security(System),
    \+ prior_consultation_originating_authority(Information),
    \+ prior_consultation_deployer(Information).
confidential_information_not_disclosed_without_consultation(Information) :-
    exchanged_confidentially_with_commission(Information),
    high_risk_ai_system_used_by_sensitive_authority(System),
    disclosure_would_jeopardise_security(System),
    \+ prior_consultation_originating_authority(Information),
    \+ prior_consultation_deployer(Information).
high_risk_ai_system_used_by_sensitive_authority(System) :-
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System) ; annex_3_point_6_applies(System) ; annex_3_point_7_applies(System)),
    used_by_law_enforcement_immigration_asylum_authority(System).
sensitive_operational_data_excluded(Information) :-
    exchanged_confidentially_between_national_competent_authorities(Information),
    sensitive_operational_data_law_enforcement(Information).
sensitive_operational_data_excluded(Information) :-
    exchanged_confidentially_with_commission(Information),
    sensitive_operational_data_law_enforcement(Information).
technical_documentation_remains_on_premises(System) :-
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System) ; annex_3_point_6_applies(System) ; annex_3_point_7_applies(System)),
    law_enforcement_immigration_asylum_authority(Authority),
    provider(Authority, System).
market_surveillance_access_to_documentation(Authority, System) :-
    technical_documentation_remains_on_premises(System),
    market_surveillance_authority(Authority),
    (referred_to_in('celex:32024R1689/oj#art_74/par_8', Authority) ; referred_to_in('celex:32024R1689/oj#art_74/par_9', Authority)),
    upon_request(Authority, System).
only_cleared_staff_access_documentation(System) :-
    technical_documentation_remains_on_premises(System),
    access_allowed(Staff, System),
    appropriate_security_clearance(Staff).
may_exchange_confidential_information_with_third_countries(Commission, ThirdCountryAuthority) :-
    commission(Commission),
    regulatory_authority_third_country(ThirdCountryAuthority),
    necessary_exchange(Commission, ThirdCountryAuthority),
    international_trade_agreement_applies(Exchange),
    confidentiality_arrangement_adequate(Exchange).
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_necessary_data_only/1, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_information_not_disclosed_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(technical_documentation_remains_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(market_surveillance_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(only_cleared_staff_access_documentation/1, 'celex:32024R1689/oj#art_78').
provenance(may_exchange_confidential_information_with_third_countries/2, 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
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
declared(risk_to_health_safety_or_rights/1, 'AI system presents risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_79').
declared(risk_to_vulnerable_groups/1, 'AI system presents risk to vulnerable groups', 'celex:32024R1689/oj#art_79').
declared(must_evaluate_compliance/2, 'market surveillance authority must evaluate AI system compliance', 'celex:32024R1689/oj#art_79').
declared(must_cooperate_with_authorities/2, 'relevant operators must cooperate with market surveillance authority', 'celex:32024R1689/oj#art_79').
declared(must_inform_relevant_authorities/2, 'market surveillance authority must inform and cooperate with relevant national public authorities', 'celex:32024R1689/oj#art_79').
declared(must_require_corrective_action/2, 'market surveillance authority must require operator to take corrective action', 'celex:32024R1689/oj#art_79').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and other Member States of non-compliance beyond national territory', 'celex:32024R1689/oj#art_79').
declared(must_ensure_corrective_action_all_systems/2, 'operator must ensure corrective action for all AI systems made available on Union market', 'celex:32024R1689/oj#art_79').
declared(must_take_restriction_measures/2, 'market surveillance authority must take provisional restriction measures', 'celex:32024R1689/oj#art_79').
declared(must_notify_commission_and_member_states/2, 'market surveillance authority must notify Commission and other Member States of measures taken', 'celex:32024R1689/oj#art_79').
declared(notification_details/1, 'details to be included in notification of non-compliance measures', 'celex:32024R1689/oj#art_79').
declared(non_compliance_reason/2, 'reason for non-compliance identified in notification', 'celex:32024R1689/oj#art_79').
declared(deemed_justified/1, 'provisional measure deemed justified after no objection period', 'celex:32024R1689/oj#art_79').
declared(must_ensure_restrictive_measures/2, 'market surveillance authorities must ensure appropriate restrictive measures are taken', 'celex:32024R1689/oj#art_79').
risk_to_health_safety_or_rights(S) :-
    ai_system(S),
    risk_to_health_safety_or_rights(S).
risk_to_vulnerable_groups(S) :-
    ai_system(S),
    risk_to_vulnerable_groups(S).
must_evaluate_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_health_safety_or_rights(S),
    sufficient_reason_to_consider_risk(Authority, S).
sufficient_reason_to_consider_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).
must_inform_relevant_authorities(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_fundamental_rights_identified(Authority, S),
    national_public_authority_or_body(RelevantAuthority).
risk_to_fundamental_rights_identified(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_health_safety_or_rights(S).
must_cooperate_with_authorities(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    evaluation_in_progress(Authority, _S).
evaluation_in_progress(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_health_safety_or_rights(S).
must_cooperate_with_authorities(Operator, OtherAuthority) :-
    operator(Operator),
    national_public_authority_or_body(OtherAuthority),
    evaluation_in_progress_with_cooperation(_Authority, OtherAuthority, _S).
evaluation_in_progress_with_cooperation(Authority, OtherAuthority, S) :-
    market_surveillance_authority(Authority),
    national_public_authority_or_body(OtherAuthority),
    ai_system(S),
    risk_to_health_safety_or_rights(S).
must_require_corrective_action(Authority, operator_action(Operator, action_for(S), within(Period))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(S),
    non_compliance_found(Authority, S),
    prescribed_period(Authority, Period).
non_compliance_found(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    \+ complies_with_requirements(S).
complies_with_requirements(S) :-
    ai_system(S),
    requirements_in_chapter_3_section_2(S).
prescribed_period(Authority, Period) :-
    market_surveillance_authority(Authority),
    period(shorter_of(days(15), union_harmonisation_legislation_period), Period).
must_require_corrective_action(Authority, operator_action(Operator, withdraw(S), within(Period))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(S),
    non_compliance_found(Authority, S),
    prescribed_period(Authority, Period).
must_require_corrective_action(Authority, operator_action(Operator, recall(S), within(Period))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(S),
    non_compliance_found(Authority, S),
    prescribed_period(Authority, Period).
must_inform_notified_body(Authority, Body) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    non_compliance_found(Authority, _S).
must_inform_commission_and_member_states(Authority, evaluation_results(S, Actions)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    non_compliance_not_restricted_nationally(Authority, S),
    required_operator_actions(Authority, S, Actions).
non_compliance_not_restricted_nationally(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    non_compliance_found(Authority, S).
required_operator_actions(Authority, S, Actions) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    findall(Action, must_require_corrective_action(Authority, Action), Actions).
must_ensure_corrective_action_all_systems(Operator, corrective_action_for_all(S)) :-
    operator(Operator),
    ai_system(S),
    made_available_on_market(Operator, S),
    corrective_action_required_for(S).
corrective_action_required_for(S) :-
    ai_system(S),
    non_compliance_found(_Authority, S).
must_take_restriction_measures(Authority, restriction(prohibit_or_restrict(S), national_market)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    inadequate_corrective_action(Operator, S),
    operator(Operator),
    period_referred_in_par_2(Period),
    \+ adequate_corrective_action_taken(Operator, S, Period).
inadequate_corrective_action(Operator, S) :-
    operator(Operator),
    ai_system(S),
    corrective_action_required_for(S).
adequate_corrective_action_taken(Operator, S, Period) :-
    operator(Operator),
    ai_system(S),
    corrective_action_taken(Operator, S),
    within_period(corrective_action(Operator, S), Period).
period_referred_in_par_2(Period) :-
    prescribed_period(_Authority, Period).
must_take_restriction_measures(Authority, restriction(withdraw(S), national_market)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    inadequate_corrective_action(Operator, S),
    operator(Operator),
    period_referred_in_par_2(Period),
    \+ adequate_corrective_action_taken(Operator, S, Period).
must_take_restriction_measures(Authority, restriction(recall(S), national_market)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    inadequate_corrective_action(Operator, S),
    operator(Operator),
    period_referred_in_par_2(Period),
    \+ adequate_corrective_action_taken(Operator, S, Period).
must_notify_commission_and_member_states(Authority, measures(Measures)) :-
    market_surveillance_authority(Authority),
    findall(M, must_take_restriction_measures(Authority, M), Measures),
    Measures \= [].
notification_details(details(system_identification(S), origin(Origin), supply_chain(Chain), nature_non_compliance(Nature), risk_involved(Risk), nature_duration_measures(Measures), operator_arguments(Arguments))) :-
    ai_system(S),
    non_compliance_found(_Authority, S),
    origin_of_system(S, Origin),
    supply_chain_of(S, Chain),
    nature_of_non_compliance(S, Nature),
    risk_involved(S, Risk),
    measures_taken_for(S, Measures),
    arguments_put_forward(S, Arguments).
non_compliance_reason(S, non_compliance_art_5(S)) :-
    ai_system(S),
    non_compliance_art_5(S).
non_compliance_reason(S, non_compliance_chapter_3_section_2(S)) :-
    ai_system(S),
    \+ requirements_in_chapter_3_section_2(S),
    high_risk_ai_system(S).
non_compliance_reason(S, non_compliance_harmonised_standards(S)) :-
    ai_system(S),
    non_compliance_harmonised_standards(S).
non_compliance_reason(S, non_compliance_art_50(S)) :-
    ai_system(S),
    non_compliance_art_50(S).
period_for_objection(measure(Measure), months(3)) :-
    must_take_restriction_measures(_Authority, Measure),
    \+ non_compliance_art_5_reason(Measure).
non_compliance_art_5_reason(Measure) :-
    must_take_restriction_measures(_Authority, Measure),
    restriction_target(Measure, S),
    non_compliance_art_5(S).
period_for_objection(measure(Measure), days(30)) :-
    must_take_restriction_measures(_Authority, Measure),
    non_compliance_art_5_reason(Measure).
deemed_justified(Measure) :-
    must_take_restriction_measures(Authority, Measure),
    period_for_objection(measure(Measure), Period),
    \+ objection_raised(_OtherAuthority, Measure, Period),
    \+ commission_objection(Measure).
objection_raised(OtherAuthority, Measure, Period) :-
    other_market_surveillance_authority(OtherAuthority),
    must_take_restriction_measures(_Authority, Measure),
    period_for_objection(measure(Measure), Period).
must_ensure_restrictive_measures(Authority, withdrawal(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    non_compliance_found(_AnyAuthority, S).
provenance(risk_to_health_safety_or_rights/1, 'celex:32024R1689/oj#art_79').
provenance(risk_to_vulnerable_groups/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_relevant_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(notification_details/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_reason/2, 'celex:32024R1689/oj#art_79').
provenance(period_for_objection/2, 'celex:32024R1689/oj#art_79').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_79').
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
declared(evaluation_required/2, 'market surveillance authority must evaluate AI system classification', 'celex:32024R1689/oj#art_80').
declared(evaluation_finds_high_risk/2, 'evaluation determines AI system is high-risk', 'celex:32024R1689/oj#art_80').
declared(must_take_corrective_action/3, 'provider must take corrective action within prescribed period', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent/2, 'provider misclassified AI system to avoid requirements', 'celex:32024R1689/oj#art_80').
declared(may_perform_checks/2, 'market surveillance authority may perform checks', 'celex:32024R1689/oj#art_80').
evaluation_required(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    not_high_risk_under_art_6_par_3(S),
    high_risk_ai_system(S).
provenance(evaluation_required/2, 'celex:32024R1689/oj#art_80').
evaluation_finds_high_risk(Authority, S) :-
    evaluation_required(Authority, S),
    high_risk_ai_system(S).
provenance(evaluation_finds_high_risk/2, 'celex:32024R1689/oj#art_80').
must_take_corrective_action(Provider, S, period_prescribed_by(Authority)) :-
    evaluation_finds_high_risk(Authority, S),
    provider(Provider),
    placed_or_put_into_service_by(Provider, S).
provenance(must_take_corrective_action/3, 'celex:32024R1689/oj#art_80').
must_inform_commission_and_member_states(Authority, evaluation_results(S, required_actions(Provider, S))) :-
    evaluation_finds_high_risk(Authority, S),
    provider(Provider),
    \+ national_law_provides_otherwise(Authority).
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
must_ensure_compliance(Provider, S) :-
    must_take_corrective_action(Provider, S, _),
    requirements_in_chapter_3_section_2(S).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
may_impose_fine(commission, Provider) :-
    must_ensure_compliance(Provider, S),
    \+ must_ensure_compliance(Provider, S).
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_80').
must_take_corrective_action_all_systems(Provider, S) :-
    must_take_corrective_action(Provider, S, _),
    made_available_on_market(Provider, S).
provenance(must_take_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_80').
measures_taken(Authority, Provider) :-
    must_take_corrective_action(Provider, S, period_prescribed_by(Authority)),
    \+ must_take_corrective_action(Provider, S, period_prescribed_by(Authority)).
provenance(measures_taken/2, 'celex:32024R1689/oj#art_80').
misclassified_to_circumvent(Provider, S) :-
    evaluation_required(Authority, S),
    provider(Provider),
    not_high_risk_under_art_6_par_3(S),
    requirements_in_chapter_3_section_2(S),
    intentionally_misclassified(Provider, S).
provenance(misclassified_to_circumvent/2, 'celex:32024R1689/oj#art_80').
may_impose_fine(commission, Provider) :-
    misclassified_to_circumvent(Provider, S).
may_perform_checks(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    not_high_risk_under_art_6_par_3(S).
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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

% ==== celex:32024R1689/oj#art_81 ====
declared(commission_decides/2, 'Commission decides whether authorisation is justified', 'celex:32024R1689/oj#art_81').
commission_decides(Commission, justified(Measure)) :-
    commission(Commission),
    measure_taken(MemberState, Measure),
    market_surveillance_authority(Authority),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState),
    notification_referred_to_in_art_79_5(Notification),
    within_three_months_of_receipt(Notification);
    within_thirty_days_of_receipt(Notification),
    non_compliance_art_5(Measure),
    objections_raised(Authority, Measure);
    commission_considers_measure_contrary_to_union_law(Commission, Measure),
    enter_into_consultation(Commission, Authority, Operator),
    evaluate_national_measure(Commission, Measure),
    within_six_months_of_notification(Notification);
    within_sixty_days_of_notification(Notification),
    non_compliance_art_5(Measure),
    notify_decision(Commission, Authority).
commission_decides(Commission, unjustified(Measure)) :-
    commission(Commission),
    measure_taken(MemberState, Measure),
    market_surveillance_authority(Authority),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState),
    notification_referred_to_in_art_79_5(Notification),
    within_three_months_of_receipt(Notification);
    within_thirty_days_of_receipt(Notification),
    non_compliance_art_5(Measure),
    objections_raised(Authority, Measure);
    commission_considers_measure_contrary_to_union_law(Commission, Measure),
    enter_into_consultation(Commission, Authority, Operator),
    evaluate_national_measure(Commission, Measure),
    within_six_months_of_notification(Notification);
    within_sixty_days_of_notification(Notification),
    non_compliance_art_5(Measure),
    notify_decision(Commission, Authority).
must_take_restriction_measures(MemberState, System) :-
    established_in_union(MemberState),
    commission_decides(Commission, justified(Measure)),
    measure_concerns_ai_system(Measure, System),
    ai_system(System).
must_withdraw_ai_system(MemberState, System) :-
    established_in_union(MemberState),
    commission_decides(Commission, justified(Measure)),
    measure_concerns_ai_system(Measure, System),
    ai_system(System).
must_inform_commission_and_member_states(Authority, decision(Commission, justified(Measure))) :-
    market_surveillance_authority(Authority),
    commission_decides(Commission, justified(Measure)),
    measure_taken(MemberState, Measure),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState).
must_withdraw_measure(MemberState, Measure) :-
    established_in_union(MemberState),
    measure_taken(MemberState, Measure),
    commission_decides(Commission, unjustified(Measure)).
must_inform_commission(Authority, withdrawal(Measure)) :-
    market_surveillance_authority(Authority),
    established_in_union(MemberState),
    member_state_of(Authority, MemberState),
    measure_taken(MemberState, Measure),
    commission_decides(Commission, unjustified(Measure)).
must_apply_procedure(Commission, art_11_of_regulation_1025_2012) :-
    commission(Commission),
    commission_decides(Commission, justified(Measure)),
    measure_concerns_ai_system(Measure, System),
    ai_system(System),
    non_compliance_harmonised_standards(System).
provenance(commission_decides/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_ai_system/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(risk_within_art_79_1/1, 'high-risk AI system presents a risk within meaning of Article 79(1)', 'celex:32024R1689/oj#art_82').
declared(national_public_authority_or_body/1, 'national public authority or body', 'celex:32024R1689/oj#art_82').
declared(consulted_relevant_authority/1, 'market surveillance authority consulted relevant national public authority', 'celex:32024R1689/oj#art_82').
declared(must_take_corrective_action/2, 'provider must take corrective action for non-conforming high-risk AI system', 'celex:32024R1689/oj#art_82').
declared(corrective_action/2, 'corrective action taken by operator for AI systems made available', 'celex:32024R1689/oj#art_82').
declared(measures_taken/2, 'measures taken', 'celex:32024R1689/oj#art_82').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority shall inform Commission and other Member States of non-compliance beyond national territory', 'celex:32024R1689/oj#art_82').
declared(commission_decides/2, 'Commission decides whether authorisation is justified', 'celex:32024R1689/oj#art_82').
declared(deemed_justified/1, 'authorisation deemed justified after no objection period', 'celex:32024R1689/oj#art_82').
risk_within_art_79_1(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_or_rights(S),
    market_surveillance_authority(_Authority),
    consulted_relevant_authority(_Authority).
consulted_relevant_authority(Authority) :-
    market_surveillance_authority(Authority),
    national_public_authority_or_body(_PublicAuthority).
must_take_corrective_action(Operator, system(S, risk_within_art_79_1)) :-
    operator(Operator),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    market_surveillance_authority(Authority),
    consulted_relevant_authority(Authority),
    placing_on_market(S),
    putting_into_service(S).
corrective_action(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    made_available_on_market(Operator, S),
    must_take_corrective_action(Operator, system(S, risk_within_art_79_1)).
measures_taken(member_state(MemberState), measure(corrective_action, Operator, S)) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    risk_within_art_79_1(S),
    must_take_corrective_action(Operator, system(S, risk_within_art_79_1)).
must_inform_commission_and_member_states(member_state(MemberState), finding(system(S, risk_within_art_79_1), details(Data))) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    risk_within_art_79_1(S),
    measures_taken(member_state(MemberState), measure(corrective_action, _Operator, S)),
    identification_data(S, Data).
commission_decides(commission, measure_justified(member_state(MemberState), measure(corrective_action, Operator, S))) :-
    member_state(MemberState),
    operator(Operator),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    measures_taken(member_state(MemberState), measure(corrective_action, Operator, S)),
    consultation_with_member_states_and_operators,
    evaluation_results_justify_measure.
deemed_justified(measure(corrective_action, Operator, S)) :-
    commission_decides(commission, measure_justified(_MemberState, measure(corrective_action, Operator, S))).
provenance(risk_within_art_79_1/1, 'celex:32024R1689/oj#art_82').
provenance(consulted_relevant_authority/1, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(measures_taken/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(commission_decides/2, 'celex:32024R1689/oj#art_82').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(formal_non_compliance/1, 'one of the listed formal non-compliances exists', 'celex:32024R1689/oj#art_83').
declared(must_end_non_compliance/3, 'market surveillance authority shall require provider to end non-compliance within prescribed period', 'celex:32024R1689/oj#art_83').
declared(must_take_restriction_measures/2, 'market surveillance authority shall take measures to restrict or prohibit', 'celex:32024R1689/oj#art_83').
formal_non_compliance(ce_marking_affixed_in_violation_of_art_48(S)) :-
    ce_marking(S),
    \+ valid_ce_marking(S).
formal_non_compliance(ce_marking_not_affixed(S)) :-
    ai_system(S),
    \+ ce_marking(S).
formal_non_compliance(eu_declaration_not_drawn_up(S)) :-
    ai_system(S),
    \+ eu_declaration_of_conformity(S).
formal_non_compliance(eu_declaration_not_drawn_up_correctly(S)) :-
    ai_system(S),
    eu_declaration_of_conformity(S),
    \+ drawn_up(S).
formal_non_compliance(registration_not_carried_out(S)) :-
    ai_system(S),
    \+ registered_with_information_specified(S).
formal_non_compliance(no_authorised_representative_appointed(P)) :-
    provider(P),
    established_in_union(P),
    \+ authorised_representative(_R),
    requires_union_representative(P).
formal_non_compliance(technical_documentation_not_available(S)) :-
    ai_system(S),
    \+ technical_documentation(S).
must_end_non_compliance(Authority, Provider, end_non_compliance(NonCompliance, Period)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_non_compliance(NonCompliance),
    system_of_non_compliance(NonCompliance, S),
    (provider_of_system(Provider, S); placed_or_put_into_service_by(Provider, S)),
    prescribed_period(Period).
must_take_restriction_measures(Authority, restrict_or_prohibit_made_available(S)) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(NonCompliance),
    system_of_non_compliance(NonCompliance, S),
    high_risk_ai_system(S),
    persists(NonCompliance),
    \+ must_end_non_compliance(Authority, _, end_non_compliance(NonCompliance, _)).
must_take_restriction_measures(Authority, ensure_recalled_or_withdrawn(S)) :-
    market_surveillance_authority(Authority),
    formal_non_compliance(NonCompliance),
    system_of_non_compliance(NonCompliance, S),
    high_risk_ai_system(S),
    persists(NonCompliance),
    \+ must_end_non_compliance(Authority, _, end_non_compliance(NonCompliance, _)).
system_of_non_compliance(ce_marking_affixed_in_violation_of_art_48(S), S).
system_of_non_compliance(ce_marking_not_affixed(S), S).
system_of_non_compliance(eu_declaration_not_drawn_up(S), S).
system_of_non_compliance(eu_declaration_not_drawn_up_correctly(S), S).
system_of_non_compliance(registration_not_carried_out(S), S).
system_of_non_compliance(no_authorised_representative_appointed(_P), _S) :- fail.
system_of_non_compliance(technical_documentation_not_available(S), S).
provider_of_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
requires_union_representative(P) :-
    provider(P),
    \+ established_in_union(P).
provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_non_compliance/3, 'celex:32024R1689/oj#art_83').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_83').
provenance(system_of_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(provider_of_system/2, 'celex:32024R1689/oj#art_83').
provenance(requires_union_representative/1, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(union_ai_testing_support_structure/1, 'Union AI testing support structure designated by the Commission', 'celex:32024R1689/oj#art_84').
declared(designated_by_commission/1, 'designated by the Commission', 'celex:32024R1689/oj#art_84').
declared(performs_tasks_listed/2, 'performs tasks listed under specified provision in area of AI', 'celex:32024R1689/oj#art_84').
declared(provides_independent_technical_or_scientific_advice/2, 'provides independent technical or scientific advice at request of specified body', 'celex:32024R1689/oj#art_84').
union_ai_testing_support_structure(S) :-
    designated_by_commission(S),
    performs_tasks_listed(S, 'celex:32019R1020/oj#art_21/par_6'),
    ai_system(_A).
provides_independent_technical_or_scientific_advice(S, RequestingBody) :-
    union_ai_testing_support_structure(S),
    (RequestingBody = board ; RequestingBody = commission ; market_surveillance_authority(RequestingBody)).
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(provides_independent_technical_or_scientific_advice/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(may_lodge_complaint/2, 'natural or legal person may lodge complaint with market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(infringement_of_provisions/1, 'infringement of the provisions of this Regulation', 'celex:32024R1689/oj#art_85').
declared(grounds_to_consider_infringement/2, 'person has grounds to consider infringement', 'celex:32024R1689/oj#art_85').
declared(relevant_market_surveillance_authority/1, 'market surveillance authority competent for the complaint', 'celex:32024R1689/oj#art_85').
declared(complaint_taken_into_account/1, 'complaint taken into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(complaint_handled_per_procedures/1, 'complaint handled in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
may_lodge_complaint(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person, Regulation),
    infringement_of_provisions(Regulation),
    relevant_market_surveillance_authority(Authority).
complaint_taken_into_account(Complaint) :-
    may_lodge_complaint(_Person, _Authority).
complaint_handled_per_procedures(Complaint) :-
    may_lodge_complaint(_Person, _Authority).
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/1, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_per_procedures/1, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(right_to_explanation/1, 'affected person has right to explanation of individual decision-making', 'celex:32024R1689/oj#art_86').
declared(decision_based_on_high_risk_ai_output/2, 'decision taken by deployer based on output from high-risk AI system', 'celex:32024R1689/oj#art_86').
declared(produces_legal_effects_or_similarly_significantly_affects/2, 'decision produces legal effects or similarly significantly affects person', 'celex:32024R1689/oj#art_86').
declared(adverse_impact_on_health_safety_or_fundamental_rights/2, 'person considers decision to have adverse impact on health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(exception_or_restriction_under_union_or_national_law/1, 'exceptions or restrictions to explanation obligation follow from Union or national law', 'celex:32024R1689/oj#art_86').
declared(right_otherwise_provided_under_union_law/1, 'right to explanation already provided for under other Union law', 'celex:32024R1689/oj#art_86').
right_to_explanation(P) :-
    affected_person(P),
    decision_based_on_high_risk_ai_output(D, P),
    produces_legal_effects_or_similarly_significantly_affects(D, P),
    adverse_impact_on_health_safety_or_fundamental_rights(D, P),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    \+ listed_in_annex_3_point_2(S),
    output_from(S, D),
    \+ exception_or_restriction_under_union_or_national_law(D),
    \+ right_otherwise_provided_under_union_law(P).
decision_based_on_high_risk_ai_output(D, P) :-
    deployer(De),
    decision(De, D),
    based_on_output(D),
    affects(D, P).
produces_legal_effects_or_similarly_significantly_affects(D, P) :-
    legal_effects(D, P).
produces_legal_effects_or_similarly_significantly_affects(D, P) :-
    similarly_significant_affect(D, P).
adverse_impact_on_health_safety_or_fundamental_rights(D, P) :-
    person_considers_adverse_impact(P, D),
    (health_impact(D, P); safety_impact(D, P); fundamental_rights_impact(D, P)).
exception_or_restriction_under_union_or_national_law(D) :-
    national_law_provides_otherwise(D).
exception_or_restriction_under_union_or_national_law(D) :-
    union_law_exception(D).
right_otherwise_provided_under_union_law(P) :-
    union_law_provides_explanation_right(P).
provenance(right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_high_risk_ai_output/2, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects_or_similarly_significantly_affects/2, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_on_health_safety_or_fundamental_rights/2, 'celex:32024R1689/oj#art_86').
provenance(exception_or_restriction_under_union_or_national_law/1, 'celex:32024R1689/oj#art_86').
provenance(right_otherwise_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(applies_to_reporting/2, 'Directive 2019/1937 applies to reporting of infringements and protection of reporting persons', 'celex:32024R1689/oj#art_87').
applies_to_reporting('celex:32019L1937/oj', 'celex:32024R1689/oj').
provenance(applies_to_reporting/2, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(commission_exclusive_supervision_enforcement/1, 'Commission has exclusive powers to supervise and enforce Chapter V', 'celex:32024R1689/oj#art_88').
declared(commission_entrusts_ai_office/1, 'Commission entrusts implementation to AI Office', 'celex:32024R1689/oj#art_88').
declared(market_surveillance_authority_may_request_commission/2, 'market surveillance authority may request Commission to exercise Chapter IX Section 5 powers', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate/1, 'necessary and proportionate to assist with tasks', 'celex:32024R1689/oj#art_88').
commission_exclusive_supervision_enforcement(chapter_5) :-
    ai_office(ai_office).
commission_entrusts_ai_office(chapter_5) :-
    ai_office(ai_office).
market_surveillance_authority_may_request_commission(Authority, chapter_9_section_5) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate(Authority).
provenance(commission_exclusive_supervision_enforcement/1, 'celex:32024R1689/oj#art_88').
provenance(commission_entrusts_ai_office/1, 'celex:32024R1689/oj#art_88').
provenance(market_surveillance_authority_may_request_commission/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(may_monitor_compliance/2, 'AI Office may take necessary actions to monitor compliance', 'celex:32024R1689/oj#art_89').
declared(may_lodge_complaint/2, 'downstream provider has right to lodge complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(complaint_duly_reasoned/1, 'complaint is duly reasoned and contains required information', 'celex:32024R1689/oj#art_89').
may_monitor_compliance(Office, Provider) :-
    ai_office(Office),
    general_purpose_ai_model_provider(Provider),
    provider_of_general_purpose_ai_model(Provider).
may_lodge_complaint(DownstreamProvider, complaint(Provider, Facts, Provisions, Reason, OtherInfo)) :-
    downstream_provider(DownstreamProvider),
    general_purpose_ai_model_provider(Provider),
    complaint_duly_reasoned(complaint(Provider, Facts, Provisions, Reason, OtherInfo)).
complaint_duly_reasoned(complaint(Provider, Facts, Provisions, Reason, OtherInfo)) :-
    point_of_contact(Provider, _Contact),
    relevant_facts(Facts),
    provisions_concerned(Provisions),
    reason_for_infringement(Reason),
    other_relevant_information(OtherInfo).
provenance(may_monitor_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(may_provide_qualified_alert/2, 'scientific panel may provide a qualified alert to the AI Office', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'general-purpose AI model poses concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_art_51/1, 'general-purpose AI model meets conditions referred to in Article 51', 'celex:32024R1689/oj#art_90').
declared(may_exercise_powers/2, 'Commission may exercise powers for purpose of assessing the matter', 'celex:32024R1689/oj#art_90').
declared(reason_to_suspect/2, 'scientific panel has reason to suspect condition about general-purpose AI model', 'celex:32024R1689/oj#art_90').
declared(informs_board/2, 'AI Office informs Board of measure', 'celex:32024R1689/oj#art_90').
declared(qualified_alert_duly_reasoned/1, 'qualified alert is duly reasoned and contains required information', 'celex:32024R1689/art_90').
may_provide_qualified_alert(ScientificPanel, Alert) :-
    scientific_panel(ScientificPanel),
    qualified_alert(Alert),
    ai_office(AiOffice),
    reason_to_suspect(ScientificPanel, Model),
    general_purpose_ai_model(Model).
reason_to_suspect(_ScientificPanel, Model) :-
    general_purpose_ai_model(Model),
    concrete_identifiable_risk_at_union_level(Model).
reason_to_suspect(_ScientificPanel, Model) :-
    general_purpose_ai_model(Model),
    meets_conditions_art_51(Model).
may_exercise_powers(Commission, assessment_matter(Model)) :-
    commission(Commission),
    ai_office(AiOffice),
    qualified_alert(Alert),
    reason_to_suspect(_ScientificPanel, Model),
    general_purpose_ai_model(Model).
informs_board(AiOffice, measure(Model)) :-
    ai_office(AiOffice),
    board(Board),
    may_exercise_powers(_Commission, assessment_matter(Model)).
qualified_alert_duly_reasoned(Alert) :-
    qualified_alert(Alert),
    point_of_contact(Alert, Provider),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_present(Model),
    description_of_facts_and_reasons(Alert),
    other_relevant_information(Alert).
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_art_51/1, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(informs_board/2, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert_duly_reasoned/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(may_request_documentation/2, 'Commission may request documentation drawn up by provider', 'celex:32024R1689/oj#art_91').
declared(may_request_additional_information/2, 'Commission may request additional information for compliance assessment', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue_before_request/2, 'AI Office may initiate structured dialogue before sending request for information', 'celex:32024R1689/oj#art_91').
declared(may_issue_request_for_information/2, 'Commission may issue request for information upon substantiated request from scientific panel', 'celex:32024R1689/oj#art_91').
declared(request_for_information_specified/1, 'request for information contains required elements', 'celex:32024R1689/oj#art_91').
declared(must_supply_information/2, 'provider or representative must supply requested information', 'celex:32024R1689/oj#art_91').
declared(representative_of_provider/2, 'representative of the provider', 'celex:32024R1689/oj#art_91').
declared(authorised_representative_by_law_or_statutes/2, 'person authorised to represent by law or statutes', 'celex:32024R1689/oj#art_91').
declared(lawyer_duly_authorised/2, 'lawyer duly authorised to act on behalf of client', 'celex:32024R1689/oj#art_91').
declared(remains_fully_responsible/2, 'client remains fully responsible for incomplete incorrect or misleading information', 'celex:32024R1689/oj#art_91').
may_request_documentation(commission, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P).
may_request_additional_information(commission, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P).
may_initiate_dialogue(ai_office, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P).
may_issue_request_for_information(commission, provider_of_general_purpose_ai_model(P)) :-
    general_purpose_ai_model_provider(P),
    duly_substantiated_request(scientific_panel),
    access_necessary_and_proportionate_for_tasks(scientific_panel, art_68_par_2).
request_for_information_specified(request(R)) :-
    states_legal_basis(R),
    states_purpose(R),
    specifies_information_required(R),
    sets_period_for_provision(R, _Period),
    indicates_fines_for_incorrect_incomplete_misleading_information(R, art_101).
must_supply_information(Provider, request(R)) :-
    (provider_of_general_purpose_ai_model(Provider) ; representative_of_provider(Representative, Provider)),
    request_for_information_specified(R).
must_supply_information(AuthorisedPerson, request(R)) :-
    legal_person_or_company_or_firm_or_no_legal_personality(Provider),
    authorised_representative_by_law_or_statutes(AuthorisedPerson, Provider),
    request_for_information_specified(R).
must_supply_information(Lawyer, request(R)) :-
    lawyer_duly_authorised(Lawyer, Client),
    request_for_information_specified(R).
remains_fully_responsible(Client, information_supplied) :-
    lawyer_duly_authorised(_Lawyer, Client),
    (incomplete(information_supplied) ; incorrect(information_supplied) ; misleading(information_supplied)).
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_additional_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information_specified/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(representative_of_provider/2, 'celex:32024R1689/oj#art_91').
provenance(authorised_representative_by_law_or_statutes/2, 'celex:32024R1689/oj#art_91').
provenance(lawyer_duly_authorised/2, 'celex:32024R1689/oj#art_91').
provenance(remains_fully_responsible/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(may_conduct_evaluation/2, 'AI Office may conduct evaluation of general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(may_appoint_independent_experts/2, 'Commission may appoint independent experts to carry out evaluations', 'celex:32024R1689/oj#art_92').
declared(may_request_access/2, 'Commission may request access to general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(must_supply_information/2, 'provider or representative must supply information requested', 'celex:32024R1689/oj#art_92').
declared(must_adopt_implementing_acts_evaluations/2, 'Commission shall adopt implementing acts for evaluations', 'celex:32024R1689/oj#art_92').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before requesting access', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    information_gathered_pursuant_to(art_91, Model),
    insufficient(art_91, Model).
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_present(Model),
    qualified_alert(Alert),
    alert_concerns(Alert, Model),
    alert_from_scientific_panel(Alert, art_90_par_1_unp_1_pnt_a).
may_appoint_independent_experts(commission, Evaluation) :-
    may_conduct_evaluation(ai_office, Model),
    evaluation_concerns(Evaluation, Model),
    independent_expert(Expert),
    (scientific_panel_member(Expert, art_68) ; true).
meets_criteria(Expert, art_68_par_2) :-
    may_appoint_independent_experts(commission, Evaluation),
    expert_appointed_for(Evaluation, Expert).
may_request_access(commission, Model) :-
    may_conduct_evaluation(ai_office, Model),
    purpose(Evaluation, art_92_par_1).
request_for_access(Request, Model) :-
    may_request_access(commission, Model),
    states_legal_basis(Request),
    states_purpose(Request),
    states_reasons(Request),
    sets_period(Request, _Period),
    states_fines(Request, art_101).
must_supply_information(Provider, Request) :-
    request_for_access(Request, Model),
    provider_of(Model, Provider).
must_supply_information(Representative, Request) :-
    request_for_access(Request, Model),
    representative_of(Model, Representative).
must_supply_information(Person, Request) :-
    request_for_access(Request, Model),
    provider_of(Model, Provider),
    (legal_person(Provider) ; company_or_firm(Provider) ; \+ legal_personality(Provider)),
    authorised_representative(Person, Provider).
must_adopt_implementing_acts_evaluations(commission, evaluation_arrangements) :-
    true.
may_initiate_structured_dialogue(ai_office, Provider) :-
    general_purpose_ai_model(Model),
    provider_of(Model, Provider),
    \+ request_for_access(_Request, Model),
    purpose(Dialogue, gather_information(internal_testing(Model))),
    purpose(Dialogue, gather_information(internal_safeguards(Model))),
    purpose(Dialogue, gather_information(internal_procedures_measures(Model))).
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_experts/2, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts_evaluations/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
provenance(meets_criteria/2, 'celex:32024R1689/oj#art_92').
provenance(request_for_access/2, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(may_request_measures/2, 'Commission may request providers to take measures', 'celex:32024R1689/oj#art_93').
declared(necessary_and_appropriate/0, 'where necessary and appropriate', 'celex:32024R1689/oj#art_93').
declared(systemic_risk_at_union_level/1, 'serious and substantiated concern of systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(evaluation_art_92/1, 'evaluation carried out in accordance with Article 92', 'celex:32024R1689/oj#art_93').
declared(may_initiate_dialogue_before_request/2, 'AI Office may initiate structured dialogue before requesting measures', 'celex:32024R1689/oj#art_93').
declared(commitments_offered/2, 'provider offers commitments to implement mitigation measures', 'celex:32024R1689/oj#art_93').
declared(may_make_commitments_binding/2, 'Commission may make commitments binding by decision', 'celex:32024R1689/oj#art_93').
may_request_measures(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    necessary_and_appropriate.
may_request_measures(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    necessary_and_appropriate,
    evaluation_art_92(Provider),
    systemic_risk_at_union_level(Provider).
may_request_measures(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    necessary_and_appropriate,
    systemic_risk_at_union_level(Provider).
must_take_restriction_measures(Provider, model) :-
    may_request_measures(_Commission, Provider).
may_initiate_dialogue_before_request(ai_office, Provider) :-
    general_purpose_ai_model_provider(Provider),
    may_request_measures(_Commission, Provider).
may_make_commitments_binding(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    systemic_risk_present(Provider),
    commitments_offered(Provider, mitigation_measures),
    may_initiate_dialogue_before_request(_AiOffice, Provider).
provenance(may_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_dialogue_before_request/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(must_apply_procedural_rights/1, 'procedural rights of economic operators apply to providers of general-purpose AI models', 'celex:32024R1689/oj#art_94').
must_apply_procedural_rights(P) :-
    general_purpose_ai_model_provider(P).
provenance(must_apply_procedural_rights/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(code_of_conduct/1, 'code of conduct for voluntary application of requirements', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct_governance_mechanism/1, 'governance mechanism related to code of conduct', 'celex:32024R1689/oj#art_95').
declared(fosters_voluntary_application/2, 'fosters voluntary application of requirements to systems', 'celex:32024R1689/oj#art_95').
declared(applicable_elements_trustworthy_ai/1, 'applicable elements from Union ethical guidelines for trustworthy AI', 'celex:32024R1689/oj#art_95').
declared(assess_minimise_environmental_sustainability_impact/1, 'assessing and minimising impact on environmental sustainability', 'celex:32024R1689/oj#art_95').
declared(energy_efficient_programming/1, 'energy-efficient programming and techniques', 'celex:32024R1689/oj#art_95').
declared(promote_ai_literacy/1, 'promoting AI literacy', 'celex:32024R1689/oj#art_95').
declared(inclusive_diverse_design/1, 'facilitating inclusive and diverse design of AI systems', 'celex:32024R1689/oj#art_95').
declared(inclusive_diverse_development_teams/1, 'establishment of inclusive and diverse development teams', 'celex:32024R1689/oj#art_95').
declared(stakeholders_participation/1, 'promotion of stakeholders participation in design process', 'celex:32024R1689/oj#art_95').
declared(assess_prevent_negative_impact_vulnerable/1, 'assessing and preventing negative impact on vulnerable persons', 'celex:32024R1689/oj#art_95').
declared(accessibility_disability/1, 'accessibility for persons with a disability', 'celex:32024R1689/oj#art_95').
declared(gender_equality/1, 'gender equality', 'celex:32024R1689/oj#art_95').
declared(drawn_up_by/2, 'code of conduct drawn up by party', 'celex:32024R1689/oj#art_95').
declared(interested_stakeholder/1, 'interested stakeholder in code of conduct development', 'celex:32024R1689/oj#art_95').
declared(civil_society_organisation/1, 'civil society organisation', 'celex:32024R1689/oj#art_95').
declared(academia/1, 'academic institution or researcher', 'celex:32024R1689/oj#art_95').
declared(similar_intended_purpose/2, 'systems with similar intended purpose', 'celex:32024R1689/oj#art_95').
must_encourage_and_facilitate(ai_office, drawing_up(code_of_conduct(C))) :-
    ai_office,
    code_of_conduct(C),
    fosters_voluntary_application(C, requirements_in_chapter_3_section_2),
    applies_to_other_than_high_risk(C).
must_encourage_and_facilitate(member_state, drawing_up(code_of_conduct(C))) :-
    member_state,
    code_of_conduct(C),
    fosters_voluntary_application(C, requirements_in_chapter_3_section_2),
    applies_to_other_than_high_risk(C).
applies_to_other_than_high_risk(C) :-
    code_of_conduct(C),
    ai_system(S),
    \+ high_risk_ai_system(S),
    applies_to(C, S).
fosters_voluntary_application(C, requirements_in_chapter_3_section_2) :-
    code_of_conduct(C),
    code_of_conduct_governance_mechanism(C),
    takes_into_account_technical_solutions(C),
    takes_into_account_industry_best_practices(C).
must_encourage_and_facilitate(ai_office, drawing_up(code_of_conduct(C))) :-
    ai_office,
    code_of_conduct(C),
    voluntary_application_by_deployers(C),
    applies_to_all_ai_systems(C),
    clear_objectives(C),
    key_performance_indicators(C).
must_encourage_and_facilitate(member_state, drawing_up(code_of_conduct(C))) :-
    member_state,
    code_of_conduct(C),
    voluntary_application_by_deployers(C),
    applies_to_all_ai_systems(C),
    clear_objectives(C),
    key_performance_indicators(C).
voluntary_application_by_deployers(C) :-
    code_of_conduct(C),
    deployer(_D),
    applies_to(C, _D).
applies_to_all_ai_systems(C) :-
    code_of_conduct(C),
    ai_system(_S),
    applies_to(C, _S).
applicable_elements_trustworthy_ai(C) :-
    code_of_conduct(C),
    union_ethical_guidelines_trustworthy_ai(G),
    includes_elements(C, G).
assess_minimise_environmental_sustainability_impact(C) :-
    code_of_conduct(C),
    energy_efficient_programming(C),
    efficient_design_training_use(C).
promote_ai_literacy(C) :-
    code_of_conduct(C),
    ai_literacy(_L),
    persons_dealing_with_development_operation_use(_P).
inclusive_diverse_design(C) :-
    code_of_conduct(C),
    inclusive_diverse_development_teams(C),
    stakeholders_participation(C).
assess_prevent_negative_impact_vulnerable(C) :-
    code_of_conduct(C),
    accessibility_disability(C),
    gender_equality(C).
drawn_up_by(C, provider(P)) :-
    code_of_conduct(C),
    provider(P).
drawn_up_by(C, deployer(D)) :-
    code_of_conduct(C),
    deployer(D).
drawn_up_by(C, organisation_representing_providers_or_deployers(O)) :-
    code_of_conduct(C),
    represents(O, provider(_)),
    represents(O, deployer(_)).
drawn_up_by(C, both_providers_and_deployers) :-
    code_of_conduct(C),
    drawn_up_by(C, provider(_)),
    drawn_up_by(C, deployer(_)).
involves_stakeholders(C, S) :-
    code_of_conduct(C),
    interested_stakeholder(S).
involves_stakeholders(C, O) :-
    code_of_conduct(C),
    representative_organisation(O).
involves_stakeholders(C, O) :-
    code_of_conduct(C),
    civil_society_organisation(O).
involves_stakeholders(C, A) :-
    code_of_conduct(C),
    academia(A).
covers_similar_intended_purpose(C, S1, S2) :-
    code_of_conduct(C),
    ai_system(S1),
    ai_system(S2),
    similar_intended_purpose(S1, S2),
    covers(C, S1),
    covers(C, S2).
must_take_into_account_sme_needs(ai_office, drawing_up(code_of_conduct(C))) :-
    ai_office,
    code_of_conduct(C),
    sme_or_start_up(_Sme).
must_take_into_account_sme_needs(member_state, drawing_up(code_of_conduct(C))) :-
    member_state,
    code_of_conduct(C),
    sme_or_start_up(_Sme).
provenance(code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_governance_mechanism/1, 'celex:32024R1689/oj#art_95').
provenance(fosters_voluntary_application/2, 'celex:32024R1689/oj#art_95').
provenance(applicable_elements_trustworthy_ai/1, 'celex:32024R1689/oj#art_95').
provenance(assess_minimise_environmental_sustainability_impact/1, 'celex:32024R1689/oj#art_95').
provenance(energy_efficient_programming/1, 'celex:32024R1689/oj#art_95').
provenance(promote_ai_literacy/1, 'celex:32024R1689/oj#art_95').
provenance(inclusive_diverse_design/1, 'celex:32024R1689/oj#art_95').
provenance(inclusive_diverse_development_teams/1, 'celex:32024R1689/oj#art_95').
provenance(stakeholders_participation/1, 'celex:32024R1689/oj#art_95').
provenance(assess_prevent_negative_impact_vulnerable/1, 'celex:32024R1689/oj#art_95').
provenance(accessibility_disability/1, 'celex:32024R1689/oj#art_95').
provenance(gender_equality/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(interested_stakeholder/1, 'celex:32024R1689/oj#art_95').
provenance(civil_society_organisation/1, 'celex:32024R1689/oj#art_95').
provenance(academia/1, 'celex:32024R1689/oj#art_95').
provenance(similar_intended_purpose/2, 'celex:32024R1689/oj#art_95').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(applies_to_other_than_high_risk/1, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_by_deployers/1, 'celex:32024R1689/oj#art_95').
provenance(applies_to_all_ai_systems/1, 'celex:32024R1689/oj#art_95').
provenance(covers_similar_intended_purpose/3, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'Commission shall develop guidelines on specified subject matter', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'Commission shall update previously adopted guidelines when necessary', 'celex:32024R1689/oj#art_96').
declared(guideline_subject/1, 'subject matter for which guidelines are to be developed', 'celex:32024R1689/oj#art_96').
declared(particular_attention_to_needs/2, 'particular attention to be paid to specified needs when issuing guidelines', 'celex:32024R1689/oj#art_96').
declared(take_due_account/2, 'guidelines shall take due account of specified matters', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(commission, implementation_of_regulation) :-
    union_institution(commission).
must_develop_guidelines(commission, application_of_requirements_and_obligations) :-
    union_institution(commission).
must_develop_guidelines(commission, prohibited_practices) :-
    union_institution(commission).
must_develop_guidelines(commission, practical_implementation_substantial_modification) :-
    union_institution(commission).
must_develop_guidelines(commission, practical_implementation_transparency_obligations) :-
    union_institution(commission).
must_develop_guidelines(commission, relationship_with_union_harmonisation_legislation) :-
    union_institution(commission).
must_develop_guidelines(commission, application_of_ai_system_definition) :-
    union_institution(commission).
particular_attention_to_needs(commission, sme_or_start_up(S)) :-
    sme_or_start_up(S),
    must_develop_guidelines(commission, _).
particular_attention_to_needs(commission, local_public_authority) :-
    must_develop_guidelines(commission, _).
particular_attention_to_needs(commission, affected_sector) :-
    must_develop_guidelines(commission, _).
take_due_account(guidelines, state_of_the_art) :-
    must_develop_guidelines(commission, _).
take_due_account(guidelines, harmonised_standard(S)) :-
    harmonised_standard(S),
    must_develop_guidelines(commission, _).
take_due_account(guidelines, common_specification(C)) :-
    common_specification(C),
    must_develop_guidelines(commission, _).
take_due_account(guidelines, technical_specification_union_harmonisation_law(T)) :-
    union_harmonisation_legislation(T),
    must_develop_guidelines(commission, _).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    union_institution(commission),
    (request(member_states, update_guidelines); request(ai_office, update_guidelines); commission_initiative(update_guidelines)).
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(particular_attention_to_needs/2, 'celex:32024R1689/oj#art_96').
provenance(take_due_account/2, 'celex:32024R1689/oj#art_96').
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
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').

% ==== celex:32024R1689/oj#art_97 ====
declared(delegated_act/1, 'act adopted under delegated powers', 'celex:32024R1689/oj#art_97').
declared(delegated_act/2, 'delegated act concerning specified subject matter', 'celex:32024R1689/oj#art_97').
declared(power_to_adopt_delegated_acts/1, 'authority to adopt delegated acts conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(tacit_extension_applies/1, 'automatic extension of delegation period', 'celex:32024R1689/oj#art_97').
declared(commission_objection/1, 'commission objection', 'celex:32024R1689/oj#art_97').
declared(deemed_justified/1, 'authorisation deemed justified after no objection period', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_report/2, 'Commission shall draw up report on delegation of power', 'celex:32024R1689/oj#art_97').
declared(must_notify/2, 'Commission shall notify delegated act to European Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts/2, 'Commission shall consult experts designated by Member States', 'celex:32024R1689/oj#art_97').
declared(delegation_period/2, 'period for which delegation of power is conferred', 'celex:32024R1689/oj#art_97').
declared(report_deadline/2, 'deadline for drawing up report on delegation', 'celex:32024R1689/oj#art_97').
declared(objection_period/2, 'period within which objection may be expressed', 'celex:32024R1689/oj#art_97').
declared(extension_period/2, 'period by which objection period may be extended', 'celex:32024R1689/oj#art_97').
delegation_period(commission, years(5)).
delegation_period_start(date(1, august, 2024)).
must_draw_up_report(commission, report(delegation_of_power)) :-
    delegation_period(commission, years(5)),
    before_end_of_period(months(9), delegation_of_power).
tacit_extension_applies(delegation_of_power) :-
    \+ opposition_expressed(european_parliament, delegation_of_power),
    \+ opposition_expressed(council, delegation_of_power),
    before_end_of_period(months(3), current_period).
opposition_expressed(Institution, delegation_of_power) :-
    member(Institution, [european_parliament, council]),
    objects_to_extension(Institution, delegation_of_power),
    before_end_of_period(months(3), current_period).
delegated_act(A) :-
    power_to_adopt_delegated_acts(commission),
    adopted(commission, A).
delegated_act(A, subject(art_6_par_6)) :- delegated_act_concerning(A, art_6_par_6).
delegated_act(A, subject(art_6_par_7)) :- delegated_act_concerning(A, art_6_par_7).
delegated_act(A, subject(art_7_par_1)) :- delegated_act_concerning(A, art_7_par_1).
delegated_act(A, subject(art_7_par_3)) :- delegated_act_concerning(A, art_7_par_3).
delegated_act(A, subject(art_11_par_3)) :- delegated_act_concerning(A, art_11_par_3).
delegated_act(A, subject(art_43_par_5)) :- delegated_act_concerning(A, art_43_par_5).
delegated_act(A, subject(art_43_par_6)) :- delegated_act_concerning(A, art_43_par_6).
delegated_act(A, subject(art_47_par_5)) :- delegated_act_concerning(A, art_47_par_5).
delegated_act(A, subject(art_51_par_3)) :- delegated_act_concerning(A, art_51_par_3).
delegated_act(A, subject(art_52_par_4)) :- delegated_act_concerning(A, art_52_par_4).
delegated_act(A, subject(art_53_par_5)) :- delegated_act_concerning(A, art_53_par_5).
delegated_act(A, subject(art_53_par_6)) :- delegated_act_concerning(A, art_53_par_6).
revoked(delegation_of_power) :-
    revocation_decision(european_parliament, delegation_of_power).
revoked(delegation_of_power) :-
    revocation_decision(council, delegation_of_power).
takes_effect(revocation_decision(Institution)) :-
    revocation_decision(Institution, delegation_of_power),
    published_in_official_journal(revocation_decision(Institution)).
takes_effect(revocation_decision(Institution), LaterDate) :-
    revocation_decision(Institution, delegation_of_power),
    specified_date(revocation_decision(Institution), LaterDate).
validity_preserved(delegated_act(A)) :-
    delegated_act(A),
    in_force(A),
    revoked(delegation_of_power).
must_consult_experts(commission, experts_designated_by_member_states) :-
    before_adopting(commission, delegated_act(_A)).
must_notify(commission, delegated_act(A)) :-
    adopted(commission, delegated_act(A)),
    notify_to(european_parliament, delegated_act(A)),
    notify_to(council, delegated_act(A)).
deemed_justified(delegated_act(A)) :-
    delegated_act(A),
    notified(commission, delegated_act(A), european_parliament),
    notified(commission, delegated_act(A), council),
    \+ objection_expressed(european_parliament, delegated_act(A)),
    \+ objection_expressed(council, delegated_act(A)),
    period_elapsed(months(3), notification(delegated_act(A))).
deemed_justified(delegated_act(A)) :-
    delegated_act(A),
    notified(commission, delegated_act(A), european_parliament),
    notified(commission, delegated_act(A), council),
    informed(european_parliament, commission, no_objection(delegated_act(A))),
    informed(council, commission, no_objection(delegated_act(A))),
    before_expiry(period(months(3), notification(delegated_act(A)))).
objection_period(delegated_act(A), months(3)) :-
    delegated_act(A),
    notified(commission, delegated_act(A), european_parliament),
    notified(commission, delegated_act(A), council).
extension_period(delegated_act(A), months(3)) :-
    delegated_act(A),
    initiative(european_parliament, extension(objection_period(delegated_act(A)))).
extension_period(delegated_act(A), months(3)) :-
    delegated_act(A),
    initiative(council, extension(objection_period(delegated_act(A)))).
provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_start/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension_applies/1, 'celex:32024R1689/oj#art_97').
provenance(opposition_expressed/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_97').
provenance(delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(revoked/1, 'celex:32024R1689/oj#art_97').
provenance(takes_effect/1, 'celex:32024R1689/oj#art_97').
provenance(takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(validity_preserved/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_97').
provenance(objection_period/2, 'celex:32024R1689/oj#art_97').
provenance(extension_period/2, 'celex:32024R1689/oj#art_97').
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
declared(assisted_by_committee/2, 'the Commission shall be assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning/2, 'committee is within the meaning of specified regulation', 'celex:32024R1689/oj#art_98').
declared(article_5_applies/1, 'Article 5 of Regulation (EU) No 182/2011 applies', 'celex:32024R1689/oj#art_98').
assisted_by_committee(commission, committee).
committee_within_meaning(committee, 'celex:32011R0182/oj').
article_5_applies('celex:32024R1689/oj#art_98/par_2').
provenance(assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning/2, 'celex:32024R1689/oj#art_98').
provenance(article_5_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(may_impose_fine/2, 'Commission or Member State may impose administrative fine', 'celex:32024R1689/oj#art_99').
declared(fine_amount/3, 'fine amount for infringement with caps', 'celex:32024R1689/oj#art_99').
declared(fine_cap/2, 'maximum fine applicable to infringement category', 'celex:32024R1689/oj#art_99').
declared(undertaking/1, 'entity with worldwide annual turnover', 'celex:32024R1689/oj#art_99').
declared(total_worldwide_annual_turnover/2, 'total worldwide annual turnover for preceding financial year', 'celex:32024R1689/oj#art_99').
declared(infringement_category/2, 'category of infringement for penalty purposes', 'celex:32024R1689/oj#art_99').
declared(supply_of_incorrect_information/1, 'supply of incorrect incomplete or misleading information to authorities', 'celex:32024R1689/oj#art_99').
declared(fine_consideration_factor/2, 'factor to consider when deciding fine amount', 'celex:32024R1689/oj#art_99').
declared(fine_imposed_on_public_authority/1, 'administrative fines may be imposed on public authorities', 'celex:32024R1689/oj#art_99').
declared(fine_imposed_by_court_or_body/1, 'fines imposed by competent national courts or other bodies', 'celex:32024R1689/oj#art_99').
declared(procedural_safeguards_apply/1, 'procedural safeguards apply to exercise of fine powers', 'celex:32024R1689/oj#art_99').
declared(must_report_fines_annual/2, 'Member State must report annually on administrative fines issued', 'celex:32024R1689/oj#art_99').
infringement_category(O, art_5_prohibition) :-
    operator(O),
    non_compliance_art_5(O).
infringement_category(O, operator_obligations) :-
    operator(O),
    \+ non_compliance_art_5(O),
    (obligation_provider(O, _);
     obligation_authorised_representative(O, _);
     obligation_importer(O, _);
     obligation_distributor(O, _);
     obligation_deployer(O, _);
     obligation_notified_body(O, _);
     non_compliance_art_50(O)).
infringement_category(O, incorrect_information) :-
    operator(O),
    supply_of_incorrect_information(O).
fine_cap(art_5_prohibition, eur(35000000)).
fine_cap(art_5_prohibition, percent(7)).
fine_cap(operator_obligations, eur(15000000)).
fine_cap(operator_obligations, percent(3)).
fine_cap(incorrect_information, eur(7500000)).
fine_cap(incorrect_information, percent(1)).
fine_amount(O, Category, eur(Amount)) :-
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    fine_cap(Category, percent(Percent)),
    undertaking(O),
    total_worldwide_annual_turnover(O, Turnover),
    PercentAmount is Turnover * Percent / 100,
    Amount is max(EurAmount, PercentAmount).
fine_amount(O, Category, eur(EurAmount)) :-
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    fine_cap(Category, percent(_Percent)),
    \+ undertaking(O).
fine_amount(O, Category, eur(Amount)) :-
    infringement_category(O, Category),
    fine_cap(Category, percent(Percent)),
    undertaking(O),
    total_worldwide_annual_turnover(O, Turnover),
    Amount is Turnover * Percent / 100,
    fine_cap(Category, eur(EurAmount)),
    Amount >= EurAmount.
fine_amount(O, Category, eur(Amount)) :-
    sme_or_start_up(O),
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    fine_cap(Category, percent(Percent)),
    undertaking(O),
    total_worldwide_annual_turnover(O, Turnover),
    PercentAmount is Turnover * Percent / 100,
    Amount is min(EurAmount, PercentAmount).
fine_amount(O, Category, eur(EurAmount)) :-
    sme_or_start_up(O),
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    \+ undertaking(O).
supply_of_incorrect_information(O) :-
    operator(O),
    (provided_incorrect_information(O, notified_body(_));
     provided_incorrect_information(O, national_competent_authority(_));
     provided_incomplete_information(O, notified_body(_));
     provided_incomplete_information(O, national_competent_authority(_));
     provided_misleading_information(O, notified_body(_));
     provided_misleading_information(O, national_competent_authority(_))).
fine_consideration_factor(O, nature_gravity_duration(Infringement)) :-
    operator(O),
    infringement_category(O, _).
fine_consideration_factor(O, previous_fines_same_infringement) :-
    operator(O).
fine_consideration_factor(O, previous_fines_other_law) :-
    operator(O).
fine_consideration_factor(O, size_turnover_market_share) :-
    operator(O),
    undertaking(O).
fine_consideration_factor(O, financial_benefits_losses_avoided) :-
    operator(O).
fine_consideration_factor(O, cooperation_with_authorities) :-
    operator(O).
fine_consideration_factor(O, technical_organisational_measures) :-
    operator(O).
fine_consideration_factor(O, manner_infringement_known) :-
    operator(O).
fine_consideration_factor(O, intentional_or_negligent_character) :-
    operator(O).
fine_consideration_factor(O, action_to_mitigate_harm) :-
    operator(O).
must_establish_penalty_rules(State) :-
    member_state(State).
must_notify_penalty_rules(State, Commission) :-
    member_state(State),
    commission(Commission).
must_notify_penalty_rule_amendments(State, Commission) :-
    member_state(State),
    commission(Commission).
procedural_safeguards_apply(exercise_of_fine_powers).
fine_imposed_by_court_or_body(Body) :-
    competent_national_court(Body);
    other_competent_body(Body).
fine_imposed_on_public_authority(Authority) :-
    national_public_authority_or_body(Authority),
    established_under_national_law(Authority).
must_report_fines_annual(State, Commission) :-
    member_state(State),
    commission(Commission).
must_report_fines_annual(State, Commission) :-
    member_state(State),
    commission(Commission),
    litigation_or_judicial_proceedings_related_to_fines(State).
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_99').
provenance(fine_amount/3, 'celex:32024R1689/oj#art_99').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(infringement_category/2, 'celex:32024R1689/oj#art_99').
provenance(supply_of_incorrect_information/1, 'celex:32024R1689/oj#art_99').
provenance(fine_consideration_factor/2, 'celex:32024R1689/oj#art_99').
provenance(fine_imposed_on_public_authority/1, 'celex:32024R1689/oj#art_99').
provenance(fine_imposed_by_court_or_body/1, 'celex:32024R1689/oj#art_99').
provenance(procedural_safeguards_apply/1, 'celex:32024R1689/oj#art_99').
provenance(must_report_fines_annual/2, 'celex:32024R1689/oj#art_99').
provenance(must_establish_penalty_rules/1, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rule_amendments/2, 'celex:32024R1689/oj#art_99').
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
declared(may_impose_fine_on_union_institution/2, 'European Data Protection Supervisor may impose administrative fine on Union institution', 'celex:32024R1689/oj#art_100').
declared(fine_amount_euros/2, 'administrative fine amount in euros for infringement', 'celex:32024R1689/oj#art_100').
declared(fine_consideration/2, 'factor to consider when deciding fine amount', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'European Data Protection Supervisor must give opportunity to be heard before decision', 'celex:32024R1689/oj#art_100').
declared(must_base_decision_on_commented_elements/2, 'decision must be based only on elements parties could comment on', 'celex:32024R1689/oj#art_100').
declared(complainant_associated_with_proceedings/1, 'complainant shall be associated closely with proceedings', 'celex:32024R1689/oj#art_100').
declared(rights_of_defence_respected/1, 'rights of defence shall be fully respected in proceedings', 'celex:32024R1689/oj#art_100').
declared(entitled_to_access_file/2, 'party entitled to access file subject to protection of personal data or business secrets', 'celex:32024R1689/oj#art_100').
declared(funds_contribute_to_union_budget/1, 'fines collected contribute to general budget of the Union', 'celex:32024R1689/oj#art_100').
declared(fine_does_not_affect_operation/2, 'fine shall not affect effective operation of fined institution', 'celex:32024R1689/oj#art_100').
declared(must_notify_commission_of_fines/2, 'European Data Protection Supervisor must notify Commission annually of fines imposed', 'celex:32024R1689/oj#art_100').
declared(initiated_litigation_or_judicial_proceedings/1, 'litigation or judicial proceedings initiated by European Data Protection Supervisor', 'celex:32024R1689/oj#art_100').
may_impose_fine_on_union_institution(edps, U) :-
    union_institution(U).
fine_amount_euros(non_compliance_art_5(U), 1500000) :-
    union_institution(U),
    non_compliance_art_5(U).
fine_amount_euros(non_compliance_other_requirements(U), 750000) :-
    union_institution(U),
    non_compliance_harmonised_standards(U).
fine_amount_euros(non_compliance_other_requirements(U), 750000) :-
    union_institution(U),
    \+ non_compliance_art_5(U),
    non_compliance_art_50(U).
fine_consideration(U, nature_of_infringement(U)).
fine_consideration(U, gravity_of_infringement(U)).
fine_consideration(U, duration_of_infringement(U)).
fine_consideration(U, consequences_of_infringement(U)).
fine_consideration(U, purpose_of_ai_system(S)) :-
    union_institution(U),
    ai_system(S),
    concerned(S, U).
fine_consideration(U, number_of_affected_persons(U)).
fine_consideration(U, level_of_damage_suffered(U)).
fine_consideration(U, degree_of_responsibility(U)).
fine_consideration(U, technical_and_organisational_measures(U)).
fine_consideration(U, action_taken(U, mitigate_damage)).
fine_consideration(U, degree_of_cooperation_with_edps(U)).
fine_consideration(U, compliance_with_previous_measures(U)).
fine_consideration(U, similar_previous_infringements(U)).
fine_consideration(U, manner_infringement_became_known(U)).
fine_consideration(U, notification_of_infringement(U)).
fine_consideration(U, annual_budget(U)).
must_give_opportunity_to_be_heard(edps, U) :-
    union_institution(U),
    proceedings_conducted_by(edps, U).
must_base_decision_on_commented_elements(edps, U) :-
    union_institution(U),
    proceedings_conducted_by(edps, U).
complainant_associated_with_proceedings(C) :-
    complainant(C).
rights_of_defence_respected(U) :-
    union_institution(U),
    party_concerned(U).
entitled_to_access_file(U, edps_file) :-
    union_institution(U),
    party_concerned(U),
    \+ legitimate_interest_individuals_or_undertakings_prevents_access.
funds_contribute_to_union_budget(funds(art_100)).
fine_does_not_affect_operation(Fine, U) :-
    union_institution(U),
    fine_imposed_under(Fine, art_100).
must_notify_commission_of_fines(edps, fines(art_100)) :-
    annually.
must_notify_commission_of_fines(edps, litigation_or_proceedings(art_100)) :-
    annually,
    initiated_litigation_or_judicial_proceedings(edps).
provenance(may_impose_fine_on_union_institution/2, 'celex:32024R1689/oj#art_100').
provenance(fine_amount_euros/2, 'celex:32024R1689/oj#art_100').
provenance(fine_consideration/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commented_elements/2, 'celex:32024R1689/oj#art_100').
provenance(complainant_associated_with_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(entitled_to_access_file/2, 'celex:32024R1689/oj#art_100').
provenance(funds_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fine_does_not_affect_operation/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_of_fines/2, 'celex:32024R1689/oj#art_100').
provenance(initiated_litigation_or_judicial_proceedings/1, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(may_impose_fine/2, 'Commission may impose a fine on a provider', 'celex:32024R1689/oj#art_101').
declared(fine_amount/2, 'fine amount calculated', 'celex:32024R1689/oj#art_101').
declared(infringement_by_provider/2, 'provider infringed specified provision', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_document_request/1, 'provider failed to comply with document or information request', 'celex:32024R1689/oj#art_101').
declared(supplied_incorrect_information/1, 'provider supplied incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_measure/1, 'provider failed to comply with requested measure', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available_for_evaluation/1, 'provider failed to make model available for evaluation', 'celex:32024R1689/oj#art_101').
declared(preliminary_findings_communicated/1, 'Commission communicated preliminary findings to provider', 'celex:32024R1689/oj#art_101').
declared(opportunity_to_be_heard/1, 'provider given opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(unlimited_jurisdiction_to_review/1, 'Court of Justice has unlimited jurisdiction to review fine decision', 'celex:32024R1689/oj#art_101').
declared(may_cancel_fine/1, 'Court may cancel fine', 'celex:32024R1689/oj#art_101').
declared(may_reduce_fine/1, 'Court may reduce fine', 'celex:32024R1689/oj#art_101').
declared(may_increase_fine/1, 'Court may increase fine', 'celex:32024R1689/oj#art_101').
declared(fine_effective_proportionate_dissuasive/1, 'fine shall be effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_101').
declared(fine_communicated_to_board/1, 'information on fine communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts specifying detailed arrangements', 'celex:32024R1689/oj#art_101').
may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    infringement_by_provider(P, _Provision).
may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_document_request(P).
may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    supplied_incorrect_information(P).
may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_measure(P).
may_impose_fine(commission, P) :-
    general_purpose_ai_model_provider(P),
    failed_to_make_available_for_evaluation(P).
fine_amount(P, amount(percent(3), turnover(preceding_financial_year))) :-
    may_impose_fine(commission, P).
fine_amount(P, amount(eur(15000000))) :-
    may_impose_fine(commission, P).
preliminary_findings_communicated(P) :-
    general_purpose_ai_model_provider(P),
    may_impose_fine(commission, P).
opportunity_to_be_heard(P) :-
    general_purpose_ai_model_provider(P),
    may_impose_fine(commission, P).
fine_effective_proportionate_dissuasive(P) :-
    may_impose_fine(commission, P).
fine_communicated_to_board(P) :-
    may_impose_fine(commission, P).
unlimited_jurisdiction_to_review(P) :-
    may_impose_fine(commission, P).
may_cancel_fine(P) :-
    unlimited_jurisdiction_to_review(P).
may_reduce_fine(P) :-
    unlimited_jurisdiction_to_review(P).
may_increase_fine(P) :-
    unlimited_jurisdiction_to_review(P).
must_adopt_implementing_acts(commission, proceedings_arrangements(art_101_par_1)) :-
    true.
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(infringement_by_provider/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_document_request/1, 'celex:32024R1689/oj#art_101').
provenance(supplied_incorrect_information/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_measure/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_for_evaluation/1, 'celex:32024R1689/oj#art_101').
provenance(preliminary_findings_communicated/1, 'celex:32024R1689/oj#art_101').
provenance(opportunity_to_be_heard/1, 'celex:32024R1689/oj#art_101').
provenance(unlimited_jurisdiction_to_review/1, 'celex:32024R1689/oj#art_101').
provenance(may_cancel_fine/1, 'celex:32024R1689/oj#art_101').
provenance(may_reduce_fine/1, 'celex:32024R1689/oj#art_101').
provenance(may_increase_fine/1, 'celex:32024R1689/oj#art_101').
provenance(fine_effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(fine_communicated_to_board/1, 'celex:32024R1689/oj#art_101').
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
declared(must_take_into_account_amended_requirements/2, 'when adopting detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems, the requirements in Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_102').
must_take_into_account_amended_requirements(AdoptingBody, security_equipment_ai_measures(Measures)) :-
    adopting_detailed_measures(AdoptingBody, Measures),
    technical_specifications_and_procedures(Measures),
    approval_and_use_of_security_equipment(Measures),
    concerning_ai_system(Measures),
    requirements_in_chapter_3_section_2(Requirements).
adopting_detailed_measures(AdoptingBody, Measures) :-
    union_institution(AdoptingBody).
technical_specifications_and_procedures(Measures) :-
    measures(Measures).
approval_and_use_of_security_equipment(Measures) :-
    measures(Measures),
    security_equipment(SecurityEquipment),
    concerns(Measures, SecurityEquipment).
concerning_ai_system(Measures) :-
    measures(Measures),
    ai_system(AISystem),
    concerns(Measures, AISystem).
measures(Measures) :-
    security_equipment_ai_measures(Measures).
security_equipment_ai_measures(Measures) :-
    measures(Measures).
concerns(Measures, Thing) :-
    measures(Measures),
    (ai_system(Thing) ; security_equipment(Thing)).
provenance(must_take_into_account_amended_requirements/2, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures/2, 'celex:32024R1689/oj#art_102').
provenance(technical_specifications_and_procedures/1, 'celex:32024R1689/oj#art_102').
provenance(approval_and_use_of_security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(concerning_ai_system/1, 'celex:32024R1689/oj#art_102').
provenance(measures/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment_ai_measures/1, 'celex:32024R1689/oj#art_102').
provenance(concerns/2, 'celex:32024R1689/oj#art_102').
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
declared(must_take_into_account_ai_safety_requirements/1, 'when adopting delegated acts concerning AI safety components, the requirements in Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_103').
must_take_into_account_ai_safety_requirements(Act) :-
    delegated_act(Act),
    concerning(Act, ai_safety_component(_)),
    must_take_into_account(Act, requirements_in_chapter_3_section_2(_)).
provenance(must_take_into_account_ai_safety_requirements/1, 'celex:32024R1689/oj#art_103').
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
declared(must_take_into_account/2, 'obligation to take into account specified requirements when adopting delegated acts', 'celex:32024R1689/oj#art_104').
must_take_into_account(Commission, requirements(chapter_3_section_2)) :-
    delegated_act(Commission, concerning(ai_safety_component(_S))).
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
declared(must_take_into_account_requirements/2, 'Commission shall take into account requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_105').
must_take_into_account_requirements(commission, requirements_in_chapter_3_section_2(S)) :-
    ai_safety_component(S),
    carrying_out_activities_pursuant_art_8_par_1(commission),
    adopting_technical_specifications_and_testing_standards(commission, S).
adopting_technical_specifications_and_testing_standards(commission, S) :-
    ai_safety_component(S),
    adopts(commission, technical_specifications(S)),
    adopts(commission, testing_standards(S)),
    in_accordance_with(art_8_par_2, S),
    in_accordance_with(art_8_par_3, S).
carrying_out_activities_pursuant_art_8_par_1(commission).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_and_testing_standards/2, 'celex:32024R1689/oj#art_105').
provenance(carrying_out_activities_pursuant_art_8_par_1/1, 'celex:32024R1689/oj#art_105').
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
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').

% ==== celex:32024R1689/oj#art_106 ====
declared(must_take_into_account_ai_safety_component_requirements/2, 'when adopting delegated or implementing acts concerning AI safety components, the requirements in Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_106').
must_take_into_account_ai_safety_component_requirements(Actor, delegated_act_concerning(S)) :-
    ai_safety_component(S),
    delegated_act(delegated_act_concerning(S)),
    actor_adopting_delegated_act(Actor, delegated_act_concerning(S)),
    requirements_in_chapter_3_section_2(S).
must_take_into_account_ai_safety_component_requirements(Actor, implementing_act_concerning(S)) :-
    ai_safety_component(S),
    implementing_act(implementing_act_concerning(S)),
    actor_adopting_implementing_act(Actor, implementing_act_concerning(S)),
    requirements_in_chapter_3_section_2(S).
actor_adopting_delegated_act(commission, _).
actor_adopting_implementing_act(commission, _).
provenance(must_take_into_account_ai_safety_component_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(actor_adopting_delegated_act/2, 'celex:32024R1689/oj#art_106').
provenance(actor_adopting_implementing_act/2, 'celex:32024R1689/oj#art_106').
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
declared(must_take_into_account_ai_act_chapter_3_section_2/1, 'when adopting delegated acts concerning AI safety components, the requirements in Chapter 3 Section 2 of the AI Act shall be taken into account', 'celex:32024R1689/oj#art_107').
must_take_into_account_ai_act_chapter_3_section_2(DA) :-
    delegated_act(DA),
    concerning(DA, ai_safety_component(_)),
    adopted_under(DA, 'celex:32018R0858/oj#art_5/par_3'),
    requirements_in_chapter_3_section_2(_).
provenance(must_take_into_account_ai_act_chapter_3_section_2/1, 'celex:32024R1689/oj#art_107').
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
declared(must_take_into_account_chapter_3_section_2/1, 'when adopting acts concerning AI systems which are safety components, the requirements in Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_108').
must_take_into_account_chapter_3_section_2(adopting_acts_concerning_ai_safety_component(A)) :-
    ai_safety_component(A).
provenance(must_take_into_account_chapter_3_section_2/1, 'celex:32024R1689/oj#art_108').
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
declared(must_take_into_account_requirements/2, 'when adopting implementing acts concerning AI safety components, the requirements in Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_109').
must_take_into_account_requirements(Authority, implementing_acts(art_11_par_2, ai_safety_component(S))) :-
    adopting_implementing_acts(Authority, art_11_par_2),
    ai_safety_component(S),
    requirements_in_chapter_3_section_2(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
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
declared(amending_directive/1, 'directive being amended by this provision', 'celex:32024R1689/oj#art_110').
declared(annex_of_directive/1, 'annex of the directive being amended', 'celex:32024R1689/oj#art_110').
declared(added_to_annex/2, 'provision added to annex of directive', 'celex:32024R1689/oj#art_110').
amending_directive('celex:32020L1828/oj').
annex_of_directive('celex:32020L1828/oj#anx_I').
added_to_annex('celex:32020L1828/oj#anx_I', 'celex:32024R1689/oj').
provenance(amending_directive/1, 'celex:32024R1689/oj#art_110').
provenance(annex_of_directive/1, 'celex:32024R1689/oj#art_110').
provenance(added_to_annex/2, 'celex:32024R1689/oj#art_110').
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
declared(must_bring_into_compliance/2, 'obligation to bring AI system into compliance with the AI Act', 'celex:32024R1689/oj#art_111').
declared(must_comply_by_date/2, 'obligation to comply with requirements by specified date', 'celex:32024R1689/oj#art_111').
declared(significant_change_in_design/1, 'significant changes in design of AI system', 'celex:32024R1689/oj#art_111').
declared(placed_or_put_into_service_before/2, 'AI system placed on market or put into service before specified date', 'celex:32024R1689/oj#art_111').
declared(large_scale_it_system/1, 'large-scale IT system established by legal acts listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(component_of/2, 'AI system is component of larger system', 'celex:32024R1689/oj#art_111').
declared(used_by_public_authority/1, 'high-risk AI system intended to be used by public authority', 'celex:32024R1689/oj#art_111').
declared(general_purpose_ai_model_placed_before/2, 'general-purpose AI model placed on market before specified date', 'celex:32024R1689/oj#art_111').
must_bring_into_compliance(Operator, S) :-
    operator(Operator),
    ai_system(S),
    component_of(S, L),
    large_scale_it_system(L),
    placed_or_put_into_service_before(S, date(2027, 8, 2)),
    \+ non_compliance_art_5(S).
must_comply_by_date(Operator, S) :-
    must_bring_into_compliance(Operator, S),
    date_of_compliance(S, date(2030, 12, 31)).
applies_to_system(S) :-
    high_risk_ai_system(S),
    placed_or_put_into_service_before(S, date(2026, 8, 2)),
    \+ component_of(S, L),
    \+ large_scale_it_system(L),
    \+ non_compliance_art_5(S).
must_comply_by_date(Operator, S) :-
    operator(Operator),
    applies_to_system(S),
    significant_change_in_design(S),
    date_of_compliance(S, date(2026, 8, 2)).
must_comply_by_date(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S),
    used_by_public_authority(S),
    date_of_compliance(S, date(2030, 8, 2)).
must_comply_by_date(Provider, M) :-
    provider(Provider),
    general_purpose_ai_model(M),
    general_purpose_ai_model_placed_before(M, date(2025, 8, 2)),
    date_of_compliance(M, date(2027, 8, 2)).
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_comply_by_date/2, 'celex:32024R1689/oj#art_111').
provenance(applies_to_system/1, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(component_of/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(placed_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(used_by_public_authority/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model_placed_before/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess_need_for_amendment/2, 'Commission shall assess need for amendment of specified list', 'celex:32024R1689/oj#art_112/par_1').
declared(must_submit_findings/3, 'Commission shall submit findings to specified bodies', 'celex:32024R1689/oj#art_112/par_1').
declared(must_evaluate_and_report/3, 'Commission shall evaluate and report to specified bodies on specified matters', 'celex:32024R1689/oj#art_112/par_2').
declared(must_submit_report/3, 'Commission shall submit report on evaluation and review to specified bodies', 'celex:32024R1689/oj#art_112/par_3').
declared(report_made_public/1, 'report shall be made public', 'celex:32024R1689/oj#art_112/par_3').
declared(must_pay_attention_to/2, 'reports shall pay specific attention to specified matter', 'celex:32024R1689/oj#art_112/par_4').
declared(must_evaluate_functioning/2, 'Commission shall evaluate functioning of specified entity', 'celex:32024R1689/oj#art_112/par_5').
declared(must_submit_evaluation_report/3, 'Commission shall submit report on evaluation to specified bodies', 'celex:32024R1689/oj#art_112/par_5').
declared(must_submit_report_on_review/3, 'Commission shall submit report on review of progress to specified bodies', 'celex:32024R1689/oj#art_112/par_6').
declared(must_evaluate_impact_and_effectiveness/2, 'Commission shall evaluate impact and effectiveness of specified measures', 'celex:32024R1689/oj#art_112/par_7').
declared(must_provide_information_on_request/2, 'entity shall provide information upon request without undue delay', 'celex:32024R1689/oj#art_112/par_8').
declared(must_take_into_account_positions/2, 'Commission shall take into account positions and findings of specified bodies', 'celex:32024R1689/oj#art_112/par_9').
declared(must_submit_proposals_to_amend/2, 'Commission shall submit proposals to amend specified act', 'celex:32024R1689/oj#art_112/par_10').
declared(shall_undertake_to_develop/2, 'entity shall undertake to develop specified methodology', 'celex:32024R1689/oj#art_112/par_11').
declared(methodology_for_evaluation_of_risk_levels/1, 'objective and participative methodology for evaluation of risk levels', 'celex:32024R1689/oj#art_112/par_11').
declared(must_take_into_account_regulatory_specificities/1, 'amendment shall take into account regulatory specificities of sector', 'celex:32024R1689/oj#art_112/par_12').
declared(must_carry_out_assessment_of_enforcement/2, 'Commission shall carry out assessment of enforcement and report to specified bodies', 'celex:32024R1689/oj#art_112/par_13').
must_assess_need_for_amendment(commission, list(annex_3)) :-
    once_a_year_after_entry_into_force,
    before_end_of_delegation_period(art_97).
must_assess_need_for_amendment(commission, list(prohibited_ai_practices)) :-
    once_a_year_after_entry_into_force,
    before_end_of_delegation_period(art_97).
must_submit_findings(commission, european_parliament, assessment(amendment_need, list(annex_3))) :-
    must_assess_need_for_amendment(commission, list(annex_3)).
must_submit_findings(commission, council, assessment(amendment_need, list(annex_3))) :-
    must_assess_need_for_amendment(commission, list(annex_3)).
must_submit_findings(commission, european_parliament, assessment(amendment_need, list(prohibited_ai_practices))) :-
    must_assess_need_for_amendment(commission, list(prohibited_ai_practices)).
must_submit_findings(commission, council, assessment(amendment_need, list(prohibited_ai_practices))) :-
    must_assess_need_for_amendment(commission, list(prohibited_ai_practices)).
must_evaluate_and_report(commission, european_parliament, matters([amendments_annex_3_area_headings, amendments_transparency_measures_art_50, supervision_governance_effectiveness])) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).
must_evaluate_and_report(commission, council, matters([amendments_annex_3_area_headings, amendments_transparency_measures_art_50, supervision_governance_effectiveness])) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).
must_submit_report(commission, european_parliament, evaluation_review(act)) :-
    by_date(2, august, 2029),
    every(years(4), thereafter).
must_submit_report(commission, council, evaluation_review(act)) :-
    by_date(2, august, 2029),
    every(years(4), thereafter).
report_made_public(report(evaluation_review, act)) :-
    must_submit_report(commission, european_parliament, evaluation_review(act)).
must_pay_attention_to(report(evaluation_review, par_2), status_resources(national_competent_authorities)) :-
    must_evaluate_and_report(commission, european_parliament, _).
must_pay_attention_to(report(evaluation_review, par_2), state_of_penalties(member_states)) :-
    must_evaluate_and_report(commission, european_parliament, _).
must_pay_attention_to(report(evaluation_review, par_2), adopted_harmonised_standards_and_common_specifications) :-
    must_evaluate_and_report(commission, european_parliament, _).
must_pay_attention_to(report(evaluation_review, par_2), market_entry_undertakings(smes)) :-
    must_evaluate_and_report(commission, european_parliament, _).
must_evaluate_functioning(commission, ai_office) :-
    by_date(2, august, 2028).
must_submit_evaluation_report(commission, european_parliament, evaluation(ai_office)) :-
    must_evaluate_functioning(commission, ai_office).
must_submit_evaluation_report(commission, council, evaluation(ai_office)) :-
    must_evaluate_functioning(commission, ai_office).
must_submit_report_on_review(commission, european_parliament, review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models)) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).
must_submit_report_on_review(commission, council, review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models)) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).
report_made_public(report(review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models))) :-
    must_submit_report_on_review(commission, european_parliament, review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models)).
must_evaluate_impact_and_effectiveness(commission, voluntary_codes_of_conduct(chapter_3_section_2, non_high_risk_ai_systems)) :-
    by_date(2, august, 2028),
    every(years(3), thereafter).
must_provide_information_on_request(board, commission) :-
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).
must_provide_information_on_request(member_state, commission) :-
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).
must_provide_information_on_request(national_competent_authority, commission) :-
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).
must_take_into_account_positions(commission, board) :-
    carrying_out_evaluations_and_reviews.
must_take_into_account_positions(commission, european_parliament) :-
    carrying_out_evaluations_and_reviews.
must_take_into_account_positions(commission, council) :-
    carrying_out_evaluations_and_reviews.
must_take_into_account_positions(commission, other_relevant_bodies) :-
    carrying_out_evaluations_and_reviews.
must_submit_proposals_to_amend(commission, act) :-
    necessary,
    taking_into_account([technology_developments, effect_on_health_safety, effect_on_fundamental_rights, state_of_progress_information_society]).
shall_undertake_to_develop(ai_office, methodology_for_evaluation_of_risk_levels(M)) :-
    methodology_for_evaluation_of_risk_levels(M),
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).
methodology_for_evaluation_of_risk_levels(M) :-
    objective(M),
    participative(M),
    based_on_criteria(relevant_articles),
    inclusion_of_new_systems([annex_3_list, prohibited_practices_list, transparency_measures_list]).
must_take_into_account_regulatory_specificities(amendment(act)) :-
    concerns_sectoral_legislation(annex_1_section_2).
must_carry_out_assessment_of_enforcement(commission, european_parliament) :-
    by_date(2, august, 2031),
    taking_into_account(first_years_of_application).
must_carry_out_assessment_of_enforcement(commission, council) :-
    by_date(2, august, 2031),
    taking_into_account(first_years_of_application).
must_carry_out_assessment_of_enforcement(commission, european_economic_and_social_committee) :-
    by_date(2, august, 2031),
    taking_into_account(first_years_of_application).
provenance(must_assess_need_for_amendment/2, 'celex:32024R1689/oj#art_112/par_1').
provenance(must_submit_findings/3, 'celex:32024R1689/oj#art_112/par_1').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112/par_2').
provenance(must_submit_report/3, 'celex:32024R1689/oj#art_112/par_3').
provenance(report_made_public/1, 'celex:32024R1689/oj#art_112/par_3').
provenance(must_pay_attention_to/2, 'celex:32024R1689/oj#art_112/par_4').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112/par_5').
provenance(must_submit_evaluation_report/3, 'celex:32024R1689/oj#art_112/par_5').
provenance(must_submit_report_on_review/3, 'celex:32024R1689/oj#art_112/par_6').
provenance(must_evaluate_impact_and_effectiveness/2, 'celex:32024R1689/oj#art_112/par_7').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_112/par_8').
provenance(must_take_into_account_positions/2, 'celex:32024R1689/oj#art_112/par_9').
provenance(must_submit_proposals_to_amend/2, 'celex:32024R1689/oj#art_112/par_10').
provenance(shall_undertake_to_develop/2, 'celex:32024R1689/oj#art_112/par_11').
provenance(methodology_for_evaluation_of_risk_levels/1, 'celex:32024R1689/oj#art_112/par_11').
provenance(must_take_into_account_regulatory_specificities/1, 'celex:32024R1689/oj#art_112/par_12').
provenance(must_carry_out_assessment_of_enforcement/2, 'celex:32024R1689/oj#art_112/par_13').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').

% ==== celex:32024R1689/oj#art_113 ====
declared(applies_from/2, 'provision applies from specified date', 'celex:32024R1689/oj#art_113').
declared(enters_into_force/2, 'instrument enters into force on specified date', 'celex:32024R1689/oj#art_113').
declared(exception_applies/2, 'exception applies to specified provision', 'celex:32024R1689/oj#art_113').
applies_from('celex:32024R1689/oj', date(2026, 8, 2)).
applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
exception_applies('celex:32024R1689/oj#art_101', applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2))).
applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
provenance(enters_into_force/2, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(exception_applies/2, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation_new_framework/1, 'Union harmonisation legislation based on the New Legislative Framework listed in Annex I Section A', 'celex:32024R1689/oj#anx_1').
declared(union_harmonisation_legislation_other/1, 'other Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation_new_framework('celex:32006L0042/oj').
union_harmonisation_legislation_new_framework('celex:32009L0048/oj').
union_harmonisation_legislation_new_framework('celex:32013L0053/oj').
union_harmonisation_legislation_new_framework('celex:32014L0033/oj').
union_harmonisation_legislation_new_framework('celex:32014L0034/oj').
union_harmonisation_legislation_new_framework('celex:32014L0053/oj').
union_harmonisation_legislation_new_framework('celex:32014L0068/oj').
union_harmonisation_legislation_new_framework('celex:32016R0424/oj').
union_harmonisation_legislation_new_framework('celex:32016R0425/oj').
union_harmonisation_legislation_new_framework('celex:32016R0426/oj').
union_harmonisation_legislation_new_framework('celex:32017R0745/oj').
union_harmonisation_legislation_new_framework('celex:32017R0746/oj').
union_harmonisation_legislation_other('celex:32008R0300/oj').
union_harmonisation_legislation_other('celex:32013R0168/oj').
union_harmonisation_legislation_other('celex:32013R0167/oj').
union_harmonisation_legislation_other('celex:32014L0090/oj').
union_harmonisation_legislation_other('celex:32016L0797/oj').
union_harmonisation_legislation_other('celex:32018R0858/oj').
union_harmonisation_legislation_other('celex:32019R2144/oj').
union_harmonisation_legislation_other('celex:32018R1139/oj').
union_harmonisation_legislation(L) :-
    union_harmonisation_legislation_new_framework(L).
union_harmonisation_legislation(L) :-
    union_harmonisation_legislation_other(L).
provenance(union_harmonisation_legislation_new_framework/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_other/1, 'celex:32024R1689/oj#anx_1').
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
declared(criminal_offence/1, 'offence listed in Annex II of the AI Act', 'celex:32024R1689/oj#anx_2').
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
criminal_offence(crimes_within_jurisdiction_of_the_international_criminal_court).
criminal_offence(unlawful_seizure_of_aircraft_or_ships).
criminal_offence(rape).
criminal_offence(environmental_crime).
criminal_offence(organised_or_armed_robbery).
criminal_offence(sabotage).
criminal_offence(participation_in_criminal_organisation_involved_in_one_or_more_of_the_offences_listed_above).
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#anx_3').
declared(biometric_verification_system/1, 'AI system for biometric verification to confirm identity', 'celex:32024R1689/oj#anx_3').
declared(ai_system_for_biometric_categorisation/1, 'AI system for biometric categorisation based on sensitive attributes', 'celex:32024R1689/oj#anx_3').
declared(emotion_recognition_system/1, 'AI system for emotion recognition', 'celex:32024R1689/oj#anx_3').
declared(safety_component_critical_infrastructure/1, 'AI system as safety component in critical infrastructure', 'celex:32024R1689/oj#anx_3').
declared(education_access_system/1, 'AI system for access to education and vocational training', 'celex:32024R1689/oj#anx_3').
declared(education_evaluation_system/1, 'AI system for evaluating learning outcomes', 'celex:32024R1689/oj#anx_3').
declared(education_level_assessment_system/1, 'AI system for assessing appropriate education level', 'celex:32024R1689/oj#anx_3').
declared(education_monitoring_system/1, 'AI system for monitoring prohibited behaviour during tests', 'celex:32024R1689/oj#anx_3').
declared(recruitment_system/1, 'AI system for recruitment or selection', 'celex:32024R1689/oj#anx_3').
declared(employment_management_system/1, 'AI system for decisions affecting work-related relationships', 'celex:32024R1689/oj#anx_3').
declared(public_benefits_eligibility_system/1, 'AI system for evaluating eligibility for public benefits', 'celex:32024R1689/oj#anx_3').
declared(creditworthiness_system/1, 'AI system for evaluating creditworthiness or credit score', 'celex:32024R1689/oj#anx_3').
declared(insurance_risk_pricing_system/1, 'AI system for risk assessment and pricing in life and health insurance', 'celex:32024R1689/oj#anx_3').
declared(emergency_call_system/1, 'AI system for evaluating or dispatching emergency calls', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_victim_assessment_system/1, 'AI system for assessing risk of becoming victim of criminal offences', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_polygraph_system/1, 'AI system used as polygraph or similar tool by law enforcement', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_evidence_reliability_system/1, 'AI system for evaluating reliability of evidence', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_reoffending_risk_system/1, 'AI system for assessing risk of offending or re-offending', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_profiling_system/1, 'AI system for profiling in criminal offence proceedings', 'celex:32024R1689/oj#anx_3').
declared(migration_polygraph_system/1, 'AI system used as polygraph or similar tool in migration context', 'celex:32024R1689/oj#anx_3').
declared(migration_risk_assessment_system/1, 'AI system for assessing risk in migration, asylum, border control', 'celex:32024R1689/oj#anx_3').
declared(migration_asylum_application_system/1, 'AI system for examining asylum, visa, residence permit applications', 'celex:32024R1689/oj#anx_3').
declared(migration_identification_system/1, 'AI system for detecting, recognising or identifying persons in migration context', 'celex:32024R1689/oj#anx_3').
declared(judicial_assistance_system/1, 'AI system to assist judicial authority in researching and interpreting facts and law', 'celex:32024R1689/oj#anx_3').
declared(election_influence_system/1, 'AI system intended to influence outcome of election or referendum or voting behaviour', 'celex:32024R1689/oj#anx_3').
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    ai_system_for_biometric_categorisation(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    emotion_recognition_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    safety_component_critical_infrastructure(S).
high_risk_ai_system(S) :-
    education_access_system(S).
high_risk_ai_system(S) :-
    education_evaluation_system(S).
high_risk_ai_system(S) :-
    education_level_assessment_system(S).
high_risk_ai_system(S) :-
    education_monitoring_system(S).
high_risk_ai_system(S) :-
    recruitment_system(S).
high_risk_ai_system(S) :-
    employment_management_system(S).
high_risk_ai_system(S) :-
    public_benefits_eligibility_system(S).
high_risk_ai_system(S) :-
    creditworthiness_system(S).
high_risk_ai_system(S) :-
    insurance_risk_pricing_system(S).
high_risk_ai_system(S) :-
    emergency_call_system(S).
high_risk_ai_system(S) :-
    law_enforcement_victim_assessment_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    law_enforcement_polygraph_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    law_enforcement_evidence_reliability_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    law_enforcement_reoffending_risk_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    law_enforcement_profiling_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    migration_polygraph_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    migration_risk_assessment_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    migration_asylum_application_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    migration_identification_system(S),
    permitted_under_relevant_law(S).
high_risk_ai_system(S) :-
    judicial_assistance_system(S).
high_risk_ai_system(S) :-
    election_influence_system(S).
permitted_under_relevant_law(S) :-
    ai_system(S).
biometric_verification_system(S) :-
    ai_system(S),
    biometric_verification(S),
    intended_purpose(confirm_identity(_P)).
ai_system_for_biometric_categorisation(S) :-
    ai_system(S),
    biometric_categorisation_system(S),
    based_on_inference_of_sensitive_or_protected_attributes(S).
emotion_recognition_system(S) :-
    ai_system(S),
    emotion_recognition(S).
safety_component_critical_infrastructure(S) :-
    ai_system(S),
    safety_component(S),
    critical_infrastructure_management(S).
critical_infrastructure_management(S) :-
    critical_digital_infrastructure_management(S).
critical_infrastructure_management(S) :-
    road_traffic_management(S).
critical_infrastructure_management(S) :-
    water_gas_heating_electricity_supply(S).
education_access_system(S) :-
    ai_system(S),
    intended_purpose(determine_access_or_admission_education(_P)).
education_access_system(S) :-
    ai_system(S),
    intended_purpose(assign_to_educational_institution(_P)).
education_evaluation_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_learning_outcomes(_P)).
education_level_assessment_system(S) :-
    ai_system(S),
    intended_purpose(assess_appropriate_education_level(_P)).
education_monitoring_system(S) :-
    ai_system(S),
    intended_purpose(monitor_prohibited_behaviour_during_tests(_P)).
recruitment_system(S) :-
    ai_system(S),
    intended_purpose(recruitment_or_selection(_P)).
employment_management_system(S) :-
    ai_system(S),
    intended_purpose(decisions_affecting_work_relationships(_P)).
employment_management_system(S) :-
    ai_system(S),
    intended_purpose(allocate_tasks_based_on_behaviour_or_traits(_P)).
employment_management_system(S) :-
    ai_system(S),
    intended_purpose(monitor_and_evaluate_performance_and_behaviour(_P)).
public_benefits_eligibility_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_eligibility_public_benefits(_P)),
    used_by_or_on_behalf_of_public_authority(S).
creditworthiness_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_creditworthiness_or_credit_score(_P)),
    \+ intended_purpose(detect_financial_fraud(_P)).
insurance_risk_pricing_system(S) :-
    ai_system(S),
    intended_purpose(risk_assessment_and_pricing_life_health_insurance(_P)).
emergency_call_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_classify_emergency_calls(_P)).
emergency_call_system(S) :-
    ai_system(S),
    intended_purpose(dispatch_emergency_first_response(_P)).
emergency_call_system(S) :-
    ai_system(S),
    intended_purpose(establish_priority_dispatching_emergency_services(_P)).
law_enforcement_victim_assessment_system(S) :-
    ai_system(S),
    intended_purpose(assess_risk_becoming_victim_criminal_offences(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S).
law_enforcement_polygraph_system(S) :-
    ai_system(S),
    intended_purpose(polygraph_or_similar_tool(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S).
law_enforcement_evidence_reliability_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_reliability_evidence(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S).
law_enforcement_reoffending_risk_system(S) :-
    ai_system(S),
    intended_purpose(assess_risk_offending_reoffending(_P)),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S),
    \+ based_solely_on_profiling(S).
law_enforcement_profiling_system(S) :-
    ai_system(S),
    profiling(S),
    used_by_or_on_behalf_of_law_enforcement_or_union_institution(S),
    intended_purpose(detection_investigation_prosecution_criminal_offences(_P)).
migration_polygraph_system(S) :-
    ai_system(S),
    intended_purpose(polygraph_or_similar_tool(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S).
migration_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(assess_risk_including_security_irregular_migration_health(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S).
migration_asylum_application_system(S) :-
    ai_system(S),
    intended_purpose(examine_asylum_visa_residence_permit_applications(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S).
migration_identification_system(S) :-
    ai_system(S),
    intended_purpose(detect_recognise_identify_natural_persons(_P)),
    used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S),
    \+ intended_purpose(verification_of_travel_documents(_P)).
judicial_assistance_system(S) :-
    ai_system(S),
    intended_purpose(assist_judicial_authority_researching_interpreting_applying_law(_P)).
judicial_assistance_system(S) :-
    ai_system(S),
    intended_purpose(similar_use_alternative_dispute_resolution(_P)).
election_influence_system(S) :-
    ai_system(S),
    intended_purpose(influence_election_or_referendum_outcome(_P)).
election_influence_system(S) :-
    ai_system(S),
    intended_purpose(influence_voting_behaviour(_P)).
exempt_election_administrative_tool(S) :-
    ai_system(S),
    intended_purpose(organise_optimise_structure_political_campaigns_administrative_logistical(_P)).
used_by_or_on_behalf_of_public_authority(S) :-
    deployer_public_authority(S).
used_by_or_on_behalf_of_public_authority(S) :-
    used_on_behalf_of_public_authority(S).
used_by_or_on_behalf_of_law_enforcement_or_union_institution(S) :-
    law_enforcement_authority(_A),
    used_by_or_on_behalf_of(S, _A).
used_by_or_on_behalf_of_law_enforcement_or_union_institution(S) :-
    union_institution(_U),
    used_in_support_of_law_enforcement(S, _U).
used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S) :-
    national_public_authority_or_body(_A),
    used_by_or_on_behalf_of(S, _A).
used_by_or_on_behalf_of_competent_public_authority_or_union_institution(S) :-
    union_institution(_U),
    used_by_or_on_behalf_of(S, _U).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(ai_system_for_biometric_categorisation/1, 'celex:32024R1689/oj#anx_3').
provenance(emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3').
provenance(safety_component_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_level_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_monitoring_system/1, 'celex:32024R1689/oj#anx_3').
provenance(recruitment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_management_system/1, 'celex:32024R1689/oj#anx_3').
provenance(public_benefits_eligibility_system/1, 'celex:32024R1689/oj#anx_3').
provenance(creditworthiness_system/1, 'celex:32024R1689/oj#anx_3').
provenance(insurance_risk_pricing_system/1, 'celex:32024R1689/oj#anx_3').
provenance(emergency_call_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_victim_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_evidence_reliability_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_reoffending_risk_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_asylum_application_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(judicial_assistance_system/1, 'celex:32024R1689/oj#anx_3').
provenance(election_influence_system/1, 'celex:32024R1689/oj#anx_3').
provenance(exempt_election_administrative_tool/1, 'celex:32024R1689/oj#anx_3').
provenance(permitted_under_relevant_law/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_public_authority/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_law_enforcement_or_union_institution/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_competent_public_authority_or_union_institution/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(technical_documentation_contains/2, 'technical documentation must contain specified information', 'celex:32024R1689/oj#anx_4').
required_technical_documentation(TD) :-
    technical_documentation(TD).
technical_documentation_contains(TD, general_description(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    intended_purpose(S),
    provider(P),
    version_of_system(S, V),
    relation_to_previous_versions(S, V).
technical_documentation_contains(TD, interaction_with_external_systems(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    interacts_with_hardware_or_software(S, _External).
technical_documentation_contains(TD, software_firmware_versions(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    software_or_firmware_version(S, _Version),
    version_update_requirements(S, _Requirements).
technical_documentation_contains(TD, forms_of_placement(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    form_of_placement(S, _Form).
technical_documentation_contains(TD, intended_hardware(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    intended_hardware(S, _Hardware).
technical_documentation_contains(TD, product_component_photographs(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    component_of_products(S),
    photographs_or_illustrations(S, _Images).
technical_documentation_contains(TD, deployer_user_interface(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    user_interface_for_deployer(S, _UI).
technical_documentation_contains(TD, deployer_instructions_and_ui(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    deployer_instructions_for_use_applicable(S),
    user_interface_for_deployer(S, _UI).
technical_documentation_contains(TD, development_description(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    development_methods_and_steps(S, _Methods),
    pre_trained_systems_or_tools(S, _ThirdParty),
    integration_or_modification_details(S, _Details).
technical_documentation_contains(TD, design_specifications(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    general_logic(S, _Logic),
    key_design_choices(S, _Choices),
    rationale_and_assumptions(S, _Rationale),
    intended_persons_or_groups(S, _Groups),
    main_classification_choices(S, _Classifications),
    optimisation_target(S, _Target),
    parameter_relevance(S, _Parameters),
    expected_output_and_quality(S, _Output),
    trade_off_technical_solutions(S, _TradeOffs),
    chapter_3_section_2(S).
technical_documentation_contains(TD, system_architecture(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    software_components_architecture(S, _Architecture),
    computational_resources(S, _Resources).
technical_documentation_contains(TD, data_requirements(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    datasheets(S, _Datasheets),
    training_methodologies(S, _Methods),
    training_data_sets(S, _DataSets),
    data_provenance(S, _Provenance),
    data_scope(S, _Scope),
    data_main_characteristics(S, _Characteristics),
    data_obtention_and_selection(S, _Obtention),
    labelling_procedures(S, _Labelling),
    data_cleaning_methodologies(S, _Cleaning).
technical_documentation_contains(TD, human_oversight_assessment(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    human_oversight_measures_technical(S),
    technical_measures_for_output_interpretation(S, _Measures).
technical_documentation_contains(TD, predetermined_changes(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    predetermined_changes_to_system(S, _Changes),
    predetermined_changes_to_performance(S, _PerformanceChanges),
    technical_solutions_for_continuous_compliance(S, _Solutions),
    chapter_3_section_2(S).
technical_documentation_contains(TD, validation_and_testing(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    validation_procedures(S, _Procedures),
    testing_procedures(S, _TestProcedures),
    validation_data_used(S, _ValData),
    testing_data_used(S, _TestData),
    data_main_characteristics(S, _DataChars),
    accuracy_metrics(S, _Accuracy),
    robustness_metrics(S, _Robustness),
    compliance_metrics(S, _Compliance),
    chapter_3_section_2(S),
    discriminatory_impact_metrics(S, _Impacts),
    test_logs(S, _Logs),
    test_reports(S, _Reports),
    signed_by_responsible_persons(S, _Signatories),
    predetermined_changes_tested(S, _PredChanges).
technical_documentation_contains(TD, cybersecurity_measures(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    cybersecurity_measures_put_in_place(S, _Measures).
technical_documentation_contains(TD, monitoring_functioning_control(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    capabilities_and_limitations(S, _Capabilities),
    accuracy_for_specific_persons_or_groups(S, _Accuracy),
    overall_expected_accuracy(S, _OverallAccuracy),
    foreseeable_unintended_outcomes(S, _Outcomes),
    risks_to_health_safety(S, _HealthRisks),
    risks_to_fundamental_rights(S, _RightsRisks),
    risks_to_discrimination(S, _DiscRisks),
    human_oversight_measures_technical(S),
    technical_measures_for_output_interpretation(S, _InterpMeasures),
    input_data_specifications(S, _Specs).
technical_documentation_contains(TD, performance_metrics_appropriateness(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    performance_metrics_appropriateness(S, _Metrics).
technical_documentation_contains(TD, risk_management_system_description(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    risk_management_system(S, _System).
technical_documentation_contains(TD, lifecycle_changes(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    relevant_changes_through_lifecycle(S, _Changes).
technical_documentation_contains(TD, harmonised_standards_applied(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    harmonised_standards_applied_fully_or_partly(S, _Standards),
    reference_published_in_official_journal(S, _Ref).
technical_documentation_contains(TD, alternative_solutions(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    \+ harmonised_standards_applied_fully_or_partly(S, _),
    alternative_solutions_description(S, _Solutions),
    chapter_3_section_2(S),
    other_relevant_standards_applied(S, _OtherStandards),
    technical_specifications_applied(S, _TechSpecs).
technical_documentation_contains(TD, eu_declaration_of_conformity_copy(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    eu_declaration_of_conformity(S).
technical_documentation_contains(TD, post_market_evaluation_system(S)) :-
    required_technical_documentation(TD),
    ai_system(S),
    post_market_monitoring_system(S),
    post_market_monitoring_plan(S).
provenance(technical_documentation_contains/2, 'celex:32024R1689/oj#anx_4').
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
declared(eu_declaration_of_conformity_content/2, 'content required in EU declaration of conformity', 'celex:32024R1689/oj#anx_5').
eu_declaration_of_conformity_content(D, ai_system_name_and_reference(Name, Type, Ref)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    name(S, Name),
    type(S, Type),
    additional_reference(S, Ref).
eu_declaration_of_conformity_content(D, provider_name_and_address(P)) :-
    eu_declaration_of_conformity(D),
    provider(P).
eu_declaration_of_conformity_content(D, authorised_representative_name_and_address(R)) :-
    eu_declaration_of_conformity(D),
    authorised_representative(R).
eu_declaration_of_conformity_content(D, sole_responsibility_statement(P)) :-
    eu_declaration_of_conformity(D),
    provider(P).
eu_declaration_of_conformity_content(D, conformity_statement(S, Reg)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    Reg = 'celex:32024R1689/oj'.
eu_declaration_of_conformity_content(D, conformity_statement(S, OtherLaw)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    other_relevant_union_law(OtherLaw).
eu_declaration_of_conformity_content(D, personal_data_compliance_statement(S)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    personal_data_processing_involved(S).
eu_declaration_of_conformity_content(D, harmonised_standards_reference(Std)) :-
    eu_declaration_of_conformity(D),
    harmonised_standard(Std).
eu_declaration_of_conformity_content(D, common_specification_reference(Spec)) :-
    eu_declaration_of_conformity(D),
    common_specification(Spec).
eu_declaration_of_conformity_content(D, notified_body_details(B, Procedure, Certificate)) :-
    eu_declaration_of_conformity(D),
    notified_body(B),
    conformity_assessment_procedure(Procedure),
    issued_certificate(Certificate, B).
eu_declaration_of_conformity_content(D, issue_details(Place, Date, Signer, Function, OnBehalfOf)) :-
    eu_declaration_of_conformity(D),
    place_of_issue(D, Place),
    date_of_issue(D, Date),
    signer(D, Signer),
    signer_function(D, Function),
    signer_on_behalf_of(D, OnBehalfOf).
provenance(eu_declaration_of_conformity_content/2, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_procedure_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
conformity_assessment_procedure_internal_control(S) :-
    ai_system(S),
    quality_management_system(Q),
    must_have_quality_management_system(P, S),
    provider(P),
    technical_documentation(T),
    post_market_monitoring_system(M),
    post_market_monitoring(P, S).
must_verify_quality_management_system(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_procedure_internal_control(S),
    quality_management_system(Q),
    must_have_quality_management_system(P, S).
must_examine_technical_documentation(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_procedure_internal_control(S),
    technical_documentation(T),
    requirements_in_chapter_3_section_2(S).
must_verify_design_development_consistency(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_procedure_internal_control(S),
    technical_documentation(T),
    post_market_monitoring_system(M),
    post_market_monitoring(P, S).
provenance(conformity_assessment_procedure_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_consistency/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(conformity_assessment_procedure_annex_7/1, 'conformity assessment based on quality management system and technical documentation under Annex VII', 'celex:32024R1689/oj#anx_7').
conformity_assessment_procedure_annex_7(S) :-
    quality_management_system_assessment(S),
    technical_documentation_assessment(S),
    surveillance_applies(S).
declared(quality_management_system_assessment/1, 'assessment of approved quality management system under Annex VII point 3', 'celex:32024R1689/oj#anx_7').
quality_management_system_assessment(S) :-
    approved_quality_management_system(Qms),
    covers_system(Qms, S),
    must_lodge_application(_Provider, application(Qms, S)),
    assessed_by_notified_body(Qms, _NotifiedBody),
    satisfies_requirements(Qms, art_17).
declared(technical_documentation_assessment/1, 'assessment of technical documentation under Annex VII point 4', 'celex:32024R1689/oj#anx_7').
technical_documentation_assessment(S) :-
    technical_documentation(S),
    must_lodge_application(_Provider, technical_documentation_application(S)),
    examined_by_notified_body(S, _NotifiedBody),
    conformity_verified(S, chapter_3_section_2).
declared(surveillance_applies/1, 'surveillance of approved quality management system applies to system', 'celex:32024R1689/oj#anx_7').
surveillance_applies(S) :-
    approved_quality_management_system(Qms),
    covers_system(Qms, S),
    periodic_audits_conducted(Qms, _NotifiedBody).
declared(must_lodge_application/2, 'provider must lodge application with notified body', 'celex:32024R1689/oj#anx_7').
must_lodge_application(Provider, application(Qms, S)) :-
    provider(Provider),
    quality_management_system(Qms),
    ai_system(S),
    covers_system(Qms, S),
    application_includes(Provider, name_address),
    application_includes(Provider, list_of_systems(Qms)),
    application_includes(Provider, technical_documentation_for_each(S)),
    application_includes(Provider, qms_documentation(art_17)),
    application_includes(Provider, procedures_adequate_effective),
    application_includes(Provider, declaration_not_lodged_elsewhere).
must_lodge_application(Provider, technical_documentation_application(S)) :-
    provider(Provider),
    ai_system(S),
    intended_for_placing_on_market_or_putting_into_service(S),
    covered_by_qms(S, _Qms),
    application_includes(Provider, name_address),
    application_includes(Provider, declaration_not_lodged_elsewhere),
    application_includes(Provider, technical_documentation(annex_4)).
declared(application_includes/2, 'application includes specified element', 'celex:32024R1689/oj#anx_7').
application_includes(_Provider, name_address).
application_includes(_Provider, list_of_systems(_Qms)).
application_includes(_Provider, technical_documentation_for_each(_S)).
application_includes(_Provider, qms_documentation(art_17)).
application_includes(_Provider, procedures_adequate_effective).
application_includes(_Provider, declaration_not_lodged_elsewhere).
application_includes(_Provider, technical_documentation(annex_4)).
declared(assessed_by_notified_body/2, 'quality management system assessed by notified body', 'celex:32024R1689/oj#anx_7').
assessed_by_notified_body(Qms, NotifiedBody) :-
    approved_quality_management_system(Qms),
    notified_body(NotifiedBody),
    determines_satisfaction(Qms, requirements(art_17), NotifiedBody),
    notified_decision(NotifiedBody, Provider, assessment_conclusions(Qms), reasoned_decision).
declared(determines_satisfaction/3, 'notified body determines whether system satisfies requirements', 'celex:32024R1689/oj#anx_7').
determines_satisfaction(Qms, requirements(art_17), NotifiedBody) :-
    approved_quality_management_system(Qms),
    notified_body(NotifiedBody).
declared(notified_decision/4, 'notified body notifies decision to provider', 'celex:32024R1689/oj#anx_7').
notified_decision(NotifiedBody, Provider, Conclusions, ReasonedDecision) :-
    notified_body(NotifiedBody),
    operator(Provider),
    assessment_conclusions(_Qms, Conclusions),
    reasoned_assessment_decision(_Qms, ReasonedDecision).
declared(assessment_conclusions/2, 'conclusions of quality management system assessment', 'celex:32024R1689/oj#anx_7').
assessment_conclusions(_Qms, conclusions).
declared(reasoned_assessment_decision/2, 'reasoned assessment decision on quality management system', 'celex:32024R1689/oj#anx_7').
reasoned_assessment_decision(_Qms, reasoned_decision).
declared(satisfies_requirements/2, 'quality management system satisfies specified requirements', 'celex:32024R1689/oj#anx_7').
satisfies_requirements(Qms, art_17) :-
    approved_quality_management_system(Qms).
declared(covers_system/2, 'quality management system covers AI system', 'celex:32024R1689/oj#anx_7').
covers_system(Qms, S) :-
    approved_quality_management_system(Qms),
    ai_system(S).
declared(intended_for_placing_on_market_or_putting_into_service/1, 'AI system intended to be placed on market or put into service', 'celex:32024R1689/oj#anx_7').
intended_for_placing_on_market_or_putting_into_service(S) :-
    ai_system(S),
    (placing_on_market(S); putting_into_service(S)).
declared(covered_by_qms/2, 'AI system covered by quality management system', 'celex:32024R1689/oj#anx_7').
covered_by_qms(S, Qms) :-
    ai_system(S),
    approved_quality_management_system(Qms),
    covers_system(Qms, S).
declared(examined_by_notified_body/2, 'technical documentation examined by notified body', 'celex:32024R1689/oj#anx_7').
examined_by_notified_body(S, NotifiedBody) :-
    technical_documentation(S),
    notified_body(NotifiedBody),
    granted_access(NotifiedBody, training_validation_testing_data(S)),
    may_require_further_evidence(NotifiedBody, Provider, S),
    may_require_further_tests(NotifiedBody, Provider, S),
    may_carry_out_tests_directly(NotifiedBody, S),
    may_request_model_access(NotifiedBody, S),
    issues_certificate_or_refusal(NotifiedBody, S).
declared(granted_access/2, 'notified body granted access to data sets', 'celex:32024R1689/oj#anx_7').
granted_access(NotifiedBody, training_validation_testing_data(S)) :-
    notified_body(NotifiedBody),
    ai_system(S),
    training_data(_),
    validation_data(_),
    testing_data(_),
    access_limited_necessary(NotifiedBody, S),
    security_safeguards_apply,
    remote_access_possible(api_or_other_means).
declared(access_limited_necessary/2, 'access limited to what is necessary for notified body tasks', 'celex:32024R1689/oj#anx_7').
access_limited_necessary(_NotifiedBody, _S).
declared(security_safeguards_apply/0, 'security safeguards apply to notified body access', 'celex:32024R1689/oj#anx_7').
security_safeguards_apply.
declared(remote_access_possible/1, 'remote access possible through specified means', 'celex:32024R1689/oj#anx_7').
remote_access_possible(api_or_other_means).
declared(may_require_further_evidence/3, 'notified body may require provider to supply further evidence', 'celex:32024R1689/oj#anx_7').
may_require_further_evidence(NotifiedBody, Provider, S) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(S).
declared(may_require_further_tests/3, 'notified body may require provider to carry out further tests', 'celex:32024R1689/oj#anx_7').
may_require_further_tests(NotifiedBody, Provider, S) :-
    notified_body(NotifiedBody),
    provider(Provider),
    ai_system(S).
declared(may_carry_out_tests_directly/2, 'notified body may itself carry out adequate tests', 'celex:32024R1689/oj#anx_7').
may_carry_out_tests_directly(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    \+ tests_satisfactory(_Provider, S).
declared(may_request_model_access/2, 'notified body may be granted access to trained models after reasonable means exhausted', 'celex:32024R1689/oj#anx_7').
may_request_model_access(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    high_risk_ai_system(S),
    reasonable_means_exhausted(_Provider, S),
    reasoned_request(NotifiedBody, S),
    union_law_intellectual_property_protection_applies,
    trade_secrets_protection_applies.
declared(union_law_intellectual_property_protection_applies/0, 'existing Union law on intellectual property protection applies', 'celex:32024R1689/oj#anx_7').
union_law_intellectual_property_protection_applies.
declared(trade_secrets_protection_applies/0, 'trade secrets protection applies to model access', 'celex:32024R1689/oj#anx_7').
trade_secrets_protection_applies.
declared(issues_certificate_or_refusal/2, 'notified body issues certificate or refusal', 'celex:32024R1689/oj#anx_7').
issues_certificate_or_refusal(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    (conformity_verified(S, chapter_3_section_2) ->
        issues_union_technical_documentation_certificate(NotifiedBody, S)
    ;
        refuses_certificate(NotifiedBody, S, detailed_reasons)
    ).
declared(conformity_verified/2, 'conformity of AI system verified against requirements', 'celex:32024R1689/oj#anx_7').
conformity_verified(S, chapter_3_section_2) :-
    ai_system(S),
    requirements_in_chapter_3_section_2(S).
declared(issues_union_technical_documentation_certificate/2, 'notified body issues Union technical documentation assessment certificate', 'celex:32024R1689/oj#anx_7').
issues_union_technical_documentation_certificate(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    certificate_indicates(Provider, conclusions, conditions, identification_data),
    certificate_allows_conformity_evaluation(S),
    certificate_allows_control_in_use(S).
declared(certificate_indicates/4, 'certificate indicates specified information', 'celex:32024R1689/oj#anx_7').
certificate_indicates(_Provider, _Conclusions, _Conditions, _IdentificationData).
declared(certificate_allows_conformity_evaluation/1, 'certificate allows conformity of AI system to be evaluated', 'celex:32024R1689/oj#anx_7').
certificate_allows_conformity_evaluation(_S).
declared(certificate_allows_control_in_use/1, 'certificate allows control of AI system while in use where applicable', 'celex:32024R1689/oj#anx_7').
certificate_allows_control_in_use(_S).
declared(refuses_certificate/3, 'notified body refuses certificate with detailed reasons', 'celex:32024R1689/oj#anx_7').
refuses_certificate(NotifiedBody, S, detailed_reasons) :-
    notified_body(NotifiedBody),
    ai_system(S),
    \+ conformity_verified(S, chapter_3_section_2),
    informs_applicant(NotifiedBody, _Provider, refusal(S)),
    (data_training_requirement_not_met(S) ->
        re_training_needed(S),
        reasoned_decision_includes(NotifiedBody, S, quality_data_considerations, non_compliance_reasons)
    ;
        true
    ).
declared(informs_applicant/3, 'notified body informs applicant of decision', 'celex:32024R1689/oj#anx_7').
informs_applicant(NotifiedBody, Provider, Decision) :-
    notified_body(NotifiedBody),
    operator(Provider).
declared(data_training_requirement_not_met/1, 'AI system does not meet requirement relating to training data', 'celex:32024R1689/oj#anx_7').
data_training_requirement_not_met(S) :-
    ai_system(S),
    \+ data_training_requirement_met(S).
declared(re_training_needed/1, 're-training of AI system needed before new conformity assessment', 'celex:32024R1689/oj#anx_7').
re_training_needed(S) :-
    ai_system(S),
    data_training_requirement_not_met(S).
declared(reasoned_decision_includes/4, 'reasoned decision includes specific considerations on specified matters', 'celex:32024R1689/oj#anx_7').
reasoned_decision_includes(_NotifiedBody, _S, quality_data_considerations, non_compliance_reasons).
declared(change_assessment_required/2, 'change to AI system requires assessment by issuing notified body', 'celex:32024R1689/oj#anx_7').
change_assessment_required(S, Change) :-
    ai_system(S),
    substantial_modification(Change),
    affects_compliance(Change, S),
    affects_intended_purpose(Change, S),
    notified_body_issued_certificate(NotifiedBody, S),
    provider_informs_notified_body(Provider, NotifiedBody, Change),
    assessed_by_notified_body(Change, NotifiedBody),
    (new_conformity_assessment_needed(Change, S) ->
        new_conformity_assessment_required(Change, S, art_43_par_4)
    ;
        supplement_to_certificate_issued(NotifiedBody, S, Change)
    ).
declared(affects_compliance/2, 'change affects compliance of AI system with requirements', 'celex:32024R1689/oj#anx_7').
affects_compliance(Change, S) :-
    substantial_modification(Change),
    ai_system(S).
declared(affects_intended_purpose/2, 'change affects intended purpose of AI system', 'celex:32024R1689/oj#anx_7').
affects_intended_purpose(Change, S) :-
    substantial_modification(Change),
    ai_system(S).
declared(notified_body_issued_certificate/2, 'notified body issued Union technical documentation assessment certificate for system', 'celex:32024R1689/oj#anx_7').
notified_body_issued_certificate(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    issues_union_technical_documentation_certificate(NotifiedBody, S).
declared(provider_informs_notified_body/3, 'provider informs notified body of intended change', 'celex:32024R1689/oj#anx_7').
provider_informs_notified_body(Provider, NotifiedBody, Change) :-
    provider(Provider),
    notified_body(NotifiedBody),
    substantial_modification(Change).
declared(assessed_by_notified_body/2, 'change assessed by notified body', 'celex:32024R1689/oj#anx_7').
assessed_by_notified_body(Change, NotifiedBody) :-
    substantial_modification(Change),
    notified_body(NotifiedBody),
    decides_change_assessment(NotifiedBody, Change, _Decision).
declared(decides_change_assessment/3, 'notified body decides whether change requires new assessment or supplement', 'celex:32024R1689/oj#anx_7').
decides_change_assessment(NotifiedBody, Change, new_conformity_assessment) :-
    notified_body(NotifiedBody),
    substantial_modification(Change),
    new_conformity_assessment_needed(Change, _S).
decides_change_assessment(NotifiedBody, Change, supplement) :-
    notified_body(NotifiedBody),
    substantial_modification(Change),
    \+ new_conformity_assessment_needed(Change, _S).
declared(new_conformity_assessment_required/3, 'new conformity assessment required for change under specified article', 'celex:32024R1689/oj#anx_7').
new_conformity_assessment_required(Change, S, art_43_par_4) :-
    substantial_modification(Change),
    ai_system(S),
    new_conformity_assessment_needed(Change, S).
declared(supplement_to_certificate_issued/3, 'notified body issues supplement to certificate for approved changes', 'celex:32024R1689/oj#anx_7').
supplement_to_certificate_issued(NotifiedBody, S, Change) :-
    notified_body(NotifiedBody),
    ai_system(S),
    substantial_modification(Change),
    changes_approved(NotifiedBody, Change),
    notifies_provider(NotifiedBody, _Provider, decision(Change, approved)),
    certificate_supplement(Supplement),
    issued_to_provider(NotifiedBody, _Provider, Supplement).
declared(changes_approved/2, 'notified body approves changes to AI system', 'celex:32024R1689/oj#anx_7').
changes_approved(_NotifiedBody, _Change).
declared(notifies_provider/3, 'notified body notifies provider of decision', 'celex:32024R1689/oj#anx_7').
notifies_provider(NotifiedBody, Provider, Decision) :-
    notified_body(NotifiedBody),
    operator(Provider).
declared(issued_to_provider/3, 'certificate supplement issued to provider by notified body', 'celex:32024R1689/oj#anx_7').
issued_to_provider(NotifiedBody, Provider, Supplement) :-
    notified_body(NotifiedBody),
    operator(Provider),
    certificate_supplement(Supplement).
declared(periodic_audits_conducted/2, 'notified body carries out periodic audits of quality management system', 'celex:32024R1689/oj#anx_7').
periodic_audits_conducted(Qms, NotifiedBody) :-
    approved_quality_management_system(Qms),
    notified_body(NotifiedBody),
    provider_allows_premises_access(_Provider, NotifiedBody),
    provider_shares_information(_Provider, NotifiedBody, necessary_information),
    provides_audit_report(NotifiedBody, _Provider, Qms),
    may_carry_out_additional_tests(NotifiedBody, S).
declared(provider_allows_premises_access/2, 'provider allows notified body access to premises', 'celex:32024R1689/oj#anx_7').
provider_allows_premises_access(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody).
declared(provider_shares_information/3, 'provider shares necessary information with notified body', 'celex:32024R1689/oj#anx_7').
provider_shares_information(Provider, NotifiedBody, necessary_information) :-
    provider(Provider),
    notified_body(NotifiedBody).
declared(provides_audit_report/3, 'notified body provides provider with audit report', 'celex:32024R1689/oj#anx_7').
provides_audit_report(NotifiedBody, Provider, _Qms) :-
    notified_body(NotifiedBody),
    operator(Provider).
declared(may_carry_out_additional_tests/2, 'notified body may carry out additional tests of certified AI systems during audits', 'celex:32024R1689/oj#anx_7').
may_carry_out_additional_tests(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    issued_certificate(NotifiedBody, S).
declared(issued_certificate/2, 'notified body issued certificate for AI system', 'celex:32024R1689/oj#anx_7').
issued_certificate(NotifiedBody, S) :-
    notified_body(NotifiedBody),
    ai_system(S),
    issues_union_technical_documentation_certificate(NotifiedBody, S).
declared(intended_change_to_qms/2, 'provider intends change to approved quality management system', 'celex:32024R1689/oj#anx_7').
intended_change_to_qms(Provider, Qms) :-
    provider(Provider),
    approved_quality_management_system(Qms).
declared(change_to_qms_list/2, 'change to list of AI systems covered by quality management system', 'celex:32024R1689/oj#anx_7').
change_to_qms_list(Qms, S) :-
    approved_quality_management_system(Qms),
    ai_system(S),
    covers_system(Qms, S).
declared(provider_notifies_change_to_notified_body/2, 'provider notifies notified body of intended change to qms or list', 'celex:32024R1689/oj#anx_7').
provider_notifies_change_to_notified_body(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    (intended_change_to_qms(Provider, Qms); change_to_qms_list(Qms, _S)),
    proposed_changes_examined(NotifiedBody, Qms),
    notified_body_decides_continued_satisfaction(NotifiedBody, Qms),
    notifies_provider_of_decision(NotifiedBody, Provider, qms_change).
declared(proposed_changes_examined/2, 'notified body examines proposed changes to quality management system', 'celex:32024R1689/oj#anx_7').
proposed_changes_examined(NotifiedBody, Qms) :-
    notified_body(NotifiedBody),
    approved_quality_management_system(Qms).
declared(notified_body_decides_continued_satisfaction/2, 'notified body decides whether modified qms continues to satisfy requirements', 'celex:32024R1689/oj#anx_7').
notified_body_decides_continued_satisfaction(NotifiedBody, Qms) :-
    notified_body(NotifiedBody),
    approved_quality_management_system(Qms),
    (continues_to_satisfy(Qms) -> true; reassessment_necessary(Qms)).
declared(continues_to_satisfy/1, 'modified quality management system continues to satisfy requirements', 'celex:32024R1689/oj#anx_7').
continues_to_satisfy(Qms) :-
    approved_quality_management_system(Qms).
declared(reassessment_necessary/1, 'reassessment of quality management system necessary', 'celex:32024R1689/oj#anx_7').
reassessment_necessary(Qms) :-
    approved_quality_management_system(Qms),
    \+ continues_to_satisfy(Qms).
declared(notifies_provider_of_decision/3, 'notified body notifies provider of decision on qms change', 'celex:32024R1689/oj#anx_7').
notifies_provider_of_decision(NotifiedBody, Provider, qms_change) :-
    notified_body(NotifiedBody),
    operator(Provider),
    notification_contains(NotifiedBody, conclusions, reasoned_decision).
declared(notification_contains/3, 'notification contains specified elements', 'celex:32024R1689/oj#anx_7').
notification_contains(_NotifiedBody, _Element1, _Element2).
declared(qms_implemented_and_maintained/2, 'provider implements and maintains approved quality management system', 'celex:32024R1689/oj#anx_7').
qms_implemented_and_maintained(Provider, Qms) :-
    provider(Provider),
    approved_quality_management_system(Qms),
    implemented(Qms),
    maintained(Qms),
    adequate(Qms),
    efficient(Qms).
declared(implemented/1, 'quality management system is implemented', 'celex:32024R1689/oj#anx_7').
implemented(Qms) :-
    approved_quality_management_system(Qms).
declared(maintained/1, 'quality management system is maintained', 'celex:32024R1689/oj#anx_7').
maintained(Qms) :-
    approved_quality_management_system(Qms).
declared(adequate/1, 'quality management system is adequate', 'celex:32024R1689/oj#anx_7').
adequate(Qms) :-
    approved_quality_management_system(Qms).
declared(efficient/1, 'quality management system is efficient', 'celex:32024R1689/oj#anx_7').
efficient(Qms) :-
    approved_quality_management_system(Qms).
provenance(conformity_assessment_procedure_annex_7/1, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(surveillance_applies/1, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_application/2, 'celex:32024R1689/oj#anx_7').
provenance(application_includes/2, 'celex:32024R1689/oj#anx_7').
provenance(assessed_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(determines_satisfaction/3, 'celex:32024R1689/oj#anx_7').
provenance(notified_decision/4, 'celex:32024R1689/oj#anx_7').
provenance(assessment_conclusions/2, 'celex:32024R1689/oj#anx_7').
provenance(reasoned_assessment_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(satisfies_requirements/2, 'celex:32024R1689/oj#anx_7').
provenance(covers_system/2, 'celex:32024R1689/oj#anx_7').
provenance(intended_for_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#anx_7').
provenance(covered_by_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(examined_by_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(granted_access/2, 'celex:32024R1689/oj#anx_7').
provenance(access_limited_necessary/2, 'celex:32024R1689/oj#anx_7').
provenance(security_safeguards_apply/0, 'celex:32024R1689/oj#anx_7').
provenance(remote_access_possible/1, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence/3, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_tests/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_tests_directly/2, 'celex:32024R1689/oj#anx_7').
provenance(may_request_model_access/2, 'celex:32024R1689/oj#anx_7').
provenance(union_law_intellectual_property_protection_applies/0, 'celex:32024R1689/oj#anx_7').
provenance(trade_secrets_protection_applies/0, 'celex:32024R1689/oj#anx_7').
provenance(issues_certificate_or_refusal/2, 'celex:32024R1689/oj#anx_7').
provenance(conformity_verified/2, 'celex:32024R1689/oj#anx_7').
provenance(issues_union_technical_documentation_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(certificate_indicates/4, 'celex:32024R1689/oj#anx_7').
provenance(certificate_allows_conformity_evaluation/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_allows_control_in_use/1, 'celex:32024R1689/oj#anx_7').
provenance(refuses_certificate/3, 'celex:32024R1689/oj#anx_7').
provenance(informs_applicant/3, 'celex:32024R1689/oj#anx_7').
provenance(data_training_requirement_not_met/1, 'celex:32024R1689/oj#anx_7').
provenance(re_training_needed/1, 'celex:32024R1689/oj#anx_7').
provenance(reasoned_decision_includes/4, 'celex:32024R1689/oj#anx_7').
provenance(change_assessment_required/2, 'celex:32024R1689/oj#anx_7').
provenance(affects_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(affects_intended_purpose/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_issued_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_informs_notified_body/3, 'celex:32024R1689/oj#anx_7').
provenance(decides_change_assessment/3, 'celex:32024R1689/oj#anx_7').
provenance(new_conformity_assessment_required/3, 'celex:32024R1689/oj#anx_7').
provenance(supplement_to_certificate_issued/3, 'celex:32024R1689/oj#anx_7').
provenance(changes_approved/2, 'celex:32024R1689/oj#anx_7').
provenance(notifies_provider/3, 'celex:32024R1689/oj#anx_7').
provenance(issued_to_provider/3, 'celex:32024R1689/oj#anx_7').
provenance(periodic_audits_conducted/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_allows_premises_access/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_shares_information/3, 'celex:32024R1689/oj#anx_7').
provenance(provides_audit_report/3, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_additional_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(issued_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(intended_change_to_qms/2, 'celex:32024R1689/oj#anx_7').
provenance(change_to_qms_list/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_notifies_change_to_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(proposed_changes_examined/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_decides_continued_satisfaction/2, 'celex:32024R1689/oj#anx_7').
provenance(continues_to_satisfy/1, 'celex:32024R1689/oj#anx_7').
provenance(reassessment_necessary/1, 'celex:32024R1689/oj#anx_7').
provenance(notifies_provider_of_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(notification_contains/3, 'celex:32024R1689/oj#anx_7').
provenance(qms_implemented_and_maintained/2, 'celex:32024R1689/oj#anx_7').
provenance(implemented/1, 'celex:32024R1689/oj#anx_7').
provenance(maintained/1, 'celex:32024R1689/oj#anx_7').
provenance(adequate/1, 'celex:32024R1689/oj#anx_7').
provenance(efficient/1, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(must_register_information/2, 'provider or deployer must submit and keep up to date specified information upon registration', 'celex:32024R1689/oj#anx_8').
must_register_information(Provider, high_risk_ai_system_registration(A, S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    section_a_information(A, Provider, S).
section_a_information(A, Provider, S) :-
    provider_details(A, Provider),
    submitted_by_another_person(A, Provider),
    authorised_representative_details(A, Provider),
    system_identification(A, S),
    intended_purpose_description(A, S),
    system_data_description(A, S),
    system_status(A, S),
    certificate_details(A, S),
    certificate_copy(A, S),
    member_states_market(A, S),
    declaration_of_conformity_copy(A, S),
    instructions_for_use(A, S),
    additional_information_url(A, S).
provider_details(A, Provider) :-
    name(A, Provider),
    address(A, Provider),
    contact_details(A, Provider).
submitted_by_another_person(A, Provider) :-
    on_behalf_of(A, Provider, Person),
    name(A, Person),
    address(A, Person),
    contact_details(A, Person).
submitted_by_another_person(A, Provider) :-
    \+ on_behalf_of(A, Provider, _).
authorised_representative_details(A, Provider) :-
    authorised_representative(Representative),
    provider_has_representative(Provider, Representative),
    name(A, Representative),
    address(A, Representative),
    contact_details(A, Representative).
authorised_representative_details(A, Provider) :-
    \+ (authorised_representative(Representative), provider_has_representative(Provider, Representative)).
system_identification(A, S) :-
    trade_name(A, S),
    additional_reference(A, S).
intended_purpose_description(A, S) :-
    intended_purpose_description(A, S, Components, Functions).
system_data_description(A, S) :-
    data_inputs_description(A, S),
    operating_logic_description(A, S).
system_status(A, S) :-
    status(A, S, on_market).
system_status(A, S) :-
    status(A, S, in_service).
system_status(A, S) :-
    status(A, S, no_longer_on_market).
system_status(A, S) :-
    status(A, S, recalled).
certificate_details(A, S) :-
    certificate_type(A, S, Type),
    certificate_number(A, S, Number),
    certificate_expiry(A, S, Expiry),
    issued_by_notified_body(A, S, Body),
    notified_body(Body),
    name_or_id(A, Body).
certificate_details(A, S) :-
    \+ certificate_exists(A, S).
certificate_copy(A, S) :-
    certificate_exists(A, S),
    scanned_copy(A, S, Copy).
certificate_copy(A, S) :-
    \+ certificate_exists(A, S).
member_states_market(A, S) :-
    member_states_placed_on_market(A, S, States).
member_states_market(A, S) :-
    member_states_put_into_service(A, S, States).
member_states_market(A, S) :-
    member_states_made_available(A, S, States).
declaration_of_conformity_copy(A, S) :-
    eu_declaration_of_conformity(D),
    belongs_to(D, S),
    copy(A, S, D).
instructions_for_use(A, S) :-
    electronic_instructions_for_use(A, S),
    \+ law_enforcement_migration_asylum_border_control_area(S).
instructions_for_use(A, S) :-
    law_enforcement_migration_asylum_border_control_area(S).
additional_information_url(A, S) :-
    url(A, S, URL).
additional_information_url(A, S) :-
    \+ url(A, S, _).
must_register_information(Provider, not_high_risk_ai_system_registration(B, S)) :-
    provider(Provider),
    not_high_risk_under_art_6_par_3(S),
    section_b_information(B, Provider, S).
section_b_information(B, Provider, S) :-
    provider_details(B, Provider),
    submitted_by_another_person(B, Provider),
    authorised_representative_details(B, Provider),
    system_identification(B, S),
    intended_purpose_description(B, S),
    not_high_risk_conditions(B, S),
    not_high_risk_grounds_summary(B, S),
    system_status(B, S),
    member_states_market(B, S).
not_high_risk_conditions(B, S) :-
    condition_art_6_par_3(B, S, Conditions).
not_high_risk_grounds_summary(B, S) :-
    grounds_summary(B, S, Summary).
must_register_information(Deployer, deployer_high_risk_ai_system_registration(C, S)) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    section_c_information(C, Deployer, S).
section_c_information(C, Deployer, S) :-
    deployer_details(C, Deployer),
    submitted_by_another_person_deployer(C, Deployer),
    provider_database_url(C, S),
    fundamental_rights_impact_summary(C, Deployer, S),
    data_protection_impact_summary(C, Deployer, S).
deployer_details(C, Deployer) :-
    name(C, Deployer),
    address(C, Deployer),
    contact_details(C, Deployer).
submitted_by_another_person_deployer(C, Deployer) :-
    on_behalf_of(C, Deployer, Person),
    name(C, Person),
    address(C, Person),
    contact_details(C, Person).
submitted_by_another_person_deployer(C, Deployer) :-
    \+ on_behalf_of(C, Deployer, _).
provider_database_url(C, S) :-
    url(C, S, URL),
    eu_database_entry(URL, S).
fundamental_rights_impact_summary(C, Deployer, S) :-
    fundamental_rights_impact_assessment(Assessment),
    conducted_by(Assessment, Deployer),
    for_system(Assessment, S),
    summary(C, Assessment).
data_protection_impact_summary(C, Deployer, S) :-
    data_protection_impact_assessment(Assessment),
    conducted_under(Assessment, gdpr_art_35),
    summary(C, Assessment).
data_protection_impact_summary(C, Deployer, S) :-
    data_protection_impact_assessment(Assessment),
    conducted_under(Assessment, directive_art_27),
    specified_in_art_26_par_8(Assessment),
    summary(C, Assessment).
data_protection_impact_summary(C, Deployer, S) :-
    \+ (data_protection_impact_assessment(Assessment), conducted_by(Assessment, Deployer), for_system(Assessment, S)).
provenance(must_register_information/2, 'celex:32024R1689/oj#anx_8').
provenance(section_a_information/3, 'celex:32024R1689/oj#anx_8').
provenance(section_b_information/3, 'celex:32024R1689/oj#anx_8').
provenance(section_c_information/3, 'celex:32024R1689/oj#anx_8').
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
declared(must_register_information/2, 'provider or deployer must submit and keep up to date specified information upon registration', 'celex:32024R1689/oj#anx_9').
must_register_information(Provider, testing_in_real_world_conditions(S)) :-
    prospective_provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
must_register_information(Provider, testing_in_real_world_conditions(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
must_register_information(Deployer, testing_in_real_world_conditions(S)) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
must_keep_up_to_date(Provider, testing_in_real_world_conditions(S)) :-
    prospective_provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
must_keep_up_to_date(Provider, testing_in_real_world_conditions(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
must_keep_up_to_date(Deployer, testing_in_real_world_conditions(S)) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).
provenance(must_register_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(union_legislative_act_on_large_scale_it_system/1, 'Union legislative act on large-scale IT systems in the area of Freedom, Security and Justice listed in Annex X', 'celex:32024R1689/oj#anx_10').
declared(schengen_information_system_act/1, 'legislative act concerning the Schengen Information System', 'celex:32024R1689/oj#anx_10').
schengen_information_system_act(celex:'32018R1860/oj').
schengen_information_system_act(celex:'32018R1861/oj').
schengen_information_system_act(celex:'32018R1862/oj').
declared(visa_information_system_act/1, 'legislative act concerning the Visa Information System', 'celex:32024R1689/oj#anx_10').
visa_information_system_act(celex:'32021R1133/oj').
visa_information_system_act(celex:'32021R1134/oj').
declared(eurodac_act/1, 'legislative act concerning Eurodac', 'celex:32024R1689/oj#anx_10').
eurodac_act(celex:'32024R1358/oj').
declared(entry_exit_system_act/1, 'legislative act concerning the Entry/Exit System', 'celex:32024R1689/oj#anx_10').
entry_exit_system_act(celex:'32017R2226/oj').
declared(etias_act/1, 'legislative act concerning the European Travel Information and Authorisation System', 'celex:32024R1689/oj#anx_10').
etias_act(celex:'32018R1240/oj').
etias_act(celex:'32018R1241/oj').
declared(ecris_tcn_act/1, 'legislative act concerning ECRIS-TCN', 'celex:32024R1689/oj#anx_10').
ecris_tcn_act(celex:'32019R0816/oj').
declared(interoperability_framework_act/1, 'legislative act concerning interoperability between EU information systems', 'celex:32024R1689/oj#anx_10').
interoperability_framework_act(celex:'32019R0817/oj').
interoperability_framework_act(celex:'32019R0818/oj').
union_legislative_act_on_large_scale_it_system(A) :- schengen_information_system_act(A).
union_legislative_act_on_large_scale_it_system(A) :- visa_information_system_act(A).
union_legislative_act_on_large_scale_it_system(A) :- eurodac_act(A).
union_legislative_act_on_large_scale_it_system(A) :- entry_exit_system_act(A).
union_legislative_act_on_large_scale_it_system(A) :- etias_act(A).
union_legislative_act_on_large_scale_it_system(A) :- ecris_tcn_act(A).
union_legislative_act_on_large_scale_it_system(A) :- interoperability_framework_act(A).
provenance(union_legislative_act_on_large_scale_it_system/1, 'celex:32024R1689/oj#anx_10').
provenance(schengen_information_system_act/1, 'celex:32024R1689/oj#anx_10').
provenance(visa_information_system_act/1, 'celex:32024R1689/oj#anx_10').
provenance(eurodac_act/1, 'celex:32024R1689/oj#anx_10').
provenance(entry_exit_system_act/1, 'celex:32024R1689/oj#anx_10').
provenance(etias_act/1, 'celex:32024R1689/oj#anx_10').
provenance(ecris_tcn_act/1, 'celex:32024R1689/oj#anx_10').
provenance(interoperability_framework_act/1, 'celex:32024R1689/oj#anx_10').
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
references('celex:32024R1689/oj#anx_10', 'celex:2011R1077/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(technical_documentation_gpai/1, 'technical documentation for providers of general-purpose AI models', 'celex:32024R1689/oj#anx_11').
declared(section_1_information/1, 'information to be provided by all providers of general-purpose AI models', 'celex:32024R1689/oj#anx_11').
declared(section_2_information/1, 'additional information to be provided by providers of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_11').
declared(general_description/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(detailed_description_elements/1, 'detailed description of elements of the model and development process', 'celex:32024R1689/oj#anx_11').
declared(evaluation_strategies/1, 'detailed description of evaluation strategies', 'celex:32024R1689/oj#anx_11').
declared(adversarial_testing_measures/1, 'measures for adversarial testing, model adaptations, alignment and fine-tuning', 'celex:32024R1689/oj#anx_11').
declared(system_architecture_description/1, 'detailed description of system architecture', 'celex:32024R1689/oj#anx_11').
technical_documentation_gpai(M) :-
    general_purpose_ai_model(M),
    section_1_information(M).
technical_documentation_gpai(M) :-
    general_purpose_ai_model(M),
    systemic_risk_present(M),
    section_1_information(M),
    section_2_information(M).
section_1_information(M) :-
    general_purpose_ai_model(M),
    general_description(M),
    detailed_description_elements(M).
general_description(M) :-
    general_purpose_ai_model(M),
    intended_tasks(M),
    acceptable_use_policies(M),
    release_date_and_distribution(M),
    architecture_and_parameters(M),
    input_output_modality(M),
    licence(M).
detailed_description_elements(M) :-
    general_purpose_ai_model(M),
    integration_technical_means(M),
    design_specifications(M),
    training_data_information(M),
    computational_resources(M),
    energy_consumption(M).
section_2_information(M) :-
    general_purpose_ai_model(M),
    systemic_risk_present(M),
    evaluation_strategies(M),
    adversarial_testing_measures(M),
    system_architecture_description(M).
energy_consumption(M) :-
    general_purpose_ai_model(M),
    known_energy_consumption(M).
energy_consumption(M) :-
    general_purpose_ai_model(M),
    \+ known_energy_consumption(M),
    computational_resources(M).
provenance(technical_documentation_gpai/1, 'celex:32024R1689/oj#anx_11').
provenance(section_1_information/1, 'celex:32024R1689/oj#anx_11').
provenance(section_2_information/1, 'celex:32024R1689/oj#anx_11').
provenance(general_description/1, 'celex:32024R1689/oj#anx_11').
provenance(detailed_description_elements/1, 'celex:32024R1689/oj#anx_11').
provenance(evaluation_strategies/1, 'celex:32024R1689/oj#anx_11').
provenance(adversarial_testing_measures/1, 'celex:32024R1689/oj#anx_11').
provenance(system_architecture_description/1, 'celex:32024R1689/oj#anx_11').
provenance(energy_consumption/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_technical_documentation_for_downstream_provider/1, 'technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system', 'celex:32024R1689/oj#anx_12').
required_technical_documentation_for_downstream_provider(M) :-
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    downstream_provider(D),
    integration_technical_means(M).
required_technical_documentation_for_downstream_provider(M) :-
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    downstream_provider(D),
    input_output_modality(M).
required_technical_documentation_for_downstream_provider(M) :-
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    downstream_provider(D),
    training_data_information(M).
must_provide_information(P, technical_documentation_for_downstream_provider(M, D)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    downstream_provider(D),
    required_technical_documentation_for_downstream_provider(M).
provenance(required_technical_documentation_for_downstream_provider/1, 'celex:32024R1689/oj#anx_12').
provenance(must_provide_information/2, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(criteria_for_systemic_risk_designation/1, 'criteria the Commission must take into account for designating general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_13').
declared(parameter_count/1, 'number of parameters of the model', 'celex:32024R1689/oj#anx_13').
declared(dataset_quality_or_size/1, 'quality or size of the data set measured through tokens', 'celex:32024R1689/oj#anx_13').
declared(training_computation/1, 'amount of computation used for training the model', 'celex:32024R1689/oj#anx_13').
declared(input_output_modality_of_model/1, 'input and output modalities of the model', 'celex:32024R1689/oj#anx_13').
declared(capability_benchmarks/1, 'benchmarks and evaluations of capabilities of the model', 'celex:32024R1689/oj#anx_13').
declared(high_impact_on_internal_market/1, 'high impact on the internal market due to reach', 'celex:32024R1689/oj#anx_13').
declared(registered_business_users/2, 'number of registered business users established in the Union', 'celex:32024R1689/oj#anx_13').
declared(registered_end_users/1, 'number of registered end-users', 'celex:32024R1689/oj#anx_13').
declared(must_take_into_account_criteria/2, 'Commission shall take into account criteria for designation', 'celex:32024R1689/oj#anx_13').
must_take_into_account_criteria(commission, criteria_for_systemic_risk_designation(M)) :-
    general_purpose_ai_model(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    parameter_count(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    dataset_quality_or_size(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    training_computation(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    input_output_modality_of_model(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    capability_benchmarks(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    high_impact_on_internal_market(M).
criteria_for_systemic_risk_designation(M) :-
    general_purpose_ai_model(M),
    registered_end_users(M).
training_computation(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(M).
training_computation(M) :-
    general_purpose_ai_model(M),
    estimated_cost_of_training(M).
training_computation(M) :-
    general_purpose_ai_model(M),
    estimated_time_for_training(M).
training_computation(M) :-
    general_purpose_ai_model(M),
    energy_consumption(M).
high_impact_on_internal_market(M) :-
    general_purpose_ai_model(M),
    registered_business_users(M, Count),
    Count >= 10000,
    established_in_union(_User).
provenance(criteria_for_systemic_risk_designation/1, 'celex:32024R1689/oj#anx_13').
provenance(parameter_count/1, 'celex:32024R1689/oj#anx_13').
provenance(dataset_quality_or_size/1, 'celex:32024R1689/oj#anx_13').
provenance(training_computation/1, 'celex:32024R1689/oj#anx_13').
provenance(input_output_modality_of_model/1, 'celex:32024R1689/oj#anx_13').
provenance(capability_benchmarks/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_users/2, 'celex:32024R1689/oj#anx_13').
provenance(registered_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account_criteria/2, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

