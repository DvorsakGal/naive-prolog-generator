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
% There are 712 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous acceptable_residual_risk/1.
:- discontiguous access_request_specified/6.
:- discontiguous accessed_information/2.
:- discontiguous accessible_to_authorities/1.
:- discontiguous act_concerns_ai_safety_component/2.
:- discontiguous activities_already_carried_out_unaffected/1.
:- discontiguous adco_for_regulation/1.
:- discontiguous added_paragraph/2.
:- discontiguous added_to_annex_i/1.
:- discontiguous address_identified_risks/2.
:- discontiguous adequate_competent_personnel/1.
:- discontiguous adequate_control_measures/1.
:- discontiguous adequate_corrective_action_not_taken/2.
:- discontiguous adequate_design_and_development/1.
:- discontiguous adequate_mitigation_measures/1.
:- discontiguous adequate_technical_information_provided/2.
:- discontiguous administrative_fine_up_to/2.
:- discontiguous adopting_authority/2.
:- discontiguous adoption/1.
:- discontiguous adopts_rules_of_procedure/1.
:- discontiguous adverse_impact/1.
:- discontiguous affects/2.
:- discontiguous affects_aspect/2.
:- discontiguous affects_compliance/2.
:- discontiguous affects_compliance_or_intended_purpose/2.
:- discontiguous affects_intended_purpose/2.
:- discontiguous ai_office_encourages_codes_of_practice/0.
:- discontiguous ai_office_has_market_surveillance_powers/1.
:- discontiguous ai_office_monitors_same_provider_system/1.
:- discontiguous ai_safety_component/1.
:- discontiguous ai_specific_vulnerability/1.
:- discontiguous ai_system_based_on_model/2.
:- discontiguous ai_system_presenting_risk/1.
:- discontiguous aims_to_contribute_to/2.
:- discontiguous all_other_reasonable_means_exhausted/2.
:- discontiguous allow_stakeholders_to_interact/1.
:- discontiguous amendment_shall_take_into_account/2.
:- discontiguous another_body_assumes_immediate_responsibility/2.
:- discontiguous appeal_procedure_available/1.
:- discontiguous applicable_adversarial_testing/1.
:- discontiguous applicable_maximum_fine/2.
:- discontiguous applicable_system_architecture/1.
:- discontiguous applicable_union_or_national_law_provides_otherwise/1.
:- discontiguous application_for_notification/2.
:- discontiguous applies_from/2.
:- discontiguous applies_to/1.
:- discontiguous applies_to/2.
:- discontiguous applies_to_all_ai_systems/1.
:- discontiguous applies_to_non_high_risk/1.
:- discontiguous applies_where_reference_made/2.
:- discontiguous appropriate_balance_in_implementing_measures/1.
:- discontiguous appropriate_level/2.
:- discontiguous appropriate_risk_management_measures/1.
:- discontiguous appropriate_to_circumstances_and_risks/1.
:- discontiguous appropriate_transparency/1.
:- discontiguous approved/2.
:- discontiguous approved_quality_management_system/1.
:- discontiguous approved_testing_in_real_world_conditions/1.
:- discontiguous area_of_ai/1.
:- discontiguous art_79_par_5_to_9_applies/1.
:- discontiguous artificial_intelligence_safety_component/1.
:- discontiguous as_appropriate/1.
:- discontiguous aspect_affected/2.
:- discontiguous aspects_of_article_9_may_be_part_of_other_procedures/2.
:- discontiguous assesses_compliance/2.
:- discontiguous assessment_complements_data_protection_impact_assessment/1.
:- discontiguous assessment_satisfies_requirements/1.
:- discontiguous assessors/2.
:- discontiguous assisted_by_committee/2.
:- discontiguous assumes_responsibility_for_compliance/2.
:- discontiguous at_least_one_high_risk_purpose/1.
:- discontiguous authorised_notified_body/1.
:- discontiguous authorised_representative_appointed/1.
:- discontiguous authorised_to_access_exit_reports/1.
:- discontiguous authority_protecting_fundamental_rights/1.
:- discontiguous automatic_logging_required/1.
:- discontiguous aware_of_change/2.
:- discontiguous backup_plan/1.
:- discontiguous balanced_selection/1.
:- discontiguous based_on_internal_control/1.
:- discontiguous becomes_aware/2.
:- discontiguous before_making_available/2.
:- discontiguous biometric_identification_high_risk_system/1.
:- discontiguous board/1.
:- discontiguous board_representative/1.
:- discontiguous broad_and_equal_access/1.
:- discontiguous built_in_oversight_measure/1.
:- discontiguous can_be_used_directly_by_deployers/1.
:- discontiguous ce_marking_indicates_other_union_law_compliance/1.
:- discontiguous ce_marking_subject_to_general_principles/1.
:- discontiguous certificate_extension_period/3.
:- discontiguous certificate_language/2.
:- discontiguous certificate_supplement_valid/1.
:- discontiguous certificate_validity_period/2.
:- discontiguous certificate_validity_period/3.
:- discontiguous certificates_remain_valid/1.
:- discontiguous certificates_remain_valid_nine_months/1.
:- discontiguous certified_under_cybersecurity_scheme/1.
:- discontiguous chair/1.
:- discontiguous change/2.
:- discontiguous change_occurred/2.
:- discontiguous changes_approved/2.
:- discontiguous changes_approved_by_notified_body/2.
:- discontiguous chapter_3_section_2_requirements/1.
:- discontiguous clear_standards/1.
:- discontiguous code_key_performance_indicator/2.
:- discontiguous code_objective/2.
:- discontiguous collects_data_and_information_for_board_tasks/1.
:- discontiguous commercial_interest/1.
:- discontiguous commission_consultation_required/1.
:- discontiguous commission_decides_authorisation/2.
:- discontiguous commission_decides_justified/1.
:- discontiguous commission_decides_unjustified/1.
:- discontiguous commission_delegate_power_amend_annex_4/1.
:- discontiguous commission_or_national_competent_authority/1.
:- discontiguous committee_within_meaning/2.
:- discontiguous competence_maintained/1.
:- discontiguous competent_authority_for_supervision/2.
:- discontiguous competent_for/2.
:- discontiguous complainant_associated_with_proceedings/1.
:- discontiguous complaint_handled_by_procedures/1.
:- discontiguous complaint_taken_into_account/1.
:- discontiguous compliance_with_chapter_3_section_2/1.
:- discontiguous compliant_with/2.
:- discontiguous compliant_with_requirements/1.
:- discontiguous complies_with_chapter_3_section_2/1.
:- discontiguous component_of_large_scale_it_system/2.
:- discontiguous concerning_ai_safety_component/1.
:- discontiguous condition_add_anx_3/2.
:- discontiguous condition_met/3.
:- discontiguous condition_remove_anx_3/2.
:- discontiguous conditions_fulfilled_for_common_specifications/1.
:- discontiguous conditions_met_for_testing/1.
:- discontiguous conditions_of_reasonably_foreseeable_misuse/1.
:- discontiguous confidential_treatment_applies/1.
:- discontiguous confidentiality_obligations_apply/1.
:- discontiguous confidentiality_party/1.
:- discontiguous conflict_of_interest_with_conformity_assessment_bodies/1.
:- discontiguous conformity_assessment_art_43_par_4_required/2.
:- discontiguous conformity_assessment_procedure/1.
:- discontiguous conformity_assessment_procedure_carried_out/1.
:- discontiguous conformity_verification/2.
:- discontiguous conformity_with_requirements/1.
:- discontiguous consent_for_public_access/1.
:- discontiguous consider_international_standards/1.
:- discontiguous consideration_adverse_impact_minors/1.
:- discontiguous consideration_adverse_impact_vulnerable_groups/1.
:- discontiguous considered_provider/2.
:- discontiguous considers_or_has_reason_to_consider/2.
:- discontiguous considers_relevant/3.
:- discontiguous consistent_performance/2.
:- discontiguous consistent_performance_for_intended_purpose/1.
:- discontiguous consistent_standards/1.
:- discontiguous consistent_with/2.
:- discontiguous consultation_completed/1.
:- discontiguous containing_relevant_information/2.
:- discontiguous contains_information/2.
:- discontiguous continues_to_learn/1.
:- discontiguous continues_to_meet_requirements/1.
:- discontiguous continuous_iterative_process/1.
:- discontiguous controller_of/2.
:- discontiguous convenes_meetings/2.
:- discontiguous copyright_compliance_policy/1.
:- discontiguous corrective_action/1.
:- discontiguous corrective_measures_taken/2.
:- discontiguous court_unlimited_jurisdiction/2.
:- discontiguous covers_ai_systems/2.
:- discontiguous covers_all_requirements/1.
:- discontiguous covers_reporting_documentation_resource_performance/1.
:- discontiguous covers_sensitive_operational_data/1.
:- discontiguous criminal_offence/1.
:- discontiguous criterion_internal_market_impact/1.
:- discontiguous cybersecurity_certified/1.
:- discontiguous data_gathered_from/2.
:- discontiguous data_sharing_restrictions/1.
:- discontiguous data_training_requirement_met/1.
:- discontiguous deadline_for_codes/1.
:- discontiguous decision_fixing_fine/2.
:- discontiguous decision_makers/2.
:- discontiguous decision_pending/2.
:- discontiguous decision_with_legal_effects/1.
:- discontiguous declaration_contains_annex_5_information/1.
:- discontiguous declaration_contains_legislation_identification/1.
:- discontiguous declaration_identifies_system/2.
:- discontiguous declaration_states_compliance/2.
:- discontiguous declaration_translated_for_authorities/1.
:- discontiguous declared_in_instructions/2.
:- discontiguous deemed_fulfilled_by_internal_governance/2.
:- discontiguous deemed_justified/1.
:- discontiguous delegated_act/1.
:- discontiguous delegated_act_amend_anx_3_add/1.
:- discontiguous delegated_act_amend_anx_3_remove/1.
:- discontiguous delegated_act_concerning/1.
:- discontiguous delegated_act_concerning/2.
:- discontiguous delegation_period/1.
:- discontiguous delegation_period_start/1.
:- discontiguous deployer_oversight_measure/1.
:- discontiguous deployers_informed/1.
:- discontiguous design_and_development_process/2.
:- discontiguous designated_for_board/1.
:- discontiguous designed_for_human_oversight/1.
:- discontiguous detailed_arrangements/1.
:- discontiguous developed_for_substantial_public_interest/1.
:- discontiguous development_description/1.
:- discontiguous development_description/2.
:- discontiguous documentation_for_art_29_2/1.
:- discontiguous documentation_for_art_29_3/1.
:- discontiguous documentation_period/2.
:- discontiguous does_not_meet_requirements/1.
:- discontiguous drawn_up_by/2.
:- discontiguous due_consideration_combined_requirements/1.
:- discontiguous due_consideration_deployer_knowledge/1.
:- discontiguous education_of_deployer/1.
:- discontiguous effective_monitoring_and_response_mechanisms/1.
:- discontiguous effectively_overseen/1.
:- discontiguous eliminate_or_reduce_biased_outputs/1.
:- discontiguous eliminated_through_design/2.
:- discontiguous eliminated_through_development/2.
:- discontiguous elimination_or_reduction_through_design/2.
:- discontiguous emotion_recognition_or_biometric_categorisation_system/1.
:- discontiguous empowered_to_facilitate_consistency_and_coordination/1.
:- discontiguous enable_awareness_automation_bias/1.
:- discontiguous enable_decide_not_to_use/1.
:- discontiguous enable_interpret_output/1.
:- discontiguous enable_intervene_or_interrupt/1.
:- discontiguous enable_understand_capacity_and_limitations/1.
:- discontiguous encourages_codes_of_conduct/2.
:- discontiguous energy_consumption/1.
:- discontiguous energy_sustainability/1.
:- discontiguous enhance_multi_stakeholder_governance/1.
:- discontiguous ensure_relevant_requirements_met/1.
:- discontiguous entitled_to_file_access/2.
:- discontiguous entrust_implementation/2.
:- discontiguous entry_into_force_condition/1.
:- discontiguous environmental_protection/1.
:- discontiguous equivalent_protection_required/1.
:- discontiguous established/1.
:- discontiguous established_by/2.
:- discontiguous estimated_energy_consumption/1.
:- discontiguous eu_database/1.
:- discontiguous european_data_protection_supervisor_is_authority/1.
:- discontiguous evaluation_finds_non_compliance/2.
:- discontiguous evaluation_of_classification/2.
:- discontiguous examination_procedure/1.
:- discontiguous exception_article_49_par_4/1.
:- discontiguous exception_article_60_par_4_unp_1_pnt_c/1.
:- discontiguous exception_from/2.
:- discontiguous exceptional_costs_recovery/1.
:- discontiguous exceptional_reason/1.
:- discontiguous excluded_from_provider_obligations/1.
:- discontiguous exempt/1.
:- discontiguous exempt_confidentiality/2.
:- discontiguous exempt_disclose_deep_fake/1.
:- discontiguous exempt_disclose_synthetic_text/1.
:- discontiguous exempt_free_open_source/1.
:- discontiguous exempt_free_open_source_model/1.
:- discontiguous exempt_from_authorised_representative/1.
:- discontiguous exempt_from_instructions_for_use/1.
:- discontiguous exempt_high_risk/1.
:- discontiguous exempt_independence_requirement/2.
:- discontiguous exempt_inform_of_system_operation/1.
:- discontiguous exempt_informed_interaction/1.
:- discontiguous exempt_mark_outputs/1.
:- discontiguous exempt_military_defence_national_security/1.
:- discontiguous exempt_military_defence_national_security_output/1.
:- discontiguous exempt_open_source_third_party/1.
:- discontiguous exempt_personal_non_professional/2.
:- discontiguous exempt_quality_management_system_aspect_financial_institution/2.
:- discontiguous exempt_research_testing_development/1.
:- discontiguous exempt_scientific_research/1.
:- discontiguous exempt_substantial_modification/1.
:- discontiguous exempt_third_country_authorities/1.
:- discontiguous exempt_validity_of_existing_acts/1.
:- discontiguous exercise_powers_for_assessment/1.
:- discontiguous exercises_roles_of/2.
:- discontiguous experience_and_knowledge_required/2.
:- discontiguous experience_of_deployer/1.
:- discontiguous expert/1.
:- discontiguous extended_objection_period/1.
:- discontiguous extended_testing_duration_valid/1.
:- discontiguous extension_of_scope_procedure/1.
:- discontiguous facilitate_compliance/1.
:- discontiguous facilitate_ecosystem_involvement/1.
:- discontiguous facilitate_testing_tools/1.
:- discontiguous facilitates_codes_of_conduct/2.
:- discontiguous facilitates_development_training_testing_validation/1.
:- discontiguous fail_safe_plan/1.
:- discontiguous fails_to_take_corrective_measures/1.
:- discontiguous fee_structure_set_out/1.
:- discontiguous field_of_expertise/1.
:- discontiguous finding_of_risk/2.
:- discontiguous fine_amount/2.
:- discontiguous fine_dissuasive/1.
:- discontiguous fine_effective/1.
:- discontiguous fine_imposed/2.
:- discontiguous fine_not_affect_effective_operation/2.
:- discontiguous fine_percentage/2.
:- discontiguous fine_proportionate/1.
:- discontiguous for_determining_equivalent_capabilities_or_impact/1.
:- discontiguous free_of_charge_for_smes/1.
:- discontiguous from_one_year_after_establishment/1.
:- discontiguous funds_contribute_to_general_budget/1.
:- discontiguous general_description/1.
:- discontiguous general_description/2.
:- discontiguous general_purpose_ai_model_provider/1.
:- discontiguous generates_synthetic_content/1.
:- discontiguous has_high_impact_capabilities/1.
:- discontiguous has_power_to_suspend/2.
:- discontiguous has_relevant_competences_and_powers/1.
:- discontiguous high_impact_on_internal_market_presumed/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous human_oversight_objective/1.
:- discontiguous identification_number/2.
:- discontiguous implementing_act/1.
:- discontiguous implementing_act_concerning/1.
:- discontiguous implementing_acts/2.
:- discontiguous implementing_acts_content/2.
:- discontiguous implementing_acts_ensure/2.
:- discontiguous implementing_acts_procedural_safeguards/1.
:- discontiguous implementing_risk_management_system/2.
:- discontiguous importer_applicable/1.
:- discontiguous in_accordance_with_article_60/1.
:- discontiguous in_conformity_with_regulation/1.
:- discontiguous indicates_other_relevant_information/1.
:- discontiguous indicates_point_of_contact/1.
:- discontiguous indicates_relevant_facts_and_reasons/1.
:- discontiguous inform_applicants_within_period/2.
:- discontiguous inform_board/1.
:- discontiguous information_required_pursuant_to_article_13/1.
:- discontiguous information_timing_manner/1.
:- discontiguous informed_about_conditions/1.
:- discontiguous informed_about_identification_and_contact/1.
:- discontiguous informed_about_nature_and_objectives/1.
:- discontiguous informed_about_reversal_arrangements/1.
:- discontiguous informed_about_rights/1.
:- discontiguous informed_consent_obtained/1.
:- discontiguous informed_consent_valid/1.
:- discontiguous infringement_by_provider/2.
:- discontiguous infringement_of_information_requirement/1.
:- discontiguous infringement_of_operator_obligation/1.
:- discontiguous infringement_of_prohibition/1.
:- discontiguous infringement_reporting_applies/1.
:- discontiguous initial_provider_no_longer_provider/1.
:- discontiguous initial_report_permitted/2.
:- discontiguous instructions_for_use_content/2.
:- discontiguous integration_documentation/1.
:- discontiguous intended/2.
:- discontiguous intended_change/2.
:- discontiguous intends/2.
:- discontiguous intentionally_or_negligently/2.
:- discontiguous internal_control_conformity_assessment/1.
:- discontiguous investigation/1.
:- discontiguous involved_in_supervision/2.
:- discontiguous issued_certificate/2.
:- discontiguous judicial_independence_protected/0.
:- discontiguous known_or_reasonably_foreseeable_risks/1.
:- discontiguous large_scale_it_system_component/1.
:- discontiguous law_enforcement_area/1.
:- discontiguous law_enforcement_sandbox_processing/1.
:- discontiguous law_enforcement_testing_exception/1.
:- discontiguous liable_for_damage/2.
:- discontiguous likely_adverse_impact_on_persons_under_18/1.
:- discontiguous likely_adverse_impact_on_vulnerable_groups/1.
:- discontiguous limited_application_high_risk_harmonisation/1.
:- discontiguous limited_disclosure_deep_fake/1.
:- discontiguous limited_participation_period/1.
:- discontiguous limited_time_before/2.
:- discontiguous logging_capabilities/1.
:- discontiguous logging_event_relevant_for/2.
:- discontiguous logs_kept_for_duration/1.
:- discontiguous logs_maintained_under_financial_law/2.
:- discontiguous logs_referred_to_in_art_12_1/2.
:- discontiguous made_all_appropriate_efforts/2.
:- discontiguous made_publicly_available/1.
:- discontiguous mandate_empowers_addressing/2.
:- discontiguous mandate_period/1.
:- discontiguous market_surveillance_authority_for/2.
:- discontiguous market_surveillance_sub_group/1.
:- discontiguous may_adopt_common_specifications/1.
:- discontiguous may_advise_international/1.
:- discontiguous may_affix_ce_marking_to_packaging_or_documentation/1.
:- discontiguous may_allow_derogation/3.
:- discontiguous may_allow_involvement/2.
:- discontiguous may_appoint_experts/2.
:- discontiguous may_approve/2.
:- discontiguous may_ask_for_support/2.
:- discontiguous may_assist_expertise_development/1.
:- discontiguous may_assist_sandboxes/1.
:- discontiguous may_be_combined_with_other_risk_management/1.
:- discontiguous may_be_made_publicly_available/2.
:- discontiguous may_call_experts/1.
:- discontiguous may_cancel_fine/2.
:- discontiguous may_carry_out_additional_tests/2.
:- discontiguous may_collect_and_share_expertise/1.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_contribute_to_coordination/1.
:- discontiguous may_contribute_to_guidance/1.
:- discontiguous may_contribute_to_harmonisation/1.
:- discontiguous may_contribute_to_international_cooperation/1.
:- discontiguous may_cooperate/2.
:- discontiguous may_cooperate_with_institutions/1.
:- discontiguous may_designate_systemic_risk/1.
:- discontiguous may_establish_additional/2.
:- discontiguous may_establish_jointly/2.
:- discontiguous may_establish_other_sub_group/2.
:- discontiguous may_establish_sandbox/2.
:- discontiguous may_exercise_powers_remotely/2.
:- discontiguous may_facilitate_common_criteria/1.
:- discontiguous may_impose_administrative_fine/2.
:- discontiguous may_impose_fine/2.
:- discontiguous may_include_aspects_in_sectoral_quality_management_system/2.
:- discontiguous may_include_testing_in_real_world_conditions/1.
:- discontiguous may_increase_fine/2.
:- discontiguous may_initiate_dialogue/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_integrate_existing_post_market_monitoring/2.
:- discontiguous may_integrate_existing_post_market_monitoring_financial_institution/2.
:- discontiguous may_invite/2.
:- discontiguous may_invite_to_adhere/3.
:- discontiguous may_invite_to_sub_group_or_meeting/3.
:- discontiguous may_issue_recommendations/2.
:- discontiguous may_make_commitments_binding/2.
:- discontiguous may_notify/2.
:- discontiguous may_perform_activities/1.
:- discontiguous may_perform_checks/2.
:- discontiguous may_present_arguments/2.
:- discontiguous may_propose_joint_activities/2.
:- discontiguous may_provide_advice_on_implementation/1.
:- discontiguous may_provide_common_rules/2.
:- discontiguous may_provide_guidance/2.
:- discontiguous may_provide_opinions_on_alerts/1.
:- discontiguous may_provide_qualified_alert/2.
:- discontiguous may_provide_simplified_technical_documentation/2.
:- discontiguous may_provide_support/2.
:- discontiguous may_reassess/1.
:- discontiguous may_receive_opinions/1.
:- discontiguous may_reduce_fine/2.
:- discontiguous may_rely_on_code_of_practice/2.
:- discontiguous may_rely_on_codes_of_practice/2.
:- discontiguous may_rely_on_existing_assessment/2.
:- discontiguous may_request_access/2.
:- discontiguous may_request_exercise_of_powers/2.
:- discontiguous may_request_information_scientific_panel/2.
:- discontiguous may_request_testing/3.
:- discontiguous may_require_fees/1.
:- discontiguous may_require_further_evidence/2.
:- discontiguous may_require_modification/2.
:- discontiguous may_revoke/2.
:- discontiguous may_submit_reasoned_request/3.
:- discontiguous may_support_ai_literacy/1.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous may_suspend_restrict_withdraw/2.
:- discontiguous may_use_designation_documents/2.
:- discontiguous may_use_documentation/2.
:- discontiguous may_use_national_accreditation_body/2.
:- discontiguous may_withdraw/2.
:- discontiguous means_sufficient/2.
:- discontiguous measure_concerns_ai_system/2.
:- discontiguous measure_deemed_justified/1.
:- discontiguous measure_taken_by_market_surveillance_authority/1.
:- discontiguous meeting_attendee/1.
:- discontiguous meets_notification_requirements/1.
:- discontiguous member_state_determines_conditions/2.
:- discontiguous member_state_representative/1.
:- discontiguous methodology_for/2.
:- discontiguous metrics_appropriate_to_intended_purpose/1.
:- discontiguous migration_asylum_border_control_area/1.
:- discontiguous minimise_risks_effectively/1.
:- discontiguous minimum_logging_requirement/2.
:- discontiguous minimum_technical_documentation_elements/1.
:- discontiguous misclassified_to_circumvent/2.
:- discontiguous mitigated_through_design/2.
:- discontiguous mitigated_through_development/2.
:- discontiguous mitigation_and_control_measures/2.
:- discontiguous mitigation_measures_for_feedback_loops/1.
:- discontiguous modification/2.
:- discontiguous modification_to/2.
:- discontiguous monitoring_deemed_fulfilled/2.
:- discontiguous must_accompany_application/2.
:- discontiguous must_achieve/2.
:- discontiguous must_adopt_implementing_acts/1.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_adopt_mitigation_measures/2.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_affix_ce_marking_visibly_legibly_indelibly/1.
:- discontiguous must_affix_notified_body_number/2.
:- discontiguous must_agree_terms_and_conditions/2.
:- discontiguous must_aim_to_ensure/2.
:- discontiguous must_allocate_sufficient_resources/2.
:- discontiguous must_allow_access_for_surveillance/2.
:- discontiguous must_apply_mutatis_mutandis/2.
:- discontiguous must_apply_procedure/2.
:- discontiguous must_appoint/2.
:- discontiguous must_appoint_legal_representative/2.
:- discontiguous must_assess/2.
:- discontiguous must_assess_and_mitigate_systemic_risks/2.
:- discontiguous must_assess_annually/2.
:- discontiguous must_assess_certificate_impact/2.
:- discontiguous must_assess_quality_management_system/2.
:- discontiguous must_assess_substantial_change/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assign_identification_number/2.
:- discontiguous must_assist/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_decision_on_commentable_elements/1.
:- discontiguous must_base_on_post_market_monitoring_plan/1.
:- discontiguous must_be_capable_of/2.
:- discontiguous must_be_established_under_national_law/1.
:- discontiguous must_be_independent_of/2.
:- discontiguous must_be_operational_by/2.
:- discontiguous must_be_represented_in/2.
:- discontiguous must_be_resilient/2.
:- discontiguous must_bring_into_compliance/2.
:- discontiguous must_carry_out_periodic_audits/2.
:- discontiguous must_carry_out_procedures/2.
:- discontiguous must_carry_out_tests/2.
:- discontiguous must_collect_and_analyse_post_market_data/2.
:- discontiguous must_communicate/2.
:- discontiguous must_communicate_fines_to_board/1.
:- discontiguous must_communicate_grounds/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_complete_assessment_within_12_months/2.
:- discontiguous must_complete_full_assessment/2.
:- discontiguous must_comply/2.
:- discontiguous must_comply_registration/2.
:- discontiguous must_comply_with_quality_management_system/2.
:- discontiguous must_comply_with_registration/2.
:- discontiguous must_conclude_agreement/3.
:- discontiguous must_confirm_qualified_body_assumption/2.
:- discontiguous must_conformity_assessment/2.
:- discontiguous must_consider/2.
:- discontiguous must_consider_circumstances/2.
:- discontiguous must_consult/2.
:- discontiguous must_consult_experts/2.
:- discontiguous must_contain/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_cooperate_for_consistency/1.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_authority/2.
:- discontiguous must_cooperate_with_new_providers/2.
:- discontiguous must_date_and_document_consent/2.
:- discontiguous must_decide/2.
:- discontiguous must_decide_on_changes/2.
:- discontiguous must_delete_personal_data/2.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_conformity/2.
:- discontiguous must_designate/2.
:- discontiguous must_designate_market_surveillance_authority/2.
:- discontiguous must_designate_notifying_authority/2.
:- discontiguous must_determine_number/2.
:- discontiguous must_develop_expertise/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_information_platform/2.
:- discontiguous must_develop_procedures_in_cooperation/1.
:- discontiguous must_develop_to_eliminate_or_reduce/2.
:- discontiguous must_direct_to_services/2.
:- discontiguous must_discard_data/2.
:- discontiguous must_discard_results/2.
:- discontiguous must_disclose_deep_fake/2.
:- discontiguous must_disclose_synthetic_text/2.
:- discontiguous must_document_assessment/2.
:- discontiguous must_document_procedures/2.
:- discontiguous must_document_risk_management_system/2.
:- discontiguous must_document_use/2.
:- discontiguous must_draw_up/2.
:- discontiguous must_draw_up_declaration/2.
:- discontiguous must_draw_up_declaration_of_conformity/2.
:- discontiguous must_draw_up_integration_documentation/2.
:- discontiguous must_draw_up_real_world_testing_plan/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_draw_up_training_summary/2.
:- discontiguous must_elect/2.
:- discontiguous must_enable/2.
:- discontiguous must_encourage_and_facilitate/2.
:- discontiguous must_encourage_and_facilitate_codes/2.
:- discontiguous must_encourage_review/2.
:- discontiguous must_end_non_compliance/2.
:- discontiguous must_ensure/2.
:- discontiguous must_ensure_access/1.
:- discontiguous must_ensure_accessibility/2.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_authorities_associated/2.
:- discontiguous must_ensure_awareness/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_compliance_with_instructions/2.
:- discontiguous must_ensure_confidence/2.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_confidentiality/2.
:- discontiguous must_ensure_conformity/2.
:- discontiguous must_ensure_cooperation/2.
:- discontiguous must_ensure_coordination/2.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_cybersecurity/2.
:- discontiguous must_ensure_efficient_organisation/1.
:- discontiguous must_ensure_files_kept/2.
:- discontiguous must_ensure_implementation/2.
:- discontiguous must_ensure_informed_interaction/2.
:- discontiguous must_ensure_input_data_quality/2.
:- discontiguous must_ensure_list_up_to_date/2.
:- discontiguous must_ensure_no_action_without_separate_verification/2.
:- discontiguous must_ensure_participation/2.
:- discontiguous must_ensure_requirements_met/2.
:- discontiguous must_ensure_resources/2.
:- discontiguous must_ensure_restrictive_measures/2.
:- discontiguous must_ensure_storage_transport_conditions/2.
:- discontiguous must_ensure_testing_compliance/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_ensure_verification_by_two_persons/2.
:- discontiguous must_enter/2.
:- discontiguous must_enter_consultation/2.
:- discontiguous must_establish/2.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_systems/2.
:- discontiguous must_evaluate/2.
:- discontiguous must_evaluate_compliance/2.
:- discontiguous must_evaluate_model/2.
:- discontiguous must_evaluate_promote_convergence/2.
:- discontiguous must_examine_changes/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_facilitate_access/1.
:- discontiguous must_facilitate_codes/2.
:- discontiguous must_facilitate_coordination/1.
:- discontiguous must_facilitate_standardisation_participation/2.
:- discontiguous must_facilitate_tasks/2.
:- discontiguous must_follow_with_notified_body_number/1.
:- discontiguous must_give_opportunity/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access_to_models/2.
:- discontiguous must_grant_full_access/2.
:- discontiguous must_have_competences/2.
:- discontiguous must_have_permanent_availability/2.
:- discontiguous must_have_procedures/2.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_identify_and_list_authorities/2.
:- discontiguous must_immediately_inform_parties/2.
:- discontiguous must_implement_mitigation/2.
:- discontiguous must_implement_risk_management_system/2.
:- discontiguous must_include_in_application/2.
:- discontiguous must_include_measures/2.
:- discontiguous must_include_provisions/2.
:- discontiguous must_indicate_contact_details/2.
:- discontiguous must_indicate_grounds_and_challenge/2.
:- discontiguous must_indicate_notified_body_number_in_promotional_material/1.
:- discontiguous must_inform/2.
:- discontiguous must_inform_ai_office/2.
:- discontiguous must_inform_authorities/2.
:- discontiguous must_inform_authorities_of_alteration/2.
:- discontiguous must_inform_authorities_of_risk_and_corrective_action/2.
:- discontiguous must_inform_board_and_authorities/2.
:- discontiguous must_inform_certificate_action/2.
:- discontiguous must_inform_cessation/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_commission_and_states/2.
:- discontiguous must_inform_cooperate/2.
:- discontiguous must_inform_market_surveillance_authority/3.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_of_adopted_measures/2.
:- discontiguous must_inform_of_establishment/2.
:- discontiguous must_inform_of_intended_changes/2.
:- discontiguous must_inform_of_system_operation/2.
:- discontiguous must_inform_parties/2.
:- discontiguous must_inform_provider_distributor_and_authority/2.
:- discontiguous must_inform_provider_or_importer_of_risk/2.
:- discontiguous must_inform_providers_designation_change/2.
:- discontiguous must_inform_serious_incident/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_integrate_testing_and_reporting/2.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_failure/2.
:- discontiguous must_investigate_risk/2.
:- discontiguous must_investigate_serious_incident/2.
:- discontiguous must_issue_certificate/2.
:- discontiguous must_issue_standardisation_requests/1.
:- discontiguous must_issue_supplement/2.
:- discontiguous must_keep_at_disposal/3.
:- discontiguous must_keep_declaration_of_conformity/2.
:- discontiguous must_keep_declaration_up_to_date/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_list_up_to_date/2.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_keep_up_to_date/2.
:- discontiguous must_lay_down_penalties/2.
:- discontiguous must_lay_down_rules_public_authorities/2.
:- discontiguous must_lodge_application/2.
:- discontiguous must_lodge_complaint/2.
:- discontiguous must_lodge_technical_documentation_application/2.
:- discontiguous must_maintain/2.
:- discontiguous must_maintain_quality_management_system/2.
:- discontiguous must_maintain_risk_management_system/2.
:- discontiguous must_maintain_technical_documentation_under_financial_law/1.
:- discontiguous must_make_available_documentation/2.
:- discontiguous must_make_available_information/2.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_mark_outputs/2.
:- discontiguous must_monitor/2.
:- discontiguous must_monitor_and_evaluate/2.
:- discontiguous must_monitor_compliance/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_be_involved_in/2.
:- discontiguous must_not_conflict_with/2.
:- discontiguous must_not_disclose_without_consultation/1.
:- discontiguous must_not_make_available_until_conformity/2.
:- discontiguous must_not_place_on_market/2.
:- discontiguous must_not_represent/2.
:- discontiguous must_not_take_instructions/1.
:- discontiguous must_not_use_unregistered_system/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_annually/2.
:- discontiguous must_notify_authorities/3.
:- discontiguous must_notify_change/2.
:- discontiguous must_notify_changes/2.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_extension/2.
:- discontiguous must_notify_final_outcomes/2.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_measures/2.
:- discontiguous must_notify_member_states/2.
:- discontiguous must_notify_rules/2.
:- discontiguous must_notify_suspension_termination/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_organise_awareness_training/2.
:- discontiguous must_organise_communication_campaigns/2.
:- discontiguous must_organise_testing/3.
:- discontiguous must_participate_in/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_tasks/2.
:- discontiguous must_perform_with_impartiality/1.
:- discontiguous must_prepare/2.
:- discontiguous must_protect_confidentiality/1.
:- discontiguous must_provide/2.
:- discontiguous must_provide_advice/2.
:- discontiguous must_provide_assessment/2.
:- discontiguous must_provide_assistance/2.
:- discontiguous must_provide_certificate_information/2.
:- discontiguous must_provide_conformity_information/2.
:- discontiguous must_provide_copy_of_consent/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_documentation/2.
:- discontiguous must_provide_exchange/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_guidance_on_regulatory_expectations/2.
:- discontiguous must_provide_guidance_supervision_support/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information_on_request/2.
:- discontiguous must_provide_instructions_for_use/2.
:- discontiguous must_provide_logs_access/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_priority_access/2.
:- discontiguous must_provide_support/2.
:- discontiguous must_provide_technical_access/2.
:- discontiguous must_provide_technical_documentation/2.
:- discontiguous must_provide_technical_documentation/3.
:- discontiguous must_provide_template/2.
:- discontiguous must_provide_templates/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_annual_report/2.
:- discontiguous must_publish_list/2.
:- discontiguous must_publish_summary/2.
:- discontiguous must_put_copyright_policy/2.
:- discontiguous must_put_quality_management_system_in_place/2.
:- discontiguous must_refuse_certificate/2.
:- discontiguous must_register_in_eu_database/2.
:- discontiguous must_register_information/2.
:- discontiguous must_register_testing/2.
:- discontiguous must_register_use_in_eu_database/2.
:- discontiguous must_register_with_information/2.
:- discontiguous must_remain_on_premises/1.
:- discontiguous must_report/2.
:- discontiguous must_report_annual_fines/3.
:- discontiguous must_report_annually/2.
:- discontiguous must_report_regularly/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_serious_incidents/2.
:- discontiguous must_request_access/2.
:- discontiguous must_request_authorisation/2.
:- discontiguous must_request_authorisation_post_remote_biometric/2.
:- discontiguous must_request_corrective_measures/2.
:- discontiguous must_request_evidence_best_efforts/2.
:- discontiguous must_request_only_necessary_data/1.
:- discontiguous must_require_corrective_action/2.
:- discontiguous must_require_suspend_withdraw_certificates/2.
:- discontiguous must_respect_confidentiality/1.
:- discontiguous must_respect_required_rigour_and_protection/2.
:- discontiguous must_restrict_suspend_withdraw/2.
:- discontiguous must_restrict_withdraw_or_recall/2.
:- discontiguous must_safeguard/2.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_satisfy_requirements/2.
:- discontiguous must_set_up_procedures/2.
:- discontiguous must_share_information_for_surveillance/2.
:- discontiguous must_specify_by_written_agreement/2.
:- discontiguous must_stop_use/2.
:- discontiguous must_stop_use_and_delete_data/2.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_reports/2.
:- discontiguous must_submit_application/2.
:- discontiguous must_submit_declaration_on_request/2.
:- discontiguous must_submit_final_report/2.
:- discontiguous must_submit_findings/2.
:- discontiguous must_submit_real_world_testing_plan/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_submit_report_findings/2.
:- discontiguous must_supervise_and_enforce/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information/3.
:- discontiguous must_suspend_testing/2.
:- discontiguous must_suspend_use/2.
:- discontiguous must_suspend_withdraw_or_restrict_certificate/2.
:- discontiguous must_take_account_of_provider_characteristics/2.
:- discontiguous must_take_appropriate_measures/3.
:- discontiguous must_take_corrective_action/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_sme_interests/2.
:- discontiguous must_take_into_account_sme_needs/2.
:- discontiguous must_take_measures/2.
:- discontiguous must_take_necessary_steps/2.
:- discontiguous must_take_out_insurance/2.
:- discontiguous must_take_provisional_measures/2.
:- discontiguous must_take_restriction_measures/2.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_terminate_testing/2.
:- discontiguous must_treat_confidentially/2.
:- discontiguous must_update_assessment/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_use_art_13_information/2.
:- discontiguous must_use_digital_ce_marking/1.
:- discontiguous must_use_notification_tool/2.
:- discontiguous must_use_simplified_form/2.
:- discontiguous must_utilise_communication_channels/2.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_design_development_consistency/2.
:- discontiguous must_verify_quality_management_system_compliance/2.
:- discontiguous must_verify_sandbox_compliance/2.
:- discontiguous must_verify_technical_documentation/2.
:- discontiguous must_withdraw_ai_system/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation/2.
:- discontiguous must_withdraw_national_measure/2.
:- discontiguous mutual_recognition/1.
:- discontiguous national_authority_confirms_no_risk/2.
:- discontiguous national_level_registration_required/1.
:- discontiguous necessary_for_compliance_with_chapter_3_section_2/1.
:- discontiguous new_conformity_assessment_needed/2.
:- discontiguous new_conformity_assessment_required/2.
:- discontiguous no_administrative_fines_imposed/2.
:- discontiguous no_adverse_measures_or_decisions/1.
:- discontiguous no_conflict_of_interest/1.
:- discontiguous no_conformity_assessment_activities/1.
:- discontiguous no_consultancy_services/1.
:- discontiguous no_fines_for_other_law/2.
:- discontiguous no_justification_required/2.
:- discontiguous non_compliance/1.
:- discontiguous non_compliance_art_5/1.
:- discontiguous non_compliance_art_50/1.
:- discontiguous non_compliance_chapter_3_section_2/1.
:- discontiguous non_compliance_harmonised_standards/1.
:- discontiguous non_compliance_not_restricted_to_national_territory/2.
:- discontiguous non_compliance_other_requirements/1.
:- discontiguous non_compliance_prohibited_practices/1.
:- discontiguous non_conforming_system/1.
:- discontiguous notification_decisions_by_different_persons/1.
:- discontiguous notification_details/1.
:- discontiguous notification_includes/2.
:- discontiguous notified_body/1.
:- discontiguous notified_body_accepts_simplified_form/1.
:- discontiguous notified_body_entitled_control/2.
:- discontiguous notified_body_for_assessment/2.
:- discontiguous notifying_authorities_sub_group/1.
:- discontiguous objection_period/1.
:- discontiguous objection_raised/1.
:- discontiguous objections_raised/1.
:- discontiguous objective_advise/2.
:- discontiguous objective_contribute_to_tasks/2.
:- discontiguous objective_contributing_to_evidence_based_learning/1.
:- discontiguous objective_facilitating_market_access/1.
:- discontiguous objective_fostering_innovation_competitiveness/1.
:- discontiguous objective_improving_legal_certainty/1.
:- discontiguous objective_provide_technical_expertise/1.
:- discontiguous objective_supporting_best_practices/1.
:- discontiguous objectivity_and_impartiality_safeguarded/1.
:- discontiguous obligation_fulfilled_by_participation/2.
:- discontiguous observer/1.
:- discontiguous obtained_information/2.
:- discontiguous occurred/2.
:- discontiguous offers_conformity_assessment_body_activities/1.
:- discontiguous open_to_applicants/1.
:- discontiguous operator/1.
:- discontiguous other_changes_procedure/1.
:- discontiguous other_reasonable_means_sufficient/2.
:- discontiguous other_union_law/1.
:- discontiguous overall_residual_risk_acceptable/2.
:- discontiguous overlap/2.
:- discontiguous oversight_measure_commensurate/1.
:- discontiguous par_2_deadline/1.
:- discontiguous partnership_applications_permitted/1.
:- discontiguous performed_at_any_time_throughout_development/1.
:- discontiguous performs_tasks_listed_in_ref/2.
:- discontiguous permanent_member_of_advisory_forum/2.
:- discontiguous permitted_adherence_scope/3.
:- discontiguous permitted_biometric_dataset_labelling/1.
:- discontiguous permitted_criminal_risk_support/1.
:- discontiguous permitted_emotion_inference/1.
:- discontiguous permitted_establish/2.
:- discontiguous permitted_exchange_with_third_countries/1.
:- discontiguous permitted_extension/2.
:- discontiguous permitted_further_processing_of_personal_data_in_sandbox/1.
:- discontiguous permitted_invite/2.
:- discontiguous permitted_law_enforcement_rtrbi_objective/2.
:- discontiguous permitted_law_enforcement_rtrbi_use/1.
:- discontiguous permitted_opt_out_third_party_assessment/2.
:- discontiguous permitted_placing_on_market/1.
:- discontiguous permitted_prepare/2.
:- discontiguous permitted_putting_into_service/1.
:- discontiguous permitted_putting_into_service_without_authorisation/1.
:- discontiguous permitted_special_category_processing/2.
:- discontiguous permitted_subcontracting/2.
:- discontiguous permitted_testing_in_real_world_conditions/1.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_to_conduct_testing/2.
:- discontiguous personal_data_processed/1.
:- discontiguous personnel_expertise/2.
:- discontiguous placed_or_put_into_service_by/2.
:- discontiguous placing_on_market_by/2.
:- discontiguous planned_cessation/1.
:- discontiguous post_market_monitoring/2.
:- discontiguous post_market_monitoring_exempt_sensitive_operational_data/1.
:- discontiguous post_market_monitoring_plan_part_of_technical_documentation/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous power_to_adopt_delegated_acts/1.
:- discontiguous powers_conferred_for_testing/2.
:- discontiguous predictions_reversible/1.
:- discontiguous preliminary_findings/2.
:- discontiguous prepares_agenda/2.
:- discontiguous prescribed_period/2.
:- discontiguous presumable_context_of_use/1.
:- discontiguous presumed_compliant_notified_body/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_cybersecurity_requirements/1.
:- discontiguous presumed_conformity_data_requirements/1.
:- discontiguous presumed_conformity_with_common_specifications/1.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous prior_to_being_placed_on_market/2.
:- discontiguous prior_to_putting_into_service/2.
:- discontiguous priority_access_to_ai_regulatory_sandbox/1.
:- discontiguous procedural_safeguards/1.
:- discontiguous procedures_for_assessment_designation_notification/1.
:- discontiguous proceedings_pending/2.
:- discontiguous product_manufacturer_considered_provider/2.
:- discontiguous professional_secrecy/2.
:- discontiguous prohibited_adverse_legal_effect_solely_on_output/1.
:- discontiguous prohibited_alteration_before_notification/2.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_criminal_risk_assessment/1.
:- discontiguous prohibited_emotion_inference/1.
:- discontiguous prohibited_law_enforcement_rtrbi/1.
:- discontiguous prohibited_social_scoring_system/1.
:- discontiguous prohibited_subliminal_manipulative_system/1.
:- discontiguous prohibited_untargeted_law_enforcement_use/1.
:- discontiguous prohibited_untargeted_scraping_database/1.
:- discontiguous prohibited_vulnerability_exploiting_system/1.
:- discontiguous promote_investment_innovation/1.
:- discontiguous protected_interest/1.
:- discontiguous provenance/2.
:- discontiguous provider_of/2.
:- discontiguous provider_of_general_purpose_ai_model/1.
:- discontiguous provider_tests_satisfactory/2.
:- discontiguous provides_consultancy_services/2.
:- discontiguous provides_controled_environment/1.
:- discontiguous provision_of_information_and_training/2.
:- discontiguous provisory_validity_extended/2.
:- discontiguous public_administration_efficiency/1.
:- discontiguous public_interest_area/1.
:- discontiguous public_safety_and_public_health/1.
:- discontiguous publicly_accessible/1.
:- discontiguous published_in_official_journal/1.
:- discontiguous purpose_identifying_risk_management_measures/1.
:- discontiguous purpose_of_classification_was_circumvention/2.
:- discontiguous purpose_of_other_sub_group/2.
:- discontiguous purpose_of_standing_sub_group/2.
:- discontiguous pursuant_to_sandbox_plan/2.
:- discontiguous putting_into_service_by/2.
:- discontiguous quality_management_system_documented/2.
:- discontiguous quality_management_system_proportionate/2.
:- discontiguous quality_management_system_satisfies_requirements/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous reasonable_means_exhausted/2.
:- discontiguous reasonably_mitigated_or_eliminated/1.
:- discontiguous reasoned_request/2.
:- discontiguous reasoned_request_for_reassessment/1.
:- discontiguous reasoned_request_made/2.
:- discontiguous reasons_to_doubt_competence/1.
:- discontiguous recommendation_subject/2.
:- discontiguous reduced_objection_period_art_5/1.
:- discontiguous references/2.
:- discontiguous referred_to_in/2.
:- discontiguous reflects_intended_use_setting/1.
:- discontiguous registration_section_a/1.
:- discontiguous registration_section_b/1.
:- discontiguous registration_section_c/1.
:- discontiguous regular_systematic_review/1.
:- discontiguous relevant_national_public_authority/1.
:- discontiguous remains_responsible/2.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous renewable_once/1.
:- discontiguous report_deadline/3.
:- discontiguous report_shall_be_accompanied_by/2.
:- discontiguous report_shall_be_made_public/2.
:- discontiguous report_shall_include/2.
:- discontiguous report_shall_pay_attention_to/2.
:- discontiguous requested/2.
:- discontiguous required_accuracy/1.
:- discontiguous required_actions/3.
:- discontiguous required_ce_marking_and_documentation/1.
:- discontiguous required_commercial_non_commercial_balance/1.
:- discontiguous required_cybersecurity/1.
:- discontiguous required_data_contextual_appropriateness/1.
:- discontiguous required_data_contextual_appropriateness_for_testing/1.
:- discontiguous required_data_governance/1.
:- discontiguous required_data_governance_for_testing/1.
:- discontiguous required_data_quality_criteria/1.
:- discontiguous required_data_relevance_representativeness/1.
:- discontiguous required_data_relevance_representativeness_for_testing/1.
:- discontiguous required_diligence/1.
:- discontiguous required_expertise/1.
:- discontiguous required_fundamental_rights_impact_assessment/2.
:- discontiguous required_independence/1.
:- discontiguous required_meeting_frequency/2.
:- discontiguous required_membership_representation/1.
:- discontiguous required_prior_authorisation/2.
:- discontiguous required_qualified_alert/1.
:- discontiguous required_quality_management_system_aspect/2.
:- discontiguous required_quality_management_system_assessment/1.
:- discontiguous required_registration_information/2.
:- discontiguous required_request_contents/1.
:- discontiguous required_robustness/1.
:- discontiguous required_rtrbi_identity_confirmation/1.
:- discontiguous required_rtrbi_registration/2.
:- discontiguous required_rtrbi_safeguards/1.
:- discontiguous required_sme_balance/1.
:- discontiguous required_technical_documentation/1.
:- discontiguous required_technical_documentation_for_downstream_provider/1.
:- discontiguous required_technical_documentation_section_1/1.
:- discontiguous required_technical_documentation_section_2/1.
:- discontiguous required_testing/2.
:- discontiguous required_testing_data_only/1.
:- discontiguous requirements_chapter_3_section_2_met/1.
:- discontiguous requirements_fulfilled/1.
:- discontiguous requirements_in_chapter_3_section_2/1.
:- discontiguous requirements_in_chapter_3_section_2_apply/1.
:- discontiguous requirements_referred_to_in_art_17_met/1.
:- discontiguous requirements_to_consider/1.
:- discontiguous requires_art_43_par_4/2.
:- discontiguous requires_new_assessment/2.
:- discontiguous requires_third_party_conformity_assessment/1.
:- discontiguous residual_risk_acceptable_for_each_hazard/2.
:- discontiguous resilient_against_errors/1.
:- discontiguous resilient_against_unauthorised_alteration/1.
:- discontiguous retention_period/2.
:- discontiguous revocation_takes_effect/2.
:- discontiguous right_to_explanation/1.
:- discontiguous rights_of_defence_respected/1.
:- discontiguous risk_estimation_and_evaluation/2.
:- discontiguous risk_evaluation_from_post_market_monitoring/2.
:- discontiguous risk_identification_and_analysis/2.
:- discontiguous risk_management_measures/2.
:- discontiguous risk_management_procedures_established_under_other_law/2.
:- discontiguous risk_to_fundamental_rights_identified/2.
:- discontiguous risk_to_health_safety_or_fundamental_rights/1.
:- discontiguous risk_within_art_79_1/1.
:- discontiguous risks_cannot_be_eliminated/1.
:- discontiguous risks_identified_and_evaluated/2.
:- discontiguous rules_of_procedure_adopted_by/2.
:- discontiguous rules_of_procedure_shall_lay_down/2.
:- discontiguous safeguards_objectivity_and_impartiality/1.
:- discontiguous safety_component_of_ai_system/1.
:- discontiguous safety_component_of_product_or_product/1.
:- discontiguous satisfied_with_provider_tests/2.
:- discontiguous satisfies_art_17/1.
:- discontiguous scientific_panel/1.
:- discontiguous secretariat_provider/1.
:- discontiguous sectoral_procedures_apply/1.
:- discontiguous secure_non_public_registration_required/1.
:- discontiguous seek_non_binding_guidance/2.
:- discontiguous selected_by/2.
:- discontiguous separate_isolated_protected_environment/1.
:- discontiguous separate_verification_exempt/1.
:- discontiguous separate_verification_required/1.
:- discontiguous serious_criminal_offence/1.
:- discontiguous serious_incident_type_c/1.
:- discontiguous serious_risk_to_health_safety_or_fundamental_rights/1.
:- discontiguous shall_adopt_implementing_acts/2.
:- discontiguous shall_be_taken_positively_into_account/2.
:- discontiguous shall_coordinate_within_board/2.
:- discontiguous shall_develop_interface/2.
:- discontiguous shall_ensure_published_list/0.
:- discontiguous shall_exercise_within_limits/2.
:- discontiguous shall_facilitate_cross_border_cooperation/1.
:- discontiguous shall_inform_commission/2.
:- discontiguous shall_inform_committee/1.
:- discontiguous shall_justify_non_compliance/2.
:- discontiguous shall_keep_up_to_date/2.
:- discontiguous shall_make_available_to_public/2.
:- discontiguous shall_make_publicly_available/2.
:- discontiguous shall_not_affect_other_sandboxes/1.
:- discontiguous shall_not_affect_supervisory_powers/1.
:- discontiguous shall_proactively_coordinate/2.
:- discontiguous shall_provide_access/2.
:- discontiguous shall_provide_information_on/2.
:- discontiguous shall_reject_arguments/1.
:- discontiguous shall_remain_liable/2.
:- discontiguous shall_repeal_implementing_act/1.
:- discontiguous shall_submit_proposals/2.
:- discontiguous shall_supply_information/2.
:- discontiguous shall_take_into_account/2.
:- discontiguous shall_take_into_account_reports/2.
:- discontiguous shall_undertake/2.
:- discontiguous shorter_period/1.
:- discontiguous significant_risks_shall_result_in_mitigation/1.
:- discontiguous simple_procedures/1.
:- discontiguous simplified_quality_management_system_applies/1.
:- discontiguous simplified_technical_documentation_form/1.
:- discontiguous single_contact_point_for_board/1.
:- discontiguous single_contact_point_for_stakeholders/1.
:- discontiguous single_declaration_for_multiple_legislation/1.
:- discontiguous single_technical_documentation_for_harmonised_product/1.
:- discontiguous source_code_access_granted/2.
:- discontiguous standardisation_request/1.
:- discontiguous standing_sub_group/1.
:- discontiguous statement_of_conformity_issued/1.
:- discontiguous strengthen_global_cooperation/1.
:- discontiguous sub_group/1.
:- discontiguous subject_to_administrative_fine/2.
:- discontiguous subject_to_fines/2.
:- discontiguous subject_to_internal_risk_management_requirements_under_other_union_law/1.
:- discontiguous subject_to_legitimate_interest_protection/1.
:- discontiguous subjects_protected/1.
:- discontiguous substantial_modification_in_changes/1.
:- discontiguous sufficient_reason_for_concern/2.
:- discontiguous sufficient_reason_non_compliant/2.
:- discontiguous sufficient_reason_to_consider_high_risk/2.
:- discontiguous sufficient_reason_to_consider_risk/2.
:- discontiguous sufficient_transparency_for_appropriate_use/1.
:- discontiguous sufficient_transparency_for_interpretation/1.
:- discontiguous suitably_qualified/1.
:- discontiguous summary_published_excluding_sensitive_data/1.
:- discontiguous support_flexibility/1.
:- discontiguous surveillance_notified_body/2.
:- discontiguous systemic_risk_applies/1.
:- discontiguous systemic_risk_classification/1.
:- discontiguous systemic_risk_designation_criterion/2.
:- discontiguous tacit_approval_applies/1.
:- discontiguous tacit_extension_applies/1.
:- discontiguous takes_full_responsibility/2.
:- discontiguous takes_into_account_sme_needs/2.
:- discontiguous targeted_risk_management_measures/1.
:- discontiguous task/2.
:- discontiguous technical_documentation/1.
:- discontiguous technical_documentation_demonstrates_compliance/1.
:- discontiguous technical_documentation_drawn_up/1.
:- discontiguous technical_documentation_of_training_testing_validation/1.
:- discontiguous technical_documentation_provides_assessment_information/1.
:- discontiguous technical_knowledge_of_deployer/1.
:- discontiguous technical_organisational_measures_and_deletion/1.
:- discontiguous technical_organisational_measures_taken/1.
:- discontiguous technical_redundancy_solution/1.
:- discontiguous technically_feasible/1.
:- discontiguous term_of_office/2.
:- discontiguous term_of_office_co_chair/2.
:- discontiguous tested_against_prior_defined_metrics/2.
:- discontiguous tested_against_probabilistic_thresholds/2.
:- discontiguous testing/2.
:- discontiguous testing_duration_valid/1.
:- discontiguous testing_in_partnership/3.
:- discontiguous testing_in_real_world_conditions_permitted/1.
:- discontiguous testing_prior_to_placement_or_service/1.
:- discontiguous testing_remains_subject_to_authorisation/1.
:- discontiguous tests_satisfactory/2.
:- discontiguous third_party_supplies_elements/2.
:- discontiguous thresholds_appropriate_to_intended_purpose/1.
:- discontiguous throughout_lifecycle/1.
:- discontiguous trained_and_tested_on_representative_data/1.
:- discontiguous training_computation_threshold_exceeded/1.
:- discontiguous training_data_requirement_met/1.
:- discontiguous training_expected_of_deployer/1.
:- discontiguous training_summary/1.
:- discontiguous training_to_deployers/1.
:- discontiguous transfer_to_third_countries_permitted/1.
:- discontiguous transparent_and_fair/1.
:- discontiguous transport_and_critical_infrastructure/1.
:- discontiguous unable_to_conclude_investigation/1.
:- discontiguous under_article/2.
:- discontiguous union_ai_testing_support_structure/1.
:- discontiguous union_harmonisation_derogation_applies/1.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous union_legislative_act_on_large_scale_it_system/1.
:- discontiguous union_safeguard_procedure_applies/1.
:- discontiguous update_triggered/1.
:- discontiguous urgency_situation/1.
:- discontiguous use_restricted_to_national_territory/2.
:- discontiguous used_in_accordance_with_intended_purpose/1.
:- discontiguous using_discretionary_powers/2.
:- discontiguous verification_sufficient/2.
:- discontiguous voluntary_code_of_conduct/1.
:- discontiguous voting_majority/1.
:- discontiguous vulnerable_groups_protected/1.
:- discontiguous where_appropriate/1.
:- discontiguous with_objective/2.
:- discontiguous with_view_to/2.
:- discontiguous with_view_to_accelerating/2.
:- discontiguous with_view_to_encouraging/2.
:- discontiguous withdrawal_without_detriment/2.
:- discontiguous within_deadline/3.
:- discontiguous within_period_after_notification/2.
:- discontiguous without_prejudice_consumer_protection/0.
:- discontiguous without_prejudice_data_protection/0.
:- discontiguous without_prejudice_intermediary_liability/0.
:- discontiguous without_prejudice_to_chapter_3/0.
:- discontiguous without_prejudice_to_other_transparency_obligations/0.
:- discontiguous without_prejudice_workers_rights/0.

% --- input slots: assert facts against these at runtime ---
:- dynamic ability_to_carry_out_diligently_accurately_objectively/1.
:- dynamic academia/1.
:- dynamic acceptable_use_policies/1.
:- dynamic access_or_admission_to_education/1.
:- dynamic access_request_specified/4.
:- dynamic accessed_by_other_parties/1.
:- dynamic accessible_language_and_format/1.
:- dynamic accompanied_by_eu_declaration_of_conformity/1.
:- dynamic accompanied_by_instructions_for_use/1.
:- dynamic accreditation_certificate/1.
:- dynamic accuracy/1.
:- dynamic acting_contrary_to_obligations/1.
:- dynamic adequate/1.
:- dynamic administrative_fine/1.
:- dynamic administrative_personnel/1.
:- dynamic adversarial_example_attack/1.
:- dynamic adversarial_testing_measures/1.
:- dynamic adverse_legal_effect_based_solely_on_output/2.
:- dynamic advise_classification_systemic_risk/1.
:- dynamic advise_classification_various/1.
:- dynamic advisory_forum/1.
:- dynamic affected_person/1.
:- dynamic affected_workers/1.
:- dynamic affixing_to_system_not_possible_or_not_warranted/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic ai_system_is_safety_component_of/2.
:- dynamic alert_ai_office_systemic_risk/1.
:- dynamic all_harmonised_standards_applied/2.
:- dynamic all_requirements_covered_by_standards_or_common_specifications/2.
:- dynamic alter_outputs/2.
:- dynamic alter_performance/2.
:- dynamic alter_use/2.
:- dynamic annual_report_of_advisory_forum/1.
:- dynamic another_body_assumes_responsibility/2.
:- dynamic application_procedures/1.
:- dynamic applied_restricted_part/2.
:- dynamic appropriate_deadline_set/2.
:- dynamic appropriate_safeguards_implemented/1.
:- dynamic appropriate_security_clearance/1.
:- dynamic appropriate_statistical_properties/1.
:- dynamic appropriate_statistical_properties_for_persons_or_groups/2.
:- dynamic appropriateness_of_performance_metrics/1.
:- dynamic approved_changes_documentation/1.
:- dynamic architecture_and_parameters/1.
:- dynamic arguments_sufficiently_substantiated/1.
:- dynamic artistic_creative_satirical_fictional_analogous/1.
:- dynamic assess_appropriate_education_level/1.
:- dynamic assess_migration_risk/1.
:- dynamic assess_reoffending_risk/1.
:- dynamic assess_victimisation_risk/1.
:- dynamic assessment_performed/2.
:- dynamic assist_asylum_visa_residence_examination/1.
:- dynamic assistive_standard_editing/1.
:- dynamic associated_body_of/2.
:- dynamic associated_personnel_of/2.
:- dynamic at_least/2.
:- dynamic attests_fulfilment_of_art_31/1.
:- dynamic attributed_to_shortcomings_in_standards/1.
:- dynamic authorisation_rejected/2.
:- dynamic authorised_for_criminal_offences/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_to_access/2.
:- dynamic autonomy_override_criterion/1.
:- dynamic becomes_high_risk_after_purpose_modification/1.
:- dynamic before_date/2.
:- dynamic behavioural_characteristics/1.
:- dynamic benefit_magnitude_criterion/1.
:- dynamic bilateral_multilateral_confidentiality_arrangement/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic biometric_verification_system/1.
:- dynamic body_governed_by_public_law/1.
:- dynamic by_date/2.
:- dynamic capabilities_and_limitations/1.
:- dynamic capability_to_continue_monitoring/2.
:- dynamic ce_marking/1.
:- dynamic ce_marking_bears/1.
:- dynamic certificate/1.
:- dynamic certificate_issued/1.
:- dynamic certificate_notified_body/1.
:- dynamic changes_documented_in_technical_documentation/1.
:- dynamic circumstances_affecting_notification/1.
:- dynamic civil_society/1.
:- dynamic classified_as_non_high_risk_by_provider/1.
:- dynamic clearly_specified_not_to_change_into_high_risk/2.
:- dynamic close_involvement_in_testing/2.
:- dynamic co_chair_of_advisory_forum/2.
:- dynamic code_of_practice/1.
:- dynamic commission_communicated_decision/2.
:- dynamic commission_considers_measure_contrary_to_union_law/1.
:- dynamic commission_considers_measure_justified/1.
:- dynamic commission_considers_measure_unjustified/1.
:- dynamic commission_consultation/2.
:- dynamic commission_decision/3.
:- dynamic commission_evaluation/2.
:- dynamic commission_informed_other_member_states/1.
:- dynamic committees_of/2.
:- dynamic common_principle/2.
:- dynamic common_specification/1.
:- dynamic common_specifications_applied/1.
:- dynamic common_specifications_available/1.
:- dynamic common_specifications_exist/1.
:- dynamic competent_authority/1.
:- dynamic competitor_of/2.
:- dynamic complaint_alleging_infringement/1.
:- dynamic complete/1.
:- dynamic complexity_of_ai_system/1.
:- dynamic compliance_ensured_by_corrective_action/1.
:- dynamic compliance_with_art_31_assessed/1.
:- dynamic compliant_with_regulation/1.
:- dynamic complies_with_data_protection/2.
:- dynamic computational_resources/1.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic conditions_not_met/2.
:- dynamic confidential_information/1.
:- dynamic confidentiality_attack/1.
:- dynamic confidentiality_obligations/1.
:- dynamic conflict_with_independence/2.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_activity/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_module/1.
:- dynamic consultancy_services/1.
:- dynamic consultation_of_experts/1.
:- dynamic consulted_relevant_authority/1.
:- dynamic consults_board_and_stakeholders/1.
:- dynamic contact_details/2.
:- dynamic contact_details_of_provider_and_deployers/1.
:- dynamic containing_relevant_information/1.
:- dynamic contextual_characteristics/1.
:- dynamic continues_to_learn_after_placement/1.
:- dynamic contractual_arrangement_allocates_obligations/2.
:- dynamic contribute_to_evaluation_tools/1.
:- dynamic contribute_to_tools_templates/1.
:- dynamic control_for_attack/2.
:- dynamic controls_input_data/2.
:- dynamic coordination_activities/1.
:- dynamic corrective_action_taken/2.
:- dynamic corrigibility_criterion/1.
:- dynamic court_unlimited_jurisdiction/1.
:- dynamic covered_by_annex_1/1.
:- dynamic covered_by_annex_3/1.
:- dynamic covers_requirements/2.
:- dynamic criterion_benchmarks_evaluations/1.
:- dynamic criterion_data_set_quality_or_size/1.
:- dynamic criterion_end_users/1.
:- dynamic criterion_input_output_modalities/1.
:- dynamic criterion_parameters/1.
:- dynamic criterion_training_computation/1.
:- dynamic critical_infrastructure/1.
:- dynamic cross_border_activity/1.
:- dynamic cybersecurity/1.
:- dynamic cybersecurity_measures_description/1.
:- dynamic cybersecurity_requirements/1.
:- dynamic data_and_data_computing/1.
:- dynamic data_governance_practices_appropriate/2.
:- dynamic data_listed_in_annex_8_section_1/1.
:- dynamic data_listed_in_annex_8_section_2/1.
:- dynamic data_listed_in_annex_8_section_3/1.
:- dynamic data_poisoning_attack/1.
:- dynamic data_processed_criterion/1.
:- dynamic data_protection_impact_assessment_conducted/1.
:- dynamic data_requirements_description/1.
:- dynamic decision_taken/2.
:- dynamic declaration_of_conformity/1.
:- dynamic declaration_of_interests/1.
:- dynamic deep_fake/1.
:- dynamic deep_fake_content/1.
:- dynamic deleted_once/2.
:- dynamic demonstrates_conformity_with_harmonised_standards/1.
:- dynamic dependency_outcome_criterion/1.
:- dynamic deployer/1.
:- dynamic deployer_instructions_for_use/1.
:- dynamic deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c/2.
:- dynamic deployer_public_authority/1.
:- dynamic deployer_user_interface_description/1.
:- dynamic description_of_ai_system_for_identification/1.
:- dynamic description_of_conformity_assessment_activities/1.
:- dynamic description_of_infringement/3.
:- dynamic design_of/1.
:- dynamic design_specifications/1.
:- dynamic detailed_description_elements_and_development/1.
:- dynamic detect_attack/2.
:- dynamic detect_recognise_identify_in_migration/1.
:- dynamic detects_decision_patterns/1.
:- dynamic development_methods_and_steps/1.
:- dynamic development_of/1.
:- dynamic directly_involved_in/2.
:- dynamic disclosure_required_by_law/1.
:- dynamic distributor/1.
:- dynamic documentary_evidence_for_verification/1.
:- dynamic documentation_of_access/1.
:- dynamic documentation_under_regulation/1.
:- dynamic does_not_substantially_alter_input/1.
:- dynamic downstream_provider/1.
:- dynamic due_account_of_provider_characteristics/1.
:- dynamic duly_reasoned/1.
:- dynamic earliest_six_months_after_designation/1.
:- dynamic earliest_six_months_after_maintained_decision/1.
:- dynamic easily_accessible_machine_readable_code/1.
:- dynamic easily_accessible_via_interface/1.
:- dynamic economic_interest_in/2.
:- dynamic editorial_responsibility/2.
:- dynamic effectively_fulfilled_by_other_data/2.
:- dynamic element_changed_or_no_longer_up_to_date/2.
:- dynamic eligibility_and_selection_criteria/1.
:- dynamic emergency_call_evaluation_or_dispatch/1.
:- dynamic emotion_recognition_system/1.
:- dynamic employer/1.
:- dynamic ensure_confidentiality/1.
:- dynamic ensures_equivalent_compliance/1.
:- dynamic enters_into_force_on/2.
:- dynamic equivalent_capabilities_or_impact/1.
:- dynamic equivalent_national_coverage/1.
:- dynamic error_fault_inconsistency/1.
:- dynamic established_in_third_country/1.
:- dynamic established_in_union/1.
:- dynamic established_under_national_law/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic eu_declaration_of_conformity_copy/1.
:- dynamic european_standardisation_organisations/1.
:- dynamic evaluate_creditworthiness/1.
:- dynamic evaluate_evidence_reliability/1.
:- dynamic evaluate_learning_outcomes/1.
:- dynamic evaluate_public_benefits_eligibility/1.
:- dynamic evaluation_strategies/1.
:- dynamic evaluation_under_art_79/1.
:- dynamic exception_or_restriction_under_union_or_national_law/1.
:- dynamic exempt_from_notification/1.
:- dynamic exempt_personal_non_professional/1.
:- dynamic existing_impact_assessment_by_provider/2.
:- dynamic existing_law_prevention_criterion/1.
:- dynamic existing_law_redress_criterion/1.
:- dynamic existing_post_market_monitoring_system/1.
:- dynamic experience_and_knowledge_of/2.
:- dynamic exploit_vulnerability/2.
:- dynamic extent_of_use_criterion/1.
:- dynamic falls_within_scope/1.
:- dynamic feedback_loop/1.
:- dynamic finalised/1.
:- dynamic financial_institution/1.
:- dynamic financial_institution_provider/1.
:- dynamic finding_details/4.
:- dynamic first_use_of_high_risk_ai_system/2.
:- dynamic floating_point_operation/1.
:- dynamic follows_guidance_in_good_faith/1.
:- dynamic foreseeable_unintended_outcomes_and_risks/1.
:- dynamic forms_of_marketing_and_service/1.
:- dynamic free_and_open_source_licence/1.
:- dynamic free_of_errors/1.
:- dynamic free_open_source_licence/1.
:- dynamic functional_characteristics/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_model_supplied/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic general_purpose_ai_system_based_on_same_provider_model/1.
:- dynamic genuine_threat_criminal_offence/1.
:- dynamic geographical_characteristics/1.
:- dynamic guidelines_account_for/2.
:- dynamic guidelines_subject/2.
:- dynamic hardware_software_interaction/1.
:- dynamic harm_concerns_criterion/1.
:- dynamic harmonised_rules_general_purpose_ai_models/1.
:- dynamic harmonised_rules_placing_putting_use/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_published_with_restriction/2.
:- dynamic harmonised_standard_references_published/1.
:- dynamic harmonised_standard_requested/1.
:- dynamic harmonised_standards_applied/1.
:- dynamic harmonised_standards_applied_partially/1.
:- dynamic harmonised_standards_cover_requirements/2.
:- dynamic harmonised_standards_exist/1.
:- dynamic harmonised_standards_insufficient_rights/1.
:- dynamic harmonised_standards_non_compliant/1.
:- dynamic harmonised_standards_not_delivered/1.
:- dynamic harmonised_transparency_rules/1.
:- dynamic has_legal_personality/1.
:- dynamic high_impact_capabilities/1.
:- dynamic high_impact_capabilities_met/1.
:- dynamic high_risk_ai_system_annex_3_except_point_2/1.
:- dynamic high_risk_ai_system_annex_3_point_1/1.
:- dynamic high_risk_ai_system_annex_3_points_2_to_8/1.
:- dynamic high_risk_ai_system_annex_3_sensitive/1.
:- dynamic high_risk_ai_system_intended_for_use_in_annex_3_point_2/1.
:- dynamic high_risk_ai_system_referred_in_article_6_par_2/1.
:- dynamic high_risk_ai_system_union_harmonisation_legislation/1.
:- dynamic high_risk_integration_in_harmonisation_legislation/1.
:- dynamic high_risk_purpose_general_purpose_ai_system/1.
:- dynamic high_risk_under_annex_3/1.
:- dynamic highest_professional_integrity/1.
:- dynamic human_oversight_measures_assessment/1.
:- dynamic human_oversight_measures_technical/1.
:- dynamic human_review_editorial_control/1.
:- dynamic identified_authority_list/1.
:- dynamic imbalance_vulnerability_criterion/1.
:- dynamic impartial_and_objective/1.
:- dynamic impartiality/1.
:- dynamic implementing_act_establishes_panel/1.
:- dynamic importer/1.
:- dynamic importer_complied_with_obligations/1.
:- dynamic improves_human_activity/1.
:- dynamic in_conformity_with/2.
:- dynamic incomplete_information/1.
:- dynamic incorrect_information/1.
:- dynamic independence/1.
:- dynamic independent_from_provider/1.
:- dynamic industry/1.
:- dynamic influence_election_or_voting_behaviour/1.
:- dynamic inform_applicants_within_period/1.
:- dynamic information_correct/1.
:- dynamic information_from_conformity_assessment/1.
:- dynamic information_from_tasks_under_regulation/1.
:- dynamic information_gathered_insufficient/1.
:- dynamic information_on_suspension_or_termination/1.
:- dynamic informed_commission_and_member_states/1.
:- dynamic informed_consent/1.
:- dynamic informed_of_serious_incident/2.
:- dynamic informing_public_on_matters_of_public_interest/1.
:- dynamic infringement_duration/1.
:- dynamic infringement_gravity/1.
:- dynamic infringement_nature/1.
:- dynamic infringement_of_provisions/1.
:- dynamic initial_identification_potential_suspect/2.
:- dynamic initially_placed_on_market_or_put_into_service/2.
:- dynamic input_data/1.
:- dynamic input_data_specifications/1.
:- dynamic input_output_maximum_size/1.
:- dynamic input_output_modality/1.
:- dynamic input_output_modality_format/1.
:- dynamic instructions_for_use/1.
:- dynamic insufficient_documentation/1.
:- dynamic integration_system_types/1.
:- dynamic integration_technical_means/1.
:- dynamic intended_for_law_enforcement_immigration_asylum_or_union_institutions/1.
:- dynamic intended_hardware_description/1.
:- dynamic intended_purpose/1.
:- dynamic intended_purpose_criterion/1.
:- dynamic intended_purpose_description/1.
:- dynamic intended_tasks/1.
:- dynamic intended_use_by_public_authority/1.
:- dynamic interaction_with_external_systems/1.
:- dynamic interaction_with_natural_persons/1.
:- dynamic interaction_with_other_systems/1.
:- dynamic involved_in_application/1.
:- dynamic issue_details/5.
:- dynamic issued_under_sole_responsibility/1.
:- dynamic jeopardises_compliance/1.
:- dynamic jeopardises_public_national_security/1.
:- dynamic judicial_or_binding_administrative_authority/1.
:- dynamic judicial_research_and_interpretation/1.
:- dynamic justified_national_measure/1.
:- dynamic large_scale_it_system/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_border_immigration_asylum_authority/1.
:- dynamic law_enforcement_deployer/1.
:- dynamic law_enforcement_migration_asylum_border_control_area/1.
:- dynamic legal_personnel/1.
:- dynamic legal_representative/2.
:- dynamic liability_assumed_by_member_state/2.
:- dynamic liability_insurance_for/2.
:- dynamic lifecycle/1.
:- dynamic lifecycle_changes_description/1.
:- dynamic listed_in_annex_10/1.
:- dynamic listed_in_annex_3/1.
:- dynamic listed_in_annex_3_point_1/1.
:- dynamic listed_in_annex_3_point_2/1.
:- dynamic listed_in_annex_3_point_6/1.
:- dynamic listed_in_annex_3_point_7/1.
:- dynamic logs_automatically_generated/1.
:- dynamic logs_under_control/2.
:- dynamic made_available_on_market_by_distributor/2.
:- dynamic made_available_to/2.
:- dynamic maintains_designation/1.
:- dynamic makes_accessible_to_public/2.
:- dynamic makes_decisions_or_assists_decisions/1.
:- dynamic making_available_on_market/1.
:- dynamic mandate/2.
:- dynamic market_surveillance_authority/1.
:- dynamic marketing_of/1.
:- dynamic may_invite_to_adhere/2.
:- dynamic may_provide_support/3.
:- dynamic measures_support_innovation_smes/1.
:- dynamic meeting_of_advisory_forum/1.
:- dynamic meets_conditions_referred_to_in_art_51/1.
:- dynamic meets_quality_criteria/1.
:- dynamic meets_requirements_of_article_31/1.
:- dynamic member_of_advisory_forum/2.
:- dynamic member_state_directly_responsible/2.
:- dynamic microenterprise/1.
:- dynamic misleading_information/1.
:- dynamic model_evasion_attack/1.
:- dynamic model_flaw/1.
:- dynamic model_licence/1.
:- dynamic model_poisoning_attack/1.
:- dynamic modifies_intended_purpose/2.
:- dynamic monitor_student_test_behaviour/1.
:- dynamic monitoring_functioning_and_control/1.
:- dynamic must_carry_out_assessment/2.
:- dynamic must_consider_requirements/2.
:- dynamic must_evaluate_and_report/2.
:- dynamic must_inform_cessation/3.
:- dynamic must_report_prohibited_practices/2.
:- dynamic narrow_procedural_task/1.
:- dynamic national_competent_authority/1.
:- dynamic necessary_and_proportionate/1.
:- dynamic necessary_for_mandate/2.
:- dynamic necessary_for_operations/2.
:- dynamic negative_conformity_assessment_result/1.
:- dynamic no_decrease_protection_criterion/1.
:- dynamic no_external_instructions/1.
:- dynamic no_harmonised_standard_reference_published/1.
:- dynamic no_longer_meets_requirements/1.
:- dynamic no_negative_effect_on_subjects/1.
:- dynamic no_new_certificates_during_suspension/2.
:- dynamic no_risk_confirmed/2.
:- dynamic no_significant_risk_criterion/1.
:- dynamic non_compliance_with_prohibited_ai_practices/1.
:- dynamic non_compliant_high_risk_ai_system/1.
:- dynamic non_personal_data/1.
:- dynamic not_high_risk_under_art_6_par_3/1.
:- dynamic not_high_risk_under_article_6_par_3/1.
:- dynamic not_in_conformity_with_requirements/1.
:- dynamic notification_of/2.
:- dynamic notification_of_delegated_act/1.
:- dynamic notified/1.
:- dynamic notified_body_activity/2.
:- dynamic notified_body_decisions/1.
:- dynamic notified_body_details/4.
:- dynamic notified_body_responsible_for_conformity_assessment/2.
:- dynamic notified_under_union_harmonisation_legislation/1.
:- dynamic notifying_authority/1.
:- dynamic notifying_authority_of_member_state/2.
:- dynamic notifying_member_state/2.
:- dynamic objection_issued/2.
:- dynamic objection_period_expired/1.
:- dynamic objective_detailed_new_reasons/1.
:- dynamic objectivity/1.
:- dynamic obligation_to_hand_over_documentation/2.
:- dynamic observes_specific_plan_and_terms/1.
:- dynamic obtained_in/2.
:- dynamic obvious_interaction/1.
:- dynamic only_authorised_persons_access/1.
:- dynamic opinion_of_advisory_forum/1.
:- dynamic organisational_requirements/1.
:- dynamic other_relevant_information/2.
:- dynamic parameters_publicly_available/1.
:- dynamic particular_attention_needed/2.
:- dynamic particular_expertise_and_competence_in_ai/1.
:- dynamic partner_or_linked_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic permanent_availability_of_personnel/1.
:- dynamic permitted_by_law_emotion_recognition/1.
:- dynamic personal_data/1.
:- dynamic personal_data_deleted_after_test/1.
:- dynamic personnel_of/2.
:- dynamic personnel_responsible_for/2.
:- dynamic placed_on_market/1.
:- dynamic placed_on_market_together_with_product/2.
:- dynamic placing_on_market/1.
:- dynamic point_of_contact/2.
:- dynamic polygraph_or_similar_law_enforcement/1.
:- dynamic polygraph_or_similar_migration/1.
:- dynamic positive_conformity_assessment_result/1.
:- dynamic post_market_evaluation_system_description/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic potential_extent_harm_criterion/1.
:- dynamic predetermined_changes/1.
:- dynamic predetermined_changes_description/1.
:- dynamic preparatory_task/1.
:- dynamic presents_risk_within_meaning_art_79_1/1.
:- dynamic prevent_attack/2.
:- dynamic previously_conducted_fundamental_rights_impact_assessment/2.
:- dynamic previously_conformity_assessed/1.
:- dynamic privacy_preserving_measures/1.
:- dynamic private_entity_providing_public_services/1.
:- dynamic process_requirements/1.
:- dynamic processed_by/2.
:- dynamic product_component_features/1.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic profiling_in_criminal_investigation/1.
:- dynamic profiling_of_natural_persons/1.
:- dynamic prohibitions_certain_ai_practices/1.
:- dynamic promotional_material_mentions_ce_marking/1.
:- dynamic prospective_provider/1.
:- dynamic protected/1.
:- dynamic provided_by/2.
:- dynamic provided_digitally/1.
:- dynamic provider/1.
:- dynamic provider_chooses_procedure/3.
:- dynamic provider_complied_with_obligations/1.
:- dynamic provider_of_monitoring_system/2.
:- dynamic provides_controlled_environment/1.
:- dynamic pseudonymisation/1.
:- dynamic public_authority/1.
:- dynamic public_authority_deployer/1.
:- dynamic public_reporting_system/1.
:- dynamic publicly_accessible_space/1.
:- dynamic publicly_available/1.
:- dynamic purpose_improve_internal_market/1.
:- dynamic purpose_promote_trustworthy_ai/1.
:- dynamic purpose_protect_health_safety_rights/1.
:- dynamic purpose_support_innovation/1.
:- dynamic put_into_service/1.
:- dynamic put_into_service_under_name_or_trademark_of/2.
:- dynamic puts_name_or_trademark_on/2.
:- dynamic putting_into_service/1.
:- dynamic qualified_alert/1.
:- dynamic qualified_alert_from_scientific_panel/1.
:- dynamic quality_management_requirements/1.
:- dynamic quality_management_system_approval/1.
:- dynamic quality_management_system_documentation/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_plan/1.
:- dynamic reason_to_suspect/2.
:- dynamic reasonable_time/1.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasoned_request/1.
:- dynamic reasoned_request_for_information/2.
:- dynamic reasoned_request_for_testing/2.
:- dynamic reasoned_request_from_authority/2.
:- dynamic reasons_other_data_insufficient/1.
:- dynamic reasons_strictly_necessary/1.
:- dynamic recall_of_ai_system/1.
:- dynamic recognised_expertise_in_ai/1.
:- dynamic recommendation_of_advisory_forum/1.
:- dynamic records_of_processing_activities_include/2.
:- dynamic recruitment_or_selection/1.
:- dynamic references_harmonised_standard/2.
:- dynamic references_published_in_official_journal/1.
:- dynamic referred_in_annex_3_point_5/1.
:- dynamic referred_to_in_annex_3/1.
:- dynamic refusal_of_certificate/1.
:- dynamic registered_business_user/2.
:- dynamic registered_in_eu_database/1.
:- dynamic registered_under_article_49/1.
:- dynamic registered_under_article_60/1.
:- dynamic registered_under_article_6_par_4/1.
:- dynamic registration_obligation/1.
:- dynamic release_date_and_distribution/1.
:- dynamic relevant/1.
:- dynamic relevant_changes_occurred/1.
:- dynamic relevant_competent_authority_for_system/2.
:- dynamic relevant_market_surveillance_authority/2.
:- dynamic relevant_police_file/1.
:- dynamic relevant_software_versions/1.
:- dynamic relevant_standards/1.
:- dynamic relevant_types_of_ai_systems/1.
:- dynamic relevant_union_law/1.
:- dynamic remains_high_risk_after_modification/1.
:- dynamic remote/1.
:- dynamic report_on_delegation/1.
:- dynamic report_shall_be_made_public/1.
:- dynamic represent_parties_engaged_in/2.
:- dynamic request/2.
:- dynamic request_evidence_best_efforts/1.
:- dynamic request_for_information_from_market_surveillance/1.
:- dynamic request_from_authority/1.
:- dynamic request_made/2.
:- dynamic request_not_accepted/1.
:- dynamic required_by_intended_purpose/2.
:- dynamic required_risk_management_system/1.
:- dynamic requirements_chapter_3_section_2/1.
:- dynamic requirements_of_chapter_3_section_2/1.
:- dynamic requisite_competence/2.
:- dynamic resolve_attack/2.
:- dynamic resources_requirements/1.
:- dynamic respond_to_attack/2.
:- dynamic restriction_of_certificate/1.
:- dynamic revocation_of_delegation/1.
:- dynamic right_otherwise_provided_under_union_law/1.
:- dynamic risk/1.
:- dynamic risk_assessment_life_health_insurance/1.
:- dynamic risk_management_system/2.
:- dynamic risk_management_system_description/1.
:- dynamic risk_presented/2.
:- dynamic risk_to_health_safety_or_rights/1.
:- dynamic robustness/1.
:- dynamic rules_market_monitoring_surveillance_governance_enforcement/1.
:- dynamic rules_of_procedure/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of_critical_infrastructure/1.
:- dynamic same_type_ai_system/1.
:- dynamic sandbox_plan/1.
:- dynamic scientific_or_technical_expertise_in_ai/1.
:- dynamic scientific_personnel/1.
:- dynamic search_specific_missing_person/1.
:- dynamic sector_of_provider/1.
:- dynamic sectoral_group_of_notified_bodies/1.
:- dynamic secured/1.
:- dynamic sensitive_information/1.
:- dynamic sensitive_operational_data/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_identified/2.
:- dynamic significant_change_in_design/1.
:- dynamic significant_risk_of_harm/1.
:- dynamic similar_case/2.
:- dynamic similar_conformity_assessment_activity/1.
:- dynamic simplified_quality_management_system/1.
:- dynamic size_of_provider/1.
:- dynamic sme/1.
:- dynamic software_firmware_versions/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic special_categories_processed/2.
:- dynamic specific_requirements_high_risk_obligations_operators/1.
:- dynamic specific_union_or_national_law_basis/1.
:- dynamic stakeholder/1.
:- dynamic start_up/1.
:- dynamic state_of_the_art_security_measures/1.
:- dynamic storage_or_transport_conditions_applicable/1.
:- dynamic strict_controls/1.
:- dynamic strictly_necessary_for/2.
:- dynamic structure_and_procedures_for_impartiality/1.
:- dynamic structure_of_provider/1.
:- dynamic sub_group_of_advisory_forum/1.
:- dynamic subcontracting_activity/1.
:- dynamic subcontractors_of/2.
:- dynamic subject/1.
:- dynamic subject_of_proceedings/2.
:- dynamic subject_to_financial_services_requirements/1.
:- dynamic subject_to_other_union_law_with_ce_marking/1.
:- dynamic subsidiaries_of/2.
:- dynamic substantial_modification/1.
:- dynamic substantial_modification_to/2.
:- dynamic sufficient_internal_competences/2.
:- dynamic sufficiently_representative/1.
:- dynamic suitable_safeguards/1.
:- dynamic summary_of_testing_plan_characteristics/1.
:- dynamic supervised_within/2.
:- dynamic supplement_to_certificate/1.
:- dynamic supplies_ai_system/2.
:- dynamic supplies_components/2.
:- dynamic supplies_processes/2.
:- dynamic supplies_services/2.
:- dynamic supplies_tools/2.
:- dynamic supply_of_information/1.
:- dynamic support_cross_border_market_surveillance/1.
:- dynamic support_market_surveillance_authorities/1.
:- dynamic support_union_safeguard_procedure/1.
:- dynamic suspected_or_convicted_person/1.
:- dynamic suspension_of_certificate/1.
:- dynamic suspension_of_notification/2.
:- dynamic system_architecture_description/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_present/1.
:- dynamic systemic_risk_presents/1.
:- dynamic tacit_extension/1.
:- dynamic takes_into_account/2.
:- dynamic targeted_search/1.
:- dynamic task_specified_in_mandate/2.
:- dynamic tasks_carried_out_by/2.
:- dynamic tasks_carried_out_on_behalf_of/2.
:- dynamic technical_integration_means/1.
:- dynamic technical_limitations_on_reuse/1.
:- dynamic technical_personnel/1.
:- dynamic temporary_sub_group/1.
:- dynamic terms_and_conditions/1.
:- dynamic tested_in_other_member_states/1.
:- dynamic testing_against_defined_metrics/1.
:- dynamic testing_data/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_through_technical_means/1.
:- dynamic third_country_agreement_with_union/1.
:- dynamic third_party/1.
:- dynamic timeline_for_remedy_outlined/2.
:- dynamic to_best_extent_possible/1.
:- dynamic top_level_management/1.
:- dynamic training_data/1.
:- dynamic training_data_information/1.
:- dynamic training_testing_validation_information/1.
:- dynamic training_validation_testing_data_sets_used/2.
:- dynamic transferred/1.
:- dynamic transmitted/1.
:- dynamic types_of_ai_systems_for_competence/1.
:- dynamic unauthorised_third_party/1.
:- dynamic under_control_of_provider/1.
:- dynamic under_name_or_trademark_of/2.
:- dynamic under_responsibility_of_distributor/2.
:- dynamic undertaking/1.
:- dynamic union_harmonisation_legislation_allows_opt_out/1.
:- dynamic union_harmonisation_legislation_applies/1.
:- dynamic union_institution/1.
:- dynamic union_institution_body_office_agency/1.
:- dynamic union_wide_unique_single_identification_number/1.
:- dynamic unjustified_national_measure/1.
:- dynamic untargeted_use/1.
:- dynamic urgency_applies/1.
:- dynamic use_of/1.
:- dynamic used_for_personal_purposes/2.
:- dynamic used_or_integrated_in/2.
:- dynamic uses_training_techniques/1.
:- dynamic valid_document_existing_designation/1.
:- dynamic validation_and_testing_procedures/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic whichever_is_higher/2.
:- dynamic whichever_is_lower/2.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic withdrawal_of_certificate/1.
:- dynamic withdrawal_of_notification/2.
:- dynamic within_jurisdiction/1.
:- dynamic work_related_decisions/1.
:- dynamic workers_representatives/1.
:- dynamic written_contribution_of_advisory_forum/1.

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
declared(purpose_improve_internal_market/1, 'improve the functioning of the internal market', 'celex:32024R1689/oj#art_1').
declared(purpose_promote_trustworthy_ai/1, 'promote uptake of human-centric and trustworthy AI', 'celex:32024R1689/oj#art_1').
declared(purpose_protect_health_safety_rights/1, 'ensure high level of protection of health, safety, fundamental rights, democracy, rule of law and environmental protection', 'celex:32024R1689/oj#art_1').
declared(purpose_support_innovation/1, 'support innovation with focus on SMEs including start-ups', 'celex:32024R1689/oj#art_1').
declared(harmonised_rules_placing_putting_use/1, 'harmonised rules for placing on market, putting into service, and use of AI systems', 'celex:32024R1689/oj#art_1').
declared(prohibitions_certain_ai_practices/1, 'prohibitions of certain AI practices', 'celex:32024R1689/oj#art_1').
declared(specific_requirements_high_risk_obligations_operators/1, 'specific requirements for high-risk AI systems and obligations for operators', 'celex:32024R1689/oj#art_1').
declared(harmonised_transparency_rules/1, 'harmonised transparency rules for certain AI systems', 'celex:32024R1689/oj#art_1').
declared(harmonised_rules_general_purpose_ai_models/1, 'harmonised rules for placing on market of general-purpose AI models', 'celex:32024R1689/oj#art_1').
declared(rules_market_monitoring_surveillance_governance_enforcement/1, 'rules on market monitoring, market surveillance, governance and enforcement', 'celex:32024R1689/oj#art_1').
declared(measures_support_innovation_smes/1, 'measures to support innovation with particular focus on SMEs including start-ups', 'celex:32024R1689/oj#art_1').
provenance(purpose_improve_internal_market/1, 'celex:32024R1689/oj#art_1').
provenance(purpose_promote_trustworthy_ai/1, 'celex:32024R1689/oj#art_1').
provenance(purpose_protect_health_safety_rights/1, 'celex:32024R1689/oj#art_1').
provenance(purpose_support_innovation/1, 'celex:32024R1689/oj#art_1').
provenance(harmonised_rules_placing_putting_use/1, 'celex:32024R1689/oj#art_1').
provenance(prohibitions_certain_ai_practices/1, 'celex:32024R1689/oj#art_1').
provenance(specific_requirements_high_risk_obligations_operators/1, 'celex:32024R1689/oj#art_1').
provenance(harmonised_transparency_rules/1, 'celex:32024R1689/oj#art_1').
provenance(harmonised_rules_general_purpose_ai_models/1, 'celex:32024R1689/oj#art_1').
provenance(rules_market_monitoring_surveillance_governance_enforcement/1, 'celex:32024R1689/oj#art_1').
provenance(measures_support_innovation_smes/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(applies_to/1, 'the regulation applies to the entity or activity', 'celex:32024R1689/oj#art_2/par_1').
declared(exempt/1, 'the regulation does not apply to the entity or activity', 'celex:32024R1689/oj#art_2/par_3').
declared(exempt_military_defence_national_security/1, 'exemption for military, defence or national security purposes', 'celex:32024R1689/oj#art_2/par_3').
declared(exempt_third_country_authorities/1, 'exemption for third country authorities and international organisations under conditions', 'celex:32024R1689/oj#art_2/par_4').
declared(exempt_scientific_research/1, 'exemption for scientific research and development', 'celex:32024R1689/oj#art_2/par_6').
declared(exempt_research_testing_development/1, 'exemption for research, testing or development prior to market placement', 'celex:32024R1689/oj#art_2/par_8').
declared(exempt_personal_non_professional/1, 'exemption for natural persons in purely personal non-professional activity', 'celex:32024R1689/oj#art_2/par_10').
declared(exempt_free_open_source/1, 'exemption for free and open-source AI systems', 'celex:32024R1689/oj#art_2/par_12').
declared(high_risk_integration_in_harmonisation_legislation/1, 'high-risk AI systems integrated in Union harmonisation legislation with limited articles applying', 'celex:32024R1689/oj#art_2/par_2').
declared(without_prejudice_consumer_protection/0, 'regulation is without prejudice to consumer protection and product safety rules', 'celex:32024R1689/oj#art_2/par_9').
declared(without_prejudice_workers_rights/0, 'regulation does not preclude more favourable worker protection', 'celex:32024R1689/oj#art_2/par_11').
declared(without_prejudice_intermediary_liability/0, 'regulation does not affect intermediary service liability provisions', 'celex:32024R1689/oj#art_2/par_5').
declared(without_prejudice_data_protection/0, 'regulation does not affect data protection legislation', 'celex:32024R1689/oj#art_2/par_7').
declared(limited_application_high_risk_harmonisation/1, 'only specific articles apply to high-risk AI systems under harmonisation legislation', 'celex:32024R1689/oj#art_2/par_2').
applies_to(provider_placing_on_market_or_putting_into_service_ai_system(P, S)) :-
    provider(P),
    ai_system(S),
    placing_on_market_or_putting_into_service(P, S).
applies_to(provider_placing_general_purpose_ai_model_on_market(P, M)) :-
    provider(P),
    general_purpose_ai_model(M),
    placing_on_market(P, M).
applies_to(deployer_of_ai_system(D, S)) :-
    deployer(D),
    ai_system(S),
    established_or_located_in_union(D).
applies_to(provider_or_deployer_third_country_output_used_in_union(P, S)) :-
    (provider(P); deployer(P)),
    ai_system(S),
    established_or_located_in_third_country(P),
    output_used_in_union(S).
applies_to(importer_or_distributor_of_ai_system(I, S)) :-
    (importer(I); distributor(I)),
    ai_system(S).
applies_to(product_manufacturer_placing_ai_system_with_product(M, S)) :-
    product_manufacturer(M),
    ai_system(S),
    placing_on_market_or_putting_into_service(M, S),
    under_own_name_or_trademark(M, S).
applies_to(authorised_representative_not_established_in_union(R, P)) :-
    authorised_representative(R),
    provider(P),
    \+ established_or_located_in_union(P),
    mandated_by(R, P).
applies_to(affected_person_in_union(P)) :-
    affected_person(P),
    located_in_union(P).
exempt(areas_outside_union_law) :-
    outside_scope_of_union_law.
exempt(national_security_competences) :-
    national_security_competence_of_member_states.
exempt_military_defence_national_security(S) :-
    ai_system(S),
    placed_on_market_put_into_service_or_used_for_military_defence_national_security(S).
exempt_military_defence_national_security_output(S) :-
    ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    located_in_union(S),
    output_used_for_military_defence_national_security(S).
exempt_third_country_authorities(A) :-
    (public_authority_third_country(A); international_organisation(A)),
    use_ai_system_in_international_cooperation(A),
    adequate_safeguards_fundamental_rights(A).
exempt_scientific_research(S) :-
    (ai_system(S); general_purpose_ai_model(M)),
    specifically_developed_and_put_into_service_for_scientific_research(S, M).
exempt_research_testing_development(A) :-
    (research_activity(A); testing_activity(A); development_activity(A)),
    regarding_ai_system_or_model(A),
    prior_to_placing_on_market_or_putting_into_service(A),
    \+ testing_in_real_world_conditions(A).
exempt_personal_non_professional(D, S) :-
    deployer(D),
    natural_person(D),
    ai_system(S),
    purely_personal_non_professional_activity(D, S).
exempt_free_open_source(S) :-
    ai_system(S),
    released_under_free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ falls_under_art_5_or_50(S).
limited_application_high_risk_harmonisation(S) :-
    high_risk_ai_system(S),
    classified_under_art_6_par_1(S),
    related_to_product_covered_by_union_harmonisation_legislation_annex_1_sec_2(S).
without_prejudice_consumer_protection.
without_prejudice_workers_rights.
without_prejudice_intermediary_liability.
without_prejudice_data_protection.
provenance(applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(exempt/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_military_defence_national_security/1, 'celex:32024R1689/oj#art_2/par_3').
provenance(exempt_military_defence_national_security_output/1, 'celex:32024R1689/oj#art_2/par_3').
provenance(exempt_third_country_authorities/1, 'celex:32024R1689/oj#art_2/par_4').
provenance(exempt_scientific_research/1, 'celex:32024R1689/oj#art_2/par_6').
provenance(exempt_research_testing_development/1, 'celex:32024R1689/oj#art_2/par_8').
provenance(exempt_personal_non_professional/2, 'celex:32024R1689/oj#art_2/par_10').
provenance(exempt_free_open_source/1, 'celex:32024R1689/oj#art_2/par_12').
provenance(limited_application_high_risk_harmonisation/1, 'celex:32024R1689/oj#art_2/par_2').
provenance(without_prejudice_consumer_protection/0, 'celex:32024R1689/oj#art_2/par_9').
provenance(without_prejudice_workers_rights/0, 'celex:32024R1689/oj#art_2/par_11').
provenance(without_prejudice_intermediary_liability/0, 'celex:32024R1689/oj#art_2/par_5').
provenance(without_prejudice_data_protection/0, 'celex:32024R1689/oj#art_2/par_7').
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
declared(must_ensure_ai_literacy/2, 'providers and deployers shall ensure sufficient AI literacy of staff and persons operating on their behalf', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Party, ai_literacy_of(Person, S)) :-
    (provider(Party); deployer(Party)),
    ai_system(S),
    (staff(Person, Party); operates_on_behalf(Person, Party, S)),
    deals_with_operation_or_use(Person, S).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulative_system/1, 'AI system using subliminal or manipulative techniques to distort behaviour causing harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_vulnerability_exploiting_system/1, 'AI system exploiting vulnerabilities of specific groups causing harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring_system/1, 'AI system for social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_criminal_risk_assessment/1, 'AI system assessing criminal risk based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(permitted_criminal_risk_support/1, 'AI system supporting human assessment of criminal activity based on objective facts', 'celex:32024R1689/oj#art_5').
declared(prohibited_untargeted_scraping_database/1, 'AI system creating facial recognition databases by untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference/1, 'AI system inferring emotions in workplace or education', 'celex:32024R1689/oj#art_5').
declared(permitted_emotion_inference/1, 'AI system inferring emotions for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'biometric categorisation system inferring sensitive attributes', 'celex:32024R1689/oj#art_5').
declared(permitted_biometric_dataset_labelling/1, 'labelling or filtering of lawfully acquired biometric datasets', 'celex:32024R1689/oj#art_5').
declared(prohibited_law_enforcement_rtrbi/1, 'use of real-time remote biometric identification in publicly accessible spaces for law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_law_enforcement_rtrbi_objective/2, 'permitted objective for law enforcement rtrbi use', 'celex:32024R1689/oj#art_5').
declared(required_rtrbi_identity_confirmation/1, 'rtrbi use limited to confirming identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(required_rtrbi_safeguards/1, 'rtrbi use must comply with necessary and proportionate safeguards', 'celex:32024R1689/oj#art_5').
declared(required_fundamental_rights_impact_assessment/2, 'law enforcement authority must complete fundamental rights impact assessment', 'celex:32024R1689/oj#art_5').
declared(required_rtrbi_registration/2, 'law enforcement authority must register rtrbi system in EU database', 'celex:32024R1689/oj#art_5').
declared(urgency_applies/1, 'duly justified case of urgency applies', 'celex:32024R1689/oj#art_5').
declared(required_prior_authorisation/2, 'prior authorisation required for rtrbi use', 'celex:32024R1689/oj#art_5').
declared(must_request_authorisation/2, 'law enforcement authority must request authorisation', 'celex:32024R1689/oj#art_5').
declared(must_stop_use/2, 'law enforcement authority must stop use', 'celex:32024R1689/oj#art_5').
declared(must_discard_data/2, 'law enforcement authority must discard data and results', 'celex:32024R1689/oj#art_5').
declared(must_notify_authorities/3, 'law enforcement authority must notify market surveillance and data protection authorities', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'authority must submit annual report to Commission', 'celex:32024R1689/oj#art_5').
declared(must_provide_template/2, 'Commission must provide template for annual reports', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/2, 'Commission must publish annual report on rtrbi use', 'celex:32024R1689/oj#art_5').
declared(must_notify_rules/2, 'Member State must notify rules to Commission', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulative_system(S) :-
    ai_system(S),
    (subliminal_techniques(S) ; manipulative_techniques(S) ; deceptive_techniques(S)),
    (objective_distort_behaviour(S) ; effect_distort_behaviour(S)),
    materially_distort_behaviour(S),
    appreciably_impair_informed_decision(S),
    causes_significant_harm(S).
prohibited_vulnerability_exploiting_system(S) :-
    ai_system(S),
    exploits_vulnerabilities(S),
    vulnerability_age(S) ; vulnerability_disability(S) ; vulnerability_social_economic_situation(S),
    (objective_distort_behaviour(S) ; effect_distort_behaviour(S)),
    materially_distort_behaviour(S),
    causes_significant_harm(S).
prohibited_social_scoring_system(S) :-
    ai_system(S),
    social_scoring_evaluation(S),
    social_scoring_classification(S),
    based_on_social_behaviour(S) ; based_on_personal_characteristics(S),
    social_score(S),
    (detrimental_unrelated_treatment(S) ; detrimental_unjustified_disproportionate_treatment(S)).
prohibited_criminal_risk_assessment(S) :-
    ai_system(S),
    criminal_risk_assessment(S),
    based_solely_on_profiling(S) ; based_on_personality_traits(S),
    \+ permitted_criminal_risk_support(S).
permitted_criminal_risk_support(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_verifiable_facts(S),
    directly_linked_to_criminal_activity(S).
prohibited_untargeted_scraping_database(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping(S),
    (scraping_from_internet(S) ; scraping_from_cctv(S)).
prohibited_emotion_inference(S) :-
    emotion_recognition_system(S),
    infer_emotions(S),
    (workplace_area(S) ; education_institution_area(S)),
    \+ permitted_emotion_inference(S).
permitted_emotion_inference(S) :-
    emotion_recognition_system(S),
    medical_reasons(S) ; safety_reasons(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    categorise_individually(S),
    based_on_biometric_data(S),
    (deduce_race(S) ; infer_race(S) ; deduce_political_opinions(S) ; infer_political_opinions(S) ; 
     deduce_trade_union_membership(S) ; infer_trade_union_membership(S) ; deduce_religious_beliefs(S) ; 
     infer_religious_beliefs(S) ; deduce_philosophical_beliefs(S) ; infer_philosophical_beliefs(S) ; 
     deduce_sex_life(S) ; infer_sex_life(S) ; deduce_sexual_orientation(S) ; infer_sexual_orientation(S)),
    \+ permitted_biometric_dataset_labelling(S).
permitted_biometric_dataset_labelling(S) :-
    labelling_biometric_dataset(S) ; filtering_biometric_dataset(S),
    lawfully_acquired(S),
    law_enforcement_area(S).
prohibited_law_enforcement_rtrbi(S) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    \+ permitted_law_enforcement_rtrbi_use(S).
permitted_law_enforcement_rtrbi_use(S) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    strictly_necessary(S),
    permitted_law_enforcement_rtrbi_objective(S, _O).
permitted_law_enforcement_rtrbi_objective(S, victim_search) :-
    real_time_remote_biometric_identification_system(S),
    targeted_search(S),
    (victim_abduction(S) ; victim_trafficking(S) ; victim_sexual_exploitation(S) ; missing_person(S)).
permitted_law_enforcement_rtrbi_objective(S, threat_prevention) :-
    real_time_remote_biometric_identification_system(S),
    specific_substantial_imminent_threat_life_safety(S) ; 
    genuine_present_or_foreseeable_terrorist_threat(S).
permitted_law_enforcement_rtrbi_objective(S, criminal_investigation) :-
    real_time_remote_biometric_identification_system(S),
    localisation_or_identification(S),
    suspected_criminal_offence(S),
    purpose_criminal_investigation(S) ; purpose_prosecution(S) ; purpose_executing_criminal_penalty(S),
    offence_annex_2(S),
    punishable_custodial_sentence_or_detention(S),
    maximum_period_at_least_four_years(S).
required_rtrbi_identity_confirmation(S) :-
    permitted_law_enforcement_rtrbi_use(S),
    confirm_identity(S),
    specifically_targeted_individual(S).
required_rtrbi_safeguards(S) :-
    permitted_law_enforcement_rtrbi_use(S),
    necessary_and_proportionate_safeguards(S),
    temporal_limitations(S),
    geographic_limitations(S),
    personal_limitations(S),
    national_law_authorisation(S).
required_fundamental_rights_impact_assessment(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    \+ urgency_applies(S).
required_rtrbi_registration(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    \+ urgency_applies(S).
permitted_law_enforcement_rtrbi_use(S) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    strictly_necessary(S),
    permitted_law_enforcement_rtrbi_objective(S, _O),
    urgency_applies(S),
    registration_completed_without_undue_delay(S).
required_prior_authorisation(S, Authority) :-
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    permitted_law_enforcement_rtrbi_use(S),
    \+ urgency_applies(S),
    judicial_authority(Authority) ; independent_administrative_authority_binding(Authority).
must_request_authorisation(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    urgency_applies(S),
    requested_without_undue_delay(S),
    requested_within_hours(S, 24).
must_stop_use(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    authorisation_rejected(S).
must_discard_data(Authority, S) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    authorisation_rejected(S),
    discard_all_data(S),
    discard_results(S),
    discard_outputs(S),
    immediate_effect(S).
must_notify_authorities(Authority, MarketSurveillanceAuthority, DataProtectionAuthority) :-
    law_enforcement_authority(Authority),
    real_time_remote_biometric_identification_system(S),
    use_in_publicly_accessible_space(S),
    purpose_law_enforcement(S),
    permitted_law_enforcement_rtrbi_use(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    national_data_protection_authority(DataProtectionAuthority),
    national_rules_apply(S),
    \+ sensitive_operational_data_included(S).
must_notify_rules(MemberState, Commission) :-
    member_state(MemberState),
    commission(Commission),
    adopted_rules_real_time_remote_biometric_identification(MemberState),
    notified_within_days(MemberState, Commission, 30).
must_submit_annual_report(Authority, Commission) :-
    (market_surveillance_authority(Authority) ; national_data_protection_authority(Authority)),
    notified_of_rtrbi_use(Authority),
    commission(Commission).
must_provide_template(Commission, Authorities) :-
    commission(Commission),
    (member_state(Authorities) ; market_surveillance_authority(Authorities) ; national_data_protection_authority(Authorities)).
must_publish_annual_report(Commission, Report) :-
    commission(Commission),
    annual_report(Report),
    based_on_aggregated_data(Report),
    based_on_national_reports(Report),
    \+ sensitive_operational_data_included(Report).
provenance(prohibited_subliminal_manipulative_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_vulnerability_exploiting_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring_system/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_criminal_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_criminal_risk_support/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_scraping_database/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_biometric_dataset_labelling/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_law_enforcement_rtrbi/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rtrbi_use/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_law_enforcement_rtrbi_objective/2, 'celex:32024R1689/oj#art_5').
provenance(required_rtrbi_identity_confirmation/1, 'celex:32024R1689/oj#art_5').
provenance(required_rtrbi_safeguards/1, 'celex:32024R1689/oj#art_5').
provenance(required_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_5').
provenance(required_rtrbi_registration/2, 'celex:32024R1689/oj#art_5').
provenance(urgency_applies/1, 'celex:32024R1689/oj#art_5').
provenance(required_prior_authorisation/2, 'celex:32024R1689/oj#art_5').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_5').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_5').
provenance(must_discard_data/2, 'celex:32024R1689/oj#art_5').
provenance(must_notify_authorities/3, 'celex:32024R1689/oj#art_5').
provenance(must_notify_rules/2, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_provide_template/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/2, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under Article 6', 'celex:32024R1689/oj#art_6').
declared(significant_risk_of_harm/1, 'poses significant risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6/par_3').
declared(narrow_procedural_task/1, 'intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_a').
declared(improves_human_activity/1, 'intended to improve result of previously completed human activity', 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_b').
declared(detects_decision_patterns/1, 'detects decision-making patterns without replacing or influencing human assessment', 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_c').
declared(preparatory_task/1, 'intended to perform preparatory task to assessment for Annex III use cases', 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_d').
declared(profiling_of_natural_persons/1, 'performs profiling of natural persons', 'celex:32024R1689/oj#art_6/par_3/unp_2').
declared(must_document_assessment/2, 'provider must document assessment before placing on market or putting into service', 'celex:32024R1689/oj#art_6/par_4').
declared(must_provide_assessment/2, 'provider must provide documentation upon request', 'celex:32024R1689/oj#art_6/par_4').
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_product_or_product(S),
    requires_third_party_conformity_assessment(S).
safety_component_of_product_or_product(S) :-
    safety_component(S),
    covered_by_annex_i_legislation(S).
safety_component_of_product_or_product(S) :-
    ai_system(S),
    product(S),
    covered_by_annex_i_legislation(S).
requires_third_party_conformity_assessment(S) :-
    conformity_assessment_required(S, third_party).
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S).
exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    narrow_procedural_task(S).
exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    improves_human_activity(S).
exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    detects_decision_patterns(S).
exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    preparatory_task(S).
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    profiling_of_natural_persons(S).
must_document_assessment(P, assessment(S)) :-
    provider(P),
    ai_system(S),
    referred_to_in_annex_3(S),
    exempt_high_risk(S),
    (placing_on_market(S); putting_into_service(S)).
must_provide_assessment(P, assessment(S)) :-
    provider(P),
    ai_system(S),
    referred_to_in_annex_3(S),
    exempt_high_risk(S),
    request(national_competent_authority(_), P, assessment(S)).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_product_or_product/1, 'celex:32024R1689/oj#art_6/par_1').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1').
provenance(exempt_high_risk/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_a').
provenance(improves_human_activity/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_b').
provenance(detects_decision_patterns/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_c').
provenance(preparatory_task/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_d').
provenance(profiling_of_natural_persons/1, 'celex:32024R1689/oj#art_6/par_3/unp_2').
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
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').

% ==== celex:32024R1689/oj#art_7 ====
declared(delegated_act_amend_anx_3_add/1, 'Commission empowered to adopt delegated act to amend Annex 3 by adding or modifying use-cases', 'celex:32024R1689/oj#art_7').
declared(delegated_act_amend_anx_3_remove/1, 'Commission empowered to adopt delegated act to amend Annex 3 by removing high-risk AI systems', 'celex:32024R1689/oj#art_7').
declared(condition_add_anx_3/2, 'conditions for adding or modifying use-cases in Annex 3', 'celex:32024R1689/oj#art_7').
declared(condition_remove_anx_3/2, 'conditions for removing high-risk AI systems from Annex 3', 'celex:32024R1689/oj#art_7').
declared(intended_purpose_criterion/1, 'criterion: intended purpose of the AI system', 'celex:32024R1689/oj#art_7').
declared(extent_of_use_criterion/1, 'criterion: extent to which AI system has been used or is likely to be used', 'celex:32024R1689/oj#art_7').
declared(data_processed_criterion/1, 'criterion: nature and amount of data processed, including special categories', 'celex:32024R1689/oj#art_7').
declared(autonomy_override_criterion/1, 'criterion: extent of autonomy and possibility for human override', 'celex:32024R1689/oj#art_7').
declared(harm_concerns_criterion/1, 'criterion: extent of harm or significant concerns demonstrated', 'celex:32024R1689/oj#art_7').
declared(potential_extent_harm_criterion/1, 'criterion: potential extent of harm or adverse impact', 'celex:32024R1689/oj#art_7').
declared(dependency_outcome_criterion/1, 'criterion: extent of dependency on outcome produced with AI system', 'celex:32024R1689/oj#art_7').
declared(imbalance_vulnerability_criterion/1, 'criterion: extent of imbalance of power or vulnerable position', 'celex:32024R1689/oj#art_7').
declared(corrigibility_criterion/1, 'criterion: extent to which outcome is easily corrigible or reversible', 'celex:32024R1689/oj#art_7').
declared(benefit_magnitude_criterion/1, 'criterion: magnitude and likelihood of benefit of deployment', 'celex:32024R1689/oj#art_7').
declared(existing_law_redress_criterion/1, 'criterion: existing Union law provides effective measures of redress', 'celex:32024R1689/oj#art_7').
declared(existing_law_prevention_criterion/1, 'criterion: existing Union law provides effective measures to prevent or minimise risks', 'celex:32024R1689/oj#art_7').
declared(no_significant_risk_criterion/1, 'criterion: high-risk AI system no longer poses significant risks', 'celex:32024R1689/oj#art_7').
declared(no_decrease_protection_criterion/1, 'criterion: deletion does not decrease overall level of protection', 'celex:32024R1689/oj#art_7').
declared(must_take_into_account/2, 'Commission shall take into account criteria when assessing condition', 'celex:32024R1689/oj#art_7').
delegated_act_amend_anx_3_add(S) :-
    ai_system(S),
    condition_add_anx_3(S, area_listed_in_anx_3),
    condition_add_anx_3(S, risk_equivalent_or_greater).
condition_add_anx_3(S, area_listed_in_anx_3) :-
    ai_system(S),
    intended_purpose(S),
    use_case_area(A),
    listed_in_anx_3(A).
condition_add_anx_3(S, risk_equivalent_or_greater) :-
    ai_system(S),
    risk_of_harm_health_safety(S),
    risk_adverse_impact_fundamental_rights(S),
    risk(R),
    risk(R_existing),
    high_risk_ai_system(S_existing),
    referred_in_anx_3(S_existing),
    equivalent_or_greater(R, R_existing).
must_take_into_account(commission, condition_add_anx_3(S, risk_equivalent_or_greater)) :-
    ai_system(S).
must_take_into_account(commission, intended_purpose_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, extent_of_use_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, data_processed_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, autonomy_override_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, harm_concerns_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, potential_extent_harm_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, dependency_outcome_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, imbalance_vulnerability_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, corrigibility_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, benefit_magnitude_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, existing_law_redress_criterion(S)) :-
    ai_system(S).
must_take_into_account(commission, existing_law_prevention_criterion(S)) :-
    ai_system(S).
delegated_act_amend_anx_3_remove(S) :-
    high_risk_ai_system(S),
    condition_remove_anx_3(S, no_significant_risk),
    condition_remove_anx_3(S, no_decrease_protection).
condition_remove_anx_3(S, no_significant_risk) :-
    high_risk_ai_system(S),
    \+ significant_risk_fundamental_rights(S),
    \+ significant_risk_health(S),
    \+ significant_risk_safety(S),
    criteria_listed_in_art_7_par_2_applied(S).
condition_remove_anx_3(S, no_decrease_protection) :-
    high_risk_ai_system(S),
    overall_level_protection(P),
    health_safety_fundamental_rights(P),
    union_law(P),
    \+ decrease(P, deletion(S)).
provenance(delegated_act_amend_anx_3_add/1, 'celex:32024R1689/oj#art_7').
provenance(delegated_act_amend_anx_3_remove/1, 'celex:32024R1689/oj#art_7').
provenance(condition_add_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(condition_remove_anx_3/2, 'celex:32024R1689/oj#art_7').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_7').
provenance(intended_purpose_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(extent_of_use_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(data_processed_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(autonomy_override_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(harm_concerns_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(potential_extent_harm_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(dependency_outcome_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(imbalance_vulnerability_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(corrigibility_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(benefit_magnitude_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_law_redress_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(existing_law_prevention_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(no_significant_risk_criterion/1, 'celex:32024R1689/oj#art_7').
provenance(no_decrease_protection_criterion/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(must_comply/2, 'entity must ensure compliance of AI system with requirements', 'celex:32024R1689/oj#art_8').
declared(must_integrate_testing_and_reporting/2, 'provider must integrate testing and reporting into existing documentation', 'celex:32024R1689/oj#art_8').
must_comply(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_purpose(Purpose),
    applies_to(S, Purpose),
    state_of_the_art_applies(S).
must_comply(Provider, Product) :-
    provider(Provider),
    product(Product),
    contains_ai_system(Product, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(Product).
must_integrate_testing_and_reporting(Provider, Product) :-
    provider(Provider),
    product(Product),
    contains_ai_system(Product, S),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(Product),
    existing_documentation_required(Product).
provenance(must_comply/2, 'celex:32024R1689/oj#art_8').
provenance(must_integrate_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(required_risk_management_system/1, 'risk management system must be established for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(must_establish_risk_management_system/2, 'provider must establish risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(must_implement_risk_management_system/2, 'provider must implement risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(must_document_risk_management_system/2, 'provider must document risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(must_maintain_risk_management_system/2, 'provider must maintain risk management system for high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(risk_management_system/2, 'risk management system for a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(continuous_iterative_process/1, 'risk management system is a continuous iterative process', 'celex:32024R1689/oj#art_9').
declared(throughout_lifecycle/1, 'throughout the entire lifecycle of a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(regular_systematic_review/1, 'regular systematic review of risk management system', 'celex:32024R1689/oj#art_9').
declared(risk_identification_and_analysis/2, 'identification and analysis of known and reasonably foreseeable risks', 'celex:32024R1689/oj#art_9').
declared(risk_estimation_and_evaluation/2, 'estimation and evaluation of risks under intended purpose and foreseeable misuse', 'celex:32024R1689/oj#art_9').
declared(risk_evaluation_from_post_market_monitoring/2, 'evaluation of other risks from post-market monitoring data', 'celex:32024R1689/oj#art_9').
declared(risk_management_measures/2, 'adoption of appropriate and targeted risk management measures', 'celex:32024R1689/oj#art_9').
declared(reasonably_mitigated_or_eliminated/1, 'risks that may be reasonably mitigated or eliminated through development or design', 'celex:32024R1689/oj#art_9').
declared(due_consideration_combined_requirements/1, 'due consideration to effects and interaction of combined requirements', 'celex:32024R1689/oj#art_9').
declared(acceptable_residual_risk/1, 'residual risk judged to be acceptable', 'celex:32024R1689/oj#art_9').
declared(elimination_or_reduction_through_design/2, 'elimination or reduction of risks through adequate design and development', 'celex:32024R1689/oj#art_9').
declared(mitigation_and_control_measures/2, 'implementation of adequate mitigation and control measures', 'celex:32024R1689/oj#art_9').
declared(provision_of_information_and_training/2, 'provision of information and training to deployers', 'celex:32024R1689/oj#art_9').
declared(due_consideration_deployer_knowledge/1, 'due consideration to deployer technical knowledge, experience, education, training', 'celex:32024R1689/oj#art_9').
declared(required_testing/2, 'high-risk AI system must be tested for risk management measures', 'celex:32024R1689/oj#art_9').
declared(testing_in_real_world_conditions_permitted/1, 'testing may include testing in real-world conditions', 'celex:32024R1689/oj#art_9').
declared(testing_prior_to_placement_or_service/1, 'testing shall be performed prior to placement on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(testing_against_defined_metrics/1, 'testing against prior defined metrics and probabilistic thresholds', 'celex:32024R1689/oj#art_9').
declared(consideration_adverse_impact_minors/1, 'consideration of adverse impact on persons under 18', 'celex:32024R1689/oj#art_9').
declared(consideration_adverse_impact_vulnerable_groups/1, 'consideration of adverse impact on other vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(may_be_combined_with_other_risk_management/1, 'aspects may be part of or combined with other risk management procedures', 'celex:32024R1689/oj#art_9').
must_establish_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_implement_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_document_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_maintain_risk_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
continuous_iterative_process(S) :-
    high_risk_ai_system(S),
    risk_management_system(R, S),
    throughout_lifecycle(S),
    regular_systematic_review(R).
throughout_lifecycle(S) :-
    high_risk_ai_system(S),
    risk_management_system(_R, S).
regular_systematic_review(R) :-
    risk_management_system(R, S),
    high_risk_ai_system(S).
risk_identification_and_analysis(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    known_or_reasonably_foreseeable_risks(S),
    used_in_accordance_with_intended_purpose(S).
known_or_reasonably_foreseeable_risks(S) :-
    high_risk_ai_system(S),
    risk(_R),
    (known_risk(S, _); reasonably_foreseeable_misuse(_)).
used_in_accordance_with_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).
risk_estimation_and_evaluation(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose(S),
    conditions_of_reasonably_foreseeable_misuse(S).
conditions_of_reasonably_foreseeable_misuse(S) :-
    high_risk_ai_system(S),
    reasonably_foreseeable_misuse(_M).
risk_evaluation_from_post_market_monitoring(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    post_market_monitoring_system(M),
    data_gathered_from(M, S).
data_gathered_from(M, S) :-
    post_market_monitoring_system(M),
    high_risk_ai_system(S).
risk_management_measures(R, S) :-
    risk_management_system(R, S),
    high_risk_ai_system(S),
    appropriate_risk_management_measures(R),
    targeted_risk_management_measures(R),
    address_identified_risks(R, S).
appropriate_risk_management_measures(R) :-
    risk_management_system(R, _S).
targeted_risk_management_measures(R) :-
    risk_management_system(R, _S).
address_identified_risks(R, S) :-
    risk_management_system(R, S),
    risk_identification_and_analysis(R, S).
reasonably_mitigated_or_eliminated(S) :-
    high_risk_ai_system(S),
    risk(R),
    (mitigated_through_development(S, R); mitigated_through_design(S, R); eliminated_through_development(S, R); eliminated_through_design(S, R); adequate_technical_information_provided(S, R)).
mitigated_through_development(S, R) :-
    high_risk_ai_system(S),
    risk(R).
mitigated_through_design(S, R) :-
    high_risk_ai_system(S),
    risk(R).
eliminated_through_development(S, R) :-
    high_risk_ai_system(S),
    risk(R).
eliminated_through_design(S, R) :-
    high_risk_ai_system(S),
    risk(R).
adequate_technical_information_provided(S, R) :-
    high_risk_ai_system(S),
    risk(R).
due_consideration_combined_requirements(R) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    minimise_risks_effectively(R),
    appropriate_balance_in_implementing_measures(R).
requirements_in_chapter_3_section_2(S) :-
    high_risk_ai_system(S).
minimise_risks_effectively(R) :-
    risk_management_measures(R, _S).
appropriate_balance_in_implementing_measures(R) :-
    risk_management_measures(R, _S).
acceptable_residual_risk(S) :-
    high_risk_ai_system(S),
    risk_management_measures(R, S),
    residual_risk_acceptable_for_each_hazard(R, S),
    overall_residual_risk_acceptable(R, S).
residual_risk_acceptable_for_each_hazard(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    hazard(_H, S).
overall_residual_risk_acceptable(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S).
elimination_or_reduction_through_design(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    risks_identified_and_evaluated(R, S),
    technically_feasible(S),
    adequate_design_and_development(S).
risks_identified_and_evaluated(R, S) :-
    risk_identification_and_analysis(R, S),
    risk_estimation_and_evaluation(R, S).
technically_feasible(S) :-
    high_risk_ai_system(S).
adequate_design_and_development(S) :-
    high_risk_ai_system(S).
mitigation_and_control_measures(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    risks_cannot_be_eliminated(S),
    adequate_mitigation_measures(R),
    adequate_control_measures(R).
risks_cannot_be_eliminated(S) :-
    high_risk_ai_system(S),
    \+ elimination_or_reduction_through_design(_R, S).
adequate_mitigation_measures(R) :-
    risk_management_measures(R, _S).
adequate_control_measures(R) :-
    risk_management_measures(R, _S).
provision_of_information_and_training(R, S) :-
    risk_management_measures(R, S),
    high_risk_ai_system(S),
    information_required_pursuant_to_article_13(S),
    where_appropriate(training_to_deployers(S)).
information_required_pursuant_to_article_13(S) :-
    high_risk_ai_system(S).
training_to_deployers(S) :-
    high_risk_ai_system(S).
where_appropriate(X) :- X.
due_consideration_deployer_knowledge(S) :-
    high_risk_ai_system(S),
    technical_knowledge_of_deployer(S),
    experience_of_deployer(S),
    education_of_deployer(S),
    training_expected_of_deployer(S),
    presumable_context_of_use(S).
technical_knowledge_of_deployer(S) :-
    high_risk_ai_system(S).
experience_of_deployer(S) :-
    high_risk_ai_system(S).
education_of_deployer(S) :-
    high_risk_ai_system(S).
training_expected_of_deployer(S) :-
    high_risk_ai_system(S).
presumable_context_of_use(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).
required_testing(T, S) :-
    testing(T, S),
    high_risk_ai_system(S),
    purpose_identifying_risk_management_measures(T),
    consistent_performance_for_intended_purpose(S),
    compliance_with_chapter_3_section_2(S).
testing(T, S) :-
    high_risk_ai_system(S),
    test(T).
purpose_identifying_risk_management_measures(T) :-
    testing(T, _S).
consistent_performance_for_intended_purpose(S) :-
    high_risk_ai_system(S),
    performance_of_ai_system(S).
compliance_with_chapter_3_section_2(S) :-
    high_risk_ai_system(S).
testing_in_real_world_conditions_permitted(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(T),
    testing(T, S),
    in_accordance_with_article_60(T).
in_accordance_with_article_60(T) :-
    testing_in_real_world_conditions(T).
testing_prior_to_placement_or_service(S) :-
    high_risk_ai_system(S),
    testing(T, S),
    performed_at_any_time_throughout_development(T),
    prior_to_being_placed_on_market(S, T),
    prior_to_putting_into_service(S, T),
    tested_against_prior_defined_metrics(T, S),
    tested_against_probabilistic_thresholds(T, S).
performed_at_any_time_throughout_development(T) :-
    testing(T, _S).
prior_to_being_placed_on_market(S, T) :-
    testing(T, S),
    high_risk_ai_system(S),
    \+ placing_on_market(S).
prior_to_putting_into_service(S, T) :-
    testing(T, S),
    high_risk_ai_system(S),
    \+ putting_into_service(S).
tested_against_prior_defined_metrics(T, S) :-
    testing(T, S),
    high_risk_ai_system(S),
    metrics_appropriate_to_intended_purpose(S).
tested_against_probabilistic_thresholds(T, S) :-
    testing(T, S),
    high_risk_ai_system(S),
    thresholds_appropriate_to_intended_purpose(S).
metrics_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).
thresholds_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).
consideration_adverse_impact_minors(S) :-
    high_risk_ai_system(S),
    provider(P),
    implementing_risk_management_system(P, S),
    likely_adverse_impact_on_persons_under_18(S).
implementing_risk_management_system(P, S) :-
    must_establish_risk_management_system(P, S).
likely_adverse_impact_on_persons_under_18(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).
consideration_adverse_impact_vulnerable_groups(S) :-
    high_risk_ai_system(S),
    provider(P),
    implementing_risk_management_system(P, S),
    likely_adverse_impact_on_vulnerable_groups(S),
    as_appropriate(consideration_adverse_impact_vulnerable_groups(S)).
likely_adverse_impact_on_vulnerable_groups(S) :-
    high_risk_ai_system(S),
    intended_purpose(_P).
as_appropriate(X) :- X.
may_be_combined_with_other_risk_management(S) :-
    high_risk_ai_system(S),
    provider(P),
    subject_to_internal_risk_management_requirements_under_other_union_law(P),
    aspects_of_article_9_may_be_part_of_other_procedures(S, P).
subject_to_internal_risk_management_requirements_under_other_union_law(P) :-
    provider(P).
aspects_of_article_9_may_be_part_of_other_procedures(S, P) :-
    high_risk_ai_system(S),
    provider(P),
    risk_management_procedures_established_under_other_law(P, _L).
risk_management_procedures_established_under_other_law(P, L) :-
    provider(P),
    other_union_law(L).
other_union_law(_L).
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_implement_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_document_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(must_maintain_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(continuous_iterative_process/1, 'celex:32024R1689/oj#art_9').
provenance(throughout_lifecycle/1, 'celex:32024R1689/oj#art_9').
provenance(regular_systematic_review/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_and_analysis/2, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_and_evaluation/2, 'celex:32024R1689/oj#art_9').
provenance(risk_evaluation_from_post_market_monitoring/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures/2, 'celex:32024R1689/oj#art_9').
provenance(reasonably_mitigated_or_eliminated/1, 'celex:32024R1689/oj#art_9').
provenance(due_consideration_combined_requirements/1, 'celex:32024R1689/oj#art_9').
provenance(acceptable_residual_risk/1, 'celex:32024R1689/oj#art_9').
provenance(elimination_or_reduction_through_design/2, 'celex:32024R1689/oj#art_9').
provenance(mitigation_and_control_measures/2, 'celex:32024R1689/oj#art_9').
provenance(provision_of_information_and_training/2, 'celex:32024R1689/oj#art_9').
provenance(due_consideration_deployer_knowledge/1, 'celex:32024R1689/oj#art_9').
provenance(required_testing/2, 'celex:32024R1689/oj#art_9').
provenance(testing_in_real_world_conditions_permitted/1, 'celex:32024R1689/oj#art_9').
provenance(testing_prior_to_placement_or_service/1, 'celex:32024R1689/oj#art_9').
provenance(testing_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(consideration_adverse_impact_minors/1, 'celex:32024R1689/oj#art_9').
provenance(consideration_adverse_impact_vulnerable_groups/1, 'celex:32024R1689/oj#art_9').
provenance(may_be_combined_with_other_risk_management/1, 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
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
declared(required_data_governance/1, 'data governance and management practices for high-risk AI systems', 'celex:32024R1689/oj#art_10/par_2').
declared(required_data_quality_criteria/1, 'quality criteria for training, validation and testing data sets', 'celex:32024R1689/oj#art_10/par_1').
declared(required_data_relevance_representativeness/1, 'relevance, representativeness, accuracy and completeness of data sets', 'celex:32024R1689/oj#art_10/par_3').
declared(required_data_contextual_appropriateness/1, 'data sets reflecting specific contextual characteristics', 'celex:32024R1689/oj#art_10/par_4').
declared(permitted_special_category_processing/2, 'exceptional processing of special categories of personal data for bias detection', 'celex:32024R1689/oj#art_10/par_5').
declared(required_testing_data_only/1, 'testing data sets requirements for non-training-based systems', 'celex:32024R1689/oj#art_10/par_6').
required_data_quality_criteria(S) :-
    high_risk_ai_system(S),
    uses_training_techniques(S),
    training_data_set(D1),
    validation_data_set(D2),
    testing_data_set(D3),
    meets_quality_criteria(D1),
    meets_quality_criteria(D2),
    meets_quality_criteria(D3).
required_data_governance(S) :-
    high_risk_ai_system(S),
    training_validation_testing_data_sets_used(S, Ds),
    data_governance_practices_appropriate(Ds, intended_purpose(S)).
required_data_relevance_representativeness(S) :-
    high_risk_ai_system(S),
    training_validation_testing_data_sets_used(S, Ds),
    relevant(Ds),
    sufficiently_representative(Ds),
    to_best_extent_possible(free_of_errors(Ds)),
    to_best_extent_possible(complete(Ds)),
    appropriate_statistical_properties(Ds),
    appropriate_statistical_properties_for_persons_or_groups(Ds, intended_use_persons(S)).
required_data_contextual_appropriateness(S) :-
    high_risk_ai_system(S),
    training_validation_testing_data_sets_used(S, Ds),
    required_by_intended_purpose(extent, S),
    takes_into_account(Ds, geographical_characteristics(S)),
    takes_into_account(Ds, contextual_characteristics(S)),
    takes_into_account(Ds, behavioural_characteristics(S)),
    takes_into_account(Ds, functional_characteristics(S)).
permitted_special_category_processing(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    strictly_necessary_for(bias_detection_and_correction, S),
    condition_met(a, P, S),
    condition_met(b, P, S),
    condition_met(c, P, S),
    condition_met(d, P, S),
    condition_met(e, P, S),
    condition_met(f, P, S).
condition_met(a, _P, S) :-
    \+ effectively_fulfilled_by_other_data(bias_detection_and_correction, S).
condition_met(b, P, S) :-
    special_categories_processed(P, S),
    technical_limitations_on_reuse(S),
    state_of_the_art_security_measures(S),
    privacy_preserving_measures(S),
    pseudonymisation(S).
condition_met(c, P, S) :-
    special_categories_processed(P, S),
    secured(S),
    protected(S),
    suitable_safeguards(S),
    strict_controls(S),
    documentation_of_access(S),
    only_authorised_persons_access(S),
    confidentiality_obligations(S).
condition_met(d, _P, S) :-
    \+ transmitted(S),
    \+ transferred(S),
    \+ accessed_by_other_parties(S).
condition_met(e, _P, S) :-
    deleted_once(bias_corrected, S);
    deleted_once(retention_period_ended, S).
condition_met(f, P, S) :-
    records_of_processing_activities_include(P, reasons_strictly_necessary(S)),
    records_of_processing_activities_include(P, reasons_other_data_insufficient(S)).
required_testing_data_only(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    meets_quality_criteria(D),
    required_data_governance_for_testing(S),
    required_data_relevance_representativeness_for_testing(S),
    required_data_contextual_appropriateness_for_testing(S).
required_data_governance_for_testing(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    data_governance_practices_appropriate(D, intended_purpose(S)).
required_data_relevance_representativeness_for_testing(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    relevant(D),
    sufficiently_representative(D),
    to_best_extent_possible(free_of_errors(D)),
    to_best_extent_possible(complete(D)),
    appropriate_statistical_properties(D).
required_data_contextual_appropriateness_for_testing(S) :-
    high_risk_ai_system(S),
    \+ uses_training_techniques(S),
    testing_data_set(D),
    required_by_intended_purpose(extent, S),
    takes_into_account(D, geographical_characteristics(S)),
    takes_into_account(D, contextual_characteristics(S)),
    takes_into_account(D, behavioural_characteristics(S)),
    takes_into_account(D, functional_characteristics(S)).
declared(uses_training_techniques/1, 'AI system uses techniques involving training of AI models with data', 'celex:32024R1689/oj#art_10/par_1').
declared(training_validation_testing_data_sets_used/2, 'data sets used for training, validation and testing', 'celex:32024R1689/oj#art_10').
declared(meets_quality_criteria/1, 'data set meets quality criteria referred to in paragraphs 2-5', 'celex:32024R1689/oj#art_10').
declared(data_governance_practices_appropriate/2, 'data governance practices are appropriate for intended purpose', 'celex:32024R1689/oj#art_10/par_2').
declared(relevant/1, 'data sets are relevant to intended purpose', 'celex:32024R1689/oj#art_10/par_3').
declared(sufficiently_representative/1, 'data sets are sufficiently representative', 'celex:32024R1689/oj#art_10/par_3').
declared(free_of_errors/1, 'data sets are free of errors to best extent possible', 'celex:32024R1689/oj#art_10/par_3').
declared(complete/1, 'data sets are complete to best extent possible', 'celex:32024R1689/art_10/par_3').
declared(appropriate_statistical_properties/1, 'data sets have appropriate statistical properties', 'celex:32024R1689/oj#art_10/par_3').
declared(appropriate_statistical_properties_for_persons_or_groups/2, 'statistical properties appropriate for intended persons or groups', 'celex:32024R1689/oj#art_10/par_3').
declared(to_best_extent_possible/1, 'requirement applies to best extent possible', 'celex:32024R1689/oj#art_10/par_3').
declared(takes_into_account/2, 'data sets take into account specific characteristics', 'celex:32024R1689/oj#art_10/par_4').
declared(required_by_intended_purpose/2, 'requirement extent determined by intended purpose', 'celex:32024R1689/oj#art_10/par_4').
declared(geographical_characteristics/1, 'geographical characteristics of intended use setting', 'celex:32024R1689/oj#art_10/par_4').
declared(contextual_characteristics/1, 'contextual characteristics of intended use setting', 'celex:32024R1689/oj#art_10/par_4').
declared(behavioural_characteristics/1, 'behavioural characteristics of intended use setting', 'celex:32024R1689/oj#art_10/par_4').
declared(functional_characteristics/1, 'functional characteristics of intended use setting', 'celex:32024R1689/oj#art_10/par_4').
declared(strictly_necessary_for/2, 'processing strictly necessary for specified purpose', 'celex:32024R1689/oj#art_10/par_5').
declared(effectively_fulfilled_by_other_data/2, 'purpose can be fulfilled by other data including synthetic or anonymised', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_a').
declared(special_categories_processed/2, 'provider processes special categories of personal data for system', 'celex:32024R1689/oj#art_10/par_5').
declared(technical_limitations_on_reuse/1, 'technical limitations on re-use of personal data', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(state_of_the_art_security_measures/1, 'state-of-the-art security measures applied', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(privacy_preserving_measures/1, 'privacy-preserving measures applied', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(pseudonymisation/1, 'pseudonymisation applied to data', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_b').
declared(secured/1, 'personal data are secured', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(protected/1, 'personal data are protected', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(suitable_safeguards/1, 'suitable safeguards in place', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(strict_controls/1, 'strict controls on access', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(documentation_of_access/1, 'access is documented', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(only_authorised_persons_access/1, 'only authorised persons have access', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(confidentiality_obligations/1, 'appropriate confidentiality obligations in place', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_c').
declared(transmitted/1, 'data are transmitted', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
declared(transferred/1, 'data are transferred', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
declared(accessed_by_other_parties/1, 'data are accessed by other parties', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_d').
declared(deleted_once/2, 'data are deleted once condition met', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_e').
declared(records_of_processing_activities_include/2, 'records include specified information', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
declared(reasons_strictly_necessary/1, 'reasons why processing was strictly necessary', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
declared(reasons_other_data_insufficient/1, 'reasons why objective could not be achieved with other data', 'celex:32024R1689/oj#art_10/par_5/unp_1/pnt_f').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_6').
provenance(required_data_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_relevance_representativeness/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_contextual_appropriateness/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_special_category_processing/2, 'celex:32024R1689/oj#art_10').
provenance(required_testing_data_only/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_governance_for_testing/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_relevance_representativeness_for_testing/1, 'celex:32024R1689/oj#art_10').
provenance(required_data_contextual_appropriateness_for_testing/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_techniques/1, 'celex:32024R1689/oj#art_10').
provenance(training_validation_testing_data_sets_used/2, 'celex:32024R1689/oj#art_10').
provenance(meets_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices_appropriate/2, 'celex:32024R1689/oj#art_10').
provenance(relevant/1, 'celex:32024R1689/oj#art_10').
provenance(sufficiently_representative/1, 'celex:32024R1689/oj#art_10').
provenance(free_of_errors/1, 'celex:32024R1689/oj#art_10').
provenance(complete/1, 'celex:32024R1689/oj#art_10').
provenance(appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(appropriate_statistical_properties_for_persons_or_groups/2, 'celex:32024R1689/oj#art_10').
provenance(to_best_extent_possible/1, 'celex:32024R1689/oj#art_10').
provenance(takes_into_account/2, 'celex:32024R1689/oj#art_10').
provenance(required_by_intended_purpose/2, 'celex:32024R1689/oj#art_10').
provenance(geographical_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(contextual_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(behavioural_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(functional_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(strictly_necessary_for/2, 'celex:32024R1689/oj#art_10').
provenance(effectively_fulfilled_by_other_data/2, 'celex:32024R1689/oj#art_10').
provenance(special_categories_processed/2, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(state_of_the_art_security_measures/1, 'celex:32024R1689/oj#art_10').
provenance(privacy_preserving_measures/1, 'celex:32024R1689/oj#art_10').
provenance(pseudonymisation/1, 'celex:32024R1689/oj#art_10').
provenance(secured/1, 'celex:32024R1689/oj#art_10').
provenance(protected/1, 'celex:32024R1689/oj#art_10').
provenance(suitable_safeguards/1, 'celex:32024R1689/oj#art_10').
provenance(strict_controls/1, 'celex:32024R1689/oj#art_10').
provenance(documentation_of_access/1, 'celex:32024R1689/oj#art_10').
provenance(only_authorised_persons_access/1, 'celex:32024R1689/oj#art_10').
provenance(confidentiality_obligations/1, 'celex:32024R1689/oj#art_10').
provenance(transmitted/1, 'celex:32024R1689/oj#art_10').
provenance(transferred/1, 'celex:32024R1689/oj#art_10').
provenance(accessed_by_other_parties/1, 'celex:32024R1689/oj#art_10').
provenance(deleted_once/2, 'celex:32024R1689/oj#art_10').
provenance(records_of_processing_activities_include/2, 'celex:32024R1689/oj#art_10').
provenance(reasons_strictly_necessary/1, 'celex:32024R1689/oj#art_10').
provenance(reasons_other_data_insufficient/1, 'celex:32024R1689/oj#art_10').
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
declared(must_draw_up_technical_documentation/2, 'provider must draw up technical documentation for a high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(must_keep_technical_documentation_up_to_date/2, 'provider must keep technical documentation up to date', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_demonstrates_compliance/1, 'technical documentation demonstrates compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_11').
declared(technical_documentation_provides_assessment_information/1, 'technical documentation provides information for authorities and notified bodies to assess compliance', 'celex:32024R1689/oj#art_11').
declared(minimum_technical_documentation_elements/1, 'technical documentation contains minimum elements set out in Annex IV', 'celex:32024R1689/oj#art_11').
declared(may_provide_simplified_technical_documentation/2, 'SME including start-up may provide simplified technical documentation', 'celex:32024R1689/art_11').
declared(simplified_technical_documentation_form/1, 'simplified technical documentation form established by Commission for SMEs', 'celex:32024R1689/oj#art_11').
declared(must_use_simplified_form/2, 'SME must use simplified form when opting for simplified manner', 'celex:32024R1689/oj#art_11').
declared(notified_body_accepts_simplified_form/1, 'notified body accepts simplified form for conformity assessment', 'celex:32024R1689/oj#art_11').
declared(single_technical_documentation_for_harmonised_product/1, 'single technical documentation for high-risk AI system related to harmonised product', 'celex:32024R1689/oj#art_11').
declared(commission_delegate_power_amend_annex_4/1, 'Commission empowered to adopt delegated acts to amend Annex IV', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)),
    before_placing_on_market_or_putting_into_service(S).
must_keep_technical_documentation_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    technical_documentation_exists(S).
technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    requirements_chapter_iii_section_2(S).
technical_documentation_provides_assessment_information(S) :-
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    clear_and_comprehensive_form(S),
    assessable_by(national_competent_authority(_), S),
    assessable_by(notified_body(_), S).
minimum_technical_documentation_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    contains_elements_from_annex_4(S).
may_provide_simplified_technical_documentation(P, S) :-
    sme(P),
    high_risk_ai_system(S),
    technical_documentation_exists(S),
    contains_elements_from_annex_4(S).
simplified_technical_documentation_form(Form) :-
    established_by_commission(Form),
    targeted_at_sme_needs(Form),
    targeted_at_microenterprise_needs(Form).
must_use_simplified_form(P, S) :-
    sme(P),
    high_risk_ai_system(S),
    opts_for_simplified_manner(P, S),
    simplified_technical_documentation_form(Form),
    uses_form(P, S, Form).
notified_body_accepts_simplified_form(B) :-
    notified_body(B),
    simplified_technical_documentation_form(Form),
    accepts_for_conformity_assessment(B, Form).
single_technical_documentation_for_harmonised_product(S) :-
    high_risk_ai_system(S),
    related_to_harmonised_product(S),
    union_harmonisation_legislation_listed_annex_1_section_1(S),
    (placing_on_market(S); putting_into_service(S)),
    single_technical_documentation_exists(S),
    contains_information_from_article_11_paragraph_1(S),
    contains_information_required_under_legal_acts(S).
commission_delegate_power_amend_annex_4(commission) :-
    empowered_to_adopt_delegated_acts(commission),
    in_accordance_with(article_97).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_assessment_information/1, 'celex:32024R1689/oj#art_11').
provenance(minimum_technical_documentation_elements/1, 'celex:32024R1689/oj#art_11').
provenance(may_provide_simplified_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(single_technical_documentation_for_harmonised_product/1, 'celex:32024R1689/oj#art_11').
provenance(commission_delegate_power_amend_annex_4/1, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_12').
declared(automatic_logging_required/1, 'high-risk AI system must technically allow automatic recording of logs', 'celex:32024R1689/oj#art_12/par_1').
declared(logging_capabilities/1, 'logging capabilities of a high-risk AI system', 'celex:32024R1689/oj#art_12/par_2').
declared(logging_event_relevant_for/2, 'logging event is relevant for a purpose', 'celex:32024R1689/oj#art_12/par_2').
declared(biometric_identification_high_risk_system/1, 'high-risk AI system referred to in Annex 3 point 1(a)', 'celex:32024R1689/oj#art_12/par_3').
declared(minimum_logging_requirement/2, 'minimum logging requirement for biometric identification systems', 'celex:32024R1689/oj#art_12/par_3').
automatic_logging_required(S) :-
    high_risk_ai_system(S).
logging_capabilities(S) :-
    high_risk_ai_system(S).
logging_event_relevant_for(E, identify_risk_or_modification) :-
    logging_capabilities(S),
    event_of(E, S),
    (risk_presented_by_system(E, S, art_79_par_1) ; substantial_modification_trigger(E, S)).
logging_event_relevant_for(E, facilitate_post_market_monitoring) :-
    logging_capabilities(S),
    event_of(E, S),
    post_market_monitoring_relevant(E, S).
logging_event_relevant_for(E, monitor_operation_deployer) :-
    logging_capabilities(S),
    event_of(E, S),
    deployer_monitoring_relevant(E, S, art_26_par_5).
biometric_identification_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_in_annex_3_point_1_a(S).
minimum_logging_requirement(S, recording_period_of_use) :-
    biometric_identification_high_risk_system(S).
minimum_logging_requirement(S, reference_database_checked) :-
    biometric_identification_high_risk_system(S).
minimum_logging_requirement(S, input_data_match) :-
    biometric_identification_high_risk_system(S).
minimum_logging_requirement(S, identification_of_verification_persons) :-
    biometric_identification_high_risk_system(S).
provenance(automatic_logging_required/1, 'celex:32024R1689/oj#art_12/par_1').
provenance(logging_capabilities/1, 'celex:32024R1689/oj#art_12/par_2').
provenance(logging_event_relevant_for/2, 'celex:32024R1689/oj#art_12/par_2').
provenance(biometric_identification_high_risk_system/1, 'celex:32024R1689/oj#art_12/par_3').
provenance(minimum_logging_requirement/2, 'celex:32024R1689/oj#art_12/par_3').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(must_ensure_transparency/2, 'provider must ensure AI system is sufficiently transparent', 'celex:32024R1689/oj#art_13/par_1').
declared(must_provide_instructions_for_use/2, 'provider must provide instructions for use with high-risk AI system', 'celex:32024R1689/oj#art_13/par_2').
declared(instructions_for_use_content/2, 'required content of instructions for use', 'celex:32024R1689/oj#art_13/par_3').
must_ensure_transparency(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    designed_and_developed_by(P, S),
    sufficient_transparency_for_interpretation(S),
    sufficient_transparency_for_appropriate_use(S).
sufficient_transparency_for_interpretation(S) :-
    high_risk_ai_system(S),
    deployer_can_interpret_output(S).
sufficient_transparency_for_appropriate_use(S) :-
    high_risk_ai_system(S),
    deployer_can_use_appropriately(S).
appropriate_transparency(S) :-
    high_risk_ai_system(S),
    type_and_degree_appropriate_for_compliance(S, obligations(provider_and_deployer)).
must_provide_instructions_for_use(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    instructions_for_use(I),
    accompanies(I, S),
    appropriate_format(I),
    concise(I),
    complete(I),
    correct(I),
    clear(I),
    relevant(I),
    accessible(I),
    comprehensible(I).
instructions_for_use_content(I, identity_and_contact(P, R)) :-
    instructions_for_use(I),
    provider(P),
    accompanies(I, S),
    high_risk_ai_system(S),
    developed_by(P, S),
    authorised_representative(R),
    mandated_by(R, P).
instructions_for_use_content(I, characteristics_capabilities_limitations(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S).
instructions_for_use_content(I, intended_purpose(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S).
instructions_for_use_content(I, accuracy_robustness_cybersecurity(S, Level, Metrics)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    tested_and_validated_against(S, Level),
    accuracy_metrics(Metrics),
    robustness_metrics(Metrics),
    cybersecurity_metrics(Metrics),
    known_foreseeable_circumstances_affecting(S, Level).
instructions_for_use_content(I, risks_to_health_safety_fundamental_rights(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    (   intended_use_circumstances_leading_to_risks(S)
    ;   reasonably_foreseeable_misuse_circumstances_leading_to_risks(S)
    ),
    risks_to_health_and_safety(S),
    risks_to_fundamental_rights(S).
instructions_for_use_content(I, explainability_capabilities(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    technical_capabilities_for_explanation(S).
instructions_for_use_content(I, performance_on_specific_persons_or_groups(S, Groups)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    when_appropriate,
    intended_persons_or_groups(S, Groups).
instructions_for_use_content(I, input_data_specifications(S, DataInfo)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    when_appropriate,
    input_data_specifications(DataInfo),
    training_data_info(DataInfo),
    validation_data_info(DataInfo),
    testing_data_info(DataInfo),
    relevant_for_intended_purpose(DataInfo, S).
instructions_for_use_content(I, output_interpretation_information(S)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    applicable,
    enables_deployer_to_interpret_output(S),
    enables_deployer_to_use_appropriately(S).
instructions_for_use_content(I, predetermined_changes(S, Changes)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    pre_determined_changes(S, Changes),
    determined_at_conformity_assessment(Changes),
    initial_conformity_assessment(S).
instructions_for_use_content(I, human_oversight_measures(S, Measures)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    human_oversight_measures(S, Measures),
    technical_measures_for_output_interpretation(Measures).
instructions_for_use_content(I, computational_and_hardware_resources(S, Resources)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    computational_resources_needed(S, Resources),
    hardware_resources_needed(S, Resources).
instructions_for_use_content(I, expected_lifetime(S, Lifetime)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    expected_lifetime(S, Lifetime).
instructions_for_use_content(I, maintenance_and_care(S, Measures, Frequency)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    maintenance_measures(S, Measures),
    care_measures(S, Measures),
    frequency(Measures, Frequency),
    necessary_for_proper_functioning(S, Measures),
    includes_software_updates(Measures).
instructions_for_use_content(I, log_mechanisms(S, Mechanisms)) :-
    instructions_for_use(I),
    accompanies(I, S),
    high_risk_ai_system(S),
    when_relevant,
    log_collection_mechanisms(S, Mechanisms),
    log_storage_mechanisms(S, Mechanisms),
    log_interpretation_mechanisms(S, Mechanisms),
    enables_compliance_with_article_12(S, Mechanisms).
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(sufficient_transparency_for_interpretation/1, 'celex:32024R1689/oj#art_13').
provenance(sufficient_transparency_for_appropriate_use/1, 'celex:32024R1689/oj#art_13').
provenance(appropriate_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_for_use_content/2, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(designed_for_human_oversight/1, 'high-risk AI system designed and developed to be effectively overseen by natural persons', 'celex:32024R1689/oj#art_14').
declared(human_oversight_objective/1, 'human oversight aims to prevent or minimise risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_14').
declared(oversight_measure_commensurate/1, 'oversight measures commensurate with risks, autonomy and context of use', 'celex:32024R1689/oj#art_14').
declared(built_in_oversight_measure/1, 'measure identified and built into high-risk AI system by provider before placing on market or putting into service', 'celex:32024R1689/oj#art_14').
declared(deployer_oversight_measure/1, 'measure identified by provider for deployer to implement', 'celex:32024R1689/oj#art_14').
declared(enable_understand_capacity_and_limitations/1, 'natural persons enabled to understand capacities and limitations and monitor operation', 'celex:32024R1689/oj#art_14').
declared(enable_awareness_automation_bias/1, 'natural persons enabled to remain aware of automation bias tendency', 'celex:32024R1689/oj#art_14').
declared(enable_interpret_output/1, 'natural persons enabled to correctly interpret system output', 'celex:32024R1689/oj#art_14').
declared(enable_decide_not_to_use/1, 'natural persons enabled to decide not to use or to disregard, override or reverse output', 'celex:32024R1689/oj#art_14').
declared(enable_intervene_or_interrupt/1, 'natural persons enabled to intervene or interrupt system through stop button or similar procedure', 'celex:32024R1689/oj#art_14').
declared(separate_verification_required/1, 'separate verification by at least two natural persons required for biometric identification systems', 'celex:32024R1689/oj#art_14').
declared(separate_verification_exempt/1, 'separate verification requirement does not apply for law enforcement, migration, border control or asylum', 'celex:32024R1689/oj#art_14').
designed_for_human_oversight(S) :-
    high_risk_ai_system(S),
    human_machine_interface_tools(S),
    effectively_overseen_by_natural_persons(S).
human_oversight_objective(S) :-
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose_or_foreseeable_misuse(S),
    risk_to_health_safety_or_fundamental_rights_emerges(S),
    other_requirements_of_chapter_3_section_2_applied(S).
oversight_measure_commensurate(S) :-
    high_risk_ai_system(S),
    risks_level_of_autonomy_and_context_of_use(S, Risks, Autonomy, Context),
    measure_type(built_in_oversight_measure(S); deployer_oversight_measure(S)).
built_in_oversight_measure(S) :-
    high_risk_ai_system(S),
    technically_feasible(S),
    measure_identified_and_built_by_provider(S),
    before_placing_on_market_or_putting_into_service(S).
deployer_oversight_measure(S) :-
    high_risk_ai_system(S),
    measure_identified_by_provider(S),
    before_placing_on_market_or_putting_into_service(S),
    appropriate_for_deployer_implementation(S).
enable_understand_capacity_and_limitations(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, understand_capacities_and_limitations),
    persons_enabled(Persons, monitor_operation),
    persons_enabled(Persons, detect_and_address_anomalies_dysfunctions_unexpected_performance).
enable_awareness_automation_bias(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, remain_aware_of_automation_bias),
    used_to_provide_information_or_recommendations_for_decisions(S).
enable_interpret_output(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, correctly_interpret_output),
    interpretation_tools_and_methods_available(S).
enable_decide_not_to_use(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, decide_not_to_use_or_disregard_override_reverse_output).
enable_intervene_or_interrupt(S) :-
    high_risk_ai_system(S),
    provided_to_deployer(S),
    natural_persons_assigned_human_oversight(Persons),
    persons_enabled(Persons, intervene_in_operation),
    persons_enabled(Persons, interrupt_system),
    stop_button_or_similar_procedure(S),
    allows_system_to_come_to_halt_in_safe_state(S).
separate_verification_required(S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_1_point_a(S),
    \+ separate_verification_exempt(S).
separate_verification_exempt(S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_1_point_a(S),
    used_for_purposes_of_law_enforcement_migration_border_control_or_asylum(S),
    union_or_national_law_considers_requirement_disproportionate(S).
must_ensure_no_action_without_separate_verification(Deployer, S) :-
    deployer(Deployer),
    separate_verification_required(S),
    identification_resulting_from_system(Identification),
    \+ separately_verified_and_confirmed(Identification),
    \+ at_least_two_natural_persons_with_necessary_competence_training_and_confirmed(Identification).
must_ensure_verification_by_two_persons(Deployer, S) :-
    deployer(Deployer),
    separate_verification_required(S),
    identification_resulting_from_system(Identification),
    separately_verified_and_confirmed(Identification),
    at_least_two_natural_persons_with_necessary_competence_training_and_confirmed(Identification).
provenance(designed_for_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_objective/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measure_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(enable_understand_capacity_and_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(enable_awareness_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(enable_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(enable_decide_not_to_use/1, 'celex:32024R1689/oj#art_14').
provenance(enable_intervene_or_interrupt/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_required/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_exempt/1, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_no_action_without_separate_verification/2, 'celex:32024R1689/oj#art_14').
provenance(must_ensure_verification_by_two_persons/2, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(appropriate_level/2, 'appropriate level of a property for a system', 'celex:32024R1689/oj#art_15').
declared(accuracy/1, 'property of correct performance', 'celex:32024R1689/oj#art_15').
declared(robustness/1, 'property of resilience to errors and attacks', 'celex:32024R1689/oj#art_15').
declared(cybersecurity/1, 'property of resilience against unauthorised alteration', 'celex:32024R1689/oj#art_15').
declared(consistent_performance/2, 'consistent performance of a system in a property throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(lifecycle/1, 'entire lifecycle of a system', 'celex:32024R1689/oj#art_15').
declared(declared_in_instructions/2, 'property declared in instructions for use', 'celex:32024R1689/oj#art_15').
declared(resilient_against_errors/1, 'resilient against errors faults or inconsistencies', 'celex:32024R1689/oj#art_15').
declared(error_fault_inconsistency/1, 'error fault or inconsistency in system or environment', 'celex:32024R1689/oj#art_15').
declared(interaction_with_natural_persons/1, 'interaction with natural persons causing errors', 'celex:32024R1689/oj#art_15').
declared(interaction_with_other_systems/1, 'interaction with other systems causing errors', 'celex:32024R1689/oj#art_15').
declared(technical_organisational_measures_taken/1, 'technical and organisational measures taken for resilience', 'celex:32024R1689/oj#art_15').
declared(technical_redundancy_solution/1, 'technical redundancy solution for robustness', 'celex:32024R1689/oj#art_15').
declared(backup_plan/1, 'backup plan as redundancy solution', 'celex:32024R1689/oj#art_15').
declared(fail_safe_plan/1, 'fail-safe plan as redundancy solution', 'celex:32024R1689/oj#art_15').
declared(continues_to_learn/1, 'system continues to learn after placement or putting into service', 'celex:32024R1689/oj#art_15').
declared(eliminate_or_reduce_biased_outputs/1, 'eliminate or reduce risk of biased outputs influencing future input', 'celex:32024R1689/oj#art_15').
declared(feedback_loop/1, 'feedback loop where biased outputs influence future input', 'celex:32024R1689/oj#art_15').
declared(mitigation_measures_for_feedback_loops/1, 'mitigation measures duly address feedback loops', 'celex:32024R1689/oj#art_15').
declared(resilient_against_unauthorised_alteration/1, 'resilient against unauthorised third party alteration', 'celex:32024R1689/oj#art_15').
declared(unauthorised_third_party/1, 'unauthorised third party attempting alteration', 'celex:32024R1689/oj#art_15').
declared(alter_use/2, 'alter the use of a system', 'celex:32024R1689/oj#art_15').
declared(alter_outputs/2, 'alter the outputs of a system', 'celex:32024R1689/oj#art_15').
declared(alter_performance/2, 'alter the performance of a system', 'celex:32024R1689/oj#art_15').
declared(exploit_vulnerability/2, 'exploit vulnerability of a system', 'celex:32024R1689/oj#art_15').
declared(appropriate_to_circumstances_and_risks/1, 'technical solution appropriate to circumstances and risks', 'celex:32024R1689/oj#art_15').
declared(ai_specific_vulnerability/1, 'vulnerability specific to AI systems', 'celex:32024R1689/oj#art_15').
declared(prevent_attack/2, 'prevent an attack on a system', 'celex:32024R1689/oj#art_15').
declared(detect_attack/2, 'detect an attack on a system', 'celex:32024R1689/oj#art_15').
declared(respond_to_attack/2, 'respond to an attack on a system', 'celex:32024R1689/oj#art_15').
declared(resolve_attack/2, 'resolve an attack on a system', 'celex:32024R1689/oj#art_15').
declared(control_for_attack/2, 'control for an attack on a system', 'celex:32024R1689/oj#art_15').
declared(data_poisoning_attack/1, 'attack manipulating training data set', 'celex:32024R1689/oj#art_15').
declared(model_poisoning_attack/1, 'attack manipulating pre-trained components used in training', 'celex:32024R1689/oj#art_15').
declared(adversarial_example_attack/1, 'input designed to cause model mistake', 'celex:32024R1689/oj#art_15').
declared(model_evasion_attack/1, 'model evasion attack', 'celex:32024R1689/oj#art_15').
declared(confidentiality_attack/1, 'confidentiality attack on model', 'celex:32024R1689/oj#art_15').
declared(model_flaw/1, 'flaw in model', 'celex:32024R1689/oj#art_15').
required_accuracy(S) :-
    high_risk_ai_system(S).
required_robustness(S) :-
    high_risk_ai_system(S).
required_cybersecurity(S) :-
    high_risk_ai_system(S).
appropriate_level(accuracy, S) :-
    high_risk_ai_system(S).
appropriate_level(robustness, S) :-
    high_risk_ai_system(S).
appropriate_level(cybersecurity, S) :-
    high_risk_ai_system(S).
consistent_performance(accuracy, S) :-
    high_risk_ai_system(S),
    lifecycle(L),
    throughout(S, L).
consistent_performance(robustness, S) :-
    high_risk_ai_system(S),
    lifecycle(L),
    throughout(S, L).
consistent_performance(cybersecurity, S) :-
    high_risk_ai_system(S),
    lifecycle(L),
    throughout(S, L).
must_achieve(_Provider, appropriate_level(accuracy, S)) :-
    high_risk_ai_system(S).
must_achieve(_Provider, appropriate_level(robustness, S)) :-
    high_risk_ai_system(S).
must_achieve(_Provider, appropriate_level(cybersecurity, S)) :-
    high_risk_ai_system(S).
must_ensure(_Provider, consistent_performance(accuracy, S)) :-
    high_risk_ai_system(S).
must_ensure(_Provider, consistent_performance(robustness, S)) :-
    high_risk_ai_system(S).
must_ensure(_Provider, consistent_performance(cybersecurity, S)) :-
    high_risk_ai_system(S).
declared_in_instructions(accuracy, S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I).
declared_in_instructions(accuracy_metrics, S) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I).
resilient_against_errors(S) :-
    high_risk_ai_system(S),
    error_fault_inconsistency(E),
    occurs_in(E, S),
    occurs_in(E, environment(S)).
resilient_against_errors(S) :-
    high_risk_ai_system(S),
    error_fault_inconsistency(E),
    interaction_with_natural_persons(E),
    causes(E, S).
resilient_against_errors(S) :-
    high_risk_ai_system(S),
    error_fault_inconsistency(E),
    interaction_with_other_systems(E),
    causes(E, S).
must_be_resilient(_Provider, S) :-
    high_risk_ai_system(S),
    resilient_against_errors(S).
technical_organisational_measures_taken(S) :-
    high_risk_ai_system(S),
    resilient_against_errors(S).
must_take_measures(_Provider, technical_organisational_measures(S)) :-
    high_risk_ai_system(S),
    resilient_against_errors(S).
technical_redundancy_solution(S) :-
    high_risk_ai_system(S),
    robustness(R),
    achieves(S, R).
backup_plan(S) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(S).
fail_safe_plan(S) :-
    high_risk_ai_system(S),
    technical_redundancy_solution(S).
continues_to_learn(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).
continues_to_learn(S) :-
    high_risk_ai_system(S),
    putting_into_service(S).
eliminate_or_reduce_biased_outputs(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(F),
    risk_of(F, S).
mitigation_measures_for_feedback_loops(S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(F),
    duly_addressed(F, S).
must_develop_to_eliminate_or_reduce(_Provider, S) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    eliminate_or_reduce_biased_outputs(S).
must_ensure(_Provider, mitigation_measures_for_feedback_loops(S)) :-
    high_risk_ai_system(S),
    continues_to_learn(S),
    feedback_loop(F).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    alter_use(T, S).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    alter_outputs(T, S).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    alter_performance(T, S).
resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S),
    unauthorised_third_party(T),
    exploit_vulnerability(T, S).
must_be_resilient(_Provider, unauthorised_alteration(S)) :-
    high_risk_ai_system(S),
    resilient_against_unauthorised_alteration(S).
appropriate_to_circumstances_and_risks(S) :-
    high_risk_ai_system(S),
    technical_solution(T),
    ensures_cybersecurity(T, S).
ai_specific_vulnerability(data_poisoning_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(model_poisoning_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(adversarial_example_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(model_evasion_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(confidentiality_attack(S)) :-
    high_risk_ai_system(S).
ai_specific_vulnerability(model_flaw(S)) :-
    high_risk_ai_system(S).
must_include_measures(_Provider, prevent_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, detect_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, respond_to_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, resolve_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, control_for_attack(data_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(data_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, prevent_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, detect_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, respond_to_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, resolve_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, control_for_attack(model_poisoning_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_poisoning_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, prevent_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, detect_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, respond_to_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, resolve_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, control_for_attack(adversarial_example_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(adversarial_example_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, prevent_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, detect_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, respond_to_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, resolve_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, control_for_attack(model_evasion_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_evasion_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, prevent_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, detect_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, respond_to_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, resolve_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, control_for_attack(confidentiality_attack(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(confidentiality_attack(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, prevent_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, detect_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, respond_to_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, resolve_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).
must_include_measures(_Provider, control_for_attack(model_flaw(S), S)) :-
    high_risk_ai_system(S),
    ai_specific_vulnerability(model_flaw(S)),
    appropriate_to_circumstances_and_risks(S).
provenance(required_accuracy/1, 'celex:32024R1689/oj#art_15').
provenance(required_robustness/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(appropriate_level/2, 'celex:32024R1689/oj#art_15').
provenance(consistent_performance/2, 'celex:32024R1689/oj#art_15').
provenance(must_achieve/2, 'celex:32024R1689/oj#art_15').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_15').
provenance(declared_in_instructions/2, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_errors/1, 'celex:32024R1689/oj#art_15').
provenance(technical_organisational_measures_taken/1, 'celex:32024R1689/oj#art_15').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_15').
provenance(technical_redundancy_solution/1, 'celex:32024R1689/oj#art_15').
provenance(backup_plan/1, 'celex:32024R1689/oj#art_15').
provenance(fail_safe_plan/1, 'celex:32024R1689/oj#art_15').
provenance(continues_to_learn/1, 'celex:32024R1689/oj#art_15').
provenance(eliminate_or_reduce_biased_outputs/1, 'celex:32024R1689/oj#art_15').
provenance(feedback_loop/1, 'celex:32024R1689/oj#art_15').
provenance(mitigation_measures_for_feedback_loops/1, 'celex:32024R1689/oj#art_15').
provenance(must_develop_to_eliminate_or_reduce/2, 'celex:32024R1689/oj#art_15').
provenance(resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
provenance(unauthorised_third_party/1, 'celex:32024R1689/oj#art_15').
provenance(alter_use/2, 'celex:32024R1689/oj#art_15').
provenance(alter_outputs/2, 'celex:32024R1689/oj#art_15').
provenance(alter_performance/2, 'celex:32024R1689/oj#art_15').
provenance(exploit_vulnerability/2, 'celex:32024R1689/oj#art_15').
provenance(appropriate_to_circumstances_and_risks/1, 'celex:32024R1689/oj#art_15').
provenance(ai_specific_vulnerability/1, 'celex:32024R1689/oj#art_15').
provenance(prevent_attack/2, 'celex:32024R1689/oj#art_15').
provenance(detect_attack/2, 'celex:32024R1689/oj#art_15').
provenance(respond_to_attack/2, 'celex:32024R1689/oj#art_15').
provenance(resolve_attack/2, 'celex:32024R1689/oj#art_15').
provenance(control_for_attack/2, 'celex:32024R1689/oj#art_15').
provenance(data_poisoning_attack/1, 'celex:32024R1689/oj#art_15').
provenance(model_poisoning_attack/1, 'celex:32024R1689/oj#art_15').
provenance(adversarial_example_attack/1, 'celex:32024R1689/oj#art_15').
provenance(model_evasion_attack/1, 'celex:32024R1689/oj#art_15').
provenance(confidentiality_attack/1, 'celex:32024R1689/oj#art_15').
provenance(model_flaw/1, 'celex:32024R1689/oj#art_15').
provenance(must_include_measures/2, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(must_ensure_compliance/2, 'provider must ensure high-risk AI system complies with Chapter 3 Section 2 requirements', 'celex:32024R1689/oj#art_16').
declared(must_indicate_contact_details/2, 'provider must indicate name and contact address on system, packaging or documentation', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider must have quality management system complying with Article 17', 'celex:32024R1689/oj#art_16').
declared(must_keep_documentation/2, 'provider must keep documentation referred to in Article 18', 'celex:32024R1689/oj#art_16').
declared(must_keep_logs/2, 'provider must keep automatically generated logs when under their control', 'celex:32024R1689/oj#art_16').
declared(must_conformity_assessment/2, 'provider must ensure system undergoes conformity assessment before placement or putting into service', 'celex:32024R1689/oj#art_16').
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider must affix CE marking to indicate conformity', 'celex:32024R1689/oj#art_16').
declared(must_comply_registration/2, 'provider must comply with registration obligations', 'celex:32024R1689/oj#art_16').
declared(must_take_corrective_actions/2, 'provider must take corrective actions and provide information as required', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity/2, 'provider must demonstrate conformity upon reasoned request of national competent authority', 'celex:32024R1689/oj#art_16').
declared(must_ensure_accessibility/2, 'provider must ensure system complies with accessibility requirements', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_indicate_contact_details(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    under_control(P, S).
must_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before(placing_on_market(S) ; putting_into_service(S)).
must_draw_up_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_comply_registration(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_demonstrate_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request(Authority),
    national_competent_authority(Authority).
must_ensure_accessibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_16').
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
declared(required_quality_management_system_aspect/2, 'aspect that must be included in a quality management system', 'celex:32024R1689/oj#art_17').
required_quality_management_system_aspect(S, regulatory_compliance_strategy) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, design_control_techniques) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, development_quality_assurance) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, examination_test_validation_procedures) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, technical_specifications) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, data_management_systems) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, risk_management_system) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, post_market_monitoring_system) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, serious_incident_reporting_procedures) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, communication_handling_procedures) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, record_keeping_systems) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, resource_management) :-
    high_risk_ai_system(S).
required_quality_management_system_aspect(S, accountability_framework) :-
    high_risk_ai_system(S).
must_put_quality_management_system_in_place(P, S) :-
    provider(P),
    high_risk_ai_system(S).
quality_management_system_documented(P, S) :-
    provider(P),
    high_risk_ai_system(S).
quality_management_system_proportionate(P, S) :-
    provider(P),
    high_risk_ai_system(S).
exempt_quality_management_system_aspect_financial_institution(S, risk_management_system) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S).
exempt_quality_management_system_aspect_financial_institution(S, post_market_monitoring_system) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S).
exempt_quality_management_system_aspect_financial_institution(S, serious_incident_reporting_procedures) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S).
deemed_fulfilled_by_internal_governance(P, S) :-
    financial_institution(P),
    provider(P),
    high_risk_ai_system(S),
    complies_with_internal_governance(P, Union_financial_services_law).
may_include_aspects_in_sectoral_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    subject_to_sectoral_quality_management_obligations(P).
provenance(required_quality_management_system_aspect/2, 'celex:32024R1689/oj#art_17').
provenance(must_put_quality_management_system_in_place/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_proportionate/2, 'celex:32024R1689/oj#art_17').
provenance(exempt_quality_management_system_aspect_financial_institution/2, 'celex:32024R1689/oj#art_17').
provenance(deemed_fulfilled_by_internal_governance/2, 'celex:32024R1689/oj#art_17').
provenance(may_include_aspects_in_sectoral_quality_management_system/2, 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').

% ==== celex:32024R1689/oj#art_18 ====
declared(must_keep_documentation/2, 'provider must keep documentation for authorities', 'celex:32024R1689/oj#art_18').
declared(documentation_period/2, 'period for which documentation must be kept', 'celex:32024R1689/oj#art_18').
declared(technical_documentation/1, 'technical documentation of AI system', 'celex:32024R1689/oj#art_18').
declared(quality_management_system_documentation/1, 'documentation concerning quality management system', 'celex:32024R1689/oj#art_18').
declared(approved_changes_documentation/1, 'documentation concerning changes approved by notified bodies', 'celex:32024R1689/oj#art_18').
declared(notified_body_decisions/1, 'decisions and documents issued by notified bodies', 'celex:32024R1689/oj#art_18').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity', 'celex:32024R1689/oj#art_18').
declared(member_state_determines_conditions/2, 'member state determines conditions for documentation keeping after bankruptcy', 'celex:32024R1689/oj#art_18').
declared(financial_institution_provider/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_18').
declared(must_maintain_technical_documentation_under_financial_law/1, 'financial institution provider must maintain technical documentation under financial services law', 'celex:32024R1689/oj#art_18').
documentation_period(S, years(10)) :-
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)).
must_keep_documentation(P, technical_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_period(S, years(10)).
must_keep_documentation(P, quality_management_system_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_period(S, years(10)).
must_keep_documentation(P, approved_changes_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body(_),
    documentation_period(S, years(10)).
must_keep_documentation(P, notified_body_decisions(S)) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body(_),
    documentation_period(S, years(10)).
must_keep_documentation(P, eu_declaration_of_conformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_period(S, years(10)).
member_state_determines_conditions(MemberState, S) :-
    high_risk_ai_system(S),
    (provider_bankrupt_or_ceases_activity(P, MemberState); authorised_representative_bankrupt_or_ceases_activity(R, MemberState)),
    documentation_period(S, years(10)).
must_maintain_technical_documentation_under_financial_law(P) :-
    financial_institution_provider(P),
    high_risk_ai_system(S).
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_period/2, 'celex:32024R1689/oj#art_18').
provenance(member_state_determines_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain_technical_documentation_under_financial_law/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(must_keep_logs/2, 'provider shall keep automatically generated logs', 'celex:32024R1689/oj#art_19').
declared(logs_under_control/2, 'logs of high-risk AI system are under provider control', 'celex:32024R1689/oj#art_19').
declared(financial_institution_provider/1, 'provider that is a financial institution', 'celex:32024R1689/oj#art_19').
declared(retention_period/2, 'period for which logs must be kept', 'celex:32024R1689/oj#art_19').
must_keep_logs(Provider, logs(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    logs_referred_to_in_art_12_1(Provider, S),
    logs_under_control(Provider, S).
logs_referred_to_in_art_12_1(_Provider, S) :-
    high_risk_ai_system(S).
must_keep_logs(Provider, logs(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    financial_institution_provider(Provider),
    logs_referred_to_in_art_12_1(Provider, S).
retention_period(S, months(6)) :-
    high_risk_ai_system(S),
    \+ applicable_union_or_national_law_provides_otherwise(S).
retention_period(S, Period) :-
    high_risk_ai_system(S),
    applicable_union_or_national_law_provides_otherwise(S),
    law_retention_period(S, Period).
applicable_union_or_national_law_provides_otherwise(S) :-
    high_risk_ai_system(S),
    union_law_on_protection_of_personal_data_applies(S).
applicable_union_or_national_law_provides_otherwise(S) :-
    high_risk_ai_system(S),
    national_law_provides_otherwise(S).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_19').
provenance(retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(applicable_union_or_national_law_provides_otherwise/1, 'celex:32024R1689/oj#art_19').
provenance(logs_referred_to_in_art_12_1/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(must_take_corrective_action/2, 'provider must take corrective action for non-conforming high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(must_inform_parties/2, 'provider must inform relevant parties about corrective action', 'celex:32024R1689/oj#art_20').
declared(must_investigate_risk/2, 'provider must investigate causes of risk with deployer', 'celex:32024R1689/oj#art_20').
declared(must_inform_authorities/2, 'provider must inform market surveillance authorities and notified body', 'celex:32024R1689/art_20').
declared(non_conforming_system/1, 'high-risk AI system not in conformity with the regulation', 'celex:32024R1689/oj#art_20').
declared(risk_within_art_79_1/1, 'high-risk AI system presents a risk within meaning of Article 79(1)', 'celex:32024R1689/oj#art_20').
non_conforming_system(S) :-
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)),
    \+ in_conformity_with_regulation(S).
risk_within_art_79_1(S) :-
    high_risk_ai_system(S),
    risk(S),
    serious_risk_to_health_safety_or_fundamental_rights(S).
must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming_system(S),
    corrective_action(Action),
    member(Action, [bring_into_conformity, withdraw, disable, recall]).
must_inform_parties(P, corrective_action(S, Action)) :-
    provider(P),
    high_risk_ai_system(S),
    must_take_corrective_action(P, S),
    Action = corrective_action(S, _).
must_investigate_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    becomes_aware(P, risk(S)).
must_inform_authorities(P, non_compliance_report(S)) :-
    provider(P),
    high_risk_ai_system(S),
    must_investigate_risk(P, S),
    market_surveillance_authority(Authority),
    competent_for(Authority, S),
    notified_body(Body),
    issued_certificate(Body, S).
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_parties/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(non_conforming_system/1, 'celex:32024R1689/oj#art_20').
provenance(risk_within_art_79_1/1, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
placed_or_put_into_service_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market_by(P, S).
placed_or_put_into_service_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service_by(P, S).
in_conformity_with_regulation(S) :-
    high_risk_ai_system(S),
    ce_marking(S).
serious_risk_to_health_safety_or_fundamental_rights(S) :-
    high_risk_ai_system(S),
    risk(S),
    (harm_to_health(S); harm_to_safety(S); harm_to_fundamental_rights(S)).
corrective_action(bring_into_conformity).
corrective_action(withdraw).
corrective_action(disable).
corrective_action(recall).
becomes_aware(P, risk(S)) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    informed_of_risk(P, S).
competent_for(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    jurisdiction_for(Authority, S).
issued_certificate(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    conformity_assessment(C),
    for_system(C, S),
    issued_by(C, Body).
placing_on_market_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    responsible_provider(P, S).
putting_into_service_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    responsible_provider(P, S).
provenance(placed_or_put_into_service_by/2, 'celex:32024R1689/oj#art_20').
provenance(in_conformity_with_regulation/1, 'celex:32024R1689/oj#art_20').
provenance(serious_risk_to_health_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_20').
provenance(becomes_aware/2, 'celex:32024R1689/oj#art_20').
provenance(competent_for/2, 'celex:32024R1689/oj#art_20').
provenance(issued_certificate/2, 'celex:32024R1689/oj#art_20').
provenance(placing_on_market_by/2, 'celex:32024R1689/oj#art_20').
provenance(putting_into_service_by/2, 'celex:32024R1689/oj#art_20').

% ==== celex:32024R1689/oj#art_21 ====
declared(must_provide_conformity_information/2, 'provider shall provide information and documentation to demonstrate conformity upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(must_provide_logs_access/2, 'provider shall give access to automatically generated logs upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(confidential_treatment_applies/1, 'information obtained by competent authority shall be treated confidentially', 'celex:32024R1689/oj#art_21').
must_provide_conformity_information(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    developed_by(Provider, S),
    competent_authority(Authority),
    reasoned_request(Authority, Provider, conformity_information(S)).
must_provide_logs_access(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    developed_by(Provider, S),
    competent_authority(Authority),
    reasoned_request(Authority, Provider, logs_access(S)),
    logs_under_control(Provider, S).
confidential_treatment_applies(Information) :-
    obtained_by(Information, Authority),
    competent_authority(Authority),
    obtained_under(Information, 'celex:32024R1689/oj#art_21').
provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_logs_access/2, 'celex:32024R1689/oj#art_21').
provenance(confidential_treatment_applies/1, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(must_appoint/2, 'provider shall appoint an authorised representative by written mandate', 'celex:32024R1689/oj#art_22').
declared(must_enable/2, 'provider shall enable authorised representative to perform tasks', 'celex:32024R1689/oj#art_22').
declared(must_perform_tasks/2, 'authorised representative shall perform tasks specified in mandate', 'celex:32024R1689/celex:32024R1689/oj#art_22').
declared(must_provide_mandate_copy/2, 'authorised representative shall provide copy of mandate upon request', 'celex:32024R1689/oj#art_22').
declared(must_verify_conformity/2, 'authorised representative shall verify EU declaration of conformity and technical documentation', 'celex:32024R1689/oj#art_22').
declared(must_keep_documentation/2, 'authorised representative shall keep documentation for 10 years', 'celex:32024R1689/oj#art_22').
declared(must_provide_information/2, 'authorised representative shall provide information and documentation upon reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate/2, 'authorised representative shall cooperate with competent authorities', 'celex:32024R1689/oj#art_22').
declared(must_comply_registration/2, 'authorised representative shall comply with registration obligations or ensure information correctness', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate/2, 'authorised representative shall terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(must_inform_termination/2, 'authorised representative shall inform market surveillance authority and notified body of termination', 'celex:32024R1689/oj#art_22').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_22').
declared(established_in_third_country/1, 'entity not established in the Union', 'celex:32024R1689/oj#art_22').
declared(mandate/2, 'written mandate appointing authorised representative', 'celex:32024R1689/oj#art_22').
declared(task_specified_in_mandate/2, 'task specified in the mandate received from provider', 'celex:32024R1689/oj#art_22').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity referred to in Article 47', 'celex:32024R1689/oj#art_22').
declared(technical_documentation/1, 'technical documentation referred to in Article 11', 'celex:32024R1689/oj#art_22').
declared(conformity_assessment_procedure/1, 'conformity assessment procedure carried out by provider', 'celex:32024R1689/oj#art_22').
declared(contact_details/2, 'contact details of provider', 'celex:32024R1689/oj#art_22').
declared(certificate_notified_body/1, 'certificate issued by notified body', 'celex:32024R1689/oj#art_22').
declared(logs_automatically_generated/1, 'logs automatically generated by high-risk AI system', 'celex:32024R1689/oj#art_22').
declared(under_control_of_provider/1, 'under the control of the provider', 'celex:32024R1689/oj#art_22').
declared(reasoned_request/1, 'reasoned request from competent authority', 'celex:32024R1689/oj#art_22').
declared(registration_obligation/1, 'registration obligation referred to in Article 49(1)', 'celex:32024R1689/oj#art_22').
declared(information_correct/1, 'information referred to in Annex VIII section 1 point 3 is correct', 'celex:32024R1689/oj#art_22').
declared(acting_contrary_to_obligations/1, 'provider acting contrary to obligations pursuant to this Regulation', 'celex:32024R1689/oj#art_22').
declared(competent_authority/1, 'competent authority', 'celex:32024R1689/oj#art_22').
must_appoint(P, authorised_representative(R)) :-
    provider(P),
    high_risk_ai_system(S),
    established_in_third_country(P),
    before_making_available_on_market(S),
    mandate(P, R),
    authorised_representative(R),
    established_in_union(R).
must_enable(P, perform_tasks(R, Tasks)) :-
    provider(P),
    authorised_representative(R),
    mandate(P, R),
    task_specified_in_mandate(Tasks, P).
must_perform_tasks(R, Tasks) :-
    authorised_representative(R),
    provider(P),
    mandate(P, R),
    task_specified_in_mandate(Tasks, P).
must_provide_mandate_copy(R, copy_of_mandate(Authority, Language)) :-
    authorised_representative(R),
    provider(P),
    mandate(P, R),
    market_surveillance_authority(Authority),
    official_language_of_union(Language),
    indicated_by_competent_authority(Language, Authority).
must_verify_conformity(R, verification(S)) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    provider(P),
    mandate(P, R),
    eu_declaration_of_conformity(D),
    drawn_up(D),
    technical_documentation(T),
    drawn_up(T),
    conformity_assessment_procedure(C),
    carried_out_by(C, P).
must_keep_documentation(R, documentation_for_period(S, years(10), after_placement_or_service)) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    provider(P),
    mandate(P, R),
    ( placed_on_market(S); put_into_service(S) ),
    contact_details(P),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    ( certificate_notified_body(C) -> true; true ),
    competent_authority(CA),
    national_authority_or_body_referred_in_art_74_10(NA).
must_provide_information(R, information_and_documentation(S, CA, Request)) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    reasoned_request(Request),
    competent_authority(CA),
    request_from(CA, Request),
    necessary_to_demonstrate_conformity(S, chp_3_sec_2),
    logs_automatically_generated(L),
    referred_in_art_12_1(L),
    ( under_control_of_provider(L) -> access_to_logs(S, L); true ).
must_cooperate(R, cooperation(CA, Action, S)) :-
    authorised_representative(R),
    competent_authority(CA),
    reasoned_request(Request),
    request_from(CA, Request),
    action_taken_by(CA, Action),
    relation_to(Action, S),
    high_risk_ai_system(S),
    reduce_and_mitigate_risks(Action, S).
must_comply_registration(R, registration_or_ensure_correctness(S)) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    ( registration_obligation(Reg) -> comply_with(R, Reg)
    ; information_referred_in_annex_8_sec_1_pnt_3(Info) -> ensure_correct(R, Info)
    ).
must_terminate_mandate(R, termination(P, Reason)) :-
    authorised_representative(R),
    provider(P),
    mandate(P, R),
    ( considers(R, acting_contrary_to_obligations(P))
    ; has_reason_to_consider(R, acting_contrary_to_obligations(P))
    ).
must_inform_termination(R, notification(Authority, Body, termination(P, Reason))) :-
    authorised_representative(R),
    provider(P),
    must_terminate_mandate(R, termination(P, Reason)),
    relevant_market_surveillance_authority(Authority),
    immediately_inform(R, Authority),
    ( relevant_notified_body(Body) -> immediately_inform(R, Body); true ).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_registration/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_22').
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
declared(must_ensure_conformity/2, 'importer must ensure high-risk AI system is in conformity before placing on market', 'celex:32024R1689/oj#art_23/par_1').
declared(conformity_verification/2, 'specific verification checks importer must carry out', 'celex:32024R1689/oj#art_23/par_1').
declared(must_not_place_on_market/2, 'importer must not place non-conforming or falsified system on market', 'celex:32024R1689/oj#art_23/par_2').
declared(must_inform/2, 'importer must inform relevant parties about risk', 'celex:32024R1689/oj#art_23/par_2').
declared(must_indicate_contact_details/2, 'importer must indicate contact details on system or packaging', 'celex:32024R1689/oj#art_23/par_3').
declared(must_ensure_storage_transport_conditions/2, 'importer must ensure storage or transport do not jeopardise compliance', 'celex:32024R1689/oj#art_23/par_4').
declared(must_keep_documentation/2, 'importer must keep documentation for specified period', 'celex:32024R1689/oj#art_23/par_5').
declared(must_provide_information/2, 'importer must provide information to competent authorities upon request', 'celex:32024R1689/oj#art_23/par_6').
declared(must_cooperate/2, 'importer must cooperate with competent authorities', 'celex:32024R1689/oj#art_23/par_7').
must_ensure_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    before(placing_on_market(Importer, S)),
    conformity_verification(Importer, S).
conformity_verification(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    conformity_assessment_procedure_carried_out(S),
    technical_documentation_drawn_up(S),
    required_ce_marking_and_documentation(S),
    authorised_representative_appointed(S).
conformity_assessment_procedure_carried_out(S) :-
    high_risk_ai_system(S),
    conformity_assessment(CA),
    carried_out_by(CA, Provider),
    provider(Provider).
technical_documentation_drawn_up(S) :-
    high_risk_ai_system(S),
    provider(Provider),
    drawn_up_by(technical_documentation(S), Provider).
required_ce_marking_and_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    eu_declaration_of_conformity(S),
    instructions_for_use(S).
authorised_representative_appointed(S) :-
    high_risk_ai_system(S),
    provider(Provider),
    appointed(authorised_representative(R), Provider).
must_not_place_on_market(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    (not_in_conformity(S); falsified(S); falsified_documentation(S)),
    \+ brought_into_conformity(S).
must_inform(Importer, risk(S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S, meaning_of_art_79_par_1),
    inform_parties(Importer, [provider_of(S), authorised_representative_of(S), market_surveillance_authorities]).
must_indicate_contact_details(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    indicate(Importer, name(Importer), S),
    indicate(Importer, registered_trade_name_or_mark(Importer), S),
    indicate(Importer, contact_address(Importer), S),
    on_system_or_packaging_or_documentation(S).
must_ensure_storage_transport_conditions(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    under_responsibility(Importer, S),
    applicable(storage_or_transport_conditions),
    \+ jeopardise_compliance(storage_or_transport_conditions, requirements_of_chapter_3_section_2).
must_keep_documentation(Importer, documentation_for(S, years(10))) :-
    importer(Importer),
    high_risk_ai_system(S),
    after(placing_on_market(S); putting_into_service(S)),
    keep(Importer, certificate(S)),
    keep(Importer, instructions_for_use(S)),
    keep(Importer, eu_declaration_of_conformity(S)),
    where_applicable(certificate(S), notified_body_issued).
must_provide_information(Importer, information_to(Authority, S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    competent_authority(Authority),
    reasoned_request(Authority),
    provide(Importer, necessary_information_and_documentation, Authority),
    in_easily_understood_language(Authority),
    ensure_technical_documentation_available(Importer, Authority).
must_cooperate(Importer, action_of(Authority, S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_by(Importer, S),
    competent_authority(Authority),
    action_taken(Authority, S),
    cooperate(Importer, Authority),
    in_particular(reduce_and_mitigate_risks(S)).
provenance(must_ensure_conformity/2, 'celex:32024R1689/oj#art_23/par_1').
provenance(conformity_verification/2, 'celex:32024R1689/oj#art_23/par_1').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23/par_2').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23/par_2').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_23/par_3').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_23/par_4').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23/par_5').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_23/par_6').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23/par_7').
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
declared(must_verify_before_making_available/2, 'distributor must verify conformity before making high-risk AI system available', 'celex:32024R1689/oj#art_24').
declared(must_not_make_available_until_conformity/2, 'distributor must not make high-risk AI system available until brought into conformity', 'celex:32024R1689/oj#art_24').
declared(must_inform_provider_or_importer_of_risk/2, 'distributor must inform provider or importer of risk', 'celex:32024R1689/oj#art_24').
declared(must_ensure_storage_transport_conditions/2, 'distributor must ensure storage or transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_24').
declared(must_take_corrective_action/2, 'distributor must take corrective action for non-conforming high-risk AI system', 'celex:32024R1689/oj#art_24').
declared(must_inform_authorities_of_risk_and_corrective_action/2, 'distributor must inform authorities of risk and corrective actions taken', 'celex:32024R1689/oj#art_24').
declared(must_provide_information_on_request/2, 'distributor must provide information to competent authority on request', 'celex:32024R1689/oj#art_24').
declared(must_cooperate_with_authorities/2, 'distributor must cooperate with competent authorities', 'celex:32024R1689/oj#art_24').
declared(ce_marking_bears/1, 'system bears required CE marking', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_eu_declaration_of_conformity/1, 'system accompanied by EU declaration of conformity', 'celex:32024R1689/oj#art_24').
declared(accompanied_by_instructions_for_use/1, 'system accompanied by instructions for use', 'celex:32024R1689/oj#art_24').
declared(provider_complied_with_obligations/1, 'provider has complied with obligations', 'celex:32024R1689/oj#art_24').
declared(importer_complied_with_obligations/1, 'importer has complied with obligations', 'celex:32024R1689/oj#art_24').
declared(not_in_conformity_with_requirements/1, 'system not in conformity with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_24').
declared(presents_risk_within_meaning_art_79_1/1, 'system presents risk within meaning of Article 79(1)', 'celex:32024R1689/oj#art_24').
declared(storage_or_transport_conditions_applicable/1, 'storage or transport conditions applicable to system', 'celex:32024R1689/oj#art_24').
declared(jeopardises_compliance/1, 'conditions jeopardise compliance with requirements', 'celex:32024R1689/oj#art_24').
declared(made_available_on_market_by_distributor/2, 'distributor has made system available on market', 'celex:32024R1689/oj#art_24').
declared(under_responsibility_of_distributor/2, 'system under responsibility of distributor', 'celex:32024R1689/oj#art_24').
declared(reasoned_request_from_authority/2, 'reasoned request from competent authority to distributor', 'celex:32024R1689/oj#art_24').
declared(relevant_competent_authority_for_system/2, 'authority competent for the high-risk AI system concerned', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    before_making_available(Distributor, S),
    ce_marking_bears(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    (provider_complied_with_obligations(S) ; true),
    (importer_applicable(S) -> importer_complied_with_obligations(S) ; true).
must_not_make_available_until_conformity(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    not_in_conformity_with_requirements(S),
    considers_or_has_reason_to_consider(Distributor, S),
    \+ made_available_on_market(Distributor, S).
must_not_make_available_until_conformity(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    not_in_conformity_with_requirements(S),
    considers_or_has_reason_to_consider(Distributor, S),
    \+ made_available_on_market(Distributor, S),
    presents_risk_within_meaning_art_79_1(S),
    must_inform_provider_or_importer_of_risk(Distributor, S).
must_inform_provider_or_importer_of_risk(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    presents_risk_within_meaning_art_79_1(S),
    considers_or_has_reason_to_consider(Distributor, S),
    \+ made_available_on_market(Distributor, S),
    (provider(P) ; importer(I)).
must_ensure_storage_transport_conditions(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    under_responsibility_of_distributor(Distributor, S),
    storage_or_transport_conditions_applicable(S),
    \+ jeopardises_compliance(S).
must_take_corrective_action(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(Distributor, S),
    not_in_conformity_with_requirements(S),
    considers_or_has_reason_to_consider(Distributor, S),
    (take_corrective_actions(Distributor, S) ;
     ensure_provider_importer_or_operator_takes_actions(Distributor, S)).
must_inform_authorities_of_risk_and_corrective_action(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(Distributor, S),
    presents_risk_within_meaning_art_79_1(S),
    considers_or_has_reason_to_consider(Distributor, S),
    relevant_competent_authority_for_system(Authority, S),
    must_inform(Distributor, risk_and_corrective_actions(S, Authority)).
must_provide_information_on_request(Distributor, Authority) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    reasoned_request_from_authority(Authority, Distributor),
    relevant_competent_authority_for_system(Authority, S),
    must_provide(Distributor, information_and_documentation(S, actions_under_art_24)).
must_cooperate_with_authorities(Distributor, Authority) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(Distributor, S),
    relevant_competent_authority_for_system(Authority, S),
    authority_takes_action(Authority, S).
considers_or_has_reason_to_consider(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    basis_of_information_in_possession(Distributor, S).
importer_applicable(S) :-
    high_risk_ai_system(S),
    importer(_I).
before_making_available(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    \+ made_available_on_market(Distributor, S).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_authorities_of_risk_and_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_24').
provenance(ce_marking_bears/1, 'celex:32024R1689/oj#art_24').
provenance(accompanied_by_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_24').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_24').
provenance(provider_complied_with_obligations/1, 'celex:32024R1689/oj#art_24').
provenance(importer_complied_with_obligations/1, 'celex:32024R1689/oj#art_24').
provenance(not_in_conformity_with_requirements/1, 'celex:32024R1689/oj#art_24').
provenance(presents_risk_within_meaning_art_79_1/1, 'celex:32024R1689/oj#art_24').
provenance(storage_or_transport_conditions_applicable/1, 'celex:32024R1689/oj#art_24').
provenance(jeopardises_compliance/1, 'celex:32024R1689/oj#art_24').
provenance(made_available_on_market_by_distributor/2, 'celex:32024R1689/oj#art_24').
provenance(under_responsibility_of_distributor/2, 'celex:32024R1689/oj#art_24').
provenance(reasoned_request_from_authority/2, 'celex:32024R1689/oj#art_24').
provenance(relevant_competent_authority_for_system/2, 'celex:32024R1689/oj#art_24').
provenance(considers_or_has_reason_to_consider/2, 'celex:32024R1689/oj#art_24').
provenance(importer_applicable/1, 'celex:32024R1689/oj#art_24').
provenance(before_making_available/2, 'celex:32024R1689/oj#art_24').
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
declared(considered_provider/2, 'entity considered to be provider of high-risk AI system under Article 25', 'celex:32024R1689/oj#art_25').
declared(initial_provider_no_longer_provider/1, 'initial provider ceases to be considered provider of specific AI system', 'celex:32024R1689/oj#art_25/par_2').
declared(must_cooperate_with_new_providers/2, 'initial provider must cooperate with new providers', 'celex:32024R1689/oj#art_25/par_2').
declared(must_make_available_information/2, 'initial provider must make available necessary information', 'celex:32024R1689/oj#art_25/par_2').
declared(must_provide_technical_access/2, 'initial provider must provide reasonably expected technical access', 'celex:32024R1689/oj#art_25/par_2').
declared(must_provide_assistance/2, 'initial provider must provide other assistance required for fulfilment of obligations', 'celex:32024R1689/oj#art_25/par_2').
declared(excluded_from_provider_obligations/1, 'initial provider excluded from handing over documentation when specified not to change into high-risk', 'celex:32024R1689/oj#art_25/par_2').
declared(product_manufacturer_considered_provider/2, 'product manufacturer considered provider of high-risk AI system that is safety component', 'celex:32024R1689/oj#art_25/par_3').
declared(must_specify_by_written_agreement/2, 'provider and third party must specify necessary elements by written agreement', 'celex:32024R1689/oj#art_25/par_4').
declared(third_party_supplies_elements/2, 'third party supplies AI system, tools, services, components, or processes to provider', 'celex:32024R1689/oj#art_25/par_4').
declared(exempt_open_source_third_party/1, 'third party exempt when making accessible tools, services, processes, or components under free and open-source licence', 'celex:32024R1689/oj#art_25/par_4').
considered_provider(Party, S) :-
    (distributor(Party); importer(Party); deployer(Party); third_party(Party)),
    high_risk_ai_system(S),
    puts_name_or_trademark_on(Party, S),
    (placed_on_market(S); put_into_service(S)),
    \+ contractual_arrangement_allocates_obligations(Party, S).
considered_provider(Party, S) :-
    (distributor(Party); importer(Party); deployer(Party); third_party(Party)),
    high_risk_ai_system(S),
    placed_on_market(S),
    substantial_modification_to(Party, S),
    remains_high_risk_after_modification(S).
considered_provider(Party, S) :-
    (distributor(Party); importer(Party); deployer(Party); third_party(Party)),
    ai_system(S),
    (general_purpose_ai_system(S); \+ general_purpose_ai_system(S)),
    \+ high_risk_ai_system(S),
    (placed_on_market(S); put_into_service(S)),
    modifies_intended_purpose(Party, S),
    becomes_high_risk_after_purpose_modification(S).
initial_provider_no_longer_provider(InitialProvider) :-
    provider(InitialProvider),
    considered_provider(_NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S).
must_cooperate_with_new_providers(InitialProvider, NewProvider) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.
must_make_available_information(InitialProvider, new_provider(NewProvider)) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.
must_provide_technical_access(InitialProvider, new_provider(NewProvider)) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.
must_provide_assistance(InitialProvider, new_provider(NewProvider)) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.
excluded_from_provider_obligations(InitialProvider) :-
    provider(InitialProvider),
    clearly_specified_not_to_change_into_high_risk(InitialProvider, S),
    \+ obligation_to_hand_over_documentation(InitialProvider, S).
product_manufacturer_considered_provider(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    product_covered_by_union_harmonisation_legislation(Product),
    ai_system_is_safety_component_of(S, Product),
    placed_on_market_together_with_product(S, Product),
    under_name_or_trademark_of(Manufacturer, S).
product_manufacturer_considered_provider(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    product_covered_by_union_harmonisation_legislation(Product),
    ai_system_is_safety_component_of(S, Product),
    placed_on_market(Product),
    put_into_service_under_name_or_trademark_of(Manufacturer, S).
must_specify_by_written_agreement(Provider, agreement_with(ThirdParty, Elements)) :-
    provider(Provider),
    high_risk_ai_system(S),
    third_party_supplies_elements(ThirdParty, S),
    \+ exempt_open_source_third_party(ThirdParty),
    Elements = elements(information, capabilities, technical_access, assistance).
third_party_supplies_elements(ThirdParty, S) :-
    third_party(ThirdParty),
    high_risk_ai_system(S),
    (supplies_ai_system(ThirdParty, S); supplies_tools(ThirdParty, S); supplies_services(ThirdParty, S); supplies_components(ThirdParty, S); supplies_processes(ThirdParty, S)),
    used_or_integrated_in(ThirdParty, S).
exempt_open_source_third_party(ThirdParty) :-
    third_party(ThirdParty),
    makes_accessible_to_public(ThirdParty, tools),
    makes_accessible_to_public(ThirdParty, services),
    makes_accessible_to_public(ThirdParty, processes),
    makes_accessible_to_public(ThirdParty, components),
    \+ general_purpose_ai_model_supplied(ThirdParty),
    free_and_open_source_licence(ThirdParty).
provenance(considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_no_longer_provider/1, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_provide_technical_access/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_provide_assistance/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(excluded_from_provider_obligations/1, 'celex:32024R1689/oj#art_25/par_2').
provenance(product_manufacturer_considered_provider/2, 'celex:32024R1689/oj#art_25/par_3').
provenance(must_specify_by_written_agreement/2, 'celex:32024R1689/oj#art_25/par_4').
provenance(third_party_supplies_elements/2, 'celex:32024R1689/oj#art_25/par_4').
provenance(exempt_open_source_third_party/1, 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25/par_1', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25/par_2', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25/par_2', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25/par_3', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25/par_3', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25/par_4', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25/par_5', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25/par_5', 'celex:32024R1689/oj#art_25/par_3').
declared(third_party/1, 'entity other than provider in the AI value chain', 'celex:32024R1689/oj#art_25').
declared(puts_name_or_trademark_on/2, 'entity places its name or trademark on AI system', 'celex:32024R1689/oj#art_25/par_1').
declared(placed_on_market/1, 'AI system has been placed on market', 'celex:32024R1689/oj#art_25').
declared(put_into_service/1, 'AI system has been put into service', 'celex:32024R1689/oj#art_25').
declared(contractual_arrangement_allocates_obligations/2, 'contractual arrangements allocate obligations otherwise', 'celex:32024R1689/oj#art_25/par_1').
declared(substantial_modification_to/2, 'entity makes substantial modification to AI system', 'celex:32024R1689/oj#art_25/par_1').
declared(remains_high_risk_after_modification/1, 'AI system remains high-risk after substantial modification', 'celex:32024R1689/oj#art_25/par_1').
declared(modifies_intended_purpose/2, 'entity modifies intended purpose of AI system', 'celex:32024R1689/oj#art_25/par_1').
declared(becomes_high_risk_after_purpose_modification/1, 'AI system becomes high-risk after purpose modification', 'celex:32024R1689/oj#art_25/par_1').
declared(initially_placed_on_market_or_put_into_service/2, 'initial provider placed AI system on market or put it into service', 'celex:32024R1689/oj#art_25/par_2').
declared(clearly_specified_not_to_change_into_high_risk/2, 'initial provider clearly specified AI system not to be changed into high-risk', 'celex:32024R1689/oj#art_25/par_2').
declared(obligation_to_hand_over_documentation/2, 'obligation to hand over documentation exists', 'celex:32024R1689/oj#art_25/par_2').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_25/par_3').
declared(ai_system_is_safety_component_of/2, 'AI system is safety component of product', 'celex:32024R1689/oj#art_25/par_3').
declared(placed_on_market_together_with_product/2, 'AI system placed on market together with product', 'celex:32024R1689/oj#art_25/par_3').
declared(under_name_or_trademark_of/2, 'under name or trademark of entity', 'celex:32024R1689/oj#art_25/par_3').
declared(put_into_service_under_name_or_trademark_of/2, 'AI system put into service under name or trademark of entity', 'celex:32024R1689/oj#art_25/par_3').
declared(supplies_ai_system/2, 'third party supplies AI system', 'celex:32024R1689/oj#art_25/par_4').
declared(supplies_tools/2, 'third party supplies tools', 'celex:32024R1689/oj#art_25/par_4').
declared(supplies_services/2, 'third party supplies services', 'celex:32024R1689/oj#art_25/par_4').
declared(supplies_components/2, 'third party supplies components', 'celex:32024R1689/oj#art_25/par_4').
declared(supplies_processes/2, 'third party supplies processes', 'celex:32024R1689/oj#art_25/par_4').
declared(used_or_integrated_in/2, 'elements are used or integrated in high-risk AI system', 'celex:32024R1689/oj#art_25/par_4').
declared(makes_accessible_to_public/2, 'entity makes something accessible to public', 'celex:32024R1689/oj#art_25/par_4').
declared(general_purpose_ai_model_supplied/1, 'third party supplies general-purpose AI model', 'celex:32024R1689/oj#art_25/par_4').
declared(free_and_open_source_licence/1, 'made available under free and open-source licence', 'celex:32024R1689/oj#art_25/par_4').

% ==== celex:32024R1689/oj#art_26 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_26').
declared(must_ensure_compliance_with_instructions/2, 'deployer must use system per instructions', 'celex:32024R1689/oj#art_26/par_1').
declared(must_assign_human_oversight/2, 'deployer must assign qualified human oversight', 'celex:32024R1689/oj#art_26/par_2').
declared(must_ensure_input_data_quality/2, 'deployer must ensure relevant representative input data', 'celex:32024R1689/oj#art_26/par_4').
declared(must_monitor_operation/2, 'deployer must monitor system operation', 'celex:32024R1689/oj#art_26/par_5').
declared(must_inform_provider_distributor_and_authority/2, 'deployer must inform about risk', 'celex:32024R1689/oj#art_26/par_5').
declared(must_suspend_use/2, 'deployer must suspend use of risky system', 'celex:32024R1689/oj#art_26/par_5').
declared(must_inform_serious_incident/2, 'deployer must inform about serious incident', 'celex:32024R1689/oj#art_26/par_5').
declared(must_keep_logs/2, 'deployer must retain system logs', 'celex:32024R1689/oj#art_26/par_6').
declared(must_inform_workers/2, 'deployer must inform workers about AI use', 'celex:32024R1689/oj#art_26/par_7').
declared(must_comply_with_registration/2, 'deployer must comply with registration obligations', 'celex:32024R1689/oj#art_26/par_8').
declared(must_not_use_unregistered_system/2, 'deployer must not use unregistered system', 'celex:32024R1689/oj#art_26/par_8').
declared(must_use_art_13_information/2, 'deployer must use art 13 info for DPIA', 'celex:32024R1689/oj#art_26/par_9').
declared(must_request_authorisation_post_remote_biometric/2, 'deployer must request authorisation for post-remote biometric ID', 'celex:32024R1689/oj#art_26/par_10').
declared(must_stop_use_and_delete_data/2, 'deployer must stop use and delete data if auth rejected', 'celex:32024R1689/oj#art_26/par_10').
declared(prohibited_untargeted_law_enforcement_use/1, 'untargeted law enforcement use prohibited', 'celex:32024R1689/oj#art_26/par_10').
declared(prohibited_adverse_legal_effect_solely_on_output/1, 'adverse legal effect solely on system output prohibited', 'celex:32024R1689/oj#art_26/par_10').
declared(must_document_use/2, 'deployer must document each use', 'celex:32024R1689/oj#art_26/par_10').
declared(must_submit_annual_reports/2, 'deployer must submit annual reports on use', 'celex:32024R1689/oj#art_26/par_10').
declared(must_inform_natural_persons/2, 'deployer must inform natural persons of AI use', 'celex:32024R1689/oj#art_26/par_11').
declared(must_cooperate_with_authorities/2, 'deployer must cooperate with competent authorities', 'celex:32024R1689/oj#art_26/par_12').
declared(employer/1, 'entity employing workers', 'celex:32024R1689/oj#art_26/par_7').
declared(public_authority/1, 'public authority', 'celex:32024R1689/oj#art_26/par_8').
declared(union_institution/1, 'Union institution body office or agency', 'celex:32024R1689/oj#art_26/par_8').
declared(financial_institution/1, 'financial institution under Union financial services law', 'celex:32024R1689/oj#art_26/par_5').
declared(law_enforcement_deployer/1, 'deployer that is law enforcement authority', 'celex:32024R1689/oj#art_26/par_5').
declared(controls_input_data/2, 'deployer exercises control over input data', 'celex:32024R1689/oj#art_26/par_4').
declared(risk_presented/2, 'system presents a risk within meaning of art 79(1)', 'celex:32024R1689/oj#art_26/par_5').
declared(serious_incident_identified/2, 'deployer has identified a serious incident', 'celex:32024R1689/oj#art_26/par_5').
declared(authorisation_rejected/2, 'authorisation for post-remote biometric ID was rejected', 'celex:32024R1689/oj#art_26/par_10').
declared(untargeted_use/1, 'use without link to specific investigation', 'celex:32024R1689/oj#art_26/par_10').
declared(adverse_legal_effect_based_solely_on_output/2, 'adverse legal effect based solely on system output', 'celex:32024R1689/oj#art_26/par_10').
declared(initial_identification_potential_suspect/2, 'initial identification based on objective verifiable facts', 'celex:32024R1689/oj#art_26/par_10').
declared(registered_in_eu_database/1, 'system registered in EU database per art 71', 'celex:32024R1689/oj#art_26/par_8').
declared(makes_decisions_or_assists_decisions/1, 'system makes or assists decisions related to natural persons', 'celex:32024R1689/oj#art_26/par_11').
declared(referred_to_in_annex_3/1, 'system referred to in Annex 3', 'celex:32024R1689/oj#art_26/par_11').
declared(workers_representatives/1, 'representatives of workers', 'celex:32024R1689/oj#art_26/par_7').
declared(affected_workers/1, 'workers affected by AI system use', 'celex:32024R1689/oj#art_26/par_7').
declared(judicial_or_binding_administrative_authority/1, 'judicial or administrative authority with binding decision subject to judicial review', 'celex:32024R1689/oj#art_26/par_10').
declared(targeted_search/1, 'investigation for targeted search of person', 'celex:32024R1689/oj#art_26/par_10').
declared(suspected_or_convicted_person/1, 'person suspected or convicted of criminal offence', 'celex:32024R1689/oj#art_26/par_10').
declared(genuine_threat_criminal_offence/1, 'genuine and present or foreseeable threat of criminal offence', 'celex:32024R1689/oj#art_26/par_10').
declared(search_specific_missing_person/1, 'search for specific missing person', 'celex:32024R1689/oj#art_26/par_10').
declared(relevant_police_file/1, 'police file for documenting use', 'celex:32024R1689/oj#art_26/par_10').
declared(request_made/2, 'request made to authority', 'celex:32024R1689/oj#art_26/par_10').
must_ensure_compliance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_ensure_input_data_quality(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    controls_input_data(D, S),
    intended_purpose(S).
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(S).
must_inform_provider_distributor_and_authority(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_presented(D, S),
    \+ law_enforcement_deployer(D).
must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    risk_presented(D, S),
    \+ law_enforcement_deployer(D).
must_inform_serious_incident(D, incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    serious_incident_identified(D, S),
    \+ law_enforcement_deployer(D).
monitoring_deemed_fulfilled(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution(D).
must_keep_logs(D, logs(S, Period)) :-
    deployer(D),
    high_risk_ai_system(S),
    logs_under_control(D, S),
    period_appropriate_to_purpose(Period, S),
    period_at_least_months(Period, 6).
logs_maintained_under_financial_law(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    financial_institution(D).
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer(D),
    putting_into_service(S).
must_comply_with_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    (public_authority(D); union_institution(D)).
must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    (public_authority(D); union_institution(D)),
    \+ registered_in_eu_database(S).
must_use_art_13_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_request_authorisation_post_remote_biometric(D, use(S, Target)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    targeted_search(Target),
    suspected_or_convicted_person(P),
    \+ initial_identification_potential_suspect(Target, P).
must_request_authorisation_post_remote_biometric(D, use(S, Target)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    targeted_search(Target),
    suspected_or_convicted_person(P),
    initial_identification_potential_suspect(Target, P),
    within_hours(48).
must_stop_use_and_delete_data(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(D, use(S, _)).
prohibited_untargeted_law_enforcement_use(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    untargeted_use(S),
    law_enforcement(_D),
    \+ linked_to_criminal_offence(S),
    \+ linked_to_criminal_proceeding(S),
    \+ genuine_threat_criminal_offence(S),
    \+ search_specific_missing_person(S).
prohibited_adverse_legal_effect_solely_on_output(S) :-
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    adverse_legal_effect_based_solely_on_output(_D, S).
must_document_use(D, use(S, File)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S),
    relevant_police_file(File).
must_submit_annual_reports(D, reports(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    post_remote_biometric_identification_system(S).
must_inform_natural_persons(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    makes_decisions_or_assists_decisions(S).
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_26').
provenance(must_ensure_compliance_with_instructions/2, 'celex:32024R1689/oj#art_26/par_1').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26/par_2').
provenance(must_ensure_input_data_quality/2, 'celex:32024R1689/oj#art_26/par_4').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_provider_distributor_and_authority/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_serious_incident/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(monitoring_deemed_fulfilled/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(logs_maintained_under_financial_law/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26/par_7').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_use_art_13_information/2, 'celex:32024R1689/oj#art_26/par_9').
provenance(must_request_authorisation_post_remote_biometric/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_stop_use_and_delete_data/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_untargeted_law_enforcement_use/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_adverse_legal_effect_solely_on_output/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26/par_11').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26/par_12').
references('celex:32024R1689/oj#art_26/par_1', 'celex:32024R1689/oj#art_26/par_3').
references('celex:32024R1689/oj#art_26/par_1', 'celex:32024R1689/oj#art_26/par_6').
references('celex:32024R1689/oj#art_26/par_3', 'celex:32024R1689/oj#art_26/par_1').
references('celex:32024R1689/oj#art_26/par_3', 'celex:32024R1689/oj#art_26/par_2').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_26/par_5', 'celex:32024R1689/oj#art_26/par_5/unp_1').
references('celex:32024R1689/oj#art_26/par_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_26/par_8', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_26/par_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_26/par_9', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_26/par_9', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#art_26/par_10/unp_1').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32016L0680/oj#art_10').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32024R1689/oj#art_26/par_10/unp_5').
references('celex:32024R1689/oj#art_26/par_10', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_26/par_11', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_26/par_11', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_26/par_11', 'celex:32016L0680/oj#art_13').
references('celex:32024R1689/oj#art_26/par_12', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_27 ====
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment before deploying high-risk AI system', 'celex:32024R1689/oj#art_27/par_1').
declared(may_rely_on_existing_assessment/2, 'deployer may rely on previously conducted impact assessments in similar cases', 'celex:32024R1689/oj#art_27/par_2').
declared(must_update_assessment/2, 'deployer must update assessment when elements change', 'celex:32024R1689/oj#art_27/par_2').
declared(must_notify_market_surveillance_authority/2, 'deployer must notify market surveillance authority of assessment results', 'celex:32024R1689/oj#art_27/par_3').
declared(exempt_from_notification/1, 'deployer exempt from notification obligation in certain cases', 'celex:32024R1689/oj#art_27/par_3').
declared(assessment_complements_data_protection_impact_assessment/1, 'fundamental rights impact assessment complements existing data protection impact assessment', 'celex:32024R1689/oj#art_27/par_4').
declared(body_governed_by_public_law/1, 'entity governed by public law', 'celex:32024R1689/oj#art_27/par_1').
declared(private_entity_providing_public_services/1, 'private entity providing public services', 'celex:32024R1689/oj#art_27/par_1').
declared(deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c/2, 'deployer of high-risk AI system referred to in Annex III point 5(b) or 5(c)', 'celex:32024R1689/oj#art_27/par_1').
declared(high_risk_ai_system_referred_in_article_6_par_2/1, 'high-risk AI system referred to in Article 6(2)', 'celex:32024R1689/oj#art_27/par_1').
declared(high_risk_ai_system_intended_for_use_in_annex_3_point_2/1, 'high-risk AI system intended for use in area listed in Annex III point 2', 'celex:32024R1689/oj#art_27/par_1').
declared(first_use_of_high_risk_ai_system/2, 'first use of high-risk AI system by deployer', 'celex:32024R1689/oj#art_27/par_2').
declared(similar_case/2, 'similar case to previous deployment allowing reliance on existing assessment', 'celex:32024R1689/oj#art_27/par_2').
declared(previously_conducted_fundamental_rights_impact_assessment/2, 'previously conducted fundamental rights impact assessment', 'celex:32024R1689/oj#art_27/par_2').
declared(existing_impact_assessment_by_provider/2, 'existing impact assessment carried out by provider', 'celex:32024R1689/oj#art_27/par_2').
declared(element_changed_or_no_longer_up_to_date/2, 'element of assessment has changed or is no longer up to date', 'celex:32024R1689/oj#art_27/par_2').
declared(assessment_performed/2, 'fundamental rights impact assessment has been performed', 'celex:32024R1689/oj#art_27/par_3').
declared(data_protection_impact_assessment_conducted/1, 'data protection impact assessment has been conducted', 'celex:32024R1689/oj#art_27/par_4').
must_perform_fundamental_rights_impact_assessment(Deployer, assessment(S)) :-
    deployer(Deployer),
    high_risk_ai_system_referred_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_use_in_annex_3_point_2(S),
    (body_governed_by_public_law(Deployer) ; private_entity_providing_public_services(Deployer)).
must_perform_fundamental_rights_impact_assessment(Deployer, assessment(S)) :-
    deployer(Deployer),
    deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c(Deployer, S).
must_perform_fundamental_rights_impact_assessment(Deployer, assessment(S)) :-
    deployer(Deployer),
    first_use_of_high_risk_ai_system(Deployer, S),
    \+ may_rely_on_existing_assessment(Deployer, S).
may_rely_on_existing_assessment(Deployer, S) :-
    deployer(Deployer),
    similar_case(Deployer, S),
    (previously_conducted_fundamental_rights_impact_assessment(Deployer, S) ; existing_impact_assessment_by_provider(_Provider, S)).
must_update_assessment(Deployer, S) :-
    deployer(Deployer),
    assessment_performed(Deployer, S),
    element_changed_or_no_longer_up_to_date(Deployer, S).
must_notify_market_surveillance_authority(Deployer, results(assessment(S))) :-
    deployer(Deployer),
    assessment_performed(Deployer, S),
    \+ exempt_from_notification(Deployer).
assessment_complements_data_protection_impact_assessment(assessment(S)) :-
    must_perform_fundamental_rights_impact_assessment(_Deployer, assessment(S)),
    data_protection_impact_assessment_conducted(S).
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_existing_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/1, 'celex:32024R1689/oj#art_27').
provenance(assessment_complements_data_protection_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(body_governed_by_public_law/1, 'celex:32024R1689/oj#art_27').
provenance(private_entity_providing_public_services/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_of_high_risk_ai_system_referred_in_annex_3_point_5_b_or_c/2, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_referred_in_article_6_par_2/1, 'celex:32024R1689/oj#art_27').
provenance(high_risk_ai_system_intended_for_use_in_annex_3_point_2/1, 'celex:32024R1689/oj#art_27').
provenance(first_use_of_high_risk_ai_system/2, 'celex:32024R1689/oj#art_27').
provenance(similar_case/2, 'celex:32024R1689/oj#art_27').
provenance(previously_conducted_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(existing_impact_assessment_by_provider/2, 'celex:32024R1689/oj#art_27').
provenance(element_changed_or_no_longer_up_to_date/2, 'celex:32024R1689/oj#art_27').
provenance(assessment_performed/2, 'celex:32024R1689/oj#art_27').
provenance(data_protection_impact_assessment_conducted/1, 'celex:32024R1689/oj#art_27').
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
declared(must_designate_notifying_authority/2, 'Member State shall designate or establish at least one notifying authority', 'celex:32024R1689/oj#art_28').
declared(must_set_up_procedures/2, 'notifying authority shall set up procedures for assessment, designation and notification', 'celex:32024R1689/oj#art_28').
declared(must_carry_out_procedures/2, 'notifying authority shall carry out procedures for assessment, designation and notification', 'celex:32024R1689/oj#art_28').
declared(must_monitor/2, 'notifying authority shall monitor conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(must_develop_procedures_in_cooperation/1, 'procedures shall be developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(may_use_national_accreditation_body/2, 'Member State may decide assessment and monitoring is carried out by national accreditation body', 'celex:32024R1689/oj#art_28').
declared(no_conflict_of_interest/1, 'no conflict of interest arises with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(objectivity_and_impartiality_safeguarded/1, 'objectivity and impartiality of activities are safeguarded', 'celex:32024R1689/oj#art_28').
declared(notification_decisions_by_different_persons/1, 'decisions on notification taken by persons different from assessors', 'celex:32024R1689/oj#art_28').
declared(no_conformity_assessment_activities/1, 'notifying authority shall not offer or provide conformity assessment body activities', 'celex:32024R1689/oj#art_28').
declared(no_consultancy_services/1, 'notifying authority shall not offer or provide consultancy services on commercial or competitive basis', 'celex:32024R1689/oj#art_28').
declared(must_safeguard_confidentiality/2, 'notifying authority shall safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28').
declared(adequate_competent_personnel/1, 'notifying authority has adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
declared(personnel_expertise/2, 'competent personnel has necessary expertise in specified fields', 'celex:32024R1689/oj#art_28').
must_designate_notifying_authority(MemberState, Authority) :-
    member_state(MemberState),
    notifying_authority(Authority).
must_set_up_procedures(Authority, Procedures) :-
    notifying_authority(Authority),
    procedures_for_assessment_designation_notification(Procedures).
must_carry_out_procedures(Authority, Procedures) :-
    notifying_authority(Authority),
    procedures_for_assessment_designation_notification(Procedures).
must_monitor(Authority, Bodies) :-
    notifying_authority(Authority),
    conformity_assessment_body(Bodies).
must_develop_procedures_in_cooperation(Procedures) :-
    procedures_for_assessment_designation_notification(Procedures),
    notifying_authority(Authority1),
    notifying_authority(Authority2),
    Authority1 \= Authority2.
may_use_national_accreditation_body(MemberState, AccreditationBody) :-
    member_state(MemberState),
    national_accreditation_body(AccreditationBody).
no_conflict_of_interest(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_with_conformity_assessment_bodies(Authority).
objectivity_and_impartiality_safeguarded(Authority) :-
    notifying_authority(Authority).
notification_decisions_by_different_persons(Authority) :-
    notifying_authority(Authority),
    decision_makers(Authority, Deciders),
    assessors(Authority, Assessors),
    \+ overlap(Deciders, Assessors).
no_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority),
    \+ offers_conformity_assessment_body_activities(Authority).
no_consultancy_services(Authority) :-
    notifying_authority(Authority),
    \+ provides_consultancy_services(Authority, commercial_or_competitive).
must_safeguard_confidentiality(Authority, Information) :-
    notifying_authority(Authority),
    obtained_information(Authority, Information).
adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    personnel_count(Authority, Count),
    Count >= 1,
    competent_personnel(Authority, Personnel).
personnel_expertise(Personnel, Field) :-
    competent_personnel(_Authority, Personnel),
    field_of_expertise(Field),
    member(Field, [information_technologies, ai, law, supervision_of_fundamental_rights]).
procedures_for_assessment_designation_notification(procedures(assessment, designation, notification)).
field_of_expertise(information_technologies).
field_of_expertise(ai).
field_of_expertise(law).
field_of_expertise(supervision_of_fundamental_rights).
conflict_of_interest_with_conformity_assessment_bodies(Authority) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    conflict_of_interest(Authority, Body).
offers_conformity_assessment_body_activities(Authority) :-
    notifying_authority(Authority),
    conformity_assessment_body_activity(Activity),
    offers(Authority, Activity).
provides_consultancy_services(Authority, Basis) :-
    notifying_authority(Authority),
    consultancy_service(Service),
    provides(Authority, Service, Basis).
obtained_information(Authority, Information) :-
    notifying_authority(Authority),
    information(Information),
    obtains(Authority, Information).
decision_makers(Authority, Personnel) :-
    notifying_authority(Authority),
    personnel(Personnel),
    makes_notification_decisions(Personnel).
assessors(Authority, Personnel) :-
    notifying_authority(Authority),
    personnel(Personnel),
    carries_out_assessment(Personnel).
overlap(List1, List2) :-
    member(X, List1),
    member(X, List2).
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(must_set_up_procedures/2, 'celex:32024R1689/oj#art_28').
provenance(must_carry_out_procedures/2, 'celex:32024R1689/oj#art_28').
provenance(must_monitor/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop_procedures_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(no_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(no_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_expertise/2, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application/2, 'conformity assessment body shall submit application for notification', 'celex:32024R1689/oj#art_29/par_1').
declared(application_for_notification/2, 'application for notification submitted by body to authority', 'celex:32024R1689/oj#art_29/par_1').
declared(must_accompany_application/2, 'application shall be accompanied by specified documentation', 'celex:32024R1689/oj#art_29/par_2').
declared(description_of_conformity_assessment_activities/1, 'description of conformity assessment activities', 'celex:32024R1689/oj#art_29/par_2').
declared(conformity_assessment_module/1, 'conformity assessment module or modules', 'celex:32024R1689/oj#art_29/par_2').
declared(types_of_ai_systems_for_competence/1, 'types of AI systems for which body claims competence', 'celex:32024R1689/oj#art_29/par_2').
declared(accreditation_certificate/1, 'accreditation certificate issued by national accreditation body', 'celex:32024R1689/oj#art_29/par_2').
declared(attests_fulfilment_of_art_31/1, 'accreditation certificate attests fulfilment of Article 31 requirements', 'celex:32024R1689/oj#art_29/par_2').
declared(valid_document_existing_designation/1, 'valid document related to existing designation under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29/par_2').
declared(must_provide_documentary_evidence/2, 'body shall provide documentary evidence for verification of compliance', 'celex:32024R1689/oj#art_29/par_3').
declared(documentary_evidence_for_verification/1, 'documentary evidence necessary for verification, recognition and regular monitoring', 'celex:32024R1689/oj#art_29/par_3').
declared(may_use_designation_documents/2, 'documents and certificates from other designations may be used to support designation procedure', 'celex:32024R1689/oj#art_29/par_4').
declared(must_update_documentation/2, 'notified body shall update documentation when relevant changes occur', 'celex:32024R1689/oj#art_29/par_4').
declared(relevant_changes_occurred/1, 'relevant changes to the body or its activities have occurred', 'celex:32024R1689/oj#art_29/par_4').
must_submit_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState).
application_for_notification(Body, Authority) :-
    must_submit_application(Body, Authority).
must_accompany_application(Body, documentation(Description, Modules, Types, CertificateOrDocuments)) :-
    application_for_notification(Body, _Authority),
    description_of_conformity_assessment_activities(Description),
    conformity_assessment_module(Modules),
    types_of_ai_systems_for_competence(Types),
    ( accreditation_certificate(Certificate), attests_fulfilment_of_art_31(Certificate)
    ; valid_document_existing_designation(Documents)
    ).
must_provide_documentary_evidence(Body, evidence(Verification, Recognition, Monitoring)) :-
    application_for_notification(Body, _Authority),
    \+ accreditation_certificate(_),
    documentary_evidence_for_verification(Verification),
    documentary_evidence_for_verification(Recognition),
    documentary_evidence_for_verification(Monitoring).
may_use_designation_documents(Body, documents(ExistingDesignations)) :-
    notified_body(Body),
    valid_document_existing_designation(ExistingDesignations).
must_update_documentation(Body, documentation(Art29_2, Art29_3)) :-
    notified_body(Body),
    relevant_changes_occurred(Body),
    ( documentation_for_art_29_2(Art29_2)
    ; documentation_for_art_29_3(Art29_3)
    ).
documentation_for_art_29_2(Doc) :-
    description_of_conformity_assessment_activities(Doc).
documentation_for_art_29_2(Doc) :-
    conformity_assessment_module(Doc).
documentation_for_art_29_2(Doc) :-
    types_of_ai_systems_for_competence(Doc).
documentation_for_art_29_2(Doc) :-
    accreditation_certificate(Doc).
documentation_for_art_29_2(Doc) :-
    valid_document_existing_designation(Doc).
documentation_for_art_29_3(Doc) :-
    documentary_evidence_for_verification(Doc).
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(must_accompany_application/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_designation_documents/2, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(may_notify/2, 'notifying authority may notify a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(must_notify/2, 'notifying authority shall notify the Commission and other Member States', 'celex:32024R1689/oj#art_30').
declared(notification_includes/2, 'notification includes specified details', 'celex:32024R1689/oj#art_30').
declared(may_perform_activities/1, 'conformity assessment body may perform notified body activities', 'celex:32024R1689/oj#art_30').
declared(objections_raised/1, 'objections raised by Commission or other Member States', 'celex:32024R1689/oj#art_30').
declared(commission_decides_authorisation/2, 'Commission decides whether authorisation is justified', 'celex:32024R1689/oj#art_30').
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfies_requirements(Body, 'celex:32024R1689/oj#art_31').
must_notify(Authority, notification(Body, tool)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    electronic_notification_tool(tool),
    developed_and_managed(tool, commission).
notification_includes(Authority, details(Body, Activities, Modules, Types, Attestation)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    conformity_assessment_activities(Body, Activities),
    conformity_assessment_modules(Body, Modules),
    types_of_ai_systems_concerned(Body, Types),
    attestation_of_competence(Body, Attestation).
must_provide(Authority, documentary_evidence(Body, Competence, Arrangements)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body),
    \+ accreditation_certificate_notification(Body, 'celex:32024R1689/oj#art_29/par_2'),
    competence_attested(Body, Competence),
    monitoring_arrangements(Body, Arrangements),
    ensures_continued_satisfaction(Body, 'celex:32024R1689/oj#art_31').
may_perform_activities(Body) :-
    conformity_assessment_body(Body),
    notified_body(Body),
    \+ objections_raised(notification(Body)).
objections_raised(notification(Body)) :-
    conformity_assessment_body(Body),
    notification_sent(Authority, Body, Time),
    accreditation_certificate_notification(Body, 'celex:32024R1689/oj#art_29/par_2'),
    within_two_weeks(Time),
    objection(Commission, Body) ; objection(MemberState, Body).
objections_raised(notification(Body)) :-
    conformity_assessment_body(Body),
    notification_sent(Authority, Body, Time),
    documentary_evidence_notification(Body, 'celex:32024R1689/oj#art_29/par_3'),
    within_two_months(Time),
    objection(Commission, Body) ; objection(MemberState, Body).
commission_decides_authorisation(Decision, Body) :-
    objections_raised(notification(Body)),
    commission_consults(MemberState, Body),
    commission_decides(Decision, authorisation_justified(Body)),
    addressed_to(Decision, MemberState),
    addressed_to(Decision, Body).
provenance(may_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(must_provide/2, 'celex:32024R1689/oj#art_30').
provenance(may_perform_activities/1, 'celex:32024R1689/oj#art_30').
provenance(objections_raised/1, 'celex:32024R1689/oj#art_30').
provenance(commission_decides_authorisation/2, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(must_satisfy_requirements/2, 'entity must satisfy specified requirements', 'celex:32024R1689/oj#art_31').
declared(must_ensure_confidence/2, 'entity must ensure confidence in specified activities', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of/2, 'entity must be independent of specified party', 'celex:32024R1689/oj#art_31').
declared(must_not_be_involved_in/2, 'entity must not be involved in specified activities', 'celex:32024R1689/oj#art_31').
declared(must_not_represent/2, 'entity must not represent specified parties', 'celex:32024R1689/oj#art_31').
declared(must_not_conflict_with/2, 'entity must not engage in activities conflicting with specified principle', 'celex:32024R1689/oj#art_31').
declared(must_safeguard/2, 'entity must safeguard specified quality', 'celex:32024R1689/oj#art_31').
declared(must_document_procedures/2, 'entity must document and implement specified procedures', 'celex:32024R1689/oj#art_31').
declared(must_ensure_confidentiality/2, 'entity must ensure confidentiality of specified information', 'celex:32024R1689/oj#art_31').
declared(must_have_procedures/2, 'entity must have procedures for specified purpose', 'celex:32024R1689/oj#art_31').
declared(must_take_out_insurance/2, 'entity must take out insurance for specified activities', 'celex:32024R1689/oj#art_31').
declared(must_be_capable_of/2, 'entity must be capable of specified tasks', 'celex:32024R1689/oj#art_31').
declared(must_have_competences/2, 'entity must have competences for specified purpose', 'celex:32024R1689/oj#art_31').
declared(must_participate_in/2, 'entity must participate in specified activities', 'celex:32024R1689/oj#art_31').
declared(must_be_represented_in/2, 'entity must be represented in specified organisations', 'celex:32024R1689/oj#art_31').
declared(must_ensure_awareness/2, 'entity must ensure awareness of specified matters', 'celex:32024R1689/oj#art_31').
declared(established_under_national_law/1, 'entity established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(has_legal_personality/1, 'entity has legal personality', 'celex:32024R1689/oj#art_31').
declared(organisational_requirements/1, 'organisational requirements for notified body', 'celex:32024R1689/oj#art_31').
declared(quality_management_requirements/1, 'quality management requirements for notified body', 'celex:32024R1689/oj#art_31').
declared(resources_requirements/1, 'resources requirements for notified body', 'celex:32024R1689/oj#art_31').
declared(process_requirements/1, 'process requirements for notified body', 'celex:32024R1689/oj#art_31').
declared(cybersecurity_requirements/1, 'cybersecurity requirements for notified body', 'celex:32024R1689/oj#art_31').
declared(economic_interest_in/2, 'party has economic interest in specified system', 'celex:32024R1689/oj#art_31').
declared(competitor_of/2, 'entity is competitor of specified provider', 'celex:32024R1689/oj#art_31').
declared(necessary_for_operations/2, 'system is necessary for operations of specified body', 'celex:32024R1689/oj#art_31').
declared(used_for_personal_purposes/2, 'system is used for personal purposes by specified party', 'celex:32024R1689/oj#art_31').
declared(top_level_management/1, 'top-level management of conformity assessment body', 'celex:32024R1689/oj#art_31').
declared(personnel_responsible_for/2, 'personnel responsible for specified tasks', 'celex:32024R1689/oj#art_31').
declared(directly_involved_in/2, 'entity is directly involved in specified activity', 'celex:32024R1689/oj#art_31').
declared(design_of/1, 'design of high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(development_of/1, 'development of high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(marketing_of/1, 'marketing of high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(use_of/1, 'use of high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(represent_parties_engaged_in/2, 'entity represents parties engaged in specified activities', 'celex:32024R1689/oj#art_31').
declared(conflict_with_independence/2, 'activity conflicts with independence of judgement or integrity', 'celex:32024R1689/oj#art_31').
declared(consultancy_services/1, 'consultancy services', 'celex:32024R1689/oj#art_31').
declared(independence/1, 'independence of activities', 'celex:32024R1689/oj#art_31').
declared(objectivity/1, 'objectivity of activities', 'celex:32024R1689/oj#art_31').
declared(impartiality/1, 'impartiality of activities', 'celex:32024R1689/oj#art_31').
declared(structure_and_procedures_for_impartiality/1, 'structure and procedures to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(personnel_of/2, 'personnel of specified entity', 'celex:32024R1689/oj#art_31').
declared(committees_of/2, 'committees of specified entity', 'celex:32024R1689/oj#art_31').
declared(subsidiaries_of/2, 'subsidiaries of specified entity', 'celex:32024R1689/oj#art_31').
declared(subcontractors_of/2, 'subcontractors of specified entity', 'celex:32024R1689/oj#art_31').
declared(associated_body_of/2, 'associated body of specified entity', 'celex:32024R1689/oj#art_31').
declared(associated_personnel_of/2, 'associated personnel of external body of specified entity', 'celex:32024R1689/oj#art_31').
declared(information_from_conformity_assessment/1, 'information from conformity assessment activities', 'celex:32024R1689/oj#art_31').
declared(disclosure_required_by_law/1, 'disclosure of information is required by law', 'celex:32024R1689/oj#art_31').
declared(professional_secrecy/2, 'professional secrecy obligation of specified staff', 'celex:32024R1689/oj#art_31').
declared(information_from_tasks_under_regulation/1, 'information obtained in carrying out tasks under the regulation', 'celex:32024R1689/oj#art_31').
declared(notifying_authority_of_member_state/2, 'notifying authority of Member State where activities are carried out', 'celex:32024R1689/oj#art_31').
declared(due_account_of_provider_characteristics/1, 'procedures taking due account of provider characteristics', 'celex:32024R1689/oj#art_31').
declared(size_of_provider/1, 'size of provider', 'celex:32024R1689/oj#art_31').
declared(sector_of_provider/1, 'sector in which provider operates', 'celex:32024R1689/oj#art_31').
declared(structure_of_provider/1, 'structure of provider', 'celex:32024R1689/oj#art_31').
declared(complexity_of_ai_system/1, 'degree of complexity of AI system', 'celex:32024R1689/oj#art_31').
declared(liability_insurance_for/2, 'liability insurance for conformity assessment activities', 'celex:32024R1689/oj#art_31').
declared(liability_assumed_by_member_state/2, 'liability assumed by Member State in accordance with national law', 'celex:32024R1689/oj#art_31').
declared(member_state_directly_responsible/2, 'Member State is directly responsible for conformity assessment', 'celex:32024R1689/oj#art_31').
declared(highest_professional_integrity/1, 'highest degree of professional integrity', 'celex:32024R1689/oj#art_31').
declared(requisite_competence/2, 'requisite competence in specific field', 'celex:32024R1689/oj#art_31').
declared(tasks_carried_out_by/2, 'tasks carried out by specified party', 'celex:32024R1689/oj#art_31').
declared(tasks_carried_out_on_behalf_of/2, 'tasks carried out on behalf of specified body', 'celex:32024R1689/oj#art_31').
declared(sufficient_internal_competences/2, 'sufficient internal competences to evaluate external tasks', 'celex:32024R1689/oj#art_31').
declared(permanent_availability_of_personnel/1, 'permanent availability of sufficient personnel', 'celex:32024R1689/oj#art_31').
declared(administrative_personnel/1, 'administrative personnel', 'celex:32024R1689/oj#art_31').
declared(technical_personnel/1, 'technical personnel', 'celex:32024R1689/oj#art_31').
declared(legal_personnel/1, 'legal personnel', 'celex:32024R1689/oj#art_31').
declared(scientific_personnel/1, 'scientific personnel', 'celex:32024R1689/oj#art_31').
declared(experience_and_knowledge_of/2, 'experience and knowledge relating to specified matters', 'celex:32024R1689/oj#art_31').
declared(relevant_types_of_ai_systems/1, 'relevant types of AI systems', 'celex:32024R1689/oj#art_31').
declared(data_and_data_computing/1, 'data and data computing', 'celex:32024R1689/oj#art_31').
declared(requirements_of_chapter_3_section_2/1, 'requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_31').
declared(coordination_activities/1, 'coordination activities referred to in Article 38', 'celex:32024R1689/oj#art_31').
declared(european_standardisation_organisations/1, 'European standardisation organisations', 'celex:32024R1689/oj#art_31').
declared(relevant_standards/1, 'relevant standards', 'celex:32024R1689/oj#art_31').
must_be_established_under_national_law(B) :-
    notified_body(B),
    established_under_national_law(B),
    has_legal_personality(B).
provenance(must_be_established_under_national_law/1, 'celex:32024R1689/oj#art_31').
must_satisfy_requirements(B, organisational_requirements) :-
    notified_body(B).
must_satisfy_requirements(B, quality_management_requirements) :-
    notified_body(B).
must_satisfy_requirements(B, resources_requirements) :-
    notified_body(B).
must_satisfy_requirements(B, process_requirements) :-
    notified_body(B).
must_satisfy_requirements(B, cybersecurity_requirements) :-
    notified_body(B).
provenance(must_satisfy_requirements/2, 'celex:32024R1689/oj#art_31').
must_ensure_confidence(B, performance_of(B)) :-
    notified_body(B).
must_ensure_confidence(B, results_of(conformity_assessment_activities(B))) :-
    notified_body(B).
provenance(must_ensure_confidence/2, 'celex:32024R1689/oj#art_31').
must_be_independent_of(B, provider_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S).
must_be_independent_of(B, operator_with_economic_interest(S)) :-
    notified_body(B),
    high_risk_ai_system(S),
    economic_interest_in(_O, S),
    operator(_O),
    conformity_assessment_activities(B, S).
must_be_independent_of(B, competitor_of_provider_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S),
    provider(P),
    competitor_of(_C, P),
    conformity_assessment_activities(B, S).
exempt_independence_requirement(B, use_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S),
    necessary_for_operations(S, B).
exempt_independence_requirement(B, use_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S),
    used_for_personal_purposes(S, _Person).
provenance(must_be_independent_of/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_independence_requirement/2, 'celex:32024R1689/oj#art_31').
must_not_be_involved_in(B, design_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S).
must_not_be_involved_in(B, development_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S).
must_not_be_involved_in(B, marketing_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S).
must_not_be_involved_in(B, use_of(S)) :-
    notified_body(B),
    high_risk_ai_system(S).
must_not_represent(B, parties_engaged_in(activities_for(S))) :-
    notified_body(B),
    high_risk_ai_system(S).
must_not_conflict_with(B, independence_of_judgement) :-
    notified_body(B).
must_not_conflict_with(B, integrity_in_relation_to(conformity_assessment_activities(B))) :-
    notified_body(B).
must_not_conflict_with(B, consultancy_services) :-
    notified_body(B).
provenance(must_not_be_involved_in/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_conflict_with/2, 'celex:32024R1689/oj#art_31').
must_safeguard(B, independence) :-
    notified_body(B).
must_safeguard(B, objectivity) :-
    notified_body(B).
must_safeguard(B, impartiality) :-
    notified_body(B).
must_document_procedures(B, structure_and_procedures_for_impartiality(B)) :-
    notified_body(B).
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_31').
provenance(must_document_procedures/2, 'celex:32024R1689/oj#art_31').
must_ensure_confidentiality(B, information_from_conformity_assessment(B)) :-
    notified_body(B),
    \+ disclosure_required_by_law(information_from_conformity_assessment(B)).
professional_secrecy(staff_of(B), information_from_tasks_under_regulation(B)) :-
    notified_body(B).
exempt_confidentiality(B, notifying_authority_of_member_state(_MS)) :-
    notified_body(B).
provenance(must_ensure_confidentiality/2, 'celex:32024R1689/oj#art_31').
provenance(professional_secrecy/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_confidentiality/2, 'celex:32024R1689/oj#art_31').
must_have_procedures(B, due_account_of_provider_characteristics(S)) :-
    notified_body(B),
    high_risk_ai_system(S),
    provider(P),
    size_of_provider(P),
    sector_of_provider(P),
    structure_of_provider(P),
    complexity_of_ai_system(S).
provenance(must_have_procedures/2, 'celex:32024R1689/oj#art_31').
must_take_out_insurance(B, liability_insurance_for(conformity_assessment_activities(B))) :-
    notified_body(B),
    \+ liability_assumed_by_member_state(_MS, B),
    \+ member_state_directly_responsible(_MS, conformity_assessment_activities(B)).
provenance(must_take_out_insurance/2, 'celex:32024R1689/oj#art_31').
must_be_capable_of(B, tasks_under_regulation) :-
    notified_body(B),
    highest_professional_integrity(B),
    requisite_competence(B, specific_field).
must_be_capable_of(B, tasks_carried_out_by(B, tasks_under_regulation)) :-
    notified_body(B).
must_be_capable_of(B, tasks_carried_out_on_behalf_of(B, tasks_under_regulation)) :-
    notified_body(B).
provenance(must_be_capable_of/2, 'celex:32024R1689/oj#art_31').
must_have_competences(B, evaluate_tasks_conducted_by_external_parties) :-
    notified_body(B),
    sufficient_internal_competences(B, external_parties).
must_have_permanent_availability(B, personnel(administrative)) :-
    notified_body(B),
    experience_and_knowledge_of(personnel, relevant_types_of_ai_systems).
must_have_permanent_availability(B, personnel(technical)) :-
    notified_body(B),
    experience_and_knowledge_of(personnel, relevant_types_of_ai_systems).
must_have_permanent_availability(B, personnel(legal)) :-
    notified_body(B),
    experience_and_knowledge_of(personnel, relevant_types_of_ai_systems).
must_have_permanent_availability(B, personnel(scientific)) :-
    notified_body(B),
    experience_and_knowledge_of(personnel, relevant_types_of_ai_systems).
experience_and_knowledge_required(B, relevant_types_of_ai_systems) :-
    notified_body(B).
experience_and_knowledge_required(B, data_and_data_computing) :-
    notified_body(B).
experience_and_knowledge_required(B, requirements_of_chapter_3_section_2) :-
    notified_body(B).
provenance(must_have_competences/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability/2, 'celex:32024R1689/oj#art_31').
provenance(experience_and_knowledge_required/2, 'celex:32024R1689/oj#art_31').
must_participate_in(B, coordination_activities) :-
    notified_body(B).
must_be_represented_in(B, european_standardisation_organisations) :-
    notified_body(B).
must_ensure_awareness(B, relevant_standards) :-
    notified_body(B),
    \+ must_be_represented_in(B, european_standardisation_organisations).
provenance(must_participate_in/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_represented_in/2, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_awareness/2, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_compliant_notified_body/1, 'conformity assessment body presumed to comply with Article 31 requirements', 'celex:32024R1689/oj#art_32').
declared(demonstrates_conformity_with_harmonised_standards/1, 'conformity assessment body demonstrates conformity with relevant harmonised standards', 'celex:32024R1689/oj#art_32').
declared(references_published_in_official_journal/1, 'references of harmonised standards published in Official Journal', 'celex:32024R1689/oj#art_32').
declared(harmonised_standards_cover_requirements/2, 'harmonised standards cover the applicable Article 31 requirements', 'celex:32024R1689/oj#art_32').
presumed_compliant_notified_body(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B),
    references_published_in_official_journal(_Refs),
    harmonised_standards_cover_requirements(_Standards, art_31_requirements).
provenance(presumed_compliant_notified_body/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(references_published_in_official_journal/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standards_cover_requirements/2, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(must_ensure_requirements_met/2, 'notified body must ensure subcontractor or subsidiary meets requirements', 'celex:32024R1689/oj#art_33').
declared(must_inform/2, 'notified body must inform notifying authority', 'celex:32024R1689/oj#art_33').
declared(takes_full_responsibility/2, 'notified body takes full responsibility for tasks performed by others', 'celex:32024R1689/oj#art_33').
declared(permitted_subcontracting/2, 'subcontracting or subsidiary activity is permitted', 'celex:32024R1689/oj#art_33').
declared(must_make_publicly_available/2, 'notified body must make list publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_at_disposal/3, 'documents must be kept at disposal of notifying authority for period', 'celex:32024R1689/oj#art_33').
must_ensure_requirements_met(Body, SubcontractorOrSubsidiary) :-
    notified_body(Body),
    (subcontractor(SubcontractorOrSubsidiary) ; subsidiary(SubcontractorOrSubsidiary)),
    tasks_connected_with_conformity_assessment(SubcontractorOrSubsidiary, Body).
must_inform(Body, notifying_authority(Authority)) :-
    must_ensure_requirements_met(Body, _),
    notifying_authority(Authority).
takes_full_responsibility(Body, Tasks) :-
    notified_body(Body),
    performed_by(SubcontractorOrSubsidiary, Tasks),
    (subcontractor(SubcontractorOrSubsidiary) ; subsidiary(SubcontractorOrSubsidiary)).
permitted_subcontracting(Body, Tasks) :-
    notified_body(Body),
    tasks_connected_with_conformity_assessment(Tasks),
    agreement_of_provider(Provider),
    provider(Provider).
must_make_publicly_available(Body, list_of_subsidiaries(Body)) :-
    notified_body(Body),
    subsidiary(_).
must_keep_at_disposal(Body, documents(AssessmentOrWork), period(years(5), from(termination_date(Subcontracting)))) :-
    notified_body(Body),
    (assessment_of_qualifications(Subcontracting) ; work_carried_out(Subcontracting)),
    (subcontractor(Subcontracting) ; subsidiary(Subcontracting)),
    termination_date(Subcontracting, _).
provenance(must_ensure_requirements_met/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform/2, 'celex:32024R1689/oj#art_33').
provenance(takes_full_responsibility/2, 'celex:32024R1689/oj#art_33').
provenance(permitted_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_33').
provenance(must_keep_at_disposal/3, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body shall verify conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'notified body shall avoid unnecessary burdens for provider', 'celex:32024R1689/oj#art_34').
declared(must_take_account_of_provider_characteristics/2, 'notified body shall take account of provider size, sector, structure, system complexity', 'celex:32024R1689/oj#art_34').
declared(must_respect_required_rigour_and_protection/2, 'notified body shall respect degree of rigour and level of protection required', 'celex:32024R1689/oj#art_34').
declared(must_make_available_documentation/2, 'notified body shall make available and submit documentation upon request', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment_procedure_for(System, Procedure),
    set_out_in(Procedure, 'celex:32024R1689/oj#art_43').
must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    performing_activities(Body, _System).
must_take_account_of_provider_characteristics(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    performing_activities(Body, System),
    high_risk_ai_system(System),
    size_of_provider(Provider, _Size),
    sector_of_provider(Provider, _Sector),
    structure_of_provider(Provider, _Structure),
    degree_of_complexity(System, _Complexity).
must_respect_required_rigour_and_protection(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    degree_of_rigour_required(System, _Rigour),
    level_of_protection_required(System, _Protection),
    compliance_with_requirements(System, 'celex:32024R1689/oj').
must_make_available_documentation(Body, documentation(ProviderDocs, NotifyingAuthority)) :-
    notified_body(Body),
    providers_documentation(ProviderDocs),
    notifying_authority(NotifyingAuthority),
    referred_to_in(NotifyingAuthority, 'celex:32024R1689/oj#art_28'),
    assessment_designation_notification_monitoring_activities(NotifyingAuthority),
    assessment_outlined_in('celex:32024R1689/oj#chp_3/sec_4').
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
declared(must_publish_list/2, 'Commission shall make publicly available the list of notified bodies', 'celex:32024R1689/oj#art_35').
declared(must_ensure_list_up_to_date/2, 'Commission shall ensure the list is kept up to date', 'celex:32024R1689/oj#art_35').
declared(notified_body_activity/2, 'activity for which a body has been notified', 'celex:32024R1689/oj#art_35').
must_assign_identification_number(Commission, Body) :-
    ai_office(Commission),
    notified_body(Body).
must_publish_list(Commission, list_entry(Body, Number, Activities)) :-
    ai_office(Commission),
    notified_body(Body),
    identification_number(Body, Number),
    findall(Activity, notified_body_activity(Body, Activity), Activities).
must_ensure_list_up_to_date(Commission, list_entry(Body, Number, Activities)) :-
    ai_office(Commission),
    notified_body(Body),
    identification_number(Body, Number),
    findall(Activity, notified_body_activity(Body, Activity), Activities).
declared(identification_number/2, 'single identification number assigned to a notified body', 'celex:32024R1689/oj#art_35').
identification_number(Body, Number) :-
    notified_body(Body),
    must_assign_identification_number(_Commission, Body).
provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_publish_list/2, 'celex:32024R1689/oj#art_35').
provenance(must_ensure_list_up_to_date/2, 'celex:32024R1689/oj#art_35').
provenance(identification_number/2, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify_change/2, 'notifying authority shall notify relevant parties of changes', 'celex:32024R1689/oj#art_36/par_1').
declared(must_use_notification_tool/2, 'notification shall be made via electronic tool', 'celex:32024R1689/oj#art_36/par_1').
declared(extension_of_scope_procedure/1, 'procedures for extensions of notification scope apply', 'celex:32024R1689/oj#art_36/par_2').
declared(other_changes_procedure/1, 'procedures for non-extension changes apply', 'celex:32024R1689/oj#art_36/par_2').
declared(must_inform_cessation/3, 'notified body shall inform parties of cessation', 'celex:32024R1689/oj#art_36/par_3').
declared(planned_cessation/1, 'cessation is planned rather than immediate', 'celex:32024R1689/oj#art_36/par_3').
declared(certificate_validity_period/2, 'certificates remain valid for specified period after cessation', 'celex:32024R1689/oj#art_36/par_3').
declared(another_body_assumes_responsibility/2, 'another notified body confirms assumption of responsibilities', 'celex:32024R1689/oj#art_36/par_3').
declared(must_complete_full_assessment/2, 'assuming body must complete full assessment by deadline', 'celex:32024R1689/oj#art_36/par_3').
declared(must_withdraw_designation/2, 'notifying authority shall withdraw designation', 'celex:32024R1689/oj#art_36/par_3').
declared(must_investigate_failure/2, 'notifying authority shall investigate failure to meet requirements', 'celex:32024R1689/oj#art_36/par_4').
declared(sufficient_reason_for_concern/2, 'notifying authority has sufficient reason for concern', 'celex:32024R1689/oj#art_36/par_4').
declared(must_give_opportunity/2, 'notified body shall be given opportunity to make views known', 'celex:32024R1689/oj#art_36/par_4').
declared(must_restrict_suspend_withdraw/2, 'notifying authority shall restrict, suspend or withdraw designation', 'celex:32024R1689/oj#art_36/par_4').
declared(must_inform_commission_and_states/2, 'notifying authority shall inform Commission and Member States', 'celex:32024R1689/oj#art_36/par_4').
declared(must_inform_providers_designation_change/2, 'notified body shall inform providers of designation change', 'celex:32024R1689/oj#art_36/par_5').
declared(must_ensure_files_kept/2, 'notifying authority shall ensure files are kept and made available', 'celex:32024R1689/oj#art_36/par_6').
declared(must_assess_certificate_impact/2, 'notifying authority shall assess impact on certificates', 'celex:32024R1689/oj#art_36/par_7').
declared(must_submit_report_findings/2, 'notifying authority shall submit report on findings', 'celex:32024R1689/oj#art_36/par_7').
declared(must_require_suspend_withdraw_certificates/2, 'notifying authority shall require suspension or withdrawal of unduly issued certificates', 'celex:32024R1689/oj#art_36/par_7').
declared(must_inform_certificate_action/2, 'notifying authority shall inform about certificates requiring suspension or withdrawal', 'celex:32024R1689/oj#art_36/par_7').
declared(must_provide_certificate_information/2, 'notifying authority shall provide relevant certificate information', 'celex:32024R1689/oj#art_36/par_7').
declared(certificates_remain_valid/1, 'certificates remain valid under specified circumstances', 'celex:32024R1689/oj#art_36/par_8').
declared(no_risk_confirmed/2, 'notifying authority confirms no risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_36/par_8').
declared(timeline_for_remedy_outlined/2, 'notifying authority outlines timeline for remedial actions', 'celex:32024R1689/oj#art_36/par_8').
declared(no_new_certificates_during_suspension/2, 'notifying authority confirms no relevant certificates will be issued during suspension', 'celex:32024R1689/oj#art_36/par_8').
declared(capability_to_continue_monitoring/2, 'notified body has capability to continue monitoring existing certificates', 'celex:32024R1689/oj#art_36/par_8').
declared(must_confirm_qualified_body_assumption/2, 'provider shall confirm another qualified body assumes functions', 'celex:32024R1689/oj#art_36/par_8').
declared(certificates_remain_valid_nine_months/1, 'certificates remain valid for nine months after withdrawal', 'celex:32024R1689/oj#art_36/par_9').
declared(national_authority_confirms_no_risk/2, 'national competent authority confirms no risk associated with systems', 'celex:32024R1689/oj#art_36/par_9').
declared(another_body_assumes_immediate_responsibility/2, 'another notified body confirms immediate responsibility assumption', 'celex:32024R1689/oj#art_36/par_9').
declared(must_complete_assessment_within_12_months/2, 'assuming body must complete assessment within 12 months', 'celex:32024R1689/oj#art_36/par_9').
declared(must_immediately_inform_parties/2, 'national authority or assuming body shall immediately inform relevant parties', 'celex:32024R1689/oj#art_36/par_9').
must_notify_change(Authority, change(Notification)) :-
    notifying_authority(Authority),
    notified_body(Body),
    notified(Body),
    relevant_change(Notification, Body).
must_use_notification_tool(Authority, change(Notification)) :-
    must_notify_change(Authority, change(Notification)).
extension_of_scope_procedure(Change) :-
    change_to_notification(Change),
    extension_of_scope(Change).
other_changes_procedure(Change) :-
    change_to_notification(Change),
    \+ extension_of_scope(Change).
must_inform_cessation(Body, parties(Authority, Providers)) :-
    notified_body(Body),
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    providers_concerned(Providers, Body),
    decides_to_cease_activities(Body).
must_inform_cessation(Body, parties(Authority, Providers)) :-
    notified_body(Body),
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    providers_concerned(Providers, Body),
    planned_cessation(Body),
    \+ informs_within_one_year(Body, Authority).
planned_cessation(Body) :-
    notified_body(Body),
    planned_cessation_activity(Body).
certificate_validity_period(Certificate, months(9)) :-
    certificate_issued_by(Certificate, Body),
    ceased_activities(Body),
    another_body_assumes_responsibility(AnotherBody, Certificate),
    notified_body(AnotherBody),
    confirms_in_writing(AnotherBody, assumption(Certificate)).
must_complete_full_assessment(AnotherBody, affected_systems(Systems)) :-
    another_body_assumes_responsibility(AnotherBody, Certificate),
    certificate_covers(Certificate, Systems),
    high_risk_ai_system(Systems),
    end_of_nine_month_period(Deadline),
    before(assessment_completion(AnotherBody, Systems), Deadline).
must_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    conformity_assessment_body(Body),
    ceased_activities(Body).
sufficient_reason_for_concern(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    (no_longer_meets_requirements(Body, art_31) ; failing_to_fulfil_obligations(Body)).
must_investigate_failure(Authority, Body) :-
    sufficient_reason_for_concern(Authority, Body),
    \+ investigation_conducted(Authority, Body).
must_give_opportunity(Body, objections) :-
    notifying_authority(Authority),
    notified_body(Body),
    investigation_conducted(Authority, Body),
    objections_raised(Authority, Body).
must_restrict_suspend_withdraw(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    conclusion_reached(Authority, Body, no_longer_meets_requirements_or_failing_obligations),
    \+ designation_already_restricted(Body),
    \+ designation_already_suspended(Body),
    \+ designation_already_withdrawn(Body).
must_inform_commission_and_states(Authority, action(Body, Action)) :-
    must_restrict_suspend_withdraw(Authority, Body),
    action_taken(Authority, Body, Action).
must_inform_providers_designation_change(Body, Providers) :-
    notified_body(Body),
    designation_affected(Body, [suspended, restricted, withdrawn]),
    providers_concerned(Providers, Body),
    \+ informed_within_ten_days(Body, Providers).
must_ensure_files_kept(Authority, files(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body, [restricted, suspended, withdrawn]).
must_assess_certificate_impact(Authority, certificates(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body, [restricted, suspended, withdrawn]).
must_submit_report_findings(Authority, report(Impact)) :-
    must_assess_certificate_impact(Authority, certificates(Body)),
    impact_assessed(Authority, Body, Impact),
    within(months(3), notification_of_changes(Authority), submission(report(Authority, Impact))).
must_require_suspend_withdraw_certificates(Authority, unduly_issued(Certificates)) :-
    notifying_authority(Authority),
    notified_body(Body),
    unduly_issued_certificates(Certificates, Body),
    \+ certificates_suspended_or_withdrawn(Certificates).
must_inform_certificate_action(Authority, certificates(Certificates)) :-
    must_require_suspend_withdraw_certificates(Authority, unduly_issued(Certificates)).
must_provide_certificate_information(Authority, certificates(Certificates)) :-
    must_require_suspend_withdraw_certificates(Authority, unduly_issued(Certificates)),
    national_competent_authority(NationalAuthority, MemberState),
    registered_place_of_business(Provider, MemberState),
    provider(Provider),
    certificate_covers(Certificate, System),
    system_by_provider(System, Provider),
    member(Certificate, Certificates).
certificates_remain_valid(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_affected(Body, [suspended, restricted]),
    \+ unduly_issued(Certificate),
    no_risk_confirmed(Authority, Certificate),
    timeline_for_remedy_outlined(Authority, Body),
    within(months(1), suspension_or_restriction(Body), confirmation(Authority, no_risk(Certificate))).
certificates_remain_valid(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_affected(Body, [suspended, restricted]),
    \+ unduly_issued(Certificate),
    no_new_certificates_during_suspension(Authority, Body),
    capability_to_continue_monitoring(Body, existing_certificates),
    notified_body_has_capability(Body, monitoring).
certificates_remain_valid(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_affected(Body, [suspended, restricted]),
    \+ unduly_issued(Certificate),
    no_new_certificates_during_suspension(Authority, Body),
    \+ capability_to_continue_monitoring(Body, existing_certificates),
    must_confirm_qualified_body_assumption(Provider, temporary_assumption(AnotherBody, Certificates)),
    certificate_covers(Certificate, System),
    system_by_provider(System, Provider),
    member(Certificate, Certificates),
    within(months(3), suspension_or_restriction(Body), confirmation(Provider, AnotherBody)).
must_confirm_qualified_body_assumption(Provider, temporary_assumption(AnotherBody, Certificates)) :-
    provider(Provider),
    notified_body(AnotherBody),
    \+ designation_affected(AnotherBody, [suspended, restricted, withdrawn]),
    certificate_covers(Certificate, System),
    system_by_provider(System, Provider),
    member(Certificate, Certificates),
    national_competent_authority(NationalAuthority, MemberState),
    registered_place_of_business(Provider, MemberState).
certificates_remain_valid_nine_months(Certificate) :-
    certificate(Certificate),
    issued_by(Certificate, Body),
    designation_withdrawn(Body),
    \+ unduly_issued(Certificate),
    national_authority_confirms_no_risk(NationalAuthority, System),
    certificate_covers(Certificate, System),
    high_risk_ai_system(System),
    another_body_assumes_immediate_responsibility(AnotherBody, System),
    must_complete_assessment_within_12_months(AnotherBody, System).
national_authority_confirms_no_risk(NationalAuthority, System) :-
    national_competent_authority(NationalAuthority, MemberState),
    provider(Provider),
    registered_place_of_business(Provider, MemberState),
    system_by_provider(System, Provider),
    high_risk_ai_system(System),
    confirms_no_risk(NationalAuthority, health_safety_fundamental_rights, System).
another_body_assumes_immediate_responsibility(AnotherBody, System) :-
    notified_body(AnotherBody),
    \+ designation_affected(AnotherBody, [suspended, restricted, withdrawn]),
    confirms_in_writing(AnotherBody, immediate_responsibility(System)).
must_complete_assessment_within_12_months(AnotherBody, System) :-
    another_body_assumes_immediate_responsibility(AnotherBody, System),
    high_risk_ai_system(System),
    within(months(12), withdrawal_of_designation(Body), completion(assessment(AnotherBody, System))).
provisory_validity_extended(Certificate, additional_months(M)) :-
    certificates_remain_valid_nine_months(Certificate),
    national_competent_authority(NationalAuthority, MemberState),
    provider(Provider),
    registered_place_of_business(Provider, MemberState),
    system_by_provider(System, Provider),
    certificate_covers(Certificate, System),
    extends_validity(NationalAuthority, Certificate, additional_months(M)),
    M =< 12,
    total_extended_period(Certificate, Total),
    Total =< months(12).
must_immediately_inform_parties(AuthorityOrBody, change_of_designation(Body)) :-
    (national_competent_authority(AuthorityOrBody, _) ; notified_body(AuthorityOrBody)),
    assuming_functions(AuthorityOrBody, Body),
    designation_affected(Body, [withdrawn, suspended, restricted]).
provenance(must_notify_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_use_notification_tool/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_procedure/1, 'celex:32024R1689/oj#art_36').
provenance(other_changes_procedure/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_cessation/3, 'celex:32024R1689/oj#art_36').
provenance(planned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_36').
provenance(another_body_assumes_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_full_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason_for_concern/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate_failure/2, 'celex:32024R1689/oj#art_36').
provenance(must_give_opportunity/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_commission_and_states/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_designation_change/2, 'celex:32024R1689/oj#art_36').
provenance(must_ensure_files_kept/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_certificate_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_findings/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspend_withdraw_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_certificate_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_certificate_information/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid/1, 'celex:32024R1689/oj#art_36').
provenance(no_risk_confirmed/2, 'celex:32024R1689/oj#art_36').
provenance(timeline_for_remedy_outlined/2, 'celex:32024R1689/oj#art_36').
provenance(no_new_certificates_during_suspension/2, 'celex:32024R1689/oj#art_36').
provenance(capability_to_continue_monitoring/2, 'celex:32024R1689/oj#art_36').
provenance(must_confirm_qualified_body_assumption/2, 'celex:32024R1689/oj#art_36').
provenance(certificates_remain_valid_nine_months/1, 'celex:32024R1689/oj#art_36').
provenance(national_authority_confirms_no_risk/2, 'celex:32024R1689/oj#art_36').
provenance(another_body_assumes_immediate_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment_within_12_months/2, 'celex:32024R1689/oj#art_36').
provenance(provisory_validity_extended/2, 'celex:32024R1689/oj#art_36').
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
declared(must_investigate/2, 'Commission shall investigate cases of doubt', 'celex:32024R1689/oj#art_37').
declared(reasons_to_doubt_competence/1, 'reasons to doubt competence or continued fulfilment of requirements', 'celex:32024R1689/oj#art_37').
declared(must_provide_information/2, 'notifying authority shall provide information on request', 'celex:32024R1689/oj#art_37').
declared(must_treat_confidentially/2, 'Commission shall treat information confidentially', 'celex:32024R1689/oj#art_37').
declared(investigation/1, 'investigation by the Commission', 'celex:32024R1689/oj#art_37').
declared(must_inform/2, 'Commission shall inform notifying Member State', 'celex:32024R1689/oj#art_37').
declared(must_request_corrective_measures/2, 'Commission shall request corrective measures', 'celex:32024R1689/oj#art_37').
declared(does_not_meet_requirements/1, 'notified body does not meet or no longer meets requirements', 'celex:32024R1689/oj#art_37').
declared(may_suspend_restrict_withdraw/2, 'Commission may suspend, restrict or withdraw designation', 'celex:32024R1689/oj#art_37').
declared(fails_to_take_corrective_measures/1, 'Member State fails to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
must_investigate(Commission, Body) :-
    reasons_to_doubt_competence(Body),
    notified_body(Body).
reasons_to_doubt_competence(Body) :-
    notified_body(Body),
    \+ competence_maintained(Body).
reasons_to_doubt_competence(Body) :-
    notified_body(Body),
    \+ requirements_fulfilled(Body).
competence_maintained(Body) :-
    notified_body(Body).
requirements_fulfilled(Body) :-
    notified_body(Body).
must_provide_information(Authority, Commission) :-
    notifying_authority(Authority),
    request(Commission, information(Authority, Body)),
    notified_body(Body),
    notification_of(Body, Authority).
must_treat_confidentially(Commission, Information) :-
    investigation(Commission),
    sensitive_information(Information),
    obtained_in(Information, investigation(Commission)).
investigation(Commission) :-
    must_investigate(Commission, _Body).
must_inform(Commission, MemberState) :-
    notified_body(Body),
    does_not_meet_requirements(Body),
    notifying_member_state(MemberState, Body).
must_request_corrective_measures(Commission, MemberState) :-
    must_inform(Commission, MemberState),
    notified_body(Body),
    does_not_meet_requirements(Body),
    notifying_member_state(MemberState, Body).
may_suspend_restrict_withdraw(Commission, designation(Body)) :-
    must_request_corrective_measures(Commission, MemberState),
    fails_to_take_corrective_measures(MemberState),
    notified_body(Body),
    notifying_member_state(MemberState, Body).
does_not_meet_requirements(Body) :-
    notified_body(Body),
    \+ meets_notification_requirements(Body).
does_not_meet_requirements(Body) :-
    notified_body(Body),
    \+ continues_to_meet_requirements(Body).
meets_notification_requirements(Body) :-
    notified_body(Body).
continues_to_meet_requirements(Body) :-
    notified_body(Body).
fails_to_take_corrective_measures(MemberState) :-
    notifying_member_state(MemberState, Body),
    \+ corrective_measures_taken(MemberState, Body).
corrective_measures_taken(MemberState, Body) :-
    notifying_member_state(MemberState, Body),
    suspension_of_notification(MemberState, Body).
corrective_measures_taken(MemberState, Body) :-
    notifying_member_state(MemberState, Body),
    withdrawal_of_notification(MemberState, Body).
declared(notifying_member_state/2, 'Member State that notified a body', 'celex:32024R1689/oj#art_37').
declared(request/2, 'request made by entity for something', 'celex:32024R1689/oj#art_37').
declared(sensitive_information/1, 'information that is sensitive', 'celex:32024R1689/oj#art_37').
declared(obtained_in/2, 'information obtained in some process', 'celex:32024R1689/oj#art_37').
declared(notification_of/2, 'body is notified by authority', 'celex:32024R1689/oj#art_37').
declared(suspension_of_notification/2, 'suspension of notification by member state', 'celex:32024R1689/oj#art_37').
declared(withdrawal_of_notification/2, 'withdrawal of notification by member state', 'celex:32024R1689/oj#art_37').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(reasons_to_doubt_competence/1, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(investigation/1, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request_corrective_measures/2, 'celex:32024R1689/oj#art_37').
provenance(does_not_meet_requirements/1, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw/2, 'celex:32024R1689/oj#art_37').
provenance(fails_to_take_corrective_measures/1, 'celex:32024R1689/oj#art_37').
provenance(notifying_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(request/2, 'celex:32024R1689/oj#art_37').
provenance(sensitive_information/1, 'celex:32024R1689/oj#art_37').
provenance(obtained_in/2, 'celex:32024R1689/oj#art_37').
provenance(notification_of/2, 'celex:32024R1689/oj#art_37').
provenance(suspension_of_notification/2, 'celex:32024R1689/oj#art_37').
provenance(withdrawal_of_notification/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination/2, 'Commission shall ensure coordination and cooperation between notified bodies', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation/2, 'notifying authority shall ensure bodies notified by it participate in sectoral group work', 'celex:32024R1689/oj#art_38').
declared(must_provide_exchange/2, 'Commission shall provide for exchange of knowledge and best practices', 'celex:32024R1689/oj#art_38').
declared(sectoral_group_of_notified_bodies/1, 'group of notified bodies for coordination and cooperation', 'celex:32024R1689/oj#art_38').
must_ensure_coordination(commission, coordination(high_risk_ai_systems, notified_bodies, conformity_assessment_procedures)) :-
    notified_body(Body),
    conformity_assessment(Body).
must_ensure_participation(NotifyingAuthority, participation(Body, sectoral_group_of_notified_bodies)) :-
    notifying_authority(NotifyingAuthority),
    notified_body(Body).
must_provide_exchange(commission, exchange(knowledge_and_best_practices, notifying_authorities)) :-
    notifying_authority(_).
provenance(must_ensure_coordination/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(authorised_notified_body/1, 'conformity assessment body authorised to carry out notified body activities', 'celex:32024R1689/oj#art_39').
declared(meets_requirements_of_article_31/1, 'meets the requirements laid down in Article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_compliance/1, 'ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
declared(third_country_agreement_with_union/1, 'third country with which the Union has concluded an agreement', 'celex:32024R1689/oj#art_39').
authorised_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_third_country_law(B, Country),
    third_country_agreement_with_union(Country),
    ( meets_requirements_of_article_31(B)
    ; ensures_equivalent_compliance(B)
    ).
provenance(authorised_notified_body/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_of_article_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').
provenance(third_country_agreement_with_union/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(presumed_conformity/1, 'high-risk AI system or general-purpose AI model presumed in conformity through harmonised standards', 'celex:32024R1689/oj#art_40').
declared(harmonised_standard_references_published/1, 'references of harmonised standards published in Official Journal', 'celex:32024R1689/oj#art_40').
declared(covers_requirements/2, 'standards cover the requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(must_issue_standardisation_requests/1, 'Commission must issue standardisation requests', 'celex:32024R1689/oj#art_40').
declared(standardisation_request/1, 'request for standardisation to European standardisation organisations', 'celex:32024R1689/oj#art_40').
declared(covers_all_requirements/1, 'standardisation request covers all requirements', 'celex:32024R1689/oj#art_40').
declared(covers_reporting_documentation_resource_performance/1, 'standardisation request covers reporting and documentation on resource performance', 'celex:32024R1689/oj#art_40').
declared(consults_board_and_stakeholders/1, 'Commission consults Board and relevant stakeholders', 'celex:32024R1689/oj#art_40').
declared(clear_standards/1, 'standards must be clear', 'celex:32024R1689/oj#art_40').
declared(consistent_standards/1, 'standards must be consistent with sector standards', 'celex:32024R1689/oj#art_40').
declared(ensure_relevant_requirements_met/1, 'standards aim to ensure relevant requirements or obligations are met', 'celex:32024R1689/oj#art_40').
declared(request_evidence_best_efforts/1, 'Commission requests evidence of best efforts from European standardisation organisations', 'celex:32024R1689/oj#art_40').
declared(promote_investment_innovation/1, 'standardisation process promotes investment and innovation in AI', 'celex:32024R1689/oj#art_40').
declared(strengthen_global_cooperation/1, 'standardisation process strengthens global cooperation on standardisation', 'celex:32024R1689/oj#art_40').
declared(consider_international_standards/1, 'standardisation process considers existing international standards', 'celex:32024R1689/oj#art_40').
declared(enhance_multi_stakeholder_governance/1, 'standardisation process enhances multi-stakeholder governance', 'celex:32024R1689/oj#art_40').
presumed_conformity(X) :-
    (high_risk_ai_system(X) ; general_purpose_ai_model(X)),
    harmonised_standard_references_published(X),
    covers_requirements(X, requirements_chapter_3_section_2).
presumed_conformity(X) :-
    (high_risk_ai_system(X) ; general_purpose_ai_model(X)),
    harmonised_standard_references_published(X),
    covers_requirements(X, obligations_chapter_5_section_2).
presumed_conformity(X) :-
    (high_risk_ai_system(X) ; general_purpose_ai_model(X)),
    harmonised_standard_references_published(X),
    covers_requirements(X, obligations_chapter_5_section_3).
must_issue_standardisation_requests(commission) :-
    \+ undue_delay(commission, standardisation_request).
standardisation_request(R) :-
    covers_all_requirements(R),
    covers_reporting_documentation_resource_performance(R).
covers_all_requirements(R) :-
    standardisation_request(R),
    covers(R, requirements_chapter_3_section_2).
covers_all_requirements(R) :-
    standardisation_request(R),
    covers(R, obligations_chapter_5_section_2).
covers_all_requirements(R) :-
    standardisation_request(R),
    covers(R, obligations_chapter_5_section_3).
covers_reporting_documentation_resource_performance(R) :-
    standardisation_request(R),
    covers(R, reporting_documentation_resource_performance).
consultation_completed(R) :-
    standardisation_request(R),
    consults(commission, board),
    consults(commission, relevant_stakeholders),
    consults(commission, advisory_forum).
clear_standards(R) :-
    standardisation_request(R),
    issued_to(european_standardisation_organisations, R).
consistent_standards(R) :-
    standardisation_request(R),
    consistent_with(R, sector_standards_annex_1).
ensure_relevant_requirements_met(R) :-
    standardisation_request(R),
    aims_to_ensure(R, high_risk_ai_systems_requirements_met).
ensure_relevant_requirements_met(R) :-
    standardisation_request(R),
    aims_to_ensure(R, general_purpose_ai_models_obligations_met).
must_request_evidence_best_efforts(commission, european_standardisation_organisations) :-
    standardisation_request(_R).
promote_investment_innovation(Process) :-
    standardisation_process(Process).
strengthen_global_cooperation(Process) :-
    standardisation_process(Process).
consider_international_standards(Process) :-
    standardisation_process(Process),
    consistent_with(considered_standards, union_values),
    consistent_with(considered_standards, fundamental_rights),
    consistent_with(considered_standards, union_interests).
enhance_multi_stakeholder_governance(Process) :-
    standardisation_process(Process),
    balanced_representation(Process),
    effective_participation(Process, all_relevant_stakeholders).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(harmonised_standard_references_published/1, 'celex:32024R1689/oj#art_40').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_requests/1, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request/1, 'celex:32024R1689/oj#art_40').
provenance(covers_all_requirements/1, 'celex:32024R1689/oj#art_40').
provenance(covers_reporting_documentation_resource_performance/1, 'celex:32024R1689/oj#art_40').
provenance(consults_board_and_stakeholders/1, 'celex:32024R1689/oj#art_40').
provenance(clear_standards/1, 'celex:32024R1689/oj#art_40').
provenance(consistent_standards/1, 'celex:32024R1689/oj#art_40').
provenance(ensure_relevant_requirements_met/1, 'celex:32024R1689/oj#art_40').
provenance(request_evidence_best_efforts/1, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_best_efforts/2, 'celex:32024R1689/oj#art_40').
provenance(promote_investment_innovation/1, 'celex:32024R1689/oj#art_40').
provenance(strengthen_global_cooperation/1, 'celex:32024R1689/oj#art_40').
provenance(consider_international_standards/1, 'celex:32024R1689/oj#art_40').
provenance(enhance_multi_stakeholder_governance/1, 'celex:32024R1689/oj#art_40').
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
declared(conditions_fulfilled_for_common_specifications/1, 'conditions for adopting common specifications are fulfilled', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_requested/1, 'Commission has requested European standardisation organisations to draft harmonised standard', 'celex:32024R1689/oj#art_41').
declared(request_not_accepted/1, 'request for harmonised standard not accepted by any European standardisation organisation', 'celex:32024R1689/oj#art_41').
declared(harmonised_standards_not_delivered/1, 'harmonised standards not delivered within deadline', 'celex:32024R1689/oj#art_41').
declared(harmonised_standards_insufficient_rights/1, 'harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(harmonised_standards_non_compliant/1, 'harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_harmonised_standard_reference_published/1, 'no reference to harmonised standards published in Official Journal and none expected within reasonable period', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity_with_common_specifications/1, 'system or model presumed in conformity when conforming to common specifications', 'celex:32024R1689/oj#art_41').
declared(shall_inform_committee/1, 'Commission shall inform committee before preparing draft implementing act', 'celex:32024R1689/oj#art_41').
declared(shall_justify_non_compliance/2, 'provider shall justify non-compliance with common specifications', 'celex:32024R1689/oj#art_41').
declared(shall_repeal_implementing_act/1, 'Commission shall repeal implementing act when harmonised standard published', 'celex:32024R1689/oj#art_41').
declared(shall_inform_commission/2, 'Member State shall inform Commission with detailed explanation', 'celex:32024R1689/oj#art_41').
may_adopt_common_specifications(commission) :-
    conditions_fulfilled_for_common_specifications(commission).
conditions_fulfilled_for_common_specifications(commission) :-
    harmonised_standard_requested(commission),
    ( request_not_accepted(commission)
    ; harmonised_standards_not_delivered(commission)
    ; harmonised_standards_insufficient_rights(commission)
    ; harmonised_standards_non_compliant(commission)
    ),
    no_harmonised_standard_reference_published(commission).
presumed_conformity_with_common_specifications(S) :-
    high_risk_ai_system(S),
    common_specification(C),
    conforms_to(S, C).
presumed_conformity_with_common_specifications(M) :-
    general_purpose_ai_model(M),
    common_specification(C),
    conforms_to(M, C).
shall_inform_committee(commission) :-
    considers_conditions_fulfilled(commission, art_41_par_1).
shall_justify_non_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    common_specification(C),
    \+ complies_with(P, C).
shall_justify_non_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    common_specification(C),
    \+ complies_with(P, C).
shall_repeal_implementing_act(commission) :-
    harmonised_standard_adopted(_H),
    proposed_for_publication(_H),
    reference_published_in_official_journal(_H).
shall_inform_commission(MemberState, C) :-
    member_state(MemberState),
    common_specification(C),
    \+ entirely_meets_requirements(C, chp_3_sec_2).
shall_inform_commission(MemberState, C) :-
    member_state(MemberState),
    common_specification(C),
    \+ entirely_complies_with_obligations(C, chp_5_sec_2).
shall_inform_commission(MemberState, C) :-
    member_state(MemberState),
    common_specification(C),
    \+ entirely_complies_with_obligations(C, chp_5_sec_3).
provenance(may_adopt_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(conditions_fulfilled_for_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_requested/1, 'celex:32024R1689/oj#art_41').
provenance(request_not_accepted/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_not_delivered/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_insufficient_rights/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_non_compliant/1, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(shall_inform_committee/1, 'celex:32024R1689/oj#art_41').
provenance(shall_justify_non_compliance/2, 'celex:32024R1689/oj#art_41').
provenance(shall_repeal_implementing_act/1, 'celex:32024R1689/oj#art_41').
provenance(shall_inform_commission/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').

% ==== celex:32024R1689/oj#art_42 ====
declared(presumed_conformity_data_requirements/1, 'high-risk AI system presumed compliant due to training and testing on appropriate data', 'celex:32024R1689/oj#art_42').
declared(presumed_conformity_cybersecurity_requirements/1, 'high-risk AI system presumed compliant due to cybersecurity certification', 'celex:32024R1689/oj#art_42').
declared(trained_and_tested_on_representative_data/1, 'trained and tested on data reflecting intended use setting', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_certified/1, 'certified under EU cybersecurity scheme with published references', 'celex:32024R1689/oj#art_42').
declared(covers_requirements/2, 'certificate or statement covers specified requirements', 'celex:32024R1689/oj#art_42').
presumed_conformity_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_representative_data(S).
trained_and_tested_on_representative_data(S) :-
    training_data(S),
    testing_data(S),
    reflects_intended_use_setting(S).
reflects_intended_use_setting(S) :-
    geographical_setting(S),
    behavioural_setting(S),
    contextual_setting(S),
    functional_setting(S).
presumed_conformity_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    cybersecurity_certified(S),
    covers_requirements(S, cybersecurity_requirements).
cybersecurity_certified(S) :-
    certified_under_cybersecurity_scheme(S).
cybersecurity_certified(S) :-
    statement_of_conformity_issued(S).
certified_under_cybersecurity_scheme(S) :-
    cybersecurity_certificate(S),
    published_in_official_journal(S).
statement_of_conformity_issued(S) :-
    statement_of_conformity(S),
    published_in_official_journal(S).
published_in_official_journal(S) :-
    references_published(S, official_journal).
provenance(presumed_conformity_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(reflects_intended_use_setting/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_conformity_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certified/1, 'celex:32024R1689/oj#art_42').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(statement_of_conformity_issued/1, 'celex:32024R1689/oj#art_42').
provenance(published_in_official_journal/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(must_conformity_assessment/2, 'provider shall follow conformity assessment procedure', 'celex:32024R1689/oj#art_43').
must_conformity_assessment(Provider, assessment(S, Procedure)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standards_applied(S),
    provider_chooses_procedure(Provider, S, Procedure),
    conformity_assessment_procedure(Procedure).
must_conformity_assessment(Provider, assessment(S, Procedure)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    common_specifications_applied(S),
    provider_chooses_procedure(Provider, S, Procedure),
    conformity_assessment_procedure(Procedure).
must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    \+ harmonised_standards_exist(S),
    \+ common_specifications_available(S).
must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standards_exist(S),
    \+ harmonised_standards_applied(S).
must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standards_applied_partially(S).
must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    common_specifications_exist(S),
    \+ common_specifications_applied(S).
must_conformity_assessment(Provider, assessment(S, annex_7)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_point_1(S),
    harmonised_standard_published_with_restriction(S, RestrictedPart),
    \+ applied_restricted_part(S, RestrictedPart).
notified_body_for_assessment(Authority, S) :-
    high_risk_ai_system_annex_3_point_1(S),
    intended_for_law_enforcement_immigration_asylum_or_union_institutions(S),
    market_surveillance_authority(Authority).
must_conformity_assessment(Provider, assessment(S, internal_control)) :-
    provider(Provider),
    high_risk_ai_system_annex_3_points_2_to_8(S).
must_conformity_assessment(Provider, assessment(S, union_harmonisation_procedure)) :-
    provider(Provider),
    high_risk_ai_system_union_harmonisation_legislation(S).
notified_body_entitled_control(Body, S) :-
    high_risk_ai_system_union_harmonisation_legislation(S),
    notified_body(Body),
    notified_under_union_harmonisation_legislation(Body),
    compliance_with_art_31_assessed(Body).
permitted_opt_out_third_party_assessment(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system_union_harmonisation_legislation(S),
    union_harmonisation_legislation_allows_opt_out(S),
    all_harmonised_standards_applied(Manufacturer, S),
    all_requirements_covered_by_standards_or_common_specifications(Manufacturer, S).
must_conformity_assessment(_Provider, new_assessment(S)) :-
    high_risk_ai_system(S),
    previously_conformity_assessed(S),
    substantial_modification(S).
exempt_substantial_modification(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    predetermined_changes(S),
    changes_documented_in_technical_documentation(S).
declared(high_risk_ai_system_annex_3_point_1/1, 'high-risk AI system listed in Annex 3 point 1', 'celex:32024R1689/oj#art_43').
declared(high_risk_ai_system_annex_3_points_2_to_8/1, 'high-risk AI system listed in Annex 3 points 2-8', 'celex:32024R1689/oj#art_43').
declared(high_risk_ai_system_union_harmonisation_legislation/1, 'high-risk AI system covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_applied/1, 'provider has applied harmonised standards', 'celex:32024R1689/oj#art_43').
declared(common_specifications_applied/1, 'provider has applied common specifications', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_exist/1, 'harmonised standards referred to in Article 40 exist', 'celex:32024R1689/oj#art_43').
declared(common_specifications_available/1, 'common specifications referred to in Article 41 are available', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_applied_partially/1, 'provider has applied only part of harmonised standard', 'celex:32024R1689/oj#art_43').
declared(common_specifications_exist/1, 'common specifications exist', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_published_with_restriction/2, 'harmonised standard published with restriction on part', 'celex:32024R1689/oj#art_43').
declared(applied_restricted_part/2, 'provider has applied restricted part of standard', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement_immigration_asylum_or_union_institutions/1, 'system intended for law enforcement, immigration, asylum or Union institutions', 'celex:32024R1689/oj#art_43').
declared(provider_chooses_procedure/3, 'provider chooses conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_procedure/1, 'valid conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(notified_under_union_harmonisation_legislation/1, 'notified body notified under Union harmonisation legislation', 'celex:32024R1689/oj#art_43').
declared(compliance_with_art_31_assessed/1, 'compliance with Article 31 requirements assessed', 'celex:32024R1689/oj#art_43').
declared(union_harmonisation_legislation_allows_opt_out/1, 'Union harmonisation legislation allows opt-out from third-party assessment', 'celex:32024R1689/oj#art_43').
declared(all_harmonised_standards_applied/2, 'all harmonised standards covering relevant requirements applied', 'celex:32024R1689/oj#art_43').
declared(all_requirements_covered_by_standards_or_common_specifications/2, 'all Chapter 3 Section 2 requirements covered by standards or common specifications', 'celex:32024R1689/oj#art_43').
declared(previously_conformity_assessed/1, 'AI system has been subject to conformity assessment', 'celex:32024R1689/oj#art_43').
declared(continues_to_learn_after_placement/1, 'AI system continues to learn after being placed on market', 'celex:32024R1689/oj#art_43').
declared(predetermined_changes/1, 'changes were pre-determined by provider at initial assessment', 'celex:32024R1689/oj#art_43').
declared(changes_documented_in_technical_documentation/1, 'changes are part of technical documentation', 'celex:32024R1689/oj#art_43').
conformity_assessment_procedure(internal_control).
conformity_assessment_procedure(annex_7).
conformity_assessment_procedure(union_harmonisation_procedure).
provenance(must_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(notified_body_for_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_opt_out_third_party_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(exempt_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_point_1/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_annex_3_points_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(high_risk_ai_system_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_applied/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_applied/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_available/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_applied_partially/1, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_exist/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/2, 'celex:32024R1689/oj#art_43').
provenance(applied_restricted_part/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_immigration_asylum_or_union_institutions/1, 'celex:32024R1689/oj#art_43').
provenance(provider_chooses_procedure/3, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#art_43').
provenance(notified_under_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(compliance_with_art_31_assessed/1, 'celex:32024R1689/oj#art_43').
provenance(union_harmonisation_legislation_allows_opt_out/1, 'celex:32024R1689/oj#art_43').
provenance(all_harmonised_standards_applied/2, 'celex:32024R1689/oj#art_43').
provenance(all_requirements_covered_by_standards_or_common_specifications/2, 'celex:32024R1689/oj#art_43').
provenance(previously_conformity_assessed/1, 'celex:32024R1689/oj#art_43').
provenance(continues_to_learn_after_placement/1, 'celex:32024R1689/oj#art_43').
provenance(predetermined_changes/1, 'celex:32024R1689/oj#art_43').
provenance(changes_documented_in_technical_documentation/1, 'celex:32024R1689/oj#art_43').
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

% ==== celex:32024R1689/oj#art_44 ====
declared(certificate_language/2, 'certificate must be in language understood by authorities', 'celex:32024R1689/oj#art_44').
declared(certificate_validity_period/3, 'maximum validity period for certificate based on annex', 'celex:32024R1689/oj#art_44').
declared(certificate_extension_period/3, 'maximum extension period for certificate based on annex', 'celex:32024R1689/oj#art_44').
declared(must_suspend_withdraw_or_restrict_certificate/2, 'notified body must suspend, withdraw, or restrict certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'notified body must give reasons for decision', 'celex:32024R1689/oj#art_44').
declared(appeal_procedure_available/1, 'appeal procedure against notified body decisions is available', 'celex:32024R1689/oj#art_44').
declared(certificate_supplement_valid/1, 'certificate supplement remains valid if base certificate valid', 'celex:32024R1689/oj#art_44').
declared(covered_by_annex_1/1, 'AI system covered by Annex I', 'celex:32024R1689/oj#art_44').
declared(covered_by_annex_3/1, 'AI system covered by Annex III', 'celex:32024R1689/oj#art_44').
declared(no_longer_meets_requirements/1, 'AI system no longer meets Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_44').
declared(compliance_ensured_by_corrective_action/1, 'provider ensures compliance by appropriate corrective action within deadline', 'celex:32024R1689/oj#art_44').
declared(appropriate_deadline_set/2, 'notified body sets appropriate deadline for corrective action', 'celex:32024R1689/oj#art_44').
certificate_language(C, L) :-
    certificate_issued_by_notified_body(C, _NB),
    language_understood_by_relevant_authorities(L, _MS),
    member_state_of_establishment(_MS, _NB).
certificate_validity_period(C, years(5), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_1(S).
certificate_validity_period(C, years(4), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_3(S).
certificate_extension_period(C, years(5), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_1(S),
    extension_requested_by_provider(C, _P).
certificate_extension_period(C, years(4), S) :-
    certificate_for_ai_system(C, S),
    covered_by_annex_3(S),
    extension_requested_by_provider(C, _P).
must_suspend_withdraw_or_restrict_certificate(NB, C) :-
    notified_body(NB),
    certificate_issued_by_notified_body(C, NB),
    certificate_for_ai_system(C, S),
    no_longer_meets_requirements(S),
    \+ compliance_ensured_by_corrective_action(S).
must_give_reasons(NB, Decision) :-
    notified_body(NB),
    decision_on_certificate(NB, Decision).
appeal_procedure_available(Decision) :-
    decision_of_notified_body(Decision).
certificate_supplement_valid(Supplement) :-
    certificate_supplement(Supplement),
    supplements_certificate(Supplement, C),
    valid(C).
provenance(certificate_language/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/3, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_period/3, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_withdraw_or_restrict_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_supplement_valid/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform/2, 'actor must inform another of something', 'celex:32024R1689/oj#art_45').
declared(must_provide/2, 'actor must provide another with something', 'celex:32024R1689/oj#art_45').
declared(must_safeguard/2, 'actor must safeguard something', 'celex:32024R1689/oj#art_45').
declared(certificate_issued/1, 'certificate has been issued', 'celex:32024R1689/oj#art_45').
declared(supplement_to_certificate/1, 'supplement to a certificate', 'celex:32024R1689/oj#art_45').
declared(quality_management_system_approval/1, 'approval of a quality management system', 'celex:32024R1689/oj#art_45').
declared(refusal_of_certificate/1, 'refusal of a certificate or approval', 'celex:32024R1689/oj#art_45').
declared(restriction_of_certificate/1, 'restriction of a certificate or approval', 'celex:32024R1689/oj#art_45').
declared(suspension_of_certificate/1, 'suspension of a certificate or approval', 'celex:32024R1689/oj#art_45').
declared(withdrawal_of_certificate/1, 'withdrawal of a certificate or approval', 'celex:32024R1689/oj#art_45').
declared(circumstances_affecting_notification/1, 'circumstances affecting scope or conditions for notification', 'celex:32024R1689/oj#art_45').
declared(request_for_information_from_market_surveillance/1, 'request for information received from market surveillance authority', 'celex:32024R1689/oj#art_45').
declared(conformity_assessment_activity/1, 'activity performed under conformity assessment', 'celex:32024R1689/oj#art_45').
declared(cross_border_activity/1, 'activity performed across borders', 'celex:32024R1689/oj#art_45').
declared(subcontracting_activity/1, 'activity subcontracted to another body', 'celex:32024R1689/oj#art_45').
declared(negative_conformity_assessment_result/1, 'negative result of conformity assessment', 'celex:32024R1689/oj#art_45').
declared(positive_conformity_assessment_result/1, 'positive result of conformity assessment', 'celex:32024R1689/oj#art_45').
declared(similar_conformity_assessment_activity/1, 'conformity assessment activity of similar type', 'celex:32024R1689/oj#art_45').
declared(same_type_ai_system/1, 'AI system of the same type', 'celex:32024R1689/oj#art_45').
declared(confidential_information/1, 'information obtained that is confidential', 'celex:32024R1689/oj#art_45').
must_inform(Body, certificate_issued(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate).
must_inform(Body, supplement_to_certificate(Supplement)) :-
    notified_body(Body),
    supplement(Supplement),
    to_certificate(Certificate, Supplement),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate).
must_inform(Body, quality_management_system_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval).
must_inform(Body, refusal_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    refused(Certificate).
must_inform(Body, refusal_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    refused(Approval).
must_inform(Body, restriction_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    restricted(Certificate).
must_inform(Body, restriction_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    restricted(Approval).
must_inform(Body, suspension_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    suspended(Certificate).
must_inform(Body, suspension_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    suspended(Approval).
must_inform(Body, withdrawal_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    withdrawn(Certificate).
must_inform(Body, withdrawal_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    withdrawn(Approval).
must_inform(Body, circumstances_affecting_notification(Circumstances)) :-
    notified_body(Body),
    circumstances_affecting_notification(Circumstances).
must_inform(Body, request_for_information_from_market_surveillance(Request)) :-
    notified_body(Body),
    request_for_information(Request),
    received_from(Request, Authority),
    market_surveillance_authority(Authority),
    regarding_conformity_assessment_activities(Request).
must_inform(Body, conformity_assessment_activity(Activity)) :-
    notified_body(Body),
    requested(Body),
    conformity_assessment_activity(Activity),
    within_scope_of_notification(Activity, Body).
must_inform(Body, cross_border_activity(Activity)) :-
    notified_body(Body),
    requested(Body),
    cross_border_activity(Activity),
    performed_by(Body, Activity).
must_inform(Body, subcontracting_activity(Activity)) :-
    notified_body(Body),
    requested(Body),
    subcontracting_activity(Activity),
    performed_by(Body, Activity).
must_inform(Body, refusal_of_approval(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    quality_management_system_approval(Approval),
    refused(OtherBody, Approval).
must_inform(Body, suspension_of_approval(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    quality_management_system_approval(Approval),
    suspended(OtherBody, Approval).
must_inform(Body, withdrawal_of_approval(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    quality_management_system_approval(Approval),
    withdrawn(OtherBody, Approval).
must_inform(Body, approval_issued(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    requested(Body, OtherBody),
    quality_management_system_approval(Approval),
    issued(OtherBody, Approval).
must_inform(Body, refusal_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    refused(OtherBody, Certificate).
must_inform(Body, withdrawal_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    withdrawn(OtherBody, Certificate).
must_inform(Body, suspension_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    suspended(OtherBody, Certificate).
must_inform(Body, restriction_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    restricted(OtherBody, Certificate).
must_inform(Body, certificate_issued(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    requested(Body, OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    issued(OtherBody, Certificate).
must_inform(Body, supplement_issued(Supplement)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    requested(Body, OtherBody),
    supplement_to_certificate(Supplement),
    issued(OtherBody, Supplement).
must_provide(Body, negative_conformity_assessment_result(Result)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    carrying_out_similar_conformity_assessment_activities(OtherBody, Body),
    covering_same_types_of_ai_systems(OtherBody, Body),
    negative_conformity_assessment_result(Result),
    relevant_to(Result, OtherBody).
must_provide(Body, positive_conformity_assessment_result(Result)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    carrying_out_similar_conformity_assessment_activities(OtherBody, Body),
    covering_same_types_of_ai_systems(OtherBody, Body),
    requested(Body, OtherBody),
    positive_conformity_assessment_result(Result),
    relevant_to(Result, OtherBody).
must_safeguard(Body, confidential_information(Info)) :-
    notified_body(Body),
    obtained(Body, Info),
    confidential(Info).
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_45').
provenance(certificate_issued/1, 'celex:32024R1689/oj#art_45').
provenance(supplement_to_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(quality_management_system_approval/1, 'celex:32024R1689/oj#art_45').
provenance(refusal_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(restriction_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(suspension_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(withdrawal_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(circumstances_affecting_notification/1, 'celex:32024R1689/oj#art_45').
provenance(request_for_information_from_market_surveillance/1, 'celex:32024R1689/oj#art_45').
provenance(conformity_assessment_activity/1, 'celex:32024R1689/oj#art_45').
provenance(cross_border_activity/1, 'celex:32024R1689/oj#art_45').
provenance(subcontracting_activity/1, 'celex:32024R1689/oj#art_45').
provenance(negative_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
provenance(positive_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
provenance(similar_conformity_assessment_activity/1, 'celex:32024R1689/oj#art_45').
provenance(same_type_ai_system/1, 'celex:32024R1689/oj#art_45').
provenance(confidential_information/1, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(permitted_placing_on_market/1, 'exceptional authorisation to place high-risk AI system on market', 'celex:32024R1689/oj#art_46/par_1').
declared(permitted_putting_into_service/1, 'exceptional authorisation to put high-risk AI system into service', 'celex:32024R1689/oj#art_46/par_1').
declared(exceptional_reason/1, 'public security, life/health, environmental protection, or key assets', 'celex:32024R1689/oj#art_46/par_1').
declared(urgency_situation/1, 'duly justified urgency for public security or imminent threat', 'celex:32024R1689/oj#art_46/par_2').
declared(permitted_putting_into_service_without_authorisation/1, 'urgency putting into service without prior authorisation', 'celex:32024R1689/oj#art_46/par_2').
declared(must_request_authorisation/2, 'authority must request authorisation during or after use', 'celex:32024R1689/oj#art_46/par_2').
declared(must_stop_use/2, 'operator must stop use if authorisation refused', 'celex:32024R1689/oj#art_46/par_2').
declared(must_discard_results/2, 'operator must discard results and outputs', 'celex:32024R1689/oj#art_46/par_2').
declared(complies_with_chapter_3_section_2/1, 'high-risk AI system complies with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_46/par_3').
declared(must_inform/2, 'authority must inform Commission and other Member States', 'celex:32024R1689/oj#art_46/par_3').
declared(objection_period_expired/1, '15 calendar days passed with no objection', 'celex:32024R1689/oj#art_46/par_4').
declared(deemed_justified/1, 'authorisation deemed justified after no objection period', 'celex:32024R1689/oj#art_46/par_4').
declared(objection_raised/1, 'Member State or Commission raised objection', 'celex:32024R1689/oj#art_46/par_5').
declared(commission_consultation_required/1, 'Commission must enter consultations', 'celex:32024R1689/oj#art_46/par_5').
declared(commission_decides_justified/1, 'Commission decides authorisation is justified', 'celex:32024R1689/oj#art_46/par_5').
declared(commission_decides_unjustified/1, 'Commission decides authorisation is unjustified', 'celex:32024R1689/oj#art_46/par_6').
declared(must_withdraw_authorisation/2, 'authority must withdraw unjustified authorisation', 'celex:32024R1689/oj#art_46/par_6').
declared(union_harmonisation_derogation_applies/1, 'only Union harmonisation derogations apply for listed products', 'celex:32024R1689/oj#art_46/par_7').
permitted_placing_on_market(S) :-
    high_risk_ai_system(S),
    exceptional_reason(R),
    market_surveillance_authority(A),
    duly_justified_request(A, S, R).
permitted_putting_into_service(S) :-
    high_risk_ai_system(S),
    exceptional_reason(R),
    market_surveillance_authority(A),
    duly_justified_request(A, S, R).
exceptional_reason(public_security).
exceptional_reason(protection_of_life_and_health_of_persons).
exceptional_reason(environmental_protection).
exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).
permitted_putting_into_service_without_authorisation(S) :-
    high_risk_ai_system(S),
    urgency_situation(U),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, U).
urgency_situation(public_security_urgency).
urgency_situation(substantial_imminent_threat_to_life_or_physical_safety).
must_request_authorisation(A, S) :-
    permitted_putting_into_service_without_authorisation(S),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, _),
    \+ authorisation_requested(A, S).
must_stop_use(A, S) :-
    permitted_putting_into_service_without_authorisation(S),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, _),
    authorisation_refused(A, S).
must_discard_results(A, S) :-
    permitted_putting_into_service_without_authorisation(S),
    (law_enforcement_authority(A); civil_protection_authority(A)),
    puts_into_service(A, S, _),
    authorisation_refused(A, S).
complies_with_chapter_3_section_2(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(A),
    concludes_compliance(A, S, chapter_3_section_2).
must_inform(A, commission_and_other_member_states) :-
    market_surveillance_authority(A),
    issues_authorisation(A, S),
    complies_with_chapter_3_section_2(S),
    \+ sensitive_operational_data_law_enforcement(S).
deemed_justified(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(A),
    issues_authorisation(A, S),
    informs_commission_and_member_states(A, S),
    days_since_receipt(15),
    \+ objection_raised(S).
objection_raised(S) :-
    member_state_objection(S).
objection_raised(S) :-
    commission_objection(S).
commission_consultation_required(S) :-
    high_risk_ai_system(S),
    market_surveillance_authority(A),
    issues_authorisation(A, S),
    informs_commission_and_member_states(A, S),
    days_since_receipt(15),
    (member_state_objection(S); commission_unfounded_conclusion(S); commission_contrary_to_union_law(S)).
commission_decides_justified(S) :-
    commission_consultation_required(S),
    commission_consults(S),
    operators_consulted(S),
    operators_presented_views(S),
    commission_determines(S, justified).
commission_decides_unjustified(S) :-
    commission_consultation_required(S),
    commission_consults(S),
    operators_consulted(S),
    operators_presented_views(S),
    commission_determines(S, unjustified).
must_withdraw_authorisation(A, S) :-
    commission_decides_unjustified(S),
    market_surveillance_authority(A),
    issues_authorisation(A, S).
union_harmonisation_derogation_applies(S) :-
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(S, annex_1_section_1).
provenance(permitted_placing_on_market/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(permitted_putting_into_service/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46/par_1').
provenance(permitted_putting_into_service_without_authorisation/1, 'celex:32024R1689/oj#art_46/par_2').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46/par_2').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_46/par_2').
provenance(must_stop_use/2, 'celex:32024R1689/oj#art_46/par_2').
provenance(must_discard_results/2, 'celex:32024R1689/oj#art_46/par_2').
provenance(complies_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_46/par_3').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46/par_3').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_46/par_4').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_46/par_5').
provenance(commission_consultation_required/1, 'celex:32024R1689/oj#art_46/par_5').
provenance(commission_decides_justified/1, 'celex:32024R1689/oj#art_46/par_5').
provenance(commission_decides_unjustified/1, 'celex:32024R1689/oj#art_46/par_6').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46/par_6').
provenance(union_harmonisation_derogation_applies/1, 'celex:32024R1689/oj#art_46/par_7').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_of_conformity/2, 'provider must keep declaration of conformity available to authorities', 'celex:32024R1689/oj#art_47').
declared(declaration_of_conformity/1, 'written machine readable, physical or electronically signed EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(declaration_identifies_system/2, 'declaration identifies the high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_submit_declaration_on_request/2, 'provider must submit copy of declaration to authorities upon request', 'celex:32024R1689/oj#art_47').
declared(declaration_states_compliance/2, 'declaration states that high-risk AI system meets chapter 3 section 2 requirements', 'celex:32024R1689/oj#art_47').
declared(declaration_contains_annex_5_information/1, 'declaration contains information set out in annex 5', 'celex:32024R1689/oj#art_47').
declared(declaration_translated_for_authorities/1, 'declaration translated into language understood by national competent authorities', 'celex:32024R1689/oj#art_47').
declared(single_declaration_for_multiple_legislation/1, 'single declaration drawn up for all applicable Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(declaration_contains_legislation_identification/1, 'declaration contains information to identify applicable Union harmonisation legislation', 'celex:32024R1689/oj#art_47').
declared(assumes_responsibility_for_compliance/2, 'provider assumes responsibility for compliance by drawing up declaration', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_up_to_date/2, 'provider must keep declaration of conformity up to date', 'celex:32024R1689/oj#art_47').
must_draw_up_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    declaration_of_conformity(Declaration),
    declaration_identifies_system(Declaration, System),
    period(years(10), after(placing_on_market_or_putting_into_service(System))).
declaration_identifies_system(Declaration, System) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System).
must_submit_declaration_on_request(Provider, copy(Declaration)) :-
    provider(Provider),
    declaration_of_conformity(Declaration),
    national_competent_authority(Authority),
    request(Authority, Declaration).
declaration_states_compliance(Declaration, System) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System),
    meets_requirements(System, chapter_iii_section_2).
declaration_contains_annex_5_information(Declaration) :-
    declaration_of_conformity(Declaration).
declaration_translated_for_authorities(Declaration) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System),
    (placing_on_market(System); making_available_on_market(System)),
    language_understood_by_national_competent_authorities(Language).
single_declaration_for_multiple_legislation(Declaration) :-
    declaration_of_conformity(Declaration),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System),
    other_declaration_required(System).
declaration_contains_legislation_identification(Declaration) :-
    single_declaration_for_multiple_legislation(Declaration).
assumes_responsibility_for_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    draws_up_declaration(Provider, Declaration),
    declaration_of_conformity(Declaration),
    declaration_identifies_system(Declaration, System).
must_keep_declaration_up_to_date(Provider, Declaration) :-
    provider(Provider),
    declaration_of_conformity(Declaration),
    changes_require_update(Declaration).
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_identifies_system/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_declaration_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_annex_5_information/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_translated_for_authorities/1, 'celex:32024R1689/oj#art_47').
provenance(single_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(declaration_contains_legislation_identification/1, 'celex:32024R1689/oj#art_47').
provenance(assumes_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(must_affix_ce_marking/2, 'actor must affix CE marking to high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(must_use_digital_ce_marking/1, 'high-risk AI system must use digital CE marking', 'celex:32024R1689/oj#art_48').
declared(must_affix_ce_marking_visibly_legibly_indelibly/1, 'CE marking must be affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(may_affix_ce_marking_to_packaging_or_documentation/1, 'CE marking may be affixed to packaging or documentation instead', 'celex:32024R1689/oj#art_48').
declared(must_follow_with_notified_body_number/1, 'CE marking must be followed by notified body identification number', 'celex:32024R1689/oj#art_48').
declared(must_affix_notified_body_number/2, 'actor must affix notified body identification number', 'celex:32024R1689/oj#art_48').
declared(must_indicate_notified_body_number_in_promotional_material/1, 'notified body number must be indicated in promotional material', 'celex:32024R1689/oj#art_48').
declared(ce_marking_indicates_other_union_law_compliance/1, 'CE marking indicates compliance with other Union law', 'celex:32024R1689/oj#art_48').
declared(provided_digitally/1, 'AI system is provided digitally', 'celex:32024R1689/oj#art_48').
declared(easily_accessible_via_interface/1, 'digital marking can be accessed via system interface', 'celex:32024R1689/oj#art_48').
declared(easily_accessible_machine_readable_code/1, 'digital marking accessible via machine-readable code or electronic means', 'celex:32024R1689/oj#art_48').
declared(affixing_to_system_not_possible_or_not_warranted/1, 'affixing CE marking to system itself is not possible or not warranted', 'celex:32024R1689/oj#art_48').
declared(notified_body_responsible_for_conformity_assessment/2, 'notified body is responsible for conformity assessment procedures', 'celex:32024R1689/oj#art_48').
declared(promotional_material_mentions_ce_marking/1, 'promotional material mentions CE marking compliance', 'celex:32024R1689/oj#art_48').
declared(subject_to_other_union_law_with_ce_marking/1, 'high-risk AI system subject to other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
ce_marking_subject_to_general_principles(S) :-
    high_risk_ai_system(S).
must_use_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    (easily_accessible_via_interface(S); easily_accessible_machine_readable_code(S)).
must_affix_ce_marking_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ affixing_to_system_not_possible_or_not_warranted(S).
may_affix_ce_marking_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    affixing_to_system_not_possible_or_not_warranted(S).
must_follow_with_notified_body_number(S) :-
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B).
must_affix_notified_body_number(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S).
must_affix_notified_body_number(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B),
    under_instructions(B, P).
must_affix_notified_body_number(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B),
    under_instructions(B, R).
must_indicate_notified_body_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    promotional_material_mentions_ce_marking(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B).
ce_marking_indicates_other_union_law_compliance(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_with_ce_marking(S).
provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(must_use_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(may_affix_ce_marking_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(must_follow_with_notified_body_number/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_notified_body_number/2, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_notified_body_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_union_law_compliance/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(listed_in_annex_3/1, 'system listed in Annex III', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3_point_2/1, 'system listed in Annex III point 2', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3_point_1/1, 'system listed in Annex III point 1', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3_point_6/1, 'system listed in Annex III point 6', 'celex:32024R1689/oj#art_49').
declared(listed_in_annex_3_point_7/1, 'system listed in Annex III point 7', 'celex:32024R1689/oj#art_49').
declared(not_high_risk_under_art_6_par_3/1, 'provider concluded not high-risk under Article 6(3)', 'celex:32024R1689/oj#art_49').
declared(public_authority_deployer/1, 'deployer that is a public authority, Union institution, body, office or agency or person acting on their behalf', 'celex:32024R1689/oj#art_49').
declared(law_enforcement_migration_asylum_border_control_area/1, 'system used in areas of law enforcement, migration, asylum and border control management', 'celex:32024R1689/oj#art_49').
declared(secure_non_public_registration_required/1, 'registration must be in secure non-public section of EU database', 'celex:32024R1689/oj#art_49').
declared(national_level_registration_required/1, 'registration must be at national level', 'celex:32024R1689/oj#art_49').
must_register_in_eu_database(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_point_2(System),
    (placing_on_market(System); putting_into_service(System)).
must_register_in_eu_database(AuthorisedRep, System) :-
    authorised_representative(AuthorisedRep),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_point_2(System),
    (placing_on_market(System); putting_into_service(System)).
must_register_in_eu_database(Provider, System) :-
    provider(Provider),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    (placing_on_market(System); putting_into_service(System)).
must_register_in_eu_database(AuthorisedRep, System) :-
    authorised_representative(AuthorisedRep),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    (placing_on_market(System); putting_into_service(System)).
must_register_use_in_eu_database(Deployer, System) :-
    public_authority_deployer(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_point_2(System),
    (putting_into_service(System); using(System)).
secure_non_public_registration_required(System) :-
    high_risk_ai_system(System),
    (listed_in_annex_3_point_1(System); listed_in_annex_3_point_6(System); listed_in_annex_3_point_7(System)),
    law_enforcement_migration_asylum_border_control_area(System).
national_level_registration_required(System) :-
    high_risk_ai_system(System),
    listed_in_annex_3_point_2(System).
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_registration_required/1, 'celex:32024R1689/oj#art_49').
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
declared(must_ensure_informed_interaction/2, 'provider must ensure natural persons are informed they interact with an AI system', 'celex:32024R1689/oj#art_50').
declared(must_mark_outputs/2, 'provider must ensure outputs are marked as artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(must_inform_of_system_operation/2, 'deployer must inform natural persons of emotion recognition or biometric categorisation system operation', 'celex:32024R1689/oj#art_50').
declared(must_disclose_deep_fake/2, 'deployer must disclose that content is artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(must_disclose_synthetic_text/2, 'deployer must disclose that text is artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(obvious_interaction/1, 'interaction with AI system is obvious to reasonably well-informed person', 'celex:32024R1689/oj#art_50').
declared(authorised_for_criminal_offences/1, 'AI system authorised by law for criminal offence detection, prevention, investigation or prosecution', 'celex:32024R1689/oj#art_50').
declared(public_reporting_system/1, 'AI system available for public to report criminal offence', 'celex:32024R1689/oj#art_50').
declared(assistive_standard_editing/1, 'AI system performs assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(does_not_substantially_alter_input/1, 'AI system does not substantially alter input data or semantics', 'celex:32024R1689/oj#art_50').
declared(permitted_by_law_emotion_recognition/1, 'emotion recognition or biometric categorisation permitted by law for criminal offences', 'celex:32024R1689/oj#art_50').
declared(artistic_creative_satirical_fictional_analogous/1, 'content forms part of artistic, creative, satirical, fictional or analogous work', 'celex:32024R1689/oj#art_50').
declared(human_review_editorial_control/1, 'AI-generated content underwent human review or editorial control', 'celex:32024R1689/oj#art_50').
declared(editorial_responsibility/2, 'person holds editorial responsibility for publication', 'celex:32024R1689/oj#art_50').
declared(informing_public_on_matters_of_public_interest/1, 'text published with purpose of informing public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(deep_fake_content/1, 'content constituting a deep fake', 'celex:32024R1689/oj#art_50').
must_ensure_informed_interaction(Provider, S) :-
    provider(Provider),
    ai_system(S),
    intended_interaction_with_natural_persons(S),
    \+ obvious_interaction(S),
    \+ exempt_informed_interaction(S).
exempt_informed_interaction(S) :-
    authorised_for_criminal_offences(S),
    \+ public_reporting_system(S).
must_mark_outputs(Provider, S) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_mark_outputs(S).
generates_synthetic_content(S) :-
    generates_synthetic_audio(S).
generates_synthetic_content(S) :-
    generates_synthetic_image(S).
generates_synthetic_content(S) :-
    generates_synthetic_video(S).
generates_synthetic_content(S) :-
    generates_synthetic_text(S).
exempt_mark_outputs(S) :-
    assistive_standard_editing(S).
exempt_mark_outputs(S) :-
    does_not_substantially_alter_input(S).
exempt_mark_outputs(S) :-
    authorised_for_criminal_offences(S).
must_inform_of_system_operation(Deployer, S) :-
    deployer(Deployer),
    emotion_recognition_or_biometric_categorisation_system(S),
    \+ exempt_inform_of_system_operation(S).
emotion_recognition_or_biometric_categorisation_system(S) :-
    emotion_recognition_system(S).
emotion_recognition_or_biometric_categorisation_system(S) :-
    biometric_categorisation_system(S).
exempt_inform_of_system_operation(S) :-
    permitted_by_law_emotion_recognition(S).
must_disclose_deep_fake(Deployer, Content) :-
    deployer(Deployer),
    deep_fake_content(Content),
    generated_or_manipulated_by(Content, S),
    ai_system(S),
    \+ exempt_disclose_deep_fake(Content).
exempt_disclose_deep_fake(Content) :-
    generated_or_manipulated_by(Content, S),
    authorised_for_criminal_offences(S).
limited_disclosure_deep_fake(Content) :-
    deep_fake_content(Content),
    artistic_creative_satirical_fictional_analogous(Content).
must_disclose_synthetic_text(Deployer, Text) :-
    deployer(Deployer),
    generated_or_manipulated_text(Text),
    ai_system(S),
    generated_or_manipulated_by(Text, S),
    informing_public_on_matters_of_public_interest(Text),
    \+ exempt_disclose_synthetic_text(Text).
exempt_disclose_synthetic_text(Text) :-
    generated_or_manipulated_by(Text, S),
    authorised_for_criminal_offences(S).
exempt_disclose_synthetic_text(Text) :-
    human_review_editorial_control(Text),
    editorial_responsibility(_Person, Text).
information_timing_manner(Information) :-
    article_50_par_1_2_3_4_information(Information),
    clear_and_distinguishable(Information),
    at_latest_first_interaction_or_exposure(Information),
    conforms_accessibility_requirements(Information).
without_prejudice_to_chapter_3 :-
    true.
without_prejudice_to_other_transparency_obligations :-
    true.
ai_office_encourages_codes_of_practice :-
    ai_office(_Office).
provenance(must_ensure_informed_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_outputs/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_system_operation/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_synthetic_text/2, 'celex:32024R1689/oj#art_50').
provenance(exempt_informed_interaction/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_mark_outputs/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_inform_of_system_operation/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_disclose_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(exempt_disclose_synthetic_text/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(emotion_recognition_or_biometric_categorisation_system/1, 'celex:32024R1689/oj#art_50').
provenance(limited_disclosure_deep_fake/1, 'celex:32024R1689/oj#art_50').
provenance(information_timing_manner/1, 'celex:32024R1689/oj#art_50').
provenance(without_prejudice_to_chapter_3/0, 'celex:32024R1689/oj#art_50').
provenance(without_prejudice_to_other_transparency_obligations/0, 'celex:32024R1689/oj#art_50').
provenance(ai_office_encourages_codes_of_practice/0, 'celex:32024R1689/oj#art_50').
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
declared(has_high_impact_capabilities/1, 'evaluated high impact capabilities', 'celex:32024R1689/oj#art_51').
declared(equivalent_capabilities_or_impact/1, 'capabilities or impact equivalent to high impact capabilities', 'celex:32024R1689/oj#art_51').
declared(training_computation_threshold_exceeded/1, 'training computation exceeds 10^25 FLOPs', 'celex:32024R1689/oj#art_51').
declared(systemic_risk_classification/1, 'classified as general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_51').
systemic_risk_classification(M) :-
    general_purpose_ai_model(M),
    has_high_impact_capabilities(M).
systemic_risk_classification(M) :-
    general_purpose_ai_model(M),
    equivalent_capabilities_or_impact(M).
has_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    evaluated_with_appropriate_technical_tools(M).
training_computation_threshold_exceeded(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(F),
    training_computation(M, F),
    greater_than(F, 10^25).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_threshold_exceeded(M).
provenance(systemic_risk_classification/1, 'celex:32024R1689/oj#art_51').
provenance(has_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(training_computation_threshold_exceeded/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(must_notify/2, 'provider must notify the Commission', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments/2, 'provider may present arguments against classification', 'celex:32024R1689/oj#art_52').
declared(shall_reject_arguments/1, 'Commission shall reject insufficiently substantiated arguments', 'celex:32024R1689/art_52').
declared(may_designate_systemic_risk/1, 'Commission may designate a model as presenting systemic risk', 'celex:32024R1689/oj#art_52').
declared(shall_take_into_account/2, 'Commission shall take a request into account', 'celex:32024R1689/oj#art_52').
declared(may_reassess/1, 'Commission may reassess whether a model still presents systemic risks', 'celex:32024R1689/oj#art_52').
declared(shall_ensure_published_list/0, 'Commission shall ensure list is published and kept up to date', 'celex:32024R1689/oj#art_52').
declared(high_impact_capabilities_met/1, 'general-purpose AI model meets condition in Article 51(1)(a)', 'celex:32024R1689/oj#art_52').
declared(systemic_risk_presents/1, 'general-purpose AI model presents systemic risks', 'celex:32024R1689/oj#art_52').
declared(arguments_sufficiently_substantiated/1, 'arguments demonstrating absence of systemic risk are sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(qualified_alert_from_scientific_panel/1, 'qualified alert from scientific panel pursuant to Article 90(1)(a)', 'celex:32024R1689/oj#art_52').
declared(reasoned_request_for_reassessment/1, 'provider submits reasoned request for reassessment', 'celex:32024R1689/oj#art_52').
declared(objective_detailed_new_reasons/1, 'request contains objective detailed and new reasons', 'celex:32024R1689/oj#art_52').
declared(earliest_six_months_after_designation/1, 'reassessment request at earliest six months after designation decision', 'celex:32024R1689/oj#art_52').
declared(earliest_six_months_after_maintained_decision/1, 'reassessment request at earliest six months after maintained designation decision', 'celex:32024R1689/oj#art_52').
declared(maintains_designation/1, 'Commission decides to maintain designation after reassessment', 'celex:32024R1689/oj#art_52').
must_notify(Provider, designation_notification(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    high_impact_capabilities_met(Model).
may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_presents(Model),
    \+ notified_commission(Model).
may_present_arguments(Provider, arguments_against_systemic_risk(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    high_impact_capabilities_met(Model).
shall_reject_arguments(Model) :-
    general_purpose_ai_model(Model),
    high_impact_capabilities_met(Model),
    \+ arguments_sufficiently_substantiated(Model).
may_designate_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    qualified_alert_from_scientific_panel(Model).
shall_take_into_account(Commission, reassessment_request(Provider, Model)) :-
    reasoned_request_for_reassessment(Model),
    objective_detailed_new_reasons(Model).
may_reassess(Model) :-
    general_purpose_ai_model(Model),
    reasoned_request_for_reassessment(Model),
    objective_detailed_new_reasons(Model).
reasoned_request_for_reassessment(Model) :-
    general_purpose_ai_model(Model),
    designated_systemic_risk(Model),
    earliest_six_months_after_designation(Model).
reasoned_request_for_reassessment(Model) :-
    general_purpose_ai_model(Model),
    maintains_designation(Model),
    earliest_six_months_after_maintained_decision(Model).
shall_ensure_published_list.
provenance(must_notify/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(shall_reject_arguments/1, 'celex:32024R1689/oj#art_52').
provenance(shall_take_into_account/2, 'celex:32024R1689/oj#art_52').
provenance(may_reassess/1, 'celex:32024R1689/oj#art_52').
provenance(reasoned_request_for_reassessment/1, 'celex:32024R1689/oj#art_52').
provenance(shall_ensure_published_list/0, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up and keep up-to-date technical documentation', 'celex:32024R1689/oj#art_53').
declared(technical_documentation/1, 'technical documentation of a general-purpose AI model', 'celex:32024R1689/oj#art_53').
declared(must_provide_technical_documentation/3, 'provider must provide technical documentation upon request', 'celex:32024R1689/oj#art_53').
declared(must_draw_up_integration_documentation/2, 'provider must draw up, keep up-to-date and make available information and documentation for downstream providers', 'celex:32024R1689/oj#art_53').
declared(integration_documentation/1, 'information and documentation for integration into AI systems', 'celex:32024R1689/art_53').
declared(must_put_copyright_policy/2, 'provider must put in place copyright compliance policy', 'celex:32024R1689/oj#art_53').
declared(copyright_compliance_policy/1, 'policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(must_draw_up_training_summary/2, 'provider must draw up and make publicly available training content summary', 'celex:32024R1689/oj#art_53').
declared(training_summary/1, 'publicly available summary about content used for training', 'celex:32024R1689/oj#art_53').
declared(exempt_free_open_source_model/1, 'free and open-source model exempt from certain obligations', 'celex:32024R1689/oj#art_53').
declared(free_open_source_licence/1, 'licence allowing access, usage, modification, and distribution', 'celex:32024R1689/oj#art_53').
declared(parameters_publicly_available/1, 'model parameters, weights, architecture and usage information made publicly available', 'celex:32024R1689/oj#art_53').
declared(must_cooperate_with_authorities/2, 'provider must cooperate with Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(may_rely_on_code_of_practice/2, 'provider may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(must_demonstrate_alternative_compliance/2, 'provider must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
technical_documentation(D) :-
    training_and_testing_process(D),
    evaluation_results(D).
must_provide_technical_documentation(P, M, Requester) :-
    provider(P),
    general_purpose_ai_model(M),
    (ai_office(Requester) ; national_competent_authority(Requester)),
    technical_documentation(D),
    documentation_for(D, M).
must_draw_up_integration_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
integration_documentation(D) :-
    enables_understanding_of_capabilities_and_limitations(D),
    enables_compliance_with_obligations(D),
    contains_elements_of_annex_12(D).
must_put_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
copyright_compliance_policy(Policy) :-
    identifies_reservation_of_rights(Policy),
    complies_with_reservation_of_rights(Policy),
    uses_state_of_the_art_technologies(Policy).
must_draw_up_training_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
training_summary(S) :-
    content_used_for_training(S),
    according_to_template(S, ai_office).
exempt_free_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(Licence),
    released_under(M, Licence),
    allows_access(Licence),
    allows_usage(Licence),
    allows_modification(Licence),
    allows_distribution(Licence),
    parameters_publicly_available(M),
    \+ systemic_risk_applies(M).
systemic_risk_applies(M) :-
    general_purpose_ai_model(M),
    systemic_risk(R),
    risk_associated_with(M, R).
must_cooperate_with_authorities(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    commission_or_national_competent_authority(Authority).
commission_or_national_competent_authority(Authority) :-
    ai_office(Authority).
commission_or_national_competent_authority(Authority) :-
    national_competent_authority(Authority).
may_rely_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ harmonised_standard_published_for(M).
must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(must_provide_technical_documentation/3, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_integration_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(integration_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(must_put_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(copyright_compliance_policy/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_summary/2, 'celex:32024R1689/oj#art_53').
provenance(training_summary/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_free_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_53').
provenance(commission_or_national_competent_authority/1, 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_54 ====
declared(must_appoint/2, 'provider must appoint an authorised representative by written mandate before placing on market', 'celex:32024R1689/oj#art_54').
declared(must_enable/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform_tasks/2, 'authorised representative must perform tasks specified in mandate', 'celex:32024R1689/oj#art_54').
declared(must_provide_mandate_copy/2, 'authorised representative must provide copy of mandate upon request', 'celex:32024R1689/oj#art_54').
declared(must_verify_technical_documentation/2, 'authorised representative must verify technical documentation and obligations fulfilled', 'celex:32024R1689/oj#art_54').
declared(must_keep_documentation/2, 'authorised representative must keep copy of technical documentation for 10 years', 'celex:32024R1689/oj#art_54').
declared(must_provide_information/2, 'authorised representative must provide information and documentation upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(must_cooperate/2, 'authorised representative must cooperate with authorities upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_addressing/2, 'mandate empowers authorised representative to be addressed by authorities', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform_termination/2, 'authorised representative must inform AI Office of termination and reasons', 'celex:32024R1689/oj#art_54').
declared(exempt_from_authorised_representative/1, 'provider exempt from authorised representative obligation', 'celex:32024R1689/oj#art_54').
declared(free_and_open_source_licence/1, 'released under licence allowing access, usage, modification, and distribution', 'celex:32024R1689/oj#art_54').
declared(parameters_publicly_available/1, 'model parameters including weights, architecture, and usage information are publicly available', 'celex:32024R1689/oj#art_54').
must_appoint(P, authorised_representative(R)) :-
    provider(P),
    general_purpose_ai_model(M),
    downstream_provider(P),  
    \+ established_in_union(P),
    placing_on_market(M).
must_enable(P, authorised_representative(R)) :-
    provider(P),
    authorised_representative(R),
    mandated_by(R, P).
must_perform_tasks(R, tasks_from_mandate(P)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P).
must_provide_mandate_copy(R, ai_office(Office)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    ai_office(Office),
    request(Office, mandate_copy).
must_verify_technical_documentation(R, provider(P)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    technical_documentation_for_annex_11(D),
    obligations_fulfilled(P, art_53),
    obligations_fulfilled(P, art_55).
must_keep_documentation(R, documentation_for(M)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    general_purpose_ai_model(M),
    technical_documentation_for_annex_11(D),
    placing_on_market(M),
    period(years(10), after(placing_on_market(M))).
must_provide_information(R, ai_office(Office)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    ai_office(Office),
    reasoned_request(Office, information),
    compliance_demonstration(chapter_5).
must_cooperate(R, authorities(Authorities)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    general_purpose_ai_model(M),
    member(Authority, Authorities),
    (ai_office(Authority); national_competent_authority(Authority)),
    reasoned_request(Authority, cooperation),
    action_on_model(Authority, M).
mandate_empowers_addressing(R, authorities(Authorities)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    member(Authority, Authorities),
    (ai_office(Authority); national_competent_authority(Authority)),
    compliance_issue(compliance_with_regulation).
must_terminate_mandate(R, provider(P)) :-
    authorised_representative(R),
    mandated_by(R, P),
    provider(P),
    (contrary_to_obligations(P); reason_to_consider_contrary(R, P)).
must_inform_termination(R, ai_office(Office)) :-
    authorised_representative(R),
    must_terminate_mandate(R, provider(P)),
    ai_office(Office),
    termination_reasons(R, P).
exempt_from_authorised_representative(P) :-
    provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk(M).
provenance(must_appoint/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_technical_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_addressing/2, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_from_authorised_representative/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_evaluate_model/2, 'provider shall perform model evaluation', 'celex:32024R1689/oj#art_55').
declared(must_assess_and_mitigate_systemic_risks/2, 'provider shall assess and mitigate systemic risks', 'celex:32024R1689/oj#art_55').
declared(must_report_serious_incidents/2, 'provider shall report serious incidents and corrective measures', 'celex:32024R1689/oj#art_55').
declared(must_ensure_cybersecurity/2, 'provider shall ensure adequate cybersecurity protection', 'celex:32024R1689/oj#art_55').
declared(may_rely_on_codes_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/2, 'provider shall demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
must_evaluate_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_assess_and_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_report_serious_incidents(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_ensure_cybersecurity(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
may_rely_on_codes_of_practice(P, compliance(art_55_par_1)) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).
must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).
provenance(must_evaluate_model/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity/2, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(code_of_practice/1, 'code of practice for general-purpose AI models', 'celex:32024R1689/oj#art_56').
declared(must_encourage_and_facilitate/2, 'obligation to encourage and facilitate an activity', 'celex:32024R1689/oj#art_56').
declared(must_aim_to_ensure/2, 'obligation to aim to ensure a condition', 'celex:32024R1689/oj#art_56').
declared(may_invite/2, 'permission to invite participation', 'celex:32024R1689/oj#art_56').
declared(must_report_regularly/2, 'obligation to report on implementation', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate/2, 'obligation to monitor and evaluate', 'celex:32024R1689/oj#art_56').
declared(may_approve/2, 'permission to approve with general validity', 'celex:32024R1689/oj#art_56').
declared(may_invite_to_adhere/2, 'permission to invite adherence to codes', 'celex:32024R1689/oj#art_56').
declared(must_encourage_review/2, 'obligation to encourage review and adaptation', 'celex:32024R1689/oj#art_56').
declared(deadline_for_codes/1, 'deadline by which codes of practice must be ready', 'celex:32024R1689/oj#art_56').
declared(may_provide_common_rules/2, 'permission to provide common rules by implementing act', 'celex:32024R1689/oj#art_56').
declared(adequate/1, 'assessed as adequate by the AI Office', 'celex:32024R1689/oj#art_56').
declared(finalised/1, 'code of practice has been finalised', 'celex:32024R1689/oj#art_56').
declared(systemic_risk_present/1, 'general-purpose AI model presents systemic risks', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate(ai_office(AI_Office), drawing_up(code_of_practice(C))) :-
    ai_office(AI_Office),
    code_of_practice(C).
must_aim_to_ensure(ai_office_and_board(AI_Office, Board), covers_obligations(code_of_practice(C), [art_53, art_55])) :-
    ai_office(AI_Office),
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_aim_to_ensure(ai_office_and_board(AI_Office, Board), covers_issues(code_of_practice(C), [up_to_date_information, adequate_detail_training_summary, systemic_risk_identification, systemic_risk_assessment_and_management])) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
may_invite(ai_office(AI_Office), participation(drawing_up(code_of_practice(C)), general_purpose_ai_model_provider(P))) :-
    ai_office(AI_Office),
    code_of_practice(C),
    provider(P),
    general_purpose_ai_model_provider(P).
may_invite(ai_office(AI_Office), participation(drawing_up(code_of_practice(C)), national_competent_authority(A))) :-
    ai_office(AI_Office),
    code_of_practice(C),
    national_competent_authority(A).
must_aim_to_ensure(ai_office_and_board(AI_Office, Board), clear_objectives(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_aim_to_ensure(ai_office_and_board(AI_Office, Board), contains_commitments_and_measures(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_aim_to_ensure(ai_office_and_board(AI_Office, Board), contains_key_performance_indicators(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_aim_to_ensure(ai_office_and_board(AI_Office, Board), takes_account_of_needs_and_interests(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_report_regularly(participant(P), implementation_to(ai_office(AI_Office), code_of_practice(C))) :-
    participant(P),
    code_of_practice(C),
    ai_office(AI_Office).
must_monitor_and_evaluate(ai_office_and_board(AI_Office, Board), achievement_of_objectives(code_of_practice(C), participant(P))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C),
    participant(P).
must_monitor_and_evaluate(ai_office_and_board(AI_Office, Board), contribution_to_proper_application(code_of_practice(C), regulation)) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_assess(ai_office_and_board(AI_Office, Board), covers_obligations(code_of_practice(C), [art_53, art_55])) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
must_assess(ai_office_and_board(AI_Office, Board), adequacy(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).
may_approve(commission, general_validity(code_of_practice(C))) :-
    code_of_practice(C).
may_invite_to_adhere(ai_office(AI_Office), code_of_practice(C), general_purpose_ai_model_provider(P)) :-
    ai_office(AI_Office),
    code_of_practice(C),
    provider(P),
    general_purpose_ai_model_provider(P).
permitted_adherence_scope(general_purpose_ai_model_provider(P), code_of_practice(C), obligations(art_53)) :-
    provider(P),
    general_purpose_ai_model_provider(P),
    code_of_practice(C),
    \+ systemic_risk_present(P).
permitted_adherence_scope(general_purpose_ai_model_provider(P), code_of_practice(C), full_code) :-
    provider(P),
    general_purpose_ai_model_provider(P),
    code_of_practice(C),
    declares_explicit_interest(P, full_code).
must_encourage_review(ai_office(AI_Office), adaptation_of(code_of_practice(C))) :-
    ai_office(AI_Office),
    code_of_practice(C).
must_assist(ai_office(AI_Office), assessment_of(available_standards)) :-
    ai_office(AI_Office).
deadline_for_codes(ready_by(date(2025, 5, 2))).
must_take_necessary_steps(ai_office(AI_Office), preparation_of(code_of_practice(C))) :-
    ai_office(AI_Office),
    code_of_practice(C).
may_provide_common_rules(commission, implementation_of(obligations([art_53, art_55]))) :-
    \+ finalised(code_of_practice(_)),
    deadline_passed(date(2025, 8, 2)).
may_provide_common_rules(commission, implementation_of(obligations([art_53, art_55]))) :-
    code_of_practice(C),
    \+ adequate(C),
    deadline_passed(date(2025, 8, 2)).
may_provide_common_rules(commission, issues_set_out_in(art_56_par_2)) :-
    \+ finalised(code_of_practice(_)),
    deadline_passed(date(2025, 8, 2)).
may_provide_common_rules(commission, issues_set_out_in(art_56_par_2)) :-
    code_of_practice(C),
    \+ adequate(C),
    deadline_passed(date(2025, 8, 2)).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite/2, 'celex:32024R1689/oj#art_56').
provenance(must_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(may_approve/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_to_adhere/3, 'celex:32024R1689/oj#art_56').
provenance(permitted_adherence_scope/3, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review/2, 'celex:32024R1689/oj#art_56').
provenance(must_assist/2, 'celex:32024R1689/oj#art_56').
provenance(deadline_for_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess/2, 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').

% ==== celex:32024R1689/oj#art_57 ====
declared(must_establish/2, 'Member States must ensure competent authorities establish AI regulatory sandboxes', 'celex:32024R1689/oj#art_57/par_1').
declared(must_be_operational_by/2, 'AI regulatory sandbox must be operational by specified date', 'celex:32024R1689/oj#art_57/par_1').
declared(may_establish_jointly/2, 'Member States may establish sandboxes jointly with other Member States', 'celex:32024R1689/oj#art_57/par_1').
declared(may_provide_support/3, 'Commission may provide technical support, advice and tools', 'celex:32024R1689/oj#art_57/par_1').
declared(obligation_fulfilled_by_participation/2, 'obligation may be fulfilled by participating in existing sandbox', 'celex:32024R1689/oj#art_57/par_1').
declared(equivalent_national_coverage/1, 'participation provides equivalent level of national coverage', 'celex:32024R1689/oj#art_57/par_1').
declared(may_establish_additional/2, 'additional sandboxes may be established at regional or local level or jointly', 'celex:32024R1689/oj#art_57/par_2').
declared(may_establish_sandbox/2, 'European Data Protection Supervisor may establish sandbox for Union institutions', 'celex:32024R1689/oj#art_57/par_3').
declared(exercises_roles_of/2, 'may exercise roles and tasks of national competent authorities', 'celex:32024R1689/oj#art_57/par_3').
declared(must_allocate_sufficient_resources/2, 'Member States must ensure competent authorities allocate sufficient resources', 'celex:32024R1689/oj#art_57/par_4').
declared(may_cooperate/2, 'national competent authorities may cooperate with other relevant authorities', 'celex:32024R1689/oj#art_57/par_4').
declared(may_allow_involvement/2, 'may allow involvement of other actors within AI ecosystem', 'celex:32024R1689/oj#art_57/par_4').
declared(shall_not_affect_other_sandboxes/1, 'shall not affect other regulatory sandboxes established under Union or national law', 'celex:32024R1689/oj#art_57/par_4').
declared(must_ensure_cooperation/2, 'Member States must ensure appropriate level of cooperation between authorities', 'celex:32024R1689/oj#art_57/par_4').
declared(provides_controlled_environment/1, 'sandbox provides controlled environment fostering innovation', 'celex:32024R1689/oj#art_57/par_5').
declared(facilitates_development_training_testing_validation/1, 'facilitates development, training, testing and validation of innovative AI systems', 'celex:32024R1689/oj#art_57/par_5').
declared(limited_time_before/2, 'for limited time before being placed on market or put into service', 'celex:32024R1689/oj#art_57/par_5').
declared(pursuant_to_sandbox_plan/2, 'pursuant to specific sandbox plan agreed between providers and competent authority', 'celex:32024R1689/oj#art_57/par_5').
declared(may_include_testing_in_real_world_conditions/1, 'sandboxes may include testing in real world conditions supervised therein', 'celex:32024R1689/oj#art_57/par_5').
declared(must_provide_guidance_supervision_support/2, 'competent authorities shall provide guidance, supervision and support', 'celex:32024R1689/oj#art_57/par_6').
declared(with_view_to/2, 'with a view to identifying risks and testing mitigation measures', 'celex:32024R1689/oj#art_57/par_6').
declared(must_provide_guidance_on_regulatory_expectations/2, 'shall provide guidance on regulatory expectations and how to fulfil requirements', 'celex:32024R1689/oj#art_57/par_7').
declared(must_provide_written_proof/2, 'competent authority shall provide written proof of activities successfully carried out', 'celex:32024R1689/oj#art_57/par_7').
declared(must_provide_exit_report/2, 'competent authority shall provide exit report detailing activities and results', 'celex:32024R1689/oj#art_57/par_7').
declared(may_use_documentation/2, 'providers may use documentation to demonstrate compliance', 'celex:32024R1689/oj#art_57/par_7').
declared(shall_be_taken_positively_into_account/2, 'exit reports and written proof shall be taken positively into account', 'celex:32024R1689/oj#art_57/par_7').
declared(with_view_to_accelerating/2, 'with a view to accelerating conformity assessment procedures to reasonable extent', 'celex:32024R1689/oj#art_57/par_7').
declared(authorised_to_access/2, 'Commission and Board authorised to access exit reports', 'celex:32024R1689/oj#art_57/par_8').
declared(shall_take_into_account/2, 'shall take exit reports into account when exercising tasks', 'celex:32024R1689/oj#art_57/par_8').
declared(may_be_made_publicly_available/2, 'exit report may be made publicly available with explicit agreement', 'celex:32024R1689/oj#art_57/par_8').
declared(aims_to_contribute_to/2, 'establishment of sandboxes aims to contribute to objectives', 'celex:32024R1689/oj#art_57/par_9').
declared(objective_improving_legal_certainty/1, 'improving legal certainty to achieve regulatory compliance', 'celex:32024R1689/oj#art_57/par_9/a').
declared(objective_supporting_best_practices/1, 'supporting sharing of best practices through cooperation', 'celex:32024R1689/oj#art_57/par_9/b').
declared(objective_fostering_innovation_competitiveness/1, 'fostering innovation and competitiveness and facilitating AI ecosystem development', 'celex:32024R1689/oj#art_57/par_9/c').
declared(objective_contributing_to_evidence_based_learning/1, 'contributing to evidence-based regulatory learning', 'celex:32024R1689/oj#art_57/par_9/d').
declared(objective_facilitating_market_access/1, 'facilitating and accelerating access to Union market for AI systems', 'celex:32024R1689/oj#art_57/par_9/e').
declared(must_ensure_authorities_associated/2, 'must ensure data protection authorities and other authorities are associated', 'celex:32024R1689/oj#art_57/par_10').
declared(involved_in_supervision/2, 'involved in supervision to extent of respective tasks and powers', 'celex:32024R1689/oj#art_57/par_10').
declared(shall_not_affect_supervisory_powers/1, 'shall not affect supervisory or corrective powers of competent authorities', 'celex:32024R1689/oj#art_57/par_11').
declared(significant_risks_shall_result_in_mitigation/1, 'significant risks shall result in adequate mitigation', 'celex:32024R1689/oj#art_57/par_11').
declared(has_power_to_suspend/2, 'national competent authorities have power to suspend testing or participation', 'celex:32024R1689/oj#art_57/par_11').
declared(must_inform_ai_office/2, 'must inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57/par_11').
declared(shall_exercise_within_limits/2, 'shall exercise supervisory powers within limits of relevant law', 'celex:32024R1689/oj#art_57/par_11').
declared(using_discretionary_powers/2, 'using discretionary powers when implementing legal provisions', 'celex:32024R1689/oj#art_57/par_11').
declared(with_objective/2, 'with objective of supporting innovation in AI in the Union', 'celex:32024R1689/oj#art_57/par_11').
declared(shall_remain_liable/2, 'providers and prospective providers shall remain liable under applicable law', 'celex:32024R1689/oj#art_57/par_12').
declared(no_administrative_fines_imposed/2, 'no administrative fines shall be imposed for infringements', 'celex:32024R1689/oj#art_57/par_12').
declared(observes_specific_plan_and_terms/1, 'prospective providers observe specific plan and terms and conditions', 'celex:32024R1689/oj#art_57/par_12').
declared(follows_guidance_in_good_faith/1, 'follows in good faith the guidance given by national competent authority', 'celex:32024R1689/oj#art_57/par_12').
declared(no_fines_for_other_law/2, 'no administrative fines for other Union and national law where authorities actively involved', 'celex:32024R1689/oj#art_57/par_12').
declared(shall_facilitate_cross_border_cooperation/1, 'shall be designed to facilitate cross-border cooperation', 'celex:32024R1689/oj#art_57/par_13').
declared(shall_coordinate_within_board/2, 'shall coordinate activities and cooperate within framework of the Board', 'celex:32024R1689/oj#art_57/par_14').
declared(must_inform_of_establishment/2, 'must inform AI Office and Board of establishment of sandbox', 'celex:32024R1689/oj#art_57/par_15').
declared(may_ask_for_support/2, 'may ask AI Office and Board for support and guidance', 'celex:32024R1689/oj#art_57/par_15').
declared(shall_make_publicly_available/2, 'AI Office shall make publicly available list of planned and existing sandboxes', 'celex:32024R1689/oj#art_57/par_15').
declared(shall_keep_up_to_date/2, 'shall keep list up to date', 'celex:32024R1689/oj#art_57/par_15').
declared(with_view_to_encouraging/2, 'with a view to encouraging more interaction and cross-border cooperation', 'celex:32024R1689/oj#art_57/par_15').
declared(must_submit_annual_reports/2, 'must submit annual reports to AI Office and Board', 'celex:32024R1689/oj#art_57/par_16').
declared(from_one_year_after_establishment/1, 'from one year after establishment and every year thereafter until termination', 'celex:32024R1689/oj#art_57/par_16').
declared(must_submit_final_report/2, 'must submit final report', 'celex:32024R1689/oj#art_57/par_16').
declared(shall_provide_information_on/2, 'shall provide information on progress and results', 'celex:32024R1689/oj#art_57/par_16').
declared(shall_make_available_to_public/2, 'shall make annual reports or abstracts available to public online', 'celex:32024R1689/oj#art_57/par_16').
declared(shall_take_into_account_reports/2, 'Commission shall take annual reports into account when exercising tasks', 'celex:32024R1689/oj#art_57/par_16').
declared(shall_develop_interface/2, 'Commission shall develop single and dedicated interface', 'celex:32024R1689/oj#art_57/par_17').
declared(containing_relevant_information/1, 'containing all relevant information related to AI regulatory sandboxes', 'celex:32024R1689/oj#art_57/par_17').
declared(allow_stakeholders_to_interact/1, 'allow stakeholders to interact with sandboxes and raise enquiries', 'celex:32024R1689/oj#art_57/par_17').
declared(seek_non_binding_guidance/2, 'seek non-binding guidance on conformity of innovative products', 'celex:32024R1689/oj#art_57/par_17').
declared(shall_proactively_coordinate/2, 'shall proactively coordinate with national competent authorities', 'celex:32024R1689/oj#art_57/par_17').
must_establish(MemberState, Sandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(Sandbox),
    national_level(Sandbox),
    competent_authority(Authority),
    responsible_for(MemberState, Authority).
must_be_operational_by(Sandbox, date(2026, 8, 2)) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, 'celex:32024R1689/oj#art_57/par_1').
may_establish_jointly(MemberState, OtherMemberState) :-
    member_state(MemberState),
    member_state(OtherMemberState),
    MemberState \= OtherMemberState.
may_provide_support(commission, establishment(Sandbox)) :-
    ai_regulatory_sandbox(Sandbox).
may_provide_support(commission, operation(Sandbox)) :-
    ai_regulatory_sandbox(Sandbox).
obligation_fulfilled_by_participation(MemberState, ExistingSandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(ExistingSandbox),
    equivalent_national_coverage(ExistingSandbox).
may_establish_additional(MemberState, Sandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(Sandbox),
    regional_or_local_level(Sandbox).
may_establish_additional(MemberState, Sandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(Sandbox),
    jointly_established(Sandbox).
may_establish_sandbox(edps, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    for_union_institutions(Sandbox).
exercises_roles_of(edps, national_competent_authority).
must_allocate_sufficient_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    referred_to_in(Authority, 'celex:32024R1689/oj#art_57/par_1').
must_allocate_sufficient_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    referred_to_in(Authority, 'celex:32024R1689/oj#art_57/par_2').
may_cooperate(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    relevant_authority(OtherAuthority),
    OtherAuthority \= Authority.
may_allow_involvement(Authority, Actor) :-
    national_competent_authority(Authority),
    actor_in_ai_ecosystem(Actor).
shall_not_affect_other_sandboxes(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under_other_law(Sandbox).
must_ensure_cooperation(MemberState, AuthoritySupervisingOtherSandbox) :-
    member_state(MemberState),
    authority_supervising_sandbox(AuthoritySupervisingOtherSandbox, OtherSandbox),
    other_regulatory_sandbox(OtherSandbox),
    national_competent_authority(NCA),
    responsible_for(MemberState, NCA).
provides_controled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, 'celex:32024R1689/oj#art_57/par_1').
facilitates_development_training_testing_validation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, 'celex:32024R1689/oj#art_57/par_1').
limited_time_before(Sandbox, placing_on_market(S)) :-
    ai_regulatory_sandbox(Sandbox),
    innovative_ai_system(S),
    tested_in(S, Sandbox).
limited_time_before(Sandbox, putting_into_service(S)) :-
    ai_regulatory_sandbox(Sandbox),
    innovative_ai_system(S),
    tested_in(S, Sandbox).
pursuant_to_sandbox_plan(Sandbox, Plan) :-
    ai_regulatory_sandbox(Sandbox),
    sandbox_plan(Plan),
    agreed_between(Plan, provider_or_prospective_provider, competent_authority).
may_include_testing_in_real_world_conditions(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_under(Sandbox, 'celex:32024R1689/oj#art_57/par_1').
must_provide_guidance_supervision_support(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    supervised_by(Authority, Sandbox).
with_view_to(Authority, identifying_risks(Sandbox)) :-
    must_provide_guidance_supervision_support(Authority, Sandbox).
with_view_to(Authority, testing_mitigation_measures(Sandbox)) :-
    must_provide_guidance_supervision_support(Authority, Sandbox).
must_provide_guidance_on_regulatory_expectations(Authority, Participant) :-
    national_competent_authority(Authority),
    participant_in_sandbox(Participant, Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_provide_written_proof(Authority, Participant) :-
    national_competent_authority(Authority),
    provider_or_prospective_provider(Participant),
    requested(Participant, written_proof),
    activities_successfully_carried_out(Participant, Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_provide_exit_report(Authority, Participant) :-
    national_competent_authority(Authority),
    provider_or_prospective_provider(Participant),
    participant_in_sandbox(Participant, Sandbox),
    ai_regulatory_sandbox(Sandbox).
may_use_documentation(Provider, demonstrate_compliance) :-
    provider_or_prospective_provider(Provider),
    has_written_proof(Provider, _),
    has_exit_report(Provider, _).
shall_be_taken_positively_into_account(Document, Authority) :-
    exit_report(Document),
    market_surveillance_authority(Authority).
shall_be_taken_positively_into_account(Document, Body) :-
    written_proof(Document),
    market_surveillance_authority(Authority).
shall_be_taken_positively_into_account(Document, Body) :-
    exit_report(Document),
    notified_body(Body).
shall_be_taken_positively_into_account(Document, Body) :-
    written_proof(Document),
    notified_body(Body).
with_view_to_accelerating(Document, conformity_assessment_procedure) :-
    shall_be_taken_positively_into_account(Document, _).
authorised_to_access_exit_reports(Entity) :-
    commission(Entity).
authorised_to_access_exit_reports(Entity) :-
    ai_office(Entity).
authorised_to_access_exit_reports(Entity) :-
    board(Entity).
shall_take_into_account(Entity, exit_report(Provider)) :-
    authorised_to_access_exit_reports(Entity),
    has_exit_report(Provider, _),
    exercising_tasks_under(Entity, 'celex:32024R1689/oj').
may_be_made_publicly_available(ExitReport, Provider) :-
    exit_report(ExitReport),
    provider_or_prospective_provider(Provider),
    has_exit_report(Provider, ExitReport),
    explicitly_agrees(Provider, public_disclosure),
    national_competent_authority(Authority),
    explicitly_agrees(Authority, public_disclosure).
aims_to_contribute_to(Sandbox, improving_legal_certainty) :-
    ai_regulatory_sandbox(Sandbox).
objective_improving_legal_certainty(Sandbox) :-
    aims_to_contribute_to(Sandbox, improving_legal_certainty).
objective_supporting_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_fostering_innovation_competitiveness(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_contributing_to_evidence_based_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
objective_facilitating_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_ensure_authorities_associated(MemberState, DPA) :-
    member_state(MemberState),
    data_protection_authority(DPA),
    innovative_ai_system(S),
    involves_processing_of_personal_data(S),
    tested_in(S, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    national_competent_authority(Authority),
    responsible_for(MemberState, Authority).
must_ensure_authorities_associated(MemberState, OtherAuthority) :-
    member_state(MemberState),
    other_national_authority(OtherAuthority),
    innovative_ai_system(S),
    falls_under_supervisory_remit(S, OtherAuthority),
    tested_in(S, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    national_competent_authority(Authority),
    responsible_for(MemberState, Authority).
involved_in_supervision(Authority, Aspect) :-
    data_protection_authority(Authority),
    aspect_of_sandbox(Aspect, personal_data_processing).
involved_in_supervision(Authority, Aspect) :-
    other_national_authority(Authority),
    aspect_of_sandbox(Aspect, Authority).
shall_not_affect_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
significant_risks_shall_result_in_mitigation(S) :-
    innovative_ai_system(S),
    tested_in(S, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    significant_risk_to_health_and_safety(S).
significant_risks_shall_result_in_mitigation(S) :-
    innovative_ai_system(S),
    tested_in(S, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    significant_risk_to_fundamental_rights(S).
has_power_to_suspend(Authority, testing_process(S)) :-
    national_competent_authority(Authority),
    innovative_ai_system(S),
    tested_in(S, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    \+ effective_mitigation_possible(S).
has_power_to_suspend(Authority, participation_in_sandbox(Participant)) :-
    national_competent_authority(Authority),
    participant_in_sandbox(Participant, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    \+ effective_mitigation_possible(Participant).
must_inform_ai_office(Authority, suspension_decision) :-
    has_power_to_suspend(Authority, _).
shall_exercise_within_limits(Authority, relevant_law) :-
    national_competent_authority(Authority),
    supervising_sandbox(Authority, _).
using_discretionary_powers(Authority, implementation_of_legal_provisions) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox_project(Project),
    implements(Authority, Project).
with_objective(Authority, supporting_innovation_in_ai) :-
    national_competent_authority(Authority),
    using_discretionary_powers(Authority, _).
shall_remain_liable(Provider, damage_to_third_parties) :-
    participant_in_sandbox(Provider, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    provider_or_prospective_provider(Provider),
    damage_inflicted_on_third_parties(Damage, experimentation_in(Sandbox)).
no_administrative_fines_imposed(Authority, Provider) :-
    national_competent_authority(Authority),
    prospective_provider(Provider),
    observes_specific_plan_and_terms(Provider),
    follows_guidance_in_good_faith(Provider),
    infringement_of(Provider, 'celex:32024R1689/oj').
no_fines_for_other_law(Authority, Provider) :-
    other_competent_authority(Authority),
    actively_involved_in_supervision(Authority, S),
    tested_in(S, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    provided_guidance_for_compliance(Authority, S),
    provider_or_prospective_provider(Provider),
    participant_in_sandbox(Provider, Sandbox).
shall_facilitate_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    relevant(Sandbox, cross_border_cooperation).
shall_coordinate_within_board(Authority, activities) :-
    national_competent_authority(Authority).
must_inform_of_establishment(Authority, ai_office) :-
    national_competent_authority(Authority),
    establishes(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox).
must_inform_of_establishment(Authority, board) :-
    national_competent_authority(Authority),
    establishes(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox).
may_ask_for_support(Authority, ai_office) :-
    national_competent_authority(Authority).
may_ask_for_support(Authority, board) :-
    national_competent_authority(Authority).
shall_make_publicly_available(ai_office, list_of_sandboxes) :-
    ai_office(ai_office).
shall_keep_up_to_date(ai_office, list_of_sandboxes) :-
    ai_office(ai_office).
with_view_to_encouraging(list_of_sandboxes, interaction_in_sandboxes).
with_view_to_encouraging(list_of_sandboxes, cross_border_cooperation).
must_submit_annual_reports(Authority, ai_office) :-
    national_competent_authority(Authority),
    establishes(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    from_one_year_after_establishment(Sandbox).
must_submit_annual_reports(Authority, board) :-
    national_competent_authority(Authority),
    establishes(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    from_one_year_after_establishment(Sandbox).
from_one_year_after_establishment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established(Sandbox, Date),
    one_year_after(Date, _).
must_submit_final_report(Authority, ai_office) :-
    national_competent_authority(Authority),
    establishes(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    terminated(Sandbox).
must_submit_final_report(Authority, board) :-
    national_competent_authority(Authority),
    establishes(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    terminated(Sandbox).
shall_provide_information_on(Report, progress_and_results) :-
    annual_report(Report, Sandbox),
    ai_regulatory_sandbox(Sandbox).
shall_provide_information_on(Report, best_practices) :-
    annual_report(Report, _).
shall_provide_information_on(Report, incidents) :-
    annual_report(Report, _).
shall_provide_information_on(Report, lessons_learnt) :-
    annual_report(Report, _).
shall_provide_information_on(Report, recommendations) :-
    annual_report(Report, _).
shall_make_available_to_public(Authority, Report) :-
    national_competent_authority(Authority),
    annual_report(Report, _).
shall_make_available_to_public(Authority, abstract_of(Report)) :-
    national_competent_authority(Authority),
    annual_report(Report, _).
shall_take_into_account_reports(commission, Report) :-
    annual_report(Report, _),
    exercising_tasks_under(commission, 'celex:32024R1689/oj').
shall_develop_interface(commission, single_dedicated_interface) :-
    commission(commission).
containing_relevant_information(single_dedicated_interface, ai_regulatory_sandbox).
allow_stakeholders_to_interact(single_dedicated_interface).
seek_non_binding_guidance(Stakeholder, conformity_of(Product)) :-
    stakeholder(Stakeholder),
    innovative_product_embedding_ai(Product).
shall_proactively_coordinate(commission, national_competent_authority) :-
    commission(commission),
    national_competent_authority(_).
provenance(must_establish/2, 'celex:32024R1689/oj#art_57').
provenance(must_be_operational_by/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_jointly/2, 'celex:32024R1689/oj#art_57').
provenance(may_provide_support/3, 'celex:32024R1689/oj#art_57').
provenance(obligation_fulfilled_by_participation/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_additional/2, 'celex:32024R1689/oj#art_57').
provenance(may_establish_sandbox/2, 'celex:32024R1689/oj#art_57').
provenance(exercises_roles_of/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57').
provenance(may_cooperate/2, 'celex:32024R1689/oj#art_57').
provenance(may_allow_involvement/2, 'celex:32024R1689/oj#art_57').
provenance(shall_not_affect_other_sandboxes/1, 'celex:32024R1689/oj#art_57').
provenance(must_ensure_cooperation/2, 'celex:32024R1689/oj#art_57').
provenance(provides_controlled_environment/1, 'celex:32024R1689/oj#art_57').
provenance(facilitates_development_training_testing_validation/1, 'celex:32024R1689/oj#art_57').
provenance(limited_time_before/2, 'celex:32024R1689/oj#art_57').
provenance(pursuant_to_sandbox_plan/2, 'celex:32024R1689/oj#art_57').
provenance(may_include_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_supervision_support/2, 'celex:32024R1689/oj#art_57').
provenance(with_view_to/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_guidance_on_regulatory_expectations/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(may_use_documentation/2, 'celex:32024R1689/oj#art_57').
provenance(shall_be_taken_positively_into_account/2, 'celex:32024R1689/oj#art_57').
provenance(with_view_to_accelerating/2, 'celex:32024R1689/oj#art_57').
provenance(authorised_to_access_exit_reports/1, 'celex:32024R1689/oj#art_57').
provenance(shall_take_into_account/2, 'celex:32024R1689/oj#art_57').
provenance(may_be_made_publicly_available/2, 'celex:32024R1689/oj#art_57').
provenance(aims_to_contribute_to/2, 'celex:32024R1689/oj#art_57').
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_supporting_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_fostering_innovation_competitiveness/1, 'celex:32024R1689/oj#art_57').
provenance(objective_contributing_to_evidence_based_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_facilitating_market_access/1, 'celex:32024R1689/oj#art_57').
provenance(must_ensure_authorities_associated/2, 'celex:32024R1689/oj#art_57').
provenance(involved_in_supervision/2, 'celex:32024R1689/oj#art_57').
provenance(shall_not_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
provenance(significant_risks_shall_result_in_mitigation/1, 'celex:32024R1689/oj#art_57').
provenance(has_power_to_suspend/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office/2, 'celex:32024R1689/oj#art_57').
provenance(shall_exercise_within_limits/2, 'celex:32024R1689/oj#art_57').
provenance(using_discretionary_powers/2, 'celex:32024R1689/oj#art_57').
provenance(with_objective/2, 'celex:32024R1689/oj#art_57').
provenance(shall_remain_liable/2, 'celex:32024R1689/oj#art_57').
provenance(no_administrative_fines_imposed/2, 'celex:32024R1689/oj#art_57').
provenance(no_fines_for_other_law/2, 'celex:32024R1689/oj#art_57').
provenance(shall_facilitate_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
provenance(shall_coordinate_within_board/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform_of_establishment/2, 'celex:32024R1689/oj#art_57').
provenance(may_ask_for_support/2, 'celex:32024R1689/oj#art_57').
provenance(shall_make_publicly_available/2, 'celex:32024R1689/oj#art_57').
provenance(shall_keep_up_to_date/2, 'celex:32024R1689/oj#art_57').
provenance(with_view_to_encouraging/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_57').
provenance(from_one_year_after_establishment/1, 'celex:32024R1689/oj#art_57').
provenance(must_submit_final_report/2, 'celex:32024R1689/oj#art_57').
provenance(shall_provide_information_on/2, 'celex:32024R1689/oj#art_57').
provenance(shall_make_available_to_public/2, 'celex:32024R1689/oj#art_57').
provenance(shall_take_into_account_reports/2, 'celex:32024R1689/oj#art_57').
provenance(shall_develop_interface/2, 'celex:32024R1689/oj#art_57').
provenance(containing_relevant_information/1, 'celex:32024R1689/oj#art_57').
provenance(allow_stakeholders_to_interact/1, 'celex:32024R1689/oj#art_57').
provenance(seek_non_binding_guidance/2, 'celex:32024R1689/oj#art_57').
provenance(shall_proactively_coordinate/2, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/2, 'Commission shall adopt implementing acts specifying detailed arrangements', 'celex:32024R1689/oj#art_58/par_1').
declared(implementing_acts_content/2, 'content that implementing acts shall include', 'celex:32024R1689/oj#art_58/par_1').
declared(common_principle/2, 'common principle on a specific issue', 'celex:32024R1689/oj#art_58/par_1').
declared(eligibility_and_selection_criteria/1, 'criteria for participation in AI regulatory sandbox', 'celex:32024R1689/oj#art_58/par_1(a)').
declared(application_procedures/1, 'procedures for application, participation, monitoring, exiting and termination', 'celex:32024R1689/oj#art_58/par_1(b)').
declared(terms_and_conditions/1, 'terms and conditions applicable to participants', 'celex:32024R1689/oj#art_58/par_1(c)').
declared(examination_procedure/1, 'examination procedure for adopting implementing acts', 'celex:32024R1689/oj#art_58/par_1').
declared(implementing_acts_ensure/2, 'requirement that implementing acts shall ensure', 'celex:32024R1689/oj#art_58/par_2').
declared(open_to_applicants/1, 'sandboxes open to applying providers or prospective providers fulfilling criteria', 'celex:32024R1689/oj#art_58/par_2(a)').
declared(inform_applicants_within_period/1, 'national competent authorities inform applicants within specified period', 'celex:32024R1689/oj#art_58/par_2(a)').
declared(broad_and_equal_access/1, 'sandboxes allow broad and equal access and keep up with demand', 'celex:32024R1689/oj#art_58/par_2(b)').
declared(partnership_applications_permitted/1, 'providers may submit applications in partnerships', 'celex:32024R1689/oj#art_58/par_2(b)').
declared(support_flexibility/1, 'arrangements support flexibility for national competent authorities', 'celex:32024R1689/oj#art_58/par_2(c)').
declared(free_of_charge_for_smes/1, 'access free of charge for SMEs including start-ups', 'celex:32024R1689/oj#art_58/par_2(d)').
declared(exceptional_costs_recovery/1, 'exceptional costs may be recovered fairly and proportionately', 'celex:32024R1689/oj#art_58/par_2(d)').
declared(facilitate_compliance/1, 'sandboxes facilitate compliance with conformity assessment and codes of conduct', 'celex:32024R1689/oj#art_58/par_2(e)').
declared(facilitate_ecosystem_involvement/1, 'sandboxes facilitate involvement of other relevant actors', 'celex:32024R1689/oj#art_58/par_2(f)').
declared(simple_procedures/1, 'procedures are simple, easily intelligible and clearly communicated', 'celex:32024R1689/oj#art_58/par_2(g)').
declared(mutual_recognition/1, 'participation mutually and uniformly recognised with same legal effects across Union', 'celex:32024R1689/oj#art_58/par_2(g)').
declared(limited_participation_period/1, 'participation limited to appropriate period extendable by authority', 'celex:32024R1689/oj#art_58/par_2(h)').
declared(facilitate_testing_tools/1, 'sandboxes facilitate development of testing and assessment tools', 'celex:32024R1689/oj#art_58/par_2(i)').
declared(must_direct_to_services/2, 'prospective providers shall be directed to pre-deployment and value-adding services', 'celex:32024R1689/oj#art_58/par_3').
declared(must_agree_terms_and_conditions/2, 'authorities shall specifically agree terms and conditions with participants', 'celex:32024R1689/oj#art_58/par_4').
declared(must_cooperate_for_consistency/1, 'authorities shall cooperate with other authorities for consistent practices', 'celex:32024R1689/oj#art_58/par_4').
must_adopt_implementing_acts(commission, ai_regulatory_sandbox).
implementing_acts_content(ai_regulatory_sandbox, common_principle(eligibility_and_selection_criteria)).
implementing_acts_content(ai_regulatory_sandbox, common_principle(application_procedures)).
implementing_acts_content(ai_regulatory_sandbox, common_principle(terms_and_conditions)).
examination_procedure(art_98_par_2).
implementing_acts_ensure(ai_regulatory_sandbox, open_to_applicants).
implementing_acts_ensure(ai_regulatory_sandbox, broad_and_equal_access).
implementing_acts_ensure(ai_regulatory_sandbox, support_flexibility).
implementing_acts_ensure(ai_regulatory_sandbox, free_of_charge_for_smes).
implementing_acts_ensure(ai_regulatory_sandbox, facilitate_compliance).
implementing_acts_ensure(ai_regulatory_sandbox, facilitate_ecosystem_involvement).
implementing_acts_ensure(ai_regulatory_sandbox, simple_procedures).
implementing_acts_ensure(ai_regulatory_sandbox, limited_participation_period).
implementing_acts_ensure(ai_regulatory_sandbox, facilitate_testing_tools).
open_to_applicants(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    applying_provider_or_prospective_provider(_P),
    fulfils_eligibility_and_selection_criteria(_P, Sandbox).
transparent_and_fair(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    eligibility_and_selection_criteria(Sandbox).
inform_applicants_within_period(Authority, Applicant) :-
    national_competent_authority(Authority),
    applying_provider_or_prospective_provider(Applicant),
    within(days(90), decision(Authority, application(Applicant))).
broad_and_equal_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
partnership_applications_permitted(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
support_flexibility(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
free_of_charge_for_smes(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    sme_or_start_up(_Participant).
exceptional_costs_recovery(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    exceptional_costs(_Costs),
    national_competent_authority(_Authority).
facilitate_compliance(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    learning_outcomes(Sandbox, _Outcomes),
    provider_or_prospective_provider(_P).
facilitate_ecosystem_involvement(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
simple_procedures(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
mutual_recognition(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_by_member_state_or_edps(Sandbox).
limited_participation_period(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    project_complexity_and_scale(_Project, _Complexity, _Scale),
    extendable_by_authority(period(_Project), _Authority).
facilitate_testing_tools(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_direct_to_services(Authority, ProspectiveProvider) :-
    national_competent_authority(Authority),
    prospective_provider_in_sandbox(ProspectiveProvider, _Sandbox),
    sme_or_start_up(ProspectiveProvider),
    relevant_pre_deployment_services(_Services).
must_agree_terms_and_conditions(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(_Testing),
    supervised_within_sandbox(_Testing, _Sandbox),
    ai_regulatory_sandbox(_Sandbox),
    participant(Participant, _Testing),
    terms_and_conditions(_Testing, _Safeguards),
    appropriate_safeguards(_Safeguards),
    protect_fundamental_rights_health_safety(_Safeguards).
must_cooperate_for_consistency(Authority) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(_Testing),
    supervised_within_sandbox(_Testing, _Sandbox),
    ai_regulatory_sandbox(_Sandbox),
    cooperate_with_other_authorities(Authority, _OtherAuthority),
    national_competent_authority(_OtherAuthority).
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58/par_1').
provenance(implementing_acts_content/2, 'celex:32024R1689/oj#art_58/par_1').
provenance(common_principle/2, 'celex:32024R1689/oj#art_58/par_1').
provenance(eligibility_and_selection_criteria/1, 'celex:32024R1689/oj#art_58/par_1(a)').
provenance(application_procedures/1, 'celex:32024R1689/oj#art_58/par_1(b)').
provenance(terms_and_conditions/1, 'celex:32024R1689/oj#art_58/par_1(c)').
provenance(examination_procedure/1, 'celex:32024R1689/oj#art_58/par_1').
provenance(implementing_acts_ensure/2, 'celex:32024R1689/oj#art_58/par_2').
provenance(open_to_applicants/1, 'celex:32024R1689/oj#art_58/par_2(a)').
provenance(transparent_and_fair/1, 'celex:32024R1689/oj#art_58/par_2(a)').
provenance(inform_applicants_within_period/2, 'celex:32024R1689/oj#art_58/par_2(a)').
provenance(broad_and_equal_access/1, 'celex:32024R1689/oj#art_58/par_2(b)').
provenance(partnership_applications_permitted/1, 'celex:32024R1689/oj#art_58/par_2(b)').
provenance(support_flexibility/1, 'celex:32024R1689/oj#art_58/par_2(c)').
provenance(free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58/par_2(d)').
provenance(exceptional_costs_recovery/1, 'celex:32024R1689/oj#art_58/par_2(d)').
provenance(facilitate_compliance/1, 'celex:32024R1689/oj#art_58/par_2(e)').
provenance(facilitate_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58/par_2(f)').
provenance(simple_procedures/1, 'celex:32024R1689/oj#art_58/par_2(g)').
provenance(mutual_recognition/1, 'celex:32024R1689/oj#art_58/par_2(g)').
provenance(limited_participation_period/1, 'celex:32024R1689/oj#art_58/par_2(h)').
provenance(facilitate_testing_tools/1, 'celex:32024R1689/oj#art_58/par_2(i)').
provenance(must_direct_to_services/2, 'celex:32024R1689/oj#art_58/par_3').
provenance(must_agree_terms_and_conditions/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(must_cooperate_for_consistency/1, 'celex:32024R1689/oj#art_58/par_4').
references('celex:32024R1689/oj#art_58/par_1', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58/par_2', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58/par_2(e)', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58/par_2(e)', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58/par_3', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58/par_4', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_further_processing_of_personal_data_in_sandbox/1, 'further processing of personal data for developing certain AI systems in the AI regulatory sandbox is permitted', 'celex:32024R1689/oj#art_59').
declared(developed_for_substantial_public_interest/1, 'AI system developed for safeguarding substantial public interest by public authority or other person', 'celex:32024R1689/oj#art_59/par_1/pnt_a').
declared(public_safety_and_public_health/1, 'area of public safety and public health', 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_i').
declared(environmental_protection/1, 'area of environmental protection and quality improvement', 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_ii').
declared(energy_sustainability/1, 'area of energy sustainability', 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iii').
declared(transport_and_critical_infrastructure/1, 'area of transport safety and critical infrastructure resilience', 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iv').
declared(public_administration_efficiency/1, 'area of public administration and public services efficiency and quality', 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_v').
declared(necessary_for_compliance_with_chapter_3_section_2/1, 'data necessary for complying with requirements in chapter 3 section 2 that cannot be fulfilled with non-personal data', 'celex:32024R1689/oj#art_59/par_1/pnt_b').
declared(effective_monitoring_and_response_mechanisms/1, 'effective monitoring and response mechanisms for high risks to data subjects', 'celex:32024R1689/oj#art_59/par_1/pnt_c').
declared(separate_isolated_protected_environment/1, 'personal data in functionally separate, isolated and protected environment under provider control with authorised access only', 'celex:32024R1689/oj#art_59/par_1/pnt_d').
declared(data_sharing_restrictions/1, 'restrictions on sharing originally collected data and prohibition on sharing sandbox-created personal data outside sandbox', 'celex:32024R1689/oj#art_59/par_1/pnt_e').
declared(no_adverse_measures_or_decisions/1, 'processing does not lead to measures or decisions affecting data subjects nor affect their rights', 'celex:32024R1689/oj#art_59/par_1/pnt_f').
declared(technical_organisational_measures_and_deletion/1, 'appropriate technical and organisational measures and deletion upon termination or end of retention', 'celex:32024R1689/oj#art_59/par_1/pnt_g').
declared(logs_kept_for_duration/1, 'logs kept for duration of sandbox participation unless otherwise provided by law', 'celex:32024R1689/oj#art_59/par_1/pnt_h').
declared(technical_documentation_of_training_testing_validation/1, 'complete description of training, testing and validation process and results kept in technical documentation', 'celex:32024R1689/oj#art_59/par_1/pnt_i').
declared(summary_published_excluding_sensitive_data/1, 'short summary published on competent authority website excluding sensitive operational data for certain authorities', 'celex:32024R1689/oj#art_59/par_1/pnt_j').
declared(law_enforcement_sandbox_processing/1, 'processing of personal data in sandbox for law enforcement purposes', 'celex:32024R1689/oj#art_59/par_2').
declared(specific_union_or_national_law_basis/1, 'processing based on specific Union or national law', 'celex:32024R1689/oj#art_59/par_2').
permitted_further_processing_of_personal_data_in_sandbox(P) :-
    ai_regulatory_sandbox(P),
    personal_data(P),
    lawfully_collected_for_other_purposes(P),
    processed_for_developing_training_testing_ai_systems(P),
    developed_for_substantial_public_interest(P),
    public_interest_area(P),
    necessary_for_compliance_with_chapter_3_section_2(P),
    effective_monitoring_and_response_mechanisms(P),
    separate_isolated_protected_environment(P),
    data_sharing_restrictions(P),
    no_adverse_measures_or_decisions(P),
    technical_organisational_measures_and_deletion(P),
    logs_kept_for_duration(P),
    technical_documentation_of_training_testing_validation(P),
    summary_published_excluding_sensitive_data(P).
developed_for_substantial_public_interest(P) :-
    ai_regulatory_sandbox(P),
    developed_by_public_authority_or_person(P),
    safeguarding_substantial_public_interest(P).
public_interest_area(P) :-
    public_safety_and_public_health(P).
public_interest_area(P) :-
    environmental_protection(P).
public_interest_area(P) :-
    energy_sustainability(P).
public_interest_area(P) :-
    transport_and_critical_infrastructure(P).
public_interest_area(P) :-
    public_administration_efficiency(P).
public_safety_and_public_health(P) :-
    ai_regulatory_sandbox(P),
    purpose(safeguarding_public_safety_and_public_health, P),
    (   disease_detection(P)
    ;   disease_diagnosis(P)
    ;   disease_prevention(P)
    ;   disease_control(P)
    ;   disease_treatment(P)
    ;   improvement_of_health_care_systems(P)
    ).
environmental_protection(P) :-
    ai_regulatory_sandbox(P),
    purpose(high_level_of_environmental_protection, P),
    (   improvement_of_environmental_quality(P)
    ;   protection_of_biodiversity(P)
    ;   protection_against_pollution(P)
    ;   green_transition_measures(P)
    ;   climate_change_mitigation(P)
    ;   climate_change_adaptation(P)
    ).
energy_sustainability(P) :-
    ai_regulatory_sandbox(P),
    purpose(energy_sustainability, P).
transport_and_critical_infrastructure(P) :-
    ai_regulatory_sandbox(P),
    purpose(safety_and_resilience_of_transport_and_critical_infrastructure, P),
    (   safety_and_resilience_of_transport_systems(P)
    ;   safety_and_resilience_of_mobility(P)
    ;   safety_and_resilience_of_critical_infrastructure(P)
    ;   safety_and_resilience_of_networks(P)
    ).
public_administration_efficiency(P) :-
    ai_regulatory_sandbox(P),
    purpose(efficiency_and_quality_of_public_administration_and_services, P).
necessary_for_compliance_with_chapter_3_section_2(P) :-
    ai_regulatory_sandbox(P),
    data_processed_necessary_for_compliance(P),
    \+ can_be_fulfilled_with_anonymised_synthetic_or_non_personal_data(P).
effective_monitoring_and_response_mechanisms(P) :-
    ai_regulatory_sandbox(P),
    monitoring_mechanisms_identify_high_risks(P),
    response_mechanisms_mitigate_risks(P),
    stop_processing_available(P).
separate_isolated_protected_environment(P) :-
    ai_regulatory_sandbox(P),
    functionally_separate_data_processing_environment(P),
    isolated_data_processing_environment(P),
    protected_data_processing_environment(P),
    under_control_of_prospective_provider(P),
    only_authorised_persons_have_access(P).
data_sharing_restrictions(P) :-
    ai_regulatory_sandbox(P),
    originally_collected_data_shared_only_under_data_protection_law(P),
    sandbox_created_personal_data_not_shared_outside_sandbox(P).
no_adverse_measures_or_decisions(P) :-
    ai_regulatory_sandbox(P),
    \+ leads_to_measures_or_decisions_affecting_data_subjects(P),
    \+ affects_application_of_data_subject_rights(P).
technical_organisational_measures_and_deletion(P) :-
    ai_regulatory_sandbox(P),
    protected_by_appropriate_technical_and_organisational_measures(P),
    (   deleted_once_participation_terminated(P)
    ;   deleted_once_retention_period_ended(P)
    ).
logs_kept_for_duration(P) :-
    ai_regulatory_sandbox(P),
    logs_of_processing_kept(P),
    for_duration_of_participation(P),
    \+ otherwise_provided_by_union_or_national_law(P).
technical_documentation_of_training_testing_validation(P) :-
    ai_regulatory_sandbox(P),
    complete_and_detailed_description_kept(P),
    description_covers_process_and_rationale(P),
    description_covers_training(P),
    description_covers_testing(P),
    description_covers_validation(P),
    testing_results_kept(P),
    part_of_technical_documentation(P).
summary_published_excluding_sensitive_data(P) :-
    ai_regulatory_sandbox(P),
    short_summary_published(P),
    on_website_of_competent_authorities(P),
    summary_covers_ai_project(P),
    summary_covers_objectives(P),
    summary_covers_expected_results(P),
    \+ covers_sensitive_operational_data(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_law_enforcement(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_border_control(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_immigration(P).
covers_sensitive_operational_data(P) :-
    ai_regulatory_sandbox(P),
    sensitive_operational_data_in_relation_to_asylum(P).
law_enforcement_sandbox_processing(P) :-
    ai_regulatory_sandbox(P),
    under_control_and_responsibility_of_law_enforcement_authority(P),
    purpose(prevention_investigation_detection_prosecution_of_criminal_offences, P),
    specific_union_or_national_law_basis(P),
    permitted_further_processing_of_personal_data_in_sandbox(P).
must_publish_summary(CompetentAuthority, P) :-
    ai_regulatory_sandbox(P),
    competent_authority(CompetentAuthority),
    short_summary_published(P),
    on_website_of(CompetentAuthority, P),
    \+ covers_sensitive_operational_data(P).
provenance(permitted_further_processing_of_personal_data_in_sandbox/1, 'celex:32024R1689/oj#art_59').
provenance(developed_for_substantial_public_interest/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a').
provenance(public_safety_and_public_health/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_i').
provenance(environmental_protection/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_ii').
provenance(energy_sustainability/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iii').
provenance(transport_and_critical_infrastructure/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_iv').
provenance(public_administration_efficiency/1, 'celex:32024R1689/oj#art_59/par_1/pnt_a/pnt_v').
provenance(necessary_for_compliance_with_chapter_3_section_2/1, 'celex:32024R1689/oj#art_59/par_1/pnt_b').
provenance(effective_monitoring_and_response_mechanisms/1, 'celex:32024R1689/oj#art_59/par_1/pnt_c').
provenance(separate_isolated_protected_environment/1, 'celex:32024R1689/oj#art_59/par_1/pnt_d').
provenance(data_sharing_restrictions/1, 'celex:32024R1689/oj#art_59/par_1/pnt_e').
provenance(no_adverse_measures_or_decisions/1, 'celex:32024R1689/oj#art_59/par_1/pnt_f').
provenance(technical_organisational_measures_and_deletion/1, 'celex:32024R1689/oj#art_59/par_1/pnt_g').
provenance(logs_kept_for_duration/1, 'celex:32024R1689/oj#art_59/par_1/pnt_h').
provenance(technical_documentation_of_training_testing_validation/1, 'celex:32024R1689/oj#art_59/par_1/pnt_i').
provenance(summary_published_excluding_sensitive_data/1, 'celex:32024R1689/oj#art_59/par_1/pnt_j').
provenance(law_enforcement_sandbox_processing/1, 'celex:32024R1689/oj#art_59/par_2').
provenance(specific_union_or_national_law_basis/1, 'celex:32024R1689/oj#art_59/par_2').
provenance(must_publish_summary/2, 'celex:32024R1689/oj#art_59/par_1/pnt_j').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').
references('celex:32024R1689/oj#art_59/par_2', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(permitted_testing_in_real_world_conditions/1, 'testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes is permitted', 'celex:32024R1689/oj#art_60').
declared(permitted_testing_in_real_world_conditions/2, 'testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes is permitted for a specific provider or prospective provider', 'celex:32024R1689/oj#art_60').
declared(must_draw_up_real_world_testing_plan/2, 'provider or prospective provider must draw up a real-world testing plan', 'celex:32024R1689/oj#art_60/par_4/pnt_a').
declared(must_submit_real_world_testing_plan/2, 'provider or prospective provider must submit a real-world testing plan to market surveillance authority', 'celex:32024R1689/oj#art_60/par_4/pnt_a').
declared(approved_testing_in_real_world_conditions/1, 'testing in real world conditions has been approved by market surveillance authority', 'celex:32024R1689/oj#art_60/par_4/pnt_b').
declared(tacit_approval_applies/1, 'market surveillance authority has not answered within 30 days so tacit approval applies', 'celex:32024R1689/oj#art_60/par_4/pnt_b').
declared(must_register_testing/2, 'provider or prospective provider must register testing in real world conditions', 'celex:32024R1689/oj#art_60/par_4/pnt_c').
declared(must_appoint_legal_representative/2, 'provider or prospective provider must appoint a legal representative established in the Union', 'celex:32024R1689/oj#art_60/par_4/pnt_d').
declared(established_in_union/1, 'entity is established in the Union', 'celex:32024R1689/oj#art_60/par_4/pnt_d').
declared(legal_representative/2, 'entity has appointed a legal representative', 'celex:32024R1689/oj#art_60/par_4/pnt_d').
declared(transfer_to_third_countries_permitted/1, 'data transfer to third countries is permitted with appropriate safeguards', 'celex:32024R1689/oj#art_60/par_4/pnt_e').
declared(appropriate_safeguards_implemented/1, 'appropriate and applicable safeguards under Union law are implemented', 'celex:32024R1689/oj#art_60/par_4/pnt_e').
declared(testing_duration_valid/1, 'testing duration does not exceed permitted period', 'celex:32024R1689/oj#art_60/par_4/pnt_f').
declared(extended_testing_duration_valid/1, 'extended testing duration is valid with prior notification', 'celex:32024R1689/oj#art_60/par_4/pnt_f').
declared(must_notify_extension/2, 'provider or prospective provider must notify market surveillance authority of extension', 'celex:32024R1689/oj#art_60/par_4/pnt_f').
declared(vulnerable_groups_protected/1, 'subjects belonging to vulnerable groups are appropriately protected', 'celex:32024R1689/oj#art_60/par_4/pnt_g').
declared(deployers_informed/1, 'deployers or prospective deployers have been informed of relevant aspects', 'celex:32024R1689/oj#art_60/par_4/pnt_h').
declared(must_conclude_agreement/3, 'provider and deployer must conclude agreement specifying roles and responsibilities', 'celex:32024R1689/oj#art_60/par_4/pnt_h').
declared(informed_consent_obtained/1, 'subjects have given informed consent', 'celex:32024R1689/oj#art_60/par_4/pnt_i').
declared(law_enforcement_testing_exception/1, 'law enforcement testing where informed consent would prevent testing', 'celex:32024R1689/oj#art_60/par_4/pnt_i').
declared(no_negative_effect_on_subjects/1, 'testing and outcome have no negative effect on subjects', 'celex:32024R1689/oj#art_60/par_4/pnt_i').
declared(personal_data_deleted_after_test/1, 'personal data of subjects is deleted after test is performed', 'celex:32024R1689/oj#art_60/par_4/pnt_i').
declared(effectively_overseen/1, 'testing is effectively overseen by suitably qualified persons', 'celex:32024R1689/oj#art_60/par_4/pnt_j').
declared(suitably_qualified/1, 'person is suitably qualified in the relevant field with necessary capacity training and authority', 'celex:32024R1689/oj#art_60/par_4/pnt_j').
declared(predictions_reversible/1, 'predictions recommendations or decisions can be effectively reversed and disregarded', 'celex:32024R1689/oj#art_60/par_4/pnt_k').
declared(may_withdraw/2, 'subject or representative may withdraw from testing', 'celex:32024R1689/oj#art_60/par_5').
declared(must_delete_personal_data/2, 'must delete personal data upon withdrawal', 'celex:32024R1689/oj#art_60/par_5').
declared(must_report_serious_incident/2, 'provider or prospective provider must report serious incident to market surveillance authority', 'celex:32024R1689/oj#art_60/par_7').
declared(must_adopt_mitigation_measures/2, 'provider or prospective provider must adopt immediate mitigation measures', 'celex:32024R1689/oj#art_60/par_7').
declared(must_suspend_testing/2, 'provider or prospective provider must suspend testing until mitigation', 'celex:32024R1689/oj#art_60/par_7').
declared(must_terminate_testing/2, 'provider or prospective provider must terminate testing', 'celex:32024R1689/oj#art_60/par_7').
declared(must_establish_recall_procedure/2, 'provider or prospective provider must establish recall procedure upon termination', 'celex:32024R1689/oj#art_60/par_7').
declared(must_notify_suspension_termination/2, 'provider or prospective provider must notify market surveillance authority of suspension or termination', 'celex:32024R1689/oj#art_60/par_8').
declared(must_notify_final_outcomes/2, 'provider or prospective provider must notify final outcomes', 'celex:32024R1689/oj#art_60/par_8').
declared(liable_for_damage/2, 'provider or prospective provider is liable for damage caused during testing', 'celex:32024R1689/oj#art_60/par_9').
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    testing_in_real_world_conditions(T),
    testing_of(T, S),
    outside_ai_regulatory_sandbox(T),
    \+ prohibited_under_article_5(S).
permitted_testing_in_real_world_conditions(S, P) :-
    provider(P),
    permitted_testing_in_real_world_conditions(S),
    (provider(P); prospective_provider(P)),
    testing_of(T, S),
    conducted_by(T, P).
permitted_testing_in_real_world_conditions(S, P) :-
    prospective_provider(P),
    permitted_testing_in_real_world_conditions(S),
    testing_of(T, S),
    conducted_by(T, P).
permitted_testing_in_real_world_conditions(S, P) :-
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    provider(P),
    (provider(P); prospective_provider(P)),
    testing_in_real_world_conditions(T),
    testing_of(T, S),
    conducted_by(T, P),
    before_placing_on_market(S),
    before_putting_into_service(S),
    outside_ai_regulatory_sandbox(T).
permitted_testing_in_real_world_conditions(S, P) :-
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    prospective_provider(P),
    testing_in_real_world_conditions(T),
    testing_of(T, S),
    conducted_by(T, P),
    before_placing_on_market(S),
    before_putting_into_service(S),
    outside_ai_regulatory_sandbox(T).
testing_in_partnership(T, P, D) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    deployer(D),
    (deployer(D); prospective_deployer(D)),
    partner_in_testing(D, T).
testing_in_partnership(T, P, D) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    prospective_deployer(D),
    partner_in_testing(D, T).
must_draw_up_real_world_testing_plan(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)).
must_submit_real_world_testing_plan(P, T) :-
    must_draw_up_real_world_testing_plan(P, T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M).
approved_testing_in_real_world_conditions(T) :-
    testing_in_real_world_conditions(T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M),
    approved(A, T).
approved_testing_in_real_world_conditions(T) :-
    testing_in_real_world_conditions(T),
    tacit_approval_applies(T).
tacit_approval_applies(T) :-
    testing_in_real_world_conditions(T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M),
    submitted_for_approval(T),
    \+ answered_within_days(A, T, 30),
    national_law_provides_tacit_approval(M).
testing_remains_subject_to_authorisation(T) :-
    testing_in_real_world_conditions(T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M),
    submitted_for_approval(T),
    \+ answered_within_days(A, T, 30),
    \+ national_law_provides_tacit_approval(M).
must_register_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_of(T, S),
    \+ exempt_annex_3_point_1_6_7_law_enforcement_migration_asylum_border(S),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(S),
    registered_with_union_wide_unique_single_identification_number(T),
    registered_with_information_specified_in_annex_9(T).
must_register_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_of(T, S),
    exempt_annex_3_point_1_6_7_law_enforcement_migration_asylum_border(S),
    registered_in_secure_non_public_section_eu_database(T),
    registered_with_union_wide_unique_single_identification_number(T),
    registered_with_information_specified(T).
must_register_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_of(T, S),
    high_risk_ai_system_referred_in_annex_3_point_2(S),
    registered_in_accordance_with_article_49_par_5(T).
must_appoint_legal_representative(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    \+ established_in_union(P).
permitted_to_conduct_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    established_in_union(P).
permitted_to_conduct_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    legal_representative(P, R),
    established_in_union(R).
transfer_to_third_countries_permitted(T) :-
    testing_in_real_world_conditions(T),
    data_collected_and_processed_for_testing(T, D),
    transfer_to_third_countries(D),
    appropriate_safeguards_implemented(D).
testing_duration_valid(T) :-
    testing_in_real_world_conditions(T),
    duration_of_testing(T, D),
    not_longer_than_necessary(D, T),
    months(D, M),
    M =< 6.
extended_testing_duration_valid(T) :-
    testing_in_real_world_conditions(T),
    duration_of_testing(T, D),
    months(D, M),
    M =< 12,
    M > 6,
    prior_notification_of_extension(T),
    explanation_of_need_for_extension_provided(T).
must_notify_extension(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    seeks_extension(T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M).
vulnerable_groups_protected(T) :-
    testing_in_real_world_conditions(T),
    subject_of_testing(T, S),
    (belongs_to_vulnerable_group_due_to_age(S); belongs_to_vulnerable_group_due_to_disability(S)),
    appropriately_protected(S, T).
vulnerable_groups_protected(T) :-
    testing_in_real_world_conditions(T),
    \+ (subject_of_testing(T, S), belongs_to_vulnerable_group_due_to_age(S)),
    \+ (subject_of_testing(T, S), belongs_to_vulnerable_group_due_to_disability(S)).
deployers_informed(T) :-
    testing_in_real_world_conditions(T),
    organised_in_cooperation_with_deployers(T),
    deployer(D),
    (deployer(D); prospective_deployer(D)),
    informed_of_all_relevant_aspects(D, T),
    given_instructions_for_use(D, S),
    high_risk_ai_system(S),
    testing_of(T, S).
must_conclude_agreement(P, D, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    organised_in_cooperation_with_deployers(T),
    deployer(D),
    (deployer(D); prospective_deployer(D)),
    agreement_specifying_roles_and_responsibilities(P, D, T).
deployers_informed(T) :-
    testing_in_real_world_conditions(T),
    \+ organised_in_cooperation_with_deployers(T).
informed_consent_obtained(T) :-
    testing_in_real_world_conditions(T),
    subject_of_testing(T, S),
    informed_consent(S, T).
law_enforcement_testing_exception(T) :-
    testing_in_real_world_conditions(T),
    law_enforcement_context(T),
    seeking_informed_consent_would_prevent_testing(T),
    no_negative_effect_on_subjects(T),
    personal_data_deleted_after_test(T).
subjects_protected(T) :-
    informed_consent_obtained(T).
subjects_protected(T) :-
    law_enforcement_testing_exception(T).
effectively_overseen(T) :-
    testing_in_real_world_conditions(T),
    overseen_by_provider(T),
    overseen_by_deployers(T),
    suitably_qualified_persons_assigned(T).
suitably_qualified(Person) :-
    person(Person),
    qualified_in_relevant_field(Person),
    necessary_capacity(Person),
    necessary_training(Person),
    necessary_authority(Person).
predictions_reversible(T) :-
    testing_in_real_world_conditions(T),
    high_risk_ai_system(S),
    testing_of(T, S),
    predictions_can_be_reversed(S),
    recommendations_can_be_disregarded(S),
    decisions_can_be_reversed(S).
conditions_met_for_testing(T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    must_draw_up_real_world_testing_plan(P, T),
    must_submit_real_world_testing_plan(P, T),
    approved_testing_in_real_world_conditions(T),
    must_register_testing(P, T),
    permitted_to_conduct_testing(P, T),
    transfer_to_third_countries_permitted(T),
    (testing_duration_valid(T); extended_testing_duration_valid(T)),
    vulnerable_groups_protected(T),
    deployers_informed(T),
    subjects_protected(T),
    effectively_overseen(T),
    predictions_reversible(T).
may_withdraw(S, T) :-
    testing_in_real_world_conditions(T),
    (subject_of_testing(T, S); legally_designated_representative(S, T)).
may_withdraw(Rep, T) :-
    testing_in_real_world_conditions(T),
    legally_designated_representative(Rep, T),
    represents(Rep, S),
    subject_of_testing(T, S).
must_delete_personal_data(_P, S) :-
    testing_in_real_world_conditions(T),
    subject_of_testing(T, S),
    withdrew_from_testing(S, T),
    requested_deletion(S).
withdrawal_without_detriment(S, T) :-
    testing_in_real_world_conditions(T),
    withdrew_from_testing(S, T),
    \+ resulting_detriment(S, T).
no_justification_required(S, T) :-
    testing_in_real_world_conditions(T),
    withdrew_from_testing(S, T).
activities_already_carried_out_unaffected(T) :-
    testing_in_real_world_conditions(T),
    subject_of_testing(T, S),
    withdrew_from_testing(S, T).
powers_conferred_for_testing(M, A) :-
    member_state(M),
    market_surveillance_authority(A),
    located_in(A, M),
    power_to_require_information(A, provider),
    power_to_require_information(A, prospective_provider),
    power_to_carry_out_unannounced_remote_inspections(A),
    power_to_carry_out_unannounced_on_site_inspections(A),
    power_to_perform_checks_on_conduct_of_testing(A),
    power_to_perform_checks_on_high_risk_ai_systems(A).
must_report_serious_incident(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    serious_incident(I),
    identified_in_course_of_testing(I, T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M).
must_adopt_mitigation_measures(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    serious_incident(I),
    identified_in_course_of_testing(I, T).
must_suspend_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    serious_incident(I),
    identified_in_course_of_testing(I, T),
    \+ mitigation_measures_adopted(P, T).
must_terminate_testing(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    serious_incident(I),
    identified_in_course_of_testing(I, T),
    \+ mitigation_measures_adopted(P, T),
    \+ suspension_achieves_mitigation(T).
must_establish_recall_procedure(P, T) :-
    must_terminate_testing(P, T).
must_notify_suspension_termination(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    (suspended_testing(T); terminated_testing(T)),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M).
must_notify_final_outcomes(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    testing_completed(T),
    market_surveillance_authority(A),
    member_state_where_testing_conducted(T, M),
    located_in(A, M).
liable_for_damage(P, T) :-
    testing_in_real_world_conditions(T),
    conducted_by(T, P),
    (provider(P); prospective_provider(P)),
    damage_caused(D),
    in_course_of_testing(D, T).
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(must_draw_up_real_world_testing_plan/2, 'celex:32024R1689/oj#art_60/par_4/pnt_a').
provenance(must_submit_real_world_testing_plan/2, 'celex:32024R1689/oj#art_60/par_4/pnt_a').
provenance(approved_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_60/par_4/pnt_b').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60/par_4/pnt_b').
provenance(must_register_testing/2, 'celex:32024R1689/oj#art_60/par_4/pnt_c').
provenance(must_appoint_legal_representative/2, 'celex:32024R1689/oj#art_60/par_4/pnt_d').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_60/par_4/pnt_d').
provenance(legal_representative/2, 'celex:32024R1689/oj#art_60/par_4/pnt_d').
provenance(transfer_to_third_countries_permitted/1, 'celex:32024R1689/oj#art_60/par_4/pnt_e').
provenance(appropriate_safeguards_implemented/1, 'celex:32024R1689/oj#art_60/par_4/pnt_e').
provenance(testing_duration_valid/1, 'celex:32024R1689/oj#art_60/par_4/pnt_f').
provenance(extended_testing_duration_valid/1, 'celex:32024R1689/oj#art_60/par_4/pnt_f').
provenance(must_notify_extension/2, 'celex:32024R1689/oj#art_60/par_4/pnt_f').
provenance(vulnerable_groups_protected/1, 'celex:32024R1689/oj#art_60/par_4/pnt_g').
provenance(deployers_informed/1, 'celex:32024R1689/oj#art_60/par_4/pnt_h').
provenance(must_conclude_agreement/3, 'celex:32024R1689/oj#art_60/par_4/pnt_h').
provenance(informed_consent_obtained/1, 'celex:32024R1689/oj#art_60/par_4/pnt_i').
provenance(law_enforcement_testing_exception/1, 'celex:32024R1689/oj#art_60/par_4/pnt_i').
provenance(no_negative_effect_on_subjects/1, 'celex:32024R1689/oj#art_60/par_4/pnt_i').
provenance(personal_data_deleted_after_test/1, 'celex:32024R1689/oj#art_60/par_4/pnt_i').
provenance(effectively_overseen/1, 'celex:32024R1689/oj#art_60/par_4/pnt_j').
provenance(suitably_qualified/1, 'celex:32024R1689/oj#art_60/par_4/pnt_j').
provenance(predictions_reversible/1, 'celex:32024R1689/oj#art_60/par_4/pnt_k').
provenance(conditions_met_for_testing/1, 'celex:32024R1689/oj#art_60/par_4').
provenance(may_withdraw/2, 'celex:32024R1689/oj#art_60/par_5').
provenance(must_delete_personal_data/2, 'celex:32024R1689/oj#art_60/par_5').
provenance(powers_conferred_for_testing/2, 'celex:32024R1689/oj#art_60/par_6').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_adopt_mitigation_measures/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_suspend_testing/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_terminate_testing/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60/par_7').
provenance(must_notify_suspension_termination/2, 'celex:32024R1689/oj#art_60/par_8').
provenance(must_notify_final_outcomes/2, 'celex:32024R1689/oj#art_60/par_8').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60/par_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60/par_1').
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
declared(must_obtain_informed_consent/2, 'provider must obtain informed consent from subject before real-world testing', 'celex:32024R1689/oj#art_61').
declared(informed_consent_valid/1, 'informed consent that meets Article 61 requirements', 'celex:32024R1689/oj#art_61').
declared(informed_about_nature_and_objectives/1, 'subject informed about nature, objectives, and possible inconvenience', 'celex:32024R1689/oj#art_61').
declared(informed_about_conditions/1, 'subject informed about testing conditions and expected duration', 'celex:32024R1689/oj#art_61').
declared(informed_about_rights/1, 'subject informed about rights and guarantees including withdrawal', 'celex:32024R1689/oj#art_61').
declared(informed_about_reversal_arrangements/1, 'subject informed about arrangements for reversing AI system predictions', 'celex:32024R1689/oj#art_61').
declared(informed_about_identification_and_contact/1, 'subject informed about testing identification number and provider contact', 'celex:32024R1689/oj#art_61').
declared(must_date_and_document_consent/2, 'provider must date and document informed consent', 'celex:32024R1689/oj#art_61').
declared(must_provide_copy_of_consent/2, 'provider must give copy of consent to subject or legal representative', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(P, Subject) :-
    provider(P),
    subject(Subject),
    testing_in_real_world_conditions(T),
    outside_ai_regulatory_sandbox(T),
    before_participation(Subject, T),
    informed_consent_valid(Consent),
    obtained_from(Consent, Subject).
informed_consent_valid(Consent) :-
    freely_given(Consent),
    informed(Consent),
    informed_about_nature_and_objectives(Consent),
    informed_about_conditions(Consent),
    informed_about_rights(Consent),
    informed_about_reversal_arrangements(Consent),
    informed_about_identification_and_contact(Consent).
informed_about_nature_and_objectives(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, nature_and_objectives),
    informed(Subject, possible_inconvenience).
informed_about_conditions(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, testing_conditions),
    informed(Subject, expected_duration).
informed_about_rights(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, rights),
    informed(Subject, guarantees),
    right_to_refuse(Subject),
    right_to_withdraw(Subject),
    without_detriment(Subject),
    without_justification(Subject).
informed_about_reversal_arrangements(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, reversal_arrangements).
informed_about_identification_and_contact(Consent) :-
    consent_for(Consent, Subject),
    subject(Subject),
    informed(Subject, identification_number),
    informed(Subject, provider_contact_details).
must_date_and_document_consent(P, Consent) :-
    provider(P),
    informed_consent_valid(Consent),
    dated(Consent),
    documented(Consent).
must_provide_copy_of_consent(P, Recipient) :-
    provider(P),
    informed_consent_valid(Consent),
    (subject(Recipient); legal_representative(Recipient)),
    copy_given(Consent, Recipient).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_valid/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_nature_and_objectives/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_conditions/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_rights/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_reversal_arrangements/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_identification_and_contact/1, 'celex:32024R1689/oj#art_61').
provenance(must_date_and_document_consent/2, 'celex:32024R1689/oj#art_61').
provenance(must_provide_copy_of_consent/2, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(priority_access_to_ai_regulatory_sandbox/1, 'priority access to AI regulatory sandbox for eligible SMEs including start-ups', 'celex:32024R1689/oj#art_62').
declared(must_provide_priority_access/2, 'Member State obligation to provide priority access to AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(must_organise_awareness_training/2, 'Member State obligation to organise awareness raising and training activities', 'celex:32024R1689/oj#art_62').
declared(must_utilise_communication_channels/2, 'Member State obligation to utilise and establish communication channels', 'celex:32024R1689/oj#art_62').
declared(must_facilitate_standardisation_participation/2, 'Member State obligation to facilitate participation in standardisation development', 'celex:32024R1689/oj#art_62').
declared(must_take_into_account_sme_interests/2, 'obligation to take into account specific interests and needs of SME providers', 'celex:32024R1689/oj#art_62').
declared(must_provide_templates/2, 'AI Office obligation to provide standardised templates', 'celex:32024R1689/oj#art_62').
declared(must_develop_information_platform/2, 'AI Office obligation to develop and maintain single information platform', 'celex:32024R1689/oj#art_62').
declared(must_organise_communication_campaigns/2, 'AI Office obligation to organise communication campaigns', 'celex:32024R1689/oj#art_62').
declared(must_evaluate_promote_convergence/2, 'AI Office obligation to evaluate and promote convergence of best practices', 'celex:32024R1689/oj#art_62').
priority_access_to_ai_regulatory_sandbox(Sme) :-
    sme_including_start_up(Sme),
    registered_office_or_branch_in_union(Sme),
    fulfils_eligibility_conditions(Sme),
    fulfils_selection_criteria(Sme).
must_provide_priority_access(MemberState, Sme) :-
    member_state(MemberState),
    priority_access_to_ai_regulatory_sandbox(Sme).
must_organise_awareness_training(MemberState, Activities) :-
    member_state(MemberState),
    activities = awareness_training(application_of_regulation, tailored_to_needs(sme_including_start_up, deployer, local_public_authority_as_appropriate)).
must_utilise_communication_channels(MemberState, Channels) :-
    member_state(MemberState),
    channels = communication_channels(existing_dedicated, new_as_appropriate, for(sme_including_start_up, deployer, other_innovator, local_public_authority_as_appropriate), provide_advice_respond_queries(implementation_of_regulation, participation_in_ai_regulatory_sandbox)).
must_facilitate_standardisation_participation(MemberState, Stakeholders) :-
    member_state(MemberState),
    stakeholders = participation(sme, other_relevant_stakeholder, standardisation_development_process).
must_take_into_account_sme_interests(SettingBody, Fees) :-
    setting_body = fees_for_conformity_assessment,
    fees = conformity_assessment_fees,
    specific_interests_and_needs(sme_provider_including_start_up, Fees),
    reduce_fees_proportionately(Fees, size, market_size, other_relevant_indicators).
must_provide_templates(AiOffice, Templates) :-
    ai_office(AiOffice),
    templates = standardised_templates(areas_covered_by_regulation, specified_by(board_request)).
must_develop_information_platform(AiOffice, Platform) :-
    ai_office(AiOffice),
    platform = single_information_platform(easy_to_use_information, application_of_regulation, all_operators_across_union).
must_organise_communication_campaigns(AiOffice, Campaigns) :-
    ai_office(AiOffice),
    campaigns = communication_campaigns(raise_awareness, obligations_arising_from_regulation).
must_evaluate_promote_convergence(AiOffice, Practices) :-
    ai_office(AiOffice),
    practices = best_practices_convergence(public_procurement_procedures, ai_systems).
provenance(priority_access_to_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_promote_convergence/2, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'enterprise within the meaning of Commission Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(partner_or_linked_enterprise/1, 'partner enterprise or linked enterprise within the meaning of Commission Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(simplified_quality_management_system/1, 'quality management system complied with in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(must_develop_guidelines/2, 'Commission shall develop guidelines', 'celex:32024R1689/oj#art_63').
simplified_quality_management_system_applies(O) :-
    microenterprise(O),
    \+ partner_or_linked_enterprise(O).
must_comply_with_quality_management_system(O, simplified) :-
    microenterprise(O),
    \+ partner_or_linked_enterprise(O).
must_develop_guidelines(commission, quality_management_system_elements_for_microenterprises).
provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_or_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(simplified_quality_management_system_applies/1, 'celex:32024R1689/oj#art_63').
provenance(must_comply_with_quality_management_system/2, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').
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
declared(must_develop_expertise/2, 'Commission shall develop Union expertise in AI field', 'celex:32024R1689/oj#art_64').
declared(must_facilitate_tasks/2, 'Member States shall facilitate tasks entrusted to AI Office', 'celex:32024R1689/oj#art_64').
must_develop_expertise(commission, expertise(ai, union)) :-
    ai_office(_Office).
must_facilitate_tasks(MemberState, facilitation(AI_Office)) :-
    member_state(MemberState),
    ai_office(AI_Office).
provenance(must_develop_expertise/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_65').
declared(board_representative/1, 'representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(observer/1, 'entity participating in Board meetings without voting', 'celex:32024R1689/oj#art_65').
declared(meeting_attendee/1, 'entity attending Board meetings', 'celex:32024R1689/oj#art_65').
declared(chair/1, 'Chair of the Board', 'celex:32024R1689/oj#art_65').
declared(rules_of_procedure/1, 'rules governing Board operation', 'celex:32024R1689/oj#art_65').
declared(standing_sub_group/1, 'permanent sub-group of the Board', 'celex:32024R1689/oj#art_65').
declared(temporary_sub_group/1, 'temporary sub-group of the Board', 'celex:32024R1689/oj#art_65').
declared(sub_group/1, 'sub-group of the Board', 'celex:32024R1689/oj#art_65').
declared(market_surveillance_sub_group/1, 'standing sub-group for market surveillance authorities', 'celex:32024R1689/oj#art_65').
declared(notifying_authorities_sub_group/1, 'standing sub-group for notifying authorities', 'celex:32024R1689/oj#art_65').
declared(adco_for_regulation/1, 'administrative cooperation group for this Regulation', 'celex:32024R1689/oj#art_65').
declared(secretariat_provider/1, 'entity providing secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(mandate_period/1, 'period of appointment for Board representatives', 'celex:32024R1689/oj#art_65').
declared(voting_majority/1, 'majority required for Board decisions', 'celex:32024R1689/oj#art_65').
board(european_artificial_intelligence_board).
board_representative(R) :-
    member_state_representative(R),
    designated_for_board(R).
observer(european_data_protection_supervisor).
meeting_attendee(A) :-
    board_representative(A).
meeting_attendee(A) :-
    observer(A).
meeting_attendee(A) :-
    ai_office(A).
meeting_attendee(A) :-
    invited_authority_body_or_expert(A).
member_state_representative(R) :-
    board_representative(R).
designated_for_board(R) :-
    board_representative(R).
mandate_period(years(3)).
renewable_once(R) :-
    board_representative(R).
has_relevant_competences_and_powers(R) :-
    board_representative(R).
single_contact_point_for_board(R) :-
    board_representative(R).
single_contact_point_for_stakeholders(R) :-
    board_representative(R),
    member_state_needs_stakeholder_contact_point(R).
empowered_to_facilitate_consistency_and_coordination(R) :-
    board_representative(R).
collects_data_and_information_for_board_tasks(R) :-
    empowered_to_facilitate_consistency_and_coordination(R).
adopts_rules_of_procedure(R) :-
    board_representative(R).
voting_majority(two_thirds).
rules_of_procedure_adopted_by(Representatives, rules_of_procedure(board)) :-
    board_representative(Representatives),
    voting_majority(two_thirds).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), selection_process_for_chair).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), duration_of_chair_mandate).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), specifications_of_chair_tasks).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), detailed_voting_arrangements).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), organisation_of_board_activities).
rules_of_procedure_shall_lay_down(rules_of_procedure(board), organisation_of_sub_group_activities).
standing_sub_group(market_surveillance_sub_group).
standing_sub_group(notifying_authorities_sub_group).
market_surveillance_sub_group(market_surveillance_sub_group).
notifying_authorities_sub_group(notifying_authorities_sub_group).
sub_group(S) :-
    standing_sub_group(S).
sub_group(S) :-
    temporary_sub_group(S).
purpose_of_standing_sub_group(market_surveillance_sub_group, cooperation_and_exchange(market_surveillance_authorities, market_surveillance_issues)).
purpose_of_standing_sub_group(notifying_authorities_sub_group, cooperation_and_exchange(notifying_authorities, notified_bodies_issues)).
adco_for_regulation(market_surveillance_sub_group).
may_establish_other_sub_group(board, S) :-
    standing_sub_group(S).
may_establish_other_sub_group(board, S) :-
    temporary_sub_group(S).
purpose_of_other_sub_group(S, examining_specific_issues) :-
    sub_group(S),
    \+ standing_sub_group(S).
may_invite_to_sub_group_or_meeting(board, representative(advisory_forum), observer).
safeguards_objectivity_and_impartiality(board).
chair(C) :-
    board_representative(C),
    elected_as_chair(C).
secretariat_provider(ai_office).
convenes_meetings(ai_office, board) :-
    requested_by_chair(ai_office, C),
    chair(C).
prepares_agenda(ai_office, board) :-
    in_accordance_with(tasks(board), regulation('celex:32024R1689/oj')),
    in_accordance_with(rules_of_procedure(board), regulation('celex:32024R1689/oj')).
provenance(board/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
provenance(observer/1, 'celex:32024R1689/oj#art_65').
provenance(meeting_attendee/1, 'celex:32024R1689/oj#art_65').
provenance(chair/1, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(standing_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(temporary_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(market_surveillance_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(notifying_authorities_sub_group/1, 'celex:32024R1689/oj#art_65').
provenance(adco_for_regulation/1, 'celex:32024R1689/oj#art_65').
provenance(secretariat_provider/1, 'celex:32024R1689/oj#art_65').
provenance(mandate_period/1, 'celex:32024R1689/oj#art_65').
provenance(voting_majority/1, 'celex:32024R1689/oj#art_65').
provenance(member_state_representative/1, 'celex:32024R1689/oj#art_65').
provenance(designated_for_board/1, 'celex:32024R1689/oj#art_65').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_65').
provenance(has_relevant_competences_and_powers/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point_for_board/1, 'celex:32024R1689/oj#art_65').
provenance(single_contact_point_for_stakeholders/1, 'celex:32024R1689/oj#art_65').
provenance(empowered_to_facilitate_consistency_and_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(collects_data_and_information_for_board_tasks/1, 'celex:32024R1689/oj#art_65').
provenance(adopts_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure_adopted_by/2, 'celex:32024R1689/oj#art_65').
provenance(rules_of_procedure_shall_lay_down/2, 'celex:32024R1689/oj#art_65').
provenance(purpose_of_standing_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(may_establish_other_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(purpose_of_other_sub_group/2, 'celex:32024R1689/oj#art_65').
provenance(may_invite_to_sub_group_or_meeting/3, 'celex:32024R1689/oj#art_65').
provenance(safeguards_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(convenes_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(prepares_agenda/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(may_contribute_to_coordination/1, 'Board may contribute to coordination among national competent authorities', 'celex:32024R1689/oj#art_66').
declared(may_collect_and_share_expertise/1, 'Board may collect and share technical and regulatory expertise and best practices', 'celex:32024R1689/oj#art_66').
declared(may_provide_advice_on_implementation/1, 'Board may provide advice on implementation of the regulation', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_harmonisation/1, 'Board may contribute to harmonisation of administrative practices', 'celex:32024R1689/oj#art_66').
declared(may_issue_recommendations/2, 'Board may issue recommendations and written opinions on request or own initiative', 'celex:32024R1689/oj#art_66').
declared(may_support_ai_literacy/1, 'Board may support Commission in promoting AI literacy', 'celex:32024R1689/oj#art_66').
declared(may_facilitate_common_criteria/1, 'Board may facilitate development of common criteria and shared understanding', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_institutions/1, 'Board may cooperate with other Union institutions and bodies', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_international_cooperation/1, 'Board may contribute to effective cooperation with third countries', 'celex:32024R1689/oj#art_66').
declared(may_assist_expertise_development/1, 'Board may assist in developing organisational and technical expertise', 'celex:32024R1689/oj#art_66').
declared(may_assist_sandboxes/1, 'Board may assist AI Office in supporting AI regulatory sandboxes', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_guidance/1, 'Board may contribute to and provide advice on guidance documents', 'celex:32024R1689/oj#art_66').
declared(may_advise_international/1, 'Board may advise Commission on international matters on AI', 'celex:32024R1689/oj#art_66').
declared(may_provide_opinions_on_alerts/1, 'Board may provide opinions on qualified alerts regarding general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_receive_opinions/1, 'Board may receive opinions from Member States on qualified alerts and national experiences', 'celex:32024R1689/oj#art_66').
board(B) :- B = board.
may_contribute_to_coordination(B) :-
    board(B).
may_collect_and_share_expertise(B) :-
    board(B).
may_provide_advice_on_implementation(B) :-
    board(B).
may_contribute_to_harmonisation(B) :-
    board(B).
may_issue_recommendations(B, on_request(Commission)) :-
    board(B),
    commission(Commission).
may_issue_recommendations(B, own_initiative) :-
    board(B).
may_support_ai_literacy(B) :-
    board(B).
may_facilitate_common_criteria(B) :-
    board(B).
may_cooperate_with_institutions(B) :-
    board(B).
may_contribute_to_international_cooperation(B) :-
    board(B).
may_assist_expertise_development(B) :-
    board(B).
may_assist_sandboxes(B) :-
    board(B).
may_contribute_to_guidance(B) :-
    board(B).
may_advise_international(B) :-
    board(B).
may_provide_opinions_on_alerts(B) :-
    board(B).
may_receive_opinions(B) :-
    board(B).
recommendation_subject(B, codes_of_conduct_and_practice) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, evaluation_and_review) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, technical_specifications_or_standards) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, harmonised_standards_or_common_specifications) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, trends(european_global_competitiveness)) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, trends(ai_uptake_and_digital_skills)) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, trends(ai_value_chains_and_accountability)) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, amendment_to_annex_3) :-
    may_issue_recommendations(B, _).
recommendation_subject(B, revision_of_article_5) :-
    may_issue_recommendations(B, _).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_institutions/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_international/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(recommendation_subject/2, 'celex:32024R1689/oj#art_66').
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
declared(advisory_forum/1, 'advisory body for AI governance', 'celex:32024R1689/oj#art_67').
declared(member_of_advisory_forum/2, 'entity is a member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(permanent_member_of_advisory_forum/2, 'entity is a permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(co_chair_of_advisory_forum/2, 'entity is a co-chair of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(term_of_office/2, 'duration of membership in the advisory forum', 'celex:32024R1689/oj#art_67').
declared(term_of_office_co_chair/2, 'duration of co-chair office in the advisory forum', 'celex:32024R1689/oj#art_67').
declared(meeting_of_advisory_forum/1, 'meeting held by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(opinion_of_advisory_forum/1, 'opinion prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(recommendation_of_advisory_forum/1, 'recommendation prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(written_contribution_of_advisory_forum/1, 'written contribution prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(sub_group_of_advisory_forum/1, 'sub-group established by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(annual_report_of_advisory_forum/1, 'annual report prepared by the advisory forum', 'celex:32024R1689/oj#art_67').
declared(stakeholder/1, 'entity with interest in AI governance', 'celex:32024R1689/oj#art_67').
declared(industry/1, 'commercial AI industry', 'celex:32024R1689/oj#art_67').
declared(start_up/1, 'newly established business', 'celex:32024R1689/oj#art_67').
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_67').
declared(civil_society/1, 'non-governmental organisations and civic groups', 'celex:32024R1689/oj#art_67').
declared(academia/1, 'academic institutions and researchers', 'celex:32024R1689/oj#art_67').
declared(recognised_expertise_in_ai/1, 'recognised expertise in the field of AI', 'celex:32024R1689/oj#art_67').
declared(rules_of_procedure/1, 'rules governing the advisory forum', 'celex:32024R1689/oj#art_67').
declared(publicly_available/1, 'made accessible to the public', 'celex:32024R1689/oj#art_67').
declared(renewable_once/1, 'may be renewed one time', 'celex:32024R1689/oj#art_67').
declared(standing_sub_group/1, 'permanent sub-group', 'celex:32024R1689/oj#art_67').
declared(temporary_sub_group/1, 'temporary sub-group', 'celex:32024R1689/oj#art_67').
established(advisory_forum).
objective_provide_technical_expertise(advisory_forum).
objective_advise(advisory_forum, board).
objective_advise(advisory_forum, commission).
objective_contribute_to_tasks(advisory_forum, board).
objective_contribute_to_tasks(advisory_forum, commission).
required_membership_representation(advisory_forum) :-
    advisory_forum(advisory_forum),
    member_of_advisory_forum(M, advisory_forum),
    stakeholder(M),
    balanced_selection(stakeholder).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M1, advisory_forum),
    industry(M1).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M2, advisory_forum),
    start_up(M2).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M3, advisory_forum),
    sme(M3).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M4, advisory_forum),
    civil_society(M4).
balanced_selection(stakeholder) :-
    member_of_advisory_forum(M5, advisory_forum),
    academia(M5).
required_commercial_non_commercial_balance(advisory_forum) :-
    advisory_forum(advisory_forum).
required_sme_balance(advisory_forum) :-
    advisory_forum(advisory_forum),
    member_of_advisory_forum(M1, advisory_forum),
    sme(M1),
    member_of_advisory_forum(M2, advisory_forum),
    \+ sme(M2),
    commercial_interest(M1),
    commercial_interest(M2).
commercial_interest(M) :-
    industry(M).
commercial_interest(M) :-
    start_up(M).
commercial_interest(M) :-
    sme(M).
must_appoint(commission, member_of_advisory_forum(M, advisory_forum)) :-
    commission(commission),
    stakeholder(M),
    recognised_expertise_in_ai(M).
term_of_office(M, years(2)) :-
    member_of_advisory_forum(M, advisory_forum).
permitted_extension(term_of_office(M), years(E)) :-
    member_of_advisory_forum(M, advisory_forum),
    E =< 4.
permanent_member_of_advisory_forum(fundamental_rights_agency, advisory_forum).
permanent_member_of_advisory_forum(enisa, advisory_forum).
permanent_member_of_advisory_forum(cen, advisory_forum).
permanent_member_of_advisory_forum(cenelec, advisory_forum).
permanent_member_of_advisory_forum(etsi, advisory_forum).
must_draw_up(advisory_forum, rules_of_procedure(advisory_forum)).
must_elect(advisory_forum, co_chair_of_advisory_forum(C, advisory_forum)) :-
    member_of_advisory_forum(C, advisory_forum),
    criteria_par_2(C).
term_of_office_co_chair(C, years(2)) :-
    co_chair_of_advisory_forum(C, advisory_forum).
renewable_once(co_chair_of_advisory_forum(C, advisory_forum)) :-
    co_chair_of_advisory_forum(C, advisory_forum).
required_meeting_frequency(advisory_forum, per_year(2)).
permitted_invite(advisory_forum, expert(E)) :-
    meeting_of_advisory_forum(Meeting),
    advisory_forum(advisory_forum).
permitted_invite(advisory_forum, stakeholder(S)) :-
    meeting_of_advisory_forum(Meeting),
    advisory_forum(advisory_forum).
permitted_prepare(advisory_forum, opinion_of_advisory_forum(O)) :-
    request(board, O).
permitted_prepare(advisory_forum, opinion_of_advisory_forum(O)) :-
    request(commission, O).
permitted_prepare(advisory_forum, recommendation_of_advisory_forum(R)) :-
    request(board, R).
permitted_prepare(advisory_forum, recommendation_of_advisory_forum(R)) :-
    request(commission, R).
permitted_prepare(advisory_forum, written_contribution_of_advisory_forum(W)) :-
    request(board, W).
permitted_prepare(advisory_forum, written_contribution_of_advisory_forum(W)) :-
    request(commission, W).
permitted_establish(advisory_forum, standing_sub_group(SG)) :-
    purpose_examine_specific_questions(SG, objectives('celex:32024R1689/oj')).
permitted_establish(advisory_forum, temporary_sub_group(SG)) :-
    purpose_examine_specific_questions(SG, objectives('celex:32024R1689/oj')).
must_prepare(advisory_forum, annual_report_of_advisory_forum(R)) :-
    advisory_forum(advisory_forum),
    annual(R).
must_make_publicly_available(advisory_forum, annual_report_of_advisory_forum(R)) :-
    annual_report_of_advisory_forum(R).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(member_of_advisory_forum/2, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/2, 'celex:32024R1689/oj#art_67').
provenance(co_chair_of_advisory_forum/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office_co_chair/2, 'celex:32024R1689/oj#art_67').
provenance(meeting_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(opinion_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(recommendation_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(written_contribution_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(sub_group_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(stakeholder/1, 'celex:32024R1689/oj#art_67').
provenance(industry/1, 'celex:32024R1689/oj#art_67').
provenance(start_up/1, 'celex:32024R1689/oj#art_67').
provenance(sme/1, 'celex:32024R1689/oj#art_67').
provenance(civil_society/1, 'celex:32024R1689/oj#art_67').
provenance(academia/1, 'celex:32024R1689/oj#art_67').
provenance(recognised_expertise_in_ai/1, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_67').
provenance(renewable_once/1, 'celex:32024R1689/oj#art_67').
provenance(standing_sub_group/1, 'celex:32024R1689/oj#art_67').
provenance(temporary_sub_group/1, 'celex:32024R1689/oj#art_67').
provenance(established/1, 'celex:32024R1689/oj#art_67').
provenance(objective_provide_technical_expertise/1, 'celex:32024R1689/oj#art_67').
provenance(objective_advise/2, 'celex:32024R1689/oj#art_67').
provenance(objective_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(required_membership_representation/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_selection/1, 'celex:32024R1689/oj#art_67').
provenance(required_commercial_non_commercial_balance/1, 'celex:32024R1689/oj#art_67').
provenance(required_sme_balance/1, 'celex:32024R1689/oj#art_67').
provenance(commercial_interest/1, 'celex:32024R1689/oj#art_67').
provenance(must_appoint/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_67').
provenance(must_elect/2, 'celex:32024R1689/oj#art_67').
provenance(required_meeting_frequency/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare/2, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'panel of independent experts established by Commission', 'celex:32024R1689/oj#art_68').
declared(expert/1, 'member of the scientific panel', 'celex:32024R1689/oj#art_68').
declared(scientific_or_technical_expertise_in_ai/1, 'up-to-date expertise in field of AI', 'celex:32024R1689/oj#art_68').
declared(particular_expertise_and_competence_in_ai/1, 'particular expertise and competence in AI', 'celex:32024R1689/oj#art_68').
declared(independent_from_provider/1, 'independence from any provider of AI systems or general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(ability_to_carry_out_diligently_accurately_objectively/1, 'ability to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(alert_ai_office_systemic_risk/1, 'alert AI Office of possible systemic risks at Union level', 'celex:32024R1689/oj#art_68').
declared(contribute_to_evaluation_tools/1, 'contribute to development of tools and methodologies for evaluating capabilities', 'celex:32024R1689/oj#art_68').
declared(advise_classification_systemic_risk/1, 'provide advice on classification of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_68').
declared(advise_classification_various/1, 'provide advice on classification of various general-purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(contribute_to_tools_templates/1, 'contribute to development of tools and templates', 'celex:32024R1689/oj#art_68').
declared(support_market_surveillance_authorities/1, 'support work of market surveillance authorities at their request', 'celex:32024R1689/oj#art_68').
declared(support_cross_border_market_surveillance/1, 'support cross-border market surveillance activities', 'celex:32024R1689/oj#art_68').
declared(support_union_safeguard_procedure/1, 'support AI Office in Union safeguard procedure', 'celex:32024R1689/oj#art_68').
declared(impartial_and_objective/1, 'perform tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(ensure_confidentiality/1, 'ensure confidentiality of information and data', 'celex:32024R1689/oj#art_68').
declared(no_external_instructions/1, 'neither seek nor take instructions from anyone', 'celex:32024R1689/oj#art_68').
declared(declaration_of_interests/1, 'declaration of interests made publicly available', 'celex:32024R1689/oj#art_68').
declared(implementing_act_establishes_panel/1, 'implementing act establishing scientific panel', 'celex:32024R1689/oj#art_68').
must_establish(commission, scientific_panel).
scientific_panel(Panel) :-
    implementing_act_establishes_panel(Panel),
    intended_to_support_enforcement(Panel).
expert(E) :-
    member_of_scientific_panel(E, Panel),
    scientific_panel(Panel).
selected_by(E, commission) :-
    expert(E),
    scientific_or_technical_expertise_in_ai(E),
    required_for_tasks(E, art_68_par_3).
required_expertise(E) :-
    expert(E),
    particular_expertise_and_competence_in_ai(E),
    scientific_or_technical_expertise_in_ai(E).
required_independence(E) :-
    expert(E),
    independent_from_provider(E).
required_diligence(E) :-
    expert(E),
    ability_to_carry_out_diligently_accurately_objectively(E).
must_determine_number(commission, experts) :-
    in_consultation_with(commission, board),
    ensure_fair_gender_representation(commission),
    ensure_fair_geographical_representation(commission).
task(scientific_panel, support_ai_office_general_purpose_ai).
task(scientific_panel, alert_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    systemic_risk(R),
    at_union_level(R).
task(scientific_panel, contribute_evaluation_tools).
task(scientific_panel, advise_classification_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    systemic_risk_applies(M).
task(scientific_panel, advise_classification_various(M)) :-
    general_purpose_ai_model(M).
task(scientific_panel, contribute_tools_templates).
task(scientific_panel, support_market_surveillance_authorities(Authority)) :-
    market_surveillance_authority(Authority),
    at_request(Authority).
task(scientific_panel, support_cross_border_market_surveillance).
task(scientific_panel, support_union_safeguard_procedure).
must_perform_with_impartiality(E) :-
    expert(E),
    performing_tasks_under(E, art_68_par_3).
must_ensure_confidentiality(E) :-
    expert(E),
    performing_tasks_under(E, art_68_par_3).
must_not_take_instructions(E) :-
    expert(E),
    performing_tasks_under(E, art_68_par_3).
must_draw_up_declaration(E, interests) :-
    expert(E),
    declaration_of_interests(E).
made_publicly_available(declaration_of_interests(E)) :-
    must_draw_up_declaration(E, interests).
must_establish_systems(ai_office, conflict_of_interest_management) :-
    actively_manage_conflicts(ai_office),
    prevent_conflicts(ai_office).
must_include_provisions(implementing_act_establishes_panel(_), conditions_for_alerts).
must_include_provisions(implementing_act_establishes_panel(_), procedures_for_alerts).
must_include_provisions(implementing_act_establishes_panel(_), arrangements_for_alerts).
must_include_provisions(implementing_act_establishes_panel(_), conditions_for_assistance_requests).
must_include_provisions(implementing_act_establishes_panel(_), procedures_for_assistance_requests).
must_include_provisions(implementing_act_establishes_panel(_), arrangements_for_assistance_requests).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_or_technical_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_and_competence_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(ability_to_carry_out_diligently_accurately_objectively/1, 'celex:32024R1689/oj#art_68').
provenance(alert_ai_office_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(contribute_to_evaluation_tools/1, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_various/1, 'celex:32024R1689/oj#art_68').
provenance(contribute_to_tools_templates/1, 'celex:32024R1689/oj#art_68').
provenance(support_market_surveillance_authorities/1, 'celex:32024R1689/oj#art_68').
provenance(support_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(support_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(impartial_and_objective/1, 'celex:32024R1689/oj#art_68').
provenance(ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(no_external_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act_establishes_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(selected_by/2, 'celex:32024R1689/oj#art_68').
provenance(required_expertise/1, 'celex:32024R1689/oj#art_68').
provenance(required_independence/1, 'celex:32024R1689/oj#art_68').
provenance(required_diligence/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number/2, 'celex:32024R1689/oj#art_68').
provenance(task/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_with_impartiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_take_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration/2, 'celex:32024R1689/oj#art_68').
provenance(made_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems/2, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions/2, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(may_call_experts/1, 'Member States may call upon experts of the scientific panel', 'celex:32024R1689/oj#art_69/par_1').
declared(may_require_fees/1, 'Member States may be required to pay fees for expert advice and support', 'celex:32024R1689/oj#art_69/par_2').
declared(fee_structure_set_out/1, 'fee structure and level set out in implementing act', 'celex:32024R1689/oj#art_69/par_2').
declared(must_facilitate_access/1, 'Commission shall facilitate timely access to experts', 'celex:32024R1689/oj#art_69/par_3').
declared(must_ensure_efficient_organisation/1, 'Commission shall ensure efficient organisation of support activities', 'celex:32024R1689/oj#art_69/par_3').
may_call_experts(member_state) :-
    true.
may_require_fees(member_state) :-
    true.
fee_structure_set_out(implementation_act) :-
    true.
must_facilitate_access(commission) :-
    true.
must_ensure_efficient_organisation(commission) :-
    true.
provenance(may_call_experts/1, 'celex:32024R1689/oj#art_69').
provenance(may_require_fees/1, 'celex:32024R1689/oj#art_69').
provenance(fee_structure_set_out/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/1, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/1, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_designate/2, 'Member State shall designate authority', 'celex:32024R1689/oj#art_70').
declared(must_communicate/2, 'Member State shall communicate information to Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_publicly_available/2, 'Member State shall make information publicly available', 'celex:32024R1689/oj#art_70').
declared(must_ensure_resources/2, 'Member State shall ensure adequate resources for authority', 'celex:32024R1689/oj#art_70').
declared(must_assess_annually/2, 'Member State shall assess requirements annually', 'celex:32024R1689/oj#art_70').
declared(must_ensure_cybersecurity/2, 'authority shall ensure adequate cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_report/2, 'Member State shall report to Commission', 'celex:32024R1689/oj#art_70').
declared(may_provide_guidance/2, 'authority may provide guidance and advice', 'celex:32024R1689/oj#art_70').
declared(must_consult/2, 'authority shall consult other authority', 'celex:32024R1689/oj#art_70').
declared(competent_authority_for_supervision/2, 'entity acts as competent authority for supervision of another', 'celex:32024R1689/oj#art_70').
must_designate(MemberState, national_competent_authority(Authority)) :-
    member_state(MemberState),
    (notifying_authority(Authority) ; market_surveillance_authority(Authority)),
    national_competent_authority(Authority).
must_communicate(MemberState, identity_and_tasks(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    (notifying_authority(Authority) ; market_surveillance_authority(Authority)).
must_communicate(MemberState, subsequent_changes(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    (notifying_authority(Authority) ; market_surveillance_authority(Authority)).
must_communicate(MemberState, single_point_of_contact_designation(Authority)) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    single_point_of_contact(Authority).
must_make_publicly_available(MemberState, contact_information(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    single_point_of_contact(Authority),
    by(date(2, august, 2025)).
must_ensure_resources(MemberState, national_competent_authority(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    adequate(technical_resources),
    adequate(financial_resources),
    adequate(human_resources),
    adequate(infrastructure).
must_assess_annually(MemberState, competence_and_resource_requirements) :-
    member_state(MemberState),
    national_competent_authority(_Authority).
must_ensure_cybersecurity(national_competent_authority(Authority), adequate_level) :-
    national_competent_authority(Authority).
must_report(MemberState, status_of_resources(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    by(date(2, august, 2025)),
    frequency(years(2)).
may_provide_guidance(national_competent_authority(Authority), implementation(advice)) :-
    national_competent_authority(Authority),
    target(sme),
    target(start_up).
must_consult(national_competent_authority(Authority), other_competent_authority(OtherLaw)) :-
    national_competent_authority(Authority),
    guidance_area(Area),
    covered_by_other_union_law(Area),
    national_competent_authority_under_law(OtherLaw).
competent_authority_for_supervision(european_data_protection_supervisor, union_institution(Institution)) :-
    union_institution(Institution),
    falls_within_scope(Institution).
provenance(must_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_annually/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult/2, 'celex:32024R1689/oj#art_70').
provenance(competent_authority_for_supervision/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_maintain/2, 'entity obliged to keep something in existence and functional', 'celex:32024R1689/oj#art_71').
declared(must_establish/2, 'entity obliged to create something', 'celex:32024R1689/oj#art_71').
declared(must_enter/2, 'entity obliged to input data into a system', 'celex:32024R1689/oj#art_71').
declared(publicly_accessible/1, 'information available to the general public', 'celex:32024R1689/oj#art_71').
declared(accessible_to_authorities/1, 'information available only to designated authorities', 'celex:32024R1689/oj#art_71').
declared(eu_database/1, 'database for high-risk AI system registration', 'celex:32024R1689/oj#art_71').
declared(registered_under_article_49/1, 'system registered pursuant to Article 49', 'celex:32024R1689/oj#art_71').
declared(registered_under_article_60/1, 'system registered pursuant to Article 60', 'celex:32024R1689/oj#art_71').
declared(registered_under_article_6_par_4/1, 'system registered pursuant to Article 6(4)', 'celex:32024R1689/oj#art_71').
declared(high_risk_under_annex_3/1, 'system classified as high-risk per Annex III', 'celex:32024R1689/oj#art_71').
declared(not_high_risk_under_article_6_par_3/1, 'system not considered high-risk per Article 6(3)', 'celex:32024R1689/oj#art_71').
declared(data_listed_in_annex_8_section_1/1, 'data specified in Annex VIII Section 1', 'celex:32024R1689/oj#art_71').
declared(data_listed_in_annex_8_section_2/1, 'data specified in Annex VIII Section 2', 'celex:32024R1689/oj#art_71').
declared(data_listed_in_annex_8_section_3/1, 'data specified in Annex VIII Section 3', 'celex:32024R1689/oj#art_71').
declared(deployer_public_authority/1, 'deployer that is or acts on behalf of a public authority', 'celex:32024R1689/oj#art_71').
declared(prospective_provider/1, 'entity intending to place an AI system on the market', 'celex:32024R1689/oj#art_71').
declared(controller_of/2, 'entity with data controller responsibilities', 'celex:32024R1689/oj#art_71').
declared(must_provide_support/2, 'entity obliged to furnish assistance to others', 'celex:32024R1689/oj#art_71').
must_establish(commission, eu_database) :-
    must_maintain(commission, eu_database).
must_maintain(commission, eu_database).
must_enter(ProviderOrRepresentative, Data) :-
    (provider(ProviderOrRepresentative); authorised_representative(ProviderOrRepresentative)),
    data_listed_in_annex_8_section_1(Data).
must_enter(ProviderOrRepresentative, Data) :-
    (provider(ProviderOrRepresentative); authorised_representative(ProviderOrRepresentative)),
    data_listed_in_annex_8_section_2(Data).
must_enter(Deployer, Data) :-
    deployer_public_authority(Deployer),
    data_listed_in_annex_8_section_3(Data).
publicly_accessible(Information) :-
    registered_under_article_49(Information),
    \+ exception_article_49_par_4(Information),
    \+ exception_article_60_par_4_unp_1_pnt_c(Information).
accessible_to_authorities(Information) :-
    registered_under_article_60(Information),
    \+ consent_for_public_access(Information).
controller_of(commission, eu_database).
must_provide_support(commission, Provider) :-
    provider(Provider).
must_provide_support(commission, ProspectiveProvider) :-
    prospective_provider(ProspectiveProvider).
must_provide_support(commission, Deployer) :-
    deployer(Deployer).
eu_database(eu_database_for_high_risk_ai_systems).
exception_article_49_par_4(_).
exception_article_60_par_4_unp_1_pnt_c(_).
consent_for_public_access(_).
provenance(must_establish/2, 'celex:32024R1689/oj#art_71').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(accessible_to_authorities/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(exception_article_49_par_4/1, 'celex:32024R1689/oj#art_71').
provenance(exception_article_60_par_4_unp_1_pnt_c/1, 'celex:32024R1689/oj#art_71').
provenance(consent_for_public_access/1, 'celex:32024R1689/oj#art_71').
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
declared(must_establish_post_market_monitoring_system/2, 'provider shall establish and document a post-market monitoring system', 'celex:32024R1689/oj#art_72/par_1').
declared(must_collect_and_analyse_post_market_data/2, 'post-market monitoring system shall collect, document and analyse relevant data on performance', 'celex:32024R1689/oj#art_72/par_2').
declared(post_market_monitoring_exempt_sensitive_operational_data/1, 'post-market monitoring obligation does not cover sensitive operational data of law enforcement deployers', 'celex:32024R1689/oj#art_72/par_2').
declared(must_base_on_post_market_monitoring_plan/1, 'post-market monitoring system shall be based on a post-market monitoring plan', 'celex:32024R1689/oj#art_72/par_3').
declared(post_market_monitoring_plan_part_of_technical_documentation/1, 'post-market monitoring plan shall be part of technical documentation', 'celex:32024R1689/oj#art_72/par_3').
declared(may_integrate_existing_post_market_monitoring/2, 'provider may integrate elements into existing post-market monitoring system under harmonisation legislation', 'celex:32024R1689/oj#art_72/par_4').
declared(equivalent_protection_required/1, 'integration must achieve equivalent level of protection', 'celex:32024R1689/oj#art_72/par_4').
declared(may_integrate_existing_post_market_monitoring_financial_institution/2, 'integration option applies to high-risk AI systems placed by financial institutions', 'celex:32024R1689/oj#art_72/par_4/unp_1').
must_establish_post_market_monitoring_system(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_collect_and_analyse_post_market_data(P, S) :-
    post_market_monitoring_system(M),
    high_risk_ai_system(S),
    provider_of_monitoring_system(P, M),
    performance_of_ai_system(S),
    \+ exempt_from_data_collection(S).
post_market_monitoring_exempt_sensitive_operational_data(S) :-
    high_risk_ai_system(S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(Data),
    provided_by(Data, D).
must_base_on_post_market_monitoring_plan(M) :-
    post_market_monitoring_system(M).
post_market_monitoring_plan_part_of_technical_documentation(Plan) :-
    post_market_monitoring_plan(Plan).
may_integrate_existing_post_market_monitoring(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    existing_post_market_monitoring_system(S),
    equivalent_protection_required(S).
equivalent_protection_required(S) :-
    may_integrate_existing_post_market_monitoring(_P, S).
may_integrate_existing_post_market_monitoring_financial_institution(P, S) :-
    high_risk_ai_system(S),
    referred_in_annex_3_point_5(S),
    (placing_on_market(P, S); putting_into_service(P, S)),
    financial_institution(P),
    subject_to_financial_services_requirements(P).
declared(provider_of_monitoring_system/2, 'provider that established the monitoring system', 'celex:32024R1689/oj#art_72/par_2').
declared(provided_by/2, 'data provided by an entity', 'celex:32024R1689/oj#art_72/par_2').
declared(union_harmonisation_legislation_applies/1, 'AI system covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_72/par_4').
declared(existing_post_market_monitoring_system/1, 'post-market monitoring system already established under harmonisation legislation', 'celex:32024R1689/oj#art_72/par_4').
declared(referred_in_annex_3_point_5/1, 'high-risk AI system referred to in Annex III point 5', 'celex:32024R1689/oj#art_72/par_4/unp_1').
declared(financial_institution/1, 'institution subject to Union financial services law', 'celex:32024R1689/oj#art_72/par_4/unp_1').
declared(subject_to_financial_services_requirements/1, 'subject to requirements under Union financial services law regarding internal governance', 'celex:32024R1689/oj#art_72/par_4/unp_1').
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(must_collect_and_analyse_post_market_data/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(must_base_on_post_market_monitoring_plan/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_part_of_technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_existing_post_market_monitoring/2, 'celex:32024R1689/oj#art_72').
provenance(equivalent_protection_required/1, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_existing_post_market_monitoring_financial_institution/2, 'celex:32024R1689/oj#art_72').
provenance(provider_of_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(provided_by/2, 'celex:32024R1689/oj#art_72').
provenance(union_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#art_72').
provenance(existing_post_market_monitoring_system/1, 'celex:32024R1689/oj#art_72').
provenance(referred_in_annex_3_point_5/1, 'celex:32024R1689/oj#art_72').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_72').
provenance(subject_to_financial_services_requirements/1, 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_1').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_2').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#art_72/par_3').
references('celex:32024R1689/oj#art_72', 'celex:32024R1689/oj#anx_3/pnt_5').

% ==== celex:32024R1689/oj#art_73 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk under the regulation', 'celex:32024R1689/oj#art_73').
declared(must_report_serious_incident/2, 'obligation to report a serious incident', 'celex:32024R1689/oj#art_73').
declared(report_deadline/3, 'deadline for reporting a serious incident', 'celex:32024R1689/oj#art_73').
declared(initial_report_permitted/2, 'permission to submit an incomplete initial report', 'celex:32024R1689/oj#art_73').
declared(must_investigate_serious_incident/2, 'obligation to investigate a serious incident', 'celex:32024R1689/oj#art_73').
declared(must_cooperate_with_authorities/2, 'obligation to cooperate with competent authorities during investigation', 'celex:32024R1689/oj#art_73').
declared(prohibited_alteration_before_notification/2, 'prohibition on altering AI system before notifying authorities', 'celex:32024R1689/oj#art_73').
declared(must_inform_authorities_of_alteration/2, 'obligation to inform authorities before altering AI system', 'celex:32024R1689/oj#art_73').
declared(serious_incident_type_c/1, 'serious incident as defined in Article 3 point 49(c)', 'celex:32024R1689/oj#art_73').
must_report_serious_incident(P, incident(I, S)) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    serious_incident(I),
    occurred_in_member_state(I, _MS).
report_deadline(incident(I, S), days(15), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    \+ widespread_infringement(I),
    \+ serious_incident_type_c(I),
    \+ death_occurred(I),
    causal_link_established_or_likely(I).
report_deadline(incident(I, S), days(2), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    widespread_infringement(I).
report_deadline(incident(I, S), days(2), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    serious_incident_type_c(I).
report_deadline(incident(I, S), days(10), provider_or_deployer) :-
    must_report_serious_incident(_P, incident(I, S)),
    death_occurred(I),
    causal_relationship_established_or_suspected(I).
initial_report_permitted(P, incident(I, S)) :-
    must_report_serious_incident(P, incident(I, S)).
must_investigate_serious_incident(P, incident(I, S)) :-
    provider(P),
    serious_incident(I),
    high_risk_ai_system(S),
    reported(I).
must_cooperate_with_authorities(P, investigation(I, S)) :-
    must_investigate_serious_incident(P, incident(I, S)),
    competent_authority(_A),
    notified_body(_B).
prohibited_alteration_before_notification(P, S) :-
    must_investigate_serious_incident(P, incident(_I, S)),
    \+ informed_competent_authorities(P, alteration(S)).
must_inform_authorities_of_alteration(P, alteration(S)) :-
    must_investigate_serious_incident(P, incident(_I, S)),
    altering_ai_system(P, S).
serious_incident_type_c(I) :-
    serious_incident(I),
    incident_leads_to_critical_disruption(I).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(report_deadline/3, 'celex:32024R1689/oj#art_73').
provenance(initial_report_permitted/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(prohibited_alteration_before_notification/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_authorities_of_alteration/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_type_c/1, 'celex:32024R1689/oj#art_73').
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
declared(must_report_annually/2, 'market surveillance authorities must report annually to Commission and competition authorities', 'celex:32024R1689/oj#art_74').
declared(must_report_prohibited_practices/2, 'market surveillance authorities must report annually about prohibited practices and measures taken', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_authority_for/2, 'the designated market surveillance authority for a given AI system or context', 'celex:32024R1689/oj#art_74').
declared(sectoral_procedures_apply/1, 'sectoral procedures apply instead of AI Act procedures for an AI system', 'celex:32024R1689/oj#art_74').
declared(may_exercise_powers_remotely/2, 'market surveillance authority may exercise specified powers remotely', 'celex:32024R1689/oj#art_74').
declared(must_designate_market_surveillance_authority/2, 'Member State must designate market surveillance authority for specific high-risk AI systems', 'celex:32024R1689/art_74').
declared(european_data_protection_supervisor_is_authority/1, 'EDPS acts as market surveillance authority for Union institutions', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/1, 'Member States must facilitate coordination between market surveillance authorities and other bodies', 'celex:32024R1689/oj#art_74').
declared(may_propose_joint_activities/2, 'market surveillance authorities or Commission may propose joint activities for specific high-risk AI systems', 'celex:32024R1689/oj#art_74').
declared(must_grant_full_access/2, 'providers must grant full access to documentation and data sets to market surveillance authorities', 'celex:32024R1689/oj#art_74').
declared(source_code_access_granted/2, 'market surveillance authority is granted access to source code upon reasoned request', 'celex:32024R1689/oj#art_74').
must_report_annually(Authority, competition_information(Information)) :-
    market_surveillance_authority(Authority),
    information_identified(Information),
    potential_interest_for_competition_rules(Information).
must_report_annually(Authority, prohibited_practices_report(Year, Practices, Measures)) :-
    market_surveillance_authority(Authority),
    prohibited_practices_occurred(Practices, Year),
    measures_taken(Measures, Practices).
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    authority_designated_under_harmonisation_legislation(Authority, S).
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    member_state_designated(Authority, S),
    appropriate_circumstances,
    coordination_ensured(Authority, SectoralAuthorities),
    sectoral_market_surveillance_authorities(SectoralAuthorities, S).
sectoral_procedures_apply(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    harmonisation_legislation_provides_equivalent_procedures(S),
    equivalent_protection_level(S),
    same_objective(S).
may_exercise_powers_remotely(Authority, powers(article_14_4_d_j)) :-
    market_surveillance_authority(Authority),
    effective_enforcement_required.
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_or_used_by(S, Institution),
    financial_institution(Institution),
    regulated_by_union_financial_services_law(Institution),
    national_financial_supervision_authority(Authority, Institution),
    direct_connection_with_financial_services(S, Institution).
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_or_used_by(S, Institution),
    financial_institution(Institution),
    regulated_by_union_financial_services_law(Institution),
    member_state_identified(Authority, S),
    appropriate_circumstances,
    coordination_ensured(Authority, FinancialAuthority),
    national_financial_supervision_authority(FinancialAuthority, Institution).
must_designate_market_surveillance_authority(MemberState, S) :-
    high_risk_ai_system(S),
    (listed_in_annex_3_point_1(S), used_for_law_enforcement_border_justice_democracy(S));
    listed_in_annex_3_point_6(S);
    listed_in_annex_3_point_7(S);
    listed_in_annex_3_point_8(S).
market_surveillance_authority_for(Authority, S) :-
    must_designate_market_surveillance_authority(_MemberState, S),
    (data_protection_supervisory_authority(Authority); other_authority_designated(Authority)),
    designated_under_conditions(Authority, article_41_to_44).
judicial_independence_protected :-
    market_surveillance_activities_do_not_affect_judicial_independence,
    no_interference_with_judicial_activities.
european_data_protection_supervisor_is_authority(Institution) :-
    union_institution_body_office_or_agency(Institution),
    falls_within_scope(Institution),
    \+ court_of_justice_acting_in_judicial_capacity(Institution).
must_facilitate_coordination(MemberState) :-
    market_surveillance_authorities_designated(Authorities),
    other_relevant_national_authorities(OtherAuthorities),
    supervises_harmonisation_legislation_or_other_union_law(OtherAuthorities),
    relevant_for_high_risk_ai_systems(OtherAuthorities, annex_3).
may_propose_joint_activities(Proposer, joint_investigation(HighRiskSystems)) :-
    (market_surveillance_authority(Proposer); commission(Proposer)),
    high_risk_ai_systems(HighRiskSystems),
    serious_risk_across_member_states(HighRiskSystems, TwoOrMore),
    aims_compliance_identification_awareness_guidance.
must_grant_full_access(Provider, access(documentation_and_data_sets, Authority)) :-
    provider(Provider),
    high_risk_ai_system(S),
    developed_by(Provider, S),
    market_surveillance_authority(Authority),
    relevant_and_necessary_for_tasks(Authority),
    limited_to_what_is_necessary(Authority),
    access_includes(training_data, validation_data, testing_data),
    remote_access_possible(api_or_other_technical_means).
source_code_access_granted(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    reasoned_request_made(Authority, S),
    access_necessary_for_conformity_assessment(S),
    requirements_in_chapter_3_section_2(S),
    testing_or_auditing_exhausted_or_insufficient(S).
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(must_designate_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(european_data_protection_supervisor_is_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_granted/2, 'celex:32024R1689/oj#art_74').
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
declared(general_purpose_ai_system_based_on_same_provider_model/1, 'AI system based on a general-purpose AI model developed by the same provider', 'celex:32024R1689/oj#art_75').
declared(high_risk_purpose_general_purpose_ai_system/1, 'general-purpose AI system with at least one high-risk purpose', 'celex:32024R1689/oj#art_75').
declared(non_compliant_high_risk_ai_system/1, 'high-risk AI system that is non-compliant', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/1, 'market surveillance authority unable to conclude investigation due to lack of information', 'celex:32024R1689/oj#art_75').
declared(reasoned_request_for_information/2, 'reasoned request from authority to AI Office for information', 'celex:32024R1689/oj#art_75').
ai_office_monitors_same_provider_system(S) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    provider(P),
    develops(P, M),
    develops(P, S).
ai_office_has_market_surveillance_powers(S) :-
    ai_office_monitors_same_provider_system(S).
must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_purpose_general_purpose_ai_system(S),
    sufficient_reason_non_compliant(Authority, S).
sufficient_reason_non_compliant(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_purpose_general_purpose_ai_system(S),
    can_be_used_directly_by_deployers(S),
    at_least_one_high_risk_purpose(S),
    \+ compliant_with_requirements(S).
must_inform_board_and_authorities(Authority, non_compliant_evaluation(S)) :-
    must_cooperate_with_ai_office(Authority, S).
may_submit_reasoned_request(Authority, ai_office, information_access(Model)) :-
    market_surveillance_authority(Authority),
    investigating(Authority, S),
    high_risk_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    unable_to_conclude_investigation(Authority),
    made_all_appropriate_efforts(Authority, M),
    \+ accessed_information(Authority, M).
unable_to_conclude_investigation(Authority) :-
    market_surveillance_authority(Authority),
    investigating(Authority, S),
    high_risk_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    \+ accessed_information(Authority, M),
    made_all_appropriate_efforts(Authority, M).
must_supply_information(ai_office, Authority, relevant_information(Model)) :-
    reasoned_request_for_information(Authority, ai_office),
    general_purpose_ai_model(M),
    considers_relevant(ai_office, M, non_compliant(S)),
    high_risk_ai_system(S),
    ai_system_based_on_model(S, M).
within_deadline(ai_office, Authority, days(30)) :-
    reasoned_request_for_information(Authority, ai_office).
must_safeguard_confidentiality(Authority, obtained_information) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, _).
ai_system_based_on_model(S, M) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M).
can_be_used_directly_by_deployers(S) :-
    general_purpose_ai_system(S),
    deployer(D),
    can_use_directly(D, S).
at_least_one_high_risk_purpose(S) :-
    general_purpose_ai_system(S),
    intended_purpose(P),
    classified_as_high_risk(P).
at_least_one_high_risk_purpose(S) :-
    general_purpose_ai_system(S),
    reasonably_foreseeable_misuse(P),
    classified_as_high_risk(P).
compliant_with_requirements(S) :-
    high_risk_ai_system(S),
    fulfills_requirements(S).
made_all_appropriate_efforts(Authority, M) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_model(M),
    attempted_access(Authority, M).
accessed_information(Authority, M) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_model(M),
    has_accessed(Authority, M).
considers_relevant(ai_office, M, non_compliant(S)) :-
    general_purpose_ai_model(M),
    high_risk_ai_system(S),
    ai_system_based_on_model(S, M),
    relevant_for_compliance(ai_office, M, S).
obtained_information(Authority, Info) :-
    market_surveillance_authority(Authority),
    received(Authority, Info, ai_office).
provenance(ai_office_monitors_same_provider_system/1, 'celex:32024R1689/oj#art_75').
provenance(ai_office_has_market_surveillance_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(sufficient_reason_non_compliant/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(may_submit_reasoned_request/3, 'celex:32024R1689/oj#art_75').
provenance(unable_to_conclude_investigation/1, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(within_deadline/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
provenance(ai_system_based_on_model/2, 'celex:32024R1689/oj#art_75').
provenance(can_be_used_directly_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(at_least_one_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(compliant_with_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(made_all_appropriate_efforts/2, 'celex:32024R1689/oj#art_75').
provenance(accessed_information/2, 'celex:32024R1689/oj#art_75').
provenance(considers_relevant/3, 'celex:32024R1689/oj#art_75').
provenance(obtained_information/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_ensure_testing_compliance/2, 'market surveillance authority shall ensure testing in real world conditions complies with conditions', 'celex:32024R1689/oj#art_76/par_1').
declared(must_verify_sandbox_compliance/2, 'market surveillance authority shall verify compliance with article 60 for sandbox testing', 'celex:32024R1689/oj#art_76/par_2').
declared(may_allow_derogation/3, 'market surveillance authority may allow derogation from article 60 conditions', 'celex:32024R1689/oj#art_76/par_2').
declared(may_suspend_or_terminate_testing/2, 'market surveillance authority may suspend or terminate testing in real world conditions', 'celex:32024R1689/oj#art_76/par_3/pnt_a').
declared(may_require_modification/2, 'market surveillance authority may require modification of testing in real world conditions', 'celex:32024R1689/oj#art_76/par_3/pnt_b').
declared(must_indicate_grounds_and_challenge/2, 'decision or objection must indicate grounds and challenge procedure', 'celex:32024R1689/oj#art_76/par_4').
declared(must_communicate_grounds/2, 'market surveillance authority shall communicate grounds to other Member States', 'celex:32024R1689/oj#art_76/par_5').
must_ensure_testing_compliance(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T).
provenance(must_ensure_testing_compliance/2, 'celex:32024R1689/oj#art_76').
must_verify_sandbox_compliance(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(T, Sandbox).
provenance(must_verify_sandbox_compliance/2, 'celex:32024R1689/oj#art_76').
may_allow_derogation(Authority, T, Provider) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(T, Sandbox),
    (provider(Provider); prospective_provider(Provider)).
provenance(may_allow_derogation/3, 'celex:32024R1689/oj#art_76').
may_suspend_or_terminate_testing(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    (informed_of_serious_incident(Authority, T); conditions_not_met(Authority, T)).
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
may_require_modification(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    (informed_of_serious_incident(Authority, T); conditions_not_met(Authority, T)).
provenance(may_require_modification/2, 'celex:32024R1689/oj#art_76').
must_indicate_grounds_and_challenge(Authority, decision_or_objection(Authority, T)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    (decision_taken(Authority, T); objection_issued(Authority, T)).
provenance(must_indicate_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
must_communicate_grounds(Authority, T) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(T),
    decision_taken(Authority, T),
    tested_in_other_member_states(T).
provenance(must_communicate_grounds/2, 'celex:32024R1689/oj#art_76').
declared(supervised_within/2, 'testing is supervised within a sandbox', 'celex:32024R1689/oj#art_76').
declared(prospective_provider/1, 'entity intending to develop or place an AI system', 'celex:32024R1689/oj#art_76').
declared(informed_of_serious_incident/2, 'authority has been informed of a serious incident', 'celex:32024R1689/oj#art_76').
declared(conditions_not_met/2, 'authority has grounds that conditions are not met', 'celex:32024R1689/oj#art_76').
declared(decision_taken/2, 'authority has taken a decision under paragraph 3', 'celex:32024R1689/oj#art_76').
declared(objection_issued/2, 'authority has issued an objection under article 60(4)(b)', 'celex:32024R1689/oj#art_76').
declared(tested_in_other_member_states/1, 'AI system has been tested in other Member States', 'celex:32024R1689/oj#art_76').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

% ==== celex:32024R1689/oj#art_77 ====
declared(authority_protecting_fundamental_rights/1, 'national public authority supervising or enforcing fundamental rights obligations under Union law', 'celex:32024R1689/oj#art_77/par_1').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#anx_3').
declared(documentation_under_regulation/1, 'documentation created or maintained under this regulation', 'celex:32024R1689/oj#art_77/par_1').
declared(accessible_language_and_format/1, 'language and format that are accessible', 'celex:32024R1689/oj#art_77/par_1').
declared(necessary_for_mandate/2, 'access is necessary for effectively fulfilling mandate', 'celex:32024R1689/oj#art_77/par_1').
declared(within_jurisdiction/1, 'within the limits of jurisdiction', 'celex:32024R1689/oj#art_77/par_1').
declared(identified_authority_list/1, 'publicly available list of identified authorities', 'celex:32024R1689/oj#art_77/par_2').
declared(insufficient_documentation/1, 'documentation is insufficient to ascertain infringement', 'celex:32024R1689/oj#art_77/par_3').
declared(reasoned_request_for_testing/2, 'reasoned request to organise testing of high-risk AI system', 'celex:32024R1689/oj#art_77/par_3').
declared(testing_through_technical_means/1, 'testing of AI system through technical means', 'celex:32024R1689/oj#art_77/par_3').
declared(close_involvement_in_testing/2, 'close involvement of requesting authority in testing', 'celex:32024R1689/oj#art_77/par_3').
declared(reasonable_time/1, 'reasonable time following the request', 'celex:32024R1689/oj#art_77/par_3').
declared(confidentiality_obligations_apply/1, 'confidentiality obligations apply to obtained information', 'celex:32024R1689/oj#art_77/par_4').
par_2_deadline(date(2024, 11, 2)).
authority_protecting_fundamental_rights(A) :-
    national_public_authority_or_body(A),
    supervises_or_enforces_fundamental_rights_obligations(A).
must_request_access(A, documentation(D)) :-
    authority_protecting_fundamental_rights(A),
    high_risk_ai_system(S),
    documentation_under_regulation(D),
    accessible_language_and_format(D),
    necessary_for_mandate(D, A),
    within_jurisdiction(A).
must_inform_market_surveillance_authority(A, MSA, request_access(documentation(D))) :-
    authority_protecting_fundamental_rights(A),
    market_surveillance_authority(MSA),
    member_state_of_authority(A, MS),
    member_state_of_authority(MSA, MS),
    must_request_access(A, documentation(D)).
must_identify_and_list_authorities(MS, List) :-
    member_state(MS),
    par_2_deadline(Deadline),
    before(Deadline),
    findall(A, authority_protecting_fundamental_rights(A), Authorities),
    publicly_available(List),
    contains_list_of(List, Authorities).
must_notify_commission(MS, list(Authorities)) :-
    member_state(MS),
    must_identify_and_list_authorities(MS, _List),
    findall(A, authority_protecting_fundamental_rights(A), Authorities).
must_notify_member_states(MS, list(Authorities)) :-
    member_state(MS),
    must_identify_and_list_authorities(MS, _List),
    findall(A, authority_protecting_fundamental_rights(A), Authorities).
must_keep_list_up_to_date(MS, List) :-
    member_state(MS),
    identified_authority_list(List),
    contains_list_of(List, Authorities),
    forall(authority_protecting_fundamental_rights(A), member(A, Authorities)).
may_request_testing(A, MSA, testing(S, technical_means)) :-
    authority_protecting_fundamental_rights(A),
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    documentation_under_regulation(D),
    insufficient_documentation(D),
    \+ can_ascertain_infringement(D),
    reasoned_request_for_testing(A, MSA).
must_organise_testing(MSA, testing(S, technical_means), A) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    may_request_testing(A, MSA, testing(S, technical_means)),
    close_involvement_in_testing(A, testing(S, technical_means)),
    reasonable_time(Period),
    within(Period, request(A, MSA)).
confidentiality_obligations_apply(information_or_documentation(I)) :-
    authority_protecting_fundamental_rights(A),
    obtained(A, I),
    documentation_under_regulation(I).
provenance(authority_protecting_fundamental_rights/1, 'celex:32024R1689/oj#art_77').
provenance(par_2_deadline/1, 'celex:32024R1689/oj#art_77').
provenance(must_request_access/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/3, 'celex:32024R1689/oj#art_77').
provenance(must_identify_and_list_authorities/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify_member_states/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/3, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/3, 'celex:32024R1689/oj#art_77').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_1', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77/par_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77/par_2', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_3', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_4', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_4', 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77/par_4', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/1, 'duty to respect confidentiality of information and data obtained', 'celex:32024R1689/oj#art_78/par_1').
declared(must_request_only_necessary_data/1, 'duty to request only strictly necessary data', 'celex:32024R1689/oj#art_78/par_2').
declared(must_protect_confidentiality/1, 'duty to put in place cybersecurity measures and delete data when no longer needed', 'celex:32024R1689/oj#art_78/par_2').
declared(must_not_disclose_without_consultation/1, 'prohibition on disclosing confidential information without prior consultation', 'celex:32024R1689/oj#art_78/par_3').
declared(must_remain_on_premises/1, 'duty to keep technical documentation within premises', 'celex:32024R1689/oj#art_78/par_3').
declared(must_ensure_access/1, 'duty to ensure market surveillance authorities can access documentation', 'celex:32024R1689/oj#art_78/par_3').
declared(permitted_exchange_with_third_countries/1, 'permission to exchange confidential information with third country regulatory authorities', 'celex:32024R1689/oj#art_78/par_5').
declared(confidentiality_party/1, 'entity bound by confidentiality obligations under Article 78(1)', 'celex:32024R1689/oj#art_78/par_1').
declared(involved_in_application/1, 'involved in application of the AI Act', 'celex:32024R1689/oj#art_78/par_1').
declared(protected_interest/1, 'interest protected by confidentiality obligation', 'celex:32024R1689/oj#art_78/par_1').
declared(law_enforcement_border_immigration_asylum_authority/1, 'authority using high-risk AI systems in sensitive domains', 'celex:32024R1689/oj#art_78/par_3').
declared(high_risk_ai_system_annex_3_sensitive/1, 'high-risk AI system listed in Annex 3 points 1, 6, or 7', 'celex:32024R1689/oj#art_78/par_3').
declared(jeopardises_public_national_security/1, 'disclosure would jeopardise public and national security interests', 'celex:32024R1689/oj#art_78/par_3').
declared(appropriate_security_clearance/1, 'staff with appropriate level of security clearance', 'celex:32024R1689/oj#art_78/par_3').
declared(bilateral_multilateral_confidentiality_arrangement/1, 'arrangement guaranteeing adequate confidentiality with third country', 'celex:32024R1689/oj#art_78/par_5').
confidentiality_party(P) :-
    (commission(P); market_surveillance_authority(P); notified_body(P); involved_in_application(P)).
protected_interest(intellectual_property_rights).
protected_interest(confidential_business_information).
protected_interest(trade_secrets).
protected_interest(effective_implementation).
protected_interest(public_and_national_security_interests).
protected_interest(conduct_of_criminal_or_administrative_proceedings).
protected_interest(classified_information).
must_respect_confidentiality(P) :-
    confidentiality_party(P),
    protected_interest(_I).
must_request_only_necessary_data(A) :-
    confidentiality_party(A).
must_protect_confidentiality(A) :-
    confidentiality_party(A).
must_not_disclose_without_consultation(Information) :-
    exchanged_confidentially_between_national_competent_authorities_or_commission(Information),
    high_risk_ai_system_annex_3_sensitive(_S),
    used_by_law_enforcement_border_immigration_asylum_authority(_S),
    jeopardises_public_national_security(Information),
    \+ sensitive_operational_data(Information).
must_remain_on_premises(Documentation) :-
    technical_documentation(Documentation),
    law_enforcement_immigration_asylum_authority(A),
    provider(A),
    high_risk_ai_system_annex_3_sensitive(S),
    technical_documentation_for(Documentation, S).
must_ensure_access(Authority) :-
    law_enforcement_immigration_asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system_annex_3_sensitive(_S),
    market_surveillance_authority(RequestingAuthority),
    (applicable_market_surveillance_authority_74_8(RequestingAuthority); applicable_market_surveillance_authority_74_9(RequestingAuthority)),
    appropriate_security_clearance(Staff),
    staff_of(Staff, RequestingAuthority).
permitted_exchange_with_third_countries(Information) :-
    confidential(Information),
    regulatory_authority_of_third_country(Recipient),
    bilateral_multilateral_confidentiality_arrangement(Arrangement),
    guarantees_adequate_confidentiality(Arrangement).
provenance(must_respect_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/1, 'celex:32024R1689/oj#art_78').
provenance(must_protect_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(must_not_disclose_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(must_remain_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_access/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_countries/1, 'celex:32024R1689/oj#art_78').
provenance(confidentiality_party/1, 'celex:32024R1689/oj#art_78').
provenance(protected_interest/1, 'celex:32024R1689/oj#art_78').
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
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_4').

% ==== celex:32024R1689/oj#art_79 ====
declared(ai_system_presenting_risk/1, 'AI system presenting risk to health, safety or fundamental rights', 'celex:32024R1689/oj#art_79').
declared(must_evaluate_compliance/2, 'market surveillance authority shall evaluate AI system compliance', 'celex:32024R1689/oj#art_79').
declared(must_inform_cooperate/2, 'market surveillance authority shall inform and cooperate with national public authorities', 'celex:32024R1689/oj#art_79').
declared(must_cooperate_with_authority/2, 'operator shall cooperate with market surveillance authority and other bodies', 'celex:32024R1689/oj#art_79').
declared(must_require_corrective_action/2, 'market surveillance authority shall require operator to take corrective action', 'celex:32024R1689/oj#art_79').
declared(must_inform_notified_body/2, 'market surveillance authority shall inform relevant notified body', 'celex:32024R1689/oj#art_79').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority shall inform Commission and other Member States of non-compliance beyond national territory', 'celex:32024R1689/oj#art_79').
declared(must_ensure_corrective_action/2, 'operator shall ensure corrective action for all AI systems made available', 'celex:32024R1689/oj#art_79').
declared(must_take_provisional_measures/2, 'market surveillance authority shall take provisional measures when operator fails to act', 'celex:32024R1689/oj#art_79').
declared(must_notify_measures/2, 'market surveillance authority shall notify Commission and other Member States of provisional measures', 'celex:32024R1689/oj#art_79').
declared(notification_details/1, 'details to be included in notification of provisional measures', 'celex:32024R1689/oj#art_79').
declared(non_compliance_art_5/1, 'non-compliance with prohibition of AI practices in Article 5', 'celex:32024R1689/oj#art_79').
declared(non_compliance_chapter_3_section_2/1, 'high-risk AI system failing to meet requirements in Chapter 3 Section 2', 'celex:32024R1689/oj#art_79').
declared(non_compliance_harmonised_standards/1, 'shortcomings in harmonised standards or common specifications conferring presumption of conformity', 'celex:32024R1689/oj#art_79').
declared(non_compliance_art_50/1, 'non-compliance with Article 50', 'celex:32024R1689/oj#art_79').
declared(must_inform_of_adopted_measures/2, 'other market surveillance authorities shall inform of measures adopted and objections', 'celex:32024R1689/oj#art_79').
declared(measure_deemed_justified/1, 'provisional measure deemed justified after three months without objection', 'celex:32024R1689/oj#art_79').
declared(reduced_objection_period_art_5/1, 'objection period reduced to 30 days for Article 5 non-compliance', 'celex:32024R1689/oj#art_79').
declared(must_ensure_restrictive_measures/2, 'market surveillance authorities shall ensure appropriate restrictive measures', 'celex:32024R1689/oj#art_79').
ai_system_presenting_risk(S) :-
    ai_system(S),
    risk_to_health_safety_or_fundamental_rights(S).
risk_to_health_safety_or_fundamental_rights(S) :-
    ai_system(S),
    risk(S).
must_evaluate_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    sufficient_reason_to_consider_risk(Authority, S),
    \+ evaluation_already_completed(Authority, S).
sufficient_reason_to_consider_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    ai_system_presenting_risk(S).
must_inform_cooperate(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    risk_to_fundamental_rights_identified(Authority, S),
    relevant_national_public_authority(Body),
    \+ already_informed_and_cooperating(Authority, Body, S).
risk_to_fundamental_rights_identified(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_risk_to_fundamental_rights(Authority, S).
relevant_national_public_authority(Body) :-
    national_public_authority_or_body_referred_to_in_art_77_1(Body).
must_cooperate_with_authority(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    evaluation_underway(Authority, _S),
    cooperation_necessary(Operator, Authority).
must_cooperate_with_authority(Operator, Body) :-
    operator(Operator),
    relevant_national_public_authority(Body),
    evaluation_underway(_Authority, _S),
    cooperation_necessary(Operator, Body).
must_require_corrective_action(Authority, operator_of(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    relevant_operator(Operator, S),
    \+ corrective_action_already_required(Authority, Operator, S).
evaluation_finds_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_completed(Authority, S),
    \+ complies_with_requirements_and_obligations(S).
must_require_corrective_action(Authority, withdraw(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    relevant_operator(_Operator, S).
must_require_corrective_action(Authority, recall(S, within(Period))) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    relevant_operator(_Operator, S),
    prescribed_period(Authority, Period).
prescribed_period(Authority, days(15)) :-
    market_surveillance_authority(Authority).
prescribed_period(Authority, period_from_union_harmonisation_legislation(Period)) :-
    market_surveillance_authority(Authority),
    union_harmonisation_legislation_period(Period).
shorter_period(Period) :-
    prescribed_period(_Authority, days(15)),
    prescribed_period(_Authority, union_harmonisation_legislation_period(OtherPeriod)),
    period_shorter_than(OtherPeriod, days(15)),
    Period = OtherPeriod.
shorter_period(days(15)) :-
    prescribed_period(_Authority, days(15)),
    prescribed_period(_Authority, union_harmonisation_legislation_period(OtherPeriod)),
    \+ period_shorter_than(OtherPeriod, days(15)).
shorter_period(days(15)) :-
    prescribed_period(_Authority, days(15)),
    \+ prescribed_period(_Authority, union_harmonisation_legislation_period(_)).
must_inform_notified_body(Authority, Body) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    relevant_notified_body(Body, _S),
    corrective_action_required(Authority, _S),
    \+ already_informed(Authority, Body).
must_inform_commission_and_member_states(Authority, results_of_evaluation_and_actions(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_non_compliance(Authority, S),
    non_compliance_not_restricted_to_national_territory(Authority, S),
    \+ already_informed_commission_and_member_states(Authority, S).
non_compliance_not_restricted_to_national_territory(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    considers_non_compliance_not_restricted(Authority, S).
must_ensure_corrective_action(Operator, all_ai_systems_concerned(S)) :-
    operator(Operator),
    ai_system(S),
    corrective_action_required_for_system(Operator, S),
    made_available_on_union_market(Operator, S),
    \+ all_appropriate_corrective_action_taken(Operator, S).
must_take_provisional_measures(Authority, prohibit_or_restrict_availability(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    relevant_operator(Operator, S),
    \+ adequate_corrective_action_taken(Operator, S, within_period_from_art_79_par_2),
    \+ provisional_measures_already_taken(Authority, S).
must_take_provisional_measures(Authority, withdraw_from_market(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    relevant_operator(Operator, S),
    \+ adequate_corrective_action_taken(Operator, S, within_period_from_art_79_par_2),
    \+ provisional_measures_already_taken(Authority, S).
must_take_provisional_measures(Authority, recall(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    relevant_operator(Operator, S),
    \+ adequate_corrective_action_taken(Operator, S, within_period_from_art_79_par_2),
    \+ provisional_measures_already_taken(Authority, S).
must_notify_measures(Authority, measures_taken(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    provisional_measures_taken(Authority, S),
    \+ already_notified_commission_and_member_states(Authority, S).
notification_details(details(S, Origin, SupplyChain, NatureNonCompliance, RiskInvolved, NatureDurationMeasures, OperatorArguments)) :-
    ai_system(S),
    origin_of_ai_system(Origin, S),
    supply_chain(SupplyChain, S),
    nature_of_non_compliance(NatureNonCompliance, S),
    risk_involved(RiskInvolved, S),
    nature_and_duration_of_measures(NatureDurationMeasures, S),
    arguments_put_forward_by_operator(OperatorArguments, S).
non_compliance_art_5(S) :-
    ai_system(S),
    non_compliance_with_prohibition_ai_practices_art_5(S).
non_compliance_chapter_3_section_2(S) :-
    ai_system(S),
    high_risk_ai_system(S),
    failure_to_meet_requirements_chapter_3_section_2(S).
non_compliance_harmonised_standards(S) :-
    ai_system(S),
    shortcomings_in_harmonised_standards_or_common_specifications(S),
    confers_presumption_of_conformity(S).
non_compliance_art_50(S) :-
    ai_system(S),
    non_compliance_with_art_50(S).
must_inform_of_adopted_measures(OtherAuthority, adopted_measures(S)) :-
    market_surveillance_authority(OtherAuthority),
    ai_system(S),
    OtherAuthority \= InitiatingAuthority,
    measures_adopted(OtherAuthority, S),
    \+ already_informed_commission_and_member_states(OtherAuthority, S).
must_inform_of_adopted_measures(OtherAuthority, additional_information(S)) :-
    market_surveillance_authority(OtherAuthority),
    ai_system(S),
    additional_information_at_disposal(OtherAuthority, S),
    relates_to_non_compliance(S),
    \+ already_informed_commission_and_member_states(OtherAuthority, S).
must_inform_of_adopted_measures(OtherAuthority, objections_to_notified_national_measure(S)) :-
    market_surveillance_authority(OtherAuthority),
    ai_system(S),
    disagreement_with_notified_national_measure(OtherAuthority, S),
    \+ already_informed_commission_and_member_states(OtherAuthority, S).
measure_deemed_justified(Measure) :-
    provisional_measure_taken_by_authority(Measure, InitiatingAuthority),
    notification_sent(Measure, NotificationDate),
    three_months_elapsed_without_objection(NotificationDate),
    \+ objection_raised_by_market_surveillance_authority(Measure),
    \+ objection_raised_by_commission(Measure).
reduced_objection_period_art_5(Measure) :-
    provisional_measure_taken_by_authority(Measure, _Authority),
    non_compliance_due_to_art_5(Measure).
measure_deemed_justified(Measure) :-
    provisional_measure_taken_by_authority(Measure, InitiatingAuthority),
    notification_sent(Measure, NotificationDate),
    reduced_objection_period_art_5(Measure),
    thirty_days_elapsed_without_objection(NotificationDate),
    \+ objection_raised_by_market_surveillance_authority(Measure),
    \+ objection_raised_by_commission(Measure).
must_ensure_restrictive_measures(Authority, withdraw_from_market(S)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    \+ restrictive_measures_ensured(Authority, S).
provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(risk_to_health_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(risk_to_fundamental_rights_identified/2, 'celex:32024R1689/oj#art_79').
provenance(relevant_national_public_authority/1, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_finds_non_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(prescribed_period/2, 'celex:32024R1689/oj#art_79').
provenance(shorter_period/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_to_national_territory/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_measures/2, 'celex:32024R1689/oj#art_79').
provenance(notification_details/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_art_5/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_chapter_3_section_2/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_harmonised_standards/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_art_50/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_adopted_measures/2, 'celex:32024R1689/oj#art_79').
provenance(measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(reduced_objection_period_art_5/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').

% ==== celex:32024R1689/oj#art_80 ====
declared(high_risk_ai_system/1, 'AI system classified as high-risk', '80').
declared(classified_as_non_high_risk_by_provider/1, 'AI system classified by provider as non-high-risk', '80').
declared(evaluation_of_classification/2, 'evaluation of AI system classification by market surveillance authority', '80').
declared(must_bring_into_compliance/2, 'provider must bring AI system into compliance', '80').
declared(must_take_corrective_action/2, 'provider must take corrective action', '80').
declared(subject_to_fines/2, 'entity subject to fines', '80').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and other Member States', '80').
declared(adequate_corrective_action_not_taken/2, 'provider does not take adequate corrective action', '80').
declared(misclassified_to_circumvent/2, 'provider misclassified AI system to circumvent requirements', '80').
declared(may_perform_checks/2, 'market surveillance authority may perform checks', '80').
high_risk_ai_system(S) :-
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    conditions_art_6_par_3_hold(S),
    commission_guidelines_support_high_risk(S).
evaluation_of_classification(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    sufficient_reason_to_consider_high_risk(Authority, S).
sufficient_reason_to_consider_high_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S).
must_bring_into_compliance(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S).
must_take_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    made_available_on_market(Provider, S).
must_inform_commission_and_member_states(Authority, evaluation_results(S, Actions)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    \+ use_restricted_to_national_territory(Authority, S),
    required_actions(Authority, S, Actions).
use_restricted_to_national_territory(_Authority, _S) :-
    fail.
required_actions(Authority, S, bring_into_compliance_and_corrective_action) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    high_risk_ai_system(S).
subject_to_fines(Provider, non_compliance_with_requirements(S)) :-
    provider(Provider),
    ai_system(S),
    must_bring_into_compliance(Provider, S),
    \+ brought_into_compliance(Provider, S),
    period_prescribed_by_authority(Authority, S, Period),
    within(Period),
    market_surveillance_authority(Authority).
subject_to_fines(Provider, misclassification_to_circumvent(S)) :-
    provider(Provider),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    misclassified_to_circumvent(Provider, S).
misclassified_to_circumvent(Provider, S) :-
    provider(Provider),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    purpose_of_classification_was_circumvention(Provider, S),
    requirements_in_chapter_3_section_2_apply(S).
purpose_of_classification_was_circumvention(Provider, S) :-
    provider(Provider),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S).
requirements_in_chapter_3_section_2_apply(S) :-
    ai_system(S).
adequate_corrective_action_not_taken(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_take_corrective_action(Provider, S),
    \+ adequate_corrective_action_taken(Provider, S),
    period_prescribed_by_authority(Authority, S, Period),
    within(Period),
    market_surveillance_authority(Authority).
art_79_par_5_to_9_applies(S) :-
    ai_system(S),
    adequate_corrective_action_not_taken(Provider, S),
    provider(Provider).
may_perform_checks(Authority, monitoring_application_of_art_80) :-
    market_surveillance_authority(Authority).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/2, 'celex:32024R1689/oj#art_80').
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80').
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent/2, 'celex:32024R1689/oj#art_80').
provenance(adequate_corrective_action_not_taken/2, 'celex:32024R1689/oj#art_80').
provenance(art_79_par_5_to_9_applies/1, 'celex:32024R1689/oj#art_80').
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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

% ==== celex:32024R1689/oj#art_81 ====
declared(union_safeguard_procedure_applies/1, 'Union safeguard procedure applies to a measure', 'celex:32024R1689/oj#art_81').
declared(justified_national_measure/1, 'national measure is justified under Union safeguard procedure', 'celex:32024R1689/oj#art_81').
declared(unjustified_national_measure/1, 'national measure is unjustified under Union safeguard procedure', 'celex:32024R1689/oj#art_81').
declared(attributed_to_shortcomings_in_standards/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
declared(must_take_restrictive_measures/2, 'Member States must take restrictive measures regarding AI system', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_ai_system/2, 'Member State must require withdrawal of AI system from market', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_national_measure/2, 'Member State must withdraw national measure', 'celex:32024R1689/oj#art_81').
declared(must_inform_commission/2, 'party must inform Commission of action taken', 'celex:32024R1689/oj#art_81').
declared(must_apply_procedure/2, 'Commission must apply specified procedure', 'celex:32024R1689/oj#art_81').
declared(objections_raised/1, 'objections raised to national measure by another market surveillance authority', 'celex:32024R1689/oj#art_81').
declared(commission_considers_measure_contrary_to_union_law/1, 'Commission considers measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(commission_considers_measure_justified/1, 'Commission considers national measure justified', 'celex:32024R1689/oj#art_81').
declared(commission_considers_measure_unjustified/1, 'Commission considers national measure unjustified', 'celex:32024R1689/oj#art_81').
declared(non_compliance_with_prohibited_ai_practices/1, 'non-compliance with prohibition of AI practices in Article 5', 'celex:32024R1689/oj#art_81').
union_safeguard_procedure_applies(Measure) :-
    measure_taken_by_market_surveillance_authority(Measure),
    objections_raised(Measure),
    within_period_after_notification(Measure, months(3)).
union_safeguard_procedure_applies(Measure) :-
    measure_taken_by_market_surveillance_authority(Measure),
    non_compliance_with_prohibited_ai_practices(Measure),
    within_period_after_notification(Measure, days(30)).
union_safeguard_procedure_applies(Measure) :-
    measure_taken_by_market_surveillance_authority(Measure),
    commission_considers_measure_contrary_to_union_law(Measure).
must_take_restrictive_measures(member_state, S) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S).
must_withdraw_ai_system(member_state, S) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S).
must_inform_commission(member_state, restrictive_measures_taken(S)) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S).
must_withdraw_national_measure(member_state_concerned, Measure) :-
    unjustified_national_measure(Measure).
must_inform_commission(member_state_concerned, withdrawal_of(Measure)) :-
    unjustified_national_measure(Measure).
must_apply_procedure(commission, procedure_of('celex:32012R1025/oj#art_11')) :-
    justified_national_measure(Measure),
    measure_concerns_ai_system(Measure, S),
    attributed_to_shortcomings_in_standards(S).
measure_taken_by_market_surveillance_authority(Measure) :-
    market_surveillance_authority(Authority),
    took_measure(Authority, Measure).
measure_concerns_ai_system(Measure, S) :-
    ai_system(S),
    concerns(Measure, S).
within_period_after_notification(Measure, Period) :-
    notification_referred_to_in_article_79_5(Notification),
    received(Notification),
    period_since(Notification, Period).
provenance(union_safeguard_procedure_applies/1, 'celex:32024R1689/oj#art_81').
provenance(justified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(unjustified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_shortcomings_in_standards/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_ai_system/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(objections_raised/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_contrary_to_union_law/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_prohibited_ai_practices/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(risk_to_health_safety_or_rights/1, 'presents risk to health, safety, persons, fundamental rights or public interest', 'celex:32024R1689/oj#art_82').
declared(compliant_with_regulation/1, 'AI system complies with this Regulation', 'celex:32024R1689/oj#art_82').
declared(evaluation_under_art_79/1, 'evaluation performed under Article 79', 'celex:32024R1689/oj#art_82').
declared(consulted_relevant_authority/1, 'market surveillance authority consulted relevant national public authority', 'celex:32024R1689/oj#art_82').
declared(finding_of_risk/2, 'market surveillance authority finds risk despite compliance', 'celex:32024R1689/oj#art_82').
declared(prescribed_period/2, 'period prescribed by market surveillance authority for operator to act', 'celex:32024R1689/oj#art_82').
declared(corrective_action_taken/2, 'corrective action taken by operator for AI systems made available', 'celex:32024R1689/oj#art_82').
declared(informed_commission_and_member_states/1, 'Member States informed Commission and other Member States of finding', 'celex:32024R1689/oj#art_82').
declared(finding_details/4, 'details provided: identification data, origin and supply chain, nature of risk, nature and duration of national measures', 'celex:32024R1689/oj#art_82').
declared(commission_consultation/2, 'Commission entered into consultation with Member States and operators', 'celex:32024R1689/oj#art_82').
declared(commission_evaluation/2, 'Commission evaluated national measures taken', 'celex:32024R1689/oj#art_82').
declared(commission_decision/3, 'Commission decided whether measure justified and proposed other measures', 'celex:32024R1689/oj#art_82').
declared(commission_communicated_decision/2, 'Commission communicated decision to Member States and operators', 'celex:32024R1689/oj#art_82').
declared(commission_informed_other_member_states/1, 'Commission informed other Member States of decision', 'celex:32024R1689/oj#art_82').
finding_of_risk(Msa, S) :-
    market_surveillance_authority(Msa),
    high_risk_ai_system(S),
    evaluation_under_art_79(S),
    consulted_relevant_authority(Msa),
    compliant_with_regulation(S),
    risk_to_health_safety_or_rights(S).
must_take_appropriate_measures(Msa, operator(O), ensure_no_longer_presents_risk(S)) :-
    finding_of_risk(Msa, S),
    operator(O),
    (placing_on_market(S); putting_into_service(S)),
    prescribed_period(Msa, S).
must_ensure_corrective_action(O, all_systems_made_available(S)) :-
    provider(O),
    finding_of_risk(_Msa, S),
    corrective_action_taken(O, S),
    timeline_prescribed_by(Msa, S),
    market_surveillance_authority(Msa).
must_ensure_corrective_action(O, all_systems_made_available(S)) :-
    operator(O),
    \+ provider(O),
    finding_of_risk(_Msa, S),
    corrective_action_taken(O, S),
    timeline_prescribed_by(Msa, S),
    market_surveillance_authority(Msa).
must_inform(MemberState, finding_of_risk(Msa, S)) :-
    member_state(MemberState),
    finding_of_risk(Msa, S),
    informed_commission_and_member_states(MemberState),
    finding_details(S, identification_data, origin_and_supply_chain, nature_of_risk, national_measures).
must_enter_consultation(Commission, member_states_and_operators(MemberStates, Operators)) :-
    ai_office(Commission),
    finding_of_risk(Msa, S),
    commission_consultation(Commission, Msa),
    commission_evaluation(Commission, national_measures(Msa, S)).
must_decide(Commission, justified(national_measures(Msa, S))) :-
    ai_office(Commission),
    finding_of_risk(Msa, S),
    commission_evaluation(Commission, national_measures(Msa, S)),
    commission_decision(Commission, national_measures(Msa, S), justified).
must_decide(Commission, propose_other_measures(national_measures(Msa, S))) :-
    ai_office(Commission),
    finding_of_risk(Msa, S),
    commission_evaluation(Commission, national_measures(Msa, S)),
    commission_decision(Commission, national_measures(Msa, S), other_measures).
must_communicate(Commission, decision(MemberStates, Operators)) :-
    ai_office(Commission),
    commission_decision(Commission, _Measures, _Outcome),
    commission_communicated_decision(Commission, member_states(MemberStates)),
    commission_communicated_decision(Commission, operators(Operators)).
must_inform(Commission, other_member_states(MemberStates)) :-
    ai_office(Commission),
    commission_communicated_decision(Commission, _),
    commission_informed_other_member_states(Commission).
provenance(finding_of_risk/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_appropriate_measures/3, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82/par_1', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(non_compliance/1, 'finding of formal non-compliance by market surveillance authority', 'celex:32024R1689/oj#art_83').
declared(must_end_non_compliance/2, 'provider must end non-compliance within prescribed period', 'celex:32024R1689/oj#art_83').
declared(must_take_restriction_measures/2, 'market surveillance authority must take measures to restrict or prohibit', 'celex:32024R1689/oj#art_83').
declared(prescribed_period/2, 'period prescribed by market surveillance authority for ending non-compliance', 'celex:32024R1689/oj#art_83').
non_compliance(ce_marking_affixed_in_violation(S)) :-
    ce_marking(S),
    affixed_in_violation(S, art_48).
non_compliance(ce_marking_not_affixed(S)) :-
    high_risk_ai_system(S),
    \+ ce_marking(S).
non_compliance(eu_declaration_not_drawn_up(S)) :-
    high_risk_ai_system(S),
    \+ eu_declaration_of_conformity(S).
non_compliance(eu_declaration_not_drawn_up_correctly(S)) :-
    eu_declaration_of_conformity(S),
    \+ drawn_up_correctly(S).
non_compliance(eu_database_registration_not_carried_out(S)) :-
    high_risk_ai_system(S),
    \+ registration_in_eu_database(S).
non_compliance(no_authorised_reappointed(S)) :-
    high_risk_ai_system(S),
    \+ authorised_representative_appointed(S).
non_compliance(technical_documentation_not_available(S)) :-
    high_risk_ai_system(S),
    \+ technical_documentation(S).
must_end_non_compliance(Provider, NonCompliance) :-
    provider(Provider),
    non_compliance(NonCompliance),
    market_surveillance_authority(Authority),
    finding(Authority, NonCompliance),
    prescribed_period(Authority, NonCompliance).
must_take_restriction_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    non_compliance(NonCompliance),
    high_risk_ai_system(S),
    non_compliance_concerns(NonCompliance, S),
    \+ ended(NonCompliance),
    finding(Authority, NonCompliance).
provenance(non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(must_end_non_compliance/2, 'celex:32024R1689/oj#art_83').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(must_designate/2, 'Commission shall designate structures', 'celex:32024R1689/oj#art_84').
declared(union_ai_testing_support_structure/1, 'structure designated to perform AI testing tasks', 'celex:32024R1689/oj#art_84').
declared(must_provide_advice/2, 'structure shall provide independent technical or scientific advice', 'celex:32024R1689/oj#art_84').
must_designate(commission, S) :-
    union_ai_testing_support_structure(S).
union_ai_testing_support_structure(S) :-
    performs_tasks_listed_in_ref(S, 'celex:32019R1020/oj#art_21/par_6'),
    area_of_ai(S).
must_provide_advice(S, request(board)) :-
    union_ai_testing_support_structure(S).
must_provide_advice(S, request(commission)) :-
    union_ai_testing_support_structure(S).
must_provide_advice(S, request(market_surveillance_authority)) :-
    union_ai_testing_support_structure(S),
    market_surveillance_authority(market_surveillance_authority).
performs_tasks_listed_in_ref(S, Ref) :-
    union_ai_testing_support_structure(S),
    ref(Ref).
area_of_ai(S) :-
    union_ai_testing_support_structure(S).
provenance(must_designate/2, 'celex:32024R1689/oj#art_84').
provenance(union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(must_provide_advice/2, 'celex:32024R1689/oj#art_84').
provenance(performs_tasks_listed_in_ref/2, 'celex:32024R1689/oj#art_84').
provenance(area_of_ai/1, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(must_lodge_complaint/2, 'natural or legal person may submit complaint to market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(infringement_of_provisions/1, 'infringement of the provisions of this Regulation', 'celex:32024R1689/oj#art_85').
declared(relevant_market_surveillance_authority/2, 'market surveillance authority relevant to the complainant', 'celex:32024R1689/oj#art_85').
declared(complaint_taken_into_account/1, 'complaint shall be taken into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(complaint_handled_by_procedures/1, 'complaint shall be handled in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
must_lodge_complaint(Person, Authority) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person, Infringement),
    infringement_of_provisions(Infringement),
    relevant_market_surveillance_authority(Person, Authority).
complaint_taken_into_account(Complaint) :-
    must_lodge_complaint(_Person, _Authority).
complaint_handled_by_procedures(Complaint) :-
    must_lodge_complaint(_Person, _Authority).
provenance(must_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/1, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_by_procedures/1, 'celex:32024R1689/oj#art_85').
provenance(infringement_of_provisions/1, 'celex:32024R1689/oj#art_85').
provenance(relevant_market_surveillance_authority/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(right_to_explanation/1, 'right of affected person to obtain explanation of AI-based decision', 'celex:32024R1689/oj#art_86').
declared(affected_person/1, 'person subject to a decision based on AI system output', 'celex:32024R1689/oj#art_86/par_1').
declared(decision_with_legal_effects/1, 'decision producing legal effects or similarly significantly affecting person', 'celex:32024R1689/oj#art_86/par_1').
declared(adverse_impact/1, 'impact on health, safety or fundamental rights that person considers adverse', 'celex:32024R1689/oj#art_86/par_1').
declared(high_risk_ai_system_annex_3_except_point_2/1, 'high-risk AI system listed in Annex 3 except point 2', 'celex:32024R1689/oj#art_86/par_1').
declared(exception_or_restriction_under_union_or_national_law/1, 'exception or restriction to explanation obligation from Union or national law', 'celex:32024R1689/oj#art_86/par_2').
declared(right_otherwise_provided_under_union_law/1, 'right to explanation already provided under other Union law', 'celex:32024R1689/oj#art_86/par_3').
right_to_explanation(Person) :-
    affected_person(Person),
    decision_with_legal_effects(Person),
    adverse_impact(Person),
    deployer(Deployer),
    high_risk_ai_system_annex_3_except_point_2(S),
    \+ exception_or_restriction_under_union_or_national_law(Person),
    \+ right_otherwise_provided_under_union_law(Person).
decision_with_legal_effects(Person) :-
    affected_person(Person),
    deployer(Deployer),
    high_risk_ai_system_annex_3_except_point_2(S),
    decision_by_deployer_based_on_output(Deployer, Person, S),
    (legal_effects(Person) ; similarly_significant_effects(Person)).
adverse_impact(Person) :-
    affected_person(Person),
    considers_adverse_impact(Person, health).
adverse_impact(Person) :-
    affected_person(Person),
    considers_adverse_impact(Person, safety).
adverse_impact(Person) :-
    affected_person(Person),
    considers_adverse_impact(Person, fundamental_rights).
must_provide_explanation(Deployer, Person) :-
    deployer(Deployer),
    affected_person(Person),
    right_to_explanation(Person).
provenance(right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(decision_with_legal_effects/1, 'celex:32024R1689/oj#art_86/par_1').
provenance(adverse_impact/1, 'celex:32024R1689/oj#art_86/par_1').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86/par_1').
provenance(high_risk_ai_system_annex_3_except_point_2/1, 'celex:32024R1689/oj#art_86/par_1').
provenance(exception_or_restriction_under_union_or_national_law/1, 'celex:32024R1689/oj#art_86/par_2').
provenance(right_otherwise_provided_under_union_law/1, 'celex:32024R1689/oj#art_86/par_3').
references('celex:32024R1689/oj#art_86/par_1', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86/par_2', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86/par_3', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86/par_3', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(infringement_reporting_applies/1, 'reporting of infringements and protection of reporting persons applies', 'celex:32024R1689/oj#art_87').
infringement_reporting_applies(Infringement) :-
    infringement_of_regulation(Infringement, 'celex:32024R1689/oj').
provenance(infringement_reporting_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(must_supervise_and_enforce/2, 'Commission has exclusive powers to supervise and enforce', 'celex:32024R1689/oj#art_88').
declared(entrust_implementation/2, 'Commission entrusts implementation to an entity', 'celex:32024R1689/oj#art_88').
declared(may_request_exercise_of_powers/2, 'authority may request another to exercise powers', 'celex:32024R1689/oj#art_88').
declared(necessary_and_proportionate/1, 'measure is necessary and proportionate', 'celex:32024R1689/oj#art_88').
must_supervise_and_enforce(commission, chapter_5) :-
    general_purpose_ai_model(_).
entrust_implementation(commission, ai_office) :-
    must_supervise_and_enforce(commission, chapter_5).
may_request_exercise_of_powers(market_surveillance_authority, commission) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate(request(Authority, commission, powers(chapter_9_section_5))).
provenance(must_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(entrust_implementation/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(must_monitor_compliance/2, 'AI Office shall monitor compliance by providers of general-purpose AI models', 'celex:32024R1689/oj#art_89').
declared(must_lodge_complaint/2, 'downstream provider shall lodge a complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(complaint_alleging_infringement/1, 'duly reasoned complaint alleging infringement of the regulation', 'celex:32024R1689/oj#art_89').
declared(point_of_contact/2, 'point of contact of the provider of the general-purpose AI model', 'celex:32024R1689/oj#art_89').
declared(description_of_infringement/3, 'description of facts, provisions concerned, and reason for infringement allegation', 'celex:32024R1689/oj#art_89').
declared(other_relevant_information/2, 'other information the downstream provider considers relevant', 'celex:32024R1689/oj#art_89').
must_monitor_compliance(AiOffice, Provider) :-
    ai_office(AiOffice),
    provider(Provider),
    general_purpose_ai_model_provider(Provider).
must_lodge_complaint(DownstreamProvider, complaint(Provider, Facts, Provisions, Reason, OtherInfo)) :-
    downstream_provider(DownstreamProvider),
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    point_of_contact(Provider, _Contact),
    description_of_infringement(Facts, Provisions, Reason),
    other_relevant_information(DownstreamProvider, OtherInfo).
general_purpose_ai_model_provider(P) :-
    provider(P),
    general_purpose_ai_model(_Model),
    
    true.
provenance(must_monitor_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(must_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_alleging_infringement/1, 'celex:32024R1689/oj#art_89').
provenance(point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(description_of_infringement/3, 'celex:32024R1689/oj#art_89').
provenance(other_relevant_information/2, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(qualified_alert/1, 'alert from the scientific panel to the AI Office', 'celex:32024R1689/oj#art_90').
declared(may_provide_qualified_alert/2, 'scientific panel may provide alert to AI Office', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'risk that is concrete, identifiable and at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_referred_to_in_art_51/1, 'model meets conditions of Article 51', 'celex:32024R1689/oj#art_90').
declared(reason_to_suspect/2, 'scientific panel has reason to suspect condition', 'celex:32024R1689/oj#art_90').
declared(exercise_powers_for_assessment/1, 'Commission may exercise powers for assessment', 'celex:32024R1689/oj#art_90').
declared(inform_board/1, 'Board is informed of measure', 'celex:32024R1689/oj#art_90').
declared(duly_reasoned/1, 'alert is duly reasoned', 'celex:32024R1689/oj#art_90').
declared(indicates_point_of_contact/1, 'alert indicates provider point of contact', 'celex:32024R1689/oj#art_90').
declared(indicates_relevant_facts_and_reasons/1, 'alert indicates facts and reasons', 'celex:32024R1689/oj#art_90').
declared(indicates_other_relevant_information/1, 'alert includes other relevant information', 'celex:32024R1689/oj#art_90').
may_provide_qualified_alert(scientific_panel, ai_office) :-
    general_purpose_ai_model(M),
    reason_to_suspect(scientific_panel, concrete_identifiable_risk_at_union_level(M)).
may_provide_qualified_alert(scientific_panel, ai_office) :-
    general_purpose_ai_model(M),
    reason_to_suspect(scientific_panel, meets_conditions_referred_to_in_art_51(M)).
exercise_powers_for_assessment(commission) :-
    qualified_alert(_),
    ai_office(ai_office),
    inform_board(board).
inform_board(board) :-
    exercise_powers_for_assessment(commission).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_91).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_92).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_93).
must_inform(ai_office, measure(M)) :-
    exercise_powers_for_assessment(commission),
    measure_according_to_article(M, art_94).
required_qualified_alert(A) :-
    qualified_alert(A),
    duly_reasoned(A),
    indicates_point_of_contact(A),
    indicates_relevant_facts_and_reasons(A),
    indicates_other_relevant_information(A).
indicates_point_of_contact(A) :-
    qualified_alert(A),
    point_of_contact_of_provider(A, _P).
indicates_relevant_facts_and_reasons(A) :-
    qualified_alert(A),
    description_of_facts(A, _Facts),
    reasons_for_alert(A, _Reasons).
indicates_other_relevant_information(A) :-
    qualified_alert(A),
    other_relevant_information(A, _Info).
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(exercise_powers_for_assessment/1, 'celex:32024R1689/oj#art_90').
provenance(inform_board/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_relevant_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_other_relevant_information/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(must_provide_documentation/2, 'provider must provide documentation to the Commission', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_91').
declared(may_request_information_scientific_panel/2, 'Commission may request information on substantiated request from scientific panel', 'celex:32024R1689/oj#art_91').
declared(required_request_contents/1, 'request for information must contain specified contents', 'celex:32024R1689/oj#art_91').
declared(must_supply_information/2, 'provider or representative must supply requested information', 'celex:32024R1689/oj#art_91').
declared(remains_responsible/2, 'client remains responsible for information supplied by lawyer', 'celex:32024R1689/oj#art_91').
must_provide_documentation(Commission, provider(P)) :-
    ai_office(Commission),
    general_purpose_ai_model_provider(P),
    documentation_drawn_up(P, art_53_or_55).
may_initiate_structured_dialogue(AiOffice, provider(P)) :-
    ai_office(AiOffice),
    general_purpose_ai_model_provider(P),
    before(request_information(Commission, provider(P), _)).
may_request_information_scientific_panel(Commission, provider(P)) :-
    ai_office(Commission),
    general_purpose_ai_model_provider(P),
    substantiated_request(scientific_panel, Commission, access_necessary_and_proportionate(fulfilment_tasks(art_68_par_2))).
required_request_contents(request(Commission, Provider, Info)) :-
    ai_office(Commission),
    operator(Provider),
    states_legal_basis(request(Commission, Provider, Info)),
    states_purpose(request(Commission, Provider, Info)),
    specifies_information_required(request(Commission, Provider, Info), Info),
    sets_period_for_provision(request(Commission, Provider, Info), _Period),
    indicates_fines(request(Commission, Provider, Info), art_101).
must_supply_information(Provider, request(Commission, Provider, Info)) :-
    general_purpose_ai_model_provider(Provider),
    ai_office(Commission),
    requested(Commission, Provider, Info).
must_supply_information(representative(R), request(Commission, provider(P), Info)) :-
    representative_of(R, provider(P)),
    general_purpose_ai_model_provider(P),
    ai_office(Commission),
    requested(Commission, provider(P), Info).
must_supply_information(authorised_representative(R), request(Commission, provider(P), Info)) :-
    authorised_representative(R),
    represents(R, provider(P)),
    general_purpose_ai_model_provider(P),
    ai_office(Commission),
    requested(Commission, provider(P), Info).
must_supply_information(legal_person_representative(R), request(Commission, provider(P), Info)) :-
    legal_person_or_company_or_firm(provider(P)),
    authorised_by_law_or_statutes(R, provider(P)),
    general_purpose_ai_model_provider(P),
    ai_office(Commission),
    requested(Commission, provider(P), Info).
must_supply_information(lawyer(L), request(Commission, Client, Info)) :-
    lawyer(L),
    authorised_to_act(L, Client),
    general_purpose_ai_model_provider(Client),
    ai_office(Commission),
    requested(Commission, Client, Info).
remains_responsible(Client, information_supplied_by(lawyer(L), request(Commission, Client, Info))) :-
    lawyer(L),
    authorised_to_act(L, Client),
    general_purpose_ai_model_provider(Client),
    ai_office(Commission),
    requested(Commission, Client, Info),
    (incomplete(information_supplied_by(L, request(Commission, Client, Info)));
     incorrect(information_supplied_by(L, request(Commission, Client, Info)));
     misleading(information_supplied_by(L, request(Commission, Client, Info)))).
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(required_request_contents/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/art_91').
provenance(remains_responsible/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(may_conduct_evaluation/2, 'authority may conduct evaluation of model', 'celex:32024R1689/oj#art_92').
declared(may_appoint_experts/2, 'authority may appoint independent experts', 'celex:32024R1689/oj#art_92').
declared(may_request_access/2, 'authority may request access to model', 'celex:32024R1689/art_92').
declared(shall_supply_information/2, 'provider shall supply requested information', 'celex:32024R1689/oj#art_92').
declared(shall_provide_access/2, 'authorised persons shall provide access on behalf of provider', 'celex:32024R1689/oj#art_92').
declared(shall_adopt_implementing_acts/2, 'Commission shall adopt implementing acts', 'celex:32024R1689/oj#art_92').
declared(may_initiate_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_92').
declared(information_gathered_insufficient/1, 'information gathered is insufficient for assessment', 'celex:32024R1689/oj#art_92').
declared(qualified_alert_from_scientific_panel/1, 'qualified alert received from scientific panel', 'celex:32024R1689/oj#art_92').
declared(access_request_specified/4, 'access request specifies legal basis, purpose, reasons, period and fines', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    information_gathered_insufficient(Model).
may_conduct_evaluation(ai_office, Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    qualified_alert_from_scientific_panel(Model).
systemic_risk_applies(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).
may_appoint_experts(commission, Experts) :-
    independent_expert(Experts).
may_request_access(commission, Model) :-
    general_purpose_ai_model(Model),
    may_conduct_evaluation(ai_office, Model).
access_request_specified(Request, legal_basis(art_92), purpose(Purpose), reasons(Reasons), period(Period), fines(art_101)) :-
    request_for_access(Request, Model),
    may_request_access(commission, Model).
shall_supply_information(Provider, Request) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of(Provider, Model),
    request_for_access(Request, Model).
shall_provide_access(AuthorisedPerson, Request) :-
    (legal_person(Provider) ; company_or_firm(Provider) ; \+ has_legal_personality(Provider)),
    authorised_to_represent(AuthorisedPerson, Provider),
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of(Provider, Model),
    request_for_access(Request, Model).
shall_adopt_implementing_acts(commission, evaluation_arrangements) :-
    may_conduct_evaluation(ai_office, _Model).
may_initiate_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provider_of(Provider, Model),
    may_request_access(commission, Model).
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_experts/2, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(shall_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(shall_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(shall_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_92').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_92').
provenance(access_request_specified/6, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(must_take_measures/2, 'Commission may request provider to take measures', 'celex:32024R1689/oj#art_93').
declared(must_implement_mitigation/2, 'Commission may request provider to implement mitigation measures', 'celex:32024R1689/oj#art_93').
declared(must_restrict_withdraw_or_recall/2, 'Commission may request provider to restrict, withdraw or recall model', 'celex:32024R1689/oj#art_93').
declared(may_initiate_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_93').
declared(may_make_commitments_binding/2, 'Commission may make provider commitments binding', 'celex:32024R1689/oj#art_93').
must_take_measures(Commission, provider(P)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P),
    necessary_and_appropriate.
must_implement_mitigation(Commission, provider(P)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P),
    evaluation_art_92(P),
    serious_and_substantiated_concern(P),
    systemic_risk_at_union_level(P).
must_restrict_withdraw_or_recall(Commission, provider(P)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P).
may_initiate_dialogue(ai_office(Office), provider(P)) :-
    ai_office(Office),
    provider(P),
    general_purpose_ai_model_provider(P),
    before_requested_measure(P).
may_make_commitments_binding(Commission, commitments(P, Measures)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P),
    systemic_risk(P),
    offers_commitments(P, Measures),
    addresses_systemic_risk_at_union_level(Measures).
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_withdraw_or_recall/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(must_apply_mutatis_mutandis/2, 'procedural rights apply with necessary adaptations', 'celex:32024R1689/oj#art_94').
must_apply_mutatis_mutandis(providers_of_general_purpose_ai_model, procedural_rights_of_economic_operators).
applies_to(general_purpose_ai_model_providers, procedural_rights_of_economic_operators) :-
    must_apply_mutatis_mutandis(providers_of_general_purpose_ai_model, procedural_rights_of_economic_operators).
provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(M),
    develops(P, M).
applies_to(P, procedural_rights_of_economic_operators) :-
    provider_of_general_purpose_ai_model(P),
    must_apply_mutatis_mutandis(providers_of_general_purpose_ai_model, procedural_rights_of_economic_operators).
provenance(must_apply_mutatis_mutandis/2, 'celex:32024R1689/oj#art_94').
provenance(applies_to/2, 'celex:32024R1689/oj#art_94').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(voluntary_code_of_conduct/1, 'code of conduct for voluntary application of specific requirements', 'celex:32024R1689/oj#art_95').
declared(encourages_codes_of_conduct/2, 'entity encourages and facilitates drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(facilitates_codes_of_conduct/2, 'entity facilitates drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(code_objective/2, 'objective of a code of conduct', 'celex:32024R1689/oj#art_95').
declared(code_key_performance_indicator/2, 'key performance indicator for measuring achievement of code objective', 'celex:32024R1689/oj#art_95').
declared(drawn_up_by/2, 'entity that draws up a code of conduct', 'celex:32024R1689/oj#art_95').
declared(covers_ai_systems/2, 'code of conduct covers particular AI systems', 'celex:32024R1689/oj#art_95').
declared(takes_into_account_sme_needs/2, 'entity takes into account specific interests and needs of SMEs', 'celex:32024R1689/oj#art_95').
voluntary_code_of_conduct(C) :-
    drawn_up_by(C, _).
encourages_codes_of_conduct(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).
encourages_codes_of_conduct(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).
encourages_codes_of_conduct(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
encourages_codes_of_conduct(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
facilitates_codes_of_conduct(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
facilitates_codes_of_conduct(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
applies_to_non_high_risk(C) :-
    voluntary_code_of_conduct(C),
    covers_ai_systems(C, S),
    ai_system(S),
    \+ high_risk_ai_system(S).
applies_to_all_ai_systems(C) :-
    voluntary_code_of_conduct(C),
    covers_ai_systems(C, S),
    ai_system(S).
code_objective(C, trustworthy_ai_elements) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
code_objective(C, environmental_sustainability) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
code_objective(C, ai_literacy) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
code_objective(C, inclusive_and_diverse_design) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
code_objective(C, protection_of_vulnerable_persons) :-
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
code_key_performance_indicator(C, K) :-
    code_objective(C, _),
    clear_objective(C, O),
    measurable_indicator(K, O).
drawn_up_by(C, provider(P)) :-
    voluntary_code_of_conduct(C),
    provider(P).
drawn_up_by(C, deployer(D)) :-
    voluntary_code_of_conduct(C),
    deployer(D).
drawn_up_by(C, organisation(O)) :-
    voluntary_code_of_conduct(C),
    represents_providers_or_deployers(O).
drawn_up_by(C, both(P, O)) :-
    voluntary_code_of_conduct(C),
    provider(P),
    organisation(O),
    represents_providers_or_deployers(O).
drawn_up_by(C, stakeholders(S)) :-
    voluntary_code_of_conduct(C),
    interested_stakeholder(S).
covers_ai_systems(C, S) :-
    voluntary_code_of_conduct(C),
    ai_system(S),
    similar_intended_purpose(S, _Other).
takes_into_account_sme_needs(ai_office(A), C) :-
    ai_office(A),
    voluntary_code_of_conduct(C).
takes_into_account_sme_needs(member_state(M), C) :-
    member_state(M),
    voluntary_code_of_conduct(C).
must_encourage_and_facilitate_codes(A, C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).
must_encourage_and_facilitate_codes(M, C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_non_high_risk(C).
must_facilitate_codes(A, C) :-
    ai_office(A),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
must_facilitate_codes(M, C) :-
    member_state(M),
    voluntary_code_of_conduct(C),
    applies_to_all_ai_systems(C).
must_take_into_account_sme_needs(A, C) :-
    ai_office(A),
    voluntary_code_of_conduct(C).
must_take_into_account_sme_needs(M, C) :-
    member_state(M),
    voluntary_code_of_conduct(C).
provenance(voluntary_code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(encourages_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(facilitates_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(code_objective/2, 'celex:32024R1689/oj#art_95').
provenance(code_key_performance_indicator/2, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(covers_ai_systems/2, 'celex:32024R1689/oj#art_95').
provenance(takes_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').
provenance(applies_to_non_high_risk/1, 'celex:32024R1689/oj#art_95').
provenance(applies_to_all_ai_systems/1, 'celex:32024R1689/oj#art_95').
provenance(must_encourage_and_facilitate_codes/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_codes/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'Commission shall develop guidelines on practical implementation', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'Commission shall update previously adopted guidelines', 'celex:32024R1689/oj#art_96').
declared(guidelines_subject/2, 'subject matter covered by Commission guidelines', 'celex:32024R1689/oj#art_96').
declared(particular_attention_needed/2, 'group whose needs require particular attention in guidelines', 'celex:32024R1689/oj#art_96').
declared(guidelines_account_for/2, 'factor that guidelines shall take due account of', 'celex:32024R1689/oj#art_96').
declared(update_triggered/1, 'condition triggering update of guidelines', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, requirements_and_obligations_arts_8_to_15_and_25).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, prohibited_practices_art_5).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, substantial_modification).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, transparency_obligations_art_50).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, relationship_with_harmonisation_legislation_annex_1_and_other_union_law).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, definition_of_ai_system_art_3).
must_develop_guidelines(commission, implementation_of_regulation) :-
    particular_attention_needed(implementation_of_regulation, smes_including_start_ups).
must_develop_guidelines(commission, implementation_of_regulation) :-
    particular_attention_needed(implementation_of_regulation, local_public_authorities).
must_develop_guidelines(commission, implementation_of_regulation) :-
    particular_attention_needed(implementation_of_regulation, sectors_most_likely_affected).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_account_for(implementation_of_regulation, generally_acknowledged_state_of_the_art_on_ai).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_account_for(implementation_of_regulation, relevant_harmonised_standards_and_common_specifications_arts_40_41).
must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_account_for(implementation_of_regulation, harmonised_standards_or_technical_specifications_union_harmonisation_law).
update_triggered(request_of_member_states).
update_triggered(request_of_ai_office).
update_triggered(commission_own_initiative).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    update_triggered(_Trigger),
    deemed_necessary(_).
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_subject/2, 'celex:32024R1689/oj#art_96').
provenance(particular_attention_needed/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_account_for/2, 'celex:32024R1689/oj#art_96').
provenance(update_triggered/1, 'celex:32024R1689/oj#art_96').
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
declared(delegated_act/1, 'act adopted by the Commission under delegated powers', 'celex:32024R1689/oj#art_97').
declared(power_to_adopt_delegated_acts/1, 'authority to adopt delegated acts conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(delegation_period/1, 'period for which delegated power is conferred', 'celex:32024R1689/oj#art_97').
declared(report_on_delegation/1, 'report on exercise of delegated power', 'celex:32024R1689/oj#art_97').
declared(tacit_extension/1, 'automatic extension of delegation period', 'celex:32024R1689/oj#art_97').
declared(revocation_of_delegation/1, 'decision revoking delegated power', 'celex:32024R1689/oj#art_97').
declared(consultation_of_experts/1, 'consultation with Member State experts before adoption', 'celex:32024R1689/oj#art_97').
declared(notification_of_delegated_act/1, 'notification of adopted delegated act to Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(objection_period/1, 'period for Parliament or Council to object to delegated act', 'celex:32024R1689/oj#art_97').
declared(entry_into_force_condition/1, 'condition for delegated act to enter into force', 'celex:32024R1689/oj#art_97').
power_to_adopt_delegated_acts(commission).
delegation_period(years(5)).
delegation_period_start(date(2024, 8, 1)).
must_draw_up_report(commission, delegation_report) :-
    power_to_adopt_delegated_acts(commission),
    delegation_period(years(5)),
    before_end_of_period(months(9), delegation_period).
tacit_extension_applies(delegation_period) :-
    power_to_adopt_delegated_acts(commission),
    \+ opposition_expressed(european_parliament, extension),
    \+ opposition_expressed(council, extension),
    before_end_of_period(months(3), current_period).
may_revoke(european_parliament, delegation_power).
may_revoke(council, delegation_power).
revocation_takes_effect(revocation_decision, day_after_publication) :-
    revocation_of_delegation(revocation_decision).
revocation_takes_effect(revocation_decision, specified_date) :-
    revocation_of_delegation(revocation_decision),
    later_date_specified(revocation_decision).
exempt_validity_of_existing_acts(revocation_decision) :-
    revocation_of_delegation(revocation_decision).
must_consult_experts(commission, member_state_experts) :-
    power_to_adopt_delegated_acts(commission),
    before_adopting(delegated_act(_)).
must_notify(commission, delegated_act(A)) :-
    power_to_adopt_delegated_acts(commission),
    adopts(commission, delegated_act(A)),
    notify(european_parliament, delegated_act(A)),
    notify(council, delegated_act(A)).
objection_period(months(3)).
entry_into_force_condition(delegated_act(A)) :-
    delegated_act(A),
    \+ objection_expressed(european_parliament, A),
    \+ objection_expressed(council, A),
    within(objection_period, notification_of(delegated_act(A))).
entry_into_force_condition(delegated_act(A)) :-
    delegated_act(A),
    informed(european_parliament, commission, no_objection(A)),
    informed(council, commission, no_objection(A)),
    before_expiry(objection_period, notification_of(delegated_act(A))).
extended_objection_period(months(6)) :-
    initiative(european_parliament, extension).
extended_objection_period(months(6)) :-
    initiative(council, extension).
provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_start/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension_applies/1, 'celex:32024R1689/oj#art_97').
provenance(may_revoke/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_takes_effect/2, 'celex:32024R1689/oj#art_97').
provenance(exempt_validity_of_existing_acts/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(objection_period/1, 'celex:32024R1689/oj#art_97').
provenance(entry_into_force_condition/1, 'celex:32024R1689/oj#art_97').
provenance(extended_objection_period/1, 'celex:32024R1689/oj#art_97').
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
declared(assisted_by_committee/2, 'the Commission is assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning/2, 'committee is within the meaning of a regulation', 'celex:32024R1689/oj#art_98').
declared(applies_where_reference_made/2, 'a regulation article applies where reference is made to a provision', 'celex:32024R1689/oj#art_98').
assisted_by_committee(commission, Committee) :-
    committee(Committee).
committee_within_meaning(Committee, Regulation) :-
    assisted_by_committee(commission, Committee),
    regulation(Regulation),
    id(Regulation, 'celex:32011R0182/oj').
applies_where_reference_made(Article, Reference) :-
    reference_made(Reference),
    article(Article),
    id(Article, 'celex:32011R0182/oj#art_5').
provenance(assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning/2, 'celex:32024R1689/oj#art_98').
provenance(applies_where_reference_made/2, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(administrative_fine/1, 'monetary penalty for infringement', 'celex:32024R1689/oj#art_99').
declared(undertaking/1, 'entity engaged in economic activity', 'celex:32024R1689/oj#art_99').
declared(sme/1, 'small and medium-sized enterprise including start-up', 'celex:32024R1689/oj#art_99').
declared(supply_of_information/1, 'act of providing information to authorities', 'celex:32024R1689/oj#art_99').
declared(incorrect_information/1, 'information that is false or inaccurate', 'celex:32024R1689/oj#art_99').
declared(incomplete_information/1, 'information that lacks required content', 'celex:32024R1689/oj#art_99').
declared(misleading_information/1, 'information that deceives or is likely to deceive', 'celex:32024R1689/oj#art_99').
declared(request_from_authority/1, 'demand for information by competent authority', 'celex:32024R1689/oj#art_99').
declared(fine_amount/2, 'maximum fine applicable to infringement', 'celex:32024R1689/oj#art_99').
declared(fine_percentage/2, 'turnover-based maximum fine percentage', 'celex:32024R1689/oj#art_99').
declared(whichever_is_higher/2, 'the greater of two fine bases', 'celex:32024R1689/oj#art_99').
declared(whichever_is_lower/2, 'the lesser of two fine bases', 'celex:32024R1689/oj#art_99').
declared(infringement_of_prohibition/1, 'breach of prohibited AI practice', 'celex:32024R1689/oj#art_99').
declared(infringement_of_operator_obligation/1, 'breach of operator or notified body obligation', 'celex:32024R1689/oj#art_99').
declared(infringement_of_information_requirement/1, 'breach of information supply obligation', 'celex:32024R1689/oj#art_99').
infringement_of_prohibition(I) :-
    infringement(I),
    prohibited_practice(P),
    relates_to(I, P).
infringement_of_operator_obligation(I) :-
    infringement(I),
    operator_obligation(O),
    relates_to(I, O),
    \+ prohibited_practice_relates(I).
infringement_of_information_requirement(I) :-
    supply_of_information(I),
    incorrect_information(I) ; incomplete_information(I) ; misleading_information(I),
    request_from_authority(I),
    ( notified_body(B), recipient(I, B) ; national_competent_authority(A), recipient(I, A) ).
fine_amount(infringement_of_prohibition(_), eur(35000000)).
fine_percentage(infringement_of_prohibition(_), percent(7)).
fine_amount(infringement_of_operator_obligation(_), eur(15000000)).
fine_percentage(infringement_of_operator_obligation(_), percent(3)).
fine_amount(infringement_of_information_requirement(_), eur(7500000)).
fine_percentage(infringement_of_information_requirement(_), percent(1)).
applicable_maximum_fine(I, amount(A)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    undertaking(U),
    offender(I, U),
    \+ whichever_is_higher(A, P).
applicable_maximum_fine(I, percentage(P)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    undertaking(U),
    offender(I, U),
    \+ whichever_is_higher(A, P).
applicable_maximum_fine(I, whichever_is_higher(A, P)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    undertaking(U),
    offender(I, U).
applicable_maximum_fine(I, whichever_is_lower(A, P)) :-
    fine_amount(I, A),
    fine_percentage(I, P),
    sme(S),
    offender(I, S).
must_lay_down_penalties(MemberState, Rules) :-
    member_state(MemberState),
    penalties(Rules),
    enforcement_measures(Rules),
    applicable_to(Rules, operator),
    infringements_of(Rules, 'celex:32024R1689/oj').
must_ensure_implementation(MemberState, Rules) :-
    must_lay_down_penalties(MemberState, Rules),
    properly_implemented(Rules),
    effectively_implemented(Rules).
must_take_into_account(MemberState, sme_interests) :-
    must_lay_down_penalties(MemberState, _).
must_take_into_account(MemberState, economic_viability) :-
    must_lay_down_penalties(MemberState, _),
    sme(S),
    start_up(S).
must_notify_commission(MemberState, penalty_rules) :-
    member_state(MemberState),
    rules_on_penalties(MemberState, Rules),
    other_enforcement_measures(MemberState, Measures),
    without_delay(MemberState),
    by_date_of_entry_into_application(MemberState).
must_notify_commission(MemberState, amendment(ExistingRules)) :-
    member_state(MemberState),
    subsequent_amendment(ExistingRules),
    without_delay(MemberState).
subject_to_administrative_fine(I, F) :-
    infringement_of_prohibition(I),
    applicable_maximum_fine(I, F).
subject_to_administrative_fine(I, F) :-
    infringement_of_operator_obligation(I),
    applicable_maximum_fine(I, F).
subject_to_administrative_fine(I, F) :-
    infringement_of_information_requirement(I),
    applicable_maximum_fine(I, F).
must_consider_circumstances(Authority, I) :-
    imposes_fine(Authority, I),
    nature_of_infringement(I),
    gravity_of_infringement(I),
    duration_of_infringement(I),
    consequences_of_infringement(I),
    purpose_of_ai_system(I, _P),
    number_of_affected_persons(I),
    level_of_damage(I).
must_consider(Authority, previous_fines_same_infringement) :-
    imposes_fine(Authority, I),
    other_market_surveillance_authority(Other),
    administrative_fine_already_applied(Other, same_operator(I), same_infringement(I)).
must_consider(Authority, previous_fines_other_law) :-
    imposes_fine(Authority, I),
    other_authority(Other),
    administrative_fine_already_applied(Other, same_operator(I), other_infringement(_)),
    same_activity_or_omission(I, OtherInfringement),
    infringement_of_union_or_national_law(OtherInfringement).
must_consider(Authority, operator_size) :-
    imposes_fine(Authority, I),
    size(operator(I)),
    annual_turnover(operator(I)),
    market_share(operator(I)).
must_consider(Authority, financial_benefits) :-
    imposes_fine(Authority, I),
    financial_benefits_gained(I) ; losses_avoided(I).
must_consider(Authority, cooperation_degree) :-
    imposes_fine(Authority, I),
    degree_of_cooperation(operator(I), national_competent_authority),
    remedy_infringement(operator(I)),
    mitigate_adverse_effects(operator(I)).
must_consider(Authority, responsibility_degree) :-
    imposes_fine(Authority, I),
    degree_of_responsibility(operator(I)),
    technical_measures_implemented(operator(I)),
    organisational_measures_implemented(operator(I)).
must_consider(Authority, manner_of_discovery) :-
    imposes_fine(Authority, I),
    manner_infringement_became_known(Authority, I),
    operator_notified_infringement(operator(I), Extent).
must_consider(Authority, intentional_or_negligent) :-
    imposes_fine(Authority, I),
    intentional_infringement(I) ; negligent_infringement(I).
must_consider(Authority, mitigation_actions) :-
    imposes_fine(Authority, I),
    action_taken(operator(I), mitigate_harm(affected_persons)).
must_lay_down_rules_public_authorities(MemberState, Extent) :-
    member_state(MemberState),
    public_authority(P),
    body_established(P, MemberState),
    administrative_fines_applicable_to(P, Extent).
must_report_annual_fines(MemberState, Commission, Year) :-
    member_state(MemberState),
    administrative_fines_issued(MemberState, Year),
    related_litigation(MemberState, Year),
    judicial_proceedings(MemberState, Year).
provenance(administrative_fine/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
provenance(supply_of_information/1, 'celex:32024R1689/oj#art_99').
provenance(incorrect_information/1, 'celex:32024R1689/oj#art_99').
provenance(incomplete_information/1, 'celex:32024R1689/oj#art_99').
provenance(misleading_information/1, 'celex:32024R1689/oj#art_99').
provenance(request_from_authority/1, 'celex:32024R1689/oj#art_99').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_99').
provenance(fine_percentage/2, 'celex:32024R1689/oj#art_99').
provenance(whichever_is_higher/2, 'celex:32024R1689/oj#art_99').
provenance(whichever_is_lower/2, 'celex:32024R1689/oj#art_99').
provenance(infringement_of_prohibition/1, 'celex:32024R1689/oj#art_99').
provenance(infringement_of_operator_obligation/1, 'celex:32024R1689/oj#art_99').
provenance(infringement_of_information_requirement/1, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_penalties/2, 'celex:32024R1689/oj#art_99').
provenance(must_ensure_implementation/2, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_99').
provenance(subject_to_administrative_fine/2, 'celex:32024R1689/oj#art_99').
provenance(applicable_maximum_fine/2, 'celex:32024R1689/oj#art_99').
provenance(must_consider_circumstances/2, 'celex:32024R1689/oj#art_99').
provenance(must_consider/2, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_rules_public_authorities/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/3, 'celex:32024R1689/oj#art_99').
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
declared(may_impose_administrative_fine/2, 'authority may impose fine on entity', 'celex:32024R1689/oj#art_100').
declared(union_institution_body_office_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(falls_within_scope/1, 'entity falls within scope of regulation', 'celex:32024R1689/oj#art_100').
declared(administrative_fine_up_to/2, 'administrative fine up to specified amount', 'celex:32024R1689/oj#art_100').
declared(non_compliance_prohibited_practices/1, 'non-compliance with prohibited AI practices', 'celex:32024R1689/oj#art_100').
declared(non_compliance_other_requirements/1, 'non-compliance with requirements other than prohibited practices', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'authority must give entity opportunity to be heard', 'celex:32024R1689/oj#art_100').
declared(subject_of_proceedings/2, 'entity is subject of proceedings by authority', 'celex:32024R1689/oj#art_100').
declared(must_base_decision_on_commentable_elements/1, 'authority must base decisions only on elements parties could comment on', 'celex:32024R1689/oj#art_100').
declared(complainant_associated_with_proceedings/1, 'complainant is associated with proceedings', 'celex:32024R1689/oj#art_100').
declared(rights_of_defence_respected/1, 'rights of defence are respected in proceedings', 'celex:32024R1689/oj#art_100').
declared(entitled_to_file_access/2, 'party entitled to access authority file', 'celex:32024R1689/oj#art_100').
declared(subject_to_legitimate_interest_protection/1, 'access subject to protection of legitimate interests', 'celex:32024R1689/oj#art_100').
declared(funds_contribute_to_general_budget/1, 'fine funds contribute to Union general budget', 'celex:32024R1689/oj#art_100').
declared(fine_not_affect_effective_operation/2, 'fine does not affect effective operation of fined entity', 'celex:32024R1689/oj#art_100').
declared(must_notify_annually/2, 'authority must notify Commission annually of specified matters', 'celex:32024R1689/oj#art_100').
may_impose_administrative_fine(european_data_protection_supervisor, Entity) :-
    union_institution_body_office_agency(Entity),
    falls_within_scope(Entity).
administrative_fine_up_to(non_compliance_prohibited_practices(_), eur(1500000)).
administrative_fine_up_to(non_compliance_other_requirements(_), eur(750000)).
non_compliance_prohibited_practices(Entity) :-
    union_institution_body_office_agency(Entity),
    falls_within_scope(Entity).
non_compliance_other_requirements(Entity) :-
    union_institution_body_office_agency(Entity),
    falls_within_scope(Entity).
must_give_opportunity_to_be_heard(european_data_protection_supervisor, Entity) :-
    subject_of_proceedings(european_data_protection_supervisor, Entity).
must_base_decision_on_commentable_elements(european_data_protection_supervisor).
complainant_associated_with_proceedings(Complainant) :-
    subject_of_proceedings(european_data_protection_supervisor, _),
    Complainaint \= none.
rights_of_defence_respected(proceedings(european_data_protection_supervisor, _)).
entitled_to_file_access(Party, european_data_protection_supervisor) :-
    rights_of_defence_respected(proceedings(european_data_protection_supervisor, _)),
    subject_of_proceedings(european_data_protection_supervisor, Party).
subject_to_legitimate_interest_protection(access_to_file).
funds_contribute_to_general_budget(fine_imposed(european_data_protection_supervisor, _, _)).
fine_not_affect_effective_operation(fine_imposed(european_data_protection_supervisor, _, Entity), Entity) :-
    union_institution_body_office_agency(Entity).
must_notify_annually(european_data_protection_supervisor, commission) :-
    imposed_fines(european_data_protection_supervisor, _);
    initiated_litigation(european_data_protection_supervisor, _);
    initiated_judicial_proceedings(european_data_protection_supervisor, _).
provenance(may_impose_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine_up_to/2, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_prohibited_practices/1, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_other_requirements/1, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commentable_elements/1, 'celex:32024R1689/oj#art_100').
provenance(complainant_associated_with_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(entitled_to_file_access/2, 'celex:32024R1689/oj#art_100').
provenance(subject_to_legitimate_interest_protection/1, 'celex:32024R1689/oj#art_100').
provenance(funds_contribute_to_general_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fine_not_affect_effective_operation/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_annually/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(may_impose_fine/2, 'Commission may impose a fine on a provider', 'celex:32024R1689/oj#art_101').
declared(fine_amount/2, 'maximum fine amount for a provider', 'celex:32024R1689/oj#art_101').
declared(infringement_nature/1, 'nature of the infringement for fine calculation', 'celex:32024R1689/oj#art_101').
declared(infringement_gravity/1, 'gravity of the infringement for fine calculation', 'celex:32024R1689/art_101').
declared(infringement_duration/1, 'duration of the infringement for fine calculation', 'celex:32024R1689/oj#art_101').
declared(must_communicate_preliminary_findings/2, 'Commission must communicate preliminary findings to provider before decision', 'celex:32024R1689/oj#art_101').
declared(must_give_opportunity_to_be_heard/2, 'Commission must give provider opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(fine_effective/1, 'fine must be effective', 'celex:32024R1689/oj#art_101').
declared(fine_proportionate/1, 'fine must be proportionate', 'celex:32024R1689/oj#art_101').
declared(fine_dissuasive/1, 'fine must be dissuasive', 'celex:32024R1689/oj#art_101').
declared(must_communicate_fines_to_board/1, 'information on fines must be communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(court_unlimited_jurisdiction/1, 'Court of Justice has unlimited jurisdiction to review fine decisions', 'celex:32024R1689/oj#art_101').
declared(may_cancel_fine/2, 'Court of Justice may cancel a fine', 'celex:32024R1689/oj#art_101').
declared(may_reduce_fine/2, 'Court of Justice may reduce a fine', 'celex:32024R1689/oj#art_101').
declared(may_increase_fine/2, 'Court of Justice may increase a fine', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts/1, 'Commission must adopt implementing acts for procedural safeguards', 'celex:32024R1689/oj#art_101').
declared(implementing_acts_procedural_safeguards/1, 'implementing acts contain detailed arrangements and procedural safeguards', 'celex:32024R1689/oj#art_101').
may_impose_fine(commission, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    infringement_by_provider(P, _Infringement).
fine_amount(P, higher_of(percent(3, annual_total_worldwide_turnover_preceding_year), eur(15000000))) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M).
infringement_by_provider(P, infringed_relevant_provisions) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, infringed_relevant_provisions).
infringement_by_provider(P, failed_comply_request_document_information) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, failed_comply_request_document_information).
infringement_by_provider(P, failed_comply_measure_requested) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, failed_comply_measure_requested).
infringement_by_provider(P, failed_make_available_access_for_evaluation) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    intentionally_or_negligently(P, failed_make_available_access_for_evaluation),
    (general_purpose_ai_model(M) ; systemic_risk(M)).
must_communicate_preliminary_findings(commission, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    preliminary_findings(commission, P).
must_give_opportunity_to_be_heard(commission, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_of(P, M),
    decision_pending(commission, fine(P)).
fine_effective(F) :-
    fine_imposed(F, art_101).
fine_proportionate(F) :-
    fine_imposed(F, art_101).
fine_dissuasive(F) :-
    fine_imposed(F, art_101).
must_communicate_fines_to_board(F) :-
    fine_imposed(F, art_101).
court_unlimited_jurisdiction(court_of_justice, Decision) :-
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).
may_cancel_fine(court_of_justice, Fine) :-
    fine_imposed(Fine, art_101),
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).
may_reduce_fine(court_of_justice, Fine) :-
    fine_imposed(Fine, art_101),
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).
may_increase_fine(court_of_justice, Fine) :-
    fine_imposed(Fine, art_101),
    decision_fixing_fine(Decision, commission),
    under_article(Decision, 101).
must_adopt_implementing_acts(commission) :-
    proceedings_pending(fine, art_101).
implementing_acts_procedural_safeguards(Acts) :-
    implementing_acts(Acts, commission),
    proceedings_pending(fine, art_101),
    detailed_arrangements(Acts),
    procedural_safeguards(Acts).
provider_of(P, M) :-
    provider(P),
    general_purpose_ai_model(M).
intentionally_or_negligently(_P, _Act).
preliminary_findings(_Commission, _P).
decision_pending(_Commission, _Decision).
fine_imposed(_F, _Article).
under_article(_Decision, _Article).
decision_fixing_fine(_Decision, _Commission).
proceedings_pending(_Type, _Article).
implementing_acts(_Acts, _Commission).
detailed_arrangements(_Acts).
procedural_safeguards(_Acts).
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount/2, 'celex:32024R1689/oj#art_101').
provenance(infringement_by_provider/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(fine_effective/1, 'celex:32024R1689/oj#art_101').
provenance(fine_proportionate/1, 'celex:32024R1689/oj#art_101').
provenance(fine_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fines_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(court_unlimited_jurisdiction/2, 'celex:32024R1689/oj#art_101').
provenance(may_cancel_fine/2, 'celex:32024R1689/oj#art_101').
provenance(may_reduce_fine/2, 'celex:32024R1689/oj#art_101').
provenance(may_increase_fine/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_procedural_safeguards/1, 'celex:32024R1689/oj#art_101').
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
declared(must_consider_requirements/2, 'when adopting detailed measures related to technical specifications and procedures for approval and use of security equipment concerning AI systems, the requirements set out in Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_102').
provenance(must_consider_requirements/2, 'celex:32024R1689/oj#art_102').
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
declared(must_take_into_account/2, 'obligation to consider specified requirements when adopting delegated acts', 'celex:32024R1689/oj#art_103').
declared(delegated_act_concerning/2, 'delegated act concerning specified subject matter', 'celex:32024R1689/oj#art_103').
declared(artificial_intelligence_safety_component/1, 'AI system which is a safety component', 'celex:32024R1689/oj#art_103').
artificial_intelligence_safety_component(S) :-
    ai_system(S),
    safety_component(S).
delegated_act_concerning(Act, artificial_intelligence_safety_component(S)) :-
    delegated_act(Act),
    artificial_intelligence_safety_component(S).
must_take_into_account(Adopter, requirements(chapter_3_section_2)) :-
    delegated_act_concerning(Act, artificial_intelligence_safety_component(_S)),
    adopts(Adopter, Act).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').
provenance(delegated_act_concerning/2, 'celex:32024R1689/oj#art_103').
provenance(artificial_intelligence_safety_component/1, 'celex:32024R1689/oj#art_103').
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
declared(must_take_into_account/2, 'authority must take requirements into account when adopting delegated acts', 'celex:32024R1689/oj#art_104').
declared(delegated_act/1, 'act adopted under delegated powers', 'celex:32024R1689/oj#art_104').
declared(safety_component_of_ai_system/1, 'AI system that is a safety component within the meaning of the AI Act', 'celex:32024R1689/oj#art_104').
must_take_into_account(Authority, requirements(Chapter3Section2)) :-
    delegated_act(Act),
    adopted_under(Act, 'celex:32013R0168/oj#art_22/par_5/unp_1'),
    concerning(Act, S),
    safety_component_of_ai_system(S),
    requirements(Chapter3Section2),
    chapter_3_section_2(Chapter3Section2).
safety_component_of_ai_system(S) :-
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_104').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_104').
provenance(safety_component_of_ai_system/1, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account/2, 'Commission must take into account requirements when adopting technical specifications and testing standards', 'celex:32024R1689/oj#art_105').
must_take_into_account(commission, requirements_set_out_in_chapter_3_section_2) :-
    safety_component(S),
    ai_system(S),
    activity_pursuant_to_article_8_paragraph_1,
    adopting_technical_specifications_and_testing_standards.
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
declared(added_paragraph/2, 'paragraph added by amendment', 'celex:32024R1689/oj#art_106').
declared(delegated_act_concerning/1, 'delegated act concerning AI safety components', 'celex:32024R1689/oj#art_106').
declared(implementing_act_concerning/1, 'implementing act concerning AI safety components', 'celex:32024R1689/oj#art_106').
declared(must_take_into_account/2, 'obligation to take requirements into account', 'celex:32024R1689/oj#art_106').
added_paragraph('celex:32016L0797/oj#art_5', 'celex:32024R1689/oj#art_5/par_12').
delegated_act_concerning(Act) :-
    Act = delegated_act('celex:32016L0797/oj#art_5/par_1', ai_safety_component).
implementing_act_concerning(Act) :-
    Act = implementing_act('celex:32016L0797/oj#art_5/par_11', ai_safety_component).
ai_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    within_meaning_of(S, 'celex:32024R1689/oj').
must_take_into_account(Authority, requirements('celex:32024R1689/oj#chp_3/sec_2')) :-
    delegated_act_concerning(Act),
    adopting(Authority, Act).
must_take_into_account(Authority, requirements('celex:32024R1689/oj#chp_3/sec_2')) :-
    implementing_act_concerning(Act),
    adopting(Authority, Act).
provenance(added_paragraph/2, 'celex:32024R1689/oj#art_106').
provenance(delegated_act_concerning/1, 'celex:32024R1689/oj#art_106').
provenance(implementing_act_concerning/1, 'celex:32024R1689/oj#art_106').
provenance(ai_safety_component/1, 'celex:32024R1689/oj#art_106').
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
declared(must_take_into_account/2, 'obligation to consider requirements when adopting delegated acts', 'celex:32024R1689/oj#art_107').
declared(delegated_act/1, 'act adopted under delegated powers', 'celex:32024R1689/oj#art_107').
declared(concerning_ai_safety_component/1, 'delegated act concerning AI systems as safety components under this Regulation', 'celex:32024R1689/oj#art_107').
declared(requirements_chapter_3_section_2/1, 'requirements set out in Chapter 3 Section 2 of this Regulation', 'celex:32024R1689/oj#art_107').
must_take_into_account(Authority, requirements_chapter_3_section_2(AiSystem)) :-
    adopting_delegated_act(Authority, Act),
    delegated_act(Act),
    concerning_ai_safety_component(Act),
    ai_system(AiSystem),
    safety_component(AiSystem),
    pursuant_to(Act, 'celex:32018R0858/oj#art_5/par_3').
concerning_ai_safety_component(Act) :-
    delegated_act(Act),
    subject_matter(Act, AiSystem),
    ai_system(AiSystem),
    safety_component(AiSystem),
    within_meaning_of(AiSystem, 'celex:32024R1689/oj').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_107').
provenance(concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_107').
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
declared(must_take_into_account/2, 'authority must take requirements into account when adopting acts', 'celex:32024R1689/oj#art_108').
must_take_into_account(Authority, adoption(Act, concerning(S))) :-
    adopting_authority(Act, Authority),
    safety_component(S),
    ai_system(S),
    act_concerns_ai_safety_component(Act, S),
    chapter_3_section_2_requirements(Reqs),
    requirements_to_consider(Reqs).
adoption(Act) :- implementing_act(Act).
adoption(Act) :- delegated_act(Act).
implementing_act(adoption_implementing_act(article_17_par_1, celex_32018R1139)).
implementing_act(adoption_implementing_act(article_43_par_1, celex_32024R1689)).
implementing_act(adoption_implementing_act(article_57, celex_32018R1139)).
delegated_act(adoption_delegated_act(article_19_par_1_2, celex_32014L0090)).
delegated_act(adoption_delegated_act(article_47_par_1_2, celex_32024R1689)).
delegated_act(adoption_delegated_act(article_58_par_1_2, celex_32024R1689)).
adopting_authority(adoption_implementing_act(article_17_par_1, _), commission) :- commission.
adopting_authority(adoption_implementing_act(article_43_par_1, _), commission) :- commission.
adopting_authority(adoption_implementing_act(article_57, _), commission) :- commission.
adopting_authority(adoption_delegated_act(article_19_par_1_2, _), commission) :- commission.
adopting_authority(adoption_delegated_act(article_47_par_1_2, _), commission) :- commission.
adopting_authority(adoption_delegated_act(article_58_par_1_2, _), commission) :- commission.
act_concerns_ai_safety_component(Act, S) :-
    adoption(Act),
    safety_component(S),
    ai_system(S).
chapter_3_section_2_requirements(requirements_chapter_3_section_2).
requirements_to_consider(requirements_chapter_3_section_2).
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').
provenance(adoption/1, 'celex:32024R1689/oj#art_108').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_108').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_108').
provenance(adopting_authority/2, 'celex:32024R1689/oj#art_108').
provenance(act_concerns_ai_safety_component/2, 'celex:32024R1689/oj#art_108').
provenance(chapter_3_section_2_requirements/1, 'celex:32024R1689/oj#art_108').
provenance(requirements_to_consider/1, 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_109 ====
declared(must_take_into_account/2, 'obligation to consider requirements when adopting implementing acts', 'celex:32024R1689/oj#art_109').
must_take_into_account(Commission, requirements(Chapter3Section2)) :-
    adopting_implementing_acts(Commission, concerning(S)),
    safety_component(S),
    ai_system(S),
    harmonised_rules_on_artificial_intelligence_applies,
    concerning_artificial_intelligence_systems_which_are_safety_components(S).
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
declared(added_to_annex_i/1, 'item added to Annex I of Directive 2020/1828', 'celex:32024R1689/oj#art_110').
added_to_annex_i('celex:32024R1689/oj').
provenance(added_to_annex_i/1, 'celex:32024R1689/oj#art_110').
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
declared(must_bring_into_compliance/2, 'entity required to bring something into compliance by a deadline', 'celex:32024R1689/oj#art_111').
declared(must_comply/2, 'entity required to comply with obligations by a deadline', 'celex:32024R1689/oj#art_111').
declared(significant_change_in_design/1, 'system subject to significant changes in its design', 'celex:32024R1689/oj#art_111').
declared(before_date/2, 'event occurred before specified date', 'celex:32024R1689/oj#art_111').
declared(by_date/2, 'deadline by which compliance must be achieved', 'celex:32024R1689/oj#art_111').
declared(high_risk_ai_system/1, 'AI system classified as high-risk', 'celex:32024R1689/oj#art_111').
declared(general_purpose_ai_model/1, 'AI model with wide range of tasks', 'celex:32024R1689/oj#art_111').
declared(large_scale_it_system/1, 'IT system established by listed legal acts', 'celex:32024R1689/oj#art_111').
declared(listed_in_annex_10/1, 'established by legal acts listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(intended_use_by_public_authority/1, 'high-risk AI system intended for use by public authorities', 'celex:32024R1689/oj#art_111').
must_bring_into_compliance(S, date(year(2030), month(12), day(31))) :-
    ai_system(S),
    component_of_large_scale_it_system(S, L),
    large_scale_it_system(L),
    listed_in_annex_10(L),
    (placed_on_market(S); put_into_service(S)),
    before_date(S, date(year(2027), month(8), day(2))).
must_comply(Operator, by_date(date(year(2026), month(8), day(2)))) :-
    operator(Operator),
    high_risk_ai_system(S),
    \+ large_scale_it_system_component(S),
    (placed_on_market(S); put_into_service(S)),
    before_date(S, date(year(2026), month(8), day(2))),
    significant_change_in_design(S).
must_comply(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_use_by_public_authority(S),
    by_date(date(year(2030), month(8), day(2))).
must_comply(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    intended_use_by_public_authority(S),
    by_date(date(year(2030), month(8), day(2))).
must_comply(Provider, by_date(date(year(2027), month(8), day(2)))) :-
    provider(Provider),
    general_purpose_ai_model(M),
    placed_on_market(M),
    before_date(M, date(year(2025), month(8), day(2))).
component_of_large_scale_it_system(S, L) :-
    ai_system(S),
    large_scale_it_system(L).
large_scale_it_system_component(S) :-
    component_of_large_scale_it_system(S, _L).
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_111').
provenance(must_comply/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(before_date/2, 'celex:32024R1689/oj#art_111').
provenance(by_date/2, 'celex:32024R1689/oj#art_111').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_111').
provenance(general_purpose_ai_model/1, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(listed_in_annex_10/1, 'celex:32024R1689/oj#art_111').
provenance(intended_use_by_public_authority/1, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/2, 'celex:32024R1689/oj#art_111').
provenance(large_scale_it_system_component/1, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess/2, 'obligation to assess need for amendment', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_and_report/2, 'obligation to evaluate and report to Parliament and Council', 'celex:32024R1689/oj#art_112').
declared(must_submit_report/2, 'obligation to submit a report', 'celex:32024R1689/oj#art_112').
declared(report_shall_include/2, 'content required in a report', 'celex:32024R1689/oj#art_112').
declared(report_shall_be_made_public/1, 'obligation to make report publicly available', 'celex:32024R1689/oj#art_112').
declared(report_shall_pay_attention_to/2, 'specific attention required in a report', 'celex:32024R1689/oj#art_112').
declared(must_provide_information/2, 'obligation to provide information upon request', 'celex:32024R1689/oj#art_112').
declared(shall_take_into_account/2, 'obligation to consider positions and findings', 'celex:32024R1689/oj#art_112').
declared(shall_submit_proposals/2, 'obligation to submit amendment proposals', 'celex:32024R1689/oj#art_112').
declared(shall_undertake/2, 'obligation to undertake development of methodology', 'celex:32024R1689/oj#art_112').
declared(methodology_for/2, 'methodology subject matter', 'celex:32024R1689/oj#art_112').
declared(amendment_shall_take_into_account/2, 'conditions for amendments concerning sectoral legislation', 'celex:32024R1689/oj#art_112').
declared(must_carry_out_assessment/2, 'obligation to carry out assessment and report', 'celex:32024R1689/oj#art_112').
must_assess(commission, amendment_of_lists) :-
    once_per_year_following_entry_into_force,
    until_end_of_delegation_period(art_97).
must_submit_findings(commission, european_parliament_and_council) :-
    must_assess(commission, amendment_of_lists).
report_shall_include(commission, assessment(enforcement_structure_and_union_agency_need)) :-
    must_submit_report(commission, evaluation_and_review_of_regulation).
report_shall_be_accompanied_by(commission, proposal_for_amendment) :-
    must_submit_report(commission, evaluation_and_review_of_regulation),
    appropriate_based_on_findings.
report_shall_be_made_public(commission, evaluation_and_review_of_regulation) :-
    must_submit_report(commission, evaluation_and_review_of_regulation).
report_shall_pay_attention_to(commission, status_of_national_competent_authorities_resources) :-
    must_evaluate_and_report(commission, _).
report_shall_pay_attention_to(commission, state_of_penalties_and_administrative_fines) :-
    must_evaluate_and_report(commission, _).
report_shall_pay_attention_to(commission, adopted_harmonised_standards_and_common_specifications) :-
    must_evaluate_and_report(commission, _).
report_shall_pay_attention_to(commission, number_of_market_entrants_and_smes) :-
    must_evaluate_and_report(commission, _).
must_evaluate(commission, ai_office_powers_and_competences) :-
    must_evaluate(commission, functioning_of_ai_office).
must_evaluate(commission, need_to_upgrade_ai_office) :-
    must_evaluate(commission, functioning_of_ai_office).
must_submit_report(commission, ai_office_evaluation) :-
    must_evaluate(commission, functioning_of_ai_office).
report_shall_be_made_public(commission, standardisation_deliverables_energy_efficiency) :-
    must_submit_report(commission, standardisation_deliverables_energy_efficiency).
must_assess(commission, need_for_further_measures_energy_efficiency) :-
    must_submit_report(commission, standardisation_deliverables_energy_efficiency).
must_provide_information(Board, commission) :-
    board(Board).
must_provide_information(MemberState, commission) :-
    member_state(MemberState).
must_provide_information(Authority, commission) :-
    national_competent_authority(Authority).
shall_take_into_account(commission, positions_and_findings(Board)) :-
    carrying_out_evaluations_and_reviews(commission).
shall_take_into_account(commission, positions_and_findings(european_parliament)) :-
    carrying_out_evaluations_and_reviews(commission).
shall_take_into_account(commission, positions_and_findings(council)) :-
    carrying_out_evaluations_and_reviews(commission).
shall_take_into_account(commission, positions_and_findings(other_relevant_bodies)) :-
    carrying_out_evaluations_and_reviews(commission).
shall_submit_proposals(commission, amendment_of_regulation) :-
    necessary,
    taking_into_account(technological_developments),
    taking_into_account(effect_on_health_safety_fundamental_rights),
    taking_into_account(state_of_progress_information_society).
shall_undertake(ai_office, develop_methodology) :-
    methodology_for(evaluation_of_risk_levels, _).
methodology_for(evaluation_of_risk_levels, annex_3_inclusion).
methodology_for(evaluation_of_risk_levels, prohibited_practices_inclusion).
methodology_for(evaluation_of_risk_levels, art_50_transparency_measures_inclusion).
amendment_shall_take_into_account(Amendment, regulatory_specificities_of_sector) :-
    concerns_sectoral_harmonisation_legislation(Amendment),
    listed_in(annex_1_section_2).
amendment_shall_take_into_account(Amendment, existing_governance_conformity_assessment_enforcement) :-
    concerns_sectoral_harmonisation_legislation(Amendment),
    listed_in(annex_1_section_2).
must_report(commission, european_parliament_council_eesc) :-
    must_carry_out_assessment(commission, enforcement_of_regulation),
    taking_into_account(first_years_of_application).
report_shall_be_accompanied_by(commission, proposal_for_amendment_enforcement_structure_and_union_agency) :-
    must_carry_out_assessment(commission, enforcement_of_regulation),
    appropriate_based_on_findings.
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_include/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_be_accompanied_by/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_be_made_public/1, 'celex:32024R1689/oj#art_112').
provenance(report_shall_pay_attention_to/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(shall_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(shall_submit_proposals/2, 'celex:32024R1689/oj#art_112').
provenance(shall_undertake/2, 'celex:32024R1689/oj#art_112').
provenance(methodology_for/2, 'celex:32024R1689/oj#art_112').
provenance(amendment_shall_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_assessment/2, 'celex:32024R1689/oj#art_112').
provenance(must_report/2, 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').

% ==== celex:32024R1689/oj#art_113 ====
declared(applies_from/2, 'unit applies from a given date', 'celex:32024R1689/oj#art_113').
declared(enters_into_force_on/2, 'regulation enters into force on a given date', 'celex:32024R1689/oj#art_113').
declared(exception_from/2, 'unit is excepted from a general application date', 'celex:32024R1689/oj#art_113').
applies_from('celex:32024R1689/oj', date(2026, 8, 2)).
applies_from('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
exception_from('celex:32024R1689/oj#art_101', applies_from_group([chp_3_sec_4, chp_5, chp_7, chp_12, art_78], date(2025, 8, 2))).
applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
applies_from(Unit, date(2027, 8, 2)) :-
    corresponding_obligations(Unit, 'celex:32024R1689/oj#art_6/par_1').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(enters_into_force_on/2, 'celex:32024R1689/oj#art_113').
provenance(exception_from/2, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation/1, 'instrument of Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#anx_1').
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
declared(criminal_offence/1, 'offence listed in Annex II of the AI Act', 'celex:32024R1689/oj#anx_2').
declared(serious_criminal_offence/1, 'criminal offence listed in Annex II', 'celex:32024R1689/oj#anx_2').
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
criminal_offence(crimes_within_jurisdiction_of_international_criminal_court).
criminal_offence(unlawful_seizure_of_aircraft_or_ships).
criminal_offence(rape).
criminal_offence(environmental_crime).
criminal_offence(organised_or_armed_robbery).
criminal_offence(sabotage).
criminal_offence(participation_in_criminal_organisation).
serious_criminal_offence(O) :-
    criminal_offence(O).
provenance(criminal_offence/1, 'celex:32024R1689/oj#anx_2').
provenance(serious_criminal_offence/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#anx_3').
declared(biometric_verification_system/1, 'AI system for confirming claimed identity', 'celex:32024R1689/oj#anx_3/par_1/pnt_a').
declared(biometric_categorisation_system/1, 'AI system assigning persons to categories based on biometric data', 'celex:32024R1689/oj#anx_3/par_1/pnt_b').
declared(emotion_recognition_system/1, 'AI system identifying emotions from biometric data', 'celex:32024R1689/oj#anx_3/par_1/pnt_c').
declared(safety_component_of_critical_infrastructure/1, 'AI system as safety component in critical infrastructure management', 'celex:32024R1689/oj#anx_3/par_2').
declared(access_or_admission_to_education/1, 'AI system for determining access to educational institutions', 'celex:32024R1689/oj#anx_3/par_3/pnt_a').
declared(evaluate_learning_outcomes/1, 'AI system for evaluating learning outcomes', 'celex:32024R1689/oj#anx_3/par_3/pnt_b').
declared(assess_appropriate_education_level/1, 'AI system for assessing appropriate education level', 'celex:32024R1689/oj#anx_3/par_3/pnt_c').
declared(monitor_student_test_behaviour/1, 'AI system for monitoring prohibited student behaviour during tests', 'celex:32024R1689/oj#anx_3/par_3/pnt_d').
declared(recruitment_or_selection/1, 'AI system for recruitment or selection of persons', 'celex:32024R1689/oj#anx_3/par_4/pnt_a').
declared(work_related_decisions/1, 'AI system affecting work-related relationships', 'celex:32024R1689/oj#anx_3/par_4/pnt_b').
declared(evaluate_public_benefits_eligibility/1, 'AI system for evaluating eligibility for public benefits', 'celex:32024R1689/oj#anx_3/par_5/pnt_a').
declared(evaluate_creditworthiness/1, 'AI system for evaluating creditworthiness or credit score', 'celex:32024R1689/oj#anx_3/par_5/pnt_b').
declared(risk_assessment_life_health_insurance/1, 'AI system for risk assessment and pricing in life and health insurance', 'celex:32024R1689/oj#anx_3/par_5/pnt_c').
declared(emergency_call_evaluation_or_dispatch/1, 'AI system for evaluating or dispatching emergency response', 'celex:32024R1689/oj#anx_3/par_5/pnt_d').
declared(assess_victimisation_risk/1, 'AI system for assessing risk of becoming victim of criminal offences', 'celex:32024R1689/oj#anx_3/par_6/pnt_a').
declared(polygraph_or_similar_law_enforcement/1, 'AI system used as polygraph or similar tool by law enforcement', 'celex:32024R1689/oj#anx_3/par_6/pnt_b').
declared(evaluate_evidence_reliability/1, 'AI system for evaluating reliability of evidence in criminal proceedings', 'celex:32024R1689/oj#anx_3/par_6/pnt_c').
declared(assess_reoffending_risk/1, 'AI system for assessing risk of offending or re-offending', 'celex:32024R1689/oj#anx_3/par_6/pnt_d').
declared(profiling_in_criminal_investigation/1, 'AI system for profiling in detection, investigation or prosecution of criminal offences', 'celex:32024R1689/oj#anx_3/par_6/pnt_e').
declared(polygraph_or_similar_migration/1, 'AI system used as polygraph or similar tool in migration context', 'celex:32024R1689/oj#anx_3/par_7/pnt_a').
declared(assess_migration_risk/1, 'AI system for assessing risk posed by person entering Member State territory', 'celex:32024R1689/oj#anx_3/par_7/pnt_b').
declared(assist_asylum_visa_residence_examination/1, 'AI system for assisting examination of asylum, visa or residence applications', 'celex:32024R1689/oj#anx_3/par_7/pnt_c').
declared(detect_recognise_identify_in_migration/1, 'AI system for detecting, recognising or identifying persons in migration context', 'celex:32024R1689/oj#anx_3/par_7/pnt_d').
declared(judicial_research_and_interpretation/1, 'AI system for assisting judicial authority in researching and interpreting facts and law', 'celex:32024R1689/oj#anx_3/par_8/pnt_a').
declared(influence_election_or_voting_behaviour/1, 'AI system for influencing election outcome or voting behaviour', 'celex:32024R1689/oj#anx_3/par_8/pnt_b').
high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_system(S).
high_risk_ai_system(S) :-
    biometric_categorisation_system(S),
    sensitive_or_protected_attributes(S).
high_risk_ai_system(S) :-
    emotion_recognition_system(S).
high_risk_ai_system(S) :-
    safety_component_of_critical_infrastructure(S).
high_risk_ai_system(S) :-
    access_or_admission_to_education(S).
high_risk_ai_system(S) :-
    evaluate_learning_outcomes(S).
high_risk_ai_system(S) :-
    assess_appropriate_education_level(S).
high_risk_ai_system(S) :-
    monitor_student_test_behaviour(S).
high_risk_ai_system(S) :-
    recruitment_or_selection(S).
high_risk_ai_system(S) :-
    work_related_decisions(S).
high_risk_ai_system(S) :-
    evaluate_public_benefits_eligibility(S).
high_risk_ai_system(S) :-
    evaluate_creditworthiness(S),
    \+ detect_financial_fraud(S).
high_risk_ai_system(S) :-
    risk_assessment_life_health_insurance(S).
high_risk_ai_system(S) :-
    emergency_call_evaluation_or_dispatch(S).
high_risk_ai_system(S) :-
    assess_victimisation_risk(S).
high_risk_ai_system(S) :-
    polygraph_or_similar_law_enforcement(S).
high_risk_ai_system(S) :-
    evaluate_evidence_reliability(S).
high_risk_ai_system(S) :-
    assess_reoffending_risk(S),
    \+ solely_based_on_profiling(S).
high_risk_ai_system(S) :-
    profiling_in_criminal_investigation(S).
high_risk_ai_system(S) :-
    polygraph_or_similar_migration(S).
high_risk_ai_system(S) :-
    assess_migration_risk(S).
high_risk_ai_system(S) :-
    assist_asylum_visa_residence_examination(S).
high_risk_ai_system(S) :-
    detect_recognise_identify_in_migration(S),
    \+ verify_travel_documents(S).
high_risk_ai_system(S) :-
    judicial_research_and_interpretation(S).
high_risk_ai_system(S) :-
    influence_election_or_voting_behaviour(S),
    \+ not_directly_exposed_to_natural_persons(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_system/1, 'celex:32024R1689/oj#anx_3/par_1/pnt_a').
provenance(biometric_categorisation_system/1, 'celex:32024R1689/oj#anx_3/par_1/pnt_b').
provenance(emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3/par_1/pnt_c').
provenance(safety_component_of_critical_infrastructure/1, 'celex:32024R1689/oj#anx_3/par_2').
provenance(access_or_admission_to_education/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_a').
provenance(evaluate_learning_outcomes/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_b').
provenance(assess_appropriate_education_level/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_c').
provenance(monitor_student_test_behaviour/1, 'celex:32024R1689/oj#anx_3/par_3/pnt_d').
provenance(recruitment_or_selection/1, 'celex:32024R1689/oj#anx_3/par_4/pnt_a').
provenance(work_related_decisions/1, 'celex:32024R1689/oj#anx_3/par_4/pnt_b').
provenance(evaluate_public_benefits_eligibility/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_a').
provenance(evaluate_creditworthiness/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_b').
provenance(risk_assessment_life_health_insurance/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_c').
provenance(emergency_call_evaluation_or_dispatch/1, 'celex:32024R1689/oj#anx_3/par_5/pnt_d').
provenance(assess_victimisation_risk/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_a').
provenance(polygraph_or_similar_law_enforcement/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_b').
provenance(evaluate_evidence_reliability/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_c').
provenance(assess_reoffending_risk/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_d').
provenance(profiling_in_criminal_investigation/1, 'celex:32024R1689/oj#anx_3/par_6/pnt_e').
provenance(polygraph_or_similar_migration/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_a').
provenance(assess_migration_risk/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_b').
provenance(assist_asylum_visa_residence_examination/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_c').
provenance(detect_recognise_identify_in_migration/1, 'celex:32024R1689/oj#anx_3/par_7/pnt_d').
provenance(judicial_research_and_interpretation/1, 'celex:32024R1689/oj#anx_3/par_8/pnt_a').
provenance(influence_election_or_voting_behaviour/1, 'celex:32024R1689/oj#anx_3/par_8/pnt_b').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(required_technical_documentation/1, 'technical documentation a provider must draw up for a high-risk AI system', 'celex:32024R1689/oj#anx_4').
declared(must_contain/2, 'document must contain specified information', 'celex:32024R1689/oj#anx_4').
declared(general_description/1, 'general description of an AI system', 'celex:32024R1689/oj#anx_4').
declared(detailed_description_elements_and_development/1, 'detailed description of AI system elements and development process', 'celex:32024R1689/oj#anx_4').
declared(monitoring_functioning_and_control/1, 'information about monitoring, functioning and control of AI system', 'celex:32024R1689/oj#anx_4').
declared(appropriateness_of_performance_metrics/1, 'description of appropriateness of performance metrics', 'celex:32024R1689/oj#anx_4').
declared(risk_management_system_description/1, 'detailed description of risk management system', 'celex:32024R1689/oj#anx_4').
declared(lifecycle_changes_description/1, 'description of relevant changes through lifecycle', 'celex:32024R1689/oj#anx_4').
declared(harmonised_standards_applied/1, 'list of harmonised standards applied', 'celex:32024R1689/oj#anx_4').
declared(eu_declaration_of_conformity_copy/1, 'copy of EU declaration of conformity', 'celex:32024R1689/oj#anx_4').
declared(post_market_evaluation_system_description/1, 'description of system to evaluate performance in post-market phase', 'celex:32024R1689/oj#anx_4').
declared(intended_purpose_description/1, 'description of intended purpose, provider name and version', 'celex:32024R1689/oj#anx_4').
declared(interaction_with_external_systems/1, 'how AI system interacts with external hardware or software', 'celex:32024R1689/oj#anx_4').
declared(software_firmware_versions/1, 'versions of relevant software or firmware and update requirements', 'celex:32024R1689/oj#anx_4').
declared(forms_of_marketing_and_service/1, 'forms in which AI system is placed on market or put into service', 'celex:32024R1689/oj#anx_4').
declared(intended_hardware_description/1, 'description of hardware on which AI system is intended to run', 'celex:32024R1689/oj#anx_4').
declared(product_component_features/1, 'photographs or illustrations of product external features, marking and internal layout', 'celex:32024R1689/oj#anx_4').
declared(deployer_user_interface_description/1, 'basic description of user-interface provided to deployer', 'celex:32024R1689/oj#anx_4').
declared(deployer_instructions_for_use/1, 'instructions for use for the deployer', 'celex:32024R1689/oj#anx_4').
declared(development_methods_and_steps/1, 'methods and steps performed for development including pre-trained systems or third party tools', 'celex:32024R1689/oj#anx_4').
declared(design_specifications/1, 'design specifications including logic, algorithms, key choices, rationale, assumptions, classification, optimisation, parameters, expected output and quality, trade-off decisions', 'celex:32024R1689/oj#anx_4').
declared(system_architecture_description/1, 'description of system architecture and computational resources', 'celex:32024R1689/oj#anx_4').
declared(data_requirements_description/1, 'data requirements including datasheets, training methodologies, training data sets, provenance, scope, characteristics, obtaining, selection, labelling, cleaning', 'celex:32024R1689/oj#anx_4').
declared(human_oversight_measures_assessment/1, 'assessment of human oversight measures and technical measures for output interpretation', 'celex:32024R1689/oj#anx_4').
declared(predetermined_changes_description/1, 'detailed description of pre-determined changes and technical solutions for continuous compliance', 'celex:32024R1689/oj#anx_4').
declared(validation_and_testing_procedures/1, 'validation and testing procedures, data characteristics, metrics, discriminatory impacts, test logs and reports', 'celex:32024R1689/oj#anx_4').
declared(cybersecurity_measures_description/1, 'cybersecurity measures put in place', 'celex:32024R1689/oj#anx_4').
declared(capabilities_and_limitations/1, 'capabilities and limitations in performance including accuracy degrees and expected level', 'celex:32024R1689/oj#anx_4').
declared(foreseeable_unintended_outcomes_and_risks/1, 'foreseeable unintended outcomes and sources of risks to health, safety, fundamental rights and discrimination', 'celex:32024R1689/oj#anx_4').
declared(human_oversight_measures_technical/1, 'human oversight measures and technical measures to facilitate output interpretation', 'celex:32024R1689/oj#anx_4').
declared(input_data_specifications/1, 'specifications on input data', 'celex:32024R1689/oj#anx_4').
required_technical_documentation(S) :-
    ai_system(S).
must_contain(S, general_description(S)) :-
    required_technical_documentation(S).
must_contain(S, intended_purpose_description(S)) :-
    required_technical_documentation(S).
must_contain(S, interaction_with_external_systems(S)) :-
    required_technical_documentation(S),
    interacts_with_external_hardware_or_software(S).
must_contain(S, software_firmware_versions(S)) :-
    required_technical_documentation(S),
    relevant_software_or_firmware(S).
must_contain(S, forms_of_marketing_and_service(S)) :-
    required_technical_documentation(S).
must_contain(S, intended_hardware_description(S)) :-
    required_technical_documentation(S).
must_contain(S, product_component_features(S)) :-
    required_technical_documentation(S),
    component_of_products(S).
must_contain(S, deployer_user_interface_description(S)) :-
    required_technical_documentation(S),
    deployer_user_interface_provided(S).
must_contain(S, deployer_instructions_for_use(S)) :-
    required_technical_documentation(S),
    deployer_instructions_for_use_applicable(S).
must_contain(S, detailed_description_elements_and_development(S)) :-
    required_technical_documentation(S).
must_contain(S, development_methods_and_steps(S)) :-
    required_technical_documentation(S).
must_contain(S, design_specifications(S)) :-
    required_technical_documentation(S).
must_contain(S, system_architecture_description(S)) :-
    required_technical_documentation(S).
must_contain(S, data_requirements_description(S)) :-
    required_technical_documentation(S),
    training_data_used(S).
must_contain(S, human_oversight_measures_assessment(S)) :-
    required_technical_documentation(S).
must_contain(S, predetermined_changes_description(S)) :-
    required_technical_documentation(S),
    predetermined_changes(S).
must_contain(S, validation_and_testing_procedures(S)) :-
    required_technical_documentation(S).
must_contain(S, cybersecurity_measures_description(S)) :-
    required_technical_documentation(S).
must_contain(S, monitoring_functioning_and_control(S)) :-
    required_technical_documentation(S).
must_contain(S, capabilities_and_limitations(S)) :-
    required_technical_documentation(S).
must_contain(S, foreseeable_unintended_outcomes_and_risks(S)) :-
    required_technical_documentation(S).
must_contain(S, human_oversight_measures_technical(S)) :-
    required_technical_documentation(S).
must_contain(S, input_data_specifications(S)) :-
    required_technical_documentation(S),
    input_data_appropriate(S).
must_contain(S, appropriateness_of_performance_metrics(S)) :-
    required_technical_documentation(S).
must_contain(S, risk_management_system_description(S)) :-
    required_technical_documentation(S).
must_contain(S, lifecycle_changes_description(S)) :-
    required_technical_documentation(S),
    relevant_changes_made(S).
must_contain(S, harmonised_standards_applied(S)) :-
    required_technical_documentation(S).
must_contain(S, solutions_adopted_for_requirements(S)) :-
    required_technical_documentation(S),
    \+ harmonised_standards_applied(S).
must_contain(S, eu_declaration_of_conformity_copy(S)) :-
    required_technical_documentation(S).
must_contain(S, post_market_evaluation_system_description(S)) :-
    required_technical_documentation(S).
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(must_contain/2, 'celex:32024R1689/oj#anx_4').
provenance(general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(detailed_description_elements_and_development/1, 'celex:32024R1689/oj#anx_4').
provenance(monitoring_functioning_and_control/1, 'celex:32024R1689/oj#anx_4').
provenance(appropriateness_of_performance_metrics/1, 'celex:32024R1689/oj#anx_4').
provenance(risk_management_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(harmonised_standards_applied/1, 'celex:32024R1689/oj#anx_4').
provenance(eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_4').
provenance(post_market_evaluation_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(intended_purpose_description/1, 'celex:32024R1689/oj#anx_4').
provenance(interaction_with_external_systems/1, 'celex:32024R1689/oj#anx_4').
provenance(software_firmware_versions/1, 'celex:32024R1689/oj#anx_4').
provenance(forms_of_marketing_and_service/1, 'celex:32024R1689/oj#anx_4').
provenance(intended_hardware_description/1, 'celex:32024R1689/oj#anx_4').
provenance(product_component_features/1, 'celex:32024R1689/oj#anx_4').
provenance(deployer_user_interface_description/1, 'celex:32024R1689/oj#anx_4').
provenance(deployer_instructions_for_use/1, 'celex:32024R1689/oj#anx_4').
provenance(development_methods_and_steps/1, 'celex:32024R1689/oj#anx_4').
provenance(design_specifications/1, 'celex:32024R1689/oj#anx_4').
provenance(system_architecture_description/1, 'celex:32024R1689/oj#anx_4').
provenance(data_requirements_description/1, 'celex:32024R1689/oj#anx_4').
provenance(human_oversight_measures_assessment/1, 'celex:32024R1689/oj#anx_4').
provenance(predetermined_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(validation_and_testing_procedures/1, 'celex:32024R1689/oj#anx_4').
provenance(cybersecurity_measures_description/1, 'celex:32024R1689/oj#anx_4').
provenance(capabilities_and_limitations/1, 'celex:32024R1689/oj#anx_4').
provenance(foreseeable_unintended_outcomes_and_risks/1, 'celex:32024R1689/oj#anx_4').
provenance(human_oversight_measures_technical/1, 'celex:32024R1689/oj#anx_4').
provenance(input_data_specifications/1, 'celex:32024R1689/oj#anx_4').
provenance(solutions_adopted_for_requirements/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity for an AI system', 'celex:32024R1689/oj#anx_5').
declared(must_contain/2, 'declaration must contain specified information', 'celex:32024R1689/oj#anx_5').
declared(issued_under_sole_responsibility/1, 'declaration issued under sole responsibility of provider', 'celex:32024R1689/oj#anx_5').
declared(in_conformity_with/2, 'AI system in conformity with specified regulation', 'celex:32024R1689/oj#anx_5').
declared(complies_with_data_protection/2, 'AI system complies with data protection regulation', 'celex:32024R1689/oj#anx_5').
declared(references_harmonised_standard/2, 'declaration references harmonised standard or common specification', 'celex:32024R1689/oj#anx_5').
declared(notified_body_details/4, 'details of notified body and conformity assessment', 'celex:32024R1689/oj#anx_5').
declared(issue_details/5, 'place, date, signatory details of declaration', 'celex:32024R1689/oj#anx_5').
must_contain(Declaration, ai_system_name_and_reference(System)) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System).
must_contain(Declaration, provider_details(Provider)) :-
    eu_declaration_of_conformity(Declaration),
    provider(Provider).
must_contain(Declaration, issued_under_sole_responsibility(Provider)) :-
    eu_declaration_of_conformity(Declaration),
    provider(Provider).
must_contain(Declaration, in_conformity_with(System, Regulation)) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    (Regulation = 'celex:32024R1689/oj'; relevant_union_law(Regulation)).
must_contain(Declaration, complies_with_data_protection(System, 'celex:32016R0679/oj')) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    personal_data_processed(System).
must_contain(Declaration, complies_with_data_protection(System, 'celex:32018R1725/oj')) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    personal_data_processed(System).
must_contain(Declaration, complies_with_data_protection(System, 'celex:32016L0680/oj')) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    personal_data_processed(System).
must_contain(Declaration, references_harmonised_standard(Declaration, Standard)) :-
    eu_declaration_of_conformity(Declaration),
    harmonised_standard(Standard).
must_contain(Declaration, references_harmonised_standard(Declaration, Specification)) :-
    eu_declaration_of_conformity(Declaration),
    common_specification(Specification).
must_contain(Declaration, notified_body_details(Body, Procedure, Certificate)) :-
    eu_declaration_of_conformity(Declaration),
    notified_body(Body),
    conformity_assessment(Procedure),
    certificate(Certificate).
must_contain(Declaration, issue_details(Place, Date, SignatoryName, SignatoryFunction, OnBehalfOf)) :-
    eu_declaration_of_conformity(Declaration).
personal_data_processed(System) :-
    ai_system(System),
    personal_data(Data),
    processed_by(System, Data).
declared(processed_by/2, 'data is processed by AI system', 'celex:32024R1689/oj#anx_5').
declared(certificate/1, 'certificate issued for conformity assessment', 'celex:32024R1689/oj#anx_5').
declared(relevant_union_law/1, 'other relevant Union law providing for EU declaration of conformity', 'celex:32024R1689/oj#anx_5').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(must_contain/2, 'celex:32024R1689/oj#anx_5').
provenance(issued_under_sole_responsibility/1, 'celex:32024R1689/oj#anx_5').
provenance(in_conformity_with/2, 'celex:32024R1689/oj#anx_5').
provenance(complies_with_data_protection/2, 'celex:32024R1689/oj#anx_5').
provenance(references_harmonised_standard/2, 'celex:32024R1689/oj#anx_5').
provenance(notified_body_details/4, 'celex:32024R1689/oj#anx_5').
provenance(issue_details/5, 'celex:32024R1689/oj#anx_5').
provenance(personal_data_processed/1, 'celex:32024R1689/oj#anx_5').
provenance(processed_by/2, 'celex:32024R1689/oj#anx_5').
provenance(certificate/1, 'celex:32024R1689/oj#anx_5').
provenance(relevant_union_law/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(internal_control_conformity_assessment/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
declared(must_verify_quality_management_system_compliance/2, 'provider must verify quality management system compliance with Article 17', 'celex:32024R1689/oj#anx_6').
declared(must_examine_technical_documentation/2, 'provider must examine technical documentation to assess compliance with essential requirements', 'celex:32024R1689/oj#anx_6').
declared(must_verify_design_development_consistency/2, 'provider must verify design and development process and post-market monitoring are consistent with technical documentation', 'celex:32024R1689/oj#anx_6').
internal_control_conformity_assessment(CA) :-
    conformity_assessment(CA),
    based_on_internal_control(CA).
based_on_internal_control(_CA).
must_verify_quality_management_system_compliance(Provider, CA) :-
    provider(Provider),
    internal_control_conformity_assessment(CA),
    quality_management_system(QMS),
    established_by(Provider, QMS),
    compliant_with(QMS, requirements_of('celex:32024R1689/oj#art_17')).
must_examine_technical_documentation(Provider, CA) :-
    provider(Provider),
    internal_control_conformity_assessment(CA),
    technical_documentation(TD),
    contains_information(TD, AI_system),
    assesses_compliance(AI_system, essential_requirements_of('celex:32024R1689/oj#chp_3/sec_2')).
must_verify_design_development_consistency(Provider, CA) :-
    provider(Provider),
    internal_control_conformity_assessment(CA),
    ai_system(S),
    design_and_development_process(S, Process),
    post_market_monitoring(S, Monitoring),
    referred_to_in(Monitoring, 'celex:32024R1689/oj#art_72'),
    technical_documentation(TD),
    consistent_with(Process, TD),
    consistent_with(Monitoring, TD).
established_by(_Provider, _QMS).
compliant_with(_QMS, _Requirements).
contains_information(_TD, _AI_system).
assesses_compliance(_AI_system, _Essential_requirements).
design_and_development_process(_S, _Process).
post_market_monitoring(_S, _Monitoring).
referred_to_in(_Monitoring, _Article).
consistent_with(_X, _TD).
technical_documentation(_TD).
provenance(internal_control_conformity_assessment/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_consistency/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(required_quality_management_system_assessment/1, 'conformity assessment procedure based on quality management system and technical documentation', 'celex:32024R1689/oj#anx_7').
declared(must_lodge_application/2, 'provider must lodge application with notified body', 'celex:32024R1689/oj#anx_7').
declared(must_include_in_application/2, 'application must include specified items', 'celex:32024R1689/oj#anx_7').
declared(must_assess_quality_management_system/2, 'notified body must assess quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_notify_decision/2, 'notified body must notify decision to provider or authorised representative', 'celex:32024R1689/oj#anx_7').
declared(must_maintain_quality_management_system/2, 'provider must maintain approved quality management system', 'celex:32024R1689/oj#anx_7').
declared(must_notify_changes/2, 'provider must notify intended changes to notified body', 'celex:32024R1689/oj#anx_7').
declared(must_examine_changes/2, 'notified body must examine proposed changes', 'celex:32024R1689/oj#anx_7').
declared(must_lodge_technical_documentation_application/2, 'provider must lodge application for technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(must_examine_technical_documentation/2, 'notified body must examine technical documentation', 'celex:32024R1689/oj#anx_7').
declared(may_require_further_evidence/2, 'notified body may require further evidence or tests', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out_tests/2, 'notified body must carry out tests if not satisfied with provider tests', 'celex:32024R1689/oj#anx_7').
declared(must_grant_access_to_models/2, 'notified body must be granted access to training and trained models', 'celex:32024R1689/oj#anx_7').
declared(must_issue_certificate/2, 'notified body must issue Union technical documentation assessment certificate', 'celex:32024R1689/oj#anx_7').
declared(must_refuse_certificate/2, 'notified body must refuse certificate and inform applicant', 'celex:32024R1689/oj#anx_7').
declared(must_assess_substantial_change/2, 'notified body must assess change affecting compliance or intended purpose', 'celex:32024R1689/oj#anx_7').
declared(must_inform_of_intended_changes/2, 'provider must inform notified body of intended changes', 'celex:32024R1689/oj#anx_7').
declared(must_decide_on_changes/2, 'notified body must decide whether changes require new conformity assessment or supplement', 'celex:32024R1689/oj#anx_7').
declared(must_issue_supplement/2, 'notified body must issue supplement to certificate', 'celex:32024R1689/oj#anx_7').
declared(must_allow_access_for_surveillance/2, 'provider must allow notified body access to premises', 'celex:32024R1689/oj#anx_7').
declared(must_share_information_for_surveillance/2, 'provider must share necessary information with notified body', 'celex:32024R1689/oj#anx_7').
declared(must_carry_out_periodic_audits/2, 'notified body must carry out periodic audits', 'celex:32024R1689/oj#anx_7').
declared(may_carry_out_additional_tests/2, 'notified body may carry out additional tests during audits', 'celex:32024R1689/oj#anx_7').
required_quality_management_system_assessment(S) :-
    ai_system(S),
    high_risk_ai_system(S).
must_lodge_application(Provider, quality_management_system_assessment(S)) :-
    provider(Provider),
    ai_system(S),
    intended_purpose(S).
must_include_in_application(Provider, name_and_address(Provider)) :-
    must_lodge_application(Provider, _).
must_include_in_application(Authorised_Rep, name_and_address(Authorised_Rep)) :-
    must_lodge_application(Provider, _),
    authorised_representative(Authorised_Rep).
must_include_in_application(Provider, list_of_ai_systems(Systems)) :-
    must_lodge_application(Provider, _),
    findall(S, (ai_system(S), provider_of(Provider, S)), Systems).
must_include_in_application(Provider, technical_documentation(S)) :-
    must_lodge_application(Provider, _),
    ai_system(S),
    provider_of(Provider, S).
must_include_in_application(Provider, quality_management_system_documentation) :-
    must_lodge_application(Provider, _).
must_include_in_application(Provider, procedures_for_adequacy_and_effectiveness) :-
    must_lodge_application(Provider, _).
must_include_in_application(Provider, declaration_no_other_application) :-
    must_lodge_application(Provider, _).
must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)) :-
    notified_body(NotifiedBody),
    must_lodge_application(Provider, quality_management_system_assessment(_)).
must_notify_decision(NotifiedBody, Provider) :-
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)).
must_notify_decision(NotifiedBody, Authorised_Rep) :-
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)),
    authorised_representative(Authorised_Rep).
must_maintain_quality_management_system(Provider, quality_management_system(Provider)) :-
    provider(Provider),
    must_assess_quality_management_system(_, quality_management_system(Provider)).
must_notify_changes(Provider, notified_body(NotifiedBody)) :-
    provider(Provider),
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)),
    intended_change(Provider, _).
must_examine_changes(NotifiedBody, proposed_changes(Provider)) :-
    must_notify_changes(Provider, notified_body(NotifiedBody)).
must_lodge_technical_documentation_application(Provider, technical_documentation_assessment(S)) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S).
must_lodge_technical_documentation_application(Provider, technical_documentation_assessment(S)) :-
    provider(Provider),
    ai_system(S),
    putting_into_service(S).
must_include_in_application(Provider, name_and_address(Provider)) :-
    must_lodge_technical_documentation_application(Provider, _).
must_include_in_application(Provider, declaration_no_other_application) :-
    must_lodge_technical_documentation_application(Provider, _).
must_include_in_application(Provider, technical_documentation_annex_4(S)) :-
    must_lodge_technical_documentation_application(Provider, technical_documentation_assessment(S)).
must_examine_technical_documentation(NotifiedBody, technical_documentation(S)) :-
    notified_body(NotifiedBody),
    must_lodge_technical_documentation_application(_, technical_documentation_assessment(S)).
may_require_further_evidence(NotifiedBody, provider(Provider)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    provider(Provider),
    provider_of(Provider, S).
may_require_further_evidence(NotifiedBody, further_tests(Provider)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    provider(Provider),
    provider_of(Provider, S).
must_carry_out_tests(NotifiedBody, ai_system(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    \+ satisfied_with_provider_tests(NotifiedBody, S).
must_grant_access_to_models(NotifiedBody, training_and_trained_models(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    high_risk_ai_system(S),
    \+ other_reasonable_means_sufficient(NotifiedBody, S),
    reasoned_request(NotifiedBody, S).
must_issue_certificate(NotifiedBody, certificate(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    conformity_with_requirements(S).
must_refuse_certificate(NotifiedBody, refusal(S)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    \+ conformity_with_requirements(S).
must_refuse_certificate(NotifiedBody, refusal(S, training_data_noncompliance)) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    \+ data_training_requirement_met(S).
must_assess_substantial_change(NotifiedBody, change(S)) :-
    notified_body(NotifiedBody),
    issued_certificate(NotifiedBody, certificate(S)),
    affects_compliance_or_intended_purpose(S, Change).
must_inform_of_intended_changes(Provider, notified_body(NotifiedBody)) :-
    provider(Provider),
    issued_certificate(NotifiedBody, certificate(S)),
    provider_of(Provider, S),
    intended_change(Provider, S).
must_inform_of_intended_changes(Provider, notified_body(NotifiedBody)) :-
    provider(Provider),
    issued_certificate(NotifiedBody, certificate(S)),
    provider_of(Provider, S),
    aware_of_change(Provider, S).
must_decide_on_changes(NotifiedBody, changes(Provider, S)) :-
    must_inform_of_intended_changes(Provider, notified_body(NotifiedBody)),
    issued_certificate(NotifiedBody, certificate(S)).
must_issue_supplement(NotifiedBody, supplement(certificate(S), Changes)) :-
    must_decide_on_changes(NotifiedBody, changes(Provider, S)),
    changes_approved(NotifiedBody, Changes),
    \+ new_conformity_assessment_required(NotifiedBody, Changes).
must_allow_access_for_surveillance(Provider, premises(NotifiedBody)) :-
    provider(Provider),
    surveillance_notified_body(NotifiedBody, Provider).
must_share_information_for_surveillance(Provider, information(NotifiedBody)) :-
    provider(Provider),
    surveillance_notified_body(NotifiedBody, Provider).
must_carry_out_periodic_audits(NotifiedBody, quality_management_system(Provider)) :-
    surveillance_notified_body(NotifiedBody, Provider),
    approved_quality_management_system(Provider).
may_carry_out_additional_tests(NotifiedBody, ai_system(S)) :-
    must_carry_out_periodic_audits(NotifiedBody, _),
    issued_certificate(NotifiedBody, certificate(S)).
surveillance_notified_body(NotifiedBody, Provider) :-
    must_assess_quality_management_system(NotifiedBody, quality_management_system(Provider)).
affects_compliance_or_intended_purpose(S, Change) :-
    ai_system(S),
    change(Change, S),
    (affects_compliance(Change, S); affects_intended_purpose(Change, S)).
provider_of(Provider, S) :-
    provider(Provider),
    ai_system(S).
conformity_with_requirements(S) :-
    ai_system(S),
    high_risk_ai_system(S),
    requirements_chapter_3_section_2_met(S).
data_training_requirement_met(S) :-
    ai_system(S),
    training_data_requirement_met(S).
other_reasonable_means_sufficient(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    reasonable_means_exhausted(NotifiedBody, S),
    means_sufficient(NotifiedBody, S).
reasoned_request(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    requested(NotifiedBody, S).
issued_certificate(NotifiedBody, certificate(S)) :-
    must_issue_certificate(NotifiedBody, certificate(S)).
approved_quality_management_system(Provider) :-
    must_assess_quality_management_system(_, quality_management_system(Provider)),
    assessment_satisfies_requirements(Provider).
changes_approved(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    approved(NotifiedBody, Changes).
new_conformity_assessment_required(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    requires_new_assessment(NotifiedBody, Changes).
requirements_chapter_3_section_2_met(S) :-
    ai_system(S),
    high_risk_ai_system(S).
training_data_requirement_met(S) :-
    ai_system(S),
    quality_data_used_for_training(S).
satisfied_with_provider_tests(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    tests_satisfactory(NotifiedBody, S).
intended_change(Provider, Change) :-
    provider(Provider),
    change(Change, _),
    intended(Provider, Change).
aware_of_change(Provider, S) :-
    provider(Provider),
    provider_of(Provider, S),
    change_occurred(S, _).
change(Change, S) :-
    ai_system(S),
    modification(Change, S).
affects_compliance(Change, S) :-
    change(Change, S),
    affects(Change, compliance(S)).
affects_intended_purpose(Change, S) :-
    change(Change, S),
    affects(Change, intended_purpose(S)).
reasonable_means_exhausted(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    all_other_reasonable_means_exhausted(NotifiedBody, S).
means_sufficient(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    verification_sufficient(NotifiedBody, S).
requested(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    reasoned_request_made(NotifiedBody, S).
assessment_satisfies_requirements(Provider) :-
    provider(Provider),
    quality_management_system_satisfies_requirements(Provider).
approved(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    changes_approved_by_notified_body(NotifiedBody, Changes).
requires_new_assessment(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, changes(_, _)),
    new_conformity_assessment_needed(NotifiedBody, Changes).
tests_satisfactory(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)),
    provider_tests_satisfactory(NotifiedBody, S).
intended(Provider, Change) :-
    provider(Provider),
    intends(Provider, Change).
change_occurred(S, Change) :-
    ai_system(S),
    occurred(Change, S).
modification(Change, S) :-
    ai_system(S),
    modification_to(Change, S).
affects(Change, Aspect) :-
    change(Change, _),
    affects_aspect(Change, Aspect).
all_other_reasonable_means_exhausted(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).
verification_sufficient(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).
reasoned_request_made(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).
quality_management_system_satisfies_requirements(Provider) :-
    provider(Provider),
    requirements_referred_to_in_art_17_met(Provider).
changes_approved_by_notified_body(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    approved_by(NotifiedBody, Changes).
new_conformity_assessment_needed(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    conformity_assessment_art_43_par_4_required(NotifiedBody, Changes).
provider_tests_satisfactory(NotifiedBody, S) :-
    must_examine_technical_documentation(NotifiedBody, technical_documentation(S)).
intends(Provider, Change) :-
    provider(Provider),
    intended_change(Provider, Change).
occurred(Change, S) :-
    ai_system(S),
    change_occurred(S, Change).
modification_to(Change, S) :-
    ai_system(S),
    change(Change, S).
affects_aspect(Change, Aspect) :-
    change(Change, _),
    aspect_affected(Change, Aspect).
requirements_referred_to_in_art_17_met(Provider) :-
    provider(Provider),
    quality_management_system(Provider),
    satisfies_art_17(Provider).
conformity_assessment_art_43_par_4_required(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    requires_art_43_par_4(NotifiedBody, Changes).
aspect_affected(Change, compliance(S)) :-
    change(Change, S),
    affects_compliance(Change, S).
aspect_affected(Change, intended_purpose(S)) :-
    change(Change, S),
    affects_intended_purpose(Change, S).
satisfies_art_17(Provider) :-
    provider(Provider),
    quality_management_system(Provider).
requires_art_43_par_4(NotifiedBody, Changes) :-
    must_decide_on_changes(NotifiedBody, _),
    substantial_modification_in_changes(Changes).
substantial_modification_in_changes(Changes) :-
    change(Change, _),
    member(Change, Changes),
    substantial_modification(Change).
provenance(required_quality_management_system_assessment/1, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_technical_documentation_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_substantial_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_of_intended_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_decide_on_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information_for_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(may_carry_out_additional_tests/2, 'celex:32024R1689/oj#anx_7').
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
declared(registration_section_a/1, 'information required under Article 49(1) for high-risk AI systems', 'celex:32024R1689/oj#anx_8/sec_a').
declared(registration_section_b/1, 'information required under Article 49(2) for non-high-risk AI systems', 'celex:32024R1689/oj#anx_8/sec_b').
declared(registration_section_c/1, 'information required under Article 49(3) for deployers of high-risk AI systems', 'celex:32024R1689/oj#anx_8/sec_c').
must_register_information(Provider, registration(section_a, high_risk_system(S))) :-
    provider(Provider),
    high_risk_ai_system(S).
must_register_information(Provider, registration(section_b, not_high_risk_system(S))) :-
    provider(Provider),
    ai_system(S),
    not_high_risk_condition(S, _).
must_register_information(Deployer, registration(section_c, deployed_high_risk_system(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S).
registration_section_a(information(provider_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(submitter_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(authorised_representative_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(system_identification(TradeName, AdditionalReference))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(intended_purpose_and_components(Description))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(system_description(DataInputs, OperatingLogic))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(system_status(Status))) :-
    must_register_information(_, registration(section_a, _)),
    member(Status, [on_the_market, in_service, no_longer_placed_on_market, no_longer_in_service, recalled]).
registration_section_a(information(certificate_details(Type, Number, ExpiryDate, NotifiedBodyId))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(certificate_copy(ScannedCopy))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(member_states(List))) :-
    must_register_information(_, registration(section_a, _)),
    is_list(List).
registration_section_a(information(declaration_of_conformity_copy(Copy))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(electronic_instructions_for_use(Instructions))) :-
    must_register_information(_, registration(section_a, _)),
    \+ exempt_from_instructions_for_use(_).
registration_section_a(information(additional_information_url(URL))) :-
    must_register_information(_, registration(section_a, _)).
exempt_from_instructions_for_use(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).
exempt_from_instructions_for_use(S) :-
    high_risk_ai_system(S),
    migration_asylum_border_control_area(S).
law_enforcement_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S).
migration_asylum_border_control_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_6_applies(S).
migration_asylum_border_control_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_7_applies(S).
registration_section_b(information(provider_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(submitter_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(authorised_representative_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(system_identification(TradeName, AdditionalReference))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(intended_purpose(Description))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(not_high_risk_conditions(Conditions))) :-
    must_register_information(_, registration(section_b, _)),
    is_list(Conditions).
registration_section_b(information(not_high_risk_grounds_summary(Summary))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(system_status(Status))) :-
    must_register_information(_, registration(section_b, _)),
    member(Status, [on_the_market, in_service, no_longer_placed_on_market, no_longer_in_service, recalled]).
registration_section_b(information(member_states(List))) :-
    must_register_information(_, registration(section_b, _)),
    is_list(List).
registration_section_c(information(deployer_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(submitter_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(provider_database_url(URL))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(fundamental_rights_impact_assessment_summary(Summary))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(data_protection_impact_assessment_summary(Summary))) :-
    must_register_information(_, registration(section_c, _)).
provenance(must_register_information/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(exempt_from_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#anx_8').
provenance(migration_asylum_border_control_area/1, 'celex:32024R1689/oj#anx_8').
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
declared(required_registration_information/2, 'information that must be submitted for registration of testing in real world conditions', 'celex:32024R1689/oj#anx_9').
declared(must_register_with_information/2, 'obligation to provide specific information for registration', 'celex:32024R1689/oj#anx_9').
declared(must_keep_up_to_date/2, 'obligation to maintain current information after registration', 'celex:32024R1689/oj#anx_9').
declared(union_wide_unique_single_identification_number/1, 'unique identifier for testing in real world conditions across the Union', 'celex:32024R1689/oj#anx_9').
declared(contact_details_of_provider_and_deployers/1, 'name and contact details of provider or prospective provider and deployers', 'celex:32024R1689/oj#anx_9').
declared(description_of_ai_system_for_identification/1, 'brief description, intended purpose, and identification information of the AI system', 'celex:32024R1689/oj#anx_9').
declared(summary_of_testing_plan_characteristics/1, 'summary of main characteristics of the plan for testing in real world conditions', 'celex:32024R1689/oj#anx_9').
declared(information_on_suspension_or_termination/1, 'information regarding suspension or termination of testing', 'celex:32024R1689/oj#anx_9').
required_registration_information(T, union_wide_unique_single_identification_number(T)) :-
    testing_in_real_world_conditions(T).
required_registration_information(T, contact_details_of_provider_and_deployers(T)) :-
    testing_in_real_world_conditions(T).
required_registration_information(T, description_of_ai_system_for_identification(T)) :-
    testing_in_real_world_conditions(T).
required_registration_information(T, summary_of_testing_plan_characteristics(T)) :-
    testing_in_real_world_conditions(T).
required_registration_information(T, information_on_suspension_or_termination(T)) :-
    testing_in_real_world_conditions(T).
must_register_with_information(_Provider, T) :-
    testing_in_real_world_conditions(T).
must_keep_up_to_date(_Provider, Information) :-
    testing_in_real_world_conditions(T),
    required_registration_information(T, Information).
provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_register_with_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(union_wide_unique_single_identification_number/1, 'celex:32024R1689/oj#anx_9').
provenance(contact_details_of_provider_and_deployers/1, 'celex:32024R1689/oj#anx_9').
provenance(description_of_ai_system_for_identification/1, 'celex:32024R1689/oj#anx_9').
provenance(summary_of_testing_plan_characteristics/1, 'celex:32024R1689/oj#anx_9').
provenance(information_on_suspension_or_termination/1, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(union_legislative_act_on_large_scale_it_system/1, 'Union legislative act on large-scale IT systems in the area of Freedom, Security and Justice', 'celex:32024R1689/oj#anx_10').
union_legislative_act_on_large_scale_it_system('celex:32018R1860/oj').
union_legislative_act_on_large_scale_it_system('celex:32018R1861/oj').
union_legislative_act_on_large_scale_it_system('celex:42000A0922(01)/oj').
union_legislative_act_on_large_scale_it_system('celex:32006R1987/oj').
union_legislative_act_on_large_scale_it_system('celex:32018R1862/oj').
union_legislative_act_on_large_scale_it_system('celex:32007D0533/oj').
union_legislative_act_on_large_scale_it_system('celex:32006R1986/oj').
union_legislative_act_on_large_scale_it_system('celex:32010D0261/oj').
union_legislative_act_on_large_scale_it_system('celex:32021R1133/oj').
union_legislative_act_on_large_scale_it_system('celex:32013R0603/oj').
union_legislative_act_on_large_scale_it_system('celex:32016R0794/oj').
union_legislative_act_on_large_scale_it_system('celex:32019R0816/oj').
union_legislative_act_on_large_scale_it_system('celex:32019R0818/oj').
union_legislative_act_on_large_scale_it_system('celex:32021R1134/oj').
union_legislative_act_on_large_scale_it_system('celex:32008R0767/oj').
union_legislative_act_on_large_scale_it_system('celex:32009R0810/oj').
union_legislative_act_on_large_scale_it_system('celex:32016R0399/oj').
union_legislative_act_on_large_scale_it_system('celex:32017R2226/oj').
union_legislative_act_on_large_scale_it_system('celex:32018R1240/oj').
union_legislative_act_on_large_scale_it_system('celex:32019R0817/oj').
union_legislative_act_on_large_scale_it_system('celex:32019R1896/oj').
union_legislative_act_on_large_scale_it_system('celex:32004D0512/oj').
union_legislative_act_on_large_scale_it_system('celex:32008D0633/oj').
union_legislative_act_on_large_scale_it_system('celex:32024R1358/oj').
union_legislative_act_on_large_scale_it_system('celex:32024R1315/oj').
union_legislative_act_on_large_scale_it_system('celex:32024R1350/oj').
union_legislative_act_on_large_scale_it_system('celex:32001L0055/oj').
union_legislative_act_on_large_scale_it_system('celex:32018R1726/oj').
union_legislative_act_on_large_scale_it_system('celex:2011R1077/oj').
union_legislative_act_on_large_scale_it_system('celex:2014R0515/oj').
union_legislative_act_on_large_scale_it_system('celex:2016R1624/oj').
union_legislative_act_on_large_scale_it_system('celex:2018R1241/oj').
provenance(union_legislative_act_on_large_scale_it_system/1, 'celex:32024R1689/oj#anx_10').
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
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32011R1077/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').

% ==== celex:32024R1689/oj#anx_11 ====
declared(required_technical_documentation/1, 'technical documentation that providers of general-purpose AI models must provide', 'celex:32024R1689/oj#anx_11').
declared(required_technical_documentation_section_1/1, 'information to be provided by all providers of general-purpose AI models', 'celex:32024R1689/oj#anx_11').
declared(required_technical_documentation_section_2/1, 'additional information to be provided by providers of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_11').
declared(general_description/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(intended_tasks/1, 'tasks that the model is intended to perform', 'celex:32024R1689/oj#anx_11').
declared(acceptable_use_policies/1, 'acceptable use policies applicable to the model', 'celex:32024R1689/oj#anx_11').
declared(release_date_and_distribution/1, 'date of release and methods of distribution', 'celex:32024R1689/oj#anx_11').
declared(architecture_and_parameters/1, 'architecture and number of parameters', 'celex:32024R1689/oj#anx_11').
declared(input_output_modality/1, 'modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_11').
declared(model_licence/1, 'licence of the model', 'celex:32024R1689/oj#anx_11').
declared(development_description/1, 'detailed description of elements and development process', 'celex:32024R1689/oj#anx_11').
declared(technical_integration_means/1, 'technical means required for integration in AI systems', 'celex:32024R1689/oj#anx_11').
declared(design_specifications/1, 'design specifications of the model and training process', 'celex:32024R1689/oj#anx_11').
declared(training_data_information/1, 'information on data used for training, testing and validation', 'celex:32024R1689/oj#anx_11').
declared(computational_resources/1, 'computational resources used to train the model', 'celex:32024R1689/oj#anx_11').
declared(energy_consumption/1, 'known or estimated energy consumption of the model', 'celex:32024R1689/oj#anx_11').
declared(evaluation_strategies/1, 'evaluation strategies including results', 'celex:32024R1689/oj#anx_11').
declared(adversarial_testing_measures/1, 'measures for adversarial testing and model adaptations', 'celex:32024R1689/oj#anx_11').
declared(system_architecture_description/1, 'detailed description of system architecture', 'celex:32024R1689/oj#anx_11').
required_technical_documentation(M) :-
    general_purpose_ai_model(M),
    provider(P),
    required_technical_documentation_section_1(M),
    (systemic_risk(M) -> required_technical_documentation_section_2(M) ; true).
required_technical_documentation_section_1(M) :-
    general_purpose_ai_model(M),
    general_description(M),
    development_description(M).
general_description(M) :-
    general_purpose_ai_model(M),
    intended_tasks(M),
    acceptable_use_policies(M),
    release_date_and_distribution(M),
    architecture_and_parameters(M),
    input_output_modality(M),
    model_licence(M).
development_description(M) :-
    general_purpose_ai_model(M),
    technical_integration_means(M),
    design_specifications(M),
    training_data_information(M),
    computational_resources(M),
    energy_consumption(M).
energy_consumption(M) :-
    general_purpose_ai_model(M),
    (known_energy_consumption(M) ; estimated_energy_consumption(M)).
estimated_energy_consumption(M) :-
    general_purpose_ai_model(M),
    \+ known_energy_consumption(M),
    computational_resources(M).
required_technical_documentation_section_2(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    evaluation_strategies(M),
    (applicable_adversarial_testing(M) -> adversarial_testing_measures(M) ; true),
    (applicable_system_architecture(M) -> system_architecture_description(M) ; true).
applicable_adversarial_testing(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
applicable_system_architecture(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_11').
provenance(required_technical_documentation_section_1/1, 'celex:32024R1689/oj#anx_11').
provenance(required_technical_documentation_section_2/1, 'celex:32024R1689/oj#anx_11').
provenance(general_description/1, 'celex:32024R1689/oj#anx_11').
provenance(intended_tasks/1, 'celex:32024R1689/oj#anx_11').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_11').
provenance(release_date_and_distribution/1, 'celex:32024R1689/oj#anx_11').
provenance(architecture_and_parameters/1, 'celex:32024R1689/oj#anx_11').
provenance(input_output_modality/1, 'celex:32024R1689/oj#anx_11').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_11').
provenance(development_description/1, 'celex:32024R1689/oj#anx_11').
provenance(technical_integration_means/1, 'celex:32024R1689/oj#anx_11').
provenance(design_specifications/1, 'celex:32024R1689/oj#anx_11').
provenance(training_data_information/1, 'celex:32024R1689/oj#anx_11').
provenance(computational_resources/1, 'celex:32024R1689/oj#anx_11').
provenance(energy_consumption/1, 'celex:32024R1689/oj#anx_11').
provenance(estimated_energy_consumption/1, 'celex:32024R1689/oj#anx_11').
provenance(evaluation_strategies/1, 'celex:32024R1689/oj#anx_11').
provenance(adversarial_testing_measures/1, 'celex:32024R1689/oj#anx_11').
provenance(system_architecture_description/1, 'celex:32024R1689/oj#anx_11').
provenance(applicable_adversarial_testing/1, 'celex:32024R1689/oj#anx_11').
provenance(applicable_system_architecture/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(required_technical_documentation_for_downstream_provider/1, 'technical documentation that providers of general-purpose AI models must provide to downstream providers', 'celex:32024R1689/oj#anx_12').
declared(must_provide_technical_documentation/2, 'obligation on provider to give technical documentation to downstream provider', 'celex:32024R1689/oj#anx_12').
declared(general_description/2, 'general description of a general-purpose AI model for technical documentation', 'celex:32024R1689/oj#anx_12').
declared(development_description/2, 'description of model elements and development process for technical documentation', 'celex:32024R1689/oj#anx_12').
declared(intended_tasks/1, 'tasks that a general-purpose AI model is intended to perform', 'celex:32024R1689/oj#anx_12').
declared(integration_system_types/1, 'types and nature of AI systems into which a model can be integrated', 'celex:32024R1689/oj#anx_12').
declared(acceptable_use_policies/1, 'acceptable use policies applicable to a general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(release_date_and_distribution/1, 'date of release and methods of distribution for a model', 'celex:32024R1689/oj#anx_12').
declared(hardware_software_interaction/1, 'how a model interacts with external hardware or software', 'celex:32024R1689/oj#anx_12').
declared(relevant_software_versions/1, 'versions of software related to model use', 'celex:32024R1689/oj#anx_12').
declared(architecture_and_parameters/1, 'architecture and number of parameters of a model', 'celex:32024R1689/oj#anx_12').
declared(input_output_modality_format/1, 'modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(model_licence/1, 'licence for a general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(integration_technical_means/1, 'technical means required for model integration into AI systems', 'celex:32024R1689/oj#anx_12').
declared(input_output_maximum_size/1, 'maximum size of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(training_testing_validation_information/1, 'information on data used for training, testing and validation', 'celex:32024R1689/oj#anx_12').
required_technical_documentation_for_downstream_provider(Doc) :-
    general_description(Doc, Model),
    development_description(Doc, Model),
    general_purpose_ai_model(Model).
general_description(Doc, Model) :-
    intended_tasks(Model),
    integration_system_types(Model),
    acceptable_use_policies(Model),
    release_date_and_distribution(Model),
    hardware_software_interaction(Model),
    relevant_software_versions(Model),
    architecture_and_parameters(Model),
    input_output_modality_format(Model),
    model_licence(Model),
    general_purpose_ai_model(Model).
development_description(Doc, Model) :-
    integration_technical_means(Model),
    input_output_maximum_size(Model),
    training_testing_validation_information(Model),
    general_purpose_ai_model(Model).
must_provide_technical_documentation(Provider, documentation_for_downstream_provider(Model, Downstream)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(Downstream),
    required_technical_documentation_for_downstream_provider(documentation_for_downstream_provider(Model, Downstream)).
provenance(required_technical_documentation_for_downstream_provider/1, 'celex:32024R1689/oj#anx_12').
provenance(must_provide_technical_documentation/2, 'celex:32024R1689/oj#anx_12').
provenance(general_description/2, 'celex:32024R1689/oj#anx_12').
provenance(development_description/2, 'celex:32024R1689/oj#anx_12').
provenance(intended_tasks/1, 'celex:32024R1689/oj#anx_12').
provenance(integration_system_types/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(release_date_and_distribution/1, 'celex:32024R1689/oj#anx_12').
provenance(hardware_software_interaction/1, 'celex:32024R1689/oj#anx_12').
provenance(relevant_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(architecture_and_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_modality_format/1, 'celex:32024R1689/oj#anx_12').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_12').
provenance(integration_technical_means/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_maximum_size/1, 'celex:32024R1689/oj#anx_12').
provenance(training_testing_validation_information/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(criterion_parameters/1, 'number of parameters of the model', 'celex:32024R1689/oj#anx_13').
declared(criterion_data_set_quality_or_size/1, 'quality or size of the data set', 'celex:32024R1689/oj#anx_13').
declared(criterion_training_computation/1, 'amount of computation used for training', 'celex:32024R1689/oj#anx_13').
declared(criterion_input_output_modalities/1, 'input and output modalities of the model', 'celex:32024R1689/oj#anx_13').
declared(criterion_benchmarks_evaluations/1, 'benchmarks and evaluations of capabilities', 'celex:32024R1689/oj#anx_13').
declared(criterion_internal_market_impact/1, 'high impact on the internal market due to reach', 'celex:32024R1689/oj#anx_13').
declared(criterion_end_users/1, 'number of registered end-users', 'celex:32024R1689/oj#anx_13').
declared(high_impact_on_internal_market_presumed/1, 'presumed high impact on internal market', 'celex:32024R1689/oj#anx_13').
declared(registered_business_user/2, 'registered business user established in location', 'celex:32024R1689/oj#anx_13').
declared(established_in_union/1, 'established in the Union', 'celex:32024R1689/oj#anx_13').
declared(made_available_to/2, 'model made available to user', 'celex:32024R1689/oj#anx_13').
declared(at_least/2, 'quantity at least threshold', 'celex:32024R1689/oj#anx_13').
systemic_risk_designation_criterion(M, parameters) :-
    general_purpose_ai_model(M),
    criterion_parameters(M).
systemic_risk_designation_criterion(M, data_set_quality_or_size) :-
    general_purpose_ai_model(M),
    criterion_data_set_quality_or_size(M).
systemic_risk_designation_criterion(M, training_computation) :-
    general_purpose_ai_model(M),
    criterion_training_computation(M).
systemic_risk_designation_criterion(M, input_output_modalities) :-
    general_purpose_ai_model(M),
    criterion_input_output_modalities(M).
systemic_risk_designation_criterion(M, benchmarks_evaluations) :-
    general_purpose_ai_model(M),
    criterion_benchmarks_evaluations(M).
systemic_risk_designation_criterion(M, internal_market_impact) :-
    general_purpose_ai_model(M),
    criterion_internal_market_impact(M).
systemic_risk_designation_criterion(M, end_users) :-
    general_purpose_ai_model(M),
    criterion_end_users(M).
criterion_internal_market_impact(M) :-
    high_impact_on_internal_market_presumed(M).
high_impact_on_internal_market_presumed(M) :-
    general_purpose_ai_model(M),
    made_available_to(M, U),
    registered_business_user(U, _),
    established_in_union(U),
    at_least(count_users(M, business, union), 10000).
must_take_into_account(commission, systemic_risk_designation_criterion(M, C)) :-
    general_purpose_ai_model(M),
    systemic_risk_designation_criterion(M, C),
    for_determining_equivalent_capabilities_or_impact(M).
for_determining_equivalent_capabilities_or_impact(M) :-
    general_purpose_ai_model(M).
provenance(criterion_parameters/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_data_set_quality_or_size/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_training_computation/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_input_output_modalities/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_benchmarks_evaluations/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_internal_market_impact/1, 'celex:32024R1689/oj#anx_13').
provenance(criterion_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market_presumed/1, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_user/2, 'celex:32024R1689/oj#anx_13').
provenance(established_in_union/1, 'celex:32024R1689/oj#anx_13').
provenance(made_available_to/2, 'celex:32024R1689/oj#anx_13').
provenance(at_least/2, 'celex:32024R1689/oj#anx_13').
provenance(systemic_risk_designation_criterion/2, 'celex:32024R1689/oj#anx_13').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#anx_13').
provenance(for_determining_equivalent_capabilities_or_impact/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

